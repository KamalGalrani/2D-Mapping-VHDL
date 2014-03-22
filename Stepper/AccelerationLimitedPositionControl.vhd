--------------------------------------------------------------------------------
--
--   FileName:        AccelerationLimitedPositionControl.vhd
--   Dependencies:    UPDOWNcounterANDswitch.vhd
--   Design Software: Quartus II Version 9.0 Build 184 04/29/2009 SJ Web Edition
--
--   Version History
--   Version 1.0 8/16/2009 Curtis Wynia
--     Initial Public Release
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   clk       - base clock for the system
--   pi        - intended position input
--   pa        - actual position feedback
--   speed     - velocity output
--   forw      - forward bit
--
--   vl1       - intended speed based upon calculated posdif
--   va        - velocity that approaches the vi
--               directly vel when far from intended position
--   vi        - intended velocity, changes directly with posdif
--   posdif    - differential of intended and actual position
--
--   accel
--   decel - coefficients based upon acceleration limit
--           if limit of acceleration is k, then:
--     accel = maxvelocity*baseclockfrequency/((resolutionofspeed-1)*k)
--
--     In this example: a 100 steps per revolution motor has been set up to run
--     at a maximum of four revolutions per second. It is intended to take two
--     seconds to accelerate from 0 to max speed and 1 second to decelerate.
--     The base clock runs at 50MHz.
--
--     accel = 4*50,000,000/(255*2) = 392157
--     decel = 4*50,000,000/(255*4) = 196078
--
--   For finding vi based on posdif, the following relation is used:
--     vi = +-sqrt(2*k*|posdif|)
--   vi is velocity, k is acceleration, and posdif is position differential
--   these values need to have corresponding units (ie. rev/s, rev, and rev/s^2)
--
--     Using the same example:
--
--     vi = 255/4*sqrt(2*4*posdif/6400) = 2.2539*sqrt(posdif)
--   A crude yet sufficient sqrt table is employed in this code
--
--   The vi calculation acts as a guide for va, but va is what actually controls
--   velocity. As it is acceleration limited at a constant time base, it may not
--   follow quickly enough with position and can easily result in overshooting
--   a target position. For general purpose positioning, it works fine, but a
--   better solution may be to use a more accurate square root function and
--   latch vel to vi once va has approached closely enough to vi.
--
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
--------------------------------------------
ENTITY AccelerationLimitedPositionControl IS
    PORT
    (
      clk   :IN  STD_LOGIC;
      pi    :IN  STD_LOGIC_VECTOR(17 DOWNTO 0);
      pa    :IN  STD_LOGIC_VECTOR(17 DOWNTO 0);
      speed :OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      forw  :OUT STD_LOGIC
    );
END AccelerationLimitedPositionControl;
--------------------------------------------
ARCHITECTURE arx OF AccelerationLimitedPositionControl IS
  SIGNAL vl1       :INTEGER RANGE 0 TO 255:= 0;
  SIGNAL va        :STD_LOGIC_VECTOR (8 DOWNTO 0):= "100000000";
  SIGNAL vireg     :INTEGER RANGE 0 TO 511:= 256;
  SIGNAL vi        :INTEGER RANGE 0 TO 511:= 256;
  SIGNAL posdif    :STD_LOGIC_VECTOR (17 DOWNTO 0):= "000000000000000000";
BEGIN

  PROCESS (clk) --increases or decreases va on a timely basis to approach vi
    VARIABLE t     :INTEGER RANGE 0 TO 2097151:= 0;
    CONSTANT accel :INTEGER RANGE 0 TO 2097151:= 392157;
    CONSTANT decel :INTEGER RANGE 0 TO 2097151:= 196078;
  BEGIN
    IF (clk'EVENT AND clk = '1') THEN
      vireg <= vi; --registers vi so it's definite when the next stuff executes
      t := t + 1;
      IF (t > accel) THEN
        IF (va < vireg AND va > 255) THEN
          va <= va + 1;
          t:=0;
        ELSIF (va > vireg AND va < 256) THEN
          va <= va - 1;
          t:=0;
        END IF;
      END IF;
      IF (t > decel) THEN
        IF (va < vireg AND va < 256) THEN
          va <= va + 1;
          t:=0;
        ELSIF (va > vireg AND va > 255) THEN
          va <= va - 1;
          t:=0;
        END IF;
      END IF;
    END IF;
  END PROCESS;

  PROCESS (va) --relates va to speed for UPDOWNcounterANDswitch
  BEGIN
    forw <= va(8);
    IF (va(8) = '1') THEN
      speed <= va(7 DOWNTO 0);
    ELSE
      speed <= NOT va(7 DOWNTO 0);
    END IF;
  END PROCESS;

  posdif <= pa - pi WHEN pa > pi ELSE
            pi - pa; --posdif is the positive differential between pa and pi

  vi <= 255 - vl1 WHEN pa > pi ELSE
        256 + vl1; --vi is a 9bit number but vl1 is 8bit; 255 and 256 correspond
                   --to a speed of zero

  vl1 <= 255 WHEN posdif(17) = '1' ELSE --this crude lookup table can afford to
         255 WHEN posdif(16) = '1' ELSE --be jagged and inaccurate as the
         255 WHEN posdif(15) = '1' ELSE --approach algorithm is sufficient
         255 WHEN posdif(14) = '1' ELSE --to limit acceleration;
         204 WHEN posdif(13) = '1' ELSE --vi, which is directly tied to vl1,
         144 WHEN posdif(12) = '1' ELSE --only acts to guide va and cannot by
         102 WHEN posdif(11) = '1' ELSE --itself (in this form) directly
         72 WHEN posdif(10) = '1' ELSE  --correlate to va
         51 WHEN posdif(9) = '1' ELSE
         36 WHEN posdif(8) = '1' ELSE
         25 WHEN posdif(7) = '1' ELSE
         18 WHEN posdif(6) = '1' ELSE
         12 WHEN posdif(5) = '1' ELSE
         9 WHEN posdif(4) = '1' ELSE
         6 WHEN posdif(3) = '1' ELSE
         4 WHEN posdif(2) = '1' ELSE
         3 WHEN posdif(1) = '1' ELSE
         2 WHEN posdif(0) = '1' ELSE
         0;
END arx;