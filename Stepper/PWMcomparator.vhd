--------------------------------------------------------------------------------
--
--   FileName:        PWMcomparator.vhd
--   Dependencies:    cosine.vhd
--                    UPDOWNcounterANDswitch.vhd
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
--   clk         - base clock for the system
--   PWM1,
--   PWM2        - 8-bit values from entity cosine that determine pulsewidth
--   Switch1,
--   Switch2,
--   Switch3,
--   Switch4     - 4 bits that represent the polarity of COUNTsin1 and COUNTsin2
--   SWITCHout1,
--   SWITCHout2,
--   SWITCHout3,
--   SWITCHout4  - 4 pulse width modulated bits that control a unipolar motor
--
--   COUNTPWM    - 8-bit PWM count to act as a sawtooth function for PWM
--
--   dividend - constant that determines frequency of PWM
--     dividend = (clkfreq)/
--                (PWMfreq*PWresolution)
--
--     In this example: a 24 KHz PWM is intended with 8 bits of resulution for
--     the pulse's width. The base clock runs at 50 MHz.
--
--     dividend = 50,000,000/(24,000*256) = 8
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
--------------------------------------------
ENTITY PWMcomparator IS
PORT(
      clk        :IN  STD_LOGIC;
      PWM1       :IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
      PWM2       :IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
      Switch1    :IN  STD_LOGIC;
      Switch2    :IN  STD_LOGIC;
      Switch3    :IN  STD_LOGIC;
      Switch4    :IN  STD_LOGIC;
      SWITCHout1 :OUT STD_LOGIC;
      SWITCHout2 :OUT STD_LOGIC;
      SWITCHout3 :OUT STD_LOGIC;
      SWITCHout4 :OUT STD_LOGIC
    );
END PWMcomparator;
--------------------------------------------
ARCHITECTURE arx OF PWMcomparator IS
  SIGNAL COUNTPWM :STD_LOGIC_VECTOR (7 DOWNTO 0);
BEGIN

  PROCESS (clk)
    VARIABLE timechunk :INTEGER RANGE 0 TO 2097151:= 0;
    CONSTANT dividend  :INTEGER RANGE 0 TO 1048575:= 8;
  BEGIN
    IF (clk'EVENT AND clk='1') THEN
      timechunk := timechunk + 1;
      IF (timechunk >= dividend) THEN
        timechunk := 0;
        COUNTPWM <= (COUNTPWM + 1);
      END IF;
    END IF;
  END PROCESS;

  SWITCHout1 <= '1' WHEN (COUNTPWM <= PWM1 AND Switch1 = '1') ELSE '0';
  SWITCHout2 <= '1' WHEN (COUNTPWM <= PWM1 AND Switch2 = '1') ELSE '0';
  SWITCHout3 <= '1' WHEN (COUNTPWM <= PWM2 AND Switch3 = '1') ELSE '0';
  SWITCHout4 <= '1' WHEN (COUNTPWM <= PWM2 AND Switch4 = '1') ELSE '0';
END arx;