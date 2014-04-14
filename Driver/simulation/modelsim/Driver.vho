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

-- DATE "04/14/2014 17:44:55"

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

ENTITY 	Driver IS
    PORT (
	CLK : IN std_logic;
	L1 : OUT std_logic;
	L2 : OUT std_logic;
	R1 : OUT std_logic;
	R2 : OUT std_logic;
	CORRECTN : IN STD.STANDARD.integer range -127 TO 127;
	FOLLOWING : IN std_logic;
	FIN_X : IN STD.STANDARD.integer range 0 TO 30000;
	FIN_Y : IN STD.STANDARD.integer range 0 TO 30000;
	ACT_X : IN STD.STANDARD.integer range 0 TO 30000;
	ACT_Y : IN STD.STANDARD.integer range 0 TO 30000;
	ACT_2T : IN STD.STANDARD.integer range -360 TO 360;
	RUN : IN std_logic;
	NEXTPT : OUT std_logic
	);
END Driver;

-- Design Ports Information
-- L1	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- L2	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- R1	=>  Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- R2	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- NEXTPT	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CORRECTN[4]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CORRECTN[3]	=>  Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CORRECTN[1]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CORRECTN[2]	=>  Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CORRECTN[5]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CORRECTN[6]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CORRECTN[7]	=>  Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FOLLOWING	=>  Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RUN	=>  Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CORRECTN[0]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_Y[14]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_Y[14]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_2T[1]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_2T[9]	=>  Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_2T[2]	=>  Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_2T[3]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_2T[4]	=>  Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_2T[5]	=>  Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_2T[6]	=>  Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_2T[7]	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_2T[8]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_X[14]	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[14]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_Y[10]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_Y[10]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_Y[11]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_Y[11]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_Y[12]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_Y[12]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_Y[13]	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_Y[13]	=>  Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_Y[7]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_Y[7]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_Y[8]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_Y[8]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_Y[9]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_Y[9]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_Y[3]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_Y[3]	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_Y[4]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_Y[4]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_Y[5]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_Y[5]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_Y[6]	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_Y[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_2T[0]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_X[3]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[3]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_X[4]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[4]	=>  Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_X[5]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[5]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_X[6]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[6]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_X[7]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[7]	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_X[8]	=>  Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[8]	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_X[9]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[9]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_X[10]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[10]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_X[11]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[11]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_X[12]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[12]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_X[13]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[13]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_Y[2]	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_Y[2]	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_X[2]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[2]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_Y[1]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_Y[1]	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_X[1]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[1]	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_Y[0]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_Y[0]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACT_X[0]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FIN_X[0]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Driver IS
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
SIGNAL ww_L1 : std_logic;
SIGNAL ww_L2 : std_logic;
SIGNAL ww_R1 : std_logic;
SIGNAL ww_R2 : std_logic;
SIGNAL ww_CORRECTN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_FOLLOWING : std_logic;
SIGNAL ww_FIN_X : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_FIN_Y : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_ACT_X : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_ACT_Y : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_ACT_2T : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_RUN : std_logic;
SIGNAL ww_NEXTPT : std_logic;
SIGNAL \Add1~65\ : std_logic;
SIGNAL \LessThan7~5\ : std_logic;
SIGNAL \Add8~45\ : std_logic;
SIGNAL \Add3~65\ : std_logic;
SIGNAL \LessThan4~5\ : std_logic;
SIGNAL \Add7~50\ : std_logic;
SIGNAL \Add5~50\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \LessThan7~10\ : std_logic;
SIGNAL \Add3~70\ : std_logic;
SIGNAL \LessThan4~10\ : std_logic;
SIGNAL \Add4~40\ : std_logic;
SIGNAL \Add1~75\ : std_logic;
SIGNAL \LessThan7~15\ : std_logic;
SIGNAL \Add3~75\ : std_logic;
SIGNAL \LessThan4~15\ : std_logic;
SIGNAL \LessThan7~20\ : std_logic;
SIGNAL \LessThan4~20\ : std_logic;
SIGNAL \LessThan7~25\ : std_logic;
SIGNAL \LessThan4~25\ : std_logic;
SIGNAL \LessThan7~30\ : std_logic;
SIGNAL \LessThan4~30\ : std_logic;
SIGNAL \LessThan7~35\ : std_logic;
SIGNAL \LessThan4~35\ : std_logic;
SIGNAL \LessThan7~40\ : std_logic;
SIGNAL \LessThan4~40\ : std_logic;
SIGNAL \LessThan7~45\ : std_logic;
SIGNAL \LessThan4~45\ : std_logic;
SIGNAL \LessThan7~50\ : std_logic;
SIGNAL \LessThan4~50\ : std_logic;
SIGNAL \LessThan7~55\ : std_logic;
SIGNAL \LessThan4~55\ : std_logic;
SIGNAL \LessThan7~60\ : std_logic;
SIGNAL \LessThan4~60\ : std_logic;
SIGNAL \LessThan7~65\ : std_logic;
SIGNAL \LessThan4~65\ : std_logic;
SIGNAL \LessThan7~70\ : std_logic;
SIGNAL \LessThan4~70\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \FOLLOWING~combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Add8~47_cout0\ : std_logic;
SIGNAL \Add8~47COUT1_60\ : std_logic;
SIGNAL \Add8~2\ : std_logic;
SIGNAL \Add8~2COUT1_62\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~7COUT1_64\ : std_logic;
SIGNAL \Add8~12\ : std_logic;
SIGNAL \Add8~12COUT1_66\ : std_logic;
SIGNAL \Add8~17\ : std_logic;
SIGNAL \Add8~27\ : std_logic;
SIGNAL \Add8~27COUT1_68\ : std_logic;
SIGNAL \Add8~32\ : std_logic;
SIGNAL \Add8~32COUT1_70\ : std_logic;
SIGNAL \Add8~35_combout\ : std_logic;
SIGNAL \Add8~37\ : std_logic;
SIGNAL \Add8~37COUT1_72\ : std_logic;
SIGNAL \Add8~40_combout\ : std_logic;
SIGNAL \Add8~30_combout\ : std_logic;
SIGNAL \Add8~25_combout\ : std_logic;
SIGNAL \LessThan8~1_combout\ : std_logic;
SIGNAL \Add8~42\ : std_logic;
SIGNAL \Add8~42COUT1_74\ : std_logic;
SIGNAL \Add8~20_combout\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Add8~15_combout\ : std_logic;
SIGNAL \Add8~5_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \LessThan8~2_combout\ : std_logic;
SIGNAL \LessThan7~72_cout0\ : std_logic;
SIGNAL \LessThan7~72COUT1_88\ : std_logic;
SIGNAL \LessThan7~67_cout\ : std_logic;
SIGNAL \LessThan7~62_cout0\ : std_logic;
SIGNAL \LessThan7~62COUT1_90\ : std_logic;
SIGNAL \LessThan7~57_cout0\ : std_logic;
SIGNAL \LessThan7~57COUT1_92\ : std_logic;
SIGNAL \LessThan7~52_cout0\ : std_logic;
SIGNAL \LessThan7~52COUT1_94\ : std_logic;
SIGNAL \LessThan7~47_cout0\ : std_logic;
SIGNAL \LessThan7~47COUT1_96\ : std_logic;
SIGNAL \LessThan7~42_cout\ : std_logic;
SIGNAL \LessThan7~37_cout0\ : std_logic;
SIGNAL \LessThan7~37COUT1_98\ : std_logic;
SIGNAL \LessThan7~32_cout0\ : std_logic;
SIGNAL \LessThan7~32COUT1_100\ : std_logic;
SIGNAL \LessThan7~27_cout0\ : std_logic;
SIGNAL \LessThan7~27COUT1_102\ : std_logic;
SIGNAL \LessThan7~22_cout0\ : std_logic;
SIGNAL \LessThan7~22COUT1_104\ : std_logic;
SIGNAL \LessThan7~17_cout\ : std_logic;
SIGNAL \LessThan7~12_cout0\ : std_logic;
SIGNAL \LessThan7~12COUT1_106\ : std_logic;
SIGNAL \LessThan7~7_cout0\ : std_logic;
SIGNAL \LessThan7~7COUT1_108\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_94\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_96\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_98\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_100\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~57COUT1_102\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_104\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_106\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_108\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_110\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_112\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_114\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_116\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \Add1~77_cout0\ : std_logic;
SIGNAL \Add1~77COUT1_94\ : std_logic;
SIGNAL \Add1~72_cout0\ : std_logic;
SIGNAL \Add1~72COUT1_96\ : std_logic;
SIGNAL \Add1~67_cout\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~47COUT1_98\ : std_logic;
SIGNAL \Add1~52\ : std_logic;
SIGNAL \Add1~52COUT1_100\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~57COUT1_102\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~62COUT1_104\ : std_logic;
SIGNAL \Add1~32\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~37COUT1_106\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~42COUT1_108\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~12COUT1_110\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~17COUT1_112\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~27COUT1_114\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~2COUT1_116\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~55_combout\ : std_logic;
SIGNAL \Add1~45_combout\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \L2~0_combout\ : std_logic;
SIGNAL \L1~0_combout\ : std_logic;
SIGNAL \L1~1_combout\ : std_logic;
SIGNAL \RUN~combout\ : std_logic;
SIGNAL \Add2~77\ : std_logic;
SIGNAL \Add2~77COUT1_94\ : std_logic;
SIGNAL \Add2~72\ : std_logic;
SIGNAL \Add2~72COUT1_96\ : std_logic;
SIGNAL \Add2~67\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~2COUT1_98\ : std_logic;
SIGNAL \Add2~12\ : std_logic;
SIGNAL \Add2~12COUT1_100\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~17COUT1_102\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~22COUT1_104\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~32\ : std_logic;
SIGNAL \Add2~32COUT1_106\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~37COUT1_108\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~42COUT1_110\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~47COUT1_112\ : std_logic;
SIGNAL \Add2~52\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~57COUT1_114\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~62COUT1_116\ : std_logic;
SIGNAL \Add2~5_combout\ : std_logic;
SIGNAL \Add2~55_combout\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add2~25_combout\ : std_logic;
SIGNAL \Add2~65_combout\ : std_logic;
SIGNAL \Add2~70_combout\ : std_logic;
SIGNAL \Add2~75_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \Add3~77_cout0\ : std_logic;
SIGNAL \Add3~77COUT1_94\ : std_logic;
SIGNAL \Add3~72_cout0\ : std_logic;
SIGNAL \Add3~72COUT1_96\ : std_logic;
SIGNAL \Add3~67_cout\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~15_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~2COUT1_98\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~7COUT1_100\ : std_logic;
SIGNAL \Add3~12\ : std_logic;
SIGNAL \Add3~12COUT1_102\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~17COUT1_104\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add2~45_combout\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~35_combout\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~27COUT1_106\ : std_logic;
SIGNAL \Add3~32\ : std_logic;
SIGNAL \Add3~32COUT1_108\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~37COUT1_110\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~42COUT1_112\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Add3~35_combout\ : std_logic;
SIGNAL \Add3~45_combout\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \L1~3_combout\ : std_logic;
SIGNAL \R1~0_combout\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~25_combout\ : std_logic;
SIGNAL \Add3~5_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~15_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Add3~52\ : std_logic;
SIGNAL \Add3~52COUT1_114\ : std_logic;
SIGNAL \Add3~55_combout\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~57COUT1_116\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \L1~4_combout\ : std_logic;
SIGNAL \L1~5\ : std_logic;
SIGNAL \L1~reg0_regout\ : std_logic;
SIGNAL \L2~reg0_regout\ : std_logic;
SIGNAL \LessThan4~72_cout0\ : std_logic;
SIGNAL \LessThan4~72COUT1_88\ : std_logic;
SIGNAL \LessThan4~67_cout\ : std_logic;
SIGNAL \LessThan4~62_cout0\ : std_logic;
SIGNAL \LessThan4~62COUT1_90\ : std_logic;
SIGNAL \LessThan4~57_cout0\ : std_logic;
SIGNAL \LessThan4~57COUT1_92\ : std_logic;
SIGNAL \LessThan4~52_cout0\ : std_logic;
SIGNAL \LessThan4~52COUT1_94\ : std_logic;
SIGNAL \LessThan4~47_cout0\ : std_logic;
SIGNAL \LessThan4~47COUT1_96\ : std_logic;
SIGNAL \LessThan4~42_cout\ : std_logic;
SIGNAL \LessThan4~37_cout0\ : std_logic;
SIGNAL \LessThan4~37COUT1_98\ : std_logic;
SIGNAL \LessThan4~32_cout0\ : std_logic;
SIGNAL \LessThan4~32COUT1_100\ : std_logic;
SIGNAL \LessThan4~27_cout0\ : std_logic;
SIGNAL \LessThan4~27COUT1_102\ : std_logic;
SIGNAL \LessThan4~22_cout0\ : std_logic;
SIGNAL \LessThan4~22COUT1_104\ : std_logic;
SIGNAL \LessThan4~17_cout\ : std_logic;
SIGNAL \LessThan4~12_cout0\ : std_logic;
SIGNAL \LessThan4~12COUT1_106\ : std_logic;
SIGNAL \LessThan4~7_cout0\ : std_logic;
SIGNAL \LessThan4~7COUT1_108\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \R1~1_combout\ : std_logic;
SIGNAL \R1~2_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~7COUT1_48\ : std_logic;
SIGNAL \Add6~12\ : std_logic;
SIGNAL \Add6~12COUT1_50\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~17COUT1_52\ : std_logic;
SIGNAL \Add6~22\ : std_logic;
SIGNAL \Add6~22COUT1_54\ : std_logic;
SIGNAL \Add6~27\ : std_logic;
SIGNAL \Add6~32\ : std_logic;
SIGNAL \Add6~32COUT1_56\ : std_logic;
SIGNAL \Add6~37\ : std_logic;
SIGNAL \Add6~37COUT1_58\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add6~35_combout\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add6~5_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \Add7~52_cout0\ : std_logic;
SIGNAL \Add7~52COUT1_65\ : std_logic;
SIGNAL \Add7~2\ : std_logic;
SIGNAL \Add7~2COUT1_67\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~7COUT1_69\ : std_logic;
SIGNAL \Add7~12\ : std_logic;
SIGNAL \Add7~12COUT1_71\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add6~30_combout\ : std_logic;
SIGNAL \Add6~25_combout\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \Add6~15_combout\ : std_logic;
SIGNAL \Add7~22\ : std_logic;
SIGNAL \Add7~22COUT1_73\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \Add7~27COUT1_75\ : std_logic;
SIGNAL \Add7~32\ : std_logic;
SIGNAL \Add7~32COUT1_77\ : std_logic;
SIGNAL \Add7~37\ : std_logic;
SIGNAL \Add7~37COUT1_79\ : std_logic;
SIGNAL \Add7~42\ : std_logic;
SIGNAL \Add7~45_combout\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add7~15_combout\ : std_logic;
SIGNAL \Add7~5_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \Add7~40_combout\ : std_logic;
SIGNAL \Add7~35_combout\ : std_logic;
SIGNAL \Add7~30_combout\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \Add7~25_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \LessThan6~2_combout\ : std_logic;
SIGNAL \R1~3_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Add4~42_cout0\ : std_logic;
SIGNAL \Add4~42COUT1_54\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~7COUT1_56\ : std_logic;
SIGNAL \Add4~12\ : std_logic;
SIGNAL \Add4~12COUT1_58\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~17COUT1_60\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~27COUT1_62\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add4~32\ : std_logic;
SIGNAL \Add4~32COUT1_64\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~37COUT1_66\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add4~5_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \Add5~52_cout0\ : std_logic;
SIGNAL \Add5~52COUT1_65\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~2COUT1_67\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~7COUT1_69\ : std_logic;
SIGNAL \Add5~12\ : std_logic;
SIGNAL \Add5~12COUT1_71\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add4~25_combout\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Add4~15_combout\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~22COUT1_73\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~27COUT1_75\ : std_logic;
SIGNAL \Add5~32\ : std_logic;
SIGNAL \Add5~32COUT1_77\ : std_logic;
SIGNAL \Add5~35_combout\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Add5~25_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add5~15_combout\ : std_logic;
SIGNAL \Add5~5_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \Add4~35_combout\ : std_logic;
SIGNAL \Add5~37\ : std_logic;
SIGNAL \Add5~37COUT1_79\ : std_logic;
SIGNAL \Add5~42\ : std_logic;
SIGNAL \Add5~45_combout\ : std_logic;
SIGNAL \Add5~40_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \R1~reg0_regout\ : std_logic;
SIGNAL \R2~0_combout\ : std_logic;
SIGNAL \R2~1_combout\ : std_logic;
SIGNAL \R2~reg0_regout\ : std_logic;
SIGNAL \NEXTPT~reg0_regout\ : std_logic;
SIGNAL \FIN_X~combout\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \FIN_Y~combout\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \ACT_Y~combout\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \ACT_2T~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ACT_X~combout\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \CORRECTN~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_L1~5\ : std_logic;

BEGIN

ww_CLK <= CLK;
L1 <= ww_L1;
L2 <= ww_L2;
R1 <= ww_R1;
R2 <= ww_R2;
ww_CORRECTN <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(CORRECTN, 8);
ww_FOLLOWING <= FOLLOWING;
ww_FIN_X <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(FIN_X, 15);
ww_FIN_Y <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(FIN_Y, 15);
ww_ACT_X <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(ACT_X, 15);
ww_ACT_Y <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(ACT_Y, 15);
ww_ACT_2T <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(ACT_2T, 10);
ww_RUN <= RUN;
NEXTPT <= ww_NEXTPT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_L1~5\ <= NOT \L1~5\;

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

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FOLLOWING~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FOLLOWING,
	combout => \FOLLOWING~combout\);

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_2T[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_2T(7),
	combout => \ACT_2T~combout\(7));

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_2T[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_2T(9),
	combout => \ACT_2T~combout\(9));

-- Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_2T[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_2T(4),
	combout => \ACT_2T~combout\(4));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_2T[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_2T(3),
	combout => \ACT_2T~combout\(3));

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_2T[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_2T(2),
	combout => \ACT_2T~combout\(2));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_2T[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_2T(1),
	combout => \ACT_2T~combout\(1));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_2T[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_2T(0),
	combout => \ACT_2T~combout\(0));

-- Location: LC_X13_Y10_N1
\process_0~0\ : maxv_lcell
-- Equation(s):
-- \process_0~0_combout\ = ((\ACT_2T~combout\(0) $ (\ACT_2T~combout\(9))))

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
	datac => \ACT_2T~combout\(0),
	datad => \ACT_2T~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~0_combout\);

-- Location: LC_X13_Y9_N0
\Add8~47\ : maxv_lcell
-- Equation(s):
-- \Add8~47_cout0\ = CARRY((\process_0~0_combout\ & (\ACT_2T~combout\(9))))
-- \Add8~47COUT1_60\ = CARRY((\process_0~0_combout\ & (\ACT_2T~combout\(9))))

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
	dataa => \process_0~0_combout\,
	datab => \ACT_2T~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~45\,
	cout0 => \Add8~47_cout0\,
	cout1 => \Add8~47COUT1_60\);

-- Location: LC_X13_Y9_N1
\Add8~0\ : maxv_lcell
-- Equation(s):
-- \Add8~0_combout\ = \ACT_2T~combout\(1) $ (\ACT_2T~combout\(9) $ ((\Add8~47_cout0\)))
-- \Add8~2\ = CARRY((\ACT_2T~combout\(1) $ (!\ACT_2T~combout\(9))) # (!\Add8~47_cout0\))
-- \Add8~2COUT1_62\ = CARRY((\ACT_2T~combout\(1) $ (!\ACT_2T~combout\(9))) # (!\Add8~47COUT1_60\))

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
	dataa => \ACT_2T~combout\(1),
	datab => \ACT_2T~combout\(9),
	cin0 => \Add8~47_cout0\,
	cin1 => \Add8~47COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~0_combout\,
	cout0 => \Add8~2\,
	cout1 => \Add8~2COUT1_62\);

-- Location: LC_X13_Y9_N2
\Add8~5\ : maxv_lcell
-- Equation(s):
-- \Add8~5_combout\ = \ACT_2T~combout\(2) $ (\ACT_2T~combout\(9) $ ((!\Add8~2\)))
-- \Add8~7\ = CARRY((!\Add8~2\ & (\ACT_2T~combout\(2) $ (\ACT_2T~combout\(9)))))
-- \Add8~7COUT1_64\ = CARRY((!\Add8~2COUT1_62\ & (\ACT_2T~combout\(2) $ (\ACT_2T~combout\(9)))))

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
	dataa => \ACT_2T~combout\(2),
	datab => \ACT_2T~combout\(9),
	cin0 => \Add8~2\,
	cin1 => \Add8~2COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~5_combout\,
	cout0 => \Add8~7\,
	cout1 => \Add8~7COUT1_64\);

-- Location: LC_X13_Y9_N3
\Add8~10\ : maxv_lcell
-- Equation(s):
-- \Add8~10_combout\ = \ACT_2T~combout\(3) $ (\ACT_2T~combout\(9) $ ((\Add8~7\)))
-- \Add8~12\ = CARRY((\ACT_2T~combout\(3) $ (!\ACT_2T~combout\(9))) # (!\Add8~7\))
-- \Add8~12COUT1_66\ = CARRY((\ACT_2T~combout\(3) $ (!\ACT_2T~combout\(9))) # (!\Add8~7COUT1_64\))

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
	dataa => \ACT_2T~combout\(3),
	datab => \ACT_2T~combout\(9),
	cin0 => \Add8~7\,
	cin1 => \Add8~7COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~10_combout\,
	cout0 => \Add8~12\,
	cout1 => \Add8~12COUT1_66\);

-- Location: LC_X13_Y9_N4
\Add8~15\ : maxv_lcell
-- Equation(s):
-- \Add8~15_combout\ = \ACT_2T~combout\(4) $ (\ACT_2T~combout\(9) $ ((!\Add8~12\)))
-- \Add8~17\ = CARRY((!\Add8~12COUT1_66\ & (\ACT_2T~combout\(4) $ (\ACT_2T~combout\(9)))))

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
	dataa => \ACT_2T~combout\(4),
	datab => \ACT_2T~combout\(9),
	cin0 => \Add8~12\,
	cin1 => \Add8~12COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~15_combout\,
	cout => \Add8~17\);

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_2T[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_2T(6),
	combout => \ACT_2T~combout\(6));

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_2T[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_2T(5),
	combout => \ACT_2T~combout\(5));

-- Location: LC_X13_Y9_N5
\Add8~25\ : maxv_lcell
-- Equation(s):
-- \Add8~25_combout\ = \ACT_2T~combout\(5) $ (\ACT_2T~combout\(9) $ ((\Add8~17\)))
-- \Add8~27\ = CARRY((\ACT_2T~combout\(5) $ (!\ACT_2T~combout\(9))) # (!\Add8~17\))
-- \Add8~27COUT1_68\ = CARRY((\ACT_2T~combout\(5) $ (!\ACT_2T~combout\(9))) # (!\Add8~17\))

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
	dataa => \ACT_2T~combout\(5),
	datab => \ACT_2T~combout\(9),
	cin => \Add8~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~25_combout\,
	cout0 => \Add8~27\,
	cout1 => \Add8~27COUT1_68\);

-- Location: LC_X13_Y9_N6
\Add8~30\ : maxv_lcell
-- Equation(s):
-- \Add8~30_combout\ = \ACT_2T~combout\(6) $ (\ACT_2T~combout\(9) $ ((!(!\Add8~17\ & \Add8~27\) # (\Add8~17\ & \Add8~27COUT1_68\))))
-- \Add8~32\ = CARRY((!\Add8~27\ & (\ACT_2T~combout\(6) $ (\ACT_2T~combout\(9)))))
-- \Add8~32COUT1_70\ = CARRY((!\Add8~27COUT1_68\ & (\ACT_2T~combout\(6) $ (\ACT_2T~combout\(9)))))

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
	dataa => \ACT_2T~combout\(6),
	datab => \ACT_2T~combout\(9),
	cin => \Add8~17\,
	cin0 => \Add8~27\,
	cin1 => \Add8~27COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~30_combout\,
	cout0 => \Add8~32\,
	cout1 => \Add8~32COUT1_70\);

-- Location: LC_X13_Y9_N7
\Add8~35\ : maxv_lcell
-- Equation(s):
-- \Add8~35_combout\ = \ACT_2T~combout\(7) $ (\ACT_2T~combout\(9) $ (((!\Add8~17\ & \Add8~32\) # (\Add8~17\ & \Add8~32COUT1_70\))))
-- \Add8~37\ = CARRY((\ACT_2T~combout\(7) $ (!\ACT_2T~combout\(9))) # (!\Add8~32\))
-- \Add8~37COUT1_72\ = CARRY((\ACT_2T~combout\(7) $ (!\ACT_2T~combout\(9))) # (!\Add8~32COUT1_70\))

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
	dataa => \ACT_2T~combout\(7),
	datab => \ACT_2T~combout\(9),
	cin => \Add8~17\,
	cin0 => \Add8~32\,
	cin1 => \Add8~32COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~35_combout\,
	cout0 => \Add8~37\,
	cout1 => \Add8~37COUT1_72\);

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_2T[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_2T(8),
	combout => \ACT_2T~combout\(8));

-- Location: LC_X13_Y9_N8
\Add8~40\ : maxv_lcell
-- Equation(s):
-- \Add8~40_combout\ = \ACT_2T~combout\(8) $ (\ACT_2T~combout\(9) $ ((!(!\Add8~17\ & \Add8~37\) # (\Add8~17\ & \Add8~37COUT1_72\))))
-- \Add8~42\ = CARRY((!\Add8~37\ & (\ACT_2T~combout\(8) $ (\ACT_2T~combout\(9)))))
-- \Add8~42COUT1_74\ = CARRY((!\Add8~37COUT1_72\ & (\ACT_2T~combout\(8) $ (\ACT_2T~combout\(9)))))

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
	dataa => \ACT_2T~combout\(8),
	datab => \ACT_2T~combout\(9),
	cin => \Add8~17\,
	cin0 => \Add8~37\,
	cin1 => \Add8~37COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~40_combout\,
	cout0 => \Add8~42\,
	cout1 => \Add8~42COUT1_74\);

-- Location: LC_X12_Y9_N5
\LessThan8~1\ : maxv_lcell
-- Equation(s):
-- \LessThan8~1_combout\ = (\Add8~35_combout\) # ((\Add8~40_combout\) # ((\Add8~30_combout\) # (\Add8~25_combout\)))

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
	dataa => \Add8~35_combout\,
	datab => \Add8~40_combout\,
	datac => \Add8~30_combout\,
	datad => \Add8~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan8~1_combout\);

-- Location: LC_X13_Y9_N9
\Add8~20\ : maxv_lcell
-- Equation(s):
-- \Add8~20_combout\ = ((((!\Add8~17\ & \Add8~42\) # (\Add8~17\ & \Add8~42COUT1_74\))))

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
	cin => \Add8~17\,
	cin0 => \Add8~42\,
	cin1 => \Add8~42COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~20_combout\);

-- Location: LC_X12_Y9_N2
\LessThan8~0\ : maxv_lcell
-- Equation(s):
-- \LessThan8~0_combout\ = (\Add8~10_combout\ & (\Add8~15_combout\ & (\Add8~5_combout\ & \Add8~0_combout\)))

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
	dataa => \Add8~10_combout\,
	datab => \Add8~15_combout\,
	datac => \Add8~5_combout\,
	datad => \Add8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan8~0_combout\);

-- Location: LC_X12_Y9_N6
\LessThan8~2\ : maxv_lcell
-- Equation(s):
-- \LessThan8~2_combout\ = (\LessThan8~1_combout\) # (((\Add8~20_combout\) # (\LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~1_combout\,
	datac => \Add8~20_combout\,
	datad => \LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan8~2_combout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_Y[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_Y(14),
	combout => \ACT_Y~combout\(14));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_Y[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_Y(14),
	combout => \FIN_Y~combout\(14));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_Y[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_Y(11),
	combout => \FIN_Y~combout\(11));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_Y[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_Y(11),
	combout => \ACT_Y~combout\(11));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_Y[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_Y(6),
	combout => \ACT_Y~combout\(6));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_Y[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_Y(6),
	combout => \FIN_Y~combout\(6));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_Y[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_Y(1),
	combout => \ACT_Y~combout\(1));

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_Y[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_Y(1),
	combout => \FIN_Y~combout\(1));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_Y[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_Y(0),
	combout => \ACT_Y~combout\(0));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_Y[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_Y(0),
	combout => \FIN_Y~combout\(0));

-- Location: LC_X3_Y5_N3
\LessThan7~72\ : maxv_lcell
-- Equation(s):
-- \LessThan7~72_cout0\ = CARRY((!\ACT_Y~combout\(0) & (\FIN_Y~combout\(0))))
-- \LessThan7~72COUT1_88\ = CARRY((!\ACT_Y~combout\(0) & (\FIN_Y~combout\(0))))

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
	dataa => \ACT_Y~combout\(0),
	datab => \FIN_Y~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~70\,
	cout0 => \LessThan7~72_cout0\,
	cout1 => \LessThan7~72COUT1_88\);

-- Location: LC_X3_Y5_N4
\LessThan7~67\ : maxv_lcell
-- Equation(s):
-- \LessThan7~67_cout\ = CARRY((\ACT_Y~combout\(1) & ((!\LessThan7~72COUT1_88\) # (!\FIN_Y~combout\(1)))) # (!\ACT_Y~combout\(1) & (!\FIN_Y~combout\(1) & !\LessThan7~72COUT1_88\)))

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
	dataa => \ACT_Y~combout\(1),
	datab => \FIN_Y~combout\(1),
	cin0 => \LessThan7~72_cout0\,
	cin1 => \LessThan7~72COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~65\,
	cout => \LessThan7~67_cout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_Y[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_Y(5),
	combout => \FIN_Y~combout\(5));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_Y[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_Y(5),
	combout => \ACT_Y~combout\(5));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_Y[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_Y(4),
	combout => \ACT_Y~combout\(4));

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_Y[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_Y(4),
	combout => \FIN_Y~combout\(4));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_Y[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_Y(3),
	combout => \ACT_Y~combout\(3));

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_Y[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_Y(3),
	combout => \FIN_Y~combout\(3));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_Y[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_Y(2),
	combout => \ACT_Y~combout\(2));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_Y[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_Y(2),
	combout => \FIN_Y~combout\(2));

-- Location: LC_X3_Y5_N5
\LessThan7~62\ : maxv_lcell
-- Equation(s):
-- \LessThan7~62_cout0\ = CARRY((\ACT_Y~combout\(2) & (\FIN_Y~combout\(2) & !\LessThan7~67_cout\)) # (!\ACT_Y~combout\(2) & ((\FIN_Y~combout\(2)) # (!\LessThan7~67_cout\))))
-- \LessThan7~62COUT1_90\ = CARRY((\ACT_Y~combout\(2) & (\FIN_Y~combout\(2) & !\LessThan7~67_cout\)) # (!\ACT_Y~combout\(2) & ((\FIN_Y~combout\(2)) # (!\LessThan7~67_cout\))))

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
	dataa => \ACT_Y~combout\(2),
	datab => \FIN_Y~combout\(2),
	cin => \LessThan7~67_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~60\,
	cout0 => \LessThan7~62_cout0\,
	cout1 => \LessThan7~62COUT1_90\);

-- Location: LC_X3_Y5_N6
\LessThan7~57\ : maxv_lcell
-- Equation(s):
-- \LessThan7~57_cout0\ = CARRY((\ACT_Y~combout\(3) & ((!\LessThan7~62_cout0\) # (!\FIN_Y~combout\(3)))) # (!\ACT_Y~combout\(3) & (!\FIN_Y~combout\(3) & !\LessThan7~62_cout0\)))
-- \LessThan7~57COUT1_92\ = CARRY((\ACT_Y~combout\(3) & ((!\LessThan7~62COUT1_90\) # (!\FIN_Y~combout\(3)))) # (!\ACT_Y~combout\(3) & (!\FIN_Y~combout\(3) & !\LessThan7~62COUT1_90\)))

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
	dataa => \ACT_Y~combout\(3),
	datab => \FIN_Y~combout\(3),
	cin => \LessThan7~67_cout\,
	cin0 => \LessThan7~62_cout0\,
	cin1 => \LessThan7~62COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~55\,
	cout0 => \LessThan7~57_cout0\,
	cout1 => \LessThan7~57COUT1_92\);

-- Location: LC_X3_Y5_N7
\LessThan7~52\ : maxv_lcell
-- Equation(s):
-- \LessThan7~52_cout0\ = CARRY((\ACT_Y~combout\(4) & (\FIN_Y~combout\(4) & !\LessThan7~57_cout0\)) # (!\ACT_Y~combout\(4) & ((\FIN_Y~combout\(4)) # (!\LessThan7~57_cout0\))))
-- \LessThan7~52COUT1_94\ = CARRY((\ACT_Y~combout\(4) & (\FIN_Y~combout\(4) & !\LessThan7~57COUT1_92\)) # (!\ACT_Y~combout\(4) & ((\FIN_Y~combout\(4)) # (!\LessThan7~57COUT1_92\))))

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
	dataa => \ACT_Y~combout\(4),
	datab => \FIN_Y~combout\(4),
	cin => \LessThan7~67_cout\,
	cin0 => \LessThan7~57_cout0\,
	cin1 => \LessThan7~57COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~50\,
	cout0 => \LessThan7~52_cout0\,
	cout1 => \LessThan7~52COUT1_94\);

-- Location: LC_X3_Y5_N8
\LessThan7~47\ : maxv_lcell
-- Equation(s):
-- \LessThan7~47_cout0\ = CARRY((\FIN_Y~combout\(5) & (\ACT_Y~combout\(5) & !\LessThan7~52_cout0\)) # (!\FIN_Y~combout\(5) & ((\ACT_Y~combout\(5)) # (!\LessThan7~52_cout0\))))
-- \LessThan7~47COUT1_96\ = CARRY((\FIN_Y~combout\(5) & (\ACT_Y~combout\(5) & !\LessThan7~52COUT1_94\)) # (!\FIN_Y~combout\(5) & ((\ACT_Y~combout\(5)) # (!\LessThan7~52COUT1_94\))))

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
	dataa => \FIN_Y~combout\(5),
	datab => \ACT_Y~combout\(5),
	cin => \LessThan7~67_cout\,
	cin0 => \LessThan7~52_cout0\,
	cin1 => \LessThan7~52COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~45\,
	cout0 => \LessThan7~47_cout0\,
	cout1 => \LessThan7~47COUT1_96\);

-- Location: LC_X3_Y5_N9
\LessThan7~42\ : maxv_lcell
-- Equation(s):
-- \LessThan7~42_cout\ = CARRY((\ACT_Y~combout\(6) & (\FIN_Y~combout\(6) & !\LessThan7~47COUT1_96\)) # (!\ACT_Y~combout\(6) & ((\FIN_Y~combout\(6)) # (!\LessThan7~47COUT1_96\))))

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
	dataa => \ACT_Y~combout\(6),
	datab => \FIN_Y~combout\(6),
	cin => \LessThan7~67_cout\,
	cin0 => \LessThan7~47_cout0\,
	cin1 => \LessThan7~47COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~40\,
	cout => \LessThan7~42_cout\);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_Y[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_Y(10),
	combout => \FIN_Y~combout\(10));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_Y[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_Y(10),
	combout => \ACT_Y~combout\(10));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_Y[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_Y(9),
	combout => \ACT_Y~combout\(9));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_Y[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_Y(9),
	combout => \FIN_Y~combout\(9));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_Y[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_Y(8),
	combout => \ACT_Y~combout\(8));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_Y[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_Y(8),
	combout => \FIN_Y~combout\(8));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_Y[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_Y(7),
	combout => \ACT_Y~combout\(7));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_Y[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_Y(7),
	combout => \FIN_Y~combout\(7));

-- Location: LC_X4_Y5_N0
\LessThan7~37\ : maxv_lcell
-- Equation(s):
-- \LessThan7~37_cout0\ = CARRY((\ACT_Y~combout\(7) & ((!\LessThan7~42_cout\) # (!\FIN_Y~combout\(7)))) # (!\ACT_Y~combout\(7) & (!\FIN_Y~combout\(7) & !\LessThan7~42_cout\)))
-- \LessThan7~37COUT1_98\ = CARRY((\ACT_Y~combout\(7) & ((!\LessThan7~42_cout\) # (!\FIN_Y~combout\(7)))) # (!\ACT_Y~combout\(7) & (!\FIN_Y~combout\(7) & !\LessThan7~42_cout\)))

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
	dataa => \ACT_Y~combout\(7),
	datab => \FIN_Y~combout\(7),
	cin => \LessThan7~42_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~35\,
	cout0 => \LessThan7~37_cout0\,
	cout1 => \LessThan7~37COUT1_98\);

-- Location: LC_X4_Y5_N1
\LessThan7~32\ : maxv_lcell
-- Equation(s):
-- \LessThan7~32_cout0\ = CARRY((\ACT_Y~combout\(8) & (\FIN_Y~combout\(8) & !\LessThan7~37_cout0\)) # (!\ACT_Y~combout\(8) & ((\FIN_Y~combout\(8)) # (!\LessThan7~37_cout0\))))
-- \LessThan7~32COUT1_100\ = CARRY((\ACT_Y~combout\(8) & (\FIN_Y~combout\(8) & !\LessThan7~37COUT1_98\)) # (!\ACT_Y~combout\(8) & ((\FIN_Y~combout\(8)) # (!\LessThan7~37COUT1_98\))))

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
	dataa => \ACT_Y~combout\(8),
	datab => \FIN_Y~combout\(8),
	cin => \LessThan7~42_cout\,
	cin0 => \LessThan7~37_cout0\,
	cin1 => \LessThan7~37COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~30\,
	cout0 => \LessThan7~32_cout0\,
	cout1 => \LessThan7~32COUT1_100\);

-- Location: LC_X4_Y5_N2
\LessThan7~27\ : maxv_lcell
-- Equation(s):
-- \LessThan7~27_cout0\ = CARRY((\ACT_Y~combout\(9) & ((!\LessThan7~32_cout0\) # (!\FIN_Y~combout\(9)))) # (!\ACT_Y~combout\(9) & (!\FIN_Y~combout\(9) & !\LessThan7~32_cout0\)))
-- \LessThan7~27COUT1_102\ = CARRY((\ACT_Y~combout\(9) & ((!\LessThan7~32COUT1_100\) # (!\FIN_Y~combout\(9)))) # (!\ACT_Y~combout\(9) & (!\FIN_Y~combout\(9) & !\LessThan7~32COUT1_100\)))

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
	dataa => \ACT_Y~combout\(9),
	datab => \FIN_Y~combout\(9),
	cin => \LessThan7~42_cout\,
	cin0 => \LessThan7~32_cout0\,
	cin1 => \LessThan7~32COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~25\,
	cout0 => \LessThan7~27_cout0\,
	cout1 => \LessThan7~27COUT1_102\);

-- Location: LC_X4_Y5_N3
\LessThan7~22\ : maxv_lcell
-- Equation(s):
-- \LessThan7~22_cout0\ = CARRY((\FIN_Y~combout\(10) & ((!\LessThan7~27_cout0\) # (!\ACT_Y~combout\(10)))) # (!\FIN_Y~combout\(10) & (!\ACT_Y~combout\(10) & !\LessThan7~27_cout0\)))
-- \LessThan7~22COUT1_104\ = CARRY((\FIN_Y~combout\(10) & ((!\LessThan7~27COUT1_102\) # (!\ACT_Y~combout\(10)))) # (!\FIN_Y~combout\(10) & (!\ACT_Y~combout\(10) & !\LessThan7~27COUT1_102\)))

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
	dataa => \FIN_Y~combout\(10),
	datab => \ACT_Y~combout\(10),
	cin => \LessThan7~42_cout\,
	cin0 => \LessThan7~27_cout0\,
	cin1 => \LessThan7~27COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~20\,
	cout0 => \LessThan7~22_cout0\,
	cout1 => \LessThan7~22COUT1_104\);

-- Location: LC_X4_Y5_N4
\LessThan7~17\ : maxv_lcell
-- Equation(s):
-- \LessThan7~17_cout\ = CARRY((\FIN_Y~combout\(11) & (\ACT_Y~combout\(11) & !\LessThan7~22COUT1_104\)) # (!\FIN_Y~combout\(11) & ((\ACT_Y~combout\(11)) # (!\LessThan7~22COUT1_104\))))

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
	dataa => \FIN_Y~combout\(11),
	datab => \ACT_Y~combout\(11),
	cin => \LessThan7~42_cout\,
	cin0 => \LessThan7~22_cout0\,
	cin1 => \LessThan7~22COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~15\,
	cout => \LessThan7~17_cout\);

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_Y[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_Y(13),
	combout => \ACT_Y~combout\(13));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_Y[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_Y(13),
	combout => \FIN_Y~combout\(13));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_Y[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_Y(12),
	combout => \ACT_Y~combout\(12));

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_Y[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_Y(12),
	combout => \FIN_Y~combout\(12));

-- Location: LC_X4_Y5_N5
\LessThan7~12\ : maxv_lcell
-- Equation(s):
-- \LessThan7~12_cout0\ = CARRY((\ACT_Y~combout\(12) & (\FIN_Y~combout\(12) & !\LessThan7~17_cout\)) # (!\ACT_Y~combout\(12) & ((\FIN_Y~combout\(12)) # (!\LessThan7~17_cout\))))
-- \LessThan7~12COUT1_106\ = CARRY((\ACT_Y~combout\(12) & (\FIN_Y~combout\(12) & !\LessThan7~17_cout\)) # (!\ACT_Y~combout\(12) & ((\FIN_Y~combout\(12)) # (!\LessThan7~17_cout\))))

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
	dataa => \ACT_Y~combout\(12),
	datab => \FIN_Y~combout\(12),
	cin => \LessThan7~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~10\,
	cout0 => \LessThan7~12_cout0\,
	cout1 => \LessThan7~12COUT1_106\);

-- Location: LC_X4_Y5_N6
\LessThan7~7\ : maxv_lcell
-- Equation(s):
-- \LessThan7~7_cout0\ = CARRY((\ACT_Y~combout\(13) & ((!\LessThan7~12_cout0\) # (!\FIN_Y~combout\(13)))) # (!\ACT_Y~combout\(13) & (!\FIN_Y~combout\(13) & !\LessThan7~12_cout0\)))
-- \LessThan7~7COUT1_108\ = CARRY((\ACT_Y~combout\(13) & ((!\LessThan7~12COUT1_106\) # (!\FIN_Y~combout\(13)))) # (!\ACT_Y~combout\(13) & (!\FIN_Y~combout\(13) & !\LessThan7~12COUT1_106\)))

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
	dataa => \ACT_Y~combout\(13),
	datab => \FIN_Y~combout\(13),
	cin => \LessThan7~17_cout\,
	cin0 => \LessThan7~12_cout0\,
	cin1 => \LessThan7~12COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~5\,
	cout0 => \LessThan7~7_cout0\,
	cout1 => \LessThan7~7COUT1_108\);

-- Location: LC_X4_Y5_N7
\LessThan7~0\ : maxv_lcell
-- Equation(s):
-- \LessThan7~0_combout\ = (\ACT_Y~combout\(14) & (((!(!\LessThan7~17_cout\ & \LessThan7~7_cout0\) # (\LessThan7~17_cout\ & \LessThan7~7COUT1_108\) & \FIN_Y~combout\(14))))) # (!\ACT_Y~combout\(14) & (((\FIN_Y~combout\(14)) # (!(!\LessThan7~17_cout\ & 
-- \LessThan7~7_cout0\) # (\LessThan7~17_cout\ & \LessThan7~7COUT1_108\)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5f05",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACT_Y~combout\(14),
	datad => \FIN_Y~combout\(14),
	cin => \LessThan7~17_cout\,
	cin0 => \LessThan7~7_cout0\,
	cin1 => \LessThan7~7COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~0_combout\);

-- Location: LC_X3_Y4_N2
\Add0~75\ : maxv_lcell
-- Equation(s):
-- \Add0~75_combout\ = \ACT_Y~combout\(0) $ ((\FIN_Y~combout\(0)))
-- \Add0~77\ = CARRY(((\FIN_Y~combout\(0))) # (!\ACT_Y~combout\(0)))
-- \Add0~77COUT1_94\ = CARRY(((\FIN_Y~combout\(0))) # (!\ACT_Y~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66dd",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACT_Y~combout\(0),
	datab => \FIN_Y~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_94\);

-- Location: LC_X3_Y4_N3
\Add0~70\ : maxv_lcell
-- Equation(s):
-- \Add0~70_combout\ = \ACT_Y~combout\(1) $ (\FIN_Y~combout\(1) $ ((!\Add0~77\)))
-- \Add0~72\ = CARRY((\ACT_Y~combout\(1) & ((!\Add0~77\) # (!\FIN_Y~combout\(1)))) # (!\ACT_Y~combout\(1) & (!\FIN_Y~combout\(1) & !\Add0~77\)))
-- \Add0~72COUT1_96\ = CARRY((\ACT_Y~combout\(1) & ((!\Add0~77COUT1_94\) # (!\FIN_Y~combout\(1)))) # (!\ACT_Y~combout\(1) & (!\FIN_Y~combout\(1) & !\Add0~77COUT1_94\)))

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
	dataa => \ACT_Y~combout\(1),
	datab => \FIN_Y~combout\(1),
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_96\);

-- Location: LC_X3_Y4_N4
\Add0~65\ : maxv_lcell
-- Equation(s):
-- \Add0~65_combout\ = \ACT_Y~combout\(2) $ (\FIN_Y~combout\(2) $ ((\Add0~72\)))
-- \Add0~67\ = CARRY((\ACT_Y~combout\(2) & (\FIN_Y~combout\(2) & !\Add0~72COUT1_96\)) # (!\ACT_Y~combout\(2) & ((\FIN_Y~combout\(2)) # (!\Add0~72COUT1_96\))))

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
	dataa => \ACT_Y~combout\(2),
	datab => \FIN_Y~combout\(2),
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout => \Add0~67\);

-- Location: LC_X3_Y4_N5
\Add0~45\ : maxv_lcell
-- Equation(s):
-- \Add0~45_combout\ = \FIN_Y~combout\(3) $ (\ACT_Y~combout\(3) $ ((!\Add0~67\)))
-- \Add0~47\ = CARRY((\FIN_Y~combout\(3) & (\ACT_Y~combout\(3) & !\Add0~67\)) # (!\FIN_Y~combout\(3) & ((\ACT_Y~combout\(3)) # (!\Add0~67\))))
-- \Add0~47COUT1_98\ = CARRY((\FIN_Y~combout\(3) & (\ACT_Y~combout\(3) & !\Add0~67\)) # (!\FIN_Y~combout\(3) & ((\ACT_Y~combout\(3)) # (!\Add0~67\))))

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
	dataa => \FIN_Y~combout\(3),
	datab => \ACT_Y~combout\(3),
	cin => \Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_98\);

-- Location: LC_X3_Y4_N6
\Add0~50\ : maxv_lcell
-- Equation(s):
-- \Add0~50_combout\ = \ACT_Y~combout\(4) $ (\FIN_Y~combout\(4) $ (((!\Add0~67\ & \Add0~47\) # (\Add0~67\ & \Add0~47COUT1_98\))))
-- \Add0~52\ = CARRY((\ACT_Y~combout\(4) & (\FIN_Y~combout\(4) & !\Add0~47\)) # (!\ACT_Y~combout\(4) & ((\FIN_Y~combout\(4)) # (!\Add0~47\))))
-- \Add0~52COUT1_100\ = CARRY((\ACT_Y~combout\(4) & (\FIN_Y~combout\(4) & !\Add0~47COUT1_98\)) # (!\ACT_Y~combout\(4) & ((\FIN_Y~combout\(4)) # (!\Add0~47COUT1_98\))))

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
	dataa => \ACT_Y~combout\(4),
	datab => \FIN_Y~combout\(4),
	cin => \Add0~67\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_100\);

-- Location: LC_X3_Y4_N7
\Add0~55\ : maxv_lcell
-- Equation(s):
-- \Add0~55_combout\ = \FIN_Y~combout\(5) $ (\ACT_Y~combout\(5) $ ((!(!\Add0~67\ & \Add0~52\) # (\Add0~67\ & \Add0~52COUT1_100\))))
-- \Add0~57\ = CARRY((\FIN_Y~combout\(5) & (\ACT_Y~combout\(5) & !\Add0~52\)) # (!\FIN_Y~combout\(5) & ((\ACT_Y~combout\(5)) # (!\Add0~52\))))
-- \Add0~57COUT1_102\ = CARRY((\FIN_Y~combout\(5) & (\ACT_Y~combout\(5) & !\Add0~52COUT1_100\)) # (!\FIN_Y~combout\(5) & ((\ACT_Y~combout\(5)) # (!\Add0~52COUT1_100\))))

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
	dataa => \FIN_Y~combout\(5),
	datab => \ACT_Y~combout\(5),
	cin => \Add0~67\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout0 => \Add0~57\,
	cout1 => \Add0~57COUT1_102\);

-- Location: LC_X3_Y4_N8
\Add0~60\ : maxv_lcell
-- Equation(s):
-- \Add0~60_combout\ = \ACT_Y~combout\(6) $ (\FIN_Y~combout\(6) $ (((!\Add0~67\ & \Add0~57\) # (\Add0~67\ & \Add0~57COUT1_102\))))
-- \Add0~62\ = CARRY((\ACT_Y~combout\(6) & (\FIN_Y~combout\(6) & !\Add0~57\)) # (!\ACT_Y~combout\(6) & ((\FIN_Y~combout\(6)) # (!\Add0~57\))))
-- \Add0~62COUT1_104\ = CARRY((\ACT_Y~combout\(6) & (\FIN_Y~combout\(6) & !\Add0~57COUT1_102\)) # (!\ACT_Y~combout\(6) & ((\FIN_Y~combout\(6)) # (!\Add0~57COUT1_102\))))

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
	dataa => \ACT_Y~combout\(6),
	datab => \FIN_Y~combout\(6),
	cin => \Add0~67\,
	cin0 => \Add0~57\,
	cin1 => \Add0~57COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_104\);

-- Location: LC_X3_Y4_N9
\Add0~30\ : maxv_lcell
-- Equation(s):
-- \Add0~30_combout\ = \ACT_Y~combout\(7) $ (\FIN_Y~combout\(7) $ ((!(!\Add0~67\ & \Add0~62\) # (\Add0~67\ & \Add0~62COUT1_104\))))
-- \Add0~32\ = CARRY((\ACT_Y~combout\(7) & ((!\Add0~62COUT1_104\) # (!\FIN_Y~combout\(7)))) # (!\ACT_Y~combout\(7) & (!\FIN_Y~combout\(7) & !\Add0~62COUT1_104\)))

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
	dataa => \ACT_Y~combout\(7),
	datab => \FIN_Y~combout\(7),
	cin => \Add0~67\,
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout => \Add0~32\);

-- Location: LC_X4_Y4_N0
\Add0~35\ : maxv_lcell
-- Equation(s):
-- \Add0~35_combout\ = \ACT_Y~combout\(8) $ (\FIN_Y~combout\(8) $ ((\Add0~32\)))
-- \Add0~37\ = CARRY((\ACT_Y~combout\(8) & (\FIN_Y~combout\(8) & !\Add0~32\)) # (!\ACT_Y~combout\(8) & ((\FIN_Y~combout\(8)) # (!\Add0~32\))))
-- \Add0~37COUT1_106\ = CARRY((\ACT_Y~combout\(8) & (\FIN_Y~combout\(8) & !\Add0~32\)) # (!\ACT_Y~combout\(8) & ((\FIN_Y~combout\(8)) # (!\Add0~32\))))

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
	dataa => \ACT_Y~combout\(8),
	datab => \FIN_Y~combout\(8),
	cin => \Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_106\);

-- Location: LC_X4_Y4_N1
\Add0~40\ : maxv_lcell
-- Equation(s):
-- \Add0~40_combout\ = \ACT_Y~combout\(9) $ (\FIN_Y~combout\(9) $ ((!(!\Add0~32\ & \Add0~37\) # (\Add0~32\ & \Add0~37COUT1_106\))))
-- \Add0~42\ = CARRY((\ACT_Y~combout\(9) & ((!\Add0~37\) # (!\FIN_Y~combout\(9)))) # (!\ACT_Y~combout\(9) & (!\FIN_Y~combout\(9) & !\Add0~37\)))
-- \Add0~42COUT1_108\ = CARRY((\ACT_Y~combout\(9) & ((!\Add0~37COUT1_106\) # (!\FIN_Y~combout\(9)))) # (!\ACT_Y~combout\(9) & (!\FIN_Y~combout\(9) & !\Add0~37COUT1_106\)))

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
	dataa => \ACT_Y~combout\(9),
	datab => \FIN_Y~combout\(9),
	cin => \Add0~32\,
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_108\);

-- Location: LC_X4_Y4_N2
\Add0~10\ : maxv_lcell
-- Equation(s):
-- \Add0~10_combout\ = \ACT_Y~combout\(10) $ (\FIN_Y~combout\(10) $ (((!\Add0~32\ & \Add0~42\) # (\Add0~32\ & \Add0~42COUT1_108\))))
-- \Add0~12\ = CARRY((\ACT_Y~combout\(10) & (\FIN_Y~combout\(10) & !\Add0~42\)) # (!\ACT_Y~combout\(10) & ((\FIN_Y~combout\(10)) # (!\Add0~42\))))
-- \Add0~12COUT1_110\ = CARRY((\ACT_Y~combout\(10) & (\FIN_Y~combout\(10) & !\Add0~42COUT1_108\)) # (!\ACT_Y~combout\(10) & ((\FIN_Y~combout\(10)) # (!\Add0~42COUT1_108\))))

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
	dataa => \ACT_Y~combout\(10),
	datab => \FIN_Y~combout\(10),
	cin => \Add0~32\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_110\);

-- Location: LC_X4_Y4_N3
\Add0~15\ : maxv_lcell
-- Equation(s):
-- \Add0~15_combout\ = \ACT_Y~combout\(11) $ (\FIN_Y~combout\(11) $ ((!(!\Add0~32\ & \Add0~12\) # (\Add0~32\ & \Add0~12COUT1_110\))))
-- \Add0~17\ = CARRY((\ACT_Y~combout\(11) & ((!\Add0~12\) # (!\FIN_Y~combout\(11)))) # (!\ACT_Y~combout\(11) & (!\FIN_Y~combout\(11) & !\Add0~12\)))
-- \Add0~17COUT1_112\ = CARRY((\ACT_Y~combout\(11) & ((!\Add0~12COUT1_110\) # (!\FIN_Y~combout\(11)))) # (!\ACT_Y~combout\(11) & (!\FIN_Y~combout\(11) & !\Add0~12COUT1_110\)))

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
	dataa => \ACT_Y~combout\(11),
	datab => \FIN_Y~combout\(11),
	cin => \Add0~32\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_112\);

-- Location: LC_X4_Y4_N4
\Add0~20\ : maxv_lcell
-- Equation(s):
-- \Add0~20_combout\ = \ACT_Y~combout\(12) $ (\FIN_Y~combout\(12) $ (((!\Add0~32\ & \Add0~17\) # (\Add0~32\ & \Add0~17COUT1_112\))))
-- \Add0~22\ = CARRY((\ACT_Y~combout\(12) & (\FIN_Y~combout\(12) & !\Add0~17COUT1_112\)) # (!\ACT_Y~combout\(12) & ((\FIN_Y~combout\(12)) # (!\Add0~17COUT1_112\))))

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
	dataa => \ACT_Y~combout\(12),
	datab => \FIN_Y~combout\(12),
	cin => \Add0~32\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout => \Add0~22\);

-- Location: LC_X4_Y4_N5
\Add0~25\ : maxv_lcell
-- Equation(s):
-- \Add0~25_combout\ = \FIN_Y~combout\(13) $ (\ACT_Y~combout\(13) $ ((!\Add0~22\)))
-- \Add0~27\ = CARRY((\FIN_Y~combout\(13) & (\ACT_Y~combout\(13) & !\Add0~22\)) # (!\FIN_Y~combout\(13) & ((\ACT_Y~combout\(13)) # (!\Add0~22\))))
-- \Add0~27COUT1_114\ = CARRY((\FIN_Y~combout\(13) & (\ACT_Y~combout\(13) & !\Add0~22\)) # (!\FIN_Y~combout\(13) & ((\ACT_Y~combout\(13)) # (!\Add0~22\))))

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
	dataa => \FIN_Y~combout\(13),
	datab => \ACT_Y~combout\(13),
	cin => \Add0~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_114\);

-- Location: LC_X4_Y4_N6
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = \FIN_Y~combout\(14) $ (\ACT_Y~combout\(14) $ (((!\Add0~22\ & \Add0~27\) # (\Add0~22\ & \Add0~27COUT1_114\))))
-- \Add0~2\ = CARRY((\FIN_Y~combout\(14) & ((!\Add0~27\) # (!\ACT_Y~combout\(14)))) # (!\FIN_Y~combout\(14) & (!\ACT_Y~combout\(14) & !\Add0~27\)))
-- \Add0~2COUT1_116\ = CARRY((\FIN_Y~combout\(14) & ((!\Add0~27COUT1_114\) # (!\ACT_Y~combout\(14)))) # (!\FIN_Y~combout\(14) & (!\ACT_Y~combout\(14) & !\Add0~27COUT1_114\)))

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
	dataa => \FIN_Y~combout\(14),
	datab => \ACT_Y~combout\(14),
	cin => \Add0~22\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_116\);

-- Location: LC_X4_Y4_N7
\Add0~5\ : maxv_lcell
-- Equation(s):
-- \Add0~5_combout\ = ((((!\Add0~22\ & \Add0~2\) # (\Add0~22\ & \Add0~2COUT1_116\))))

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
	cin => \Add0~22\,
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\);

-- Location: LC_X3_Y4_N1
\process_0~3\ : maxv_lcell
-- Equation(s):
-- \process_0~3_combout\ = (\Add0~75_combout\ $ (((\Add0~5_combout\))))

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
	datab => \Add0~75_combout\,
	datad => \Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~3_combout\);

-- Location: LC_X5_Y4_N2
\Add1~77\ : maxv_lcell
-- Equation(s):
-- \Add1~77_cout0\ = CARRY((!\process_0~3_combout\ & (!\Add0~5_combout\)))
-- \Add1~77COUT1_94\ = CARRY((!\process_0~3_combout\ & (!\Add0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff11",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datab => \Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~75\,
	cout0 => \Add1~77_cout0\,
	cout1 => \Add1~77COUT1_94\);

-- Location: LC_X5_Y4_N3
\Add1~72\ : maxv_lcell
-- Equation(s):
-- \Add1~72_cout0\ = CARRY((\Add0~70_combout\ $ (\Add0~5_combout\)) # (!\Add1~77_cout0\))
-- \Add1~72COUT1_96\ = CARRY((\Add0~70_combout\ $ (\Add0~5_combout\)) # (!\Add1~77COUT1_94\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff6f",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~70_combout\,
	datab => \Add0~5_combout\,
	cin0 => \Add1~77_cout0\,
	cin1 => \Add1~77COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~70\,
	cout0 => \Add1~72_cout0\,
	cout1 => \Add1~72COUT1_96\);

-- Location: LC_X5_Y4_N4
\Add1~67\ : maxv_lcell
-- Equation(s):
-- \Add1~67_cout\ = CARRY((!\Add1~72COUT1_96\ & (\Add0~65_combout\ $ (!\Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff09",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~65_combout\,
	datab => \Add0~5_combout\,
	cin0 => \Add1~72_cout0\,
	cin1 => \Add1~72COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~65\,
	cout => \Add1~67_cout\);

-- Location: LC_X5_Y4_N5
\Add1~45\ : maxv_lcell
-- Equation(s):
-- \Add1~45_combout\ = \Add0~45_combout\ $ (\Add0~5_combout\ $ ((!\Add1~67_cout\)))
-- \Add1~47\ = CARRY((\Add0~45_combout\ $ (\Add0~5_combout\)) # (!\Add1~67_cout\))
-- \Add1~47COUT1_98\ = CARRY((\Add0~45_combout\ $ (\Add0~5_combout\)) # (!\Add1~67_cout\))

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
	dataa => \Add0~45_combout\,
	datab => \Add0~5_combout\,
	cin => \Add1~67_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~45_combout\,
	cout0 => \Add1~47\,
	cout1 => \Add1~47COUT1_98\);

-- Location: LC_X5_Y4_N6
\Add1~50\ : maxv_lcell
-- Equation(s):
-- \Add1~50_combout\ = \Add0~50_combout\ $ (\Add0~5_combout\ $ (((!\Add1~67_cout\ & \Add1~47\) # (\Add1~67_cout\ & \Add1~47COUT1_98\))))
-- \Add1~52\ = CARRY((!\Add1~47\ & (\Add0~50_combout\ $ (!\Add0~5_combout\))))
-- \Add1~52COUT1_100\ = CARRY((!\Add1~47COUT1_98\ & (\Add0~50_combout\ $ (!\Add0~5_combout\))))

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
	dataa => \Add0~50_combout\,
	datab => \Add0~5_combout\,
	cin => \Add1~67_cout\,
	cin0 => \Add1~47\,
	cin1 => \Add1~47COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~50_combout\,
	cout0 => \Add1~52\,
	cout1 => \Add1~52COUT1_100\);

-- Location: LC_X5_Y4_N7
\Add1~55\ : maxv_lcell
-- Equation(s):
-- \Add1~55_combout\ = \Add0~55_combout\ $ (\Add0~5_combout\ $ ((!(!\Add1~67_cout\ & \Add1~52\) # (\Add1~67_cout\ & \Add1~52COUT1_100\))))
-- \Add1~57\ = CARRY((\Add0~55_combout\ $ (\Add0~5_combout\)) # (!\Add1~52\))
-- \Add1~57COUT1_102\ = CARRY((\Add0~55_combout\ $ (\Add0~5_combout\)) # (!\Add1~52COUT1_100\))

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
	dataa => \Add0~55_combout\,
	datab => \Add0~5_combout\,
	cin => \Add1~67_cout\,
	cin0 => \Add1~52\,
	cin1 => \Add1~52COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~55_combout\,
	cout0 => \Add1~57\,
	cout1 => \Add1~57COUT1_102\);

-- Location: LC_X5_Y4_N8
\Add1~60\ : maxv_lcell
-- Equation(s):
-- \Add1~60_combout\ = \Add0~60_combout\ $ (\Add0~5_combout\ $ (((!\Add1~67_cout\ & \Add1~57\) # (\Add1~67_cout\ & \Add1~57COUT1_102\))))
-- \Add1~62\ = CARRY((!\Add1~57\ & (\Add0~60_combout\ $ (!\Add0~5_combout\))))
-- \Add1~62COUT1_104\ = CARRY((!\Add1~57COUT1_102\ & (\Add0~60_combout\ $ (!\Add0~5_combout\))))

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
	dataa => \Add0~60_combout\,
	datab => \Add0~5_combout\,
	cin => \Add1~67_cout\,
	cin0 => \Add1~57\,
	cin1 => \Add1~57COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~60_combout\,
	cout0 => \Add1~62\,
	cout1 => \Add1~62COUT1_104\);

-- Location: LC_X5_Y4_N9
\Add1~30\ : maxv_lcell
-- Equation(s):
-- \Add1~30_combout\ = \Add0~30_combout\ $ (\Add0~5_combout\ $ ((!(!\Add1~67_cout\ & \Add1~62\) # (\Add1~67_cout\ & \Add1~62COUT1_104\))))
-- \Add1~32\ = CARRY((\Add0~30_combout\ $ (\Add0~5_combout\)) # (!\Add1~62COUT1_104\))

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
	dataa => \Add0~30_combout\,
	datab => \Add0~5_combout\,
	cin => \Add1~67_cout\,
	cin0 => \Add1~62\,
	cin1 => \Add1~62COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~30_combout\,
	cout => \Add1~32\);

-- Location: LC_X6_Y4_N0
\Add1~35\ : maxv_lcell
-- Equation(s):
-- \Add1~35_combout\ = \Add0~5_combout\ $ (\Add0~35_combout\ $ ((\Add1~32\)))
-- \Add1~37\ = CARRY((!\Add1~32\ & (\Add0~5_combout\ $ (!\Add0~35_combout\))))
-- \Add1~37COUT1_106\ = CARRY((!\Add1~32\ & (\Add0~5_combout\ $ (!\Add0~35_combout\))))

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
	dataa => \Add0~5_combout\,
	datab => \Add0~35_combout\,
	cin => \Add1~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~35_combout\,
	cout0 => \Add1~37\,
	cout1 => \Add1~37COUT1_106\);

-- Location: LC_X6_Y4_N1
\Add1~40\ : maxv_lcell
-- Equation(s):
-- \Add1~40_combout\ = \Add0~5_combout\ $ (\Add0~40_combout\ $ ((!(!\Add1~32\ & \Add1~37\) # (\Add1~32\ & \Add1~37COUT1_106\))))
-- \Add1~42\ = CARRY((\Add0~5_combout\ $ (\Add0~40_combout\)) # (!\Add1~37\))
-- \Add1~42COUT1_108\ = CARRY((\Add0~5_combout\ $ (\Add0~40_combout\)) # (!\Add1~37COUT1_106\))

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
	dataa => \Add0~5_combout\,
	datab => \Add0~40_combout\,
	cin => \Add1~32\,
	cin0 => \Add1~37\,
	cin1 => \Add1~37COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~40_combout\,
	cout0 => \Add1~42\,
	cout1 => \Add1~42COUT1_108\);

-- Location: LC_X6_Y4_N2
\Add1~10\ : maxv_lcell
-- Equation(s):
-- \Add1~10_combout\ = \Add0~5_combout\ $ (\Add0~10_combout\ $ (((!\Add1~32\ & \Add1~42\) # (\Add1~32\ & \Add1~42COUT1_108\))))
-- \Add1~12\ = CARRY((!\Add1~42\ & (\Add0~5_combout\ $ (!\Add0~10_combout\))))
-- \Add1~12COUT1_110\ = CARRY((!\Add1~42COUT1_108\ & (\Add0~5_combout\ $ (!\Add0~10_combout\))))

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
	dataa => \Add0~5_combout\,
	datab => \Add0~10_combout\,
	cin => \Add1~32\,
	cin0 => \Add1~42\,
	cin1 => \Add1~42COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~10_combout\,
	cout0 => \Add1~12\,
	cout1 => \Add1~12COUT1_110\);

-- Location: LC_X6_Y4_N3
\Add1~15\ : maxv_lcell
-- Equation(s):
-- \Add1~15_combout\ = \Add0~5_combout\ $ (\Add0~15_combout\ $ ((!(!\Add1~32\ & \Add1~12\) # (\Add1~32\ & \Add1~12COUT1_110\))))
-- \Add1~17\ = CARRY((\Add0~5_combout\ $ (\Add0~15_combout\)) # (!\Add1~12\))
-- \Add1~17COUT1_112\ = CARRY((\Add0~5_combout\ $ (\Add0~15_combout\)) # (!\Add1~12COUT1_110\))

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
	dataa => \Add0~5_combout\,
	datab => \Add0~15_combout\,
	cin => \Add1~32\,
	cin0 => \Add1~12\,
	cin1 => \Add1~12COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~15_combout\,
	cout0 => \Add1~17\,
	cout1 => \Add1~17COUT1_112\);

-- Location: LC_X6_Y4_N4
\Add1~20\ : maxv_lcell
-- Equation(s):
-- \Add1~20_combout\ = \Add0~5_combout\ $ (\Add0~20_combout\ $ (((!\Add1~32\ & \Add1~17\) # (\Add1~32\ & \Add1~17COUT1_112\))))
-- \Add1~22\ = CARRY((!\Add1~17COUT1_112\ & (\Add0~5_combout\ $ (!\Add0~20_combout\))))

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
	dataa => \Add0~5_combout\,
	datab => \Add0~20_combout\,
	cin => \Add1~32\,
	cin0 => \Add1~17\,
	cin1 => \Add1~17COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~20_combout\,
	cout => \Add1~22\);

-- Location: LC_X6_Y4_N5
\Add1~25\ : maxv_lcell
-- Equation(s):
-- \Add1~25_combout\ = \Add0~5_combout\ $ (\Add0~25_combout\ $ ((!\Add1~22\)))
-- \Add1~27\ = CARRY((\Add0~5_combout\ $ (\Add0~25_combout\)) # (!\Add1~22\))
-- \Add1~27COUT1_114\ = CARRY((\Add0~5_combout\ $ (\Add0~25_combout\)) # (!\Add1~22\))

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
	dataa => \Add0~5_combout\,
	datab => \Add0~25_combout\,
	cin => \Add1~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~25_combout\,
	cout0 => \Add1~27\,
	cout1 => \Add1~27COUT1_114\);

-- Location: LC_X6_Y4_N6
\Add1~0\ : maxv_lcell
-- Equation(s):
-- \Add1~0_combout\ = \Add0~5_combout\ $ (\Add0~0_combout\ $ (((!\Add1~22\ & \Add1~27\) # (\Add1~22\ & \Add1~27COUT1_114\))))
-- \Add1~2\ = CARRY((!\Add1~27\ & (\Add0~5_combout\ $ (!\Add0~0_combout\))))
-- \Add1~2COUT1_116\ = CARRY((!\Add1~27COUT1_114\ & (\Add0~5_combout\ $ (!\Add0~0_combout\))))

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
	dataa => \Add0~5_combout\,
	datab => \Add0~0_combout\,
	cin => \Add1~22\,
	cin0 => \Add1~27\,
	cin1 => \Add1~27COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~0_combout\,
	cout0 => \Add1~2\,
	cout1 => \Add1~2COUT1_116\);

-- Location: LC_X6_Y4_N7
\Add1~5\ : maxv_lcell
-- Equation(s):
-- \Add1~5_combout\ = ((((!\Add1~22\ & \Add1~2\) # (\Add1~22\ & \Add1~2COUT1_116\))))

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
	cin => \Add1~22\,
	cin0 => \Add1~2\,
	cin1 => \Add1~2COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~5_combout\);

-- Location: LC_X5_Y4_N0
\LessThan2~1\ : maxv_lcell
-- Equation(s):
-- \LessThan2~1_combout\ = (((!\Add1~50_combout\ & !\Add1~45_combout\)) # (!\Add1~60_combout\)) # (!\Add1~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "37ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~50_combout\,
	datab => \Add1~55_combout\,
	datac => \Add1~45_combout\,
	datad => \Add1~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~1_combout\);

-- Location: LC_X5_Y4_N1
\LessThan2~2\ : maxv_lcell
-- Equation(s):
-- \LessThan2~2_combout\ = (\Add1~40_combout\ & (!\LessThan2~1_combout\ & (\Add1~35_combout\ & \Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~40_combout\,
	datab => \LessThan2~1_combout\,
	datac => \Add1~35_combout\,
	datad => \Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~2_combout\);

-- Location: LC_X6_Y4_N9
\LessThan2~0\ : maxv_lcell
-- Equation(s):
-- \LessThan2~0_combout\ = (!\Add1~25_combout\ & (!\Add1~10_combout\ & (!\Add1~20_combout\ & !\Add1~15_combout\)))

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
	dataa => \Add1~25_combout\,
	datab => \Add1~10_combout\,
	datac => \Add1~20_combout\,
	datad => \Add1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~0_combout\);

-- Location: LC_X6_Y4_N8
\LessThan2~3\ : maxv_lcell
-- Equation(s):
-- \LessThan2~3_combout\ = (!\Add1~0_combout\ & (!\Add1~5_combout\ & (!\LessThan2~2_combout\ & \LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add1~5_combout\,
	datac => \LessThan2~2_combout\,
	datad => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~3_combout\);

-- Location: LC_X11_Y8_N0
\L2~0\ : maxv_lcell
-- Equation(s):
-- \L2~0_combout\ = (!\LessThan8~2_combout\ & (((!\LessThan7~0_combout\ & !\LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~2_combout\,
	datac => \LessThan7~0_combout\,
	datad => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L2~0_combout\);

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CORRECTN[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CORRECTN(6),
	combout => \CORRECTN~combout\(6));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CORRECTN[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CORRECTN(7),
	combout => \CORRECTN~combout\(7));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CORRECTN[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CORRECTN(5),
	combout => \CORRECTN~combout\(5));

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CORRECTN[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CORRECTN(2),
	combout => \CORRECTN~combout\(2));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CORRECTN[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CORRECTN(4),
	combout => \CORRECTN~combout\(4));

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CORRECTN[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CORRECTN(3),
	combout => \CORRECTN~combout\(3));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CORRECTN[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CORRECTN(1),
	combout => \CORRECTN~combout\(1));

-- Location: LC_X9_Y10_N7
\L1~0\ : maxv_lcell
-- Equation(s):
-- \L1~0_combout\ = (\CORRECTN~combout\(4) & ((\CORRECTN~combout\(3)) # ((\CORRECTN~combout\(2) & \CORRECTN~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CORRECTN~combout\(2),
	datab => \CORRECTN~combout\(4),
	datac => \CORRECTN~combout\(3),
	datad => \CORRECTN~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L1~0_combout\);

-- Location: LC_X9_Y10_N8
\L1~1\ : maxv_lcell
-- Equation(s):
-- \L1~1_combout\ = ((\CORRECTN~combout\(6) & (\CORRECTN~combout\(5) & \L1~0_combout\))) # (!\CORRECTN~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b333",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CORRECTN~combout\(6),
	datab => \CORRECTN~combout\(7),
	datac => \CORRECTN~combout\(5),
	datad => \L1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L1~1_combout\);

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RUN~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RUN,
	combout => \RUN~combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_X[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_X(12),
	combout => \ACT_X~combout\(12));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(12),
	combout => \FIN_X~combout\(12));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(7),
	combout => \FIN_X~combout\(7));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_X[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_X(7),
	combout => \ACT_X~combout\(7));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(2),
	combout => \FIN_X~combout\(2));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_X[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_X(2),
	combout => \ACT_X~combout\(2));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_X[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_X(1),
	combout => \ACT_X~combout\(1));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(1),
	combout => \FIN_X~combout\(1));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(0),
	combout => \FIN_X~combout\(0));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_X[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_X(0),
	combout => \ACT_X~combout\(0));

-- Location: LC_X10_Y5_N2
\Add2~75\ : maxv_lcell
-- Equation(s):
-- \Add2~75_combout\ = \FIN_X~combout\(0) $ ((\ACT_X~combout\(0)))
-- \Add2~77\ = CARRY((\FIN_X~combout\(0)) # ((!\ACT_X~combout\(0))))
-- \Add2~77COUT1_94\ = CARRY((\FIN_X~combout\(0)) # ((!\ACT_X~combout\(0))))

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
	datab => \ACT_X~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~75_combout\,
	cout0 => \Add2~77\,
	cout1 => \Add2~77COUT1_94\);

-- Location: LC_X10_Y5_N3
\Add2~70\ : maxv_lcell
-- Equation(s):
-- \Add2~70_combout\ = \ACT_X~combout\(1) $ (\FIN_X~combout\(1) $ ((!\Add2~77\)))
-- \Add2~72\ = CARRY((\ACT_X~combout\(1) & ((!\Add2~77\) # (!\FIN_X~combout\(1)))) # (!\ACT_X~combout\(1) & (!\FIN_X~combout\(1) & !\Add2~77\)))
-- \Add2~72COUT1_96\ = CARRY((\ACT_X~combout\(1) & ((!\Add2~77COUT1_94\) # (!\FIN_X~combout\(1)))) # (!\ACT_X~combout\(1) & (!\FIN_X~combout\(1) & !\Add2~77COUT1_94\)))

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
	dataa => \ACT_X~combout\(1),
	datab => \FIN_X~combout\(1),
	cin0 => \Add2~77\,
	cin1 => \Add2~77COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~70_combout\,
	cout0 => \Add2~72\,
	cout1 => \Add2~72COUT1_96\);

-- Location: LC_X10_Y5_N4
\Add2~65\ : maxv_lcell
-- Equation(s):
-- \Add2~65_combout\ = \FIN_X~combout\(2) $ (\ACT_X~combout\(2) $ ((\Add2~72\)))
-- \Add2~67\ = CARRY((\FIN_X~combout\(2) & ((!\Add2~72COUT1_96\) # (!\ACT_X~combout\(2)))) # (!\FIN_X~combout\(2) & (!\ACT_X~combout\(2) & !\Add2~72COUT1_96\)))

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
	dataa => \FIN_X~combout\(2),
	datab => \ACT_X~combout\(2),
	cin0 => \Add2~72\,
	cin1 => \Add2~72COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~65_combout\,
	cout => \Add2~67\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_X[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_X(6),
	combout => \ACT_X~combout\(6));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(6),
	combout => \FIN_X~combout\(6));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_X[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_X(5),
	combout => \ACT_X~combout\(5));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(5),
	combout => \FIN_X~combout\(5));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_X[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_X(4),
	combout => \ACT_X~combout\(4));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(4),
	combout => \FIN_X~combout\(4));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_X[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_X(3),
	combout => \ACT_X~combout\(3));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(3),
	combout => \FIN_X~combout\(3));

-- Location: LC_X10_Y5_N5
\Add2~0\ : maxv_lcell
-- Equation(s):
-- \Add2~0_combout\ = \ACT_X~combout\(3) $ (\FIN_X~combout\(3) $ ((!\Add2~67\)))
-- \Add2~2\ = CARRY((\ACT_X~combout\(3) & ((!\Add2~67\) # (!\FIN_X~combout\(3)))) # (!\ACT_X~combout\(3) & (!\FIN_X~combout\(3) & !\Add2~67\)))
-- \Add2~2COUT1_98\ = CARRY((\ACT_X~combout\(3) & ((!\Add2~67\) # (!\FIN_X~combout\(3)))) # (!\ACT_X~combout\(3) & (!\FIN_X~combout\(3) & !\Add2~67\)))

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
	dataa => \ACT_X~combout\(3),
	datab => \FIN_X~combout\(3),
	cin => \Add2~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~0_combout\,
	cout0 => \Add2~2\,
	cout1 => \Add2~2COUT1_98\);

-- Location: LC_X10_Y5_N6
\Add2~10\ : maxv_lcell
-- Equation(s):
-- \Add2~10_combout\ = \ACT_X~combout\(4) $ (\FIN_X~combout\(4) $ (((!\Add2~67\ & \Add2~2\) # (\Add2~67\ & \Add2~2COUT1_98\))))
-- \Add2~12\ = CARRY((\ACT_X~combout\(4) & (\FIN_X~combout\(4) & !\Add2~2\)) # (!\ACT_X~combout\(4) & ((\FIN_X~combout\(4)) # (!\Add2~2\))))
-- \Add2~12COUT1_100\ = CARRY((\ACT_X~combout\(4) & (\FIN_X~combout\(4) & !\Add2~2COUT1_98\)) # (!\ACT_X~combout\(4) & ((\FIN_X~combout\(4)) # (!\Add2~2COUT1_98\))))

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
	dataa => \ACT_X~combout\(4),
	datab => \FIN_X~combout\(4),
	cin => \Add2~67\,
	cin0 => \Add2~2\,
	cin1 => \Add2~2COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~10_combout\,
	cout0 => \Add2~12\,
	cout1 => \Add2~12COUT1_100\);

-- Location: LC_X10_Y5_N7
\Add2~15\ : maxv_lcell
-- Equation(s):
-- \Add2~15_combout\ = \ACT_X~combout\(5) $ (\FIN_X~combout\(5) $ ((!(!\Add2~67\ & \Add2~12\) # (\Add2~67\ & \Add2~12COUT1_100\))))
-- \Add2~17\ = CARRY((\ACT_X~combout\(5) & ((!\Add2~12\) # (!\FIN_X~combout\(5)))) # (!\ACT_X~combout\(5) & (!\FIN_X~combout\(5) & !\Add2~12\)))
-- \Add2~17COUT1_102\ = CARRY((\ACT_X~combout\(5) & ((!\Add2~12COUT1_100\) # (!\FIN_X~combout\(5)))) # (!\ACT_X~combout\(5) & (!\FIN_X~combout\(5) & !\Add2~12COUT1_100\)))

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
	dataa => \ACT_X~combout\(5),
	datab => \FIN_X~combout\(5),
	cin => \Add2~67\,
	cin0 => \Add2~12\,
	cin1 => \Add2~12COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~15_combout\,
	cout0 => \Add2~17\,
	cout1 => \Add2~17COUT1_102\);

-- Location: LC_X10_Y5_N8
\Add2~20\ : maxv_lcell
-- Equation(s):
-- \Add2~20_combout\ = \ACT_X~combout\(6) $ (\FIN_X~combout\(6) $ (((!\Add2~67\ & \Add2~17\) # (\Add2~67\ & \Add2~17COUT1_102\))))
-- \Add2~22\ = CARRY((\ACT_X~combout\(6) & (\FIN_X~combout\(6) & !\Add2~17\)) # (!\ACT_X~combout\(6) & ((\FIN_X~combout\(6)) # (!\Add2~17\))))
-- \Add2~22COUT1_104\ = CARRY((\ACT_X~combout\(6) & (\FIN_X~combout\(6) & !\Add2~17COUT1_102\)) # (!\ACT_X~combout\(6) & ((\FIN_X~combout\(6)) # (!\Add2~17COUT1_102\))))

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
	dataa => \ACT_X~combout\(6),
	datab => \FIN_X~combout\(6),
	cin => \Add2~67\,
	cin0 => \Add2~17\,
	cin1 => \Add2~17COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~20_combout\,
	cout0 => \Add2~22\,
	cout1 => \Add2~22COUT1_104\);

-- Location: LC_X10_Y5_N9
\Add2~25\ : maxv_lcell
-- Equation(s):
-- \Add2~25_combout\ = \FIN_X~combout\(7) $ (\ACT_X~combout\(7) $ ((!(!\Add2~67\ & \Add2~22\) # (\Add2~67\ & \Add2~22COUT1_104\))))
-- \Add2~27\ = CARRY((\FIN_X~combout\(7) & (\ACT_X~combout\(7) & !\Add2~22COUT1_104\)) # (!\FIN_X~combout\(7) & ((\ACT_X~combout\(7)) # (!\Add2~22COUT1_104\))))

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
	dataa => \FIN_X~combout\(7),
	datab => \ACT_X~combout\(7),
	cin => \Add2~67\,
	cin0 => \Add2~22\,
	cin1 => \Add2~22COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~25_combout\,
	cout => \Add2~27\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(11),
	combout => \FIN_X~combout\(11));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_X[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_X(11),
	combout => \ACT_X~combout\(11));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_X[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_X(10),
	combout => \ACT_X~combout\(10));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(10),
	combout => \FIN_X~combout\(10));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(9),
	combout => \FIN_X~combout\(9));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_X[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_X(9),
	combout => \ACT_X~combout\(9));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(8),
	combout => \FIN_X~combout\(8));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_X[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_X(8),
	combout => \ACT_X~combout\(8));

-- Location: LC_X11_Y5_N0
\Add2~30\ : maxv_lcell
-- Equation(s):
-- \Add2~30_combout\ = \FIN_X~combout\(8) $ (\ACT_X~combout\(8) $ ((\Add2~27\)))
-- \Add2~32\ = CARRY((\FIN_X~combout\(8) & ((!\Add2~27\) # (!\ACT_X~combout\(8)))) # (!\FIN_X~combout\(8) & (!\ACT_X~combout\(8) & !\Add2~27\)))
-- \Add2~32COUT1_106\ = CARRY((\FIN_X~combout\(8) & ((!\Add2~27\) # (!\ACT_X~combout\(8)))) # (!\FIN_X~combout\(8) & (!\ACT_X~combout\(8) & !\Add2~27\)))

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
	dataa => \FIN_X~combout\(8),
	datab => \ACT_X~combout\(8),
	cin => \Add2~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~30_combout\,
	cout0 => \Add2~32\,
	cout1 => \Add2~32COUT1_106\);

-- Location: LC_X11_Y5_N1
\Add2~35\ : maxv_lcell
-- Equation(s):
-- \Add2~35_combout\ = \FIN_X~combout\(9) $ (\ACT_X~combout\(9) $ ((!(!\Add2~27\ & \Add2~32\) # (\Add2~27\ & \Add2~32COUT1_106\))))
-- \Add2~37\ = CARRY((\FIN_X~combout\(9) & (\ACT_X~combout\(9) & !\Add2~32\)) # (!\FIN_X~combout\(9) & ((\ACT_X~combout\(9)) # (!\Add2~32\))))
-- \Add2~37COUT1_108\ = CARRY((\FIN_X~combout\(9) & (\ACT_X~combout\(9) & !\Add2~32COUT1_106\)) # (!\FIN_X~combout\(9) & ((\ACT_X~combout\(9)) # (!\Add2~32COUT1_106\))))

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
	dataa => \FIN_X~combout\(9),
	datab => \ACT_X~combout\(9),
	cin => \Add2~27\,
	cin0 => \Add2~32\,
	cin1 => \Add2~32COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~35_combout\,
	cout0 => \Add2~37\,
	cout1 => \Add2~37COUT1_108\);

-- Location: LC_X11_Y5_N2
\Add2~40\ : maxv_lcell
-- Equation(s):
-- \Add2~40_combout\ = \ACT_X~combout\(10) $ (\FIN_X~combout\(10) $ (((!\Add2~27\ & \Add2~37\) # (\Add2~27\ & \Add2~37COUT1_108\))))
-- \Add2~42\ = CARRY((\ACT_X~combout\(10) & (\FIN_X~combout\(10) & !\Add2~37\)) # (!\ACT_X~combout\(10) & ((\FIN_X~combout\(10)) # (!\Add2~37\))))
-- \Add2~42COUT1_110\ = CARRY((\ACT_X~combout\(10) & (\FIN_X~combout\(10) & !\Add2~37COUT1_108\)) # (!\ACT_X~combout\(10) & ((\FIN_X~combout\(10)) # (!\Add2~37COUT1_108\))))

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
	dataa => \ACT_X~combout\(10),
	datab => \FIN_X~combout\(10),
	cin => \Add2~27\,
	cin0 => \Add2~37\,
	cin1 => \Add2~37COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~40_combout\,
	cout0 => \Add2~42\,
	cout1 => \Add2~42COUT1_110\);

-- Location: LC_X11_Y5_N3
\Add2~45\ : maxv_lcell
-- Equation(s):
-- \Add2~45_combout\ = \FIN_X~combout\(11) $ (\ACT_X~combout\(11) $ ((!(!\Add2~27\ & \Add2~42\) # (\Add2~27\ & \Add2~42COUT1_110\))))
-- \Add2~47\ = CARRY((\FIN_X~combout\(11) & (\ACT_X~combout\(11) & !\Add2~42\)) # (!\FIN_X~combout\(11) & ((\ACT_X~combout\(11)) # (!\Add2~42\))))
-- \Add2~47COUT1_112\ = CARRY((\FIN_X~combout\(11) & (\ACT_X~combout\(11) & !\Add2~42COUT1_110\)) # (!\FIN_X~combout\(11) & ((\ACT_X~combout\(11)) # (!\Add2~42COUT1_110\))))

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
	dataa => \FIN_X~combout\(11),
	datab => \ACT_X~combout\(11),
	cin => \Add2~27\,
	cin0 => \Add2~42\,
	cin1 => \Add2~42COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~45_combout\,
	cout0 => \Add2~47\,
	cout1 => \Add2~47COUT1_112\);

-- Location: LC_X11_Y5_N4
\Add2~50\ : maxv_lcell
-- Equation(s):
-- \Add2~50_combout\ = \ACT_X~combout\(12) $ (\FIN_X~combout\(12) $ (((!\Add2~27\ & \Add2~47\) # (\Add2~27\ & \Add2~47COUT1_112\))))
-- \Add2~52\ = CARRY((\ACT_X~combout\(12) & (\FIN_X~combout\(12) & !\Add2~47COUT1_112\)) # (!\ACT_X~combout\(12) & ((\FIN_X~combout\(12)) # (!\Add2~47COUT1_112\))))

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
	dataa => \ACT_X~combout\(12),
	datab => \FIN_X~combout\(12),
	cin => \Add2~27\,
	cin0 => \Add2~47\,
	cin1 => \Add2~47COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~50_combout\,
	cout => \Add2~52\);

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_X[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_X(14),
	combout => \ACT_X~combout\(14));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(14),
	combout => \FIN_X~combout\(14));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACT_X[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ACT_X(13),
	combout => \ACT_X~combout\(13));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FIN_X[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FIN_X(13),
	combout => \FIN_X~combout\(13));

-- Location: LC_X11_Y5_N5
\Add2~55\ : maxv_lcell
-- Equation(s):
-- \Add2~55_combout\ = \ACT_X~combout\(13) $ (\FIN_X~combout\(13) $ ((!\Add2~52\)))
-- \Add2~57\ = CARRY((\ACT_X~combout\(13) & ((!\Add2~52\) # (!\FIN_X~combout\(13)))) # (!\ACT_X~combout\(13) & (!\FIN_X~combout\(13) & !\Add2~52\)))
-- \Add2~57COUT1_114\ = CARRY((\ACT_X~combout\(13) & ((!\Add2~52\) # (!\FIN_X~combout\(13)))) # (!\ACT_X~combout\(13) & (!\FIN_X~combout\(13) & !\Add2~52\)))

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
	dataa => \ACT_X~combout\(13),
	datab => \FIN_X~combout\(13),
	cin => \Add2~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~55_combout\,
	cout0 => \Add2~57\,
	cout1 => \Add2~57COUT1_114\);

-- Location: LC_X11_Y5_N6
\Add2~60\ : maxv_lcell
-- Equation(s):
-- \Add2~60_combout\ = \ACT_X~combout\(14) $ (\FIN_X~combout\(14) $ (((!\Add2~52\ & \Add2~57\) # (\Add2~52\ & \Add2~57COUT1_114\))))
-- \Add2~62\ = CARRY((\ACT_X~combout\(14) & (\FIN_X~combout\(14) & !\Add2~57\)) # (!\ACT_X~combout\(14) & ((\FIN_X~combout\(14)) # (!\Add2~57\))))
-- \Add2~62COUT1_116\ = CARRY((\ACT_X~combout\(14) & (\FIN_X~combout\(14) & !\Add2~57COUT1_114\)) # (!\ACT_X~combout\(14) & ((\FIN_X~combout\(14)) # (!\Add2~57COUT1_114\))))

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
	dataa => \ACT_X~combout\(14),
	datab => \FIN_X~combout\(14),
	cin => \Add2~52\,
	cin0 => \Add2~57\,
	cin1 => \Add2~57COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~60_combout\,
	cout0 => \Add2~62\,
	cout1 => \Add2~62COUT1_116\);

-- Location: LC_X11_Y5_N7
\Add2~5\ : maxv_lcell
-- Equation(s):
-- \Add2~5_combout\ = ((((!\Add2~52\ & \Add2~62\) # (\Add2~52\ & \Add2~62COUT1_116\))))

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
	cin => \Add2~52\,
	cin0 => \Add2~62\,
	cin1 => \Add2~62COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~5_combout\);

-- Location: LC_X10_Y5_N1
\process_0~4\ : maxv_lcell
-- Equation(s):
-- \process_0~4_combout\ = (\Add2~75_combout\ $ (((\Add2~5_combout\))))

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
	datab => \Add2~75_combout\,
	datad => \Add2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~4_combout\);

-- Location: LC_X10_Y6_N2
\Add3~77\ : maxv_lcell
-- Equation(s):
-- \Add3~77_cout0\ = CARRY((!\Add2~5_combout\ & (!\process_0~4_combout\)))
-- \Add3~77COUT1_94\ = CARRY((!\Add2~5_combout\ & (!\process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff11",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~5_combout\,
	datab => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~75\,
	cout0 => \Add3~77_cout0\,
	cout1 => \Add3~77COUT1_94\);

-- Location: LC_X10_Y6_N3
\Add3~72\ : maxv_lcell
-- Equation(s):
-- \Add3~72_cout0\ = CARRY((\Add2~5_combout\ $ (\Add2~70_combout\)) # (!\Add3~77_cout0\))
-- \Add3~72COUT1_96\ = CARRY((\Add2~5_combout\ $ (\Add2~70_combout\)) # (!\Add3~77COUT1_94\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff6f",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~5_combout\,
	datab => \Add2~70_combout\,
	cin0 => \Add3~77_cout0\,
	cin1 => \Add3~77COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~70\,
	cout0 => \Add3~72_cout0\,
	cout1 => \Add3~72COUT1_96\);

-- Location: LC_X10_Y6_N4
\Add3~67\ : maxv_lcell
-- Equation(s):
-- \Add3~67_cout\ = CARRY((!\Add3~72COUT1_96\ & (\Add2~5_combout\ $ (!\Add2~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff09",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~5_combout\,
	datab => \Add2~65_combout\,
	cin0 => \Add3~72_cout0\,
	cin1 => \Add3~72COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~65\,
	cout => \Add3~67_cout\);

-- Location: LC_X10_Y6_N5
\Add3~0\ : maxv_lcell
-- Equation(s):
-- \Add3~0_combout\ = \Add2~5_combout\ $ (\Add2~0_combout\ $ ((!\Add3~67_cout\)))
-- \Add3~2\ = CARRY((\Add2~5_combout\ $ (\Add2~0_combout\)) # (!\Add3~67_cout\))
-- \Add3~2COUT1_98\ = CARRY((\Add2~5_combout\ $ (\Add2~0_combout\)) # (!\Add3~67_cout\))

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
	dataa => \Add2~5_combout\,
	datab => \Add2~0_combout\,
	cin => \Add3~67_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~0_combout\,
	cout0 => \Add3~2\,
	cout1 => \Add3~2COUT1_98\);

-- Location: LC_X10_Y6_N6
\Add3~5\ : maxv_lcell
-- Equation(s):
-- \Add3~5_combout\ = \Add2~5_combout\ $ (\Add2~10_combout\ $ (((!\Add3~67_cout\ & \Add3~2\) # (\Add3~67_cout\ & \Add3~2COUT1_98\))))
-- \Add3~7\ = CARRY((!\Add3~2\ & (\Add2~5_combout\ $ (!\Add2~10_combout\))))
-- \Add3~7COUT1_100\ = CARRY((!\Add3~2COUT1_98\ & (\Add2~5_combout\ $ (!\Add2~10_combout\))))

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
	dataa => \Add2~5_combout\,
	datab => \Add2~10_combout\,
	cin => \Add3~67_cout\,
	cin0 => \Add3~2\,
	cin1 => \Add3~2COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~5_combout\,
	cout0 => \Add3~7\,
	cout1 => \Add3~7COUT1_100\);

-- Location: LC_X10_Y6_N7
\Add3~10\ : maxv_lcell
-- Equation(s):
-- \Add3~10_combout\ = \Add2~5_combout\ $ (\Add2~15_combout\ $ ((!(!\Add3~67_cout\ & \Add3~7\) # (\Add3~67_cout\ & \Add3~7COUT1_100\))))
-- \Add3~12\ = CARRY((\Add2~5_combout\ $ (\Add2~15_combout\)) # (!\Add3~7\))
-- \Add3~12COUT1_102\ = CARRY((\Add2~5_combout\ $ (\Add2~15_combout\)) # (!\Add3~7COUT1_100\))

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
	dataa => \Add2~5_combout\,
	datab => \Add2~15_combout\,
	cin => \Add3~67_cout\,
	cin0 => \Add3~7\,
	cin1 => \Add3~7COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~10_combout\,
	cout0 => \Add3~12\,
	cout1 => \Add3~12COUT1_102\);

-- Location: LC_X10_Y6_N8
\Add3~15\ : maxv_lcell
-- Equation(s):
-- \Add3~15_combout\ = \Add2~5_combout\ $ (\Add2~20_combout\ $ (((!\Add3~67_cout\ & \Add3~12\) # (\Add3~67_cout\ & \Add3~12COUT1_102\))))
-- \Add3~17\ = CARRY((!\Add3~12\ & (\Add2~5_combout\ $ (!\Add2~20_combout\))))
-- \Add3~17COUT1_104\ = CARRY((!\Add3~12COUT1_102\ & (\Add2~5_combout\ $ (!\Add2~20_combout\))))

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
	dataa => \Add2~5_combout\,
	datab => \Add2~20_combout\,
	cin => \Add3~67_cout\,
	cin0 => \Add3~12\,
	cin1 => \Add3~12COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~15_combout\,
	cout0 => \Add3~17\,
	cout1 => \Add3~17COUT1_104\);

-- Location: LC_X10_Y6_N9
\Add3~20\ : maxv_lcell
-- Equation(s):
-- \Add3~20_combout\ = \Add2~5_combout\ $ (\Add2~25_combout\ $ ((!(!\Add3~67_cout\ & \Add3~17\) # (\Add3~67_cout\ & \Add3~17COUT1_104\))))
-- \Add3~22\ = CARRY((\Add2~5_combout\ $ (\Add2~25_combout\)) # (!\Add3~17COUT1_104\))

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
	dataa => \Add2~5_combout\,
	datab => \Add2~25_combout\,
	cin => \Add3~67_cout\,
	cin0 => \Add3~17\,
	cin1 => \Add3~17COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~20_combout\,
	cout => \Add3~22\);

-- Location: LC_X11_Y6_N0
\Add3~25\ : maxv_lcell
-- Equation(s):
-- \Add3~25_combout\ = \Add2~5_combout\ $ (\Add2~30_combout\ $ ((\Add3~22\)))
-- \Add3~27\ = CARRY((!\Add3~22\ & (\Add2~5_combout\ $ (!\Add2~30_combout\))))
-- \Add3~27COUT1_106\ = CARRY((!\Add3~22\ & (\Add2~5_combout\ $ (!\Add2~30_combout\))))

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
	dataa => \Add2~5_combout\,
	datab => \Add2~30_combout\,
	cin => \Add3~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~25_combout\,
	cout0 => \Add3~27\,
	cout1 => \Add3~27COUT1_106\);

-- Location: LC_X11_Y6_N1
\Add3~30\ : maxv_lcell
-- Equation(s):
-- \Add3~30_combout\ = \Add2~5_combout\ $ (\Add2~35_combout\ $ ((!(!\Add3~22\ & \Add3~27\) # (\Add3~22\ & \Add3~27COUT1_106\))))
-- \Add3~32\ = CARRY((\Add2~5_combout\ $ (\Add2~35_combout\)) # (!\Add3~27\))
-- \Add3~32COUT1_108\ = CARRY((\Add2~5_combout\ $ (\Add2~35_combout\)) # (!\Add3~27COUT1_106\))

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
	dataa => \Add2~5_combout\,
	datab => \Add2~35_combout\,
	cin => \Add3~22\,
	cin0 => \Add3~27\,
	cin1 => \Add3~27COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~30_combout\,
	cout0 => \Add3~32\,
	cout1 => \Add3~32COUT1_108\);

-- Location: LC_X11_Y6_N2
\Add3~35\ : maxv_lcell
-- Equation(s):
-- \Add3~35_combout\ = \Add2~5_combout\ $ (\Add2~40_combout\ $ (((!\Add3~22\ & \Add3~32\) # (\Add3~22\ & \Add3~32COUT1_108\))))
-- \Add3~37\ = CARRY((!\Add3~32\ & (\Add2~5_combout\ $ (!\Add2~40_combout\))))
-- \Add3~37COUT1_110\ = CARRY((!\Add3~32COUT1_108\ & (\Add2~5_combout\ $ (!\Add2~40_combout\))))

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
	dataa => \Add2~5_combout\,
	datab => \Add2~40_combout\,
	cin => \Add3~22\,
	cin0 => \Add3~32\,
	cin1 => \Add3~32COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~35_combout\,
	cout0 => \Add3~37\,
	cout1 => \Add3~37COUT1_110\);

-- Location: LC_X11_Y6_N3
\Add3~40\ : maxv_lcell
-- Equation(s):
-- \Add3~40_combout\ = \Add2~5_combout\ $ (\Add2~45_combout\ $ ((!(!\Add3~22\ & \Add3~37\) # (\Add3~22\ & \Add3~37COUT1_110\))))
-- \Add3~42\ = CARRY((\Add2~5_combout\ $ (\Add2~45_combout\)) # (!\Add3~37\))
-- \Add3~42COUT1_112\ = CARRY((\Add2~5_combout\ $ (\Add2~45_combout\)) # (!\Add3~37COUT1_110\))

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
	dataa => \Add2~5_combout\,
	datab => \Add2~45_combout\,
	cin => \Add3~22\,
	cin0 => \Add3~37\,
	cin1 => \Add3~37COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~40_combout\,
	cout0 => \Add3~42\,
	cout1 => \Add3~42COUT1_112\);

-- Location: LC_X11_Y6_N4
\Add3~45\ : maxv_lcell
-- Equation(s):
-- \Add3~45_combout\ = \Add2~5_combout\ $ (\Add2~50_combout\ $ (((!\Add3~22\ & \Add3~42\) # (\Add3~22\ & \Add3~42COUT1_112\))))
-- \Add3~47\ = CARRY((!\Add3~42COUT1_112\ & (\Add2~5_combout\ $ (!\Add2~50_combout\))))

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
	dataa => \Add2~5_combout\,
	datab => \Add2~50_combout\,
	cin => \Add3~22\,
	cin0 => \Add3~42\,
	cin1 => \Add3~42COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~45_combout\,
	cout => \Add3~47\);

-- Location: LC_X11_Y6_N5
\Add3~50\ : maxv_lcell
-- Equation(s):
-- \Add3~50_combout\ = \Add2~5_combout\ $ (\Add2~55_combout\ $ ((!\Add3~47\)))
-- \Add3~52\ = CARRY((\Add2~5_combout\ $ (\Add2~55_combout\)) # (!\Add3~47\))
-- \Add3~52COUT1_114\ = CARRY((\Add2~5_combout\ $ (\Add2~55_combout\)) # (!\Add3~47\))

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
	dataa => \Add2~5_combout\,
	datab => \Add2~55_combout\,
	cin => \Add3~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~50_combout\,
	cout0 => \Add3~52\,
	cout1 => \Add3~52COUT1_114\);

-- Location: LC_X11_Y6_N9
\L1~3\ : maxv_lcell
-- Equation(s):
-- \L1~3_combout\ = (!\Add3~50_combout\ & (!\Add3~35_combout\ & (!\Add3~45_combout\ & !\Add3~40_combout\)))

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
	dataa => \Add3~50_combout\,
	datab => \Add3~35_combout\,
	datac => \Add3~45_combout\,
	datad => \Add3~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L1~3_combout\);

-- Location: LC_X11_Y4_N8
\R1~0\ : maxv_lcell
-- Equation(s):
-- \R1~0_combout\ = ((\RUN~combout\ & (\LessThan2~3_combout\ & !\FOLLOWING~combout\)))

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
	datac => \LessThan2~3_combout\,
	datad => \FOLLOWING~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R1~0_combout\);

-- Location: LC_X10_Y6_N1
\LessThan3~0\ : maxv_lcell
-- Equation(s):
-- \LessThan3~0_combout\ = (((!\Add3~5_combout\ & !\Add3~0_combout\)) # (!\Add3~15_combout\)) # (!\Add3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "37ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~5_combout\,
	datab => \Add3~10_combout\,
	datac => \Add3~0_combout\,
	datad => \Add3~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~0_combout\);

-- Location: LC_X10_Y6_N0
\LessThan3~1\ : maxv_lcell
-- Equation(s):
-- \LessThan3~1_combout\ = (((\LessThan3~0_combout\) # (!\Add3~25_combout\)) # (!\Add3~20_combout\)) # (!\Add3~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff7f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~30_combout\,
	datab => \Add3~20_combout\,
	datac => \Add3~25_combout\,
	datad => \LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~1_combout\);

-- Location: LC_X11_Y6_N6
\Add3~55\ : maxv_lcell
-- Equation(s):
-- \Add3~55_combout\ = \Add2~5_combout\ $ (\Add2~60_combout\ $ (((!\Add3~47\ & \Add3~52\) # (\Add3~47\ & \Add3~52COUT1_114\))))
-- \Add3~57\ = CARRY((!\Add3~52\ & (\Add2~5_combout\ $ (!\Add2~60_combout\))))
-- \Add3~57COUT1_116\ = CARRY((!\Add3~52COUT1_114\ & (\Add2~5_combout\ $ (!\Add2~60_combout\))))

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
	dataa => \Add2~5_combout\,
	datab => \Add2~60_combout\,
	cin => \Add3~47\,
	cin0 => \Add3~52\,
	cin1 => \Add3~52COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~55_combout\,
	cout0 => \Add3~57\,
	cout1 => \Add3~57COUT1_116\);

-- Location: LC_X11_Y6_N7
\Add3~60\ : maxv_lcell
-- Equation(s):
-- \Add3~60_combout\ = ((((!\Add3~47\ & \Add3~57\) # (\Add3~47\ & \Add3~57COUT1_116\))))

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
	cin => \Add3~47\,
	cin0 => \Add3~57\,
	cin1 => \Add3~57COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~60_combout\);

-- Location: LC_X11_Y6_N8
\L1~4\ : maxv_lcell
-- Equation(s):
-- \L1~4_combout\ = (((!\Add3~55_combout\ & !\Add3~60_combout\)))

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
	datac => \Add3~55_combout\,
	datad => \Add3~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L1~4_combout\);

-- Location: LC_X11_Y8_N1
\NEXTPT~reg0\ : maxv_lcell
-- Equation(s):
-- \L1~5\ = (\L1~3_combout\ & (\R1~0_combout\ & (\LessThan3~1_combout\ & \L1~4_combout\)))
-- \NEXTPT~reg0_regout\ = DFFEAS(\L1~5\, GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	dataa => \L1~3_combout\,
	datab => \R1~0_combout\,
	datac => \LessThan3~1_combout\,
	datad => \L1~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L1~5\,
	regout => \NEXTPT~reg0_regout\);

-- Location: LC_X11_Y8_N3
\L1~reg0\ : maxv_lcell
-- Equation(s):
-- \L1~reg0_regout\ = DFFEAS((\FOLLOWING~combout\ & (((\L1~1_combout\)))) # (!\FOLLOWING~combout\ & (!\L2~0_combout\ & ((\RUN~combout\)))), GLOBAL(\CLK~combout\), VCC, , !\L1~5\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b1a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \FOLLOWING~combout\,
	datab => \L2~0_combout\,
	datac => \L1~1_combout\,
	datad => \RUN~combout\,
	aclr => GND,
	ena => \ALT_INV_L1~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L1~reg0_regout\);

-- Location: LC_X11_Y8_N5
\L2~reg0\ : maxv_lcell
-- Equation(s):
-- \L2~reg0_regout\ = DFFEAS((\FOLLOWING~combout\ & (((!\L1~1_combout\)))) # (!\FOLLOWING~combout\ & (\L2~0_combout\ & ((\RUN~combout\)))), GLOBAL(\CLK~combout\), VCC, , !\L1~5\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4e0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \FOLLOWING~combout\,
	datab => \L2~0_combout\,
	datac => \L1~1_combout\,
	datad => \RUN~combout\,
	aclr => GND,
	ena => \ALT_INV_L1~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \L2~reg0_regout\);

-- Location: LC_X10_Y4_N3
\LessThan4~72\ : maxv_lcell
-- Equation(s):
-- \LessThan4~72_cout0\ = CARRY((!\ACT_X~combout\(0) & (\FIN_X~combout\(0))))
-- \LessThan4~72COUT1_88\ = CARRY((!\ACT_X~combout\(0) & (\FIN_X~combout\(0))))

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
	dataa => \ACT_X~combout\(0),
	datab => \FIN_X~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~70\,
	cout0 => \LessThan4~72_cout0\,
	cout1 => \LessThan4~72COUT1_88\);

-- Location: LC_X10_Y4_N4
\LessThan4~67\ : maxv_lcell
-- Equation(s):
-- \LessThan4~67_cout\ = CARRY((\ACT_X~combout\(1) & ((!\LessThan4~72COUT1_88\) # (!\FIN_X~combout\(1)))) # (!\ACT_X~combout\(1) & (!\FIN_X~combout\(1) & !\LessThan4~72COUT1_88\)))

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
	dataa => \ACT_X~combout\(1),
	datab => \FIN_X~combout\(1),
	cin0 => \LessThan4~72_cout0\,
	cin1 => \LessThan4~72COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~65\,
	cout => \LessThan4~67_cout\);

-- Location: LC_X10_Y4_N5
\LessThan4~62\ : maxv_lcell
-- Equation(s):
-- \LessThan4~62_cout0\ = CARRY((\FIN_X~combout\(2) & ((!\LessThan4~67_cout\) # (!\ACT_X~combout\(2)))) # (!\FIN_X~combout\(2) & (!\ACT_X~combout\(2) & !\LessThan4~67_cout\)))
-- \LessThan4~62COUT1_90\ = CARRY((\FIN_X~combout\(2) & ((!\LessThan4~67_cout\) # (!\ACT_X~combout\(2)))) # (!\FIN_X~combout\(2) & (!\ACT_X~combout\(2) & !\LessThan4~67_cout\)))

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
	dataa => \FIN_X~combout\(2),
	datab => \ACT_X~combout\(2),
	cin => \LessThan4~67_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~60\,
	cout0 => \LessThan4~62_cout0\,
	cout1 => \LessThan4~62COUT1_90\);

-- Location: LC_X10_Y4_N6
\LessThan4~57\ : maxv_lcell
-- Equation(s):
-- \LessThan4~57_cout0\ = CARRY((\ACT_X~combout\(3) & ((!\LessThan4~62_cout0\) # (!\FIN_X~combout\(3)))) # (!\ACT_X~combout\(3) & (!\FIN_X~combout\(3) & !\LessThan4~62_cout0\)))
-- \LessThan4~57COUT1_92\ = CARRY((\ACT_X~combout\(3) & ((!\LessThan4~62COUT1_90\) # (!\FIN_X~combout\(3)))) # (!\ACT_X~combout\(3) & (!\FIN_X~combout\(3) & !\LessThan4~62COUT1_90\)))

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
	dataa => \ACT_X~combout\(3),
	datab => \FIN_X~combout\(3),
	cin => \LessThan4~67_cout\,
	cin0 => \LessThan4~62_cout0\,
	cin1 => \LessThan4~62COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~55\,
	cout0 => \LessThan4~57_cout0\,
	cout1 => \LessThan4~57COUT1_92\);

-- Location: LC_X10_Y4_N7
\LessThan4~52\ : maxv_lcell
-- Equation(s):
-- \LessThan4~52_cout0\ = CARRY((\FIN_X~combout\(4) & ((!\LessThan4~57_cout0\) # (!\ACT_X~combout\(4)))) # (!\FIN_X~combout\(4) & (!\ACT_X~combout\(4) & !\LessThan4~57_cout0\)))
-- \LessThan4~52COUT1_94\ = CARRY((\FIN_X~combout\(4) & ((!\LessThan4~57COUT1_92\) # (!\ACT_X~combout\(4)))) # (!\FIN_X~combout\(4) & (!\ACT_X~combout\(4) & !\LessThan4~57COUT1_92\)))

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
	dataa => \FIN_X~combout\(4),
	datab => \ACT_X~combout\(4),
	cin => \LessThan4~67_cout\,
	cin0 => \LessThan4~57_cout0\,
	cin1 => \LessThan4~57COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~50\,
	cout0 => \LessThan4~52_cout0\,
	cout1 => \LessThan4~52COUT1_94\);

-- Location: LC_X10_Y4_N8
\LessThan4~47\ : maxv_lcell
-- Equation(s):
-- \LessThan4~47_cout0\ = CARRY((\FIN_X~combout\(5) & (\ACT_X~combout\(5) & !\LessThan4~52_cout0\)) # (!\FIN_X~combout\(5) & ((\ACT_X~combout\(5)) # (!\LessThan4~52_cout0\))))
-- \LessThan4~47COUT1_96\ = CARRY((\FIN_X~combout\(5) & (\ACT_X~combout\(5) & !\LessThan4~52COUT1_94\)) # (!\FIN_X~combout\(5) & ((\ACT_X~combout\(5)) # (!\LessThan4~52COUT1_94\))))

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
	dataa => \FIN_X~combout\(5),
	datab => \ACT_X~combout\(5),
	cin => \LessThan4~67_cout\,
	cin0 => \LessThan4~52_cout0\,
	cin1 => \LessThan4~52COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~45\,
	cout0 => \LessThan4~47_cout0\,
	cout1 => \LessThan4~47COUT1_96\);

-- Location: LC_X10_Y4_N9
\LessThan4~42\ : maxv_lcell
-- Equation(s):
-- \LessThan4~42_cout\ = CARRY((\ACT_X~combout\(6) & (\FIN_X~combout\(6) & !\LessThan4~47COUT1_96\)) # (!\ACT_X~combout\(6) & ((\FIN_X~combout\(6)) # (!\LessThan4~47COUT1_96\))))

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
	dataa => \ACT_X~combout\(6),
	datab => \FIN_X~combout\(6),
	cin => \LessThan4~67_cout\,
	cin0 => \LessThan4~47_cout0\,
	cin1 => \LessThan4~47COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~40\,
	cout => \LessThan4~42_cout\);

-- Location: LC_X11_Y4_N0
\LessThan4~37\ : maxv_lcell
-- Equation(s):
-- \LessThan4~37_cout0\ = CARRY((\FIN_X~combout\(7) & (\ACT_X~combout\(7) & !\LessThan4~42_cout\)) # (!\FIN_X~combout\(7) & ((\ACT_X~combout\(7)) # (!\LessThan4~42_cout\))))
-- \LessThan4~37COUT1_98\ = CARRY((\FIN_X~combout\(7) & (\ACT_X~combout\(7) & !\LessThan4~42_cout\)) # (!\FIN_X~combout\(7) & ((\ACT_X~combout\(7)) # (!\LessThan4~42_cout\))))

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
	dataa => \FIN_X~combout\(7),
	datab => \ACT_X~combout\(7),
	cin => \LessThan4~42_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~35\,
	cout0 => \LessThan4~37_cout0\,
	cout1 => \LessThan4~37COUT1_98\);

-- Location: LC_X11_Y4_N1
\LessThan4~32\ : maxv_lcell
-- Equation(s):
-- \LessThan4~32_cout0\ = CARRY((\FIN_X~combout\(8) & ((!\LessThan4~37_cout0\) # (!\ACT_X~combout\(8)))) # (!\FIN_X~combout\(8) & (!\ACT_X~combout\(8) & !\LessThan4~37_cout0\)))
-- \LessThan4~32COUT1_100\ = CARRY((\FIN_X~combout\(8) & ((!\LessThan4~37COUT1_98\) # (!\ACT_X~combout\(8)))) # (!\FIN_X~combout\(8) & (!\ACT_X~combout\(8) & !\LessThan4~37COUT1_98\)))

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
	dataa => \FIN_X~combout\(8),
	datab => \ACT_X~combout\(8),
	cin => \LessThan4~42_cout\,
	cin0 => \LessThan4~37_cout0\,
	cin1 => \LessThan4~37COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~30\,
	cout0 => \LessThan4~32_cout0\,
	cout1 => \LessThan4~32COUT1_100\);

-- Location: LC_X11_Y4_N2
\LessThan4~27\ : maxv_lcell
-- Equation(s):
-- \LessThan4~27_cout0\ = CARRY((\ACT_X~combout\(9) & ((!\LessThan4~32_cout0\) # (!\FIN_X~combout\(9)))) # (!\ACT_X~combout\(9) & (!\FIN_X~combout\(9) & !\LessThan4~32_cout0\)))
-- \LessThan4~27COUT1_102\ = CARRY((\ACT_X~combout\(9) & ((!\LessThan4~32COUT1_100\) # (!\FIN_X~combout\(9)))) # (!\ACT_X~combout\(9) & (!\FIN_X~combout\(9) & !\LessThan4~32COUT1_100\)))

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
	dataa => \ACT_X~combout\(9),
	datab => \FIN_X~combout\(9),
	cin => \LessThan4~42_cout\,
	cin0 => \LessThan4~32_cout0\,
	cin1 => \LessThan4~32COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~25\,
	cout0 => \LessThan4~27_cout0\,
	cout1 => \LessThan4~27COUT1_102\);

-- Location: LC_X11_Y4_N3
\LessThan4~22\ : maxv_lcell
-- Equation(s):
-- \LessThan4~22_cout0\ = CARRY((\ACT_X~combout\(10) & (\FIN_X~combout\(10) & !\LessThan4~27_cout0\)) # (!\ACT_X~combout\(10) & ((\FIN_X~combout\(10)) # (!\LessThan4~27_cout0\))))
-- \LessThan4~22COUT1_104\ = CARRY((\ACT_X~combout\(10) & (\FIN_X~combout\(10) & !\LessThan4~27COUT1_102\)) # (!\ACT_X~combout\(10) & ((\FIN_X~combout\(10)) # (!\LessThan4~27COUT1_102\))))

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
	dataa => \ACT_X~combout\(10),
	datab => \FIN_X~combout\(10),
	cin => \LessThan4~42_cout\,
	cin0 => \LessThan4~27_cout0\,
	cin1 => \LessThan4~27COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~20\,
	cout0 => \LessThan4~22_cout0\,
	cout1 => \LessThan4~22COUT1_104\);

-- Location: LC_X11_Y4_N4
\LessThan4~17\ : maxv_lcell
-- Equation(s):
-- \LessThan4~17_cout\ = CARRY((\FIN_X~combout\(11) & (\ACT_X~combout\(11) & !\LessThan4~22COUT1_104\)) # (!\FIN_X~combout\(11) & ((\ACT_X~combout\(11)) # (!\LessThan4~22COUT1_104\))))

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
	dataa => \FIN_X~combout\(11),
	datab => \ACT_X~combout\(11),
	cin => \LessThan4~42_cout\,
	cin0 => \LessThan4~22_cout0\,
	cin1 => \LessThan4~22COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~15\,
	cout => \LessThan4~17_cout\);

-- Location: LC_X11_Y4_N5
\LessThan4~12\ : maxv_lcell
-- Equation(s):
-- \LessThan4~12_cout0\ = CARRY((\ACT_X~combout\(12) & (\FIN_X~combout\(12) & !\LessThan4~17_cout\)) # (!\ACT_X~combout\(12) & ((\FIN_X~combout\(12)) # (!\LessThan4~17_cout\))))
-- \LessThan4~12COUT1_106\ = CARRY((\ACT_X~combout\(12) & (\FIN_X~combout\(12) & !\LessThan4~17_cout\)) # (!\ACT_X~combout\(12) & ((\FIN_X~combout\(12)) # (!\LessThan4~17_cout\))))

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
	dataa => \ACT_X~combout\(12),
	datab => \FIN_X~combout\(12),
	cin => \LessThan4~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~10\,
	cout0 => \LessThan4~12_cout0\,
	cout1 => \LessThan4~12COUT1_106\);

-- Location: LC_X11_Y4_N6
\LessThan4~7\ : maxv_lcell
-- Equation(s):
-- \LessThan4~7_cout0\ = CARRY((\ACT_X~combout\(13) & ((!\LessThan4~12_cout0\) # (!\FIN_X~combout\(13)))) # (!\ACT_X~combout\(13) & (!\FIN_X~combout\(13) & !\LessThan4~12_cout0\)))
-- \LessThan4~7COUT1_108\ = CARRY((\ACT_X~combout\(13) & ((!\LessThan4~12COUT1_106\) # (!\FIN_X~combout\(13)))) # (!\ACT_X~combout\(13) & (!\FIN_X~combout\(13) & !\LessThan4~12COUT1_106\)))

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
	dataa => \ACT_X~combout\(13),
	datab => \FIN_X~combout\(13),
	cin => \LessThan4~17_cout\,
	cin0 => \LessThan4~12_cout0\,
	cin1 => \LessThan4~12COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~5\,
	cout0 => \LessThan4~7_cout0\,
	cout1 => \LessThan4~7COUT1_108\);

-- Location: LC_X11_Y4_N7
\LessThan4~0\ : maxv_lcell
-- Equation(s):
-- \LessThan4~0_combout\ = (\FIN_X~combout\(14) & (((!(!\LessThan4~17_cout\ & \LessThan4~7_cout0\) # (\LessThan4~17_cout\ & \LessThan4~7COUT1_108\))) # (!\ACT_X~combout\(14)))) # (!\FIN_X~combout\(14) & (!\ACT_X~combout\(14) & (!(!\LessThan4~17_cout\ & 
-- \LessThan4~7_cout0\) # (\LessThan4~17_cout\ & \LessThan4~7COUT1_108\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "2b2b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FIN_X~combout\(14),
	datab => \ACT_X~combout\(14),
	cin => \LessThan4~17_cout\,
	cin0 => \LessThan4~7_cout0\,
	cin1 => \LessThan4~7COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~0_combout\);

-- Location: LC_X11_Y4_N9
\R1~1\ : maxv_lcell
-- Equation(s):
-- \R1~1_combout\ = (\FOLLOWING~combout\) # ((\LessThan4~0_combout\ & (\LessThan2~3_combout\ & \RUN~combout\)))

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
	dataa => \FOLLOWING~combout\,
	datab => \LessThan4~0_combout\,
	datac => \LessThan2~3_combout\,
	datad => \RUN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R1~1_combout\);

-- Location: LC_X11_Y8_N8
\R1~2\ : maxv_lcell
-- Equation(s):
-- \R1~2_combout\ = (\LessThan8~2_combout\) # (((!\LessThan7~0_combout\)) # (!\RUN~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfbf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~2_combout\,
	datab => \RUN~combout\,
	datac => \LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R1~2_combout\);

-- Location: LC_X14_Y9_N0
\Add6~5\ : maxv_lcell
-- Equation(s):
-- \Add6~5_combout\ = \ACT_2T~combout\(2) $ ((\ACT_2T~combout\(3)))
-- \Add6~7\ = CARRY((\ACT_2T~combout\(2) & (\ACT_2T~combout\(3))))
-- \Add6~7COUT1_48\ = CARRY((\ACT_2T~combout\(2) & (\ACT_2T~combout\(3))))

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
	dataa => \ACT_2T~combout\(2),
	datab => \ACT_2T~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~5_combout\,
	cout0 => \Add6~7\,
	cout1 => \Add6~7COUT1_48\);

-- Location: LC_X14_Y9_N1
\Add6~10\ : maxv_lcell
-- Equation(s):
-- \Add6~10_combout\ = (\ACT_2T~combout\(4) $ ((!\Add6~7\)))
-- \Add6~12\ = CARRY(((!\ACT_2T~combout\(4) & !\Add6~7\)))
-- \Add6~12COUT1_50\ = CARRY(((!\ACT_2T~combout\(4) & !\Add6~7COUT1_48\)))

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
	datab => \ACT_2T~combout\(4),
	cin0 => \Add6~7\,
	cin1 => \Add6~7COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~10_combout\,
	cout0 => \Add6~12\,
	cout1 => \Add6~12COUT1_50\);

-- Location: LC_X14_Y9_N2
\Add6~15\ : maxv_lcell
-- Equation(s):
-- \Add6~15_combout\ = \ACT_2T~combout\(5) $ ((((\Add6~12\))))
-- \Add6~17\ = CARRY((\ACT_2T~combout\(5)) # ((!\Add6~12\)))
-- \Add6~17COUT1_52\ = CARRY((\ACT_2T~combout\(5)) # ((!\Add6~12COUT1_50\)))

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
	dataa => \ACT_2T~combout\(5),
	cin0 => \Add6~12\,
	cin1 => \Add6~12COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~15_combout\,
	cout0 => \Add6~17\,
	cout1 => \Add6~17COUT1_52\);

-- Location: LC_X14_Y9_N3
\Add6~20\ : maxv_lcell
-- Equation(s):
-- \Add6~20_combout\ = \ACT_2T~combout\(6) $ ((((\Add6~17\))))
-- \Add6~22\ = CARRY(((!\Add6~17\)) # (!\ACT_2T~combout\(6)))
-- \Add6~22COUT1_54\ = CARRY(((!\Add6~17COUT1_52\)) # (!\ACT_2T~combout\(6)))

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
	dataa => \ACT_2T~combout\(6),
	cin0 => \Add6~17\,
	cin1 => \Add6~17COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~20_combout\,
	cout0 => \Add6~22\,
	cout1 => \Add6~22COUT1_54\);

-- Location: LC_X14_Y9_N4
\Add6~25\ : maxv_lcell
-- Equation(s):
-- \Add6~25_combout\ = (\ACT_2T~combout\(7) $ ((\Add6~22\)))
-- \Add6~27\ = CARRY(((\ACT_2T~combout\(7)) # (!\Add6~22COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ACT_2T~combout\(7),
	cin0 => \Add6~22\,
	cin1 => \Add6~22COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~25_combout\,
	cout => \Add6~27\);

-- Location: LC_X14_Y9_N5
\Add6~30\ : maxv_lcell
-- Equation(s):
-- \Add6~30_combout\ = \ACT_2T~combout\(8) $ ((((\Add6~27\))))
-- \Add6~32\ = CARRY(((!\Add6~27\)) # (!\ACT_2T~combout\(8)))
-- \Add6~32COUT1_56\ = CARRY(((!\Add6~27\)) # (!\ACT_2T~combout\(8)))

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
	dataa => \ACT_2T~combout\(8),
	cin => \Add6~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~30_combout\,
	cout0 => \Add6~32\,
	cout1 => \Add6~32COUT1_56\);

-- Location: LC_X14_Y9_N6
\Add6~35\ : maxv_lcell
-- Equation(s):
-- \Add6~35_combout\ = \ACT_2T~combout\(9) $ ((((!(!\Add6~27\ & \Add6~32\) # (\Add6~27\ & \Add6~32COUT1_56\)))))
-- \Add6~37\ = CARRY((\ACT_2T~combout\(9) & ((!\Add6~32\))))
-- \Add6~37COUT1_58\ = CARRY((\ACT_2T~combout\(9) & ((!\Add6~32COUT1_56\))))

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
	dataa => \ACT_2T~combout\(9),
	cin => \Add6~27\,
	cin0 => \Add6~32\,
	cin1 => \Add6~32COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~35_combout\,
	cout0 => \Add6~37\,
	cout1 => \Add6~37COUT1_58\);

-- Location: LC_X14_Y9_N7
\Add6~0\ : maxv_lcell
-- Equation(s):
-- \Add6~0_combout\ = \ACT_2T~combout\(9) $ (((((!\Add6~27\ & \Add6~37\) # (\Add6~27\ & \Add6~37COUT1_58\)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACT_2T~combout\(9),
	cin => \Add6~27\,
	cin0 => \Add6~37\,
	cin1 => \Add6~37COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~0_combout\);

-- Location: LC_X13_Y10_N2
\process_0~1\ : maxv_lcell
-- Equation(s):
-- \process_0~1_combout\ = (\ACT_2T~combout\(0) $ ((\Add6~0_combout\)))

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
	datab => \ACT_2T~combout\(0),
	datac => \Add6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~1_combout\);

-- Location: LC_X13_Y10_N5
\Add7~52\ : maxv_lcell
-- Equation(s):
-- \Add7~52_cout0\ = CARRY((\Add6~0_combout\ & (\process_0~1_combout\)))
-- \Add7~52COUT1_65\ = CARRY((\Add6~0_combout\ & (\process_0~1_combout\)))

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
	dataa => \Add6~0_combout\,
	datab => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~50\,
	cout0 => \Add7~52_cout0\,
	cout1 => \Add7~52COUT1_65\);

-- Location: LC_X13_Y10_N6
\Add7~0\ : maxv_lcell
-- Equation(s):
-- \Add7~0_combout\ = \Add6~0_combout\ $ (\ACT_2T~combout\(1) $ ((\Add7~52_cout0\)))
-- \Add7~2\ = CARRY((\Add6~0_combout\ $ (!\ACT_2T~combout\(1))) # (!\Add7~52_cout0\))
-- \Add7~2COUT1_67\ = CARRY((\Add6~0_combout\ $ (!\ACT_2T~combout\(1))) # (!\Add7~52COUT1_65\))

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
	dataa => \Add6~0_combout\,
	datab => \ACT_2T~combout\(1),
	cin0 => \Add7~52_cout0\,
	cin1 => \Add7~52COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~0_combout\,
	cout0 => \Add7~2\,
	cout1 => \Add7~2COUT1_67\);

-- Location: LC_X13_Y10_N7
\Add7~5\ : maxv_lcell
-- Equation(s):
-- \Add7~5_combout\ = \Add6~0_combout\ $ (\ACT_2T~combout\(2) $ ((\Add7~2\)))
-- \Add7~7\ = CARRY((!\Add7~2\ & (\Add6~0_combout\ $ (!\ACT_2T~combout\(2)))))
-- \Add7~7COUT1_69\ = CARRY((!\Add7~2COUT1_67\ & (\Add6~0_combout\ $ (!\ACT_2T~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9609",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => \ACT_2T~combout\(2),
	cin0 => \Add7~2\,
	cin1 => \Add7~2COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~5_combout\,
	cout0 => \Add7~7\,
	cout1 => \Add7~7COUT1_69\);

-- Location: LC_X13_Y10_N8
\Add7~10\ : maxv_lcell
-- Equation(s):
-- \Add7~10_combout\ = \Add6~0_combout\ $ (\Add6~5_combout\ $ ((\Add7~7\)))
-- \Add7~12\ = CARRY((\Add6~0_combout\ $ (!\Add6~5_combout\)) # (!\Add7~7\))
-- \Add7~12COUT1_71\ = CARRY((\Add6~0_combout\ $ (!\Add6~5_combout\)) # (!\Add7~7COUT1_69\))

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
	dataa => \Add6~0_combout\,
	datab => \Add6~5_combout\,
	cin0 => \Add7~7\,
	cin1 => \Add7~7COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~10_combout\,
	cout0 => \Add7~12\,
	cout1 => \Add7~12COUT1_71\);

-- Location: LC_X13_Y10_N9
\Add7~15\ : maxv_lcell
-- Equation(s):
-- \Add7~15_combout\ = \Add6~0_combout\ $ (\Add6~10_combout\ $ ((!\Add7~12\)))
-- \Add7~17\ = CARRY((!\Add7~12COUT1_71\ & (\Add6~0_combout\ $ (\Add6~10_combout\))))

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
	dataa => \Add6~0_combout\,
	datab => \Add6~10_combout\,
	cin0 => \Add7~12\,
	cin1 => \Add7~12COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~15_combout\,
	cout => \Add7~17\);

-- Location: LC_X14_Y10_N0
\Add7~20\ : maxv_lcell
-- Equation(s):
-- \Add7~20_combout\ = \Add6~0_combout\ $ (\Add6~15_combout\ $ ((\Add7~17\)))
-- \Add7~22\ = CARRY((\Add6~0_combout\ $ (!\Add6~15_combout\)) # (!\Add7~17\))
-- \Add7~22COUT1_73\ = CARRY((\Add6~0_combout\ $ (!\Add6~15_combout\)) # (!\Add7~17\))

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
	dataa => \Add6~0_combout\,
	datab => \Add6~15_combout\,
	cin => \Add7~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~20_combout\,
	cout0 => \Add7~22\,
	cout1 => \Add7~22COUT1_73\);

-- Location: LC_X14_Y10_N1
\Add7~25\ : maxv_lcell
-- Equation(s):
-- \Add7~25_combout\ = \Add6~0_combout\ $ (\Add6~20_combout\ $ ((!(!\Add7~17\ & \Add7~22\) # (\Add7~17\ & \Add7~22COUT1_73\))))
-- \Add7~27\ = CARRY((!\Add7~22\ & (\Add6~0_combout\ $ (\Add6~20_combout\))))
-- \Add7~27COUT1_75\ = CARRY((!\Add7~22COUT1_73\ & (\Add6~0_combout\ $ (\Add6~20_combout\))))

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
	dataa => \Add6~0_combout\,
	datab => \Add6~20_combout\,
	cin => \Add7~17\,
	cin0 => \Add7~22\,
	cin1 => \Add7~22COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~25_combout\,
	cout0 => \Add7~27\,
	cout1 => \Add7~27COUT1_75\);

-- Location: LC_X14_Y10_N2
\Add7~30\ : maxv_lcell
-- Equation(s):
-- \Add7~30_combout\ = \Add6~0_combout\ $ (\Add6~25_combout\ $ (((!\Add7~17\ & \Add7~27\) # (\Add7~17\ & \Add7~27COUT1_75\))))
-- \Add7~32\ = CARRY((\Add6~0_combout\ $ (!\Add6~25_combout\)) # (!\Add7~27\))
-- \Add7~32COUT1_77\ = CARRY((\Add6~0_combout\ $ (!\Add6~25_combout\)) # (!\Add7~27COUT1_75\))

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
	dataa => \Add6~0_combout\,
	datab => \Add6~25_combout\,
	cin => \Add7~17\,
	cin0 => \Add7~27\,
	cin1 => \Add7~27COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~30_combout\,
	cout0 => \Add7~32\,
	cout1 => \Add7~32COUT1_77\);

-- Location: LC_X14_Y10_N3
\Add7~35\ : maxv_lcell
-- Equation(s):
-- \Add7~35_combout\ = \Add6~0_combout\ $ (\Add6~30_combout\ $ ((!(!\Add7~17\ & \Add7~32\) # (\Add7~17\ & \Add7~32COUT1_77\))))
-- \Add7~37\ = CARRY((!\Add7~32\ & (\Add6~0_combout\ $ (\Add6~30_combout\))))
-- \Add7~37COUT1_79\ = CARRY((!\Add7~32COUT1_77\ & (\Add6~0_combout\ $ (\Add6~30_combout\))))

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
	dataa => \Add6~0_combout\,
	datab => \Add6~30_combout\,
	cin => \Add7~17\,
	cin0 => \Add7~32\,
	cin1 => \Add7~32COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~35_combout\,
	cout0 => \Add7~37\,
	cout1 => \Add7~37COUT1_79\);

-- Location: LC_X14_Y10_N4
\Add7~40\ : maxv_lcell
-- Equation(s):
-- \Add7~40_combout\ = \Add6~0_combout\ $ (\Add6~35_combout\ $ (((!\Add7~17\ & \Add7~37\) # (\Add7~17\ & \Add7~37COUT1_79\))))
-- \Add7~42\ = CARRY((\Add6~0_combout\ $ (!\Add6~35_combout\)) # (!\Add7~37COUT1_79\))

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
	dataa => \Add6~0_combout\,
	datab => \Add6~35_combout\,
	cin => \Add7~17\,
	cin0 => \Add7~37\,
	cin1 => \Add7~37COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~40_combout\,
	cout => \Add7~42\);

-- Location: LC_X14_Y10_N5
\Add7~45\ : maxv_lcell
-- Equation(s):
-- \Add7~45_combout\ = (((!\Add7~42\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add7~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~45_combout\);

-- Location: LC_X13_Y10_N4
\LessThan6~0\ : maxv_lcell
-- Equation(s):
-- \LessThan6~0_combout\ = (((!\Add7~0_combout\) # (!\Add7~5_combout\)) # (!\Add7~15_combout\)) # (!\Add7~10_combout\)

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
	dataa => \Add7~10_combout\,
	datab => \Add7~15_combout\,
	datac => \Add7~5_combout\,
	datad => \Add7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~0_combout\);

-- Location: LC_X14_Y10_N7
\LessThan6~1\ : maxv_lcell
-- Equation(s):
-- \LessThan6~1_combout\ = (!\Add7~35_combout\ & (!\Add7~30_combout\ & (!\Add7~20_combout\ & !\Add7~25_combout\)))

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
	dataa => \Add7~35_combout\,
	datab => \Add7~30_combout\,
	datac => \Add7~20_combout\,
	datad => \Add7~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~1_combout\);

-- Location: LC_X14_Y10_N8
\LessThan6~2\ : maxv_lcell
-- Equation(s):
-- \LessThan6~2_combout\ = (!\Add7~45_combout\ & (\LessThan6~0_combout\ & (!\Add7~40_combout\ & \LessThan6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~45_combout\,
	datab => \LessThan6~0_combout\,
	datac => \Add7~40_combout\,
	datad => \LessThan6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~2_combout\);

-- Location: LC_X11_Y8_N7
\R1~3\ : maxv_lcell
-- Equation(s):
-- \R1~3_combout\ = (\R1~0_combout\ & (((\R1~1_combout\) # (\LessThan6~2_combout\)))) # (!\R1~0_combout\ & (!\R1~2_combout\ & (!\R1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdc1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1~2_combout\,
	datab => \R1~0_combout\,
	datac => \R1~1_combout\,
	datad => \LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R1~3_combout\);

-- Location: LC_X9_Y10_N5
\LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \LessThan0~1_combout\ = (\CORRECTN~combout\(6)) # (((\CORRECTN~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fafa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CORRECTN~combout\(6),
	datac => \CORRECTN~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~1_combout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CORRECTN[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CORRECTN(0),
	combout => \CORRECTN~combout\(0));

-- Location: LC_X9_Y10_N2
\LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = (\CORRECTN~combout\(3) & ((\CORRECTN~combout\(2)) # ((\CORRECTN~combout\(0) & \CORRECTN~combout\(1)))))

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
	dataa => \CORRECTN~combout\(0),
	datab => \CORRECTN~combout\(1),
	datac => \CORRECTN~combout\(3),
	datad => \CORRECTN~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X9_Y10_N4
\LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \LessThan0~2_combout\ = (!\CORRECTN~combout\(7) & ((\LessThan0~1_combout\) # ((\CORRECTN~combout\(4)) # (\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \CORRECTN~combout\(4),
	datac => \CORRECTN~combout\(7),
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~2_combout\);

-- Location: LC_X15_Y9_N0
\Add4~42\ : maxv_lcell
-- Equation(s):
-- \Add4~42_cout0\ = CARRY(((\ACT_2T~combout\(2))))
-- \Add4~42COUT1_54\ = CARRY(((\ACT_2T~combout\(2))))

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
	datab => \ACT_2T~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~40\,
	cout0 => \Add4~42_cout0\,
	cout1 => \Add4~42COUT1_54\);

-- Location: LC_X15_Y9_N1
\Add4~5\ : maxv_lcell
-- Equation(s):
-- \Add4~5_combout\ = (\ACT_2T~combout\(3) $ ((!\Add4~42_cout0\)))
-- \Add4~7\ = CARRY(((!\ACT_2T~combout\(3) & !\Add4~42_cout0\)))
-- \Add4~7COUT1_56\ = CARRY(((!\ACT_2T~combout\(3) & !\Add4~42COUT1_54\)))

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
	datab => \ACT_2T~combout\(3),
	cin0 => \Add4~42_cout0\,
	cin1 => \Add4~42COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~5_combout\,
	cout0 => \Add4~7\,
	cout1 => \Add4~7COUT1_56\);

-- Location: LC_X15_Y9_N2
\Add4~10\ : maxv_lcell
-- Equation(s):
-- \Add4~10_combout\ = \ACT_2T~combout\(4) $ ((((!\Add4~7\))))
-- \Add4~12\ = CARRY((\ACT_2T~combout\(4) & ((!\Add4~7\))))
-- \Add4~12COUT1_58\ = CARRY((\ACT_2T~combout\(4) & ((!\Add4~7COUT1_56\))))

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
	dataa => \ACT_2T~combout\(4),
	cin0 => \Add4~7\,
	cin1 => \Add4~7COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~10_combout\,
	cout0 => \Add4~12\,
	cout1 => \Add4~12COUT1_58\);

-- Location: LC_X15_Y9_N3
\Add4~15\ : maxv_lcell
-- Equation(s):
-- \Add4~15_combout\ = \ACT_2T~combout\(5) $ ((((\Add4~12\))))
-- \Add4~17\ = CARRY(((!\Add4~12\)) # (!\ACT_2T~combout\(5)))
-- \Add4~17COUT1_60\ = CARRY(((!\Add4~12COUT1_58\)) # (!\ACT_2T~combout\(5)))

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
	dataa => \ACT_2T~combout\(5),
	cin0 => \Add4~12\,
	cin1 => \Add4~12COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~15_combout\,
	cout0 => \Add4~17\,
	cout1 => \Add4~17COUT1_60\);

-- Location: LC_X15_Y9_N4
\Add4~20\ : maxv_lcell
-- Equation(s):
-- \Add4~20_combout\ = \ACT_2T~combout\(6) $ ((((\Add4~17\))))
-- \Add4~22\ = CARRY((\ACT_2T~combout\(6)) # ((!\Add4~17COUT1_60\)))

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
	dataa => \ACT_2T~combout\(6),
	cin0 => \Add4~17\,
	cin1 => \Add4~17COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~20_combout\,
	cout => \Add4~22\);

-- Location: LC_X15_Y9_N5
\Add4~25\ : maxv_lcell
-- Equation(s):
-- \Add4~25_combout\ = (\ACT_2T~combout\(7) $ ((\Add4~22\)))
-- \Add4~27\ = CARRY(((!\Add4~22\) # (!\ACT_2T~combout\(7))))
-- \Add4~27COUT1_62\ = CARRY(((!\Add4~22\) # (!\ACT_2T~combout\(7))))

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
	datab => \ACT_2T~combout\(7),
	cin => \Add4~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~25_combout\,
	cout0 => \Add4~27\,
	cout1 => \Add4~27COUT1_62\);

-- Location: LC_X15_Y9_N6
\Add4~30\ : maxv_lcell
-- Equation(s):
-- \Add4~30_combout\ = \ACT_2T~combout\(8) $ (((((!\Add4~22\ & \Add4~27\) # (\Add4~22\ & \Add4~27COUT1_62\)))))
-- \Add4~32\ = CARRY((\ACT_2T~combout\(8)) # ((!\Add4~27\)))
-- \Add4~32COUT1_64\ = CARRY((\ACT_2T~combout\(8)) # ((!\Add4~27COUT1_62\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACT_2T~combout\(8),
	cin => \Add4~22\,
	cin0 => \Add4~27\,
	cin1 => \Add4~27COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~30_combout\,
	cout0 => \Add4~32\,
	cout1 => \Add4~32COUT1_64\);

-- Location: LC_X15_Y9_N7
\Add4~35\ : maxv_lcell
-- Equation(s):
-- \Add4~35_combout\ = \ACT_2T~combout\(9) $ ((((!(!\Add4~22\ & \Add4~32\) # (\Add4~22\ & \Add4~32COUT1_64\)))))
-- \Add4~37\ = CARRY((!\ACT_2T~combout\(9) & ((!\Add4~32\))))
-- \Add4~37COUT1_66\ = CARRY((!\ACT_2T~combout\(9) & ((!\Add4~32COUT1_64\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ACT_2T~combout\(9),
	cin => \Add4~22\,
	cin0 => \Add4~32\,
	cin1 => \Add4~32COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~35_combout\,
	cout0 => \Add4~37\,
	cout1 => \Add4~37COUT1_66\);

-- Location: LC_X15_Y9_N8
\Add4~0\ : maxv_lcell
-- Equation(s):
-- \Add4~0_combout\ = (((!\Add4~22\ & \Add4~37\) # (\Add4~22\ & \Add4~37COUT1_66\) $ (\ACT_2T~combout\(9))))

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
	datad => \ACT_2T~combout\(9),
	cin => \Add4~22\,
	cin0 => \Add4~37\,
	cin1 => \Add4~37COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~0_combout\);

-- Location: LC_X14_Y8_N2
\process_0~2\ : maxv_lcell
-- Equation(s):
-- \process_0~2_combout\ = (\ACT_2T~combout\(0) $ (((\Add4~0_combout\))))

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
	datab => \ACT_2T~combout\(0),
	datad => \Add4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~2_combout\);

-- Location: LC_X14_Y8_N5
\Add5~52\ : maxv_lcell
-- Equation(s):
-- \Add5~52_cout0\ = CARRY((\Add4~0_combout\ & (\process_0~2_combout\)))
-- \Add5~52COUT1_65\ = CARRY((\Add4~0_combout\ & (\process_0~2_combout\)))

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
	dataa => \Add4~0_combout\,
	datab => \process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~50\,
	cout0 => \Add5~52_cout0\,
	cout1 => \Add5~52COUT1_65\);

-- Location: LC_X14_Y8_N6
\Add5~0\ : maxv_lcell
-- Equation(s):
-- \Add5~0_combout\ = \Add4~0_combout\ $ (\ACT_2T~combout\(1) $ ((\Add5~52_cout0\)))
-- \Add5~2\ = CARRY((\Add4~0_combout\ $ (!\ACT_2T~combout\(1))) # (!\Add5~52_cout0\))
-- \Add5~2COUT1_67\ = CARRY((\Add4~0_combout\ $ (!\ACT_2T~combout\(1))) # (!\Add5~52COUT1_65\))

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
	dataa => \Add4~0_combout\,
	datab => \ACT_2T~combout\(1),
	cin0 => \Add5~52_cout0\,
	cin1 => \Add5~52COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~0_combout\,
	cout0 => \Add5~2\,
	cout1 => \Add5~2COUT1_67\);

-- Location: LC_X14_Y8_N7
\Add5~5\ : maxv_lcell
-- Equation(s):
-- \Add5~5_combout\ = \Add4~0_combout\ $ (\ACT_2T~combout\(2) $ ((\Add5~2\)))
-- \Add5~7\ = CARRY((!\Add5~2\ & (\Add4~0_combout\ $ (!\ACT_2T~combout\(2)))))
-- \Add5~7COUT1_69\ = CARRY((!\Add5~2COUT1_67\ & (\Add4~0_combout\ $ (!\ACT_2T~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9609",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \ACT_2T~combout\(2),
	cin0 => \Add5~2\,
	cin1 => \Add5~2COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~5_combout\,
	cout0 => \Add5~7\,
	cout1 => \Add5~7COUT1_69\);

-- Location: LC_X14_Y8_N8
\Add5~10\ : maxv_lcell
-- Equation(s):
-- \Add5~10_combout\ = \Add4~0_combout\ $ (\Add4~5_combout\ $ ((\Add5~7\)))
-- \Add5~12\ = CARRY((\Add4~0_combout\ $ (!\Add4~5_combout\)) # (!\Add5~7\))
-- \Add5~12COUT1_71\ = CARRY((\Add4~0_combout\ $ (!\Add4~5_combout\)) # (!\Add5~7COUT1_69\))

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
	dataa => \Add4~0_combout\,
	datab => \Add4~5_combout\,
	cin0 => \Add5~7\,
	cin1 => \Add5~7COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~10_combout\,
	cout0 => \Add5~12\,
	cout1 => \Add5~12COUT1_71\);

-- Location: LC_X14_Y8_N9
\Add5~15\ : maxv_lcell
-- Equation(s):
-- \Add5~15_combout\ = \Add4~0_combout\ $ (\Add4~10_combout\ $ ((!\Add5~12\)))
-- \Add5~17\ = CARRY((!\Add5~12COUT1_71\ & (\Add4~0_combout\ $ (\Add4~10_combout\))))

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
	dataa => \Add4~0_combout\,
	datab => \Add4~10_combout\,
	cin0 => \Add5~12\,
	cin1 => \Add5~12COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~15_combout\,
	cout => \Add5~17\);

-- Location: LC_X15_Y8_N0
\Add5~20\ : maxv_lcell
-- Equation(s):
-- \Add5~20_combout\ = \Add4~15_combout\ $ (\Add4~0_combout\ $ ((\Add5~17\)))
-- \Add5~22\ = CARRY((\Add4~15_combout\ $ (!\Add4~0_combout\)) # (!\Add5~17\))
-- \Add5~22COUT1_73\ = CARRY((\Add4~15_combout\ $ (!\Add4~0_combout\)) # (!\Add5~17\))

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
	dataa => \Add4~15_combout\,
	datab => \Add4~0_combout\,
	cin => \Add5~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~20_combout\,
	cout0 => \Add5~22\,
	cout1 => \Add5~22COUT1_73\);

-- Location: LC_X15_Y8_N1
\Add5~25\ : maxv_lcell
-- Equation(s):
-- \Add5~25_combout\ = \Add4~20_combout\ $ (\Add4~0_combout\ $ ((!(!\Add5~17\ & \Add5~22\) # (\Add5~17\ & \Add5~22COUT1_73\))))
-- \Add5~27\ = CARRY((!\Add5~22\ & (\Add4~20_combout\ $ (\Add4~0_combout\))))
-- \Add5~27COUT1_75\ = CARRY((!\Add5~22COUT1_73\ & (\Add4~20_combout\ $ (\Add4~0_combout\))))

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
	dataa => \Add4~20_combout\,
	datab => \Add4~0_combout\,
	cin => \Add5~17\,
	cin0 => \Add5~22\,
	cin1 => \Add5~22COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~25_combout\,
	cout0 => \Add5~27\,
	cout1 => \Add5~27COUT1_75\);

-- Location: LC_X15_Y8_N2
\Add5~30\ : maxv_lcell
-- Equation(s):
-- \Add5~30_combout\ = \Add4~25_combout\ $ (\Add4~0_combout\ $ (((!\Add5~17\ & \Add5~27\) # (\Add5~17\ & \Add5~27COUT1_75\))))
-- \Add5~32\ = CARRY((\Add4~25_combout\ $ (!\Add4~0_combout\)) # (!\Add5~27\))
-- \Add5~32COUT1_77\ = CARRY((\Add4~25_combout\ $ (!\Add4~0_combout\)) # (!\Add5~27COUT1_75\))

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
	dataa => \Add4~25_combout\,
	datab => \Add4~0_combout\,
	cin => \Add5~17\,
	cin0 => \Add5~27\,
	cin1 => \Add5~27COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~30_combout\,
	cout0 => \Add5~32\,
	cout1 => \Add5~32COUT1_77\);

-- Location: LC_X15_Y8_N3
\Add5~35\ : maxv_lcell
-- Equation(s):
-- \Add5~35_combout\ = \Add4~30_combout\ $ (\Add4~0_combout\ $ ((!(!\Add5~17\ & \Add5~32\) # (\Add5~17\ & \Add5~32COUT1_77\))))
-- \Add5~37\ = CARRY((!\Add5~32\ & (\Add4~30_combout\ $ (\Add4~0_combout\))))
-- \Add5~37COUT1_79\ = CARRY((!\Add5~32COUT1_77\ & (\Add4~30_combout\ $ (\Add4~0_combout\))))

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
	dataa => \Add4~30_combout\,
	datab => \Add4~0_combout\,
	cin => \Add5~17\,
	cin0 => \Add5~32\,
	cin1 => \Add5~32COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~35_combout\,
	cout0 => \Add5~37\,
	cout1 => \Add5~37COUT1_79\);

-- Location: LC_X15_Y8_N8
\LessThan5~1\ : maxv_lcell
-- Equation(s):
-- \LessThan5~1_combout\ = (!\Add5~35_combout\ & (!\Add5~30_combout\ & (!\Add5~20_combout\ & !\Add5~25_combout\)))

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
	dataa => \Add5~35_combout\,
	datab => \Add5~30_combout\,
	datac => \Add5~20_combout\,
	datad => \Add5~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~1_combout\);

-- Location: LC_X14_Y8_N4
\LessThan5~0\ : maxv_lcell
-- Equation(s):
-- \LessThan5~0_combout\ = (((!\Add5~0_combout\) # (!\Add5~5_combout\)) # (!\Add5~15_combout\)) # (!\Add5~10_combout\)

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
	dataa => \Add5~10_combout\,
	datab => \Add5~15_combout\,
	datac => \Add5~5_combout\,
	datad => \Add5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~0_combout\);

-- Location: LC_X15_Y8_N4
\Add5~40\ : maxv_lcell
-- Equation(s):
-- \Add5~40_combout\ = \Add4~35_combout\ $ (\Add4~0_combout\ $ (((!\Add5~17\ & \Add5~37\) # (\Add5~17\ & \Add5~37COUT1_79\))))
-- \Add5~42\ = CARRY((\Add4~35_combout\ $ (!\Add4~0_combout\)) # (!\Add5~37COUT1_79\))

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
	dataa => \Add4~35_combout\,
	datab => \Add4~0_combout\,
	cin => \Add5~17\,
	cin0 => \Add5~37\,
	cin1 => \Add5~37COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~40_combout\,
	cout => \Add5~42\);

-- Location: LC_X15_Y8_N5
\Add5~45\ : maxv_lcell
-- Equation(s):
-- \Add5~45_combout\ = (((!\Add5~42\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add5~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~45_combout\);

-- Location: LC_X15_Y8_N9
\LessThan5~2\ : maxv_lcell
-- Equation(s):
-- \LessThan5~2_combout\ = (\LessThan5~1_combout\ & (\LessThan5~0_combout\ & (!\Add5~45_combout\ & !\Add5~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~1_combout\,
	datab => \LessThan5~0_combout\,
	datac => \Add5~45_combout\,
	datad => \Add5~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~2_combout\);

-- Location: LC_X11_Y8_N2
\R1~reg0\ : maxv_lcell
-- Equation(s):
-- \R1~reg0_regout\ = DFFEAS((\R1~1_combout\ & ((\R1~3_combout\ & ((\LessThan5~2_combout\))) # (!\R1~3_combout\ & (!\LessThan0~2_combout\)))) # (!\R1~1_combout\ & (\R1~3_combout\)), GLOBAL(\CLK~combout\), VCC, , !\L1~5\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce46",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \R1~1_combout\,
	datab => \R1~3_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan5~2_combout\,
	aclr => GND,
	ena => \ALT_INV_L1~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R1~reg0_regout\);

-- Location: LC_X11_Y8_N9
\R2~0\ : maxv_lcell
-- Equation(s):
-- \R2~0_combout\ = (\RUN~combout\ & ((\LessThan8~2_combout\) # ((!\LessThan7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~2_combout\,
	datab => \RUN~combout\,
	datac => \LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R2~0_combout\);

-- Location: LC_X11_Y8_N6
\R2~1\ : maxv_lcell
-- Equation(s):
-- \R2~1_combout\ = (\R1~1_combout\ & ((\R1~0_combout\) # ((\LessThan0~2_combout\)))) # (!\R1~1_combout\ & (!\R1~0_combout\ & ((\R2~0_combout\))))

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
	dataa => \R1~1_combout\,
	datab => \R1~0_combout\,
	datac => \LessThan0~2_combout\,
	datad => \R2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R2~1_combout\);

-- Location: LC_X11_Y8_N4
\R2~reg0\ : maxv_lcell
-- Equation(s):
-- \R2~reg0_regout\ = DFFEAS((\R1~0_combout\ & ((\R2~1_combout\ & (!\LessThan5~2_combout\)) # (!\R2~1_combout\ & ((!\LessThan6~2_combout\))))) # (!\R1~0_combout\ & (((\R2~1_combout\)))), GLOBAL(\CLK~combout\), VCC, , !\L1~5\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "707c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \LessThan5~2_combout\,
	datab => \R1~0_combout\,
	datac => \R2~1_combout\,
	datad => \LessThan6~2_combout\,
	aclr => GND,
	ena => \ALT_INV_L1~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R2~reg0_regout\);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \L1~reg0_regout\,
	oe => VCC,
	padio => ww_L1);

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \L2~reg0_regout\,
	oe => VCC,
	padio => ww_L2);

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\R1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \R1~reg0_regout\,
	oe => VCC,
	padio => ww_R1);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\R2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \R2~reg0_regout\,
	oe => VCC,
	padio => ww_R2);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\NEXTPT~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \NEXTPT~reg0_regout\,
	oe => VCC,
	padio => ww_NEXTPT);
END structure;


