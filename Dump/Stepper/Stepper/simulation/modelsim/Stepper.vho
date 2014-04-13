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

-- DATE "03/24/2014 13:20:56"

-- 
-- Device: Altera 5M1270ZT144A5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	Stepper IS
    PORT (
	CLK : IN std_logic;
	DISTANCE : IN STD.STANDARD.integer range 0 TO 10000;
	STATUS : OUT STD.STANDARD.integer range 0 TO 10000;
	RUN : IN std_logic;
	BUSY : OUT std_logic;
	CH1 : OUT std_logic;
	CH2 : OUT std_logic;
	CH3 : OUT std_logic;
	CH4 : OUT std_logic;
	FWD : IN std_logic
	);
END Stepper;

-- Design Ports Information
-- STATUS[0]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- STATUS[1]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- STATUS[2]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- STATUS[3]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- STATUS[4]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- STATUS[5]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- STATUS[6]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- STATUS[7]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- STATUS[8]	=>  Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- STATUS[9]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- STATUS[10]	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- STATUS[11]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- STATUS[12]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- STATUS[13]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- BUSY	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CH1	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CH2	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CH3	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CH4	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- DISTANCE[1]	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DISTANCE[0]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RUN	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FWD	=>  Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DISTANCE[7]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DISTANCE[6]	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DISTANCE[9]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DISTANCE[8]	=>  Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DISTANCE[10]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DISTANCE[11]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DISTANCE[12]	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DISTANCE[13]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DISTANCE[5]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DISTANCE[4]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DISTANCE[2]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DISTANCE[3]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Stepper IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_DISTANCE : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_STATUS : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_RUN : std_logic;
SIGNAL ww_BUSY : std_logic;
SIGNAL ww_CH1 : std_logic;
SIGNAL ww_CH2 : std_logic;
SIGNAL ww_CH3 : std_logic;
SIGNAL ww_CH4 : std_logic;
SIGNAL ww_FWD : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~20\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_142\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_134\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_136\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_138\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_140\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_144\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_146\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~57COUT1_148\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_150\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~67COUT1_152\ : std_logic;
SIGNAL \Add0~72COUT1_154\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_156\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Equal0~4\ : std_logic;
SIGNAL \Equal0~2\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~82COUT1_158\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~87COUT1_160\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~97COUT1_162\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~92COUT1_164\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Equal0~5\ : std_logic;
SIGNAL \Add0~112\ : std_logic;
SIGNAL \Add0~112COUT1_166\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Equal0~6\ : std_logic;
SIGNAL \Equal0~7\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Equal0~3\ : std_logic;
SIGNAL \stepper_clk~regout\ : std_logic;
SIGNAL \RUN~combout\ : std_logic;
SIGNAL \a_steps[1]~16_combout\ : std_logic;
SIGNAL \a_steps[0]~1\ : std_logic;
SIGNAL \a_steps[0]~1COUT1_25\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~COUT\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~COUTCOUT1_43\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~COUT\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~COUTCOUT1_29\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~7COUT1_31\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~12\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~12COUT1_33\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~17COUT1_35\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[39]~49_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[39]~48_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[38]~46_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[38]~45_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUT\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUTCOUT1_35\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[37]~42_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12COUT1_37\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17COUT1_39\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22COUT1_41\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7COUT1_43\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[47]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[47]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[46]~47_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[46]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~43_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[44]~36_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUT\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUTCOUT1_43\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12COUT1_35\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17COUT1_37\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22COUT1_39\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7COUT1_41\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~44_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~37_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~40_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUT\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUTCOUT1_35\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17COUT1_37\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12COUT1_39\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22COUT1_41\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7COUT1_43\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[61]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[61]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[60]~38_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[60]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[59]~41_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[59]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~COUT\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~COUTCOUT1_43\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[58]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12COUT1_35\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22COUT1_37\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17COUT1_39\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7COUT1_41\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[65]~31_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[68]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[68]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[67]~39_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[67]~13_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[66]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[66]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~17COUT1_35\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~12\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~12COUT1_37\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~22COUT1_39\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~7_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~7COUT1_41\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[73]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[75]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[75]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[74]~29_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[74]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[73]~32_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~COUT\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~COUTCOUT1_43\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[72]~51_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~22COUT1_35\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~17COUT1_37\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~12\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~12COUT1_39\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~7_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~7COUT1_41\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[81]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[81]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[80]~33_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[80]~50_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[79]~54_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~COUT\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~COUTCOUT1_43\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~22COUT1_35\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~17COUT1_37\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[82]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[82]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~12\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~12COUT1_39\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~7_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~7COUT1_41\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[89]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[89]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[88]~34_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[88]~35_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[87]~52_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[87]~53_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[86]~55_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~22_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~22COUT1_31\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~17_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~17COUT1_33\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~12_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~12COUT1_35\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~7_cout0\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~7COUT1_37\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~0_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \a_steps[1]~3\ : std_logic;
SIGNAL \a_steps[1]~3COUT1_27\ : std_logic;
SIGNAL \a_steps[2]~5\ : std_logic;
SIGNAL \a_steps[2]~5COUT1_29\ : std_logic;
SIGNAL \a_steps[3]~7\ : std_logic;
SIGNAL \a_steps[3]~7COUT1_31\ : std_logic;
SIGNAL \a_steps[4]~11\ : std_logic;
SIGNAL \a_steps[5]~9\ : std_logic;
SIGNAL \a_steps[5]~9COUT1_33\ : std_logic;
SIGNAL \a_steps[6]~15\ : std_logic;
SIGNAL \a_steps[6]~15COUT1_35\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \running~regout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][3]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][4]~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][5]~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][6]~3_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][3]~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][7]~5_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~2\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~2COUT1_48\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~5_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][8]~7_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][4]~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~7\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~7COUT1_50\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~10_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][5]~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|_~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~12\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~12COUT1_52\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~15_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][6]~9_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~17\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~17COUT1_54\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~20_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][7]~10_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~22\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~25_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][8]~11_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~27\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~27COUT1_56\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~30_combout\ : std_logic;
SIGNAL \Mult0|mult_core|_~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~32\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~32COUT1_58\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~35_combout\ : std_logic;
SIGNAL \CH1~0_combout\ : std_logic;
SIGNAL \FWD~combout\ : std_logic;
SIGNAL \Mux1~0\ : std_logic;
SIGNAL \CH1~reg0_regout\ : std_logic;
SIGNAL \CH2~reg0_regout\ : std_logic;
SIGNAL \CH3~reg0_regout\ : std_logic;
SIGNAL \Mux1~1\ : std_logic;
SIGNAL \CH4~reg0_regout\ : std_logic;
SIGNAL req_steps : std_logic_vector(7 DOWNTO 0);
SIGNAL state : std_logic_vector(1 DOWNTO 0);
SIGNAL a_steps : std_logic_vector(7 DOWNTO 0);
SIGNAL \DISTANCE~combout\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella\ : std_logic_vector(5 DOWNTO 0);
SIGNAL count : std_logic_vector(22 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_DISTANCE <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(DISTANCE, 14);
STATUS <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_STATUS));
ww_RUN <= RUN;
BUSY <= ww_BUSY;
CH1 <= ww_CH1;
CH2 <= ww_CH2;
CH3 <= ww_CH3;
CH4 <= ww_CH4;
ww_FWD <= FWD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: LC_X7_Y6_N4
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = (!count(0))
-- \Add0~2\ = CARRY((count(0)))

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
	dataa => count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout => \Add0~2\);

-- Location: LC_X6_Y6_N5
\count[0]\ : maxv_lcell
-- Equation(s):
-- count(0) = DFFEAS((((!\Equal0~7\ & \Add0~0_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Equal0~7\,
	datad => \Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LC_X8_Y6_N0
\Add0~25\ : maxv_lcell
-- Equation(s):
-- \Add0~25_combout\ = (count(6) $ ((!\Add0~22\)))
-- \Add0~27\ = CARRY(((count(6) & !\Add0~22\)))
-- \Add0~27COUT1_142\ = CARRY(((count(6) & !\Add0~22\)))

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
	datab => count(6),
	cin => \Add0~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_142\);

-- Location: LC_X5_Y6_N0
\count[6]\ : maxv_lcell
-- Equation(s):
-- count(6) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Add0~25_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(6));

-- Location: LC_X8_Y6_N1
\Add0~10\ : maxv_lcell
-- Equation(s):
-- \Add0~10_combout\ = (count(7) $ (((!\Add0~22\ & \Add0~27\) # (\Add0~22\ & \Add0~27COUT1_142\))))
-- \Add0~12\ = CARRY(((!\Add0~27\) # (!count(7))))
-- \Add0~12COUT1_144\ = CARRY(((!\Add0~27COUT1_142\) # (!count(7))))

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
	datab => count(7),
	cin => \Add0~22\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_144\);

-- Location: LC_X6_Y6_N1
\count[7]\ : maxv_lcell
-- Equation(s):
-- count(7) = DFFEAS((((!\Equal0~7\ & \Add0~10_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Equal0~7\,
	datad => \Add0~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(7));

-- Location: LC_X6_Y6_N7
\count[1]\ : maxv_lcell
-- Equation(s):
-- \Equal0~0\ = (!count(0) & (((!count[1]))))
-- count(1) = DFFEAS(\Equal0~0\, GLOBAL(\CLK~combout\), VCC, , , \Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => count(0),
	datac => \Add0~5_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => count(1));

-- Location: LC_X7_Y6_N5
\Add0~5\ : maxv_lcell
-- Equation(s):
-- \Add0~5_combout\ = (count(1) $ ((\Add0~2\)))
-- \Add0~7\ = CARRY(((!\Add0~2\) # (!count(1))))
-- \Add0~7COUT1_134\ = CARRY(((!\Add0~2\) # (!count(1))))

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
	datab => count(1),
	cin => \Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_134\);

-- Location: LC_X7_Y6_N6
\Add0~30\ : maxv_lcell
-- Equation(s):
-- \Add0~30_combout\ = (count(2) $ ((!(!\Add0~2\ & \Add0~7\) # (\Add0~2\ & \Add0~7COUT1_134\))))
-- \Add0~32\ = CARRY(((count(2) & !\Add0~7\)))
-- \Add0~32COUT1_136\ = CARRY(((count(2) & !\Add0~7COUT1_134\)))

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
	datab => count(2),
	cin => \Add0~2\,
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_134\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_136\);

-- Location: LC_X6_Y6_N8
\count[4]\ : maxv_lcell
-- Equation(s):
-- \Equal0~1\ = (!count(6) & (count(7) & (!count[4] & !count(5))))
-- count(4) = DFFEAS(\Equal0~1\, GLOBAL(\CLK~combout\), VCC, , , \Add0~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => count(6),
	datab => count(7),
	datac => \Add0~15_combout\,
	datad => count(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => count(4));

-- Location: LC_X6_Y6_N6
\count[2]\ : maxv_lcell
-- Equation(s):
-- \Equal0~2\ = (!count(3) & (\Equal0~0\ & (!count[2] & \Equal0~1\)))
-- count(2) = DFFEAS(\Equal0~2\, GLOBAL(\CLK~combout\), VCC, , , \Add0~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => count(3),
	datab => \Equal0~0\,
	datac => \Add0~30_combout\,
	datad => \Equal0~1\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2\,
	regout => count(2));

-- Location: LC_X7_Y6_N7
\Add0~35\ : maxv_lcell
-- Equation(s):
-- \Add0~35_combout\ = (count(3) $ (((!\Add0~2\ & \Add0~32\) # (\Add0~2\ & \Add0~32COUT1_136\))))
-- \Add0~37\ = CARRY(((!\Add0~32\) # (!count(3))))
-- \Add0~37COUT1_138\ = CARRY(((!\Add0~32COUT1_136\) # (!count(3))))

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
	datab => count(3),
	cin => \Add0~2\,
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_138\);

-- Location: LC_X6_Y6_N2
\count[3]\ : maxv_lcell
-- Equation(s):
-- count(3) = DFFEAS((((\Add0~35_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \Add0~35_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LC_X7_Y6_N8
\Add0~15\ : maxv_lcell
-- Equation(s):
-- \Add0~15_combout\ = count(4) $ ((((!(!\Add0~2\ & \Add0~37\) # (\Add0~2\ & \Add0~37COUT1_138\)))))
-- \Add0~17\ = CARRY((count(4) & ((!\Add0~37\))))
-- \Add0~17COUT1_140\ = CARRY((count(4) & ((!\Add0~37COUT1_138\))))

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
	dataa => count(4),
	cin => \Add0~2\,
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_138\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_140\);

-- Location: LC_X7_Y6_N9
\Add0~20\ : maxv_lcell
-- Equation(s):
-- \Add0~20_combout\ = count(5) $ (((((!\Add0~2\ & \Add0~17\) # (\Add0~2\ & \Add0~17COUT1_140\)))))
-- \Add0~22\ = CARRY(((!\Add0~17COUT1_140\)) # (!count(5)))

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
	dataa => count(5),
	cin => \Add0~2\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_140\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout => \Add0~22\);

-- Location: LC_X6_Y6_N0
\count[5]\ : maxv_lcell
-- Equation(s):
-- count(5) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Add0~20_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(5));

-- Location: LC_X8_Y6_N2
\Add0~40\ : maxv_lcell
-- Equation(s):
-- \Add0~40_combout\ = count(8) $ ((((!(!\Add0~22\ & \Add0~12\) # (\Add0~22\ & \Add0~12COUT1_144\)))))
-- \Add0~42\ = CARRY((count(8) & ((!\Add0~12\))))
-- \Add0~42COUT1_146\ = CARRY((count(8) & ((!\Add0~12COUT1_144\))))

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
	dataa => count(8),
	cin => \Add0~22\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_146\);

-- Location: LC_X7_Y6_N1
\count[8]\ : maxv_lcell
-- Equation(s):
-- count(8) = DFFEAS((((\Add0~40_combout\ & !\Equal0~7\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	clk => \CLK~combout\,
	datac => \Add0~40_combout\,
	datad => \Equal0~7\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(8));

-- Location: LC_X8_Y6_N3
\Add0~55\ : maxv_lcell
-- Equation(s):
-- \Add0~55_combout\ = (count(9) $ (((!\Add0~22\ & \Add0~42\) # (\Add0~22\ & \Add0~42COUT1_146\))))
-- \Add0~57\ = CARRY(((!\Add0~42\) # (!count(9))))
-- \Add0~57COUT1_148\ = CARRY(((!\Add0~42COUT1_146\) # (!count(9))))

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
	datab => count(9),
	cin => \Add0~22\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout0 => \Add0~57\,
	cout1 => \Add0~57COUT1_148\);

-- Location: LC_X7_Y6_N3
\count[9]\ : maxv_lcell
-- Equation(s):
-- \Equal0~3\ = (count(11) & (count(10) & (!count[9] & count(8))))
-- count(9) = DFFEAS(\Equal0~3\, GLOBAL(\CLK~combout\), VCC, , , \Add0~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => count(11),
	datab => count(10),
	datac => \Add0~55_combout\,
	datad => count(8),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3\,
	regout => count(9));

-- Location: LC_X8_Y6_N4
\Add0~45\ : maxv_lcell
-- Equation(s):
-- \Add0~45_combout\ = count(10) $ ((((!(!\Add0~22\ & \Add0~57\) # (\Add0~22\ & \Add0~57COUT1_148\)))))
-- \Add0~47\ = CARRY((count(10) & ((!\Add0~57COUT1_148\))))

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
	dataa => count(10),
	cin => \Add0~22\,
	cin0 => \Add0~57\,
	cin1 => \Add0~57COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout => \Add0~47\);

-- Location: LC_X7_Y6_N0
\count[10]\ : maxv_lcell
-- Equation(s):
-- count(10) = DFFEAS(((!\Equal0~7\ & ((\Add0~45_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	clk => \CLK~combout\,
	datab => \Equal0~7\,
	datad => \Add0~45_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(10));

-- Location: LC_X8_Y6_N5
\Add0~50\ : maxv_lcell
-- Equation(s):
-- \Add0~50_combout\ = (count(11) $ ((\Add0~47\)))
-- \Add0~52\ = CARRY(((!\Add0~47\) # (!count(11))))
-- \Add0~52COUT1_150\ = CARRY(((!\Add0~47\) # (!count(11))))

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
	datab => count(11),
	cin => \Add0~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_150\);

-- Location: LC_X8_Y6_N6
\Add0~65\ : maxv_lcell
-- Equation(s):
-- \Add0~65_combout\ = count(12) $ ((((!(!\Add0~47\ & \Add0~52\) # (\Add0~47\ & \Add0~52COUT1_150\)))))
-- \Add0~67\ = CARRY((count(12) & ((!\Add0~52\))))
-- \Add0~67COUT1_152\ = CARRY((count(12) & ((!\Add0~52COUT1_150\))))

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
	dataa => count(12),
	cin => \Add0~47\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout0 => \Add0~67\,
	cout1 => \Add0~67COUT1_152\);

-- Location: LC_X8_Y6_N7
\Add0~70\ : maxv_lcell
-- Equation(s):
-- \Add0~70_combout\ = (count(13) $ (((!\Add0~47\ & \Add0~67\) # (\Add0~47\ & \Add0~67COUT1_152\))))
-- \Add0~72\ = CARRY(((!\Add0~67\) # (!count(13))))
-- \Add0~72COUT1_154\ = CARRY(((!\Add0~67COUT1_152\) # (!count(13))))

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
	datab => count(13),
	cin => \Add0~47\,
	cin0 => \Add0~67\,
	cin1 => \Add0~67COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_154\);

-- Location: LC_X8_Y6_N8
\Add0~75\ : maxv_lcell
-- Equation(s):
-- \Add0~75_combout\ = (count(14) $ ((!(!\Add0~47\ & \Add0~72\) # (\Add0~47\ & \Add0~72COUT1_154\))))
-- \Add0~77\ = CARRY(((count(14) & !\Add0~72\)))
-- \Add0~77COUT1_156\ = CARRY(((count(14) & !\Add0~72COUT1_154\)))

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
	datab => count(14),
	cin => \Add0~47\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_156\);

-- Location: LC_X8_Y6_N9
\Add0~60\ : maxv_lcell
-- Equation(s):
-- \Add0~60_combout\ = (count(15) $ (((!\Add0~47\ & \Add0~77\) # (\Add0~47\ & \Add0~77COUT1_156\))))
-- \Add0~62\ = CARRY(((!\Add0~77COUT1_156\) # (!count(15))))

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
	datab => count(15),
	cin => \Add0~47\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout => \Add0~62\);

-- Location: LC_X10_Y6_N8
\count[15]\ : maxv_lcell
-- Equation(s):
-- count(15) = DFFEAS((((!\Equal0~7\ & \Add0~60_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Equal0~7\,
	datad => \Add0~60_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(15));

-- Location: LC_X9_Y6_N7
\count[12]\ : maxv_lcell
-- Equation(s):
-- \Equal0~4\ = (!count(14) & (!count(13) & (!count[12] & count(15))))
-- count(12) = DFFEAS(\Equal0~4\, GLOBAL(\CLK~combout\), VCC, , , \Add0~65_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => count(14),
	datab => count(13),
	datac => \Add0~65_combout\,
	datad => count(15),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4\,
	regout => count(12));

-- Location: LC_X9_Y6_N9
\count[13]\ : maxv_lcell
-- Equation(s):
-- count(13) = DFFEAS((((\Add0~70_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \Add0~70_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(13));

-- Location: LC_X9_Y6_N8
\count[14]\ : maxv_lcell
-- Equation(s):
-- count(14) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~75_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Add0~75_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(14));

-- Location: LC_X9_Y6_N0
\Add0~80\ : maxv_lcell
-- Equation(s):
-- \Add0~80_combout\ = (count(16) $ ((!\Add0~62\)))
-- \Add0~82\ = CARRY(((count(16) & !\Add0~62\)))
-- \Add0~82COUT1_158\ = CARRY(((count(16) & !\Add0~62\)))

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
	datab => count(16),
	cin => \Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout0 => \Add0~82\,
	cout1 => \Add0~82COUT1_158\);

-- Location: LC_X10_Y6_N2
\count[16]\ : maxv_lcell
-- Equation(s):
-- count(16) = DFFEAS((((!\Equal0~7\ & \Add0~80_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Equal0~7\,
	datad => \Add0~80_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(16));

-- Location: LC_X9_Y6_N1
\Add0~85\ : maxv_lcell
-- Equation(s):
-- \Add0~85_combout\ = (count(17) $ (((!\Add0~62\ & \Add0~82\) # (\Add0~62\ & \Add0~82COUT1_158\))))
-- \Add0~87\ = CARRY(((!\Add0~82\) # (!count(17))))
-- \Add0~87COUT1_160\ = CARRY(((!\Add0~82COUT1_158\) # (!count(17))))

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
	datab => count(17),
	cin => \Add0~62\,
	cin0 => \Add0~82\,
	cin1 => \Add0~82COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout0 => \Add0~87\,
	cout1 => \Add0~87COUT1_160\);

-- Location: LC_X10_Y6_N9
\count[17]\ : maxv_lcell
-- Equation(s):
-- count(17) = DFFEAS((((\Add0~85_combout\ & !\Equal0~7\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	clk => \CLK~combout\,
	datac => \Add0~85_combout\,
	datad => \Equal0~7\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(17));

-- Location: LC_X9_Y6_N2
\Add0~95\ : maxv_lcell
-- Equation(s):
-- \Add0~95_combout\ = (count(18) $ ((!(!\Add0~62\ & \Add0~87\) # (\Add0~62\ & \Add0~87COUT1_160\))))
-- \Add0~97\ = CARRY(((count(18) & !\Add0~87\)))
-- \Add0~97COUT1_162\ = CARRY(((count(18) & !\Add0~87COUT1_160\)))

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
	datab => count(18),
	cin => \Add0~62\,
	cin0 => \Add0~87\,
	cin1 => \Add0~87COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout0 => \Add0~97\,
	cout1 => \Add0~97COUT1_162\);

-- Location: LC_X6_Y6_N9
\count[18]\ : maxv_lcell
-- Equation(s):
-- \Equal0~5\ = (count(16) & (count(19) & (!count[18] & count(17))))
-- count(18) = DFFEAS(\Equal0~5\, GLOBAL(\CLK~combout\), VCC, , , \Add0~95_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => count(16),
	datab => count(19),
	datac => \Add0~95_combout\,
	datad => count(17),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5\,
	regout => count(18));

-- Location: LC_X9_Y6_N3
\Add0~90\ : maxv_lcell
-- Equation(s):
-- \Add0~90_combout\ = count(19) $ (((((!\Add0~62\ & \Add0~97\) # (\Add0~62\ & \Add0~97COUT1_162\)))))
-- \Add0~92\ = CARRY(((!\Add0~97\)) # (!count(19)))
-- \Add0~92COUT1_164\ = CARRY(((!\Add0~97COUT1_162\)) # (!count(19)))

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
	dataa => count(19),
	cin => \Add0~62\,
	cin0 => \Add0~97\,
	cin1 => \Add0~97COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout0 => \Add0~92\,
	cout1 => \Add0~92COUT1_164\);

-- Location: LC_X10_Y6_N6
\count[19]\ : maxv_lcell
-- Equation(s):
-- count(19) = DFFEAS((((!\Equal0~7\ & \Add0~90_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Equal0~7\,
	datad => \Add0~90_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(19));

-- Location: LC_X9_Y6_N4
\Add0~100\ : maxv_lcell
-- Equation(s):
-- \Add0~100_combout\ = count(20) $ ((((!(!\Add0~62\ & \Add0~92\) # (\Add0~62\ & \Add0~92COUT1_164\)))))
-- \Add0~102\ = CARRY((count(20) & ((!\Add0~92COUT1_164\))))

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
	dataa => count(20),
	cin => \Add0~62\,
	cin0 => \Add0~92\,
	cin1 => \Add0~92COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~100_combout\,
	cout => \Add0~102\);

-- Location: LC_X10_Y6_N7
\count[20]\ : maxv_lcell
-- Equation(s):
-- count(20) = DFFEAS((((!\Equal0~7\ & \Add0~100_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Equal0~7\,
	datad => \Add0~100_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(20));

-- Location: LC_X9_Y6_N5
\Add0~110\ : maxv_lcell
-- Equation(s):
-- \Add0~110_combout\ = (count(21) $ ((\Add0~102\)))
-- \Add0~112\ = CARRY(((!\Add0~102\) # (!count(21))))
-- \Add0~112COUT1_166\ = CARRY(((!\Add0~102\) # (!count(21))))

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
	datab => count(21),
	cin => \Add0~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~110_combout\,
	cout0 => \Add0~112\,
	cout1 => \Add0~112COUT1_166\);

-- Location: LC_X6_Y6_N3
\count[21]\ : maxv_lcell
-- Equation(s):
-- \Equal0~6\ = (count(22) & (count(20) & (!count[21] & \Equal0~5\)))
-- count(21) = DFFEAS(\Equal0~6\, GLOBAL(\CLK~combout\), VCC, , , \Add0~110_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => count(22),
	datab => count(20),
	datac => \Add0~110_combout\,
	datad => \Equal0~5\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6\,
	regout => count(21));

-- Location: LC_X9_Y6_N6
\Add0~105\ : maxv_lcell
-- Equation(s):
-- \Add0~105_combout\ = (((!\Add0~102\ & \Add0~112\) # (\Add0~102\ & \Add0~112COUT1_166\) $ (!count(22))))

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
	datad => count(22),
	cin => \Add0~102\,
	cin0 => \Add0~112\,
	cin1 => \Add0~112COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~105_combout\);

-- Location: LC_X5_Y6_N3
\count[22]\ : maxv_lcell
-- Equation(s):
-- count(22) = DFFEAS((((\Add0~105_combout\ & !\Equal0~7\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	clk => \CLK~combout\,
	datac => \Add0~105_combout\,
	datad => \Equal0~7\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(22));

-- Location: LC_X6_Y6_N4
stepper_clk : maxv_lcell
-- Equation(s):
-- \Equal0~7\ = (\Equal0~3\ & (\Equal0~4\ & (\Equal0~2\ & \Equal0~6\)))
-- \stepper_clk~regout\ = DFFEAS(\Equal0~7\, GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Equal0~3\,
	datab => \Equal0~4\,
	datac => \Equal0~2\,
	datad => \Equal0~6\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~7\,
	regout => \stepper_clk~regout\);

-- Location: LC_X7_Y6_N2
\count[11]\ : maxv_lcell
-- Equation(s):
-- count(11) = DFFEAS(((!\Equal0~7\ & ((\Add0~50_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	clk => \CLK~combout\,
	datab => \Equal0~7\,
	datad => \Add0~50_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(11));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RUN~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RUN,
	combout => \RUN~combout\);

-- Location: LC_X16_Y6_N8
\a_steps[1]~16\ : maxv_lcell
-- Equation(s):
-- \a_steps[1]~16_combout\ = (\RUN~combout\ & (((!\Equal1~4_combout\)) # (!\running~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RUN~combout\,
	datab => \running~regout\,
	datac => \Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \a_steps[1]~16_combout\);

-- Location: LC_X16_Y6_N0
\a_steps[0]\ : maxv_lcell
-- Equation(s):
-- a_steps(0) = DFFEAS(((!a_steps(0))), GLOBAL(\stepper_clk~regout\), VCC, , \a_steps[1]~16_combout\, , , \process_1~0_combout\, )
-- \a_steps[0]~1\ = CARRY(((a_steps(0))))
-- \a_steps[0]~1COUT1_25\ = CARRY(((a_steps(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \stepper_clk~regout\,
	datab => a_steps(0),
	aclr => GND,
	sclr => \process_1~0_combout\,
	ena => \a_steps[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_steps(0),
	cout0 => \a_steps[0]~1\,
	cout1 => \a_steps[0]~1COUT1_25\);

-- Location: LC_X16_Y6_N1
\a_steps[1]\ : maxv_lcell
-- Equation(s):
-- a_steps(1) = DFFEAS((a_steps(1) $ ((\a_steps[0]~1\))), GLOBAL(\stepper_clk~regout\), VCC, , \a_steps[1]~16_combout\, , , \process_1~0_combout\, )
-- \a_steps[1]~3\ = CARRY(((!\a_steps[0]~1\) # (!a_steps(1))))
-- \a_steps[1]~3COUT1_27\ = CARRY(((!\a_steps[0]~1COUT1_25\) # (!a_steps(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \stepper_clk~regout\,
	datab => a_steps(1),
	aclr => GND,
	sclr => \process_1~0_combout\,
	ena => \a_steps[1]~16_combout\,
	cin0 => \a_steps[0]~1\,
	cin1 => \a_steps[0]~1COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_steps(1),
	cout0 => \a_steps[1]~3\,
	cout1 => \a_steps[1]~3COUT1_27\);

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DISTANCE[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DISTANCE(5),
	combout => \DISTANCE~combout\(5));

-- Location: LC_X14_Y1_N0
\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella\(2) = ((\DISTANCE~combout\(5)))
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~COUT\ = CARRY(((\DISTANCE~combout\(5))))
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~COUTCOUT1_43\ = CARRY(((\DISTANCE~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \DISTANCE~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella\(2),
	cout0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~COUT\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~COUTCOUT1_43\);

-- Location: LC_X14_Y1_N1
\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~27\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~27_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~COUT\)))

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
	cin0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~COUT\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[2]~COUTCOUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~27_combout\);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DISTANCE[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DISTANCE(13),
	combout => \DISTANCE~combout\(13));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DISTANCE[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DISTANCE(12),
	combout => \DISTANCE~combout\(12));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DISTANCE[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DISTANCE(11),
	combout => \DISTANCE~combout\(11));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DISTANCE[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DISTANCE(10),
	combout => \DISTANCE~combout\(10));

-- Location: LC_X16_Y3_N1
\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(2) = (\DISTANCE~combout\(10))
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~COUT\ = CARRY((\DISTANCE~combout\(10)))
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~COUTCOUT1_29\ = CARRY((\DISTANCE~combout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DISTANCE~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(2),
	cout0 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~COUT\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~COUTCOUT1_29\);

-- Location: LC_X16_Y3_N2
\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~22\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~22_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~COUT\)))

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
	cin0 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~COUT\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~COUTCOUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~22_combout\);

-- Location: LC_X16_Y4_N5
\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~5\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~5_combout\ = \DISTANCE~combout\(11) $ ((\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~22_combout\))
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~7\ = CARRY((\DISTANCE~combout\(11) & (\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~22_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~7COUT1_31\ = CARRY((\DISTANCE~combout\(11) & (\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~22_combout\)))

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
	dataa => \DISTANCE~combout\(11),
	datab => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~5_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~7\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~7COUT1_31\);

-- Location: LC_X16_Y4_N6
\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~10\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~10_combout\ = \DISTANCE~combout\(12) $ ((((!\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~7\))))
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~12\ = CARRY((!\DISTANCE~combout\(12) & ((!\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~7\))))
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~12COUT1_33\ = CARRY((!\DISTANCE~combout\(12) & ((!\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~7COUT1_31\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DISTANCE~combout\(12),
	cin0 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~7\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~7COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~10_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~12\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~12COUT1_33\);

-- Location: LC_X16_Y4_N7
\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~15\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~15_combout\ = (\DISTANCE~combout\(13) $ ((!\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~12\)))
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~17\ = CARRY(((\DISTANCE~combout\(13) & !\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~12\)))
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~17COUT1_35\ = CARRY(((\DISTANCE~combout\(13) & !\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~12COUT1_33\)))

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
	datab => \DISTANCE~combout\(13),
	cin0 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~12\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~12COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~15_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~17\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~17COUT1_35\);

-- Location: LC_X16_Y4_N8
\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~17\)))

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
	cin0 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~17\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~17COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\);

-- Location: LC_X16_Y4_N3
\Div0|auto_generated|divider|divider|StageOut[40]~26\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~26_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~15_combout\ & \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\)))

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
	datac => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~15_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~26_combout\);

-- Location: LC_X16_Y4_N2
\Div0|auto_generated|divider|divider|StageOut[40]~25\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~25_combout\ = (((\DISTANCE~combout\(13) & !\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \DISTANCE~combout\(13),
	datad => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~25_combout\);

-- Location: LC_X16_Y4_N0
\Div0|auto_generated|divider|divider|StageOut[39]~49\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[39]~49_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\)))

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
	datac => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[39]~49_combout\);

-- Location: LC_X16_Y4_N1
\Div0|auto_generated|divider|divider|StageOut[39]~48\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[39]~48_combout\ = (((\DISTANCE~combout\(12) & !\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \DISTANCE~combout\(12),
	datad => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[39]~48_combout\);

-- Location: LC_X16_Y3_N3
\Div0|auto_generated|divider|divider|StageOut[38]~46\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[38]~46_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~5_combout\ & \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\)))

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
	datac => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~5_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[38]~46_combout\);

-- Location: LC_X16_Y5_N2
\Div0|auto_generated|divider|divider|StageOut[38]~45\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[38]~45_combout\ = (((!\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\ & \DISTANCE~combout\(11))))

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
	datac => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\,
	datad => \DISTANCE~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[38]~45_combout\);

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DISTANCE[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DISTANCE(9),
	combout => \DISTANCE~combout\(9));

-- Location: LC_X15_Y3_N0
\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella\(2) = ((\DISTANCE~combout\(9)))
-- \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUT\ = CARRY(((\DISTANCE~combout\(9))))
-- \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUTCOUT1_35\ = CARRY(((\DISTANCE~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \DISTANCE~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella\(2),
	cout0 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUT\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUTCOUT1_35\);

-- Location: LC_X15_Y3_N1
\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUT\)))

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
	cin0 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUT\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~COUTCOUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27_combout\);

-- Location: LC_X16_Y3_N0
\Div0|auto_generated|divider|divider|StageOut[37]~42\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[37]~42_combout\ = ((\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(2)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\ & (\DISTANCE~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DISTANCE~combout\(10),
	datab => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[37]~42_combout\);

-- Location: LC_X16_Y3_N5
\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~10\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~10_combout\ = \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27_combout\ $ ((\Div0|auto_generated|divider|divider|StageOut[37]~42_combout\))
-- \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27_combout\ & (\Div0|auto_generated|divider|divider|StageOut[37]~42_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12COUT1_37\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27_combout\ & (\Div0|auto_generated|divider|divider|StageOut[37]~42_combout\)))

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
	dataa => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~27_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[37]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~10_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12COUT1_37\);

-- Location: LC_X16_Y3_N6
\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~15\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~15_combout\ = \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12\ $ (((!\Div0|auto_generated|divider|divider|StageOut[38]~46_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[38]~45_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[38]~46_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[38]~45_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12\)))
-- \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17COUT1_39\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[38]~46_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[38]~45_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12COUT1_37\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[38]~46_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[38]~45_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~12COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~15_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17COUT1_39\);

-- Location: LC_X16_Y3_N7
\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~20\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~20_combout\ = \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17\ $ (((!\Div0|auto_generated|divider|divider|StageOut[39]~49_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[39]~48_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17\ & ((\Div0|auto_generated|divider|divider|StageOut[39]~49_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[39]~48_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22COUT1_41\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17COUT1_39\ & ((\Div0|auto_generated|divider|divider|StageOut[39]~49_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[39]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[39]~49_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[39]~48_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~17COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~20_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22COUT1_41\);

-- Location: LC_X16_Y3_N8
\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7_cout0\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[40]~26_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[40]~25_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22\)))
-- \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7COUT1_43\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[40]~26_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[40]~25_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22COUT1_41\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[40]~26_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[40]~25_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~22COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~5\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7COUT1_43\);

-- Location: LC_X16_Y3_N9
\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ = (((!\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7_cout0\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~7COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\);

-- Location: LC_X15_Y4_N3
\Div0|auto_generated|divider|divider|StageOut[47]~24\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[47]~24_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~20_combout\))))

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
	dataa => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[47]~24_combout\);

-- Location: LC_X16_Y4_N4
\Div0|auto_generated|divider|divider|StageOut[47]~23\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[47]~23_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~10_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\ & ((\DISTANCE~combout\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2230",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	datac => \DISTANCE~combout\(12),
	datad => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[47]~23_combout\);

-- Location: LC_X15_Y4_N4
\Div0|auto_generated|divider|divider|StageOut[46]~47\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[46]~47_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~15_combout\)))

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
	datac => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[46]~47_combout\);

-- Location: LC_X16_Y4_N9
\Div0|auto_generated|divider|divider|StageOut[46]~20\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[46]~20_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~5_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\ & ((\DISTANCE~combout\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3120",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~5_combout\,
	datad => \DISTANCE~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[46]~20_combout\);

-- Location: LC_X16_Y3_N4
\Div0|auto_generated|divider|divider|StageOut[45]~16\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~16_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\ & 
-- ((!\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(2)))) # (!\Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\ & (\DISTANCE~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0232",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DISTANCE~combout\(10),
	datab => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella[3]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5|add_sub_cella\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~16_combout\);

-- Location: LC_X15_Y4_N0
\Div0|auto_generated|divider|divider|StageOut[45]~43\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~43_combout\ = ((\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~10_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\)))

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
	datab => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~43_combout\);

-- Location: LC_X15_Y3_N6
\Div0|auto_generated|divider|divider|StageOut[44]~36\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[44]~36_combout\ = ((\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella\(2))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & ((\DISTANCE~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella\(2),
	datac => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	datad => \DISTANCE~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[44]~36_combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DISTANCE[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DISTANCE(8),
	combout => \DISTANCE~combout\(8));

-- Location: LC_X14_Y3_N1
\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella\(2) = (\DISTANCE~combout\(8))
-- \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUT\ = CARRY((\DISTANCE~combout\(8)))
-- \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUTCOUT1_43\ = CARRY((\DISTANCE~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DISTANCE~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella\(2),
	cout0 => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUT\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUTCOUT1_43\);

-- Location: LC_X14_Y3_N2
\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUT\)))

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
	cin0 => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUT\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~COUTCOUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27_combout\);

-- Location: LC_X15_Y4_N5
\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~10\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~10_combout\ = \Div0|auto_generated|divider|divider|StageOut[44]~36_combout\ $ ((\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27_combout\))
-- \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[44]~36_combout\ & (\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12COUT1_35\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[44]~36_combout\ & (\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27_combout\)))

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
	dataa => \Div0|auto_generated|divider|divider|StageOut[44]~36_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~10_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12COUT1_35\);

-- Location: LC_X15_Y4_N6
\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~15\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~15_combout\ = \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12\ $ (((!\Div0|auto_generated|divider|divider|StageOut[45]~16_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[45]~43_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[45]~16_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[45]~43_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12\)))
-- \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17COUT1_37\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[45]~16_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[45]~43_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12COUT1_35\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[45]~16_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[45]~43_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~12COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~15_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17COUT1_37\);

-- Location: LC_X15_Y4_N7
\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~20\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~20_combout\ = \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17\ $ (((!\Div0|auto_generated|divider|divider|StageOut[46]~47_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[46]~20_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17\ & ((\Div0|auto_generated|divider|divider|StageOut[46]~47_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[46]~20_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22COUT1_39\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17COUT1_37\ & ((\Div0|auto_generated|divider|divider|StageOut[46]~47_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[46]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[46]~47_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[46]~20_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~17COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~20_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22COUT1_39\);

-- Location: LC_X15_Y4_N8
\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7_cout0\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[47]~24_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[47]~23_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22\)))
-- \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7COUT1_41\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[47]~24_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[47]~23_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22COUT1_39\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[47]~24_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[47]~23_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~22COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~5\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7COUT1_41\);

-- Location: LC_X15_Y4_N9
\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ = (((!\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7_cout0\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~7COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\);

-- Location: LC_X14_Y4_N5
\Div0|auto_generated|divider|divider|StageOut[54]~22\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~22_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~20_combout\)))

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
	datac => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~22_combout\);

-- Location: LC_X15_Y4_N2
\Div0|auto_generated|divider|divider|StageOut[54]~21\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~21_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[46]~20_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3230",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[46]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~21_combout\);

-- Location: LC_X15_Y4_N1
\Div0|auto_generated|divider|divider|StageOut[53]~17\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~17_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[45]~16_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[45]~16_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~17_combout\);

-- Location: LC_X14_Y4_N7
\Div0|auto_generated|divider|divider|StageOut[53]~44\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~44_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~15_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\))))

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
	dataa => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~15_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~44_combout\);

-- Location: LC_X14_Y4_N8
\Div0|auto_generated|divider|divider|StageOut[52]~37\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~37_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~10_combout\)))

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
	datac => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~37_combout\);

-- Location: LC_X15_Y3_N4
\Div0|auto_generated|divider|divider|StageOut[52]~8\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~8_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella\(2))) # (!\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\ & ((\DISTANCE~combout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1510",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella\(2),
	datac => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	datad => \DISTANCE~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~8_combout\);

-- Location: LC_X14_Y3_N6
\Div0|auto_generated|divider|divider|StageOut[51]~40\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~40_combout\ = ((\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella\(2))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & ((\DISTANCE~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella\(2),
	datac => \DISTANCE~combout\(8),
	datad => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~40_combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DISTANCE[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DISTANCE(7),
	combout => \DISTANCE~combout\(7));

-- Location: LC_X13_Y4_N3
\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella\(2) = ((\DISTANCE~combout\(7)))
-- \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUT\ = CARRY(((\DISTANCE~combout\(7))))
-- \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUTCOUT1_35\ = CARRY(((\DISTANCE~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \DISTANCE~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella\(2),
	cout0 => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUT\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUTCOUT1_35\);

-- Location: LC_X13_Y4_N4
\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUT\)))

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
	cin0 => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUT\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[2]~COUTCOUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27_combout\);

-- Location: LC_X14_Y4_N0
\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~15\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~15_combout\ = \Div0|auto_generated|divider|divider|StageOut[51]~40_combout\ $ ((\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27_combout\))
-- \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[51]~40_combout\ & (\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17COUT1_37\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[51]~40_combout\ & (\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27_combout\)))

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
	dataa => \Div0|auto_generated|divider|divider|StageOut[51]~40_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~15_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17COUT1_37\);

-- Location: LC_X14_Y4_N1
\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~10\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~10_combout\ = \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17\ $ (((!\Div0|auto_generated|divider|divider|StageOut[52]~37_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[52]~8_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[52]~37_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[52]~8_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17\)))
-- \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12COUT1_39\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[52]~37_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[52]~8_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17COUT1_37\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[52]~37_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[52]~8_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~17COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~10_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12COUT1_39\);

-- Location: LC_X14_Y4_N2
\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~20\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~20_combout\ = \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12\ $ (((!\Div0|auto_generated|divider|divider|StageOut[53]~17_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[53]~44_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12\ & ((\Div0|auto_generated|divider|divider|StageOut[53]~17_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[53]~44_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22COUT1_41\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12COUT1_39\ & ((\Div0|auto_generated|divider|divider|StageOut[53]~17_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[53]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[53]~17_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[53]~44_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~12COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~20_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22COUT1_41\);

-- Location: LC_X14_Y4_N3
\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7_cout0\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[54]~22_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[54]~21_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22\)))
-- \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7COUT1_43\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[54]~22_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[54]~21_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22COUT1_41\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[54]~22_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[54]~21_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~22COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~5\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7COUT1_43\);

-- Location: LC_X14_Y4_N4
\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ = (((!\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7_cout0\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~7COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\);

-- Location: LC_X14_Y4_N6
\Div0|auto_generated|divider|divider|StageOut[61]~18\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[61]~18_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[53]~17_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5540",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~15_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[53]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[61]~18_combout\);

-- Location: LC_X13_Y3_N9
\Div0|auto_generated|divider|divider|StageOut[61]~19\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[61]~19_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~20_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[61]~19_combout\);

-- Location: LC_X13_Y4_N5
\Div0|auto_generated|divider|divider|StageOut[60]~38\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[60]~38_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~10_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[60]~38_combout\);

-- Location: LC_X14_Y4_N9
\Div0|auto_generated|divider|divider|StageOut[60]~9\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[60]~9_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[52]~8_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5444",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[52]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[60]~9_combout\);

-- Location: LC_X13_Y3_N8
\Div0|auto_generated|divider|divider|StageOut[59]~41\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[59]~41_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~15_combout\ & \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\)))

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
	datac => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~15_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[59]~41_combout\);

-- Location: LC_X14_Y3_N4
\Div0|auto_generated|divider|divider|StageOut[59]~12\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[59]~12_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella\(2))) # (!\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\ & ((\DISTANCE~combout\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1150",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella\(2),
	datac => \DISTANCE~combout\(8),
	datad => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[59]~12_combout\);

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DISTANCE[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DISTANCE(6),
	combout => \DISTANCE~combout\(6));

-- Location: LC_X13_Y1_N7
\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella\(2) = ((\DISTANCE~combout\(6)))
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~COUT\ = CARRY(((\DISTANCE~combout\(6))))
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~COUTCOUT1_43\ = CARRY(((\DISTANCE~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \DISTANCE~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella\(2),
	cout0 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~COUT\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~COUTCOUT1_43\);

-- Location: LC_X13_Y1_N8
\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~COUT\)))

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
	cin0 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~COUT\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[2]~COUTCOUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27_combout\);

-- Location: LC_X13_Y4_N6
\Div0|auto_generated|divider|divider|StageOut[58]~27\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[58]~27_combout\ = ((\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella\(2))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & ((\DISTANCE~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella\(2),
	datac => \DISTANCE~combout\(7),
	datad => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[58]~27_combout\);

-- Location: LC_X13_Y3_N0
\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~10\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~10_combout\ = \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27_combout\ $ ((\Div0|auto_generated|divider|divider|StageOut[58]~27_combout\))
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27_combout\ & (\Div0|auto_generated|divider|divider|StageOut[58]~27_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12COUT1_35\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27_combout\ & (\Div0|auto_generated|divider|divider|StageOut[58]~27_combout\)))

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
	dataa => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~27_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[58]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~10_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12COUT1_35\);

-- Location: LC_X13_Y3_N1
\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~20\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~20_combout\ = \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12\ $ (((!\Div0|auto_generated|divider|divider|StageOut[59]~41_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[59]~12_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[59]~41_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[59]~12_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12\)))
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22COUT1_37\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[59]~41_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[59]~12_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12COUT1_35\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[59]~41_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[59]~12_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~12COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~20_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22COUT1_37\);

-- Location: LC_X13_Y3_N2
\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~15\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~15_combout\ = \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22\ $ (((!\Div0|auto_generated|divider|divider|StageOut[60]~38_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[60]~9_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22\ & ((\Div0|auto_generated|divider|divider|StageOut[60]~38_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[60]~9_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17COUT1_39\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22COUT1_37\ & ((\Div0|auto_generated|divider|divider|StageOut[60]~38_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[60]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[60]~38_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[60]~9_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~22COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~15_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17COUT1_39\);

-- Location: LC_X13_Y3_N3
\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7_cout0\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[61]~18_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[61]~19_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17\)))
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7COUT1_41\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[61]~18_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[61]~19_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17COUT1_39\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[61]~18_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[61]~19_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~17COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~5\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7COUT1_41\);

-- Location: LC_X13_Y3_N4
\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\ = (((!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7_cout0\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~7COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\);

-- Location: LC_X13_Y2_N0
\Div0|auto_generated|divider|divider|StageOut[65]~31\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[65]~31_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella\(2))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\ & (((\DISTANCE~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7272",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella\(2),
	datac => \DISTANCE~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[65]~31_combout\);

-- Location: LC_X13_Y2_N5
\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~15\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~15_combout\ = \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~27_combout\ $ ((\Div0|auto_generated|divider|divider|StageOut[65]~31_combout\))
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~17\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~27_combout\ & (\Div0|auto_generated|divider|divider|StageOut[65]~31_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~17COUT1_35\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~27_combout\ & (\Div0|auto_generated|divider|divider|StageOut[65]~31_combout\)))

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
	dataa => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~27_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[65]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~15_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~17\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~17COUT1_35\);

-- Location: LC_X13_Y3_N7
\Div0|auto_generated|divider|divider|StageOut[68]~11\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[68]~11_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~15_combout\)))

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
	datac => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[68]~11_combout\);

-- Location: LC_X13_Y4_N2
\Div0|auto_generated|divider|divider|StageOut[68]~10\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[68]~10_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[60]~9_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5450",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[60]~9_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[68]~10_combout\);

-- Location: LC_X13_Y2_N3
\Div0|auto_generated|divider|divider|StageOut[67]~39\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[67]~39_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~20_combout\)))

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
	datac => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[67]~39_combout\);

-- Location: LC_X13_Y3_N5
\Div0|auto_generated|divider|divider|StageOut[67]~13\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[67]~13_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[59]~12_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~15_combout\ & \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5444",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[59]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~15_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[67]~13_combout\);

-- Location: LC_X13_Y3_N6
\Div0|auto_generated|divider|divider|StageOut[66]~28\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[66]~28_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~10_combout\))))

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
	dataa => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[66]~28_combout\);

-- Location: LC_X13_Y4_N8
\Div0|auto_generated|divider|divider|StageOut[66]~0\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[66]~0_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & 
-- ((!\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella\(2)))) # (!\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\ & (\DISTANCE~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1054",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	datac => \DISTANCE~combout\(7),
	datad => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[66]~0_combout\);

-- Location: LC_X13_Y2_N6
\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~10\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~10_combout\ = \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~17\ $ (((!\Div0|auto_generated|divider|divider|StageOut[66]~28_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[66]~0_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~12\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[66]~28_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[66]~0_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~17\)))
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~12COUT1_37\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[66]~28_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[66]~0_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~17COUT1_35\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[66]~28_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[66]~0_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~17\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~17COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~10_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~12\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~12COUT1_37\);

-- Location: LC_X13_Y2_N7
\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~20\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~20_combout\ = \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~12\ $ (((!\Div0|auto_generated|divider|divider|StageOut[67]~39_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[67]~13_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~22\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~12\ & ((\Div0|auto_generated|divider|divider|StageOut[67]~39_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[67]~13_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~22COUT1_39\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~12COUT1_37\ & ((\Div0|auto_generated|divider|divider|StageOut[67]~39_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[67]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[67]~39_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[67]~13_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~12\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~12COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~20_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~22\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~22COUT1_39\);

-- Location: LC_X13_Y2_N8
\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~7\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~7_cout0\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[68]~11_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[68]~10_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~22\)))
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~7COUT1_41\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[68]~11_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[68]~10_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~22COUT1_39\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[68]~11_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[68]~10_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~22\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~22COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~5\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~7_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~7COUT1_41\);

-- Location: LC_X13_Y2_N9
\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\ = (((!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~7_cout0\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~7_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~7COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\);

-- Location: LC_X13_Y2_N4
\Div0|auto_generated|divider|divider|StageOut[73]~4\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[73]~4_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella\(2))) # (!\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\ & ((\DISTANCE~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0072",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella\(2),
	datac => \DISTANCE~combout\(6),
	datad => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[73]~4_combout\);

-- Location: LC_X13_Y2_N1
\Div0|auto_generated|divider|divider|StageOut[75]~14\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[75]~14_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[67]~13_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~20_combout\ & \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[67]~13_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~20_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[75]~14_combout\);

-- Location: LC_X14_Y2_N9
\Div0|auto_generated|divider|divider|StageOut[75]~15\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[75]~15_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~20_combout\)))

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
	datac => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[75]~15_combout\);

-- Location: LC_X14_Y2_N6
\Div0|auto_generated|divider|divider|StageOut[74]~29\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[74]~29_combout\ = ((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~10_combout\ & (\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\)))

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
	datab => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[74]~29_combout\);

-- Location: LC_X13_Y2_N2
\Div0|auto_generated|divider|divider|StageOut[74]~1\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[74]~1_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[66]~0_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3320",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[66]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[74]~1_combout\);

-- Location: LC_X14_Y2_N8
\Div0|auto_generated|divider|divider|StageOut[73]~32\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[73]~32_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~15_combout\)))

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
	datac => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[73]~32_combout\);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DISTANCE[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DISTANCE(4),
	combout => \DISTANCE~combout\(4));

-- Location: LC_X15_Y1_N6
\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella\(2) = ((\DISTANCE~combout\(4)))
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~COUT\ = CARRY(((\DISTANCE~combout\(4))))
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~COUTCOUT1_43\ = CARRY(((\DISTANCE~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \DISTANCE~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella\(2),
	cout0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~COUT\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~COUTCOUT1_43\);

-- Location: LC_X15_Y1_N7
\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~27\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~27_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~COUT\)))

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
	cin0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~COUT\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[2]~COUTCOUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~27_combout\);

-- Location: LC_X14_Y1_N2
\Div0|auto_generated|divider|divider|StageOut[72]~51\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[72]~51_combout\ = ((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella\(2)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\ & (\DISTANCE~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \DISTANCE~combout\(5),
	datac => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella\(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[72]~51_combout\);

-- Location: LC_X14_Y2_N0
\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~20\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~20_combout\ = \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~27_combout\ $ ((\Div0|auto_generated|divider|divider|StageOut[72]~51_combout\))
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~22\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~27_combout\ & (\Div0|auto_generated|divider|divider|StageOut[72]~51_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~22COUT1_35\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~27_combout\ & (\Div0|auto_generated|divider|divider|StageOut[72]~51_combout\)))

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
	dataa => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~27_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[72]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~20_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~22\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~22COUT1_35\);

-- Location: LC_X14_Y2_N1
\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~15\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~15_combout\ = \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~22\ $ (((!\Div0|auto_generated|divider|divider|StageOut[73]~32_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[73]~4_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~17\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[73]~32_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[73]~4_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~22\)))
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~17COUT1_37\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[73]~32_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[73]~4_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~22COUT1_35\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[73]~32_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[73]~4_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~22\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~22COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~15_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~17\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~17COUT1_37\);

-- Location: LC_X14_Y2_N2
\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~10\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~10_combout\ = \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~17\ $ (((!\Div0|auto_generated|divider|divider|StageOut[74]~29_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[74]~1_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~12\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~17\ & ((\Div0|auto_generated|divider|divider|StageOut[74]~29_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[74]~1_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~12COUT1_39\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~17COUT1_37\ & ((\Div0|auto_generated|divider|divider|StageOut[74]~29_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[74]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[74]~29_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[74]~1_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~17\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~17COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~10_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~12\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~12COUT1_39\);

-- Location: LC_X14_Y2_N3
\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~7\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~7_cout0\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[75]~14_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[75]~15_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~12\)))
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~7COUT1_41\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[75]~14_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[75]~15_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~12COUT1_39\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[75]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[75]~15_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~12\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~12COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~5\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~7_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~7COUT1_41\);

-- Location: LC_X14_Y2_N4
\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\ = (((!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~7_cout0\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~7_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~7COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\);

-- Location: LC_X14_Y2_N5
\Div0|auto_generated|divider|divider|StageOut[81]~5\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[81]~5_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[73]~4_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~15_combout\ & \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~15_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[73]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[81]~5_combout\);

-- Location: LC_X15_Y2_N9
\Div0|auto_generated|divider|divider|StageOut[81]~30\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[81]~30_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~15_combout\ & \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\)))

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
	datac => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~15_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[81]~30_combout\);

-- Location: LC_X14_Y1_N5
\Div0|auto_generated|divider|divider|StageOut[80]~33\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[80]~33_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\ & 
-- ((!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella\(2)))) # (!\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\ & (\DISTANCE~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0544",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\,
	datab => \DISTANCE~combout\(5),
	datac => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella\(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[80]~33_combout\);

-- Location: LC_X15_Y2_N7
\Div0|auto_generated|divider|divider|StageOut[80]~50\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[80]~50_combout\ = ((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~20_combout\))))

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
	datab => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[80]~50_combout\);

-- Location: LC_X15_Y1_N0
\Div0|auto_generated|divider|divider|StageOut[79]~54\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[79]~54_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella\(2))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\ & (((\DISTANCE~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5c5c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella\(2),
	datab => \DISTANCE~combout\(4),
	datac => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[79]~54_combout\);

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DISTANCE[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DISTANCE(3),
	combout => \DISTANCE~combout\(3));

-- Location: LC_X15_Y1_N1
\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella\(2) = (\DISTANCE~combout\(3))
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~COUT\ = CARRY((\DISTANCE~combout\(3)))
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~COUTCOUT1_43\ = CARRY((\DISTANCE~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DISTANCE~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella\(2),
	cout0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~COUT\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~COUTCOUT1_43\);

-- Location: LC_X15_Y1_N2
\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~27\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~27_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~COUT\)))

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
	cin0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~COUT\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[2]~COUTCOUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~27_combout\);

-- Location: LC_X15_Y2_N0
\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~20\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~20_combout\ = \Div0|auto_generated|divider|divider|StageOut[79]~54_combout\ $ ((\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~27_combout\))
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~22\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[79]~54_combout\ & (\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~27_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~22COUT1_35\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[79]~54_combout\ & (\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~27_combout\)))

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
	dataa => \Div0|auto_generated|divider|divider|StageOut[79]~54_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~20_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~22\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~22COUT1_35\);

-- Location: LC_X15_Y2_N1
\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~15\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~15_combout\ = \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~22\ $ (((!\Div0|auto_generated|divider|divider|StageOut[80]~33_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[80]~50_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~17\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[80]~33_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[80]~50_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~22\)))
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~17COUT1_37\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[80]~33_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[80]~50_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~22COUT1_35\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e101",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[80]~33_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[80]~50_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~22\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~22COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~15_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~17\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~17COUT1_37\);

-- Location: LC_X15_Y2_N2
\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~10\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~10_combout\ = \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~17\ $ (((!\Div0|auto_generated|divider|divider|StageOut[81]~5_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[81]~30_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~12\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~17\ & ((\Div0|auto_generated|divider|divider|StageOut[81]~5_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[81]~30_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~12COUT1_39\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~17COUT1_37\ & ((\Div0|auto_generated|divider|divider|StageOut[81]~5_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[81]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "e10e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[81]~5_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[81]~30_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~17\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~17COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~10_combout\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~12\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~12COUT1_39\);

-- Location: LC_X15_Y2_N8
\Div0|auto_generated|divider|divider|StageOut[82]~3\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[82]~3_combout\ = ((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~10_combout\))))

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
	datab => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[82]~3_combout\);

-- Location: LC_X14_Y2_N7
\Div0|auto_generated|divider|divider|StageOut[82]~2\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[82]~2_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[74]~1_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5540",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[74]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[82]~2_combout\);

-- Location: LC_X15_Y2_N3
\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~7\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~7_cout0\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[82]~3_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[82]~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~12\)))
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~7COUT1_41\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[82]~3_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[82]~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~12COUT1_39\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[82]~3_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[82]~2_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~12\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~12COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~5\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~7_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~7COUT1_41\);

-- Location: LC_X15_Y2_N4
\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~0\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~0_combout\ = (((!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~7_cout0\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~7_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~7COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~0_combout\);

-- Location: LC_X16_Y2_N4
\Div0|auto_generated|divider|divider|StageOut[89]~7\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[89]~7_combout\ = ((\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~0_combout\))))

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
	datab => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[89]~7_combout\);

-- Location: LC_X15_Y2_N6
\Div0|auto_generated|divider|divider|StageOut[89]~6\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[89]~6_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~0_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[81]~5_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[81]~5_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~15_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[89]~6_combout\);

-- Location: LC_X15_Y2_N5
\Div0|auto_generated|divider|divider|StageOut[88]~34\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[88]~34_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~0_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[80]~33_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~20_combout\ & \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~20_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[80]~33_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[88]~34_combout\);

-- Location: LC_X16_Y2_N0
\Div0|auto_generated|divider|divider|StageOut[88]~35\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[88]~35_combout\ = (((\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~15_combout\ & \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~0_combout\)))

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
	datac => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~15_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[88]~35_combout\);

-- Location: LC_X15_Y1_N5
\Div0|auto_generated|divider|divider|StageOut[87]~52\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[87]~52_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella\(2))) # (!\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\ & ((\DISTANCE~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "005c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella\(2),
	datab => \DISTANCE~combout\(4),
	datac => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[87]~52_combout\);

-- Location: LC_X16_Y2_N2
\Div0|auto_generated|divider|divider|StageOut[87]~53\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[87]~53_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~20_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[87]~53_combout\);

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DISTANCE[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DISTANCE(2),
	combout => \DISTANCE~combout\(2));

-- Location: LC_X15_Y1_N9
\Div0|auto_generated|divider|divider|StageOut[86]~55\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[86]~55_combout\ = ((\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~0_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella\(2)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~0_combout\ & (\DISTANCE~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DISTANCE~combout\(3),
	datab => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella\(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|StageOut[86]~55_combout\);

-- Location: LC_X16_Y2_N5
\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~22\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~22_cout0\ = CARRY((\DISTANCE~combout\(2) & (\Div0|auto_generated|divider|divider|StageOut[86]~55_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~22COUT1_31\ = CARRY((\DISTANCE~combout\(2) & (\Div0|auto_generated|divider|divider|StageOut[86]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff88",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DISTANCE~combout\(2),
	datab => \Div0|auto_generated|divider|divider|StageOut[86]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~20\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~22_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~22COUT1_31\);

-- Location: LC_X16_Y2_N6
\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~17\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~17_cout0\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[87]~52_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[87]~53_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~22_cout0\)))
-- \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~17COUT1_33\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[87]~52_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[87]~53_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~22COUT1_31\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[87]~52_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[87]~53_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~22_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~22COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~15\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~17_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~17COUT1_33\);

-- Location: LC_X16_Y2_N7
\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~12\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~12_cout0\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~17_cout0\ & ((\Div0|auto_generated|divider|divider|StageOut[88]~34_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[88]~35_combout\))))
-- \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~12COUT1_35\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~17COUT1_33\ & ((\Div0|auto_generated|divider|divider|StageOut[88]~34_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[88]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff0e",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[88]~34_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[88]~35_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~17_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~17COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~10\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~12_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~12COUT1_35\);

-- Location: LC_X16_Y2_N8
\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~7\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~7_cout0\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[89]~7_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[89]~6_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~12_cout0\)))
-- \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~7COUT1_37\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[89]~7_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[89]~6_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~12COUT1_35\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff01",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[89]~7_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[89]~6_combout\,
	cin0 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~12_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~12COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~5\,
	cout0 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~7_cout0\,
	cout1 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~7COUT1_37\);

-- Location: LC_X16_Y2_N9
\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~0\ : maxv_lcell
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~0_combout\ = (((!\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~7_cout0\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~7_cout0\,
	cin1 => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~7COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~0_combout\);

-- Location: LC_X12_Y3_N2
\process_1~1\ : maxv_lcell
-- Equation(s):
-- \process_1~1_combout\ = (\RUN~combout\ & (((!\running~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RUN~combout\,
	datad => \running~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_1~1_combout\);

-- Location: LC_X14_Y6_N9
\req_steps[0]\ : maxv_lcell
-- Equation(s):
-- req_steps(0) = ((GLOBAL(\process_1~1_combout\) & (\Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~0_combout\)) # (!GLOBAL(\process_1~1_combout\) & ((req_steps(0)))))

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
	datab => \Div0|auto_generated|divider|divider|add_sub_13|add_sub_cella[3]~0_combout\,
	datac => \process_1~1_combout\,
	datad => req_steps(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => req_steps(0));

-- Location: LC_X14_Y6_N0
\req_steps[1]\ : maxv_lcell
-- Equation(s):
-- req_steps(1) = ((GLOBAL(\process_1~1_combout\) & (\Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~0_combout\)) # (!GLOBAL(\process_1~1_combout\) & ((req_steps(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12|add_sub_cella[3]~0_combout\,
	datac => req_steps(1),
	datad => \process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => req_steps(1));

-- Location: LC_X15_Y6_N5
\Equal1~0\ : maxv_lcell
-- Equation(s):
-- \Equal1~0_combout\ = (a_steps(1) & (req_steps(1) & (a_steps(0) $ (!req_steps(0))))) # (!a_steps(1) & (!req_steps(1) & (a_steps(0) $ (!req_steps(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => a_steps(1),
	datab => a_steps(0),
	datac => req_steps(0),
	datad => req_steps(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~0_combout\);

-- Location: LC_X16_Y6_N2
\a_steps[2]\ : maxv_lcell
-- Equation(s):
-- a_steps(2) = DFFEAS((a_steps(2) $ ((!\a_steps[1]~3\))), GLOBAL(\stepper_clk~regout\), VCC, , \a_steps[1]~16_combout\, , , \process_1~0_combout\, )
-- \a_steps[2]~5\ = CARRY(((a_steps(2) & !\a_steps[1]~3\)))
-- \a_steps[2]~5COUT1_29\ = CARRY(((a_steps(2) & !\a_steps[1]~3COUT1_27\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \stepper_clk~regout\,
	datab => a_steps(2),
	aclr => GND,
	sclr => \process_1~0_combout\,
	ena => \a_steps[1]~16_combout\,
	cin0 => \a_steps[1]~3\,
	cin1 => \a_steps[1]~3COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_steps(2),
	cout0 => \a_steps[2]~5\,
	cout1 => \a_steps[2]~5COUT1_29\);

-- Location: LC_X16_Y6_N3
\a_steps[3]\ : maxv_lcell
-- Equation(s):
-- a_steps(3) = DFFEAS(a_steps(3) $ ((((\a_steps[2]~5\)))), GLOBAL(\stepper_clk~regout\), VCC, , \a_steps[1]~16_combout\, , , \process_1~0_combout\, )
-- \a_steps[3]~7\ = CARRY(((!\a_steps[2]~5\)) # (!a_steps(3)))
-- \a_steps[3]~7COUT1_31\ = CARRY(((!\a_steps[2]~5COUT1_29\)) # (!a_steps(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \stepper_clk~regout\,
	dataa => a_steps(3),
	aclr => GND,
	sclr => \process_1~0_combout\,
	ena => \a_steps[1]~16_combout\,
	cin0 => \a_steps[2]~5\,
	cin1 => \a_steps[2]~5COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_steps(3),
	cout0 => \a_steps[3]~7\,
	cout1 => \a_steps[3]~7COUT1_31\);

-- Location: LC_X16_Y6_N4
\a_steps[4]\ : maxv_lcell
-- Equation(s):
-- a_steps(4) = DFFEAS(a_steps(4) $ ((((!\a_steps[3]~7\)))), GLOBAL(\stepper_clk~regout\), VCC, , \a_steps[1]~16_combout\, , , \process_1~0_combout\, )
-- \a_steps[4]~11\ = CARRY((a_steps(4) & ((!\a_steps[3]~7COUT1_31\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \stepper_clk~regout\,
	dataa => a_steps(4),
	aclr => GND,
	sclr => \process_1~0_combout\,
	ena => \a_steps[1]~16_combout\,
	cin0 => \a_steps[3]~7\,
	cin1 => \a_steps[3]~7COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_steps(4),
	cout => \a_steps[4]~11\);

-- Location: LC_X16_Y6_N5
\a_steps[5]\ : maxv_lcell
-- Equation(s):
-- a_steps(5) = DFFEAS(a_steps(5) $ ((((\a_steps[4]~11\)))), GLOBAL(\stepper_clk~regout\), VCC, , \a_steps[1]~16_combout\, , , \process_1~0_combout\, )
-- \a_steps[5]~9\ = CARRY(((!\a_steps[4]~11\)) # (!a_steps(5)))
-- \a_steps[5]~9COUT1_33\ = CARRY(((!\a_steps[4]~11\)) # (!a_steps(5)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \stepper_clk~regout\,
	dataa => a_steps(5),
	aclr => GND,
	sclr => \process_1~0_combout\,
	ena => \a_steps[1]~16_combout\,
	cin => \a_steps[4]~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_steps(5),
	cout0 => \a_steps[5]~9\,
	cout1 => \a_steps[5]~9COUT1_33\);

-- Location: LC_X16_Y6_N6
\a_steps[6]\ : maxv_lcell
-- Equation(s):
-- a_steps(6) = DFFEAS(a_steps(6) $ ((((!(!\a_steps[4]~11\ & \a_steps[5]~9\) # (\a_steps[4]~11\ & \a_steps[5]~9COUT1_33\))))), GLOBAL(\stepper_clk~regout\), VCC, , \a_steps[1]~16_combout\, , , \process_1~0_combout\, )
-- \a_steps[6]~15\ = CARRY((a_steps(6) & ((!\a_steps[5]~9\))))
-- \a_steps[6]~15COUT1_35\ = CARRY((a_steps(6) & ((!\a_steps[5]~9COUT1_33\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \stepper_clk~regout\,
	dataa => a_steps(6),
	aclr => GND,
	sclr => \process_1~0_combout\,
	ena => \a_steps[1]~16_combout\,
	cin => \a_steps[4]~11\,
	cin0 => \a_steps[5]~9\,
	cin1 => \a_steps[5]~9COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_steps(6),
	cout0 => \a_steps[6]~15\,
	cout1 => \a_steps[6]~15COUT1_35\);

-- Location: LC_X16_Y6_N7
\a_steps[7]\ : maxv_lcell
-- Equation(s):
-- a_steps(7) = DFFEAS((a_steps(7) $ (((!\a_steps[4]~11\ & \a_steps[6]~15\) # (\a_steps[4]~11\ & \a_steps[6]~15COUT1_35\)))), GLOBAL(\stepper_clk~regout\), VCC, , \a_steps[1]~16_combout\, , , \process_1~0_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \stepper_clk~regout\,
	datab => a_steps(7),
	aclr => GND,
	sclr => \process_1~0_combout\,
	ena => \a_steps[1]~16_combout\,
	cin => \a_steps[4]~11\,
	cin0 => \a_steps[6]~15\,
	cin1 => \a_steps[6]~15COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_steps(7));

-- Location: LC_X14_Y6_N6
\req_steps[6]\ : maxv_lcell
-- Equation(s):
-- req_steps(6) = ((GLOBAL(\process_1~1_combout\) & ((\Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\))) # (!GLOBAL(\process_1~1_combout\) & (req_steps(6))))

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
	dataa => req_steps(6),
	datac => \Div0|auto_generated|divider|divider|add_sub_7|add_sub_cella[3]~0_combout\,
	datad => \process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => req_steps(6));

-- Location: LC_X14_Y6_N7
\req_steps[7]\ : maxv_lcell
-- Equation(s):
-- req_steps(7) = ((GLOBAL(\process_1~1_combout\) & (\Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\)) # (!GLOBAL(\process_1~1_combout\) & ((req_steps(7)))))

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
	datab => \Div0|auto_generated|divider|divider|add_sub_6|add_sub_cella[3]~0_combout\,
	datac => req_steps(7),
	datad => \process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => req_steps(7));

-- Location: LC_X15_Y6_N2
\Equal1~3\ : maxv_lcell
-- Equation(s):
-- \Equal1~3_combout\ = (a_steps(7) & (req_steps(7) & (req_steps(6) $ (!a_steps(6))))) # (!a_steps(7) & (!req_steps(7) & (req_steps(6) $ (!a_steps(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => a_steps(7),
	datab => req_steps(6),
	datac => a_steps(6),
	datad => req_steps(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~3_combout\);

-- Location: LC_X14_Y6_N5
\req_steps[5]\ : maxv_lcell
-- Equation(s):
-- req_steps(5) = ((GLOBAL(\process_1~1_combout\) & (\Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\)) # (!GLOBAL(\process_1~1_combout\) & ((req_steps(5)))))

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
	datab => \Div0|auto_generated|divider|divider|add_sub_8|add_sub_cella[3]~0_combout\,
	datac => req_steps(5),
	datad => \process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => req_steps(5));

-- Location: LC_X14_Y6_N1
\req_steps[4]\ : maxv_lcell
-- Equation(s):
-- req_steps(4) = ((GLOBAL(\process_1~1_combout\) & (\Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\)) # (!GLOBAL(\process_1~1_combout\) & ((req_steps(4)))))

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
	datab => \Div0|auto_generated|divider|divider|add_sub_9|add_sub_cella[3]~0_combout\,
	datac => \process_1~1_combout\,
	datad => req_steps(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => req_steps(4));

-- Location: LC_X15_Y6_N4
\Equal1~2\ : maxv_lcell
-- Equation(s):
-- \Equal1~2_combout\ = (req_steps(5) & (a_steps(5) & (req_steps(4) $ (!a_steps(4))))) # (!req_steps(5) & (!a_steps(5) & (req_steps(4) $ (!a_steps(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => req_steps(5),
	datab => a_steps(5),
	datac => req_steps(4),
	datad => a_steps(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~2_combout\);

-- Location: LC_X15_Y6_N7
\req_steps[2]\ : maxv_lcell
-- Equation(s):
-- req_steps(2) = ((GLOBAL(\process_1~1_combout\) & (\Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\)) # (!GLOBAL(\process_1~1_combout\) & ((req_steps(2)))))

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
	datab => \Div0|auto_generated|divider|divider|add_sub_11|add_sub_cella[3]~0_combout\,
	datac => req_steps(2),
	datad => \process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => req_steps(2));

-- Location: LC_X14_Y6_N2
\req_steps[3]\ : maxv_lcell
-- Equation(s):
-- req_steps(3) = ((GLOBAL(\process_1~1_combout\) & (\Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\)) # (!GLOBAL(\process_1~1_combout\) & ((req_steps(3)))))

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
	datab => \process_1~1_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10|add_sub_cella[3]~0_combout\,
	datad => req_steps(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => req_steps(3));

-- Location: LC_X15_Y6_N8
\Equal1~1\ : maxv_lcell
-- Equation(s):
-- \Equal1~1_combout\ = (req_steps(2) & (a_steps(2) & (a_steps(3) $ (!req_steps(3))))) # (!req_steps(2) & (!a_steps(2) & (a_steps(3) $ (!req_steps(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => req_steps(2),
	datab => a_steps(2),
	datac => a_steps(3),
	datad => req_steps(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~1_combout\);

-- Location: LC_X15_Y6_N9
\Equal1~4\ : maxv_lcell
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~0_combout\ & (\Equal1~3_combout\ & (\Equal1~2_combout\ & \Equal1~1_combout\)))

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
	dataa => \Equal1~0_combout\,
	datab => \Equal1~3_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~4_combout\);

-- Location: LC_X13_Y6_N5
running : maxv_lcell
-- Equation(s):
-- \running~regout\ = DFFEAS(((\RUN~combout\ & ((!\Equal1~4_combout\) # (!\running~regout\)))), GLOBAL(\stepper_clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \stepper_clk~regout\,
	datab => \RUN~combout\,
	datac => \running~regout\,
	datad => \Equal1~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \running~regout\);

-- Location: LC_X16_Y6_N9
\process_1~0\ : maxv_lcell
-- Equation(s):
-- \process_1~0_combout\ = (((!\running~regout\)) # (!\RUN~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \RUN~combout\,
	datad => \running~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_1~0_combout\);

-- Location: LC_X16_Y7_N5
\Mult0|mult_core|romout[0][3]~0\ : maxv_lcell
-- Equation(s):
-- \Mult0|mult_core|romout[0][3]~0_combout\ = (a_steps(1) $ ((a_steps(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => a_steps(1),
	datac => a_steps(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|romout[0][3]~0_combout\);

-- Location: LC_X16_Y7_N2
\Mult0|mult_core|romout[0][4]~1\ : maxv_lcell
-- Equation(s):
-- \Mult0|mult_core|romout[0][4]~1_combout\ = a_steps(2) $ (((!a_steps(0) & (a_steps(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9c9c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => a_steps(0),
	datab => a_steps(2),
	datac => a_steps(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|romout[0][4]~1_combout\);

-- Location: LC_X16_Y7_N8
\Mult0|mult_core|romout[0][5]~2\ : maxv_lcell
-- Equation(s):
-- \Mult0|mult_core|romout[0][5]~2_combout\ = a_steps(3) $ (((a_steps(0) & (a_steps(2) $ (!a_steps(1)))) # (!a_steps(0) & (a_steps(2) & !a_steps(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7986",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => a_steps(0),
	datab => a_steps(2),
	datac => a_steps(1),
	datad => a_steps(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|romout[0][5]~2_combout\);

-- Location: LC_X16_Y7_N6
\Mult0|mult_core|romout[0][6]~3\ : maxv_lcell
-- Equation(s):
-- \Mult0|mult_core|romout[0][6]~3_combout\ = (a_steps(0) & ((a_steps(2) & (!a_steps(1) & !a_steps(3))) # (!a_steps(2) & (a_steps(1) & a_steps(3))))) # (!a_steps(0) & ((a_steps(2) & (a_steps(1) & a_steps(3))) # (!a_steps(2) & (a_steps(1) $ (a_steps(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6118",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => a_steps(0),
	datab => a_steps(2),
	datac => a_steps(1),
	datad => a_steps(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|romout[0][6]~3_combout\);

-- Location: LC_X15_Y7_N0
\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~0\ : maxv_lcell
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~0_combout\ = \Mult0|mult_core|romout[0][6]~3_combout\ $ ((a_steps(4)))
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~2\ = CARRY((\Mult0|mult_core|romout[0][6]~3_combout\ & (a_steps(4))))
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~2COUT1_48\ = CARRY((\Mult0|mult_core|romout[0][6]~3_combout\ & (a_steps(4))))

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
	dataa => \Mult0|mult_core|romout[0][6]~3_combout\,
	datab => a_steps(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~0_combout\,
	cout0 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~2\,
	cout1 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~2COUT1_48\);

-- Location: LC_X13_Y6_N3
\Mult0|mult_core|romout[1][3]~4\ : maxv_lcell
-- Equation(s):
-- \Mult0|mult_core|romout[1][3]~4_combout\ = a_steps(5) $ ((((a_steps(4)))))

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
	dataa => a_steps(5),
	datad => a_steps(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|romout[1][3]~4_combout\);

-- Location: LC_X16_Y7_N4
\Mult0|mult_core|romout[0][7]~5\ : maxv_lcell
-- Equation(s):
-- \Mult0|mult_core|romout[0][7]~5_combout\ = (a_steps(2) & ((a_steps(1) & (a_steps(0) & a_steps(3))) # (!a_steps(1) & ((!a_steps(3)))))) # (!a_steps(2) & ((a_steps(0) & ((a_steps(1)) # (a_steps(3)))) # (!a_steps(0) & (a_steps(1) & a_steps(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b22c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => a_steps(0),
	datab => a_steps(2),
	datac => a_steps(1),
	datad => a_steps(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|romout[0][7]~5_combout\);

-- Location: LC_X15_Y7_N1
\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~5\ : maxv_lcell
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~5_combout\ = \Mult0|mult_core|romout[1][3]~4_combout\ $ (\Mult0|mult_core|romout[0][7]~5_combout\ $ ((\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~2\)))
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~7\ = CARRY((\Mult0|mult_core|romout[1][3]~4_combout\ & (!\Mult0|mult_core|romout[0][7]~5_combout\ & !\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~2\)) # 
-- (!\Mult0|mult_core|romout[1][3]~4_combout\ & ((!\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~2\) # (!\Mult0|mult_core|romout[0][7]~5_combout\))))
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~7COUT1_50\ = CARRY((\Mult0|mult_core|romout[1][3]~4_combout\ & (!\Mult0|mult_core|romout[0][7]~5_combout\ & !\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~2COUT1_48\)) # 
-- (!\Mult0|mult_core|romout[1][3]~4_combout\ & ((!\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~2COUT1_48\) # (!\Mult0|mult_core|romout[0][7]~5_combout\))))

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
	dataa => \Mult0|mult_core|romout[1][3]~4_combout\,
	datab => \Mult0|mult_core|romout[0][7]~5_combout\,
	cin0 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~2\,
	cin1 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~2COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~5_combout\,
	cout0 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~7\,
	cout1 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~7COUT1_50\);

-- Location: LC_X15_Y7_N8
\Mult0|mult_core|romout[0][8]~7\ : maxv_lcell
-- Equation(s):
-- \Mult0|mult_core|romout[0][8]~7_combout\ = ((a_steps(2) & (!a_steps(3) & a_steps(1))) # (!a_steps(2) & (a_steps(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => a_steps(2),
	datac => a_steps(3),
	datad => a_steps(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|romout[0][8]~7_combout\);

-- Location: LC_X13_Y6_N0
\Mult0|mult_core|romout[1][4]~6\ : maxv_lcell
-- Equation(s):
-- \Mult0|mult_core|romout[1][4]~6_combout\ = a_steps(6) $ (((a_steps(5) & ((!a_steps(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc66",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => a_steps(5),
	datab => a_steps(6),
	datad => a_steps(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|romout[1][4]~6_combout\);

-- Location: LC_X15_Y7_N2
\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~10\ : maxv_lcell
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~10_combout\ = \Mult0|mult_core|romout[0][8]~7_combout\ $ (\Mult0|mult_core|romout[1][4]~6_combout\ $ ((!\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~7\)))
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~12\ = CARRY((\Mult0|mult_core|romout[0][8]~7_combout\ & ((\Mult0|mult_core|romout[1][4]~6_combout\) # (!\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~7\))) # 
-- (!\Mult0|mult_core|romout[0][8]~7_combout\ & (\Mult0|mult_core|romout[1][4]~6_combout\ & !\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~7\)))
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~12COUT1_52\ = CARRY((\Mult0|mult_core|romout[0][8]~7_combout\ & ((\Mult0|mult_core|romout[1][4]~6_combout\) # (!\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~7COUT1_50\))) # 
-- (!\Mult0|mult_core|romout[0][8]~7_combout\ & (\Mult0|mult_core|romout[1][4]~6_combout\ & !\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~7COUT1_50\)))

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
	dataa => \Mult0|mult_core|romout[0][8]~7_combout\,
	datab => \Mult0|mult_core|romout[1][4]~6_combout\,
	cin0 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~7\,
	cin1 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~7COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~10_combout\,
	cout0 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~12\,
	cout1 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~12COUT1_52\);

-- Location: LC_X13_Y6_N7
\Mult0|mult_core|romout[1][5]~8\ : maxv_lcell
-- Equation(s):
-- \Mult0|mult_core|romout[1][5]~8_combout\ = a_steps(7) $ (((a_steps(4) & (a_steps(6) $ (!a_steps(5)))) # (!a_steps(4) & (a_steps(6) & !a_steps(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7896",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => a_steps(4),
	datab => a_steps(6),
	datac => a_steps(7),
	datad => a_steps(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|romout[1][5]~8_combout\);

-- Location: LC_X15_Y7_N9
\Mult0|mult_core|_~0\ : maxv_lcell
-- Equation(s):
-- \Mult0|mult_core|_~0_combout\ = (((a_steps(3) & a_steps(2))))

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
	datac => a_steps(3),
	datad => a_steps(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|_~0_combout\);

-- Location: LC_X15_Y7_N3
\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~15\ : maxv_lcell
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~15_combout\ = \Mult0|mult_core|romout[1][5]~8_combout\ $ (\Mult0|mult_core|_~0_combout\ $ ((\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~12\)))
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~17\ = CARRY((\Mult0|mult_core|romout[1][5]~8_combout\ & (!\Mult0|mult_core|_~0_combout\ & !\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~12\)) # 
-- (!\Mult0|mult_core|romout[1][5]~8_combout\ & ((!\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~12\) # (!\Mult0|mult_core|_~0_combout\))))
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~17COUT1_54\ = CARRY((\Mult0|mult_core|romout[1][5]~8_combout\ & (!\Mult0|mult_core|_~0_combout\ & !\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~12COUT1_52\)) # 
-- (!\Mult0|mult_core|romout[1][5]~8_combout\ & ((!\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~12COUT1_52\) # (!\Mult0|mult_core|_~0_combout\))))

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
	dataa => \Mult0|mult_core|romout[1][5]~8_combout\,
	datab => \Mult0|mult_core|_~0_combout\,
	cin0 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~12\,
	cin1 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~12COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~15_combout\,
	cout0 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~17\,
	cout1 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~17COUT1_54\);

-- Location: LC_X13_Y6_N9
\Mult0|mult_core|romout[1][6]~9\ : maxv_lcell
-- Equation(s):
-- \Mult0|mult_core|romout[1][6]~9_combout\ = (a_steps(4) & ((a_steps(6) & (!a_steps(7) & !a_steps(5))) # (!a_steps(6) & (a_steps(7) & a_steps(5))))) # (!a_steps(4) & ((a_steps(6) & (a_steps(7) & a_steps(5))) # (!a_steps(6) & (a_steps(7) $ (a_steps(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6118",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => a_steps(4),
	datab => a_steps(6),
	datac => a_steps(7),
	datad => a_steps(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|romout[1][6]~9_combout\);

-- Location: LC_X15_Y7_N4
\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~20\ : maxv_lcell
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~20_combout\ = (\Mult0|mult_core|romout[1][6]~9_combout\ $ ((!\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~17\)))
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~22\ = CARRY(((\Mult0|mult_core|romout[1][6]~9_combout\ & !\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~17COUT1_54\)))

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
	datab => \Mult0|mult_core|romout[1][6]~9_combout\,
	cin0 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~17\,
	cin1 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~17COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~20_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~22\);

-- Location: LC_X13_Y6_N6
\Mult0|mult_core|romout[1][7]~10\ : maxv_lcell
-- Equation(s):
-- \Mult0|mult_core|romout[1][7]~10_combout\ = (a_steps(6) & ((a_steps(7) & (a_steps(4) & a_steps(5))) # (!a_steps(7) & ((!a_steps(5)))))) # (!a_steps(6) & ((a_steps(4) & ((a_steps(7)) # (a_steps(5)))) # (!a_steps(4) & (a_steps(7) & a_steps(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b22c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => a_steps(4),
	datab => a_steps(6),
	datac => a_steps(7),
	datad => a_steps(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|romout[1][7]~10_combout\);

-- Location: LC_X15_Y7_N5
\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~25\ : maxv_lcell
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~25_combout\ = (\Mult0|mult_core|romout[1][7]~10_combout\ $ ((\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~22\)))
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~27\ = CARRY(((!\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~22\) # (!\Mult0|mult_core|romout[1][7]~10_combout\)))
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~27COUT1_56\ = CARRY(((!\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~22\) # (!\Mult0|mult_core|romout[1][7]~10_combout\)))

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
	datab => \Mult0|mult_core|romout[1][7]~10_combout\,
	cin => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~25_combout\,
	cout0 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~27\,
	cout1 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~27COUT1_56\);

-- Location: LC_X13_Y6_N4
\Mult0|mult_core|romout[1][8]~11\ : maxv_lcell
-- Equation(s):
-- \Mult0|mult_core|romout[1][8]~11_combout\ = ((a_steps(6) & (!a_steps(7) & a_steps(5))) # (!a_steps(6) & (a_steps(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => a_steps(6),
	datac => a_steps(7),
	datad => a_steps(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|romout[1][8]~11_combout\);

-- Location: LC_X15_Y7_N6
\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~30\ : maxv_lcell
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~30_combout\ = (\Mult0|mult_core|romout[1][8]~11_combout\ $ ((!(!\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~22\ & 
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~27\) # (\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~22\ & \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~27COUT1_56\))))
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~32\ = CARRY(((\Mult0|mult_core|romout[1][8]~11_combout\ & !\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~27\)))
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~32COUT1_58\ = CARRY(((\Mult0|mult_core|romout[1][8]~11_combout\ & !\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~27COUT1_56\)))

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
	datab => \Mult0|mult_core|romout[1][8]~11_combout\,
	cin => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~22\,
	cin0 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~27\,
	cin1 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~27COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~30_combout\,
	cout0 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~32\,
	cout1 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~32COUT1_58\);

-- Location: LC_X13_Y6_N8
\Mult0|mult_core|_~1\ : maxv_lcell
-- Equation(s):
-- \Mult0|mult_core|_~1_combout\ = ((a_steps(7) & ((a_steps(6)))))

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
	datab => a_steps(7),
	datad => a_steps(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|_~1_combout\);

-- Location: LC_X15_Y7_N7
\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~35\ : maxv_lcell
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~35_combout\ = (((!\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~22\ & \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~32\) # 
-- (\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~22\ & \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~32COUT1_58\) $ (\Mult0|mult_core|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|mult_core|_~1_combout\,
	cin => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~22\,
	cin0 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~32\,
	cin1 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~32COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~35_combout\);

-- Location: LC_X15_Y6_N6
\CH1~0\ : maxv_lcell
-- Equation(s):
-- \CH1~0_combout\ = ((\RUN~combout\ & (\running~regout\ & !\Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \RUN~combout\,
	datac => \running~regout\,
	datad => \Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1~0_combout\);

-- Location: LC_X15_Y6_N3
\state[0]\ : maxv_lcell
-- Equation(s):
-- state(0) = DFFEAS((((!state(0)))), GLOBAL(\stepper_clk~regout\), VCC, , \CH1~0_combout\, , , , )

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
	clk => \stepper_clk~regout\,
	datad => state(0),
	aclr => GND,
	ena => \CH1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(0));

-- Location: LC_X15_Y6_N0
\state[1]\ : maxv_lcell
-- Equation(s):
-- state(1) = DFFEAS(state(0) $ ((((state(1))))), GLOBAL(\stepper_clk~regout\), VCC, , \CH1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \stepper_clk~regout\,
	dataa => state(0),
	datac => state(1),
	aclr => GND,
	ena => \CH1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(1));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FWD~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FWD,
	combout => \FWD~combout\);

-- Location: LC_X14_Y6_N4
\CH3~reg0\ : maxv_lcell
-- Equation(s):
-- \Mux1~0\ = state(1) $ ((((\FWD~combout\))))
-- \CH3~reg0_regout\ = DFFEAS(\Mux1~0\, GLOBAL(\stepper_clk~regout\), VCC, , \CH1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \stepper_clk~regout\,
	dataa => state(1),
	datac => \FWD~combout\,
	aclr => GND,
	ena => \CH1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0\,
	regout => \CH3~reg0_regout\);

-- Location: LC_X14_Y6_N8
\CH1~reg0\ : maxv_lcell
-- Equation(s):
-- \CH1~reg0_regout\ = DFFEAS((((!\Mux1~0\))), GLOBAL(\stepper_clk~regout\), VCC, , \CH1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \stepper_clk~regout\,
	datac => \Mux1~0\,
	aclr => GND,
	ena => \CH1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH1~reg0_regout\);

-- Location: LC_X15_Y6_N1
\CH2~reg0\ : maxv_lcell
-- Equation(s):
-- \Mux1~1\ = state(0) $ (state(1) $ ((\FWD~combout\)))
-- \CH2~reg0_regout\ = DFFEAS(\Mux1~1\, GLOBAL(\stepper_clk~regout\), VCC, , \CH1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \stepper_clk~regout\,
	dataa => state(0),
	datab => state(1),
	datac => \FWD~combout\,
	aclr => GND,
	ena => \CH1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~1\,
	regout => \CH2~reg0_regout\);

-- Location: LC_X14_Y6_N3
\CH4~reg0\ : maxv_lcell
-- Equation(s):
-- \CH4~reg0_regout\ = DFFEAS((((!\Mux1~1\))), GLOBAL(\stepper_clk~regout\), VCC, , \CH1~0_combout\, , , , )

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
	clk => \stepper_clk~regout\,
	datad => \Mux1~1\,
	aclr => GND,
	ena => \CH1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH4~reg0_regout\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\STATUS[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_STATUS(0));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\STATUS[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_STATUS(1));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\STATUS[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_steps(0),
	oe => VCC,
	padio => ww_STATUS(2));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\STATUS[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mult0|mult_core|romout[0][3]~0_combout\,
	oe => VCC,
	padio => ww_STATUS(3));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\STATUS[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mult0|mult_core|romout[0][4]~1_combout\,
	oe => VCC,
	padio => ww_STATUS(4));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\STATUS[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mult0|mult_core|romout[0][5]~2_combout\,
	oe => VCC,
	padio => ww_STATUS(5));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\STATUS[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~0_combout\,
	oe => VCC,
	padio => ww_STATUS(6));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\STATUS[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~5_combout\,
	oe => VCC,
	padio => ww_STATUS(7));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\STATUS[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~10_combout\,
	oe => VCC,
	padio => ww_STATUS(8));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\STATUS[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~15_combout\,
	oe => VCC,
	padio => ww_STATUS(9));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\STATUS[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~20_combout\,
	oe => VCC,
	padio => ww_STATUS(10));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\STATUS[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~25_combout\,
	oe => VCC,
	padio => ww_STATUS(11));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\STATUS[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~30_combout\,
	oe => VCC,
	padio => ww_STATUS(12));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\STATUS[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~35_combout\,
	oe => VCC,
	padio => ww_STATUS(13));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\BUSY~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \running~regout\,
	oe => VCC,
	padio => ww_BUSY);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CH1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \CH1~reg0_regout\,
	oe => VCC,
	padio => ww_CH1);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CH2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \CH2~reg0_regout\,
	oe => VCC,
	padio => ww_CH2);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CH3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \CH3~reg0_regout\,
	oe => VCC,
	padio => ww_CH3);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CH4~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \CH4~reg0_regout\,
	oe => VCC,
	padio => ww_CH4);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DISTANCE[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DISTANCE(1));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DISTANCE[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DISTANCE(0));
END structure;


