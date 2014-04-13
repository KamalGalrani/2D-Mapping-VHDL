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

-- DATE "04/12/2014 17:43:51"

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

ENTITY 	Tracking IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	ENC_L : IN std_logic;
	ENC_R : IN std_logic;
	FWD_R : IN std_logic;
	FWD_L : IN std_logic;
	FIN_X : IN STD.STANDARD.integer range 0 TO 10000;
	ACT_X : OUT STD.STANDARD.integer range 0 TO 10000;
	ACT_2T : OUT STD.STANDARD.integer range -360 TO 360;
	ACT_Y : OUT STD.STANDARD.integer range 0 TO 10000;
	CLOSEST_X : OUT STD.STANDARD.integer range 0 TO 10000;
	CLOSEST_Y : OUT STD.STANDARD.integer range 0 TO 10000;
	FOLLOWING : IN std_logic
	);
END Tracking;

-- Design Ports Information
-- ACT_X[0]	=>  Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_X[1]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_X[2]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_X[3]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_X[4]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_X[5]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_X[6]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_X[7]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_X[8]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_X[9]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_X[10]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_X[11]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_X[12]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_X[13]	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_2T[0]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_2T[1]	=>  Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_2T[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_2T[3]	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_2T[4]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_2T[5]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_2T[6]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_2T[7]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_2T[8]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_2T[9]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_Y[0]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_Y[1]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_Y[2]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_Y[3]	=>  Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_Y[4]	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_Y[5]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_Y[6]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_Y[7]	=>  Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_Y[8]	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_Y[9]	=>  Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_Y[10]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_Y[11]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_Y[12]	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ACT_Y[13]	=>  Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_X[0]	=>  Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_X[1]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_X[2]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_X[3]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_X[4]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_X[5]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_X[6]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_X[7]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_X[8]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_X[9]	=>  Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_X[10]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_X[11]	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_X[12]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_X[13]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_Y[0]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_Y[1]	=>  Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_Y[2]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_Y[3]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_Y[4]	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_Y[5]	=>  Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_Y[6]	=>  Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_Y[7]	=>  Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_Y[8]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_Y[9]	=>  Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_Y[10]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_Y[11]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_Y[12]	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOSEST_Y[13]	=>  Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLK	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FWD_L	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FWD_R	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENC_R	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RST	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENC_L	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FOLLOWING	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[13]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[12]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[11]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[10]	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[9]	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[8]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[7]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[6]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[5]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[4]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[3]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[2]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[1]	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[0]	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Tracking IS
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
SIGNAL ww_RST : std_logic;
SIGNAL ww_ENC_L : std_logic;
SIGNAL ww_ENC_R : std_logic;
SIGNAL ww_FWD_R : std_logic;
SIGNAL ww_FWD_L : std_logic;
SIGNAL ww_FIN_X : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_ACT_X : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_ACT_2T : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_ACT_Y : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_CLOSEST_X : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_CLOSEST_Y : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_FOLLOWING : std_logic;
SIGNAL \a_x[0]~31_cout\ : std_logic;
SIGNAL \a_y[0]~30_cout\ : std_logic;
SIGNAL \Lookup|Add1~42\ : std_logic;
SIGNAL \LessThan0~5\ : std_logic;
SIGNAL \LessThan0~10\ : std_logic;
SIGNAL \LessThan0~15\ : std_logic;
SIGNAL \LessThan0~20\ : std_logic;
SIGNAL \LessThan0~25\ : std_logic;
SIGNAL \LessThan0~30\ : std_logic;
SIGNAL \LessThan0~35\ : std_logic;
SIGNAL \LessThan0~40\ : std_logic;
SIGNAL \LessThan0~45\ : std_logic;
SIGNAL \LessThan0~50\ : std_logic;
SIGNAL \LessThan0~55\ : std_logic;
SIGNAL \LessThan0~60\ : std_logic;
SIGNAL \LessThan0~65\ : std_logic;
SIGNAL \LessThan0~70\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \ENC_R~combout\ : std_logic;
SIGNAL \FWD_R~combout\ : std_logic;
SIGNAL \FWD_L~combout\ : std_logic;
SIGNAL \RST~combout\ : std_logic;
SIGNAL \Add0~0\ : std_logic;
SIGNAL \r_lck~regout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \ENC_L~combout\ : std_logic;
SIGNAL \l_lck~regout\ : std_logic;
SIGNAL \a_x[0]~28_combout\ : std_logic;
SIGNAL \a_2t[0]~1\ : std_logic;
SIGNAL \a_2t[0]~1COUT1_30\ : std_logic;
SIGNAL \a_2t[1]~3\ : std_logic;
SIGNAL \a_2t[1]~3COUT1_32\ : std_logic;
SIGNAL \a_2t[2]~5\ : std_logic;
SIGNAL \a_2t[2]~5COUT1_34\ : std_logic;
SIGNAL \a_2t[3]~7\ : std_logic;
SIGNAL \a_2t[3]~7COUT1_36\ : std_logic;
SIGNAL \a_2t[4]~9\ : std_logic;
SIGNAL \a_2t[5]~11\ : std_logic;
SIGNAL \a_2t[5]~11COUT1_38\ : std_logic;
SIGNAL \a_2t[6]~13\ : std_logic;
SIGNAL \a_2t[6]~13COUT1_40\ : std_logic;
SIGNAL \a_2t[7]~15\ : std_logic;
SIGNAL \a_2t[7]~15COUT1_42\ : std_logic;
SIGNAL \a_2t[8]~17\ : std_logic;
SIGNAL \a_2t[8]~17COUT1_44\ : std_logic;
SIGNAL \Lookup|theta2_r~0_combout\ : std_logic;
SIGNAL \Lookup|Add0~37\ : std_logic;
SIGNAL \Lookup|Add0~37COUT1_60\ : std_logic;
SIGNAL \Lookup|Add0~42\ : std_logic;
SIGNAL \Lookup|Add0~42COUT1_62\ : std_logic;
SIGNAL \Lookup|Add0~32\ : std_logic;
SIGNAL \Lookup|Add0~32COUT1_64\ : std_logic;
SIGNAL \Lookup|Add0~47\ : std_logic;
SIGNAL \Lookup|Add0~47COUT1_66\ : std_logic;
SIGNAL \Lookup|Add0~22\ : std_logic;
SIGNAL \Lookup|Add0~2\ : std_logic;
SIGNAL \Lookup|Add0~2COUT1_68\ : std_logic;
SIGNAL \Lookup|Add0~25_combout\ : std_logic;
SIGNAL \Lookup|Add0~27\ : std_logic;
SIGNAL \Lookup|Add0~27COUT1_70\ : std_logic;
SIGNAL \Lookup|Add0~7\ : std_logic;
SIGNAL \Lookup|Add0~7COUT1_72\ : std_logic;
SIGNAL \Lookup|Add0~12\ : std_logic;
SIGNAL \Lookup|Add0~12COUT1_74\ : std_logic;
SIGNAL \Lookup|Add0~15_combout\ : std_logic;
SIGNAL \Lookup|Add0~5_combout\ : std_logic;
SIGNAL \Lookup|Add0~10_combout\ : std_logic;
SIGNAL \Lookup|Add0~0_combout\ : std_logic;
SIGNAL \Lookup|Add0~20_combout\ : std_logic;
SIGNAL \Lookup|Add0~35_combout\ : std_logic;
SIGNAL \Lookup|Add0~30_combout\ : std_logic;
SIGNAL \Lookup|Add0~40_combout\ : std_logic;
SIGNAL \Lookup|Add0~45_combout\ : std_logic;
SIGNAL \Lookup|LessThan0~0_combout\ : std_logic;
SIGNAL \Lookup|LessThan0~1_combout\ : std_logic;
SIGNAL \Lookup|LessThan0~2_combout\ : std_logic;
SIGNAL \Lookup|Add1~44_cout0\ : std_logic;
SIGNAL \Lookup|Add1~44COUT1_55\ : std_logic;
SIGNAL \Lookup|Add1~32\ : std_logic;
SIGNAL \Lookup|Add1~32COUT1_57\ : std_logic;
SIGNAL \Lookup|Add1~20\ : std_logic;
SIGNAL \Lookup|Add1~20COUT1_59\ : std_logic;
SIGNAL \Lookup|Add1~26\ : std_logic;
SIGNAL \Lookup|Add1~26COUT1_61\ : std_logic;
SIGNAL \Lookup|Add1~38\ : std_logic;
SIGNAL \Lookup|Add1~2\ : std_logic;
SIGNAL \Lookup|Add1~2COUT1_63\ : std_logic;
SIGNAL \Lookup|Add1~6_combout\ : std_logic;
SIGNAL \Lookup|Add1~11_combout\ : std_logic;
SIGNAL \Lookup|Add1~0_combout\ : std_logic;
SIGNAL \Lookup|Add1~5_combout\ : std_logic;
SIGNAL \Lookup|Add1~18_combout\ : std_logic;
SIGNAL \Lookup|Add1~23_combout\ : std_logic;
SIGNAL \Lookup|Add1~24_combout\ : std_logic;
SIGNAL \Lookup|Add1~29_combout\ : std_logic;
SIGNAL \Lookup|Add1~30_combout\ : std_logic;
SIGNAL \Lookup|Add1~35_combout\ : std_logic;
SIGNAL \Lookup|Mux7~14_combout\ : std_logic;
SIGNAL \Lookup|Mux7~15_combout\ : std_logic;
SIGNAL \Lookup|Mux7~16_combout\ : std_logic;
SIGNAL \Lookup|Mux7~18_combout\ : std_logic;
SIGNAL \Lookup|Add1~8\ : std_logic;
SIGNAL \Lookup|Add1~8COUT1_65\ : std_logic;
SIGNAL \Lookup|Add1~12_combout\ : std_logic;
SIGNAL \Lookup|Add1~17_combout\ : std_logic;
SIGNAL \Lookup|Add1~36_combout\ : std_logic;
SIGNAL \Lookup|Add1~41_combout\ : std_logic;
SIGNAL \Lookup|Mux7~6_combout\ : std_logic;
SIGNAL \Lookup|Mux2~14_combout\ : std_logic;
SIGNAL \Lookup|Mux7~4_combout\ : std_logic;
SIGNAL \Lookup|Mux7~5_combout\ : std_logic;
SIGNAL \Lookup|Mux7~7_combout\ : std_logic;
SIGNAL \Lookup|Mux7~10_combout\ : std_logic;
SIGNAL \Lookup|Mux7~11_combout\ : std_logic;
SIGNAL \Lookup|Mux7~8_combout\ : std_logic;
SIGNAL \Lookup|Mux7~9_combout\ : std_logic;
SIGNAL \Lookup|Mux7~12_combout\ : std_logic;
SIGNAL \Lookup|Mux7~13_combout\ : std_logic;
SIGNAL \Lookup|Mux7~17_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \a_x[0]~31COUT0_49\ : std_logic;
SIGNAL \a_x[0]~31COUT1_50\ : std_logic;
SIGNAL \Lookup|Mux6~2_combout\ : std_logic;
SIGNAL \Lookup|Mux6~0_combout\ : std_logic;
SIGNAL \Lookup|Mux6~1_combout\ : std_logic;
SIGNAL \Lookup|Mux6~3_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \a_x[0]~1\ : std_logic;
SIGNAL \Lookup|Mux3~14_combout\ : std_logic;
SIGNAL \Lookup|Mux5~0_combout\ : std_logic;
SIGNAL \Lookup|Add2~0_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \a_x[1]~3\ : std_logic;
SIGNAL \a_x[1]~3COUT1_52\ : std_logic;
SIGNAL \Lookup|Mux4~0_combout\ : std_logic;
SIGNAL \Lookup|Mux0~0_combout\ : std_logic;
SIGNAL \Lookup|Mux4~1_combout\ : std_logic;
SIGNAL \Lookup|Add2~1_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \a_x[2]~5\ : std_logic;
SIGNAL \a_x[2]~5COUT1_54\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \a_x[3]~7\ : std_logic;
SIGNAL \a_x[3]~7COUT1_56\ : std_logic;
SIGNAL \a_x[4]~9\ : std_logic;
SIGNAL \a_x[4]~9COUT1_58\ : std_logic;
SIGNAL \a_x[5]~11\ : std_logic;
SIGNAL \a_x[6]~13\ : std_logic;
SIGNAL \a_x[6]~13COUT1_60\ : std_logic;
SIGNAL \a_x[7]~15\ : std_logic;
SIGNAL \a_x[7]~15COUT1_62\ : std_logic;
SIGNAL \a_x[8]~17\ : std_logic;
SIGNAL \a_x[8]~17COUT1_64\ : std_logic;
SIGNAL \a_x[9]~19\ : std_logic;
SIGNAL \a_x[9]~19COUT1_66\ : std_logic;
SIGNAL \a_x[10]~21\ : std_logic;
SIGNAL \a_x[11]~23\ : std_logic;
SIGNAL \a_x[11]~23COUT1_68\ : std_logic;
SIGNAL \a_x[12]~25\ : std_logic;
SIGNAL \a_x[12]~25COUT1_70\ : std_logic;
SIGNAL \Lookup|Mux3~10_combout\ : std_logic;
SIGNAL \Lookup|Mux3~9_combout\ : std_logic;
SIGNAL \Lookup|Mux3~11_combout\ : std_logic;
SIGNAL \Lookup|Mux3~7_combout\ : std_logic;
SIGNAL \Lookup|Mux3~5_combout\ : std_logic;
SIGNAL \Lookup|Mux3~4_combout\ : std_logic;
SIGNAL \Lookup|Mux3~6_combout\ : std_logic;
SIGNAL \Lookup|Mux3~15_combout\ : std_logic;
SIGNAL \Lookup|Mux3~16_combout\ : std_logic;
SIGNAL \Lookup|Mux3~8_combout\ : std_logic;
SIGNAL \Lookup|Mux3~12_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \a_y[0]~30COUT0_48\ : std_logic;
SIGNAL \a_y[0]~30COUT1_49\ : std_logic;
SIGNAL \Lookup|Mux2~15_combout\ : std_logic;
SIGNAL \Lookup|Mux2~12_combout\ : std_logic;
SIGNAL \Lookup|Mux2~8_combout\ : std_logic;
SIGNAL \Lookup|Mux2~9_combout\ : std_logic;
SIGNAL \Lookup|Mux2~10_combout\ : std_logic;
SIGNAL \Lookup|Mux2~11_combout\ : std_logic;
SIGNAL \Lookup|Mux2~13_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \a_y[0]~1\ : std_logic;
SIGNAL \Lookup|Mux3~13_combout\ : std_logic;
SIGNAL \Lookup|Mux1~0_combout\ : std_logic;
SIGNAL \Lookup|Mux1~1_combout\ : std_logic;
SIGNAL \Lookup|Add3~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \a_y[1]~3\ : std_logic;
SIGNAL \a_y[1]~3COUT1_51\ : std_logic;
SIGNAL \Lookup|Mux0~1_combout\ : std_logic;
SIGNAL \Lookup|Add3~1_combout\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \a_y[2]~5\ : std_logic;
SIGNAL \a_y[2]~5COUT1_53\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \a_y[3]~7\ : std_logic;
SIGNAL \a_y[3]~7COUT1_55\ : std_logic;
SIGNAL \a_y[4]~9\ : std_logic;
SIGNAL \a_y[4]~9COUT1_57\ : std_logic;
SIGNAL \a_y[5]~11\ : std_logic;
SIGNAL \a_y[6]~13\ : std_logic;
SIGNAL \a_y[6]~13COUT1_59\ : std_logic;
SIGNAL \a_y[7]~15\ : std_logic;
SIGNAL \a_y[7]~15COUT1_61\ : std_logic;
SIGNAL \a_y[8]~17\ : std_logic;
SIGNAL \a_y[8]~17COUT1_63\ : std_logic;
SIGNAL \a_y[9]~19\ : std_logic;
SIGNAL \a_y[9]~19COUT1_65\ : std_logic;
SIGNAL \a_y[10]~21\ : std_logic;
SIGNAL \a_y[11]~23\ : std_logic;
SIGNAL \a_y[11]~23COUT1_67\ : std_logic;
SIGNAL \a_y[12]~25\ : std_logic;
SIGNAL \a_y[12]~25COUT1_69\ : std_logic;
SIGNAL \FOLLOWING~combout\ : std_logic;
SIGNAL \Add8~72\ : std_logic;
SIGNAL \Add8~72COUT1_88\ : std_logic;
SIGNAL \Add8~67\ : std_logic;
SIGNAL \Add8~62\ : std_logic;
SIGNAL \Add8~62COUT1_90\ : std_logic;
SIGNAL \Add8~57\ : std_logic;
SIGNAL \Add8~57COUT1_92\ : std_logic;
SIGNAL \Add8~52\ : std_logic;
SIGNAL \Add8~52COUT1_94\ : std_logic;
SIGNAL \Add8~47\ : std_logic;
SIGNAL \Add8~47COUT1_96\ : std_logic;
SIGNAL \Add8~42\ : std_logic;
SIGNAL \Add8~37\ : std_logic;
SIGNAL \Add8~37COUT1_98\ : std_logic;
SIGNAL \Add8~32\ : std_logic;
SIGNAL \Add8~32COUT1_100\ : std_logic;
SIGNAL \Add8~27\ : std_logic;
SIGNAL \Add8~27COUT1_102\ : std_logic;
SIGNAL \Add8~22\ : std_logic;
SIGNAL \Add8~22COUT1_104\ : std_logic;
SIGNAL \Add8~15_combout\ : std_logic;
SIGNAL \Add8~17\ : std_logic;
SIGNAL \Add8~12\ : std_logic;
SIGNAL \Add8~12COUT1_106\ : std_logic;
SIGNAL \Add8~2\ : std_logic;
SIGNAL \Add8~2COUT1_108\ : std_logic;
SIGNAL \Add8~5_combout\ : std_logic;
SIGNAL \Add8~40_combout\ : std_logic;
SIGNAL \Add8~65_combout\ : std_logic;
SIGNAL \Add8~70_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \Add9~72\ : std_logic;
SIGNAL \Add9~72COUT1_88\ : std_logic;
SIGNAL \Add9~67\ : std_logic;
SIGNAL \Add8~45_combout\ : std_logic;
SIGNAL \Add8~50_combout\ : std_logic;
SIGNAL \Add8~55_combout\ : std_logic;
SIGNAL \Add8~60_combout\ : std_logic;
SIGNAL \Add9~62\ : std_logic;
SIGNAL \Add9~62COUT1_90\ : std_logic;
SIGNAL \Add9~57\ : std_logic;
SIGNAL \Add9~57COUT1_92\ : std_logic;
SIGNAL \Add9~52\ : std_logic;
SIGNAL \Add9~52COUT1_94\ : std_logic;
SIGNAL \Add9~47\ : std_logic;
SIGNAL \Add9~47COUT1_96\ : std_logic;
SIGNAL \Add9~42\ : std_logic;
SIGNAL \Add8~20_combout\ : std_logic;
SIGNAL \Add8~25_combout\ : std_logic;
SIGNAL \Add8~30_combout\ : std_logic;
SIGNAL \Add8~35_combout\ : std_logic;
SIGNAL \Add9~37\ : std_logic;
SIGNAL \Add9~37COUT1_98\ : std_logic;
SIGNAL \Add9~32\ : std_logic;
SIGNAL \Add9~32COUT1_100\ : std_logic;
SIGNAL \Add9~27\ : std_logic;
SIGNAL \Add9~27COUT1_102\ : std_logic;
SIGNAL \Add9~22\ : std_logic;
SIGNAL \Add9~22COUT1_104\ : std_logic;
SIGNAL \Add9~17\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Add9~12\ : std_logic;
SIGNAL \Add9~12COUT1_106\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~7COUT1_108\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add6~72\ : std_logic;
SIGNAL \Add6~72COUT1_88\ : std_logic;
SIGNAL \Add6~67\ : std_logic;
SIGNAL \Add6~62\ : std_logic;
SIGNAL \Add6~62COUT1_90\ : std_logic;
SIGNAL \Add6~57\ : std_logic;
SIGNAL \Add6~57COUT1_92\ : std_logic;
SIGNAL \Add6~52\ : std_logic;
SIGNAL \Add6~52COUT1_94\ : std_logic;
SIGNAL \Add6~47\ : std_logic;
SIGNAL \Add6~47COUT1_96\ : std_logic;
SIGNAL \Add6~42\ : std_logic;
SIGNAL \Add6~37\ : std_logic;
SIGNAL \Add6~37COUT1_98\ : std_logic;
SIGNAL \Add6~32\ : std_logic;
SIGNAL \Add6~32COUT1_100\ : std_logic;
SIGNAL \Add6~27\ : std_logic;
SIGNAL \Add6~27COUT1_102\ : std_logic;
SIGNAL \Add6~22\ : std_logic;
SIGNAL \Add6~22COUT1_104\ : std_logic;
SIGNAL \Add6~15_combout\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~12\ : std_logic;
SIGNAL \Add6~12COUT1_106\ : std_logic;
SIGNAL \Add6~2\ : std_logic;
SIGNAL \Add6~2COUT1_108\ : std_logic;
SIGNAL \Add6~5_combout\ : std_logic;
SIGNAL \Add6~40_combout\ : std_logic;
SIGNAL \Add6~65_combout\ : std_logic;
SIGNAL \Add6~70_combout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \Add7~72\ : std_logic;
SIGNAL \Add7~72COUT1_88\ : std_logic;
SIGNAL \Add7~67\ : std_logic;
SIGNAL \Add6~45_combout\ : std_logic;
SIGNAL \Add6~50_combout\ : std_logic;
SIGNAL \Add6~55_combout\ : std_logic;
SIGNAL \Add6~60_combout\ : std_logic;
SIGNAL \Add7~62\ : std_logic;
SIGNAL \Add7~62COUT1_90\ : std_logic;
SIGNAL \Add7~57\ : std_logic;
SIGNAL \Add7~57COUT1_92\ : std_logic;
SIGNAL \Add7~52\ : std_logic;
SIGNAL \Add7~52COUT1_94\ : std_logic;
SIGNAL \Add7~47\ : std_logic;
SIGNAL \Add7~47COUT1_96\ : std_logic;
SIGNAL \Add7~42\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \Add6~25_combout\ : std_logic;
SIGNAL \Add6~30_combout\ : std_logic;
SIGNAL \Add6~35_combout\ : std_logic;
SIGNAL \Add7~37\ : std_logic;
SIGNAL \Add7~37COUT1_98\ : std_logic;
SIGNAL \Add7~32\ : std_logic;
SIGNAL \Add7~32COUT1_100\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \Add7~27COUT1_102\ : std_logic;
SIGNAL \Add7~22\ : std_logic;
SIGNAL \Add7~22COUT1_104\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add7~12\ : std_logic;
SIGNAL \Add7~12COUT1_106\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~7COUT1_108\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add7~15_combout\ : std_logic;
SIGNAL \Add9~15_combout\ : std_logic;
SIGNAL \Add9~40_combout\ : std_logic;
SIGNAL \Add7~40_combout\ : std_logic;
SIGNAL \Add9~65_combout\ : std_logic;
SIGNAL \Add7~65_combout\ : std_logic;
SIGNAL \Add7~70_combout\ : std_logic;
SIGNAL \Add9~70_combout\ : std_logic;
SIGNAL \LessThan0~72_cout0\ : std_logic;
SIGNAL \LessThan0~72COUT1_88\ : std_logic;
SIGNAL \LessThan0~67_cout\ : std_logic;
SIGNAL \Add9~45_combout\ : std_logic;
SIGNAL \Add7~45_combout\ : std_logic;
SIGNAL \Add9~50_combout\ : std_logic;
SIGNAL \Add7~50_combout\ : std_logic;
SIGNAL \Add9~55_combout\ : std_logic;
SIGNAL \Add7~55_combout\ : std_logic;
SIGNAL \Add9~60_combout\ : std_logic;
SIGNAL \Add7~60_combout\ : std_logic;
SIGNAL \LessThan0~62_cout0\ : std_logic;
SIGNAL \LessThan0~62COUT1_90\ : std_logic;
SIGNAL \LessThan0~57_cout0\ : std_logic;
SIGNAL \LessThan0~57COUT1_92\ : std_logic;
SIGNAL \LessThan0~52_cout0\ : std_logic;
SIGNAL \LessThan0~52COUT1_94\ : std_logic;
SIGNAL \LessThan0~47_cout0\ : std_logic;
SIGNAL \LessThan0~47COUT1_96\ : std_logic;
SIGNAL \LessThan0~42_cout\ : std_logic;
SIGNAL \Add9~20_combout\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \Add9~25_combout\ : std_logic;
SIGNAL \Add7~25_combout\ : std_logic;
SIGNAL \Add7~30_combout\ : std_logic;
SIGNAL \Add9~30_combout\ : std_logic;
SIGNAL \Add7~35_combout\ : std_logic;
SIGNAL \Add9~35_combout\ : std_logic;
SIGNAL \LessThan0~37_cout0\ : std_logic;
SIGNAL \LessThan0~37COUT1_98\ : std_logic;
SIGNAL \LessThan0~32_cout0\ : std_logic;
SIGNAL \LessThan0~32COUT1_100\ : std_logic;
SIGNAL \LessThan0~27_cout0\ : std_logic;
SIGNAL \LessThan0~27COUT1_102\ : std_logic;
SIGNAL \LessThan0~22_cout0\ : std_logic;
SIGNAL \LessThan0~22COUT1_104\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \Add9~5_combout\ : std_logic;
SIGNAL \Add7~5_combout\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \LessThan0~12_cout0\ : std_logic;
SIGNAL \LessThan0~12COUT1_106\ : std_logic;
SIGNAL \LessThan0~7_cout0\ : std_logic;
SIGNAL \LessThan0~7COUT1_108\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \FIN_X~combout\ : std_logic_vector(13 DOWNTO 0);
SIGNAL a_2t : std_logic_vector(9 DOWNTO 0);
SIGNAL a_x : std_logic_vector(13 DOWNTO 0);
SIGNAL a_y : std_logic_vector(13 DOWNTO 0);
SIGNAL c_y : std_logic_vector(13 DOWNTO 0);
SIGNAL c_x : std_logic_vector(13 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
ww_ENC_L <= ENC_L;
ww_ENC_R <= ENC_R;
ww_FWD_R <= FWD_R;
ww_FWD_L <= FWD_L;
ww_FIN_X <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(FIN_X, 14);
ACT_X <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_ACT_X));
ACT_2T <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(SIGNED(ww_ACT_2T));
ACT_Y <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_ACT_Y));
CLOSEST_X <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_CLOSEST_X));
CLOSEST_Y <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_CLOSEST_Y));
ww_FOLLOWING <= FOLLOWING;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENC_R~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ENC_R,
	combout => \ENC_R~combout\);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FWD_R~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FWD_R,
	combout => \FWD_R~combout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FWD_L~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FWD_L,
	combout => \FWD_L~combout\);

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RST~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RST,
	combout => \RST~combout\);

-- Location: LC_X7_Y10_N4
r_lck : maxv_lcell
-- Equation(s):
-- \Add0~0\ = (\ENC_R~combout\ & ((r_lck & ((\FWD_L~combout\))) # (!r_lck & (\FWD_R~combout\)))) # (!\ENC_R~combout\ & (((\FWD_L~combout\))))
-- \r_lck~regout\ = DFFEAS(\Add0~0\, GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , \ENC_R~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd08",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \ENC_R~combout\,
	datab => \FWD_R~combout\,
	datac => \ENC_R~combout\,
	datad => \FWD_L~combout\,
	aclr => \RST~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0\,
	regout => \r_lck~regout\);

-- Location: LC_X7_Y10_N6
\Add5~0\ : maxv_lcell
-- Equation(s):
-- \Add5~0_combout\ = (\r_lck~regout\ & (((\FWD_L~combout\)))) # (!\r_lck~regout\ & ((\ENC_R~combout\ & (!\FWD_R~combout\)) # (!\ENC_R~combout\ & ((\FWD_L~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bf10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r_lck~regout\,
	datab => \FWD_R~combout\,
	datac => \ENC_R~combout\,
	datad => \FWD_L~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~0_combout\);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENC_L~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ENC_L,
	combout => \ENC_L~combout\);

-- Location: LC_X7_Y10_N2
l_lck : maxv_lcell
-- Equation(s):
-- \l_lck~regout\ = DFFEAS((\ENC_L~combout\ & ((\r_lck~regout\) # ((\l_lck~regout\) # (!\ENC_R~combout\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \r_lck~regout\,
	datab => \l_lck~regout\,
	datac => \ENC_R~combout\,
	datad => \ENC_L~combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l_lck~regout\);

-- Location: LC_X7_Y10_N5
\a_x[0]~28\ : maxv_lcell
-- Equation(s):
-- \a_x[0]~28_combout\ = (\r_lck~regout\ & (!\l_lck~regout\ & ((\ENC_L~combout\)))) # (!\r_lck~regout\ & ((\ENC_R~combout\) # ((!\l_lck~regout\ & \ENC_L~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7350",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r_lck~regout\,
	datab => \l_lck~regout\,
	datac => \ENC_R~combout\,
	datad => \ENC_L~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \a_x[0]~28_combout\);

-- Location: LC_X7_Y7_N0
\a_2t[0]\ : maxv_lcell
-- Equation(s):
-- a_2t(0) = DFFEAS(((!a_2t(0))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_2t[0]~1\ = CARRY(((a_2t(0))))
-- \a_2t[0]~1COUT1_30\ = CARRY(((a_2t(0))))

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
	clk => \CLK~combout\,
	datab => a_2t(0),
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_2t(0),
	cout0 => \a_2t[0]~1\,
	cout1 => \a_2t[0]~1COUT1_30\);

-- Location: LC_X7_Y7_N1
\a_2t[1]\ : maxv_lcell
-- Equation(s):
-- a_2t(1) = DFFEAS(a_2t(1) $ (\Add5~0_combout\ $ ((\a_2t[0]~1\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_2t[1]~3\ = CARRY((a_2t(1) & (!\Add5~0_combout\ & !\a_2t[0]~1\)) # (!a_2t(1) & ((!\a_2t[0]~1\) # (!\Add5~0_combout\))))
-- \a_2t[1]~3COUT1_32\ = CARRY((a_2t(1) & (!\Add5~0_combout\ & !\a_2t[0]~1COUT1_30\)) # (!a_2t(1) & ((!\a_2t[0]~1COUT1_30\) # (!\Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_2t(1),
	datab => \Add5~0_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin0 => \a_2t[0]~1\,
	cin1 => \a_2t[0]~1COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_2t(1),
	cout0 => \a_2t[1]~3\,
	cout1 => \a_2t[1]~3COUT1_32\);

-- Location: LC_X7_Y7_N2
\a_2t[2]\ : maxv_lcell
-- Equation(s):
-- a_2t(2) = DFFEAS(a_2t(2) $ (\Add5~0_combout\ $ ((!\a_2t[1]~3\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_2t[2]~5\ = CARRY((a_2t(2) & ((\Add5~0_combout\) # (!\a_2t[1]~3\))) # (!a_2t(2) & (\Add5~0_combout\ & !\a_2t[1]~3\)))
-- \a_2t[2]~5COUT1_34\ = CARRY((a_2t(2) & ((\Add5~0_combout\) # (!\a_2t[1]~3COUT1_32\))) # (!a_2t(2) & (\Add5~0_combout\ & !\a_2t[1]~3COUT1_32\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_2t(2),
	datab => \Add5~0_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin0 => \a_2t[1]~3\,
	cin1 => \a_2t[1]~3COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_2t(2),
	cout0 => \a_2t[2]~5\,
	cout1 => \a_2t[2]~5COUT1_34\);

-- Location: LC_X7_Y7_N3
\a_2t[3]\ : maxv_lcell
-- Equation(s):
-- a_2t(3) = DFFEAS(a_2t(3) $ (\Add5~0_combout\ $ ((\a_2t[2]~5\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_2t[3]~7\ = CARRY((a_2t(3) & (!\Add5~0_combout\ & !\a_2t[2]~5\)) # (!a_2t(3) & ((!\a_2t[2]~5\) # (!\Add5~0_combout\))))
-- \a_2t[3]~7COUT1_36\ = CARRY((a_2t(3) & (!\Add5~0_combout\ & !\a_2t[2]~5COUT1_34\)) # (!a_2t(3) & ((!\a_2t[2]~5COUT1_34\) # (!\Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_2t(3),
	datab => \Add5~0_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin0 => \a_2t[2]~5\,
	cin1 => \a_2t[2]~5COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_2t(3),
	cout0 => \a_2t[3]~7\,
	cout1 => \a_2t[3]~7COUT1_36\);

-- Location: LC_X7_Y7_N4
\a_2t[4]\ : maxv_lcell
-- Equation(s):
-- a_2t(4) = DFFEAS(a_2t(4) $ (\Add5~0_combout\ $ ((!\a_2t[3]~7\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_2t[4]~9\ = CARRY((a_2t(4) & ((\Add5~0_combout\) # (!\a_2t[3]~7COUT1_36\))) # (!a_2t(4) & (\Add5~0_combout\ & !\a_2t[3]~7COUT1_36\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_2t(4),
	datab => \Add5~0_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin0 => \a_2t[3]~7\,
	cin1 => \a_2t[3]~7COUT1_36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_2t(4),
	cout => \a_2t[4]~9\);

-- Location: LC_X7_Y7_N5
\a_2t[5]\ : maxv_lcell
-- Equation(s):
-- a_2t(5) = DFFEAS(a_2t(5) $ (\Add5~0_combout\ $ ((\a_2t[4]~9\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_2t[5]~11\ = CARRY((a_2t(5) & (!\Add5~0_combout\ & !\a_2t[4]~9\)) # (!a_2t(5) & ((!\a_2t[4]~9\) # (!\Add5~0_combout\))))
-- \a_2t[5]~11COUT1_38\ = CARRY((a_2t(5) & (!\Add5~0_combout\ & !\a_2t[4]~9\)) # (!a_2t(5) & ((!\a_2t[4]~9\) # (!\Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_2t(5),
	datab => \Add5~0_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_2t[4]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_2t(5),
	cout0 => \a_2t[5]~11\,
	cout1 => \a_2t[5]~11COUT1_38\);

-- Location: LC_X7_Y7_N6
\a_2t[6]\ : maxv_lcell
-- Equation(s):
-- a_2t(6) = DFFEAS(a_2t(6) $ (\Add5~0_combout\ $ ((!(!\a_2t[4]~9\ & \a_2t[5]~11\) # (\a_2t[4]~9\ & \a_2t[5]~11COUT1_38\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_2t[6]~13\ = CARRY((a_2t(6) & ((\Add5~0_combout\) # (!\a_2t[5]~11\))) # (!a_2t(6) & (\Add5~0_combout\ & !\a_2t[5]~11\)))
-- \a_2t[6]~13COUT1_40\ = CARRY((a_2t(6) & ((\Add5~0_combout\) # (!\a_2t[5]~11COUT1_38\))) # (!a_2t(6) & (\Add5~0_combout\ & !\a_2t[5]~11COUT1_38\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_2t(6),
	datab => \Add5~0_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_2t[4]~9\,
	cin0 => \a_2t[5]~11\,
	cin1 => \a_2t[5]~11COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_2t(6),
	cout0 => \a_2t[6]~13\,
	cout1 => \a_2t[6]~13COUT1_40\);

-- Location: LC_X7_Y7_N7
\a_2t[7]\ : maxv_lcell
-- Equation(s):
-- a_2t(7) = DFFEAS(a_2t(7) $ (\Add5~0_combout\ $ (((!\a_2t[4]~9\ & \a_2t[6]~13\) # (\a_2t[4]~9\ & \a_2t[6]~13COUT1_40\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_2t[7]~15\ = CARRY((a_2t(7) & (!\Add5~0_combout\ & !\a_2t[6]~13\)) # (!a_2t(7) & ((!\a_2t[6]~13\) # (!\Add5~0_combout\))))
-- \a_2t[7]~15COUT1_42\ = CARRY((a_2t(7) & (!\Add5~0_combout\ & !\a_2t[6]~13COUT1_40\)) # (!a_2t(7) & ((!\a_2t[6]~13COUT1_40\) # (!\Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_2t(7),
	datab => \Add5~0_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_2t[4]~9\,
	cin0 => \a_2t[6]~13\,
	cin1 => \a_2t[6]~13COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_2t(7),
	cout0 => \a_2t[7]~15\,
	cout1 => \a_2t[7]~15COUT1_42\);

-- Location: LC_X7_Y7_N8
\a_2t[8]\ : maxv_lcell
-- Equation(s):
-- a_2t(8) = DFFEAS(a_2t(8) $ (\Add5~0_combout\ $ ((!(!\a_2t[4]~9\ & \a_2t[7]~15\) # (\a_2t[4]~9\ & \a_2t[7]~15COUT1_42\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_2t[8]~17\ = CARRY((a_2t(8) & ((\Add5~0_combout\) # (!\a_2t[7]~15\))) # (!a_2t(8) & (\Add5~0_combout\ & !\a_2t[7]~15\)))
-- \a_2t[8]~17COUT1_44\ = CARRY((a_2t(8) & ((\Add5~0_combout\) # (!\a_2t[7]~15COUT1_42\))) # (!a_2t(8) & (\Add5~0_combout\ & !\a_2t[7]~15COUT1_42\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_2t(8),
	datab => \Add5~0_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_2t[4]~9\,
	cin0 => \a_2t[7]~15\,
	cin1 => \a_2t[7]~15COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_2t(8),
	cout0 => \a_2t[8]~17\,
	cout1 => \a_2t[8]~17COUT1_44\);

-- Location: LC_X7_Y7_N9
\a_2t[9]\ : maxv_lcell
-- Equation(s):
-- a_2t(9) = DFFEAS((a_2t(9) $ ((!\a_2t[4]~9\ & \a_2t[8]~17\) # (\a_2t[4]~9\ & \a_2t[8]~17COUT1_44\) $ (\Add5~0_combout\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => a_2t(9),
	datad => \Add5~0_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_2t[4]~9\,
	cin0 => \a_2t[8]~17\,
	cin1 => \a_2t[8]~17COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_2t(9));

-- Location: LC_X6_Y7_N6
\Lookup|theta2_r~0\ : maxv_lcell
-- Equation(s):
-- \Lookup|theta2_r~0_combout\ = (a_2t(9) $ ((a_2t(0))))

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
	datab => a_2t(9),
	datac => a_2t(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|theta2_r~0_combout\);

-- Location: LC_X8_Y7_N0
\Lookup|Add0~35\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add0~35_combout\ = a_2t(9) $ ((\Lookup|theta2_r~0_combout\))
-- \Lookup|Add0~37\ = CARRY((a_2t(9) & (\Lookup|theta2_r~0_combout\)))
-- \Lookup|Add0~37COUT1_60\ = CARRY((a_2t(9) & (\Lookup|theta2_r~0_combout\)))

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
	dataa => a_2t(9),
	datab => \Lookup|theta2_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add0~35_combout\,
	cout0 => \Lookup|Add0~37\,
	cout1 => \Lookup|Add0~37COUT1_60\);

-- Location: LC_X8_Y7_N1
\Lookup|Add0~40\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add0~40_combout\ = a_2t(1) $ (a_2t(9) $ ((\Lookup|Add0~37\)))
-- \Lookup|Add0~42\ = CARRY((a_2t(1) $ (!a_2t(9))) # (!\Lookup|Add0~37\))
-- \Lookup|Add0~42COUT1_62\ = CARRY((a_2t(1) $ (!a_2t(9))) # (!\Lookup|Add0~37COUT1_60\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "969f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => a_2t(1),
	datab => a_2t(9),
	cin0 => \Lookup|Add0~37\,
	cin1 => \Lookup|Add0~37COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add0~40_combout\,
	cout0 => \Lookup|Add0~42\,
	cout1 => \Lookup|Add0~42COUT1_62\);

-- Location: LC_X8_Y7_N2
\Lookup|Add0~30\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add0~30_combout\ = a_2t(9) $ (a_2t(2) $ ((!\Lookup|Add0~42\)))
-- \Lookup|Add0~32\ = CARRY((!\Lookup|Add0~42\ & (a_2t(9) $ (a_2t(2)))))
-- \Lookup|Add0~32COUT1_64\ = CARRY((!\Lookup|Add0~42COUT1_62\ & (a_2t(9) $ (a_2t(2)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "6906",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => a_2t(9),
	datab => a_2t(2),
	cin0 => \Lookup|Add0~42\,
	cin1 => \Lookup|Add0~42COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add0~30_combout\,
	cout0 => \Lookup|Add0~32\,
	cout1 => \Lookup|Add0~32COUT1_64\);

-- Location: LC_X8_Y7_N3
\Lookup|Add0~45\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add0~45_combout\ = a_2t(9) $ (a_2t(3) $ ((\Lookup|Add0~32\)))
-- \Lookup|Add0~47\ = CARRY((a_2t(9) $ (!a_2t(3))) # (!\Lookup|Add0~32\))
-- \Lookup|Add0~47COUT1_66\ = CARRY((a_2t(9) $ (!a_2t(3))) # (!\Lookup|Add0~32COUT1_64\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "969f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => a_2t(9),
	datab => a_2t(3),
	cin0 => \Lookup|Add0~32\,
	cin1 => \Lookup|Add0~32COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add0~45_combout\,
	cout0 => \Lookup|Add0~47\,
	cout1 => \Lookup|Add0~47COUT1_66\);

-- Location: LC_X8_Y7_N4
\Lookup|Add0~20\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add0~20_combout\ = a_2t(9) $ (a_2t(4) $ ((!\Lookup|Add0~47\)))
-- \Lookup|Add0~22\ = CARRY((!\Lookup|Add0~47COUT1_66\ & (a_2t(9) $ (a_2t(4)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "6906",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => a_2t(9),
	datab => a_2t(4),
	cin0 => \Lookup|Add0~47\,
	cin1 => \Lookup|Add0~47COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add0~20_combout\,
	cout => \Lookup|Add0~22\);

-- Location: LC_X8_Y7_N5
\Lookup|Add0~0\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add0~0_combout\ = a_2t(9) $ (a_2t(5) $ ((\Lookup|Add0~22\)))
-- \Lookup|Add0~2\ = CARRY((a_2t(9) $ (!a_2t(5))) # (!\Lookup|Add0~22\))
-- \Lookup|Add0~2COUT1_68\ = CARRY((a_2t(9) $ (!a_2t(5))) # (!\Lookup|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "969f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => a_2t(9),
	datab => a_2t(5),
	cin => \Lookup|Add0~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add0~0_combout\,
	cout0 => \Lookup|Add0~2\,
	cout1 => \Lookup|Add0~2COUT1_68\);

-- Location: LC_X8_Y7_N6
\Lookup|Add0~25\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add0~25_combout\ = a_2t(9) $ (a_2t(6) $ ((!(!\Lookup|Add0~22\ & \Lookup|Add0~2\) # (\Lookup|Add0~22\ & \Lookup|Add0~2COUT1_68\))))
-- \Lookup|Add0~27\ = CARRY((!\Lookup|Add0~2\ & (a_2t(9) $ (a_2t(6)))))
-- \Lookup|Add0~27COUT1_70\ = CARRY((!\Lookup|Add0~2COUT1_68\ & (a_2t(9) $ (a_2t(6)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "6906",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => a_2t(9),
	datab => a_2t(6),
	cin => \Lookup|Add0~22\,
	cin0 => \Lookup|Add0~2\,
	cin1 => \Lookup|Add0~2COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add0~25_combout\,
	cout0 => \Lookup|Add0~27\,
	cout1 => \Lookup|Add0~27COUT1_70\);

-- Location: LC_X8_Y7_N7
\Lookup|Add0~5\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add0~5_combout\ = a_2t(9) $ (a_2t(7) $ (((!\Lookup|Add0~22\ & \Lookup|Add0~27\) # (\Lookup|Add0~22\ & \Lookup|Add0~27COUT1_70\))))
-- \Lookup|Add0~7\ = CARRY((a_2t(9) $ (!a_2t(7))) # (!\Lookup|Add0~27\))
-- \Lookup|Add0~7COUT1_72\ = CARRY((a_2t(9) $ (!a_2t(7))) # (!\Lookup|Add0~27COUT1_70\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "969f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => a_2t(9),
	datab => a_2t(7),
	cin => \Lookup|Add0~22\,
	cin0 => \Lookup|Add0~27\,
	cin1 => \Lookup|Add0~27COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add0~5_combout\,
	cout0 => \Lookup|Add0~7\,
	cout1 => \Lookup|Add0~7COUT1_72\);

-- Location: LC_X8_Y7_N8
\Lookup|Add0~10\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add0~10_combout\ = a_2t(9) $ (a_2t(8) $ ((!(!\Lookup|Add0~22\ & \Lookup|Add0~7\) # (\Lookup|Add0~22\ & \Lookup|Add0~7COUT1_72\))))
-- \Lookup|Add0~12\ = CARRY((!\Lookup|Add0~7\ & (a_2t(9) $ (a_2t(8)))))
-- \Lookup|Add0~12COUT1_74\ = CARRY((!\Lookup|Add0~7COUT1_72\ & (a_2t(9) $ (a_2t(8)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "6906",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => a_2t(9),
	datab => a_2t(8),
	cin => \Lookup|Add0~22\,
	cin0 => \Lookup|Add0~7\,
	cin1 => \Lookup|Add0~7COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add0~10_combout\,
	cout0 => \Lookup|Add0~12\,
	cout1 => \Lookup|Add0~12COUT1_74\);

-- Location: LC_X8_Y7_N9
\Lookup|Add0~15\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add0~15_combout\ = ((((!\Lookup|Add0~22\ & \Lookup|Add0~12\) # (\Lookup|Add0~22\ & \Lookup|Add0~12COUT1_74\))))

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
	cin => \Lookup|Add0~22\,
	cin0 => \Lookup|Add0~12\,
	cin1 => \Lookup|Add0~12COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add0~15_combout\);

-- Location: LC_X9_Y7_N3
\Lookup|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \Lookup|LessThan0~0_combout\ = (\Lookup|Add0~45_combout\) # ((\Lookup|Add0~30_combout\ & ((\Lookup|Add0~35_combout\) # (\Lookup|Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add0~35_combout\,
	datab => \Lookup|Add0~30_combout\,
	datac => \Lookup|Add0~40_combout\,
	datad => \Lookup|Add0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|LessThan0~0_combout\);

-- Location: LC_X9_Y7_N8
\Lookup|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \Lookup|LessThan0~1_combout\ = (\Lookup|Add0~25_combout\) # ((\Lookup|Add0~0_combout\ & (\Lookup|Add0~20_combout\ & \Lookup|LessThan0~0_combout\)))

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
	dataa => \Lookup|Add0~0_combout\,
	datab => \Lookup|Add0~25_combout\,
	datac => \Lookup|Add0~20_combout\,
	datad => \Lookup|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|LessThan0~1_combout\);

-- Location: LC_X9_Y7_N9
\Lookup|LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \Lookup|LessThan0~2_combout\ = (\Lookup|Add0~15_combout\) # ((\Lookup|Add0~10_combout\) # ((\Lookup|Add0~5_combout\ & \Lookup|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add0~15_combout\,
	datab => \Lookup|Add0~5_combout\,
	datac => \Lookup|Add0~10_combout\,
	datad => \Lookup|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|LessThan0~2_combout\);

-- Location: LC_X10_Y7_N0
\Lookup|Add1~44\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add1~44_cout0\ = CARRY((!\Lookup|Add0~35_combout\))
-- \Lookup|Add1~44COUT1_55\ = CARRY((!\Lookup|Add0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff55",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add1~42\,
	cout0 => \Lookup|Add1~44_cout0\,
	cout1 => \Lookup|Add1~44COUT1_55\);

-- Location: LC_X10_Y7_N1
\Lookup|Add1~30\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add1~30_combout\ = (\Lookup|Add0~40_combout\ $ ((!\Lookup|Add1~44_cout0\)))
-- \Lookup|Add1~32\ = CARRY(((\Lookup|Add0~40_combout\) # (!\Lookup|Add1~44_cout0\)))
-- \Lookup|Add1~32COUT1_57\ = CARRY(((\Lookup|Add0~40_combout\) # (!\Lookup|Add1~44COUT1_55\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c3cf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Lookup|Add0~40_combout\,
	cin0 => \Lookup|Add1~44_cout0\,
	cin1 => \Lookup|Add1~44COUT1_55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add1~30_combout\,
	cout0 => \Lookup|Add1~32\,
	cout1 => \Lookup|Add1~32COUT1_57\);

-- Location: LC_X10_Y7_N2
\Lookup|Add1~18\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add1~18_combout\ = (\Lookup|Add0~30_combout\ $ ((\Lookup|Add1~32\)))
-- \Lookup|Add1~20\ = CARRY(((!\Lookup|Add0~30_combout\ & !\Lookup|Add1~32\)))
-- \Lookup|Add1~20COUT1_59\ = CARRY(((!\Lookup|Add0~30_combout\ & !\Lookup|Add1~32COUT1_57\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c03",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Lookup|Add0~30_combout\,
	cin0 => \Lookup|Add1~32\,
	cin1 => \Lookup|Add1~32COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add1~18_combout\,
	cout0 => \Lookup|Add1~20\,
	cout1 => \Lookup|Add1~20COUT1_59\);

-- Location: LC_X10_Y7_N3
\Lookup|Add1~24\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add1~24_combout\ = (\Lookup|Add0~45_combout\ $ ((\Lookup|Add1~20\)))
-- \Lookup|Add1~26\ = CARRY(((\Lookup|Add0~45_combout\ & !\Lookup|Add1~20\)))
-- \Lookup|Add1~26COUT1_61\ = CARRY(((\Lookup|Add0~45_combout\ & !\Lookup|Add1~20COUT1_59\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c0c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Lookup|Add0~45_combout\,
	cin0 => \Lookup|Add1~20\,
	cin1 => \Lookup|Add1~20COUT1_59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add1~24_combout\,
	cout0 => \Lookup|Add1~26\,
	cout1 => \Lookup|Add1~26COUT1_61\);

-- Location: LC_X10_Y7_N4
\Lookup|Add1~36\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add1~36_combout\ = (\Lookup|Add0~20_combout\ $ ((\Lookup|Add1~26\)))
-- \Lookup|Add1~38\ = CARRY(((!\Lookup|Add0~20_combout\ & !\Lookup|Add1~26COUT1_61\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c03",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Lookup|Add0~20_combout\,
	cin0 => \Lookup|Add1~26\,
	cin1 => \Lookup|Add1~26COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add1~36_combout\,
	cout => \Lookup|Add1~38\);

-- Location: LC_X10_Y7_N5
\Lookup|Add1~0\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add1~0_combout\ = (\Lookup|Add0~0_combout\ $ ((\Lookup|Add1~38\)))
-- \Lookup|Add1~2\ = CARRY(((\Lookup|Add0~0_combout\ & !\Lookup|Add1~38\)))
-- \Lookup|Add1~2COUT1_63\ = CARRY(((\Lookup|Add0~0_combout\ & !\Lookup|Add1~38\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c0c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Lookup|Add0~0_combout\,
	cin => \Lookup|Add1~38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add1~0_combout\,
	cout0 => \Lookup|Add1~2\,
	cout1 => \Lookup|Add1~2COUT1_63\);

-- Location: LC_X10_Y7_N6
\Lookup|Add1~6\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add1~6_combout\ = (\Lookup|Add0~25_combout\ $ ((!(!\Lookup|Add1~38\ & \Lookup|Add1~2\) # (\Lookup|Add1~38\ & \Lookup|Add1~2COUT1_63\))))
-- \Lookup|Add1~8\ = CARRY(((!\Lookup|Add1~2\) # (!\Lookup|Add0~25_combout\)))
-- \Lookup|Add1~8COUT1_65\ = CARRY(((!\Lookup|Add1~2COUT1_63\) # (!\Lookup|Add0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c33f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Lookup|Add0~25_combout\,
	cin => \Lookup|Add1~38\,
	cin0 => \Lookup|Add1~2\,
	cin1 => \Lookup|Add1~2COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add1~6_combout\,
	cout0 => \Lookup|Add1~8\,
	cout1 => \Lookup|Add1~8COUT1_65\);

-- Location: LC_X10_Y7_N8
\Lookup|Add1~11\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add1~11_combout\ = ((\Lookup|LessThan0~2_combout\ & ((\Lookup|Add1~6_combout\))) # (!\Lookup|LessThan0~2_combout\ & (\Lookup|Add0~25_combout\)))

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
	datab => \Lookup|Add0~25_combout\,
	datac => \Lookup|LessThan0~2_combout\,
	datad => \Lookup|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add1~11_combout\);

-- Location: LC_X9_Y7_N2
\Lookup|Add1~5\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add1~5_combout\ = (\Lookup|LessThan0~2_combout\ & (((\Lookup|Add1~0_combout\)))) # (!\Lookup|LessThan0~2_combout\ & (\Lookup|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add0~0_combout\,
	datab => \Lookup|LessThan0~2_combout\,
	datad => \Lookup|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add1~5_combout\);

-- Location: LC_X9_Y7_N6
\Lookup|Add1~23\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add1~23_combout\ = ((\Lookup|LessThan0~2_combout\ & ((\Lookup|Add1~18_combout\))) # (!\Lookup|LessThan0~2_combout\ & (\Lookup|Add0~30_combout\)))

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
	datab => \Lookup|Add0~30_combout\,
	datac => \Lookup|Add1~18_combout\,
	datad => \Lookup|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add1~23_combout\);

-- Location: LC_X9_Y7_N4
\Lookup|Add1~29\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add1~29_combout\ = ((\Lookup|LessThan0~2_combout\ & ((\Lookup|Add1~24_combout\))) # (!\Lookup|LessThan0~2_combout\ & (\Lookup|Add0~45_combout\)))

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
	datab => \Lookup|Add0~45_combout\,
	datac => \Lookup|Add1~24_combout\,
	datad => \Lookup|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add1~29_combout\);

-- Location: LC_X9_Y7_N1
\Lookup|Add1~35\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add1~35_combout\ = ((\Lookup|LessThan0~2_combout\ & (\Lookup|Add1~30_combout\)) # (!\Lookup|LessThan0~2_combout\ & ((\Lookup|Add0~40_combout\))))

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
	dataa => \Lookup|Add1~30_combout\,
	datac => \Lookup|Add0~40_combout\,
	datad => \Lookup|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add1~35_combout\);

-- Location: LC_X9_Y7_N7
\Lookup|Mux7~14\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux7~14_combout\ = (\Lookup|Add1~29_combout\) # ((\Lookup|Add1~23_combout\ & ((\Lookup|Add0~35_combout\) # (\Lookup|Add1~35_combout\))))

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
	dataa => \Lookup|Add1~23_combout\,
	datab => \Lookup|Add0~35_combout\,
	datac => \Lookup|Add1~29_combout\,
	datad => \Lookup|Add1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux7~14_combout\);

-- Location: LC_X8_Y8_N0
\Lookup|Mux7~15\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux7~15_combout\ = (((!\Lookup|Add1~23_combout\ & !\Lookup|Add1~35_combout\)) # (!\Lookup|Add1~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Lookup|Add1~23_combout\,
	datac => \Lookup|Add1~35_combout\,
	datad => \Lookup|Add1~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux7~15_combout\);

-- Location: LC_X9_Y8_N5
\Lookup|Mux7~16\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux7~16_combout\ = (\Lookup|Add1~11_combout\) # ((\Lookup|Add1~5_combout\ & (\Lookup|Mux7~14_combout\)) # (!\Lookup|Add1~5_combout\ & ((\Lookup|Mux7~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~11_combout\,
	datab => \Lookup|Add1~5_combout\,
	datac => \Lookup|Mux7~14_combout\,
	datad => \Lookup|Mux7~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux7~16_combout\);

-- Location: LC_X9_Y8_N9
\Lookup|Mux7~18\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux7~18_combout\ = (!\Lookup|Add1~11_combout\ & ((\Lookup|LessThan0~2_combout\ & ((\Lookup|Add1~0_combout\))) # (!\Lookup|LessThan0~2_combout\ & (\Lookup|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|LessThan0~2_combout\,
	datab => \Lookup|Add0~0_combout\,
	datac => \Lookup|Add1~0_combout\,
	datad => \Lookup|Add1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux7~18_combout\);

-- Location: LC_X10_Y7_N7
\Lookup|Add1~12\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add1~12_combout\ = (((!\Lookup|Add1~38\ & \Lookup|Add1~8\) # (\Lookup|Add1~38\ & \Lookup|Add1~8COUT1_65\) $ (!\Lookup|Add0~5_combout\)))

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
	datad => \Lookup|Add0~5_combout\,
	cin => \Lookup|Add1~38\,
	cin0 => \Lookup|Add1~8\,
	cin1 => \Lookup|Add1~8COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add1~12_combout\);

-- Location: LC_X10_Y7_N9
\Lookup|Add1~17\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add1~17_combout\ = (\Lookup|LessThan0~2_combout\ & (((\Lookup|Add1~12_combout\)))) # (!\Lookup|LessThan0~2_combout\ & (\Lookup|Add0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|LessThan0~2_combout\,
	datab => \Lookup|Add0~5_combout\,
	datac => \Lookup|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add1~17_combout\);

-- Location: LC_X9_Y7_N0
\Lookup|Add1~41\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add1~41_combout\ = ((\Lookup|LessThan0~2_combout\ & ((\Lookup|Add1~36_combout\))) # (!\Lookup|LessThan0~2_combout\ & (\Lookup|Add0~20_combout\)))

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
	datab => \Lookup|LessThan0~2_combout\,
	datac => \Lookup|Add0~20_combout\,
	datad => \Lookup|Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add1~41_combout\);

-- Location: LC_X8_Y8_N6
\Lookup|Mux7~6\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux7~6_combout\ = (\Lookup|Add1~11_combout\ & (((!\Lookup|Add1~23_combout\) # (!\Lookup|Add0~35_combout\)) # (!\Lookup|Add1~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~35_combout\,
	datab => \Lookup|Add0~35_combout\,
	datac => \Lookup|Add1~11_combout\,
	datad => \Lookup|Add1~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux7~6_combout\);

-- Location: LC_X8_Y8_N4
\Lookup|Mux2~14\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux2~14_combout\ = (!\Lookup|Add1~29_combout\ & ((\Lookup|LessThan0~2_combout\ & ((!\Lookup|Add1~18_combout\))) # (!\Lookup|LessThan0~2_combout\ & (!\Lookup|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "001d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add0~30_combout\,
	datab => \Lookup|LessThan0~2_combout\,
	datac => \Lookup|Add1~18_combout\,
	datad => \Lookup|Add1~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux2~14_combout\);

-- Location: LC_X8_Y8_N7
\Lookup|Mux7~4\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux7~4_combout\ = (\Lookup|Add1~35_combout\ & (\Lookup|Add0~35_combout\ & (\Lookup|Add1~29_combout\ & \Lookup|Add1~23_combout\)))

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
	dataa => \Lookup|Add1~35_combout\,
	datab => \Lookup|Add0~35_combout\,
	datac => \Lookup|Add1~29_combout\,
	datad => \Lookup|Add1~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux7~4_combout\);

-- Location: LC_X8_Y8_N8
\Lookup|Mux7~5\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux7~5_combout\ = (!\Lookup|Add1~11_combout\ & ((\Lookup|Add1~5_combout\ & ((\Lookup|Mux7~4_combout\))) # (!\Lookup|Add1~5_combout\ & (\Lookup|Mux2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3210",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~5_combout\,
	datab => \Lookup|Add1~11_combout\,
	datac => \Lookup|Mux2~14_combout\,
	datad => \Lookup|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux7~5_combout\);

-- Location: LC_X8_Y8_N9
\Lookup|Mux7~7\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux7~7_combout\ = (\Lookup|Mux7~5_combout\) # ((!\Lookup|Add1~29_combout\ & (\Lookup|Add1~5_combout\ & \Lookup|Mux7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~29_combout\,
	datab => \Lookup|Add1~5_combout\,
	datac => \Lookup|Mux7~6_combout\,
	datad => \Lookup|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux7~7_combout\);

-- Location: LC_X8_Y8_N3
\Lookup|Mux7~10\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux7~10_combout\ = (\Lookup|Add0~35_combout\ & ((\Lookup|LessThan0~2_combout\ & ((!\Lookup|Add1~24_combout\))) # (!\Lookup|LessThan0~2_combout\ & (!\Lookup|Add0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "02a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add0~35_combout\,
	datab => \Lookup|Add0~45_combout\,
	datac => \Lookup|LessThan0~2_combout\,
	datad => \Lookup|Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux7~10_combout\);

-- Location: LC_X9_Y8_N4
\Lookup|Mux7~11\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux7~11_combout\ = (\Lookup|Add1~35_combout\ & (((\Lookup|Add1~5_combout\) # (!\Lookup|Add0~35_combout\)) # (!\Lookup|Add1~23_combout\))) # (!\Lookup|Add1~35_combout\ & ((\Lookup|Add1~23_combout\) # ((\Lookup|Add0~35_combout\) # 
-- (!\Lookup|Add1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe7f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~35_combout\,
	datab => \Lookup|Add1~23_combout\,
	datac => \Lookup|Add0~35_combout\,
	datad => \Lookup|Add1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux7~11_combout\);

-- Location: LC_X9_Y8_N6
\Lookup|Mux7~8\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux7~8_combout\ = (\Lookup|Add1~23_combout\ & ((\Lookup|Add1~5_combout\) # ((\Lookup|Add0~35_combout\ & \Lookup|Add1~35_combout\)))) # (!\Lookup|Add1~23_combout\ & (((\Lookup|Add1~35_combout\ & \Lookup|Add1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add0~35_combout\,
	datab => \Lookup|Add1~23_combout\,
	datac => \Lookup|Add1~35_combout\,
	datad => \Lookup|Add1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux7~8_combout\);

-- Location: LC_X9_Y8_N7
\Lookup|Mux7~9\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux7~9_combout\ = (\Lookup|Add1~11_combout\ & (!\Lookup|Add0~35_combout\ & (\Lookup|Add1~29_combout\))) # (!\Lookup|Add1~11_combout\ & (((\Lookup|Add1~29_combout\) # (\Lookup|Mux7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7570",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~11_combout\,
	datab => \Lookup|Add0~35_combout\,
	datac => \Lookup|Add1~29_combout\,
	datad => \Lookup|Mux7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux7~9_combout\);

-- Location: LC_X9_Y8_N8
\Lookup|Mux7~12\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux7~12_combout\ = (\Lookup|Mux7~9_combout\) # ((\Lookup|Add1~11_combout\ & ((\Lookup|Mux7~10_combout\) # (\Lookup|Mux7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~11_combout\,
	datab => \Lookup|Mux7~10_combout\,
	datac => \Lookup|Mux7~11_combout\,
	datad => \Lookup|Mux7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux7~12_combout\);

-- Location: LC_X9_Y8_N0
\Lookup|Mux7~13\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux7~13_combout\ = (\Lookup|Add1~41_combout\ & ((\Lookup|Add1~17_combout\) # ((\Lookup|Mux7~7_combout\)))) # (!\Lookup|Add1~41_combout\ & (!\Lookup|Add1~17_combout\ & ((\Lookup|Mux7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~41_combout\,
	datab => \Lookup|Add1~17_combout\,
	datac => \Lookup|Mux7~7_combout\,
	datad => \Lookup|Mux7~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux7~13_combout\);

-- Location: LC_X9_Y8_N1
\Lookup|Mux7~17\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux7~17_combout\ = (\Lookup|Add1~17_combout\ & ((\Lookup|Mux7~13_combout\ & (!\Lookup|Mux7~16_combout\)) # (!\Lookup|Mux7~13_combout\ & ((\Lookup|Mux7~18_combout\))))) # (!\Lookup|Add1~17_combout\ & (((\Lookup|Mux7~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5fc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Mux7~16_combout\,
	datab => \Lookup|Mux7~18_combout\,
	datac => \Lookup|Add1~17_combout\,
	datad => \Lookup|Mux7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux7~17_combout\);

-- Location: LC_X9_Y8_N2
\Add0~1\ : maxv_lcell
-- Equation(s):
-- \Add0~1_combout\ = ((\Add0~0\ $ (\Lookup|Mux7~17_combout\)))

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
	datac => \Add0~0\,
	datad => \Lookup|Mux7~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~1_combout\);

-- Location: LC_X10_Y8_N3
\a_x[0]~31\ : maxv_lcell
-- Equation(s):
-- \a_x[0]~31COUT0_49\ = CARRY((!\Add0~0\))
-- \a_x[0]~31COUT1_50\ = CARRY((!\Add0~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \a_x[0]~31_cout\,
	cout0 => \a_x[0]~31COUT0_49\,
	cout1 => \a_x[0]~31COUT1_50\);

-- Location: LC_X10_Y8_N4
\a_x[0]\ : maxv_lcell
-- Equation(s):
-- a_x(0) = DFFEAS(a_x(0) $ (\Add0~1_combout\ $ ((!\a_x[0]~31COUT0_49\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_x[0]~1\ = CARRY((a_x(0) & (\Add0~1_combout\ & !\a_x[0]~31COUT1_50\)) # (!a_x(0) & ((\Add0~1_combout\) # (!\a_x[0]~31COUT1_50\))))

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
	clk => \CLK~combout\,
	dataa => a_x(0),
	datab => \Add0~1_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin0 => \a_x[0]~31COUT0_49\,
	cin1 => \a_x[0]~31COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_x(0),
	cout => \a_x[0]~1\);

-- Location: LC_X10_Y9_N4
\Lookup|Mux6~2\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux6~2_combout\ = (\Lookup|Add1~41_combout\ & (!\Lookup|Add1~5_combout\ & ((\Lookup|Add1~23_combout\) # (\Lookup|Add1~29_combout\)))) # (!\Lookup|Add1~41_combout\ & (((\Lookup|Add1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~41_combout\,
	datab => \Lookup|Add1~23_combout\,
	datac => \Lookup|Add1~29_combout\,
	datad => \Lookup|Add1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux6~2_combout\);

-- Location: LC_X10_Y9_N7
\Lookup|Mux6~0\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux6~0_combout\ = (\Lookup|Add1~29_combout\) # ((\Lookup|Add0~35_combout\ & (\Lookup|Add1~35_combout\ & \Lookup|Add1~23_combout\)))

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
	dataa => \Lookup|Add0~35_combout\,
	datab => \Lookup|Add1~35_combout\,
	datac => \Lookup|Add1~29_combout\,
	datad => \Lookup|Add1~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux6~0_combout\);

-- Location: LC_X10_Y9_N8
\Lookup|Mux6~1\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux6~1_combout\ = (\Lookup|Add1~41_combout\ & (((!\Lookup|Mux6~0_combout\)) # (!\Lookup|Add1~5_combout\))) # (!\Lookup|Add1~41_combout\ & ((\Lookup|Add1~5_combout\) # ((\Lookup|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f6e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~41_combout\,
	datab => \Lookup|Add1~5_combout\,
	datac => \Lookup|Mux6~0_combout\,
	datad => \Lookup|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux6~1_combout\);

-- Location: LC_X10_Y9_N1
\Lookup|Mux6~3\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux6~3_combout\ = (!\Lookup|Add1~17_combout\ & ((\Lookup|Add1~11_combout\ & ((\Lookup|Mux6~1_combout\))) # (!\Lookup|Add1~11_combout\ & (\Lookup|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5410",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~17_combout\,
	datab => \Lookup|Add1~11_combout\,
	datac => \Lookup|Mux6~2_combout\,
	datad => \Lookup|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux6~3_combout\);

-- Location: LC_X10_Y8_N1
\Add0~2\ : maxv_lcell
-- Equation(s):
-- \Add0~2_combout\ = \Add0~0\ $ (\Lookup|Mux6~3_combout\ $ (((!\Lookup|Mux7~17_combout\) # (!\Lookup|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6c93",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|LessThan0~2_combout\,
	datab => \Add0~0\,
	datac => \Lookup|Mux7~17_combout\,
	datad => \Lookup|Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~2_combout\);

-- Location: LC_X10_Y8_N5
\a_x[1]\ : maxv_lcell
-- Equation(s):
-- a_x(1) = DFFEAS(a_x(1) $ (\Add0~2_combout\ $ ((!\a_x[0]~1\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_x[1]~3\ = CARRY((a_x(1) & ((\Add0~2_combout\) # (!\a_x[0]~1\))) # (!a_x(1) & (\Add0~2_combout\ & !\a_x[0]~1\)))
-- \a_x[1]~3COUT1_52\ = CARRY((a_x(1) & ((\Add0~2_combout\) # (!\a_x[0]~1\))) # (!a_x(1) & (\Add0~2_combout\ & !\a_x[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_x(1),
	datab => \Add0~2_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_x[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_x(1),
	cout0 => \a_x[1]~3\,
	cout1 => \a_x[1]~3COUT1_52\);

-- Location: LC_X10_Y9_N9
\Lookup|Mux3~14\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux3~14_combout\ = (\Lookup|Add1~41_combout\ & ((\Lookup|LessThan0~2_combout\ & ((\Lookup|Add1~0_combout\))) # (!\Lookup|LessThan0~2_combout\ & (\Lookup|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add0~0_combout\,
	datab => \Lookup|LessThan0~2_combout\,
	datac => \Lookup|Add1~41_combout\,
	datad => \Lookup|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux3~14_combout\);

-- Location: LC_X10_Y9_N0
\Lookup|Mux5~0\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux5~0_combout\ = (!\Lookup|Add1~17_combout\ & ((\Lookup|Add1~11_combout\ & ((!\Lookup|Mux3~14_combout\) # (!\Lookup|Mux6~0_combout\))) # (!\Lookup|Add1~11_combout\ & ((\Lookup|Mux3~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1544",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~17_combout\,
	datab => \Lookup|Add1~11_combout\,
	datac => \Lookup|Mux6~0_combout\,
	datad => \Lookup|Mux3~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux5~0_combout\);

-- Location: LC_X9_Y8_N3
\Lookup|Add2~0\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add2~0_combout\ = (((\Lookup|Mux6~3_combout\) # (\Lookup|Mux7~17_combout\)))

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
	datac => \Lookup|Mux6~3_combout\,
	datad => \Lookup|Mux7~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add2~0_combout\);

-- Location: LC_X10_Y8_N0
\Add0~3\ : maxv_lcell
-- Equation(s):
-- \Add0~3_combout\ = \Lookup|Mux5~0_combout\ $ (\Add0~0\ $ (((!\Lookup|Add2~0_combout\) # (!\Lookup|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "69c3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|LessThan0~2_combout\,
	datab => \Lookup|Mux5~0_combout\,
	datac => \Add0~0\,
	datad => \Lookup|Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~3_combout\);

-- Location: LC_X10_Y8_N6
\a_x[2]\ : maxv_lcell
-- Equation(s):
-- a_x(2) = DFFEAS(a_x(2) $ (\Add0~3_combout\ $ (((!\a_x[0]~1\ & \a_x[1]~3\) # (\a_x[0]~1\ & \a_x[1]~3COUT1_52\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_x[2]~5\ = CARRY((a_x(2) & (!\Add0~3_combout\ & !\a_x[1]~3\)) # (!a_x(2) & ((!\a_x[1]~3\) # (!\Add0~3_combout\))))
-- \a_x[2]~5COUT1_54\ = CARRY((a_x(2) & (!\Add0~3_combout\ & !\a_x[1]~3COUT1_52\)) # (!a_x(2) & ((!\a_x[1]~3COUT1_52\) # (!\Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_x(2),
	datab => \Add0~3_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_x[0]~1\,
	cin0 => \a_x[1]~3\,
	cin1 => \a_x[1]~3COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_x(2),
	cout0 => \a_x[2]~5\,
	cout1 => \a_x[2]~5COUT1_54\);

-- Location: LC_X10_Y9_N5
\Lookup|Mux4~0\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux4~0_combout\ = (((\Lookup|Mux6~0_combout\ & \Lookup|Mux3~14_combout\)))

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
	datac => \Lookup|Mux6~0_combout\,
	datad => \Lookup|Mux3~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux4~0_combout\);

-- Location: LC_X10_Y9_N3
\Lookup|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux0~0_combout\ = (((\Lookup|Mux7~14_combout\ & \Lookup|Mux3~14_combout\)))

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
	datac => \Lookup|Mux7~14_combout\,
	datad => \Lookup|Mux3~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux0~0_combout\);

-- Location: LC_X10_Y9_N2
\Lookup|Mux4~1\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux4~1_combout\ = (\Lookup|Add1~17_combout\ & (!\Lookup|Add1~11_combout\ & ((!\Lookup|Mux0~0_combout\)))) # (!\Lookup|Add1~17_combout\ & (\Lookup|Add1~11_combout\ & (\Lookup|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4062",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~17_combout\,
	datab => \Lookup|Add1~11_combout\,
	datac => \Lookup|Mux4~0_combout\,
	datad => \Lookup|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux4~1_combout\);

-- Location: LC_X11_Y8_N8
\Lookup|Add2~1\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add2~1_combout\ = ((\Lookup|Mux5~0_combout\) # ((\Lookup|Mux6~3_combout\) # (\Lookup|Mux7~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Lookup|Mux5~0_combout\,
	datac => \Lookup|Mux6~3_combout\,
	datad => \Lookup|Mux7~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add2~1_combout\);

-- Location: LC_X10_Y8_N2
\Add0~4\ : maxv_lcell
-- Equation(s):
-- \Add0~4_combout\ = \Add0~0\ $ (\Lookup|Mux4~1_combout\ $ (((!\Lookup|Add2~1_combout\) # (!\Lookup|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "69c3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|LessThan0~2_combout\,
	datab => \Add0~0\,
	datac => \Lookup|Mux4~1_combout\,
	datad => \Lookup|Add2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~4_combout\);

-- Location: LC_X10_Y8_N7
\a_x[3]\ : maxv_lcell
-- Equation(s):
-- a_x(3) = DFFEAS(a_x(3) $ (\Add0~4_combout\ $ ((!(!\a_x[0]~1\ & \a_x[2]~5\) # (\a_x[0]~1\ & \a_x[2]~5COUT1_54\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_x[3]~7\ = CARRY((a_x(3) & ((\Add0~4_combout\) # (!\a_x[2]~5\))) # (!a_x(3) & (\Add0~4_combout\ & !\a_x[2]~5\)))
-- \a_x[3]~7COUT1_56\ = CARRY((a_x(3) & ((\Add0~4_combout\) # (!\a_x[2]~5COUT1_54\))) # (!a_x(3) & (\Add0~4_combout\ & !\a_x[2]~5COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_x(3),
	datab => \Add0~4_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_x[0]~1\,
	cin0 => \a_x[2]~5\,
	cin1 => \a_x[2]~5COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_x(3),
	cout0 => \a_x[3]~7\,
	cout1 => \a_x[3]~7COUT1_56\);

-- Location: LC_X11_Y8_N9
\Add0~5\ : maxv_lcell
-- Equation(s):
-- \Add0~5_combout\ = \Add0~0\ $ ((((!\Lookup|Mux4~1_combout\ & !\Lookup|Add2~1_combout\)) # (!\Lookup|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c393",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Mux4~1_combout\,
	datab => \Add0~0\,
	datac => \Lookup|LessThan0~2_combout\,
	datad => \Lookup|Add2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\);

-- Location: LC_X10_Y8_N8
\a_x[4]\ : maxv_lcell
-- Equation(s):
-- a_x(4) = DFFEAS(a_x(4) $ (\Add0~5_combout\ $ (((!\a_x[0]~1\ & \a_x[3]~7\) # (\a_x[0]~1\ & \a_x[3]~7COUT1_56\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_x[4]~9\ = CARRY((a_x(4) & (!\Add0~5_combout\ & !\a_x[3]~7\)) # (!a_x(4) & ((!\a_x[3]~7\) # (!\Add0~5_combout\))))
-- \a_x[4]~9COUT1_58\ = CARRY((a_x(4) & (!\Add0~5_combout\ & !\a_x[3]~7COUT1_56\)) # (!a_x(4) & ((!\a_x[3]~7COUT1_56\) # (!\Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_x(4),
	datab => \Add0~5_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_x[0]~1\,
	cin0 => \a_x[3]~7\,
	cin1 => \a_x[3]~7COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_x(4),
	cout0 => \a_x[4]~9\,
	cout1 => \a_x[4]~9COUT1_58\);

-- Location: LC_X10_Y8_N9
\a_x[5]\ : maxv_lcell
-- Equation(s):
-- a_x(5) = DFFEAS(a_x(5) $ (\Add0~5_combout\ $ ((!(!\a_x[0]~1\ & \a_x[4]~9\) # (\a_x[0]~1\ & \a_x[4]~9COUT1_58\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_x[5]~11\ = CARRY((a_x(5) & ((\Add0~5_combout\) # (!\a_x[4]~9COUT1_58\))) # (!a_x(5) & (\Add0~5_combout\ & !\a_x[4]~9COUT1_58\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_x(5),
	datab => \Add0~5_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_x[0]~1\,
	cin0 => \a_x[4]~9\,
	cin1 => \a_x[4]~9COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_x(5),
	cout => \a_x[5]~11\);

-- Location: LC_X11_Y8_N0
\a_x[6]\ : maxv_lcell
-- Equation(s):
-- a_x(6) = DFFEAS(a_x(6) $ (\Add0~5_combout\ $ ((\a_x[5]~11\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_x[6]~13\ = CARRY((a_x(6) & (!\Add0~5_combout\ & !\a_x[5]~11\)) # (!a_x(6) & ((!\a_x[5]~11\) # (!\Add0~5_combout\))))
-- \a_x[6]~13COUT1_60\ = CARRY((a_x(6) & (!\Add0~5_combout\ & !\a_x[5]~11\)) # (!a_x(6) & ((!\a_x[5]~11\) # (!\Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_x(6),
	datab => \Add0~5_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_x[5]~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_x(6),
	cout0 => \a_x[6]~13\,
	cout1 => \a_x[6]~13COUT1_60\);

-- Location: LC_X11_Y8_N1
\a_x[7]\ : maxv_lcell
-- Equation(s):
-- a_x(7) = DFFEAS(a_x(7) $ (\Add0~5_combout\ $ ((!(!\a_x[5]~11\ & \a_x[6]~13\) # (\a_x[5]~11\ & \a_x[6]~13COUT1_60\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_x[7]~15\ = CARRY((a_x(7) & ((\Add0~5_combout\) # (!\a_x[6]~13\))) # (!a_x(7) & (\Add0~5_combout\ & !\a_x[6]~13\)))
-- \a_x[7]~15COUT1_62\ = CARRY((a_x(7) & ((\Add0~5_combout\) # (!\a_x[6]~13COUT1_60\))) # (!a_x(7) & (\Add0~5_combout\ & !\a_x[6]~13COUT1_60\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_x(7),
	datab => \Add0~5_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_x[5]~11\,
	cin0 => \a_x[6]~13\,
	cin1 => \a_x[6]~13COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_x(7),
	cout0 => \a_x[7]~15\,
	cout1 => \a_x[7]~15COUT1_62\);

-- Location: LC_X11_Y8_N2
\a_x[8]\ : maxv_lcell
-- Equation(s):
-- a_x(8) = DFFEAS(a_x(8) $ (\Add0~5_combout\ $ (((!\a_x[5]~11\ & \a_x[7]~15\) # (\a_x[5]~11\ & \a_x[7]~15COUT1_62\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_x[8]~17\ = CARRY((a_x(8) & (!\Add0~5_combout\ & !\a_x[7]~15\)) # (!a_x(8) & ((!\a_x[7]~15\) # (!\Add0~5_combout\))))
-- \a_x[8]~17COUT1_64\ = CARRY((a_x(8) & (!\Add0~5_combout\ & !\a_x[7]~15COUT1_62\)) # (!a_x(8) & ((!\a_x[7]~15COUT1_62\) # (!\Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_x(8),
	datab => \Add0~5_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_x[5]~11\,
	cin0 => \a_x[7]~15\,
	cin1 => \a_x[7]~15COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_x(8),
	cout0 => \a_x[8]~17\,
	cout1 => \a_x[8]~17COUT1_64\);

-- Location: LC_X11_Y8_N3
\a_x[9]\ : maxv_lcell
-- Equation(s):
-- a_x(9) = DFFEAS(a_x(9) $ (\Add0~5_combout\ $ ((!(!\a_x[5]~11\ & \a_x[8]~17\) # (\a_x[5]~11\ & \a_x[8]~17COUT1_64\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_x[9]~19\ = CARRY((a_x(9) & ((\Add0~5_combout\) # (!\a_x[8]~17\))) # (!a_x(9) & (\Add0~5_combout\ & !\a_x[8]~17\)))
-- \a_x[9]~19COUT1_66\ = CARRY((a_x(9) & ((\Add0~5_combout\) # (!\a_x[8]~17COUT1_64\))) # (!a_x(9) & (\Add0~5_combout\ & !\a_x[8]~17COUT1_64\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_x(9),
	datab => \Add0~5_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_x[5]~11\,
	cin0 => \a_x[8]~17\,
	cin1 => \a_x[8]~17COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_x(9),
	cout0 => \a_x[9]~19\,
	cout1 => \a_x[9]~19COUT1_66\);

-- Location: LC_X11_Y8_N4
\a_x[10]\ : maxv_lcell
-- Equation(s):
-- a_x(10) = DFFEAS(a_x(10) $ (\Add0~5_combout\ $ (((!\a_x[5]~11\ & \a_x[9]~19\) # (\a_x[5]~11\ & \a_x[9]~19COUT1_66\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_x[10]~21\ = CARRY((a_x(10) & (!\Add0~5_combout\ & !\a_x[9]~19COUT1_66\)) # (!a_x(10) & ((!\a_x[9]~19COUT1_66\) # (!\Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_x(10),
	datab => \Add0~5_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_x[5]~11\,
	cin0 => \a_x[9]~19\,
	cin1 => \a_x[9]~19COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_x(10),
	cout => \a_x[10]~21\);

-- Location: LC_X11_Y8_N5
\a_x[11]\ : maxv_lcell
-- Equation(s):
-- a_x(11) = DFFEAS(a_x(11) $ (\Add0~5_combout\ $ ((!\a_x[10]~21\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_x[11]~23\ = CARRY((a_x(11) & ((\Add0~5_combout\) # (!\a_x[10]~21\))) # (!a_x(11) & (\Add0~5_combout\ & !\a_x[10]~21\)))
-- \a_x[11]~23COUT1_68\ = CARRY((a_x(11) & ((\Add0~5_combout\) # (!\a_x[10]~21\))) # (!a_x(11) & (\Add0~5_combout\ & !\a_x[10]~21\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_x(11),
	datab => \Add0~5_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_x[10]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_x(11),
	cout0 => \a_x[11]~23\,
	cout1 => \a_x[11]~23COUT1_68\);

-- Location: LC_X11_Y8_N6
\a_x[12]\ : maxv_lcell
-- Equation(s):
-- a_x(12) = DFFEAS(a_x(12) $ (\Add0~5_combout\ $ (((!\a_x[10]~21\ & \a_x[11]~23\) # (\a_x[10]~21\ & \a_x[11]~23COUT1_68\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_x[12]~25\ = CARRY((a_x(12) & (!\Add0~5_combout\ & !\a_x[11]~23\)) # (!a_x(12) & ((!\a_x[11]~23\) # (!\Add0~5_combout\))))
-- \a_x[12]~25COUT1_70\ = CARRY((a_x(12) & (!\Add0~5_combout\ & !\a_x[11]~23COUT1_68\)) # (!a_x(12) & ((!\a_x[11]~23COUT1_68\) # (!\Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_x(12),
	datab => \Add0~5_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_x[10]~21\,
	cin0 => \a_x[11]~23\,
	cin1 => \a_x[11]~23COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_x(12),
	cout0 => \a_x[12]~25\,
	cout1 => \a_x[12]~25COUT1_70\);

-- Location: LC_X11_Y8_N7
\a_x[13]\ : maxv_lcell
-- Equation(s):
-- a_x(13) = DFFEAS((a_x(13) $ ((!\a_x[10]~21\ & \a_x[12]~25\) # (\a_x[10]~21\ & \a_x[12]~25COUT1_70\) $ (!\Add0~5_combout\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )

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
	clk => \CLK~combout\,
	datab => a_x(13),
	datad => \Add0~5_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_x[10]~21\,
	cin0 => \a_x[12]~25\,
	cin1 => \a_x[12]~25COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_x(13));

-- Location: LC_X8_Y9_N0
\Lookup|Mux3~10\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux3~10_combout\ = (\Lookup|Add1~29_combout\ & ((\Lookup|Add1~23_combout\) # ((\Lookup|Add1~35_combout\ & \Lookup|Add0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~35_combout\,
	datab => \Lookup|Add0~35_combout\,
	datac => \Lookup|Add1~29_combout\,
	datad => \Lookup|Add1~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux3~10_combout\);

-- Location: LC_X9_Y7_N5
\Lookup|Mux3~9\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux3~9_combout\ = ((\Lookup|Add1~35_combout\ & (\Lookup|Add1~23_combout\ & \Lookup|Add1~29_combout\)))

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
	datab => \Lookup|Add1~35_combout\,
	datac => \Lookup|Add1~23_combout\,
	datad => \Lookup|Add1~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux3~9_combout\);

-- Location: LC_X8_Y9_N5
\Lookup|Mux3~11\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux3~11_combout\ = (\Lookup|Add1~5_combout\ & (\Lookup|Add1~41_combout\ & ((\Lookup|Mux3~9_combout\)))) # (!\Lookup|Add1~5_combout\ & (((!\Lookup|Mux3~10_combout\)) # (!\Lookup|Add1~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9d15",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~5_combout\,
	datab => \Lookup|Add1~41_combout\,
	datac => \Lookup|Mux3~10_combout\,
	datad => \Lookup|Mux3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux3~11_combout\);

-- Location: LC_X8_Y9_N1
\Lookup|Mux3~7\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux3~7_combout\ = (\Lookup|Add1~11_combout\) # ((\Lookup|Mux7~14_combout\ & (\Lookup|Add1~5_combout\ $ (!\Lookup|Add1~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~11_combout\,
	datab => \Lookup|Add1~5_combout\,
	datac => \Lookup|Mux7~14_combout\,
	datad => \Lookup|Add1~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux3~7_combout\);

-- Location: LC_X8_Y9_N9
\Lookup|Mux3~5\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux3~5_combout\ = (\Lookup|Add1~29_combout\) # ((\Lookup|Add1~23_combout\) # ((\Lookup|Add1~35_combout\ & \Lookup|Add0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~35_combout\,
	datab => \Lookup|Add0~35_combout\,
	datac => \Lookup|Add1~29_combout\,
	datad => \Lookup|Add1~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux3~5_combout\);

-- Location: LC_X8_Y9_N3
\Lookup|Mux3~4\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux3~4_combout\ = (\Lookup|Add1~35_combout\ & (((!\Lookup|Add1~23_combout\) # (!\Lookup|Add1~29_combout\)))) # (!\Lookup|Add1~35_combout\ & ((\Lookup|Add0~35_combout\) # ((\Lookup|Add1~29_combout\) # (\Lookup|Add1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5ffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~35_combout\,
	datab => \Lookup|Add0~35_combout\,
	datac => \Lookup|Add1~29_combout\,
	datad => \Lookup|Add1~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux3~4_combout\);

-- Location: LC_X8_Y9_N4
\Lookup|Mux3~6\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux3~6_combout\ = (\Lookup|Add1~5_combout\ & (((!\Lookup|Add1~41_combout\ & \Lookup|Mux3~4_combout\)))) # (!\Lookup|Add1~5_combout\ & (!\Lookup|Mux3~5_combout\ & (\Lookup|Add1~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1a10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~5_combout\,
	datab => \Lookup|Mux3~5_combout\,
	datac => \Lookup|Add1~41_combout\,
	datad => \Lookup|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux3~6_combout\);

-- Location: LC_X8_Y9_N6
\Lookup|Mux3~15\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux3~15_combout\ = (\Lookup|Add1~5_combout\ & ((\Lookup|Add1~29_combout\) # ((\Lookup|Add1~35_combout\ & \Lookup|Add1~23_combout\)))) # (!\Lookup|Add1~5_combout\ & (((!\Lookup|Add1~29_combout\ & !\Lookup|Add1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8c3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~35_combout\,
	datab => \Lookup|Add1~5_combout\,
	datac => \Lookup|Add1~29_combout\,
	datad => \Lookup|Add1~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux3~15_combout\);

-- Location: LC_X8_Y9_N7
\Lookup|Mux3~16\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux3~16_combout\ = (\Lookup|Add1~11_combout\ & ((\Lookup|Add1~5_combout\ & (\Lookup|Add1~41_combout\ $ (\Lookup|Mux3~15_combout\))) # (!\Lookup|Add1~5_combout\ & ((\Lookup|Mux3~15_combout\) # (!\Lookup|Add1~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a82",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~11_combout\,
	datab => \Lookup|Add1~5_combout\,
	datac => \Lookup|Add1~41_combout\,
	datad => \Lookup|Mux3~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux3~16_combout\);

-- Location: LC_X8_Y9_N8
\Lookup|Mux3~8\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux3~8_combout\ = (\Lookup|Mux3~16_combout\) # ((\Lookup|Add1~17_combout\ & ((\Lookup|Mux3~7_combout\) # (\Lookup|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~17_combout\,
	datab => \Lookup|Mux3~7_combout\,
	datac => \Lookup|Mux3~6_combout\,
	datad => \Lookup|Mux3~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux3~8_combout\);

-- Location: LC_X8_Y9_N2
\Lookup|Mux3~12\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux3~12_combout\ = (\Lookup|Mux3~8_combout\) # ((!\Lookup|Add1~17_combout\ & (!\Lookup|Add1~11_combout\ & \Lookup|Mux3~11_combout\)))

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
	dataa => \Lookup|Add1~17_combout\,
	datab => \Lookup|Add1~11_combout\,
	datac => \Lookup|Mux3~11_combout\,
	datad => \Lookup|Mux3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux3~12_combout\);

-- Location: LC_X7_Y9_N8
\Add1~0\ : maxv_lcell
-- Equation(s):
-- \Add1~0_combout\ = ((\Lookup|Mux3~12_combout\ $ (\Add0~0\)))

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
	datac => \Lookup|Mux3~12_combout\,
	datad => \Add0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~0_combout\);

-- Location: LC_X11_Y9_N3
\a_y[0]~30\ : maxv_lcell
-- Equation(s):
-- \a_y[0]~30COUT0_48\ = CARRY((!\Add0~0\))
-- \a_y[0]~30COUT1_49\ = CARRY((!\Add0~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \a_y[0]~30_cout\,
	cout0 => \a_y[0]~30COUT0_48\,
	cout1 => \a_y[0]~30COUT1_49\);

-- Location: LC_X11_Y9_N4
\a_y[0]\ : maxv_lcell
-- Equation(s):
-- a_y(0) = DFFEAS(a_y(0) $ (\Add1~0_combout\ $ ((!\a_y[0]~30COUT0_48\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_y[0]~1\ = CARRY((a_y(0) & (\Add1~0_combout\ & !\a_y[0]~30COUT1_49\)) # (!a_y(0) & ((\Add1~0_combout\) # (!\a_y[0]~30COUT1_49\))))

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
	clk => \CLK~combout\,
	dataa => a_y(0),
	datab => \Add1~0_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin0 => \a_y[0]~30COUT0_48\,
	cin1 => \a_y[0]~30COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_y(0),
	cout => \a_y[0]~1\);

-- Location: LC_X8_Y8_N5
\Lookup|Mux2~15\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux2~15_combout\ = (!\Lookup|Add1~41_combout\ & ((\Lookup|LessThan0~2_combout\ & (!\Lookup|Add1~6_combout\)) # (!\Lookup|LessThan0~2_combout\ & ((!\Lookup|Add0~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0053",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~6_combout\,
	datab => \Lookup|Add0~25_combout\,
	datac => \Lookup|LessThan0~2_combout\,
	datad => \Lookup|Add1~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux2~15_combout\);

-- Location: LC_X8_Y8_N1
\Lookup|Mux2~12\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux2~12_combout\ = (\Lookup|Mux2~14_combout\ & (!\Lookup|Add0~35_combout\ & (\Lookup|Mux2~15_combout\ & !\Lookup|Add1~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Mux2~14_combout\,
	datab => \Lookup|Add0~35_combout\,
	datac => \Lookup|Mux2~15_combout\,
	datad => \Lookup|Add1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux2~12_combout\);

-- Location: LC_X8_Y8_N2
\Lookup|Mux2~8\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux2~8_combout\ = ((!\Lookup|Add1~11_combout\ & ((\Lookup|Mux7~14_combout\) # (\Lookup|Add1~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Lookup|Add1~11_combout\,
	datac => \Lookup|Mux7~14_combout\,
	datad => \Lookup|Add1~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux2~8_combout\);

-- Location: LC_X9_Y9_N7
\Lookup|Mux2~9\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux2~9_combout\ = (\Lookup|Add1~41_combout\) # ((\Lookup|Add1~29_combout\) # ((\Lookup|Add1~35_combout\ & \Lookup|Add1~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~35_combout\,
	datab => \Lookup|Add1~41_combout\,
	datac => \Lookup|Add1~29_combout\,
	datad => \Lookup|Add1~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux2~9_combout\);

-- Location: LC_X9_Y9_N8
\Lookup|Mux2~10\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux2~10_combout\ = (\Lookup|Add1~11_combout\ & (((!\Lookup|Mux2~9_combout\)))) # (!\Lookup|Add1~11_combout\ & (\Lookup|Add1~41_combout\ & (\Lookup|Mux3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "08f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~41_combout\,
	datab => \Lookup|Mux3~9_combout\,
	datac => \Lookup|Add1~11_combout\,
	datad => \Lookup|Mux2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux2~10_combout\);

-- Location: LC_X9_Y9_N9
\Lookup|Mux2~11\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux2~11_combout\ = (\Lookup|Add1~5_combout\ & (((\Lookup|Add1~17_combout\) # (\Lookup|Mux2~10_combout\)))) # (!\Lookup|Add1~5_combout\ & (\Lookup|Add1~11_combout\ & (!\Lookup|Add1~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~11_combout\,
	datab => \Lookup|Add1~5_combout\,
	datac => \Lookup|Add1~17_combout\,
	datad => \Lookup|Mux2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux2~11_combout\);

-- Location: LC_X9_Y9_N4
\Lookup|Mux2~13\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux2~13_combout\ = (\Lookup|Add1~17_combout\ & ((\Lookup|Mux2~11_combout\ & (\Lookup|Mux2~12_combout\)) # (!\Lookup|Mux2~11_combout\ & ((\Lookup|Mux2~8_combout\))))) # (!\Lookup|Add1~17_combout\ & (((\Lookup|Mux2~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~17_combout\,
	datab => \Lookup|Mux2~12_combout\,
	datac => \Lookup|Mux2~8_combout\,
	datad => \Lookup|Mux2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux2~13_combout\);

-- Location: LC_X11_Y9_N1
\Add1~1\ : maxv_lcell
-- Equation(s):
-- \Add1~1_combout\ = \Add0~0\ $ (\Lookup|Mux2~13_combout\ $ (((!\Lookup|Mux3~12_combout\) # (!a_2t(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6a95",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0\,
	datab => a_2t(9),
	datac => \Lookup|Mux3~12_combout\,
	datad => \Lookup|Mux2~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~1_combout\);

-- Location: LC_X11_Y9_N5
\a_y[1]\ : maxv_lcell
-- Equation(s):
-- a_y(1) = DFFEAS(a_y(1) $ (\Add1~1_combout\ $ ((!\a_y[0]~1\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_y[1]~3\ = CARRY((a_y(1) & ((\Add1~1_combout\) # (!\a_y[0]~1\))) # (!a_y(1) & (\Add1~1_combout\ & !\a_y[0]~1\)))
-- \a_y[1]~3COUT1_51\ = CARRY((a_y(1) & ((\Add1~1_combout\) # (!\a_y[0]~1\))) # (!a_y(1) & (\Add1~1_combout\ & !\a_y[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_y(1),
	datab => \Add1~1_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_y[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_y(1),
	cout0 => \a_y[1]~3\,
	cout1 => \a_y[1]~3COUT1_51\);

-- Location: LC_X9_Y9_N5
\Lookup|Mux3~13\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux3~13_combout\ = ((\Lookup|Add1~5_combout\ & (\Lookup|Add1~41_combout\ & \Lookup|Mux3~9_combout\)))

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
	datab => \Lookup|Add1~5_combout\,
	datac => \Lookup|Add1~41_combout\,
	datad => \Lookup|Mux3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux3~13_combout\);

-- Location: LC_X9_Y9_N0
\Lookup|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux1~0_combout\ = (!\Lookup|Mux7~14_combout\ & (!\Lookup|Add1~5_combout\ & (\Lookup|Add1~17_combout\ & \Lookup|Mux2~15_combout\)))

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
	dataa => \Lookup|Mux7~14_combout\,
	datab => \Lookup|Add1~5_combout\,
	datac => \Lookup|Add1~17_combout\,
	datad => \Lookup|Mux2~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux1~0_combout\);

-- Location: LC_X9_Y9_N1
\Lookup|Mux1~1\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux1~1_combout\ = (\Lookup|Mux1~0_combout\) # ((!\Lookup|Add1~17_combout\ & ((\Lookup|Add1~11_combout\) # (\Lookup|Mux3~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff54",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Add1~17_combout\,
	datab => \Lookup|Add1~11_combout\,
	datac => \Lookup|Mux3~13_combout\,
	datad => \Lookup|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux1~1_combout\);

-- Location: LC_X11_Y9_N2
\Lookup|Add3~0\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add3~0_combout\ = (((\Lookup|Mux3~12_combout\) # (\Lookup|Mux2~13_combout\)))

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
	datac => \Lookup|Mux3~12_combout\,
	datad => \Lookup|Mux2~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add3~0_combout\);

-- Location: LC_X11_Y9_N0
\Add1~2\ : maxv_lcell
-- Equation(s):
-- \Add1~2_combout\ = \Add0~0\ $ (\Lookup|Mux1~1_combout\ $ (((!\Lookup|Add3~0_combout\) # (!a_2t(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6999",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0\,
	datab => \Lookup|Mux1~1_combout\,
	datac => a_2t(9),
	datad => \Lookup|Add3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~2_combout\);

-- Location: LC_X11_Y9_N6
\a_y[2]\ : maxv_lcell
-- Equation(s):
-- a_y(2) = DFFEAS(a_y(2) $ (\Add1~2_combout\ $ (((!\a_y[0]~1\ & \a_y[1]~3\) # (\a_y[0]~1\ & \a_y[1]~3COUT1_51\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_y[2]~5\ = CARRY((a_y(2) & (!\Add1~2_combout\ & !\a_y[1]~3\)) # (!a_y(2) & ((!\a_y[1]~3\) # (!\Add1~2_combout\))))
-- \a_y[2]~5COUT1_53\ = CARRY((a_y(2) & (!\Add1~2_combout\ & !\a_y[1]~3COUT1_51\)) # (!a_y(2) & ((!\a_y[1]~3COUT1_51\) # (!\Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_y(2),
	datab => \Add1~2_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_y[0]~1\,
	cin0 => \a_y[1]~3\,
	cin1 => \a_y[1]~3COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_y(2),
	cout0 => \a_y[2]~5\,
	cout1 => \a_y[2]~5COUT1_53\);

-- Location: LC_X9_Y9_N6
\Lookup|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \Lookup|Mux0~1_combout\ = (\Lookup|Add1~17_combout\ & (((\Lookup|Mux0~0_combout\) # (\Lookup|Add1~11_combout\)))) # (!\Lookup|Add1~17_combout\ & (!\Lookup|Mux3~13_combout\ & ((!\Lookup|Add1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccd1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Lookup|Mux3~13_combout\,
	datab => \Lookup|Add1~17_combout\,
	datac => \Lookup|Mux0~0_combout\,
	datad => \Lookup|Add1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Mux0~1_combout\);

-- Location: LC_X9_Y9_N2
\Lookup|Add3~1\ : maxv_lcell
-- Equation(s):
-- \Lookup|Add3~1_combout\ = ((\Lookup|Mux3~12_combout\) # ((\Lookup|Mux2~13_combout\) # (\Lookup|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Lookup|Mux3~12_combout\,
	datac => \Lookup|Mux2~13_combout\,
	datad => \Lookup|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Lookup|Add3~1_combout\);

-- Location: LC_X10_Y9_N6
\Add1~3\ : maxv_lcell
-- Equation(s):
-- \Add1~3_combout\ = \Add0~0\ $ (\Lookup|Mux0~1_combout\ $ (((!\Lookup|Add3~1_combout\) # (!a_2t(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "69a5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0\,
	datab => a_2t(9),
	datac => \Lookup|Mux0~1_combout\,
	datad => \Lookup|Add3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~3_combout\);

-- Location: LC_X11_Y9_N7
\a_y[3]\ : maxv_lcell
-- Equation(s):
-- a_y(3) = DFFEAS(a_y(3) $ (\Add1~3_combout\ $ ((!(!\a_y[0]~1\ & \a_y[2]~5\) # (\a_y[0]~1\ & \a_y[2]~5COUT1_53\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_y[3]~7\ = CARRY((a_y(3) & ((\Add1~3_combout\) # (!\a_y[2]~5\))) # (!a_y(3) & (\Add1~3_combout\ & !\a_y[2]~5\)))
-- \a_y[3]~7COUT1_55\ = CARRY((a_y(3) & ((\Add1~3_combout\) # (!\a_y[2]~5COUT1_53\))) # (!a_y(3) & (\Add1~3_combout\ & !\a_y[2]~5COUT1_53\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_y(3),
	datab => \Add1~3_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_y[0]~1\,
	cin0 => \a_y[2]~5\,
	cin1 => \a_y[2]~5COUT1_53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_y(3),
	cout0 => \a_y[3]~7\,
	cout1 => \a_y[3]~7COUT1_55\);

-- Location: LC_X9_Y9_N3
\Add1~4\ : maxv_lcell
-- Equation(s):
-- \Add1~4_combout\ = \Add0~0\ $ ((((!\Lookup|Mux0~1_combout\ & !\Lookup|Add3~1_combout\)) # (!a_2t(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9995",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0\,
	datab => a_2t(9),
	datac => \Lookup|Mux0~1_combout\,
	datad => \Lookup|Add3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~4_combout\);

-- Location: LC_X11_Y9_N8
\a_y[4]\ : maxv_lcell
-- Equation(s):
-- a_y(4) = DFFEAS(a_y(4) $ (\Add1~4_combout\ $ (((!\a_y[0]~1\ & \a_y[3]~7\) # (\a_y[0]~1\ & \a_y[3]~7COUT1_55\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_y[4]~9\ = CARRY((a_y(4) & (!\Add1~4_combout\ & !\a_y[3]~7\)) # (!a_y(4) & ((!\a_y[3]~7\) # (!\Add1~4_combout\))))
-- \a_y[4]~9COUT1_57\ = CARRY((a_y(4) & (!\Add1~4_combout\ & !\a_y[3]~7COUT1_55\)) # (!a_y(4) & ((!\a_y[3]~7COUT1_55\) # (!\Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_y(4),
	datab => \Add1~4_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_y[0]~1\,
	cin0 => \a_y[3]~7\,
	cin1 => \a_y[3]~7COUT1_55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_y(4),
	cout0 => \a_y[4]~9\,
	cout1 => \a_y[4]~9COUT1_57\);

-- Location: LC_X11_Y9_N9
\a_y[5]\ : maxv_lcell
-- Equation(s):
-- a_y(5) = DFFEAS(\Add1~4_combout\ $ (a_y(5) $ ((!(!\a_y[0]~1\ & \a_y[4]~9\) # (\a_y[0]~1\ & \a_y[4]~9COUT1_57\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_y[5]~11\ = CARRY((\Add1~4_combout\ & ((a_y(5)) # (!\a_y[4]~9COUT1_57\))) # (!\Add1~4_combout\ & (a_y(5) & !\a_y[4]~9COUT1_57\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Add1~4_combout\,
	datab => a_y(5),
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_y[0]~1\,
	cin0 => \a_y[4]~9\,
	cin1 => \a_y[4]~9COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_y(5),
	cout => \a_y[5]~11\);

-- Location: LC_X12_Y9_N0
\a_y[6]\ : maxv_lcell
-- Equation(s):
-- a_y(6) = DFFEAS(\Add1~4_combout\ $ (a_y(6) $ ((\a_y[5]~11\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_y[6]~13\ = CARRY((\Add1~4_combout\ & (!a_y(6) & !\a_y[5]~11\)) # (!\Add1~4_combout\ & ((!\a_y[5]~11\) # (!a_y(6)))))
-- \a_y[6]~13COUT1_59\ = CARRY((\Add1~4_combout\ & (!a_y(6) & !\a_y[5]~11\)) # (!\Add1~4_combout\ & ((!\a_y[5]~11\) # (!a_y(6)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Add1~4_combout\,
	datab => a_y(6),
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_y[5]~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_y(6),
	cout0 => \a_y[6]~13\,
	cout1 => \a_y[6]~13COUT1_59\);

-- Location: LC_X12_Y9_N1
\a_y[7]\ : maxv_lcell
-- Equation(s):
-- a_y(7) = DFFEAS(\Add1~4_combout\ $ (a_y(7) $ ((!(!\a_y[5]~11\ & \a_y[6]~13\) # (\a_y[5]~11\ & \a_y[6]~13COUT1_59\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_y[7]~15\ = CARRY((\Add1~4_combout\ & ((a_y(7)) # (!\a_y[6]~13\))) # (!\Add1~4_combout\ & (a_y(7) & !\a_y[6]~13\)))
-- \a_y[7]~15COUT1_61\ = CARRY((\Add1~4_combout\ & ((a_y(7)) # (!\a_y[6]~13COUT1_59\))) # (!\Add1~4_combout\ & (a_y(7) & !\a_y[6]~13COUT1_59\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Add1~4_combout\,
	datab => a_y(7),
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_y[5]~11\,
	cin0 => \a_y[6]~13\,
	cin1 => \a_y[6]~13COUT1_59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_y(7),
	cout0 => \a_y[7]~15\,
	cout1 => \a_y[7]~15COUT1_61\);

-- Location: LC_X12_Y9_N2
\a_y[8]\ : maxv_lcell
-- Equation(s):
-- a_y(8) = DFFEAS(a_y(8) $ (\Add1~4_combout\ $ (((!\a_y[5]~11\ & \a_y[7]~15\) # (\a_y[5]~11\ & \a_y[7]~15COUT1_61\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_y[8]~17\ = CARRY((a_y(8) & (!\Add1~4_combout\ & !\a_y[7]~15\)) # (!a_y(8) & ((!\a_y[7]~15\) # (!\Add1~4_combout\))))
-- \a_y[8]~17COUT1_63\ = CARRY((a_y(8) & (!\Add1~4_combout\ & !\a_y[7]~15COUT1_61\)) # (!a_y(8) & ((!\a_y[7]~15COUT1_61\) # (!\Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_y(8),
	datab => \Add1~4_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_y[5]~11\,
	cin0 => \a_y[7]~15\,
	cin1 => \a_y[7]~15COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_y(8),
	cout0 => \a_y[8]~17\,
	cout1 => \a_y[8]~17COUT1_63\);

-- Location: LC_X12_Y9_N3
\a_y[9]\ : maxv_lcell
-- Equation(s):
-- a_y(9) = DFFEAS(a_y(9) $ (\Add1~4_combout\ $ ((!(!\a_y[5]~11\ & \a_y[8]~17\) # (\a_y[5]~11\ & \a_y[8]~17COUT1_63\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_y[9]~19\ = CARRY((a_y(9) & ((\Add1~4_combout\) # (!\a_y[8]~17\))) # (!a_y(9) & (\Add1~4_combout\ & !\a_y[8]~17\)))
-- \a_y[9]~19COUT1_65\ = CARRY((a_y(9) & ((\Add1~4_combout\) # (!\a_y[8]~17COUT1_63\))) # (!a_y(9) & (\Add1~4_combout\ & !\a_y[8]~17COUT1_63\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_y(9),
	datab => \Add1~4_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_y[5]~11\,
	cin0 => \a_y[8]~17\,
	cin1 => \a_y[8]~17COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_y(9),
	cout0 => \a_y[9]~19\,
	cout1 => \a_y[9]~19COUT1_65\);

-- Location: LC_X12_Y9_N4
\a_y[10]\ : maxv_lcell
-- Equation(s):
-- a_y(10) = DFFEAS(a_y(10) $ (\Add1~4_combout\ $ (((!\a_y[5]~11\ & \a_y[9]~19\) # (\a_y[5]~11\ & \a_y[9]~19COUT1_65\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_y[10]~21\ = CARRY((a_y(10) & (!\Add1~4_combout\ & !\a_y[9]~19COUT1_65\)) # (!a_y(10) & ((!\a_y[9]~19COUT1_65\) # (!\Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_y(10),
	datab => \Add1~4_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_y[5]~11\,
	cin0 => \a_y[9]~19\,
	cin1 => \a_y[9]~19COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_y(10),
	cout => \a_y[10]~21\);

-- Location: LC_X12_Y9_N5
\a_y[11]\ : maxv_lcell
-- Equation(s):
-- a_y(11) = DFFEAS(a_y(11) $ (\Add1~4_combout\ $ ((!\a_y[10]~21\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_y[11]~23\ = CARRY((a_y(11) & ((\Add1~4_combout\) # (!\a_y[10]~21\))) # (!a_y(11) & (\Add1~4_combout\ & !\a_y[10]~21\)))
-- \a_y[11]~23COUT1_67\ = CARRY((a_y(11) & ((\Add1~4_combout\) # (!\a_y[10]~21\))) # (!a_y(11) & (\Add1~4_combout\ & !\a_y[10]~21\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_y(11),
	datab => \Add1~4_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_y[10]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_y(11),
	cout0 => \a_y[11]~23\,
	cout1 => \a_y[11]~23COUT1_67\);

-- Location: LC_X12_Y9_N6
\a_y[12]\ : maxv_lcell
-- Equation(s):
-- a_y(12) = DFFEAS(a_y(12) $ (\Add1~4_combout\ $ (((!\a_y[10]~21\ & \a_y[11]~23\) # (\a_y[10]~21\ & \a_y[11]~23COUT1_67\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )
-- \a_y[12]~25\ = CARRY((a_y(12) & (!\Add1~4_combout\ & !\a_y[11]~23\)) # (!a_y(12) & ((!\a_y[11]~23\) # (!\Add1~4_combout\))))
-- \a_y[12]~25COUT1_69\ = CARRY((a_y(12) & (!\Add1~4_combout\ & !\a_y[11]~23COUT1_67\)) # (!a_y(12) & ((!\a_y[11]~23COUT1_67\) # (!\Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => a_y(12),
	datab => \Add1~4_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_y[10]~21\,
	cin0 => \a_y[11]~23\,
	cin1 => \a_y[11]~23COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_y(12),
	cout0 => \a_y[12]~25\,
	cout1 => \a_y[12]~25COUT1_69\);

-- Location: LC_X12_Y9_N7
\a_y[13]\ : maxv_lcell
-- Equation(s):
-- a_y(13) = DFFEAS((a_y(13) $ ((!\a_y[10]~21\ & \a_y[12]~25\) # (\a_y[10]~21\ & \a_y[12]~25COUT1_69\) $ (!\Add1~4_combout\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \a_x[0]~28_combout\, , , , )

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
	clk => \CLK~combout\,
	datab => a_y(13),
	datad => \Add1~4_combout\,
	aclr => \RST~combout\,
	ena => \a_x[0]~28_combout\,
	cin => \a_y[10]~21\,
	cin0 => \a_y[12]~25\,
	cin1 => \a_y[12]~25COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_y(13));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FOLLOWING~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FOLLOWING,
	combout => \FOLLOWING~combout\);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(11),
	combout => \FIN_X~combout\(11));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(6),
	combout => \FIN_X~combout\(6));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(1),
	combout => \FIN_X~combout\(1));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(0),
	combout => \FIN_X~combout\(0));

-- Location: LC_X11_Y5_N3
\Add8~70\ : maxv_lcell
-- Equation(s):
-- \Add8~70_combout\ = \FIN_X~combout\(0) $ ((a_x(0)))
-- \Add8~72\ = CARRY((\FIN_X~combout\(0)) # ((!a_x(0))))
-- \Add8~72COUT1_88\ = CARRY((\FIN_X~combout\(0)) # ((!a_x(0))))

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
	dataa => \FIN_X~combout\(0),
	datab => a_x(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~70_combout\,
	cout0 => \Add8~72\,
	cout1 => \Add8~72COUT1_88\);

-- Location: LC_X11_Y5_N4
\Add8~65\ : maxv_lcell
-- Equation(s):
-- \Add8~65_combout\ = a_x(1) $ (\FIN_X~combout\(1) $ ((!\Add8~72\)))
-- \Add8~67\ = CARRY((a_x(1) & ((!\Add8~72COUT1_88\) # (!\FIN_X~combout\(1)))) # (!a_x(1) & (!\FIN_X~combout\(1) & !\Add8~72COUT1_88\)))

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
	dataa => a_x(1),
	datab => \FIN_X~combout\(1),
	cin0 => \Add8~72\,
	cin1 => \Add8~72COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~65_combout\,
	cout => \Add8~67\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(5),
	combout => \FIN_X~combout\(5));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(4),
	combout => \FIN_X~combout\(4));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(3),
	combout => \FIN_X~combout\(3));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(2),
	combout => \FIN_X~combout\(2));

-- Location: LC_X11_Y5_N5
\Add8~60\ : maxv_lcell
-- Equation(s):
-- \Add8~60_combout\ = \FIN_X~combout\(2) $ (a_x(2) $ ((\Add8~67\)))
-- \Add8~62\ = CARRY((\FIN_X~combout\(2) & ((!\Add8~67\) # (!a_x(2)))) # (!\FIN_X~combout\(2) & (!a_x(2) & !\Add8~67\)))
-- \Add8~62COUT1_90\ = CARRY((\FIN_X~combout\(2) & ((!\Add8~67\) # (!a_x(2)))) # (!\FIN_X~combout\(2) & (!a_x(2) & !\Add8~67\)))

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
	dataa => \FIN_X~combout\(2),
	datab => a_x(2),
	cin => \Add8~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~60_combout\,
	cout0 => \Add8~62\,
	cout1 => \Add8~62COUT1_90\);

-- Location: LC_X11_Y5_N6
\Add8~55\ : maxv_lcell
-- Equation(s):
-- \Add8~55_combout\ = \FIN_X~combout\(3) $ (a_x(3) $ ((!(!\Add8~67\ & \Add8~62\) # (\Add8~67\ & \Add8~62COUT1_90\))))
-- \Add8~57\ = CARRY((\FIN_X~combout\(3) & (a_x(3) & !\Add8~62\)) # (!\FIN_X~combout\(3) & ((a_x(3)) # (!\Add8~62\))))
-- \Add8~57COUT1_92\ = CARRY((\FIN_X~combout\(3) & (a_x(3) & !\Add8~62COUT1_90\)) # (!\FIN_X~combout\(3) & ((a_x(3)) # (!\Add8~62COUT1_90\))))

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
	dataa => \FIN_X~combout\(3),
	datab => a_x(3),
	cin => \Add8~67\,
	cin0 => \Add8~62\,
	cin1 => \Add8~62COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~55_combout\,
	cout0 => \Add8~57\,
	cout1 => \Add8~57COUT1_92\);

-- Location: LC_X11_Y5_N7
\Add8~50\ : maxv_lcell
-- Equation(s):
-- \Add8~50_combout\ = \FIN_X~combout\(4) $ (a_x(4) $ (((!\Add8~67\ & \Add8~57\) # (\Add8~67\ & \Add8~57COUT1_92\))))
-- \Add8~52\ = CARRY((\FIN_X~combout\(4) & ((!\Add8~57\) # (!a_x(4)))) # (!\FIN_X~combout\(4) & (!a_x(4) & !\Add8~57\)))
-- \Add8~52COUT1_94\ = CARRY((\FIN_X~combout\(4) & ((!\Add8~57COUT1_92\) # (!a_x(4)))) # (!\FIN_X~combout\(4) & (!a_x(4) & !\Add8~57COUT1_92\)))

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
	dataa => \FIN_X~combout\(4),
	datab => a_x(4),
	cin => \Add8~67\,
	cin0 => \Add8~57\,
	cin1 => \Add8~57COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~50_combout\,
	cout0 => \Add8~52\,
	cout1 => \Add8~52COUT1_94\);

-- Location: LC_X11_Y5_N8
\Add8~45\ : maxv_lcell
-- Equation(s):
-- \Add8~45_combout\ = \FIN_X~combout\(5) $ (a_x(5) $ ((!(!\Add8~67\ & \Add8~52\) # (\Add8~67\ & \Add8~52COUT1_94\))))
-- \Add8~47\ = CARRY((\FIN_X~combout\(5) & (a_x(5) & !\Add8~52\)) # (!\FIN_X~combout\(5) & ((a_x(5)) # (!\Add8~52\))))
-- \Add8~47COUT1_96\ = CARRY((\FIN_X~combout\(5) & (a_x(5) & !\Add8~52COUT1_94\)) # (!\FIN_X~combout\(5) & ((a_x(5)) # (!\Add8~52COUT1_94\))))

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
	dataa => \FIN_X~combout\(5),
	datab => a_x(5),
	cin => \Add8~67\,
	cin0 => \Add8~52\,
	cin1 => \Add8~52COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~45_combout\,
	cout0 => \Add8~47\,
	cout1 => \Add8~47COUT1_96\);

-- Location: LC_X11_Y5_N9
\Add8~40\ : maxv_lcell
-- Equation(s):
-- \Add8~40_combout\ = \FIN_X~combout\(6) $ (a_x(6) $ (((!\Add8~67\ & \Add8~47\) # (\Add8~67\ & \Add8~47COUT1_96\))))
-- \Add8~42\ = CARRY((\FIN_X~combout\(6) & ((!\Add8~47COUT1_96\) # (!a_x(6)))) # (!\FIN_X~combout\(6) & (!a_x(6) & !\Add8~47COUT1_96\)))

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
	dataa => \FIN_X~combout\(6),
	datab => a_x(6),
	cin => \Add8~67\,
	cin0 => \Add8~47\,
	cin1 => \Add8~47COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~40_combout\,
	cout => \Add8~42\);

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(10),
	combout => \FIN_X~combout\(10));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(9),
	combout => \FIN_X~combout\(9));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(8),
	combout => \FIN_X~combout\(8));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(7),
	combout => \FIN_X~combout\(7));

-- Location: LC_X12_Y5_N0
\Add8~35\ : maxv_lcell
-- Equation(s):
-- \Add8~35_combout\ = a_x(7) $ (\FIN_X~combout\(7) $ ((!\Add8~42\)))
-- \Add8~37\ = CARRY((a_x(7) & ((!\Add8~42\) # (!\FIN_X~combout\(7)))) # (!a_x(7) & (!\FIN_X~combout\(7) & !\Add8~42\)))
-- \Add8~37COUT1_98\ = CARRY((a_x(7) & ((!\Add8~42\) # (!\FIN_X~combout\(7)))) # (!a_x(7) & (!\FIN_X~combout\(7) & !\Add8~42\)))

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
	dataa => a_x(7),
	datab => \FIN_X~combout\(7),
	cin => \Add8~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~35_combout\,
	cout0 => \Add8~37\,
	cout1 => \Add8~37COUT1_98\);

-- Location: LC_X12_Y5_N1
\Add8~30\ : maxv_lcell
-- Equation(s):
-- \Add8~30_combout\ = \FIN_X~combout\(8) $ (a_x(8) $ (((!\Add8~42\ & \Add8~37\) # (\Add8~42\ & \Add8~37COUT1_98\))))
-- \Add8~32\ = CARRY((\FIN_X~combout\(8) & ((!\Add8~37\) # (!a_x(8)))) # (!\FIN_X~combout\(8) & (!a_x(8) & !\Add8~37\)))
-- \Add8~32COUT1_100\ = CARRY((\FIN_X~combout\(8) & ((!\Add8~37COUT1_98\) # (!a_x(8)))) # (!\FIN_X~combout\(8) & (!a_x(8) & !\Add8~37COUT1_98\)))

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
	dataa => \FIN_X~combout\(8),
	datab => a_x(8),
	cin => \Add8~42\,
	cin0 => \Add8~37\,
	cin1 => \Add8~37COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~30_combout\,
	cout0 => \Add8~32\,
	cout1 => \Add8~32COUT1_100\);

-- Location: LC_X12_Y5_N2
\Add8~25\ : maxv_lcell
-- Equation(s):
-- \Add8~25_combout\ = a_x(9) $ (\FIN_X~combout\(9) $ ((!(!\Add8~42\ & \Add8~32\) # (\Add8~42\ & \Add8~32COUT1_100\))))
-- \Add8~27\ = CARRY((a_x(9) & ((!\Add8~32\) # (!\FIN_X~combout\(9)))) # (!a_x(9) & (!\FIN_X~combout\(9) & !\Add8~32\)))
-- \Add8~27COUT1_102\ = CARRY((a_x(9) & ((!\Add8~32COUT1_100\) # (!\FIN_X~combout\(9)))) # (!a_x(9) & (!\FIN_X~combout\(9) & !\Add8~32COUT1_100\)))

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
	dataa => a_x(9),
	datab => \FIN_X~combout\(9),
	cin => \Add8~42\,
	cin0 => \Add8~32\,
	cin1 => \Add8~32COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~25_combout\,
	cout0 => \Add8~27\,
	cout1 => \Add8~27COUT1_102\);

-- Location: LC_X12_Y5_N3
\Add8~20\ : maxv_lcell
-- Equation(s):
-- \Add8~20_combout\ = \FIN_X~combout\(10) $ (a_x(10) $ (((!\Add8~42\ & \Add8~27\) # (\Add8~42\ & \Add8~27COUT1_102\))))
-- \Add8~22\ = CARRY((\FIN_X~combout\(10) & ((!\Add8~27\) # (!a_x(10)))) # (!\FIN_X~combout\(10) & (!a_x(10) & !\Add8~27\)))
-- \Add8~22COUT1_104\ = CARRY((\FIN_X~combout\(10) & ((!\Add8~27COUT1_102\) # (!a_x(10)))) # (!\FIN_X~combout\(10) & (!a_x(10) & !\Add8~27COUT1_102\)))

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
	dataa => \FIN_X~combout\(10),
	datab => a_x(10),
	cin => \Add8~42\,
	cin0 => \Add8~27\,
	cin1 => \Add8~27COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~20_combout\,
	cout0 => \Add8~22\,
	cout1 => \Add8~22COUT1_104\);

-- Location: LC_X12_Y5_N4
\Add8~15\ : maxv_lcell
-- Equation(s):
-- \Add8~15_combout\ = a_x(11) $ (\FIN_X~combout\(11) $ ((!(!\Add8~42\ & \Add8~22\) # (\Add8~42\ & \Add8~22COUT1_104\))))
-- \Add8~17\ = CARRY((a_x(11) & ((!\Add8~22COUT1_104\) # (!\FIN_X~combout\(11)))) # (!a_x(11) & (!\FIN_X~combout\(11) & !\Add8~22COUT1_104\)))

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
	dataa => a_x(11),
	datab => \FIN_X~combout\(11),
	cin => \Add8~42\,
	cin0 => \Add8~22\,
	cin1 => \Add8~22COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~15_combout\,
	cout => \Add8~17\);

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(13),
	combout => \FIN_X~combout\(13));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(12),
	combout => \FIN_X~combout\(12));

-- Location: LC_X12_Y5_N5
\Add8~10\ : maxv_lcell
-- Equation(s):
-- \Add8~10_combout\ = \FIN_X~combout\(12) $ (a_x(12) $ ((\Add8~17\)))
-- \Add8~12\ = CARRY((\FIN_X~combout\(12) & ((!\Add8~17\) # (!a_x(12)))) # (!\FIN_X~combout\(12) & (!a_x(12) & !\Add8~17\)))
-- \Add8~12COUT1_106\ = CARRY((\FIN_X~combout\(12) & ((!\Add8~17\) # (!a_x(12)))) # (!\FIN_X~combout\(12) & (!a_x(12) & !\Add8~17\)))

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
	dataa => \FIN_X~combout\(12),
	datab => a_x(12),
	cin => \Add8~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~10_combout\,
	cout0 => \Add8~12\,
	cout1 => \Add8~12COUT1_106\);

-- Location: LC_X12_Y5_N6
\Add8~0\ : maxv_lcell
-- Equation(s):
-- \Add8~0_combout\ = \FIN_X~combout\(13) $ (a_x(13) $ ((!(!\Add8~17\ & \Add8~12\) # (\Add8~17\ & \Add8~12COUT1_106\))))
-- \Add8~2\ = CARRY((\FIN_X~combout\(13) & (a_x(13) & !\Add8~12\)) # (!\FIN_X~combout\(13) & ((a_x(13)) # (!\Add8~12\))))
-- \Add8~2COUT1_108\ = CARRY((\FIN_X~combout\(13) & (a_x(13) & !\Add8~12COUT1_106\)) # (!\FIN_X~combout\(13) & ((a_x(13)) # (!\Add8~12COUT1_106\))))

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
	dataa => \FIN_X~combout\(13),
	datab => a_x(13),
	cin => \Add8~17\,
	cin0 => \Add8~12\,
	cin1 => \Add8~12COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~0_combout\,
	cout0 => \Add8~2\,
	cout1 => \Add8~2COUT1_108\);

-- Location: LC_X12_Y5_N7
\Add8~5\ : maxv_lcell
-- Equation(s):
-- \Add8~5_combout\ = (((!(!\Add8~17\ & \Add8~2\) # (\Add8~17\ & \Add8~2COUT1_108\))))

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
	cin => \Add8~17\,
	cin0 => \Add8~2\,
	cin1 => \Add8~2COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~5_combout\);

-- Location: LC_X12_Y5_N8
\process_1~1\ : maxv_lcell
-- Equation(s):
-- \process_1~1_combout\ = \Add8~70_combout\ $ ((((\Add8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~70_combout\,
	datac => \Add8~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_1~1_combout\);

-- Location: LC_X13_Y5_N3
\Add9~70\ : maxv_lcell
-- Equation(s):
-- \Add9~70_combout\ = \Add8~5_combout\ $ ((\process_1~1_combout\))
-- \Add9~72\ = CARRY((!\Add8~5_combout\ & (!\process_1~1_combout\)))
-- \Add9~72COUT1_88\ = CARRY((!\Add8~5_combout\ & (!\process_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6611",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~5_combout\,
	datab => \process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~70_combout\,
	cout0 => \Add9~72\,
	cout1 => \Add9~72COUT1_88\);

-- Location: LC_X13_Y5_N4
\Add9~65\ : maxv_lcell
-- Equation(s):
-- \Add9~65_combout\ = \Add8~5_combout\ $ (\Add8~65_combout\ $ ((!\Add9~72\)))
-- \Add9~67\ = CARRY((\Add8~5_combout\ $ (\Add8~65_combout\)) # (!\Add9~72COUT1_88\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "696f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~5_combout\,
	datab => \Add8~65_combout\,
	cin0 => \Add9~72\,
	cin1 => \Add9~72COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~65_combout\,
	cout => \Add9~67\);

-- Location: LC_X13_Y5_N5
\Add9~60\ : maxv_lcell
-- Equation(s):
-- \Add9~60_combout\ = \Add8~60_combout\ $ (\Add8~5_combout\ $ ((\Add9~67\)))
-- \Add9~62\ = CARRY((!\Add9~67\ & (\Add8~60_combout\ $ (!\Add8~5_combout\))))
-- \Add9~62COUT1_90\ = CARRY((!\Add9~67\ & (\Add8~60_combout\ $ (!\Add8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9609",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~60_combout\,
	datab => \Add8~5_combout\,
	cin => \Add9~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~60_combout\,
	cout0 => \Add9~62\,
	cout1 => \Add9~62COUT1_90\);

-- Location: LC_X13_Y5_N6
\Add9~55\ : maxv_lcell
-- Equation(s):
-- \Add9~55_combout\ = \Add8~5_combout\ $ (\Add8~55_combout\ $ ((!(!\Add9~67\ & \Add9~62\) # (\Add9~67\ & \Add9~62COUT1_90\))))
-- \Add9~57\ = CARRY((\Add8~5_combout\ $ (\Add8~55_combout\)) # (!\Add9~62\))
-- \Add9~57COUT1_92\ = CARRY((\Add8~5_combout\ $ (\Add8~55_combout\)) # (!\Add9~62COUT1_90\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "696f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~5_combout\,
	datab => \Add8~55_combout\,
	cin => \Add9~67\,
	cin0 => \Add9~62\,
	cin1 => \Add9~62COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~55_combout\,
	cout0 => \Add9~57\,
	cout1 => \Add9~57COUT1_92\);

-- Location: LC_X13_Y5_N7
\Add9~50\ : maxv_lcell
-- Equation(s):
-- \Add9~50_combout\ = \Add8~5_combout\ $ (\Add8~50_combout\ $ (((!\Add9~67\ & \Add9~57\) # (\Add9~67\ & \Add9~57COUT1_92\))))
-- \Add9~52\ = CARRY((!\Add9~57\ & (\Add8~5_combout\ $ (!\Add8~50_combout\))))
-- \Add9~52COUT1_94\ = CARRY((!\Add9~57COUT1_92\ & (\Add8~5_combout\ $ (!\Add8~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9609",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~5_combout\,
	datab => \Add8~50_combout\,
	cin => \Add9~67\,
	cin0 => \Add9~57\,
	cin1 => \Add9~57COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~50_combout\,
	cout0 => \Add9~52\,
	cout1 => \Add9~52COUT1_94\);

-- Location: LC_X13_Y5_N8
\Add9~45\ : maxv_lcell
-- Equation(s):
-- \Add9~45_combout\ = \Add8~45_combout\ $ (\Add8~5_combout\ $ ((!(!\Add9~67\ & \Add9~52\) # (\Add9~67\ & \Add9~52COUT1_94\))))
-- \Add9~47\ = CARRY((\Add8~45_combout\ $ (\Add8~5_combout\)) # (!\Add9~52\))
-- \Add9~47COUT1_96\ = CARRY((\Add8~45_combout\ $ (\Add8~5_combout\)) # (!\Add9~52COUT1_94\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "696f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~45_combout\,
	datab => \Add8~5_combout\,
	cin => \Add9~67\,
	cin0 => \Add9~52\,
	cin1 => \Add9~52COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~45_combout\,
	cout0 => \Add9~47\,
	cout1 => \Add9~47COUT1_96\);

-- Location: LC_X13_Y5_N9
\Add9~40\ : maxv_lcell
-- Equation(s):
-- \Add9~40_combout\ = \Add8~5_combout\ $ (\Add8~40_combout\ $ (((!\Add9~67\ & \Add9~47\) # (\Add9~67\ & \Add9~47COUT1_96\))))
-- \Add9~42\ = CARRY((!\Add9~47COUT1_96\ & (\Add8~5_combout\ $ (!\Add8~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9609",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~5_combout\,
	datab => \Add8~40_combout\,
	cin => \Add9~67\,
	cin0 => \Add9~47\,
	cin1 => \Add9~47COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~40_combout\,
	cout => \Add9~42\);

-- Location: LC_X14_Y5_N0
\Add9~35\ : maxv_lcell
-- Equation(s):
-- \Add9~35_combout\ = \Add8~5_combout\ $ (\Add8~35_combout\ $ ((!\Add9~42\)))
-- \Add9~37\ = CARRY((\Add8~5_combout\ $ (\Add8~35_combout\)) # (!\Add9~42\))
-- \Add9~37COUT1_98\ = CARRY((\Add8~5_combout\ $ (\Add8~35_combout\)) # (!\Add9~42\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "696f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~5_combout\,
	datab => \Add8~35_combout\,
	cin => \Add9~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~35_combout\,
	cout0 => \Add9~37\,
	cout1 => \Add9~37COUT1_98\);

-- Location: LC_X14_Y5_N1
\Add9~30\ : maxv_lcell
-- Equation(s):
-- \Add9~30_combout\ = \Add8~5_combout\ $ (\Add8~30_combout\ $ (((!\Add9~42\ & \Add9~37\) # (\Add9~42\ & \Add9~37COUT1_98\))))
-- \Add9~32\ = CARRY((!\Add9~37\ & (\Add8~5_combout\ $ (!\Add8~30_combout\))))
-- \Add9~32COUT1_100\ = CARRY((!\Add9~37COUT1_98\ & (\Add8~5_combout\ $ (!\Add8~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9609",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~5_combout\,
	datab => \Add8~30_combout\,
	cin => \Add9~42\,
	cin0 => \Add9~37\,
	cin1 => \Add9~37COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~30_combout\,
	cout0 => \Add9~32\,
	cout1 => \Add9~32COUT1_100\);

-- Location: LC_X14_Y5_N2
\Add9~25\ : maxv_lcell
-- Equation(s):
-- \Add9~25_combout\ = \Add8~25_combout\ $ (\Add8~5_combout\ $ ((!(!\Add9~42\ & \Add9~32\) # (\Add9~42\ & \Add9~32COUT1_100\))))
-- \Add9~27\ = CARRY((\Add8~25_combout\ $ (\Add8~5_combout\)) # (!\Add9~32\))
-- \Add9~27COUT1_102\ = CARRY((\Add8~25_combout\ $ (\Add8~5_combout\)) # (!\Add9~32COUT1_100\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "696f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~25_combout\,
	datab => \Add8~5_combout\,
	cin => \Add9~42\,
	cin0 => \Add9~32\,
	cin1 => \Add9~32COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~25_combout\,
	cout0 => \Add9~27\,
	cout1 => \Add9~27COUT1_102\);

-- Location: LC_X14_Y5_N3
\Add9~20\ : maxv_lcell
-- Equation(s):
-- \Add9~20_combout\ = \Add8~20_combout\ $ (\Add8~5_combout\ $ (((!\Add9~42\ & \Add9~27\) # (\Add9~42\ & \Add9~27COUT1_102\))))
-- \Add9~22\ = CARRY((!\Add9~27\ & (\Add8~20_combout\ $ (!\Add8~5_combout\))))
-- \Add9~22COUT1_104\ = CARRY((!\Add9~27COUT1_102\ & (\Add8~20_combout\ $ (!\Add8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9609",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~20_combout\,
	datab => \Add8~5_combout\,
	cin => \Add9~42\,
	cin0 => \Add9~27\,
	cin1 => \Add9~27COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~20_combout\,
	cout0 => \Add9~22\,
	cout1 => \Add9~22COUT1_104\);

-- Location: LC_X14_Y5_N4
\Add9~15\ : maxv_lcell
-- Equation(s):
-- \Add9~15_combout\ = \Add8~15_combout\ $ (\Add8~5_combout\ $ ((!(!\Add9~42\ & \Add9~22\) # (\Add9~42\ & \Add9~22COUT1_104\))))
-- \Add9~17\ = CARRY((\Add8~15_combout\ $ (\Add8~5_combout\)) # (!\Add9~22COUT1_104\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "696f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~15_combout\,
	datab => \Add8~5_combout\,
	cin => \Add9~42\,
	cin0 => \Add9~22\,
	cin1 => \Add9~22COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~15_combout\,
	cout => \Add9~17\);

-- Location: LC_X14_Y5_N5
\Add9~10\ : maxv_lcell
-- Equation(s):
-- \Add9~10_combout\ = \Add8~10_combout\ $ (\Add8~5_combout\ $ ((\Add9~17\)))
-- \Add9~12\ = CARRY((!\Add9~17\ & (\Add8~10_combout\ $ (!\Add8~5_combout\))))
-- \Add9~12COUT1_106\ = CARRY((!\Add9~17\ & (\Add8~10_combout\ $ (!\Add8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9609",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~10_combout\,
	datab => \Add8~5_combout\,
	cin => \Add9~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~10_combout\,
	cout0 => \Add9~12\,
	cout1 => \Add9~12COUT1_106\);

-- Location: LC_X14_Y5_N6
\Add9~5\ : maxv_lcell
-- Equation(s):
-- \Add9~5_combout\ = \Add8~0_combout\ $ (\Add8~5_combout\ $ ((!(!\Add9~17\ & \Add9~12\) # (\Add9~17\ & \Add9~12COUT1_106\))))
-- \Add9~7\ = CARRY((\Add8~0_combout\ $ (\Add8~5_combout\)) # (!\Add9~12\))
-- \Add9~7COUT1_108\ = CARRY((\Add8~0_combout\ $ (\Add8~5_combout\)) # (!\Add9~12COUT1_106\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "696f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~0_combout\,
	datab => \Add8~5_combout\,
	cin => \Add9~17\,
	cin0 => \Add9~12\,
	cin1 => \Add9~12COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~5_combout\,
	cout0 => \Add9~7\,
	cout1 => \Add9~7COUT1_108\);

-- Location: LC_X14_Y5_N7
\Add9~0\ : maxv_lcell
-- Equation(s):
-- \Add9~0_combout\ = (((!(!\Add9~17\ & \Add9~7\) # (\Add9~17\ & \Add9~7COUT1_108\))))

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
	cin => \Add9~17\,
	cin0 => \Add9~7\,
	cin1 => \Add9~7COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~0_combout\);

-- Location: LC_X12_Y6_N8
\c_x[11]\ : maxv_lcell
-- Equation(s):
-- c_x(11) = ((GLOBAL(\process_1~0_combout\) & (a_x(11))) # (!GLOBAL(\process_1~0_combout\) & ((c_x(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => a_x(11),
	datac => \process_1~0_combout\,
	datad => c_x(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_x(11));

-- Location: LC_X11_Y7_N2
\c_x[6]\ : maxv_lcell
-- Equation(s):
-- c_x(6) = ((GLOBAL(\process_1~0_combout\) & (a_x(6))) # (!GLOBAL(\process_1~0_combout\) & ((c_x(6)))))

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
	datab => a_x(6),
	datac => \process_1~0_combout\,
	datad => c_x(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_x(6));

-- Location: LC_X11_Y5_N1
\c_x[1]\ : maxv_lcell
-- Equation(s):
-- c_x(1) = ((GLOBAL(\process_1~0_combout\) & (a_x(1))) # (!GLOBAL(\process_1~0_combout\) & ((c_x(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => a_x(1),
	datac => \process_1~0_combout\,
	datad => c_x(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_x(1));

-- Location: LC_X11_Y6_N3
\Add6~70\ : maxv_lcell
-- Equation(s):
-- \Add6~70_combout\ = \FIN_X~combout\(0) $ ((c_x(0)))
-- \Add6~72\ = CARRY((\FIN_X~combout\(0)) # ((!c_x(0))))
-- \Add6~72COUT1_88\ = CARRY((\FIN_X~combout\(0)) # ((!c_x(0))))

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
	dataa => \FIN_X~combout\(0),
	datab => c_x(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~70_combout\,
	cout0 => \Add6~72\,
	cout1 => \Add6~72COUT1_88\);

-- Location: LC_X11_Y6_N4
\Add6~65\ : maxv_lcell
-- Equation(s):
-- \Add6~65_combout\ = \FIN_X~combout\(1) $ (c_x(1) $ ((!\Add6~72\)))
-- \Add6~67\ = CARRY((\FIN_X~combout\(1) & (c_x(1) & !\Add6~72COUT1_88\)) # (!\FIN_X~combout\(1) & ((c_x(1)) # (!\Add6~72COUT1_88\))))

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
	dataa => \FIN_X~combout\(1),
	datab => c_x(1),
	cin0 => \Add6~72\,
	cin1 => \Add6~72COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~65_combout\,
	cout => \Add6~67\);

-- Location: LC_X11_Y5_N0
\c_x[5]\ : maxv_lcell
-- Equation(s):
-- c_x(5) = ((GLOBAL(\process_1~0_combout\) & ((a_x(5)))) # (!GLOBAL(\process_1~0_combout\) & (c_x(5))))

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
	datab => c_x(5),
	datac => \process_1~0_combout\,
	datad => a_x(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_x(5));

-- Location: LC_X11_Y6_N0
\c_x[4]\ : maxv_lcell
-- Equation(s):
-- c_x(4) = ((GLOBAL(\process_1~0_combout\) & ((a_x(4)))) # (!GLOBAL(\process_1~0_combout\) & (c_x(4))))

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
	datab => c_x(4),
	datac => \process_1~0_combout\,
	datad => a_x(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_x(4));

-- Location: LC_X11_Y5_N2
\c_x[3]\ : maxv_lcell
-- Equation(s):
-- c_x(3) = ((GLOBAL(\process_1~0_combout\) & (a_x(3))) # (!GLOBAL(\process_1~0_combout\) & ((c_x(3)))))

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
	datab => a_x(3),
	datac => \process_1~0_combout\,
	datad => c_x(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_x(3));

-- Location: LC_X11_Y6_N1
\c_x[2]\ : maxv_lcell
-- Equation(s):
-- c_x(2) = ((GLOBAL(\process_1~0_combout\) & (a_x(2))) # (!GLOBAL(\process_1~0_combout\) & ((c_x(2)))))

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
	datab => a_x(2),
	datac => \process_1~0_combout\,
	datad => c_x(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_x(2));

-- Location: LC_X11_Y6_N5
\Add6~60\ : maxv_lcell
-- Equation(s):
-- \Add6~60_combout\ = \FIN_X~combout\(2) $ (c_x(2) $ ((\Add6~67\)))
-- \Add6~62\ = CARRY((\FIN_X~combout\(2) & ((!\Add6~67\) # (!c_x(2)))) # (!\FIN_X~combout\(2) & (!c_x(2) & !\Add6~67\)))
-- \Add6~62COUT1_90\ = CARRY((\FIN_X~combout\(2) & ((!\Add6~67\) # (!c_x(2)))) # (!\FIN_X~combout\(2) & (!c_x(2) & !\Add6~67\)))

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
	dataa => \FIN_X~combout\(2),
	datab => c_x(2),
	cin => \Add6~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~60_combout\,
	cout0 => \Add6~62\,
	cout1 => \Add6~62COUT1_90\);

-- Location: LC_X11_Y6_N6
\Add6~55\ : maxv_lcell
-- Equation(s):
-- \Add6~55_combout\ = c_x(3) $ (\FIN_X~combout\(3) $ ((!(!\Add6~67\ & \Add6~62\) # (\Add6~67\ & \Add6~62COUT1_90\))))
-- \Add6~57\ = CARRY((c_x(3) & ((!\Add6~62\) # (!\FIN_X~combout\(3)))) # (!c_x(3) & (!\FIN_X~combout\(3) & !\Add6~62\)))
-- \Add6~57COUT1_92\ = CARRY((c_x(3) & ((!\Add6~62COUT1_90\) # (!\FIN_X~combout\(3)))) # (!c_x(3) & (!\FIN_X~combout\(3) & !\Add6~62COUT1_90\)))

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
	dataa => c_x(3),
	datab => \FIN_X~combout\(3),
	cin => \Add6~67\,
	cin0 => \Add6~62\,
	cin1 => \Add6~62COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~55_combout\,
	cout0 => \Add6~57\,
	cout1 => \Add6~57COUT1_92\);

-- Location: LC_X11_Y6_N7
\Add6~50\ : maxv_lcell
-- Equation(s):
-- \Add6~50_combout\ = \FIN_X~combout\(4) $ (c_x(4) $ (((!\Add6~67\ & \Add6~57\) # (\Add6~67\ & \Add6~57COUT1_92\))))
-- \Add6~52\ = CARRY((\FIN_X~combout\(4) & ((!\Add6~57\) # (!c_x(4)))) # (!\FIN_X~combout\(4) & (!c_x(4) & !\Add6~57\)))
-- \Add6~52COUT1_94\ = CARRY((\FIN_X~combout\(4) & ((!\Add6~57COUT1_92\) # (!c_x(4)))) # (!\FIN_X~combout\(4) & (!c_x(4) & !\Add6~57COUT1_92\)))

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
	dataa => \FIN_X~combout\(4),
	datab => c_x(4),
	cin => \Add6~67\,
	cin0 => \Add6~57\,
	cin1 => \Add6~57COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~50_combout\,
	cout0 => \Add6~52\,
	cout1 => \Add6~52COUT1_94\);

-- Location: LC_X11_Y6_N8
\Add6~45\ : maxv_lcell
-- Equation(s):
-- \Add6~45_combout\ = \FIN_X~combout\(5) $ (c_x(5) $ ((!(!\Add6~67\ & \Add6~52\) # (\Add6~67\ & \Add6~52COUT1_94\))))
-- \Add6~47\ = CARRY((\FIN_X~combout\(5) & (c_x(5) & !\Add6~52\)) # (!\FIN_X~combout\(5) & ((c_x(5)) # (!\Add6~52\))))
-- \Add6~47COUT1_96\ = CARRY((\FIN_X~combout\(5) & (c_x(5) & !\Add6~52COUT1_94\)) # (!\FIN_X~combout\(5) & ((c_x(5)) # (!\Add6~52COUT1_94\))))

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
	dataa => \FIN_X~combout\(5),
	datab => c_x(5),
	cin => \Add6~67\,
	cin0 => \Add6~52\,
	cin1 => \Add6~52COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~45_combout\,
	cout0 => \Add6~47\,
	cout1 => \Add6~47COUT1_96\);

-- Location: LC_X11_Y6_N9
\Add6~40\ : maxv_lcell
-- Equation(s):
-- \Add6~40_combout\ = c_x(6) $ (\FIN_X~combout\(6) $ (((!\Add6~67\ & \Add6~47\) # (\Add6~67\ & \Add6~47COUT1_96\))))
-- \Add6~42\ = CARRY((c_x(6) & (\FIN_X~combout\(6) & !\Add6~47COUT1_96\)) # (!c_x(6) & ((\FIN_X~combout\(6)) # (!\Add6~47COUT1_96\))))

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
	dataa => c_x(6),
	datab => \FIN_X~combout\(6),
	cin => \Add6~67\,
	cin0 => \Add6~47\,
	cin1 => \Add6~47COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~40_combout\,
	cout => \Add6~42\);

-- Location: LC_X12_Y5_N9
\c_x[10]\ : maxv_lcell
-- Equation(s):
-- c_x(10) = ((GLOBAL(\process_1~0_combout\) & (a_x(10))) # (!GLOBAL(\process_1~0_combout\) & ((c_x(10)))))

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
	datab => a_x(10),
	datac => \process_1~0_combout\,
	datad => c_x(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_x(10));

-- Location: LC_X12_Y7_N2
\c_x[9]\ : maxv_lcell
-- Equation(s):
-- c_x(9) = ((GLOBAL(\process_1~0_combout\) & (a_x(9))) # (!GLOBAL(\process_1~0_combout\) & ((c_x(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => a_x(9),
	datac => \process_1~0_combout\,
	datad => c_x(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_x(9));

-- Location: LC_X14_Y6_N3
\c_x[8]\ : maxv_lcell
-- Equation(s):
-- c_x(8) = ((GLOBAL(\process_1~0_combout\) & (a_x(8))) # (!GLOBAL(\process_1~0_combout\) & ((c_x(8)))))

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
	datab => a_x(8),
	datac => \process_1~0_combout\,
	datad => c_x(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_x(8));

-- Location: LC_X12_Y6_N9
\c_x[7]\ : maxv_lcell
-- Equation(s):
-- c_x(7) = ((GLOBAL(\process_1~0_combout\) & (a_x(7))) # (!GLOBAL(\process_1~0_combout\) & ((c_x(7)))))

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
	datab => a_x(7),
	datac => \process_1~0_combout\,
	datad => c_x(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_x(7));

-- Location: LC_X12_Y6_N0
\Add6~35\ : maxv_lcell
-- Equation(s):
-- \Add6~35_combout\ = \FIN_X~combout\(7) $ (c_x(7) $ ((!\Add6~42\)))
-- \Add6~37\ = CARRY((\FIN_X~combout\(7) & (c_x(7) & !\Add6~42\)) # (!\FIN_X~combout\(7) & ((c_x(7)) # (!\Add6~42\))))
-- \Add6~37COUT1_98\ = CARRY((\FIN_X~combout\(7) & (c_x(7) & !\Add6~42\)) # (!\FIN_X~combout\(7) & ((c_x(7)) # (!\Add6~42\))))

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
	dataa => \FIN_X~combout\(7),
	datab => c_x(7),
	cin => \Add6~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~35_combout\,
	cout0 => \Add6~37\,
	cout1 => \Add6~37COUT1_98\);

-- Location: LC_X12_Y6_N1
\Add6~30\ : maxv_lcell
-- Equation(s):
-- \Add6~30_combout\ = c_x(8) $ (\FIN_X~combout\(8) $ (((!\Add6~42\ & \Add6~37\) # (\Add6~42\ & \Add6~37COUT1_98\))))
-- \Add6~32\ = CARRY((c_x(8) & (\FIN_X~combout\(8) & !\Add6~37\)) # (!c_x(8) & ((\FIN_X~combout\(8)) # (!\Add6~37\))))
-- \Add6~32COUT1_100\ = CARRY((c_x(8) & (\FIN_X~combout\(8) & !\Add6~37COUT1_98\)) # (!c_x(8) & ((\FIN_X~combout\(8)) # (!\Add6~37COUT1_98\))))

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
	dataa => c_x(8),
	datab => \FIN_X~combout\(8),
	cin => \Add6~42\,
	cin0 => \Add6~37\,
	cin1 => \Add6~37COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~30_combout\,
	cout0 => \Add6~32\,
	cout1 => \Add6~32COUT1_100\);

-- Location: LC_X12_Y6_N2
\Add6~25\ : maxv_lcell
-- Equation(s):
-- \Add6~25_combout\ = c_x(9) $ (\FIN_X~combout\(9) $ ((!(!\Add6~42\ & \Add6~32\) # (\Add6~42\ & \Add6~32COUT1_100\))))
-- \Add6~27\ = CARRY((c_x(9) & ((!\Add6~32\) # (!\FIN_X~combout\(9)))) # (!c_x(9) & (!\FIN_X~combout\(9) & !\Add6~32\)))
-- \Add6~27COUT1_102\ = CARRY((c_x(9) & ((!\Add6~32COUT1_100\) # (!\FIN_X~combout\(9)))) # (!c_x(9) & (!\FIN_X~combout\(9) & !\Add6~32COUT1_100\)))

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
	dataa => c_x(9),
	datab => \FIN_X~combout\(9),
	cin => \Add6~42\,
	cin0 => \Add6~32\,
	cin1 => \Add6~32COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~25_combout\,
	cout0 => \Add6~27\,
	cout1 => \Add6~27COUT1_102\);

-- Location: LC_X12_Y6_N3
\Add6~20\ : maxv_lcell
-- Equation(s):
-- \Add6~20_combout\ = \FIN_X~combout\(10) $ (c_x(10) $ (((!\Add6~42\ & \Add6~27\) # (\Add6~42\ & \Add6~27COUT1_102\))))
-- \Add6~22\ = CARRY((\FIN_X~combout\(10) & ((!\Add6~27\) # (!c_x(10)))) # (!\FIN_X~combout\(10) & (!c_x(10) & !\Add6~27\)))
-- \Add6~22COUT1_104\ = CARRY((\FIN_X~combout\(10) & ((!\Add6~27COUT1_102\) # (!c_x(10)))) # (!\FIN_X~combout\(10) & (!c_x(10) & !\Add6~27COUT1_102\)))

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
	dataa => \FIN_X~combout\(10),
	datab => c_x(10),
	cin => \Add6~42\,
	cin0 => \Add6~27\,
	cin1 => \Add6~27COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~20_combout\,
	cout0 => \Add6~22\,
	cout1 => \Add6~22COUT1_104\);

-- Location: LC_X12_Y6_N4
\Add6~15\ : maxv_lcell
-- Equation(s):
-- \Add6~15_combout\ = c_x(11) $ (\FIN_X~combout\(11) $ ((!(!\Add6~42\ & \Add6~22\) # (\Add6~42\ & \Add6~22COUT1_104\))))
-- \Add6~17\ = CARRY((c_x(11) & ((!\Add6~22COUT1_104\) # (!\FIN_X~combout\(11)))) # (!c_x(11) & (!\FIN_X~combout\(11) & !\Add6~22COUT1_104\)))

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
	dataa => c_x(11),
	datab => \FIN_X~combout\(11),
	cin => \Add6~42\,
	cin0 => \Add6~22\,
	cin1 => \Add6~22COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~15_combout\,
	cout => \Add6~17\);

-- Location: LC_X13_Y6_N2
\c_x[13]\ : maxv_lcell
-- Equation(s):
-- c_x(13) = ((GLOBAL(\process_1~0_combout\) & (a_x(13))) # (!GLOBAL(\process_1~0_combout\) & ((c_x(13)))))

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
	datab => a_x(13),
	datac => \process_1~0_combout\,
	datad => c_x(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_x(13));

-- Location: LC_X14_Y6_N2
\c_x[12]\ : maxv_lcell
-- Equation(s):
-- c_x(12) = ((GLOBAL(\process_1~0_combout\) & (a_x(12))) # (!GLOBAL(\process_1~0_combout\) & ((c_x(12)))))

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
	datab => a_x(12),
	datac => \process_1~0_combout\,
	datad => c_x(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_x(12));

-- Location: LC_X12_Y6_N5
\Add6~10\ : maxv_lcell
-- Equation(s):
-- \Add6~10_combout\ = c_x(12) $ (\FIN_X~combout\(12) $ ((\Add6~17\)))
-- \Add6~12\ = CARRY((c_x(12) & (\FIN_X~combout\(12) & !\Add6~17\)) # (!c_x(12) & ((\FIN_X~combout\(12)) # (!\Add6~17\))))
-- \Add6~12COUT1_106\ = CARRY((c_x(12) & (\FIN_X~combout\(12) & !\Add6~17\)) # (!c_x(12) & ((\FIN_X~combout\(12)) # (!\Add6~17\))))

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
	dataa => c_x(12),
	datab => \FIN_X~combout\(12),
	cin => \Add6~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~10_combout\,
	cout0 => \Add6~12\,
	cout1 => \Add6~12COUT1_106\);

-- Location: LC_X12_Y6_N6
\Add6~0\ : maxv_lcell
-- Equation(s):
-- \Add6~0_combout\ = \FIN_X~combout\(13) $ (c_x(13) $ ((!(!\Add6~17\ & \Add6~12\) # (\Add6~17\ & \Add6~12COUT1_106\))))
-- \Add6~2\ = CARRY((\FIN_X~combout\(13) & (c_x(13) & !\Add6~12\)) # (!\FIN_X~combout\(13) & ((c_x(13)) # (!\Add6~12\))))
-- \Add6~2COUT1_108\ = CARRY((\FIN_X~combout\(13) & (c_x(13) & !\Add6~12COUT1_106\)) # (!\FIN_X~combout\(13) & ((c_x(13)) # (!\Add6~12COUT1_106\))))

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
	dataa => \FIN_X~combout\(13),
	datab => c_x(13),
	cin => \Add6~17\,
	cin0 => \Add6~12\,
	cin1 => \Add6~12COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~0_combout\,
	cout0 => \Add6~2\,
	cout1 => \Add6~2COUT1_108\);

-- Location: LC_X12_Y6_N7
\Add6~5\ : maxv_lcell
-- Equation(s):
-- \Add6~5_combout\ = (((!(!\Add6~17\ & \Add6~2\) # (\Add6~17\ & \Add6~2COUT1_108\))))

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
	cin => \Add6~17\,
	cin0 => \Add6~2\,
	cin1 => \Add6~2COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~5_combout\);

-- Location: LC_X10_Y6_N8
\process_1~2\ : maxv_lcell
-- Equation(s):
-- \process_1~2_combout\ = \Add6~70_combout\ $ ((((\Add6~5_combout\))))

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
	dataa => \Add6~70_combout\,
	datad => \Add6~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_1~2_combout\);

-- Location: LC_X9_Y6_N3
\Add7~70\ : maxv_lcell
-- Equation(s):
-- \Add7~70_combout\ = \Add6~5_combout\ $ ((\process_1~2_combout\))
-- \Add7~72\ = CARRY((!\Add6~5_combout\ & (!\process_1~2_combout\)))
-- \Add7~72COUT1_88\ = CARRY((!\Add6~5_combout\ & (!\process_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6611",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => \process_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~70_combout\,
	cout0 => \Add7~72\,
	cout1 => \Add7~72COUT1_88\);

-- Location: LC_X9_Y6_N4
\Add7~65\ : maxv_lcell
-- Equation(s):
-- \Add7~65_combout\ = \Add6~5_combout\ $ (\Add6~65_combout\ $ ((!\Add7~72\)))
-- \Add7~67\ = CARRY((\Add6~5_combout\ $ (\Add6~65_combout\)) # (!\Add7~72COUT1_88\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "696f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => \Add6~65_combout\,
	cin0 => \Add7~72\,
	cin1 => \Add7~72COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~65_combout\,
	cout => \Add7~67\);

-- Location: LC_X9_Y6_N5
\Add7~60\ : maxv_lcell
-- Equation(s):
-- \Add7~60_combout\ = \Add6~60_combout\ $ (\Add6~5_combout\ $ ((\Add7~67\)))
-- \Add7~62\ = CARRY((!\Add7~67\ & (\Add6~60_combout\ $ (!\Add6~5_combout\))))
-- \Add7~62COUT1_90\ = CARRY((!\Add7~67\ & (\Add6~60_combout\ $ (!\Add6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9609",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~60_combout\,
	datab => \Add6~5_combout\,
	cin => \Add7~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~60_combout\,
	cout0 => \Add7~62\,
	cout1 => \Add7~62COUT1_90\);

-- Location: LC_X9_Y6_N6
\Add7~55\ : maxv_lcell
-- Equation(s):
-- \Add7~55_combout\ = \Add6~55_combout\ $ (\Add6~5_combout\ $ ((!(!\Add7~67\ & \Add7~62\) # (\Add7~67\ & \Add7~62COUT1_90\))))
-- \Add7~57\ = CARRY((\Add6~55_combout\ $ (\Add6~5_combout\)) # (!\Add7~62\))
-- \Add7~57COUT1_92\ = CARRY((\Add6~55_combout\ $ (\Add6~5_combout\)) # (!\Add7~62COUT1_90\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "696f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~55_combout\,
	datab => \Add6~5_combout\,
	cin => \Add7~67\,
	cin0 => \Add7~62\,
	cin1 => \Add7~62COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~55_combout\,
	cout0 => \Add7~57\,
	cout1 => \Add7~57COUT1_92\);

-- Location: LC_X9_Y6_N7
\Add7~50\ : maxv_lcell
-- Equation(s):
-- \Add7~50_combout\ = \Add6~5_combout\ $ (\Add6~50_combout\ $ (((!\Add7~67\ & \Add7~57\) # (\Add7~67\ & \Add7~57COUT1_92\))))
-- \Add7~52\ = CARRY((!\Add7~57\ & (\Add6~5_combout\ $ (!\Add6~50_combout\))))
-- \Add7~52COUT1_94\ = CARRY((!\Add7~57COUT1_92\ & (\Add6~5_combout\ $ (!\Add6~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9609",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => \Add6~50_combout\,
	cin => \Add7~67\,
	cin0 => \Add7~57\,
	cin1 => \Add7~57COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~50_combout\,
	cout0 => \Add7~52\,
	cout1 => \Add7~52COUT1_94\);

-- Location: LC_X9_Y6_N8
\Add7~45\ : maxv_lcell
-- Equation(s):
-- \Add7~45_combout\ = \Add6~5_combout\ $ (\Add6~45_combout\ $ ((!(!\Add7~67\ & \Add7~52\) # (\Add7~67\ & \Add7~52COUT1_94\))))
-- \Add7~47\ = CARRY((\Add6~5_combout\ $ (\Add6~45_combout\)) # (!\Add7~52\))
-- \Add7~47COUT1_96\ = CARRY((\Add6~5_combout\ $ (\Add6~45_combout\)) # (!\Add7~52COUT1_94\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "696f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => \Add6~45_combout\,
	cin => \Add7~67\,
	cin0 => \Add7~52\,
	cin1 => \Add7~52COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~45_combout\,
	cout0 => \Add7~47\,
	cout1 => \Add7~47COUT1_96\);

-- Location: LC_X9_Y6_N9
\Add7~40\ : maxv_lcell
-- Equation(s):
-- \Add7~40_combout\ = \Add6~5_combout\ $ (\Add6~40_combout\ $ (((!\Add7~67\ & \Add7~47\) # (\Add7~67\ & \Add7~47COUT1_96\))))
-- \Add7~42\ = CARRY((!\Add7~47COUT1_96\ & (\Add6~5_combout\ $ (!\Add6~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9609",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => \Add6~40_combout\,
	cin => \Add7~67\,
	cin0 => \Add7~47\,
	cin1 => \Add7~47COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~40_combout\,
	cout => \Add7~42\);

-- Location: LC_X10_Y6_N0
\Add7~35\ : maxv_lcell
-- Equation(s):
-- \Add7~35_combout\ = \Add6~5_combout\ $ (\Add6~35_combout\ $ ((!\Add7~42\)))
-- \Add7~37\ = CARRY((\Add6~5_combout\ $ (\Add6~35_combout\)) # (!\Add7~42\))
-- \Add7~37COUT1_98\ = CARRY((\Add6~5_combout\ $ (\Add6~35_combout\)) # (!\Add7~42\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "696f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => \Add6~35_combout\,
	cin => \Add7~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~35_combout\,
	cout0 => \Add7~37\,
	cout1 => \Add7~37COUT1_98\);

-- Location: LC_X10_Y6_N1
\Add7~30\ : maxv_lcell
-- Equation(s):
-- \Add7~30_combout\ = \Add6~5_combout\ $ (\Add6~30_combout\ $ (((!\Add7~42\ & \Add7~37\) # (\Add7~42\ & \Add7~37COUT1_98\))))
-- \Add7~32\ = CARRY((!\Add7~37\ & (\Add6~5_combout\ $ (!\Add6~30_combout\))))
-- \Add7~32COUT1_100\ = CARRY((!\Add7~37COUT1_98\ & (\Add6~5_combout\ $ (!\Add6~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9609",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => \Add6~30_combout\,
	cin => \Add7~42\,
	cin0 => \Add7~37\,
	cin1 => \Add7~37COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~30_combout\,
	cout0 => \Add7~32\,
	cout1 => \Add7~32COUT1_100\);

-- Location: LC_X10_Y6_N2
\Add7~25\ : maxv_lcell
-- Equation(s):
-- \Add7~25_combout\ = \Add6~5_combout\ $ (\Add6~25_combout\ $ ((!(!\Add7~42\ & \Add7~32\) # (\Add7~42\ & \Add7~32COUT1_100\))))
-- \Add7~27\ = CARRY((\Add6~5_combout\ $ (\Add6~25_combout\)) # (!\Add7~32\))
-- \Add7~27COUT1_102\ = CARRY((\Add6~5_combout\ $ (\Add6~25_combout\)) # (!\Add7~32COUT1_100\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "696f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => \Add6~25_combout\,
	cin => \Add7~42\,
	cin0 => \Add7~32\,
	cin1 => \Add7~32COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~25_combout\,
	cout0 => \Add7~27\,
	cout1 => \Add7~27COUT1_102\);

-- Location: LC_X10_Y6_N3
\Add7~20\ : maxv_lcell
-- Equation(s):
-- \Add7~20_combout\ = \Add6~20_combout\ $ (\Add6~5_combout\ $ (((!\Add7~42\ & \Add7~27\) # (\Add7~42\ & \Add7~27COUT1_102\))))
-- \Add7~22\ = CARRY((!\Add7~27\ & (\Add6~20_combout\ $ (!\Add6~5_combout\))))
-- \Add7~22COUT1_104\ = CARRY((!\Add7~27COUT1_102\ & (\Add6~20_combout\ $ (!\Add6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9609",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~20_combout\,
	datab => \Add6~5_combout\,
	cin => \Add7~42\,
	cin0 => \Add7~27\,
	cin1 => \Add7~27COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~20_combout\,
	cout0 => \Add7~22\,
	cout1 => \Add7~22COUT1_104\);

-- Location: LC_X10_Y6_N4
\Add7~15\ : maxv_lcell
-- Equation(s):
-- \Add7~15_combout\ = \Add6~15_combout\ $ (\Add6~5_combout\ $ ((!(!\Add7~42\ & \Add7~22\) # (\Add7~42\ & \Add7~22COUT1_104\))))
-- \Add7~17\ = CARRY((\Add6~15_combout\ $ (\Add6~5_combout\)) # (!\Add7~22COUT1_104\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "696f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~15_combout\,
	datab => \Add6~5_combout\,
	cin => \Add7~42\,
	cin0 => \Add7~22\,
	cin1 => \Add7~22COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~15_combout\,
	cout => \Add7~17\);

-- Location: LC_X10_Y6_N5
\Add7~10\ : maxv_lcell
-- Equation(s):
-- \Add7~10_combout\ = \Add6~5_combout\ $ (\Add6~10_combout\ $ ((\Add7~17\)))
-- \Add7~12\ = CARRY((!\Add7~17\ & (\Add6~5_combout\ $ (!\Add6~10_combout\))))
-- \Add7~12COUT1_106\ = CARRY((!\Add7~17\ & (\Add6~5_combout\ $ (!\Add6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9609",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => \Add6~10_combout\,
	cin => \Add7~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~10_combout\,
	cout0 => \Add7~12\,
	cout1 => \Add7~12COUT1_106\);

-- Location: LC_X10_Y6_N6
\Add7~5\ : maxv_lcell
-- Equation(s):
-- \Add7~5_combout\ = \Add6~5_combout\ $ (\Add6~0_combout\ $ ((!(!\Add7~17\ & \Add7~12\) # (\Add7~17\ & \Add7~12COUT1_106\))))
-- \Add7~7\ = CARRY((\Add6~5_combout\ $ (\Add6~0_combout\)) # (!\Add7~12\))
-- \Add7~7COUT1_108\ = CARRY((\Add6~5_combout\ $ (\Add6~0_combout\)) # (!\Add7~12COUT1_106\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "696f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => \Add6~0_combout\,
	cin => \Add7~17\,
	cin0 => \Add7~12\,
	cin1 => \Add7~12COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~5_combout\,
	cout0 => \Add7~7\,
	cout1 => \Add7~7COUT1_108\);

-- Location: LC_X10_Y6_N7
\Add7~0\ : maxv_lcell
-- Equation(s):
-- \Add7~0_combout\ = (((!(!\Add7~17\ & \Add7~7\) # (\Add7~17\ & \Add7~7COUT1_108\))))

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
	cin => \Add7~17\,
	cin0 => \Add7~7\,
	cin1 => \Add7~7COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~0_combout\);

-- Location: LC_X9_Y5_N3
\LessThan0~72\ : maxv_lcell
-- Equation(s):
-- \LessThan0~72_cout0\ = CARRY((\Add7~70_combout\ & (!\Add9~70_combout\)))
-- \LessThan0~72COUT1_88\ = CARRY((\Add7~70_combout\ & (!\Add9~70_combout\)))

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
	dataa => \Add7~70_combout\,
	datab => \Add9~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~70\,
	cout0 => \LessThan0~72_cout0\,
	cout1 => \LessThan0~72COUT1_88\);

-- Location: LC_X9_Y5_N4
\LessThan0~67\ : maxv_lcell
-- Equation(s):
-- \LessThan0~67_cout\ = CARRY((\Add9~65_combout\ & ((!\LessThan0~72COUT1_88\) # (!\Add7~65_combout\))) # (!\Add9~65_combout\ & (!\Add7~65_combout\ & !\LessThan0~72COUT1_88\)))

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
	dataa => \Add9~65_combout\,
	datab => \Add7~65_combout\,
	cin0 => \LessThan0~72_cout0\,
	cin1 => \LessThan0~72COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~65\,
	cout => \LessThan0~67_cout\);

-- Location: LC_X9_Y5_N5
\LessThan0~62\ : maxv_lcell
-- Equation(s):
-- \LessThan0~62_cout0\ = CARRY((\Add9~60_combout\ & (\Add7~60_combout\ & !\LessThan0~67_cout\)) # (!\Add9~60_combout\ & ((\Add7~60_combout\) # (!\LessThan0~67_cout\))))
-- \LessThan0~62COUT1_90\ = CARRY((\Add9~60_combout\ & (\Add7~60_combout\ & !\LessThan0~67_cout\)) # (!\Add9~60_combout\ & ((\Add7~60_combout\) # (!\LessThan0~67_cout\))))

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
	dataa => \Add9~60_combout\,
	datab => \Add7~60_combout\,
	cin => \LessThan0~67_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~60\,
	cout0 => \LessThan0~62_cout0\,
	cout1 => \LessThan0~62COUT1_90\);

-- Location: LC_X9_Y5_N6
\LessThan0~57\ : maxv_lcell
-- Equation(s):
-- \LessThan0~57_cout0\ = CARRY((\Add9~55_combout\ & ((!\LessThan0~62_cout0\) # (!\Add7~55_combout\))) # (!\Add9~55_combout\ & (!\Add7~55_combout\ & !\LessThan0~62_cout0\)))
-- \LessThan0~57COUT1_92\ = CARRY((\Add9~55_combout\ & ((!\LessThan0~62COUT1_90\) # (!\Add7~55_combout\))) # (!\Add9~55_combout\ & (!\Add7~55_combout\ & !\LessThan0~62COUT1_90\)))

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
	dataa => \Add9~55_combout\,
	datab => \Add7~55_combout\,
	cin => \LessThan0~67_cout\,
	cin0 => \LessThan0~62_cout0\,
	cin1 => \LessThan0~62COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~55\,
	cout0 => \LessThan0~57_cout0\,
	cout1 => \LessThan0~57COUT1_92\);

-- Location: LC_X9_Y5_N7
\LessThan0~52\ : maxv_lcell
-- Equation(s):
-- \LessThan0~52_cout0\ = CARRY((\Add9~50_combout\ & (\Add7~50_combout\ & !\LessThan0~57_cout0\)) # (!\Add9~50_combout\ & ((\Add7~50_combout\) # (!\LessThan0~57_cout0\))))
-- \LessThan0~52COUT1_94\ = CARRY((\Add9~50_combout\ & (\Add7~50_combout\ & !\LessThan0~57COUT1_92\)) # (!\Add9~50_combout\ & ((\Add7~50_combout\) # (!\LessThan0~57COUT1_92\))))

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
	dataa => \Add9~50_combout\,
	datab => \Add7~50_combout\,
	cin => \LessThan0~67_cout\,
	cin0 => \LessThan0~57_cout0\,
	cin1 => \LessThan0~57COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~50\,
	cout0 => \LessThan0~52_cout0\,
	cout1 => \LessThan0~52COUT1_94\);

-- Location: LC_X9_Y5_N8
\LessThan0~47\ : maxv_lcell
-- Equation(s):
-- \LessThan0~47_cout0\ = CARRY((\Add9~45_combout\ & ((!\LessThan0~52_cout0\) # (!\Add7~45_combout\))) # (!\Add9~45_combout\ & (!\Add7~45_combout\ & !\LessThan0~52_cout0\)))
-- \LessThan0~47COUT1_96\ = CARRY((\Add9~45_combout\ & ((!\LessThan0~52COUT1_94\) # (!\Add7~45_combout\))) # (!\Add9~45_combout\ & (!\Add7~45_combout\ & !\LessThan0~52COUT1_94\)))

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
	dataa => \Add9~45_combout\,
	datab => \Add7~45_combout\,
	cin => \LessThan0~67_cout\,
	cin0 => \LessThan0~52_cout0\,
	cin1 => \LessThan0~52COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~45\,
	cout0 => \LessThan0~47_cout0\,
	cout1 => \LessThan0~47COUT1_96\);

-- Location: LC_X9_Y5_N9
\LessThan0~42\ : maxv_lcell
-- Equation(s):
-- \LessThan0~42_cout\ = CARRY((\Add9~40_combout\ & (\Add7~40_combout\ & !\LessThan0~47COUT1_96\)) # (!\Add9~40_combout\ & ((\Add7~40_combout\) # (!\LessThan0~47COUT1_96\))))

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
	dataa => \Add9~40_combout\,
	datab => \Add7~40_combout\,
	cin => \LessThan0~67_cout\,
	cin0 => \LessThan0~47_cout0\,
	cin1 => \LessThan0~47COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~40\,
	cout => \LessThan0~42_cout\);

-- Location: LC_X10_Y5_N0
\LessThan0~37\ : maxv_lcell
-- Equation(s):
-- \LessThan0~37_cout0\ = CARRY((\Add7~35_combout\ & (\Add9~35_combout\ & !\LessThan0~42_cout\)) # (!\Add7~35_combout\ & ((\Add9~35_combout\) # (!\LessThan0~42_cout\))))
-- \LessThan0~37COUT1_98\ = CARRY((\Add7~35_combout\ & (\Add9~35_combout\ & !\LessThan0~42_cout\)) # (!\Add7~35_combout\ & ((\Add9~35_combout\) # (!\LessThan0~42_cout\))))

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
	dataa => \Add7~35_combout\,
	datab => \Add9~35_combout\,
	cin => \LessThan0~42_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~35\,
	cout0 => \LessThan0~37_cout0\,
	cout1 => \LessThan0~37COUT1_98\);

-- Location: LC_X10_Y5_N1
\LessThan0~32\ : maxv_lcell
-- Equation(s):
-- \LessThan0~32_cout0\ = CARRY((\Add7~30_combout\ & ((!\LessThan0~37_cout0\) # (!\Add9~30_combout\))) # (!\Add7~30_combout\ & (!\Add9~30_combout\ & !\LessThan0~37_cout0\)))
-- \LessThan0~32COUT1_100\ = CARRY((\Add7~30_combout\ & ((!\LessThan0~37COUT1_98\) # (!\Add9~30_combout\))) # (!\Add7~30_combout\ & (!\Add9~30_combout\ & !\LessThan0~37COUT1_98\)))

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
	dataa => \Add7~30_combout\,
	datab => \Add9~30_combout\,
	cin => \LessThan0~42_cout\,
	cin0 => \LessThan0~37_cout0\,
	cin1 => \LessThan0~37COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~30\,
	cout0 => \LessThan0~32_cout0\,
	cout1 => \LessThan0~32COUT1_100\);

-- Location: LC_X10_Y5_N2
\LessThan0~27\ : maxv_lcell
-- Equation(s):
-- \LessThan0~27_cout0\ = CARRY((\Add9~25_combout\ & ((!\LessThan0~32_cout0\) # (!\Add7~25_combout\))) # (!\Add9~25_combout\ & (!\Add7~25_combout\ & !\LessThan0~32_cout0\)))
-- \LessThan0~27COUT1_102\ = CARRY((\Add9~25_combout\ & ((!\LessThan0~32COUT1_100\) # (!\Add7~25_combout\))) # (!\Add9~25_combout\ & (!\Add7~25_combout\ & !\LessThan0~32COUT1_100\)))

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
	dataa => \Add9~25_combout\,
	datab => \Add7~25_combout\,
	cin => \LessThan0~42_cout\,
	cin0 => \LessThan0~32_cout0\,
	cin1 => \LessThan0~32COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~25\,
	cout0 => \LessThan0~27_cout0\,
	cout1 => \LessThan0~27COUT1_102\);

-- Location: LC_X10_Y5_N3
\LessThan0~22\ : maxv_lcell
-- Equation(s):
-- \LessThan0~22_cout0\ = CARRY((\Add9~20_combout\ & (\Add7~20_combout\ & !\LessThan0~27_cout0\)) # (!\Add9~20_combout\ & ((\Add7~20_combout\) # (!\LessThan0~27_cout0\))))
-- \LessThan0~22COUT1_104\ = CARRY((\Add9~20_combout\ & (\Add7~20_combout\ & !\LessThan0~27COUT1_102\)) # (!\Add9~20_combout\ & ((\Add7~20_combout\) # (!\LessThan0~27COUT1_102\))))

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
	dataa => \Add9~20_combout\,
	datab => \Add7~20_combout\,
	cin => \LessThan0~42_cout\,
	cin0 => \LessThan0~27_cout0\,
	cin1 => \LessThan0~27COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~20\,
	cout0 => \LessThan0~22_cout0\,
	cout1 => \LessThan0~22COUT1_104\);

-- Location: LC_X10_Y5_N4
\LessThan0~17\ : maxv_lcell
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\Add7~15_combout\ & (\Add9~15_combout\ & !\LessThan0~22COUT1_104\)) # (!\Add7~15_combout\ & ((\Add9~15_combout\) # (!\LessThan0~22COUT1_104\))))

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
	dataa => \Add7~15_combout\,
	datab => \Add9~15_combout\,
	cin => \LessThan0~42_cout\,
	cin0 => \LessThan0~22_cout0\,
	cin1 => \LessThan0~22COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~15\,
	cout => \LessThan0~17_cout\);

-- Location: LC_X10_Y5_N5
\LessThan0~12\ : maxv_lcell
-- Equation(s):
-- \LessThan0~12_cout0\ = CARRY((\Add9~10_combout\ & (\Add7~10_combout\ & !\LessThan0~17_cout\)) # (!\Add9~10_combout\ & ((\Add7~10_combout\) # (!\LessThan0~17_cout\))))
-- \LessThan0~12COUT1_106\ = CARRY((\Add9~10_combout\ & (\Add7~10_combout\ & !\LessThan0~17_cout\)) # (!\Add9~10_combout\ & ((\Add7~10_combout\) # (!\LessThan0~17_cout\))))

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
	dataa => \Add9~10_combout\,
	datab => \Add7~10_combout\,
	cin => \LessThan0~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~10\,
	cout0 => \LessThan0~12_cout0\,
	cout1 => \LessThan0~12COUT1_106\);

-- Location: LC_X10_Y5_N6
\LessThan0~7\ : maxv_lcell
-- Equation(s):
-- \LessThan0~7_cout0\ = CARRY((\Add9~5_combout\ & ((!\LessThan0~12_cout0\) # (!\Add7~5_combout\))) # (!\Add9~5_combout\ & (!\Add7~5_combout\ & !\LessThan0~12_cout0\)))
-- \LessThan0~7COUT1_108\ = CARRY((\Add9~5_combout\ & ((!\LessThan0~12COUT1_106\) # (!\Add7~5_combout\))) # (!\Add9~5_combout\ & (!\Add7~5_combout\ & !\LessThan0~12COUT1_106\)))

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
	dataa => \Add9~5_combout\,
	datab => \Add7~5_combout\,
	cin => \LessThan0~17_cout\,
	cin0 => \LessThan0~12_cout0\,
	cin1 => \LessThan0~12COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~5\,
	cout0 => \LessThan0~7_cout0\,
	cout1 => \LessThan0~7COUT1_108\);

-- Location: LC_X10_Y5_N7
\LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = (\Add9~0_combout\ & (\Add7~0_combout\ & (!(!\LessThan0~17_cout\ & \LessThan0~7_cout0\) # (\LessThan0~17_cout\ & \LessThan0~7COUT1_108\)))) # (!\Add9~0_combout\ & ((\Add7~0_combout\) # ((!(!\LessThan0~17_cout\ & \LessThan0~7_cout0\) 
-- # (\LessThan0~17_cout\ & \LessThan0~7COUT1_108\)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "4d4d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datab => \Add7~0_combout\,
	cin => \LessThan0~17_cout\,
	cin0 => \LessThan0~7_cout0\,
	cin1 => \LessThan0~7COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X12_Y3_N2
\process_1~0\ : maxv_lcell
-- Equation(s):
-- \process_1~0_combout\ = (((\LessThan0~0_combout\) # (!\FOLLOWING~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \FOLLOWING~combout\,
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_1~0_combout\);

-- Location: LC_X11_Y6_N2
\c_x[0]\ : maxv_lcell
-- Equation(s):
-- c_x(0) = ((GLOBAL(\process_1~0_combout\) & (a_x(0))) # (!GLOBAL(\process_1~0_combout\) & ((c_x(0)))))

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
	datab => a_x(0),
	datac => \process_1~0_combout\,
	datad => c_x(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_x(0));

-- Location: LC_X1_Y8_N2
\c_y[0]\ : maxv_lcell
-- Equation(s):
-- c_y(0) = ((GLOBAL(\process_1~0_combout\) & (a_y(0))) # (!GLOBAL(\process_1~0_combout\) & ((c_y(0)))))

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
	datab => a_y(0),
	datac => \process_1~0_combout\,
	datad => c_y(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_y(0));

-- Location: LC_X9_Y10_N2
\c_y[1]\ : maxv_lcell
-- Equation(s):
-- c_y(1) = ((GLOBAL(\process_1~0_combout\) & (a_y(1))) # (!GLOBAL(\process_1~0_combout\) & ((c_y(1)))))

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
	datab => a_y(1),
	datac => \process_1~0_combout\,
	datad => c_y(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_y(1));

-- Location: LC_X1_Y9_N2
\c_y[2]\ : maxv_lcell
-- Equation(s):
-- c_y(2) = ((GLOBAL(\process_1~0_combout\) & (a_y(2))) # (!GLOBAL(\process_1~0_combout\) & ((c_y(2)))))

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
	datab => a_y(2),
	datac => \process_1~0_combout\,
	datad => c_y(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_y(2));

-- Location: LC_X11_Y10_N2
\c_y[3]\ : maxv_lcell
-- Equation(s):
-- c_y(3) = ((GLOBAL(\process_1~0_combout\) & (a_y(3))) # (!GLOBAL(\process_1~0_combout\) & ((c_y(3)))))

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
	datab => a_y(3),
	datac => \process_1~0_combout\,
	datad => c_y(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_y(3));

-- Location: LC_X3_Y10_N2
\c_y[4]\ : maxv_lcell
-- Equation(s):
-- c_y(4) = ((GLOBAL(\process_1~0_combout\) & (a_y(4))) # (!GLOBAL(\process_1~0_combout\) & ((c_y(4)))))

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
	datab => a_y(4),
	datac => \process_1~0_combout\,
	datad => c_y(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_y(4));

-- Location: LC_X9_Y10_N3
\c_y[5]\ : maxv_lcell
-- Equation(s):
-- c_y(5) = ((GLOBAL(\process_1~0_combout\) & (a_y(5))) # (!GLOBAL(\process_1~0_combout\) & ((c_y(5)))))

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
	datab => a_y(5),
	datac => \process_1~0_combout\,
	datad => c_y(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_y(5));

-- Location: LC_X12_Y9_N9
\c_y[6]\ : maxv_lcell
-- Equation(s):
-- c_y(6) = ((GLOBAL(\process_1~0_combout\) & (a_y(6))) # (!GLOBAL(\process_1~0_combout\) & ((c_y(6)))))

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
	datab => a_y(6),
	datac => \process_1~0_combout\,
	datad => c_y(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_y(6));

-- Location: LC_X15_Y10_N2
\c_y[7]\ : maxv_lcell
-- Equation(s):
-- c_y(7) = ((GLOBAL(\process_1~0_combout\) & (a_y(7))) # (!GLOBAL(\process_1~0_combout\) & ((c_y(7)))))

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
	datab => a_y(7),
	datac => \process_1~0_combout\,
	datad => c_y(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_y(7));

-- Location: LC_X1_Y9_N3
\c_y[8]\ : maxv_lcell
-- Equation(s):
-- c_y(8) = ((GLOBAL(\process_1~0_combout\) & (a_y(8))) # (!GLOBAL(\process_1~0_combout\) & ((c_y(8)))))

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
	datab => a_y(8),
	datac => \process_1~0_combout\,
	datad => c_y(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_y(8));

-- Location: LC_X16_Y10_N2
\c_y[9]\ : maxv_lcell
-- Equation(s):
-- c_y(9) = ((GLOBAL(\process_1~0_combout\) & (a_y(9))) # (!GLOBAL(\process_1~0_combout\) & ((c_y(9)))))

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
	datab => a_y(9),
	datac => \process_1~0_combout\,
	datad => c_y(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_y(9));

-- Location: LC_X4_Y10_N2
\c_y[10]\ : maxv_lcell
-- Equation(s):
-- c_y(10) = ((GLOBAL(\process_1~0_combout\) & (a_y(10))) # (!GLOBAL(\process_1~0_combout\) & ((c_y(10)))))

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
	datab => a_y(10),
	datac => \process_1~0_combout\,
	datad => c_y(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_y(10));

-- Location: LC_X12_Y9_N8
\c_y[11]\ : maxv_lcell
-- Equation(s):
-- c_y(11) = ((GLOBAL(\process_1~0_combout\) & (a_y(11))) # (!GLOBAL(\process_1~0_combout\) & ((c_y(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => a_y(11),
	datac => \process_1~0_combout\,
	datad => c_y(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_y(11));

-- Location: LC_X1_Y10_N2
\c_y[12]\ : maxv_lcell
-- Equation(s):
-- c_y(12) = ((GLOBAL(\process_1~0_combout\) & (a_y(12))) # (!GLOBAL(\process_1~0_combout\) & ((c_y(12)))))

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
	datab => a_y(12),
	datac => \process_1~0_combout\,
	datad => c_y(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_y(12));

-- Location: LC_X16_Y9_N2
\c_y[13]\ : maxv_lcell
-- Equation(s):
-- c_y(13) = ((GLOBAL(\process_1~0_combout\) & (a_y(13))) # (!GLOBAL(\process_1~0_combout\) & ((c_y(13)))))

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
	datab => a_y(13),
	datac => \process_1~0_combout\,
	datad => c_y(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => c_y(13));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_X[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_x(0),
	oe => VCC,
	padio => ww_ACT_X(0));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_X[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_x(1),
	oe => VCC,
	padio => ww_ACT_X(1));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_X[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_x(2),
	oe => VCC,
	padio => ww_ACT_X(2));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_X[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_x(3),
	oe => VCC,
	padio => ww_ACT_X(3));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_X[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_x(4),
	oe => VCC,
	padio => ww_ACT_X(4));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_X[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_x(5),
	oe => VCC,
	padio => ww_ACT_X(5));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_X[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_x(6),
	oe => VCC,
	padio => ww_ACT_X(6));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_X[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_x(7),
	oe => VCC,
	padio => ww_ACT_X(7));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_X[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_x(8),
	oe => VCC,
	padio => ww_ACT_X(8));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_X[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_x(9),
	oe => VCC,
	padio => ww_ACT_X(9));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_X[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_x(10),
	oe => VCC,
	padio => ww_ACT_X(10));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_X[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_x(11),
	oe => VCC,
	padio => ww_ACT_X(11));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_X[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_x(12),
	oe => VCC,
	padio => ww_ACT_X(12));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_X[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_x(13),
	oe => VCC,
	padio => ww_ACT_X(13));

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_2T[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_2t(0),
	oe => VCC,
	padio => ww_ACT_2T(0));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_2T[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_2t(1),
	oe => VCC,
	padio => ww_ACT_2T(1));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_2T[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_2t(2),
	oe => VCC,
	padio => ww_ACT_2T(2));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_2T[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_2t(3),
	oe => VCC,
	padio => ww_ACT_2T(3));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_2T[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_2t(4),
	oe => VCC,
	padio => ww_ACT_2T(4));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_2T[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_2t(5),
	oe => VCC,
	padio => ww_ACT_2T(5));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_2T[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_2t(6),
	oe => VCC,
	padio => ww_ACT_2T(6));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_2T[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_2t(7),
	oe => VCC,
	padio => ww_ACT_2T(7));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_2T[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_2t(8),
	oe => VCC,
	padio => ww_ACT_2T(8));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_2T[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_2t(9),
	oe => VCC,
	padio => ww_ACT_2T(9));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_Y[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_y(0),
	oe => VCC,
	padio => ww_ACT_Y(0));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_Y[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_y(1),
	oe => VCC,
	padio => ww_ACT_Y(1));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_Y[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_y(2),
	oe => VCC,
	padio => ww_ACT_Y(2));

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_Y[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_y(3),
	oe => VCC,
	padio => ww_ACT_Y(3));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_Y[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_y(4),
	oe => VCC,
	padio => ww_ACT_Y(4));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_Y[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_y(5),
	oe => VCC,
	padio => ww_ACT_Y(5));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_Y[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_y(6),
	oe => VCC,
	padio => ww_ACT_Y(6));

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_Y[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_y(7),
	oe => VCC,
	padio => ww_ACT_Y(7));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_Y[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_y(8),
	oe => VCC,
	padio => ww_ACT_Y(8));

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_Y[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_y(9),
	oe => VCC,
	padio => ww_ACT_Y(9));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_Y[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_y(10),
	oe => VCC,
	padio => ww_ACT_Y(10));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_Y[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_y(11),
	oe => VCC,
	padio => ww_ACT_Y(11));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_Y[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_y(12),
	oe => VCC,
	padio => ww_ACT_Y(12));

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ACT_Y[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => a_y(13),
	oe => VCC,
	padio => ww_ACT_Y(13));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_X[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_x(0),
	oe => VCC,
	padio => ww_CLOSEST_X(0));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_X[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_x(1),
	oe => VCC,
	padio => ww_CLOSEST_X(1));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_X[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_x(2),
	oe => VCC,
	padio => ww_CLOSEST_X(2));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_X[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_x(3),
	oe => VCC,
	padio => ww_CLOSEST_X(3));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_X[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_x(4),
	oe => VCC,
	padio => ww_CLOSEST_X(4));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_X[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_x(5),
	oe => VCC,
	padio => ww_CLOSEST_X(5));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_X[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_x(6),
	oe => VCC,
	padio => ww_CLOSEST_X(6));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_X[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_x(7),
	oe => VCC,
	padio => ww_CLOSEST_X(7));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_X[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_x(8),
	oe => VCC,
	padio => ww_CLOSEST_X(8));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_X[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_x(9),
	oe => VCC,
	padio => ww_CLOSEST_X(9));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_X[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_x(10),
	oe => VCC,
	padio => ww_CLOSEST_X(10));

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_X[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_x(11),
	oe => VCC,
	padio => ww_CLOSEST_X(11));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_X[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_x(12),
	oe => VCC,
	padio => ww_CLOSEST_X(12));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_X[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_x(13),
	oe => VCC,
	padio => ww_CLOSEST_X(13));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_Y[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_y(0),
	oe => VCC,
	padio => ww_CLOSEST_Y(0));

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_Y[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_y(1),
	oe => VCC,
	padio => ww_CLOSEST_Y(1));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_Y[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_y(2),
	oe => VCC,
	padio => ww_CLOSEST_Y(2));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_Y[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_y(3),
	oe => VCC,
	padio => ww_CLOSEST_Y(3));

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_Y[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_y(4),
	oe => VCC,
	padio => ww_CLOSEST_Y(4));

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_Y[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_y(5),
	oe => VCC,
	padio => ww_CLOSEST_Y(5));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_Y[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_y(6),
	oe => VCC,
	padio => ww_CLOSEST_Y(6));

-- Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_Y[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_y(7),
	oe => VCC,
	padio => ww_CLOSEST_Y(7));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_Y[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_y(8),
	oe => VCC,
	padio => ww_CLOSEST_Y(8));

-- Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_Y[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_y(9),
	oe => VCC,
	padio => ww_CLOSEST_Y(9));

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_Y[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_y(10),
	oe => VCC,
	padio => ww_CLOSEST_Y(10));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_Y[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_y(11),
	oe => VCC,
	padio => ww_CLOSEST_Y(11));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_Y[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_y(12),
	oe => VCC,
	padio => ww_CLOSEST_Y(12));

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CLOSEST_Y[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => c_y(13),
	oe => VCC,
	padio => ww_CLOSEST_Y(13));
END structure;


