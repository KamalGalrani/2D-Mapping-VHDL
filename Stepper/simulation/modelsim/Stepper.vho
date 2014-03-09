-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/10/2014 00:25:19"

-- 
-- Device: Altera 5M1270ZT144A5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	AccelerationLimitedMotorController IS
    PORT (
	clk : IN std_logic;
	position : IN std_logic_vector(17 DOWNTO 0);
	switch1 : OUT std_logic;
	switch2 : OUT std_logic;
	switch3 : OUT std_logic;
	switch4 : OUT std_logic
	);
END AccelerationLimitedMotorController;

-- Design Ports Information
-- switch1	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- switch2	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- switch3	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- switch4	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- clk	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- position[17]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- position[16]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- position[12]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- position[13]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- position[14]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- position[15]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- position[11]	=>  Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- position[10]	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- position[9]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- position[8]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- position[7]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- position[6]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- position[5]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- position[4]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- position[3]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- position[2]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- position[1]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- position[0]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF AccelerationLimitedMotorController IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_position : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_switch1 : std_logic;
SIGNAL ww_switch2 : std_logic;
SIGNAL ww_switch3 : std_logic;
SIGNAL ww_switch4 : std_logic;
SIGNAL \U6|LessThan1~5\ : std_logic;
SIGNAL \U6|LessThan2~5\ : std_logic;
SIGNAL \U6|LessThan1~10\ : std_logic;
SIGNAL \U6|LessThan2~10\ : std_logic;
SIGNAL \U6|LessThan1~15\ : std_logic;
SIGNAL \U6|LessThan2~15\ : std_logic;
SIGNAL \U6|LessThan1~20\ : std_logic;
SIGNAL \U1|LessThan3~5\ : std_logic;
SIGNAL \U1|LessThan1~5\ : std_logic;
SIGNAL \U6|LessThan2~20\ : std_logic;
SIGNAL \U6|LessThan1~25\ : std_logic;
SIGNAL \U1|LessThan3~10\ : std_logic;
SIGNAL \U1|LessThan1~10\ : std_logic;
SIGNAL \U1|Add2~40\ : std_logic;
SIGNAL \U6|LessThan2~25\ : std_logic;
SIGNAL \U6|LessThan1~30\ : std_logic;
SIGNAL \U1|LessThan6~5\ : std_logic;
SIGNAL \U1|LessThan3~15\ : std_logic;
SIGNAL \U1|LessThan1~15\ : std_logic;
SIGNAL \U6|LessThan2~30\ : std_logic;
SIGNAL \U6|LessThan1~35\ : std_logic;
SIGNAL \U1|LessThan6~10\ : std_logic;
SIGNAL \U1|LessThan3~20\ : std_logic;
SIGNAL \U1|LessThan1~20\ : std_logic;
SIGNAL \U6|LessThan2~35\ : std_logic;
SIGNAL \U1|LessThan6~15\ : std_logic;
SIGNAL \U1|LessThan3~25\ : std_logic;
SIGNAL \U1|LessThan1~25\ : std_logic;
SIGNAL \U1|LessThan6~20\ : std_logic;
SIGNAL \U1|LessThan3~30\ : std_logic;
SIGNAL \U1|LessThan1~30\ : std_logic;
SIGNAL \U1|LessThan6~25\ : std_logic;
SIGNAL \U1|LessThan3~35\ : std_logic;
SIGNAL \U1|LessThan1~35\ : std_logic;
SIGNAL \U1|LessThan6~30\ : std_logic;
SIGNAL \U1|LessThan3~40\ : std_logic;
SIGNAL \U1|LessThan1~40\ : std_logic;
SIGNAL \U1|LessThan6~35\ : std_logic;
SIGNAL \U1|LessThan6~40\ : std_logic;
SIGNAL \U1|LessThan6~45\ : std_logic;
SIGNAL \U1|LessThan6~50\ : std_logic;
SIGNAL \U1|LessThan6~55\ : std_logic;
SIGNAL \U1|LessThan6~60\ : std_logic;
SIGNAL \U1|LessThan6~65\ : std_logic;
SIGNAL \U1|LessThan6~70\ : std_logic;
SIGNAL \U1|LessThan6~75\ : std_logic;
SIGNAL \U1|LessThan6~80\ : std_logic;
SIGNAL \U1|LessThan6~85\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \U1|Add0~100_combout\ : std_logic;
SIGNAL \U1|Add0~102\ : std_logic;
SIGNAL \U1|Add0~102COUT1_123\ : std_logic;
SIGNAL \U1|Add0~35_combout\ : std_logic;
SIGNAL \U1|Add0~37\ : std_logic;
SIGNAL \U1|Add0~37COUT1_125\ : std_logic;
SIGNAL \U1|Add0~40_combout\ : std_logic;
SIGNAL \U1|Add0~42\ : std_logic;
SIGNAL \U1|Add0~42COUT1_127\ : std_logic;
SIGNAL \U1|Add0~45_combout\ : std_logic;
SIGNAL \U1|Add0~47\ : std_logic;
SIGNAL \U1|Add0~47COUT1_129\ : std_logic;
SIGNAL \U1|Add0~30_combout\ : std_logic;
SIGNAL \U1|Add0~32\ : std_logic;
SIGNAL \U1|Add0~25_combout\ : std_logic;
SIGNAL \U1|Add0~27\ : std_logic;
SIGNAL \U1|Add0~27COUT1_131\ : std_logic;
SIGNAL \U1|Add0~55_combout\ : std_logic;
SIGNAL \U1|Add0~57\ : std_logic;
SIGNAL \U1|Add0~57COUT1_133\ : std_logic;
SIGNAL \U1|Add0~60_combout\ : std_logic;
SIGNAL \U1|Add0~62\ : std_logic;
SIGNAL \U1|Add0~62COUT1_135\ : std_logic;
SIGNAL \U1|Add0~65_combout\ : std_logic;
SIGNAL \U1|Add0~67\ : std_logic;
SIGNAL \U1|Add0~67COUT1_137\ : std_logic;
SIGNAL \U1|Add0~50_combout\ : std_logic;
SIGNAL \U1|Add0~52\ : std_logic;
SIGNAL \U1|Add0~20_combout\ : std_logic;
SIGNAL \U1|Add0~22\ : std_logic;
SIGNAL \U1|Add0~22COUT1_139\ : std_logic;
SIGNAL \U1|Add0~75_combout\ : std_logic;
SIGNAL \U1|Add0~77\ : std_logic;
SIGNAL \U1|Add0~77COUT1_141\ : std_logic;
SIGNAL \U1|Add0~80_combout\ : std_logic;
SIGNAL \U1|Add0~82\ : std_logic;
SIGNAL \U1|Add0~82COUT1_143\ : std_logic;
SIGNAL \U1|Add0~85_combout\ : std_logic;
SIGNAL \U1|Add0~87\ : std_logic;
SIGNAL \U1|Add0~87COUT1_145\ : std_logic;
SIGNAL \U1|Add0~90_combout\ : std_logic;
SIGNAL \U1|Add0~92\ : std_logic;
SIGNAL \U1|Add0~70_combout\ : std_logic;
SIGNAL \U1|Add0~72\ : std_logic;
SIGNAL \U1|Add0~72COUT1_147\ : std_logic;
SIGNAL \U1|Add0~95_combout\ : std_logic;
SIGNAL \U1|Add0~97\ : std_logic;
SIGNAL \U1|Add0~97COUT1_149\ : std_logic;
SIGNAL \U1|Add0~5_combout\ : std_logic;
SIGNAL \U1|Add0~7\ : std_logic;
SIGNAL \U1|Add0~7COUT1_151\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|Add2~42COUT1_54\ : std_logic;
SIGNAL \U1|Add2~37\ : std_logic;
SIGNAL \U1|Add2~37COUT1_56\ : std_logic;
SIGNAL \U1|Add2~5_combout\ : std_logic;
SIGNAL \U1|LessThan0~4_combout\ : std_logic;
SIGNAL \U1|LessThan0~5_combout\ : std_logic;
SIGNAL \U1|LessThan0~0_combout\ : std_logic;
SIGNAL \U1|LessThan5~2_combout\ : std_logic;
SIGNAL \U1|LessThan0~2_combout\ : std_logic;
SIGNAL \U1|LessThan5~3_combout\ : std_logic;
SIGNAL \U1|LessThan5~4_combout\ : std_logic;
SIGNAL \U1|Add0~2\ : std_logic;
SIGNAL \U1|Add0~2COUT1_153\ : std_logic;
SIGNAL \U1|Add0~12\ : std_logic;
SIGNAL \U1|Add0~15_combout\ : std_logic;
SIGNAL \U1|LessThan5~0_combout\ : std_logic;
SIGNAL \U1|LessThan5~1_combout\ : std_logic;
SIGNAL \U1|LessThan5~5_combout\ : std_logic;
SIGNAL \U1|va[1]~10_combout\ : std_logic;
SIGNAL \U1|Add1~37\ : std_logic;
SIGNAL \U1|Add1~37COUT1_48\ : std_logic;
SIGNAL \U1|Add1~5_combout\ : std_logic;
SIGNAL \U1|Add2~7\ : std_logic;
SIGNAL \U1|Add2~7COUT1_58\ : std_logic;
SIGNAL \U1|Add2~10_combout\ : std_logic;
SIGNAL \U1|Add1~7\ : std_logic;
SIGNAL \U1|Add1~7COUT1_50\ : std_logic;
SIGNAL \U1|Add1~10_combout\ : std_logic;
SIGNAL \U1|Add2~12\ : std_logic;
SIGNAL \U1|Add2~12COUT1_60\ : std_logic;
SIGNAL \U1|Add2~15_combout\ : std_logic;
SIGNAL \U1|Add1~12\ : std_logic;
SIGNAL \U1|Add1~12COUT1_52\ : std_logic;
SIGNAL \U1|Add1~15_combout\ : std_logic;
SIGNAL \U2|t[0]~9\ : std_logic;
SIGNAL \U2|t[0]~9COUT1_53\ : std_logic;
SIGNAL \U2|t[1]~7\ : std_logic;
SIGNAL \U2|t[1]~7COUT1_55\ : std_logic;
SIGNAL \U2|t[2]~5\ : std_logic;
SIGNAL \U2|t[2]~5COUT1_57\ : std_logic;
SIGNAL \U2|t[3]~11\ : std_logic;
SIGNAL \U2|t[4]~15\ : std_logic;
SIGNAL \U2|t[4]~15COUT1_59\ : std_logic;
SIGNAL \U2|t[5]~13\ : std_logic;
SIGNAL \U2|t[5]~13COUT1_61\ : std_logic;
SIGNAL \U2|t[6]~1\ : std_logic;
SIGNAL \U2|t[6]~1COUT1_63\ : std_logic;
SIGNAL \U2|t[7]~3\ : std_logic;
SIGNAL \U2|t[7]~3COUT1_65\ : std_logic;
SIGNAL \U2|t[8]~36\ : std_logic;
SIGNAL \U2|t[9]~34\ : std_logic;
SIGNAL \U2|t[9]~34COUT1_67\ : std_logic;
SIGNAL \U2|t[10]~32\ : std_logic;
SIGNAL \U2|t[10]~32COUT1_69\ : std_logic;
SIGNAL \U2|t[11]~30\ : std_logic;
SIGNAL \U2|t[11]~30COUT1_71\ : std_logic;
SIGNAL \U2|t[12]~22\ : std_logic;
SIGNAL \U2|t[12]~22COUT1_73\ : std_logic;
SIGNAL \U1|LessThan6~87_cout0\ : std_logic;
SIGNAL \U1|LessThan6~87COUT1_106\ : std_logic;
SIGNAL \U1|LessThan6~82_cout0\ : std_logic;
SIGNAL \U1|LessThan6~82COUT1_108\ : std_logic;
SIGNAL \U1|LessThan6~77_cout0\ : std_logic;
SIGNAL \U1|LessThan6~77COUT1_110\ : std_logic;
SIGNAL \U1|LessThan6~72_cout\ : std_logic;
SIGNAL \U1|LessThan6~67_cout0\ : std_logic;
SIGNAL \U1|LessThan6~67COUT1_112\ : std_logic;
SIGNAL \U1|LessThan6~62_cout0\ : std_logic;
SIGNAL \U1|LessThan6~62COUT1_114\ : std_logic;
SIGNAL \U1|LessThan6~57_cout0\ : std_logic;
SIGNAL \U1|LessThan6~57COUT1_116\ : std_logic;
SIGNAL \U1|LessThan6~52_cout0\ : std_logic;
SIGNAL \U1|LessThan6~52COUT1_118\ : std_logic;
SIGNAL \U1|LessThan6~47_cout\ : std_logic;
SIGNAL \U1|LessThan6~42_cout0\ : std_logic;
SIGNAL \U1|LessThan6~42COUT1_120\ : std_logic;
SIGNAL \U1|LessThan6~37_cout0\ : std_logic;
SIGNAL \U1|LessThan6~37COUT1_122\ : std_logic;
SIGNAL \U1|LessThan6~32_cout0\ : std_logic;
SIGNAL \U1|LessThan6~32COUT1_124\ : std_logic;
SIGNAL \U1|LessThan6~27_cout0\ : std_logic;
SIGNAL \U1|LessThan6~27COUT1_126\ : std_logic;
SIGNAL \U1|LessThan6~22_cout\ : std_logic;
SIGNAL \U2|t[13]~24\ : std_logic;
SIGNAL \U2|t[14]~26\ : std_logic;
SIGNAL \U2|t[14]~26COUT1_75\ : std_logic;
SIGNAL \U2|t[15]~28\ : std_logic;
SIGNAL \U2|t[15]~28COUT1_77\ : std_logic;
SIGNAL \U1|LessThan6~17_cout0\ : std_logic;
SIGNAL \U1|LessThan6~17COUT1_128\ : std_logic;
SIGNAL \U1|LessThan6~12_cout0\ : std_logic;
SIGNAL \U1|LessThan6~12COUT1_130\ : std_logic;
SIGNAL \U1|LessThan6~7_cout0\ : std_logic;
SIGNAL \U1|LessThan6~7COUT1_132\ : std_logic;
SIGNAL \U1|LessThan6~0\ : std_logic;
SIGNAL \U1|Add3~100\ : std_logic;
SIGNAL \U1|Add3~100COUT1_119\ : std_logic;
SIGNAL \U1|Add3~94\ : std_logic;
SIGNAL \U1|Add3~94COUT1_121\ : std_logic;
SIGNAL \U1|Add3~86\ : std_logic;
SIGNAL \U1|Add3~86COUT1_123\ : std_logic;
SIGNAL \U1|Add3~81\ : std_logic;
SIGNAL \U1|Add3~75\ : std_logic;
SIGNAL \U1|Add3~75COUT1_125\ : std_logic;
SIGNAL \U1|Add3~70\ : std_logic;
SIGNAL \U1|Add3~70COUT1_127\ : std_logic;
SIGNAL \U1|Add3~61_combout\ : std_logic;
SIGNAL \U1|Add4~87\ : std_logic;
SIGNAL \U1|Add4~87COUT1_106\ : std_logic;
SIGNAL \U1|Add4~82\ : std_logic;
SIGNAL \U1|Add4~82COUT1_108\ : std_logic;
SIGNAL \U1|Add4~77\ : std_logic;
SIGNAL \U1|Add4~77COUT1_110\ : std_logic;
SIGNAL \U1|Add4~72\ : std_logic;
SIGNAL \U1|Add4~67\ : std_logic;
SIGNAL \U1|Add4~67COUT1_112\ : std_logic;
SIGNAL \U1|Add4~62\ : std_logic;
SIGNAL \U1|Add4~62COUT1_114\ : std_logic;
SIGNAL \U1|Add4~55_combout\ : std_logic;
SIGNAL \U1|Add3~66_combout\ : std_logic;
SIGNAL \U1|Add3~63\ : std_logic;
SIGNAL \U1|Add3~63COUT1_129\ : std_logic;
SIGNAL \U1|Add3~56_combout\ : std_logic;
SIGNAL \U1|Add4~57\ : std_logic;
SIGNAL \U1|Add4~57COUT1_116\ : std_logic;
SIGNAL \U1|Add4~50_combout\ : std_logic;
SIGNAL \U1|Add3~67_combout\ : std_logic;
SIGNAL \U1|Add3~58\ : std_logic;
SIGNAL \U1|Add3~58COUT1_131\ : std_logic;
SIGNAL \U1|Add3~48_combout\ : std_logic;
SIGNAL \U1|Add4~52\ : std_logic;
SIGNAL \U1|Add4~52COUT1_118\ : std_logic;
SIGNAL \U1|Add4~45_combout\ : std_logic;
SIGNAL \U1|Add3~53_combout\ : std_logic;
SIGNAL \U1|vi[4]~11_combout\ : std_logic;
SIGNAL \U1|Add4~47\ : std_logic;
SIGNAL \U1|Add4~42\ : std_logic;
SIGNAL \U1|Add4~42COUT1_120\ : std_logic;
SIGNAL \U1|Add4~37\ : std_logic;
SIGNAL \U1|Add4~37COUT1_122\ : std_logic;
SIGNAL \U1|Add4~30_combout\ : std_logic;
SIGNAL \U1|Add3~50\ : std_logic;
SIGNAL \U1|Add3~45\ : std_logic;
SIGNAL \U1|Add3~45COUT1_133\ : std_logic;
SIGNAL \U1|Add3~39\ : std_logic;
SIGNAL \U1|Add3~39COUT1_135\ : std_logic;
SIGNAL \U1|Add3~31_combout\ : std_logic;
SIGNAL \U1|Add3~42_combout\ : std_logic;
SIGNAL \U1|Add4~35_combout\ : std_logic;
SIGNAL \U1|Add3~37_combout\ : std_logic;
SIGNAL \U1|vi[0]~7_combout\ : std_logic;
SIGNAL \U1|Add3~33\ : std_logic;
SIGNAL \U1|Add3~33COUT1_137\ : std_logic;
SIGNAL \U1|Add3~0_combout\ : std_logic;
SIGNAL \U1|Add4~32\ : std_logic;
SIGNAL \U1|Add4~32COUT1_124\ : std_logic;
SIGNAL \U1|Add4~0_combout\ : std_logic;
SIGNAL \U1|Add3~36_combout\ : std_logic;
SIGNAL \U1|Add3~43_combout\ : std_logic;
SIGNAL \U1|Add4~40_combout\ : std_logic;
SIGNAL \U1|Add3~54_combout\ : std_logic;
SIGNAL \U1|vi[4]~12_combout\ : std_logic;
SIGNAL \U1|Add4~2\ : std_logic;
SIGNAL \U1|Add4~2COUT1_126\ : std_logic;
SIGNAL \U1|Add4~7\ : std_logic;
SIGNAL \U1|Add4~10_combout\ : std_logic;
SIGNAL \U1|Add3~2\ : std_logic;
SIGNAL \U1|Add3~2COUT1_139\ : std_logic;
SIGNAL \U1|Add3~7\ : std_logic;
SIGNAL \U1|Add3~11_combout\ : std_logic;
SIGNAL \U1|Add4~12\ : std_logic;
SIGNAL \U1|Add4~12COUT1_128\ : std_logic;
SIGNAL \U1|Add4~15_combout\ : std_logic;
SIGNAL \U1|vi[0]~1_combout\ : std_logic;
SIGNAL \U1|Add3~13\ : std_logic;
SIGNAL \U1|Add3~13COUT1_141\ : std_logic;
SIGNAL \U1|Add3~18\ : std_logic;
SIGNAL \U1|Add3~18COUT1_143\ : std_logic;
SIGNAL \U1|Add3~23\ : std_logic;
SIGNAL \U1|Add3~23COUT1_145\ : std_logic;
SIGNAL \U1|Add3~26_combout\ : std_logic;
SIGNAL \U1|Add4~17\ : std_logic;
SIGNAL \U1|Add4~17COUT1_130\ : std_logic;
SIGNAL \U1|Add4~22\ : std_logic;
SIGNAL \U1|Add4~22COUT1_132\ : std_logic;
SIGNAL \U1|Add4~25_combout\ : std_logic;
SIGNAL \U1|vi[0]~3_combout\ : std_logic;
SIGNAL \U1|Add4~20_combout\ : std_logic;
SIGNAL \U1|Add3~21_combout\ : std_logic;
SIGNAL \U1|Add3~16_combout\ : std_logic;
SIGNAL \U1|vi[0]~2_combout\ : std_logic;
SIGNAL \U1|vi[0]~4_combout\ : std_logic;
SIGNAL \U1|Add3~5_combout\ : std_logic;
SIGNAL \U1|Add4~5_combout\ : std_logic;
SIGNAL \U1|Add3~10_combout\ : std_logic;
SIGNAL \U1|Add3~55_combout\ : std_logic;
SIGNAL \U1|Add4~60_combout\ : std_logic;
SIGNAL \U1|Add3~68_combout\ : std_logic;
SIGNAL \U1|Add3~78_combout\ : std_logic;
SIGNAL \U1|Add4~65_combout\ : std_logic;
SIGNAL \U1|Add3~73_combout\ : std_logic;
SIGNAL \U1|vl1~0_combout\ : std_logic;
SIGNAL \U1|vi[3]~14_combout\ : std_logic;
SIGNAL \U1|vi[3]~15_combout\ : std_logic;
SIGNAL \U1|vi[3]~16_combout\ : std_logic;
SIGNAL \U1|vi[2]~6_combout\ : std_logic;
SIGNAL \U1|Add3~84_combout\ : std_logic;
SIGNAL \U1|Add4~75_combout\ : std_logic;
SIGNAL \U1|Add3~89_combout\ : std_logic;
SIGNAL \U1|Add3~91_combout\ : std_logic;
SIGNAL \U1|Add3~79_combout\ : std_logic;
SIGNAL \U1|Add4~70_combout\ : std_logic;
SIGNAL \U1|Add3~90_combout\ : std_logic;
SIGNAL \U1|vi[2]~18_combout\ : std_logic;
SIGNAL \U1|vi[2]~19_combout\ : std_logic;
SIGNAL \U1|vi[2]~20_combout\ : std_logic;
SIGNAL \U1|Add3~98_combout\ : std_logic;
SIGNAL \U1|Add4~85_combout\ : std_logic;
SIGNAL \U1|Add4~80_combout\ : std_logic;
SIGNAL \U1|Add3~92_combout\ : std_logic;
SIGNAL \U1|Add3~97_combout\ : std_logic;
SIGNAL \U1|vl1~1_combout\ : std_logic;
SIGNAL \U1|vl1~2_combout\ : std_logic;
SIGNAL \U1|vl1[1]~3_combout\ : std_logic;
SIGNAL \U1|vl1[1]~4_combout\ : std_logic;
SIGNAL \U1|vi[0]~0_combout\ : std_logic;
SIGNAL \U1|vi[0]~23_combout\ : std_logic;
SIGNAL \U1|vi[0]~24_combout\ : std_logic;
SIGNAL \U1|vi[0]~25_combout\ : std_logic;
SIGNAL \U1|vi[0]~26_combout\ : std_logic;
SIGNAL \U1|LessThan1~42_cout0\ : std_logic;
SIGNAL \U1|LessThan1~42COUT1_54\ : std_logic;
SIGNAL \U1|LessThan1~37_cout0\ : std_logic;
SIGNAL \U1|LessThan1~37COUT1_56\ : std_logic;
SIGNAL \U1|LessThan1~32_cout0\ : std_logic;
SIGNAL \U1|LessThan1~32COUT1_58\ : std_logic;
SIGNAL \U1|LessThan1~27_cout0\ : std_logic;
SIGNAL \U1|LessThan1~27COUT1_60\ : std_logic;
SIGNAL \U1|LessThan1~22_cout\ : std_logic;
SIGNAL \U1|Add2~17\ : std_logic;
SIGNAL \U1|Add1~17\ : std_logic;
SIGNAL \U1|Add1~17COUT1_54\ : std_logic;
SIGNAL \U1|Add1~20_combout\ : std_logic;
SIGNAL \U1|Add2~20_combout\ : std_logic;
SIGNAL \U1|Add2~22\ : std_logic;
SIGNAL \U1|Add2~22COUT1_62\ : std_logic;
SIGNAL \U1|Add2~25_combout\ : std_logic;
SIGNAL \U1|Add1~22\ : std_logic;
SIGNAL \U1|Add1~25_combout\ : std_logic;
SIGNAL \U1|Add2~27\ : std_logic;
SIGNAL \U1|Add2~27COUT1_64\ : std_logic;
SIGNAL \U1|Add2~30_combout\ : std_logic;
SIGNAL \U1|Add1~27\ : std_logic;
SIGNAL \U1|Add1~27COUT1_56\ : std_logic;
SIGNAL \U1|Add1~30_combout\ : std_logic;
SIGNAL \U1|vi[5]~9_combout\ : std_logic;
SIGNAL \U1|LessThan1~17_cout0\ : std_logic;
SIGNAL \U1|LessThan1~17COUT1_62\ : std_logic;
SIGNAL \U1|LessThan1~12_cout0\ : std_logic;
SIGNAL \U1|LessThan1~12COUT1_64\ : std_logic;
SIGNAL \U1|LessThan1~7_cout0\ : std_logic;
SIGNAL \U1|LessThan1~7COUT1_66\ : std_logic;
SIGNAL \U1|LessThan1~0_combout\ : std_logic;
SIGNAL \U1|t~2_combout\ : std_logic;
SIGNAL \U1|LessThan5~6_combout\ : std_logic;
SIGNAL \U1|va~4_combout\ : std_logic;
SIGNAL \U1|va[1]~5_combout\ : std_logic;
SIGNAL \U1|Add0~10_combout\ : std_logic;
SIGNAL \U1|LessThan0~1_combout\ : std_logic;
SIGNAL \U1|LessThan0~3_combout\ : std_logic;
SIGNAL \U1|LessThan0~6_combout\ : std_logic;
SIGNAL \U1|LessThan0~7_combout\ : std_logic;
SIGNAL \U1|t~24_combout\ : std_logic;
SIGNAL \U1|va~12_combout\ : std_logic;
SIGNAL \U1|Add2~42_cout0\ : std_logic;
SIGNAL \U1|Add2~35_combout\ : std_logic;
SIGNAL \U1|Add1~35_combout\ : std_logic;
SIGNAL \U2|LessThan0~1_combout\ : std_logic;
SIGNAL \U2|LessThan0~0_combout\ : std_logic;
SIGNAL \U2|LessThan0~2_combout\ : std_logic;
SIGNAL \U2|Add0~0_combout\ : std_logic;
SIGNAL \U2|Add0~2\ : std_logic;
SIGNAL \U2|Add0~2COUT1_123\ : std_logic;
SIGNAL \U2|Add0~5_combout\ : std_logic;
SIGNAL \U2|Add0~7\ : std_logic;
SIGNAL \U2|Add0~7COUT1_125\ : std_logic;
SIGNAL \U2|Add0~65_combout\ : std_logic;
SIGNAL \U2|Add0~67\ : std_logic;
SIGNAL \U2|Add0~67COUT1_127\ : std_logic;
SIGNAL \U2|Add0~70_combout\ : std_logic;
SIGNAL \U2|Add0~72\ : std_logic;
SIGNAL \U2|Add0~72COUT1_129\ : std_logic;
SIGNAL \U2|Add0~45_combout\ : std_logic;
SIGNAL \U2|Add0~47\ : std_logic;
SIGNAL \U2|Add0~60_combout\ : std_logic;
SIGNAL \U2|Add0~62\ : std_logic;
SIGNAL \U2|Add0~62COUT1_131\ : std_logic;
SIGNAL \U2|Add0~50_combout\ : std_logic;
SIGNAL \U2|Add0~52\ : std_logic;
SIGNAL \U2|Add0~52COUT1_133\ : std_logic;
SIGNAL \U2|Add0~55_combout\ : std_logic;
SIGNAL \U2|Add0~57\ : std_logic;
SIGNAL \U2|Add0~57COUT1_135\ : std_logic;
SIGNAL \U2|Add0~10_combout\ : std_logic;
SIGNAL \U2|Add0~12\ : std_logic;
SIGNAL \U2|Add0~12COUT1_137\ : std_logic;
SIGNAL \U2|Add0~25_combout\ : std_logic;
SIGNAL \U2|Add0~27\ : std_logic;
SIGNAL \U2|Add0~15_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|cs2a[0]~COUT\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|cs2a[0]~COUTCOUT1_14\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|cs2a[1]~COUT\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|cs2a[1]~COUTCOUT1_16\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|cs1a[0]~COUT\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|cs1a[0]~COUTCOUT1_14\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|cs1a[1]~COUT\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|cs1a[1]~COUTCOUT1_16\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|cs2a[2]~COUT\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|cs2a[2]~COUTCOUT1_18\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|cs1a[2]~COUT\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|cs1a[2]~COUTCOUT1_18\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~52\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~52COUT1_146\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~57\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~62\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~62COUT1_148\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~37\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~37COUT1_150\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~42\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~42COUT1_152\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~32\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~32COUT1_154\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~47\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~22\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~22COUT1_156\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~27\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~27COUT1_158\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~67\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~67COUT1_160\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~70_combout\ : std_logic;
SIGNAL \U2|Add0~17\ : std_logic;
SIGNAL \U2|Add0~17COUT1_139\ : std_logic;
SIGNAL \U2|Add0~20_combout\ : std_logic;
SIGNAL \U2|Add0~22\ : std_logic;
SIGNAL \U2|Add0~22COUT1_141\ : std_logic;
SIGNAL \U2|Add0~30_combout\ : std_logic;
SIGNAL \U2|Add0~32\ : std_logic;
SIGNAL \U2|Add0~32COUT1_143\ : std_logic;
SIGNAL \U2|Add0~35_combout\ : std_logic;
SIGNAL \U2|Add0~37\ : std_logic;
SIGNAL \U2|Add0~37COUT1_145\ : std_logic;
SIGNAL \U2|Add0~40_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[0]~37\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[0]~37COUT1_118\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[1]~42\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[1]~42COUT1_120\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[2]~32\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[2]~32COUT1_122\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[3]~47\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[3]~47COUT1_124\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[4]~22\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[5]~27\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[5]~27COUT1_126\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[6]~52\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[6]~52COUT1_128\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[7]~55_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[2]~30_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~67\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~67COUT1_158\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~72\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~72COUT1_160\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~52\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[1]~40_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[0]~35_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~57\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~57COUT1_162\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~62\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~62COUT1_164\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~37\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~37COUT1_166\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~42\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~42COUT1_168\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~32\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[6]~50_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[5]~25_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[4]~20_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[3]~45_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~47\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~47COUT1_170\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~22\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~22COUT1_172\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~27\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~27COUT1_174\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~77\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~77COUT1_176\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~80_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~75_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~65_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~40_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~40_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~70_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~65_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~67\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~67COUT1_170\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~72\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~72COUT1_172\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~77\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~77COUT1_174\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~82\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~35_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~35_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~60_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~60_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~55_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~55_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~50_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~50_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~52\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~52COUT1_176\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~57\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~57COUT1_178\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~62\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~62COUT1_180\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~37\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~37COUT1_182\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~42\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~25_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~25_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~20_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~45_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~45_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~30_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~32\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~32COUT1_184\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~47\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~47COUT1_186\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~22\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~22COUT1_188\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~27\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~27COUT1_190\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~87\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~90_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~85_combout\ : std_logic;
SIGNAL \U2|Add0~42\ : std_logic;
SIGNAL \U2|Add0~75_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[7]~57\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[7]~57COUT1_130\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[8]~0_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~82\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~72\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~72COUT1_162\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~92\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~92COUT1_192\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~0_combout\ : std_logic;
SIGNAL \U2|Add0~77\ : std_logic;
SIGNAL \U2|Add0~77COUT1_147\ : std_logic;
SIGNAL \U2|Add0~80_combout\ : std_logic;
SIGNAL \U2|Add0~82\ : std_logic;
SIGNAL \U2|Add0~82COUT1_149\ : std_logic;
SIGNAL \U2|Add0~85_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[8]~2\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[8]~2COUT1_132\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[9]~7\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[10]~10_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[9]~5_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~2\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~2COUT1_178\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~7COUT1_180\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~2\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~7\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~7COUT1_164\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~10_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~5_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~5_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~2\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~2COUT1_194\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~7\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~7COUT1_196\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~10_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~5_combout\ : std_logic;
SIGNAL \U2|Add0~87\ : std_logic;
SIGNAL \U2|Add0~87COUT1_151\ : std_logic;
SIGNAL \U2|Add0~90_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[10]~12\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[10]~12COUT1_134\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[11]~15_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~12\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~12COUT1_182\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~15_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~12\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~12COUT1_166\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~15_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~12\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~12COUT1_198\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~15_combout\ : std_logic;
SIGNAL \U2|LessThan1~0_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~25_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~30_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~20_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~40_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~35_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~45_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~50_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~60_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~55_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~65_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~70_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~75_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~80_combout\ : std_logic;
SIGNAL \U2|LessThan1~1_combout\ : std_logic;
SIGNAL \U2|LessThan1~2_combout\ : std_logic;
SIGNAL \U2|LessThan1~3_combout\ : std_logic;
SIGNAL \U2|LessThan1~4_combout\ : std_logic;
SIGNAL \U2|LessThan1~5_combout\ : std_logic;
SIGNAL \U2|Add0~92\ : std_logic;
SIGNAL \U2|Add0~92COUT1_153\ : std_logic;
SIGNAL \U2|Add0~100_combout\ : std_logic;
SIGNAL \U2|Add0~102\ : std_logic;
SIGNAL \U2|Add0~95_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~17\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~17COUT1_168\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~77\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~77COUT1_170\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~82\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~87\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~87COUT1_172\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~92\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~92COUT1_174\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~97\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~97COUT1_176\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~102\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~102COUT1_178\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~107\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[11]~17\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[11]~17COUT1_136\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[12]~62\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[12]~62COUT1_138\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[13]~67\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[13]~67COUT1_140\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[14]~72\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[15]~77\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[15]~77COUT1_142\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[16]~82\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[16]~82COUT1_144\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[17]~87\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[17]~87COUT1_146\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[18]~92\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[18]~92COUT1_148\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[19]~95_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~112\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~112COUT1_180\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~117\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~117COUT1_182\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~120_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[17]~85_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[12]~60_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~17\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~17COUT1_184\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~87\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[16]~80_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[15]~75_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[14]~70_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[13]~65_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~92\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~92COUT1_186\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~97\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~97COUT1_188\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~102\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~102COUT1_190\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~107\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~107COUT1_192\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~112\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|add20_result[18]~90_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~117\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~117COUT1_194\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~122\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~122COUT1_196\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~127\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~127COUT1_198\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~130_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~95_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~105_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~17\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~90_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~100_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~85_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~95_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~80_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~90_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~85_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~75_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~97\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~97COUT1_200\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~102\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~102COUT1_202\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~107\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~107COUT1_204\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~112\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~112COUT1_206\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~117\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~115_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~125_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~120_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~110_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~115_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~105_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_1~110_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_2~100_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~122\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~122COUT1_208\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~127\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~127COUT1_210\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~132\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~132COUT1_212\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~137\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~137COUT1_214\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~140_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~135_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~95_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~110_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~105_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~100_combout\ : std_logic;
SIGNAL \U2|LessThan1~6_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~120_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~125_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~130_combout\ : std_logic;
SIGNAL \U2|Mult0|auto_generated|op_5~115_combout\ : std_logic;
SIGNAL \U2|LessThan1~7_combout\ : std_logic;
SIGNAL \U2|LessThan1~8_combout\ : std_logic;
SIGNAL \U2|t[6]~16_combout\ : std_logic;
SIGNAL \U2|t[16]~20\ : std_logic;
SIGNAL \U2|t[16]~20COUT1_79\ : std_logic;
SIGNAL \U1|LessThan3~42_cout0\ : std_logic;
SIGNAL \U1|LessThan3~42COUT1_54\ : std_logic;
SIGNAL \U1|LessThan3~37_cout0\ : std_logic;
SIGNAL \U1|LessThan3~37COUT1_56\ : std_logic;
SIGNAL \U1|LessThan3~32_cout0\ : std_logic;
SIGNAL \U1|LessThan3~32COUT1_58\ : std_logic;
SIGNAL \U1|LessThan3~27_cout0\ : std_logic;
SIGNAL \U1|LessThan3~27COUT1_60\ : std_logic;
SIGNAL \U1|LessThan3~22_cout\ : std_logic;
SIGNAL \U1|LessThan3~17_cout0\ : std_logic;
SIGNAL \U1|LessThan3~17COUT1_62\ : std_logic;
SIGNAL \U1|LessThan3~12_cout0\ : std_logic;
SIGNAL \U1|LessThan3~12COUT1_64\ : std_logic;
SIGNAL \U1|LessThan3~7_cout0\ : std_logic;
SIGNAL \U1|LessThan3~7COUT1_66\ : std_logic;
SIGNAL \U1|LessThan3~0_combout\ : std_logic;
SIGNAL \U1|Add2~32\ : std_logic;
SIGNAL \U1|Add2~32COUT1_66\ : std_logic;
SIGNAL \U1|Add2~0_combout\ : std_logic;
SIGNAL \U1|va~7_combout\ : std_logic;
SIGNAL \U1|Add1~32\ : std_logic;
SIGNAL \U1|Add1~32COUT1_58\ : std_logic;
SIGNAL \U1|Add1~0_combout\ : std_logic;
SIGNAL \U1|va~6_combout\ : std_logic;
SIGNAL \U1|va~8_combout\ : std_logic;
SIGNAL \U1|va~20_combout\ : std_logic;
SIGNAL \U2|forwreg~regout\ : std_logic;
SIGNAL \U6|Add0~15_combout\ : std_logic;
SIGNAL \U6|Add0~17\ : std_logic;
SIGNAL \U6|Add0~17COUT1_25\ : std_logic;
SIGNAL \U6|Add0~10_combout\ : std_logic;
SIGNAL \U6|Add0~12\ : std_logic;
SIGNAL \U6|Add0~12COUT1_27\ : std_logic;
SIGNAL \U6|Add0~5_combout\ : std_logic;
SIGNAL \U6|Add0~7\ : std_logic;
SIGNAL \U6|Add0~7COUT1_29\ : std_logic;
SIGNAL \U6|Add0~0_combout\ : std_logic;
SIGNAL \U6|COUNTPWM[1]~13\ : std_logic;
SIGNAL \U6|COUNTPWM[1]~13COUT1_22\ : std_logic;
SIGNAL \U6|COUNTPWM[2]~11\ : std_logic;
SIGNAL \U6|COUNTPWM[2]~11COUT1_24\ : std_logic;
SIGNAL \U6|COUNTPWM[3]~9\ : std_logic;
SIGNAL \U6|COUNTPWM[3]~9COUT1_26\ : std_logic;
SIGNAL \U6|COUNTPWM[4]~7\ : std_logic;
SIGNAL \U6|COUNTPWM[5]~5\ : std_logic;
SIGNAL \U6|COUNTPWM[5]~5COUT1_28\ : std_logic;
SIGNAL \U6|COUNTPWM[6]~3\ : std_logic;
SIGNAL \U6|COUNTPWM[6]~3COUT1_30\ : std_logic;
SIGNAL \U3|Mux3~0_combout\ : std_logic;
SIGNAL \U3|Mux0~0_combout\ : std_logic;
SIGNAL \U2|COUNTsin1[0]~0_combout\ : std_logic;
SIGNAL \U2|COUNTsin1[3]~1_combout\ : std_logic;
SIGNAL \U3|Mux0~1_combout\ : std_logic;
SIGNAL \U2|COUNTsin1[1]~2_combout\ : std_logic;
SIGNAL \U2|COUNTsin1[2]~3_combout\ : std_logic;
SIGNAL \U3|Mux3~4_combout\ : std_logic;
SIGNAL \U3|Mux3~2_combout\ : std_logic;
SIGNAL \U2|COUNTsin1[5]~5_combout\ : std_logic;
SIGNAL \U2|COUNTsin1[4]~4_combout\ : std_logic;
SIGNAL \U3|Mux3~1_combout\ : std_logic;
SIGNAL \U3|Mux3~3_combout\ : std_logic;
SIGNAL \U3|Mux3~5_combout\ : std_logic;
SIGNAL \U3|Mux4~0_combout\ : std_logic;
SIGNAL \U3|Mux4~1_combout\ : std_logic;
SIGNAL \U3|Mux4~2_combout\ : std_logic;
SIGNAL \U3|Mux4~3_combout\ : std_logic;
SIGNAL \U3|Mux4~4_combout\ : std_logic;
SIGNAL \U3|Mux4~5_combout\ : std_logic;
SIGNAL \U3|Mux5~1_combout\ : std_logic;
SIGNAL \U3|Mux5~2_combout\ : std_logic;
SIGNAL \U3|Mux5~3_combout\ : std_logic;
SIGNAL \U3|Mux5~0_combout\ : std_logic;
SIGNAL \U3|Mux5~4_combout\ : std_logic;
SIGNAL \U3|Mux5~5_combout\ : std_logic;
SIGNAL \U3|Mux6~4_combout\ : std_logic;
SIGNAL \U3|Mux6~1_combout\ : std_logic;
SIGNAL \U3|Mux6~2_combout\ : std_logic;
SIGNAL \U3|Mux6~3_combout\ : std_logic;
SIGNAL \U3|Mux6~0_combout\ : std_logic;
SIGNAL \U3|Mux6~5_combout\ : std_logic;
SIGNAL \U3|Mux7~0_combout\ : std_logic;
SIGNAL \U3|Mux7~2_combout\ : std_logic;
SIGNAL \U3|Mux7~1_combout\ : std_logic;
SIGNAL \U3|Mux7~3_combout\ : std_logic;
SIGNAL \U3|Mux7~4_combout\ : std_logic;
SIGNAL \U3|Mux7~5_combout\ : std_logic;
SIGNAL \U6|LessThan1~37_cout0\ : std_logic;
SIGNAL \U6|LessThan1~37COUT1_48\ : std_logic;
SIGNAL \U6|LessThan1~32_cout0\ : std_logic;
SIGNAL \U6|LessThan1~32COUT1_50\ : std_logic;
SIGNAL \U6|LessThan1~27_cout0\ : std_logic;
SIGNAL \U6|LessThan1~27COUT1_52\ : std_logic;
SIGNAL \U6|LessThan1~22_cout0\ : std_logic;
SIGNAL \U6|LessThan1~22COUT1_54\ : std_logic;
SIGNAL \U6|LessThan1~17_cout\ : std_logic;
SIGNAL \U3|Mux1~0_combout\ : std_logic;
SIGNAL \U3|Mux1~1_combout\ : std_logic;
SIGNAL \U3|Mux1~2_combout\ : std_logic;
SIGNAL \U3|Mux2~1_combout\ : std_logic;
SIGNAL \U3|Mux2~0_combout\ : std_logic;
SIGNAL \U3|Mux2~2_combout\ : std_logic;
SIGNAL \U3|Mux2~3_combout\ : std_logic;
SIGNAL \U3|Mux2~4_combout\ : std_logic;
SIGNAL \U6|LessThan1~12_cout0\ : std_logic;
SIGNAL \U6|LessThan1~12COUT1_56\ : std_logic;
SIGNAL \U6|LessThan1~7_cout0\ : std_logic;
SIGNAL \U6|LessThan1~7COUT1_58\ : std_logic;
SIGNAL \U6|LessThan1~0_combout\ : std_logic;
SIGNAL \U6|SWITCHout1~combout\ : std_logic;
SIGNAL \U6|SWITCHout2~combout\ : std_logic;
SIGNAL \U4|Mux3~0_combout\ : std_logic;
SIGNAL \U4|Mux0~0_combout\ : std_logic;
SIGNAL \U4|Mux0~1_combout\ : std_logic;
SIGNAL \U4|Mux3~4_combout\ : std_logic;
SIGNAL \U4|Mux3~1_combout\ : std_logic;
SIGNAL \U4|Mux3~2_combout\ : std_logic;
SIGNAL \U4|Mux3~3_combout\ : std_logic;
SIGNAL \U4|Mux3~5_combout\ : std_logic;
SIGNAL \U4|Mux4~0_combout\ : std_logic;
SIGNAL \U4|Mux4~1_combout\ : std_logic;
SIGNAL \U4|Mux4~2_combout\ : std_logic;
SIGNAL \U4|Mux4~3_combout\ : std_logic;
SIGNAL \U4|Mux4~4_combout\ : std_logic;
SIGNAL \U4|Mux4~5_combout\ : std_logic;
SIGNAL \U4|Mux5~4_combout\ : std_logic;
SIGNAL \U4|Mux5~0_combout\ : std_logic;
SIGNAL \U4|Mux5~1_combout\ : std_logic;
SIGNAL \U4|Mux5~2_combout\ : std_logic;
SIGNAL \U4|Mux5~3_combout\ : std_logic;
SIGNAL \U4|Mux5~5_combout\ : std_logic;
SIGNAL \U4|Mux6~2_combout\ : std_logic;
SIGNAL \U4|Mux6~1_combout\ : std_logic;
SIGNAL \U4|Mux6~3_combout\ : std_logic;
SIGNAL \U4|Mux6~0_combout\ : std_logic;
SIGNAL \U4|Mux6~4_combout\ : std_logic;
SIGNAL \U4|Mux6~5_combout\ : std_logic;
SIGNAL \U4|Mux7~0_combout\ : std_logic;
SIGNAL \U4|Mux7~1_combout\ : std_logic;
SIGNAL \U4|Mux7~2_combout\ : std_logic;
SIGNAL \U4|Mux7~3_combout\ : std_logic;
SIGNAL \U4|Mux7~4_combout\ : std_logic;
SIGNAL \U4|Mux7~5_combout\ : std_logic;
SIGNAL \U6|LessThan2~37_cout0\ : std_logic;
SIGNAL \U6|LessThan2~37COUT1_48\ : std_logic;
SIGNAL \U6|LessThan2~32_cout0\ : std_logic;
SIGNAL \U6|LessThan2~32COUT1_50\ : std_logic;
SIGNAL \U6|LessThan2~27_cout0\ : std_logic;
SIGNAL \U6|LessThan2~27COUT1_52\ : std_logic;
SIGNAL \U6|LessThan2~22_cout0\ : std_logic;
SIGNAL \U6|LessThan2~22COUT1_54\ : std_logic;
SIGNAL \U6|LessThan2~17_cout\ : std_logic;
SIGNAL \U4|Mux1~0_combout\ : std_logic;
SIGNAL \U4|Mux1~1_combout\ : std_logic;
SIGNAL \U4|Mux1~2_combout\ : std_logic;
SIGNAL \U4|Mux2~3_combout\ : std_logic;
SIGNAL \U4|Mux2~1_combout\ : std_logic;
SIGNAL \U4|Mux2~0_combout\ : std_logic;
SIGNAL \U4|Mux2~2_combout\ : std_logic;
SIGNAL \U4|Mux2~4_combout\ : std_logic;
SIGNAL \U6|LessThan2~12_cout0\ : std_logic;
SIGNAL \U6|LessThan2~12COUT1_56\ : std_logic;
SIGNAL \U6|LessThan2~7_cout0\ : std_logic;
SIGNAL \U6|LessThan2~7COUT1_58\ : std_logic;
SIGNAL \U6|LessThan2~0_combout\ : std_logic;
SIGNAL \U6|SWITCHout3~combout\ : std_logic;
SIGNAL \U6|SWITCHout4~combout\ : std_logic;
SIGNAL \U6|timechunk\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \U2|Mult0|auto_generated|le7a\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \U2|Mult0|auto_generated|cs2a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U2|Mult0|auto_generated|le3a\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \U2|Mult0|auto_generated|le4a\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \position~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U2|Mult0|auto_generated|le5a\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \U6|COUNTPWM\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U2|Mult0|auto_generated|le6a\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \U2|Mult0|auto_generated|cs1a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U2|speedreg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|t\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \U1|vireg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U1|va\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U2|timechunk\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \U2|t\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U6|ALT_INV_SWITCHout3~combout\ : std_logic;
SIGNAL \U6|ALT_INV_SWITCHout2~combout\ : std_logic;
SIGNAL \U6|ALT_INV_SWITCHout1~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_position <= position;
switch1 <= ww_switch1;
switch2 <= ww_switch2;
switch3 <= ww_switch3;
switch4 <= ww_switch4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U6|ALT_INV_SWITCHout3~combout\ <= NOT \U6|SWITCHout3~combout\;
\U6|ALT_INV_SWITCHout2~combout\ <= NOT \U6|SWITCHout2~combout\;
\U6|ALT_INV_SWITCHout1~combout\ <= NOT \U6|SWITCHout1~combout\;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\position[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_position(17),
	combout => \position~combout\(17));

-- Location: LC_X4_Y9_N6
\U1|t[18]\ : maxv_lcell
-- Equation(s):
-- \U1|t\(18) = DFFEAS((\U1|Add0~0_combout\ & (((!\U1|va~12_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U1|Add0~0_combout\,
	datad => \U1|va~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|t\(18));

-- Location: LC_X2_Y9_N5
\U1|Add0~100\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~100_combout\ = (!\U1|t\(0))
-- \U1|Add0~102\ = CARRY((\U1|t\(0)))
-- \U1|Add0~102COUT1_123\ = CARRY((\U1|t\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|t\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~100_combout\,
	cout0 => \U1|Add0~102\,
	cout1 => \U1|Add0~102COUT1_123\);

-- Location: LC_X2_Y9_N4
\U1|t[0]\ : maxv_lcell
-- Equation(s):
-- \U1|t\(0) = DFFEAS((((\U1|Add0~100_combout\ & !\U1|va~12_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \U1|Add0~100_combout\,
	datad => \U1|va~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|t\(0));

-- Location: LC_X2_Y9_N6
\U1|Add0~35\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~35_combout\ = (\U1|t\(1) $ ((\U1|Add0~102\)))
-- \U1|Add0~37\ = CARRY(((!\U1|Add0~102\) # (!\U1|t\(1))))
-- \U1|Add0~37COUT1_125\ = CARRY(((!\U1|Add0~102COUT1_123\) # (!\U1|t\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|t\(1),
	cin0 => \U1|Add0~102\,
	cin1 => \U1|Add0~102COUT1_123\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~35_combout\,
	cout0 => \U1|Add0~37\,
	cout1 => \U1|Add0~37COUT1_125\);

-- Location: LC_X2_Y9_N1
\U1|t[1]\ : maxv_lcell
-- Equation(s):
-- \U1|t\(1) = DFFEAS((((\U1|Add0~35_combout\ & !\U1|va~12_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \U1|Add0~35_combout\,
	datad => \U1|va~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|t\(1));

-- Location: LC_X2_Y9_N7
\U1|Add0~40\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~40_combout\ = \U1|t\(2) $ ((((!\U1|Add0~37\))))
-- \U1|Add0~42\ = CARRY((\U1|t\(2) & ((!\U1|Add0~37\))))
-- \U1|Add0~42COUT1_127\ = CARRY((\U1|t\(2) & ((!\U1|Add0~37COUT1_125\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|t\(2),
	cin0 => \U1|Add0~37\,
	cin1 => \U1|Add0~37COUT1_125\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~40_combout\,
	cout0 => \U1|Add0~42\,
	cout1 => \U1|Add0~42COUT1_127\);

-- Location: LC_X2_Y9_N3
\U1|t[2]\ : maxv_lcell
-- Equation(s):
-- \U1|t\(2) = DFFEAS((((\U1|Add0~40_combout\ & !\U1|va~12_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \U1|Add0~40_combout\,
	datad => \U1|va~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|t\(2));

-- Location: LC_X2_Y9_N8
\U1|Add0~45\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~45_combout\ = (\U1|t\(3) $ ((\U1|Add0~42\)))
-- \U1|Add0~47\ = CARRY(((!\U1|Add0~42\) # (!\U1|t\(3))))
-- \U1|Add0~47COUT1_129\ = CARRY(((!\U1|Add0~42COUT1_127\) # (!\U1|t\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|t\(3),
	cin0 => \U1|Add0~42\,
	cin1 => \U1|Add0~42COUT1_127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~45_combout\,
	cout0 => \U1|Add0~47\,
	cout1 => \U1|Add0~47COUT1_129\);

-- Location: LC_X2_Y9_N2
\U1|t[3]\ : maxv_lcell
-- Equation(s):
-- \U1|t\(3) = DFFEAS((\U1|Add0~45_combout\ & (((!\U1|va~12_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U1|Add0~45_combout\,
	datad => \U1|va~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|t\(3));

-- Location: LC_X2_Y9_N9
\U1|Add0~30\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~30_combout\ = (\U1|t\(4) $ ((!\U1|Add0~47\)))
-- \U1|Add0~32\ = CARRY(((\U1|t\(4) & !\U1|Add0~47COUT1_129\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|t\(4),
	cin0 => \U1|Add0~47\,
	cin1 => \U1|Add0~47COUT1_129\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~30_combout\,
	cout => \U1|Add0~32\);

-- Location: LC_X3_Y10_N6
\U1|t[4]\ : maxv_lcell
-- Equation(s):
-- \U1|t\(4) = DFFEAS((((\U1|Add0~30_combout\ & !\U1|va~12_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \U1|Add0~30_combout\,
	datad => \U1|va~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|t\(4));

-- Location: LC_X3_Y9_N0
\U1|Add0~25\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~25_combout\ = (\U1|t\(5) $ ((\U1|Add0~32\)))
-- \U1|Add0~27\ = CARRY(((!\U1|Add0~32\) # (!\U1|t\(5))))
-- \U1|Add0~27COUT1_131\ = CARRY(((!\U1|Add0~32\) # (!\U1|t\(5))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|t\(5),
	cin => \U1|Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~25_combout\,
	cout0 => \U1|Add0~27\,
	cout1 => \U1|Add0~27COUT1_131\);

-- Location: LC_X3_Y10_N3
\U1|t[5]\ : maxv_lcell
-- Equation(s):
-- \U1|t\(5) = DFFEAS(((\U1|Add0~25_combout\ & ((!\U1|va~12_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U1|Add0~25_combout\,
	datad => \U1|va~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|t\(5));

-- Location: LC_X3_Y9_N1
\U1|Add0~55\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~55_combout\ = (\U1|t\(6) $ ((!(!\U1|Add0~32\ & \U1|Add0~27\) # (\U1|Add0~32\ & \U1|Add0~27COUT1_131\))))
-- \U1|Add0~57\ = CARRY(((\U1|t\(6) & !\U1|Add0~27\)))
-- \U1|Add0~57COUT1_133\ = CARRY(((\U1|t\(6) & !\U1|Add0~27COUT1_131\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|t\(6),
	cin => \U1|Add0~32\,
	cin0 => \U1|Add0~27\,
	cin1 => \U1|Add0~27COUT1_131\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~55_combout\,
	cout0 => \U1|Add0~57\,
	cout1 => \U1|Add0~57COUT1_133\);

-- Location: LC_X3_Y8_N5
\U1|t[6]\ : maxv_lcell
-- Equation(s):
-- \U1|t\(6) = DFFEAS((\U1|Add0~55_combout\ & (((!\U1|va~12_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U1|Add0~55_combout\,
	datad => \U1|va~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|t\(6));

-- Location: LC_X3_Y9_N2
\U1|Add0~60\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~60_combout\ = \U1|t\(7) $ (((((!\U1|Add0~32\ & \U1|Add0~57\) # (\U1|Add0~32\ & \U1|Add0~57COUT1_133\)))))
-- \U1|Add0~62\ = CARRY(((!\U1|Add0~57\)) # (!\U1|t\(7)))
-- \U1|Add0~62COUT1_135\ = CARRY(((!\U1|Add0~57COUT1_133\)) # (!\U1|t\(7)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|t\(7),
	cin => \U1|Add0~32\,
	cin0 => \U1|Add0~57\,
	cin1 => \U1|Add0~57COUT1_133\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~60_combout\,
	cout0 => \U1|Add0~62\,
	cout1 => \U1|Add0~62COUT1_135\);

-- Location: LC_X3_Y10_N1
\U1|t[7]\ : maxv_lcell
-- Equation(s):
-- \U1|t\(7) = DFFEAS(((\U1|Add0~60_combout\ & ((!\U1|va~12_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U1|Add0~60_combout\,
	datad => \U1|va~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|t\(7));

-- Location: LC_X3_Y9_N3
\U1|Add0~65\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~65_combout\ = \U1|t\(8) $ ((((!(!\U1|Add0~32\ & \U1|Add0~62\) # (\U1|Add0~32\ & \U1|Add0~62COUT1_135\)))))
-- \U1|Add0~67\ = CARRY((\U1|t\(8) & ((!\U1|Add0~62\))))
-- \U1|Add0~67COUT1_137\ = CARRY((\U1|t\(8) & ((!\U1|Add0~62COUT1_135\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|t\(8),
	cin => \U1|Add0~32\,
	cin0 => \U1|Add0~62\,
	cin1 => \U1|Add0~62COUT1_135\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~65_combout\,
	cout0 => \U1|Add0~67\,
	cout1 => \U1|Add0~67COUT1_137\);

-- Location: LC_X3_Y10_N0
\U1|t[8]\ : maxv_lcell
-- Equation(s):
-- \U1|t\(8) = DFFEAS((((\U1|Add0~65_combout\ & !\U1|va~12_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \U1|Add0~65_combout\,
	datad => \U1|va~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|t\(8));

-- Location: LC_X3_Y9_N4
\U1|Add0~50\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~50_combout\ = (\U1|t\(9) $ (((!\U1|Add0~32\ & \U1|Add0~67\) # (\U1|Add0~32\ & \U1|Add0~67COUT1_137\))))
-- \U1|Add0~52\ = CARRY(((!\U1|Add0~67COUT1_137\) # (!\U1|t\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|t\(9),
	cin => \U1|Add0~32\,
	cin0 => \U1|Add0~67\,
	cin1 => \U1|Add0~67COUT1_137\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~50_combout\,
	cout => \U1|Add0~52\);

-- Location: LC_X3_Y10_N8
\U1|t[9]\ : maxv_lcell
-- Equation(s):
-- \U1|t\(9) = DFFEAS(((\U1|Add0~50_combout\ & ((!\U1|va~12_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U1|Add0~50_combout\,
	datad => \U1|va~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|t\(9));

-- Location: LC_X3_Y9_N5
\U1|Add0~20\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~20_combout\ = (\U1|t\(10) $ ((!\U1|Add0~52\)))
-- \U1|Add0~22\ = CARRY(((\U1|t\(10) & !\U1|Add0~52\)))
-- \U1|Add0~22COUT1_139\ = CARRY(((\U1|t\(10) & !\U1|Add0~52\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|t\(10),
	cin => \U1|Add0~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~20_combout\,
	cout0 => \U1|Add0~22\,
	cout1 => \U1|Add0~22COUT1_139\);

-- Location: LC_X4_Y10_N3
\U1|t[10]\ : maxv_lcell
-- Equation(s):
-- \U1|t\(10) = DFFEAS((\U1|Add0~20_combout\ & (((!\U1|va~12_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U1|Add0~20_combout\,
	datad => \U1|va~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|t\(10));

-- Location: LC_X3_Y9_N6
\U1|Add0~75\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~75_combout\ = \U1|t\(11) $ (((((!\U1|Add0~52\ & \U1|Add0~22\) # (\U1|Add0~52\ & \U1|Add0~22COUT1_139\)))))
-- \U1|Add0~77\ = CARRY(((!\U1|Add0~22\)) # (!\U1|t\(11)))
-- \U1|Add0~77COUT1_141\ = CARRY(((!\U1|Add0~22COUT1_139\)) # (!\U1|t\(11)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|t\(11),
	cin => \U1|Add0~52\,
	cin0 => \U1|Add0~22\,
	cin1 => \U1|Add0~22COUT1_139\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~75_combout\,
	cout0 => \U1|Add0~77\,
	cout1 => \U1|Add0~77COUT1_141\);

-- Location: LC_X3_Y8_N6
\U1|t[11]\ : maxv_lcell
-- Equation(s):
-- \U1|t\(11) = DFFEAS(((\U1|Add0~75_combout\ & ((!\U1|va~12_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U1|Add0~75_combout\,
	datad => \U1|va~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|t\(11));

-- Location: LC_X3_Y9_N7
\U1|Add0~80\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~80_combout\ = (\U1|t\(12) $ ((!(!\U1|Add0~52\ & \U1|Add0~77\) # (\U1|Add0~52\ & \U1|Add0~77COUT1_141\))))
-- \U1|Add0~82\ = CARRY(((\U1|t\(12) & !\U1|Add0~77\)))
-- \U1|Add0~82COUT1_143\ = CARRY(((\U1|t\(12) & !\U1|Add0~77COUT1_141\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|t\(12),
	cin => \U1|Add0~52\,
	cin0 => \U1|Add0~77\,
	cin1 => \U1|Add0~77COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~80_combout\,
	cout0 => \U1|Add0~82\,
	cout1 => \U1|Add0~82COUT1_143\);

-- Location: LC_X3_Y8_N3
\U1|t[12]\ : maxv_lcell
-- Equation(s):
-- \U1|t\(12) = DFFEAS((((\U1|Add0~80_combout\ & !\U1|va~12_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \U1|Add0~80_combout\,
	datad => \U1|va~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|t\(12));

-- Location: LC_X3_Y9_N8
\U1|Add0~85\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~85_combout\ = (\U1|t\(13) $ (((!\U1|Add0~52\ & \U1|Add0~82\) # (\U1|Add0~52\ & \U1|Add0~82COUT1_143\))))
-- \U1|Add0~87\ = CARRY(((!\U1|Add0~82\) # (!\U1|t\(13))))
-- \U1|Add0~87COUT1_145\ = CARRY(((!\U1|Add0~82COUT1_143\) # (!\U1|t\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|t\(13),
	cin => \U1|Add0~52\,
	cin0 => \U1|Add0~82\,
	cin1 => \U1|Add0~82COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~85_combout\,
	cout0 => \U1|Add0~87\,
	cout1 => \U1|Add0~87COUT1_145\);

-- Location: LC_X3_Y8_N7
\U1|t[13]\ : maxv_lcell
-- Equation(s):
-- \U1|t\(13) = DFFEAS(((\U1|Add0~85_combout\ & ((!\U1|va~12_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U1|Add0~85_combout\,
	datad => \U1|va~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|t\(13));

-- Location: LC_X3_Y9_N9
\U1|Add0~90\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~90_combout\ = (\U1|t\(14) $ ((!(!\U1|Add0~52\ & \U1|Add0~87\) # (\U1|Add0~52\ & \U1|Add0~87COUT1_145\))))
-- \U1|Add0~92\ = CARRY(((\U1|t\(14) & !\U1|Add0~87COUT1_145\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|t\(14),
	cin => \U1|Add0~52\,
	cin0 => \U1|Add0~87\,
	cin1 => \U1|Add0~87COUT1_145\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~90_combout\,
	cout => \U1|Add0~92\);

-- Location: LC_X3_Y8_N8
\U1|t[14]\ : maxv_lcell
-- Equation(s):
-- \U1|t\(14) = DFFEAS((((\U1|Add0~90_combout\ & !\U1|va~12_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \U1|Add0~90_combout\,
	datad => \U1|va~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|t\(14));

-- Location: LC_X4_Y9_N0
\U1|Add0~70\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~70_combout\ = (\U1|t\(15) $ ((\U1|Add0~92\)))
-- \U1|Add0~72\ = CARRY(((!\U1|Add0~92\) # (!\U1|t\(15))))
-- \U1|Add0~72COUT1_147\ = CARRY(((!\U1|Add0~92\) # (!\U1|t\(15))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|t\(15),
	cin => \U1|Add0~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~70_combout\,
	cout0 => \U1|Add0~72\,
	cout1 => \U1|Add0~72COUT1_147\);

-- Location: LC_X3_Y8_N2
\U1|t[15]\ : maxv_lcell
-- Equation(s):
-- \U1|t\(15) = DFFEAS((((\U1|Add0~70_combout\ & !\U1|va~12_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \U1|Add0~70_combout\,
	datad => \U1|va~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|t\(15));

-- Location: LC_X4_Y9_N1
\U1|Add0~95\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~95_combout\ = (\U1|t\(16) $ ((!(!\U1|Add0~92\ & \U1|Add0~72\) # (\U1|Add0~92\ & \U1|Add0~72COUT1_147\))))
-- \U1|Add0~97\ = CARRY(((\U1|t\(16) & !\U1|Add0~72\)))
-- \U1|Add0~97COUT1_149\ = CARRY(((\U1|t\(16) & !\U1|Add0~72COUT1_147\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|t\(16),
	cin => \U1|Add0~92\,
	cin0 => \U1|Add0~72\,
	cin1 => \U1|Add0~72COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~95_combout\,
	cout0 => \U1|Add0~97\,
	cout1 => \U1|Add0~97COUT1_149\);

-- Location: LC_X4_Y10_N2
\U1|t[16]\ : maxv_lcell
-- Equation(s):
-- \U1|t\(16) = DFFEAS((((\U1|Add0~95_combout\ & !\U1|va~12_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \U1|Add0~95_combout\,
	datad => \U1|va~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|t\(16));

-- Location: LC_X4_Y9_N2
\U1|Add0~5\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~5_combout\ = (\U1|t\(17) $ (((!\U1|Add0~92\ & \U1|Add0~97\) # (\U1|Add0~92\ & \U1|Add0~97COUT1_149\))))
-- \U1|Add0~7\ = CARRY(((!\U1|Add0~97\) # (!\U1|t\(17))))
-- \U1|Add0~7COUT1_151\ = CARRY(((!\U1|Add0~97COUT1_149\) # (!\U1|t\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|t\(17),
	cin => \U1|Add0~92\,
	cin0 => \U1|Add0~97\,
	cin1 => \U1|Add0~97COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~5_combout\,
	cout0 => \U1|Add0~7\,
	cout1 => \U1|Add0~7COUT1_151\);

-- Location: LC_X4_Y9_N9
\U1|t[17]\ : maxv_lcell
-- Equation(s):
-- \U1|t\(17) = DFFEAS(((\U1|Add0~5_combout\ & ((!\U1|va~12_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U1|Add0~5_combout\,
	datad => \U1|va~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|t\(17));

-- Location: LC_X4_Y9_N3
\U1|Add0~0\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~0_combout\ = \U1|t\(18) $ ((((!(!\U1|Add0~92\ & \U1|Add0~7\) # (\U1|Add0~92\ & \U1|Add0~7COUT1_151\)))))
-- \U1|Add0~2\ = CARRY((\U1|t\(18) & ((!\U1|Add0~7\))))
-- \U1|Add0~2COUT1_153\ = CARRY((\U1|t\(18) & ((!\U1|Add0~7COUT1_151\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|t\(18),
	cin => \U1|Add0~92\,
	cin0 => \U1|Add0~7\,
	cin1 => \U1|Add0~7COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~0_combout\,
	cout0 => \U1|Add0~2\,
	cout1 => \U1|Add0~2COUT1_153\);

-- Location: LC_X6_Y7_N0
\U1|Add2~42\ : maxv_lcell
-- Equation(s):
-- \U1|Add2~42_cout0\ = CARRY(((\U1|va\(0))))
-- \U1|Add2~42COUT1_54\ = CARRY(((\U1|va\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|va\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add2~40\,
	cout0 => \U1|Add2~42_cout0\,
	cout1 => \U1|Add2~42COUT1_54\);

-- Location: LC_X6_Y7_N1
\U1|Add2~35\ : maxv_lcell
-- Equation(s):
-- \U1|Add2~35_combout\ = (\U1|va\(1) $ ((!\U1|Add2~42_cout0\)))
-- \U1|Add2~37\ = CARRY(((!\U1|va\(1) & !\U1|Add2~42_cout0\)))
-- \U1|Add2~37COUT1_56\ = CARRY(((!\U1|va\(1) & !\U1|Add2~42COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|va\(1),
	cin0 => \U1|Add2~42_cout0\,
	cin1 => \U1|Add2~42COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add2~35_combout\,
	cout0 => \U1|Add2~37\,
	cout1 => \U1|Add2~37COUT1_56\);

-- Location: LC_X6_Y7_N2
\U1|Add2~5\ : maxv_lcell
-- Equation(s):
-- \U1|Add2~5_combout\ = \U1|va\(2) $ ((((\U1|Add2~37\))))
-- \U1|Add2~7\ = CARRY((\U1|va\(2)) # ((!\U1|Add2~37\)))
-- \U1|Add2~7COUT1_58\ = CARRY((\U1|va\(2)) # ((!\U1|Add2~37COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|va\(2),
	cin0 => \U1|Add2~37\,
	cin1 => \U1|Add2~37COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add2~5_combout\,
	cout0 => \U1|Add2~7\,
	cout1 => \U1|Add2~7COUT1_58\);

-- Location: LC_X3_Y8_N4
\U1|LessThan0~4\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan0~4_combout\ = (((\U1|Add0~80_combout\ & \U1|Add0~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add0~80_combout\,
	datad => \U1|Add0~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan0~4_combout\);

-- Location: LC_X3_Y8_N0
\U1|LessThan0~5\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan0~5_combout\ = (\U1|LessThan0~4_combout\ & (\U1|Add0~90_combout\ & (\U1|Add0~70_combout\ & \U1|Add0~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan0~4_combout\,
	datab => \U1|Add0~90_combout\,
	datac => \U1|Add0~70_combout\,
	datad => \U1|Add0~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan0~5_combout\);

-- Location: LC_X2_Y9_N0
\U1|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan0~0_combout\ = ((\U1|Add0~40_combout\ & (\U1|Add0~35_combout\ & \U1|Add0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~40_combout\,
	datac => \U1|Add0~35_combout\,
	datad => \U1|Add0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan0~0_combout\);

-- Location: LC_X3_Y10_N7
\U1|LessThan5~2\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan5~2_combout\ = (\U1|Add0~30_combout\) # ((\U1|LessThan0~0_combout\ & ((\U1|Add0~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~30_combout\,
	datab => \U1|LessThan0~0_combout\,
	datad => \U1|Add0~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan5~2_combout\);

-- Location: LC_X3_Y10_N9
\U1|LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan0~2_combout\ = ((\U1|Add0~60_combout\ & (\U1|Add0~65_combout\ & \U1|Add0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~60_combout\,
	datac => \U1|Add0~65_combout\,
	datad => \U1|Add0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan0~2_combout\);

-- Location: LC_X3_Y10_N4
\U1|LessThan5~3\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan5~3_combout\ = (\U1|Add0~50_combout\) # ((\U1|Add0~25_combout\ & (\U1|LessThan5~2_combout\ & \U1|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~50_combout\,
	datab => \U1|Add0~25_combout\,
	datac => \U1|LessThan5~2_combout\,
	datad => \U1|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan5~3_combout\);

-- Location: LC_X4_Y10_N5
\U1|LessThan5~4\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan5~4_combout\ = (\U1|Add0~95_combout\) # ((\U1|Add0~20_combout\ & (\U1|LessThan0~5_combout\ & \U1|LessThan5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~20_combout\,
	datab => \U1|LessThan0~5_combout\,
	datac => \U1|Add0~95_combout\,
	datad => \U1|LessThan5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan5~4_combout\);

-- Location: LC_X4_Y8_N8
\U1|t[20]\ : maxv_lcell
-- Equation(s):
-- \U1|t\(20) = DFFEAS((!\U1|LessThan3~0_combout\ & (((\U1|Add0~15_combout\ & !\U1|LessThan1~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U1|LessThan3~0_combout\,
	datac => \U1|Add0~15_combout\,
	datad => \U1|LessThan1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|t\(20));

-- Location: LC_X4_Y9_N4
\U1|Add0~10\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~10_combout\ = (\U1|t\(19) $ (((!\U1|Add0~92\ & \U1|Add0~2\) # (\U1|Add0~92\ & \U1|Add0~2COUT1_153\))))
-- \U1|Add0~12\ = CARRY(((!\U1|Add0~2COUT1_153\) # (!\U1|t\(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|t\(19),
	cin => \U1|Add0~92\,
	cin0 => \U1|Add0~2\,
	cin1 => \U1|Add0~2COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~10_combout\,
	cout => \U1|Add0~12\);

-- Location: LC_X4_Y9_N5
\U1|Add0~15\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~15_combout\ = ((\U1|Add0~12\ $ (!\U1|t\(20))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|t\(20),
	cin => \U1|Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~15_combout\);

-- Location: LC_X5_Y9_N4
\U1|LessThan5~0\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan5~0_combout\ = (((!\U1|Add0~10_combout\ & !\U1|Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add0~10_combout\,
	datad => \U1|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan5~0_combout\);

-- Location: LC_X5_Y9_N2
\U1|LessThan5~1\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan5~1_combout\ = (\U1|Add0~0_combout\ & ((\U1|LessThan0~7_combout\) # ((!\U1|t~2_combout\)))) # (!\U1|Add0~0_combout\ & (((!\U1|LessThan5~0_combout\ & !\U1|t~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88cf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan0~7_combout\,
	datab => \U1|Add0~0_combout\,
	datac => \U1|LessThan5~0_combout\,
	datad => \U1|t~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan5~1_combout\);

-- Location: LC_X5_Y9_N3
\U1|LessThan5~5\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan5~5_combout\ = (\U1|LessThan5~1_combout\) # ((\U1|LessThan5~4_combout\ & (\U1|Add0~5_combout\ & \U1|t~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan5~4_combout\,
	datab => \U1|Add0~5_combout\,
	datac => \U1|t~24_combout\,
	datad => \U1|LessThan5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan5~5_combout\);

-- Location: LC_X4_Y8_N4
\U1|va[1]~10\ : maxv_lcell
-- Equation(s):
-- \U1|va[1]~10_combout\ = ((\U1|va\(8) & ((!\U1|LessThan5~5_combout\))) # (!\U1|va\(8) & (\U1|LessThan3~0_combout\ & \U1|LessThan5~5_combout\))) # (!\U1|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2cff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan3~0_combout\,
	datab => \U1|va\(8),
	datac => \U1|LessThan5~5_combout\,
	datad => \U1|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|va[1]~10_combout\);

-- Location: LC_X6_Y8_N0
\U1|Add1~35\ : maxv_lcell
-- Equation(s):
-- \U1|Add1~35_combout\ = \U1|va\(1) $ ((\U1|va\(0)))
-- \U1|Add1~37\ = CARRY((\U1|va\(1) & (\U1|va\(0))))
-- \U1|Add1~37COUT1_48\ = CARRY((\U1|va\(1) & (\U1|va\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|va\(1),
	datab => \U1|va\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add1~35_combout\,
	cout0 => \U1|Add1~37\,
	cout1 => \U1|Add1~37COUT1_48\);

-- Location: LC_X6_Y8_N1
\U1|Add1~5\ : maxv_lcell
-- Equation(s):
-- \U1|Add1~5_combout\ = (\U1|va\(2) $ ((\U1|Add1~37\)))
-- \U1|Add1~7\ = CARRY(((!\U1|Add1~37\) # (!\U1|va\(2))))
-- \U1|Add1~7COUT1_50\ = CARRY(((!\U1|Add1~37COUT1_48\) # (!\U1|va\(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|va\(2),
	cin0 => \U1|Add1~37\,
	cin1 => \U1|Add1~37COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add1~5_combout\,
	cout0 => \U1|Add1~7\,
	cout1 => \U1|Add1~7COUT1_50\);

-- Location: LC_X6_Y8_N9
\U1|va[2]\ : maxv_lcell
-- Equation(s):
-- \U1|va\(2) = DFFEAS(((\U1|va[1]~10_combout\ & (\U1|Add2~5_combout\)) # (!\U1|va[1]~10_combout\ & ((\U1|Add1~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \U1|va~12_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U1|Add2~5_combout\,
	datac => \U1|va[1]~10_combout\,
	datad => \U1|Add1~5_combout\,
	aclr => GND,
	ena => \U1|va~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|va\(2));

-- Location: LC_X6_Y7_N3
\U1|Add2~10\ : maxv_lcell
-- Equation(s):
-- \U1|Add2~10_combout\ = (\U1|va\(3) $ ((!\U1|Add2~7\)))
-- \U1|Add2~12\ = CARRY(((!\U1|va\(3) & !\U1|Add2~7\)))
-- \U1|Add2~12COUT1_60\ = CARRY(((!\U1|va\(3) & !\U1|Add2~7COUT1_58\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|va\(3),
	cin0 => \U1|Add2~7\,
	cin1 => \U1|Add2~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add2~10_combout\,
	cout0 => \U1|Add2~12\,
	cout1 => \U1|Add2~12COUT1_60\);

-- Location: LC_X6_Y8_N2
\U1|Add1~10\ : maxv_lcell
-- Equation(s):
-- \U1|Add1~10_combout\ = \U1|va\(3) $ ((((!\U1|Add1~7\))))
-- \U1|Add1~12\ = CARRY((\U1|va\(3) & ((!\U1|Add1~7\))))
-- \U1|Add1~12COUT1_52\ = CARRY((\U1|va\(3) & ((!\U1|Add1~7COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|va\(3),
	cin0 => \U1|Add1~7\,
	cin1 => \U1|Add1~7COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add1~10_combout\,
	cout0 => \U1|Add1~12\,
	cout1 => \U1|Add1~12COUT1_52\);

-- Location: LC_X5_Y8_N5
\U1|va[3]\ : maxv_lcell
-- Equation(s):
-- \U1|va\(3) = DFFEAS(((\U1|va[1]~10_combout\ & (\U1|Add2~10_combout\)) # (!\U1|va[1]~10_combout\ & ((\U1|Add1~10_combout\)))), GLOBAL(\clk~combout\), VCC, , \U1|va~12_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U1|Add2~10_combout\,
	datac => \U1|Add1~10_combout\,
	datad => \U1|va[1]~10_combout\,
	aclr => GND,
	ena => \U1|va~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|va\(3));

-- Location: LC_X6_Y7_N4
\U1|Add2~15\ : maxv_lcell
-- Equation(s):
-- \U1|Add2~15_combout\ = \U1|va\(4) $ ((((\U1|Add2~12\))))
-- \U1|Add2~17\ = CARRY((\U1|va\(4)) # ((!\U1|Add2~12COUT1_60\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|va\(4),
	cin0 => \U1|Add2~12\,
	cin1 => \U1|Add2~12COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add2~15_combout\,
	cout => \U1|Add2~17\);

-- Location: LC_X6_Y8_N3
\U1|Add1~15\ : maxv_lcell
-- Equation(s):
-- \U1|Add1~15_combout\ = \U1|va\(4) $ ((((\U1|Add1~12\))))
-- \U1|Add1~17\ = CARRY(((!\U1|Add1~12\)) # (!\U1|va\(4)))
-- \U1|Add1~17COUT1_54\ = CARRY(((!\U1|Add1~12COUT1_52\)) # (!\U1|va\(4)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|va\(4),
	cin0 => \U1|Add1~12\,
	cin1 => \U1|Add1~12COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add1~15_combout\,
	cout0 => \U1|Add1~17\,
	cout1 => \U1|Add1~17COUT1_54\);

-- Location: LC_X5_Y8_N8
\U1|va[4]\ : maxv_lcell
-- Equation(s):
-- \U1|va\(4) = DFFEAS(((\U1|va[1]~10_combout\ & (\U1|Add2~15_combout\)) # (!\U1|va[1]~10_combout\ & ((\U1|Add1~15_combout\)))), GLOBAL(\clk~combout\), VCC, , \U1|va~12_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U1|Add2~15_combout\,
	datac => \U1|Add1~15_combout\,
	datad => \U1|va[1]~10_combout\,
	aclr => GND,
	ena => \U1|va~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|va\(4));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\position[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_position(13),
	combout => \position~combout\(13));

-- Location: LC_X6_Y9_N1
\U2|t[0]\ : maxv_lcell
-- Equation(s):
-- \U2|t\(0) = DFFEAS(((!\U2|t\(0))), GLOBAL(\clk~combout\), VCC, , \U2|t[6]~16_combout\, , , , )
-- \U2|t[0]~9\ = CARRY(((\U2|t\(0))))
-- \U2|t[0]~9COUT1_53\ = CARRY(((\U2|t\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U2|t\(0),
	aclr => GND,
	ena => \U2|t[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|t\(0),
	cout0 => \U2|t[0]~9\,
	cout1 => \U2|t[0]~9COUT1_53\);

-- Location: LC_X6_Y9_N2
\U2|t[1]\ : maxv_lcell
-- Equation(s):
-- \U2|t\(1) = DFFEAS(\U2|t\(1) $ (\U2|forwreg~regout\ $ ((!\U2|t[0]~9\))), GLOBAL(\clk~combout\), VCC, , \U2|t[6]~16_combout\, , , , )
-- \U2|t[1]~7\ = CARRY((\U2|t\(1) & (\U2|forwreg~regout\ & !\U2|t[0]~9\)) # (!\U2|t\(1) & ((\U2|forwreg~regout\) # (!\U2|t[0]~9\))))
-- \U2|t[1]~7COUT1_55\ = CARRY((\U2|t\(1) & (\U2|forwreg~regout\ & !\U2|t[0]~9COUT1_53\)) # (!\U2|t\(1) & ((\U2|forwreg~regout\) # (!\U2|t[0]~9COUT1_53\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|t\(1),
	datab => \U2|forwreg~regout\,
	aclr => GND,
	ena => \U2|t[6]~16_combout\,
	cin0 => \U2|t[0]~9\,
	cin1 => \U2|t[0]~9COUT1_53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|t\(1),
	cout0 => \U2|t[1]~7\,
	cout1 => \U2|t[1]~7COUT1_55\);

-- Location: LC_X6_Y9_N3
\U2|t[2]\ : maxv_lcell
-- Equation(s):
-- \U2|t\(2) = DFFEAS(\U2|t\(2) $ (\U2|forwreg~regout\ $ ((\U2|t[1]~7\))), GLOBAL(\clk~combout\), VCC, , \U2|t[6]~16_combout\, , , , )
-- \U2|t[2]~5\ = CARRY((\U2|t\(2) & ((!\U2|t[1]~7\) # (!\U2|forwreg~regout\))) # (!\U2|t\(2) & (!\U2|forwreg~regout\ & !\U2|t[1]~7\)))
-- \U2|t[2]~5COUT1_57\ = CARRY((\U2|t\(2) & ((!\U2|t[1]~7COUT1_55\) # (!\U2|forwreg~regout\))) # (!\U2|t\(2) & (!\U2|forwreg~regout\ & !\U2|t[1]~7COUT1_55\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|t\(2),
	datab => \U2|forwreg~regout\,
	aclr => GND,
	ena => \U2|t[6]~16_combout\,
	cin0 => \U2|t[1]~7\,
	cin1 => \U2|t[1]~7COUT1_55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|t\(2),
	cout0 => \U2|t[2]~5\,
	cout1 => \U2|t[2]~5COUT1_57\);

-- Location: LC_X6_Y9_N4
\U2|t[3]\ : maxv_lcell
-- Equation(s):
-- \U2|t\(3) = DFFEAS(\U2|t\(3) $ (\U2|forwreg~regout\ $ ((!\U2|t[2]~5\))), GLOBAL(\clk~combout\), VCC, , \U2|t[6]~16_combout\, , , , )
-- \U2|t[3]~11\ = CARRY((\U2|t\(3) & (\U2|forwreg~regout\ & !\U2|t[2]~5COUT1_57\)) # (!\U2|t\(3) & ((\U2|forwreg~regout\) # (!\U2|t[2]~5COUT1_57\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|t\(3),
	datab => \U2|forwreg~regout\,
	aclr => GND,
	ena => \U2|t[6]~16_combout\,
	cin0 => \U2|t[2]~5\,
	cin1 => \U2|t[2]~5COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|t\(3),
	cout => \U2|t[3]~11\);

-- Location: LC_X6_Y9_N5
\U2|t[4]\ : maxv_lcell
-- Equation(s):
-- \U2|t\(4) = DFFEAS(\U2|t\(4) $ (\U2|forwreg~regout\ $ ((\U2|t[3]~11\))), GLOBAL(\clk~combout\), VCC, , \U2|t[6]~16_combout\, , , , )
-- \U2|t[4]~15\ = CARRY((\U2|t\(4) & ((!\U2|t[3]~11\) # (!\U2|forwreg~regout\))) # (!\U2|t\(4) & (!\U2|forwreg~regout\ & !\U2|t[3]~11\)))
-- \U2|t[4]~15COUT1_59\ = CARRY((\U2|t\(4) & ((!\U2|t[3]~11\) # (!\U2|forwreg~regout\))) # (!\U2|t\(4) & (!\U2|forwreg~regout\ & !\U2|t[3]~11\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|t\(4),
	datab => \U2|forwreg~regout\,
	aclr => GND,
	ena => \U2|t[6]~16_combout\,
	cin => \U2|t[3]~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|t\(4),
	cout0 => \U2|t[4]~15\,
	cout1 => \U2|t[4]~15COUT1_59\);

-- Location: LC_X6_Y9_N6
\U2|t[5]\ : maxv_lcell
-- Equation(s):
-- \U2|t\(5) = DFFEAS(\U2|t\(5) $ (\U2|forwreg~regout\ $ ((!(!\U2|t[3]~11\ & \U2|t[4]~15\) # (\U2|t[3]~11\ & \U2|t[4]~15COUT1_59\)))), GLOBAL(\clk~combout\), VCC, , \U2|t[6]~16_combout\, , , , )
-- \U2|t[5]~13\ = CARRY((\U2|t\(5) & (\U2|forwreg~regout\ & !\U2|t[4]~15\)) # (!\U2|t\(5) & ((\U2|forwreg~regout\) # (!\U2|t[4]~15\))))
-- \U2|t[5]~13COUT1_61\ = CARRY((\U2|t\(5) & (\U2|forwreg~regout\ & !\U2|t[4]~15COUT1_59\)) # (!\U2|t\(5) & ((\U2|forwreg~regout\) # (!\U2|t[4]~15COUT1_59\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|t\(5),
	datab => \U2|forwreg~regout\,
	aclr => GND,
	ena => \U2|t[6]~16_combout\,
	cin => \U2|t[3]~11\,
	cin0 => \U2|t[4]~15\,
	cin1 => \U2|t[4]~15COUT1_59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|t\(5),
	cout0 => \U2|t[5]~13\,
	cout1 => \U2|t[5]~13COUT1_61\);

-- Location: LC_X6_Y9_N7
\U2|t[6]\ : maxv_lcell
-- Equation(s):
-- \U2|t\(6) = DFFEAS(\U2|t\(6) $ (\U2|forwreg~regout\ $ (((!\U2|t[3]~11\ & \U2|t[5]~13\) # (\U2|t[3]~11\ & \U2|t[5]~13COUT1_61\)))), GLOBAL(\clk~combout\), VCC, , \U2|t[6]~16_combout\, , , , )
-- \U2|t[6]~1\ = CARRY((\U2|t\(6) & ((!\U2|t[5]~13\) # (!\U2|forwreg~regout\))) # (!\U2|t\(6) & (!\U2|forwreg~regout\ & !\U2|t[5]~13\)))
-- \U2|t[6]~1COUT1_63\ = CARRY((\U2|t\(6) & ((!\U2|t[5]~13COUT1_61\) # (!\U2|forwreg~regout\))) # (!\U2|t\(6) & (!\U2|forwreg~regout\ & !\U2|t[5]~13COUT1_61\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|t\(6),
	datab => \U2|forwreg~regout\,
	aclr => GND,
	ena => \U2|t[6]~16_combout\,
	cin => \U2|t[3]~11\,
	cin0 => \U2|t[5]~13\,
	cin1 => \U2|t[5]~13COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|t\(6),
	cout0 => \U2|t[6]~1\,
	cout1 => \U2|t[6]~1COUT1_63\);

-- Location: LC_X6_Y9_N8
\U2|t[7]\ : maxv_lcell
-- Equation(s):
-- \U2|t\(7) = DFFEAS(\U2|t\(7) $ (\U2|forwreg~regout\ $ ((!(!\U2|t[3]~11\ & \U2|t[6]~1\) # (\U2|t[3]~11\ & \U2|t[6]~1COUT1_63\)))), GLOBAL(\clk~combout\), VCC, , \U2|t[6]~16_combout\, , , , )
-- \U2|t[7]~3\ = CARRY((\U2|t\(7) & (\U2|forwreg~regout\ & !\U2|t[6]~1\)) # (!\U2|t\(7) & ((\U2|forwreg~regout\) # (!\U2|t[6]~1\))))
-- \U2|t[7]~3COUT1_65\ = CARRY((\U2|t\(7) & (\U2|forwreg~regout\ & !\U2|t[6]~1COUT1_63\)) # (!\U2|t\(7) & ((\U2|forwreg~regout\) # (!\U2|t[6]~1COUT1_63\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|t\(7),
	datab => \U2|forwreg~regout\,
	aclr => GND,
	ena => \U2|t[6]~16_combout\,
	cin => \U2|t[3]~11\,
	cin0 => \U2|t[6]~1\,
	cin1 => \U2|t[6]~1COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|t\(7),
	cout0 => \U2|t[7]~3\,
	cout1 => \U2|t[7]~3COUT1_65\);

-- Location: LC_X6_Y9_N9
\U2|t[8]\ : maxv_lcell
-- Equation(s):
-- \U2|t\(8) = DFFEAS(\U2|t\(8) $ (\U2|forwreg~regout\ $ (((!\U2|t[3]~11\ & \U2|t[7]~3\) # (\U2|t[3]~11\ & \U2|t[7]~3COUT1_65\)))), GLOBAL(\clk~combout\), VCC, , \U2|t[6]~16_combout\, , , , )
-- \U2|t[8]~36\ = CARRY((\U2|t\(8) & ((!\U2|t[7]~3COUT1_65\) # (!\U2|forwreg~regout\))) # (!\U2|t\(8) & (!\U2|forwreg~regout\ & !\U2|t[7]~3COUT1_65\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|t\(8),
	datab => \U2|forwreg~regout\,
	aclr => GND,
	ena => \U2|t[6]~16_combout\,
	cin => \U2|t[3]~11\,
	cin0 => \U2|t[7]~3\,
	cin1 => \U2|t[7]~3COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|t\(8),
	cout => \U2|t[8]~36\);

-- Location: LC_X7_Y9_N0
\U2|t[9]\ : maxv_lcell
-- Equation(s):
-- \U2|t\(9) = DFFEAS(\U2|t\(9) $ (\U2|forwreg~regout\ $ ((!\U2|t[8]~36\))), GLOBAL(\clk~combout\), VCC, , \U2|t[6]~16_combout\, , , , )
-- \U2|t[9]~34\ = CARRY((\U2|t\(9) & (\U2|forwreg~regout\ & !\U2|t[8]~36\)) # (!\U2|t\(9) & ((\U2|forwreg~regout\) # (!\U2|t[8]~36\))))
-- \U2|t[9]~34COUT1_67\ = CARRY((\U2|t\(9) & (\U2|forwreg~regout\ & !\U2|t[8]~36\)) # (!\U2|t\(9) & ((\U2|forwreg~regout\) # (!\U2|t[8]~36\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|t\(9),
	datab => \U2|forwreg~regout\,
	aclr => GND,
	ena => \U2|t[6]~16_combout\,
	cin => \U2|t[8]~36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|t\(9),
	cout0 => \U2|t[9]~34\,
	cout1 => \U2|t[9]~34COUT1_67\);

-- Location: LC_X7_Y9_N1
\U2|t[10]\ : maxv_lcell
-- Equation(s):
-- \U2|t\(10) = DFFEAS(\U2|forwreg~regout\ $ (\U2|t\(10) $ (((!\U2|t[8]~36\ & \U2|t[9]~34\) # (\U2|t[8]~36\ & \U2|t[9]~34COUT1_67\)))), GLOBAL(\clk~combout\), VCC, , \U2|t[6]~16_combout\, , , , )
-- \U2|t[10]~32\ = CARRY((\U2|forwreg~regout\ & (\U2|t\(10) & !\U2|t[9]~34\)) # (!\U2|forwreg~regout\ & ((\U2|t\(10)) # (!\U2|t[9]~34\))))
-- \U2|t[10]~32COUT1_69\ = CARRY((\U2|forwreg~regout\ & (\U2|t\(10) & !\U2|t[9]~34COUT1_67\)) # (!\U2|forwreg~regout\ & ((\U2|t\(10)) # (!\U2|t[9]~34COUT1_67\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|forwreg~regout\,
	datab => \U2|t\(10),
	aclr => GND,
	ena => \U2|t[6]~16_combout\,
	cin => \U2|t[8]~36\,
	cin0 => \U2|t[9]~34\,
	cin1 => \U2|t[9]~34COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|t\(10),
	cout0 => \U2|t[10]~32\,
	cout1 => \U2|t[10]~32COUT1_69\);

-- Location: LC_X7_Y9_N2
\U2|t[11]\ : maxv_lcell
-- Equation(s):
-- \U2|t\(11) = DFFEAS(\U2|t\(11) $ (\U2|forwreg~regout\ $ ((!(!\U2|t[8]~36\ & \U2|t[10]~32\) # (\U2|t[8]~36\ & \U2|t[10]~32COUT1_69\)))), GLOBAL(\clk~combout\), VCC, , \U2|t[6]~16_combout\, , , , )
-- \U2|t[11]~30\ = CARRY((\U2|t\(11) & (\U2|forwreg~regout\ & !\U2|t[10]~32\)) # (!\U2|t\(11) & ((\U2|forwreg~regout\) # (!\U2|t[10]~32\))))
-- \U2|t[11]~30COUT1_71\ = CARRY((\U2|t\(11) & (\U2|forwreg~regout\ & !\U2|t[10]~32COUT1_69\)) # (!\U2|t\(11) & ((\U2|forwreg~regout\) # (!\U2|t[10]~32COUT1_69\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|t\(11),
	datab => \U2|forwreg~regout\,
	aclr => GND,
	ena => \U2|t[6]~16_combout\,
	cin => \U2|t[8]~36\,
	cin0 => \U2|t[10]~32\,
	cin1 => \U2|t[10]~32COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|t\(11),
	cout0 => \U2|t[11]~30\,
	cout1 => \U2|t[11]~30COUT1_71\);

-- Location: LC_X7_Y9_N3
\U2|t[12]\ : maxv_lcell
-- Equation(s):
-- \U2|t\(12) = DFFEAS(\U2|t\(12) $ (\U2|forwreg~regout\ $ (((!\U2|t[8]~36\ & \U2|t[11]~30\) # (\U2|t[8]~36\ & \U2|t[11]~30COUT1_71\)))), GLOBAL(\clk~combout\), VCC, , \U2|t[6]~16_combout\, , , , )
-- \U2|t[12]~22\ = CARRY((\U2|t\(12) & ((!\U2|t[11]~30\) # (!\U2|forwreg~regout\))) # (!\U2|t\(12) & (!\U2|forwreg~regout\ & !\U2|t[11]~30\)))
-- \U2|t[12]~22COUT1_73\ = CARRY((\U2|t\(12) & ((!\U2|t[11]~30COUT1_71\) # (!\U2|forwreg~regout\))) # (!\U2|t\(12) & (!\U2|forwreg~regout\ & !\U2|t[11]~30COUT1_71\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|t\(12),
	datab => \U2|forwreg~regout\,
	aclr => GND,
	ena => \U2|t[6]~16_combout\,
	cin => \U2|t[8]~36\,
	cin0 => \U2|t[11]~30\,
	cin1 => \U2|t[11]~30COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|t\(12),
	cout0 => \U2|t[12]~22\,
	cout1 => \U2|t[12]~22COUT1_73\);

-- Location: LC_X7_Y9_N4
\U2|t[13]\ : maxv_lcell
-- Equation(s):
-- \U2|t\(13) = DFFEAS(\U2|t\(13) $ (\U2|forwreg~regout\ $ ((!(!\U2|t[8]~36\ & \U2|t[12]~22\) # (\U2|t[8]~36\ & \U2|t[12]~22COUT1_73\)))), GLOBAL(\clk~combout\), VCC, , \U2|t[6]~16_combout\, , , , )
-- \U2|t[13]~24\ = CARRY((\U2|t\(13) & (\U2|forwreg~regout\ & !\U2|t[12]~22COUT1_73\)) # (!\U2|t\(13) & ((\U2|forwreg~regout\) # (!\U2|t[12]~22COUT1_73\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|t\(13),
	datab => \U2|forwreg~regout\,
	aclr => GND,
	ena => \U2|t[6]~16_combout\,
	cin => \U2|t[8]~36\,
	cin0 => \U2|t[12]~22\,
	cin1 => \U2|t[12]~22COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|t\(13),
	cout => \U2|t[13]~24\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\position[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_position(8),
	combout => \position~combout\(8));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\position[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_position(3),
	combout => \position~combout\(3));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\position[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_position(2),
	combout => \position~combout\(2));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\position[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_position(1),
	combout => \position~combout\(1));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\position[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_position(0),
	combout => \position~combout\(0));

-- Location: LC_X6_Y4_N1
\U1|LessThan6~87\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan6~87_cout0\ = CARRY((!\position~combout\(0) & (\U2|t\(0))))
-- \U1|LessThan6~87COUT1_106\ = CARRY((!\position~combout\(0) & (\U2|t\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position~combout\(0),
	datab => \U2|t\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan6~85\,
	cout0 => \U1|LessThan6~87_cout0\,
	cout1 => \U1|LessThan6~87COUT1_106\);

-- Location: LC_X6_Y4_N2
\U1|LessThan6~82\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan6~82_cout0\ = CARRY((\U2|t\(1) & (\position~combout\(1) & !\U1|LessThan6~87_cout0\)) # (!\U2|t\(1) & ((\position~combout\(1)) # (!\U1|LessThan6~87_cout0\))))
-- \U1|LessThan6~82COUT1_108\ = CARRY((\U2|t\(1) & (\position~combout\(1) & !\U1|LessThan6~87COUT1_106\)) # (!\U2|t\(1) & ((\position~combout\(1)) # (!\U1|LessThan6~87COUT1_106\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(1),
	datab => \position~combout\(1),
	cin0 => \U1|LessThan6~87_cout0\,
	cin1 => \U1|LessThan6~87COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan6~80\,
	cout0 => \U1|LessThan6~82_cout0\,
	cout1 => \U1|LessThan6~82COUT1_108\);

-- Location: LC_X6_Y4_N3
\U1|LessThan6~77\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan6~77_cout0\ = CARRY((\position~combout\(2) & (\U2|t\(2) & !\U1|LessThan6~82_cout0\)) # (!\position~combout\(2) & ((\U2|t\(2)) # (!\U1|LessThan6~82_cout0\))))
-- \U1|LessThan6~77COUT1_110\ = CARRY((\position~combout\(2) & (\U2|t\(2) & !\U1|LessThan6~82COUT1_108\)) # (!\position~combout\(2) & ((\U2|t\(2)) # (!\U1|LessThan6~82COUT1_108\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position~combout\(2),
	datab => \U2|t\(2),
	cin0 => \U1|LessThan6~82_cout0\,
	cin1 => \U1|LessThan6~82COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan6~75\,
	cout0 => \U1|LessThan6~77_cout0\,
	cout1 => \U1|LessThan6~77COUT1_110\);

-- Location: LC_X6_Y4_N4
\U1|LessThan6~72\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan6~72_cout\ = CARRY((\position~combout\(3) & ((!\U1|LessThan6~77COUT1_110\) # (!\U2|t\(3)))) # (!\position~combout\(3) & (!\U2|t\(3) & !\U1|LessThan6~77COUT1_110\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position~combout\(3),
	datab => \U2|t\(3),
	cin0 => \U1|LessThan6~77_cout0\,
	cin1 => \U1|LessThan6~77COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan6~70\,
	cout => \U1|LessThan6~72_cout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\position[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_position(7),
	combout => \position~combout\(7));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\position[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_position(6),
	combout => \position~combout\(6));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\position[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_position(5),
	combout => \position~combout\(5));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\position[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_position(4),
	combout => \position~combout\(4));

-- Location: LC_X6_Y4_N5
\U1|LessThan6~67\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan6~67_cout0\ = CARRY((\U2|t\(4) & ((!\U1|LessThan6~72_cout\) # (!\position~combout\(4)))) # (!\U2|t\(4) & (!\position~combout\(4) & !\U1|LessThan6~72_cout\)))
-- \U1|LessThan6~67COUT1_112\ = CARRY((\U2|t\(4) & ((!\U1|LessThan6~72_cout\) # (!\position~combout\(4)))) # (!\U2|t\(4) & (!\position~combout\(4) & !\U1|LessThan6~72_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(4),
	datab => \position~combout\(4),
	cin => \U1|LessThan6~72_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan6~65\,
	cout0 => \U1|LessThan6~67_cout0\,
	cout1 => \U1|LessThan6~67COUT1_112\);

-- Location: LC_X6_Y4_N6
\U1|LessThan6~62\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan6~62_cout0\ = CARRY((\position~combout\(5) & ((!\U1|LessThan6~67_cout0\) # (!\U2|t\(5)))) # (!\position~combout\(5) & (!\U2|t\(5) & !\U1|LessThan6~67_cout0\)))
-- \U1|LessThan6~62COUT1_114\ = CARRY((\position~combout\(5) & ((!\U1|LessThan6~67COUT1_112\) # (!\U2|t\(5)))) # (!\position~combout\(5) & (!\U2|t\(5) & !\U1|LessThan6~67COUT1_112\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position~combout\(5),
	datab => \U2|t\(5),
	cin => \U1|LessThan6~72_cout\,
	cin0 => \U1|LessThan6~67_cout0\,
	cin1 => \U1|LessThan6~67COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan6~60\,
	cout0 => \U1|LessThan6~62_cout0\,
	cout1 => \U1|LessThan6~62COUT1_114\);

-- Location: LC_X6_Y4_N7
\U1|LessThan6~57\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan6~57_cout0\ = CARRY((\U2|t\(6) & ((!\U1|LessThan6~62_cout0\) # (!\position~combout\(6)))) # (!\U2|t\(6) & (!\position~combout\(6) & !\U1|LessThan6~62_cout0\)))
-- \U1|LessThan6~57COUT1_116\ = CARRY((\U2|t\(6) & ((!\U1|LessThan6~62COUT1_114\) # (!\position~combout\(6)))) # (!\U2|t\(6) & (!\position~combout\(6) & !\U1|LessThan6~62COUT1_114\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(6),
	datab => \position~combout\(6),
	cin => \U1|LessThan6~72_cout\,
	cin0 => \U1|LessThan6~62_cout0\,
	cin1 => \U1|LessThan6~62COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan6~55\,
	cout0 => \U1|LessThan6~57_cout0\,
	cout1 => \U1|LessThan6~57COUT1_116\);

-- Location: LC_X6_Y4_N8
\U1|LessThan6~52\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan6~52_cout0\ = CARRY((\position~combout\(7) & ((!\U1|LessThan6~57_cout0\) # (!\U2|t\(7)))) # (!\position~combout\(7) & (!\U2|t\(7) & !\U1|LessThan6~57_cout0\)))
-- \U1|LessThan6~52COUT1_118\ = CARRY((\position~combout\(7) & ((!\U1|LessThan6~57COUT1_116\) # (!\U2|t\(7)))) # (!\position~combout\(7) & (!\U2|t\(7) & !\U1|LessThan6~57COUT1_116\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position~combout\(7),
	datab => \U2|t\(7),
	cin => \U1|LessThan6~72_cout\,
	cin0 => \U1|LessThan6~57_cout0\,
	cin1 => \U1|LessThan6~57COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan6~50\,
	cout0 => \U1|LessThan6~52_cout0\,
	cout1 => \U1|LessThan6~52COUT1_118\);

-- Location: LC_X6_Y4_N9
\U1|LessThan6~47\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan6~47_cout\ = CARRY((\U2|t\(8) & ((!\U1|LessThan6~52COUT1_118\) # (!\position~combout\(8)))) # (!\U2|t\(8) & (!\position~combout\(8) & !\U1|LessThan6~52COUT1_118\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(8),
	datab => \position~combout\(8),
	cin => \U1|LessThan6~72_cout\,
	cin0 => \U1|LessThan6~52_cout0\,
	cin1 => \U1|LessThan6~52COUT1_118\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan6~45\,
	cout => \U1|LessThan6~47_cout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\position[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_position(12),
	combout => \position~combout\(12));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\position[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_position(11),
	combout => \position~combout\(11));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\position[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_position(10),
	combout => \position~combout\(10));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\position[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_position(9),
	combout => \position~combout\(9));

-- Location: LC_X7_Y4_N0
\U1|LessThan6~42\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan6~42_cout0\ = CARRY((\U2|t\(9) & (\position~combout\(9) & !\U1|LessThan6~47_cout\)) # (!\U2|t\(9) & ((\position~combout\(9)) # (!\U1|LessThan6~47_cout\))))
-- \U1|LessThan6~42COUT1_120\ = CARRY((\U2|t\(9) & (\position~combout\(9) & !\U1|LessThan6~47_cout\)) # (!\U2|t\(9) & ((\position~combout\(9)) # (!\U1|LessThan6~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(9),
	datab => \position~combout\(9),
	cin => \U1|LessThan6~47_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan6~40\,
	cout0 => \U1|LessThan6~42_cout0\,
	cout1 => \U1|LessThan6~42COUT1_120\);

-- Location: LC_X7_Y4_N1
\U1|LessThan6~37\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan6~37_cout0\ = CARRY((\U2|t\(10) & ((!\U1|LessThan6~42_cout0\) # (!\position~combout\(10)))) # (!\U2|t\(10) & (!\position~combout\(10) & !\U1|LessThan6~42_cout0\)))
-- \U1|LessThan6~37COUT1_122\ = CARRY((\U2|t\(10) & ((!\U1|LessThan6~42COUT1_120\) # (!\position~combout\(10)))) # (!\U2|t\(10) & (!\position~combout\(10) & !\U1|LessThan6~42COUT1_120\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(10),
	datab => \position~combout\(10),
	cin => \U1|LessThan6~47_cout\,
	cin0 => \U1|LessThan6~42_cout0\,
	cin1 => \U1|LessThan6~42COUT1_120\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan6~35\,
	cout0 => \U1|LessThan6~37_cout0\,
	cout1 => \U1|LessThan6~37COUT1_122\);

-- Location: LC_X7_Y4_N2
\U1|LessThan6~32\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan6~32_cout0\ = CARRY((\U2|t\(11) & (\position~combout\(11) & !\U1|LessThan6~37_cout0\)) # (!\U2|t\(11) & ((\position~combout\(11)) # (!\U1|LessThan6~37_cout0\))))
-- \U1|LessThan6~32COUT1_124\ = CARRY((\U2|t\(11) & (\position~combout\(11) & !\U1|LessThan6~37COUT1_122\)) # (!\U2|t\(11) & ((\position~combout\(11)) # (!\U1|LessThan6~37COUT1_122\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(11),
	datab => \position~combout\(11),
	cin => \U1|LessThan6~47_cout\,
	cin0 => \U1|LessThan6~37_cout0\,
	cin1 => \U1|LessThan6~37COUT1_122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan6~30\,
	cout0 => \U1|LessThan6~32_cout0\,
	cout1 => \U1|LessThan6~32COUT1_124\);

-- Location: LC_X7_Y4_N3
\U1|LessThan6~27\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan6~27_cout0\ = CARRY((\U2|t\(12) & ((!\U1|LessThan6~32_cout0\) # (!\position~combout\(12)))) # (!\U2|t\(12) & (!\position~combout\(12) & !\U1|LessThan6~32_cout0\)))
-- \U1|LessThan6~27COUT1_126\ = CARRY((\U2|t\(12) & ((!\U1|LessThan6~32COUT1_124\) # (!\position~combout\(12)))) # (!\U2|t\(12) & (!\position~combout\(12) & !\U1|LessThan6~32COUT1_124\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(12),
	datab => \position~combout\(12),
	cin => \U1|LessThan6~47_cout\,
	cin0 => \U1|LessThan6~32_cout0\,
	cin1 => \U1|LessThan6~32COUT1_124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan6~25\,
	cout0 => \U1|LessThan6~27_cout0\,
	cout1 => \U1|LessThan6~27COUT1_126\);

-- Location: LC_X7_Y4_N4
\U1|LessThan6~22\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan6~22_cout\ = CARRY((\position~combout\(13) & ((!\U1|LessThan6~27COUT1_126\) # (!\U2|t\(13)))) # (!\position~combout\(13) & (!\U2|t\(13) & !\U1|LessThan6~27COUT1_126\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position~combout\(13),
	datab => \U2|t\(13),
	cin => \U1|LessThan6~47_cout\,
	cin0 => \U1|LessThan6~27_cout0\,
	cin1 => \U1|LessThan6~27COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan6~20\,
	cout => \U1|LessThan6~22_cout\);

-- Location: LC_X7_Y9_N5
\U2|t[14]\ : maxv_lcell
-- Equation(s):
-- \U2|t\(14) = DFFEAS(\U2|t\(14) $ (\U2|forwreg~regout\ $ ((\U2|t[13]~24\))), GLOBAL(\clk~combout\), VCC, , \U2|t[6]~16_combout\, , , , )
-- \U2|t[14]~26\ = CARRY((\U2|t\(14) & ((!\U2|t[13]~24\) # (!\U2|forwreg~regout\))) # (!\U2|t\(14) & (!\U2|forwreg~regout\ & !\U2|t[13]~24\)))
-- \U2|t[14]~26COUT1_75\ = CARRY((\U2|t\(14) & ((!\U2|t[13]~24\) # (!\U2|forwreg~regout\))) # (!\U2|t\(14) & (!\U2|forwreg~regout\ & !\U2|t[13]~24\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|t\(14),
	datab => \U2|forwreg~regout\,
	aclr => GND,
	ena => \U2|t[6]~16_combout\,
	cin => \U2|t[13]~24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|t\(14),
	cout0 => \U2|t[14]~26\,
	cout1 => \U2|t[14]~26COUT1_75\);

-- Location: LC_X7_Y9_N6
\U2|t[15]\ : maxv_lcell
-- Equation(s):
-- \U2|t\(15) = DFFEAS(\U2|t\(15) $ (\U2|forwreg~regout\ $ ((!(!\U2|t[13]~24\ & \U2|t[14]~26\) # (\U2|t[13]~24\ & \U2|t[14]~26COUT1_75\)))), GLOBAL(\clk~combout\), VCC, , \U2|t[6]~16_combout\, , , , )
-- \U2|t[15]~28\ = CARRY((\U2|t\(15) & (\U2|forwreg~regout\ & !\U2|t[14]~26\)) # (!\U2|t\(15) & ((\U2|forwreg~regout\) # (!\U2|t[14]~26\))))
-- \U2|t[15]~28COUT1_77\ = CARRY((\U2|t\(15) & (\U2|forwreg~regout\ & !\U2|t[14]~26COUT1_75\)) # (!\U2|t\(15) & ((\U2|forwreg~regout\) # (!\U2|t[14]~26COUT1_75\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|t\(15),
	datab => \U2|forwreg~regout\,
	aclr => GND,
	ena => \U2|t[6]~16_combout\,
	cin => \U2|t[13]~24\,
	cin0 => \U2|t[14]~26\,
	cin1 => \U2|t[14]~26COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|t\(15),
	cout0 => \U2|t[15]~28\,
	cout1 => \U2|t[15]~28COUT1_77\);

-- Location: LC_X7_Y9_N7
\U2|t[16]\ : maxv_lcell
-- Equation(s):
-- \U2|t\(16) = DFFEAS(\U2|t\(16) $ (\U2|forwreg~regout\ $ (((!\U2|t[13]~24\ & \U2|t[15]~28\) # (\U2|t[13]~24\ & \U2|t[15]~28COUT1_77\)))), GLOBAL(\clk~combout\), VCC, , \U2|t[6]~16_combout\, , , , )
-- \U2|t[16]~20\ = CARRY((\U2|t\(16) & ((!\U2|t[15]~28\) # (!\U2|forwreg~regout\))) # (!\U2|t\(16) & (!\U2|forwreg~regout\ & !\U2|t[15]~28\)))
-- \U2|t[16]~20COUT1_79\ = CARRY((\U2|t\(16) & ((!\U2|t[15]~28COUT1_77\) # (!\U2|forwreg~regout\))) # (!\U2|t\(16) & (!\U2|forwreg~regout\ & !\U2|t[15]~28COUT1_77\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|t\(16),
	datab => \U2|forwreg~regout\,
	aclr => GND,
	ena => \U2|t[6]~16_combout\,
	cin => \U2|t[13]~24\,
	cin0 => \U2|t[15]~28\,
	cin1 => \U2|t[15]~28COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|t\(16),
	cout0 => \U2|t[16]~20\,
	cout1 => \U2|t[16]~20COUT1_79\);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\position[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_position(16),
	combout => \position~combout\(16));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\position[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_position(15),
	combout => \position~combout\(15));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\position[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_position(14),
	combout => \position~combout\(14));

-- Location: LC_X7_Y4_N5
\U1|LessThan6~17\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan6~17_cout0\ = CARRY((\position~combout\(14) & (\U2|t\(14) & !\U1|LessThan6~22_cout\)) # (!\position~combout\(14) & ((\U2|t\(14)) # (!\U1|LessThan6~22_cout\))))
-- \U1|LessThan6~17COUT1_128\ = CARRY((\position~combout\(14) & (\U2|t\(14) & !\U1|LessThan6~22_cout\)) # (!\position~combout\(14) & ((\U2|t\(14)) # (!\U1|LessThan6~22_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position~combout\(14),
	datab => \U2|t\(14),
	cin => \U1|LessThan6~22_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan6~15\,
	cout0 => \U1|LessThan6~17_cout0\,
	cout1 => \U1|LessThan6~17COUT1_128\);

-- Location: LC_X7_Y4_N6
\U1|LessThan6~12\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan6~12_cout0\ = CARRY((\position~combout\(15) & ((!\U1|LessThan6~17_cout0\) # (!\U2|t\(15)))) # (!\position~combout\(15) & (!\U2|t\(15) & !\U1|LessThan6~17_cout0\)))
-- \U1|LessThan6~12COUT1_130\ = CARRY((\position~combout\(15) & ((!\U1|LessThan6~17COUT1_128\) # (!\U2|t\(15)))) # (!\position~combout\(15) & (!\U2|t\(15) & !\U1|LessThan6~17COUT1_128\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position~combout\(15),
	datab => \U2|t\(15),
	cin => \U1|LessThan6~22_cout\,
	cin0 => \U1|LessThan6~17_cout0\,
	cin1 => \U1|LessThan6~17COUT1_128\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan6~10\,
	cout0 => \U1|LessThan6~12_cout0\,
	cout1 => \U1|LessThan6~12COUT1_130\);

-- Location: LC_X7_Y4_N7
\U1|LessThan6~7\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan6~7_cout0\ = CARRY((\U2|t\(16) & ((!\U1|LessThan6~12_cout0\) # (!\position~combout\(16)))) # (!\U2|t\(16) & (!\position~combout\(16) & !\U1|LessThan6~12_cout0\)))
-- \U1|LessThan6~7COUT1_132\ = CARRY((\U2|t\(16) & ((!\U1|LessThan6~12COUT1_130\) # (!\position~combout\(16)))) # (!\U2|t\(16) & (!\position~combout\(16) & !\U1|LessThan6~12COUT1_130\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(16),
	datab => \position~combout\(16),
	cin => \U1|LessThan6~22_cout\,
	cin0 => \U1|LessThan6~12_cout0\,
	cin1 => \U1|LessThan6~12COUT1_130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan6~5\,
	cout0 => \U1|LessThan6~7_cout0\,
	cout1 => \U1|LessThan6~7COUT1_132\);

-- Location: LC_X7_Y4_N8
\U1|vireg[8]\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan6~0\ = (\position~combout\(17) & ((((!\U1|LessThan6~22_cout\ & \U1|LessThan6~7_cout0\) # (\U1|LessThan6~22_cout\ & \U1|LessThan6~7COUT1_132\) & \U2|t\(17))))) # (!\position~combout\(17) & ((((!\U1|LessThan6~22_cout\ & \U1|LessThan6~7_cout0\) # 
-- (\U1|LessThan6~22_cout\ & \U1|LessThan6~7COUT1_132\)) # (\U2|t\(17)))))
-- \U1|vireg\(8) = DFFEAS(\U1|LessThan6~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f550",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \position~combout\(17),
	datad => \U2|t\(17),
	aclr => GND,
	cin => \U1|LessThan6~22_cout\,
	cin0 => \U1|LessThan6~7_cout0\,
	cin1 => \U1|LessThan6~7COUT1_132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan6~0\,
	regout => \U1|vireg\(8));

-- Location: LC_X8_Y4_N1
\U1|Add3~98\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~98_combout\ = \position~combout\(0) $ ((\U2|t\(0)))
-- \U1|Add3~100\ = CARRY((\position~combout\(0)) # ((!\U2|t\(0))))
-- \U1|Add3~100COUT1_119\ = CARRY((\position~combout\(0)) # ((!\U2|t\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66bb",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position~combout\(0),
	datab => \U2|t\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~98_combout\,
	cout0 => \U1|Add3~100\,
	cout1 => \U1|Add3~100COUT1_119\);

-- Location: LC_X8_Y4_N2
\U1|Add3~92\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~92_combout\ = \position~combout\(1) $ (\U2|t\(1) $ ((!\U1|Add3~100\)))
-- \U1|Add3~94\ = CARRY((\position~combout\(1) & (\U2|t\(1) & !\U1|Add3~100\)) # (!\position~combout\(1) & ((\U2|t\(1)) # (!\U1|Add3~100\))))
-- \U1|Add3~94COUT1_121\ = CARRY((\position~combout\(1) & (\U2|t\(1) & !\U1|Add3~100COUT1_119\)) # (!\position~combout\(1) & ((\U2|t\(1)) # (!\U1|Add3~100COUT1_119\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position~combout\(1),
	datab => \U2|t\(1),
	cin0 => \U1|Add3~100\,
	cin1 => \U1|Add3~100COUT1_119\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~92_combout\,
	cout0 => \U1|Add3~94\,
	cout1 => \U1|Add3~94COUT1_121\);

-- Location: LC_X8_Y4_N3
\U1|Add3~84\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~84_combout\ = \position~combout\(2) $ (\U2|t\(2) $ ((\U1|Add3~94\)))
-- \U1|Add3~86\ = CARRY((\position~combout\(2) & ((!\U1|Add3~94\) # (!\U2|t\(2)))) # (!\position~combout\(2) & (!\U2|t\(2) & !\U1|Add3~94\)))
-- \U1|Add3~86COUT1_123\ = CARRY((\position~combout\(2) & ((!\U1|Add3~94COUT1_121\) # (!\U2|t\(2)))) # (!\position~combout\(2) & (!\U2|t\(2) & !\U1|Add3~94COUT1_121\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position~combout\(2),
	datab => \U2|t\(2),
	cin0 => \U1|Add3~94\,
	cin1 => \U1|Add3~94COUT1_121\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~84_combout\,
	cout0 => \U1|Add3~86\,
	cout1 => \U1|Add3~86COUT1_123\);

-- Location: LC_X8_Y4_N4
\U1|Add3~79\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~79_combout\ = \U2|t\(3) $ (\position~combout\(3) $ ((!\U1|Add3~86\)))
-- \U1|Add3~81\ = CARRY((\U2|t\(3) & ((!\U1|Add3~86COUT1_123\) # (!\position~combout\(3)))) # (!\U2|t\(3) & (!\position~combout\(3) & !\U1|Add3~86COUT1_123\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(3),
	datab => \position~combout\(3),
	cin0 => \U1|Add3~86\,
	cin1 => \U1|Add3~86COUT1_123\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~79_combout\,
	cout => \U1|Add3~81\);

-- Location: LC_X8_Y4_N5
\U1|Add3~73\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~73_combout\ = \U2|t\(4) $ (\position~combout\(4) $ ((\U1|Add3~81\)))
-- \U1|Add3~75\ = CARRY((\U2|t\(4) & (\position~combout\(4) & !\U1|Add3~81\)) # (!\U2|t\(4) & ((\position~combout\(4)) # (!\U1|Add3~81\))))
-- \U1|Add3~75COUT1_125\ = CARRY((\U2|t\(4) & (\position~combout\(4) & !\U1|Add3~81\)) # (!\U2|t\(4) & ((\position~combout\(4)) # (!\U1|Add3~81\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(4),
	datab => \position~combout\(4),
	cin => \U1|Add3~81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~73_combout\,
	cout0 => \U1|Add3~75\,
	cout1 => \U1|Add3~75COUT1_125\);

-- Location: LC_X8_Y4_N6
\U1|Add3~68\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~68_combout\ = \position~combout\(5) $ (\U2|t\(5) $ ((!(!\U1|Add3~81\ & \U1|Add3~75\) # (\U1|Add3~81\ & \U1|Add3~75COUT1_125\))))
-- \U1|Add3~70\ = CARRY((\position~combout\(5) & (\U2|t\(5) & !\U1|Add3~75\)) # (!\position~combout\(5) & ((\U2|t\(5)) # (!\U1|Add3~75\))))
-- \U1|Add3~70COUT1_127\ = CARRY((\position~combout\(5) & (\U2|t\(5) & !\U1|Add3~75COUT1_125\)) # (!\position~combout\(5) & ((\U2|t\(5)) # (!\U1|Add3~75COUT1_125\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position~combout\(5),
	datab => \U2|t\(5),
	cin => \U1|Add3~81\,
	cin0 => \U1|Add3~75\,
	cin1 => \U1|Add3~75COUT1_125\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~68_combout\,
	cout0 => \U1|Add3~70\,
	cout1 => \U1|Add3~70COUT1_127\);

-- Location: LC_X8_Y4_N7
\U1|Add3~61\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~61_combout\ = \U2|t\(6) $ (\position~combout\(6) $ (((!\U1|Add3~81\ & \U1|Add3~70\) # (\U1|Add3~81\ & \U1|Add3~70COUT1_127\))))
-- \U1|Add3~63\ = CARRY((\U2|t\(6) & (\position~combout\(6) & !\U1|Add3~70\)) # (!\U2|t\(6) & ((\position~combout\(6)) # (!\U1|Add3~70\))))
-- \U1|Add3~63COUT1_129\ = CARRY((\U2|t\(6) & (\position~combout\(6) & !\U1|Add3~70COUT1_127\)) # (!\U2|t\(6) & ((\position~combout\(6)) # (!\U1|Add3~70COUT1_127\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(6),
	datab => \position~combout\(6),
	cin => \U1|Add3~81\,
	cin0 => \U1|Add3~70\,
	cin1 => \U1|Add3~70COUT1_127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~61_combout\,
	cout0 => \U1|Add3~63\,
	cout1 => \U1|Add3~63COUT1_129\);

-- Location: LC_X8_Y5_N1
\U1|Add4~85\ : maxv_lcell
-- Equation(s):
-- \U1|Add4~85_combout\ = \U2|t\(0) $ ((\position~combout\(0)))
-- \U1|Add4~87\ = CARRY((\U2|t\(0)) # ((!\position~combout\(0))))
-- \U1|Add4~87COUT1_106\ = CARRY((\U2|t\(0)) # ((!\position~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66bb",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(0),
	datab => \position~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add4~85_combout\,
	cout0 => \U1|Add4~87\,
	cout1 => \U1|Add4~87COUT1_106\);

-- Location: LC_X8_Y5_N2
\U1|Add4~80\ : maxv_lcell
-- Equation(s):
-- \U1|Add4~80_combout\ = \U2|t\(1) $ (\position~combout\(1) $ ((!\U1|Add4~87\)))
-- \U1|Add4~82\ = CARRY((\U2|t\(1) & (\position~combout\(1) & !\U1|Add4~87\)) # (!\U2|t\(1) & ((\position~combout\(1)) # (!\U1|Add4~87\))))
-- \U1|Add4~82COUT1_108\ = CARRY((\U2|t\(1) & (\position~combout\(1) & !\U1|Add4~87COUT1_106\)) # (!\U2|t\(1) & ((\position~combout\(1)) # (!\U1|Add4~87COUT1_106\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(1),
	datab => \position~combout\(1),
	cin0 => \U1|Add4~87\,
	cin1 => \U1|Add4~87COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add4~80_combout\,
	cout0 => \U1|Add4~82\,
	cout1 => \U1|Add4~82COUT1_108\);

-- Location: LC_X8_Y5_N3
\U1|Add4~75\ : maxv_lcell
-- Equation(s):
-- \U1|Add4~75_combout\ = \position~combout\(2) $ (\U2|t\(2) $ ((\U1|Add4~82\)))
-- \U1|Add4~77\ = CARRY((\position~combout\(2) & (\U2|t\(2) & !\U1|Add4~82\)) # (!\position~combout\(2) & ((\U2|t\(2)) # (!\U1|Add4~82\))))
-- \U1|Add4~77COUT1_110\ = CARRY((\position~combout\(2) & (\U2|t\(2) & !\U1|Add4~82COUT1_108\)) # (!\position~combout\(2) & ((\U2|t\(2)) # (!\U1|Add4~82COUT1_108\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position~combout\(2),
	datab => \U2|t\(2),
	cin0 => \U1|Add4~82\,
	cin1 => \U1|Add4~82COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add4~75_combout\,
	cout0 => \U1|Add4~77\,
	cout1 => \U1|Add4~77COUT1_110\);

-- Location: LC_X8_Y5_N4
\U1|Add4~70\ : maxv_lcell
-- Equation(s):
-- \U1|Add4~70_combout\ = \position~combout\(3) $ (\U2|t\(3) $ ((!\U1|Add4~77\)))
-- \U1|Add4~72\ = CARRY((\position~combout\(3) & ((!\U1|Add4~77COUT1_110\) # (!\U2|t\(3)))) # (!\position~combout\(3) & (!\U2|t\(3) & !\U1|Add4~77COUT1_110\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position~combout\(3),
	datab => \U2|t\(3),
	cin0 => \U1|Add4~77\,
	cin1 => \U1|Add4~77COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add4~70_combout\,
	cout => \U1|Add4~72\);

-- Location: LC_X8_Y5_N5
\U1|Add4~65\ : maxv_lcell
-- Equation(s):
-- \U1|Add4~65_combout\ = \U2|t\(4) $ (\position~combout\(4) $ ((\U1|Add4~72\)))
-- \U1|Add4~67\ = CARRY((\U2|t\(4) & ((!\U1|Add4~72\) # (!\position~combout\(4)))) # (!\U2|t\(4) & (!\position~combout\(4) & !\U1|Add4~72\)))
-- \U1|Add4~67COUT1_112\ = CARRY((\U2|t\(4) & ((!\U1|Add4~72\) # (!\position~combout\(4)))) # (!\U2|t\(4) & (!\position~combout\(4) & !\U1|Add4~72\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(4),
	datab => \position~combout\(4),
	cin => \U1|Add4~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add4~65_combout\,
	cout0 => \U1|Add4~67\,
	cout1 => \U1|Add4~67COUT1_112\);

-- Location: LC_X8_Y5_N6
\U1|Add4~60\ : maxv_lcell
-- Equation(s):
-- \U1|Add4~60_combout\ = \position~combout\(5) $ (\U2|t\(5) $ ((!(!\U1|Add4~72\ & \U1|Add4~67\) # (\U1|Add4~72\ & \U1|Add4~67COUT1_112\))))
-- \U1|Add4~62\ = CARRY((\position~combout\(5) & ((!\U1|Add4~67\) # (!\U2|t\(5)))) # (!\position~combout\(5) & (!\U2|t\(5) & !\U1|Add4~67\)))
-- \U1|Add4~62COUT1_114\ = CARRY((\position~combout\(5) & ((!\U1|Add4~67COUT1_112\) # (!\U2|t\(5)))) # (!\position~combout\(5) & (!\U2|t\(5) & !\U1|Add4~67COUT1_112\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position~combout\(5),
	datab => \U2|t\(5),
	cin => \U1|Add4~72\,
	cin0 => \U1|Add4~67\,
	cin1 => \U1|Add4~67COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add4~60_combout\,
	cout0 => \U1|Add4~62\,
	cout1 => \U1|Add4~62COUT1_114\);

-- Location: LC_X8_Y5_N7
\U1|Add4~55\ : maxv_lcell
-- Equation(s):
-- \U1|Add4~55_combout\ = \position~combout\(6) $ (\U2|t\(6) $ (((!\U1|Add4~72\ & \U1|Add4~62\) # (\U1|Add4~72\ & \U1|Add4~62COUT1_114\))))
-- \U1|Add4~57\ = CARRY((\position~combout\(6) & (\U2|t\(6) & !\U1|Add4~62\)) # (!\position~combout\(6) & ((\U2|t\(6)) # (!\U1|Add4~62\))))
-- \U1|Add4~57COUT1_116\ = CARRY((\position~combout\(6) & (\U2|t\(6) & !\U1|Add4~62COUT1_114\)) # (!\position~combout\(6) & ((\U2|t\(6)) # (!\U1|Add4~62COUT1_114\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position~combout\(6),
	datab => \U2|t\(6),
	cin => \U1|Add4~72\,
	cin0 => \U1|Add4~62\,
	cin1 => \U1|Add4~62COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add4~55_combout\,
	cout0 => \U1|Add4~57\,
	cout1 => \U1|Add4~57COUT1_116\);

-- Location: LC_X7_Y5_N0
\U1|Add3~66\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~66_combout\ = ((\U1|LessThan6~0\ & ((\U1|Add4~55_combout\))) # (!\U1|LessThan6~0\ & (\U1|Add3~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|LessThan6~0\,
	datac => \U1|Add3~61_combout\,
	datad => \U1|Add4~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~66_combout\);

-- Location: LC_X8_Y4_N8
\U1|Add3~56\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~56_combout\ = \U2|t\(7) $ (\position~combout\(7) $ ((!(!\U1|Add3~81\ & \U1|Add3~63\) # (\U1|Add3~81\ & \U1|Add3~63COUT1_129\))))
-- \U1|Add3~58\ = CARRY((\U2|t\(7) & ((!\U1|Add3~63\) # (!\position~combout\(7)))) # (!\U2|t\(7) & (!\position~combout\(7) & !\U1|Add3~63\)))
-- \U1|Add3~58COUT1_131\ = CARRY((\U2|t\(7) & ((!\U1|Add3~63COUT1_129\) # (!\position~combout\(7)))) # (!\U2|t\(7) & (!\position~combout\(7) & !\U1|Add3~63COUT1_129\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(7),
	datab => \position~combout\(7),
	cin => \U1|Add3~81\,
	cin0 => \U1|Add3~63\,
	cin1 => \U1|Add3~63COUT1_129\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~56_combout\,
	cout0 => \U1|Add3~58\,
	cout1 => \U1|Add3~58COUT1_131\);

-- Location: LC_X8_Y5_N8
\U1|Add4~50\ : maxv_lcell
-- Equation(s):
-- \U1|Add4~50_combout\ = \position~combout\(7) $ (\U2|t\(7) $ ((!(!\U1|Add4~72\ & \U1|Add4~57\) # (\U1|Add4~72\ & \U1|Add4~57COUT1_116\))))
-- \U1|Add4~52\ = CARRY((\position~combout\(7) & ((!\U1|Add4~57\) # (!\U2|t\(7)))) # (!\position~combout\(7) & (!\U2|t\(7) & !\U1|Add4~57\)))
-- \U1|Add4~52COUT1_118\ = CARRY((\position~combout\(7) & ((!\U1|Add4~57COUT1_116\) # (!\U2|t\(7)))) # (!\position~combout\(7) & (!\U2|t\(7) & !\U1|Add4~57COUT1_116\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position~combout\(7),
	datab => \U2|t\(7),
	cin => \U1|Add4~72\,
	cin0 => \U1|Add4~57\,
	cin1 => \U1|Add4~57COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add4~50_combout\,
	cout0 => \U1|Add4~52\,
	cout1 => \U1|Add4~52COUT1_118\);

-- Location: LC_X7_Y4_N9
\U1|Add3~67\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~67_combout\ = ((\U1|LessThan6~0\ & ((\U1|Add4~50_combout\))) # (!\U1|LessThan6~0\ & (\U1|Add3~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add3~56_combout\,
	datac => \U1|Add4~50_combout\,
	datad => \U1|LessThan6~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~67_combout\);

-- Location: LC_X8_Y4_N9
\U1|Add3~48\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~48_combout\ = \position~combout\(8) $ (\U2|t\(8) $ (((!\U1|Add3~81\ & \U1|Add3~58\) # (\U1|Add3~81\ & \U1|Add3~58COUT1_131\))))
-- \U1|Add3~50\ = CARRY((\position~combout\(8) & ((!\U1|Add3~58COUT1_131\) # (!\U2|t\(8)))) # (!\position~combout\(8) & (!\U2|t\(8) & !\U1|Add3~58COUT1_131\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position~combout\(8),
	datab => \U2|t\(8),
	cin => \U1|Add3~81\,
	cin0 => \U1|Add3~58\,
	cin1 => \U1|Add3~58COUT1_131\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~48_combout\,
	cout => \U1|Add3~50\);

-- Location: LC_X8_Y5_N9
\U1|Add4~45\ : maxv_lcell
-- Equation(s):
-- \U1|Add4~45_combout\ = \U2|t\(8) $ (\position~combout\(8) $ (((!\U1|Add4~72\ & \U1|Add4~52\) # (\U1|Add4~72\ & \U1|Add4~52COUT1_118\))))
-- \U1|Add4~47\ = CARRY((\U2|t\(8) & ((!\U1|Add4~52COUT1_118\) # (!\position~combout\(8)))) # (!\U2|t\(8) & (!\position~combout\(8) & !\U1|Add4~52COUT1_118\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(8),
	datab => \position~combout\(8),
	cin => \U1|Add4~72\,
	cin0 => \U1|Add4~52\,
	cin1 => \U1|Add4~52COUT1_118\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add4~45_combout\,
	cout => \U1|Add4~47\);

-- Location: LC_X10_Y5_N5
\U1|Add3~53\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~53_combout\ = ((\U1|LessThan6~0\ & ((\U1|Add4~45_combout\))) # (!\U1|LessThan6~0\ & (\U1|Add3~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add3~48_combout\,
	datac => \U1|Add4~45_combout\,
	datad => \U1|LessThan6~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~53_combout\);

-- Location: LC_X7_Y6_N6
\U1|vi[4]~11\ : maxv_lcell
-- Equation(s):
-- \U1|vi[4]~11_combout\ = ((!\U1|Add3~53_combout\ & ((\U1|Add3~66_combout\) # (\U1|Add3~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add3~66_combout\,
	datac => \U1|Add3~67_combout\,
	datad => \U1|Add3~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|vi[4]~11_combout\);

-- Location: LC_X9_Y5_N0
\U1|Add4~40\ : maxv_lcell
-- Equation(s):
-- \U1|Add4~40_combout\ = \U2|t\(9) $ (\position~combout\(9) $ ((!\U1|Add4~47\)))
-- \U1|Add4~42\ = CARRY((\U2|t\(9) & (\position~combout\(9) & !\U1|Add4~47\)) # (!\U2|t\(9) & ((\position~combout\(9)) # (!\U1|Add4~47\))))
-- \U1|Add4~42COUT1_120\ = CARRY((\U2|t\(9) & (\position~combout\(9) & !\U1|Add4~47\)) # (!\U2|t\(9) & ((\position~combout\(9)) # (!\U1|Add4~47\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(9),
	datab => \position~combout\(9),
	cin => \U1|Add4~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add4~40_combout\,
	cout0 => \U1|Add4~42\,
	cout1 => \U1|Add4~42COUT1_120\);

-- Location: LC_X9_Y5_N1
\U1|Add4~35\ : maxv_lcell
-- Equation(s):
-- \U1|Add4~35_combout\ = \position~combout\(10) $ (\U2|t\(10) $ (((!\U1|Add4~47\ & \U1|Add4~42\) # (\U1|Add4~47\ & \U1|Add4~42COUT1_120\))))
-- \U1|Add4~37\ = CARRY((\position~combout\(10) & (\U2|t\(10) & !\U1|Add4~42\)) # (!\position~combout\(10) & ((\U2|t\(10)) # (!\U1|Add4~42\))))
-- \U1|Add4~37COUT1_122\ = CARRY((\position~combout\(10) & (\U2|t\(10) & !\U1|Add4~42COUT1_120\)) # (!\position~combout\(10) & ((\U2|t\(10)) # (!\U1|Add4~42COUT1_120\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position~combout\(10),
	datab => \U2|t\(10),
	cin => \U1|Add4~47\,
	cin0 => \U1|Add4~42\,
	cin1 => \U1|Add4~42COUT1_120\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add4~35_combout\,
	cout0 => \U1|Add4~37\,
	cout1 => \U1|Add4~37COUT1_122\);

-- Location: LC_X9_Y5_N2
\U1|Add4~30\ : maxv_lcell
-- Equation(s):
-- \U1|Add4~30_combout\ = \position~combout\(11) $ (\U2|t\(11) $ ((!(!\U1|Add4~47\ & \U1|Add4~37\) # (\U1|Add4~47\ & \U1|Add4~37COUT1_122\))))
-- \U1|Add4~32\ = CARRY((\position~combout\(11) & ((!\U1|Add4~37\) # (!\U2|t\(11)))) # (!\position~combout\(11) & (!\U2|t\(11) & !\U1|Add4~37\)))
-- \U1|Add4~32COUT1_124\ = CARRY((\position~combout\(11) & ((!\U1|Add4~37COUT1_122\) # (!\U2|t\(11)))) # (!\position~combout\(11) & (!\U2|t\(11) & !\U1|Add4~37COUT1_122\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position~combout\(11),
	datab => \U2|t\(11),
	cin => \U1|Add4~47\,
	cin0 => \U1|Add4~37\,
	cin1 => \U1|Add4~37COUT1_122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add4~30_combout\,
	cout0 => \U1|Add4~32\,
	cout1 => \U1|Add4~32COUT1_124\);

-- Location: LC_X9_Y4_N0
\U1|Add3~43\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~43_combout\ = \U2|t\(9) $ (\position~combout\(9) $ ((!\U1|Add3~50\)))
-- \U1|Add3~45\ = CARRY((\U2|t\(9) & ((!\U1|Add3~50\) # (!\position~combout\(9)))) # (!\U2|t\(9) & (!\position~combout\(9) & !\U1|Add3~50\)))
-- \U1|Add3~45COUT1_133\ = CARRY((\U2|t\(9) & ((!\U1|Add3~50\) # (!\position~combout\(9)))) # (!\U2|t\(9) & (!\position~combout\(9) & !\U1|Add3~50\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(9),
	datab => \position~combout\(9),
	cin => \U1|Add3~50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~43_combout\,
	cout0 => \U1|Add3~45\,
	cout1 => \U1|Add3~45COUT1_133\);

-- Location: LC_X9_Y4_N1
\U1|Add3~37\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~37_combout\ = \U2|t\(10) $ (\position~combout\(10) $ (((!\U1|Add3~50\ & \U1|Add3~45\) # (\U1|Add3~50\ & \U1|Add3~45COUT1_133\))))
-- \U1|Add3~39\ = CARRY((\U2|t\(10) & (\position~combout\(10) & !\U1|Add3~45\)) # (!\U2|t\(10) & ((\position~combout\(10)) # (!\U1|Add3~45\))))
-- \U1|Add3~39COUT1_135\ = CARRY((\U2|t\(10) & (\position~combout\(10) & !\U1|Add3~45COUT1_133\)) # (!\U2|t\(10) & ((\position~combout\(10)) # (!\U1|Add3~45COUT1_133\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(10),
	datab => \position~combout\(10),
	cin => \U1|Add3~50\,
	cin0 => \U1|Add3~45\,
	cin1 => \U1|Add3~45COUT1_133\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~37_combout\,
	cout0 => \U1|Add3~39\,
	cout1 => \U1|Add3~39COUT1_135\);

-- Location: LC_X9_Y4_N2
\U1|Add3~31\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~31_combout\ = \position~combout\(11) $ (\U2|t\(11) $ ((!(!\U1|Add3~50\ & \U1|Add3~39\) # (\U1|Add3~50\ & \U1|Add3~39COUT1_135\))))
-- \U1|Add3~33\ = CARRY((\position~combout\(11) & (\U2|t\(11) & !\U1|Add3~39\)) # (!\position~combout\(11) & ((\U2|t\(11)) # (!\U1|Add3~39\))))
-- \U1|Add3~33COUT1_137\ = CARRY((\position~combout\(11) & (\U2|t\(11) & !\U1|Add3~39COUT1_135\)) # (!\position~combout\(11) & ((\U2|t\(11)) # (!\U1|Add3~39COUT1_135\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position~combout\(11),
	datab => \U2|t\(11),
	cin => \U1|Add3~50\,
	cin0 => \U1|Add3~39\,
	cin1 => \U1|Add3~39COUT1_135\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~31_combout\,
	cout0 => \U1|Add3~33\,
	cout1 => \U1|Add3~33COUT1_137\);

-- Location: LC_X9_Y5_N9
\U1|Add3~42\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~42_combout\ = (\U1|LessThan6~0\ & (\U1|Add4~30_combout\)) # (!\U1|LessThan6~0\ & (((\U1|Add3~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan6~0\,
	datab => \U1|Add4~30_combout\,
	datad => \U1|Add3~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~42_combout\);

-- Location: LC_X8_Y6_N2
\U1|vi[0]~7\ : maxv_lcell
-- Equation(s):
-- \U1|vi[0]~7_combout\ = (!\U1|Add3~42_combout\ & ((\U1|LessThan6~0\ & (!\U1|Add4~35_combout\)) # (!\U1|LessThan6~0\ & ((!\U1|Add3~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1105",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add3~42_combout\,
	datab => \U1|Add4~35_combout\,
	datac => \U1|Add3~37_combout\,
	datad => \U1|LessThan6~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|vi[0]~7_combout\);

-- Location: LC_X9_Y4_N3
\U1|Add3~0\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~0_combout\ = \U2|t\(12) $ (\position~combout\(12) $ (((!\U1|Add3~50\ & \U1|Add3~33\) # (\U1|Add3~50\ & \U1|Add3~33COUT1_137\))))
-- \U1|Add3~2\ = CARRY((\U2|t\(12) & (\position~combout\(12) & !\U1|Add3~33\)) # (!\U2|t\(12) & ((\position~combout\(12)) # (!\U1|Add3~33\))))
-- \U1|Add3~2COUT1_139\ = CARRY((\U2|t\(12) & (\position~combout\(12) & !\U1|Add3~33COUT1_137\)) # (!\U2|t\(12) & ((\position~combout\(12)) # (!\U1|Add3~33COUT1_137\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(12),
	datab => \position~combout\(12),
	cin => \U1|Add3~50\,
	cin0 => \U1|Add3~33\,
	cin1 => \U1|Add3~33COUT1_137\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~0_combout\,
	cout0 => \U1|Add3~2\,
	cout1 => \U1|Add3~2COUT1_139\);

-- Location: LC_X9_Y5_N3
\U1|Add4~0\ : maxv_lcell
-- Equation(s):
-- \U1|Add4~0_combout\ = \position~combout\(12) $ (\U2|t\(12) $ (((!\U1|Add4~47\ & \U1|Add4~32\) # (\U1|Add4~47\ & \U1|Add4~32COUT1_124\))))
-- \U1|Add4~2\ = CARRY((\position~combout\(12) & (\U2|t\(12) & !\U1|Add4~32\)) # (!\position~combout\(12) & ((\U2|t\(12)) # (!\U1|Add4~32\))))
-- \U1|Add4~2COUT1_126\ = CARRY((\position~combout\(12) & (\U2|t\(12) & !\U1|Add4~32COUT1_124\)) # (!\position~combout\(12) & ((\U2|t\(12)) # (!\U1|Add4~32COUT1_124\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position~combout\(12),
	datab => \U2|t\(12),
	cin => \U1|Add4~47\,
	cin0 => \U1|Add4~32\,
	cin1 => \U1|Add4~32COUT1_124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add4~0_combout\,
	cout0 => \U1|Add4~2\,
	cout1 => \U1|Add4~2COUT1_126\);

-- Location: LC_X8_Y6_N6
\U1|Add3~36\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~36_combout\ = ((\U1|LessThan6~0\ & ((\U1|Add4~0_combout\))) # (!\U1|LessThan6~0\ & (\U1|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|LessThan6~0\,
	datac => \U1|Add3~0_combout\,
	datad => \U1|Add4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~36_combout\);

-- Location: LC_X10_Y5_N4
\U1|Add3~54\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~54_combout\ = ((\U1|LessThan6~0\ & ((\U1|Add4~40_combout\))) # (!\U1|LessThan6~0\ & (\U1|Add3~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|LessThan6~0\,
	datac => \U1|Add3~43_combout\,
	datad => \U1|Add4~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~54_combout\);

-- Location: LC_X7_Y6_N5
\U1|vi[4]~12\ : maxv_lcell
-- Equation(s):
-- \U1|vi[4]~12_combout\ = (\U1|Add3~36_combout\) # ((\U1|vi[0]~7_combout\ & ((\U1|vi[4]~11_combout\) # (\U1|Add3~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vi[4]~11_combout\,
	datab => \U1|vi[0]~7_combout\,
	datac => \U1|Add3~36_combout\,
	datad => \U1|Add3~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|vi[4]~12_combout\);

-- Location: LC_X9_Y5_N4
\U1|Add4~5\ : maxv_lcell
-- Equation(s):
-- \U1|Add4~5_combout\ = \position~combout\(13) $ (\U2|t\(13) $ ((!(!\U1|Add4~47\ & \U1|Add4~2\) # (\U1|Add4~47\ & \U1|Add4~2COUT1_126\))))
-- \U1|Add4~7\ = CARRY((\position~combout\(13) & ((!\U1|Add4~2COUT1_126\) # (!\U2|t\(13)))) # (!\position~combout\(13) & (!\U2|t\(13) & !\U1|Add4~2COUT1_126\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position~combout\(13),
	datab => \U2|t\(13),
	cin => \U1|Add4~47\,
	cin0 => \U1|Add4~2\,
	cin1 => \U1|Add4~2COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add4~5_combout\,
	cout => \U1|Add4~7\);

-- Location: LC_X9_Y5_N5
\U1|Add4~10\ : maxv_lcell
-- Equation(s):
-- \U1|Add4~10_combout\ = \position~combout\(14) $ (\U2|t\(14) $ ((\U1|Add4~7\)))
-- \U1|Add4~12\ = CARRY((\position~combout\(14) & (\U2|t\(14) & !\U1|Add4~7\)) # (!\position~combout\(14) & ((\U2|t\(14)) # (!\U1|Add4~7\))))
-- \U1|Add4~12COUT1_128\ = CARRY((\position~combout\(14) & (\U2|t\(14) & !\U1|Add4~7\)) # (!\position~combout\(14) & ((\U2|t\(14)) # (!\U1|Add4~7\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position~combout\(14),
	datab => \U2|t\(14),
	cin => \U1|Add4~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add4~10_combout\,
	cout0 => \U1|Add4~12\,
	cout1 => \U1|Add4~12COUT1_128\);

-- Location: LC_X9_Y4_N4
\U1|Add3~5\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~5_combout\ = \U2|t\(13) $ (\position~combout\(13) $ ((!(!\U1|Add3~50\ & \U1|Add3~2\) # (\U1|Add3~50\ & \U1|Add3~2COUT1_139\))))
-- \U1|Add3~7\ = CARRY((\U2|t\(13) & ((!\U1|Add3~2COUT1_139\) # (!\position~combout\(13)))) # (!\U2|t\(13) & (!\position~combout\(13) & !\U1|Add3~2COUT1_139\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(13),
	datab => \position~combout\(13),
	cin => \U1|Add3~50\,
	cin0 => \U1|Add3~2\,
	cin1 => \U1|Add3~2COUT1_139\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~5_combout\,
	cout => \U1|Add3~7\);

-- Location: LC_X9_Y4_N5
\U1|Add3~11\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~11_combout\ = \position~combout\(14) $ (\U2|t\(14) $ ((\U1|Add3~7\)))
-- \U1|Add3~13\ = CARRY((\position~combout\(14) & ((!\U1|Add3~7\) # (!\U2|t\(14)))) # (!\position~combout\(14) & (!\U2|t\(14) & !\U1|Add3~7\)))
-- \U1|Add3~13COUT1_141\ = CARRY((\position~combout\(14) & ((!\U1|Add3~7\) # (!\U2|t\(14)))) # (!\position~combout\(14) & (!\U2|t\(14) & !\U1|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position~combout\(14),
	datab => \U2|t\(14),
	cin => \U1|Add3~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~11_combout\,
	cout0 => \U1|Add3~13\,
	cout1 => \U1|Add3~13COUT1_141\);

-- Location: LC_X9_Y5_N6
\U1|Add4~15\ : maxv_lcell
-- Equation(s):
-- \U1|Add4~15_combout\ = \U2|t\(15) $ (\position~combout\(15) $ ((!(!\U1|Add4~7\ & \U1|Add4~12\) # (\U1|Add4~7\ & \U1|Add4~12COUT1_128\))))
-- \U1|Add4~17\ = CARRY((\U2|t\(15) & (\position~combout\(15) & !\U1|Add4~12\)) # (!\U2|t\(15) & ((\position~combout\(15)) # (!\U1|Add4~12\))))
-- \U1|Add4~17COUT1_130\ = CARRY((\U2|t\(15) & (\position~combout\(15) & !\U1|Add4~12COUT1_128\)) # (!\U2|t\(15) & ((\position~combout\(15)) # (!\U1|Add4~12COUT1_128\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(15),
	datab => \position~combout\(15),
	cin => \U1|Add4~7\,
	cin0 => \U1|Add4~12\,
	cin1 => \U1|Add4~12COUT1_128\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add4~15_combout\,
	cout0 => \U1|Add4~17\,
	cout1 => \U1|Add4~17COUT1_130\);

-- Location: LC_X9_Y6_N5
\U1|vi[0]~1\ : maxv_lcell
-- Equation(s):
-- \U1|vi[0]~1_combout\ = (\U1|LessThan6~0\ & (!\U1|Add4~10_combout\ & ((!\U1|Add4~15_combout\)))) # (!\U1|LessThan6~0\ & (((!\U1|Add3~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0533",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add4~10_combout\,
	datab => \U1|Add3~11_combout\,
	datac => \U1|Add4~15_combout\,
	datad => \U1|LessThan6~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|vi[0]~1_combout\);

-- Location: LC_X9_Y4_N6
\U1|Add3~16\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~16_combout\ = \U2|t\(15) $ (\position~combout\(15) $ ((!(!\U1|Add3~7\ & \U1|Add3~13\) # (\U1|Add3~7\ & \U1|Add3~13COUT1_141\))))
-- \U1|Add3~18\ = CARRY((\U2|t\(15) & ((!\U1|Add3~13\) # (!\position~combout\(15)))) # (!\U2|t\(15) & (!\position~combout\(15) & !\U1|Add3~13\)))
-- \U1|Add3~18COUT1_143\ = CARRY((\U2|t\(15) & ((!\U1|Add3~13COUT1_141\) # (!\position~combout\(15)))) # (!\U2|t\(15) & (!\position~combout\(15) & !\U1|Add3~13COUT1_141\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(15),
	datab => \position~combout\(15),
	cin => \U1|Add3~7\,
	cin0 => \U1|Add3~13\,
	cin1 => \U1|Add3~13COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~16_combout\,
	cout0 => \U1|Add3~18\,
	cout1 => \U1|Add3~18COUT1_143\);

-- Location: LC_X9_Y4_N7
\U1|Add3~21\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~21_combout\ = \U2|t\(16) $ (\position~combout\(16) $ (((!\U1|Add3~7\ & \U1|Add3~18\) # (\U1|Add3~7\ & \U1|Add3~18COUT1_143\))))
-- \U1|Add3~23\ = CARRY((\U2|t\(16) & (\position~combout\(16) & !\U1|Add3~18\)) # (!\U2|t\(16) & ((\position~combout\(16)) # (!\U1|Add3~18\))))
-- \U1|Add3~23COUT1_145\ = CARRY((\U2|t\(16) & (\position~combout\(16) & !\U1|Add3~18COUT1_143\)) # (!\U2|t\(16) & ((\position~combout\(16)) # (!\U1|Add3~18COUT1_143\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(16),
	datab => \position~combout\(16),
	cin => \U1|Add3~7\,
	cin0 => \U1|Add3~18\,
	cin1 => \U1|Add3~18COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~21_combout\,
	cout0 => \U1|Add3~23\,
	cout1 => \U1|Add3~23COUT1_145\);

-- Location: LC_X9_Y4_N8
\U1|Add3~26\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~26_combout\ = (\U2|t\(17) $ ((!\U1|Add3~7\ & \U1|Add3~23\) # (\U1|Add3~7\ & \U1|Add3~23COUT1_145\) $ (!\position~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|t\(17),
	datad => \position~combout\(17),
	cin => \U1|Add3~7\,
	cin0 => \U1|Add3~23\,
	cin1 => \U1|Add3~23COUT1_145\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~26_combout\);

-- Location: LC_X9_Y5_N7
\U1|Add4~20\ : maxv_lcell
-- Equation(s):
-- \U1|Add4~20_combout\ = \U2|t\(16) $ (\position~combout\(16) $ (((!\U1|Add4~7\ & \U1|Add4~17\) # (\U1|Add4~7\ & \U1|Add4~17COUT1_130\))))
-- \U1|Add4~22\ = CARRY((\U2|t\(16) & ((!\U1|Add4~17\) # (!\position~combout\(16)))) # (!\U2|t\(16) & (!\position~combout\(16) & !\U1|Add4~17\)))
-- \U1|Add4~22COUT1_132\ = CARRY((\U2|t\(16) & ((!\U1|Add4~17COUT1_130\) # (!\position~combout\(16)))) # (!\U2|t\(16) & (!\position~combout\(16) & !\U1|Add4~17COUT1_130\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(16),
	datab => \position~combout\(16),
	cin => \U1|Add4~7\,
	cin0 => \U1|Add4~17\,
	cin1 => \U1|Add4~17COUT1_130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add4~20_combout\,
	cout0 => \U1|Add4~22\,
	cout1 => \U1|Add4~22COUT1_132\);

-- Location: LC_X9_Y5_N8
\U1|Add4~25\ : maxv_lcell
-- Equation(s):
-- \U1|Add4~25_combout\ = (\position~combout\(17) $ ((!\U1|Add4~7\ & \U1|Add4~22\) # (\U1|Add4~7\ & \U1|Add4~22COUT1_132\) $ (!\U2|t\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \position~combout\(17),
	datad => \U2|t\(17),
	cin => \U1|Add4~7\,
	cin0 => \U1|Add4~22\,
	cin1 => \U1|Add4~22COUT1_132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add4~25_combout\);

-- Location: LC_X9_Y6_N7
\U1|vi[0]~3\ : maxv_lcell
-- Equation(s):
-- \U1|vi[0]~3_combout\ = ((\U1|LessThan6~0\ & ((!\U1|Add4~25_combout\))) # (!\U1|LessThan6~0\ & (!\U1|Add3~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add3~26_combout\,
	datac => \U1|LessThan6~0\,
	datad => \U1|Add4~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|vi[0]~3_combout\);

-- Location: LC_X9_Y6_N1
\U1|vi[0]~2\ : maxv_lcell
-- Equation(s):
-- \U1|vi[0]~2_combout\ = (\U1|LessThan6~0\ & (!\U1|Add4~20_combout\)) # (!\U1|LessThan6~0\ & (((!\U1|Add3~21_combout\ & !\U1|Add3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5503",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add4~20_combout\,
	datab => \U1|Add3~21_combout\,
	datac => \U1|Add3~16_combout\,
	datad => \U1|LessThan6~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|vi[0]~2_combout\);

-- Location: LC_X9_Y6_N9
\U1|vi[0]~4\ : maxv_lcell
-- Equation(s):
-- \U1|vi[0]~4_combout\ = (\U1|vi[0]~1_combout\ & (((\U1|vi[0]~3_combout\ & \U1|vi[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vi[0]~1_combout\,
	datac => \U1|vi[0]~3_combout\,
	datad => \U1|vi[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|vi[0]~4_combout\);

-- Location: LC_X9_Y6_N8
\U1|Add3~10\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~10_combout\ = ((\U1|LessThan6~0\ & ((\U1|Add4~5_combout\))) # (!\U1|LessThan6~0\ & (\U1|Add3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add3~5_combout\,
	datac => \U1|Add4~5_combout\,
	datad => \U1|LessThan6~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~10_combout\);

-- Location: LC_X8_Y6_N5
\U1|vireg[4]\ : maxv_lcell
-- Equation(s):
-- \U1|vireg\(4) = DFFEAS(\U1|LessThan6~0\ $ ((((\U1|vi[4]~12_combout\ & !\U1|Add3~10_combout\)) # (!\U1|vi[0]~4_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c363",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U1|vi[4]~12_combout\,
	datab => \U1|LessThan6~0\,
	datac => \U1|vi[0]~4_combout\,
	datad => \U1|Add3~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|vireg\(4));

-- Location: LC_X8_Y6_N0
\U1|Add3~55\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~55_combout\ = ((\U1|LessThan6~0\ & (\U1|Add4~35_combout\)) # (!\U1|LessThan6~0\ & ((\U1|Add3~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add4~35_combout\,
	datac => \U1|Add3~37_combout\,
	datad => \U1|LessThan6~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~55_combout\);

-- Location: LC_X7_Y5_N5
\U1|Add3~78\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~78_combout\ = ((\U1|LessThan6~0\ & (\U1|Add4~60_combout\)) # (!\U1|LessThan6~0\ & ((\U1|Add3~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|LessThan6~0\,
	datac => \U1|Add4~60_combout\,
	datad => \U1|Add3~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~78_combout\);

-- Location: LC_X7_Y5_N7
\U1|vl1~0\ : maxv_lcell
-- Equation(s):
-- \U1|vl1~0_combout\ = (!\U1|Add3~78_combout\ & ((\U1|LessThan6~0\ & (!\U1|Add4~65_combout\)) # (!\U1|LessThan6~0\ & ((!\U1|Add3~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1015",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add3~78_combout\,
	datab => \U1|Add4~65_combout\,
	datac => \U1|LessThan6~0\,
	datad => \U1|Add3~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|vl1~0_combout\);

-- Location: LC_X10_Y5_N2
\U1|vi[3]~14\ : maxv_lcell
-- Equation(s):
-- \U1|vi[3]~14_combout\ = (!\U1|Add3~53_combout\ & ((\U1|LessThan6~0\ & ((!\U1|Add4~40_combout\))) # (!\U1|LessThan6~0\ & (!\U1|Add3~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "010d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add3~43_combout\,
	datab => \U1|LessThan6~0\,
	datac => \U1|Add3~53_combout\,
	datad => \U1|Add4~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|vi[3]~14_combout\);

-- Location: LC_X7_Y6_N3
\U1|vi[3]~15\ : maxv_lcell
-- Equation(s):
-- \U1|vi[3]~15_combout\ = (\U1|vi[3]~14_combout\ & ((\U1|Add3~67_combout\) # ((!\U1|vl1~0_combout\ & !\U1|Add3~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vl1~0_combout\,
	datab => \U1|Add3~66_combout\,
	datac => \U1|Add3~67_combout\,
	datad => \U1|vi[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|vi[3]~15_combout\);

-- Location: LC_X7_Y6_N8
\U1|vi[3]~16\ : maxv_lcell
-- Equation(s):
-- \U1|vi[3]~16_combout\ = (!\U1|Add3~42_combout\ & (!\U1|Add3~36_combout\ & ((\U1|Add3~55_combout\) # (\U1|vi[3]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0302",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add3~55_combout\,
	datab => \U1|Add3~42_combout\,
	datac => \U1|Add3~36_combout\,
	datad => \U1|vi[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|vi[3]~16_combout\);

-- Location: LC_X9_Y6_N3
\U1|vi[2]~6\ : maxv_lcell
-- Equation(s):
-- \U1|vi[2]~6_combout\ = (\U1|vi[0]~1_combout\ & (\U1|vi[0]~2_combout\ & (\U1|vi[0]~3_combout\ & !\U1|Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vi[0]~1_combout\,
	datab => \U1|vi[0]~2_combout\,
	datac => \U1|vi[0]~3_combout\,
	datad => \U1|Add3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|vi[2]~6_combout\);

-- Location: LC_X9_Y6_N6
\U1|vireg[3]\ : maxv_lcell
-- Equation(s):
-- \U1|vireg\(3) = DFFEAS((\U1|LessThan6~0\ $ (((\U1|vi[3]~16_combout\) # (!\U1|vi[2]~6_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c33",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U1|LessThan6~0\,
	datac => \U1|vi[3]~16_combout\,
	datad => \U1|vi[2]~6_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|vireg\(3));

-- Location: LC_X8_Y5_N0
\U1|Add3~89\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~89_combout\ = ((\U1|LessThan6~0\ & ((\U1|Add4~75_combout\))) # (!\U1|LessThan6~0\ & (\U1|Add3~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add3~84_combout\,
	datac => \U1|LessThan6~0\,
	datad => \U1|Add4~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~89_combout\);

-- Location: LC_X7_Y5_N2
\U1|Add3~91\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~91_combout\ = ((\U1|LessThan6~0\ & (\U1|Add4~65_combout\)) # (!\U1|LessThan6~0\ & ((\U1|Add3~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add4~65_combout\,
	datac => \U1|LessThan6~0\,
	datad => \U1|Add3~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~91_combout\);

-- Location: LC_X8_Y4_N0
\U1|Add3~90\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~90_combout\ = ((\U1|LessThan6~0\ & ((\U1|Add4~70_combout\))) # (!\U1|LessThan6~0\ & (\U1|Add3~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add3~79_combout\,
	datac => \U1|LessThan6~0\,
	datad => \U1|Add4~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~90_combout\);

-- Location: LC_X7_Y5_N6
\U1|vi[2]~18\ : maxv_lcell
-- Equation(s):
-- \U1|vi[2]~18_combout\ = (\U1|Add3~78_combout\) # ((!\U1|Add3~91_combout\ & ((\U1|Add3~89_combout\) # (\U1|Add3~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff32",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add3~89_combout\,
	datab => \U1|Add3~91_combout\,
	datac => \U1|Add3~90_combout\,
	datad => \U1|Add3~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|vi[2]~18_combout\);

-- Location: LC_X7_Y6_N7
\U1|vi[2]~19\ : maxv_lcell
-- Equation(s):
-- \U1|vi[2]~19_combout\ = (\U1|Add3~53_combout\) # ((!\U1|Add3~67_combout\ & (!\U1|Add3~66_combout\ & \U1|vi[2]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add3~67_combout\,
	datab => \U1|Add3~66_combout\,
	datac => \U1|vi[2]~18_combout\,
	datad => \U1|Add3~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|vi[2]~19_combout\);

-- Location: LC_X7_Y6_N1
\U1|vi[2]~20\ : maxv_lcell
-- Equation(s):
-- \U1|vi[2]~20_combout\ = (\U1|Add3~42_combout\) # ((!\U1|Add3~55_combout\ & (\U1|vi[2]~19_combout\ & !\U1|Add3~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccdc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add3~55_combout\,
	datab => \U1|Add3~42_combout\,
	datac => \U1|vi[2]~19_combout\,
	datad => \U1|Add3~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|vi[2]~20_combout\);

-- Location: LC_X9_Y6_N4
\U1|vireg[2]\ : maxv_lcell
-- Equation(s):
-- \U1|vireg\(2) = DFFEAS(\U1|LessThan6~0\ $ ((((!\U1|Add3~36_combout\ & \U1|vi[2]~20_combout\)) # (!\U1|vi[2]~6_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9c33",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U1|Add3~36_combout\,
	datab => \U1|LessThan6~0\,
	datac => \U1|vi[2]~20_combout\,
	datad => \U1|vi[2]~6_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|vireg\(2));

-- Location: LC_X7_Y5_N1
\U1|Add3~97\ : maxv_lcell
-- Equation(s):
-- \U1|Add3~97_combout\ = ((\U1|LessThan6~0\ & (\U1|Add4~80_combout\)) # (!\U1|LessThan6~0\ & ((\U1|Add3~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|LessThan6~0\,
	datac => \U1|Add4~80_combout\,
	datad => \U1|Add3~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add3~97_combout\);

-- Location: LC_X7_Y5_N9
\U1|vl1~1\ : maxv_lcell
-- Equation(s):
-- \U1|vl1~1_combout\ = (\U1|Add3~97_combout\) # ((\U1|LessThan6~0\ & ((\U1|Add4~85_combout\))) # (!\U1|LessThan6~0\ & (\U1|Add3~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add3~98_combout\,
	datab => \U1|Add4~85_combout\,
	datac => \U1|LessThan6~0\,
	datad => \U1|Add3~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|vl1~1_combout\);

-- Location: LC_X7_Y5_N3
\U1|vl1~2\ : maxv_lcell
-- Equation(s):
-- \U1|vl1~2_combout\ = (\U1|vl1~0_combout\ & ((\U1|Add3~90_combout\) # ((!\U1|Add3~89_combout\ & \U1|vl1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c4c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add3~89_combout\,
	datab => \U1|vl1~0_combout\,
	datac => \U1|Add3~90_combout\,
	datad => \U1|vl1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|vl1~2_combout\);

-- Location: LC_X7_Y6_N0
\U1|vl1[1]~3\ : maxv_lcell
-- Equation(s):
-- \U1|vl1[1]~3_combout\ = (!\U1|Add3~67_combout\ & (!\U1|Add3~53_combout\ & ((\U1|Add3~66_combout\) # (\U1|vl1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0054",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add3~67_combout\,
	datab => \U1|Add3~66_combout\,
	datac => \U1|vl1~2_combout\,
	datad => \U1|Add3~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|vl1[1]~3_combout\);

-- Location: LC_X7_Y6_N2
\U1|vl1[1]~4\ : maxv_lcell
-- Equation(s):
-- \U1|vl1[1]~4_combout\ = (\U1|Add3~42_combout\) # ((!\U1|Add3~55_combout\ & ((\U1|vl1[1]~3_combout\) # (\U1|Add3~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dddc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add3~55_combout\,
	datab => \U1|Add3~42_combout\,
	datac => \U1|vl1[1]~3_combout\,
	datad => \U1|Add3~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|vl1[1]~4_combout\);

-- Location: LC_X8_Y6_N9
\U1|vi[0]~0\ : maxv_lcell
-- Equation(s):
-- \U1|vi[0]~0_combout\ = (!\U1|Add3~10_combout\ & ((\U1|LessThan6~0\ & (!\U1|Add4~0_combout\)) # (!\U1|LessThan6~0\ & ((!\U1|Add3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0047",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add4~0_combout\,
	datab => \U1|LessThan6~0\,
	datac => \U1|Add3~0_combout\,
	datad => \U1|Add3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|vi[0]~0_combout\);

-- Location: LC_X8_Y6_N8
\U1|vireg[1]\ : maxv_lcell
-- Equation(s):
-- \U1|vireg\(1) = DFFEAS(\U1|LessThan6~0\ $ ((((\U1|vl1[1]~4_combout\ & \U1|vi[0]~0_combout\)) # (!\U1|vi[0]~4_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "65a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U1|LessThan6~0\,
	datab => \U1|vl1[1]~4_combout\,
	datac => \U1|vi[0]~4_combout\,
	datad => \U1|vi[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|vireg\(1));

-- Location: LC_X7_Y5_N4
\U1|vi[0]~23\ : maxv_lcell
-- Equation(s):
-- \U1|vi[0]~23_combout\ = (!\U1|Add3~89_combout\ & (((!\U1|Add3~90_combout\ & \U1|Add3~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add3~89_combout\,
	datac => \U1|Add3~90_combout\,
	datad => \U1|Add3~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|vi[0]~23_combout\);

-- Location: LC_X7_Y5_N8
\U1|vi[0]~24\ : maxv_lcell
-- Equation(s):
-- \U1|vi[0]~24_combout\ = (!\U1|Add3~78_combout\ & (!\U1|Add3~66_combout\ & ((\U1|Add3~91_combout\) # (\U1|vi[0]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0054",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add3~78_combout\,
	datab => \U1|Add3~91_combout\,
	datac => \U1|vi[0]~23_combout\,
	datad => \U1|Add3~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|vi[0]~24_combout\);

-- Location: LC_X7_Y6_N9
\U1|vi[0]~25\ : maxv_lcell
-- Equation(s):
-- \U1|vi[0]~25_combout\ = (\U1|Add3~54_combout\) # ((!\U1|Add3~53_combout\ & ((\U1|Add3~67_combout\) # (\U1|vi[0]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccfe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add3~67_combout\,
	datab => \U1|Add3~54_combout\,
	datac => \U1|vi[0]~24_combout\,
	datad => \U1|Add3~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|vi[0]~25_combout\);

-- Location: LC_X8_Y6_N3
\U1|vi[0]~26\ : maxv_lcell
-- Equation(s):
-- \U1|vi[0]~26_combout\ = (!\U1|Add3~36_combout\ & (!\U1|Add3~55_combout\ & (!\U1|Add3~42_combout\ & !\U1|Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add3~36_combout\,
	datab => \U1|Add3~55_combout\,
	datac => \U1|Add3~42_combout\,
	datad => \U1|Add3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|vi[0]~26_combout\);

-- Location: LC_X8_Y6_N4
\U1|vireg[0]\ : maxv_lcell
-- Equation(s):
-- \U1|vireg\(0) = DFFEAS(\U1|LessThan6~0\ $ ((((\U1|vi[0]~25_combout\ & \U1|vi[0]~26_combout\)) # (!\U1|vi[0]~4_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "63c3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U1|vi[0]~25_combout\,
	datab => \U1|LessThan6~0\,
	datac => \U1|vi[0]~4_combout\,
	datad => \U1|vi[0]~26_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|vireg\(0));

-- Location: LC_X8_Y7_N0
\U1|LessThan1~42\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan1~42_cout0\ = CARRY((\U1|vireg\(0) & (!\U1|va\(0))))
-- \U1|LessThan1~42COUT1_54\ = CARRY((\U1|vireg\(0) & (!\U1|va\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vireg\(0),
	datab => \U1|va\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan1~40\,
	cout0 => \U1|LessThan1~42_cout0\,
	cout1 => \U1|LessThan1~42COUT1_54\);

-- Location: LC_X8_Y7_N1
\U1|LessThan1~37\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan1~37_cout0\ = CARRY((\U1|va\(1) & ((!\U1|LessThan1~42_cout0\) # (!\U1|vireg\(1)))) # (!\U1|va\(1) & (!\U1|vireg\(1) & !\U1|LessThan1~42_cout0\)))
-- \U1|LessThan1~37COUT1_56\ = CARRY((\U1|va\(1) & ((!\U1|LessThan1~42COUT1_54\) # (!\U1|vireg\(1)))) # (!\U1|va\(1) & (!\U1|vireg\(1) & !\U1|LessThan1~42COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|va\(1),
	datab => \U1|vireg\(1),
	cin0 => \U1|LessThan1~42_cout0\,
	cin1 => \U1|LessThan1~42COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan1~35\,
	cout0 => \U1|LessThan1~37_cout0\,
	cout1 => \U1|LessThan1~37COUT1_56\);

-- Location: LC_X8_Y7_N2
\U1|LessThan1~32\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan1~32_cout0\ = CARRY((\U1|va\(2) & (\U1|vireg\(2) & !\U1|LessThan1~37_cout0\)) # (!\U1|va\(2) & ((\U1|vireg\(2)) # (!\U1|LessThan1~37_cout0\))))
-- \U1|LessThan1~32COUT1_58\ = CARRY((\U1|va\(2) & (\U1|vireg\(2) & !\U1|LessThan1~37COUT1_56\)) # (!\U1|va\(2) & ((\U1|vireg\(2)) # (!\U1|LessThan1~37COUT1_56\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|va\(2),
	datab => \U1|vireg\(2),
	cin0 => \U1|LessThan1~37_cout0\,
	cin1 => \U1|LessThan1~37COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan1~30\,
	cout0 => \U1|LessThan1~32_cout0\,
	cout1 => \U1|LessThan1~32COUT1_58\);

-- Location: LC_X8_Y7_N3
\U1|LessThan1~27\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan1~27_cout0\ = CARRY((\U1|va\(3) & ((!\U1|LessThan1~32_cout0\) # (!\U1|vireg\(3)))) # (!\U1|va\(3) & (!\U1|vireg\(3) & !\U1|LessThan1~32_cout0\)))
-- \U1|LessThan1~27COUT1_60\ = CARRY((\U1|va\(3) & ((!\U1|LessThan1~32COUT1_58\) # (!\U1|vireg\(3)))) # (!\U1|va\(3) & (!\U1|vireg\(3) & !\U1|LessThan1~32COUT1_58\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|va\(3),
	datab => \U1|vireg\(3),
	cin0 => \U1|LessThan1~32_cout0\,
	cin1 => \U1|LessThan1~32COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan1~25\,
	cout0 => \U1|LessThan1~27_cout0\,
	cout1 => \U1|LessThan1~27COUT1_60\);

-- Location: LC_X8_Y7_N4
\U1|LessThan1~22\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan1~22_cout\ = CARRY((\U1|va\(4) & (\U1|vireg\(4) & !\U1|LessThan1~27COUT1_60\)) # (!\U1|va\(4) & ((\U1|vireg\(4)) # (!\U1|LessThan1~27COUT1_60\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|va\(4),
	datab => \U1|vireg\(4),
	cin0 => \U1|LessThan1~27_cout0\,
	cin1 => \U1|LessThan1~27COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan1~20\,
	cout => \U1|LessThan1~22_cout\);

-- Location: LC_X6_Y8_N4
\U1|Add1~20\ : maxv_lcell
-- Equation(s):
-- \U1|Add1~20_combout\ = \U1|va\(5) $ ((((!\U1|Add1~17\))))
-- \U1|Add1~22\ = CARRY((\U1|va\(5) & ((!\U1|Add1~17COUT1_54\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|va\(5),
	cin0 => \U1|Add1~17\,
	cin1 => \U1|Add1~17COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add1~20_combout\,
	cout => \U1|Add1~22\);

-- Location: LC_X6_Y7_N5
\U1|Add2~20\ : maxv_lcell
-- Equation(s):
-- \U1|Add2~20_combout\ = (\U1|va\(5) $ ((!\U1|Add2~17\)))
-- \U1|Add2~22\ = CARRY(((!\U1|va\(5) & !\U1|Add2~17\)))
-- \U1|Add2~22COUT1_62\ = CARRY(((!\U1|va\(5) & !\U1|Add2~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|va\(5),
	cin => \U1|Add2~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add2~20_combout\,
	cout0 => \U1|Add2~22\,
	cout1 => \U1|Add2~22COUT1_62\);

-- Location: LC_X6_Y8_N8
\U1|va[5]\ : maxv_lcell
-- Equation(s):
-- \U1|va\(5) = DFFEAS((\U1|va[1]~10_combout\ & (((\U1|Add2~20_combout\)))) # (!\U1|va[1]~10_combout\ & (\U1|Add1~20_combout\)), GLOBAL(\clk~combout\), VCC, , \U1|va~12_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caca",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U1|Add1~20_combout\,
	datab => \U1|Add2~20_combout\,
	datac => \U1|va[1]~10_combout\,
	aclr => GND,
	ena => \U1|va~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|va\(5));

-- Location: LC_X6_Y7_N6
\U1|Add2~25\ : maxv_lcell
-- Equation(s):
-- \U1|Add2~25_combout\ = (\U1|va\(6) $ (((!\U1|Add2~17\ & \U1|Add2~22\) # (\U1|Add2~17\ & \U1|Add2~22COUT1_62\))))
-- \U1|Add2~27\ = CARRY(((\U1|va\(6)) # (!\U1|Add2~22\)))
-- \U1|Add2~27COUT1_64\ = CARRY(((\U1|va\(6)) # (!\U1|Add2~22COUT1_62\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|va\(6),
	cin => \U1|Add2~17\,
	cin0 => \U1|Add2~22\,
	cin1 => \U1|Add2~22COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add2~25_combout\,
	cout0 => \U1|Add2~27\,
	cout1 => \U1|Add2~27COUT1_64\);

-- Location: LC_X6_Y8_N5
\U1|Add1~25\ : maxv_lcell
-- Equation(s):
-- \U1|Add1~25_combout\ = \U1|va\(6) $ ((((\U1|Add1~22\))))
-- \U1|Add1~27\ = CARRY(((!\U1|Add1~22\)) # (!\U1|va\(6)))
-- \U1|Add1~27COUT1_56\ = CARRY(((!\U1|Add1~22\)) # (!\U1|va\(6)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|va\(6),
	cin => \U1|Add1~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add1~25_combout\,
	cout0 => \U1|Add1~27\,
	cout1 => \U1|Add1~27COUT1_56\);

-- Location: LC_X5_Y8_N9
\U1|va[6]\ : maxv_lcell
-- Equation(s):
-- \U1|va\(6) = DFFEAS(((\U1|va[1]~10_combout\ & (\U1|Add2~25_combout\)) # (!\U1|va[1]~10_combout\ & ((\U1|Add1~25_combout\)))), GLOBAL(\clk~combout\), VCC, , \U1|va~12_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U1|va[1]~10_combout\,
	datac => \U1|Add2~25_combout\,
	datad => \U1|Add1~25_combout\,
	aclr => GND,
	ena => \U1|va~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|va\(6));

-- Location: LC_X6_Y7_N7
\U1|Add2~30\ : maxv_lcell
-- Equation(s):
-- \U1|Add2~30_combout\ = (\U1|va\(7) $ ((!(!\U1|Add2~17\ & \U1|Add2~27\) # (\U1|Add2~17\ & \U1|Add2~27COUT1_64\))))
-- \U1|Add2~32\ = CARRY(((!\U1|va\(7) & !\U1|Add2~27\)))
-- \U1|Add2~32COUT1_66\ = CARRY(((!\U1|va\(7) & !\U1|Add2~27COUT1_64\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|va\(7),
	cin => \U1|Add2~17\,
	cin0 => \U1|Add2~27\,
	cin1 => \U1|Add2~27COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add2~30_combout\,
	cout0 => \U1|Add2~32\,
	cout1 => \U1|Add2~32COUT1_66\);

-- Location: LC_X6_Y8_N6
\U1|Add1~30\ : maxv_lcell
-- Equation(s):
-- \U1|Add1~30_combout\ = (\U1|va\(7) $ ((!(!\U1|Add1~22\ & \U1|Add1~27\) # (\U1|Add1~22\ & \U1|Add1~27COUT1_56\))))
-- \U1|Add1~32\ = CARRY(((\U1|va\(7) & !\U1|Add1~27\)))
-- \U1|Add1~32COUT1_58\ = CARRY(((\U1|va\(7) & !\U1|Add1~27COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|va\(7),
	cin => \U1|Add1~22\,
	cin0 => \U1|Add1~27\,
	cin1 => \U1|Add1~27COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add1~30_combout\,
	cout0 => \U1|Add1~32\,
	cout1 => \U1|Add1~32COUT1_58\);

-- Location: LC_X5_Y8_N4
\U1|va[7]\ : maxv_lcell
-- Equation(s):
-- \U1|va\(7) = DFFEAS(((\U1|va[1]~10_combout\ & (\U1|Add2~30_combout\)) # (!\U1|va[1]~10_combout\ & ((\U1|Add1~30_combout\)))), GLOBAL(\clk~combout\), VCC, , \U1|va~12_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U1|Add2~30_combout\,
	datac => \U1|Add1~30_combout\,
	datad => \U1|va[1]~10_combout\,
	aclr => GND,
	ena => \U1|va~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|va\(7));

-- Location: LC_X8_Y6_N7
\U1|vireg[7]\ : maxv_lcell
-- Equation(s):
-- \U1|vireg\(7) = DFFEAS((\U1|LessThan6~0\ $ (((!\U1|vi[0]~4_combout\) # (!\U1|vi[0]~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c03f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U1|vi[0]~0_combout\,
	datac => \U1|vi[0]~4_combout\,
	datad => \U1|LessThan6~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|vireg\(7));

-- Location: LC_X9_Y6_N2
\U1|vireg[6]\ : maxv_lcell
-- Equation(s):
-- \U1|vireg\(6) = DFFEAS(\U1|LessThan6~0\ $ ((((!\U1|vi[0]~7_combout\ & !\U1|Add3~36_combout\)) # (!\U1|vi[2]~6_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a857",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U1|vi[2]~6_combout\,
	datab => \U1|vi[0]~7_combout\,
	datac => \U1|Add3~36_combout\,
	datad => \U1|LessThan6~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|vireg\(6));

-- Location: LC_X7_Y6_N4
\U1|vi[5]~9\ : maxv_lcell
-- Equation(s):
-- \U1|vi[5]~9_combout\ = (\U1|Add3~42_combout\) # ((!\U1|Add3~55_combout\ & ((\U1|Add3~54_combout\) # (\U1|Add3~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfce",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add3~54_combout\,
	datab => \U1|Add3~42_combout\,
	datac => \U1|Add3~55_combout\,
	datad => \U1|Add3~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|vi[5]~9_combout\);

-- Location: LC_X8_Y6_N1
\U1|vireg[5]\ : maxv_lcell
-- Equation(s):
-- \U1|vireg\(5) = DFFEAS(\U1|LessThan6~0\ $ ((((\U1|vi[0]~0_combout\ & \U1|vi[5]~9_combout\)) # (!\U1|vi[0]~4_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "65a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U1|LessThan6~0\,
	datab => \U1|vi[0]~0_combout\,
	datac => \U1|vi[0]~4_combout\,
	datad => \U1|vi[5]~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|vireg\(5));

-- Location: LC_X8_Y7_N5
\U1|LessThan1~17\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan1~17_cout0\ = CARRY((\U1|va\(5) & ((!\U1|LessThan1~22_cout\) # (!\U1|vireg\(5)))) # (!\U1|va\(5) & (!\U1|vireg\(5) & !\U1|LessThan1~22_cout\)))
-- \U1|LessThan1~17COUT1_62\ = CARRY((\U1|va\(5) & ((!\U1|LessThan1~22_cout\) # (!\U1|vireg\(5)))) # (!\U1|va\(5) & (!\U1|vireg\(5) & !\U1|LessThan1~22_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|va\(5),
	datab => \U1|vireg\(5),
	cin => \U1|LessThan1~22_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan1~15\,
	cout0 => \U1|LessThan1~17_cout0\,
	cout1 => \U1|LessThan1~17COUT1_62\);

-- Location: LC_X8_Y7_N6
\U1|LessThan1~12\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan1~12_cout0\ = CARRY((\U1|vireg\(6) & ((!\U1|LessThan1~17_cout0\) # (!\U1|va\(6)))) # (!\U1|vireg\(6) & (!\U1|va\(6) & !\U1|LessThan1~17_cout0\)))
-- \U1|LessThan1~12COUT1_64\ = CARRY((\U1|vireg\(6) & ((!\U1|LessThan1~17COUT1_62\) # (!\U1|va\(6)))) # (!\U1|vireg\(6) & (!\U1|va\(6) & !\U1|LessThan1~17COUT1_62\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vireg\(6),
	datab => \U1|va\(6),
	cin => \U1|LessThan1~22_cout\,
	cin0 => \U1|LessThan1~17_cout0\,
	cin1 => \U1|LessThan1~17COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan1~10\,
	cout0 => \U1|LessThan1~12_cout0\,
	cout1 => \U1|LessThan1~12COUT1_64\);

-- Location: LC_X8_Y7_N7
\U1|LessThan1~7\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan1~7_cout0\ = CARRY((\U1|va\(7) & ((!\U1|LessThan1~12_cout0\) # (!\U1|vireg\(7)))) # (!\U1|va\(7) & (!\U1|vireg\(7) & !\U1|LessThan1~12_cout0\)))
-- \U1|LessThan1~7COUT1_66\ = CARRY((\U1|va\(7) & ((!\U1|LessThan1~12COUT1_64\) # (!\U1|vireg\(7)))) # (!\U1|va\(7) & (!\U1|vireg\(7) & !\U1|LessThan1~12COUT1_64\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|va\(7),
	datab => \U1|vireg\(7),
	cin => \U1|LessThan1~22_cout\,
	cin0 => \U1|LessThan1~12_cout0\,
	cin1 => \U1|LessThan1~12COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan1~5\,
	cout0 => \U1|LessThan1~7_cout0\,
	cout1 => \U1|LessThan1~7COUT1_66\);

-- Location: LC_X8_Y7_N8
\U1|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan1~0_combout\ = ((\U1|va\(8) & ((!\U1|vireg\(8)) # (!(!\U1|LessThan1~22_cout\ & \U1|LessThan1~7_cout0\) # (\U1|LessThan1~22_cout\ & \U1|LessThan1~7COUT1_66\)))) # (!\U1|va\(8) & (!(!\U1|LessThan1~22_cout\ & \U1|LessThan1~7_cout0\) # 
-- (\U1|LessThan1~22_cout\ & \U1|LessThan1~7COUT1_66\) & !\U1|vireg\(8))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ccf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|va\(8),
	datad => \U1|vireg\(8),
	cin => \U1|LessThan1~22_cout\,
	cin0 => \U1|LessThan1~7_cout0\,
	cin1 => \U1|LessThan1~7COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan1~0_combout\);

-- Location: LC_X5_Y9_N1
\U1|t~2\ : maxv_lcell
-- Equation(s):
-- \U1|t~2_combout\ = (\U1|va\(8) & (\U1|LessThan3~0_combout\)) # (!\U1|va\(8) & (((\U1|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|va\(8),
	datab => \U1|LessThan3~0_combout\,
	datad => \U1|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|t~2_combout\);

-- Location: LC_X5_Y9_N9
\U1|LessThan5~6\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan5~6_combout\ = (((\U1|LessThan5~4_combout\ & \U1|Add0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|LessThan5~4_combout\,
	datad => \U1|Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan5~6_combout\);

-- Location: LC_X5_Y9_N0
\U1|va~4\ : maxv_lcell
-- Equation(s):
-- \U1|va~4_combout\ = (\U1|va\(8) & (((!\U1|LessThan1~0_combout\)))) # (!\U1|va\(8) & (!\U1|LessThan3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "11bb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|va\(8),
	datab => \U1|LessThan3~0_combout\,
	datad => \U1|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|va~4_combout\);

-- Location: LC_X5_Y9_N7
\U1|va[1]~5\ : maxv_lcell
-- Equation(s):
-- \U1|va[1]~5_combout\ = (!\U1|va~4_combout\ & ((\U1|LessThan5~1_combout\) # ((\U1|t~24_combout\ & \U1|LessThan5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|t~24_combout\,
	datab => \U1|LessThan5~6_combout\,
	datac => \U1|va~4_combout\,
	datad => \U1|LessThan5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|va[1]~5_combout\);

-- Location: LC_X5_Y9_N8
\U1|t[19]\ : maxv_lcell
-- Equation(s):
-- \U1|t\(19) = DFFEAS(((!\U1|t~2_combout\ & (\U1|Add0~10_combout\ & !\U1|va[1]~5_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U1|t~2_combout\,
	datac => \U1|Add0~10_combout\,
	datad => \U1|va[1]~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|t\(19));

-- Location: LC_X3_Y10_N2
\U1|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan0~1_combout\ = ((\U1|Add0~25_combout\) # ((\U1|LessThan0~0_combout\ & \U1|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|LessThan0~0_combout\,
	datac => \U1|Add0~30_combout\,
	datad => \U1|Add0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan0~1_combout\);

-- Location: LC_X3_Y10_N5
\U1|LessThan0~3\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan0~3_combout\ = (\U1|Add0~20_combout\) # ((\U1|LessThan0~1_combout\ & (\U1|Add0~50_combout\ & \U1|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~20_combout\,
	datab => \U1|LessThan0~1_combout\,
	datac => \U1|Add0~50_combout\,
	datad => \U1|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan0~3_combout\);

-- Location: LC_X4_Y9_N7
\U1|LessThan0~6\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan0~6_combout\ = (!\U1|Add0~5_combout\ & (((!\U1|LessThan0~5_combout\) # (!\U1|Add0~95_combout\)) # (!\U1|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "007f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan0~3_combout\,
	datab => \U1|Add0~95_combout\,
	datac => \U1|LessThan0~5_combout\,
	datad => \U1|Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan0~6_combout\);

-- Location: LC_X4_Y9_N8
\U1|LessThan0~7\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan0~7_combout\ = (!\U1|Add0~10_combout\ & (!\U1|Add0~15_combout\ & ((\U1|LessThan0~6_combout\) # (!\U1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0301",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~0_combout\,
	datab => \U1|Add0~10_combout\,
	datac => \U1|Add0~15_combout\,
	datad => \U1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan0~7_combout\);

-- Location: LC_X5_Y9_N6
\U1|t~24\ : maxv_lcell
-- Equation(s):
-- \U1|t~24_combout\ = (\U1|LessThan0~7_combout\) # ((\U1|va\(8) & (!\U1|LessThan3~0_combout\)) # (!\U1|va\(8) & ((!\U1|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2f7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|va\(8),
	datab => \U1|LessThan3~0_combout\,
	datac => \U1|LessThan0~7_combout\,
	datad => \U1|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|t~24_combout\);

-- Location: LC_X5_Y9_N5
\U1|va~12\ : maxv_lcell
-- Equation(s):
-- \U1|va~12_combout\ = ((!\U1|va~4_combout\ & ((\U1|LessThan5~6_combout\) # (\U1|LessThan5~1_combout\)))) # (!\U1|t~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f5d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|t~24_combout\,
	datab => \U1|LessThan5~6_combout\,
	datac => \U1|va~4_combout\,
	datad => \U1|LessThan5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|va~12_combout\);

-- Location: LC_X5_Y8_N2
\U1|va[0]\ : maxv_lcell
-- Equation(s):
-- \U1|va\(0) = DFFEAS((\U1|va\(0) $ ((\U1|va~12_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U1|va\(0),
	datac => \U1|va~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|va\(0));

-- Location: LC_X5_Y8_N6
\U1|va[1]\ : maxv_lcell
-- Equation(s):
-- \U1|va\(1) = DFFEAS(((\U1|va[1]~10_combout\ & (\U1|Add2~35_combout\)) # (!\U1|va[1]~10_combout\ & ((\U1|Add1~35_combout\)))), GLOBAL(\clk~combout\), VCC, , \U1|va~12_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U1|Add2~35_combout\,
	datac => \U1|Add1~35_combout\,
	datad => \U1|va[1]~10_combout\,
	aclr => GND,
	ena => \U1|va~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|va\(1));

-- Location: LC_X11_Y7_N0
\U2|speedreg[1]\ : maxv_lcell
-- Equation(s):
-- \U2|speedreg\(1) = DFFEAS(((\U1|va\(8) $ (\U1|va\(1)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \U1|va\(8),
	datad => \U1|va\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|speedreg\(1));

-- Location: LC_X11_Y7_N6
\U2|Mult0|auto_generated|cs1a[0]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|cs1a\(0) = ((\U2|speedreg\(1)))
-- \U2|Mult0|auto_generated|cs1a[0]~COUT\ = CARRY((\U2|Mult0|auto_generated|cs1a\(0)))
-- \U2|Mult0|auto_generated|cs1a[0]~COUTCOUT1_14\ = CARRY((\U2|Mult0|auto_generated|cs1a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs1a\(0),
	datab => \U2|speedreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|cs1a\(0),
	cout0 => \U2|Mult0|auto_generated|cs1a[0]~COUT\,
	cout1 => \U2|Mult0|auto_generated|cs1a[0]~COUTCOUT1_14\);

-- Location: LC_X10_Y7_N6
\U2|speedreg[0]\ : maxv_lcell
-- Equation(s):
-- \U2|speedreg\(0) = DFFEAS(((\U1|va\(8) $ (\U1|va\(0)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \U1|va\(8),
	datad => \U1|va\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|speedreg\(0));

-- Location: LC_X11_Y7_N1
\U2|Mult0|auto_generated|cs2a[0]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|cs2a\(0) = ((\U2|speedreg\(0)))
-- \U2|Mult0|auto_generated|cs2a[0]~COUT\ = CARRY((\U2|Mult0|auto_generated|cs1a\(0)))
-- \U2|Mult0|auto_generated|cs2a[0]~COUTCOUT1_14\ = CARRY((\U2|Mult0|auto_generated|cs1a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs1a\(0),
	datab => \U2|speedreg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|cs2a\(0),
	cout0 => \U2|Mult0|auto_generated|cs2a[0]~COUT\,
	cout1 => \U2|Mult0|auto_generated|cs2a[0]~COUTCOUT1_14\);

-- Location: LC_X10_Y7_N5
\U2|speedreg[6]\ : maxv_lcell
-- Equation(s):
-- \U2|speedreg\(6) = DFFEAS(((\U1|va\(8) $ (\U1|va\(6)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \U1|va\(8),
	datad => \U1|va\(6),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|speedreg\(6));

-- Location: LC_X10_Y7_N7
\U2|speedreg[5]\ : maxv_lcell
-- Equation(s):
-- \U2|speedreg\(5) = DFFEAS((\U1|va\(5) $ ((\U1|va\(8)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U1|va\(5),
	datac => \U1|va\(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|speedreg\(5));

-- Location: LC_X7_Y8_N1
\U2|speedreg[7]\ : maxv_lcell
-- Equation(s):
-- \U2|speedreg\(7) = DFFEAS(((\U1|va\(8) $ (\U1|va\(7)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \U1|va\(8),
	datad => \U1|va\(7),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|speedreg\(7));

-- Location: LC_X10_Y7_N0
\U2|speedreg[4]\ : maxv_lcell
-- Equation(s):
-- \U2|speedreg\(4) = DFFEAS(((\U1|va\(8) $ (\U1|va\(4)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \U1|va\(8),
	datad => \U1|va\(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|speedreg\(4));

-- Location: LC_X10_Y7_N9
\U2|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \U2|LessThan0~1_combout\ = (\U2|speedreg\(6)) # ((\U2|speedreg\(5)) # ((\U2|speedreg\(7)) # (\U2|speedreg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|speedreg\(6),
	datab => \U2|speedreg\(5),
	datac => \U2|speedreg\(7),
	datad => \U2|speedreg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|LessThan0~1_combout\);

-- Location: LC_X10_Y7_N2
\U2|speedreg[2]\ : maxv_lcell
-- Equation(s):
-- \U2|speedreg\(2) = DFFEAS((\U1|va\(2) $ ((\U1|va\(8)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U1|va\(2),
	datac => \U1|va\(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|speedreg\(2));

-- Location: LC_X11_Y7_N5
\U2|speedreg[3]\ : maxv_lcell
-- Equation(s):
-- \U2|speedreg\(3) = DFFEAS(((\U1|va\(8) $ (\U1|va\(3)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \U1|va\(8),
	datad => \U1|va\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|speedreg\(3));

-- Location: LC_X10_Y7_N3
\U2|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \U2|LessThan0~0_combout\ = ((\U2|speedreg\(2)) # ((\U2|speedreg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|speedreg\(2),
	datad => \U2|speedreg\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|LessThan0~0_combout\);

-- Location: LC_X10_Y7_N4
\U2|LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \U2|LessThan0~2_combout\ = (\U2|Mult0|auto_generated|cs2a\(0)) # ((\U2|LessThan0~1_combout\) # ((\U2|Mult0|auto_generated|cs1a\(0)) # (\U2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs2a\(0),
	datab => \U2|LessThan0~1_combout\,
	datac => \U2|Mult0|auto_generated|cs1a\(0),
	datad => \U2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|LessThan0~2_combout\);

-- Location: LC_X10_Y9_N8
\U2|timechunk[9]\ : maxv_lcell
-- Equation(s):
-- \U2|timechunk\(9) = DFFEAS((\U2|Add0~25_combout\ & (\U2|LessThan1~5_combout\ & ((\U2|LessThan1~8_combout\)))), GLOBAL(\clk~combout\), VCC, , \U2|LessThan0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|Add0~25_combout\,
	datab => \U2|LessThan1~5_combout\,
	datad => \U2|LessThan1~8_combout\,
	aclr => GND,
	ena => \U2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|timechunk\(9));

-- Location: LC_X11_Y9_N5
\U2|Add0~0\ : maxv_lcell
-- Equation(s):
-- \U2|Add0~0_combout\ = (!\U2|timechunk\(0))
-- \U2|Add0~2\ = CARRY((\U2|timechunk\(0)))
-- \U2|Add0~2COUT1_123\ = CARRY((\U2|timechunk\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|timechunk\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Add0~0_combout\,
	cout0 => \U2|Add0~2\,
	cout1 => \U2|Add0~2COUT1_123\);

-- Location: LC_X11_Y9_N4
\U2|timechunk[0]\ : maxv_lcell
-- Equation(s):
-- \U2|timechunk\(0) = DFFEAS(((\U2|LessThan1~5_combout\ & (\U2|Add0~0_combout\ & \U2|LessThan1~8_combout\))), GLOBAL(\clk~combout\), VCC, , \U2|LessThan0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U2|LessThan1~5_combout\,
	datac => \U2|Add0~0_combout\,
	datad => \U2|LessThan1~8_combout\,
	aclr => GND,
	ena => \U2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|timechunk\(0));

-- Location: LC_X11_Y9_N6
\U2|Add0~5\ : maxv_lcell
-- Equation(s):
-- \U2|Add0~5_combout\ = (\U2|timechunk\(1) $ ((\U2|Add0~2\)))
-- \U2|Add0~7\ = CARRY(((!\U2|Add0~2\) # (!\U2|timechunk\(1))))
-- \U2|Add0~7COUT1_125\ = CARRY(((!\U2|Add0~2COUT1_123\) # (!\U2|timechunk\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|timechunk\(1),
	cin0 => \U2|Add0~2\,
	cin1 => \U2|Add0~2COUT1_123\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Add0~5_combout\,
	cout0 => \U2|Add0~7\,
	cout1 => \U2|Add0~7COUT1_125\);

-- Location: LC_X11_Y9_N1
\U2|timechunk[1]\ : maxv_lcell
-- Equation(s):
-- \U2|timechunk\(1) = DFFEAS(((\U2|LessThan1~5_combout\ & (\U2|Add0~5_combout\ & \U2|LessThan1~8_combout\))), GLOBAL(\clk~combout\), VCC, , \U2|LessThan0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U2|LessThan1~5_combout\,
	datac => \U2|Add0~5_combout\,
	datad => \U2|LessThan1~8_combout\,
	aclr => GND,
	ena => \U2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|timechunk\(1));

-- Location: LC_X11_Y9_N7
\U2|Add0~65\ : maxv_lcell
-- Equation(s):
-- \U2|Add0~65_combout\ = (\U2|timechunk\(2) $ ((!\U2|Add0~7\)))
-- \U2|Add0~67\ = CARRY(((\U2|timechunk\(2) & !\U2|Add0~7\)))
-- \U2|Add0~67COUT1_127\ = CARRY(((\U2|timechunk\(2) & !\U2|Add0~7COUT1_125\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|timechunk\(2),
	cin0 => \U2|Add0~7\,
	cin1 => \U2|Add0~7COUT1_125\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Add0~65_combout\,
	cout0 => \U2|Add0~67\,
	cout1 => \U2|Add0~67COUT1_127\);

-- Location: LC_X9_Y9_N2
\U2|timechunk[2]\ : maxv_lcell
-- Equation(s):
-- \U2|timechunk\(2) = DFFEAS(((\U2|Add0~65_combout\ & (\U2|LessThan1~5_combout\ & \U2|LessThan1~8_combout\))), GLOBAL(\clk~combout\), VCC, , \U2|LessThan0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U2|Add0~65_combout\,
	datac => \U2|LessThan1~5_combout\,
	datad => \U2|LessThan1~8_combout\,
	aclr => GND,
	ena => \U2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|timechunk\(2));

-- Location: LC_X11_Y9_N8
\U2|Add0~70\ : maxv_lcell
-- Equation(s):
-- \U2|Add0~70_combout\ = (\U2|timechunk\(3) $ ((\U2|Add0~67\)))
-- \U2|Add0~72\ = CARRY(((!\U2|Add0~67\) # (!\U2|timechunk\(3))))
-- \U2|Add0~72COUT1_129\ = CARRY(((!\U2|Add0~67COUT1_127\) # (!\U2|timechunk\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|timechunk\(3),
	cin0 => \U2|Add0~67\,
	cin1 => \U2|Add0~67COUT1_127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Add0~70_combout\,
	cout0 => \U2|Add0~72\,
	cout1 => \U2|Add0~72COUT1_129\);

-- Location: LC_X11_Y9_N0
\U2|timechunk[3]\ : maxv_lcell
-- Equation(s):
-- \U2|timechunk\(3) = DFFEAS((\U2|Add0~70_combout\ & (\U2|LessThan1~5_combout\ & ((\U2|LessThan1~8_combout\)))), GLOBAL(\clk~combout\), VCC, , \U2|LessThan0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|Add0~70_combout\,
	datab => \U2|LessThan1~5_combout\,
	datad => \U2|LessThan1~8_combout\,
	aclr => GND,
	ena => \U2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|timechunk\(3));

-- Location: LC_X11_Y9_N9
\U2|Add0~45\ : maxv_lcell
-- Equation(s):
-- \U2|Add0~45_combout\ = \U2|timechunk\(4) $ ((((!\U2|Add0~72\))))
-- \U2|Add0~47\ = CARRY((\U2|timechunk\(4) & ((!\U2|Add0~72COUT1_129\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|timechunk\(4),
	cin0 => \U2|Add0~72\,
	cin1 => \U2|Add0~72COUT1_129\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Add0~45_combout\,
	cout => \U2|Add0~47\);

-- Location: LC_X11_Y9_N3
\U2|timechunk[4]\ : maxv_lcell
-- Equation(s):
-- \U2|timechunk\(4) = DFFEAS(((\U2|Add0~45_combout\ & (\U2|LessThan1~8_combout\ & \U2|LessThan1~5_combout\))), GLOBAL(\clk~combout\), VCC, , \U2|LessThan0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U2|Add0~45_combout\,
	datac => \U2|LessThan1~8_combout\,
	datad => \U2|LessThan1~5_combout\,
	aclr => GND,
	ena => \U2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|timechunk\(4));

-- Location: LC_X12_Y9_N0
\U2|Add0~60\ : maxv_lcell
-- Equation(s):
-- \U2|Add0~60_combout\ = (\U2|timechunk\(5) $ ((\U2|Add0~47\)))
-- \U2|Add0~62\ = CARRY(((!\U2|Add0~47\) # (!\U2|timechunk\(5))))
-- \U2|Add0~62COUT1_131\ = CARRY(((!\U2|Add0~47\) # (!\U2|timechunk\(5))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|timechunk\(5),
	cin => \U2|Add0~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Add0~60_combout\,
	cout0 => \U2|Add0~62\,
	cout1 => \U2|Add0~62COUT1_131\);

-- Location: LC_X10_Y9_N0
\U2|timechunk[5]\ : maxv_lcell
-- Equation(s):
-- \U2|timechunk\(5) = DFFEAS(((\U2|LessThan1~5_combout\ & (\U2|Add0~60_combout\ & \U2|LessThan1~8_combout\))), GLOBAL(\clk~combout\), VCC, , \U2|LessThan0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U2|LessThan1~5_combout\,
	datac => \U2|Add0~60_combout\,
	datad => \U2|LessThan1~8_combout\,
	aclr => GND,
	ena => \U2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|timechunk\(5));

-- Location: LC_X12_Y9_N1
\U2|Add0~50\ : maxv_lcell
-- Equation(s):
-- \U2|Add0~50_combout\ = (\U2|timechunk\(6) $ ((!(!\U2|Add0~47\ & \U2|Add0~62\) # (\U2|Add0~47\ & \U2|Add0~62COUT1_131\))))
-- \U2|Add0~52\ = CARRY(((\U2|timechunk\(6) & !\U2|Add0~62\)))
-- \U2|Add0~52COUT1_133\ = CARRY(((\U2|timechunk\(6) & !\U2|Add0~62COUT1_131\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|timechunk\(6),
	cin => \U2|Add0~47\,
	cin0 => \U2|Add0~62\,
	cin1 => \U2|Add0~62COUT1_131\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Add0~50_combout\,
	cout0 => \U2|Add0~52\,
	cout1 => \U2|Add0~52COUT1_133\);

-- Location: LC_X8_Y9_N3
\U2|timechunk[6]\ : maxv_lcell
-- Equation(s):
-- \U2|timechunk\(6) = DFFEAS((\U2|Add0~50_combout\ & (((\U2|LessThan1~5_combout\ & \U2|LessThan1~8_combout\)))), GLOBAL(\clk~combout\), VCC, , \U2|LessThan0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|Add0~50_combout\,
	datac => \U2|LessThan1~5_combout\,
	datad => \U2|LessThan1~8_combout\,
	aclr => GND,
	ena => \U2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|timechunk\(6));

-- Location: LC_X12_Y9_N2
\U2|Add0~55\ : maxv_lcell
-- Equation(s):
-- \U2|Add0~55_combout\ = (\U2|timechunk\(7) $ (((!\U2|Add0~47\ & \U2|Add0~52\) # (\U2|Add0~47\ & \U2|Add0~52COUT1_133\))))
-- \U2|Add0~57\ = CARRY(((!\U2|Add0~52\) # (!\U2|timechunk\(7))))
-- \U2|Add0~57COUT1_135\ = CARRY(((!\U2|Add0~52COUT1_133\) # (!\U2|timechunk\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|timechunk\(7),
	cin => \U2|Add0~47\,
	cin0 => \U2|Add0~52\,
	cin1 => \U2|Add0~52COUT1_133\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Add0~55_combout\,
	cout0 => \U2|Add0~57\,
	cout1 => \U2|Add0~57COUT1_135\);

-- Location: LC_X10_Y9_N5
\U2|timechunk[7]\ : maxv_lcell
-- Equation(s):
-- \U2|timechunk\(7) = DFFEAS((\U2|Add0~55_combout\ & (\U2|LessThan1~5_combout\ & ((\U2|LessThan1~8_combout\)))), GLOBAL(\clk~combout\), VCC, , \U2|LessThan0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|Add0~55_combout\,
	datab => \U2|LessThan1~5_combout\,
	datad => \U2|LessThan1~8_combout\,
	aclr => GND,
	ena => \U2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|timechunk\(7));

-- Location: LC_X12_Y9_N3
\U2|Add0~10\ : maxv_lcell
-- Equation(s):
-- \U2|Add0~10_combout\ = \U2|timechunk\(8) $ ((((!(!\U2|Add0~47\ & \U2|Add0~57\) # (\U2|Add0~47\ & \U2|Add0~57COUT1_135\)))))
-- \U2|Add0~12\ = CARRY((\U2|timechunk\(8) & ((!\U2|Add0~57\))))
-- \U2|Add0~12COUT1_137\ = CARRY((\U2|timechunk\(8) & ((!\U2|Add0~57COUT1_135\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|timechunk\(8),
	cin => \U2|Add0~47\,
	cin0 => \U2|Add0~57\,
	cin1 => \U2|Add0~57COUT1_135\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Add0~10_combout\,
	cout0 => \U2|Add0~12\,
	cout1 => \U2|Add0~12COUT1_137\);

-- Location: LC_X8_Y9_N4
\U2|timechunk[8]\ : maxv_lcell
-- Equation(s):
-- \U2|timechunk\(8) = DFFEAS((\U2|LessThan1~5_combout\ & (\U2|Add0~10_combout\ & ((\U2|LessThan1~8_combout\)))), GLOBAL(\clk~combout\), VCC, , \U2|LessThan0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|LessThan1~5_combout\,
	datab => \U2|Add0~10_combout\,
	datad => \U2|LessThan1~8_combout\,
	aclr => GND,
	ena => \U2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|timechunk\(8));

-- Location: LC_X12_Y9_N4
\U2|Add0~25\ : maxv_lcell
-- Equation(s):
-- \U2|Add0~25_combout\ = (\U2|timechunk\(9) $ (((!\U2|Add0~47\ & \U2|Add0~12\) # (\U2|Add0~47\ & \U2|Add0~12COUT1_137\))))
-- \U2|Add0~27\ = CARRY(((!\U2|Add0~12COUT1_137\) # (!\U2|timechunk\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|timechunk\(9),
	cin => \U2|Add0~47\,
	cin0 => \U2|Add0~12\,
	cin1 => \U2|Add0~12COUT1_137\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Add0~25_combout\,
	cout => \U2|Add0~27\);

-- Location: LC_X10_Y9_N4
\U2|timechunk[10]\ : maxv_lcell
-- Equation(s):
-- \U2|timechunk\(10) = DFFEAS(((\U2|LessThan1~5_combout\ & (\U2|Add0~15_combout\ & \U2|LessThan1~8_combout\))), GLOBAL(\clk~combout\), VCC, , \U2|LessThan0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U2|LessThan1~5_combout\,
	datac => \U2|Add0~15_combout\,
	datad => \U2|LessThan1~8_combout\,
	aclr => GND,
	ena => \U2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|timechunk\(10));

-- Location: LC_X12_Y9_N5
\U2|Add0~15\ : maxv_lcell
-- Equation(s):
-- \U2|Add0~15_combout\ = (\U2|timechunk\(10) $ ((!\U2|Add0~27\)))
-- \U2|Add0~17\ = CARRY(((\U2|timechunk\(10) & !\U2|Add0~27\)))
-- \U2|Add0~17COUT1_139\ = CARRY(((\U2|timechunk\(10) & !\U2|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|timechunk\(10),
	cin => \U2|Add0~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Add0~15_combout\,
	cout0 => \U2|Add0~17\,
	cout1 => \U2|Add0~17COUT1_139\);

-- Location: LC_X11_Y7_N2
\U2|Mult0|auto_generated|cs2a[1]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|cs2a\(1) = (\U2|speedreg\(2) $ ((\U2|Mult0|auto_generated|cs2a[0]~COUT\)))
-- \U2|Mult0|auto_generated|cs2a[1]~COUT\ = CARRY((!\U2|speedreg\(3) & ((!\U2|Mult0|auto_generated|cs2a[0]~COUT\) # (!\U2|speedreg\(2)))))
-- \U2|Mult0|auto_generated|cs2a[1]~COUTCOUT1_16\ = CARRY((!\U2|speedreg\(3) & ((!\U2|Mult0|auto_generated|cs2a[0]~COUTCOUT1_14\) # (!\U2|speedreg\(2)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c15",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|speedreg\(3),
	datab => \U2|speedreg\(2),
	cin0 => \U2|Mult0|auto_generated|cs2a[0]~COUT\,
	cin1 => \U2|Mult0|auto_generated|cs2a[0]~COUTCOUT1_14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|cs2a\(1),
	cout0 => \U2|Mult0|auto_generated|cs2a[1]~COUT\,
	cout1 => \U2|Mult0|auto_generated|cs2a[1]~COUTCOUT1_16\);

-- Location: LC_X11_Y7_N3
\U2|Mult0|auto_generated|cs2a[2]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|cs2a\(2) = \U2|speedreg\(4) $ ((((!\U2|Mult0|auto_generated|cs2a[1]~COUT\))))
-- \U2|Mult0|auto_generated|cs2a[2]~COUT\ = CARRY((\U2|speedreg\(5)) # ((\U2|speedreg\(4) & !\U2|Mult0|auto_generated|cs2a[1]~COUT\)))
-- \U2|Mult0|auto_generated|cs2a[2]~COUTCOUT1_18\ = CARRY((\U2|speedreg\(5)) # ((\U2|speedreg\(4) & !\U2|Mult0|auto_generated|cs2a[1]~COUTCOUT1_16\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a5ce",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|speedreg\(4),
	datab => \U2|speedreg\(5),
	cin0 => \U2|Mult0|auto_generated|cs2a[1]~COUT\,
	cin1 => \U2|Mult0|auto_generated|cs2a[1]~COUTCOUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|cs2a\(2),
	cout0 => \U2|Mult0|auto_generated|cs2a[2]~COUT\,
	cout1 => \U2|Mult0|auto_generated|cs2a[2]~COUTCOUT1_18\);

-- Location: LC_X11_Y7_N7
\U2|Mult0|auto_generated|cs1a[1]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|cs1a\(1) = \U2|speedreg\(3) $ (((\U2|speedreg\(2) & (\U2|Mult0|auto_generated|cs1a[0]~COUT\))))
-- \U2|Mult0|auto_generated|cs1a[1]~COUT\ = CARRY((!\U2|speedreg\(3) & ((!\U2|Mult0|auto_generated|cs1a[0]~COUT\) # (!\U2|speedreg\(2)))))
-- \U2|Mult0|auto_generated|cs1a[1]~COUTCOUT1_16\ = CARRY((!\U2|speedreg\(3) & ((!\U2|Mult0|auto_generated|cs1a[0]~COUTCOUT1_14\) # (!\U2|speedreg\(2)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "6a15",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|speedreg\(3),
	datab => \U2|speedreg\(2),
	cin0 => \U2|Mult0|auto_generated|cs1a[0]~COUT\,
	cin1 => \U2|Mult0|auto_generated|cs1a[0]~COUTCOUT1_14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|cs1a\(1),
	cout0 => \U2|Mult0|auto_generated|cs1a[1]~COUT\,
	cout1 => \U2|Mult0|auto_generated|cs1a[1]~COUTCOUT1_16\);

-- Location: LC_X11_Y7_N8
\U2|Mult0|auto_generated|cs1a[2]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|cs1a\(2) = \U2|speedreg\(5) $ (((\U2|speedreg\(4) & (!\U2|Mult0|auto_generated|cs1a[1]~COUT\))))
-- \U2|Mult0|auto_generated|cs1a[2]~COUT\ = CARRY((\U2|speedreg\(5)) # ((\U2|speedreg\(4) & !\U2|Mult0|auto_generated|cs1a[1]~COUT\)))
-- \U2|Mult0|auto_generated|cs1a[2]~COUTCOUT1_18\ = CARRY((\U2|speedreg\(5)) # ((\U2|speedreg\(4) & !\U2|Mult0|auto_generated|cs1a[1]~COUTCOUT1_16\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c6ce",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|speedreg\(4),
	datab => \U2|speedreg\(5),
	cin0 => \U2|Mult0|auto_generated|cs1a[1]~COUT\,
	cin1 => \U2|Mult0|auto_generated|cs1a[1]~COUTCOUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|cs1a\(2),
	cout0 => \U2|Mult0|auto_generated|cs1a[2]~COUT\,
	cout1 => \U2|Mult0|auto_generated|cs1a[2]~COUTCOUT1_18\);

-- Location: LC_X12_Y6_N8
\U2|Mult0|auto_generated|le5a[10]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le5a\(10) = (\U2|Mult0|auto_generated|cs2a\(2) & ((\U2|Add0~15_combout\ $ (\U2|Mult0|auto_generated|cs1a\(2))))) # (!\U2|Mult0|auto_generated|cs2a\(2) & (!\U2|Add0~25_combout\ & ((\U2|Mult0|auto_generated|cs1a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "35c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~25_combout\,
	datab => \U2|Add0~15_combout\,
	datac => \U2|Mult0|auto_generated|cs2a\(2),
	datad => \U2|Mult0|auto_generated|cs1a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le5a\(10));

-- Location: LC_X11_Y7_N4
\U2|Mult0|auto_generated|cs2a[3]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|cs2a\(3) = ((\U2|Mult0|auto_generated|cs2a[2]~COUT\ $ (\U2|speedreg\(6))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|speedreg\(6),
	cin0 => \U2|Mult0|auto_generated|cs2a[2]~COUT\,
	cin1 => \U2|Mult0|auto_generated|cs2a[2]~COUTCOUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|cs2a\(3));

-- Location: LC_X11_Y7_N9
\U2|Mult0|auto_generated|cs1a[3]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|cs1a\(3) = (((\U2|Mult0|auto_generated|cs1a[2]~COUT\ & \U2|speedreg\(6))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|speedreg\(6),
	cin0 => \U2|Mult0|auto_generated|cs1a[2]~COUT\,
	cin1 => \U2|Mult0|auto_generated|cs1a[2]~COUTCOUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|cs1a\(3));

-- Location: LC_X12_Y6_N2
\U2|Mult0|auto_generated|le6a[8]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le6a\(8) = (\U2|Mult0|auto_generated|cs2a\(3) & ((\U2|Add0~10_combout\) # ((\U2|Add0~55_combout\ & \U2|Mult0|auto_generated|cs1a\(3))))) # (!\U2|Mult0|auto_generated|cs2a\(3) & (\U2|Add0~55_combout\ & 
-- ((\U2|Mult0|auto_generated|cs1a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs2a\(3),
	datab => \U2|Add0~55_combout\,
	datac => \U2|Add0~10_combout\,
	datad => \U2|Mult0|auto_generated|cs1a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le6a\(8));

-- Location: LC_X11_Y10_N8
\U2|Mult0|auto_generated|le5a[6]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le5a\(6) = (\U2|Mult0|auto_generated|cs2a\(2) & (\U2|Add0~50_combout\ $ ((\U2|Mult0|auto_generated|cs1a\(2))))) # (!\U2|Mult0|auto_generated|cs2a\(2) & (((\U2|Mult0|auto_generated|cs1a\(2) & !\U2|Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "606c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~50_combout\,
	datab => \U2|Mult0|auto_generated|cs1a\(2),
	datac => \U2|Mult0|auto_generated|cs2a\(2),
	datad => \U2|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le5a\(6));

-- Location: LC_X11_Y10_N3
\U2|Mult0|auto_generated|le6a[4]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le6a\(4) = (\U2|Add0~45_combout\ & ((\U2|Mult0|auto_generated|cs2a\(3)) # ((\U2|Mult0|auto_generated|cs1a\(3) & \U2|Add0~70_combout\)))) # (!\U2|Add0~45_combout\ & (\U2|Mult0|auto_generated|cs1a\(3) & ((\U2|Add0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~45_combout\,
	datab => \U2|Mult0|auto_generated|cs1a\(3),
	datac => \U2|Mult0|auto_generated|cs2a\(3),
	datad => \U2|Add0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le6a\(4));

-- Location: LC_X11_Y10_N7
\U2|Mult0|auto_generated|le3a[5]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le3a\(5) = (\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Mult0|auto_generated|cs1a\(0) $ ((\U2|Add0~60_combout\)))) # (!\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Mult0|auto_generated|cs1a\(0) & ((!\U2|Add0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "606a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs1a\(0),
	datab => \U2|Add0~60_combout\,
	datac => \U2|Mult0|auto_generated|cs2a\(0),
	datad => \U2|Add0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le3a\(5));

-- Location: LC_X11_Y10_N4
\U2|Mult0|auto_generated|le3a[4]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le3a\(4) = (\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Add0~45_combout\ $ ((\U2|Mult0|auto_generated|cs1a\(0))))) # (!\U2|Mult0|auto_generated|cs2a\(0) & (((\U2|Mult0|auto_generated|cs1a\(0) & !\U2|Add0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4878",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~45_combout\,
	datab => \U2|Mult0|auto_generated|cs2a\(0),
	datac => \U2|Mult0|auto_generated|cs1a\(0),
	datad => \U2|Add0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le3a\(4));

-- Location: LC_X12_Y10_N3
\U2|Mult0|auto_generated|op_2~50\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_2~50_combout\ = \U2|Mult0|auto_generated|le3a\(4) $ ((\U2|Mult0|auto_generated|cs1a\(2)))
-- \U2|Mult0|auto_generated|op_2~52\ = CARRY((\U2|Mult0|auto_generated|le3a\(4) & (\U2|Mult0|auto_generated|cs1a\(2))))
-- \U2|Mult0|auto_generated|op_2~52COUT1_146\ = CARRY((\U2|Mult0|auto_generated|le3a\(4) & (\U2|Mult0|auto_generated|cs1a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le3a\(4),
	datab => \U2|Mult0|auto_generated|cs1a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_2~50_combout\,
	cout0 => \U2|Mult0|auto_generated|op_2~52\,
	cout1 => \U2|Mult0|auto_generated|op_2~52COUT1_146\);

-- Location: LC_X12_Y10_N4
\U2|Mult0|auto_generated|op_2~55\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_2~55_combout\ = (\U2|Mult0|auto_generated|le3a\(5) $ ((\U2|Mult0|auto_generated|op_2~52\)))
-- \U2|Mult0|auto_generated|op_2~57\ = CARRY(((!\U2|Mult0|auto_generated|op_2~52COUT1_146\) # (!\U2|Mult0|auto_generated|le3a\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|Mult0|auto_generated|le3a\(5),
	cin0 => \U2|Mult0|auto_generated|op_2~52\,
	cin1 => \U2|Mult0|auto_generated|op_2~52COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_2~55_combout\,
	cout => \U2|Mult0|auto_generated|op_2~57\);

-- Location: LC_X11_Y10_N9
\U2|Mult0|auto_generated|le6a[3]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le6a\(3) = (\U2|Mult0|auto_generated|cs2a\(3) & ((\U2|Add0~70_combout\) # ((\U2|Add0~65_combout\ & \U2|Mult0|auto_generated|cs1a\(3))))) # (!\U2|Mult0|auto_generated|cs2a\(3) & (((\U2|Add0~65_combout\ & 
-- \U2|Mult0|auto_generated|cs1a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs2a\(3),
	datab => \U2|Add0~70_combout\,
	datac => \U2|Add0~65_combout\,
	datad => \U2|Mult0|auto_generated|cs1a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le6a\(3));

-- Location: LC_X11_Y10_N6
\U2|Mult0|auto_generated|le5a[5]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le5a\(5) = (\U2|Mult0|auto_generated|cs2a\(2) & ((\U2|Mult0|auto_generated|cs1a\(2) $ (\U2|Add0~60_combout\)))) # (!\U2|Mult0|auto_generated|cs2a\(2) & (!\U2|Add0~45_combout\ & (\U2|Mult0|auto_generated|cs1a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "34c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~45_combout\,
	datab => \U2|Mult0|auto_generated|cs1a\(2),
	datac => \U2|Mult0|auto_generated|cs2a\(2),
	datad => \U2|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le5a\(5));

-- Location: LC_X11_Y10_N0
\U2|Mult0|auto_generated|le5a[4]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le5a\(4) = (\U2|Mult0|auto_generated|cs2a\(2) & (\U2|Add0~45_combout\ $ ((\U2|Mult0|auto_generated|cs1a\(2))))) # (!\U2|Mult0|auto_generated|cs2a\(2) & (((\U2|Mult0|auto_generated|cs1a\(2) & !\U2|Add0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "606c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~45_combout\,
	datab => \U2|Mult0|auto_generated|cs1a\(2),
	datac => \U2|Mult0|auto_generated|cs2a\(2),
	datad => \U2|Add0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le5a\(4));

-- Location: LC_X11_Y6_N0
\U2|Mult0|auto_generated|le6a[2]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le6a\(2) = (\U2|Add0~5_combout\ & ((\U2|Mult0|auto_generated|cs1a\(3)) # ((\U2|Add0~65_combout\ & \U2|Mult0|auto_generated|cs2a\(3))))) # (!\U2|Add0~5_combout\ & (\U2|Add0~65_combout\ & ((\U2|Mult0|auto_generated|cs2a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~5_combout\,
	datab => \U2|Add0~65_combout\,
	datac => \U2|Mult0|auto_generated|cs1a\(3),
	datad => \U2|Mult0|auto_generated|cs2a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le6a\(2));

-- Location: LC_X11_Y10_N1
\U2|Mult0|auto_generated|le5a[3]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le5a\(3) = (\U2|Mult0|auto_generated|cs2a\(2) & ((\U2|Mult0|auto_generated|cs1a\(2) $ (\U2|Add0~70_combout\)))) # (!\U2|Mult0|auto_generated|cs2a\(2) & (!\U2|Add0~65_combout\ & (\U2|Mult0|auto_generated|cs1a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "34c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~65_combout\,
	datab => \U2|Mult0|auto_generated|cs1a\(2),
	datac => \U2|Mult0|auto_generated|cs2a\(2),
	datad => \U2|Add0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le5a\(3));

-- Location: LC_X11_Y6_N1
\U2|Mult0|auto_generated|le6a[1]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le6a\(1) = (\U2|Mult0|auto_generated|cs1a\(3) & ((\U2|Add0~0_combout\) # ((\U2|Add0~5_combout\ & \U2|Mult0|auto_generated|cs2a\(3))))) # (!\U2|Mult0|auto_generated|cs1a\(3) & (((\U2|Add0~5_combout\ & 
-- \U2|Mult0|auto_generated|cs2a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs1a\(3),
	datab => \U2|Add0~0_combout\,
	datac => \U2|Add0~5_combout\,
	datad => \U2|Mult0|auto_generated|cs2a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le6a\(1));

-- Location: LC_X11_Y10_N5
\U2|Mult0|auto_generated|le4a[4]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le4a\(4) = (\U2|Mult0|auto_generated|cs2a\(1) & (\U2|Add0~45_combout\ $ ((\U2|Mult0|auto_generated|cs1a\(1))))) # (!\U2|Mult0|auto_generated|cs2a\(1) & (((\U2|Mult0|auto_generated|cs1a\(1) & !\U2|Add0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "660c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~45_combout\,
	datab => \U2|Mult0|auto_generated|cs1a\(1),
	datac => \U2|Add0~70_combout\,
	datad => \U2|Mult0|auto_generated|cs2a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le4a\(4));

-- Location: LC_X11_Y10_N2
\U2|Mult0|auto_generated|le3a[6]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le3a\(6) = (\U2|Mult0|auto_generated|cs2a\(0) & ((\U2|Mult0|auto_generated|cs1a\(0) $ (\U2|Add0~50_combout\)))) # (!\U2|Mult0|auto_generated|cs2a\(0) & (!\U2|Add0~60_combout\ & (\U2|Mult0|auto_generated|cs1a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1ab0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs2a\(0),
	datab => \U2|Add0~60_combout\,
	datac => \U2|Mult0|auto_generated|cs1a\(0),
	datad => \U2|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le3a\(6));

-- Location: LC_X12_Y10_N5
\U2|Mult0|auto_generated|op_2~60\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_2~60_combout\ = \U2|Mult0|auto_generated|le4a\(4) $ (\U2|Mult0|auto_generated|le3a\(6) $ ((!\U2|Mult0|auto_generated|op_2~57\)))
-- \U2|Mult0|auto_generated|op_2~62\ = CARRY((\U2|Mult0|auto_generated|le4a\(4) & ((\U2|Mult0|auto_generated|le3a\(6)) # (!\U2|Mult0|auto_generated|op_2~57\))) # (!\U2|Mult0|auto_generated|le4a\(4) & (\U2|Mult0|auto_generated|le3a\(6) & 
-- !\U2|Mult0|auto_generated|op_2~57\)))
-- \U2|Mult0|auto_generated|op_2~62COUT1_148\ = CARRY((\U2|Mult0|auto_generated|le4a\(4) & ((\U2|Mult0|auto_generated|le3a\(6)) # (!\U2|Mult0|auto_generated|op_2~57\))) # (!\U2|Mult0|auto_generated|le4a\(4) & (\U2|Mult0|auto_generated|le3a\(6) & 
-- !\U2|Mult0|auto_generated|op_2~57\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le4a\(4),
	datab => \U2|Mult0|auto_generated|le3a\(6),
	cin => \U2|Mult0|auto_generated|op_2~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_2~60_combout\,
	cout0 => \U2|Mult0|auto_generated|op_2~62\,
	cout1 => \U2|Mult0|auto_generated|op_2~62COUT1_148\);

-- Location: LC_X12_Y10_N6
\U2|Mult0|auto_generated|op_2~35\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_2~35_combout\ = \U2|Mult0|auto_generated|le5a\(3) $ (\U2|Mult0|auto_generated|le6a\(1) $ (((!\U2|Mult0|auto_generated|op_2~57\ & \U2|Mult0|auto_generated|op_2~62\) # (\U2|Mult0|auto_generated|op_2~57\ & 
-- \U2|Mult0|auto_generated|op_2~62COUT1_148\))))
-- \U2|Mult0|auto_generated|op_2~37\ = CARRY((\U2|Mult0|auto_generated|le5a\(3) & (!\U2|Mult0|auto_generated|le6a\(1) & !\U2|Mult0|auto_generated|op_2~62\)) # (!\U2|Mult0|auto_generated|le5a\(3) & ((!\U2|Mult0|auto_generated|op_2~62\) # 
-- (!\U2|Mult0|auto_generated|le6a\(1)))))
-- \U2|Mult0|auto_generated|op_2~37COUT1_150\ = CARRY((\U2|Mult0|auto_generated|le5a\(3) & (!\U2|Mult0|auto_generated|le6a\(1) & !\U2|Mult0|auto_generated|op_2~62COUT1_148\)) # (!\U2|Mult0|auto_generated|le5a\(3) & 
-- ((!\U2|Mult0|auto_generated|op_2~62COUT1_148\) # (!\U2|Mult0|auto_generated|le6a\(1)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le5a\(3),
	datab => \U2|Mult0|auto_generated|le6a\(1),
	cin => \U2|Mult0|auto_generated|op_2~57\,
	cin0 => \U2|Mult0|auto_generated|op_2~62\,
	cin1 => \U2|Mult0|auto_generated|op_2~62COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_2~35_combout\,
	cout0 => \U2|Mult0|auto_generated|op_2~37\,
	cout1 => \U2|Mult0|auto_generated|op_2~37COUT1_150\);

-- Location: LC_X12_Y10_N7
\U2|Mult0|auto_generated|op_2~40\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_2~40_combout\ = \U2|Mult0|auto_generated|le5a\(4) $ (\U2|Mult0|auto_generated|le6a\(2) $ ((!(!\U2|Mult0|auto_generated|op_2~57\ & \U2|Mult0|auto_generated|op_2~37\) # (\U2|Mult0|auto_generated|op_2~57\ & 
-- \U2|Mult0|auto_generated|op_2~37COUT1_150\))))
-- \U2|Mult0|auto_generated|op_2~42\ = CARRY((\U2|Mult0|auto_generated|le5a\(4) & ((\U2|Mult0|auto_generated|le6a\(2)) # (!\U2|Mult0|auto_generated|op_2~37\))) # (!\U2|Mult0|auto_generated|le5a\(4) & (\U2|Mult0|auto_generated|le6a\(2) & 
-- !\U2|Mult0|auto_generated|op_2~37\)))
-- \U2|Mult0|auto_generated|op_2~42COUT1_152\ = CARRY((\U2|Mult0|auto_generated|le5a\(4) & ((\U2|Mult0|auto_generated|le6a\(2)) # (!\U2|Mult0|auto_generated|op_2~37COUT1_150\))) # (!\U2|Mult0|auto_generated|le5a\(4) & (\U2|Mult0|auto_generated|le6a\(2) & 
-- !\U2|Mult0|auto_generated|op_2~37COUT1_150\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le5a\(4),
	datab => \U2|Mult0|auto_generated|le6a\(2),
	cin => \U2|Mult0|auto_generated|op_2~57\,
	cin0 => \U2|Mult0|auto_generated|op_2~37\,
	cin1 => \U2|Mult0|auto_generated|op_2~37COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_2~40_combout\,
	cout0 => \U2|Mult0|auto_generated|op_2~42\,
	cout1 => \U2|Mult0|auto_generated|op_2~42COUT1_152\);

-- Location: LC_X12_Y10_N8
\U2|Mult0|auto_generated|op_2~30\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_2~30_combout\ = \U2|Mult0|auto_generated|le6a\(3) $ (\U2|Mult0|auto_generated|le5a\(5) $ (((!\U2|Mult0|auto_generated|op_2~57\ & \U2|Mult0|auto_generated|op_2~42\) # (\U2|Mult0|auto_generated|op_2~57\ & 
-- \U2|Mult0|auto_generated|op_2~42COUT1_152\))))
-- \U2|Mult0|auto_generated|op_2~32\ = CARRY((\U2|Mult0|auto_generated|le6a\(3) & (!\U2|Mult0|auto_generated|le5a\(5) & !\U2|Mult0|auto_generated|op_2~42\)) # (!\U2|Mult0|auto_generated|le6a\(3) & ((!\U2|Mult0|auto_generated|op_2~42\) # 
-- (!\U2|Mult0|auto_generated|le5a\(5)))))
-- \U2|Mult0|auto_generated|op_2~32COUT1_154\ = CARRY((\U2|Mult0|auto_generated|le6a\(3) & (!\U2|Mult0|auto_generated|le5a\(5) & !\U2|Mult0|auto_generated|op_2~42COUT1_152\)) # (!\U2|Mult0|auto_generated|le6a\(3) & 
-- ((!\U2|Mult0|auto_generated|op_2~42COUT1_152\) # (!\U2|Mult0|auto_generated|le5a\(5)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le6a\(3),
	datab => \U2|Mult0|auto_generated|le5a\(5),
	cin => \U2|Mult0|auto_generated|op_2~57\,
	cin0 => \U2|Mult0|auto_generated|op_2~42\,
	cin1 => \U2|Mult0|auto_generated|op_2~42COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_2~30_combout\,
	cout0 => \U2|Mult0|auto_generated|op_2~32\,
	cout1 => \U2|Mult0|auto_generated|op_2~32COUT1_154\);

-- Location: LC_X12_Y10_N9
\U2|Mult0|auto_generated|op_2~45\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_2~45_combout\ = \U2|Mult0|auto_generated|le5a\(6) $ (\U2|Mult0|auto_generated|le6a\(4) $ ((!(!\U2|Mult0|auto_generated|op_2~57\ & \U2|Mult0|auto_generated|op_2~32\) # (\U2|Mult0|auto_generated|op_2~57\ & 
-- \U2|Mult0|auto_generated|op_2~32COUT1_154\))))
-- \U2|Mult0|auto_generated|op_2~47\ = CARRY((\U2|Mult0|auto_generated|le5a\(6) & ((\U2|Mult0|auto_generated|le6a\(4)) # (!\U2|Mult0|auto_generated|op_2~32COUT1_154\))) # (!\U2|Mult0|auto_generated|le5a\(6) & (\U2|Mult0|auto_generated|le6a\(4) & 
-- !\U2|Mult0|auto_generated|op_2~32COUT1_154\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le5a\(6),
	datab => \U2|Mult0|auto_generated|le6a\(4),
	cin => \U2|Mult0|auto_generated|op_2~57\,
	cin0 => \U2|Mult0|auto_generated|op_2~32\,
	cin1 => \U2|Mult0|auto_generated|op_2~32COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_2~45_combout\,
	cout => \U2|Mult0|auto_generated|op_2~47\);

-- Location: LC_X12_Y6_N3
\U2|Mult0|auto_generated|le5a[9]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le5a\(9) = (\U2|Mult0|auto_generated|cs2a\(2) & ((\U2|Add0~25_combout\ $ (\U2|Mult0|auto_generated|cs1a\(2))))) # (!\U2|Mult0|auto_generated|cs2a\(2) & (!\U2|Add0~10_combout\ & ((\U2|Mult0|auto_generated|cs1a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "35c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~10_combout\,
	datab => \U2|Add0~25_combout\,
	datac => \U2|Mult0|auto_generated|cs2a\(2),
	datad => \U2|Mult0|auto_generated|cs1a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le5a\(9));

-- Location: LC_X12_Y10_N2
\U2|Mult0|auto_generated|le6a[7]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le6a\(7) = (\U2|Add0~50_combout\ & ((\U2|Mult0|auto_generated|cs1a\(3)) # ((\U2|Add0~55_combout\ & \U2|Mult0|auto_generated|cs2a\(3))))) # (!\U2|Add0~50_combout\ & (\U2|Add0~55_combout\ & (\U2|Mult0|auto_generated|cs2a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~50_combout\,
	datab => \U2|Add0~55_combout\,
	datac => \U2|Mult0|auto_generated|cs2a\(3),
	datad => \U2|Mult0|auto_generated|cs1a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le6a\(7));

-- Location: LC_X12_Y10_N0
\U2|Mult0|auto_generated|le6a[6]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le6a\(6) = (\U2|Add0~50_combout\ & ((\U2|Mult0|auto_generated|cs2a\(3)) # ((\U2|Add0~60_combout\ & \U2|Mult0|auto_generated|cs1a\(3))))) # (!\U2|Add0~50_combout\ & (\U2|Add0~60_combout\ & ((\U2|Mult0|auto_generated|cs1a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~50_combout\,
	datab => \U2|Add0~60_combout\,
	datac => \U2|Mult0|auto_generated|cs2a\(3),
	datad => \U2|Mult0|auto_generated|cs1a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le6a\(6));

-- Location: LC_X12_Y6_N9
\U2|Mult0|auto_generated|le5a[8]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le5a\(8) = (\U2|Mult0|auto_generated|cs2a\(2) & (\U2|Add0~10_combout\ $ (((\U2|Mult0|auto_generated|cs1a\(2)))))) # (!\U2|Mult0|auto_generated|cs2a\(2) & (((!\U2|Add0~55_combout\ & \U2|Mult0|auto_generated|cs1a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "53a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~10_combout\,
	datab => \U2|Add0~55_combout\,
	datac => \U2|Mult0|auto_generated|cs2a\(2),
	datad => \U2|Mult0|auto_generated|cs1a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le5a\(8));

-- Location: LC_X12_Y10_N1
\U2|Mult0|auto_generated|le6a[5]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le6a\(5) = (\U2|Add0~60_combout\ & ((\U2|Mult0|auto_generated|cs2a\(3)) # ((\U2|Add0~45_combout\ & \U2|Mult0|auto_generated|cs1a\(3))))) # (!\U2|Add0~60_combout\ & (\U2|Add0~45_combout\ & ((\U2|Mult0|auto_generated|cs1a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~60_combout\,
	datab => \U2|Add0~45_combout\,
	datac => \U2|Mult0|auto_generated|cs2a\(3),
	datad => \U2|Mult0|auto_generated|cs1a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le6a\(5));

-- Location: LC_X13_Y7_N9
\U2|Mult0|auto_generated|le5a[7]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le5a\(7) = (\U2|Mult0|auto_generated|cs2a\(2) & (\U2|Add0~55_combout\ $ (((\U2|Mult0|auto_generated|cs1a\(2)))))) # (!\U2|Mult0|auto_generated|cs2a\(2) & (((!\U2|Add0~50_combout\ & \U2|Mult0|auto_generated|cs1a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~55_combout\,
	datab => \U2|Add0~50_combout\,
	datac => \U2|Mult0|auto_generated|cs1a\(2),
	datad => \U2|Mult0|auto_generated|cs2a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le5a\(7));

-- Location: LC_X13_Y10_N0
\U2|Mult0|auto_generated|op_2~20\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_2~20_combout\ = \U2|Mult0|auto_generated|le6a\(5) $ (\U2|Mult0|auto_generated|le5a\(7) $ ((\U2|Mult0|auto_generated|op_2~47\)))
-- \U2|Mult0|auto_generated|op_2~22\ = CARRY((\U2|Mult0|auto_generated|le6a\(5) & (!\U2|Mult0|auto_generated|le5a\(7) & !\U2|Mult0|auto_generated|op_2~47\)) # (!\U2|Mult0|auto_generated|le6a\(5) & ((!\U2|Mult0|auto_generated|op_2~47\) # 
-- (!\U2|Mult0|auto_generated|le5a\(7)))))
-- \U2|Mult0|auto_generated|op_2~22COUT1_156\ = CARRY((\U2|Mult0|auto_generated|le6a\(5) & (!\U2|Mult0|auto_generated|le5a\(7) & !\U2|Mult0|auto_generated|op_2~47\)) # (!\U2|Mult0|auto_generated|le6a\(5) & ((!\U2|Mult0|auto_generated|op_2~47\) # 
-- (!\U2|Mult0|auto_generated|le5a\(7)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le6a\(5),
	datab => \U2|Mult0|auto_generated|le5a\(7),
	cin => \U2|Mult0|auto_generated|op_2~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_2~20_combout\,
	cout0 => \U2|Mult0|auto_generated|op_2~22\,
	cout1 => \U2|Mult0|auto_generated|op_2~22COUT1_156\);

-- Location: LC_X13_Y10_N1
\U2|Mult0|auto_generated|op_2~25\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_2~25_combout\ = \U2|Mult0|auto_generated|le6a\(6) $ (\U2|Mult0|auto_generated|le5a\(8) $ ((!(!\U2|Mult0|auto_generated|op_2~47\ & \U2|Mult0|auto_generated|op_2~22\) # (\U2|Mult0|auto_generated|op_2~47\ & 
-- \U2|Mult0|auto_generated|op_2~22COUT1_156\))))
-- \U2|Mult0|auto_generated|op_2~27\ = CARRY((\U2|Mult0|auto_generated|le6a\(6) & ((\U2|Mult0|auto_generated|le5a\(8)) # (!\U2|Mult0|auto_generated|op_2~22\))) # (!\U2|Mult0|auto_generated|le6a\(6) & (\U2|Mult0|auto_generated|le5a\(8) & 
-- !\U2|Mult0|auto_generated|op_2~22\)))
-- \U2|Mult0|auto_generated|op_2~27COUT1_158\ = CARRY((\U2|Mult0|auto_generated|le6a\(6) & ((\U2|Mult0|auto_generated|le5a\(8)) # (!\U2|Mult0|auto_generated|op_2~22COUT1_156\))) # (!\U2|Mult0|auto_generated|le6a\(6) & (\U2|Mult0|auto_generated|le5a\(8) & 
-- !\U2|Mult0|auto_generated|op_2~22COUT1_156\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le6a\(6),
	datab => \U2|Mult0|auto_generated|le5a\(8),
	cin => \U2|Mult0|auto_generated|op_2~47\,
	cin0 => \U2|Mult0|auto_generated|op_2~22\,
	cin1 => \U2|Mult0|auto_generated|op_2~22COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_2~25_combout\,
	cout0 => \U2|Mult0|auto_generated|op_2~27\,
	cout1 => \U2|Mult0|auto_generated|op_2~27COUT1_158\);

-- Location: LC_X13_Y10_N2
\U2|Mult0|auto_generated|op_2~65\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_2~65_combout\ = \U2|Mult0|auto_generated|le5a\(9) $ (\U2|Mult0|auto_generated|le6a\(7) $ (((!\U2|Mult0|auto_generated|op_2~47\ & \U2|Mult0|auto_generated|op_2~27\) # (\U2|Mult0|auto_generated|op_2~47\ & 
-- \U2|Mult0|auto_generated|op_2~27COUT1_158\))))
-- \U2|Mult0|auto_generated|op_2~67\ = CARRY((\U2|Mult0|auto_generated|le5a\(9) & (!\U2|Mult0|auto_generated|le6a\(7) & !\U2|Mult0|auto_generated|op_2~27\)) # (!\U2|Mult0|auto_generated|le5a\(9) & ((!\U2|Mult0|auto_generated|op_2~27\) # 
-- (!\U2|Mult0|auto_generated|le6a\(7)))))
-- \U2|Mult0|auto_generated|op_2~67COUT1_160\ = CARRY((\U2|Mult0|auto_generated|le5a\(9) & (!\U2|Mult0|auto_generated|le6a\(7) & !\U2|Mult0|auto_generated|op_2~27COUT1_158\)) # (!\U2|Mult0|auto_generated|le5a\(9) & 
-- ((!\U2|Mult0|auto_generated|op_2~27COUT1_158\) # (!\U2|Mult0|auto_generated|le6a\(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le5a\(9),
	datab => \U2|Mult0|auto_generated|le6a\(7),
	cin => \U2|Mult0|auto_generated|op_2~47\,
	cin0 => \U2|Mult0|auto_generated|op_2~27\,
	cin1 => \U2|Mult0|auto_generated|op_2~27COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_2~65_combout\,
	cout0 => \U2|Mult0|auto_generated|op_2~67\,
	cout1 => \U2|Mult0|auto_generated|op_2~67COUT1_160\);

-- Location: LC_X13_Y10_N3
\U2|Mult0|auto_generated|op_2~70\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_2~70_combout\ = \U2|Mult0|auto_generated|le5a\(10) $ (\U2|Mult0|auto_generated|le6a\(8) $ ((!(!\U2|Mult0|auto_generated|op_2~47\ & \U2|Mult0|auto_generated|op_2~67\) # (\U2|Mult0|auto_generated|op_2~47\ & 
-- \U2|Mult0|auto_generated|op_2~67COUT1_160\))))
-- \U2|Mult0|auto_generated|op_2~72\ = CARRY((\U2|Mult0|auto_generated|le5a\(10) & ((\U2|Mult0|auto_generated|le6a\(8)) # (!\U2|Mult0|auto_generated|op_2~67\))) # (!\U2|Mult0|auto_generated|le5a\(10) & (\U2|Mult0|auto_generated|le6a\(8) & 
-- !\U2|Mult0|auto_generated|op_2~67\)))
-- \U2|Mult0|auto_generated|op_2~72COUT1_162\ = CARRY((\U2|Mult0|auto_generated|le5a\(10) & ((\U2|Mult0|auto_generated|le6a\(8)) # (!\U2|Mult0|auto_generated|op_2~67COUT1_160\))) # (!\U2|Mult0|auto_generated|le5a\(10) & (\U2|Mult0|auto_generated|le6a\(8) & 
-- !\U2|Mult0|auto_generated|op_2~67COUT1_160\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le5a\(10),
	datab => \U2|Mult0|auto_generated|le6a\(8),
	cin => \U2|Mult0|auto_generated|op_2~47\,
	cin0 => \U2|Mult0|auto_generated|op_2~67\,
	cin1 => \U2|Mult0|auto_generated|op_2~67COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_2~70_combout\,
	cout0 => \U2|Mult0|auto_generated|op_2~72\,
	cout1 => \U2|Mult0|auto_generated|op_2~72COUT1_162\);

-- Location: LC_X7_Y8_N4
\U2|Mult0|auto_generated|le7a[7]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le7a\(7) = (((\U2|Add0~55_combout\ & \U2|speedreg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|Add0~55_combout\,
	datad => \U2|speedreg\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le7a\(7));

-- Location: LC_X10_Y9_N9
\U2|timechunk[12]\ : maxv_lcell
-- Equation(s):
-- \U2|timechunk\(12) = DFFEAS((\U2|Add0~30_combout\ & (\U2|LessThan1~5_combout\ & ((\U2|LessThan1~8_combout\)))), GLOBAL(\clk~combout\), VCC, , \U2|LessThan0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|Add0~30_combout\,
	datab => \U2|LessThan1~5_combout\,
	datad => \U2|LessThan1~8_combout\,
	aclr => GND,
	ena => \U2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|timechunk\(12));

-- Location: LC_X12_Y9_N6
\U2|Add0~20\ : maxv_lcell
-- Equation(s):
-- \U2|Add0~20_combout\ = \U2|timechunk\(11) $ (((((!\U2|Add0~27\ & \U2|Add0~17\) # (\U2|Add0~27\ & \U2|Add0~17COUT1_139\)))))
-- \U2|Add0~22\ = CARRY(((!\U2|Add0~17\)) # (!\U2|timechunk\(11)))
-- \U2|Add0~22COUT1_141\ = CARRY(((!\U2|Add0~17COUT1_139\)) # (!\U2|timechunk\(11)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|timechunk\(11),
	cin => \U2|Add0~27\,
	cin0 => \U2|Add0~17\,
	cin1 => \U2|Add0~17COUT1_139\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Add0~20_combout\,
	cout0 => \U2|Add0~22\,
	cout1 => \U2|Add0~22COUT1_141\);

-- Location: LC_X10_Y9_N6
\U2|timechunk[11]\ : maxv_lcell
-- Equation(s):
-- \U2|timechunk\(11) = DFFEAS((\U2|Add0~20_combout\ & (\U2|LessThan1~5_combout\ & ((\U2|LessThan1~8_combout\)))), GLOBAL(\clk~combout\), VCC, , \U2|LessThan0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|Add0~20_combout\,
	datab => \U2|LessThan1~5_combout\,
	datad => \U2|LessThan1~8_combout\,
	aclr => GND,
	ena => \U2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|timechunk\(11));

-- Location: LC_X12_Y9_N7
\U2|Add0~30\ : maxv_lcell
-- Equation(s):
-- \U2|Add0~30_combout\ = (\U2|timechunk\(12) $ ((!(!\U2|Add0~27\ & \U2|Add0~22\) # (\U2|Add0~27\ & \U2|Add0~22COUT1_141\))))
-- \U2|Add0~32\ = CARRY(((\U2|timechunk\(12) & !\U2|Add0~22\)))
-- \U2|Add0~32COUT1_143\ = CARRY(((\U2|timechunk\(12) & !\U2|Add0~22COUT1_141\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|timechunk\(12),
	cin => \U2|Add0~27\,
	cin0 => \U2|Add0~22\,
	cin1 => \U2|Add0~22COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Add0~30_combout\,
	cout0 => \U2|Add0~32\,
	cout1 => \U2|Add0~32COUT1_143\);

-- Location: LC_X13_Y7_N1
\U2|Mult0|auto_generated|le4a[12]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le4a\(12) = (\U2|Mult0|auto_generated|cs2a\(1) & (\U2|Mult0|auto_generated|cs1a\(1) $ ((\U2|Add0~30_combout\)))) # (!\U2|Mult0|auto_generated|cs2a\(1) & (\U2|Mult0|auto_generated|cs1a\(1) & ((!\U2|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "606a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs1a\(1),
	datab => \U2|Add0~30_combout\,
	datac => \U2|Mult0|auto_generated|cs2a\(1),
	datad => \U2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le4a\(12));

-- Location: LC_X9_Y9_N9
\U2|timechunk[14]\ : maxv_lcell
-- Equation(s):
-- \U2|timechunk\(14) = DFFEAS((\U2|Add0~40_combout\ & (((\U2|LessThan1~5_combout\ & \U2|LessThan1~8_combout\)))), GLOBAL(\clk~combout\), VCC, , \U2|LessThan0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|Add0~40_combout\,
	datac => \U2|LessThan1~5_combout\,
	datad => \U2|LessThan1~8_combout\,
	aclr => GND,
	ena => \U2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|timechunk\(14));

-- Location: LC_X12_Y9_N8
\U2|Add0~35\ : maxv_lcell
-- Equation(s):
-- \U2|Add0~35_combout\ = (\U2|timechunk\(13) $ (((!\U2|Add0~27\ & \U2|Add0~32\) # (\U2|Add0~27\ & \U2|Add0~32COUT1_143\))))
-- \U2|Add0~37\ = CARRY(((!\U2|Add0~32\) # (!\U2|timechunk\(13))))
-- \U2|Add0~37COUT1_145\ = CARRY(((!\U2|Add0~32COUT1_143\) # (!\U2|timechunk\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|timechunk\(13),
	cin => \U2|Add0~27\,
	cin0 => \U2|Add0~32\,
	cin1 => \U2|Add0~32COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Add0~35_combout\,
	cout0 => \U2|Add0~37\,
	cout1 => \U2|Add0~37COUT1_145\);

-- Location: LC_X10_Y9_N3
\U2|timechunk[13]\ : maxv_lcell
-- Equation(s):
-- \U2|timechunk\(13) = DFFEAS((\U2|Add0~35_combout\ & (\U2|LessThan1~5_combout\ & ((\U2|LessThan1~8_combout\)))), GLOBAL(\clk~combout\), VCC, , \U2|LessThan0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|Add0~35_combout\,
	datab => \U2|LessThan1~5_combout\,
	datad => \U2|LessThan1~8_combout\,
	aclr => GND,
	ena => \U2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|timechunk\(13));

-- Location: LC_X12_Y9_N9
\U2|Add0~40\ : maxv_lcell
-- Equation(s):
-- \U2|Add0~40_combout\ = (\U2|timechunk\(14) $ ((!(!\U2|Add0~27\ & \U2|Add0~37\) # (\U2|Add0~27\ & \U2|Add0~37COUT1_145\))))
-- \U2|Add0~42\ = CARRY(((\U2|timechunk\(14) & !\U2|Add0~37COUT1_145\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|timechunk\(14),
	cin => \U2|Add0~27\,
	cin0 => \U2|Add0~37\,
	cin1 => \U2|Add0~37COUT1_145\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Add0~40_combout\,
	cout => \U2|Add0~42\);

-- Location: LC_X12_Y7_N8
\U2|Mult0|auto_generated|le3a[14]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le3a\(14) = (\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Mult0|auto_generated|cs1a\(0) $ ((\U2|Add0~40_combout\)))) # (!\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Mult0|auto_generated|cs1a\(0) & ((!\U2|Add0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "286c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs2a\(0),
	datab => \U2|Mult0|auto_generated|cs1a\(0),
	datac => \U2|Add0~40_combout\,
	datad => \U2|Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le3a\(14));

-- Location: LC_X13_Y7_N4
\U2|Mult0|auto_generated|le3a[11]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le3a\(11) = (\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Add0~20_combout\ $ ((\U2|Mult0|auto_generated|cs1a\(0))))) # (!\U2|Mult0|auto_generated|cs2a\(0) & (((\U2|Mult0|auto_generated|cs1a\(0) & !\U2|Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2878",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs2a\(0),
	datab => \U2|Add0~20_combout\,
	datac => \U2|Mult0|auto_generated|cs1a\(0),
	datad => \U2|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le3a\(11));

-- Location: LC_X11_Y8_N3
\U2|Mult0|auto_generated|le4a[9]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le4a\(9) = (\U2|Mult0|auto_generated|cs2a\(1) & (\U2|Add0~25_combout\ $ ((\U2|Mult0|auto_generated|cs1a\(1))))) # (!\U2|Mult0|auto_generated|cs2a\(1) & (((\U2|Mult0|auto_generated|cs1a\(1) & !\U2|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "660c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~25_combout\,
	datab => \U2|Mult0|auto_generated|cs1a\(1),
	datac => \U2|Add0~10_combout\,
	datad => \U2|Mult0|auto_generated|cs2a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le4a\(9));

-- Location: LC_X11_Y8_N0
\U2|Mult0|auto_generated|le3a[10]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le3a\(10) = (\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Mult0|auto_generated|cs1a\(0) $ (((\U2|Add0~15_combout\))))) # (!\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Mult0|auto_generated|cs1a\(0) & (!\U2|Add0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "468a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs1a\(0),
	datab => \U2|Mult0|auto_generated|cs2a\(0),
	datac => \U2|Add0~25_combout\,
	datad => \U2|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le3a\(10));

-- Location: LC_X11_Y8_N8
\U2|Mult0|auto_generated|le4a[8]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le4a\(8) = (\U2|Mult0|auto_generated|cs2a\(1) & ((\U2|Mult0|auto_generated|cs1a\(1) $ (\U2|Add0~10_combout\)))) # (!\U2|Mult0|auto_generated|cs2a\(1) & (!\U2|Add0~55_combout\ & (\U2|Mult0|auto_generated|cs1a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~55_combout\,
	datab => \U2|Mult0|auto_generated|cs1a\(1),
	datac => \U2|Add0~10_combout\,
	datad => \U2|Mult0|auto_generated|cs2a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le4a\(8));

-- Location: LC_X11_Y8_N9
\U2|Mult0|auto_generated|le4a[7]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le4a\(7) = (\U2|Mult0|auto_generated|cs2a\(1) & ((\U2|Mult0|auto_generated|cs1a\(1) $ (\U2|Add0~55_combout\)))) # (!\U2|Mult0|auto_generated|cs2a\(1) & (!\U2|Add0~50_combout\ & (\U2|Mult0|auto_generated|cs1a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "34c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~50_combout\,
	datab => \U2|Mult0|auto_generated|cs1a\(1),
	datac => \U2|Mult0|auto_generated|cs2a\(1),
	datad => \U2|Add0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le4a\(7));

-- Location: LC_X11_Y8_N4
\U2|Mult0|auto_generated|le3a[9]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le3a\(9) = (\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Add0~25_combout\ $ ((\U2|Mult0|auto_generated|cs1a\(0))))) # (!\U2|Mult0|auto_generated|cs2a\(0) & (((\U2|Mult0|auto_generated|cs1a\(0) & !\U2|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "660c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~25_combout\,
	datab => \U2|Mult0|auto_generated|cs1a\(0),
	datac => \U2|Add0~10_combout\,
	datad => \U2|Mult0|auto_generated|cs2a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le3a\(9));

-- Location: LC_X11_Y8_N5
\U2|Mult0|auto_generated|le4a[6]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le4a\(6) = (\U2|Mult0|auto_generated|cs2a\(1) & (\U2|Add0~50_combout\ $ ((\U2|Mult0|auto_generated|cs1a\(1))))) # (!\U2|Mult0|auto_generated|cs2a\(1) & (((\U2|Mult0|auto_generated|cs1a\(1) & !\U2|Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4878",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~50_combout\,
	datab => \U2|Mult0|auto_generated|cs2a\(1),
	datac => \U2|Mult0|auto_generated|cs1a\(1),
	datad => \U2|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le4a\(6));

-- Location: LC_X11_Y8_N6
\U2|Mult0|auto_generated|le3a[8]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le3a\(8) = (\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Mult0|auto_generated|cs1a\(0) $ ((\U2|Add0~10_combout\)))) # (!\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Mult0|auto_generated|cs1a\(0) & ((!\U2|Add0~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "486a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs1a\(0),
	datab => \U2|Mult0|auto_generated|cs2a\(0),
	datac => \U2|Add0~10_combout\,
	datad => \U2|Add0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le3a\(8));

-- Location: LC_X12_Y7_N0
\U2|Mult0|auto_generated|le4a[5]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le4a\(5) = (\U2|Mult0|auto_generated|cs2a\(1) & (\U2|Add0~60_combout\ $ ((\U2|Mult0|auto_generated|cs1a\(1))))) # (!\U2|Mult0|auto_generated|cs2a\(1) & (((\U2|Mult0|auto_generated|cs1a\(1) & !\U2|Add0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "660c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~60_combout\,
	datab => \U2|Mult0|auto_generated|cs1a\(1),
	datac => \U2|Add0~45_combout\,
	datad => \U2|Mult0|auto_generated|cs2a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le4a\(5));

-- Location: LC_X11_Y8_N2
\U2|Mult0|auto_generated|le3a[7]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le3a\(7) = (\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Mult0|auto_generated|cs1a\(0) $ (((\U2|Add0~55_combout\))))) # (!\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Mult0|auto_generated|cs1a\(0) & (!\U2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "468a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs1a\(0),
	datab => \U2|Mult0|auto_generated|cs2a\(0),
	datac => \U2|Add0~50_combout\,
	datad => \U2|Add0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le3a\(7));

-- Location: LC_X12_Y8_N0
\U2|Mult0|auto_generated|add20_result[0]~35\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|add20_result[0]~35_combout\ = \U2|Mult0|auto_generated|le4a\(5) $ ((\U2|Mult0|auto_generated|le3a\(7)))
-- \U2|Mult0|auto_generated|add20_result[0]~37\ = CARRY((\U2|Mult0|auto_generated|le4a\(5) & (\U2|Mult0|auto_generated|le3a\(7))))
-- \U2|Mult0|auto_generated|add20_result[0]~37COUT1_118\ = CARRY((\U2|Mult0|auto_generated|le4a\(5) & (\U2|Mult0|auto_generated|le3a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le4a\(5),
	datab => \U2|Mult0|auto_generated|le3a\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|add20_result[0]~35_combout\,
	cout0 => \U2|Mult0|auto_generated|add20_result[0]~37\,
	cout1 => \U2|Mult0|auto_generated|add20_result[0]~37COUT1_118\);

-- Location: LC_X12_Y8_N1
\U2|Mult0|auto_generated|add20_result[1]~40\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|add20_result[1]~40_combout\ = \U2|Mult0|auto_generated|le4a\(6) $ (\U2|Mult0|auto_generated|le3a\(8) $ ((\U2|Mult0|auto_generated|add20_result[0]~37\)))
-- \U2|Mult0|auto_generated|add20_result[1]~42\ = CARRY((\U2|Mult0|auto_generated|le4a\(6) & (!\U2|Mult0|auto_generated|le3a\(8) & !\U2|Mult0|auto_generated|add20_result[0]~37\)) # (!\U2|Mult0|auto_generated|le4a\(6) & 
-- ((!\U2|Mult0|auto_generated|add20_result[0]~37\) # (!\U2|Mult0|auto_generated|le3a\(8)))))
-- \U2|Mult0|auto_generated|add20_result[1]~42COUT1_120\ = CARRY((\U2|Mult0|auto_generated|le4a\(6) & (!\U2|Mult0|auto_generated|le3a\(8) & !\U2|Mult0|auto_generated|add20_result[0]~37COUT1_118\)) # (!\U2|Mult0|auto_generated|le4a\(6) & 
-- ((!\U2|Mult0|auto_generated|add20_result[0]~37COUT1_118\) # (!\U2|Mult0|auto_generated|le3a\(8)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le4a\(6),
	datab => \U2|Mult0|auto_generated|le3a\(8),
	cin0 => \U2|Mult0|auto_generated|add20_result[0]~37\,
	cin1 => \U2|Mult0|auto_generated|add20_result[0]~37COUT1_118\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|add20_result[1]~40_combout\,
	cout0 => \U2|Mult0|auto_generated|add20_result[1]~42\,
	cout1 => \U2|Mult0|auto_generated|add20_result[1]~42COUT1_120\);

-- Location: LC_X12_Y8_N2
\U2|Mult0|auto_generated|add20_result[2]~30\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|add20_result[2]~30_combout\ = \U2|Mult0|auto_generated|le4a\(7) $ (\U2|Mult0|auto_generated|le3a\(9) $ ((!\U2|Mult0|auto_generated|add20_result[1]~42\)))
-- \U2|Mult0|auto_generated|add20_result[2]~32\ = CARRY((\U2|Mult0|auto_generated|le4a\(7) & ((\U2|Mult0|auto_generated|le3a\(9)) # (!\U2|Mult0|auto_generated|add20_result[1]~42\))) # (!\U2|Mult0|auto_generated|le4a\(7) & (\U2|Mult0|auto_generated|le3a\(9) & 
-- !\U2|Mult0|auto_generated|add20_result[1]~42\)))
-- \U2|Mult0|auto_generated|add20_result[2]~32COUT1_122\ = CARRY((\U2|Mult0|auto_generated|le4a\(7) & ((\U2|Mult0|auto_generated|le3a\(9)) # (!\U2|Mult0|auto_generated|add20_result[1]~42COUT1_120\))) # (!\U2|Mult0|auto_generated|le4a\(7) & 
-- (\U2|Mult0|auto_generated|le3a\(9) & !\U2|Mult0|auto_generated|add20_result[1]~42COUT1_120\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le4a\(7),
	datab => \U2|Mult0|auto_generated|le3a\(9),
	cin0 => \U2|Mult0|auto_generated|add20_result[1]~42\,
	cin1 => \U2|Mult0|auto_generated|add20_result[1]~42COUT1_120\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|add20_result[2]~30_combout\,
	cout0 => \U2|Mult0|auto_generated|add20_result[2]~32\,
	cout1 => \U2|Mult0|auto_generated|add20_result[2]~32COUT1_122\);

-- Location: LC_X12_Y8_N3
\U2|Mult0|auto_generated|add20_result[3]~45\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|add20_result[3]~45_combout\ = \U2|Mult0|auto_generated|le3a\(10) $ (\U2|Mult0|auto_generated|le4a\(8) $ ((\U2|Mult0|auto_generated|add20_result[2]~32\)))
-- \U2|Mult0|auto_generated|add20_result[3]~47\ = CARRY((\U2|Mult0|auto_generated|le3a\(10) & (!\U2|Mult0|auto_generated|le4a\(8) & !\U2|Mult0|auto_generated|add20_result[2]~32\)) # (!\U2|Mult0|auto_generated|le3a\(10) & 
-- ((!\U2|Mult0|auto_generated|add20_result[2]~32\) # (!\U2|Mult0|auto_generated|le4a\(8)))))
-- \U2|Mult0|auto_generated|add20_result[3]~47COUT1_124\ = CARRY((\U2|Mult0|auto_generated|le3a\(10) & (!\U2|Mult0|auto_generated|le4a\(8) & !\U2|Mult0|auto_generated|add20_result[2]~32COUT1_122\)) # (!\U2|Mult0|auto_generated|le3a\(10) & 
-- ((!\U2|Mult0|auto_generated|add20_result[2]~32COUT1_122\) # (!\U2|Mult0|auto_generated|le4a\(8)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le3a\(10),
	datab => \U2|Mult0|auto_generated|le4a\(8),
	cin0 => \U2|Mult0|auto_generated|add20_result[2]~32\,
	cin1 => \U2|Mult0|auto_generated|add20_result[2]~32COUT1_122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|add20_result[3]~45_combout\,
	cout0 => \U2|Mult0|auto_generated|add20_result[3]~47\,
	cout1 => \U2|Mult0|auto_generated|add20_result[3]~47COUT1_124\);

-- Location: LC_X12_Y8_N4
\U2|Mult0|auto_generated|add20_result[4]~20\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|add20_result[4]~20_combout\ = \U2|Mult0|auto_generated|le3a\(11) $ (\U2|Mult0|auto_generated|le4a\(9) $ ((!\U2|Mult0|auto_generated|add20_result[3]~47\)))
-- \U2|Mult0|auto_generated|add20_result[4]~22\ = CARRY((\U2|Mult0|auto_generated|le3a\(11) & ((\U2|Mult0|auto_generated|le4a\(9)) # (!\U2|Mult0|auto_generated|add20_result[3]~47COUT1_124\))) # (!\U2|Mult0|auto_generated|le3a\(11) & 
-- (\U2|Mult0|auto_generated|le4a\(9) & !\U2|Mult0|auto_generated|add20_result[3]~47COUT1_124\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le3a\(11),
	datab => \U2|Mult0|auto_generated|le4a\(9),
	cin0 => \U2|Mult0|auto_generated|add20_result[3]~47\,
	cin1 => \U2|Mult0|auto_generated|add20_result[3]~47COUT1_124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|add20_result[4]~20_combout\,
	cout => \U2|Mult0|auto_generated|add20_result[4]~22\);

-- Location: LC_X12_Y7_N2
\U2|Mult0|auto_generated|le3a[13]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le3a\(13) = (\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Add0~35_combout\ $ ((\U2|Mult0|auto_generated|cs1a\(0))))) # (!\U2|Mult0|auto_generated|cs2a\(0) & (((\U2|Mult0|auto_generated|cs1a\(0) & !\U2|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2878",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs2a\(0),
	datab => \U2|Add0~35_combout\,
	datac => \U2|Mult0|auto_generated|cs1a\(0),
	datad => \U2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le3a\(13));

-- Location: LC_X11_Y8_N7
\U2|Mult0|auto_generated|le4a[11]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le4a\(11) = (\U2|Mult0|auto_generated|cs2a\(1) & (\U2|Add0~20_combout\ $ ((\U2|Mult0|auto_generated|cs1a\(1))))) # (!\U2|Mult0|auto_generated|cs2a\(1) & (((\U2|Mult0|auto_generated|cs1a\(1) & !\U2|Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "606c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~20_combout\,
	datab => \U2|Mult0|auto_generated|cs1a\(1),
	datac => \U2|Mult0|auto_generated|cs2a\(1),
	datad => \U2|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le4a\(11));

-- Location: LC_X11_Y8_N1
\U2|Mult0|auto_generated|le4a[10]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le4a\(10) = (\U2|Mult0|auto_generated|cs2a\(1) & (\U2|Mult0|auto_generated|cs1a\(1) $ (((\U2|Add0~15_combout\))))) # (!\U2|Mult0|auto_generated|cs2a\(1) & (\U2|Mult0|auto_generated|cs1a\(1) & (!\U2|Add0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "468a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs1a\(1),
	datab => \U2|Mult0|auto_generated|cs2a\(1),
	datac => \U2|Add0~25_combout\,
	datad => \U2|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le4a\(10));

-- Location: LC_X13_Y7_N3
\U2|Mult0|auto_generated|le3a[12]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le3a\(12) = (\U2|Mult0|auto_generated|cs2a\(0) & ((\U2|Mult0|auto_generated|cs1a\(0) $ (\U2|Add0~30_combout\)))) # (!\U2|Mult0|auto_generated|cs2a\(0) & (!\U2|Add0~20_combout\ & (\U2|Mult0|auto_generated|cs1a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1ab0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs2a\(0),
	datab => \U2|Add0~20_combout\,
	datac => \U2|Mult0|auto_generated|cs1a\(0),
	datad => \U2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le3a\(12));

-- Location: LC_X12_Y8_N5
\U2|Mult0|auto_generated|add20_result[5]~25\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|add20_result[5]~25_combout\ = \U2|Mult0|auto_generated|le4a\(10) $ (\U2|Mult0|auto_generated|le3a\(12) $ ((\U2|Mult0|auto_generated|add20_result[4]~22\)))
-- \U2|Mult0|auto_generated|add20_result[5]~27\ = CARRY((\U2|Mult0|auto_generated|le4a\(10) & (!\U2|Mult0|auto_generated|le3a\(12) & !\U2|Mult0|auto_generated|add20_result[4]~22\)) # (!\U2|Mult0|auto_generated|le4a\(10) & 
-- ((!\U2|Mult0|auto_generated|add20_result[4]~22\) # (!\U2|Mult0|auto_generated|le3a\(12)))))
-- \U2|Mult0|auto_generated|add20_result[5]~27COUT1_126\ = CARRY((\U2|Mult0|auto_generated|le4a\(10) & (!\U2|Mult0|auto_generated|le3a\(12) & !\U2|Mult0|auto_generated|add20_result[4]~22\)) # (!\U2|Mult0|auto_generated|le4a\(10) & 
-- ((!\U2|Mult0|auto_generated|add20_result[4]~22\) # (!\U2|Mult0|auto_generated|le3a\(12)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le4a\(10),
	datab => \U2|Mult0|auto_generated|le3a\(12),
	cin => \U2|Mult0|auto_generated|add20_result[4]~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|add20_result[5]~25_combout\,
	cout0 => \U2|Mult0|auto_generated|add20_result[5]~27\,
	cout1 => \U2|Mult0|auto_generated|add20_result[5]~27COUT1_126\);

-- Location: LC_X12_Y8_N6
\U2|Mult0|auto_generated|add20_result[6]~50\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|add20_result[6]~50_combout\ = \U2|Mult0|auto_generated|le3a\(13) $ (\U2|Mult0|auto_generated|le4a\(11) $ ((!(!\U2|Mult0|auto_generated|add20_result[4]~22\ & \U2|Mult0|auto_generated|add20_result[5]~27\) # 
-- (\U2|Mult0|auto_generated|add20_result[4]~22\ & \U2|Mult0|auto_generated|add20_result[5]~27COUT1_126\))))
-- \U2|Mult0|auto_generated|add20_result[6]~52\ = CARRY((\U2|Mult0|auto_generated|le3a\(13) & ((\U2|Mult0|auto_generated|le4a\(11)) # (!\U2|Mult0|auto_generated|add20_result[5]~27\))) # (!\U2|Mult0|auto_generated|le3a\(13) & 
-- (\U2|Mult0|auto_generated|le4a\(11) & !\U2|Mult0|auto_generated|add20_result[5]~27\)))
-- \U2|Mult0|auto_generated|add20_result[6]~52COUT1_128\ = CARRY((\U2|Mult0|auto_generated|le3a\(13) & ((\U2|Mult0|auto_generated|le4a\(11)) # (!\U2|Mult0|auto_generated|add20_result[5]~27COUT1_126\))) # (!\U2|Mult0|auto_generated|le3a\(13) & 
-- (\U2|Mult0|auto_generated|le4a\(11) & !\U2|Mult0|auto_generated|add20_result[5]~27COUT1_126\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le3a\(13),
	datab => \U2|Mult0|auto_generated|le4a\(11),
	cin => \U2|Mult0|auto_generated|add20_result[4]~22\,
	cin0 => \U2|Mult0|auto_generated|add20_result[5]~27\,
	cin1 => \U2|Mult0|auto_generated|add20_result[5]~27COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|add20_result[6]~50_combout\,
	cout0 => \U2|Mult0|auto_generated|add20_result[6]~52\,
	cout1 => \U2|Mult0|auto_generated|add20_result[6]~52COUT1_128\);

-- Location: LC_X12_Y8_N7
\U2|Mult0|auto_generated|add20_result[7]~55\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|add20_result[7]~55_combout\ = \U2|Mult0|auto_generated|le4a\(12) $ (\U2|Mult0|auto_generated|le3a\(14) $ (((!\U2|Mult0|auto_generated|add20_result[4]~22\ & \U2|Mult0|auto_generated|add20_result[6]~52\) # 
-- (\U2|Mult0|auto_generated|add20_result[4]~22\ & \U2|Mult0|auto_generated|add20_result[6]~52COUT1_128\))))
-- \U2|Mult0|auto_generated|add20_result[7]~57\ = CARRY((\U2|Mult0|auto_generated|le4a\(12) & (!\U2|Mult0|auto_generated|le3a\(14) & !\U2|Mult0|auto_generated|add20_result[6]~52\)) # (!\U2|Mult0|auto_generated|le4a\(12) & 
-- ((!\U2|Mult0|auto_generated|add20_result[6]~52\) # (!\U2|Mult0|auto_generated|le3a\(14)))))
-- \U2|Mult0|auto_generated|add20_result[7]~57COUT1_130\ = CARRY((\U2|Mult0|auto_generated|le4a\(12) & (!\U2|Mult0|auto_generated|le3a\(14) & !\U2|Mult0|auto_generated|add20_result[6]~52COUT1_128\)) # (!\U2|Mult0|auto_generated|le4a\(12) & 
-- ((!\U2|Mult0|auto_generated|add20_result[6]~52COUT1_128\) # (!\U2|Mult0|auto_generated|le3a\(14)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le4a\(12),
	datab => \U2|Mult0|auto_generated|le3a\(14),
	cin => \U2|Mult0|auto_generated|add20_result[4]~22\,
	cin0 => \U2|Mult0|auto_generated|add20_result[6]~52\,
	cin1 => \U2|Mult0|auto_generated|add20_result[6]~52COUT1_128\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|add20_result[7]~55_combout\,
	cout0 => \U2|Mult0|auto_generated|add20_result[7]~57\,
	cout1 => \U2|Mult0|auto_generated|add20_result[7]~57COUT1_130\);

-- Location: LC_X7_Y8_N8
\U2|Mult0|auto_generated|le7a[2]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le7a\(2) = (((\U2|Add0~65_combout\ & \U2|speedreg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|Add0~65_combout\,
	datad => \U2|speedreg\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le7a\(2));

-- Location: LC_X9_Y7_N8
\U2|Mult0|auto_generated|le5a[0]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le5a\(0) = (\U2|Mult0|auto_generated|cs1a\(2) $ (((\U2|Add0~0_combout\ & \U2|Mult0|auto_generated|cs2a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|Add0~0_combout\,
	datac => \U2|Mult0|auto_generated|cs1a\(2),
	datad => \U2|Mult0|auto_generated|cs2a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le5a\(0));

-- Location: LC_X9_Y7_N5
\U2|Mult0|auto_generated|le4a[2]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le4a\(2) = (\U2|Mult0|auto_generated|cs2a\(1) & (\U2|Add0~65_combout\ $ ((\U2|Mult0|auto_generated|cs1a\(1))))) # (!\U2|Mult0|auto_generated|cs2a\(1) & (((\U2|Mult0|auto_generated|cs1a\(1) & !\U2|Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2878",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs2a\(1),
	datab => \U2|Add0~65_combout\,
	datac => \U2|Mult0|auto_generated|cs1a\(1),
	datad => \U2|Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le4a\(2));

-- Location: LC_X7_Y8_N7
\U2|Mult0|auto_generated|le3a[3]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le3a\(3) = (\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Add0~70_combout\ $ (((\U2|Mult0|auto_generated|cs1a\(0)))))) # (!\U2|Mult0|auto_generated|cs2a\(0) & (((!\U2|Add0~65_combout\ & \U2|Mult0|auto_generated|cs1a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4788",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~70_combout\,
	datab => \U2|Mult0|auto_generated|cs2a\(0),
	datac => \U2|Add0~65_combout\,
	datad => \U2|Mult0|auto_generated|cs1a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le3a\(3));

-- Location: LC_X8_Y9_N0
\U2|Mult0|auto_generated|le3a[2]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le3a\(2) = (\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Mult0|auto_generated|cs1a\(0) $ ((\U2|Add0~65_combout\)))) # (!\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Mult0|auto_generated|cs1a\(0) & ((!\U2|Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "660a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs1a\(0),
	datab => \U2|Add0~65_combout\,
	datac => \U2|Add0~5_combout\,
	datad => \U2|Mult0|auto_generated|cs2a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le3a\(2));

-- Location: LC_X8_Y8_N2
\U2|Mult0|auto_generated|op_1~65\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~65_combout\ = \U2|Mult0|auto_generated|le3a\(2) $ ((\U2|Mult0|auto_generated|cs1a\(1)))
-- \U2|Mult0|auto_generated|op_1~67\ = CARRY((\U2|Mult0|auto_generated|le3a\(2) & (\U2|Mult0|auto_generated|cs1a\(1))))
-- \U2|Mult0|auto_generated|op_1~67COUT1_158\ = CARRY((\U2|Mult0|auto_generated|le3a\(2) & (\U2|Mult0|auto_generated|cs1a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le3a\(2),
	datab => \U2|Mult0|auto_generated|cs1a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~65_combout\,
	cout0 => \U2|Mult0|auto_generated|op_1~67\,
	cout1 => \U2|Mult0|auto_generated|op_1~67COUT1_158\);

-- Location: LC_X8_Y8_N3
\U2|Mult0|auto_generated|op_1~70\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~70_combout\ = (\U2|Mult0|auto_generated|le3a\(3) $ ((\U2|Mult0|auto_generated|op_1~67\)))
-- \U2|Mult0|auto_generated|op_1~72\ = CARRY(((!\U2|Mult0|auto_generated|op_1~67\) # (!\U2|Mult0|auto_generated|le3a\(3))))
-- \U2|Mult0|auto_generated|op_1~72COUT1_160\ = CARRY(((!\U2|Mult0|auto_generated|op_1~67COUT1_158\) # (!\U2|Mult0|auto_generated|le3a\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|Mult0|auto_generated|le3a\(3),
	cin0 => \U2|Mult0|auto_generated|op_1~67\,
	cin1 => \U2|Mult0|auto_generated|op_1~67COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~70_combout\,
	cout0 => \U2|Mult0|auto_generated|op_1~72\,
	cout1 => \U2|Mult0|auto_generated|op_1~72COUT1_160\);

-- Location: LC_X8_Y8_N4
\U2|Mult0|auto_generated|op_1~50\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~50_combout\ = \U2|Mult0|auto_generated|le5a\(0) $ (\U2|Mult0|auto_generated|le4a\(2) $ ((!\U2|Mult0|auto_generated|op_1~72\)))
-- \U2|Mult0|auto_generated|op_1~52\ = CARRY((\U2|Mult0|auto_generated|le5a\(0) & ((\U2|Mult0|auto_generated|le4a\(2)) # (!\U2|Mult0|auto_generated|op_1~72COUT1_160\))) # (!\U2|Mult0|auto_generated|le5a\(0) & (\U2|Mult0|auto_generated|le4a\(2) & 
-- !\U2|Mult0|auto_generated|op_1~72COUT1_160\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le5a\(0),
	datab => \U2|Mult0|auto_generated|le4a\(2),
	cin0 => \U2|Mult0|auto_generated|op_1~72\,
	cin1 => \U2|Mult0|auto_generated|op_1~72COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~50_combout\,
	cout => \U2|Mult0|auto_generated|op_1~52\);

-- Location: LC_X7_Y8_N0
\U2|Mult0|auto_generated|le7a[1]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le7a\(1) = ((\U2|speedreg\(7) & ((\U2|Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|speedreg\(7),
	datad => \U2|Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le7a\(1));

-- Location: LC_X7_Y8_N6
\U2|Mult0|auto_generated|le7a[0]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le7a\(0) = (((\U2|Add0~0_combout\ & \U2|speedreg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|Add0~0_combout\,
	datad => \U2|speedreg\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le7a\(0));

-- Location: LC_X9_Y7_N7
\U2|Mult0|auto_generated|le5a[2]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le5a\(2) = (\U2|Mult0|auto_generated|cs2a\(2) & ((\U2|Add0~65_combout\ $ (\U2|Mult0|auto_generated|cs1a\(2))))) # (!\U2|Mult0|auto_generated|cs2a\(2) & (!\U2|Add0~5_combout\ & ((\U2|Mult0|auto_generated|cs1a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~5_combout\,
	datab => \U2|Add0~65_combout\,
	datac => \U2|Mult0|auto_generated|cs1a\(2),
	datad => \U2|Mult0|auto_generated|cs2a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le5a\(2));

-- Location: LC_X9_Y7_N1
\U2|Mult0|auto_generated|le6a[0]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le6a\(0) = (((\U2|Add0~0_combout\ & \U2|Mult0|auto_generated|cs2a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|Add0~0_combout\,
	datad => \U2|Mult0|auto_generated|cs2a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le6a\(0));

-- Location: LC_X9_Y7_N9
\U2|Mult0|auto_generated|le5a[1]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le5a\(1) = (\U2|Mult0|auto_generated|cs2a\(2) & (\U2|Add0~5_combout\ $ (((\U2|Mult0|auto_generated|cs1a\(2)))))) # (!\U2|Mult0|auto_generated|cs2a\(2) & (((!\U2|Add0~0_combout\ & \U2|Mult0|auto_generated|cs1a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~5_combout\,
	datab => \U2|Add0~0_combout\,
	datac => \U2|Mult0|auto_generated|cs1a\(2),
	datad => \U2|Mult0|auto_generated|cs2a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le5a\(1));

-- Location: LC_X7_Y8_N3
\U2|Mult0|auto_generated|le4a[3]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le4a\(3) = (\U2|Mult0|auto_generated|cs2a\(1) & ((\U2|Add0~70_combout\ $ (\U2|Mult0|auto_generated|cs1a\(1))))) # (!\U2|Mult0|auto_generated|cs2a\(1) & (!\U2|Add0~65_combout\ & ((\U2|Mult0|auto_generated|cs1a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1ba0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs2a\(1),
	datab => \U2|Add0~65_combout\,
	datac => \U2|Add0~70_combout\,
	datad => \U2|Mult0|auto_generated|cs1a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le4a\(3));

-- Location: LC_X8_Y8_N5
\U2|Mult0|auto_generated|op_1~55\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~55_combout\ = \U2|Mult0|auto_generated|le5a\(1) $ (\U2|Mult0|auto_generated|le4a\(3) $ ((\U2|Mult0|auto_generated|op_1~52\)))
-- \U2|Mult0|auto_generated|op_1~57\ = CARRY((\U2|Mult0|auto_generated|le5a\(1) & (!\U2|Mult0|auto_generated|le4a\(3) & !\U2|Mult0|auto_generated|op_1~52\)) # (!\U2|Mult0|auto_generated|le5a\(1) & ((!\U2|Mult0|auto_generated|op_1~52\) # 
-- (!\U2|Mult0|auto_generated|le4a\(3)))))
-- \U2|Mult0|auto_generated|op_1~57COUT1_162\ = CARRY((\U2|Mult0|auto_generated|le5a\(1) & (!\U2|Mult0|auto_generated|le4a\(3) & !\U2|Mult0|auto_generated|op_1~52\)) # (!\U2|Mult0|auto_generated|le5a\(1) & ((!\U2|Mult0|auto_generated|op_1~52\) # 
-- (!\U2|Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le5a\(1),
	datab => \U2|Mult0|auto_generated|le4a\(3),
	cin => \U2|Mult0|auto_generated|op_1~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~55_combout\,
	cout0 => \U2|Mult0|auto_generated|op_1~57\,
	cout1 => \U2|Mult0|auto_generated|op_1~57COUT1_162\);

-- Location: LC_X8_Y8_N6
\U2|Mult0|auto_generated|op_1~60\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~60_combout\ = \U2|Mult0|auto_generated|le5a\(2) $ (\U2|Mult0|auto_generated|le6a\(0) $ ((!(!\U2|Mult0|auto_generated|op_1~52\ & \U2|Mult0|auto_generated|op_1~57\) # (\U2|Mult0|auto_generated|op_1~52\ & 
-- \U2|Mult0|auto_generated|op_1~57COUT1_162\))))
-- \U2|Mult0|auto_generated|op_1~62\ = CARRY((\U2|Mult0|auto_generated|le5a\(2) & ((\U2|Mult0|auto_generated|le6a\(0)) # (!\U2|Mult0|auto_generated|op_1~57\))) # (!\U2|Mult0|auto_generated|le5a\(2) & (\U2|Mult0|auto_generated|le6a\(0) & 
-- !\U2|Mult0|auto_generated|op_1~57\)))
-- \U2|Mult0|auto_generated|op_1~62COUT1_164\ = CARRY((\U2|Mult0|auto_generated|le5a\(2) & ((\U2|Mult0|auto_generated|le6a\(0)) # (!\U2|Mult0|auto_generated|op_1~57COUT1_162\))) # (!\U2|Mult0|auto_generated|le5a\(2) & (\U2|Mult0|auto_generated|le6a\(0) & 
-- !\U2|Mult0|auto_generated|op_1~57COUT1_162\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le5a\(2),
	datab => \U2|Mult0|auto_generated|le6a\(0),
	cin => \U2|Mult0|auto_generated|op_1~52\,
	cin0 => \U2|Mult0|auto_generated|op_1~57\,
	cin1 => \U2|Mult0|auto_generated|op_1~57COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~60_combout\,
	cout0 => \U2|Mult0|auto_generated|op_1~62\,
	cout1 => \U2|Mult0|auto_generated|op_1~62COUT1_164\);

-- Location: LC_X8_Y8_N7
\U2|Mult0|auto_generated|op_1~35\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~35_combout\ = \U2|Mult0|auto_generated|add20_result[0]~35_combout\ $ (\U2|Mult0|auto_generated|le7a\(0) $ (((!\U2|Mult0|auto_generated|op_1~52\ & \U2|Mult0|auto_generated|op_1~62\) # (\U2|Mult0|auto_generated|op_1~52\ & 
-- \U2|Mult0|auto_generated|op_1~62COUT1_164\))))
-- \U2|Mult0|auto_generated|op_1~37\ = CARRY((\U2|Mult0|auto_generated|add20_result[0]~35_combout\ & (!\U2|Mult0|auto_generated|le7a\(0) & !\U2|Mult0|auto_generated|op_1~62\)) # (!\U2|Mult0|auto_generated|add20_result[0]~35_combout\ & 
-- ((!\U2|Mult0|auto_generated|op_1~62\) # (!\U2|Mult0|auto_generated|le7a\(0)))))
-- \U2|Mult0|auto_generated|op_1~37COUT1_166\ = CARRY((\U2|Mult0|auto_generated|add20_result[0]~35_combout\ & (!\U2|Mult0|auto_generated|le7a\(0) & !\U2|Mult0|auto_generated|op_1~62COUT1_164\)) # (!\U2|Mult0|auto_generated|add20_result[0]~35_combout\ & 
-- ((!\U2|Mult0|auto_generated|op_1~62COUT1_164\) # (!\U2|Mult0|auto_generated|le7a\(0)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|add20_result[0]~35_combout\,
	datab => \U2|Mult0|auto_generated|le7a\(0),
	cin => \U2|Mult0|auto_generated|op_1~52\,
	cin0 => \U2|Mult0|auto_generated|op_1~62\,
	cin1 => \U2|Mult0|auto_generated|op_1~62COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~35_combout\,
	cout0 => \U2|Mult0|auto_generated|op_1~37\,
	cout1 => \U2|Mult0|auto_generated|op_1~37COUT1_166\);

-- Location: LC_X8_Y8_N8
\U2|Mult0|auto_generated|op_1~40\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~40_combout\ = \U2|Mult0|auto_generated|add20_result[1]~40_combout\ $ (\U2|Mult0|auto_generated|le7a\(1) $ ((!(!\U2|Mult0|auto_generated|op_1~52\ & \U2|Mult0|auto_generated|op_1~37\) # (\U2|Mult0|auto_generated|op_1~52\ & 
-- \U2|Mult0|auto_generated|op_1~37COUT1_166\))))
-- \U2|Mult0|auto_generated|op_1~42\ = CARRY((\U2|Mult0|auto_generated|add20_result[1]~40_combout\ & ((\U2|Mult0|auto_generated|le7a\(1)) # (!\U2|Mult0|auto_generated|op_1~37\))) # (!\U2|Mult0|auto_generated|add20_result[1]~40_combout\ & 
-- (\U2|Mult0|auto_generated|le7a\(1) & !\U2|Mult0|auto_generated|op_1~37\)))
-- \U2|Mult0|auto_generated|op_1~42COUT1_168\ = CARRY((\U2|Mult0|auto_generated|add20_result[1]~40_combout\ & ((\U2|Mult0|auto_generated|le7a\(1)) # (!\U2|Mult0|auto_generated|op_1~37COUT1_166\))) # (!\U2|Mult0|auto_generated|add20_result[1]~40_combout\ & 
-- (\U2|Mult0|auto_generated|le7a\(1) & !\U2|Mult0|auto_generated|op_1~37COUT1_166\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|add20_result[1]~40_combout\,
	datab => \U2|Mult0|auto_generated|le7a\(1),
	cin => \U2|Mult0|auto_generated|op_1~52\,
	cin0 => \U2|Mult0|auto_generated|op_1~37\,
	cin1 => \U2|Mult0|auto_generated|op_1~37COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~40_combout\,
	cout0 => \U2|Mult0|auto_generated|op_1~42\,
	cout1 => \U2|Mult0|auto_generated|op_1~42COUT1_168\);

-- Location: LC_X8_Y8_N9
\U2|Mult0|auto_generated|op_1~30\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~30_combout\ = \U2|Mult0|auto_generated|le7a\(2) $ (\U2|Mult0|auto_generated|add20_result[2]~30_combout\ $ (((!\U2|Mult0|auto_generated|op_1~52\ & \U2|Mult0|auto_generated|op_1~42\) # (\U2|Mult0|auto_generated|op_1~52\ & 
-- \U2|Mult0|auto_generated|op_1~42COUT1_168\))))
-- \U2|Mult0|auto_generated|op_1~32\ = CARRY((\U2|Mult0|auto_generated|le7a\(2) & (!\U2|Mult0|auto_generated|add20_result[2]~30_combout\ & !\U2|Mult0|auto_generated|op_1~42COUT1_168\)) # (!\U2|Mult0|auto_generated|le7a\(2) & 
-- ((!\U2|Mult0|auto_generated|op_1~42COUT1_168\) # (!\U2|Mult0|auto_generated|add20_result[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le7a\(2),
	datab => \U2|Mult0|auto_generated|add20_result[2]~30_combout\,
	cin => \U2|Mult0|auto_generated|op_1~52\,
	cin0 => \U2|Mult0|auto_generated|op_1~42\,
	cin1 => \U2|Mult0|auto_generated|op_1~42COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~30_combout\,
	cout => \U2|Mult0|auto_generated|op_1~32\);

-- Location: LC_X7_Y8_N9
\U2|Mult0|auto_generated|le7a[6]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le7a\(6) = (((\U2|Add0~50_combout\ & \U2|speedreg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|Add0~50_combout\,
	datad => \U2|speedreg\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le7a\(6));

-- Location: LC_X8_Y8_N0
\U2|Mult0|auto_generated|le7a[5]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le7a\(5) = (\U2|speedreg\(7) & (((\U2|Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|speedreg\(7),
	datac => \U2|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le7a\(5));

-- Location: LC_X7_Y8_N2
\U2|Mult0|auto_generated|le7a[4]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le7a\(4) = ((\U2|speedreg\(7) & ((\U2|Add0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|speedreg\(7),
	datad => \U2|Add0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le7a\(4));

-- Location: LC_X8_Y9_N5
\U2|Mult0|auto_generated|le7a[3]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le7a\(3) = (((\U2|speedreg\(7) & \U2|Add0~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|speedreg\(7),
	datad => \U2|Add0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le7a\(3));

-- Location: LC_X9_Y8_N0
\U2|Mult0|auto_generated|op_1~45\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~45_combout\ = \U2|Mult0|auto_generated|le7a\(3) $ (\U2|Mult0|auto_generated|add20_result[3]~45_combout\ $ ((!\U2|Mult0|auto_generated|op_1~32\)))
-- \U2|Mult0|auto_generated|op_1~47\ = CARRY((\U2|Mult0|auto_generated|le7a\(3) & ((\U2|Mult0|auto_generated|add20_result[3]~45_combout\) # (!\U2|Mult0|auto_generated|op_1~32\))) # (!\U2|Mult0|auto_generated|le7a\(3) & 
-- (\U2|Mult0|auto_generated|add20_result[3]~45_combout\ & !\U2|Mult0|auto_generated|op_1~32\)))
-- \U2|Mult0|auto_generated|op_1~47COUT1_170\ = CARRY((\U2|Mult0|auto_generated|le7a\(3) & ((\U2|Mult0|auto_generated|add20_result[3]~45_combout\) # (!\U2|Mult0|auto_generated|op_1~32\))) # (!\U2|Mult0|auto_generated|le7a\(3) & 
-- (\U2|Mult0|auto_generated|add20_result[3]~45_combout\ & !\U2|Mult0|auto_generated|op_1~32\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le7a\(3),
	datab => \U2|Mult0|auto_generated|add20_result[3]~45_combout\,
	cin => \U2|Mult0|auto_generated|op_1~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~45_combout\,
	cout0 => \U2|Mult0|auto_generated|op_1~47\,
	cout1 => \U2|Mult0|auto_generated|op_1~47COUT1_170\);

-- Location: LC_X9_Y8_N1
\U2|Mult0|auto_generated|op_1~20\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~20_combout\ = \U2|Mult0|auto_generated|le7a\(4) $ (\U2|Mult0|auto_generated|add20_result[4]~20_combout\ $ (((!\U2|Mult0|auto_generated|op_1~32\ & \U2|Mult0|auto_generated|op_1~47\) # (\U2|Mult0|auto_generated|op_1~32\ & 
-- \U2|Mult0|auto_generated|op_1~47COUT1_170\))))
-- \U2|Mult0|auto_generated|op_1~22\ = CARRY((\U2|Mult0|auto_generated|le7a\(4) & (!\U2|Mult0|auto_generated|add20_result[4]~20_combout\ & !\U2|Mult0|auto_generated|op_1~47\)) # (!\U2|Mult0|auto_generated|le7a\(4) & ((!\U2|Mult0|auto_generated|op_1~47\) # 
-- (!\U2|Mult0|auto_generated|add20_result[4]~20_combout\))))
-- \U2|Mult0|auto_generated|op_1~22COUT1_172\ = CARRY((\U2|Mult0|auto_generated|le7a\(4) & (!\U2|Mult0|auto_generated|add20_result[4]~20_combout\ & !\U2|Mult0|auto_generated|op_1~47COUT1_170\)) # (!\U2|Mult0|auto_generated|le7a\(4) & 
-- ((!\U2|Mult0|auto_generated|op_1~47COUT1_170\) # (!\U2|Mult0|auto_generated|add20_result[4]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le7a\(4),
	datab => \U2|Mult0|auto_generated|add20_result[4]~20_combout\,
	cin => \U2|Mult0|auto_generated|op_1~32\,
	cin0 => \U2|Mult0|auto_generated|op_1~47\,
	cin1 => \U2|Mult0|auto_generated|op_1~47COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~20_combout\,
	cout0 => \U2|Mult0|auto_generated|op_1~22\,
	cout1 => \U2|Mult0|auto_generated|op_1~22COUT1_172\);

-- Location: LC_X9_Y8_N2
\U2|Mult0|auto_generated|op_1~25\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~25_combout\ = \U2|Mult0|auto_generated|le7a\(5) $ (\U2|Mult0|auto_generated|add20_result[5]~25_combout\ $ ((!(!\U2|Mult0|auto_generated|op_1~32\ & \U2|Mult0|auto_generated|op_1~22\) # (\U2|Mult0|auto_generated|op_1~32\ & 
-- \U2|Mult0|auto_generated|op_1~22COUT1_172\))))
-- \U2|Mult0|auto_generated|op_1~27\ = CARRY((\U2|Mult0|auto_generated|le7a\(5) & ((\U2|Mult0|auto_generated|add20_result[5]~25_combout\) # (!\U2|Mult0|auto_generated|op_1~22\))) # (!\U2|Mult0|auto_generated|le7a\(5) & 
-- (\U2|Mult0|auto_generated|add20_result[5]~25_combout\ & !\U2|Mult0|auto_generated|op_1~22\)))
-- \U2|Mult0|auto_generated|op_1~27COUT1_174\ = CARRY((\U2|Mult0|auto_generated|le7a\(5) & ((\U2|Mult0|auto_generated|add20_result[5]~25_combout\) # (!\U2|Mult0|auto_generated|op_1~22COUT1_172\))) # (!\U2|Mult0|auto_generated|le7a\(5) & 
-- (\U2|Mult0|auto_generated|add20_result[5]~25_combout\ & !\U2|Mult0|auto_generated|op_1~22COUT1_172\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le7a\(5),
	datab => \U2|Mult0|auto_generated|add20_result[5]~25_combout\,
	cin => \U2|Mult0|auto_generated|op_1~32\,
	cin0 => \U2|Mult0|auto_generated|op_1~22\,
	cin1 => \U2|Mult0|auto_generated|op_1~22COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~25_combout\,
	cout0 => \U2|Mult0|auto_generated|op_1~27\,
	cout1 => \U2|Mult0|auto_generated|op_1~27COUT1_174\);

-- Location: LC_X9_Y8_N3
\U2|Mult0|auto_generated|op_1~75\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~75_combout\ = \U2|Mult0|auto_generated|le7a\(6) $ (\U2|Mult0|auto_generated|add20_result[6]~50_combout\ $ (((!\U2|Mult0|auto_generated|op_1~32\ & \U2|Mult0|auto_generated|op_1~27\) # (\U2|Mult0|auto_generated|op_1~32\ & 
-- \U2|Mult0|auto_generated|op_1~27COUT1_174\))))
-- \U2|Mult0|auto_generated|op_1~77\ = CARRY((\U2|Mult0|auto_generated|le7a\(6) & (!\U2|Mult0|auto_generated|add20_result[6]~50_combout\ & !\U2|Mult0|auto_generated|op_1~27\)) # (!\U2|Mult0|auto_generated|le7a\(6) & ((!\U2|Mult0|auto_generated|op_1~27\) # 
-- (!\U2|Mult0|auto_generated|add20_result[6]~50_combout\))))
-- \U2|Mult0|auto_generated|op_1~77COUT1_176\ = CARRY((\U2|Mult0|auto_generated|le7a\(6) & (!\U2|Mult0|auto_generated|add20_result[6]~50_combout\ & !\U2|Mult0|auto_generated|op_1~27COUT1_174\)) # (!\U2|Mult0|auto_generated|le7a\(6) & 
-- ((!\U2|Mult0|auto_generated|op_1~27COUT1_174\) # (!\U2|Mult0|auto_generated|add20_result[6]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le7a\(6),
	datab => \U2|Mult0|auto_generated|add20_result[6]~50_combout\,
	cin => \U2|Mult0|auto_generated|op_1~32\,
	cin0 => \U2|Mult0|auto_generated|op_1~27\,
	cin1 => \U2|Mult0|auto_generated|op_1~27COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~75_combout\,
	cout0 => \U2|Mult0|auto_generated|op_1~77\,
	cout1 => \U2|Mult0|auto_generated|op_1~77COUT1_176\);

-- Location: LC_X9_Y8_N4
\U2|Mult0|auto_generated|op_1~80\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~80_combout\ = \U2|Mult0|auto_generated|le7a\(7) $ (\U2|Mult0|auto_generated|add20_result[7]~55_combout\ $ ((!(!\U2|Mult0|auto_generated|op_1~32\ & \U2|Mult0|auto_generated|op_1~77\) # (\U2|Mult0|auto_generated|op_1~32\ & 
-- \U2|Mult0|auto_generated|op_1~77COUT1_176\))))
-- \U2|Mult0|auto_generated|op_1~82\ = CARRY((\U2|Mult0|auto_generated|le7a\(7) & ((\U2|Mult0|auto_generated|add20_result[7]~55_combout\) # (!\U2|Mult0|auto_generated|op_1~77COUT1_176\))) # (!\U2|Mult0|auto_generated|le7a\(7) & 
-- (\U2|Mult0|auto_generated|add20_result[7]~55_combout\ & !\U2|Mult0|auto_generated|op_1~77COUT1_176\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le7a\(7),
	datab => \U2|Mult0|auto_generated|add20_result[7]~55_combout\,
	cin => \U2|Mult0|auto_generated|op_1~32\,
	cin0 => \U2|Mult0|auto_generated|op_1~77\,
	cin1 => \U2|Mult0|auto_generated|op_1~77COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~80_combout\,
	cout => \U2|Mult0|auto_generated|op_1~82\);

-- Location: LC_X9_Y7_N3
\U2|Mult0|auto_generated|le4a[1]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le4a\(1) = (\U2|Mult0|auto_generated|cs2a\(1) & (\U2|Mult0|auto_generated|cs1a\(1) $ (((\U2|Add0~5_combout\))))) # (!\U2|Mult0|auto_generated|cs2a\(1) & (\U2|Mult0|auto_generated|cs1a\(1) & (!\U2|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "268c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs2a\(1),
	datab => \U2|Mult0|auto_generated|cs1a\(1),
	datac => \U2|Add0~0_combout\,
	datad => \U2|Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le4a\(1));

-- Location: LC_X9_Y7_N4
\U2|Mult0|auto_generated|le4a[0]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le4a\(0) = (\U2|Mult0|auto_generated|cs1a\(1) $ (((\U2|Mult0|auto_generated|cs2a\(1) & \U2|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5fa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs2a\(1),
	datac => \U2|Add0~0_combout\,
	datad => \U2|Mult0|auto_generated|cs1a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le4a\(0));

-- Location: LC_X8_Y9_N1
\U2|Mult0|auto_generated|le3a[1]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le3a\(1) = (\U2|Mult0|auto_generated|cs2a\(0) & ((\U2|Mult0|auto_generated|cs1a\(0) $ (\U2|Add0~5_combout\)))) # (!\U2|Mult0|auto_generated|cs2a\(0) & (!\U2|Add0~0_combout\ & (\U2|Mult0|auto_generated|cs1a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1cd0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~0_combout\,
	datab => \U2|Mult0|auto_generated|cs2a\(0),
	datac => \U2|Mult0|auto_generated|cs1a\(0),
	datad => \U2|Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le3a\(1));

-- Location: LC_X8_Y9_N8
\U2|Mult0|auto_generated|le3a[0]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le3a\(0) = (\U2|Mult0|auto_generated|cs1a\(0) $ (((\U2|Add0~0_combout\ & \U2|Mult0|auto_generated|cs2a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5af0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~0_combout\,
	datac => \U2|Mult0|auto_generated|cs1a\(0),
	datad => \U2|Mult0|auto_generated|cs2a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le3a\(0));

-- Location: LC_X8_Y10_N1
\U2|Mult0|auto_generated|op_5~65\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~65_combout\ = \U2|Mult0|auto_generated|cs1a\(0) $ ((\U2|Mult0|auto_generated|le3a\(0)))
-- \U2|Mult0|auto_generated|op_5~67\ = CARRY((\U2|Mult0|auto_generated|cs1a\(0) & (\U2|Mult0|auto_generated|le3a\(0))))
-- \U2|Mult0|auto_generated|op_5~67COUT1_170\ = CARRY((\U2|Mult0|auto_generated|cs1a\(0) & (\U2|Mult0|auto_generated|le3a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs1a\(0),
	datab => \U2|Mult0|auto_generated|le3a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~65_combout\,
	cout0 => \U2|Mult0|auto_generated|op_5~67\,
	cout1 => \U2|Mult0|auto_generated|op_5~67COUT1_170\);

-- Location: LC_X8_Y10_N2
\U2|Mult0|auto_generated|op_5~70\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~70_combout\ = (\U2|Mult0|auto_generated|le3a\(1) $ ((\U2|Mult0|auto_generated|op_5~67\)))
-- \U2|Mult0|auto_generated|op_5~72\ = CARRY(((!\U2|Mult0|auto_generated|op_5~67\) # (!\U2|Mult0|auto_generated|le3a\(1))))
-- \U2|Mult0|auto_generated|op_5~72COUT1_172\ = CARRY(((!\U2|Mult0|auto_generated|op_5~67COUT1_170\) # (!\U2|Mult0|auto_generated|le3a\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|Mult0|auto_generated|le3a\(1),
	cin0 => \U2|Mult0|auto_generated|op_5~67\,
	cin1 => \U2|Mult0|auto_generated|op_5~67COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~70_combout\,
	cout0 => \U2|Mult0|auto_generated|op_5~72\,
	cout1 => \U2|Mult0|auto_generated|op_5~72COUT1_172\);

-- Location: LC_X8_Y10_N3
\U2|Mult0|auto_generated|op_5~75\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~75_combout\ = \U2|Mult0|auto_generated|op_1~65_combout\ $ (\U2|Mult0|auto_generated|le4a\(0) $ ((!\U2|Mult0|auto_generated|op_5~72\)))
-- \U2|Mult0|auto_generated|op_5~77\ = CARRY((\U2|Mult0|auto_generated|op_1~65_combout\ & ((\U2|Mult0|auto_generated|le4a\(0)) # (!\U2|Mult0|auto_generated|op_5~72\))) # (!\U2|Mult0|auto_generated|op_1~65_combout\ & (\U2|Mult0|auto_generated|le4a\(0) & 
-- !\U2|Mult0|auto_generated|op_5~72\)))
-- \U2|Mult0|auto_generated|op_5~77COUT1_174\ = CARRY((\U2|Mult0|auto_generated|op_1~65_combout\ & ((\U2|Mult0|auto_generated|le4a\(0)) # (!\U2|Mult0|auto_generated|op_5~72COUT1_172\))) # (!\U2|Mult0|auto_generated|op_1~65_combout\ & 
-- (\U2|Mult0|auto_generated|le4a\(0) & !\U2|Mult0|auto_generated|op_5~72COUT1_172\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_1~65_combout\,
	datab => \U2|Mult0|auto_generated|le4a\(0),
	cin0 => \U2|Mult0|auto_generated|op_5~72\,
	cin1 => \U2|Mult0|auto_generated|op_5~72COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~75_combout\,
	cout0 => \U2|Mult0|auto_generated|op_5~77\,
	cout1 => \U2|Mult0|auto_generated|op_5~77COUT1_174\);

-- Location: LC_X8_Y10_N4
\U2|Mult0|auto_generated|op_5~80\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~80_combout\ = \U2|Mult0|auto_generated|op_1~70_combout\ $ (\U2|Mult0|auto_generated|le4a\(1) $ ((\U2|Mult0|auto_generated|op_5~77\)))
-- \U2|Mult0|auto_generated|op_5~82\ = CARRY((\U2|Mult0|auto_generated|op_1~70_combout\ & (!\U2|Mult0|auto_generated|le4a\(1) & !\U2|Mult0|auto_generated|op_5~77COUT1_174\)) # (!\U2|Mult0|auto_generated|op_1~70_combout\ & 
-- ((!\U2|Mult0|auto_generated|op_5~77COUT1_174\) # (!\U2|Mult0|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_1~70_combout\,
	datab => \U2|Mult0|auto_generated|le4a\(1),
	cin0 => \U2|Mult0|auto_generated|op_5~77\,
	cin1 => \U2|Mult0|auto_generated|op_5~77COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~80_combout\,
	cout => \U2|Mult0|auto_generated|op_5~82\);

-- Location: LC_X8_Y10_N5
\U2|Mult0|auto_generated|op_5~50\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~50_combout\ = \U2|Mult0|auto_generated|op_1~50_combout\ $ (\U2|Mult0|auto_generated|op_2~50_combout\ $ ((!\U2|Mult0|auto_generated|op_5~82\)))
-- \U2|Mult0|auto_generated|op_5~52\ = CARRY((\U2|Mult0|auto_generated|op_1~50_combout\ & ((\U2|Mult0|auto_generated|op_2~50_combout\) # (!\U2|Mult0|auto_generated|op_5~82\))) # (!\U2|Mult0|auto_generated|op_1~50_combout\ & 
-- (\U2|Mult0|auto_generated|op_2~50_combout\ & !\U2|Mult0|auto_generated|op_5~82\)))
-- \U2|Mult0|auto_generated|op_5~52COUT1_176\ = CARRY((\U2|Mult0|auto_generated|op_1~50_combout\ & ((\U2|Mult0|auto_generated|op_2~50_combout\) # (!\U2|Mult0|auto_generated|op_5~82\))) # (!\U2|Mult0|auto_generated|op_1~50_combout\ & 
-- (\U2|Mult0|auto_generated|op_2~50_combout\ & !\U2|Mult0|auto_generated|op_5~82\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_1~50_combout\,
	datab => \U2|Mult0|auto_generated|op_2~50_combout\,
	cin => \U2|Mult0|auto_generated|op_5~82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~50_combout\,
	cout0 => \U2|Mult0|auto_generated|op_5~52\,
	cout1 => \U2|Mult0|auto_generated|op_5~52COUT1_176\);

-- Location: LC_X8_Y10_N6
\U2|Mult0|auto_generated|op_5~55\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~55_combout\ = \U2|Mult0|auto_generated|op_2~55_combout\ $ (\U2|Mult0|auto_generated|op_1~55_combout\ $ (((!\U2|Mult0|auto_generated|op_5~82\ & \U2|Mult0|auto_generated|op_5~52\) # (\U2|Mult0|auto_generated|op_5~82\ & 
-- \U2|Mult0|auto_generated|op_5~52COUT1_176\))))
-- \U2|Mult0|auto_generated|op_5~57\ = CARRY((\U2|Mult0|auto_generated|op_2~55_combout\ & (!\U2|Mult0|auto_generated|op_1~55_combout\ & !\U2|Mult0|auto_generated|op_5~52\)) # (!\U2|Mult0|auto_generated|op_2~55_combout\ & ((!\U2|Mult0|auto_generated|op_5~52\) 
-- # (!\U2|Mult0|auto_generated|op_1~55_combout\))))
-- \U2|Mult0|auto_generated|op_5~57COUT1_178\ = CARRY((\U2|Mult0|auto_generated|op_2~55_combout\ & (!\U2|Mult0|auto_generated|op_1~55_combout\ & !\U2|Mult0|auto_generated|op_5~52COUT1_176\)) # (!\U2|Mult0|auto_generated|op_2~55_combout\ & 
-- ((!\U2|Mult0|auto_generated|op_5~52COUT1_176\) # (!\U2|Mult0|auto_generated|op_1~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_2~55_combout\,
	datab => \U2|Mult0|auto_generated|op_1~55_combout\,
	cin => \U2|Mult0|auto_generated|op_5~82\,
	cin0 => \U2|Mult0|auto_generated|op_5~52\,
	cin1 => \U2|Mult0|auto_generated|op_5~52COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~55_combout\,
	cout0 => \U2|Mult0|auto_generated|op_5~57\,
	cout1 => \U2|Mult0|auto_generated|op_5~57COUT1_178\);

-- Location: LC_X8_Y10_N7
\U2|Mult0|auto_generated|op_5~60\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~60_combout\ = \U2|Mult0|auto_generated|op_1~60_combout\ $ (\U2|Mult0|auto_generated|op_2~60_combout\ $ ((!(!\U2|Mult0|auto_generated|op_5~82\ & \U2|Mult0|auto_generated|op_5~57\) # (\U2|Mult0|auto_generated|op_5~82\ & 
-- \U2|Mult0|auto_generated|op_5~57COUT1_178\))))
-- \U2|Mult0|auto_generated|op_5~62\ = CARRY((\U2|Mult0|auto_generated|op_1~60_combout\ & ((\U2|Mult0|auto_generated|op_2~60_combout\) # (!\U2|Mult0|auto_generated|op_5~57\))) # (!\U2|Mult0|auto_generated|op_1~60_combout\ & 
-- (\U2|Mult0|auto_generated|op_2~60_combout\ & !\U2|Mult0|auto_generated|op_5~57\)))
-- \U2|Mult0|auto_generated|op_5~62COUT1_180\ = CARRY((\U2|Mult0|auto_generated|op_1~60_combout\ & ((\U2|Mult0|auto_generated|op_2~60_combout\) # (!\U2|Mult0|auto_generated|op_5~57COUT1_178\))) # (!\U2|Mult0|auto_generated|op_1~60_combout\ & 
-- (\U2|Mult0|auto_generated|op_2~60_combout\ & !\U2|Mult0|auto_generated|op_5~57COUT1_178\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_1~60_combout\,
	datab => \U2|Mult0|auto_generated|op_2~60_combout\,
	cin => \U2|Mult0|auto_generated|op_5~82\,
	cin0 => \U2|Mult0|auto_generated|op_5~57\,
	cin1 => \U2|Mult0|auto_generated|op_5~57COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~60_combout\,
	cout0 => \U2|Mult0|auto_generated|op_5~62\,
	cout1 => \U2|Mult0|auto_generated|op_5~62COUT1_180\);

-- Location: LC_X8_Y10_N8
\U2|Mult0|auto_generated|op_5~35\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~35_combout\ = \U2|Mult0|auto_generated|op_1~35_combout\ $ (\U2|Mult0|auto_generated|op_2~35_combout\ $ (((!\U2|Mult0|auto_generated|op_5~82\ & \U2|Mult0|auto_generated|op_5~62\) # (\U2|Mult0|auto_generated|op_5~82\ & 
-- \U2|Mult0|auto_generated|op_5~62COUT1_180\))))
-- \U2|Mult0|auto_generated|op_5~37\ = CARRY((\U2|Mult0|auto_generated|op_1~35_combout\ & (!\U2|Mult0|auto_generated|op_2~35_combout\ & !\U2|Mult0|auto_generated|op_5~62\)) # (!\U2|Mult0|auto_generated|op_1~35_combout\ & ((!\U2|Mult0|auto_generated|op_5~62\) 
-- # (!\U2|Mult0|auto_generated|op_2~35_combout\))))
-- \U2|Mult0|auto_generated|op_5~37COUT1_182\ = CARRY((\U2|Mult0|auto_generated|op_1~35_combout\ & (!\U2|Mult0|auto_generated|op_2~35_combout\ & !\U2|Mult0|auto_generated|op_5~62COUT1_180\)) # (!\U2|Mult0|auto_generated|op_1~35_combout\ & 
-- ((!\U2|Mult0|auto_generated|op_5~62COUT1_180\) # (!\U2|Mult0|auto_generated|op_2~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_1~35_combout\,
	datab => \U2|Mult0|auto_generated|op_2~35_combout\,
	cin => \U2|Mult0|auto_generated|op_5~82\,
	cin0 => \U2|Mult0|auto_generated|op_5~62\,
	cin1 => \U2|Mult0|auto_generated|op_5~62COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~35_combout\,
	cout0 => \U2|Mult0|auto_generated|op_5~37\,
	cout1 => \U2|Mult0|auto_generated|op_5~37COUT1_182\);

-- Location: LC_X8_Y10_N9
\U2|Mult0|auto_generated|op_5~40\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~40_combout\ = \U2|Mult0|auto_generated|op_1~40_combout\ $ (\U2|Mult0|auto_generated|op_2~40_combout\ $ ((!(!\U2|Mult0|auto_generated|op_5~82\ & \U2|Mult0|auto_generated|op_5~37\) # (\U2|Mult0|auto_generated|op_5~82\ & 
-- \U2|Mult0|auto_generated|op_5~37COUT1_182\))))
-- \U2|Mult0|auto_generated|op_5~42\ = CARRY((\U2|Mult0|auto_generated|op_1~40_combout\ & ((\U2|Mult0|auto_generated|op_2~40_combout\) # (!\U2|Mult0|auto_generated|op_5~37COUT1_182\))) # (!\U2|Mult0|auto_generated|op_1~40_combout\ & 
-- (\U2|Mult0|auto_generated|op_2~40_combout\ & !\U2|Mult0|auto_generated|op_5~37COUT1_182\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_1~40_combout\,
	datab => \U2|Mult0|auto_generated|op_2~40_combout\,
	cin => \U2|Mult0|auto_generated|op_5~82\,
	cin0 => \U2|Mult0|auto_generated|op_5~37\,
	cin1 => \U2|Mult0|auto_generated|op_5~37COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~40_combout\,
	cout => \U2|Mult0|auto_generated|op_5~42\);

-- Location: LC_X9_Y10_N0
\U2|Mult0|auto_generated|op_5~30\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~30_combout\ = \U2|Mult0|auto_generated|op_2~30_combout\ $ (\U2|Mult0|auto_generated|op_1~30_combout\ $ ((\U2|Mult0|auto_generated|op_5~42\)))
-- \U2|Mult0|auto_generated|op_5~32\ = CARRY((\U2|Mult0|auto_generated|op_2~30_combout\ & (!\U2|Mult0|auto_generated|op_1~30_combout\ & !\U2|Mult0|auto_generated|op_5~42\)) # (!\U2|Mult0|auto_generated|op_2~30_combout\ & ((!\U2|Mult0|auto_generated|op_5~42\) 
-- # (!\U2|Mult0|auto_generated|op_1~30_combout\))))
-- \U2|Mult0|auto_generated|op_5~32COUT1_184\ = CARRY((\U2|Mult0|auto_generated|op_2~30_combout\ & (!\U2|Mult0|auto_generated|op_1~30_combout\ & !\U2|Mult0|auto_generated|op_5~42\)) # (!\U2|Mult0|auto_generated|op_2~30_combout\ & 
-- ((!\U2|Mult0|auto_generated|op_5~42\) # (!\U2|Mult0|auto_generated|op_1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_2~30_combout\,
	datab => \U2|Mult0|auto_generated|op_1~30_combout\,
	cin => \U2|Mult0|auto_generated|op_5~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~30_combout\,
	cout0 => \U2|Mult0|auto_generated|op_5~32\,
	cout1 => \U2|Mult0|auto_generated|op_5~32COUT1_184\);

-- Location: LC_X9_Y10_N1
\U2|Mult0|auto_generated|op_5~45\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~45_combout\ = \U2|Mult0|auto_generated|op_2~45_combout\ $ (\U2|Mult0|auto_generated|op_1~45_combout\ $ ((!(!\U2|Mult0|auto_generated|op_5~42\ & \U2|Mult0|auto_generated|op_5~32\) # (\U2|Mult0|auto_generated|op_5~42\ & 
-- \U2|Mult0|auto_generated|op_5~32COUT1_184\))))
-- \U2|Mult0|auto_generated|op_5~47\ = CARRY((\U2|Mult0|auto_generated|op_2~45_combout\ & ((\U2|Mult0|auto_generated|op_1~45_combout\) # (!\U2|Mult0|auto_generated|op_5~32\))) # (!\U2|Mult0|auto_generated|op_2~45_combout\ & 
-- (\U2|Mult0|auto_generated|op_1~45_combout\ & !\U2|Mult0|auto_generated|op_5~32\)))
-- \U2|Mult0|auto_generated|op_5~47COUT1_186\ = CARRY((\U2|Mult0|auto_generated|op_2~45_combout\ & ((\U2|Mult0|auto_generated|op_1~45_combout\) # (!\U2|Mult0|auto_generated|op_5~32COUT1_184\))) # (!\U2|Mult0|auto_generated|op_2~45_combout\ & 
-- (\U2|Mult0|auto_generated|op_1~45_combout\ & !\U2|Mult0|auto_generated|op_5~32COUT1_184\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_2~45_combout\,
	datab => \U2|Mult0|auto_generated|op_1~45_combout\,
	cin => \U2|Mult0|auto_generated|op_5~42\,
	cin0 => \U2|Mult0|auto_generated|op_5~32\,
	cin1 => \U2|Mult0|auto_generated|op_5~32COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~45_combout\,
	cout0 => \U2|Mult0|auto_generated|op_5~47\,
	cout1 => \U2|Mult0|auto_generated|op_5~47COUT1_186\);

-- Location: LC_X9_Y10_N2
\U2|Mult0|auto_generated|op_5~20\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~20_combout\ = \U2|Mult0|auto_generated|op_2~20_combout\ $ (\U2|Mult0|auto_generated|op_1~20_combout\ $ (((!\U2|Mult0|auto_generated|op_5~42\ & \U2|Mult0|auto_generated|op_5~47\) # (\U2|Mult0|auto_generated|op_5~42\ & 
-- \U2|Mult0|auto_generated|op_5~47COUT1_186\))))
-- \U2|Mult0|auto_generated|op_5~22\ = CARRY((\U2|Mult0|auto_generated|op_2~20_combout\ & (!\U2|Mult0|auto_generated|op_1~20_combout\ & !\U2|Mult0|auto_generated|op_5~47\)) # (!\U2|Mult0|auto_generated|op_2~20_combout\ & ((!\U2|Mult0|auto_generated|op_5~47\) 
-- # (!\U2|Mult0|auto_generated|op_1~20_combout\))))
-- \U2|Mult0|auto_generated|op_5~22COUT1_188\ = CARRY((\U2|Mult0|auto_generated|op_2~20_combout\ & (!\U2|Mult0|auto_generated|op_1~20_combout\ & !\U2|Mult0|auto_generated|op_5~47COUT1_186\)) # (!\U2|Mult0|auto_generated|op_2~20_combout\ & 
-- ((!\U2|Mult0|auto_generated|op_5~47COUT1_186\) # (!\U2|Mult0|auto_generated|op_1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_2~20_combout\,
	datab => \U2|Mult0|auto_generated|op_1~20_combout\,
	cin => \U2|Mult0|auto_generated|op_5~42\,
	cin0 => \U2|Mult0|auto_generated|op_5~47\,
	cin1 => \U2|Mult0|auto_generated|op_5~47COUT1_186\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~20_combout\,
	cout0 => \U2|Mult0|auto_generated|op_5~22\,
	cout1 => \U2|Mult0|auto_generated|op_5~22COUT1_188\);

-- Location: LC_X9_Y10_N3
\U2|Mult0|auto_generated|op_5~25\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~25_combout\ = \U2|Mult0|auto_generated|op_2~25_combout\ $ (\U2|Mult0|auto_generated|op_1~25_combout\ $ ((!(!\U2|Mult0|auto_generated|op_5~42\ & \U2|Mult0|auto_generated|op_5~22\) # (\U2|Mult0|auto_generated|op_5~42\ & 
-- \U2|Mult0|auto_generated|op_5~22COUT1_188\))))
-- \U2|Mult0|auto_generated|op_5~27\ = CARRY((\U2|Mult0|auto_generated|op_2~25_combout\ & ((\U2|Mult0|auto_generated|op_1~25_combout\) # (!\U2|Mult0|auto_generated|op_5~22\))) # (!\U2|Mult0|auto_generated|op_2~25_combout\ & 
-- (\U2|Mult0|auto_generated|op_1~25_combout\ & !\U2|Mult0|auto_generated|op_5~22\)))
-- \U2|Mult0|auto_generated|op_5~27COUT1_190\ = CARRY((\U2|Mult0|auto_generated|op_2~25_combout\ & ((\U2|Mult0|auto_generated|op_1~25_combout\) # (!\U2|Mult0|auto_generated|op_5~22COUT1_188\))) # (!\U2|Mult0|auto_generated|op_2~25_combout\ & 
-- (\U2|Mult0|auto_generated|op_1~25_combout\ & !\U2|Mult0|auto_generated|op_5~22COUT1_188\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_2~25_combout\,
	datab => \U2|Mult0|auto_generated|op_1~25_combout\,
	cin => \U2|Mult0|auto_generated|op_5~42\,
	cin0 => \U2|Mult0|auto_generated|op_5~22\,
	cin1 => \U2|Mult0|auto_generated|op_5~22COUT1_188\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~25_combout\,
	cout0 => \U2|Mult0|auto_generated|op_5~27\,
	cout1 => \U2|Mult0|auto_generated|op_5~27COUT1_190\);

-- Location: LC_X9_Y10_N4
\U2|Mult0|auto_generated|op_5~85\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~85_combout\ = \U2|Mult0|auto_generated|op_1~75_combout\ $ (\U2|Mult0|auto_generated|op_2~65_combout\ $ (((!\U2|Mult0|auto_generated|op_5~42\ & \U2|Mult0|auto_generated|op_5~27\) # (\U2|Mult0|auto_generated|op_5~42\ & 
-- \U2|Mult0|auto_generated|op_5~27COUT1_190\))))
-- \U2|Mult0|auto_generated|op_5~87\ = CARRY((\U2|Mult0|auto_generated|op_1~75_combout\ & (!\U2|Mult0|auto_generated|op_2~65_combout\ & !\U2|Mult0|auto_generated|op_5~27COUT1_190\)) # (!\U2|Mult0|auto_generated|op_1~75_combout\ & 
-- ((!\U2|Mult0|auto_generated|op_5~27COUT1_190\) # (!\U2|Mult0|auto_generated|op_2~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_1~75_combout\,
	datab => \U2|Mult0|auto_generated|op_2~65_combout\,
	cin => \U2|Mult0|auto_generated|op_5~42\,
	cin0 => \U2|Mult0|auto_generated|op_5~27\,
	cin1 => \U2|Mult0|auto_generated|op_5~27COUT1_190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~85_combout\,
	cout => \U2|Mult0|auto_generated|op_5~87\);

-- Location: LC_X9_Y10_N5
\U2|Mult0|auto_generated|op_5~90\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~90_combout\ = \U2|Mult0|auto_generated|op_2~70_combout\ $ (\U2|Mult0|auto_generated|op_1~80_combout\ $ ((!\U2|Mult0|auto_generated|op_5~87\)))
-- \U2|Mult0|auto_generated|op_5~92\ = CARRY((\U2|Mult0|auto_generated|op_2~70_combout\ & ((\U2|Mult0|auto_generated|op_1~80_combout\) # (!\U2|Mult0|auto_generated|op_5~87\))) # (!\U2|Mult0|auto_generated|op_2~70_combout\ & 
-- (\U2|Mult0|auto_generated|op_1~80_combout\ & !\U2|Mult0|auto_generated|op_5~87\)))
-- \U2|Mult0|auto_generated|op_5~92COUT1_192\ = CARRY((\U2|Mult0|auto_generated|op_2~70_combout\ & ((\U2|Mult0|auto_generated|op_1~80_combout\) # (!\U2|Mult0|auto_generated|op_5~87\))) # (!\U2|Mult0|auto_generated|op_2~70_combout\ & 
-- (\U2|Mult0|auto_generated|op_1~80_combout\ & !\U2|Mult0|auto_generated|op_5~87\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_2~70_combout\,
	datab => \U2|Mult0|auto_generated|op_1~80_combout\,
	cin => \U2|Mult0|auto_generated|op_5~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~90_combout\,
	cout0 => \U2|Mult0|auto_generated|op_5~92\,
	cout1 => \U2|Mult0|auto_generated|op_5~92COUT1_192\);

-- Location: LC_X8_Y8_N1
\U2|Mult0|auto_generated|le7a[8]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le7a\(8) = (\U2|speedreg\(7) & (((\U2|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|speedreg\(7),
	datac => \U2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le7a\(8));

-- Location: LC_X13_Y9_N6
\U2|timechunk[15]\ : maxv_lcell
-- Equation(s):
-- \U2|timechunk\(15) = DFFEAS(((\U2|Add0~75_combout\ & (\U2|LessThan1~5_combout\ & \U2|LessThan1~8_combout\))), GLOBAL(\clk~combout\), VCC, , \U2|LessThan0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U2|Add0~75_combout\,
	datac => \U2|LessThan1~5_combout\,
	datad => \U2|LessThan1~8_combout\,
	aclr => GND,
	ena => \U2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|timechunk\(15));

-- Location: LC_X13_Y9_N0
\U2|Add0~75\ : maxv_lcell
-- Equation(s):
-- \U2|Add0~75_combout\ = \U2|timechunk\(15) $ ((((\U2|Add0~42\))))
-- \U2|Add0~77\ = CARRY(((!\U2|Add0~42\)) # (!\U2|timechunk\(15)))
-- \U2|Add0~77COUT1_147\ = CARRY(((!\U2|Add0~42\)) # (!\U2|timechunk\(15)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|timechunk\(15),
	cin => \U2|Add0~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Add0~75_combout\,
	cout0 => \U2|Add0~77\,
	cout1 => \U2|Add0~77COUT1_147\);

-- Location: LC_X11_Y9_N2
\U2|Mult0|auto_generated|le3a[15]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le3a\(15) = (\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Mult0|auto_generated|cs1a\(0) $ (((\U2|Add0~75_combout\))))) # (!\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Mult0|auto_generated|cs1a\(0) & (!\U2|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "468a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs1a\(0),
	datab => \U2|Mult0|auto_generated|cs2a\(0),
	datac => \U2|Add0~40_combout\,
	datad => \U2|Add0~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le3a\(15));

-- Location: LC_X12_Y7_N6
\U2|Mult0|auto_generated|le4a[13]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le4a\(13) = (\U2|Mult0|auto_generated|cs2a\(1) & ((\U2|Mult0|auto_generated|cs1a\(1) $ (\U2|Add0~35_combout\)))) # (!\U2|Mult0|auto_generated|cs2a\(1) & (!\U2|Add0~30_combout\ & (\U2|Mult0|auto_generated|cs1a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1cd0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~30_combout\,
	datab => \U2|Mult0|auto_generated|cs2a\(1),
	datac => \U2|Mult0|auto_generated|cs1a\(1),
	datad => \U2|Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le4a\(13));

-- Location: LC_X12_Y8_N8
\U2|Mult0|auto_generated|add20_result[8]~0\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|add20_result[8]~0_combout\ = \U2|Mult0|auto_generated|le3a\(15) $ (\U2|Mult0|auto_generated|le4a\(13) $ ((!(!\U2|Mult0|auto_generated|add20_result[4]~22\ & \U2|Mult0|auto_generated|add20_result[7]~57\) # 
-- (\U2|Mult0|auto_generated|add20_result[4]~22\ & \U2|Mult0|auto_generated|add20_result[7]~57COUT1_130\))))
-- \U2|Mult0|auto_generated|add20_result[8]~2\ = CARRY((\U2|Mult0|auto_generated|le3a\(15) & ((\U2|Mult0|auto_generated|le4a\(13)) # (!\U2|Mult0|auto_generated|add20_result[7]~57\))) # (!\U2|Mult0|auto_generated|le3a\(15) & 
-- (\U2|Mult0|auto_generated|le4a\(13) & !\U2|Mult0|auto_generated|add20_result[7]~57\)))
-- \U2|Mult0|auto_generated|add20_result[8]~2COUT1_132\ = CARRY((\U2|Mult0|auto_generated|le3a\(15) & ((\U2|Mult0|auto_generated|le4a\(13)) # (!\U2|Mult0|auto_generated|add20_result[7]~57COUT1_130\))) # (!\U2|Mult0|auto_generated|le3a\(15) & 
-- (\U2|Mult0|auto_generated|le4a\(13) & !\U2|Mult0|auto_generated|add20_result[7]~57COUT1_130\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le3a\(15),
	datab => \U2|Mult0|auto_generated|le4a\(13),
	cin => \U2|Mult0|auto_generated|add20_result[4]~22\,
	cin0 => \U2|Mult0|auto_generated|add20_result[7]~57\,
	cin1 => \U2|Mult0|auto_generated|add20_result[7]~57COUT1_130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|add20_result[8]~0_combout\,
	cout0 => \U2|Mult0|auto_generated|add20_result[8]~2\,
	cout1 => \U2|Mult0|auto_generated|add20_result[8]~2COUT1_132\);

-- Location: LC_X9_Y8_N5
\U2|Mult0|auto_generated|op_1~0\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~0_combout\ = \U2|Mult0|auto_generated|le7a\(8) $ (\U2|Mult0|auto_generated|add20_result[8]~0_combout\ $ ((\U2|Mult0|auto_generated|op_1~82\)))
-- \U2|Mult0|auto_generated|op_1~2\ = CARRY((\U2|Mult0|auto_generated|le7a\(8) & (!\U2|Mult0|auto_generated|add20_result[8]~0_combout\ & !\U2|Mult0|auto_generated|op_1~82\)) # (!\U2|Mult0|auto_generated|le7a\(8) & ((!\U2|Mult0|auto_generated|op_1~82\) # 
-- (!\U2|Mult0|auto_generated|add20_result[8]~0_combout\))))
-- \U2|Mult0|auto_generated|op_1~2COUT1_178\ = CARRY((\U2|Mult0|auto_generated|le7a\(8) & (!\U2|Mult0|auto_generated|add20_result[8]~0_combout\ & !\U2|Mult0|auto_generated|op_1~82\)) # (!\U2|Mult0|auto_generated|le7a\(8) & 
-- ((!\U2|Mult0|auto_generated|op_1~82\) # (!\U2|Mult0|auto_generated|add20_result[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le7a\(8),
	datab => \U2|Mult0|auto_generated|add20_result[8]~0_combout\,
	cin => \U2|Mult0|auto_generated|op_1~82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~0_combout\,
	cout0 => \U2|Mult0|auto_generated|op_1~2\,
	cout1 => \U2|Mult0|auto_generated|op_1~2COUT1_178\);

-- Location: LC_X12_Y6_N5
\U2|Mult0|auto_generated|le6a[9]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le6a\(9) = (\U2|Add0~10_combout\ & ((\U2|Mult0|auto_generated|cs1a\(3)) # ((\U2|Add0~25_combout\ & \U2|Mult0|auto_generated|cs2a\(3))))) # (!\U2|Add0~10_combout\ & (\U2|Add0~25_combout\ & ((\U2|Mult0|auto_generated|cs2a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~10_combout\,
	datab => \U2|Add0~25_combout\,
	datac => \U2|Mult0|auto_generated|cs1a\(3),
	datad => \U2|Mult0|auto_generated|cs2a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le6a\(9));

-- Location: LC_X12_Y6_N1
\U2|Mult0|auto_generated|le5a[11]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le5a\(11) = (\U2|Mult0|auto_generated|cs2a\(2) & (\U2|Mult0|auto_generated|cs1a\(2) $ ((\U2|Add0~20_combout\)))) # (!\U2|Mult0|auto_generated|cs2a\(2) & (\U2|Mult0|auto_generated|cs1a\(2) & ((!\U2|Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "606a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs1a\(2),
	datab => \U2|Add0~20_combout\,
	datac => \U2|Mult0|auto_generated|cs2a\(2),
	datad => \U2|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le5a\(11));

-- Location: LC_X13_Y10_N4
\U2|Mult0|auto_generated|op_2~0\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_2~0_combout\ = \U2|Mult0|auto_generated|le6a\(9) $ (\U2|Mult0|auto_generated|le5a\(11) $ (((!\U2|Mult0|auto_generated|op_2~47\ & \U2|Mult0|auto_generated|op_2~72\) # (\U2|Mult0|auto_generated|op_2~47\ & 
-- \U2|Mult0|auto_generated|op_2~72COUT1_162\))))
-- \U2|Mult0|auto_generated|op_2~2\ = CARRY((\U2|Mult0|auto_generated|le6a\(9) & (!\U2|Mult0|auto_generated|le5a\(11) & !\U2|Mult0|auto_generated|op_2~72COUT1_162\)) # (!\U2|Mult0|auto_generated|le6a\(9) & ((!\U2|Mult0|auto_generated|op_2~72COUT1_162\) # 
-- (!\U2|Mult0|auto_generated|le5a\(11)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le6a\(9),
	datab => \U2|Mult0|auto_generated|le5a\(11),
	cin => \U2|Mult0|auto_generated|op_2~47\,
	cin0 => \U2|Mult0|auto_generated|op_2~72\,
	cin1 => \U2|Mult0|auto_generated|op_2~72COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_2~0_combout\,
	cout => \U2|Mult0|auto_generated|op_2~2\);

-- Location: LC_X9_Y10_N6
\U2|Mult0|auto_generated|op_5~0\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~0_combout\ = \U2|Mult0|auto_generated|op_1~0_combout\ $ (\U2|Mult0|auto_generated|op_2~0_combout\ $ (((!\U2|Mult0|auto_generated|op_5~87\ & \U2|Mult0|auto_generated|op_5~92\) # (\U2|Mult0|auto_generated|op_5~87\ & 
-- \U2|Mult0|auto_generated|op_5~92COUT1_192\))))
-- \U2|Mult0|auto_generated|op_5~2\ = CARRY((\U2|Mult0|auto_generated|op_1~0_combout\ & (!\U2|Mult0|auto_generated|op_2~0_combout\ & !\U2|Mult0|auto_generated|op_5~92\)) # (!\U2|Mult0|auto_generated|op_1~0_combout\ & ((!\U2|Mult0|auto_generated|op_5~92\) # 
-- (!\U2|Mult0|auto_generated|op_2~0_combout\))))
-- \U2|Mult0|auto_generated|op_5~2COUT1_194\ = CARRY((\U2|Mult0|auto_generated|op_1~0_combout\ & (!\U2|Mult0|auto_generated|op_2~0_combout\ & !\U2|Mult0|auto_generated|op_5~92COUT1_192\)) # (!\U2|Mult0|auto_generated|op_1~0_combout\ & 
-- ((!\U2|Mult0|auto_generated|op_5~92COUT1_192\) # (!\U2|Mult0|auto_generated|op_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_1~0_combout\,
	datab => \U2|Mult0|auto_generated|op_2~0_combout\,
	cin => \U2|Mult0|auto_generated|op_5~87\,
	cin0 => \U2|Mult0|auto_generated|op_5~92\,
	cin1 => \U2|Mult0|auto_generated|op_5~92COUT1_192\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~0_combout\,
	cout0 => \U2|Mult0|auto_generated|op_5~2\,
	cout1 => \U2|Mult0|auto_generated|op_5~2COUT1_194\);

-- Location: LC_X9_Y7_N6
\U2|Mult0|auto_generated|le7a[10]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le7a\(10) = (((\U2|speedreg\(7) & \U2|Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|speedreg\(7),
	datad => \U2|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le7a\(10));

-- Location: LC_X13_Y9_N8
\U2|timechunk[16]\ : maxv_lcell
-- Equation(s):
-- \U2|timechunk\(16) = DFFEAS(((\U2|Add0~80_combout\ & (\U2|LessThan1~5_combout\ & \U2|LessThan1~8_combout\))), GLOBAL(\clk~combout\), VCC, , \U2|LessThan0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U2|Add0~80_combout\,
	datac => \U2|LessThan1~5_combout\,
	datad => \U2|LessThan1~8_combout\,
	aclr => GND,
	ena => \U2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|timechunk\(16));

-- Location: LC_X13_Y9_N1
\U2|Add0~80\ : maxv_lcell
-- Equation(s):
-- \U2|Add0~80_combout\ = \U2|timechunk\(16) $ ((((!(!\U2|Add0~42\ & \U2|Add0~77\) # (\U2|Add0~42\ & \U2|Add0~77COUT1_147\)))))
-- \U2|Add0~82\ = CARRY((\U2|timechunk\(16) & ((!\U2|Add0~77\))))
-- \U2|Add0~82COUT1_149\ = CARRY((\U2|timechunk\(16) & ((!\U2|Add0~77COUT1_147\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|timechunk\(16),
	cin => \U2|Add0~42\,
	cin0 => \U2|Add0~77\,
	cin1 => \U2|Add0~77COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Add0~80_combout\,
	cout0 => \U2|Add0~82\,
	cout1 => \U2|Add0~82COUT1_149\);

-- Location: LC_X13_Y9_N9
\U2|timechunk[17]\ : maxv_lcell
-- Equation(s):
-- \U2|timechunk\(17) = DFFEAS(((\U2|Add0~85_combout\ & (\U2|LessThan1~5_combout\ & \U2|LessThan1~8_combout\))), GLOBAL(\clk~combout\), VCC, , \U2|LessThan0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U2|Add0~85_combout\,
	datac => \U2|LessThan1~5_combout\,
	datad => \U2|LessThan1~8_combout\,
	aclr => GND,
	ena => \U2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|timechunk\(17));

-- Location: LC_X13_Y9_N2
\U2|Add0~85\ : maxv_lcell
-- Equation(s):
-- \U2|Add0~85_combout\ = (\U2|timechunk\(17) $ (((!\U2|Add0~42\ & \U2|Add0~82\) # (\U2|Add0~42\ & \U2|Add0~82COUT1_149\))))
-- \U2|Add0~87\ = CARRY(((!\U2|Add0~82\) # (!\U2|timechunk\(17))))
-- \U2|Add0~87COUT1_151\ = CARRY(((!\U2|Add0~82COUT1_149\) # (!\U2|timechunk\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|timechunk\(17),
	cin => \U2|Add0~42\,
	cin0 => \U2|Add0~82\,
	cin1 => \U2|Add0~82COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Add0~85_combout\,
	cout0 => \U2|Add0~87\,
	cout1 => \U2|Add0~87COUT1_151\);

-- Location: LC_X13_Y9_N7
\U2|Mult0|auto_generated|le3a[17]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le3a\(17) = (\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Mult0|auto_generated|cs1a\(0) $ (((\U2|Add0~85_combout\))))) # (!\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Mult0|auto_generated|cs1a\(0) & (!\U2|Add0~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "52a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs1a\(0),
	datab => \U2|Add0~80_combout\,
	datac => \U2|Mult0|auto_generated|cs2a\(0),
	datad => \U2|Add0~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le3a\(17));

-- Location: LC_X14_Y8_N5
\U2|Mult0|auto_generated|le4a[15]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le4a\(15) = (\U2|Mult0|auto_generated|cs2a\(1) & ((\U2|Mult0|auto_generated|cs1a\(1) $ (\U2|Add0~75_combout\)))) # (!\U2|Mult0|auto_generated|cs2a\(1) & (!\U2|Add0~40_combout\ & (\U2|Mult0|auto_generated|cs1a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1cd0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~40_combout\,
	datab => \U2|Mult0|auto_generated|cs2a\(1),
	datac => \U2|Mult0|auto_generated|cs1a\(1),
	datad => \U2|Add0~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le4a\(15));

-- Location: LC_X14_Y8_N3
\U2|Mult0|auto_generated|le3a[16]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le3a\(16) = (\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Mult0|auto_generated|cs1a\(0) $ (((\U2|Add0~80_combout\))))) # (!\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Mult0|auto_generated|cs1a\(0) & (!\U2|Add0~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "268c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs2a\(0),
	datab => \U2|Mult0|auto_generated|cs1a\(0),
	datac => \U2|Add0~75_combout\,
	datad => \U2|Add0~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le3a\(16));

-- Location: LC_X12_Y7_N1
\U2|Mult0|auto_generated|le4a[14]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le4a\(14) = (\U2|Mult0|auto_generated|cs2a\(1) & ((\U2|Add0~40_combout\ $ (\U2|Mult0|auto_generated|cs1a\(1))))) # (!\U2|Mult0|auto_generated|cs2a\(1) & (!\U2|Add0~35_combout\ & ((\U2|Mult0|auto_generated|cs1a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1dc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~35_combout\,
	datab => \U2|Mult0|auto_generated|cs2a\(1),
	datac => \U2|Add0~40_combout\,
	datad => \U2|Mult0|auto_generated|cs1a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le4a\(14));

-- Location: LC_X12_Y8_N9
\U2|Mult0|auto_generated|add20_result[9]~5\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|add20_result[9]~5_combout\ = \U2|Mult0|auto_generated|le3a\(16) $ (\U2|Mult0|auto_generated|le4a\(14) $ (((!\U2|Mult0|auto_generated|add20_result[4]~22\ & \U2|Mult0|auto_generated|add20_result[8]~2\) # 
-- (\U2|Mult0|auto_generated|add20_result[4]~22\ & \U2|Mult0|auto_generated|add20_result[8]~2COUT1_132\))))
-- \U2|Mult0|auto_generated|add20_result[9]~7\ = CARRY((\U2|Mult0|auto_generated|le3a\(16) & (!\U2|Mult0|auto_generated|le4a\(14) & !\U2|Mult0|auto_generated|add20_result[8]~2COUT1_132\)) # (!\U2|Mult0|auto_generated|le3a\(16) & 
-- ((!\U2|Mult0|auto_generated|add20_result[8]~2COUT1_132\) # (!\U2|Mult0|auto_generated|le4a\(14)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le3a\(16),
	datab => \U2|Mult0|auto_generated|le4a\(14),
	cin => \U2|Mult0|auto_generated|add20_result[4]~22\,
	cin0 => \U2|Mult0|auto_generated|add20_result[8]~2\,
	cin1 => \U2|Mult0|auto_generated|add20_result[8]~2COUT1_132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|add20_result[9]~5_combout\,
	cout => \U2|Mult0|auto_generated|add20_result[9]~7\);

-- Location: LC_X13_Y8_N0
\U2|Mult0|auto_generated|add20_result[10]~10\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|add20_result[10]~10_combout\ = \U2|Mult0|auto_generated|le3a\(17) $ (\U2|Mult0|auto_generated|le4a\(15) $ ((!\U2|Mult0|auto_generated|add20_result[9]~7\)))
-- \U2|Mult0|auto_generated|add20_result[10]~12\ = CARRY((\U2|Mult0|auto_generated|le3a\(17) & ((\U2|Mult0|auto_generated|le4a\(15)) # (!\U2|Mult0|auto_generated|add20_result[9]~7\))) # (!\U2|Mult0|auto_generated|le3a\(17) & 
-- (\U2|Mult0|auto_generated|le4a\(15) & !\U2|Mult0|auto_generated|add20_result[9]~7\)))
-- \U2|Mult0|auto_generated|add20_result[10]~12COUT1_134\ = CARRY((\U2|Mult0|auto_generated|le3a\(17) & ((\U2|Mult0|auto_generated|le4a\(15)) # (!\U2|Mult0|auto_generated|add20_result[9]~7\))) # (!\U2|Mult0|auto_generated|le3a\(17) & 
-- (\U2|Mult0|auto_generated|le4a\(15) & !\U2|Mult0|auto_generated|add20_result[9]~7\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le3a\(17),
	datab => \U2|Mult0|auto_generated|le4a\(15),
	cin => \U2|Mult0|auto_generated|add20_result[9]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|add20_result[10]~10_combout\,
	cout0 => \U2|Mult0|auto_generated|add20_result[10]~12\,
	cout1 => \U2|Mult0|auto_generated|add20_result[10]~12COUT1_134\);

-- Location: LC_X7_Y8_N5
\U2|Mult0|auto_generated|le7a[9]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le7a\(9) = ((\U2|speedreg\(7) & ((\U2|Add0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|speedreg\(7),
	datad => \U2|Add0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le7a\(9));

-- Location: LC_X9_Y8_N6
\U2|Mult0|auto_generated|op_1~5\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~5_combout\ = \U2|Mult0|auto_generated|le7a\(9) $ (\U2|Mult0|auto_generated|add20_result[9]~5_combout\ $ ((!(!\U2|Mult0|auto_generated|op_1~82\ & \U2|Mult0|auto_generated|op_1~2\) # (\U2|Mult0|auto_generated|op_1~82\ & 
-- \U2|Mult0|auto_generated|op_1~2COUT1_178\))))
-- \U2|Mult0|auto_generated|op_1~7\ = CARRY((\U2|Mult0|auto_generated|le7a\(9) & ((\U2|Mult0|auto_generated|add20_result[9]~5_combout\) # (!\U2|Mult0|auto_generated|op_1~2\))) # (!\U2|Mult0|auto_generated|le7a\(9) & 
-- (\U2|Mult0|auto_generated|add20_result[9]~5_combout\ & !\U2|Mult0|auto_generated|op_1~2\)))
-- \U2|Mult0|auto_generated|op_1~7COUT1_180\ = CARRY((\U2|Mult0|auto_generated|le7a\(9) & ((\U2|Mult0|auto_generated|add20_result[9]~5_combout\) # (!\U2|Mult0|auto_generated|op_1~2COUT1_178\))) # (!\U2|Mult0|auto_generated|le7a\(9) & 
-- (\U2|Mult0|auto_generated|add20_result[9]~5_combout\ & !\U2|Mult0|auto_generated|op_1~2COUT1_178\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le7a\(9),
	datab => \U2|Mult0|auto_generated|add20_result[9]~5_combout\,
	cin => \U2|Mult0|auto_generated|op_1~82\,
	cin0 => \U2|Mult0|auto_generated|op_1~2\,
	cin1 => \U2|Mult0|auto_generated|op_1~2COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~5_combout\,
	cout0 => \U2|Mult0|auto_generated|op_1~7\,
	cout1 => \U2|Mult0|auto_generated|op_1~7COUT1_180\);

-- Location: LC_X9_Y8_N7
\U2|Mult0|auto_generated|op_1~10\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~10_combout\ = \U2|Mult0|auto_generated|le7a\(10) $ (\U2|Mult0|auto_generated|add20_result[10]~10_combout\ $ (((!\U2|Mult0|auto_generated|op_1~82\ & \U2|Mult0|auto_generated|op_1~7\) # (\U2|Mult0|auto_generated|op_1~82\ & 
-- \U2|Mult0|auto_generated|op_1~7COUT1_180\))))
-- \U2|Mult0|auto_generated|op_1~12\ = CARRY((\U2|Mult0|auto_generated|le7a\(10) & (!\U2|Mult0|auto_generated|add20_result[10]~10_combout\ & !\U2|Mult0|auto_generated|op_1~7\)) # (!\U2|Mult0|auto_generated|le7a\(10) & ((!\U2|Mult0|auto_generated|op_1~7\) # 
-- (!\U2|Mult0|auto_generated|add20_result[10]~10_combout\))))
-- \U2|Mult0|auto_generated|op_1~12COUT1_182\ = CARRY((\U2|Mult0|auto_generated|le7a\(10) & (!\U2|Mult0|auto_generated|add20_result[10]~10_combout\ & !\U2|Mult0|auto_generated|op_1~7COUT1_180\)) # (!\U2|Mult0|auto_generated|le7a\(10) & 
-- ((!\U2|Mult0|auto_generated|op_1~7COUT1_180\) # (!\U2|Mult0|auto_generated|add20_result[10]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le7a\(10),
	datab => \U2|Mult0|auto_generated|add20_result[10]~10_combout\,
	cin => \U2|Mult0|auto_generated|op_1~82\,
	cin0 => \U2|Mult0|auto_generated|op_1~7\,
	cin1 => \U2|Mult0|auto_generated|op_1~7COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~10_combout\,
	cout0 => \U2|Mult0|auto_generated|op_1~12\,
	cout1 => \U2|Mult0|auto_generated|op_1~12COUT1_182\);

-- Location: LC_X13_Y7_N7
\U2|Mult0|auto_generated|le5a[13]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le5a\(13) = (\U2|Mult0|auto_generated|cs2a\(2) & (\U2|Mult0|auto_generated|cs1a\(2) $ (((\U2|Add0~35_combout\))))) # (!\U2|Mult0|auto_generated|cs2a\(2) & (\U2|Mult0|auto_generated|cs1a\(2) & (!\U2|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "52a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs1a\(2),
	datab => \U2|Add0~30_combout\,
	datac => \U2|Mult0|auto_generated|cs2a\(2),
	datad => \U2|Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le5a\(13));

-- Location: LC_X12_Y6_N4
\U2|Mult0|auto_generated|le6a[11]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le6a\(11) = (\U2|Mult0|auto_generated|cs1a\(3) & ((\U2|Add0~15_combout\) # ((\U2|Add0~20_combout\ & \U2|Mult0|auto_generated|cs2a\(3))))) # (!\U2|Mult0|auto_generated|cs1a\(3) & (((\U2|Add0~20_combout\ & 
-- \U2|Mult0|auto_generated|cs2a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs1a\(3),
	datab => \U2|Add0~15_combout\,
	datac => \U2|Add0~20_combout\,
	datad => \U2|Mult0|auto_generated|cs2a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le6a\(11));

-- Location: LC_X12_Y6_N7
\U2|Mult0|auto_generated|le6a[10]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le6a\(10) = (\U2|Add0~25_combout\ & ((\U2|Mult0|auto_generated|cs1a\(3)) # ((\U2|Add0~15_combout\ & \U2|Mult0|auto_generated|cs2a\(3))))) # (!\U2|Add0~25_combout\ & (\U2|Add0~15_combout\ & ((\U2|Mult0|auto_generated|cs2a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~25_combout\,
	datab => \U2|Add0~15_combout\,
	datac => \U2|Mult0|auto_generated|cs1a\(3),
	datad => \U2|Mult0|auto_generated|cs2a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le6a\(10));

-- Location: LC_X13_Y7_N8
\U2|Mult0|auto_generated|le5a[12]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le5a\(12) = (\U2|Mult0|auto_generated|cs2a\(2) & (\U2|Mult0|auto_generated|cs1a\(2) $ ((\U2|Add0~30_combout\)))) # (!\U2|Mult0|auto_generated|cs2a\(2) & (\U2|Mult0|auto_generated|cs1a\(2) & ((!\U2|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "606a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs1a\(2),
	datab => \U2|Add0~30_combout\,
	datac => \U2|Mult0|auto_generated|cs2a\(2),
	datad => \U2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le5a\(12));

-- Location: LC_X13_Y10_N5
\U2|Mult0|auto_generated|op_2~5\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_2~5_combout\ = \U2|Mult0|auto_generated|le6a\(10) $ (\U2|Mult0|auto_generated|le5a\(12) $ ((!\U2|Mult0|auto_generated|op_2~2\)))
-- \U2|Mult0|auto_generated|op_2~7\ = CARRY((\U2|Mult0|auto_generated|le6a\(10) & ((\U2|Mult0|auto_generated|le5a\(12)) # (!\U2|Mult0|auto_generated|op_2~2\))) # (!\U2|Mult0|auto_generated|le6a\(10) & (\U2|Mult0|auto_generated|le5a\(12) & 
-- !\U2|Mult0|auto_generated|op_2~2\)))
-- \U2|Mult0|auto_generated|op_2~7COUT1_164\ = CARRY((\U2|Mult0|auto_generated|le6a\(10) & ((\U2|Mult0|auto_generated|le5a\(12)) # (!\U2|Mult0|auto_generated|op_2~2\))) # (!\U2|Mult0|auto_generated|le6a\(10) & (\U2|Mult0|auto_generated|le5a\(12) & 
-- !\U2|Mult0|auto_generated|op_2~2\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le6a\(10),
	datab => \U2|Mult0|auto_generated|le5a\(12),
	cin => \U2|Mult0|auto_generated|op_2~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_2~5_combout\,
	cout0 => \U2|Mult0|auto_generated|op_2~7\,
	cout1 => \U2|Mult0|auto_generated|op_2~7COUT1_164\);

-- Location: LC_X13_Y10_N6
\U2|Mult0|auto_generated|op_2~10\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_2~10_combout\ = \U2|Mult0|auto_generated|le5a\(13) $ (\U2|Mult0|auto_generated|le6a\(11) $ (((!\U2|Mult0|auto_generated|op_2~2\ & \U2|Mult0|auto_generated|op_2~7\) # (\U2|Mult0|auto_generated|op_2~2\ & 
-- \U2|Mult0|auto_generated|op_2~7COUT1_164\))))
-- \U2|Mult0|auto_generated|op_2~12\ = CARRY((\U2|Mult0|auto_generated|le5a\(13) & (!\U2|Mult0|auto_generated|le6a\(11) & !\U2|Mult0|auto_generated|op_2~7\)) # (!\U2|Mult0|auto_generated|le5a\(13) & ((!\U2|Mult0|auto_generated|op_2~7\) # 
-- (!\U2|Mult0|auto_generated|le6a\(11)))))
-- \U2|Mult0|auto_generated|op_2~12COUT1_166\ = CARRY((\U2|Mult0|auto_generated|le5a\(13) & (!\U2|Mult0|auto_generated|le6a\(11) & !\U2|Mult0|auto_generated|op_2~7COUT1_164\)) # (!\U2|Mult0|auto_generated|le5a\(13) & 
-- ((!\U2|Mult0|auto_generated|op_2~7COUT1_164\) # (!\U2|Mult0|auto_generated|le6a\(11)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le5a\(13),
	datab => \U2|Mult0|auto_generated|le6a\(11),
	cin => \U2|Mult0|auto_generated|op_2~2\,
	cin0 => \U2|Mult0|auto_generated|op_2~7\,
	cin1 => \U2|Mult0|auto_generated|op_2~7COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_2~10_combout\,
	cout0 => \U2|Mult0|auto_generated|op_2~12\,
	cout1 => \U2|Mult0|auto_generated|op_2~12COUT1_166\);

-- Location: LC_X9_Y10_N7
\U2|Mult0|auto_generated|op_5~5\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~5_combout\ = \U2|Mult0|auto_generated|op_1~5_combout\ $ (\U2|Mult0|auto_generated|op_2~5_combout\ $ ((!(!\U2|Mult0|auto_generated|op_5~87\ & \U2|Mult0|auto_generated|op_5~2\) # (\U2|Mult0|auto_generated|op_5~87\ & 
-- \U2|Mult0|auto_generated|op_5~2COUT1_194\))))
-- \U2|Mult0|auto_generated|op_5~7\ = CARRY((\U2|Mult0|auto_generated|op_1~5_combout\ & ((\U2|Mult0|auto_generated|op_2~5_combout\) # (!\U2|Mult0|auto_generated|op_5~2\))) # (!\U2|Mult0|auto_generated|op_1~5_combout\ & 
-- (\U2|Mult0|auto_generated|op_2~5_combout\ & !\U2|Mult0|auto_generated|op_5~2\)))
-- \U2|Mult0|auto_generated|op_5~7COUT1_196\ = CARRY((\U2|Mult0|auto_generated|op_1~5_combout\ & ((\U2|Mult0|auto_generated|op_2~5_combout\) # (!\U2|Mult0|auto_generated|op_5~2COUT1_194\))) # (!\U2|Mult0|auto_generated|op_1~5_combout\ & 
-- (\U2|Mult0|auto_generated|op_2~5_combout\ & !\U2|Mult0|auto_generated|op_5~2COUT1_194\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_1~5_combout\,
	datab => \U2|Mult0|auto_generated|op_2~5_combout\,
	cin => \U2|Mult0|auto_generated|op_5~87\,
	cin0 => \U2|Mult0|auto_generated|op_5~2\,
	cin1 => \U2|Mult0|auto_generated|op_5~2COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~5_combout\,
	cout0 => \U2|Mult0|auto_generated|op_5~7\,
	cout1 => \U2|Mult0|auto_generated|op_5~7COUT1_196\);

-- Location: LC_X9_Y10_N8
\U2|Mult0|auto_generated|op_5~10\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~10_combout\ = \U2|Mult0|auto_generated|op_1~10_combout\ $ (\U2|Mult0|auto_generated|op_2~10_combout\ $ (((!\U2|Mult0|auto_generated|op_5~87\ & \U2|Mult0|auto_generated|op_5~7\) # (\U2|Mult0|auto_generated|op_5~87\ & 
-- \U2|Mult0|auto_generated|op_5~7COUT1_196\))))
-- \U2|Mult0|auto_generated|op_5~12\ = CARRY((\U2|Mult0|auto_generated|op_1~10_combout\ & (!\U2|Mult0|auto_generated|op_2~10_combout\ & !\U2|Mult0|auto_generated|op_5~7\)) # (!\U2|Mult0|auto_generated|op_1~10_combout\ & ((!\U2|Mult0|auto_generated|op_5~7\) # 
-- (!\U2|Mult0|auto_generated|op_2~10_combout\))))
-- \U2|Mult0|auto_generated|op_5~12COUT1_198\ = CARRY((\U2|Mult0|auto_generated|op_1~10_combout\ & (!\U2|Mult0|auto_generated|op_2~10_combout\ & !\U2|Mult0|auto_generated|op_5~7COUT1_196\)) # (!\U2|Mult0|auto_generated|op_1~10_combout\ & 
-- ((!\U2|Mult0|auto_generated|op_5~7COUT1_196\) # (!\U2|Mult0|auto_generated|op_2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_1~10_combout\,
	datab => \U2|Mult0|auto_generated|op_2~10_combout\,
	cin => \U2|Mult0|auto_generated|op_5~87\,
	cin0 => \U2|Mult0|auto_generated|op_5~7\,
	cin1 => \U2|Mult0|auto_generated|op_5~7COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~10_combout\,
	cout0 => \U2|Mult0|auto_generated|op_5~12\,
	cout1 => \U2|Mult0|auto_generated|op_5~12COUT1_198\);

-- Location: LC_X14_Y8_N6
\U2|Mult0|auto_generated|le4a[16]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le4a\(16) = (\U2|Mult0|auto_generated|cs2a\(1) & (\U2|Add0~80_combout\ $ (((\U2|Mult0|auto_generated|cs1a\(1)))))) # (!\U2|Mult0|auto_generated|cs2a\(1) & (((!\U2|Add0~75_combout\ & \U2|Mult0|auto_generated|cs1a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~80_combout\,
	datab => \U2|Add0~75_combout\,
	datac => \U2|Mult0|auto_generated|cs1a\(1),
	datad => \U2|Mult0|auto_generated|cs2a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le4a\(16));

-- Location: LC_X9_Y9_N3
\U2|timechunk[18]\ : maxv_lcell
-- Equation(s):
-- \U2|timechunk\(18) = DFFEAS(((\U2|Add0~90_combout\ & (\U2|LessThan1~5_combout\ & \U2|LessThan1~8_combout\))), GLOBAL(\clk~combout\), VCC, , \U2|LessThan0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U2|Add0~90_combout\,
	datac => \U2|LessThan1~5_combout\,
	datad => \U2|LessThan1~8_combout\,
	aclr => GND,
	ena => \U2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|timechunk\(18));

-- Location: LC_X13_Y9_N3
\U2|Add0~90\ : maxv_lcell
-- Equation(s):
-- \U2|Add0~90_combout\ = (\U2|timechunk\(18) $ ((!(!\U2|Add0~42\ & \U2|Add0~87\) # (\U2|Add0~42\ & \U2|Add0~87COUT1_151\))))
-- \U2|Add0~92\ = CARRY(((\U2|timechunk\(18) & !\U2|Add0~87\)))
-- \U2|Add0~92COUT1_153\ = CARRY(((\U2|timechunk\(18) & !\U2|Add0~87COUT1_151\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|timechunk\(18),
	cin => \U2|Add0~42\,
	cin0 => \U2|Add0~87\,
	cin1 => \U2|Add0~87COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Add0~90_combout\,
	cout0 => \U2|Add0~92\,
	cout1 => \U2|Add0~92COUT1_153\);

-- Location: LC_X14_Y8_N8
\U2|Mult0|auto_generated|le3a[18]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le3a\(18) = (\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Mult0|auto_generated|cs1a\(0) $ ((\U2|Add0~90_combout\)))) # (!\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Mult0|auto_generated|cs1a\(0) & ((!\U2|Add0~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "286c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs2a\(0),
	datab => \U2|Mult0|auto_generated|cs1a\(0),
	datac => \U2|Add0~90_combout\,
	datad => \U2|Add0~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le3a\(18));

-- Location: LC_X13_Y8_N1
\U2|Mult0|auto_generated|add20_result[11]~15\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|add20_result[11]~15_combout\ = \U2|Mult0|auto_generated|le4a\(16) $ (\U2|Mult0|auto_generated|le3a\(18) $ (((!\U2|Mult0|auto_generated|add20_result[9]~7\ & \U2|Mult0|auto_generated|add20_result[10]~12\) # 
-- (\U2|Mult0|auto_generated|add20_result[9]~7\ & \U2|Mult0|auto_generated|add20_result[10]~12COUT1_134\))))
-- \U2|Mult0|auto_generated|add20_result[11]~17\ = CARRY((\U2|Mult0|auto_generated|le4a\(16) & (!\U2|Mult0|auto_generated|le3a\(18) & !\U2|Mult0|auto_generated|add20_result[10]~12\)) # (!\U2|Mult0|auto_generated|le4a\(16) & 
-- ((!\U2|Mult0|auto_generated|add20_result[10]~12\) # (!\U2|Mult0|auto_generated|le3a\(18)))))
-- \U2|Mult0|auto_generated|add20_result[11]~17COUT1_136\ = CARRY((\U2|Mult0|auto_generated|le4a\(16) & (!\U2|Mult0|auto_generated|le3a\(18) & !\U2|Mult0|auto_generated|add20_result[10]~12COUT1_134\)) # (!\U2|Mult0|auto_generated|le4a\(16) & 
-- ((!\U2|Mult0|auto_generated|add20_result[10]~12COUT1_134\) # (!\U2|Mult0|auto_generated|le3a\(18)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le4a\(16),
	datab => \U2|Mult0|auto_generated|le3a\(18),
	cin => \U2|Mult0|auto_generated|add20_result[9]~7\,
	cin0 => \U2|Mult0|auto_generated|add20_result[10]~12\,
	cin1 => \U2|Mult0|auto_generated|add20_result[10]~12COUT1_134\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|add20_result[11]~15_combout\,
	cout0 => \U2|Mult0|auto_generated|add20_result[11]~17\,
	cout1 => \U2|Mult0|auto_generated|add20_result[11]~17COUT1_136\);

-- Location: LC_X9_Y7_N0
\U2|Mult0|auto_generated|le7a[11]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le7a\(11) = ((\U2|speedreg\(7) & ((\U2|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|speedreg\(7),
	datad => \U2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le7a\(11));

-- Location: LC_X9_Y8_N8
\U2|Mult0|auto_generated|op_1~15\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~15_combout\ = \U2|Mult0|auto_generated|add20_result[11]~15_combout\ $ (\U2|Mult0|auto_generated|le7a\(11) $ ((!(!\U2|Mult0|auto_generated|op_1~82\ & \U2|Mult0|auto_generated|op_1~12\) # (\U2|Mult0|auto_generated|op_1~82\ & 
-- \U2|Mult0|auto_generated|op_1~12COUT1_182\))))
-- \U2|Mult0|auto_generated|op_1~17\ = CARRY((\U2|Mult0|auto_generated|add20_result[11]~15_combout\ & ((\U2|Mult0|auto_generated|le7a\(11)) # (!\U2|Mult0|auto_generated|op_1~12\))) # (!\U2|Mult0|auto_generated|add20_result[11]~15_combout\ & 
-- (\U2|Mult0|auto_generated|le7a\(11) & !\U2|Mult0|auto_generated|op_1~12\)))
-- \U2|Mult0|auto_generated|op_1~17COUT1_184\ = CARRY((\U2|Mult0|auto_generated|add20_result[11]~15_combout\ & ((\U2|Mult0|auto_generated|le7a\(11)) # (!\U2|Mult0|auto_generated|op_1~12COUT1_182\))) # (!\U2|Mult0|auto_generated|add20_result[11]~15_combout\ & 
-- (\U2|Mult0|auto_generated|le7a\(11) & !\U2|Mult0|auto_generated|op_1~12COUT1_182\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|add20_result[11]~15_combout\,
	datab => \U2|Mult0|auto_generated|le7a\(11),
	cin => \U2|Mult0|auto_generated|op_1~82\,
	cin0 => \U2|Mult0|auto_generated|op_1~12\,
	cin1 => \U2|Mult0|auto_generated|op_1~12COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~15_combout\,
	cout0 => \U2|Mult0|auto_generated|op_1~17\,
	cout1 => \U2|Mult0|auto_generated|op_1~17COUT1_184\);

-- Location: LC_X13_Y7_N6
\U2|Mult0|auto_generated|le5a[14]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le5a\(14) = (\U2|Mult0|auto_generated|cs2a\(2) & (\U2|Mult0|auto_generated|cs1a\(2) $ ((\U2|Add0~40_combout\)))) # (!\U2|Mult0|auto_generated|cs2a\(2) & (\U2|Mult0|auto_generated|cs1a\(2) & ((!\U2|Add0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "486a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs1a\(2),
	datab => \U2|Mult0|auto_generated|cs2a\(2),
	datac => \U2|Add0~40_combout\,
	datad => \U2|Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le5a\(14));

-- Location: LC_X13_Y7_N5
\U2|Mult0|auto_generated|le6a[12]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le6a\(12) = (\U2|Mult0|auto_generated|cs2a\(3) & ((\U2|Add0~30_combout\) # ((\U2|Mult0|auto_generated|cs1a\(3) & \U2|Add0~20_combout\)))) # (!\U2|Mult0|auto_generated|cs2a\(3) & (((\U2|Mult0|auto_generated|cs1a\(3) & 
-- \U2|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs2a\(3),
	datab => \U2|Add0~30_combout\,
	datac => \U2|Mult0|auto_generated|cs1a\(3),
	datad => \U2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le6a\(12));

-- Location: LC_X13_Y10_N7
\U2|Mult0|auto_generated|op_2~15\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_2~15_combout\ = \U2|Mult0|auto_generated|le5a\(14) $ (\U2|Mult0|auto_generated|le6a\(12) $ ((!(!\U2|Mult0|auto_generated|op_2~2\ & \U2|Mult0|auto_generated|op_2~12\) # (\U2|Mult0|auto_generated|op_2~2\ & 
-- \U2|Mult0|auto_generated|op_2~12COUT1_166\))))
-- \U2|Mult0|auto_generated|op_2~17\ = CARRY((\U2|Mult0|auto_generated|le5a\(14) & ((\U2|Mult0|auto_generated|le6a\(12)) # (!\U2|Mult0|auto_generated|op_2~12\))) # (!\U2|Mult0|auto_generated|le5a\(14) & (\U2|Mult0|auto_generated|le6a\(12) & 
-- !\U2|Mult0|auto_generated|op_2~12\)))
-- \U2|Mult0|auto_generated|op_2~17COUT1_168\ = CARRY((\U2|Mult0|auto_generated|le5a\(14) & ((\U2|Mult0|auto_generated|le6a\(12)) # (!\U2|Mult0|auto_generated|op_2~12COUT1_166\))) # (!\U2|Mult0|auto_generated|le5a\(14) & (\U2|Mult0|auto_generated|le6a\(12) & 
-- !\U2|Mult0|auto_generated|op_2~12COUT1_166\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le5a\(14),
	datab => \U2|Mult0|auto_generated|le6a\(12),
	cin => \U2|Mult0|auto_generated|op_2~2\,
	cin0 => \U2|Mult0|auto_generated|op_2~12\,
	cin1 => \U2|Mult0|auto_generated|op_2~12COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_2~15_combout\,
	cout0 => \U2|Mult0|auto_generated|op_2~17\,
	cout1 => \U2|Mult0|auto_generated|op_2~17COUT1_168\);

-- Location: LC_X9_Y10_N9
\U2|Mult0|auto_generated|op_5~15\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~15_combout\ = \U2|Mult0|auto_generated|op_1~15_combout\ $ (\U2|Mult0|auto_generated|op_2~15_combout\ $ ((!(!\U2|Mult0|auto_generated|op_5~87\ & \U2|Mult0|auto_generated|op_5~12\) # (\U2|Mult0|auto_generated|op_5~87\ & 
-- \U2|Mult0|auto_generated|op_5~12COUT1_198\))))
-- \U2|Mult0|auto_generated|op_5~17\ = CARRY((\U2|Mult0|auto_generated|op_1~15_combout\ & ((\U2|Mult0|auto_generated|op_2~15_combout\) # (!\U2|Mult0|auto_generated|op_5~12COUT1_198\))) # (!\U2|Mult0|auto_generated|op_1~15_combout\ & 
-- (\U2|Mult0|auto_generated|op_2~15_combout\ & !\U2|Mult0|auto_generated|op_5~12COUT1_198\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_1~15_combout\,
	datab => \U2|Mult0|auto_generated|op_2~15_combout\,
	cin => \U2|Mult0|auto_generated|op_5~87\,
	cin0 => \U2|Mult0|auto_generated|op_5~12\,
	cin1 => \U2|Mult0|auto_generated|op_5~12COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~15_combout\,
	cout => \U2|Mult0|auto_generated|op_5~17\);

-- Location: LC_X9_Y9_N6
\U2|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \U2|LessThan1~0_combout\ = (((!\U2|Mult0|auto_generated|op_5~15_combout\) # (!\U2|Mult0|auto_generated|op_5~5_combout\)) # (!\U2|Mult0|auto_generated|op_5~10_combout\)) # (!\U2|Mult0|auto_generated|op_5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_5~0_combout\,
	datab => \U2|Mult0|auto_generated|op_5~10_combout\,
	datac => \U2|Mult0|auto_generated|op_5~5_combout\,
	datad => \U2|Mult0|auto_generated|op_5~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|LessThan1~0_combout\);

-- Location: LC_X7_Y10_N0
\U2|LessThan1~1\ : maxv_lcell
-- Equation(s):
-- \U2|LessThan1~1_combout\ = (((!\U2|Mult0|auto_generated|op_5~80_combout\) # (!\U2|Mult0|auto_generated|op_5~75_combout\)) # (!\U2|Mult0|auto_generated|op_5~70_combout\)) # (!\U2|Mult0|auto_generated|op_5~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_5~65_combout\,
	datab => \U2|Mult0|auto_generated|op_5~70_combout\,
	datac => \U2|Mult0|auto_generated|op_5~75_combout\,
	datad => \U2|Mult0|auto_generated|op_5~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|LessThan1~1_combout\);

-- Location: LC_X8_Y10_N0
\U2|LessThan1~2\ : maxv_lcell
-- Equation(s):
-- \U2|LessThan1~2_combout\ = (\U2|Mult0|auto_generated|op_5~50_combout\ & (\U2|Mult0|auto_generated|op_5~60_combout\ & (\U2|Mult0|auto_generated|op_5~55_combout\ & !\U2|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_5~50_combout\,
	datab => \U2|Mult0|auto_generated|op_5~60_combout\,
	datac => \U2|Mult0|auto_generated|op_5~55_combout\,
	datad => \U2|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|LessThan1~2_combout\);

-- Location: LC_X9_Y9_N0
\U2|LessThan1~3\ : maxv_lcell
-- Equation(s):
-- \U2|LessThan1~3_combout\ = (\U2|Mult0|auto_generated|op_5~45_combout\) # ((\U2|Mult0|auto_generated|op_5~40_combout\ & ((\U2|Mult0|auto_generated|op_5~35_combout\) # (\U2|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_5~40_combout\,
	datab => \U2|Mult0|auto_generated|op_5~35_combout\,
	datac => \U2|Mult0|auto_generated|op_5~45_combout\,
	datad => \U2|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|LessThan1~3_combout\);

-- Location: LC_X9_Y9_N1
\U2|LessThan1~4\ : maxv_lcell
-- Equation(s):
-- \U2|LessThan1~4_combout\ = (((!\U2|Mult0|auto_generated|op_5~30_combout\ & !\U2|LessThan1~3_combout\)) # (!\U2|Mult0|auto_generated|op_5~20_combout\)) # (!\U2|Mult0|auto_generated|op_5~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f7f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_5~25_combout\,
	datab => \U2|Mult0|auto_generated|op_5~30_combout\,
	datac => \U2|Mult0|auto_generated|op_5~20_combout\,
	datad => \U2|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|LessThan1~4_combout\);

-- Location: LC_X9_Y9_N7
\U2|LessThan1~5\ : maxv_lcell
-- Equation(s):
-- \U2|LessThan1~5_combout\ = (\U2|LessThan1~0_combout\) # ((!\U2|Mult0|auto_generated|op_5~90_combout\ & (!\U2|Mult0|auto_generated|op_5~85_combout\ & \U2|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_5~90_combout\,
	datab => \U2|Mult0|auto_generated|op_5~85_combout\,
	datac => \U2|LessThan1~0_combout\,
	datad => \U2|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|LessThan1~5_combout\);

-- Location: LC_X9_Y9_N4
\U2|timechunk[19]\ : maxv_lcell
-- Equation(s):
-- \U2|timechunk\(19) = DFFEAS(((\U2|Add0~100_combout\ & (\U2|LessThan1~5_combout\ & \U2|LessThan1~8_combout\))), GLOBAL(\clk~combout\), VCC, , \U2|LessThan0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U2|Add0~100_combout\,
	datac => \U2|LessThan1~5_combout\,
	datad => \U2|LessThan1~8_combout\,
	aclr => GND,
	ena => \U2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|timechunk\(19));

-- Location: LC_X13_Y9_N4
\U2|Add0~100\ : maxv_lcell
-- Equation(s):
-- \U2|Add0~100_combout\ = (\U2|timechunk\(19) $ (((!\U2|Add0~42\ & \U2|Add0~92\) # (\U2|Add0~42\ & \U2|Add0~92COUT1_153\))))
-- \U2|Add0~102\ = CARRY(((!\U2|Add0~92COUT1_153\) # (!\U2|timechunk\(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|timechunk\(19),
	cin => \U2|Add0~42\,
	cin0 => \U2|Add0~92\,
	cin1 => \U2|Add0~92COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Add0~100_combout\,
	cout => \U2|Add0~102\);

-- Location: LC_X14_Y9_N0
\U2|Mult0|auto_generated|le6a[19]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le6a\(19) = (\U2|Add0~100_combout\ & ((\U2|Mult0|auto_generated|cs2a\(3)) # ((\U2|Add0~90_combout\ & \U2|Mult0|auto_generated|cs1a\(3))))) # (!\U2|Add0~100_combout\ & (\U2|Add0~90_combout\ & ((\U2|Mult0|auto_generated|cs1a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~100_combout\,
	datab => \U2|Add0~90_combout\,
	datac => \U2|Mult0|auto_generated|cs2a\(3),
	datad => \U2|Mult0|auto_generated|cs1a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le6a\(19));

-- Location: LC_X9_Y9_N5
\U2|timechunk[20]\ : maxv_lcell
-- Equation(s):
-- \U2|timechunk\(20) = DFFEAS((\U2|Add0~95_combout\ & (((\U2|LessThan1~5_combout\ & \U2|LessThan1~8_combout\)))), GLOBAL(\clk~combout\), VCC, , \U2|LessThan0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U2|Add0~95_combout\,
	datac => \U2|LessThan1~5_combout\,
	datad => \U2|LessThan1~8_combout\,
	aclr => GND,
	ena => \U2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|timechunk\(20));

-- Location: LC_X13_Y9_N5
\U2|Add0~95\ : maxv_lcell
-- Equation(s):
-- \U2|Add0~95_combout\ = ((\U2|Add0~102\ $ (!\U2|timechunk\(20))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|timechunk\(20),
	cin => \U2|Add0~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Add0~95_combout\);

-- Location: LC_X14_Y9_N3
\U2|Mult0|auto_generated|le5a[21]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le5a\(21) = ((\U2|Mult0|auto_generated|cs1a\(2) & ((\U2|Mult0|auto_generated|cs2a\(2)) # (!\U2|Add0~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|Mult0|auto_generated|cs1a\(2),
	datac => \U2|Mult0|auto_generated|cs2a\(2),
	datad => \U2|Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le5a\(21));

-- Location: LC_X14_Y9_N4
\U2|Mult0|auto_generated|le5a[16]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le5a\(16) = (\U2|Mult0|auto_generated|cs2a\(2) & (\U2|Add0~80_combout\ $ ((\U2|Mult0|auto_generated|cs1a\(2))))) # (!\U2|Mult0|auto_generated|cs2a\(2) & (((\U2|Mult0|auto_generated|cs1a\(2) & !\U2|Add0~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "606c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~80_combout\,
	datab => \U2|Mult0|auto_generated|cs1a\(2),
	datac => \U2|Mult0|auto_generated|cs2a\(2),
	datad => \U2|Add0~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le5a\(16));

-- Location: LC_X13_Y7_N2
\U2|Mult0|auto_generated|le6a[14]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le6a\(14) = (\U2|Add0~40_combout\ & ((\U2|Mult0|auto_generated|cs2a\(3)) # ((\U2|Add0~35_combout\ & \U2|Mult0|auto_generated|cs1a\(3))))) # (!\U2|Add0~40_combout\ & (\U2|Add0~35_combout\ & (\U2|Mult0|auto_generated|cs1a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~40_combout\,
	datab => \U2|Add0~35_combout\,
	datac => \U2|Mult0|auto_generated|cs1a\(3),
	datad => \U2|Mult0|auto_generated|cs2a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le6a\(14));

-- Location: LC_X13_Y7_N0
\U2|Mult0|auto_generated|le6a[13]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le6a\(13) = (\U2|Mult0|auto_generated|cs2a\(3) & ((\U2|Add0~35_combout\) # ((\U2|Add0~30_combout\ & \U2|Mult0|auto_generated|cs1a\(3))))) # (!\U2|Mult0|auto_generated|cs2a\(3) & (\U2|Add0~30_combout\ & 
-- (\U2|Mult0|auto_generated|cs1a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs2a\(3),
	datab => \U2|Add0~30_combout\,
	datac => \U2|Mult0|auto_generated|cs1a\(3),
	datad => \U2|Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le6a\(13));

-- Location: LC_X14_Y10_N9
\U2|Mult0|auto_generated|le5a[15]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le5a\(15) = (\U2|Mult0|auto_generated|cs2a\(2) & ((\U2|Mult0|auto_generated|cs1a\(2) $ (\U2|Add0~75_combout\)))) # (!\U2|Mult0|auto_generated|cs2a\(2) & (!\U2|Add0~40_combout\ & (\U2|Mult0|auto_generated|cs1a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~40_combout\,
	datab => \U2|Mult0|auto_generated|cs1a\(2),
	datac => \U2|Add0~75_combout\,
	datad => \U2|Mult0|auto_generated|cs2a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le5a\(15));

-- Location: LC_X13_Y10_N8
\U2|Mult0|auto_generated|op_2~75\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_2~75_combout\ = \U2|Mult0|auto_generated|le6a\(13) $ (\U2|Mult0|auto_generated|le5a\(15) $ (((!\U2|Mult0|auto_generated|op_2~2\ & \U2|Mult0|auto_generated|op_2~17\) # (\U2|Mult0|auto_generated|op_2~2\ & 
-- \U2|Mult0|auto_generated|op_2~17COUT1_168\))))
-- \U2|Mult0|auto_generated|op_2~77\ = CARRY((\U2|Mult0|auto_generated|le6a\(13) & (!\U2|Mult0|auto_generated|le5a\(15) & !\U2|Mult0|auto_generated|op_2~17\)) # (!\U2|Mult0|auto_generated|le6a\(13) & ((!\U2|Mult0|auto_generated|op_2~17\) # 
-- (!\U2|Mult0|auto_generated|le5a\(15)))))
-- \U2|Mult0|auto_generated|op_2~77COUT1_170\ = CARRY((\U2|Mult0|auto_generated|le6a\(13) & (!\U2|Mult0|auto_generated|le5a\(15) & !\U2|Mult0|auto_generated|op_2~17COUT1_168\)) # (!\U2|Mult0|auto_generated|le6a\(13) & 
-- ((!\U2|Mult0|auto_generated|op_2~17COUT1_168\) # (!\U2|Mult0|auto_generated|le5a\(15)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le6a\(13),
	datab => \U2|Mult0|auto_generated|le5a\(15),
	cin => \U2|Mult0|auto_generated|op_2~2\,
	cin0 => \U2|Mult0|auto_generated|op_2~17\,
	cin1 => \U2|Mult0|auto_generated|op_2~17COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_2~75_combout\,
	cout0 => \U2|Mult0|auto_generated|op_2~77\,
	cout1 => \U2|Mult0|auto_generated|op_2~77COUT1_170\);

-- Location: LC_X13_Y10_N9
\U2|Mult0|auto_generated|op_2~80\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_2~80_combout\ = \U2|Mult0|auto_generated|le5a\(16) $ (\U2|Mult0|auto_generated|le6a\(14) $ ((!(!\U2|Mult0|auto_generated|op_2~2\ & \U2|Mult0|auto_generated|op_2~77\) # (\U2|Mult0|auto_generated|op_2~2\ & 
-- \U2|Mult0|auto_generated|op_2~77COUT1_170\))))
-- \U2|Mult0|auto_generated|op_2~82\ = CARRY((\U2|Mult0|auto_generated|le5a\(16) & ((\U2|Mult0|auto_generated|le6a\(14)) # (!\U2|Mult0|auto_generated|op_2~77COUT1_170\))) # (!\U2|Mult0|auto_generated|le5a\(16) & (\U2|Mult0|auto_generated|le6a\(14) & 
-- !\U2|Mult0|auto_generated|op_2~77COUT1_170\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le5a\(16),
	datab => \U2|Mult0|auto_generated|le6a\(14),
	cin => \U2|Mult0|auto_generated|op_2~2\,
	cin0 => \U2|Mult0|auto_generated|op_2~77\,
	cin1 => \U2|Mult0|auto_generated|op_2~77COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_2~80_combout\,
	cout => \U2|Mult0|auto_generated|op_2~82\);

-- Location: LC_X14_Y9_N2
\U2|Mult0|auto_generated|le6a[18]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le6a\(18) = (\U2|Mult0|auto_generated|cs1a\(3) & ((\U2|Add0~85_combout\) # ((\U2|Mult0|auto_generated|cs2a\(3) & \U2|Add0~90_combout\)))) # (!\U2|Mult0|auto_generated|cs1a\(3) & (((\U2|Mult0|auto_generated|cs2a\(3) & 
-- \U2|Add0~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs1a\(3),
	datab => \U2|Add0~85_combout\,
	datac => \U2|Mult0|auto_generated|cs2a\(3),
	datad => \U2|Add0~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le6a\(18));

-- Location: LC_X14_Y9_N6
\U2|Mult0|auto_generated|le6a[17]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le6a\(17) = (\U2|Add0~80_combout\ & ((\U2|Mult0|auto_generated|cs1a\(3)) # ((\U2|Add0~85_combout\ & \U2|Mult0|auto_generated|cs2a\(3))))) # (!\U2|Add0~80_combout\ & (\U2|Add0~85_combout\ & (\U2|Mult0|auto_generated|cs2a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~80_combout\,
	datab => \U2|Add0~85_combout\,
	datac => \U2|Mult0|auto_generated|cs2a\(3),
	datad => \U2|Mult0|auto_generated|cs1a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le6a\(17));

-- Location: LC_X14_Y9_N7
\U2|Mult0|auto_generated|le6a[16]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le6a\(16) = (\U2|Add0~75_combout\ & ((\U2|Mult0|auto_generated|cs1a\(3)) # ((\U2|Mult0|auto_generated|cs2a\(3) & \U2|Add0~80_combout\)))) # (!\U2|Add0~75_combout\ & (\U2|Mult0|auto_generated|cs2a\(3) & (\U2|Add0~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~75_combout\,
	datab => \U2|Mult0|auto_generated|cs2a\(3),
	datac => \U2|Add0~80_combout\,
	datad => \U2|Mult0|auto_generated|cs1a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le6a\(16));

-- Location: LC_X14_Y10_N8
\U2|Mult0|auto_generated|le6a[15]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le6a\(15) = (\U2|Add0~75_combout\ & ((\U2|Mult0|auto_generated|cs2a\(3)) # ((\U2|Mult0|auto_generated|cs1a\(3) & \U2|Add0~40_combout\)))) # (!\U2|Add0~75_combout\ & (((\U2|Mult0|auto_generated|cs1a\(3) & \U2|Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~75_combout\,
	datab => \U2|Mult0|auto_generated|cs2a\(3),
	datac => \U2|Mult0|auto_generated|cs1a\(3),
	datad => \U2|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le6a\(15));

-- Location: LC_X14_Y9_N1
\U2|Mult0|auto_generated|le5a[17]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le5a\(17) = (\U2|Mult0|auto_generated|cs2a\(2) & (\U2|Add0~85_combout\ $ (((\U2|Mult0|auto_generated|cs1a\(2)))))) # (!\U2|Mult0|auto_generated|cs2a\(2) & (((!\U2|Add0~80_combout\ & \U2|Mult0|auto_generated|cs1a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2788",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs2a\(2),
	datab => \U2|Add0~85_combout\,
	datac => \U2|Add0~80_combout\,
	datad => \U2|Mult0|auto_generated|cs1a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le5a\(17));

-- Location: LC_X14_Y10_N0
\U2|Mult0|auto_generated|op_2~85\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_2~85_combout\ = \U2|Mult0|auto_generated|le6a\(15) $ (\U2|Mult0|auto_generated|le5a\(17) $ ((\U2|Mult0|auto_generated|op_2~82\)))
-- \U2|Mult0|auto_generated|op_2~87\ = CARRY((\U2|Mult0|auto_generated|le6a\(15) & (!\U2|Mult0|auto_generated|le5a\(17) & !\U2|Mult0|auto_generated|op_2~82\)) # (!\U2|Mult0|auto_generated|le6a\(15) & ((!\U2|Mult0|auto_generated|op_2~82\) # 
-- (!\U2|Mult0|auto_generated|le5a\(17)))))
-- \U2|Mult0|auto_generated|op_2~87COUT1_172\ = CARRY((\U2|Mult0|auto_generated|le6a\(15) & (!\U2|Mult0|auto_generated|le5a\(17) & !\U2|Mult0|auto_generated|op_2~82\)) # (!\U2|Mult0|auto_generated|le6a\(15) & ((!\U2|Mult0|auto_generated|op_2~82\) # 
-- (!\U2|Mult0|auto_generated|le5a\(17)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le6a\(15),
	datab => \U2|Mult0|auto_generated|le5a\(17),
	cin => \U2|Mult0|auto_generated|op_2~82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_2~85_combout\,
	cout0 => \U2|Mult0|auto_generated|op_2~87\,
	cout1 => \U2|Mult0|auto_generated|op_2~87COUT1_172\);

-- Location: LC_X14_Y10_N1
\U2|Mult0|auto_generated|op_2~90\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_2~90_combout\ = \U2|Mult0|auto_generated|cs1a\(0) $ (\U2|Mult0|auto_generated|le6a\(16) $ ((!(!\U2|Mult0|auto_generated|op_2~82\ & \U2|Mult0|auto_generated|op_2~87\) # (\U2|Mult0|auto_generated|op_2~82\ & 
-- \U2|Mult0|auto_generated|op_2~87COUT1_172\))))
-- \U2|Mult0|auto_generated|op_2~92\ = CARRY((\U2|Mult0|auto_generated|cs1a\(0) & ((\U2|Mult0|auto_generated|le6a\(16)) # (!\U2|Mult0|auto_generated|op_2~87\))) # (!\U2|Mult0|auto_generated|cs1a\(0) & (\U2|Mult0|auto_generated|le6a\(16) & 
-- !\U2|Mult0|auto_generated|op_2~87\)))
-- \U2|Mult0|auto_generated|op_2~92COUT1_174\ = CARRY((\U2|Mult0|auto_generated|cs1a\(0) & ((\U2|Mult0|auto_generated|le6a\(16)) # (!\U2|Mult0|auto_generated|op_2~87COUT1_172\))) # (!\U2|Mult0|auto_generated|cs1a\(0) & (\U2|Mult0|auto_generated|le6a\(16) & 
-- !\U2|Mult0|auto_generated|op_2~87COUT1_172\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs1a\(0),
	datab => \U2|Mult0|auto_generated|le6a\(16),
	cin => \U2|Mult0|auto_generated|op_2~82\,
	cin0 => \U2|Mult0|auto_generated|op_2~87\,
	cin1 => \U2|Mult0|auto_generated|op_2~87COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_2~90_combout\,
	cout0 => \U2|Mult0|auto_generated|op_2~92\,
	cout1 => \U2|Mult0|auto_generated|op_2~92COUT1_174\);

-- Location: LC_X14_Y10_N2
\U2|Mult0|auto_generated|op_2~95\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_2~95_combout\ = \U2|Mult0|auto_generated|cs1a\(0) $ (\U2|Mult0|auto_generated|le6a\(17) $ (((!\U2|Mult0|auto_generated|op_2~82\ & \U2|Mult0|auto_generated|op_2~92\) # (\U2|Mult0|auto_generated|op_2~82\ & 
-- \U2|Mult0|auto_generated|op_2~92COUT1_174\))))
-- \U2|Mult0|auto_generated|op_2~97\ = CARRY((\U2|Mult0|auto_generated|cs1a\(0) & (!\U2|Mult0|auto_generated|le6a\(17) & !\U2|Mult0|auto_generated|op_2~92\)) # (!\U2|Mult0|auto_generated|cs1a\(0) & ((!\U2|Mult0|auto_generated|op_2~92\) # 
-- (!\U2|Mult0|auto_generated|le6a\(17)))))
-- \U2|Mult0|auto_generated|op_2~97COUT1_176\ = CARRY((\U2|Mult0|auto_generated|cs1a\(0) & (!\U2|Mult0|auto_generated|le6a\(17) & !\U2|Mult0|auto_generated|op_2~92COUT1_174\)) # (!\U2|Mult0|auto_generated|cs1a\(0) & 
-- ((!\U2|Mult0|auto_generated|op_2~92COUT1_174\) # (!\U2|Mult0|auto_generated|le6a\(17)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs1a\(0),
	datab => \U2|Mult0|auto_generated|le6a\(17),
	cin => \U2|Mult0|auto_generated|op_2~82\,
	cin0 => \U2|Mult0|auto_generated|op_2~92\,
	cin1 => \U2|Mult0|auto_generated|op_2~92COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_2~95_combout\,
	cout0 => \U2|Mult0|auto_generated|op_2~97\,
	cout1 => \U2|Mult0|auto_generated|op_2~97COUT1_176\);

-- Location: LC_X14_Y10_N3
\U2|Mult0|auto_generated|op_2~100\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_2~100_combout\ = \U2|Mult0|auto_generated|cs1a\(0) $ (\U2|Mult0|auto_generated|le6a\(18) $ (((!\U2|Mult0|auto_generated|op_2~82\ & \U2|Mult0|auto_generated|op_2~97\) # (\U2|Mult0|auto_generated|op_2~82\ & 
-- \U2|Mult0|auto_generated|op_2~97COUT1_176\))))
-- \U2|Mult0|auto_generated|op_2~102\ = CARRY((\U2|Mult0|auto_generated|cs1a\(0) & (\U2|Mult0|auto_generated|le6a\(18) & !\U2|Mult0|auto_generated|op_2~97\)) # (!\U2|Mult0|auto_generated|cs1a\(0) & ((\U2|Mult0|auto_generated|le6a\(18)) # 
-- (!\U2|Mult0|auto_generated|op_2~97\))))
-- \U2|Mult0|auto_generated|op_2~102COUT1_178\ = CARRY((\U2|Mult0|auto_generated|cs1a\(0) & (\U2|Mult0|auto_generated|le6a\(18) & !\U2|Mult0|auto_generated|op_2~97COUT1_176\)) # (!\U2|Mult0|auto_generated|cs1a\(0) & ((\U2|Mult0|auto_generated|le6a\(18)) # 
-- (!\U2|Mult0|auto_generated|op_2~97COUT1_176\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs1a\(0),
	datab => \U2|Mult0|auto_generated|le6a\(18),
	cin => \U2|Mult0|auto_generated|op_2~82\,
	cin0 => \U2|Mult0|auto_generated|op_2~97\,
	cin1 => \U2|Mult0|auto_generated|op_2~97COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_2~100_combout\,
	cout0 => \U2|Mult0|auto_generated|op_2~102\,
	cout1 => \U2|Mult0|auto_generated|op_2~102COUT1_178\);

-- Location: LC_X14_Y10_N4
\U2|Mult0|auto_generated|op_2~105\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_2~105_combout\ = \U2|Mult0|auto_generated|le6a\(19) $ (\U2|Mult0|auto_generated|le5a\(21) $ (((!\U2|Mult0|auto_generated|op_2~82\ & \U2|Mult0|auto_generated|op_2~102\) # (\U2|Mult0|auto_generated|op_2~82\ & 
-- \U2|Mult0|auto_generated|op_2~102COUT1_178\))))
-- \U2|Mult0|auto_generated|op_2~107\ = CARRY((\U2|Mult0|auto_generated|le6a\(19) & (!\U2|Mult0|auto_generated|le5a\(21) & !\U2|Mult0|auto_generated|op_2~102COUT1_178\)) # (!\U2|Mult0|auto_generated|le6a\(19) & ((!\U2|Mult0|auto_generated|op_2~102COUT1_178\) 
-- # (!\U2|Mult0|auto_generated|le5a\(21)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le6a\(19),
	datab => \U2|Mult0|auto_generated|le5a\(21),
	cin => \U2|Mult0|auto_generated|op_2~82\,
	cin0 => \U2|Mult0|auto_generated|op_2~102\,
	cin1 => \U2|Mult0|auto_generated|op_2~102COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_2~105_combout\,
	cout => \U2|Mult0|auto_generated|op_2~107\);

-- Location: LC_X14_Y8_N0
\U2|Mult0|auto_generated|le3a[21]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le3a\(21) = ((\U2|Mult0|auto_generated|cs1a\(0) & ((\U2|Mult0|auto_generated|cs2a\(0)) # (!\U2|Add0~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|Mult0|auto_generated|cs1a\(0),
	datac => \U2|Mult0|auto_generated|cs2a\(0),
	datad => \U2|Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le3a\(21));

-- Location: LC_X12_Y7_N7
\U2|Mult0|auto_generated|le4a[19]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le4a\(19) = (\U2|Mult0|auto_generated|cs2a\(1) & ((\U2|Mult0|auto_generated|cs1a\(1) $ (\U2|Add0~100_combout\)))) # (!\U2|Mult0|auto_generated|cs2a\(1) & (!\U2|Add0~90_combout\ & (\U2|Mult0|auto_generated|cs1a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1cd0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~90_combout\,
	datab => \U2|Mult0|auto_generated|cs2a\(1),
	datac => \U2|Mult0|auto_generated|cs1a\(1),
	datad => \U2|Add0~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le4a\(19));

-- Location: LC_X12_Y7_N4
\U2|Mult0|auto_generated|le4a[18]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le4a\(18) = (\U2|Mult0|auto_generated|cs2a\(1) & (\U2|Add0~90_combout\ $ ((\U2|Mult0|auto_generated|cs1a\(1))))) # (!\U2|Mult0|auto_generated|cs2a\(1) & (((\U2|Mult0|auto_generated|cs1a\(1) & !\U2|Add0~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "660c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~90_combout\,
	datab => \U2|Mult0|auto_generated|cs1a\(1),
	datac => \U2|Add0~85_combout\,
	datad => \U2|Mult0|auto_generated|cs2a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le4a\(18));

-- Location: LC_X14_Y8_N2
\U2|Mult0|auto_generated|le3a[20]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le3a\(20) = (\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Mult0|auto_generated|cs1a\(0) $ (((\U2|Add0~95_combout\))))) # (!\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Mult0|auto_generated|cs1a\(0) & (!\U2|Add0~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "268c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs2a\(0),
	datab => \U2|Mult0|auto_generated|cs1a\(0),
	datac => \U2|Add0~100_combout\,
	datad => \U2|Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le3a\(20));

-- Location: LC_X12_Y7_N5
\U2|Mult0|auto_generated|le4a[17]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le4a\(17) = (\U2|Mult0|auto_generated|cs2a\(1) & (\U2|Mult0|auto_generated|cs1a\(1) $ ((\U2|Add0~85_combout\)))) # (!\U2|Mult0|auto_generated|cs2a\(1) & (\U2|Mult0|auto_generated|cs1a\(1) & ((!\U2|Add0~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "486a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs1a\(1),
	datab => \U2|Mult0|auto_generated|cs2a\(1),
	datac => \U2|Add0~85_combout\,
	datad => \U2|Add0~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le4a\(17));

-- Location: LC_X14_Y8_N4
\U2|Mult0|auto_generated|le3a[19]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le3a\(19) = (\U2|Mult0|auto_generated|cs2a\(0) & (\U2|Add0~100_combout\ $ (((\U2|Mult0|auto_generated|cs1a\(0)))))) # (!\U2|Mult0|auto_generated|cs2a\(0) & (((!\U2|Add0~90_combout\ & \U2|Mult0|auto_generated|cs1a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2788",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs2a\(0),
	datab => \U2|Add0~100_combout\,
	datac => \U2|Add0~90_combout\,
	datad => \U2|Mult0|auto_generated|cs1a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le3a\(19));

-- Location: LC_X13_Y8_N2
\U2|Mult0|auto_generated|add20_result[12]~60\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|add20_result[12]~60_combout\ = \U2|Mult0|auto_generated|le4a\(17) $ (\U2|Mult0|auto_generated|le3a\(19) $ ((!(!\U2|Mult0|auto_generated|add20_result[9]~7\ & \U2|Mult0|auto_generated|add20_result[11]~17\) # 
-- (\U2|Mult0|auto_generated|add20_result[9]~7\ & \U2|Mult0|auto_generated|add20_result[11]~17COUT1_136\))))
-- \U2|Mult0|auto_generated|add20_result[12]~62\ = CARRY((\U2|Mult0|auto_generated|le4a\(17) & ((\U2|Mult0|auto_generated|le3a\(19)) # (!\U2|Mult0|auto_generated|add20_result[11]~17\))) # (!\U2|Mult0|auto_generated|le4a\(17) & 
-- (\U2|Mult0|auto_generated|le3a\(19) & !\U2|Mult0|auto_generated|add20_result[11]~17\)))
-- \U2|Mult0|auto_generated|add20_result[12]~62COUT1_138\ = CARRY((\U2|Mult0|auto_generated|le4a\(17) & ((\U2|Mult0|auto_generated|le3a\(19)) # (!\U2|Mult0|auto_generated|add20_result[11]~17COUT1_136\))) # (!\U2|Mult0|auto_generated|le4a\(17) & 
-- (\U2|Mult0|auto_generated|le3a\(19) & !\U2|Mult0|auto_generated|add20_result[11]~17COUT1_136\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le4a\(17),
	datab => \U2|Mult0|auto_generated|le3a\(19),
	cin => \U2|Mult0|auto_generated|add20_result[9]~7\,
	cin0 => \U2|Mult0|auto_generated|add20_result[11]~17\,
	cin1 => \U2|Mult0|auto_generated|add20_result[11]~17COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|add20_result[12]~60_combout\,
	cout0 => \U2|Mult0|auto_generated|add20_result[12]~62\,
	cout1 => \U2|Mult0|auto_generated|add20_result[12]~62COUT1_138\);

-- Location: LC_X13_Y8_N3
\U2|Mult0|auto_generated|add20_result[13]~65\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|add20_result[13]~65_combout\ = \U2|Mult0|auto_generated|le4a\(18) $ (\U2|Mult0|auto_generated|le3a\(20) $ (((!\U2|Mult0|auto_generated|add20_result[9]~7\ & \U2|Mult0|auto_generated|add20_result[12]~62\) # 
-- (\U2|Mult0|auto_generated|add20_result[9]~7\ & \U2|Mult0|auto_generated|add20_result[12]~62COUT1_138\))))
-- \U2|Mult0|auto_generated|add20_result[13]~67\ = CARRY((\U2|Mult0|auto_generated|le4a\(18) & (!\U2|Mult0|auto_generated|le3a\(20) & !\U2|Mult0|auto_generated|add20_result[12]~62\)) # (!\U2|Mult0|auto_generated|le4a\(18) & 
-- ((!\U2|Mult0|auto_generated|add20_result[12]~62\) # (!\U2|Mult0|auto_generated|le3a\(20)))))
-- \U2|Mult0|auto_generated|add20_result[13]~67COUT1_140\ = CARRY((\U2|Mult0|auto_generated|le4a\(18) & (!\U2|Mult0|auto_generated|le3a\(20) & !\U2|Mult0|auto_generated|add20_result[12]~62COUT1_138\)) # (!\U2|Mult0|auto_generated|le4a\(18) & 
-- ((!\U2|Mult0|auto_generated|add20_result[12]~62COUT1_138\) # (!\U2|Mult0|auto_generated|le3a\(20)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le4a\(18),
	datab => \U2|Mult0|auto_generated|le3a\(20),
	cin => \U2|Mult0|auto_generated|add20_result[9]~7\,
	cin0 => \U2|Mult0|auto_generated|add20_result[12]~62\,
	cin1 => \U2|Mult0|auto_generated|add20_result[12]~62COUT1_138\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|add20_result[13]~65_combout\,
	cout0 => \U2|Mult0|auto_generated|add20_result[13]~67\,
	cout1 => \U2|Mult0|auto_generated|add20_result[13]~67COUT1_140\);

-- Location: LC_X13_Y8_N4
\U2|Mult0|auto_generated|add20_result[14]~70\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|add20_result[14]~70_combout\ = \U2|Mult0|auto_generated|le3a\(21) $ (\U2|Mult0|auto_generated|le4a\(19) $ ((!(!\U2|Mult0|auto_generated|add20_result[9]~7\ & \U2|Mult0|auto_generated|add20_result[13]~67\) # 
-- (\U2|Mult0|auto_generated|add20_result[9]~7\ & \U2|Mult0|auto_generated|add20_result[13]~67COUT1_140\))))
-- \U2|Mult0|auto_generated|add20_result[14]~72\ = CARRY((\U2|Mult0|auto_generated|le3a\(21) & ((\U2|Mult0|auto_generated|le4a\(19)) # (!\U2|Mult0|auto_generated|add20_result[13]~67COUT1_140\))) # (!\U2|Mult0|auto_generated|le3a\(21) & 
-- (\U2|Mult0|auto_generated|le4a\(19) & !\U2|Mult0|auto_generated|add20_result[13]~67COUT1_140\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le3a\(21),
	datab => \U2|Mult0|auto_generated|le4a\(19),
	cin => \U2|Mult0|auto_generated|add20_result[9]~7\,
	cin0 => \U2|Mult0|auto_generated|add20_result[13]~67\,
	cin1 => \U2|Mult0|auto_generated|add20_result[13]~67COUT1_140\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|add20_result[14]~70_combout\,
	cout => \U2|Mult0|auto_generated|add20_result[14]~72\);

-- Location: LC_X14_Y8_N9
\U2|Mult0|auto_generated|le5a[20]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le5a\(20) = (\U2|Mult0|auto_generated|cs2a\(2) & (\U2|Add0~95_combout\ $ ((\U2|Mult0|auto_generated|cs1a\(2))))) # (!\U2|Mult0|auto_generated|cs2a\(2) & (((\U2|Mult0|auto_generated|cs1a\(2) & !\U2|Add0~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "660c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~95_combout\,
	datab => \U2|Mult0|auto_generated|cs1a\(2),
	datac => \U2|Add0~100_combout\,
	datad => \U2|Mult0|auto_generated|cs2a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le5a\(20));

-- Location: LC_X14_Y8_N7
\U2|Mult0|auto_generated|le4a[21]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le4a\(21) = ((\U2|Mult0|auto_generated|cs1a\(1) & ((\U2|Mult0|auto_generated|cs2a\(1)) # (!\U2|Add0~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|Mult0|auto_generated|cs2a\(1),
	datac => \U2|Mult0|auto_generated|cs1a\(1),
	datad => \U2|Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le4a\(21));

-- Location: LC_X12_Y7_N9
\U2|Mult0|auto_generated|le5a[19]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le5a\(19) = (\U2|Mult0|auto_generated|cs2a\(2) & (\U2|Mult0|auto_generated|cs1a\(2) $ (((\U2|Add0~100_combout\))))) # (!\U2|Mult0|auto_generated|cs2a\(2) & (\U2|Mult0|auto_generated|cs1a\(2) & (!\U2|Add0~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "268c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs2a\(2),
	datab => \U2|Mult0|auto_generated|cs1a\(2),
	datac => \U2|Add0~90_combout\,
	datad => \U2|Add0~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le5a\(19));

-- Location: LC_X14_Y8_N1
\U2|Mult0|auto_generated|le4a[20]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le4a\(20) = (\U2|Mult0|auto_generated|cs2a\(1) & (\U2|Add0~95_combout\ $ ((\U2|Mult0|auto_generated|cs1a\(1))))) # (!\U2|Mult0|auto_generated|cs2a\(1) & (((\U2|Mult0|auto_generated|cs1a\(1) & !\U2|Add0~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "660c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~95_combout\,
	datab => \U2|Mult0|auto_generated|cs1a\(1),
	datac => \U2|Add0~100_combout\,
	datad => \U2|Mult0|auto_generated|cs2a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le4a\(20));

-- Location: LC_X12_Y7_N3
\U2|Mult0|auto_generated|le5a[18]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le5a\(18) = (\U2|Mult0|auto_generated|cs2a\(2) & ((\U2|Add0~90_combout\ $ (\U2|Mult0|auto_generated|cs1a\(2))))) # (!\U2|Mult0|auto_generated|cs2a\(2) & (!\U2|Add0~85_combout\ & ((\U2|Mult0|auto_generated|cs1a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1ba0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs2a\(2),
	datab => \U2|Add0~85_combout\,
	datac => \U2|Add0~90_combout\,
	datad => \U2|Mult0|auto_generated|cs1a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le5a\(18));

-- Location: LC_X13_Y8_N5
\U2|Mult0|auto_generated|add20_result[15]~75\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|add20_result[15]~75_combout\ = \U2|Mult0|auto_generated|le4a\(20) $ (\U2|Mult0|auto_generated|le5a\(18) $ ((\U2|Mult0|auto_generated|add20_result[14]~72\)))
-- \U2|Mult0|auto_generated|add20_result[15]~77\ = CARRY((\U2|Mult0|auto_generated|le4a\(20) & (!\U2|Mult0|auto_generated|le5a\(18) & !\U2|Mult0|auto_generated|add20_result[14]~72\)) # (!\U2|Mult0|auto_generated|le4a\(20) & 
-- ((!\U2|Mult0|auto_generated|add20_result[14]~72\) # (!\U2|Mult0|auto_generated|le5a\(18)))))
-- \U2|Mult0|auto_generated|add20_result[15]~77COUT1_142\ = CARRY((\U2|Mult0|auto_generated|le4a\(20) & (!\U2|Mult0|auto_generated|le5a\(18) & !\U2|Mult0|auto_generated|add20_result[14]~72\)) # (!\U2|Mult0|auto_generated|le4a\(20) & 
-- ((!\U2|Mult0|auto_generated|add20_result[14]~72\) # (!\U2|Mult0|auto_generated|le5a\(18)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le4a\(20),
	datab => \U2|Mult0|auto_generated|le5a\(18),
	cin => \U2|Mult0|auto_generated|add20_result[14]~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|add20_result[15]~75_combout\,
	cout0 => \U2|Mult0|auto_generated|add20_result[15]~77\,
	cout1 => \U2|Mult0|auto_generated|add20_result[15]~77COUT1_142\);

-- Location: LC_X13_Y8_N6
\U2|Mult0|auto_generated|add20_result[16]~80\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|add20_result[16]~80_combout\ = \U2|Mult0|auto_generated|le4a\(21) $ (\U2|Mult0|auto_generated|le5a\(19) $ ((!(!\U2|Mult0|auto_generated|add20_result[14]~72\ & \U2|Mult0|auto_generated|add20_result[15]~77\) # 
-- (\U2|Mult0|auto_generated|add20_result[14]~72\ & \U2|Mult0|auto_generated|add20_result[15]~77COUT1_142\))))
-- \U2|Mult0|auto_generated|add20_result[16]~82\ = CARRY((\U2|Mult0|auto_generated|le4a\(21) & ((\U2|Mult0|auto_generated|le5a\(19)) # (!\U2|Mult0|auto_generated|add20_result[15]~77\))) # (!\U2|Mult0|auto_generated|le4a\(21) & 
-- (\U2|Mult0|auto_generated|le5a\(19) & !\U2|Mult0|auto_generated|add20_result[15]~77\)))
-- \U2|Mult0|auto_generated|add20_result[16]~82COUT1_144\ = CARRY((\U2|Mult0|auto_generated|le4a\(21) & ((\U2|Mult0|auto_generated|le5a\(19)) # (!\U2|Mult0|auto_generated|add20_result[15]~77COUT1_142\))) # (!\U2|Mult0|auto_generated|le4a\(21) & 
-- (\U2|Mult0|auto_generated|le5a\(19) & !\U2|Mult0|auto_generated|add20_result[15]~77COUT1_142\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le4a\(21),
	datab => \U2|Mult0|auto_generated|le5a\(19),
	cin => \U2|Mult0|auto_generated|add20_result[14]~72\,
	cin0 => \U2|Mult0|auto_generated|add20_result[15]~77\,
	cin1 => \U2|Mult0|auto_generated|add20_result[15]~77COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|add20_result[16]~80_combout\,
	cout0 => \U2|Mult0|auto_generated|add20_result[16]~82\,
	cout1 => \U2|Mult0|auto_generated|add20_result[16]~82COUT1_144\);

-- Location: LC_X13_Y8_N7
\U2|Mult0|auto_generated|add20_result[17]~85\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|add20_result[17]~85_combout\ = \U2|Mult0|auto_generated|cs1a\(1) $ (\U2|Mult0|auto_generated|le5a\(20) $ ((!(!\U2|Mult0|auto_generated|add20_result[14]~72\ & \U2|Mult0|auto_generated|add20_result[16]~82\) # 
-- (\U2|Mult0|auto_generated|add20_result[14]~72\ & \U2|Mult0|auto_generated|add20_result[16]~82COUT1_144\))))
-- \U2|Mult0|auto_generated|add20_result[17]~87\ = CARRY((\U2|Mult0|auto_generated|cs1a\(1) & ((!\U2|Mult0|auto_generated|add20_result[16]~82\) # (!\U2|Mult0|auto_generated|le5a\(20)))) # (!\U2|Mult0|auto_generated|cs1a\(1) & 
-- (!\U2|Mult0|auto_generated|le5a\(20) & !\U2|Mult0|auto_generated|add20_result[16]~82\)))
-- \U2|Mult0|auto_generated|add20_result[17]~87COUT1_146\ = CARRY((\U2|Mult0|auto_generated|cs1a\(1) & ((!\U2|Mult0|auto_generated|add20_result[16]~82COUT1_144\) # (!\U2|Mult0|auto_generated|le5a\(20)))) # (!\U2|Mult0|auto_generated|cs1a\(1) & 
-- (!\U2|Mult0|auto_generated|le5a\(20) & !\U2|Mult0|auto_generated|add20_result[16]~82COUT1_144\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|cs1a\(1),
	datab => \U2|Mult0|auto_generated|le5a\(20),
	cin => \U2|Mult0|auto_generated|add20_result[14]~72\,
	cin0 => \U2|Mult0|auto_generated|add20_result[16]~82\,
	cin1 => \U2|Mult0|auto_generated|add20_result[16]~82COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|add20_result[17]~85_combout\,
	cout0 => \U2|Mult0|auto_generated|add20_result[17]~87\,
	cout1 => \U2|Mult0|auto_generated|add20_result[17]~87COUT1_146\);

-- Location: LC_X13_Y8_N8
\U2|Mult0|auto_generated|add20_result[18]~90\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|add20_result[18]~90_combout\ = ((((!\U2|Mult0|auto_generated|add20_result[14]~72\ & \U2|Mult0|auto_generated|add20_result[17]~87\) # (\U2|Mult0|auto_generated|add20_result[14]~72\ & 
-- \U2|Mult0|auto_generated|add20_result[17]~87COUT1_146\))))
-- \U2|Mult0|auto_generated|add20_result[18]~92\ = CARRY(((!\U2|Mult0|auto_generated|add20_result[17]~87\)))
-- \U2|Mult0|auto_generated|add20_result[18]~92COUT1_148\ = CARRY(((!\U2|Mult0|auto_generated|add20_result[17]~87COUT1_146\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \U2|Mult0|auto_generated|add20_result[14]~72\,
	cin0 => \U2|Mult0|auto_generated|add20_result[17]~87\,
	cin1 => \U2|Mult0|auto_generated|add20_result[17]~87COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|add20_result[18]~90_combout\,
	cout0 => \U2|Mult0|auto_generated|add20_result[18]~92\,
	cout1 => \U2|Mult0|auto_generated|add20_result[18]~92COUT1_148\);

-- Location: LC_X13_Y8_N9
\U2|Mult0|auto_generated|add20_result[19]~95\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|add20_result[19]~95_combout\ = ((((!\U2|Mult0|auto_generated|add20_result[14]~72\ & \U2|Mult0|auto_generated|add20_result[18]~92\) # (\U2|Mult0|auto_generated|add20_result[14]~72\ & 
-- \U2|Mult0|auto_generated|add20_result[18]~92COUT1_148\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \U2|Mult0|auto_generated|add20_result[14]~72\,
	cin0 => \U2|Mult0|auto_generated|add20_result[18]~92\,
	cin1 => \U2|Mult0|auto_generated|add20_result[18]~92COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|add20_result[19]~95_combout\);

-- Location: LC_X14_Y10_N5
\U2|Mult0|auto_generated|op_2~110\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_2~110_combout\ = \U2|Mult0|auto_generated|add20_result[19]~95_combout\ $ (\U2|Mult0|auto_generated|cs1a\(2) $ ((\U2|Mult0|auto_generated|op_2~107\)))
-- \U2|Mult0|auto_generated|op_2~112\ = CARRY((\U2|Mult0|auto_generated|add20_result[19]~95_combout\ & ((!\U2|Mult0|auto_generated|op_2~107\) # (!\U2|Mult0|auto_generated|cs1a\(2)))) # (!\U2|Mult0|auto_generated|add20_result[19]~95_combout\ & 
-- (!\U2|Mult0|auto_generated|cs1a\(2) & !\U2|Mult0|auto_generated|op_2~107\)))
-- \U2|Mult0|auto_generated|op_2~112COUT1_180\ = CARRY((\U2|Mult0|auto_generated|add20_result[19]~95_combout\ & ((!\U2|Mult0|auto_generated|op_2~107\) # (!\U2|Mult0|auto_generated|cs1a\(2)))) # (!\U2|Mult0|auto_generated|add20_result[19]~95_combout\ & 
-- (!\U2|Mult0|auto_generated|cs1a\(2) & !\U2|Mult0|auto_generated|op_2~107\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|add20_result[19]~95_combout\,
	datab => \U2|Mult0|auto_generated|cs1a\(2),
	cin => \U2|Mult0|auto_generated|op_2~107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_2~110_combout\,
	cout0 => \U2|Mult0|auto_generated|op_2~112\,
	cout1 => \U2|Mult0|auto_generated|op_2~112COUT1_180\);

-- Location: LC_X14_Y10_N6
\U2|Mult0|auto_generated|op_2~115\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_2~115_combout\ = (((!(!\U2|Mult0|auto_generated|op_2~107\ & \U2|Mult0|auto_generated|op_2~112\) # (\U2|Mult0|auto_generated|op_2~107\ & \U2|Mult0|auto_generated|op_2~112COUT1_180\))))
-- \U2|Mult0|auto_generated|op_2~117\ = CARRY(((!\U2|Mult0|auto_generated|op_2~112\)))
-- \U2|Mult0|auto_generated|op_2~117COUT1_182\ = CARRY(((!\U2|Mult0|auto_generated|op_2~112COUT1_180\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \U2|Mult0|auto_generated|op_2~107\,
	cin0 => \U2|Mult0|auto_generated|op_2~112\,
	cin1 => \U2|Mult0|auto_generated|op_2~112COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_2~115_combout\,
	cout0 => \U2|Mult0|auto_generated|op_2~117\,
	cout1 => \U2|Mult0|auto_generated|op_2~117COUT1_182\);

-- Location: LC_X14_Y10_N7
\U2|Mult0|auto_generated|op_2~120\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_2~120_combout\ = ((((!\U2|Mult0|auto_generated|op_2~107\ & \U2|Mult0|auto_generated|op_2~117\) # (\U2|Mult0|auto_generated|op_2~107\ & \U2|Mult0|auto_generated|op_2~117COUT1_182\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \U2|Mult0|auto_generated|op_2~107\,
	cin0 => \U2|Mult0|auto_generated|op_2~117\,
	cin1 => \U2|Mult0|auto_generated|op_2~117COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_2~120_combout\);

-- Location: LC_X11_Y6_N5
\U2|Mult0|auto_generated|le7a[17]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le7a\(17) = ((\U2|speedreg\(7) & (\U2|Add0~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|speedreg\(7),
	datac => \U2|Add0~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le7a\(17));

-- Location: LC_X10_Y7_N1
\U2|Mult0|auto_generated|le7a[12]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le7a\(12) = (((\U2|speedreg\(7) & \U2|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|speedreg\(7),
	datad => \U2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le7a\(12));

-- Location: LC_X9_Y8_N9
\U2|Mult0|auto_generated|op_1~85\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~85_combout\ = \U2|Mult0|auto_generated|add20_result[12]~60_combout\ $ (\U2|Mult0|auto_generated|le7a\(12) $ (((!\U2|Mult0|auto_generated|op_1~82\ & \U2|Mult0|auto_generated|op_1~17\) # (\U2|Mult0|auto_generated|op_1~82\ & 
-- \U2|Mult0|auto_generated|op_1~17COUT1_184\))))
-- \U2|Mult0|auto_generated|op_1~87\ = CARRY((\U2|Mult0|auto_generated|add20_result[12]~60_combout\ & (!\U2|Mult0|auto_generated|le7a\(12) & !\U2|Mult0|auto_generated|op_1~17COUT1_184\)) # (!\U2|Mult0|auto_generated|add20_result[12]~60_combout\ & 
-- ((!\U2|Mult0|auto_generated|op_1~17COUT1_184\) # (!\U2|Mult0|auto_generated|le7a\(12)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|add20_result[12]~60_combout\,
	datab => \U2|Mult0|auto_generated|le7a\(12),
	cin => \U2|Mult0|auto_generated|op_1~82\,
	cin0 => \U2|Mult0|auto_generated|op_1~17\,
	cin1 => \U2|Mult0|auto_generated|op_1~17COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~85_combout\,
	cout => \U2|Mult0|auto_generated|op_1~87\);

-- Location: LC_X9_Y7_N2
\U2|Mult0|auto_generated|le7a[16]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le7a\(16) = ((\U2|speedreg\(7) & (\U2|Add0~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|speedreg\(7),
	datac => \U2|Add0~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le7a\(16));

-- Location: LC_X10_Y7_N8
\U2|Mult0|auto_generated|le7a[15]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le7a\(15) = (((\U2|speedreg\(7) & \U2|Add0~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|speedreg\(7),
	datad => \U2|Add0~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le7a\(15));

-- Location: LC_X11_Y6_N8
\U2|Mult0|auto_generated|le7a[14]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le7a\(14) = ((\U2|speedreg\(7) & (\U2|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|speedreg\(7),
	datac => \U2|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le7a\(14));

-- Location: LC_X10_Y8_N9
\U2|Mult0|auto_generated|le7a[13]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le7a\(13) = (((\U2|Add0~35_combout\ & \U2|speedreg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|Add0~35_combout\,
	datad => \U2|speedreg\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le7a\(13));

-- Location: LC_X10_Y8_N0
\U2|Mult0|auto_generated|op_1~90\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~90_combout\ = \U2|Mult0|auto_generated|add20_result[13]~65_combout\ $ (\U2|Mult0|auto_generated|le7a\(13) $ ((!\U2|Mult0|auto_generated|op_1~87\)))
-- \U2|Mult0|auto_generated|op_1~92\ = CARRY((\U2|Mult0|auto_generated|add20_result[13]~65_combout\ & ((\U2|Mult0|auto_generated|le7a\(13)) # (!\U2|Mult0|auto_generated|op_1~87\))) # (!\U2|Mult0|auto_generated|add20_result[13]~65_combout\ & 
-- (\U2|Mult0|auto_generated|le7a\(13) & !\U2|Mult0|auto_generated|op_1~87\)))
-- \U2|Mult0|auto_generated|op_1~92COUT1_186\ = CARRY((\U2|Mult0|auto_generated|add20_result[13]~65_combout\ & ((\U2|Mult0|auto_generated|le7a\(13)) # (!\U2|Mult0|auto_generated|op_1~87\))) # (!\U2|Mult0|auto_generated|add20_result[13]~65_combout\ & 
-- (\U2|Mult0|auto_generated|le7a\(13) & !\U2|Mult0|auto_generated|op_1~87\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|add20_result[13]~65_combout\,
	datab => \U2|Mult0|auto_generated|le7a\(13),
	cin => \U2|Mult0|auto_generated|op_1~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~90_combout\,
	cout0 => \U2|Mult0|auto_generated|op_1~92\,
	cout1 => \U2|Mult0|auto_generated|op_1~92COUT1_186\);

-- Location: LC_X10_Y8_N1
\U2|Mult0|auto_generated|op_1~95\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~95_combout\ = \U2|Mult0|auto_generated|le7a\(14) $ (\U2|Mult0|auto_generated|add20_result[14]~70_combout\ $ (((!\U2|Mult0|auto_generated|op_1~87\ & \U2|Mult0|auto_generated|op_1~92\) # (\U2|Mult0|auto_generated|op_1~87\ & 
-- \U2|Mult0|auto_generated|op_1~92COUT1_186\))))
-- \U2|Mult0|auto_generated|op_1~97\ = CARRY((\U2|Mult0|auto_generated|le7a\(14) & (!\U2|Mult0|auto_generated|add20_result[14]~70_combout\ & !\U2|Mult0|auto_generated|op_1~92\)) # (!\U2|Mult0|auto_generated|le7a\(14) & ((!\U2|Mult0|auto_generated|op_1~92\) # 
-- (!\U2|Mult0|auto_generated|add20_result[14]~70_combout\))))
-- \U2|Mult0|auto_generated|op_1~97COUT1_188\ = CARRY((\U2|Mult0|auto_generated|le7a\(14) & (!\U2|Mult0|auto_generated|add20_result[14]~70_combout\ & !\U2|Mult0|auto_generated|op_1~92COUT1_186\)) # (!\U2|Mult0|auto_generated|le7a\(14) & 
-- ((!\U2|Mult0|auto_generated|op_1~92COUT1_186\) # (!\U2|Mult0|auto_generated|add20_result[14]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le7a\(14),
	datab => \U2|Mult0|auto_generated|add20_result[14]~70_combout\,
	cin => \U2|Mult0|auto_generated|op_1~87\,
	cin0 => \U2|Mult0|auto_generated|op_1~92\,
	cin1 => \U2|Mult0|auto_generated|op_1~92COUT1_186\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~95_combout\,
	cout0 => \U2|Mult0|auto_generated|op_1~97\,
	cout1 => \U2|Mult0|auto_generated|op_1~97COUT1_188\);

-- Location: LC_X10_Y8_N2
\U2|Mult0|auto_generated|op_1~100\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~100_combout\ = \U2|Mult0|auto_generated|le7a\(15) $ (\U2|Mult0|auto_generated|add20_result[15]~75_combout\ $ ((!(!\U2|Mult0|auto_generated|op_1~87\ & \U2|Mult0|auto_generated|op_1~97\) # (\U2|Mult0|auto_generated|op_1~87\ & 
-- \U2|Mult0|auto_generated|op_1~97COUT1_188\))))
-- \U2|Mult0|auto_generated|op_1~102\ = CARRY((\U2|Mult0|auto_generated|le7a\(15) & ((\U2|Mult0|auto_generated|add20_result[15]~75_combout\) # (!\U2|Mult0|auto_generated|op_1~97\))) # (!\U2|Mult0|auto_generated|le7a\(15) & 
-- (\U2|Mult0|auto_generated|add20_result[15]~75_combout\ & !\U2|Mult0|auto_generated|op_1~97\)))
-- \U2|Mult0|auto_generated|op_1~102COUT1_190\ = CARRY((\U2|Mult0|auto_generated|le7a\(15) & ((\U2|Mult0|auto_generated|add20_result[15]~75_combout\) # (!\U2|Mult0|auto_generated|op_1~97COUT1_188\))) # (!\U2|Mult0|auto_generated|le7a\(15) & 
-- (\U2|Mult0|auto_generated|add20_result[15]~75_combout\ & !\U2|Mult0|auto_generated|op_1~97COUT1_188\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le7a\(15),
	datab => \U2|Mult0|auto_generated|add20_result[15]~75_combout\,
	cin => \U2|Mult0|auto_generated|op_1~87\,
	cin0 => \U2|Mult0|auto_generated|op_1~97\,
	cin1 => \U2|Mult0|auto_generated|op_1~97COUT1_188\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~100_combout\,
	cout0 => \U2|Mult0|auto_generated|op_1~102\,
	cout1 => \U2|Mult0|auto_generated|op_1~102COUT1_190\);

-- Location: LC_X10_Y8_N3
\U2|Mult0|auto_generated|op_1~105\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~105_combout\ = \U2|Mult0|auto_generated|le7a\(16) $ (\U2|Mult0|auto_generated|add20_result[16]~80_combout\ $ (((!\U2|Mult0|auto_generated|op_1~87\ & \U2|Mult0|auto_generated|op_1~102\) # (\U2|Mult0|auto_generated|op_1~87\ & 
-- \U2|Mult0|auto_generated|op_1~102COUT1_190\))))
-- \U2|Mult0|auto_generated|op_1~107\ = CARRY((\U2|Mult0|auto_generated|le7a\(16) & (!\U2|Mult0|auto_generated|add20_result[16]~80_combout\ & !\U2|Mult0|auto_generated|op_1~102\)) # (!\U2|Mult0|auto_generated|le7a\(16) & 
-- ((!\U2|Mult0|auto_generated|op_1~102\) # (!\U2|Mult0|auto_generated|add20_result[16]~80_combout\))))
-- \U2|Mult0|auto_generated|op_1~107COUT1_192\ = CARRY((\U2|Mult0|auto_generated|le7a\(16) & (!\U2|Mult0|auto_generated|add20_result[16]~80_combout\ & !\U2|Mult0|auto_generated|op_1~102COUT1_190\)) # (!\U2|Mult0|auto_generated|le7a\(16) & 
-- ((!\U2|Mult0|auto_generated|op_1~102COUT1_190\) # (!\U2|Mult0|auto_generated|add20_result[16]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le7a\(16),
	datab => \U2|Mult0|auto_generated|add20_result[16]~80_combout\,
	cin => \U2|Mult0|auto_generated|op_1~87\,
	cin0 => \U2|Mult0|auto_generated|op_1~102\,
	cin1 => \U2|Mult0|auto_generated|op_1~102COUT1_190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~105_combout\,
	cout0 => \U2|Mult0|auto_generated|op_1~107\,
	cout1 => \U2|Mult0|auto_generated|op_1~107COUT1_192\);

-- Location: LC_X10_Y8_N4
\U2|Mult0|auto_generated|op_1~110\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~110_combout\ = \U2|Mult0|auto_generated|le7a\(17) $ (\U2|Mult0|auto_generated|add20_result[17]~85_combout\ $ ((!(!\U2|Mult0|auto_generated|op_1~87\ & \U2|Mult0|auto_generated|op_1~107\) # (\U2|Mult0|auto_generated|op_1~87\ & 
-- \U2|Mult0|auto_generated|op_1~107COUT1_192\))))
-- \U2|Mult0|auto_generated|op_1~112\ = CARRY((\U2|Mult0|auto_generated|le7a\(17) & ((\U2|Mult0|auto_generated|add20_result[17]~85_combout\) # (!\U2|Mult0|auto_generated|op_1~107COUT1_192\))) # (!\U2|Mult0|auto_generated|le7a\(17) & 
-- (\U2|Mult0|auto_generated|add20_result[17]~85_combout\ & !\U2|Mult0|auto_generated|op_1~107COUT1_192\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le7a\(17),
	datab => \U2|Mult0|auto_generated|add20_result[17]~85_combout\,
	cin => \U2|Mult0|auto_generated|op_1~87\,
	cin0 => \U2|Mult0|auto_generated|op_1~107\,
	cin1 => \U2|Mult0|auto_generated|op_1~107COUT1_192\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~110_combout\,
	cout => \U2|Mult0|auto_generated|op_1~112\);

-- Location: LC_X11_Y6_N4
\U2|Mult0|auto_generated|le7a[20]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le7a\(20) = ((\U2|speedreg\(7) & (\U2|Add0~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|speedreg\(7),
	datac => \U2|Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le7a\(20));

-- Location: LC_X11_Y6_N2
\U2|Mult0|auto_generated|le6a[21]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le6a\(21) = (((\U2|Add0~95_combout\ & \U2|Mult0|auto_generated|cs1a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|Add0~95_combout\,
	datad => \U2|Mult0|auto_generated|cs1a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le6a\(21));

-- Location: LC_X14_Y9_N8
\U2|Mult0|auto_generated|le7a[19]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le7a\(19) = (\U2|speedreg\(7) & (((\U2|Add0~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|speedreg\(7),
	datac => \U2|Add0~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le7a\(19));

-- Location: LC_X11_Y6_N6
\U2|Mult0|auto_generated|le6a[20]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le6a\(20) = (\U2|Add0~95_combout\ & ((\U2|Mult0|auto_generated|cs2a\(3)) # ((\U2|Mult0|auto_generated|cs1a\(3) & \U2|Add0~100_combout\)))) # (!\U2|Add0~95_combout\ & (((\U2|Mult0|auto_generated|cs1a\(3) & \U2|Add0~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~95_combout\,
	datab => \U2|Mult0|auto_generated|cs2a\(3),
	datac => \U2|Mult0|auto_generated|cs1a\(3),
	datad => \U2|Add0~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le6a\(20));

-- Location: LC_X14_Y9_N5
\U2|Mult0|auto_generated|le7a[18]\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|le7a\(18) = ((\U2|Add0~90_combout\ & (\U2|speedreg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|Add0~90_combout\,
	datac => \U2|speedreg\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|le7a\(18));

-- Location: LC_X10_Y8_N5
\U2|Mult0|auto_generated|op_1~115\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~115_combout\ = \U2|Mult0|auto_generated|le7a\(18) $ (\U2|Mult0|auto_generated|add20_result[18]~90_combout\ $ ((\U2|Mult0|auto_generated|op_1~112\)))
-- \U2|Mult0|auto_generated|op_1~117\ = CARRY((\U2|Mult0|auto_generated|le7a\(18) & (!\U2|Mult0|auto_generated|add20_result[18]~90_combout\ & !\U2|Mult0|auto_generated|op_1~112\)) # (!\U2|Mult0|auto_generated|le7a\(18) & 
-- ((!\U2|Mult0|auto_generated|op_1~112\) # (!\U2|Mult0|auto_generated|add20_result[18]~90_combout\))))
-- \U2|Mult0|auto_generated|op_1~117COUT1_194\ = CARRY((\U2|Mult0|auto_generated|le7a\(18) & (!\U2|Mult0|auto_generated|add20_result[18]~90_combout\ & !\U2|Mult0|auto_generated|op_1~112\)) # (!\U2|Mult0|auto_generated|le7a\(18) & 
-- ((!\U2|Mult0|auto_generated|op_1~112\) # (!\U2|Mult0|auto_generated|add20_result[18]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le7a\(18),
	datab => \U2|Mult0|auto_generated|add20_result[18]~90_combout\,
	cin => \U2|Mult0|auto_generated|op_1~112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~115_combout\,
	cout0 => \U2|Mult0|auto_generated|op_1~117\,
	cout1 => \U2|Mult0|auto_generated|op_1~117COUT1_194\);

-- Location: LC_X10_Y8_N6
\U2|Mult0|auto_generated|op_1~120\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~120_combout\ = \U2|Mult0|auto_generated|le7a\(19) $ (\U2|Mult0|auto_generated|le6a\(20) $ ((!(!\U2|Mult0|auto_generated|op_1~112\ & \U2|Mult0|auto_generated|op_1~117\) # (\U2|Mult0|auto_generated|op_1~112\ & 
-- \U2|Mult0|auto_generated|op_1~117COUT1_194\))))
-- \U2|Mult0|auto_generated|op_1~122\ = CARRY((\U2|Mult0|auto_generated|le7a\(19) & ((\U2|Mult0|auto_generated|le6a\(20)) # (!\U2|Mult0|auto_generated|op_1~117\))) # (!\U2|Mult0|auto_generated|le7a\(19) & (\U2|Mult0|auto_generated|le6a\(20) & 
-- !\U2|Mult0|auto_generated|op_1~117\)))
-- \U2|Mult0|auto_generated|op_1~122COUT1_196\ = CARRY((\U2|Mult0|auto_generated|le7a\(19) & ((\U2|Mult0|auto_generated|le6a\(20)) # (!\U2|Mult0|auto_generated|op_1~117COUT1_194\))) # (!\U2|Mult0|auto_generated|le7a\(19) & (\U2|Mult0|auto_generated|le6a\(20) 
-- & !\U2|Mult0|auto_generated|op_1~117COUT1_194\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le7a\(19),
	datab => \U2|Mult0|auto_generated|le6a\(20),
	cin => \U2|Mult0|auto_generated|op_1~112\,
	cin0 => \U2|Mult0|auto_generated|op_1~117\,
	cin1 => \U2|Mult0|auto_generated|op_1~117COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~120_combout\,
	cout0 => \U2|Mult0|auto_generated|op_1~122\,
	cout1 => \U2|Mult0|auto_generated|op_1~122COUT1_196\);

-- Location: LC_X10_Y8_N7
\U2|Mult0|auto_generated|op_1~125\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~125_combout\ = \U2|Mult0|auto_generated|le7a\(20) $ (\U2|Mult0|auto_generated|le6a\(21) $ (((!\U2|Mult0|auto_generated|op_1~112\ & \U2|Mult0|auto_generated|op_1~122\) # (\U2|Mult0|auto_generated|op_1~112\ & 
-- \U2|Mult0|auto_generated|op_1~122COUT1_196\))))
-- \U2|Mult0|auto_generated|op_1~127\ = CARRY((\U2|Mult0|auto_generated|le7a\(20) & (!\U2|Mult0|auto_generated|le6a\(21) & !\U2|Mult0|auto_generated|op_1~122\)) # (!\U2|Mult0|auto_generated|le7a\(20) & ((!\U2|Mult0|auto_generated|op_1~122\) # 
-- (!\U2|Mult0|auto_generated|le6a\(21)))))
-- \U2|Mult0|auto_generated|op_1~127COUT1_198\ = CARRY((\U2|Mult0|auto_generated|le7a\(20) & (!\U2|Mult0|auto_generated|le6a\(21) & !\U2|Mult0|auto_generated|op_1~122COUT1_196\)) # (!\U2|Mult0|auto_generated|le7a\(20) & 
-- ((!\U2|Mult0|auto_generated|op_1~122COUT1_196\) # (!\U2|Mult0|auto_generated|le6a\(21)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|le7a\(20),
	datab => \U2|Mult0|auto_generated|le6a\(21),
	cin => \U2|Mult0|auto_generated|op_1~112\,
	cin0 => \U2|Mult0|auto_generated|op_1~122\,
	cin1 => \U2|Mult0|auto_generated|op_1~122COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~125_combout\,
	cout0 => \U2|Mult0|auto_generated|op_1~127\,
	cout1 => \U2|Mult0|auto_generated|op_1~127COUT1_198\);

-- Location: LC_X10_Y8_N8
\U2|Mult0|auto_generated|op_1~130\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_1~130_combout\ = (((!(!\U2|Mult0|auto_generated|op_1~112\ & \U2|Mult0|auto_generated|op_1~127\) # (\U2|Mult0|auto_generated|op_1~112\ & \U2|Mult0|auto_generated|op_1~127COUT1_198\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \U2|Mult0|auto_generated|op_1~112\,
	cin0 => \U2|Mult0|auto_generated|op_1~127\,
	cin1 => \U2|Mult0|auto_generated|op_1~127COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_1~130_combout\);

-- Location: LC_X10_Y10_N0
\U2|Mult0|auto_generated|op_5~95\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~95_combout\ = \U2|Mult0|auto_generated|op_1~85_combout\ $ (\U2|Mult0|auto_generated|op_2~75_combout\ $ ((\U2|Mult0|auto_generated|op_5~17\)))
-- \U2|Mult0|auto_generated|op_5~97\ = CARRY((\U2|Mult0|auto_generated|op_1~85_combout\ & (!\U2|Mult0|auto_generated|op_2~75_combout\ & !\U2|Mult0|auto_generated|op_5~17\)) # (!\U2|Mult0|auto_generated|op_1~85_combout\ & ((!\U2|Mult0|auto_generated|op_5~17\) 
-- # (!\U2|Mult0|auto_generated|op_2~75_combout\))))
-- \U2|Mult0|auto_generated|op_5~97COUT1_200\ = CARRY((\U2|Mult0|auto_generated|op_1~85_combout\ & (!\U2|Mult0|auto_generated|op_2~75_combout\ & !\U2|Mult0|auto_generated|op_5~17\)) # (!\U2|Mult0|auto_generated|op_1~85_combout\ & 
-- ((!\U2|Mult0|auto_generated|op_5~17\) # (!\U2|Mult0|auto_generated|op_2~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_1~85_combout\,
	datab => \U2|Mult0|auto_generated|op_2~75_combout\,
	cin => \U2|Mult0|auto_generated|op_5~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~95_combout\,
	cout0 => \U2|Mult0|auto_generated|op_5~97\,
	cout1 => \U2|Mult0|auto_generated|op_5~97COUT1_200\);

-- Location: LC_X10_Y10_N1
\U2|Mult0|auto_generated|op_5~100\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~100_combout\ = \U2|Mult0|auto_generated|op_2~80_combout\ $ (\U2|Mult0|auto_generated|op_1~90_combout\ $ ((!(!\U2|Mult0|auto_generated|op_5~17\ & \U2|Mult0|auto_generated|op_5~97\) # (\U2|Mult0|auto_generated|op_5~17\ & 
-- \U2|Mult0|auto_generated|op_5~97COUT1_200\))))
-- \U2|Mult0|auto_generated|op_5~102\ = CARRY((\U2|Mult0|auto_generated|op_2~80_combout\ & ((\U2|Mult0|auto_generated|op_1~90_combout\) # (!\U2|Mult0|auto_generated|op_5~97\))) # (!\U2|Mult0|auto_generated|op_2~80_combout\ & 
-- (\U2|Mult0|auto_generated|op_1~90_combout\ & !\U2|Mult0|auto_generated|op_5~97\)))
-- \U2|Mult0|auto_generated|op_5~102COUT1_202\ = CARRY((\U2|Mult0|auto_generated|op_2~80_combout\ & ((\U2|Mult0|auto_generated|op_1~90_combout\) # (!\U2|Mult0|auto_generated|op_5~97COUT1_200\))) # (!\U2|Mult0|auto_generated|op_2~80_combout\ & 
-- (\U2|Mult0|auto_generated|op_1~90_combout\ & !\U2|Mult0|auto_generated|op_5~97COUT1_200\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_2~80_combout\,
	datab => \U2|Mult0|auto_generated|op_1~90_combout\,
	cin => \U2|Mult0|auto_generated|op_5~17\,
	cin0 => \U2|Mult0|auto_generated|op_5~97\,
	cin1 => \U2|Mult0|auto_generated|op_5~97COUT1_200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~100_combout\,
	cout0 => \U2|Mult0|auto_generated|op_5~102\,
	cout1 => \U2|Mult0|auto_generated|op_5~102COUT1_202\);

-- Location: LC_X10_Y10_N2
\U2|Mult0|auto_generated|op_5~105\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~105_combout\ = \U2|Mult0|auto_generated|op_2~85_combout\ $ (\U2|Mult0|auto_generated|op_1~95_combout\ $ (((!\U2|Mult0|auto_generated|op_5~17\ & \U2|Mult0|auto_generated|op_5~102\) # (\U2|Mult0|auto_generated|op_5~17\ & 
-- \U2|Mult0|auto_generated|op_5~102COUT1_202\))))
-- \U2|Mult0|auto_generated|op_5~107\ = CARRY((\U2|Mult0|auto_generated|op_2~85_combout\ & (!\U2|Mult0|auto_generated|op_1~95_combout\ & !\U2|Mult0|auto_generated|op_5~102\)) # (!\U2|Mult0|auto_generated|op_2~85_combout\ & 
-- ((!\U2|Mult0|auto_generated|op_5~102\) # (!\U2|Mult0|auto_generated|op_1~95_combout\))))
-- \U2|Mult0|auto_generated|op_5~107COUT1_204\ = CARRY((\U2|Mult0|auto_generated|op_2~85_combout\ & (!\U2|Mult0|auto_generated|op_1~95_combout\ & !\U2|Mult0|auto_generated|op_5~102COUT1_202\)) # (!\U2|Mult0|auto_generated|op_2~85_combout\ & 
-- ((!\U2|Mult0|auto_generated|op_5~102COUT1_202\) # (!\U2|Mult0|auto_generated|op_1~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_2~85_combout\,
	datab => \U2|Mult0|auto_generated|op_1~95_combout\,
	cin => \U2|Mult0|auto_generated|op_5~17\,
	cin0 => \U2|Mult0|auto_generated|op_5~102\,
	cin1 => \U2|Mult0|auto_generated|op_5~102COUT1_202\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~105_combout\,
	cout0 => \U2|Mult0|auto_generated|op_5~107\,
	cout1 => \U2|Mult0|auto_generated|op_5~107COUT1_204\);

-- Location: LC_X10_Y10_N3
\U2|Mult0|auto_generated|op_5~110\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~110_combout\ = \U2|Mult0|auto_generated|op_2~90_combout\ $ (\U2|Mult0|auto_generated|op_1~100_combout\ $ ((!(!\U2|Mult0|auto_generated|op_5~17\ & \U2|Mult0|auto_generated|op_5~107\) # (\U2|Mult0|auto_generated|op_5~17\ & 
-- \U2|Mult0|auto_generated|op_5~107COUT1_204\))))
-- \U2|Mult0|auto_generated|op_5~112\ = CARRY((\U2|Mult0|auto_generated|op_2~90_combout\ & ((\U2|Mult0|auto_generated|op_1~100_combout\) # (!\U2|Mult0|auto_generated|op_5~107\))) # (!\U2|Mult0|auto_generated|op_2~90_combout\ & 
-- (\U2|Mult0|auto_generated|op_1~100_combout\ & !\U2|Mult0|auto_generated|op_5~107\)))
-- \U2|Mult0|auto_generated|op_5~112COUT1_206\ = CARRY((\U2|Mult0|auto_generated|op_2~90_combout\ & ((\U2|Mult0|auto_generated|op_1~100_combout\) # (!\U2|Mult0|auto_generated|op_5~107COUT1_204\))) # (!\U2|Mult0|auto_generated|op_2~90_combout\ & 
-- (\U2|Mult0|auto_generated|op_1~100_combout\ & !\U2|Mult0|auto_generated|op_5~107COUT1_204\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_2~90_combout\,
	datab => \U2|Mult0|auto_generated|op_1~100_combout\,
	cin => \U2|Mult0|auto_generated|op_5~17\,
	cin0 => \U2|Mult0|auto_generated|op_5~107\,
	cin1 => \U2|Mult0|auto_generated|op_5~107COUT1_204\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~110_combout\,
	cout0 => \U2|Mult0|auto_generated|op_5~112\,
	cout1 => \U2|Mult0|auto_generated|op_5~112COUT1_206\);

-- Location: LC_X10_Y10_N4
\U2|Mult0|auto_generated|op_5~115\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~115_combout\ = \U2|Mult0|auto_generated|op_2~95_combout\ $ (\U2|Mult0|auto_generated|op_1~105_combout\ $ (((!\U2|Mult0|auto_generated|op_5~17\ & \U2|Mult0|auto_generated|op_5~112\) # (\U2|Mult0|auto_generated|op_5~17\ & 
-- \U2|Mult0|auto_generated|op_5~112COUT1_206\))))
-- \U2|Mult0|auto_generated|op_5~117\ = CARRY((\U2|Mult0|auto_generated|op_2~95_combout\ & (!\U2|Mult0|auto_generated|op_1~105_combout\ & !\U2|Mult0|auto_generated|op_5~112COUT1_206\)) # (!\U2|Mult0|auto_generated|op_2~95_combout\ & 
-- ((!\U2|Mult0|auto_generated|op_5~112COUT1_206\) # (!\U2|Mult0|auto_generated|op_1~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_2~95_combout\,
	datab => \U2|Mult0|auto_generated|op_1~105_combout\,
	cin => \U2|Mult0|auto_generated|op_5~17\,
	cin0 => \U2|Mult0|auto_generated|op_5~112\,
	cin1 => \U2|Mult0|auto_generated|op_5~112COUT1_206\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~115_combout\,
	cout => \U2|Mult0|auto_generated|op_5~117\);

-- Location: LC_X10_Y10_N5
\U2|Mult0|auto_generated|op_5~120\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~120_combout\ = \U2|Mult0|auto_generated|op_1~110_combout\ $ (\U2|Mult0|auto_generated|op_2~100_combout\ $ ((!\U2|Mult0|auto_generated|op_5~117\)))
-- \U2|Mult0|auto_generated|op_5~122\ = CARRY((\U2|Mult0|auto_generated|op_1~110_combout\ & ((\U2|Mult0|auto_generated|op_2~100_combout\) # (!\U2|Mult0|auto_generated|op_5~117\))) # (!\U2|Mult0|auto_generated|op_1~110_combout\ & 
-- (\U2|Mult0|auto_generated|op_2~100_combout\ & !\U2|Mult0|auto_generated|op_5~117\)))
-- \U2|Mult0|auto_generated|op_5~122COUT1_208\ = CARRY((\U2|Mult0|auto_generated|op_1~110_combout\ & ((\U2|Mult0|auto_generated|op_2~100_combout\) # (!\U2|Mult0|auto_generated|op_5~117\))) # (!\U2|Mult0|auto_generated|op_1~110_combout\ & 
-- (\U2|Mult0|auto_generated|op_2~100_combout\ & !\U2|Mult0|auto_generated|op_5~117\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_1~110_combout\,
	datab => \U2|Mult0|auto_generated|op_2~100_combout\,
	cin => \U2|Mult0|auto_generated|op_5~117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~120_combout\,
	cout0 => \U2|Mult0|auto_generated|op_5~122\,
	cout1 => \U2|Mult0|auto_generated|op_5~122COUT1_208\);

-- Location: LC_X10_Y10_N6
\U2|Mult0|auto_generated|op_5~125\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~125_combout\ = \U2|Mult0|auto_generated|op_1~115_combout\ $ (\U2|Mult0|auto_generated|op_2~105_combout\ $ (((!\U2|Mult0|auto_generated|op_5~117\ & \U2|Mult0|auto_generated|op_5~122\) # (\U2|Mult0|auto_generated|op_5~117\ & 
-- \U2|Mult0|auto_generated|op_5~122COUT1_208\))))
-- \U2|Mult0|auto_generated|op_5~127\ = CARRY((\U2|Mult0|auto_generated|op_1~115_combout\ & (!\U2|Mult0|auto_generated|op_2~105_combout\ & !\U2|Mult0|auto_generated|op_5~122\)) # (!\U2|Mult0|auto_generated|op_1~115_combout\ & 
-- ((!\U2|Mult0|auto_generated|op_5~122\) # (!\U2|Mult0|auto_generated|op_2~105_combout\))))
-- \U2|Mult0|auto_generated|op_5~127COUT1_210\ = CARRY((\U2|Mult0|auto_generated|op_1~115_combout\ & (!\U2|Mult0|auto_generated|op_2~105_combout\ & !\U2|Mult0|auto_generated|op_5~122COUT1_208\)) # (!\U2|Mult0|auto_generated|op_1~115_combout\ & 
-- ((!\U2|Mult0|auto_generated|op_5~122COUT1_208\) # (!\U2|Mult0|auto_generated|op_2~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_1~115_combout\,
	datab => \U2|Mult0|auto_generated|op_2~105_combout\,
	cin => \U2|Mult0|auto_generated|op_5~117\,
	cin0 => \U2|Mult0|auto_generated|op_5~122\,
	cin1 => \U2|Mult0|auto_generated|op_5~122COUT1_208\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~125_combout\,
	cout0 => \U2|Mult0|auto_generated|op_5~127\,
	cout1 => \U2|Mult0|auto_generated|op_5~127COUT1_210\);

-- Location: LC_X10_Y10_N7
\U2|Mult0|auto_generated|op_5~130\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~130_combout\ = \U2|Mult0|auto_generated|op_1~120_combout\ $ (\U2|Mult0|auto_generated|op_2~110_combout\ $ ((!(!\U2|Mult0|auto_generated|op_5~117\ & \U2|Mult0|auto_generated|op_5~127\) # (\U2|Mult0|auto_generated|op_5~117\ & 
-- \U2|Mult0|auto_generated|op_5~127COUT1_210\))))
-- \U2|Mult0|auto_generated|op_5~132\ = CARRY((\U2|Mult0|auto_generated|op_1~120_combout\ & ((\U2|Mult0|auto_generated|op_2~110_combout\) # (!\U2|Mult0|auto_generated|op_5~127\))) # (!\U2|Mult0|auto_generated|op_1~120_combout\ & 
-- (\U2|Mult0|auto_generated|op_2~110_combout\ & !\U2|Mult0|auto_generated|op_5~127\)))
-- \U2|Mult0|auto_generated|op_5~132COUT1_212\ = CARRY((\U2|Mult0|auto_generated|op_1~120_combout\ & ((\U2|Mult0|auto_generated|op_2~110_combout\) # (!\U2|Mult0|auto_generated|op_5~127COUT1_210\))) # (!\U2|Mult0|auto_generated|op_1~120_combout\ & 
-- (\U2|Mult0|auto_generated|op_2~110_combout\ & !\U2|Mult0|auto_generated|op_5~127COUT1_210\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_1~120_combout\,
	datab => \U2|Mult0|auto_generated|op_2~110_combout\,
	cin => \U2|Mult0|auto_generated|op_5~117\,
	cin0 => \U2|Mult0|auto_generated|op_5~127\,
	cin1 => \U2|Mult0|auto_generated|op_5~127COUT1_210\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~130_combout\,
	cout0 => \U2|Mult0|auto_generated|op_5~132\,
	cout1 => \U2|Mult0|auto_generated|op_5~132COUT1_212\);

-- Location: LC_X10_Y10_N8
\U2|Mult0|auto_generated|op_5~135\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~135_combout\ = \U2|Mult0|auto_generated|op_2~115_combout\ $ (\U2|Mult0|auto_generated|op_1~125_combout\ $ (((!\U2|Mult0|auto_generated|op_5~117\ & \U2|Mult0|auto_generated|op_5~132\) # (\U2|Mult0|auto_generated|op_5~117\ & 
-- \U2|Mult0|auto_generated|op_5~132COUT1_212\))))
-- \U2|Mult0|auto_generated|op_5~137\ = CARRY((\U2|Mult0|auto_generated|op_2~115_combout\ & (!\U2|Mult0|auto_generated|op_1~125_combout\ & !\U2|Mult0|auto_generated|op_5~132\)) # (!\U2|Mult0|auto_generated|op_2~115_combout\ & 
-- ((!\U2|Mult0|auto_generated|op_5~132\) # (!\U2|Mult0|auto_generated|op_1~125_combout\))))
-- \U2|Mult0|auto_generated|op_5~137COUT1_214\ = CARRY((\U2|Mult0|auto_generated|op_2~115_combout\ & (!\U2|Mult0|auto_generated|op_1~125_combout\ & !\U2|Mult0|auto_generated|op_5~132COUT1_212\)) # (!\U2|Mult0|auto_generated|op_2~115_combout\ & 
-- ((!\U2|Mult0|auto_generated|op_5~132COUT1_212\) # (!\U2|Mult0|auto_generated|op_1~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_2~115_combout\,
	datab => \U2|Mult0|auto_generated|op_1~125_combout\,
	cin => \U2|Mult0|auto_generated|op_5~117\,
	cin0 => \U2|Mult0|auto_generated|op_5~132\,
	cin1 => \U2|Mult0|auto_generated|op_5~132COUT1_212\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~135_combout\,
	cout0 => \U2|Mult0|auto_generated|op_5~137\,
	cout1 => \U2|Mult0|auto_generated|op_5~137COUT1_214\);

-- Location: LC_X10_Y10_N9
\U2|Mult0|auto_generated|op_5~140\ : maxv_lcell
-- Equation(s):
-- \U2|Mult0|auto_generated|op_5~140_combout\ = (\U2|Mult0|auto_generated|op_2~120_combout\ $ ((!\U2|Mult0|auto_generated|op_5~117\ & \U2|Mult0|auto_generated|op_5~137\) # (\U2|Mult0|auto_generated|op_5~117\ & \U2|Mult0|auto_generated|op_5~137COUT1_214\) $ 
-- (!\U2|Mult0|auto_generated|op_1~130_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|Mult0|auto_generated|op_2~120_combout\,
	datad => \U2|Mult0|auto_generated|op_1~130_combout\,
	cin => \U2|Mult0|auto_generated|op_5~117\,
	cin0 => \U2|Mult0|auto_generated|op_5~137\,
	cin1 => \U2|Mult0|auto_generated|op_5~137COUT1_214\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Mult0|auto_generated|op_5~140_combout\);

-- Location: LC_X10_Y9_N7
\U2|LessThan1~6\ : maxv_lcell
-- Equation(s):
-- \U2|LessThan1~6_combout\ = (!\U2|Mult0|auto_generated|op_5~95_combout\ & (!\U2|Mult0|auto_generated|op_5~110_combout\ & (!\U2|Mult0|auto_generated|op_5~105_combout\ & !\U2|Mult0|auto_generated|op_5~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_5~95_combout\,
	datab => \U2|Mult0|auto_generated|op_5~110_combout\,
	datac => \U2|Mult0|auto_generated|op_5~105_combout\,
	datad => \U2|Mult0|auto_generated|op_5~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|LessThan1~6_combout\);

-- Location: LC_X10_Y9_N1
\U2|LessThan1~7\ : maxv_lcell
-- Equation(s):
-- \U2|LessThan1~7_combout\ = (!\U2|Mult0|auto_generated|op_5~120_combout\ & (!\U2|Mult0|auto_generated|op_5~125_combout\ & (!\U2|Mult0|auto_generated|op_5~130_combout\ & !\U2|Mult0|auto_generated|op_5~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_5~120_combout\,
	datab => \U2|Mult0|auto_generated|op_5~125_combout\,
	datac => \U2|Mult0|auto_generated|op_5~130_combout\,
	datad => \U2|Mult0|auto_generated|op_5~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|LessThan1~7_combout\);

-- Location: LC_X10_Y9_N2
\U2|LessThan1~8\ : maxv_lcell
-- Equation(s):
-- \U2|LessThan1~8_combout\ = (!\U2|Mult0|auto_generated|op_5~140_combout\ & (!\U2|Mult0|auto_generated|op_5~135_combout\ & (\U2|LessThan1~6_combout\ & \U2|LessThan1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mult0|auto_generated|op_5~140_combout\,
	datab => \U2|Mult0|auto_generated|op_5~135_combout\,
	datac => \U2|LessThan1~6_combout\,
	datad => \U2|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|LessThan1~8_combout\);

-- Location: LC_X9_Y9_N8
\U2|t[6]~16\ : maxv_lcell
-- Equation(s):
-- \U2|t[6]~16_combout\ = (\U2|LessThan0~2_combout\ & (((!\U2|LessThan1~5_combout\) # (!\U2|LessThan1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan0~2_combout\,
	datac => \U2|LessThan1~8_combout\,
	datad => \U2|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|t[6]~16_combout\);

-- Location: LC_X7_Y9_N8
\U2|t[17]\ : maxv_lcell
-- Equation(s):
-- \U2|t\(17) = DFFEAS((\U2|forwreg~regout\ $ ((!\U2|t[13]~24\ & \U2|t[16]~20\) # (\U2|t[13]~24\ & \U2|t[16]~20COUT1_79\) $ (!\U2|t\(17)))), GLOBAL(\clk~combout\), VCC, , \U2|t[6]~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U2|forwreg~regout\,
	datad => \U2|t\(17),
	aclr => GND,
	ena => \U2|t[6]~16_combout\,
	cin => \U2|t[13]~24\,
	cin0 => \U2|t[16]~20\,
	cin1 => \U2|t[16]~20COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|t\(17));

-- Location: LC_X7_Y7_N0
\U1|LessThan3~42\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan3~42_cout0\ = CARRY((\U1|va\(0) & (!\U1|vireg\(0))))
-- \U1|LessThan3~42COUT1_54\ = CARRY((\U1|va\(0) & (!\U1|vireg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|va\(0),
	datab => \U1|vireg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan3~40\,
	cout0 => \U1|LessThan3~42_cout0\,
	cout1 => \U1|LessThan3~42COUT1_54\);

-- Location: LC_X7_Y7_N1
\U1|LessThan3~37\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan3~37_cout0\ = CARRY((\U1|vireg\(1) & ((!\U1|LessThan3~42_cout0\) # (!\U1|va\(1)))) # (!\U1|vireg\(1) & (!\U1|va\(1) & !\U1|LessThan3~42_cout0\)))
-- \U1|LessThan3~37COUT1_56\ = CARRY((\U1|vireg\(1) & ((!\U1|LessThan3~42COUT1_54\) # (!\U1|va\(1)))) # (!\U1|vireg\(1) & (!\U1|va\(1) & !\U1|LessThan3~42COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vireg\(1),
	datab => \U1|va\(1),
	cin0 => \U1|LessThan3~42_cout0\,
	cin1 => \U1|LessThan3~42COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan3~35\,
	cout0 => \U1|LessThan3~37_cout0\,
	cout1 => \U1|LessThan3~37COUT1_56\);

-- Location: LC_X7_Y7_N2
\U1|LessThan3~32\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan3~32_cout0\ = CARRY((\U1|va\(2) & ((!\U1|LessThan3~37_cout0\) # (!\U1|vireg\(2)))) # (!\U1|va\(2) & (!\U1|vireg\(2) & !\U1|LessThan3~37_cout0\)))
-- \U1|LessThan3~32COUT1_58\ = CARRY((\U1|va\(2) & ((!\U1|LessThan3~37COUT1_56\) # (!\U1|vireg\(2)))) # (!\U1|va\(2) & (!\U1|vireg\(2) & !\U1|LessThan3~37COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|va\(2),
	datab => \U1|vireg\(2),
	cin0 => \U1|LessThan3~37_cout0\,
	cin1 => \U1|LessThan3~37COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan3~30\,
	cout0 => \U1|LessThan3~32_cout0\,
	cout1 => \U1|LessThan3~32COUT1_58\);

-- Location: LC_X7_Y7_N3
\U1|LessThan3~27\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan3~27_cout0\ = CARRY((\U1|va\(3) & (\U1|vireg\(3) & !\U1|LessThan3~32_cout0\)) # (!\U1|va\(3) & ((\U1|vireg\(3)) # (!\U1|LessThan3~32_cout0\))))
-- \U1|LessThan3~27COUT1_60\ = CARRY((\U1|va\(3) & (\U1|vireg\(3) & !\U1|LessThan3~32COUT1_58\)) # (!\U1|va\(3) & ((\U1|vireg\(3)) # (!\U1|LessThan3~32COUT1_58\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|va\(3),
	datab => \U1|vireg\(3),
	cin0 => \U1|LessThan3~32_cout0\,
	cin1 => \U1|LessThan3~32COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan3~25\,
	cout0 => \U1|LessThan3~27_cout0\,
	cout1 => \U1|LessThan3~27COUT1_60\);

-- Location: LC_X7_Y7_N4
\U1|LessThan3~22\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan3~22_cout\ = CARRY((\U1|va\(4) & ((!\U1|LessThan3~27COUT1_60\) # (!\U1|vireg\(4)))) # (!\U1|va\(4) & (!\U1|vireg\(4) & !\U1|LessThan3~27COUT1_60\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|va\(4),
	datab => \U1|vireg\(4),
	cin0 => \U1|LessThan3~27_cout0\,
	cin1 => \U1|LessThan3~27COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan3~20\,
	cout => \U1|LessThan3~22_cout\);

-- Location: LC_X7_Y7_N5
\U1|LessThan3~17\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan3~17_cout0\ = CARRY((\U1|vireg\(5) & ((!\U1|LessThan3~22_cout\) # (!\U1|va\(5)))) # (!\U1|vireg\(5) & (!\U1|va\(5) & !\U1|LessThan3~22_cout\)))
-- \U1|LessThan3~17COUT1_62\ = CARRY((\U1|vireg\(5) & ((!\U1|LessThan3~22_cout\) # (!\U1|va\(5)))) # (!\U1|vireg\(5) & (!\U1|va\(5) & !\U1|LessThan3~22_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vireg\(5),
	datab => \U1|va\(5),
	cin => \U1|LessThan3~22_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan3~15\,
	cout0 => \U1|LessThan3~17_cout0\,
	cout1 => \U1|LessThan3~17COUT1_62\);

-- Location: LC_X7_Y7_N6
\U1|LessThan3~12\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan3~12_cout0\ = CARRY((\U1|va\(6) & ((!\U1|LessThan3~17_cout0\) # (!\U1|vireg\(6)))) # (!\U1|va\(6) & (!\U1|vireg\(6) & !\U1|LessThan3~17_cout0\)))
-- \U1|LessThan3~12COUT1_64\ = CARRY((\U1|va\(6) & ((!\U1|LessThan3~17COUT1_62\) # (!\U1|vireg\(6)))) # (!\U1|va\(6) & (!\U1|vireg\(6) & !\U1|LessThan3~17COUT1_62\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|va\(6),
	datab => \U1|vireg\(6),
	cin => \U1|LessThan3~22_cout\,
	cin0 => \U1|LessThan3~17_cout0\,
	cin1 => \U1|LessThan3~17COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan3~10\,
	cout0 => \U1|LessThan3~12_cout0\,
	cout1 => \U1|LessThan3~12COUT1_64\);

-- Location: LC_X7_Y7_N7
\U1|LessThan3~7\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan3~7_cout0\ = CARRY((\U1|vireg\(7) & ((!\U1|LessThan3~12_cout0\) # (!\U1|va\(7)))) # (!\U1|vireg\(7) & (!\U1|va\(7) & !\U1|LessThan3~12_cout0\)))
-- \U1|LessThan3~7COUT1_66\ = CARRY((\U1|vireg\(7) & ((!\U1|LessThan3~12COUT1_64\) # (!\U1|va\(7)))) # (!\U1|vireg\(7) & (!\U1|va\(7) & !\U1|LessThan3~12COUT1_64\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vireg\(7),
	datab => \U1|va\(7),
	cin => \U1|LessThan3~22_cout\,
	cin0 => \U1|LessThan3~12_cout0\,
	cin1 => \U1|LessThan3~12COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan3~5\,
	cout0 => \U1|LessThan3~7_cout0\,
	cout1 => \U1|LessThan3~7COUT1_66\);

-- Location: LC_X7_Y7_N8
\U1|LessThan3~0\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan3~0_combout\ = ((\U1|va\(8) & (!(!\U1|LessThan3~22_cout\ & \U1|LessThan3~7_cout0\) # (\U1|LessThan3~22_cout\ & \U1|LessThan3~7COUT1_66\) & \U1|vireg\(8))) # (!\U1|va\(8) & ((\U1|vireg\(8)) # (!(!\U1|LessThan3~22_cout\ & \U1|LessThan3~7_cout0\) 
-- # (\U1|LessThan3~22_cout\ & \U1|LessThan3~7COUT1_66\)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3f03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|va\(8),
	datad => \U1|vireg\(8),
	cin => \U1|LessThan3~22_cout\,
	cin0 => \U1|LessThan3~7_cout0\,
	cin1 => \U1|LessThan3~7COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan3~0_combout\);

-- Location: LC_X6_Y7_N8
\U1|Add2~0\ : maxv_lcell
-- Equation(s):
-- \U1|Add2~0_combout\ = (((!\U1|Add2~17\ & \U1|Add2~32\) # (\U1|Add2~17\ & \U1|Add2~32COUT1_66\) $ (!\U1|va\(8))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|va\(8),
	cin => \U1|Add2~17\,
	cin0 => \U1|Add2~32\,
	cin1 => \U1|Add2~32COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add2~0_combout\);

-- Location: LC_X4_Y8_N5
\U1|va~7\ : maxv_lcell
-- Equation(s):
-- \U1|va~7_combout\ = (\U1|LessThan3~0_combout\ & (((\U1|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan3~0_combout\,
	datac => \U1|Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|va~7_combout\);

-- Location: LC_X6_Y8_N7
\U1|Add1~0\ : maxv_lcell
-- Equation(s):
-- \U1|Add1~0_combout\ = (((!\U1|Add1~22\ & \U1|Add1~32\) # (\U1|Add1~22\ & \U1|Add1~32COUT1_58\) $ (!\U1|va\(8))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|va\(8),
	cin => \U1|Add1~22\,
	cin0 => \U1|Add1~32\,
	cin1 => \U1|Add1~32COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add1~0_combout\);

-- Location: LC_X4_Y8_N0
\U1|va~6\ : maxv_lcell
-- Equation(s):
-- \U1|va~6_combout\ = ((\U1|LessThan1~0_combout\ & (\U1|va\(8) $ (!\U1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|va\(8),
	datac => \U1|Add1~0_combout\,
	datad => \U1|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|va~6_combout\);

-- Location: LC_X4_Y8_N6
\U1|va~8\ : maxv_lcell
-- Equation(s):
-- \U1|va~8_combout\ = (\U1|LessThan0~7_combout\ & ((\U1|va\(8) & ((!\U1|va~6_combout\))) # (!\U1|va\(8) & (\U1|va~7_combout\)))) # (!\U1|LessThan0~7_combout\ & (\U1|va~7_combout\ $ (\U1|va~6_combout\ $ (\U1|va\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2d9a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|va~7_combout\,
	datab => \U1|LessThan0~7_combout\,
	datac => \U1|va~6_combout\,
	datad => \U1|va\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|va~8_combout\);

-- Location: LC_X4_Y8_N7
\U1|va~20\ : maxv_lcell
-- Equation(s):
-- \U1|va~20_combout\ = (\U1|va\(8) & (((\U1|Add1~0_combout\ & \U1|LessThan1~0_combout\)))) # (!\U1|va\(8) & (\U1|va~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e222",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|va~7_combout\,
	datab => \U1|va\(8),
	datac => \U1|Add1~0_combout\,
	datad => \U1|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|va~20_combout\);

-- Location: LC_X4_Y8_N9
\U1|va[8]\ : maxv_lcell
-- Equation(s):
-- \U1|va\(8) = DFFEAS((\U1|va~20_combout\ & (!\U1|LessThan5~5_combout\ & ((\U1|va[1]~5_combout\) # (!\U1|va~8_combout\)))) # (!\U1|va~20_combout\ & ((\U1|va~8_combout\) # ((\U1|va[1]~5_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f1a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U1|va~8_combout\,
	datab => \U1|LessThan5~5_combout\,
	datac => \U1|va~20_combout\,
	datad => \U1|va[1]~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|va\(8));

-- Location: LC_X7_Y9_N9
\U2|forwreg\ : maxv_lcell
-- Equation(s):
-- \U2|forwreg~regout\ = DFFEAS((((!\U1|va\(8)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \U1|va\(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2|forwreg~regout\);

-- Location: LC_X2_Y6_N6
\U6|Add0~15\ : maxv_lcell
-- Equation(s):
-- \U6|Add0~15_combout\ = ((!\U6|timechunk\(0)))
-- \U6|Add0~17\ = CARRY(((\U6|timechunk\(0))))
-- \U6|Add0~17COUT1_25\ = CARRY(((\U6|timechunk\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|timechunk\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|Add0~15_combout\,
	cout0 => \U6|Add0~17\,
	cout1 => \U6|Add0~17COUT1_25\);

-- Location: LC_X2_Y6_N0
\U6|timechunk[0]\ : maxv_lcell
-- Equation(s):
-- \U6|timechunk\(0) = DFFEAS((((\U6|Add0~15_combout\ & !\U6|Add0~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \U6|Add0~15_combout\,
	datad => \U6|Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|timechunk\(0));

-- Location: LC_X2_Y6_N7
\U6|Add0~10\ : maxv_lcell
-- Equation(s):
-- \U6|Add0~10_combout\ = (\U6|timechunk\(1) $ ((\U6|Add0~17\)))
-- \U6|Add0~12\ = CARRY(((!\U6|Add0~17\) # (!\U6|timechunk\(1))))
-- \U6|Add0~12COUT1_27\ = CARRY(((!\U6|Add0~17COUT1_25\) # (!\U6|timechunk\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|timechunk\(1),
	cin0 => \U6|Add0~17\,
	cin1 => \U6|Add0~17COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|Add0~10_combout\,
	cout0 => \U6|Add0~12\,
	cout1 => \U6|Add0~12COUT1_27\);

-- Location: LC_X2_Y6_N2
\U6|timechunk[1]\ : maxv_lcell
-- Equation(s):
-- \U6|timechunk\(1) = DFFEAS((((\U6|Add0~10_combout\ & !\U6|Add0~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \U6|Add0~10_combout\,
	datad => \U6|Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|timechunk\(1));

-- Location: LC_X2_Y6_N8
\U6|Add0~5\ : maxv_lcell
-- Equation(s):
-- \U6|Add0~5_combout\ = (\U6|timechunk\(2) $ ((!\U6|Add0~12\)))
-- \U6|Add0~7\ = CARRY(((\U6|timechunk\(2) & !\U6|Add0~12\)))
-- \U6|Add0~7COUT1_29\ = CARRY(((\U6|timechunk\(2) & !\U6|Add0~12COUT1_27\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|timechunk\(2),
	cin0 => \U6|Add0~12\,
	cin1 => \U6|Add0~12COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|Add0~5_combout\,
	cout0 => \U6|Add0~7\,
	cout1 => \U6|Add0~7COUT1_29\);

-- Location: LC_X2_Y6_N1
\U6|timechunk[2]\ : maxv_lcell
-- Equation(s):
-- \U6|timechunk\(2) = DFFEAS(((!\U6|Add0~0_combout\ & ((\U6|Add0~5_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U6|Add0~0_combout\,
	datad => \U6|Add0~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|timechunk\(2));

-- Location: LC_X2_Y6_N9
\U6|Add0~0\ : maxv_lcell
-- Equation(s):
-- \U6|Add0~0_combout\ = (((\U6|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \U6|Add0~7\,
	cin1 => \U6|Add0~7COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|Add0~0_combout\);

-- Location: LC_X2_Y6_N5
\U6|COUNTPWM[0]\ : maxv_lcell
-- Equation(s):
-- \U6|COUNTPWM\(0) = DFFEAS(((\U6|COUNTPWM\(0) $ (\U6|Add0~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \U6|COUNTPWM\(0),
	datad => \U6|Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|COUNTPWM\(0));

-- Location: LC_X3_Y6_N1
\U6|COUNTPWM[1]\ : maxv_lcell
-- Equation(s):
-- \U6|COUNTPWM\(1) = DFFEAS(\U6|COUNTPWM\(0) $ ((\U6|COUNTPWM\(1))), GLOBAL(\clk~combout\), VCC, , \U6|Add0~0_combout\, , , , )
-- \U6|COUNTPWM[1]~13\ = CARRY((\U6|COUNTPWM\(0) & (\U6|COUNTPWM\(1))))
-- \U6|COUNTPWM[1]~13COUT1_22\ = CARRY((\U6|COUNTPWM\(0) & (\U6|COUNTPWM\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U6|COUNTPWM\(0),
	datab => \U6|COUNTPWM\(1),
	aclr => GND,
	ena => \U6|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|COUNTPWM\(1),
	cout0 => \U6|COUNTPWM[1]~13\,
	cout1 => \U6|COUNTPWM[1]~13COUT1_22\);

-- Location: LC_X3_Y6_N2
\U6|COUNTPWM[2]\ : maxv_lcell
-- Equation(s):
-- \U6|COUNTPWM\(2) = DFFEAS((\U6|COUNTPWM\(2) $ ((\U6|COUNTPWM[1]~13\))), GLOBAL(\clk~combout\), VCC, , \U6|Add0~0_combout\, , , , )
-- \U6|COUNTPWM[2]~11\ = CARRY(((!\U6|COUNTPWM[1]~13\) # (!\U6|COUNTPWM\(2))))
-- \U6|COUNTPWM[2]~11COUT1_24\ = CARRY(((!\U6|COUNTPWM[1]~13COUT1_22\) # (!\U6|COUNTPWM\(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U6|COUNTPWM\(2),
	aclr => GND,
	ena => \U6|Add0~0_combout\,
	cin0 => \U6|COUNTPWM[1]~13\,
	cin1 => \U6|COUNTPWM[1]~13COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|COUNTPWM\(2),
	cout0 => \U6|COUNTPWM[2]~11\,
	cout1 => \U6|COUNTPWM[2]~11COUT1_24\);

-- Location: LC_X3_Y6_N3
\U6|COUNTPWM[3]\ : maxv_lcell
-- Equation(s):
-- \U6|COUNTPWM\(3) = DFFEAS(\U6|COUNTPWM\(3) $ ((((!\U6|COUNTPWM[2]~11\)))), GLOBAL(\clk~combout\), VCC, , \U6|Add0~0_combout\, , , , )
-- \U6|COUNTPWM[3]~9\ = CARRY((\U6|COUNTPWM\(3) & ((!\U6|COUNTPWM[2]~11\))))
-- \U6|COUNTPWM[3]~9COUT1_26\ = CARRY((\U6|COUNTPWM\(3) & ((!\U6|COUNTPWM[2]~11COUT1_24\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U6|COUNTPWM\(3),
	aclr => GND,
	ena => \U6|Add0~0_combout\,
	cin0 => \U6|COUNTPWM[2]~11\,
	cin1 => \U6|COUNTPWM[2]~11COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|COUNTPWM\(3),
	cout0 => \U6|COUNTPWM[3]~9\,
	cout1 => \U6|COUNTPWM[3]~9COUT1_26\);

-- Location: LC_X3_Y6_N4
\U6|COUNTPWM[4]\ : maxv_lcell
-- Equation(s):
-- \U6|COUNTPWM\(4) = DFFEAS(\U6|COUNTPWM\(4) $ ((((\U6|COUNTPWM[3]~9\)))), GLOBAL(\clk~combout\), VCC, , \U6|Add0~0_combout\, , , , )
-- \U6|COUNTPWM[4]~7\ = CARRY(((!\U6|COUNTPWM[3]~9COUT1_26\)) # (!\U6|COUNTPWM\(4)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U6|COUNTPWM\(4),
	aclr => GND,
	ena => \U6|Add0~0_combout\,
	cin0 => \U6|COUNTPWM[3]~9\,
	cin1 => \U6|COUNTPWM[3]~9COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|COUNTPWM\(4),
	cout => \U6|COUNTPWM[4]~7\);

-- Location: LC_X3_Y6_N5
\U6|COUNTPWM[5]\ : maxv_lcell
-- Equation(s):
-- \U6|COUNTPWM\(5) = DFFEAS(\U6|COUNTPWM\(5) $ ((((!\U6|COUNTPWM[4]~7\)))), GLOBAL(\clk~combout\), VCC, , \U6|Add0~0_combout\, , , , )
-- \U6|COUNTPWM[5]~5\ = CARRY((\U6|COUNTPWM\(5) & ((!\U6|COUNTPWM[4]~7\))))
-- \U6|COUNTPWM[5]~5COUT1_28\ = CARRY((\U6|COUNTPWM\(5) & ((!\U6|COUNTPWM[4]~7\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U6|COUNTPWM\(5),
	aclr => GND,
	ena => \U6|Add0~0_combout\,
	cin => \U6|COUNTPWM[4]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|COUNTPWM\(5),
	cout0 => \U6|COUNTPWM[5]~5\,
	cout1 => \U6|COUNTPWM[5]~5COUT1_28\);

-- Location: LC_X3_Y6_N6
\U6|COUNTPWM[6]\ : maxv_lcell
-- Equation(s):
-- \U6|COUNTPWM\(6) = DFFEAS(\U6|COUNTPWM\(6) $ (((((!\U6|COUNTPWM[4]~7\ & \U6|COUNTPWM[5]~5\) # (\U6|COUNTPWM[4]~7\ & \U6|COUNTPWM[5]~5COUT1_28\))))), GLOBAL(\clk~combout\), VCC, , \U6|Add0~0_combout\, , , , )
-- \U6|COUNTPWM[6]~3\ = CARRY(((!\U6|COUNTPWM[5]~5\)) # (!\U6|COUNTPWM\(6)))
-- \U6|COUNTPWM[6]~3COUT1_30\ = CARRY(((!\U6|COUNTPWM[5]~5COUT1_28\)) # (!\U6|COUNTPWM\(6)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \U6|COUNTPWM\(6),
	aclr => GND,
	ena => \U6|Add0~0_combout\,
	cin => \U6|COUNTPWM[4]~7\,
	cin0 => \U6|COUNTPWM[5]~5\,
	cin1 => \U6|COUNTPWM[5]~5COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|COUNTPWM\(6),
	cout0 => \U6|COUNTPWM[6]~3\,
	cout1 => \U6|COUNTPWM[6]~3COUT1_30\);

-- Location: LC_X3_Y6_N7
\U6|COUNTPWM[7]\ : maxv_lcell
-- Equation(s):
-- \U6|COUNTPWM\(7) = DFFEAS((\U6|COUNTPWM\(7) $ ((!(!\U6|COUNTPWM[4]~7\ & \U6|COUNTPWM[6]~3\) # (\U6|COUNTPWM[4]~7\ & \U6|COUNTPWM[6]~3COUT1_30\)))), GLOBAL(\clk~combout\), VCC, , \U6|Add0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3c3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \U6|COUNTPWM\(7),
	aclr => GND,
	ena => \U6|Add0~0_combout\,
	cin => \U6|COUNTPWM[4]~7\,
	cin0 => \U6|COUNTPWM[6]~3\,
	cin1 => \U6|COUNTPWM[6]~3COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|COUNTPWM\(7));

-- Location: LC_X6_Y5_N8
\U3|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \U3|Mux3~0_combout\ = (\U2|t\(4) & (((\U2|t\(5) & !\U2|t\(6))))) # (!\U2|t\(4) & (((!\U2|t\(5) & \U2|t\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "05a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(4),
	datac => \U2|t\(5),
	datad => \U2|t\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux3~0_combout\);

-- Location: LC_X6_Y4_N0
\U3|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \U3|Mux0~0_combout\ = (\U2|t\(1) & (((\U2|t\(6) & \U2|t\(2))))) # (!\U2|t\(1) & (((!\U2|t\(6) & !\U2|t\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(1),
	datac => \U2|t\(6),
	datad => \U2|t\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux0~0_combout\);

-- Location: LC_X5_Y4_N4
\U2|COUNTsin1[0]~0\ : maxv_lcell
-- Equation(s):
-- \U2|COUNTsin1[0]~0_combout\ = ((\U2|t\(0) $ (\U2|t\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|t\(0),
	datad => \U2|t\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|COUNTsin1[0]~0_combout\);

-- Location: LC_X6_Y5_N2
\U2|COUNTsin1[3]~1\ : maxv_lcell
-- Equation(s):
-- \U2|COUNTsin1[3]~1_combout\ = (\U2|t\(3) $ (((\U2|t\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|t\(3),
	datad => \U2|t\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|COUNTsin1[3]~1_combout\);

-- Location: LC_X6_Y6_N1
\U3|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \U3|Mux0~1_combout\ = ((\U3|Mux0~0_combout\ & (!\U2|COUNTsin1[0]~0_combout\ & !\U2|COUNTsin1[3]~1_combout\))) # (!\U3|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "555d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux3~0_combout\,
	datab => \U3|Mux0~0_combout\,
	datac => \U2|COUNTsin1[0]~0_combout\,
	datad => \U2|COUNTsin1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux0~1_combout\);

-- Location: LC_X5_Y4_N2
\U2|COUNTsin1[1]~2\ : maxv_lcell
-- Equation(s):
-- \U2|COUNTsin1[1]~2_combout\ = \U2|t\(1) $ ((((\U2|t\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(1),
	datad => \U2|t\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|COUNTsin1[1]~2_combout\);

-- Location: LC_X6_Y5_N6
\U2|COUNTsin1[2]~3\ : maxv_lcell
-- Equation(s):
-- \U2|COUNTsin1[2]~3_combout\ = (\U2|t\(2) $ (((\U2|t\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|t\(2),
	datad => \U2|t\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|COUNTsin1[2]~3_combout\);

-- Location: LC_X6_Y6_N0
\U3|Mux3~4\ : maxv_lcell
-- Equation(s):
-- \U3|Mux3~4_combout\ = (\U2|COUNTsin1[1]~2_combout\ & ((\U2|COUNTsin1[2]~3_combout\ $ (\U2|COUNTsin1[3]~1_combout\)) # (!\U2|COUNTsin1[0]~0_combout\))) # (!\U2|COUNTsin1[1]~2_combout\ & (\U2|COUNTsin1[0]~0_combout\ & (!\U2|COUNTsin1[2]~3_combout\ & 
-- !\U2|COUNTsin1[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aa6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[1]~2_combout\,
	datab => \U2|COUNTsin1[0]~0_combout\,
	datac => \U2|COUNTsin1[2]~3_combout\,
	datad => \U2|COUNTsin1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux3~4_combout\);

-- Location: LC_X6_Y6_N5
\U3|Mux3~2\ : maxv_lcell
-- Equation(s):
-- \U3|Mux3~2_combout\ = (\U2|COUNTsin1[1]~2_combout\ & (((\U2|COUNTsin1[2]~3_combout\) # (!\U2|COUNTsin1[3]~1_combout\)))) # (!\U2|COUNTsin1[1]~2_combout\ & (\U2|COUNTsin1[3]~1_combout\ $ (((\U2|COUNTsin1[0]~0_combout\) # (\U2|COUNTsin1[2]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a1fe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[1]~2_combout\,
	datab => \U2|COUNTsin1[0]~0_combout\,
	datac => \U2|COUNTsin1[2]~3_combout\,
	datad => \U2|COUNTsin1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux3~2_combout\);

-- Location: LC_X6_Y5_N9
\U2|COUNTsin1[5]~5\ : maxv_lcell
-- Equation(s):
-- \U2|COUNTsin1[5]~5_combout\ = ((\U2|t\(5) $ (\U2|t\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|t\(5),
	datad => \U2|t\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|COUNTsin1[5]~5_combout\);

-- Location: LC_X5_Y4_N9
\U2|COUNTsin1[4]~4\ : maxv_lcell
-- Equation(s):
-- \U2|COUNTsin1[4]~4_combout\ = ((\U2|t\(4) $ (\U2|t\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|t\(4),
	datad => \U2|t\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|COUNTsin1[4]~4_combout\);

-- Location: LC_X6_Y6_N6
\U3|Mux3~1\ : maxv_lcell
-- Equation(s):
-- \U3|Mux3~1_combout\ = \U2|COUNTsin1[2]~3_combout\ $ (((\U2|COUNTsin1[1]~2_combout\ & ((\U2|COUNTsin1[0]~0_combout\) # (\U2|COUNTsin1[3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a78",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[1]~2_combout\,
	datab => \U2|COUNTsin1[0]~0_combout\,
	datac => \U2|COUNTsin1[2]~3_combout\,
	datad => \U2|COUNTsin1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux3~1_combout\);

-- Location: LC_X6_Y6_N7
\U3|Mux3~3\ : maxv_lcell
-- Equation(s):
-- \U3|Mux3~3_combout\ = (\U2|COUNTsin1[5]~5_combout\ & (((!\U2|COUNTsin1[4]~4_combout\ & \U3|Mux3~1_combout\)))) # (!\U2|COUNTsin1[5]~5_combout\ & (((!\U2|COUNTsin1[4]~4_combout\)) # (!\U3|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1f13",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux3~2_combout\,
	datab => \U2|COUNTsin1[5]~5_combout\,
	datac => \U2|COUNTsin1[4]~4_combout\,
	datad => \U3|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux3~3_combout\);

-- Location: LC_X6_Y6_N8
\U3|Mux3~5\ : maxv_lcell
-- Equation(s):
-- \U3|Mux3~5_combout\ = ((\U3|Mux3~3_combout\) # ((\U3|Mux3~4_combout\ & \U3|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|Mux3~4_combout\,
	datac => \U3|Mux3~0_combout\,
	datad => \U3|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux3~5_combout\);

-- Location: LC_X5_Y7_N3
\U3|Mux4~0\ : maxv_lcell
-- Equation(s):
-- \U3|Mux4~0_combout\ = (\U2|COUNTsin1[4]~4_combout\ & ((\U2|COUNTsin1[0]~0_combout\) # ((!\U2|COUNTsin1[5]~5_combout\ & \U2|COUNTsin1[3]~1_combout\)))) # (!\U2|COUNTsin1[4]~4_combout\ & ((\U2|COUNTsin1[3]~1_combout\) # ((\U2|COUNTsin1[0]~0_combout\ & 
-- \U2|COUNTsin1[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[4]~4_combout\,
	datab => \U2|COUNTsin1[0]~0_combout\,
	datac => \U2|COUNTsin1[5]~5_combout\,
	datad => \U2|COUNTsin1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux4~0_combout\);

-- Location: LC_X5_Y7_N6
\U3|Mux4~1\ : maxv_lcell
-- Equation(s):
-- \U3|Mux4~1_combout\ = (\U2|COUNTsin1[0]~0_combout\ & (\U2|COUNTsin1[4]~4_combout\ & ((\U2|COUNTsin1[3]~1_combout\)))) # (!\U2|COUNTsin1[0]~0_combout\ & (((\U2|COUNTsin1[5]~5_combout\ & !\U2|COUNTsin1[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8830",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[4]~4_combout\,
	datab => \U2|COUNTsin1[0]~0_combout\,
	datac => \U2|COUNTsin1[5]~5_combout\,
	datad => \U2|COUNTsin1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux4~1_combout\);

-- Location: LC_X5_Y7_N8
\U3|Mux4~2\ : maxv_lcell
-- Equation(s):
-- \U3|Mux4~2_combout\ = (\U2|COUNTsin1[4]~4_combout\ & (\U2|COUNTsin1[0]~0_combout\ $ (((!\U2|COUNTsin1[3]~1_combout\) # (!\U2|COUNTsin1[5]~5_combout\))))) # (!\U2|COUNTsin1[4]~4_combout\ & (\U2|COUNTsin1[5]~5_combout\ & ((\U2|COUNTsin1[0]~0_combout\) # 
-- (!\U2|COUNTsin1[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c272",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[4]~4_combout\,
	datab => \U2|COUNTsin1[0]~0_combout\,
	datac => \U2|COUNTsin1[5]~5_combout\,
	datad => \U2|COUNTsin1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux4~2_combout\);

-- Location: LC_X5_Y7_N9
\U3|Mux4~3\ : maxv_lcell
-- Equation(s):
-- \U3|Mux4~3_combout\ = (\U2|COUNTsin1[1]~2_combout\ & (((\U2|COUNTsin1[2]~3_combout\)) # (!\U3|Mux4~1_combout\))) # (!\U2|COUNTsin1[1]~2_combout\ & (((!\U2|COUNTsin1[2]~3_combout\ & !\U3|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c4c7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux4~1_combout\,
	datab => \U2|COUNTsin1[1]~2_combout\,
	datac => \U2|COUNTsin1[2]~3_combout\,
	datad => \U3|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux4~3_combout\);

-- Location: LC_X5_Y7_N4
\U3|Mux4~4\ : maxv_lcell
-- Equation(s):
-- \U3|Mux4~4_combout\ = (\U2|COUNTsin1[4]~4_combout\ & (!\U2|COUNTsin1[3]~1_combout\ & ((\U2|COUNTsin1[0]~0_combout\) # (!\U2|COUNTsin1[5]~5_combout\)))) # (!\U2|COUNTsin1[4]~4_combout\ & (\U2|COUNTsin1[3]~1_combout\ $ (((!\U2|COUNTsin1[0]~0_combout\ & 
-- \U2|COUNTsin1[5]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "459a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[4]~4_combout\,
	datab => \U2|COUNTsin1[0]~0_combout\,
	datac => \U2|COUNTsin1[5]~5_combout\,
	datad => \U2|COUNTsin1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux4~4_combout\);

-- Location: LC_X5_Y7_N5
\U3|Mux4~5\ : maxv_lcell
-- Equation(s):
-- \U3|Mux4~5_combout\ = (\U3|Mux4~3_combout\ & (((!\U3|Mux4~4_combout\) # (!\U2|COUNTsin1[2]~3_combout\)))) # (!\U3|Mux4~3_combout\ & (!\U3|Mux4~0_combout\ & (\U2|COUNTsin1[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1cdc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux4~0_combout\,
	datab => \U3|Mux4~3_combout\,
	datac => \U2|COUNTsin1[2]~3_combout\,
	datad => \U3|Mux4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux4~5_combout\);

-- Location: LC_X5_Y5_N8
\U3|Mux5~1\ : maxv_lcell
-- Equation(s):
-- \U3|Mux5~1_combout\ = (\U2|COUNTsin1[2]~3_combout\ & ((\U2|COUNTsin1[5]~5_combout\ & (\U2|COUNTsin1[1]~2_combout\ $ (\U2|COUNTsin1[0]~0_combout\))) # (!\U2|COUNTsin1[5]~5_combout\ & (\U2|COUNTsin1[1]~2_combout\ & \U2|COUNTsin1[0]~0_combout\)))) # 
-- (!\U2|COUNTsin1[2]~3_combout\ & ((\U2|COUNTsin1[0]~0_combout\) # (\U2|COUNTsin1[5]~5_combout\ $ (\U2|COUNTsin1[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7b92",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[5]~5_combout\,
	datab => \U2|COUNTsin1[2]~3_combout\,
	datac => \U2|COUNTsin1[1]~2_combout\,
	datad => \U2|COUNTsin1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux5~1_combout\);

-- Location: LC_X5_Y5_N9
\U3|Mux5~2\ : maxv_lcell
-- Equation(s):
-- \U3|Mux5~2_combout\ = (\U2|COUNTsin1[5]~5_combout\ & (!\U2|COUNTsin1[0]~0_combout\ & ((\U2|COUNTsin1[2]~3_combout\) # (\U2|COUNTsin1[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[5]~5_combout\,
	datab => \U2|COUNTsin1[2]~3_combout\,
	datac => \U2|COUNTsin1[1]~2_combout\,
	datad => \U2|COUNTsin1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux5~2_combout\);

-- Location: LC_X5_Y5_N1
\U3|Mux5~3\ : maxv_lcell
-- Equation(s):
-- \U3|Mux5~3_combout\ = (\U2|COUNTsin1[4]~4_combout\ & (((\U2|COUNTsin1[3]~1_combout\)))) # (!\U2|COUNTsin1[4]~4_combout\ & ((\U2|COUNTsin1[3]~1_combout\ & (!\U3|Mux5~1_combout\)) # (!\U2|COUNTsin1[3]~1_combout\ & ((!\U3|Mux5~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0d3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux5~1_combout\,
	datab => \U2|COUNTsin1[4]~4_combout\,
	datac => \U2|COUNTsin1[3]~1_combout\,
	datad => \U3|Mux5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux5~3_combout\);

-- Location: LC_X5_Y4_N5
\U3|Mux5~0\ : maxv_lcell
-- Equation(s):
-- \U3|Mux5~0_combout\ = \U2|t\(1) $ (((\U2|t\(5) & ((!\U2|t\(6)) # (!\U2|t\(0)))) # (!\U2|t\(5) & (!\U2|t\(0) & !\U2|t\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a665",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(1),
	datab => \U2|t\(5),
	datac => \U2|t\(0),
	datad => \U2|t\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux5~0_combout\);

-- Location: LC_X5_Y5_N6
\U3|Mux5~4\ : maxv_lcell
-- Equation(s):
-- \U3|Mux5~4_combout\ = (\U2|COUNTsin1[5]~5_combout\ & (((\U2|COUNTsin1[0]~0_combout\) # (!\U2|COUNTsin1[1]~2_combout\)) # (!\U2|COUNTsin1[2]~3_combout\))) # (!\U2|COUNTsin1[5]~5_combout\ & (\U2|COUNTsin1[2]~3_combout\ $ (((\U2|COUNTsin1[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb6e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[5]~5_combout\,
	datab => \U2|COUNTsin1[2]~3_combout\,
	datac => \U2|COUNTsin1[1]~2_combout\,
	datad => \U2|COUNTsin1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux5~4_combout\);

-- Location: LC_X5_Y4_N8
\U3|Mux5~5\ : maxv_lcell
-- Equation(s):
-- \U3|Mux5~5_combout\ = (\U2|COUNTsin1[4]~4_combout\ & ((\U3|Mux5~3_combout\ & ((\U3|Mux5~4_combout\))) # (!\U3|Mux5~3_combout\ & (!\U3|Mux5~0_combout\)))) # (!\U2|COUNTsin1[4]~4_combout\ & (\U3|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce46",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[4]~4_combout\,
	datab => \U3|Mux5~3_combout\,
	datac => \U3|Mux5~0_combout\,
	datad => \U3|Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux5~5_combout\);

-- Location: LC_X4_Y7_N8
\U3|Mux6~4\ : maxv_lcell
-- Equation(s):
-- \U3|Mux6~4_combout\ = (\U2|COUNTsin1[1]~2_combout\ & ((\U2|COUNTsin1[4]~4_combout\ & ((\U2|COUNTsin1[5]~5_combout\))) # (!\U2|COUNTsin1[4]~4_combout\ & (!\U2|COUNTsin1[3]~1_combout\)))) # (!\U2|COUNTsin1[1]~2_combout\ & ((\U2|COUNTsin1[4]~4_combout\ & 
-- (\U2|COUNTsin1[3]~1_combout\)) # (!\U2|COUNTsin1[4]~4_combout\ & ((\U2|COUNTsin1[5]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e742",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[1]~2_combout\,
	datab => \U2|COUNTsin1[3]~1_combout\,
	datac => \U2|COUNTsin1[4]~4_combout\,
	datad => \U2|COUNTsin1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux6~4_combout\);

-- Location: LC_X3_Y7_N1
\U3|Mux6~1\ : maxv_lcell
-- Equation(s):
-- \U3|Mux6~1_combout\ = (\U2|COUNTsin1[3]~1_combout\ & (!\U2|COUNTsin1[5]~5_combout\ & (\U2|COUNTsin1[1]~2_combout\ $ (\U2|COUNTsin1[4]~4_combout\)))) # (!\U2|COUNTsin1[3]~1_combout\ & (((!\U2|COUNTsin1[4]~4_combout\ & \U2|COUNTsin1[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0528",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[3]~1_combout\,
	datab => \U2|COUNTsin1[1]~2_combout\,
	datac => \U2|COUNTsin1[4]~4_combout\,
	datad => \U2|COUNTsin1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux6~1_combout\);

-- Location: LC_X3_Y7_N4
\U3|Mux6~2\ : maxv_lcell
-- Equation(s):
-- \U3|Mux6~2_combout\ = (\U2|COUNTsin1[3]~1_combout\ & (!\U2|COUNTsin1[1]~2_combout\ & ((!\U2|COUNTsin1[5]~5_combout\) # (!\U2|COUNTsin1[4]~4_combout\)))) # (!\U2|COUNTsin1[3]~1_combout\ & ((\U2|COUNTsin1[4]~4_combout\) # ((\U2|COUNTsin1[1]~2_combout\ & 
-- \U2|COUNTsin1[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5672",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[3]~1_combout\,
	datab => \U2|COUNTsin1[1]~2_combout\,
	datac => \U2|COUNTsin1[4]~4_combout\,
	datad => \U2|COUNTsin1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux6~2_combout\);

-- Location: LC_X3_Y7_N2
\U3|Mux6~3\ : maxv_lcell
-- Equation(s):
-- \U3|Mux6~3_combout\ = (\U2|COUNTsin1[0]~0_combout\ & (((\U2|COUNTsin1[2]~3_combout\)) # (!\U3|Mux6~1_combout\))) # (!\U2|COUNTsin1[0]~0_combout\ & (((!\U3|Mux6~2_combout\ & !\U2|COUNTsin1[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa27",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[0]~0_combout\,
	datab => \U3|Mux6~1_combout\,
	datac => \U3|Mux6~2_combout\,
	datad => \U2|COUNTsin1[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux6~3_combout\);

-- Location: LC_X4_Y7_N6
\U3|Mux6~0\ : maxv_lcell
-- Equation(s):
-- \U3|Mux6~0_combout\ = (\U2|COUNTsin1[3]~1_combout\ & (\U2|COUNTsin1[1]~2_combout\ $ (\U2|COUNTsin1[4]~4_combout\ $ (\U2|COUNTsin1[5]~5_combout\)))) # (!\U2|COUNTsin1[3]~1_combout\ & ((\U2|COUNTsin1[1]~2_combout\) # ((\U2|COUNTsin1[4]~4_combout\) # 
-- (\U2|COUNTsin1[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b77a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[1]~2_combout\,
	datab => \U2|COUNTsin1[3]~1_combout\,
	datac => \U2|COUNTsin1[4]~4_combout\,
	datad => \U2|COUNTsin1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux6~0_combout\);

-- Location: LC_X4_Y7_N5
\U3|Mux6~5\ : maxv_lcell
-- Equation(s):
-- \U3|Mux6~5_combout\ = (\U3|Mux6~3_combout\ & (((!\U2|COUNTsin1[2]~3_combout\)) # (!\U3|Mux6~4_combout\))) # (!\U3|Mux6~3_combout\ & (((!\U3|Mux6~0_combout\ & \U2|COUNTsin1[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "47cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux6~4_combout\,
	datab => \U3|Mux6~3_combout\,
	datac => \U3|Mux6~0_combout\,
	datad => \U2|COUNTsin1[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux6~5_combout\);

-- Location: LC_X5_Y5_N3
\U3|Mux7~0\ : maxv_lcell
-- Equation(s):
-- \U3|Mux7~0_combout\ = (\U2|COUNTsin1[3]~1_combout\ & (\U2|COUNTsin1[0]~0_combout\ $ (((\U2|COUNTsin1[5]~5_combout\) # (!\U2|COUNTsin1[1]~2_combout\))))) # (!\U2|COUNTsin1[3]~1_combout\ & (!\U2|COUNTsin1[0]~0_combout\ & (\U2|COUNTsin1[1]~2_combout\ & 
-- !\U2|COUNTsin1[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2292",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[3]~1_combout\,
	datab => \U2|COUNTsin1[0]~0_combout\,
	datac => \U2|COUNTsin1[1]~2_combout\,
	datad => \U2|COUNTsin1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux7~0_combout\);

-- Location: LC_X5_Y5_N5
\U3|Mux7~2\ : maxv_lcell
-- Equation(s):
-- \U3|Mux7~2_combout\ = (\U2|COUNTsin1[0]~0_combout\ & ((\U2|COUNTsin1[3]~1_combout\ & (\U2|COUNTsin1[1]~2_combout\)) # (!\U2|COUNTsin1[3]~1_combout\ & ((\U2|COUNTsin1[5]~5_combout\))))) # (!\U2|COUNTsin1[0]~0_combout\ & (\U2|COUNTsin1[3]~1_combout\ $ 
-- (((\U2|COUNTsin1[1]~2_combout\ & \U2|COUNTsin1[5]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d6a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[3]~1_combout\,
	datab => \U2|COUNTsin1[0]~0_combout\,
	datac => \U2|COUNTsin1[1]~2_combout\,
	datad => \U2|COUNTsin1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux7~2_combout\);

-- Location: LC_X5_Y5_N2
\U3|Mux7~1\ : maxv_lcell
-- Equation(s):
-- \U3|Mux7~1_combout\ = (!\U2|COUNTsin1[0]~0_combout\ & ((\U2|COUNTsin1[5]~5_combout\ & ((!\U2|COUNTsin1[1]~2_combout\))) # (!\U2|COUNTsin1[5]~5_combout\ & (\U2|COUNTsin1[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0322",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[3]~1_combout\,
	datab => \U2|COUNTsin1[0]~0_combout\,
	datac => \U2|COUNTsin1[1]~2_combout\,
	datad => \U2|COUNTsin1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux7~1_combout\);

-- Location: LC_X5_Y5_N7
\U3|Mux7~3\ : maxv_lcell
-- Equation(s):
-- \U3|Mux7~3_combout\ = (\U2|COUNTsin1[4]~4_combout\ & (((\U2|COUNTsin1[2]~3_combout\) # (!\U3|Mux7~1_combout\)))) # (!\U2|COUNTsin1[4]~4_combout\ & (!\U3|Mux7~2_combout\ & ((!\U2|COUNTsin1[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f035",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux7~2_combout\,
	datab => \U3|Mux7~1_combout\,
	datac => \U2|COUNTsin1[4]~4_combout\,
	datad => \U2|COUNTsin1[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux7~3_combout\);

-- Location: LC_X5_Y5_N4
\U3|Mux7~4\ : maxv_lcell
-- Equation(s):
-- \U3|Mux7~4_combout\ = (\U2|COUNTsin1[0]~0_combout\ & (\U2|COUNTsin1[5]~5_combout\ $ (((!\U2|COUNTsin1[3]~1_combout\ & \U2|COUNTsin1[1]~2_combout\))))) # (!\U2|COUNTsin1[0]~0_combout\ & (\U2|COUNTsin1[3]~1_combout\ $ (((\U2|COUNTsin1[1]~2_combout\ & 
-- \U2|COUNTsin1[5]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9e62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[3]~1_combout\,
	datab => \U2|COUNTsin1[0]~0_combout\,
	datac => \U2|COUNTsin1[1]~2_combout\,
	datad => \U2|COUNTsin1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux7~4_combout\);

-- Location: LC_X5_Y5_N0
\U3|Mux7~5\ : maxv_lcell
-- Equation(s):
-- \U3|Mux7~5_combout\ = (\U3|Mux7~3_combout\ & (((!\U2|COUNTsin1[2]~3_combout\) # (!\U3|Mux7~4_combout\)))) # (!\U3|Mux7~3_combout\ & (\U3|Mux7~0_combout\ & ((\U2|COUNTsin1[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2ecc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux7~0_combout\,
	datab => \U3|Mux7~3_combout\,
	datac => \U3|Mux7~4_combout\,
	datad => \U2|COUNTsin1[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux7~5_combout\);

-- Location: LC_X5_Y6_N0
\U6|LessThan1~37\ : maxv_lcell
-- Equation(s):
-- \U6|LessThan1~37_cout0\ = CARRY((\U6|COUNTPWM\(0) & (!\U3|Mux7~5_combout\)))
-- \U6|LessThan1~37COUT1_48\ = CARRY((\U6|COUNTPWM\(0) & (!\U3|Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|COUNTPWM\(0),
	datab => \U3|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|LessThan1~35\,
	cout0 => \U6|LessThan1~37_cout0\,
	cout1 => \U6|LessThan1~37COUT1_48\);

-- Location: LC_X5_Y6_N1
\U6|LessThan1~32\ : maxv_lcell
-- Equation(s):
-- \U6|LessThan1~32_cout0\ = CARRY((\U3|Mux6~5_combout\ & ((!\U6|LessThan1~37_cout0\) # (!\U6|COUNTPWM\(1)))) # (!\U3|Mux6~5_combout\ & (!\U6|COUNTPWM\(1) & !\U6|LessThan1~37_cout0\)))
-- \U6|LessThan1~32COUT1_50\ = CARRY((\U3|Mux6~5_combout\ & ((!\U6|LessThan1~37COUT1_48\) # (!\U6|COUNTPWM\(1)))) # (!\U3|Mux6~5_combout\ & (!\U6|COUNTPWM\(1) & !\U6|LessThan1~37COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux6~5_combout\,
	datab => \U6|COUNTPWM\(1),
	cin0 => \U6|LessThan1~37_cout0\,
	cin1 => \U6|LessThan1~37COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|LessThan1~30\,
	cout0 => \U6|LessThan1~32_cout0\,
	cout1 => \U6|LessThan1~32COUT1_50\);

-- Location: LC_X5_Y6_N2
\U6|LessThan1~27\ : maxv_lcell
-- Equation(s):
-- \U6|LessThan1~27_cout0\ = CARRY((\U3|Mux5~5_combout\ & (\U6|COUNTPWM\(2) & !\U6|LessThan1~32_cout0\)) # (!\U3|Mux5~5_combout\ & ((\U6|COUNTPWM\(2)) # (!\U6|LessThan1~32_cout0\))))
-- \U6|LessThan1~27COUT1_52\ = CARRY((\U3|Mux5~5_combout\ & (\U6|COUNTPWM\(2) & !\U6|LessThan1~32COUT1_50\)) # (!\U3|Mux5~5_combout\ & ((\U6|COUNTPWM\(2)) # (!\U6|LessThan1~32COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux5~5_combout\,
	datab => \U6|COUNTPWM\(2),
	cin0 => \U6|LessThan1~32_cout0\,
	cin1 => \U6|LessThan1~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|LessThan1~25\,
	cout0 => \U6|LessThan1~27_cout0\,
	cout1 => \U6|LessThan1~27COUT1_52\);

-- Location: LC_X5_Y6_N3
\U6|LessThan1~22\ : maxv_lcell
-- Equation(s):
-- \U6|LessThan1~22_cout0\ = CARRY((\U6|COUNTPWM\(3) & (\U3|Mux4~5_combout\ & !\U6|LessThan1~27_cout0\)) # (!\U6|COUNTPWM\(3) & ((\U3|Mux4~5_combout\) # (!\U6|LessThan1~27_cout0\))))
-- \U6|LessThan1~22COUT1_54\ = CARRY((\U6|COUNTPWM\(3) & (\U3|Mux4~5_combout\ & !\U6|LessThan1~27COUT1_52\)) # (!\U6|COUNTPWM\(3) & ((\U3|Mux4~5_combout\) # (!\U6|LessThan1~27COUT1_52\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|COUNTPWM\(3),
	datab => \U3|Mux4~5_combout\,
	cin0 => \U6|LessThan1~27_cout0\,
	cin1 => \U6|LessThan1~27COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|LessThan1~20\,
	cout0 => \U6|LessThan1~22_cout0\,
	cout1 => \U6|LessThan1~22COUT1_54\);

-- Location: LC_X5_Y6_N4
\U6|LessThan1~17\ : maxv_lcell
-- Equation(s):
-- \U6|LessThan1~17_cout\ = CARRY((\U6|COUNTPWM\(4) & ((!\U6|LessThan1~22COUT1_54\) # (!\U3|Mux3~5_combout\))) # (!\U6|COUNTPWM\(4) & (!\U3|Mux3~5_combout\ & !\U6|LessThan1~22COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|COUNTPWM\(4),
	datab => \U3|Mux3~5_combout\,
	cin0 => \U6|LessThan1~22_cout0\,
	cin1 => \U6|LessThan1~22COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|LessThan1~15\,
	cout => \U6|LessThan1~17_cout\);

-- Location: LC_X6_Y5_N0
\U3|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \U3|Mux1~0_combout\ = (\U2|t\(4) & (!\U2|t\(2) & (!\U2|t\(1) & !\U2|t\(6)))) # (!\U2|t\(4) & (\U2|t\(2) & (\U2|t\(1) & \U2|t\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(4),
	datab => \U2|t\(2),
	datac => \U2|t\(1),
	datad => \U2|t\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux1~0_combout\);

-- Location: LC_X6_Y6_N9
\U3|Mux1~1\ : maxv_lcell
-- Equation(s):
-- \U3|Mux1~1_combout\ = (\U2|COUNTsin1[2]~3_combout\ & (((!\U2|COUNTsin1[4]~4_combout\)))) # (!\U2|COUNTsin1[2]~3_combout\ & ((\U2|COUNTsin1[0]~0_combout\ & (!\U2|COUNTsin1[4]~4_combout\ & \U2|COUNTsin1[1]~2_combout\)) # (!\U2|COUNTsin1[0]~0_combout\ & 
-- (\U2|COUNTsin1[4]~4_combout\ & !\U2|COUNTsin1[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e1a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[2]~3_combout\,
	datab => \U2|COUNTsin1[0]~0_combout\,
	datac => \U2|COUNTsin1[4]~4_combout\,
	datad => \U2|COUNTsin1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux1~1_combout\);

-- Location: LC_X6_Y6_N2
\U3|Mux1~2\ : maxv_lcell
-- Equation(s):
-- \U3|Mux1~2_combout\ = ((\U2|COUNTsin1[3]~1_combout\ & (\U3|Mux1~0_combout\)) # (!\U2|COUNTsin1[3]~1_combout\ & ((!\U3|Mux1~1_combout\)))) # (!\U2|COUNTsin1[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3f7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[3]~1_combout\,
	datab => \U2|COUNTsin1[5]~5_combout\,
	datac => \U3|Mux1~0_combout\,
	datad => \U3|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux1~2_combout\);

-- Location: LC_X5_Y7_N0
\U3|Mux2~1\ : maxv_lcell
-- Equation(s):
-- \U3|Mux2~1_combout\ = (\U2|COUNTsin1[4]~4_combout\ & ((\U2|COUNTsin1[2]~3_combout\) # ((\U2|COUNTsin1[1]~2_combout\) # (\U2|COUNTsin1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[2]~3_combout\,
	datab => \U2|COUNTsin1[1]~2_combout\,
	datac => \U2|COUNTsin1[4]~4_combout\,
	datad => \U2|COUNTsin1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux2~1_combout\);

-- Location: LC_X5_Y7_N2
\U3|Mux2~0\ : maxv_lcell
-- Equation(s):
-- \U3|Mux2~0_combout\ = (\U2|COUNTsin1[2]~3_combout\ & (((!\U2|COUNTsin1[4]~4_combout\)) # (!\U2|COUNTsin1[1]~2_combout\))) # (!\U2|COUNTsin1[2]~3_combout\ & ((\U2|COUNTsin1[1]~2_combout\ & ((\U2|COUNTsin1[4]~4_combout\) # (\U2|COUNTsin1[0]~0_combout\))) # 
-- (!\U2|COUNTsin1[1]~2_combout\ & (\U2|COUNTsin1[4]~4_combout\ & \U2|COUNTsin1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7e6a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[2]~3_combout\,
	datab => \U2|COUNTsin1[1]~2_combout\,
	datac => \U2|COUNTsin1[4]~4_combout\,
	datad => \U2|COUNTsin1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux2~0_combout\);

-- Location: LC_X5_Y7_N7
\U3|Mux2~2\ : maxv_lcell
-- Equation(s):
-- \U3|Mux2~2_combout\ = (\U2|COUNTsin1[3]~1_combout\ & (!\U3|Mux2~1_combout\ & (!\U2|COUNTsin1[5]~5_combout\))) # (!\U2|COUNTsin1[3]~1_combout\ & (((\U3|Mux2~0_combout\) # (!\U2|COUNTsin1[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5707",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[3]~1_combout\,
	datab => \U3|Mux2~1_combout\,
	datac => \U2|COUNTsin1[5]~5_combout\,
	datad => \U3|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux2~2_combout\);

-- Location: LC_X6_Y9_N0
\U3|Mux2~3\ : maxv_lcell
-- Equation(s):
-- \U3|Mux2~3_combout\ = (\U2|t\(1) & ((\U2|t\(4) & (\U2|t\(6) $ (!\U2|t\(2)))) # (!\U2|t\(4) & (\U2|t\(6) & !\U2|t\(2))))) # (!\U2|t\(1) & ((\U2|t\(4) & (!\U2|t\(6) & \U2|t\(2))) # (!\U2|t\(4) & (\U2|t\(6) $ (!\U2|t\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9429",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(1),
	datab => \U2|t\(4),
	datac => \U2|t\(6),
	datad => \U2|t\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux2~3_combout\);

-- Location: LC_X5_Y7_N1
\U3|Mux2~4\ : maxv_lcell
-- Equation(s):
-- \U3|Mux2~4_combout\ = (\U3|Mux2~2_combout\) # ((\U2|COUNTsin1[3]~1_combout\ & (\U2|COUNTsin1[5]~5_combout\ & \U3|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[3]~1_combout\,
	datab => \U3|Mux2~2_combout\,
	datac => \U2|COUNTsin1[5]~5_combout\,
	datad => \U3|Mux2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux2~4_combout\);

-- Location: LC_X5_Y6_N5
\U6|LessThan1~12\ : maxv_lcell
-- Equation(s):
-- \U6|LessThan1~12_cout0\ = CARRY((\U6|COUNTPWM\(5) & (\U3|Mux2~4_combout\ & !\U6|LessThan1~17_cout\)) # (!\U6|COUNTPWM\(5) & ((\U3|Mux2~4_combout\) # (!\U6|LessThan1~17_cout\))))
-- \U6|LessThan1~12COUT1_56\ = CARRY((\U6|COUNTPWM\(5) & (\U3|Mux2~4_combout\ & !\U6|LessThan1~17_cout\)) # (!\U6|COUNTPWM\(5) & ((\U3|Mux2~4_combout\) # (!\U6|LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|COUNTPWM\(5),
	datab => \U3|Mux2~4_combout\,
	cin => \U6|LessThan1~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|LessThan1~10\,
	cout0 => \U6|LessThan1~12_cout0\,
	cout1 => \U6|LessThan1~12COUT1_56\);

-- Location: LC_X5_Y6_N6
\U6|LessThan1~7\ : maxv_lcell
-- Equation(s):
-- \U6|LessThan1~7_cout0\ = CARRY((\U6|COUNTPWM\(6) & ((!\U6|LessThan1~12_cout0\) # (!\U3|Mux1~2_combout\))) # (!\U6|COUNTPWM\(6) & (!\U3|Mux1~2_combout\ & !\U6|LessThan1~12_cout0\)))
-- \U6|LessThan1~7COUT1_58\ = CARRY((\U6|COUNTPWM\(6) & ((!\U6|LessThan1~12COUT1_56\) # (!\U3|Mux1~2_combout\))) # (!\U6|COUNTPWM\(6) & (!\U3|Mux1~2_combout\ & !\U6|LessThan1~12COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|COUNTPWM\(6),
	datab => \U3|Mux1~2_combout\,
	cin => \U6|LessThan1~17_cout\,
	cin0 => \U6|LessThan1~12_cout0\,
	cin1 => \U6|LessThan1~12COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|LessThan1~5\,
	cout0 => \U6|LessThan1~7_cout0\,
	cout1 => \U6|LessThan1~7COUT1_58\);

-- Location: LC_X5_Y6_N7
\U6|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \U6|LessThan1~0_combout\ = ((\U6|COUNTPWM\(7) & (((!\U6|LessThan1~17_cout\ & \U6|LessThan1~7_cout0\) # (\U6|LessThan1~17_cout\ & \U6|LessThan1~7COUT1_58\)) # (!\U3|Mux0~1_combout\))) # (!\U6|COUNTPWM\(7) & ((!\U6|LessThan1~17_cout\ & 
-- \U6|LessThan1~7_cout0\) # (\U6|LessThan1~17_cout\ & \U6|LessThan1~7COUT1_58\) & !\U3|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|COUNTPWM\(7),
	datad => \U3|Mux0~1_combout\,
	cin => \U6|LessThan1~17_cout\,
	cin0 => \U6|LessThan1~7_cout0\,
	cin1 => \U6|LessThan1~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|LessThan1~0_combout\);

-- Location: LC_X5_Y6_N9
\U6|SWITCHout1\ : maxv_lcell
-- Equation(s):
-- \U6|SWITCHout1~combout\ = ((\U6|LessThan1~0_combout\) # (\U2|t\(7) $ (\U2|t\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|t\(7),
	datac => \U6|LessThan1~0_combout\,
	datad => \U2|t\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|SWITCHout1~combout\);

-- Location: LC_X5_Y6_N8
\U6|SWITCHout2\ : maxv_lcell
-- Equation(s):
-- \U6|SWITCHout2~combout\ = ((\U6|LessThan1~0_combout\) # (\U2|t\(7) $ (!\U2|t\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|t\(7),
	datac => \U6|LessThan1~0_combout\,
	datad => \U2|t\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|SWITCHout2~combout\);

-- Location: LC_X6_Y5_N3
\U4|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \U4|Mux3~0_combout\ = (\U2|t\(4) & (((\U2|t\(5) & \U2|t\(6))))) # (!\U2|t\(4) & (((!\U2|t\(5) & !\U2|t\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(4),
	datac => \U2|t\(5),
	datad => \U2|t\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux3~0_combout\);

-- Location: LC_X6_Y5_N7
\U4|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \U4|Mux0~0_combout\ = ((\U2|t\(2) & (\U2|t\(1) & !\U2|t\(6))) # (!\U2|t\(2) & (!\U2|t\(1) & \U2|t\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|t\(2),
	datac => \U2|t\(1),
	datad => \U2|t\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux0~0_combout\);

-- Location: LC_X6_Y5_N5
\U4|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \U4|Mux0~1_combout\ = ((\U4|Mux0~0_combout\ & (\U2|COUNTsin1[0]~0_combout\ & \U2|COUNTsin1[3]~1_combout\))) # (!\U4|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d555",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Mux3~0_combout\,
	datab => \U4|Mux0~0_combout\,
	datac => \U2|COUNTsin1[0]~0_combout\,
	datad => \U2|COUNTsin1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux0~1_combout\);

-- Location: LC_X4_Y5_N7
\U4|Mux3~4\ : maxv_lcell
-- Equation(s):
-- \U4|Mux3~4_combout\ = (\U2|COUNTsin1[2]~3_combout\ & (\U2|COUNTsin1[1]~2_combout\ $ (((\U2|COUNTsin1[0]~0_combout\) # (!\U2|COUNTsin1[3]~1_combout\))))) # (!\U2|COUNTsin1[2]~3_combout\ & (!\U2|COUNTsin1[1]~2_combout\ & ((\U2|COUNTsin1[0]~0_combout\) # 
-- (\U2|COUNTsin1[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3932",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[2]~3_combout\,
	datab => \U2|COUNTsin1[1]~2_combout\,
	datac => \U2|COUNTsin1[0]~0_combout\,
	datad => \U2|COUNTsin1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux3~4_combout\);

-- Location: LC_X4_Y5_N2
\U4|Mux3~1\ : maxv_lcell
-- Equation(s):
-- \U4|Mux3~1_combout\ = \U2|COUNTsin1[2]~3_combout\ $ (((\U2|COUNTsin1[1]~2_combout\) # ((\U2|COUNTsin1[0]~0_combout\ & \U2|COUNTsin1[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5666",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[2]~3_combout\,
	datab => \U2|COUNTsin1[1]~2_combout\,
	datac => \U2|COUNTsin1[0]~0_combout\,
	datad => \U2|COUNTsin1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux3~1_combout\);

-- Location: LC_X4_Y5_N4
\U4|Mux3~2\ : maxv_lcell
-- Equation(s):
-- \U4|Mux3~2_combout\ = (\U2|COUNTsin1[2]~3_combout\ & (\U2|COUNTsin1[3]~1_combout\ $ (((!\U2|COUNTsin1[0]~0_combout\) # (!\U2|COUNTsin1[1]~2_combout\))))) # (!\U2|COUNTsin1[2]~3_combout\ & (\U2|COUNTsin1[1]~2_combout\ & ((!\U2|COUNTsin1[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "806e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[2]~3_combout\,
	datab => \U2|COUNTsin1[1]~2_combout\,
	datac => \U2|COUNTsin1[0]~0_combout\,
	datad => \U2|COUNTsin1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux3~2_combout\);

-- Location: LC_X4_Y5_N5
\U4|Mux3~3\ : maxv_lcell
-- Equation(s):
-- \U4|Mux3~3_combout\ = (\U2|COUNTsin1[4]~4_combout\ & ((\U4|Mux3~1_combout\) # ((\U2|COUNTsin1[5]~5_combout\)))) # (!\U2|COUNTsin1[4]~4_combout\ & (((\U4|Mux3~2_combout\ & \U2|COUNTsin1[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[4]~4_combout\,
	datab => \U4|Mux3~1_combout\,
	datac => \U4|Mux3~2_combout\,
	datad => \U2|COUNTsin1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux3~3_combout\);

-- Location: LC_X4_Y5_N1
\U4|Mux3~5\ : maxv_lcell
-- Equation(s):
-- \U4|Mux3~5_combout\ = ((\U4|Mux3~3_combout\) # ((\U4|Mux3~4_combout\ & \U4|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U4|Mux3~4_combout\,
	datac => \U4|Mux3~3_combout\,
	datad => \U4|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux3~5_combout\);

-- Location: LC_X4_Y7_N2
\U4|Mux4~0\ : maxv_lcell
-- Equation(s):
-- \U4|Mux4~0_combout\ = (\U2|COUNTsin1[0]~0_combout\ & (((\U2|COUNTsin1[5]~5_combout\) # (!\U2|COUNTsin1[3]~1_combout\)))) # (!\U2|COUNTsin1[0]~0_combout\ & ((\U2|COUNTsin1[4]~4_combout\) # ((\U2|COUNTsin1[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe3e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[4]~4_combout\,
	datab => \U2|COUNTsin1[0]~0_combout\,
	datac => \U2|COUNTsin1[3]~1_combout\,
	datad => \U2|COUNTsin1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux4~0_combout\);

-- Location: LC_X4_Y7_N9
\U4|Mux4~1\ : maxv_lcell
-- Equation(s):
-- \U4|Mux4~1_combout\ = (\U2|COUNTsin1[4]~4_combout\ & (\U2|COUNTsin1[3]~1_combout\ & ((\U2|COUNTsin1[0]~0_combout\) # (\U2|COUNTsin1[5]~5_combout\)))) # (!\U2|COUNTsin1[4]~4_combout\ & (\U2|COUNTsin1[0]~0_combout\ & ((\U2|COUNTsin1[3]~1_combout\) # 
-- (!\U2|COUNTsin1[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[4]~4_combout\,
	datab => \U2|COUNTsin1[0]~0_combout\,
	datac => \U2|COUNTsin1[3]~1_combout\,
	datad => \U2|COUNTsin1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux4~1_combout\);

-- Location: LC_X4_Y7_N7
\U4|Mux4~2\ : maxv_lcell
-- Equation(s):
-- \U4|Mux4~2_combout\ = (\U2|COUNTsin1[4]~4_combout\ & (\U2|COUNTsin1[3]~1_combout\ $ (((\U2|COUNTsin1[5]~5_combout\) # (!\U2|COUNTsin1[0]~0_combout\))))) # (!\U2|COUNTsin1[4]~4_combout\ & (\U2|COUNTsin1[3]~1_combout\ & ((\U2|COUNTsin1[5]~5_combout\) # 
-- (!\U2|COUNTsin1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a92",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[4]~4_combout\,
	datab => \U2|COUNTsin1[0]~0_combout\,
	datac => \U2|COUNTsin1[3]~1_combout\,
	datad => \U2|COUNTsin1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux4~2_combout\);

-- Location: LC_X4_Y7_N1
\U4|Mux4~3\ : maxv_lcell
-- Equation(s):
-- \U4|Mux4~3_combout\ = (\U2|COUNTsin1[1]~2_combout\ & ((\U4|Mux4~1_combout\) # ((\U2|COUNTsin1[2]~3_combout\)))) # (!\U2|COUNTsin1[1]~2_combout\ & (((!\U4|Mux4~2_combout\ & !\U2|COUNTsin1[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa8d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[1]~2_combout\,
	datab => \U4|Mux4~1_combout\,
	datac => \U4|Mux4~2_combout\,
	datad => \U2|COUNTsin1[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux4~3_combout\);

-- Location: LC_X4_Y7_N4
\U4|Mux4~4\ : maxv_lcell
-- Equation(s):
-- \U4|Mux4~4_combout\ = (\U2|COUNTsin1[4]~4_combout\ & ((\U2|COUNTsin1[5]~5_combout\) # ((\U2|COUNTsin1[0]~0_combout\ & !\U2|COUNTsin1[3]~1_combout\)))) # (!\U2|COUNTsin1[4]~4_combout\ & (\U2|COUNTsin1[0]~0_combout\ $ (((\U2|COUNTsin1[3]~1_combout\) # 
-- (\U2|COUNTsin1[5]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb1c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[4]~4_combout\,
	datab => \U2|COUNTsin1[0]~0_combout\,
	datac => \U2|COUNTsin1[3]~1_combout\,
	datad => \U2|COUNTsin1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux4~4_combout\);

-- Location: LC_X4_Y7_N3
\U4|Mux4~5\ : maxv_lcell
-- Equation(s):
-- \U4|Mux4~5_combout\ = (\U4|Mux4~3_combout\ & (((\U4|Mux4~4_combout\) # (!\U2|COUNTsin1[2]~3_combout\)))) # (!\U4|Mux4~3_combout\ & (\U4|Mux4~0_combout\ & ((\U2|COUNTsin1[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Mux4~0_combout\,
	datab => \U4|Mux4~3_combout\,
	datac => \U4|Mux4~4_combout\,
	datad => \U2|COUNTsin1[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux4~5_combout\);

-- Location: LC_X4_Y5_N8
\U4|Mux5~4\ : maxv_lcell
-- Equation(s):
-- \U4|Mux5~4_combout\ = (\U2|COUNTsin1[0]~0_combout\ & (!\U2|COUNTsin1[5]~5_combout\ & ((!\U2|COUNTsin1[1]~2_combout\) # (!\U2|COUNTsin1[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[2]~3_combout\,
	datab => \U2|COUNTsin1[1]~2_combout\,
	datac => \U2|COUNTsin1[0]~0_combout\,
	datad => \U2|COUNTsin1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux5~4_combout\);

-- Location: LC_X4_Y5_N9
\U4|Mux5~0\ : maxv_lcell
-- Equation(s):
-- \U4|Mux5~0_combout\ = (\U2|COUNTsin1[2]~3_combout\ & ((\U2|COUNTsin1[1]~2_combout\ $ (\U2|COUNTsin1[5]~5_combout\)) # (!\U2|COUNTsin1[0]~0_combout\))) # (!\U2|COUNTsin1[2]~3_combout\ & ((\U2|COUNTsin1[1]~2_combout\ & (!\U2|COUNTsin1[0]~0_combout\ & 
-- !\U2|COUNTsin1[5]~5_combout\)) # (!\U2|COUNTsin1[1]~2_combout\ & (\U2|COUNTsin1[0]~0_combout\ $ (\U2|COUNTsin1[5]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2b9e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[2]~3_combout\,
	datab => \U2|COUNTsin1[1]~2_combout\,
	datac => \U2|COUNTsin1[0]~0_combout\,
	datad => \U2|COUNTsin1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux5~0_combout\);

-- Location: LC_X5_Y4_N6
\U4|Mux5~1\ : maxv_lcell
-- Equation(s):
-- \U4|Mux5~1_combout\ = \U2|t\(1) $ (((\U2|t\(5) & (\U2|t\(0) & !\U2|t\(6))) # (!\U2|t\(5) & ((\U2|t\(0)) # (!\U2|t\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9a59",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(1),
	datab => \U2|t\(5),
	datac => \U2|t\(0),
	datad => \U2|t\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux5~1_combout\);

-- Location: LC_X4_Y5_N6
\U4|Mux5~2\ : maxv_lcell
-- Equation(s):
-- \U4|Mux5~2_combout\ = (\U2|COUNTsin1[5]~5_combout\ & (\U2|COUNTsin1[2]~3_combout\ $ (((!\U2|COUNTsin1[0]~0_combout\))))) # (!\U2|COUNTsin1[5]~5_combout\ & (!\U2|COUNTsin1[2]~3_combout\ & (!\U2|COUNTsin1[1]~2_combout\ & \U2|COUNTsin1[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a510",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[2]~3_combout\,
	datab => \U2|COUNTsin1[1]~2_combout\,
	datac => \U2|COUNTsin1[0]~0_combout\,
	datad => \U2|COUNTsin1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux5~2_combout\);

-- Location: LC_X4_Y5_N3
\U4|Mux5~3\ : maxv_lcell
-- Equation(s):
-- \U4|Mux5~3_combout\ = (\U2|COUNTsin1[4]~4_combout\ & (((\U2|COUNTsin1[3]~1_combout\)))) # (!\U2|COUNTsin1[4]~4_combout\ & ((\U2|COUNTsin1[3]~1_combout\ & (\U4|Mux5~1_combout\)) # (!\U2|COUNTsin1[3]~1_combout\ & ((!\U4|Mux5~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee05",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[4]~4_combout\,
	datab => \U4|Mux5~1_combout\,
	datac => \U4|Mux5~2_combout\,
	datad => \U2|COUNTsin1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux5~3_combout\);

-- Location: LC_X4_Y5_N0
\U4|Mux5~5\ : maxv_lcell
-- Equation(s):
-- \U4|Mux5~5_combout\ = (\U2|COUNTsin1[4]~4_combout\ & ((\U4|Mux5~3_combout\ & (!\U4|Mux5~4_combout\)) # (!\U4|Mux5~3_combout\ & ((!\U4|Mux5~0_combout\))))) # (!\U2|COUNTsin1[4]~4_combout\ & (((\U4|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Mux5~4_combout\,
	datab => \U4|Mux5~0_combout\,
	datac => \U2|COUNTsin1[4]~4_combout\,
	datad => \U4|Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux5~5_combout\);

-- Location: LC_X3_Y7_N9
\U4|Mux6~2\ : maxv_lcell
-- Equation(s):
-- \U4|Mux6~2_combout\ = (\U2|COUNTsin1[1]~2_combout\ & ((\U2|COUNTsin1[4]~4_combout\ & ((\U2|COUNTsin1[5]~5_combout\))) # (!\U2|COUNTsin1[4]~4_combout\ & (\U2|COUNTsin1[3]~1_combout\)))) # (!\U2|COUNTsin1[1]~2_combout\ & ((\U2|COUNTsin1[4]~4_combout\ & 
-- (!\U2|COUNTsin1[3]~1_combout\)) # (!\U2|COUNTsin1[4]~4_combout\ & ((\U2|COUNTsin1[5]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "db18",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[3]~1_combout\,
	datab => \U2|COUNTsin1[1]~2_combout\,
	datac => \U2|COUNTsin1[4]~4_combout\,
	datad => \U2|COUNTsin1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux6~2_combout\);

-- Location: LC_X3_Y7_N5
\U4|Mux6~1\ : maxv_lcell
-- Equation(s):
-- \U4|Mux6~1_combout\ = (\U2|COUNTsin1[3]~1_combout\ & (\U2|COUNTsin1[1]~2_combout\ & (\U2|COUNTsin1[4]~4_combout\ & \U2|COUNTsin1[5]~5_combout\))) # (!\U2|COUNTsin1[3]~1_combout\ & (\U2|COUNTsin1[1]~2_combout\ $ (\U2|COUNTsin1[4]~4_combout\ $ 
-- (\U2|COUNTsin1[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c114",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[3]~1_combout\,
	datab => \U2|COUNTsin1[1]~2_combout\,
	datac => \U2|COUNTsin1[4]~4_combout\,
	datad => \U2|COUNTsin1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux6~1_combout\);

-- Location: LC_X3_Y7_N8
\U4|Mux6~3\ : maxv_lcell
-- Equation(s):
-- \U4|Mux6~3_combout\ = (\U2|COUNTsin1[0]~0_combout\ & (((\U4|Mux6~1_combout\) # (\U2|COUNTsin1[2]~3_combout\)))) # (!\U2|COUNTsin1[0]~0_combout\ & (\U4|Mux6~2_combout\ & ((!\U2|COUNTsin1[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[0]~0_combout\,
	datab => \U4|Mux6~2_combout\,
	datac => \U4|Mux6~1_combout\,
	datad => \U2|COUNTsin1[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux6~3_combout\);

-- Location: LC_X3_Y7_N7
\U4|Mux6~0\ : maxv_lcell
-- Equation(s):
-- \U4|Mux6~0_combout\ = (\U2|COUNTsin1[3]~1_combout\ & (((\U2|COUNTsin1[4]~4_combout\ & !\U2|COUNTsin1[5]~5_combout\)))) # (!\U2|COUNTsin1[3]~1_combout\ & (\U2|COUNTsin1[5]~5_combout\ & (\U2|COUNTsin1[1]~2_combout\ $ (\U2|COUNTsin1[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "14a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[3]~1_combout\,
	datab => \U2|COUNTsin1[1]~2_combout\,
	datac => \U2|COUNTsin1[4]~4_combout\,
	datad => \U2|COUNTsin1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux6~0_combout\);

-- Location: LC_X3_Y7_N6
\U4|Mux6~4\ : maxv_lcell
-- Equation(s):
-- \U4|Mux6~4_combout\ = (\U2|COUNTsin1[3]~1_combout\ & (((!\U2|COUNTsin1[1]~2_combout\ & !\U2|COUNTsin1[5]~5_combout\)) # (!\U2|COUNTsin1[4]~4_combout\))) # (!\U2|COUNTsin1[3]~1_combout\ & (\U2|COUNTsin1[1]~2_combout\ & ((\U2|COUNTsin1[4]~4_combout\) # 
-- (\U2|COUNTsin1[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4e6a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[3]~1_combout\,
	datab => \U2|COUNTsin1[1]~2_combout\,
	datac => \U2|COUNTsin1[4]~4_combout\,
	datad => \U2|COUNTsin1[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux6~4_combout\);

-- Location: LC_X3_Y7_N0
\U4|Mux6~5\ : maxv_lcell
-- Equation(s):
-- \U4|Mux6~5_combout\ = (\U4|Mux6~3_combout\ & (((!\U2|COUNTsin1[2]~3_combout\) # (!\U4|Mux6~4_combout\)))) # (!\U4|Mux6~3_combout\ & (!\U4|Mux6~0_combout\ & ((\U2|COUNTsin1[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1baa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Mux6~3_combout\,
	datab => \U4|Mux6~0_combout\,
	datac => \U4|Mux6~4_combout\,
	datad => \U2|COUNTsin1[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux6~5_combout\);

-- Location: LC_X3_Y5_N8
\U4|Mux7~0\ : maxv_lcell
-- Equation(s):
-- \U4|Mux7~0_combout\ = (\U2|COUNTsin1[0]~0_combout\ & ((\U2|COUNTsin1[5]~5_combout\ & ((!\U2|COUNTsin1[3]~1_combout\))) # (!\U2|COUNTsin1[5]~5_combout\ & (\U2|COUNTsin1[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[5]~5_combout\,
	datab => \U2|COUNTsin1[1]~2_combout\,
	datac => \U2|COUNTsin1[0]~0_combout\,
	datad => \U2|COUNTsin1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux7~0_combout\);

-- Location: LC_X3_Y5_N2
\U4|Mux7~1\ : maxv_lcell
-- Equation(s):
-- \U4|Mux7~1_combout\ = (\U2|COUNTsin1[0]~0_combout\ & (\U2|COUNTsin1[3]~1_combout\ $ (((\U2|COUNTsin1[1]~2_combout\) # (!\U2|COUNTsin1[5]~5_combout\))))) # (!\U2|COUNTsin1[0]~0_combout\ & (\U2|COUNTsin1[5]~5_combout\ & (!\U2|COUNTsin1[1]~2_combout\ & 
-- !\U2|COUNTsin1[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "20d2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[5]~5_combout\,
	datab => \U2|COUNTsin1[1]~2_combout\,
	datac => \U2|COUNTsin1[0]~0_combout\,
	datad => \U2|COUNTsin1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux7~1_combout\);

-- Location: LC_X3_Y5_N0
\U4|Mux7~2\ : maxv_lcell
-- Equation(s):
-- \U4|Mux7~2_combout\ = (\U2|COUNTsin1[1]~2_combout\ & ((\U2|COUNTsin1[0]~0_combout\ & ((\U2|COUNTsin1[3]~1_combout\))) # (!\U2|COUNTsin1[0]~0_combout\ & (\U2|COUNTsin1[5]~5_combout\)))) # (!\U2|COUNTsin1[1]~2_combout\ & (\U2|COUNTsin1[5]~5_combout\ $ 
-- (\U2|COUNTsin1[0]~0_combout\ $ (\U2|COUNTsin1[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e91a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[5]~5_combout\,
	datab => \U2|COUNTsin1[1]~2_combout\,
	datac => \U2|COUNTsin1[0]~0_combout\,
	datad => \U2|COUNTsin1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux7~2_combout\);

-- Location: LC_X3_Y5_N9
\U4|Mux7~3\ : maxv_lcell
-- Equation(s):
-- \U4|Mux7~3_combout\ = (\U2|COUNTsin1[4]~4_combout\ & ((\U4|Mux7~1_combout\) # ((\U2|COUNTsin1[2]~3_combout\)))) # (!\U2|COUNTsin1[4]~4_combout\ & (((\U4|Mux7~2_combout\ & !\U2|COUNTsin1[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[4]~4_combout\,
	datab => \U4|Mux7~1_combout\,
	datac => \U4|Mux7~2_combout\,
	datad => \U2|COUNTsin1[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux7~3_combout\);

-- Location: LC_X3_Y5_N7
\U4|Mux7~4\ : maxv_lcell
-- Equation(s):
-- \U4|Mux7~4_combout\ = (\U2|COUNTsin1[0]~0_combout\ & (\U2|COUNTsin1[3]~1_combout\ $ (((!\U2|COUNTsin1[5]~5_combout\ & !\U2|COUNTsin1[1]~2_combout\))))) # (!\U2|COUNTsin1[0]~0_combout\ & ((\U2|COUNTsin1[3]~1_combout\ & (\U2|COUNTsin1[5]~5_combout\)) # 
-- (!\U2|COUNTsin1[3]~1_combout\ & ((\U2|COUNTsin1[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea1c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[5]~5_combout\,
	datab => \U2|COUNTsin1[1]~2_combout\,
	datac => \U2|COUNTsin1[0]~0_combout\,
	datad => \U2|COUNTsin1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux7~4_combout\);

-- Location: LC_X3_Y5_N6
\U4|Mux7~5\ : maxv_lcell
-- Equation(s):
-- \U4|Mux7~5_combout\ = (\U4|Mux7~3_combout\ & (((\U4|Mux7~4_combout\) # (!\U2|COUNTsin1[2]~3_combout\)))) # (!\U4|Mux7~3_combout\ & (!\U4|Mux7~0_combout\ & ((\U2|COUNTsin1[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d1cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Mux7~0_combout\,
	datab => \U4|Mux7~3_combout\,
	datac => \U4|Mux7~4_combout\,
	datad => \U2|COUNTsin1[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux7~5_combout\);

-- Location: LC_X4_Y6_N0
\U6|LessThan2~37\ : maxv_lcell
-- Equation(s):
-- \U6|LessThan2~37_cout0\ = CARRY((\U6|COUNTPWM\(0) & (!\U4|Mux7~5_combout\)))
-- \U6|LessThan2~37COUT1_48\ = CARRY((\U6|COUNTPWM\(0) & (!\U4|Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|COUNTPWM\(0),
	datab => \U4|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|LessThan2~35\,
	cout0 => \U6|LessThan2~37_cout0\,
	cout1 => \U6|LessThan2~37COUT1_48\);

-- Location: LC_X4_Y6_N1
\U6|LessThan2~32\ : maxv_lcell
-- Equation(s):
-- \U6|LessThan2~32_cout0\ = CARRY((\U6|COUNTPWM\(1) & (\U4|Mux6~5_combout\ & !\U6|LessThan2~37_cout0\)) # (!\U6|COUNTPWM\(1) & ((\U4|Mux6~5_combout\) # (!\U6|LessThan2~37_cout0\))))
-- \U6|LessThan2~32COUT1_50\ = CARRY((\U6|COUNTPWM\(1) & (\U4|Mux6~5_combout\ & !\U6|LessThan2~37COUT1_48\)) # (!\U6|COUNTPWM\(1) & ((\U4|Mux6~5_combout\) # (!\U6|LessThan2~37COUT1_48\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|COUNTPWM\(1),
	datab => \U4|Mux6~5_combout\,
	cin0 => \U6|LessThan2~37_cout0\,
	cin1 => \U6|LessThan2~37COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|LessThan2~30\,
	cout0 => \U6|LessThan2~32_cout0\,
	cout1 => \U6|LessThan2~32COUT1_50\);

-- Location: LC_X4_Y6_N2
\U6|LessThan2~27\ : maxv_lcell
-- Equation(s):
-- \U6|LessThan2~27_cout0\ = CARRY((\U4|Mux5~5_combout\ & (\U6|COUNTPWM\(2) & !\U6|LessThan2~32_cout0\)) # (!\U4|Mux5~5_combout\ & ((\U6|COUNTPWM\(2)) # (!\U6|LessThan2~32_cout0\))))
-- \U6|LessThan2~27COUT1_52\ = CARRY((\U4|Mux5~5_combout\ & (\U6|COUNTPWM\(2) & !\U6|LessThan2~32COUT1_50\)) # (!\U4|Mux5~5_combout\ & ((\U6|COUNTPWM\(2)) # (!\U6|LessThan2~32COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Mux5~5_combout\,
	datab => \U6|COUNTPWM\(2),
	cin0 => \U6|LessThan2~32_cout0\,
	cin1 => \U6|LessThan2~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|LessThan2~25\,
	cout0 => \U6|LessThan2~27_cout0\,
	cout1 => \U6|LessThan2~27COUT1_52\);

-- Location: LC_X4_Y6_N3
\U6|LessThan2~22\ : maxv_lcell
-- Equation(s):
-- \U6|LessThan2~22_cout0\ = CARRY((\U6|COUNTPWM\(3) & (\U4|Mux4~5_combout\ & !\U6|LessThan2~27_cout0\)) # (!\U6|COUNTPWM\(3) & ((\U4|Mux4~5_combout\) # (!\U6|LessThan2~27_cout0\))))
-- \U6|LessThan2~22COUT1_54\ = CARRY((\U6|COUNTPWM\(3) & (\U4|Mux4~5_combout\ & !\U6|LessThan2~27COUT1_52\)) # (!\U6|COUNTPWM\(3) & ((\U4|Mux4~5_combout\) # (!\U6|LessThan2~27COUT1_52\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|COUNTPWM\(3),
	datab => \U4|Mux4~5_combout\,
	cin0 => \U6|LessThan2~27_cout0\,
	cin1 => \U6|LessThan2~27COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|LessThan2~20\,
	cout0 => \U6|LessThan2~22_cout0\,
	cout1 => \U6|LessThan2~22COUT1_54\);

-- Location: LC_X4_Y6_N4
\U6|LessThan2~17\ : maxv_lcell
-- Equation(s):
-- \U6|LessThan2~17_cout\ = CARRY((\U6|COUNTPWM\(4) & ((!\U6|LessThan2~22COUT1_54\) # (!\U4|Mux3~5_combout\))) # (!\U6|COUNTPWM\(4) & (!\U4|Mux3~5_combout\ & !\U6|LessThan2~22COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|COUNTPWM\(4),
	datab => \U4|Mux3~5_combout\,
	cin0 => \U6|LessThan2~22_cout0\,
	cin1 => \U6|LessThan2~22COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|LessThan2~15\,
	cout => \U6|LessThan2~17_cout\);

-- Location: LC_X6_Y5_N1
\U4|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \U4|Mux1~0_combout\ = (\U2|t\(4) & (!\U2|t\(2) & (!\U2|t\(1) & \U2|t\(6)))) # (!\U2|t\(4) & (\U2|t\(2) & (\U2|t\(1) & !\U2|t\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0240",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(4),
	datab => \U2|t\(2),
	datac => \U2|t\(1),
	datad => \U2|t\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux1~0_combout\);

-- Location: LC_X6_Y6_N3
\U4|Mux1~1\ : maxv_lcell
-- Equation(s):
-- \U4|Mux1~1_combout\ = (\U2|COUNTsin1[2]~3_combout\ & ((\U2|COUNTsin1[0]~0_combout\ & (!\U2|COUNTsin1[4]~4_combout\ & \U2|COUNTsin1[1]~2_combout\)) # (!\U2|COUNTsin1[0]~0_combout\ & (\U2|COUNTsin1[4]~4_combout\ & !\U2|COUNTsin1[1]~2_combout\)))) # 
-- (!\U2|COUNTsin1[2]~3_combout\ & (((\U2|COUNTsin1[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5870",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[2]~3_combout\,
	datab => \U2|COUNTsin1[0]~0_combout\,
	datac => \U2|COUNTsin1[4]~4_combout\,
	datad => \U2|COUNTsin1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux1~1_combout\);

-- Location: LC_X6_Y6_N4
\U4|Mux1~2\ : maxv_lcell
-- Equation(s):
-- \U4|Mux1~2_combout\ = (\U2|COUNTsin1[5]~5_combout\) # ((\U2|COUNTsin1[3]~1_combout\ & ((!\U4|Mux1~1_combout\))) # (!\U2|COUNTsin1[3]~1_combout\ & (\U4|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dcfe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[3]~1_combout\,
	datab => \U2|COUNTsin1[5]~5_combout\,
	datac => \U4|Mux1~0_combout\,
	datad => \U4|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux1~2_combout\);

-- Location: LC_X6_Y5_N4
\U4|Mux2~3\ : maxv_lcell
-- Equation(s):
-- \U4|Mux2~3_combout\ = (\U2|t\(4) & ((\U2|t\(2) & (\U2|t\(1) $ (\U2|t\(6)))) # (!\U2|t\(2) & (\U2|t\(1) & \U2|t\(6))))) # (!\U2|t\(4) & ((\U2|t\(2) & (!\U2|t\(1) & !\U2|t\(6))) # (!\U2|t\(2) & (\U2|t\(1) $ (\U2|t\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2994",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|t\(4),
	datab => \U2|t\(2),
	datac => \U2|t\(1),
	datad => \U2|t\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux2~3_combout\);

-- Location: LC_X3_Y5_N1
\U4|Mux2~1\ : maxv_lcell
-- Equation(s):
-- \U4|Mux2~1_combout\ = (\U2|COUNTsin1[4]~4_combout\) # ((\U2|COUNTsin1[1]~2_combout\ & (\U2|COUNTsin1[0]~0_combout\ & \U2|COUNTsin1[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[4]~4_combout\,
	datab => \U2|COUNTsin1[1]~2_combout\,
	datac => \U2|COUNTsin1[0]~0_combout\,
	datad => \U2|COUNTsin1[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux2~1_combout\);

-- Location: LC_X3_Y5_N4
\U4|Mux2~0\ : maxv_lcell
-- Equation(s):
-- \U4|Mux2~0_combout\ = (\U2|COUNTsin1[4]~4_combout\ & (((!\U2|COUNTsin1[1]~2_combout\ & !\U2|COUNTsin1[0]~0_combout\)) # (!\U2|COUNTsin1[2]~3_combout\))) # (!\U2|COUNTsin1[4]~4_combout\ & ((\U2|COUNTsin1[1]~2_combout\ & ((!\U2|COUNTsin1[2]~3_combout\) # 
-- (!\U2|COUNTsin1[0]~0_combout\))) # (!\U2|COUNTsin1[1]~2_combout\ & ((\U2|COUNTsin1[2]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "17ee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[4]~4_combout\,
	datab => \U2|COUNTsin1[1]~2_combout\,
	datac => \U2|COUNTsin1[0]~0_combout\,
	datad => \U2|COUNTsin1[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux2~0_combout\);

-- Location: LC_X3_Y5_N3
\U4|Mux2~2\ : maxv_lcell
-- Equation(s):
-- \U4|Mux2~2_combout\ = (\U2|COUNTsin1[5]~5_combout\ & ((\U4|Mux2~1_combout\) # ((\U2|COUNTsin1[3]~1_combout\)))) # (!\U2|COUNTsin1[5]~5_combout\ & (((\U4|Mux2~0_combout\ & \U2|COUNTsin1[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|COUNTsin1[5]~5_combout\,
	datab => \U4|Mux2~1_combout\,
	datac => \U4|Mux2~0_combout\,
	datad => \U2|COUNTsin1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux2~2_combout\);

-- Location: LC_X3_Y5_N5
\U4|Mux2~4\ : maxv_lcell
-- Equation(s):
-- \U4|Mux2~4_combout\ = (\U4|Mux2~2_combout\) # ((\U4|Mux2~3_combout\ & (!\U2|COUNTsin1[3]~1_combout\ & !\U2|COUNTsin1[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Mux2~3_combout\,
	datab => \U2|COUNTsin1[3]~1_combout\,
	datac => \U2|COUNTsin1[5]~5_combout\,
	datad => \U4|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|Mux2~4_combout\);

-- Location: LC_X4_Y6_N5
\U6|LessThan2~12\ : maxv_lcell
-- Equation(s):
-- \U6|LessThan2~12_cout0\ = CARRY((\U6|COUNTPWM\(5) & (\U4|Mux2~4_combout\ & !\U6|LessThan2~17_cout\)) # (!\U6|COUNTPWM\(5) & ((\U4|Mux2~4_combout\) # (!\U6|LessThan2~17_cout\))))
-- \U6|LessThan2~12COUT1_56\ = CARRY((\U6|COUNTPWM\(5) & (\U4|Mux2~4_combout\ & !\U6|LessThan2~17_cout\)) # (!\U6|COUNTPWM\(5) & ((\U4|Mux2~4_combout\) # (!\U6|LessThan2~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|COUNTPWM\(5),
	datab => \U4|Mux2~4_combout\,
	cin => \U6|LessThan2~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|LessThan2~10\,
	cout0 => \U6|LessThan2~12_cout0\,
	cout1 => \U6|LessThan2~12COUT1_56\);

-- Location: LC_X4_Y6_N6
\U6|LessThan2~7\ : maxv_lcell
-- Equation(s):
-- \U6|LessThan2~7_cout0\ = CARRY((\U4|Mux1~2_combout\ & (\U6|COUNTPWM\(6) & !\U6|LessThan2~12_cout0\)) # (!\U4|Mux1~2_combout\ & ((\U6|COUNTPWM\(6)) # (!\U6|LessThan2~12_cout0\))))
-- \U6|LessThan2~7COUT1_58\ = CARRY((\U4|Mux1~2_combout\ & (\U6|COUNTPWM\(6) & !\U6|LessThan2~12COUT1_56\)) # (!\U4|Mux1~2_combout\ & ((\U6|COUNTPWM\(6)) # (!\U6|LessThan2~12COUT1_56\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Mux1~2_combout\,
	datab => \U6|COUNTPWM\(6),
	cin => \U6|LessThan2~17_cout\,
	cin0 => \U6|LessThan2~12_cout0\,
	cin1 => \U6|LessThan2~12COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|LessThan2~5\,
	cout0 => \U6|LessThan2~7_cout0\,
	cout1 => \U6|LessThan2~7COUT1_58\);

-- Location: LC_X4_Y6_N7
\U6|LessThan2~0\ : maxv_lcell
-- Equation(s):
-- \U6|LessThan2~0_combout\ = (\U4|Mux0~1_combout\ & (\U6|COUNTPWM\(7) & ((!\U6|LessThan2~17_cout\ & \U6|LessThan2~7_cout0\) # (\U6|LessThan2~17_cout\ & \U6|LessThan2~7COUT1_58\)))) # (!\U4|Mux0~1_combout\ & ((\U6|COUNTPWM\(7)) # (((!\U6|LessThan2~17_cout\ & 
-- \U6|LessThan2~7_cout0\) # (\U6|LessThan2~17_cout\ & \U6|LessThan2~7COUT1_58\)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "d4d4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Mux0~1_combout\,
	datab => \U6|COUNTPWM\(7),
	cin => \U6|LessThan2~17_cout\,
	cin0 => \U6|LessThan2~7_cout0\,
	cin1 => \U6|LessThan2~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|LessThan2~0_combout\);

-- Location: LC_X4_Y6_N9
\U6|SWITCHout3\ : maxv_lcell
-- Equation(s):
-- \U6|SWITCHout3~combout\ = (((\U6|LessThan2~0_combout\) # (\U2|t\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U6|LessThan2~0_combout\,
	datad => \U2|t\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|SWITCHout3~combout\);

-- Location: LC_X4_Y6_N8
\U6|SWITCHout4\ : maxv_lcell
-- Equation(s):
-- \U6|SWITCHout4~combout\ = (((!\U6|LessThan2~0_combout\ & \U2|t\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U6|LessThan2~0_combout\,
	datad => \U2|t\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|SWITCHout4~combout\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\switch1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U6|ALT_INV_SWITCHout1~combout\,
	oe => VCC,
	padio => ww_switch1);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\switch2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U6|ALT_INV_SWITCHout2~combout\,
	oe => VCC,
	padio => ww_switch2);

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\switch3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U6|ALT_INV_SWITCHout3~combout\,
	oe => VCC,
	padio => ww_switch3);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\switch4~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U6|SWITCHout4~combout\,
	oe => VCC,
	padio => ww_switch4);
END structure;


