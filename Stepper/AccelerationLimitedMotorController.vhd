--------------------------------------------------------------------------------
--
--   FileName:        AccelerationLimitedMotorController.vhd
--   Dependencies:    AccelerationLimitedPositionControl.vhd
--                    UPDOWNcounterANDswitch.vhd
--                    cosine.vhd
--                    PWMcomparator.vhd
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
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
--------------------------------------------
ENTITY AccelerationLimitedMotorController IS
PORT(
      clk      :IN  STD_LOGIC;
      position :IN  STD_LOGIC_VECTOR(17 DOWNTO 0);
      switch1  :OUT STD_LOGIC;
      switch2  :OUT STD_LOGIC;
      switch3  :OUT STD_LOGIC;
      switch4  :OUT STD_LOGIC
    );
END AccelerationLimitedMotorController;
--------------------------------------------
ARCHITECTURE arx OF AccelerationLimitedMotorController IS

  COMPONENT AccelerationLimitedPositionControl IS
    PORT
    (
      clk   :IN  STD_LOGIC;
      pi    :IN  STD_LOGIC_VECTOR(17 DOWNTO 0);
      pa    :IN  STD_LOGIC_VECTOR(17 DOWNTO 0);
      speed :OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      forw  :OUT STD_LOGIC
    );
  END COMPONENT;

  COMPONENT UPDOWNcounterANDswitch IS
    PORT
    (
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
  END COMPONENT;

  COMPONENT cosine IS
    PORT
    (
      theta  :IN  STD_LOGIC_VECTOR (5 DOWNTO 0);
      cosine :OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
    );
  END COMPONENT;

  COMPONENT PWMcomparator IS
    PORT
    (
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
  END COMPONENT;

  SIGNAL pa                   :STD_LOGIC_VECTOR(17 DOWNTO 0);
  SIGNAL speed                :STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL forw                 :STD_LOGIC;
  SIGNAL COUNTsin1, COUNTsin2 :STD_LOGIC_VECTOR (5 DOWNTO 0);
  SIGNAL s1, s2, s3, s4       :STD_LOGIC;
  SIGNAL sin1, sin2           :STD_LOGIC_VECTOR (7 DOWNTO 0);

BEGIN
  U1: AccelerationLimitedPositionControl PORT MAP
      (clk, position, pa, speed, forw);
  U2: UPDOWNcounterANDswitch PORT MAP
      (clk, speed, forw, COUNTsin1, COUNTsin2, s1, s2, s3, s4, pa);
  U3: cosine PORT MAP
      (COUNTsin1, sin1);
  U4: cosine PORT MAP
      (COUNTsin2, sin2);
  U6: PWMcomparator PORT MAP
      (clk, sin1, sin2, s1, s2, s3, s4, switch1, switch2, switch3, switch4);
END arx;