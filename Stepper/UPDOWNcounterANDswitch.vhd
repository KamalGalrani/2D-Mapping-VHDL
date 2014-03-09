--------------------------------------------------------------------------------
--
--   FileName:        UPDOWNcounterANDswitch.vhd
--   Dependencies:    cosine.vhd
--                    AccelerationLimitedPositionControl.vhd
--   Design Software: Quartus II Version 9.0 Build 184 04/29/2009 SJ Web Edition
--
--   Version History
--   Version 1.0 8/14/2009 Curtis Wynia
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
--   forw      - a bit that determine which direction the counter counts
--   speed     - control input directly proportional to the motor's speed
--   COUNTsin1,
--   COUNTsin2 - two 6-bit counters whose values are bound at a 64 bit
--               difference (90 degree phase shift).
--   switch1,
--   switch2,
--   switch3,
--   switch4   - 4 bits that represent the polarity of COUNTsin1 and COUNTsin2,
--               these bits can be used directly (inefficiently) to control
--               a motor by half-stepping
--   position  - a linear represenation of the motor's position
--
--   dividend - important constant that determines highest possible speed;
--              depending on the application, change its value on line 80
--     dividend = (speedresolution-1)*(clkfreq)/
--                ((rev/second)*(steps/rev)*(cyclestates/step))
--
--     In this example: a 100 step per revolution motor is intended to be driven
--     at a maximum 4 revolutions per second by micro-stepping with 256
--     different values for speed (resolution = 256) and 64 states per step.
--     The base clock is 50 MHz.
--
--     dividend = 255*50,000,000/(4*100*64) = 498047
--
--   t - the internal counter, of which the rightmost 8 bits are all that are
--       needed for the linear output to the sine table, the whole signal is a
--       more accurate representation of the motor's actual position
--
--       for half-stepping, the rightmost 3 bits are all that are needed
--       for full-stepping, only the rightmost 2 bits determine output switches
--
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
--------------------------------------------
ENTITY UPDOWNcounterANDswitch IS
PORT(
      clk       :IN  STD_LOGIC;
      speed     :IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
      forw      :IN  STD_LOGIC;
      COUNTsin1 :OUT STD_LOGIC_VECTOR (5 DOWNTO 0);
      COUNTsin2 :OUT STD_LOGIC_VECTOR (5 DOWNTO 0);
      switch1   :OUT STD_LOGIC;
      switch2   :OUT STD_LOGIC;
      switch3   :OUT STD_LOGIC;
      switch4   :OUT STD_LOGIC;
      position  :OUT STD_LOGIC_VECTOR (17 DOWNTO 0)
    );
END UPDOWNcounterANDswitch;
--------------------------------------------
ARCHITECTURE arx OF UPDOWNcounterANDswitch IS
  SIGNAL t :STD_LOGIC_VECTOR (17 DOWNTO 0):= "000000000000" & "000000";
  SIGNAL speedreg  :STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL forwreg   :STD_LOGIC;
BEGIN
  PROCESS (clk)
    VARIABLE timechunk :INTEGER RANGE 0 TO 2097151:= 0;
    CONSTANT dividend  :INTEGER RANGE 0 TO 1048575:= 498047;
  BEGIN
    IF (clk'EVENT AND clk='1') THEN
      forwreg  <= forw; --registers for definition when the next stuff executes
      speedreg <= speed;
      IF (speedreg > 0) THEN
        timechunk := timechunk + 1;
        IF (CONV_INTEGER(speedreg)*timechunk >= dividend) THEN
          timechunk := 0;
          IF (forwreg = '1') THEN
            t <= (t + 1);
          ELSE
            t <= (t - 1);
          END IF;
        END IF;
      END IF;
    END IF;
  END PROCESS;

  switch1   <= '1' WHEN t(7 DOWNTO 0) < 64 OR t(7 DOWNTO 0) > 191 ELSE '0';
  switch2   <= '0' WHEN t(7 DOWNTO 0) < 64 OR t(7 DOWNTO 0) > 191 ELSE '1';
  switch3   <= '1' WHEN t(7 DOWNTO 0) < 128 ELSE '0';
  switch4   <= '0' WHEN t(7 DOWNTO 0) < 128 ELSE '1';
  
  COUNTsin1 <= t(5 DOWNTO 0) WHEN t(6) = '0' ELSE NOT t(5 DOWNTO 0);
  COUNTsin2 <= NOT t(5 DOWNTO 0) WHEN t(6) = '0' ELSE t(5 DOWNTO 0);
  position  <= t;
END arx;