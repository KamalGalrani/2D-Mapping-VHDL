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

-- DATE "04/10/2014 11:51:01"

-- 
-- Device: Altera 5M570ZT144A5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	ErrorCalculation IS
    PORT (
	L0_R1 : IN std_logic;
	ADC_R : IN std_logic_vector(7 DOWNTO 0);
	ADC_L : IN std_logic_vector(7 DOWNTO 0);
	CORRECTN : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END ErrorCalculation;

-- Design Ports Information
-- CORRECTN[0]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CORRECTN[1]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CORRECTN[2]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CORRECTN[3]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CORRECTN[4]	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CORRECTN[5]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CORRECTN[6]	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CORRECTN[7]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ADC_R[0]	=>  Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_R[1]	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_R[3]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_R[5]	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_R[2]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_R[6]	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_R[4]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_R[7]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_L[0]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_L[1]	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_L[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_L[5]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_L[2]	=>  Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_L[6]	=>  Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_L[4]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_L[7]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- L0_R1	=>  Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ErrorCalculation IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_L0_R1 : std_logic;
SIGNAL ww_ADC_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ADC_L : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CORRECTN : std_logic_vector(7 DOWNTO 0);
SIGNAL \L_ADC|Mux10~13_combout\ : std_logic;
SIGNAL \L_ADC|Mux10~14_combout\ : std_logic;
SIGNAL \L_ADC|Mux10~15_combout\ : std_logic;
SIGNAL \L_ADC|Mux10~16_combout\ : std_logic;
SIGNAL \L_ADC|Mux10~12_combout\ : std_logic;
SIGNAL \L_ADC|Mux10~17_combout\ : std_logic;
SIGNAL \L_ADC|Mux10~6_combout\ : std_logic;
SIGNAL \L_ADC|Mux10~5_combout\ : std_logic;
SIGNAL \L_ADC|Mux10~8_combout\ : std_logic;
SIGNAL \L_ADC|Mux10~7_combout\ : std_logic;
SIGNAL \L_ADC|Mux10~9_combout\ : std_logic;
SIGNAL \L_ADC|Mux10~1_combout\ : std_logic;
SIGNAL \L_ADC|Mux10~0_combout\ : std_logic;
SIGNAL \L_ADC|Mux10~3_combout\ : std_logic;
SIGNAL \L_ADC|Mux10~2_combout\ : std_logic;
SIGNAL \L_ADC|Mux10~4_combout\ : std_logic;
SIGNAL \L_ADC|Mux10~11_combout\ : std_logic;
SIGNAL \L_ADC|Mux10~10_combout\ : std_logic;
SIGNAL \L_ADC|Mux10~18_combout\ : std_logic;
SIGNAL \L_ADC|Mux10~19_combout\ : std_logic;
SIGNAL \R_ADC|Mux10~13_combout\ : std_logic;
SIGNAL \R_ADC|Mux10~14_combout\ : std_logic;
SIGNAL \R_ADC|Mux10~15_combout\ : std_logic;
SIGNAL \R_ADC|Mux10~16_combout\ : std_logic;
SIGNAL \R_ADC|Mux10~12_combout\ : std_logic;
SIGNAL \R_ADC|Mux10~18_combout\ : std_logic;
SIGNAL \R_ADC|Mux10~17_combout\ : std_logic;
SIGNAL \R_ADC|Mux10~5_combout\ : std_logic;
SIGNAL \R_ADC|Mux10~6_combout\ : std_logic;
SIGNAL \R_ADC|Mux10~8_combout\ : std_logic;
SIGNAL \R_ADC|Mux10~7_combout\ : std_logic;
SIGNAL \R_ADC|Mux10~9_combout\ : std_logic;
SIGNAL \R_ADC|Mux10~1_combout\ : std_logic;
SIGNAL \R_ADC|Mux10~0_combout\ : std_logic;
SIGNAL \R_ADC|Mux10~2_combout\ : std_logic;
SIGNAL \R_ADC|Mux10~3_combout\ : std_logic;
SIGNAL \R_ADC|Mux10~4_combout\ : std_logic;
SIGNAL \R_ADC|Mux10~10_combout\ : std_logic;
SIGNAL \R_ADC|Mux10~11_combout\ : std_logic;
SIGNAL \R_ADC|Mux10~19_combout\ : std_logic;
SIGNAL \L0_R1~combout\ : std_logic;
SIGNAL \CORRECTN~0_combout\ : std_logic;
SIGNAL \L_ADC|Mux9~1_combout\ : std_logic;
SIGNAL \L_ADC|Mux9~0_combout\ : std_logic;
SIGNAL \L_ADC|Mux9~3_combout\ : std_logic;
SIGNAL \L_ADC|Mux9~2_combout\ : std_logic;
SIGNAL \L_ADC|Mux9~4_combout\ : std_logic;
SIGNAL \L_ADC|Mux9~6_combout\ : std_logic;
SIGNAL \L_ADC|Mux9~7_combout\ : std_logic;
SIGNAL \L_ADC|Mux9~8_combout\ : std_logic;
SIGNAL \L_ADC|Mux9~5_combout\ : std_logic;
SIGNAL \L_ADC|Mux9~9_combout\ : std_logic;
SIGNAL \L_ADC|Mux9~11_combout\ : std_logic;
SIGNAL \L_ADC|Mux9~14_combout\ : std_logic;
SIGNAL \L_ADC|Mux9~13_combout\ : std_logic;
SIGNAL \L_ADC|Mux9~15_combout\ : std_logic;
SIGNAL \L_ADC|Mux9~16_combout\ : std_logic;
SIGNAL \L_ADC|Mux9~12_combout\ : std_logic;
SIGNAL \L_ADC|Mux9~17_combout\ : std_logic;
SIGNAL \L_ADC|Mux9~18_combout\ : std_logic;
SIGNAL \L_ADC|Mux9~10_combout\ : std_logic;
SIGNAL \L_ADC|Mux9~19_combout\ : std_logic;
SIGNAL \R_ADC|Mux9~12_combout\ : std_logic;
SIGNAL \R_ADC|Mux9~14_combout\ : std_logic;
SIGNAL \R_ADC|Mux9~13_combout\ : std_logic;
SIGNAL \R_ADC|Mux9~16_combout\ : std_logic;
SIGNAL \R_ADC|Mux9~15_combout\ : std_logic;
SIGNAL \R_ADC|Mux9~18_combout\ : std_logic;
SIGNAL \R_ADC|Mux9~0_combout\ : std_logic;
SIGNAL \R_ADC|Mux9~1_combout\ : std_logic;
SIGNAL \R_ADC|Mux9~3_combout\ : std_logic;
SIGNAL \R_ADC|Mux9~2_combout\ : std_logic;
SIGNAL \R_ADC|Mux9~4_combout\ : std_logic;
SIGNAL \R_ADC|Mux9~5_combout\ : std_logic;
SIGNAL \R_ADC|Mux9~6_combout\ : std_logic;
SIGNAL \R_ADC|Mux9~8_combout\ : std_logic;
SIGNAL \R_ADC|Mux9~7_combout\ : std_logic;
SIGNAL \R_ADC|Mux9~9_combout\ : std_logic;
SIGNAL \R_ADC|Mux9~11_combout\ : std_logic;
SIGNAL \R_ADC|Mux9~17_combout\ : std_logic;
SIGNAL \R_ADC|Mux9~10_combout\ : std_logic;
SIGNAL \R_ADC|Mux9~19_combout\ : std_logic;
SIGNAL \dist[1]~0_combout\ : std_logic;
SIGNAL \R_ADC|Mux8~17_combout\ : std_logic;
SIGNAL \R_ADC|Mux8~16_combout\ : std_logic;
SIGNAL \R_ADC|Mux8~20_combout\ : std_logic;
SIGNAL \R_ADC|Mux8~18_combout\ : std_logic;
SIGNAL \R_ADC|Mux8~21_combout\ : std_logic;
SIGNAL \R_ADC|Mux8~0_combout\ : std_logic;
SIGNAL \R_ADC|Mux8~4_combout\ : std_logic;
SIGNAL \R_ADC|Mux8~1_combout\ : std_logic;
SIGNAL \R_ADC|Mux8~2_combout\ : std_logic;
SIGNAL \R_ADC|Mux8~3_combout\ : std_logic;
SIGNAL \R_ADC|Mux8~5_combout\ : std_logic;
SIGNAL \R_ADC|Mux8~13_combout\ : std_logic;
SIGNAL \R_ADC|Mux8~10_combout\ : std_logic;
SIGNAL \R_ADC|Mux8~11_combout\ : std_logic;
SIGNAL \R_ADC|Mux8~12_combout\ : std_logic;
SIGNAL \R_ADC|Mux8~9_combout\ : std_logic;
SIGNAL \R_ADC|Mux8~14_combout\ : std_logic;
SIGNAL \R_ADC|Mux8~7_combout\ : std_logic;
SIGNAL \R_ADC|Mux8~6_combout\ : std_logic;
SIGNAL \R_ADC|Mux8~8_combout\ : std_logic;
SIGNAL \R_ADC|Mux8~15_combout\ : std_logic;
SIGNAL \R_ADC|Mux8~19_combout\ : std_logic;
SIGNAL \L_ADC|Mux8~0_combout\ : std_logic;
SIGNAL \L_ADC|Mux8~6_combout\ : std_logic;
SIGNAL \L_ADC|Mux8~4_combout\ : std_logic;
SIGNAL \L_ADC|Mux8~2_combout\ : std_logic;
SIGNAL \L_ADC|Mux8~7_combout\ : std_logic;
SIGNAL \L_ADC|Mux8~8_combout\ : std_logic;
SIGNAL \L_ADC|Mux8~11_combout\ : std_logic;
SIGNAL \L_ADC|Mux8~10_combout\ : std_logic;
SIGNAL \L_ADC|Mux8~12_combout\ : std_logic;
SIGNAL \L_ADC|Mux8~13_combout\ : std_logic;
SIGNAL \L_ADC|Mux8~9_combout\ : std_logic;
SIGNAL \L_ADC|Mux8~14_combout\ : std_logic;
SIGNAL \L_ADC|Mux8~15_combout\ : std_logic;
SIGNAL \L_ADC|Mux8~1_combout\ : std_logic;
SIGNAL \L_ADC|Mux8~3_combout\ : std_logic;
SIGNAL \L_ADC|Mux8~5_combout\ : std_logic;
SIGNAL \L_ADC|Mux8~18_combout\ : std_logic;
SIGNAL \L_ADC|Mux8~16_combout\ : std_logic;
SIGNAL \L_ADC|Mux8~17_combout\ : std_logic;
SIGNAL \L_ADC|Mux8~20_combout\ : std_logic;
SIGNAL \L_ADC|Mux8~21_combout\ : std_logic;
SIGNAL \L_ADC|Mux8~19_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \dist[2]~1_combout\ : std_logic;
SIGNAL \R_ADC|Mux7~6_combout\ : std_logic;
SIGNAL \R_ADC|Mux7~5_combout\ : std_logic;
SIGNAL \R_ADC|Mux7~7_combout\ : std_logic;
SIGNAL \R_ADC|Mux7~8_combout\ : std_logic;
SIGNAL \R_ADC|Mux7~9_combout\ : std_logic;
SIGNAL \R_ADC|Mux7~11_combout\ : std_logic;
SIGNAL \R_ADC|Mux7~10_combout\ : std_logic;
SIGNAL \R_ADC|Mux7~12_combout\ : std_logic;
SIGNAL \R_ADC|Mux7~13_combout\ : std_logic;
SIGNAL \R_ADC|Mux7~1_combout\ : std_logic;
SIGNAL \R_ADC|Mux7~0_combout\ : std_logic;
SIGNAL \R_ADC|Mux7~3_combout\ : std_logic;
SIGNAL \R_ADC|Mux7~2_combout\ : std_logic;
SIGNAL \R_ADC|Mux7~4_combout\ : std_logic;
SIGNAL \R_ADC|Mux7~15_combout\ : std_logic;
SIGNAL \R_ADC|Mux7~14_combout\ : std_logic;
SIGNAL \R_ADC|Mux7~17_combout\ : std_logic;
SIGNAL \R_ADC|Mux7~16_combout\ : std_logic;
SIGNAL \R_ADC|Mux7~18_combout\ : std_logic;
SIGNAL \R_ADC|Mux7~19_combout\ : std_logic;
SIGNAL \L_ADC|Mux7~5_combout\ : std_logic;
SIGNAL \L_ADC|Mux7~6_combout\ : std_logic;
SIGNAL \L_ADC|Mux7~7_combout\ : std_logic;
SIGNAL \L_ADC|Mux7~9_combout\ : std_logic;
SIGNAL \L_ADC|Mux7~8_combout\ : std_logic;
SIGNAL \L_ADC|Mux7~11_combout\ : std_logic;
SIGNAL \L_ADC|Mux7~10_combout\ : std_logic;
SIGNAL \L_ADC|Mux7~12_combout\ : std_logic;
SIGNAL \L_ADC|Mux7~13_combout\ : std_logic;
SIGNAL \L_ADC|Mux7~1_combout\ : std_logic;
SIGNAL \L_ADC|Mux7~0_combout\ : std_logic;
SIGNAL \L_ADC|Mux7~3_combout\ : std_logic;
SIGNAL \L_ADC|Mux7~2_combout\ : std_logic;
SIGNAL \L_ADC|Mux7~4_combout\ : std_logic;
SIGNAL \L_ADC|Mux7~15_combout\ : std_logic;
SIGNAL \L_ADC|Mux7~14_combout\ : std_logic;
SIGNAL \L_ADC|Mux7~17_combout\ : std_logic;
SIGNAL \L_ADC|Mux7~16_combout\ : std_logic;
SIGNAL \L_ADC|Mux7~18_combout\ : std_logic;
SIGNAL \L_ADC|Mux7~19_combout\ : std_logic;
SIGNAL \dist[3]~2_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \L_ADC|Mux6~12_combout\ : std_logic;
SIGNAL \L_ADC|Mux6~13_combout\ : std_logic;
SIGNAL \L_ADC|Mux6~15_combout\ : std_logic;
SIGNAL \L_ADC|Mux6~14_combout\ : std_logic;
SIGNAL \L_ADC|Mux6~16_combout\ : std_logic;
SIGNAL \L_ADC|Mux6~6_combout\ : std_logic;
SIGNAL \L_ADC|Mux6~8_combout\ : std_logic;
SIGNAL \L_ADC|Mux6~7_combout\ : std_logic;
SIGNAL \L_ADC|Mux6~9_combout\ : std_logic;
SIGNAL \L_ADC|Mux6~10_combout\ : std_logic;
SIGNAL \L_ADC|Mux6~11_combout\ : std_logic;
SIGNAL \L_ADC|Mux6~17_combout\ : std_logic;
SIGNAL \L_ADC|Mux6~18_combout\ : std_logic;
SIGNAL \L_ADC|Mux6~19_combout\ : std_logic;
SIGNAL \L_ADC|Mux6~21_combout\ : std_logic;
SIGNAL \L_ADC|Mux6~20_combout\ : std_logic;
SIGNAL \L_ADC|Mux6~22_combout\ : std_logic;
SIGNAL \L_ADC|Mux6~1_combout\ : std_logic;
SIGNAL \L_ADC|Mux6~2_combout\ : std_logic;
SIGNAL \L_ADC|Mux6~3_combout\ : std_logic;
SIGNAL \L_ADC|Mux6~4_combout\ : std_logic;
SIGNAL \L_ADC|Mux6~0_combout\ : std_logic;
SIGNAL \L_ADC|Mux6~5_combout\ : std_logic;
SIGNAL \L_ADC|Mux6~23_combout\ : std_logic;
SIGNAL \R_ADC|Mux6~13_combout\ : std_logic;
SIGNAL \R_ADC|Mux6~12_combout\ : std_logic;
SIGNAL \R_ADC|Mux6~15_combout\ : std_logic;
SIGNAL \R_ADC|Mux6~14_combout\ : std_logic;
SIGNAL \R_ADC|Mux6~16_combout\ : std_logic;
SIGNAL \R_ADC|Mux6~7_combout\ : std_logic;
SIGNAL \R_ADC|Mux6~8_combout\ : std_logic;
SIGNAL \R_ADC|Mux6~9_combout\ : std_logic;
SIGNAL \R_ADC|Mux6~10_combout\ : std_logic;
SIGNAL \R_ADC|Mux6~6_combout\ : std_logic;
SIGNAL \R_ADC|Mux6~11_combout\ : std_logic;
SIGNAL \R_ADC|Mux6~17_combout\ : std_logic;
SIGNAL \R_ADC|Mux6~19_combout\ : std_logic;
SIGNAL \R_ADC|Mux6~18_combout\ : std_logic;
SIGNAL \R_ADC|Mux6~21_combout\ : std_logic;
SIGNAL \R_ADC|Mux6~20_combout\ : std_logic;
SIGNAL \R_ADC|Mux6~22_combout\ : std_logic;
SIGNAL \R_ADC|Mux6~4_combout\ : std_logic;
SIGNAL \R_ADC|Mux6~0_combout\ : std_logic;
SIGNAL \R_ADC|Mux6~2_combout\ : std_logic;
SIGNAL \R_ADC|Mux6~1_combout\ : std_logic;
SIGNAL \R_ADC|Mux6~3_combout\ : std_logic;
SIGNAL \R_ADC|Mux6~5_combout\ : std_logic;
SIGNAL \R_ADC|Mux6~23_combout\ : std_logic;
SIGNAL \dist[4]~3_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \R_ADC|Mux5~2_combout\ : std_logic;
SIGNAL \R_ADC|Mux5~1_combout\ : std_logic;
SIGNAL \R_ADC|Mux5~3_combout\ : std_logic;
SIGNAL \R_ADC|Mux5~4_combout\ : std_logic;
SIGNAL \R_ADC|Mux5~0_combout\ : std_logic;
SIGNAL \R_ADC|Mux5~5_combout\ : std_logic;
SIGNAL \R_ADC|Mux5~20_combout\ : std_logic;
SIGNAL \R_ADC|Mux5~19_combout\ : std_logic;
SIGNAL \R_ADC|Mux5~21_combout\ : std_logic;
SIGNAL \R_ADC|Mux5~22_combout\ : std_logic;
SIGNAL \R_ADC|Mux5~18_combout\ : std_logic;
SIGNAL \R_ADC|Mux5~23_combout\ : std_logic;
SIGNAL \R_ADC|Mux5~7_combout\ : std_logic;
SIGNAL \R_ADC|Mux5~8_combout\ : std_logic;
SIGNAL \R_ADC|Mux5~9_combout\ : std_logic;
SIGNAL \R_ADC|Mux5~6_combout\ : std_logic;
SIGNAL \R_ADC|Mux5~10_combout\ : std_logic;
SIGNAL \R_ADC|Mux5~15_combout\ : std_logic;
SIGNAL \R_ADC|Mux5~11_combout\ : std_logic;
SIGNAL \R_ADC|Mux5~13_combout\ : std_logic;
SIGNAL \R_ADC|Mux5~12_combout\ : std_logic;
SIGNAL \R_ADC|Mux5~14_combout\ : std_logic;
SIGNAL \R_ADC|Mux5~16_combout\ : std_logic;
SIGNAL \R_ADC|Mux5~17_combout\ : std_logic;
SIGNAL \R_ADC|Mux5~24_combout\ : std_logic;
SIGNAL \L_ADC|Mux5~22_combout\ : std_logic;
SIGNAL \L_ADC|Mux5~19_combout\ : std_logic;
SIGNAL \L_ADC|Mux5~20_combout\ : std_logic;
SIGNAL \L_ADC|Mux5~21_combout\ : std_logic;
SIGNAL \L_ADC|Mux5~18_combout\ : std_logic;
SIGNAL \L_ADC|Mux5~23_combout\ : std_logic;
SIGNAL \L_ADC|Mux5~1_combout\ : std_logic;
SIGNAL \L_ADC|Mux5~2_combout\ : std_logic;
SIGNAL \L_ADC|Mux5~3_combout\ : std_logic;
SIGNAL \L_ADC|Mux5~4_combout\ : std_logic;
SIGNAL \L_ADC|Mux5~0_combout\ : std_logic;
SIGNAL \L_ADC|Mux5~5_combout\ : std_logic;
SIGNAL \L_ADC|Mux5~13_combout\ : std_logic;
SIGNAL \L_ADC|Mux5~12_combout\ : std_logic;
SIGNAL \L_ADC|Mux5~14_combout\ : std_logic;
SIGNAL \L_ADC|Mux5~15_combout\ : std_logic;
SIGNAL \L_ADC|Mux5~11_combout\ : std_logic;
SIGNAL \L_ADC|Mux5~16_combout\ : std_logic;
SIGNAL \L_ADC|Mux5~7_combout\ : std_logic;
SIGNAL \L_ADC|Mux5~8_combout\ : std_logic;
SIGNAL \L_ADC|Mux5~9_combout\ : std_logic;
SIGNAL \L_ADC|Mux5~6_combout\ : std_logic;
SIGNAL \L_ADC|Mux5~10_combout\ : std_logic;
SIGNAL \L_ADC|Mux5~17_combout\ : std_logic;
SIGNAL \L_ADC|Mux5~24_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \L_ADC|Mux4~12_combout\ : std_logic;
SIGNAL \L_ADC|Mux4~11_combout\ : std_logic;
SIGNAL \L_ADC|Mux4~13_combout\ : std_logic;
SIGNAL \L_ADC|Mux4~3_combout\ : std_logic;
SIGNAL \L_ADC|Mux4~1_combout\ : std_logic;
SIGNAL \L_ADC|Mux4~0_combout\ : std_logic;
SIGNAL \L_ADC|Mux4~2_combout\ : std_logic;
SIGNAL \L_ADC|Mux4~4_combout\ : std_logic;
SIGNAL \L_ADC|Mux4~8_combout\ : std_logic;
SIGNAL \L_ADC|Mux4~5_combout\ : std_logic;
SIGNAL \L_ADC|Mux4~6_combout\ : std_logic;
SIGNAL \L_ADC|Mux4~7_combout\ : std_logic;
SIGNAL \L_ADC|Mux4~9_combout\ : std_logic;
SIGNAL \L_ADC|Mux4~10_combout\ : std_logic;
SIGNAL \L_ADC|Mux4~15_combout\ : std_logic;
SIGNAL \L_ADC|Mux4~16_combout\ : std_logic;
SIGNAL \L_ADC|Mux4~14_combout\ : std_logic;
SIGNAL \R_ADC|Mux4~12_combout\ : std_logic;
SIGNAL \R_ADC|Mux4~11_combout\ : std_logic;
SIGNAL \R_ADC|Mux4~13_combout\ : std_logic;
SIGNAL \R_ADC|Mux4~1_combout\ : std_logic;
SIGNAL \R_ADC|Mux4~6_combout\ : std_logic;
SIGNAL \R_ADC|Mux4~7_combout\ : std_logic;
SIGNAL \R_ADC|Mux4~8_combout\ : std_logic;
SIGNAL \R_ADC|Mux4~5_combout\ : std_logic;
SIGNAL \R_ADC|Mux4~9_combout\ : std_logic;
SIGNAL \R_ADC|Mux4~3_combout\ : std_logic;
SIGNAL \R_ADC|Mux4~0_combout\ : std_logic;
SIGNAL \R_ADC|Mux4~2_combout\ : std_logic;
SIGNAL \R_ADC|Mux4~4_combout\ : std_logic;
SIGNAL \R_ADC|Mux4~10_combout\ : std_logic;
SIGNAL \R_ADC|Mux4~15_combout\ : std_logic;
SIGNAL \R_ADC|Mux4~16_combout\ : std_logic;
SIGNAL \R_ADC|Mux4~14_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \ADC_R~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ADC_L~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Add0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ALT_INV_dist[1]~0_combout\ : std_logic;

BEGIN

ww_L0_R1 <= L0_R1;
ww_ADC_R <= ADC_R;
ww_ADC_L <= ADC_L;
CORRECTN <= ww_CORRECTN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Add0~7_combout\ <= NOT \Add0~7_combout\;
\ALT_INV_Add0~6_combout\ <= NOT \Add0~6_combout\;
\ALT_INV_Add0~1_combout\ <= NOT \Add0~1_combout\;
\ALT_INV_Add0~0_combout\ <= NOT \Add0~0_combout\;
\ALT_INV_dist[1]~0_combout\ <= NOT \dist[1]~0_combout\;

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_L[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_L(6),
	combout => \ADC_L~combout\(6));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_L[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_L(3),
	combout => \ADC_L~combout\(3));

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_L[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_L(5),
	combout => \ADC_L~combout\(5));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_L[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_L(2),
	combout => \ADC_L~combout\(2));

-- Location: LC_X8_Y4_N4
\L_ADC|Mux10~13\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux10~13_combout\ = (\ADC_L~combout\(6) & (\ADC_L~combout\(2) & ((\ADC_L~combout\(5)) # (!\ADC_L~combout\(3))))) # (!\ADC_L~combout\(6) & (!\ADC_L~combout\(5) & (\ADC_L~combout\(3) $ (\ADC_L~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a304",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(6),
	datab => \ADC_L~combout\(3),
	datac => \ADC_L~combout\(5),
	datad => \ADC_L~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux10~13_combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_L[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_L(7),
	combout => \ADC_L~combout\(7));

-- Location: LC_X8_Y4_N7
\L_ADC|Mux10~14\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux10~14_combout\ = (\ADC_L~combout\(6) & (\ADC_L~combout\(3) $ (((\ADC_L~combout\(5)) # (!\ADC_L~combout\(2)))))) # (!\ADC_L~combout\(6) & (((\ADC_L~combout\(5) & \ADC_L~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7822",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(6),
	datab => \ADC_L~combout\(3),
	datac => \ADC_L~combout\(5),
	datad => \ADC_L~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux10~14_combout\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_L[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_L(4),
	combout => \ADC_L~combout\(4));

-- Location: LC_X8_Y4_N0
\L_ADC|Mux10~15\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux10~15_combout\ = (\L_ADC|Mux10~13_combout\ & ((\ADC_L~combout\(7) & (!\L_ADC|Mux10~14_combout\ & !\ADC_L~combout\(4))) # (!\ADC_L~combout\(7) & (\L_ADC|Mux10~14_combout\)))) # (!\L_ADC|Mux10~13_combout\ & (!\ADC_L~combout\(7) & 
-- ((\ADC_L~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3128",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux10~13_combout\,
	datab => \ADC_L~combout\(7),
	datac => \L_ADC|Mux10~14_combout\,
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux10~15_combout\);

-- Location: LC_X8_Y4_N5
\L_ADC|Mux10~16\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux10~16_combout\ = (\L_ADC|Mux10~13_combout\ & ((\ADC_L~combout\(7) & (!\L_ADC|Mux10~14_combout\ & \ADC_L~combout\(4))) # (!\ADC_L~combout\(7) & (\L_ADC|Mux10~14_combout\ & !\ADC_L~combout\(4))))) # (!\L_ADC|Mux10~13_combout\ & 
-- (\L_ADC|Mux10~14_combout\ & (\ADC_L~combout\(7) $ (\ADC_L~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1860",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux10~13_combout\,
	datab => \ADC_L~combout\(7),
	datac => \L_ADC|Mux10~14_combout\,
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux10~16_combout\);

-- Location: LC_X8_Y4_N8
\L_ADC|Mux10~12\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux10~12_combout\ = (\ADC_L~combout\(3) & (((!\ADC_L~combout\(5))))) # (!\ADC_L~combout\(3) & (\ADC_L~combout\(5) & ((!\ADC_L~combout\(2)) # (!\ADC_L~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(6),
	datab => \ADC_L~combout\(3),
	datac => \ADC_L~combout\(5),
	datad => \ADC_L~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux10~12_combout\);

-- Location: LC_X8_Y4_N3
\L_ADC|Mux10~17\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux10~17_combout\ = (\L_ADC|Mux10~13_combout\ & (\L_ADC|Mux10~15_combout\ & ((!\L_ADC|Mux10~12_combout\) # (!\L_ADC|Mux10~16_combout\)))) # (!\L_ADC|Mux10~13_combout\ & (\L_ADC|Mux10~15_combout\ $ (((!\L_ADC|Mux10~16_combout\ & 
-- \L_ADC|Mux10~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "49cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux10~13_combout\,
	datab => \L_ADC|Mux10~15_combout\,
	datac => \L_ADC|Mux10~16_combout\,
	datad => \L_ADC|Mux10~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux10~17_combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_L[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_L(1),
	combout => \ADC_L~combout\(1));

-- Location: LC_X8_Y6_N6
\L_ADC|Mux10~6\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux10~6_combout\ = (\ADC_L~combout\(3) & (((\ADC_L~combout\(4)) # (!\ADC_L~combout\(2))) # (!\ADC_L~combout\(7)))) # (!\ADC_L~combout\(3) & (((\ADC_L~combout\(2) & !\ADC_L~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc7c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(7),
	datab => \ADC_L~combout\(3),
	datac => \ADC_L~combout\(2),
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux10~6_combout\);

-- Location: LC_X8_Y6_N9
\L_ADC|Mux10~5\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux10~5_combout\ = (\ADC_L~combout\(3) & (((!\ADC_L~combout\(7) & \ADC_L~combout\(2))) # (!\ADC_L~combout\(4)))) # (!\ADC_L~combout\(3) & (((!\ADC_L~combout\(2) & \ADC_L~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "43cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(7),
	datab => \ADC_L~combout\(3),
	datac => \ADC_L~combout\(2),
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux10~5_combout\);

-- Location: LC_X8_Y6_N0
\L_ADC|Mux10~8\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux10~8_combout\ = (\ADC_L~combout\(6) & (\L_ADC|Mux10~6_combout\ & (\ADC_L~combout\(7) $ (!\L_ADC|Mux10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(6),
	datab => \ADC_L~combout\(7),
	datac => \L_ADC|Mux10~6_combout\,
	datad => \L_ADC|Mux10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux10~8_combout\);

-- Location: LC_X8_Y6_N8
\L_ADC|Mux10~7\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux10~7_combout\ = (\ADC_L~combout\(6) & ((\L_ADC|Mux10~5_combout\ & ((\L_ADC|Mux10~6_combout\))) # (!\L_ADC|Mux10~5_combout\ & (\ADC_L~combout\(7))))) # (!\ADC_L~combout\(6) & ((\ADC_L~combout\(7) & (\L_ADC|Mux10~6_combout\)) # 
-- (!\ADC_L~combout\(7) & ((\L_ADC|Mux10~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(6),
	datab => \ADC_L~combout\(7),
	datac => \L_ADC|Mux10~6_combout\,
	datad => \L_ADC|Mux10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux10~7_combout\);

-- Location: LC_X8_Y6_N3
\L_ADC|Mux10~9\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux10~9_combout\ = (\L_ADC|Mux10~7_combout\ $ (((!\L_ADC|Mux10~8_combout\ & \ADC_L~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \L_ADC|Mux10~8_combout\,
	datac => \ADC_L~combout\(5),
	datad => \L_ADC|Mux10~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux10~9_combout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_L[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_L(0),
	combout => \ADC_L~combout\(0));

-- Location: LC_X8_Y6_N2
\L_ADC|Mux10~1\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux10~1_combout\ = (\ADC_L~combout\(2) & (((\ADC_L~combout\(7) & !\ADC_L~combout\(4))))) # (!\ADC_L~combout\(2) & (\ADC_L~combout\(4) & ((!\ADC_L~combout\(7)) # (!\ADC_L~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "07c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(6),
	datab => \ADC_L~combout\(7),
	datac => \ADC_L~combout\(2),
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux10~1_combout\);

-- Location: LC_X8_Y6_N1
\L_ADC|Mux10~0\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux10~0_combout\ = (\ADC_L~combout\(7) & (((\ADC_L~combout\(6) & !\ADC_L~combout\(4))) # (!\ADC_L~combout\(2)))) # (!\ADC_L~combout\(7) & ((\ADC_L~combout\(6) & (!\ADC_L~combout\(2) & !\ADC_L~combout\(4))) # (!\ADC_L~combout\(6) & 
-- (\ADC_L~combout\(2) & \ADC_L~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1c8e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(6),
	datab => \ADC_L~combout\(7),
	datac => \ADC_L~combout\(2),
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux10~0_combout\);

-- Location: LC_X8_Y6_N7
\L_ADC|Mux10~3\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux10~3_combout\ = (\ADC_L~combout\(5) & (\L_ADC|Mux10~1_combout\ & ((\ADC_L~combout\(2)) # (!\L_ADC|Mux10~0_combout\)))) # (!\ADC_L~combout\(5) & (\ADC_L~combout\(2) $ (((\L_ADC|Mux10~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "85ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(2),
	datab => \L_ADC|Mux10~1_combout\,
	datac => \ADC_L~combout\(5),
	datad => \L_ADC|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux10~3_combout\);

-- Location: LC_X8_Y6_N4
\L_ADC|Mux10~2\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux10~2_combout\ = (\L_ADC|Mux10~1_combout\ & ((\ADC_L~combout\(5) & (\ADC_L~combout\(2) & !\L_ADC|Mux10~0_combout\)) # (!\ADC_L~combout\(5) & ((\L_ADC|Mux10~0_combout\))))) # (!\L_ADC|Mux10~1_combout\ & (\ADC_L~combout\(5) & (\ADC_L~combout\(2) $ 
-- (!\L_ADC|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2c90",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(2),
	datab => \L_ADC|Mux10~1_combout\,
	datac => \ADC_L~combout\(5),
	datad => \L_ADC|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux10~2_combout\);

-- Location: LC_X8_Y6_N5
\L_ADC|Mux10~4\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux10~4_combout\ = (\L_ADC|Mux10~3_combout\ $ (((\ADC_L~combout\(3) & !\L_ADC|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f03c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ADC_L~combout\(3),
	datac => \L_ADC|Mux10~3_combout\,
	datad => \L_ADC|Mux10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux10~4_combout\);

-- Location: LC_X8_Y4_N1
\L_ADC|Mux10~11\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux10~11_combout\ = (\ADC_L~combout\(1) & ((\L_ADC|Mux10~9_combout\) # ((!\ADC_L~combout\(0))))) # (!\ADC_L~combout\(1) & (((!\ADC_L~combout\(0) & \L_ADC|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(1),
	datab => \L_ADC|Mux10~9_combout\,
	datac => \ADC_L~combout\(0),
	datad => \L_ADC|Mux10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux10~11_combout\);

-- Location: LC_X8_Y4_N6
\L_ADC|Mux10~10\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux10~10_combout\ = (\ADC_L~combout\(1) & (\L_ADC|Mux10~9_combout\ & (\ADC_L~combout\(0)))) # (!\ADC_L~combout\(1) & (((\ADC_L~combout\(0)) # (\L_ADC|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d5d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(1),
	datab => \L_ADC|Mux10~9_combout\,
	datac => \ADC_L~combout\(0),
	datad => \L_ADC|Mux10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux10~10_combout\);

-- Location: LC_X8_Y4_N2
\L_ADC|Mux10~18\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux10~18_combout\ = (\L_ADC|Mux10~16_combout\ & ((\L_ADC|Mux10~13_combout\ & (!\L_ADC|Mux10~15_combout\ & \L_ADC|Mux10~12_combout\)) # (!\L_ADC|Mux10~13_combout\ & ((!\L_ADC|Mux10~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux10~13_combout\,
	datab => \L_ADC|Mux10~15_combout\,
	datac => \L_ADC|Mux10~16_combout\,
	datad => \L_ADC|Mux10~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux10~18_combout\);

-- Location: LC_X8_Y4_N9
\L_ADC|Mux10~19\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux10~19_combout\ = (\L_ADC|Mux10~11_combout\ & ((\L_ADC|Mux10~10_combout\) # (\L_ADC|Mux10~17_combout\ $ (!\L_ADC|Mux10~18_combout\)))) # (!\L_ADC|Mux10~11_combout\ & (\L_ADC|Mux10~17_combout\ & (\L_ADC|Mux10~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux10~17_combout\,
	datab => \L_ADC|Mux10~11_combout\,
	datac => \L_ADC|Mux10~10_combout\,
	datad => \L_ADC|Mux10~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux10~19_combout\);

-- Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_R[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_R(2),
	combout => \ADC_R~combout\(2));

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_R[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_R(5),
	combout => \ADC_R~combout\(5));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_R[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_R(6),
	combout => \ADC_R~combout\(6));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_R[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_R(3),
	combout => \ADC_R~combout\(3));

-- Location: LC_X6_Y6_N8
\R_ADC|Mux10~13\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux10~13_combout\ = (\ADC_R~combout\(2) & ((\ADC_R~combout\(5) & (\ADC_R~combout\(6))) # (!\ADC_R~combout\(5) & ((!\ADC_R~combout\(3)))))) # (!\ADC_R~combout\(2) & (!\ADC_R~combout\(5) & (!\ADC_R~combout\(6) & \ADC_R~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "81a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(2),
	datab => \ADC_R~combout\(5),
	datac => \ADC_R~combout\(6),
	datad => \ADC_R~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux10~13_combout\);

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_R[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_R(4),
	combout => \ADC_R~combout\(4));

-- Location: LC_X6_Y6_N1
\R_ADC|Mux10~14\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux10~14_combout\ = (\ADC_R~combout\(2) & (\ADC_R~combout\(5) $ (((\ADC_R~combout\(6) & \ADC_R~combout\(3)))))) # (!\ADC_R~combout\(2) & (((\ADC_R~combout\(6) & !\ADC_R~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "28d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(2),
	datab => \ADC_R~combout\(5),
	datac => \ADC_R~combout\(6),
	datad => \ADC_R~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux10~14_combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_R[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_R(7),
	combout => \ADC_R~combout\(7));

-- Location: LC_X6_Y6_N9
\R_ADC|Mux10~15\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux10~15_combout\ = (\ADC_R~combout\(4) & (!\ADC_R~combout\(7) & ((\R_ADC|Mux10~14_combout\) # (!\R_ADC|Mux10~13_combout\)))) # (!\ADC_R~combout\(4) & (\R_ADC|Mux10~13_combout\ & (\R_ADC|Mux10~14_combout\ $ (\ADC_R~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1c0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(4),
	datab => \R_ADC|Mux10~14_combout\,
	datac => \ADC_R~combout\(7),
	datad => \R_ADC|Mux10~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux10~15_combout\);

-- Location: LC_X6_Y6_N5
\R_ADC|Mux10~16\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux10~16_combout\ = (\ADC_R~combout\(4) & ((\R_ADC|Mux10~14_combout\ & (!\ADC_R~combout\(7) & !\R_ADC|Mux10~13_combout\)) # (!\R_ADC|Mux10~14_combout\ & (\ADC_R~combout\(7) & \R_ADC|Mux10~13_combout\)))) # (!\ADC_R~combout\(4) & 
-- (\R_ADC|Mux10~14_combout\ & (\ADC_R~combout\(7) $ (\R_ADC|Mux10~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2448",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(4),
	datab => \R_ADC|Mux10~14_combout\,
	datac => \ADC_R~combout\(7),
	datad => \R_ADC|Mux10~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux10~16_combout\);

-- Location: LC_X6_Y6_N6
\R_ADC|Mux10~12\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux10~12_combout\ = (\ADC_R~combout\(5) & (!\ADC_R~combout\(3) & ((!\ADC_R~combout\(6)) # (!\ADC_R~combout\(2))))) # (!\ADC_R~combout\(5) & (((\ADC_R~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "334c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(2),
	datab => \ADC_R~combout\(5),
	datac => \ADC_R~combout\(6),
	datad => \ADC_R~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux10~12_combout\);

-- Location: LC_X6_Y6_N7
\R_ADC|Mux10~18\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux10~18_combout\ = (\R_ADC|Mux10~16_combout\ & ((\R_ADC|Mux10~13_combout\ & (!\R_ADC|Mux10~15_combout\ & \R_ADC|Mux10~12_combout\)) # (!\R_ADC|Mux10~13_combout\ & ((!\R_ADC|Mux10~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux10~13_combout\,
	datab => \R_ADC|Mux10~15_combout\,
	datac => \R_ADC|Mux10~16_combout\,
	datad => \R_ADC|Mux10~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux10~18_combout\);

-- Location: LC_X6_Y6_N0
\R_ADC|Mux10~17\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux10~17_combout\ = (\R_ADC|Mux10~16_combout\ & (\R_ADC|Mux10~15_combout\ & ((!\R_ADC|Mux10~13_combout\) # (!\R_ADC|Mux10~12_combout\)))) # (!\R_ADC|Mux10~16_combout\ & (\R_ADC|Mux10~15_combout\ $ (((\R_ADC|Mux10~12_combout\ & 
-- !\R_ADC|Mux10~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c9c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux10~16_combout\,
	datab => \R_ADC|Mux10~15_combout\,
	datac => \R_ADC|Mux10~12_combout\,
	datad => \R_ADC|Mux10~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux10~17_combout\);

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_R[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_R(0),
	combout => \ADC_R~combout\(0));

-- Location: LC_X2_Y6_N2
\R_ADC|Mux10~5\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux10~5_combout\ = (\ADC_R~combout\(4) & ((\ADC_R~combout\(2) & (!\ADC_R~combout\(7) & \ADC_R~combout\(3))) # (!\ADC_R~combout\(2) & ((!\ADC_R~combout\(3)))))) # (!\ADC_R~combout\(4) & (((\ADC_R~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "750a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(4),
	datab => \ADC_R~combout\(7),
	datac => \ADC_R~combout\(2),
	datad => \ADC_R~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux10~5_combout\);

-- Location: LC_X2_Y6_N9
\R_ADC|Mux10~6\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux10~6_combout\ = (\ADC_R~combout\(4) & (((\ADC_R~combout\(3))))) # (!\ADC_R~combout\(4) & ((\ADC_R~combout\(2) & ((!\ADC_R~combout\(3)) # (!\ADC_R~combout\(7)))) # (!\ADC_R~combout\(2) & ((\ADC_R~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bf50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(4),
	datab => \ADC_R~combout\(7),
	datac => \ADC_R~combout\(2),
	datad => \ADC_R~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux10~6_combout\);

-- Location: LC_X2_Y6_N0
\R_ADC|Mux10~8\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux10~8_combout\ = (\R_ADC|Mux10~6_combout\ & (\ADC_R~combout\(6) & (\R_ADC|Mux10~5_combout\ $ (!\ADC_R~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux10~5_combout\,
	datab => \R_ADC|Mux10~6_combout\,
	datac => \ADC_R~combout\(6),
	datad => \ADC_R~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux10~8_combout\);

-- Location: LC_X2_Y6_N7
\R_ADC|Mux10~7\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux10~7_combout\ = (\R_ADC|Mux10~5_combout\ & ((\R_ADC|Mux10~6_combout\) # ((!\ADC_R~combout\(6) & !\ADC_R~combout\(7))))) # (!\R_ADC|Mux10~5_combout\ & (\ADC_R~combout\(7) & ((\R_ADC|Mux10~6_combout\) # (\ADC_R~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux10~5_combout\,
	datab => \R_ADC|Mux10~6_combout\,
	datac => \ADC_R~combout\(6),
	datad => \ADC_R~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux10~7_combout\);

-- Location: LC_X2_Y6_N1
\R_ADC|Mux10~9\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux10~9_combout\ = (\R_ADC|Mux10~7_combout\ $ (((!\R_ADC|Mux10~8_combout\ & \ADC_R~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \R_ADC|Mux10~8_combout\,
	datac => \R_ADC|Mux10~7_combout\,
	datad => \ADC_R~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux10~9_combout\);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_R[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_R(1),
	combout => \ADC_R~combout\(1));

-- Location: LC_X2_Y6_N8
\R_ADC|Mux10~1\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux10~1_combout\ = (\ADC_R~combout\(4) & (!\ADC_R~combout\(2) & ((!\ADC_R~combout\(7)) # (!\ADC_R~combout\(6))))) # (!\ADC_R~combout\(4) & (\ADC_R~combout\(2) & ((\ADC_R~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4622",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(4),
	datab => \ADC_R~combout\(2),
	datac => \ADC_R~combout\(6),
	datad => \ADC_R~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux10~1_combout\);

-- Location: LC_X2_Y6_N4
\R_ADC|Mux10~0\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux10~0_combout\ = (\ADC_R~combout\(2) & ((\ADC_R~combout\(4) & (!\ADC_R~combout\(6) & !\ADC_R~combout\(7))) # (!\ADC_R~combout\(4) & (\ADC_R~combout\(6) & \ADC_R~combout\(7))))) # (!\ADC_R~combout\(2) & ((\ADC_R~combout\(7)) # 
-- ((!\ADC_R~combout\(4) & \ADC_R~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7318",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(4),
	datab => \ADC_R~combout\(2),
	datac => \ADC_R~combout\(6),
	datad => \ADC_R~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux10~0_combout\);

-- Location: LC_X2_Y6_N3
\R_ADC|Mux10~2\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux10~2_combout\ = (\R_ADC|Mux10~1_combout\ & ((\R_ADC|Mux10~0_combout\ & ((!\ADC_R~combout\(5)))) # (!\R_ADC|Mux10~0_combout\ & (\ADC_R~combout\(2) & \ADC_R~combout\(5))))) # (!\R_ADC|Mux10~1_combout\ & (\ADC_R~combout\(5) & (\ADC_R~combout\(2) $ 
-- (!\R_ADC|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "49a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux10~1_combout\,
	datab => \ADC_R~combout\(2),
	datac => \R_ADC|Mux10~0_combout\,
	datad => \ADC_R~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux10~2_combout\);

-- Location: LC_X2_Y6_N5
\R_ADC|Mux10~3\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux10~3_combout\ = (\ADC_R~combout\(5) & (\R_ADC|Mux10~1_combout\ & ((\ADC_R~combout\(2)) # (!\R_ADC|Mux10~0_combout\)))) # (!\ADC_R~combout\(5) & ((\ADC_R~combout\(2) $ (\R_ADC|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "83b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux10~1_combout\,
	datab => \ADC_R~combout\(5),
	datac => \ADC_R~combout\(2),
	datad => \R_ADC|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux10~3_combout\);

-- Location: LC_X2_Y6_N6
\R_ADC|Mux10~4\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux10~4_combout\ = (\R_ADC|Mux10~3_combout\ $ (((!\R_ADC|Mux10~2_combout\ & \ADC_R~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a5f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux10~2_combout\,
	datac => \R_ADC|Mux10~3_combout\,
	datad => \ADC_R~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux10~4_combout\);

-- Location: LC_X6_Y6_N4
\R_ADC|Mux10~10\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux10~10_combout\ = (\ADC_R~combout\(0) & ((\R_ADC|Mux10~9_combout\) # ((!\ADC_R~combout\(1))))) # (!\ADC_R~combout\(0) & (((!\ADC_R~combout\(1) & \R_ADC|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(0),
	datab => \R_ADC|Mux10~9_combout\,
	datac => \ADC_R~combout\(1),
	datad => \R_ADC|Mux10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux10~10_combout\);

-- Location: LC_X6_Y6_N2
\R_ADC|Mux10~11\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux10~11_combout\ = (\ADC_R~combout\(0) & (\R_ADC|Mux10~9_combout\ & (\ADC_R~combout\(1)))) # (!\ADC_R~combout\(0) & (((\ADC_R~combout\(1)) # (\R_ADC|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d5d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(0),
	datab => \R_ADC|Mux10~9_combout\,
	datac => \ADC_R~combout\(1),
	datad => \R_ADC|Mux10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux10~11_combout\);

-- Location: LC_X6_Y6_N3
\R_ADC|Mux10~19\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux10~19_combout\ = (\R_ADC|Mux10~10_combout\ & (((\R_ADC|Mux10~17_combout\) # (\R_ADC|Mux10~11_combout\)))) # (!\R_ADC|Mux10~10_combout\ & (\R_ADC|Mux10~11_combout\ & (\R_ADC|Mux10~18_combout\ $ (!\R_ADC|Mux10~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f9c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux10~18_combout\,
	datab => \R_ADC|Mux10~17_combout\,
	datac => \R_ADC|Mux10~10_combout\,
	datad => \R_ADC|Mux10~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux10~19_combout\);

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\L0_R1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_L0_R1,
	combout => \L0_R1~combout\);

-- Location: LC_X5_Y5_N5
\CORRECTN~0\ : maxv_lcell
-- Equation(s):
-- \CORRECTN~0_combout\ = ((\L0_R1~combout\ & ((\R_ADC|Mux10~19_combout\))) # (!\L0_R1~combout\ & (\L_ADC|Mux10~19_combout\)))

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
	datab => \L_ADC|Mux10~19_combout\,
	datac => \R_ADC|Mux10~19_combout\,
	datad => \L0_R1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CORRECTN~0_combout\);

-- Location: LC_X10_Y5_N6
\L_ADC|Mux9~1\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux9~1_combout\ = (\ADC_L~combout\(5) & (\ADC_L~combout\(4) & ((\ADC_L~combout\(3)) # (!\ADC_L~combout\(0))))) # (!\ADC_L~combout\(5) & (\ADC_L~combout\(4) $ (((\ADC_L~combout\(3) & !\ADC_L~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0b4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(5),
	datab => \ADC_L~combout\(3),
	datac => \ADC_L~combout\(4),
	datad => \ADC_L~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux9~1_combout\);

-- Location: LC_X10_Y5_N1
\L_ADC|Mux9~0\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux9~0_combout\ = (\ADC_L~combout\(0) & ((\ADC_L~combout\(5) & (!\ADC_L~combout\(3) & \ADC_L~combout\(4))) # (!\ADC_L~combout\(5) & (\ADC_L~combout\(3))))) # (!\ADC_L~combout\(0) & (\ADC_L~combout\(4) $ (((\ADC_L~combout\(5) & 
-- !\ADC_L~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "64d2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(5),
	datab => \ADC_L~combout\(3),
	datac => \ADC_L~combout\(4),
	datad => \ADC_L~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux9~0_combout\);

-- Location: LC_X10_Y5_N0
\L_ADC|Mux9~3\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux9~3_combout\ = (\ADC_L~combout\(6) & ((\L_ADC|Mux9~1_combout\ & (\ADC_L~combout\(0))) # (!\L_ADC|Mux9~1_combout\ & ((\L_ADC|Mux9~0_combout\))))) # (!\ADC_L~combout\(6) & (\ADC_L~combout\(0) $ ((\L_ADC|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9e92",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(0),
	datab => \ADC_L~combout\(6),
	datac => \L_ADC|Mux9~1_combout\,
	datad => \L_ADC|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux9~3_combout\);

-- Location: LC_X10_Y5_N2
\L_ADC|Mux9~2\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux9~2_combout\ = (\ADC_L~combout\(6) & (\L_ADC|Mux9~0_combout\ $ (((!\L_ADC|Mux9~1_combout\) # (!\ADC_L~combout\(0)))))) # (!\ADC_L~combout\(6) & ((\L_ADC|Mux9~0_combout\) # ((\ADC_L~combout\(0) & \L_ADC|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b36c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(0),
	datab => \ADC_L~combout\(6),
	datac => \L_ADC|Mux9~1_combout\,
	datad => \L_ADC|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux9~2_combout\);

-- Location: LC_X10_Y5_N4
\L_ADC|Mux9~4\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux9~4_combout\ = ((\ADC_L~combout\(7) & ((!\L_ADC|Mux9~2_combout\))) # (!\ADC_L~combout\(7) & (\L_ADC|Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \L_ADC|Mux9~3_combout\,
	datac => \ADC_L~combout\(7),
	datad => \L_ADC|Mux9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux9~4_combout\);

-- Location: LC_X10_Y5_N9
\L_ADC|Mux9~6\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux9~6_combout\ = (\ADC_L~combout\(5) & (\ADC_L~combout\(7) & (\ADC_L~combout\(3) $ (!\ADC_L~combout\(0))))) # (!\ADC_L~combout\(5) & (\ADC_L~combout\(3) & ((\ADC_L~combout\(7)) # (\ADC_L~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c460",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(5),
	datab => \ADC_L~combout\(3),
	datac => \ADC_L~combout\(7),
	datad => \ADC_L~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux9~6_combout\);

-- Location: LC_X10_Y5_N3
\L_ADC|Mux9~7\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux9~7_combout\ = (\ADC_L~combout\(5) & (((\ADC_L~combout\(4) & \L_ADC|Mux9~6_combout\)))) # (!\ADC_L~combout\(5) & ((\ADC_L~combout\(4) $ (\L_ADC|Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a550",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(5),
	datac => \ADC_L~combout\(4),
	datad => \L_ADC|Mux9~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux9~7_combout\);

-- Location: LC_X10_Y5_N5
\L_ADC|Mux9~8\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux9~8_combout\ = (\L_ADC|Mux9~6_combout\ $ (((\ADC_L~combout\(5) & !\ADC_L~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f50a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(5),
	datac => \ADC_L~combout\(4),
	datad => \L_ADC|Mux9~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux9~8_combout\);

-- Location: LC_X10_Y5_N7
\L_ADC|Mux9~5\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux9~5_combout\ = (\ADC_L~combout\(5) & ((\ADC_L~combout\(3)) # ((\ADC_L~combout\(0))))) # (!\ADC_L~combout\(5) & (\ADC_L~combout\(0) & ((\ADC_L~combout\(3)) # (\ADC_L~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(5),
	datab => \ADC_L~combout\(3),
	datac => \ADC_L~combout\(7),
	datad => \ADC_L~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux9~5_combout\);

-- Location: LC_X10_Y5_N8
\L_ADC|Mux9~9\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux9~9_combout\ = (\L_ADC|Mux9~7_combout\ & ((\ADC_L~combout\(6) & (!\L_ADC|Mux9~8_combout\ & \L_ADC|Mux9~5_combout\)) # (!\ADC_L~combout\(6) & ((\L_ADC|Mux9~5_combout\) # (!\L_ADC|Mux9~8_combout\))))) # (!\L_ADC|Mux9~7_combout\ & 
-- (\ADC_L~combout\(6) $ (\L_ADC|Mux9~8_combout\ $ (\L_ADC|Mux9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6b16",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux9~7_combout\,
	datab => \ADC_L~combout\(6),
	datac => \L_ADC|Mux9~8_combout\,
	datad => \L_ADC|Mux9~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux9~9_combout\);

-- Location: LC_X9_Y6_N5
\L_ADC|Mux9~11\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux9~11_combout\ = (\ADC_L~combout\(1) & (((\ADC_L~combout\(2) & \L_ADC|Mux9~9_combout\)))) # (!\ADC_L~combout\(1) & ((\L_ADC|Mux9~4_combout\) # ((\ADC_L~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f232",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux9~4_combout\,
	datab => \ADC_L~combout\(1),
	datac => \ADC_L~combout\(2),
	datad => \L_ADC|Mux9~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux9~11_combout\);

-- Location: LC_X9_Y4_N9
\L_ADC|Mux9~14\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux9~14_combout\ = (\ADC_L~combout\(7) & (\ADC_L~combout\(3) & ((\ADC_L~combout\(6)) # (!\ADC_L~combout\(4))))) # (!\ADC_L~combout\(7) & (!\ADC_L~combout\(6) & (\ADC_L~combout\(3) $ (\ADC_L~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "81b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(7),
	datab => \ADC_L~combout\(6),
	datac => \ADC_L~combout\(3),
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux9~14_combout\);

-- Location: LC_X9_Y4_N3
\L_ADC|Mux9~13\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux9~13_combout\ = (\ADC_L~combout\(7) & ((\ADC_L~combout\(3) & (!\ADC_L~combout\(6) & \ADC_L~combout\(4))) # (!\ADC_L~combout\(3) & ((!\ADC_L~combout\(4)))))) # (!\ADC_L~combout\(7) & ((\ADC_L~combout\(6) & (\ADC_L~combout\(3))) # 
-- (!\ADC_L~combout\(6) & (!\ADC_L~combout\(3) & \ADC_L~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "614a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(7),
	datab => \ADC_L~combout\(6),
	datac => \ADC_L~combout\(3),
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux9~13_combout\);

-- Location: LC_X9_Y4_N4
\L_ADC|Mux9~15\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux9~15_combout\ = (\ADC_L~combout\(5) & ((\L_ADC|Mux9~14_combout\ & (\ADC_L~combout\(0))) # (!\L_ADC|Mux9~14_combout\ & (!\ADC_L~combout\(0) & !\L_ADC|Mux9~13_combout\)))) # (!\ADC_L~combout\(5) & (\L_ADC|Mux9~13_combout\ & 
-- (\L_ADC|Mux9~14_combout\ $ (\ADC_L~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9482",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(5),
	datab => \L_ADC|Mux9~14_combout\,
	datac => \ADC_L~combout\(0),
	datad => \L_ADC|Mux9~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux9~15_combout\);

-- Location: LC_X9_Y4_N7
\L_ADC|Mux9~16\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux9~16_combout\ = (\L_ADC|Mux9~14_combout\ & ((\L_ADC|Mux9~13_combout\ & (!\ADC_L~combout\(5))) # (!\L_ADC|Mux9~13_combout\ & ((\ADC_L~combout\(0)))))) # (!\L_ADC|Mux9~14_combout\ & (\ADC_L~combout\(5) & (!\ADC_L~combout\(0) & 
-- \L_ADC|Mux9~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "46c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(5),
	datab => \L_ADC|Mux9~14_combout\,
	datac => \ADC_L~combout\(0),
	datad => \L_ADC|Mux9~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux9~16_combout\);

-- Location: LC_X9_Y4_N5
\L_ADC|Mux9~12\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux9~12_combout\ = (\ADC_L~combout\(6) & (((!\ADC_L~combout\(4))))) # (!\ADC_L~combout\(6) & (\ADC_L~combout\(4) & ((\ADC_L~combout\(7)) # (\ADC_L~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "32cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(7),
	datab => \ADC_L~combout\(6),
	datac => \ADC_L~combout\(3),
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux9~12_combout\);

-- Location: LC_X9_Y4_N8
\L_ADC|Mux9~17\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux9~17_combout\ = (\ADC_L~combout\(0) & (!\L_ADC|Mux9~15_combout\ & (\L_ADC|Mux9~16_combout\ $ (\L_ADC|Mux9~12_combout\)))) # (!\ADC_L~combout\(0) & (\L_ADC|Mux9~15_combout\ $ (((\L_ADC|Mux9~16_combout\) # (\L_ADC|Mux9~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1456",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux9~15_combout\,
	datab => \L_ADC|Mux9~16_combout\,
	datac => \L_ADC|Mux9~12_combout\,
	datad => \ADC_L~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux9~17_combout\);

-- Location: LC_X9_Y4_N6
\L_ADC|Mux9~18\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux9~18_combout\ = (!\L_ADC|Mux9~12_combout\ & ((\L_ADC|Mux9~15_combout\ & (!\L_ADC|Mux9~16_combout\ & \ADC_L~combout\(0))) # (!\L_ADC|Mux9~15_combout\ & (\L_ADC|Mux9~16_combout\ & !\ADC_L~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0024",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux9~15_combout\,
	datab => \L_ADC|Mux9~16_combout\,
	datac => \ADC_L~combout\(0),
	datad => \L_ADC|Mux9~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux9~18_combout\);

-- Location: LC_X9_Y6_N9
\L_ADC|Mux9~10\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux9~10_combout\ = (\ADC_L~combout\(1) & (((\L_ADC|Mux9~9_combout\) # (!\ADC_L~combout\(2))))) # (!\ADC_L~combout\(1) & (\L_ADC|Mux9~4_combout\ & (!\ADC_L~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce0e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux9~4_combout\,
	datab => \ADC_L~combout\(1),
	datac => \ADC_L~combout\(2),
	datad => \L_ADC|Mux9~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux9~10_combout\);

-- Location: LC_X9_Y6_N7
\L_ADC|Mux9~19\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux9~19_combout\ = (\L_ADC|Mux9~11_combout\ & ((\L_ADC|Mux9~10_combout\) # (\L_ADC|Mux9~17_combout\ $ (!\L_ADC|Mux9~18_combout\)))) # (!\L_ADC|Mux9~11_combout\ & (\L_ADC|Mux9~17_combout\ & ((\L_ADC|Mux9~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee82",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux9~11_combout\,
	datab => \L_ADC|Mux9~17_combout\,
	datac => \L_ADC|Mux9~18_combout\,
	datad => \L_ADC|Mux9~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux9~19_combout\);

-- Location: LC_X5_Y6_N5
\R_ADC|Mux9~12\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux9~12_combout\ = (\ADC_R~combout\(4) & (!\ADC_R~combout\(6) & ((\ADC_R~combout\(7)) # (\ADC_R~combout\(3))))) # (!\ADC_R~combout\(4) & (((\ADC_R~combout\(6)))))

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
	dataa => \ADC_R~combout\(4),
	datab => \ADC_R~combout\(7),
	datac => \ADC_R~combout\(3),
	datad => \ADC_R~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux9~12_combout\);

-- Location: LC_X3_Y7_N6
\R_ADC|Mux9~14\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux9~14_combout\ = (\ADC_R~combout\(7) & (\ADC_R~combout\(3) & ((\ADC_R~combout\(6)) # (!\ADC_R~combout\(4))))) # (!\ADC_R~combout\(7) & (!\ADC_R~combout\(6) & (\ADC_R~combout\(4) $ (\ADC_R~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c502",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(4),
	datab => \ADC_R~combout\(7),
	datac => \ADC_R~combout\(6),
	datad => \ADC_R~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux9~14_combout\);

-- Location: LC_X3_Y7_N1
\R_ADC|Mux9~13\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux9~13_combout\ = (\ADC_R~combout\(7) & ((\ADC_R~combout\(4) & (!\ADC_R~combout\(6) & \ADC_R~combout\(3))) # (!\ADC_R~combout\(4) & ((!\ADC_R~combout\(3)))))) # (!\ADC_R~combout\(7) & ((\ADC_R~combout\(6) & ((\ADC_R~combout\(3)))) # 
-- (!\ADC_R~combout\(6) & (\ADC_R~combout\(4) & !\ADC_R~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3846",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(4),
	datab => \ADC_R~combout\(7),
	datac => \ADC_R~combout\(6),
	datad => \ADC_R~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux9~13_combout\);

-- Location: LC_X3_Y7_N3
\R_ADC|Mux9~16\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux9~16_combout\ = (\R_ADC|Mux9~14_combout\ & ((\R_ADC|Mux9~13_combout\ & (!\ADC_R~combout\(5))) # (!\R_ADC|Mux9~13_combout\ & ((\ADC_R~combout\(0)))))) # (!\R_ADC|Mux9~14_combout\ & (\ADC_R~combout\(5) & (\R_ADC|Mux9~13_combout\ & 
-- !\ADC_R~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a60",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux9~14_combout\,
	datab => \ADC_R~combout\(5),
	datac => \R_ADC|Mux9~13_combout\,
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux9~16_combout\);

-- Location: LC_X3_Y7_N7
\R_ADC|Mux9~15\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux9~15_combout\ = (\ADC_R~combout\(5) & ((\R_ADC|Mux9~14_combout\ & ((\ADC_R~combout\(0)))) # (!\R_ADC|Mux9~14_combout\ & (!\R_ADC|Mux9~13_combout\ & !\ADC_R~combout\(0))))) # (!\ADC_R~combout\(5) & (\R_ADC|Mux9~13_combout\ & 
-- (\R_ADC|Mux9~14_combout\ $ (\ADC_R~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9824",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux9~14_combout\,
	datab => \ADC_R~combout\(5),
	datac => \R_ADC|Mux9~13_combout\,
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux9~15_combout\);

-- Location: LC_X3_Y6_N3
\R_ADC|Mux9~18\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux9~18_combout\ = (!\R_ADC|Mux9~12_combout\ & ((\R_ADC|Mux9~16_combout\ & (!\R_ADC|Mux9~15_combout\ & !\ADC_R~combout\(0))) # (!\R_ADC|Mux9~16_combout\ & (\R_ADC|Mux9~15_combout\ & \ADC_R~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux9~12_combout\,
	datab => \R_ADC|Mux9~16_combout\,
	datac => \R_ADC|Mux9~15_combout\,
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux9~18_combout\);

-- Location: LC_X4_Y5_N1
\R_ADC|Mux9~0\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux9~0_combout\ = (\ADC_R~combout\(0) & ((\ADC_R~combout\(3) & ((!\ADC_R~combout\(5)))) # (!\ADC_R~combout\(3) & (\ADC_R~combout\(4) & \ADC_R~combout\(5))))) # (!\ADC_R~combout\(0) & (\ADC_R~combout\(4) $ (((!\ADC_R~combout\(3) & 
-- \ADC_R~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4a9c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(3),
	datab => \ADC_R~combout\(4),
	datac => \ADC_R~combout\(5),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux9~0_combout\);

-- Location: LC_X4_Y5_N5
\R_ADC|Mux9~1\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux9~1_combout\ = (\ADC_R~combout\(3) & (\ADC_R~combout\(4) $ (((!\ADC_R~combout\(5) & !\ADC_R~combout\(0)))))) # (!\ADC_R~combout\(3) & (\ADC_R~combout\(4) & ((!\ADC_R~combout\(0)) # (!\ADC_R~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8cc6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(3),
	datab => \ADC_R~combout\(4),
	datac => \ADC_R~combout\(5),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux9~1_combout\);

-- Location: LC_X4_Y5_N9
\R_ADC|Mux9~3\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux9~3_combout\ = (\ADC_R~combout\(6) & ((\R_ADC|Mux9~1_combout\ & ((\ADC_R~combout\(0)))) # (!\R_ADC|Mux9~1_combout\ & (\R_ADC|Mux9~0_combout\)))) # (!\ADC_R~combout\(6) & ((\R_ADC|Mux9~1_combout\ $ (\ADC_R~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ad58",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(6),
	datab => \R_ADC|Mux9~0_combout\,
	datac => \R_ADC|Mux9~1_combout\,
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux9~3_combout\);

-- Location: LC_X4_Y5_N3
\R_ADC|Mux9~2\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux9~2_combout\ = (\ADC_R~combout\(6) & (\R_ADC|Mux9~0_combout\ $ (((!\ADC_R~combout\(0)) # (!\R_ADC|Mux9~1_combout\))))) # (!\ADC_R~combout\(6) & ((\R_ADC|Mux9~0_combout\) # ((\R_ADC|Mux9~1_combout\ & \ADC_R~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d666",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(6),
	datab => \R_ADC|Mux9~0_combout\,
	datac => \R_ADC|Mux9~1_combout\,
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux9~2_combout\);

-- Location: LC_X4_Y5_N6
\R_ADC|Mux9~4\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux9~4_combout\ = ((\ADC_R~combout\(7) & ((!\R_ADC|Mux9~2_combout\))) # (!\ADC_R~combout\(7) & (\R_ADC|Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \R_ADC|Mux9~3_combout\,
	datac => \ADC_R~combout\(7),
	datad => \R_ADC|Mux9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux9~4_combout\);

-- Location: LC_X4_Y5_N0
\R_ADC|Mux9~5\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux9~5_combout\ = (\ADC_R~combout\(5) & ((\ADC_R~combout\(3)) # ((\ADC_R~combout\(0))))) # (!\ADC_R~combout\(5) & (\ADC_R~combout\(0) & ((\ADC_R~combout\(3)) # (\ADC_R~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(5),
	datab => \ADC_R~combout\(3),
	datac => \ADC_R~combout\(7),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux9~5_combout\);

-- Location: LC_X4_Y5_N2
\R_ADC|Mux9~6\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux9~6_combout\ = (\ADC_R~combout\(5) & (\ADC_R~combout\(7) & (\ADC_R~combout\(3) $ (!\ADC_R~combout\(0))))) # (!\ADC_R~combout\(5) & (\ADC_R~combout\(3) & ((\ADC_R~combout\(7)) # (\ADC_R~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c460",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(5),
	datab => \ADC_R~combout\(3),
	datac => \ADC_R~combout\(7),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux9~6_combout\);

-- Location: LC_X4_Y5_N7
\R_ADC|Mux9~8\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux9~8_combout\ = (\R_ADC|Mux9~6_combout\ $ (((\ADC_R~combout\(5) & !\ADC_R~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \R_ADC|Mux9~6_combout\,
	datac => \ADC_R~combout\(5),
	datad => \ADC_R~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux9~8_combout\);

-- Location: LC_X4_Y5_N8
\R_ADC|Mux9~7\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux9~7_combout\ = ((\R_ADC|Mux9~6_combout\ & (\ADC_R~combout\(5) $ (!\ADC_R~combout\(4)))) # (!\R_ADC|Mux9~6_combout\ & (!\ADC_R~combout\(5) & \ADC_R~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c30c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \R_ADC|Mux9~6_combout\,
	datac => \ADC_R~combout\(5),
	datad => \ADC_R~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux9~7_combout\);

-- Location: LC_X4_Y5_N4
\R_ADC|Mux9~9\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux9~9_combout\ = (\R_ADC|Mux9~7_combout\ & ((\ADC_R~combout\(6) & (\R_ADC|Mux9~5_combout\ & !\R_ADC|Mux9~8_combout\)) # (!\ADC_R~combout\(6) & ((\R_ADC|Mux9~5_combout\) # (!\R_ADC|Mux9~8_combout\))))) # (!\R_ADC|Mux9~7_combout\ & 
-- (\ADC_R~combout\(6) $ (\R_ADC|Mux9~5_combout\ $ (\R_ADC|Mux9~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4d96",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(6),
	datab => \R_ADC|Mux9~5_combout\,
	datac => \R_ADC|Mux9~8_combout\,
	datad => \R_ADC|Mux9~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux9~9_combout\);

-- Location: LC_X3_Y6_N1
\R_ADC|Mux9~11\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux9~11_combout\ = (\ADC_R~combout\(2) & (((\R_ADC|Mux9~9_combout\) # (!\ADC_R~combout\(1))))) # (!\ADC_R~combout\(2) & (\R_ADC|Mux9~4_combout\ & ((!\ADC_R~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux9~4_combout\,
	datab => \ADC_R~combout\(2),
	datac => \R_ADC|Mux9~9_combout\,
	datad => \ADC_R~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux9~11_combout\);

-- Location: LC_X3_Y6_N7
\R_ADC|Mux9~17\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux9~17_combout\ = (\ADC_R~combout\(0) & (!\R_ADC|Mux9~15_combout\ & (\R_ADC|Mux9~12_combout\ $ (\R_ADC|Mux9~16_combout\)))) # (!\ADC_R~combout\(0) & (\R_ADC|Mux9~15_combout\ $ (((\R_ADC|Mux9~12_combout\) # (\R_ADC|Mux9~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "061e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux9~12_combout\,
	datab => \R_ADC|Mux9~16_combout\,
	datac => \R_ADC|Mux9~15_combout\,
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux9~17_combout\);

-- Location: LC_X3_Y6_N4
\R_ADC|Mux9~10\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux9~10_combout\ = (\ADC_R~combout\(2) & (((\R_ADC|Mux9~9_combout\ & \ADC_R~combout\(1))))) # (!\ADC_R~combout\(2) & ((\R_ADC|Mux9~4_combout\) # ((\ADC_R~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f322",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux9~4_combout\,
	datab => \ADC_R~combout\(2),
	datac => \R_ADC|Mux9~9_combout\,
	datad => \ADC_R~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux9~10_combout\);

-- Location: LC_X3_Y6_N5
\R_ADC|Mux9~19\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux9~19_combout\ = (\R_ADC|Mux9~11_combout\ & ((\R_ADC|Mux9~10_combout\) # (\R_ADC|Mux9~18_combout\ $ (!\R_ADC|Mux9~17_combout\)))) # (!\R_ADC|Mux9~11_combout\ & (((\R_ADC|Mux9~17_combout\ & \R_ADC|Mux9~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc84",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux9~18_combout\,
	datab => \R_ADC|Mux9~11_combout\,
	datac => \R_ADC|Mux9~17_combout\,
	datad => \R_ADC|Mux9~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux9~19_combout\);

-- Location: LC_X6_Y5_N4
\dist[1]~0\ : maxv_lcell
-- Equation(s):
-- \dist[1]~0_combout\ = ((\L0_R1~combout\ & ((\R_ADC|Mux9~19_combout\))) # (!\L0_R1~combout\ & (\L_ADC|Mux9~19_combout\)))

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
	datab => \L_ADC|Mux9~19_combout\,
	datac => \R_ADC|Mux9~19_combout\,
	datad => \L0_R1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dist[1]~0_combout\);

-- Location: LC_X2_Y7_N1
\R_ADC|Mux8~17\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux8~17_combout\ = (\ADC_R~combout\(1) & ((\ADC_R~combout\(6) & (!\ADC_R~combout\(2) & \ADC_R~combout\(5))) # (!\ADC_R~combout\(6) & (\ADC_R~combout\(2) $ (!\ADC_R~combout\(5)))))) # (!\ADC_R~combout\(1) & ((\ADC_R~combout\(2) $ 
-- (\ADC_R~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2d52",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(1),
	datab => \ADC_R~combout\(6),
	datac => \ADC_R~combout\(2),
	datad => \ADC_R~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux8~17_combout\);

-- Location: LC_X2_Y7_N7
\R_ADC|Mux8~16\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux8~16_combout\ = (\ADC_R~combout\(1) & (\ADC_R~combout\(2) $ (((\ADC_R~combout\(6)) # (!\ADC_R~combout\(5)))))) # (!\ADC_R~combout\(1) & ((\ADC_R~combout\(2) & (\ADC_R~combout\(6) & !\ADC_R~combout\(5))) # (!\ADC_R~combout\(2) & 
-- ((\ADC_R~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2d4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(1),
	datab => \ADC_R~combout\(6),
	datac => \ADC_R~combout\(2),
	datad => \ADC_R~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux8~16_combout\);

-- Location: LC_X2_Y7_N3
\R_ADC|Mux8~20\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux8~20_combout\ = (\ADC_R~combout\(3) & ((\ADC_R~combout\(7) & ((\R_ADC|Mux8~16_combout\))) # (!\ADC_R~combout\(7) & (!\R_ADC|Mux8~17_combout\)))) # (!\ADC_R~combout\(3) & (((\R_ADC|Mux8~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b1cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(7),
	datab => \R_ADC|Mux8~17_combout\,
	datac => \R_ADC|Mux8~16_combout\,
	datad => \ADC_R~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux8~20_combout\);

-- Location: LC_X4_Y7_N7
\R_ADC|Mux8~18\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux8~18_combout\ = (\ADC_R~combout\(5) & (((!\ADC_R~combout\(6) & \ADC_R~combout\(1))) # (!\ADC_R~combout\(2)))) # (!\ADC_R~combout\(5) & (\ADC_R~combout\(2) $ (((!\ADC_R~combout\(6) & \ADC_R~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6b66",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(5),
	datab => \ADC_R~combout\(2),
	datac => \ADC_R~combout\(6),
	datad => \ADC_R~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux8~18_combout\);

-- Location: LC_X2_Y7_N8
\R_ADC|Mux8~21\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux8~21_combout\ = (\R_ADC|Mux8~20_combout\ & ((\ADC_R~combout\(7)) # ((!\R_ADC|Mux8~17_combout\) # (!\R_ADC|Mux8~18_combout\)))) # (!\R_ADC|Mux8~20_combout\ & (!\ADC_R~combout\(7) & (!\R_ADC|Mux8~18_combout\ & !\R_ADC|Mux8~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8aab",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux8~20_combout\,
	datab => \ADC_R~combout\(7),
	datac => \R_ADC|Mux8~18_combout\,
	datad => \R_ADC|Mux8~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux8~21_combout\);

-- Location: LC_X2_Y5_N3
\R_ADC|Mux8~0\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux8~0_combout\ = (\ADC_R~combout\(6) & ((\ADC_R~combout\(2) & ((\ADC_R~combout\(3)) # (\ADC_R~combout\(1)))) # (!\ADC_R~combout\(2) & ((!\ADC_R~combout\(1)))))) # (!\ADC_R~combout\(6) & (\ADC_R~combout\(2) & ((!\ADC_R~combout\(1)) # 
-- (!\ADC_R~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0bc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(3),
	datab => \ADC_R~combout\(6),
	datac => \ADC_R~combout\(2),
	datad => \ADC_R~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux8~0_combout\);

-- Location: LC_X2_Y5_N9
\R_ADC|Mux8~4\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux8~4_combout\ = \ADC_R~combout\(2) $ (((\ADC_R~combout\(3) & (!\ADC_R~combout\(6) & \ADC_R~combout\(1))) # (!\ADC_R~combout\(3) & (\ADC_R~combout\(6) & !\ADC_R~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d2b4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(3),
	datab => \ADC_R~combout\(6),
	datac => \ADC_R~combout\(2),
	datad => \ADC_R~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux8~4_combout\);

-- Location: LC_X2_Y5_N1
\R_ADC|Mux8~1\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux8~1_combout\ = (\ADC_R~combout\(2) $ (((!\ADC_R~combout\(6) & \ADC_R~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ADC_R~combout\(6),
	datac => \ADC_R~combout\(2),
	datad => \ADC_R~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux8~1_combout\);

-- Location: LC_X2_Y5_N7
\R_ADC|Mux8~2\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux8~2_combout\ = (\ADC_R~combout\(6) & ((\ADC_R~combout\(2)) # ((!\ADC_R~combout\(3) & !\ADC_R~combout\(1))))) # (!\ADC_R~combout\(6) & ((\ADC_R~combout\(2) & ((!\ADC_R~combout\(1)))) # (!\ADC_R~combout\(2) & (\ADC_R~combout\(3) & 
-- \ADC_R~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c2f4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(3),
	datab => \ADC_R~combout\(6),
	datac => \ADC_R~combout\(2),
	datad => \ADC_R~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux8~2_combout\);

-- Location: LC_X2_Y5_N5
\R_ADC|Mux8~3\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux8~3_combout\ = (\ADC_R~combout\(7) & (((\ADC_R~combout\(5))) # (!\R_ADC|Mux8~1_combout\))) # (!\ADC_R~combout\(7) & (((\R_ADC|Mux8~2_combout\ & !\ADC_R~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa72",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(7),
	datab => \R_ADC|Mux8~1_combout\,
	datac => \R_ADC|Mux8~2_combout\,
	datad => \ADC_R~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux8~3_combout\);

-- Location: LC_X2_Y5_N8
\R_ADC|Mux8~5\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux8~5_combout\ = (\R_ADC|Mux8~3_combout\ & (((\R_ADC|Mux8~4_combout\) # (!\ADC_R~combout\(5))))) # (!\R_ADC|Mux8~3_combout\ & (!\R_ADC|Mux8~0_combout\ & ((\ADC_R~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c5f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux8~0_combout\,
	datab => \R_ADC|Mux8~4_combout\,
	datac => \R_ADC|Mux8~3_combout\,
	datad => \ADC_R~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux8~5_combout\);

-- Location: LC_X4_Y7_N5
\R_ADC|Mux8~13\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux8~13_combout\ = \ADC_R~combout\(7) $ (\ADC_R~combout\(5) $ (((!\ADC_R~combout\(1) & \ADC_R~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "659a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(7),
	datab => \ADC_R~combout\(1),
	datac => \ADC_R~combout\(6),
	datad => \ADC_R~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux8~13_combout\);

-- Location: LC_X4_Y7_N8
\R_ADC|Mux8~10\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux8~10_combout\ = (\ADC_R~combout\(7) & (\ADC_R~combout\(5) $ (((\ADC_R~combout\(1)) # (!\ADC_R~combout\(6)))))) # (!\ADC_R~combout\(7) & ((\ADC_R~combout\(1) & (!\ADC_R~combout\(6) & \ADC_R~combout\(5))) # (!\ADC_R~combout\(1) & 
-- (\ADC_R~combout\(6) & !\ADC_R~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "249a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(7),
	datab => \ADC_R~combout\(1),
	datac => \ADC_R~combout\(6),
	datad => \ADC_R~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux8~10_combout\);

-- Location: LC_X4_Y7_N9
\R_ADC|Mux8~11\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux8~11_combout\ = (\ADC_R~combout\(7) & ((\ADC_R~combout\(1) & ((\ADC_R~combout\(5)))) # (!\ADC_R~combout\(1) & (\ADC_R~combout\(6) & !\ADC_R~combout\(5))))) # (!\ADC_R~combout\(7) & ((\ADC_R~combout\(1) & ((\ADC_R~combout\(6)) # 
-- (!\ADC_R~combout\(5)))) # (!\ADC_R~combout\(1) & ((\ADC_R~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d964",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(7),
	datab => \ADC_R~combout\(1),
	datac => \ADC_R~combout\(6),
	datad => \ADC_R~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux8~11_combout\);

-- Location: LC_X4_Y7_N2
\R_ADC|Mux8~12\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux8~12_combout\ = (\ADC_R~combout\(2) & (((\ADC_R~combout\(3))) # (!\R_ADC|Mux8~10_combout\))) # (!\ADC_R~combout\(2) & (((!\R_ADC|Mux8~11_combout\ & !\ADC_R~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f053",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux8~10_combout\,
	datab => \R_ADC|Mux8~11_combout\,
	datac => \ADC_R~combout\(2),
	datad => \ADC_R~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux8~12_combout\);

-- Location: LC_X4_Y7_N4
\R_ADC|Mux8~9\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux8~9_combout\ = (\ADC_R~combout\(7) & (\ADC_R~combout\(5) $ (((\ADC_R~combout\(1)) # (!\ADC_R~combout\(6)))))) # (!\ADC_R~combout\(7) & ((\ADC_R~combout\(1) & ((\ADC_R~combout\(5)))) # (!\ADC_R~combout\(1) & (\ADC_R~combout\(6) & 
-- !\ADC_R~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "649a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(7),
	datab => \ADC_R~combout\(1),
	datac => \ADC_R~combout\(6),
	datad => \ADC_R~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux8~9_combout\);

-- Location: LC_X4_Y7_N6
\R_ADC|Mux8~14\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux8~14_combout\ = (\R_ADC|Mux8~12_combout\ & (((!\ADC_R~combout\(3))) # (!\R_ADC|Mux8~13_combout\))) # (!\R_ADC|Mux8~12_combout\ & (((\R_ADC|Mux8~9_combout\ & \ADC_R~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "74cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux8~13_combout\,
	datab => \R_ADC|Mux8~12_combout\,
	datac => \R_ADC|Mux8~9_combout\,
	datad => \ADC_R~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux8~14_combout\);

-- Location: LC_X2_Y5_N4
\R_ADC|Mux8~7\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux8~7_combout\ = (\ADC_R~combout\(7) & (((\R_ADC|Mux8~2_combout\) # (\ADC_R~combout\(5))))) # (!\ADC_R~combout\(7) & (!\R_ADC|Mux8~4_combout\ & ((!\ADC_R~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aab1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(7),
	datab => \R_ADC|Mux8~4_combout\,
	datac => \R_ADC|Mux8~2_combout\,
	datad => \ADC_R~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux8~7_combout\);

-- Location: LC_X2_Y5_N2
\R_ADC|Mux8~6\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux8~6_combout\ = (\ADC_R~combout\(2) $ (((\ADC_R~combout\(6) & !\ADC_R~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f03c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ADC_R~combout\(6),
	datac => \ADC_R~combout\(2),
	datad => \ADC_R~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux8~6_combout\);

-- Location: LC_X2_Y5_N6
\R_ADC|Mux8~8\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux8~8_combout\ = (\ADC_R~combout\(5) & ((\R_ADC|Mux8~7_combout\ & (!\R_ADC|Mux8~0_combout\)) # (!\R_ADC|Mux8~7_combout\ & ((\R_ADC|Mux8~6_combout\))))) # (!\ADC_R~combout\(5) & (((\R_ADC|Mux8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7c70",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux8~0_combout\,
	datab => \ADC_R~combout\(5),
	datac => \R_ADC|Mux8~7_combout\,
	datad => \R_ADC|Mux8~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux8~8_combout\);

-- Location: LC_X6_Y5_N1
\R_ADC|Mux8~15\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux8~15_combout\ = (\ADC_R~combout\(4) & (((\ADC_R~combout\(0))))) # (!\ADC_R~combout\(4) & ((\ADC_R~combout\(0) & ((\R_ADC|Mux8~8_combout\))) # (!\ADC_R~combout\(0) & (\R_ADC|Mux8~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(4),
	datab => \R_ADC|Mux8~14_combout\,
	datac => \R_ADC|Mux8~8_combout\,
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux8~15_combout\);

-- Location: LC_X6_Y5_N6
\R_ADC|Mux8~19\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux8~19_combout\ = (\ADC_R~combout\(4) & ((\R_ADC|Mux8~15_combout\ & (\R_ADC|Mux8~21_combout\)) # (!\R_ADC|Mux8~15_combout\ & ((\R_ADC|Mux8~5_combout\))))) # (!\ADC_R~combout\(4) & (((\R_ADC|Mux8~15_combout\))))

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
	dataa => \ADC_R~combout\(4),
	datab => \R_ADC|Mux8~21_combout\,
	datac => \R_ADC|Mux8~5_combout\,
	datad => \R_ADC|Mux8~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux8~19_combout\);

-- Location: LC_X6_Y4_N6
\L_ADC|Mux8~0\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux8~0_combout\ = (\ADC_L~combout\(2) & ((\ADC_L~combout\(3) & ((\ADC_L~combout\(6)) # (!\ADC_L~combout\(1)))) # (!\ADC_L~combout\(3) & ((\ADC_L~combout\(1)) # (!\ADC_L~combout\(6)))))) # (!\ADC_L~combout\(2) & (((\ADC_L~combout\(6) & 
-- !\ADC_L~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c4bc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(3),
	datab => \ADC_L~combout\(2),
	datac => \ADC_L~combout\(6),
	datad => \ADC_L~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux8~0_combout\);

-- Location: LC_X6_Y4_N7
\L_ADC|Mux8~6\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux8~6_combout\ = (\ADC_L~combout\(2) $ (((\ADC_L~combout\(6) & !\ADC_L~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ADC_L~combout\(2),
	datac => \ADC_L~combout\(6),
	datad => \ADC_L~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux8~6_combout\);

-- Location: LC_X10_Y4_N7
\L_ADC|Mux8~4\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux8~4_combout\ = \ADC_L~combout\(2) $ (((\ADC_L~combout\(6) & (!\ADC_L~combout\(3) & !\ADC_L~combout\(1))) # (!\ADC_L~combout\(6) & (\ADC_L~combout\(3) & \ADC_L~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bd42",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(6),
	datab => \ADC_L~combout\(3),
	datac => \ADC_L~combout\(1),
	datad => \ADC_L~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux8~4_combout\);

-- Location: LC_X10_Y4_N1
\L_ADC|Mux8~2\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux8~2_combout\ = (\ADC_L~combout\(6) & ((\ADC_L~combout\(2)) # ((!\ADC_L~combout\(3) & !\ADC_L~combout\(1))))) # (!\ADC_L~combout\(6) & ((\ADC_L~combout\(1) & (\ADC_L~combout\(3) & !\ADC_L~combout\(2))) # (!\ADC_L~combout\(1) & 
-- ((\ADC_L~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af42",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(6),
	datab => \ADC_L~combout\(3),
	datac => \ADC_L~combout\(1),
	datad => \ADC_L~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux8~2_combout\);

-- Location: LC_X10_Y4_N2
\L_ADC|Mux8~7\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux8~7_combout\ = (\ADC_L~combout\(5) & (\ADC_L~combout\(7))) # (!\ADC_L~combout\(5) & ((\ADC_L~combout\(7) & ((\L_ADC|Mux8~2_combout\))) # (!\ADC_L~combout\(7) & (!\L_ADC|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cd89",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(5),
	datab => \ADC_L~combout\(7),
	datac => \L_ADC|Mux8~4_combout\,
	datad => \L_ADC|Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux8~7_combout\);

-- Location: LC_X6_Y4_N8
\L_ADC|Mux8~8\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux8~8_combout\ = (\ADC_L~combout\(5) & ((\L_ADC|Mux8~7_combout\ & (!\L_ADC|Mux8~0_combout\)) # (!\L_ADC|Mux8~7_combout\ & ((\L_ADC|Mux8~6_combout\))))) # (!\ADC_L~combout\(5) & (((\L_ADC|Mux8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(5),
	datab => \L_ADC|Mux8~0_combout\,
	datac => \L_ADC|Mux8~6_combout\,
	datad => \L_ADC|Mux8~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux8~8_combout\);

-- Location: LC_X8_Y5_N5
\L_ADC|Mux8~11\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux8~11_combout\ = (\ADC_L~combout\(5) & ((\ADC_L~combout\(1) & ((\ADC_L~combout\(6)) # (\ADC_L~combout\(7)))) # (!\ADC_L~combout\(1) & ((!\ADC_L~combout\(7)))))) # (!\ADC_L~combout\(5) & ((\ADC_L~combout\(1) & ((!\ADC_L~combout\(7)))) # 
-- (!\ADC_L~combout\(1) & (\ADC_L~combout\(6) & \ADC_L~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a4da",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(5),
	datab => \ADC_L~combout\(6),
	datac => \ADC_L~combout\(1),
	datad => \ADC_L~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux8~11_combout\);

-- Location: LC_X8_Y5_N3
\L_ADC|Mux8~10\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux8~10_combout\ = (\ADC_L~combout\(5) & ((\ADC_L~combout\(6) & (!\ADC_L~combout\(1) & \ADC_L~combout\(7))) # (!\ADC_L~combout\(6) & (\ADC_L~combout\(1) & !\ADC_L~combout\(7))))) # (!\ADC_L~combout\(5) & (\ADC_L~combout\(7) $ (((\ADC_L~combout\(6) 
-- & !\ADC_L~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5924",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(5),
	datab => \ADC_L~combout\(6),
	datac => \ADC_L~combout\(1),
	datad => \ADC_L~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux8~10_combout\);

-- Location: LC_X8_Y5_N6
\L_ADC|Mux8~12\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux8~12_combout\ = (\ADC_L~combout\(3) & (\ADC_L~combout\(2))) # (!\ADC_L~combout\(3) & ((\ADC_L~combout\(2) & ((!\L_ADC|Mux8~10_combout\))) # (!\ADC_L~combout\(2) & (!\L_ADC|Mux8~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "89cd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(3),
	datab => \ADC_L~combout\(2),
	datac => \L_ADC|Mux8~11_combout\,
	datad => \L_ADC|Mux8~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux8~12_combout\);

-- Location: LC_X8_Y5_N2
\L_ADC|Mux8~13\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux8~13_combout\ = \ADC_L~combout\(5) $ (\ADC_L~combout\(7) $ (((\ADC_L~combout\(6) & !\ADC_L~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "59a6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(5),
	datab => \ADC_L~combout\(6),
	datac => \ADC_L~combout\(1),
	datad => \ADC_L~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux8~13_combout\);

-- Location: LC_X8_Y5_N9
\L_ADC|Mux8~9\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux8~9_combout\ = (\ADC_L~combout\(5) & ((\ADC_L~combout\(1) & ((!\ADC_L~combout\(7)))) # (!\ADC_L~combout\(1) & (\ADC_L~combout\(6) & \ADC_L~combout\(7))))) # (!\ADC_L~combout\(5) & (\ADC_L~combout\(7) $ (((\ADC_L~combout\(6) & 
-- !\ADC_L~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "59a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(5),
	datab => \ADC_L~combout\(6),
	datac => \ADC_L~combout\(1),
	datad => \ADC_L~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux8~9_combout\);

-- Location: LC_X8_Y5_N7
\L_ADC|Mux8~14\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux8~14_combout\ = (\L_ADC|Mux8~12_combout\ & (((!\ADC_L~combout\(3))) # (!\L_ADC|Mux8~13_combout\))) # (!\L_ADC|Mux8~12_combout\ & (((\ADC_L~combout\(3) & \L_ADC|Mux8~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7a2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux8~12_combout\,
	datab => \L_ADC|Mux8~13_combout\,
	datac => \ADC_L~combout\(3),
	datad => \L_ADC|Mux8~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux8~14_combout\);

-- Location: LC_X9_Y4_N2
\L_ADC|Mux8~15\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux8~15_combout\ = (\ADC_L~combout\(0) & ((\L_ADC|Mux8~8_combout\) # ((\ADC_L~combout\(4))))) # (!\ADC_L~combout\(0) & (((\L_ADC|Mux8~14_combout\ & !\ADC_L~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux8~8_combout\,
	datab => \L_ADC|Mux8~14_combout\,
	datac => \ADC_L~combout\(0),
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux8~15_combout\);

-- Location: LC_X10_Y4_N5
\L_ADC|Mux8~1\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux8~1_combout\ = (\ADC_L~combout\(2) $ (((!\ADC_L~combout\(6) & \ADC_L~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(6),
	datac => \ADC_L~combout\(1),
	datad => \ADC_L~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux8~1_combout\);

-- Location: LC_X10_Y4_N4
\L_ADC|Mux8~3\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux8~3_combout\ = (\ADC_L~combout\(5) & (\ADC_L~combout\(7))) # (!\ADC_L~combout\(5) & ((\ADC_L~combout\(7) & (!\L_ADC|Mux8~1_combout\)) # (!\ADC_L~combout\(7) & ((\L_ADC|Mux8~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9d8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(5),
	datab => \ADC_L~combout\(7),
	datac => \L_ADC|Mux8~1_combout\,
	datad => \L_ADC|Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux8~3_combout\);

-- Location: LC_X9_Y4_N0
\L_ADC|Mux8~5\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux8~5_combout\ = (\ADC_L~combout\(5) & ((\L_ADC|Mux8~3_combout\ & ((\L_ADC|Mux8~4_combout\))) # (!\L_ADC|Mux8~3_combout\ & (!\L_ADC|Mux8~0_combout\)))) # (!\ADC_L~combout\(5) & (\L_ADC|Mux8~3_combout\))

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
	dataa => \ADC_L~combout\(5),
	datab => \L_ADC|Mux8~3_combout\,
	datac => \L_ADC|Mux8~0_combout\,
	datad => \L_ADC|Mux8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux8~5_combout\);

-- Location: LC_X10_Y4_N3
\L_ADC|Mux8~18\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux8~18_combout\ = (\ADC_L~combout\(5) & (((\ADC_L~combout\(1) & !\ADC_L~combout\(6))) # (!\ADC_L~combout\(2)))) # (!\ADC_L~combout\(5) & (\ADC_L~combout\(2) $ (((\ADC_L~combout\(1) & !\ADC_L~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "59ae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(5),
	datab => \ADC_L~combout\(1),
	datac => \ADC_L~combout\(6),
	datad => \ADC_L~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux8~18_combout\);

-- Location: LC_X10_Y4_N0
\L_ADC|Mux8~16\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux8~16_combout\ = (\ADC_L~combout\(5) & (\ADC_L~combout\(2) $ (((\ADC_L~combout\(6)) # (!\ADC_L~combout\(1)))))) # (!\ADC_L~combout\(5) & ((\ADC_L~combout\(1) & ((!\ADC_L~combout\(2)))) # (!\ADC_L~combout\(1) & (\ADC_L~combout\(6) & 
-- \ADC_L~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "18e6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(5),
	datab => \ADC_L~combout\(1),
	datac => \ADC_L~combout\(6),
	datad => \ADC_L~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux8~16_combout\);

-- Location: LC_X10_Y4_N9
\L_ADC|Mux8~17\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux8~17_combout\ = (\ADC_L~combout\(5) & (\ADC_L~combout\(2) $ (((\ADC_L~combout\(6)) # (!\ADC_L~combout\(1)))))) # (!\ADC_L~combout\(5) & ((\ADC_L~combout\(1) & (!\ADC_L~combout\(6) & !\ADC_L~combout\(2))) # (!\ADC_L~combout\(1) & 
-- ((\ADC_L~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "19a6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(5),
	datab => \ADC_L~combout\(1),
	datac => \ADC_L~combout\(6),
	datad => \ADC_L~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux8~17_combout\);

-- Location: LC_X10_Y4_N6
\L_ADC|Mux8~20\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux8~20_combout\ = (\ADC_L~combout\(3) & ((\ADC_L~combout\(7) & (\L_ADC|Mux8~16_combout\)) # (!\ADC_L~combout\(7) & ((!\L_ADC|Mux8~17_combout\))))) # (!\ADC_L~combout\(3) & (((\L_ADC|Mux8~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d5a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(3),
	datab => \ADC_L~combout\(7),
	datac => \L_ADC|Mux8~16_combout\,
	datad => \L_ADC|Mux8~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux8~20_combout\);

-- Location: LC_X10_Y4_N8
\L_ADC|Mux8~21\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux8~21_combout\ = (\L_ADC|Mux8~18_combout\ & (\L_ADC|Mux8~20_combout\ & ((\ADC_L~combout\(7)) # (!\L_ADC|Mux8~17_combout\)))) # (!\L_ADC|Mux8~18_combout\ & ((\L_ADC|Mux8~20_combout\) # ((!\ADC_L~combout\(7) & !\L_ADC|Mux8~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0f1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux8~18_combout\,
	datab => \ADC_L~combout\(7),
	datac => \L_ADC|Mux8~20_combout\,
	datad => \L_ADC|Mux8~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux8~21_combout\);

-- Location: LC_X9_Y4_N1
\L_ADC|Mux8~19\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux8~19_combout\ = (\L_ADC|Mux8~15_combout\ & (((\L_ADC|Mux8~21_combout\)) # (!\ADC_L~combout\(4)))) # (!\L_ADC|Mux8~15_combout\ & (\ADC_L~combout\(4) & (\L_ADC|Mux8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux8~15_combout\,
	datab => \ADC_L~combout\(4),
	datac => \L_ADC|Mux8~5_combout\,
	datad => \L_ADC|Mux8~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux8~19_combout\);

-- Location: LC_X6_Y5_N2
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = \dist[1]~0_combout\ $ (((\L0_R1~combout\ & (\R_ADC|Mux8~19_combout\)) # (!\L0_R1~combout\ & ((\L_ADC|Mux8~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "665a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dist[1]~0_combout\,
	datab => \R_ADC|Mux8~19_combout\,
	datac => \L_ADC|Mux8~19_combout\,
	datad => \L0_R1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\);

-- Location: LC_X6_Y5_N0
\dist[2]~1\ : maxv_lcell
-- Equation(s):
-- \dist[2]~1_combout\ = ((\L0_R1~combout\ & ((\R_ADC|Mux8~19_combout\))) # (!\L0_R1~combout\ & (\L_ADC|Mux8~19_combout\)))

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
	dataa => \L_ADC|Mux8~19_combout\,
	datac => \R_ADC|Mux8~19_combout\,
	datad => \L0_R1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dist[2]~1_combout\);

-- Location: LC_X4_Y6_N9
\R_ADC|Mux7~6\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux7~6_combout\ = (\ADC_R~combout\(1) & ((\ADC_R~combout\(0) & ((\ADC_R~combout\(6)))) # (!\ADC_R~combout\(0) & (!\ADC_R~combout\(4) & !\ADC_R~combout\(6))))) # (!\ADC_R~combout\(1) & ((\ADC_R~combout\(0) $ (\ADC_R~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a552",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(1),
	datab => \ADC_R~combout\(4),
	datac => \ADC_R~combout\(0),
	datad => \ADC_R~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux7~6_combout\);

-- Location: LC_X4_Y6_N1
\R_ADC|Mux7~5\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux7~5_combout\ = (\ADC_R~combout\(1) & ((\ADC_R~combout\(0) & (\ADC_R~combout\(4) & \ADC_R~combout\(6))) # (!\ADC_R~combout\(0) & ((!\ADC_R~combout\(6)))))) # (!\ADC_R~combout\(1) & (\ADC_R~combout\(6) & ((\ADC_R~combout\(4)) # 
-- (\ADC_R~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d40a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(1),
	datab => \ADC_R~combout\(4),
	datac => \ADC_R~combout\(0),
	datad => \ADC_R~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux7~5_combout\);

-- Location: LC_X4_Y6_N4
\R_ADC|Mux7~7\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux7~7_combout\ = (\ADC_R~combout\(2) & ((\ADC_R~combout\(7) & (!\R_ADC|Mux7~6_combout\)) # (!\ADC_R~combout\(7) & ((\R_ADC|Mux7~5_combout\))))) # (!\ADC_R~combout\(2) & ((\ADC_R~combout\(7) & ((!\R_ADC|Mux7~5_combout\))) # (!\ADC_R~combout\(7) & 
-- (!\R_ADC|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2b71",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(2),
	datab => \R_ADC|Mux7~6_combout\,
	datac => \ADC_R~combout\(7),
	datad => \R_ADC|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux7~7_combout\);

-- Location: LC_X3_Y6_N6
\R_ADC|Mux7~8\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux7~8_combout\ = (\ADC_R~combout\(6) & (!\ADC_R~combout\(1) & (\ADC_R~combout\(4)))) # (!\ADC_R~combout\(6) & (\ADC_R~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6464",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(6),
	datab => \ADC_R~combout\(1),
	datac => \ADC_R~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux7~8_combout\);

-- Location: LC_X3_Y6_N9
\R_ADC|Mux7~9\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux7~9_combout\ = (\ADC_R~combout\(6) & (!\ADC_R~combout\(1) & (!\ADC_R~combout\(4)))) # (!\ADC_R~combout\(6) & (\ADC_R~combout\(1) & (\ADC_R~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4242",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(6),
	datab => \ADC_R~combout\(1),
	datac => \ADC_R~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux7~9_combout\);

-- Location: LC_X3_Y6_N2
\R_ADC|Mux7~11\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux7~11_combout\ = (\ADC_R~combout\(0) & ((\R_ADC|Mux7~8_combout\ & ((\ADC_R~combout\(7)) # (!\R_ADC|Mux7~9_combout\))) # (!\R_ADC|Mux7~8_combout\ & ((\R_ADC|Mux7~9_combout\))))) # (!\ADC_R~combout\(0) & (\R_ADC|Mux7~8_combout\ $ 
-- (((\ADC_R~combout\(7) & !\R_ADC|Mux7~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dab4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(0),
	datab => \ADC_R~combout\(7),
	datac => \R_ADC|Mux7~8_combout\,
	datad => \R_ADC|Mux7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux7~11_combout\);

-- Location: LC_X3_Y6_N8
\R_ADC|Mux7~10\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux7~10_combout\ = (\ADC_R~combout\(0) & (\R_ADC|Mux7~8_combout\ $ (((\R_ADC|Mux7~9_combout\) # (!\ADC_R~combout\(7)))))) # (!\ADC_R~combout\(0) & ((\R_ADC|Mux7~8_combout\) # ((!\ADC_R~combout\(7) & \R_ADC|Mux7~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5bd2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(0),
	datab => \ADC_R~combout\(7),
	datac => \R_ADC|Mux7~8_combout\,
	datad => \R_ADC|Mux7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux7~10_combout\);

-- Location: LC_X3_Y6_N0
\R_ADC|Mux7~12\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux7~12_combout\ = ((\ADC_R~combout\(2) & (!\R_ADC|Mux7~11_combout\)) # (!\ADC_R~combout\(2) & ((\R_ADC|Mux7~10_combout\))))

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
	datab => \R_ADC|Mux7~11_combout\,
	datac => \ADC_R~combout\(2),
	datad => \R_ADC|Mux7~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux7~12_combout\);

-- Location: LC_X4_Y6_N8
\R_ADC|Mux7~13\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux7~13_combout\ = (\ADC_R~combout\(5) & (((\ADC_R~combout\(3))))) # (!\ADC_R~combout\(5) & ((\ADC_R~combout\(3) & (\R_ADC|Mux7~7_combout\)) # (!\ADC_R~combout\(3) & ((\R_ADC|Mux7~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux7~7_combout\,
	datab => \R_ADC|Mux7~12_combout\,
	datac => \ADC_R~combout\(5),
	datad => \ADC_R~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux7~13_combout\);

-- Location: LC_X3_Y4_N1
\R_ADC|Mux7~1\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux7~1_combout\ = (\ADC_R~combout\(4) & (\ADC_R~combout\(0) $ (((\ADC_R~combout\(6)) # (!\ADC_R~combout\(1)))))) # (!\ADC_R~combout\(4) & (\ADC_R~combout\(6) & (!\ADC_R~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "248e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(4),
	datab => \ADC_R~combout\(6),
	datac => \ADC_R~combout\(1),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux7~1_combout\);

-- Location: LC_X3_Y4_N4
\R_ADC|Mux7~0\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux7~0_combout\ = (\ADC_R~combout\(6) & (\ADC_R~combout\(4) & (\ADC_R~combout\(1) $ (\ADC_R~combout\(0))))) # (!\ADC_R~combout\(6) & ((\ADC_R~combout\(1)) # ((\ADC_R~combout\(4) & !\ADC_R~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "38b2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(4),
	datab => \ADC_R~combout\(6),
	datac => \ADC_R~combout\(1),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux7~0_combout\);

-- Location: LC_X3_Y4_N5
\R_ADC|Mux7~3\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux7~3_combout\ = (\ADC_R~combout\(2) & ((\R_ADC|Mux7~1_combout\ & (!\R_ADC|Mux7~0_combout\ & !\ADC_R~combout\(0))) # (!\R_ADC|Mux7~1_combout\ & ((\ADC_R~combout\(0)))))) # (!\ADC_R~combout\(2) & ((\R_ADC|Mux7~0_combout\ & ((!\ADC_R~combout\(0)))) 
-- # (!\R_ADC|Mux7~0_combout\ & (\R_ADC|Mux7~1_combout\ & \ADC_R~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2658",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(2),
	datab => \R_ADC|Mux7~1_combout\,
	datac => \R_ADC|Mux7~0_combout\,
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux7~3_combout\);

-- Location: LC_X3_Y4_N9
\R_ADC|Mux7~2\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux7~2_combout\ = (\ADC_R~combout\(2) & (\R_ADC|Mux7~0_combout\ $ (((!\R_ADC|Mux7~1_combout\ & !\ADC_R~combout\(0)))))) # (!\ADC_R~combout\(2) & ((\R_ADC|Mux7~1_combout\ & ((!\ADC_R~combout\(0)))) # (!\R_ADC|Mux7~1_combout\ & 
-- (!\R_ADC|Mux7~0_combout\ & \ADC_R~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a1c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(2),
	datab => \R_ADC|Mux7~1_combout\,
	datac => \R_ADC|Mux7~0_combout\,
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux7~2_combout\);

-- Location: LC_X3_Y4_N2
\R_ADC|Mux7~4\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux7~4_combout\ = (\R_ADC|Mux7~2_combout\ $ (((\ADC_R~combout\(7) & \R_ADC|Mux7~3_combout\))))

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
	dataa => \ADC_R~combout\(7),
	datac => \R_ADC|Mux7~3_combout\,
	datad => \R_ADC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux7~4_combout\);

-- Location: LC_X4_Y6_N7
\R_ADC|Mux7~15\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux7~15_combout\ = (\ADC_R~combout\(1) & (\ADC_R~combout\(6) & ((\ADC_R~combout\(2)) # (!\ADC_R~combout\(7))))) # (!\ADC_R~combout\(1) & (\ADC_R~combout\(2) $ (((\ADC_R~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9b44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(1),
	datab => \ADC_R~combout\(2),
	datac => \ADC_R~combout\(7),
	datad => \ADC_R~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux7~15_combout\);

-- Location: LC_X4_Y6_N2
\R_ADC|Mux7~14\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux7~14_combout\ = (\ADC_R~combout\(2) & (!\ADC_R~combout\(1) & ((\ADC_R~combout\(6))))) # (!\ADC_R~combout\(2) & (\ADC_R~combout\(1) $ (((\ADC_R~combout\(7) & \ADC_R~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5622",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(1),
	datab => \ADC_R~combout\(2),
	datac => \ADC_R~combout\(7),
	datad => \ADC_R~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux7~14_combout\);

-- Location: LC_X4_Y6_N0
\R_ADC|Mux7~17\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux7~17_combout\ = (\ADC_R~combout\(0) & ((\ADC_R~combout\(7) & ((\R_ADC|Mux7~14_combout\))) # (!\ADC_R~combout\(7) & (\R_ADC|Mux7~15_combout\ & !\R_ADC|Mux7~14_combout\)))) # (!\ADC_R~combout\(0) & (!\R_ADC|Mux7~15_combout\ & ((\ADC_R~combout\(7)) 
-- # (\R_ADC|Mux7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b118",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(0),
	datab => \R_ADC|Mux7~15_combout\,
	datac => \ADC_R~combout\(7),
	datad => \R_ADC|Mux7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux7~17_combout\);

-- Location: LC_X4_Y6_N6
\R_ADC|Mux7~16\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux7~16_combout\ = (\ADC_R~combout\(7) & ((\R_ADC|Mux7~15_combout\) # (\ADC_R~combout\(0) $ (\R_ADC|Mux7~14_combout\)))) # (!\ADC_R~combout\(7) & (\R_ADC|Mux7~15_combout\ $ (((\ADC_R~combout\(0) & !\R_ADC|Mux7~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dce6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(0),
	datab => \R_ADC|Mux7~15_combout\,
	datac => \ADC_R~combout\(7),
	datad => \R_ADC|Mux7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux7~16_combout\);

-- Location: LC_X4_Y6_N3
\R_ADC|Mux7~18\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux7~18_combout\ = ((\ADC_R~combout\(4) & (\R_ADC|Mux7~17_combout\)) # (!\ADC_R~combout\(4) & ((!\R_ADC|Mux7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \R_ADC|Mux7~17_combout\,
	datac => \R_ADC|Mux7~16_combout\,
	datad => \ADC_R~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux7~18_combout\);

-- Location: LC_X4_Y6_N5
\R_ADC|Mux7~19\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux7~19_combout\ = (\R_ADC|Mux7~13_combout\ & (((\R_ADC|Mux7~18_combout\) # (!\ADC_R~combout\(5))))) # (!\R_ADC|Mux7~13_combout\ & (\R_ADC|Mux7~4_combout\ & (\ADC_R~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux7~13_combout\,
	datab => \R_ADC|Mux7~4_combout\,
	datac => \ADC_R~combout\(5),
	datad => \R_ADC|Mux7~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux7~19_combout\);

-- Location: LC_X7_Y5_N8
\L_ADC|Mux7~5\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux7~5_combout\ = (\ADC_L~combout\(0) & (\ADC_L~combout\(6) & ((\ADC_L~combout\(4)) # (!\ADC_L~combout\(1))))) # (!\ADC_L~combout\(0) & ((\ADC_L~combout\(6) & (\ADC_L~combout\(4) & !\ADC_L~combout\(1))) # (!\ADC_L~combout\(6) & 
-- ((\ADC_L~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "85e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(0),
	datab => \ADC_L~combout\(4),
	datac => \ADC_L~combout\(6),
	datad => \ADC_L~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux7~5_combout\);

-- Location: LC_X7_Y5_N9
\L_ADC|Mux7~6\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux7~6_combout\ = (\ADC_L~combout\(0) & ((\ADC_L~combout\(6) $ (!\ADC_L~combout\(1))))) # (!\ADC_L~combout\(0) & ((\ADC_L~combout\(6) & ((!\ADC_L~combout\(1)))) # (!\ADC_L~combout\(6) & (!\ADC_L~combout\(4) & \ADC_L~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a15a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(0),
	datab => \ADC_L~combout\(4),
	datac => \ADC_L~combout\(6),
	datad => \ADC_L~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux7~6_combout\);

-- Location: LC_X7_Y5_N2
\L_ADC|Mux7~7\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux7~7_combout\ = (\ADC_L~combout\(2) & ((\ADC_L~combout\(7) & ((!\L_ADC|Mux7~6_combout\))) # (!\ADC_L~combout\(7) & (\L_ADC|Mux7~5_combout\)))) # (!\ADC_L~combout\(2) & ((\ADC_L~combout\(7) & (!\L_ADC|Mux7~5_combout\)) # (!\ADC_L~combout\(7) & 
-- ((!\L_ADC|Mux7~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "18db",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux7~5_combout\,
	datab => \ADC_L~combout\(2),
	datac => \ADC_L~combout\(7),
	datad => \L_ADC|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux7~7_combout\);

-- Location: LC_X9_Y5_N5
\L_ADC|Mux7~9\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux7~9_combout\ = ((\ADC_L~combout\(6) & (!\ADC_L~combout\(1) & !\ADC_L~combout\(4))) # (!\ADC_L~combout\(6) & (\ADC_L~combout\(1) & \ADC_L~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "300c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ADC_L~combout\(6),
	datac => \ADC_L~combout\(1),
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux7~9_combout\);

-- Location: LC_X9_Y5_N1
\L_ADC|Mux7~8\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux7~8_combout\ = ((\ADC_L~combout\(6) & (!\ADC_L~combout\(1) & \ADC_L~combout\(4))) # (!\ADC_L~combout\(6) & (\ADC_L~combout\(1))))

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
	datab => \ADC_L~combout\(6),
	datac => \ADC_L~combout\(1),
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux7~8_combout\);

-- Location: LC_X9_Y5_N2
\L_ADC|Mux7~11\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux7~11_combout\ = (\ADC_L~combout\(0) & ((\L_ADC|Mux7~9_combout\ & ((\ADC_L~combout\(7)) # (!\L_ADC|Mux7~8_combout\))) # (!\L_ADC|Mux7~9_combout\ & ((\L_ADC|Mux7~8_combout\))))) # (!\ADC_L~combout\(0) & (\L_ADC|Mux7~8_combout\ $ 
-- (((\ADC_L~combout\(7) & !\L_ADC|Mux7~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bdc2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(7),
	datab => \ADC_L~combout\(0),
	datac => \L_ADC|Mux7~9_combout\,
	datad => \L_ADC|Mux7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux7~11_combout\);

-- Location: LC_X9_Y5_N3
\L_ADC|Mux7~10\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux7~10_combout\ = (\ADC_L~combout\(0) & (\L_ADC|Mux7~8_combout\ $ (((\L_ADC|Mux7~9_combout\) # (!\ADC_L~combout\(7)))))) # (!\ADC_L~combout\(0) & ((\L_ADC|Mux7~8_combout\) # ((!\ADC_L~combout\(7) & \L_ADC|Mux7~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3bd4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(7),
	datab => \ADC_L~combout\(0),
	datac => \L_ADC|Mux7~9_combout\,
	datad => \L_ADC|Mux7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux7~10_combout\);

-- Location: LC_X9_Y5_N4
\L_ADC|Mux7~12\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux7~12_combout\ = ((\ADC_L~combout\(2) & (!\L_ADC|Mux7~11_combout\)) # (!\ADC_L~combout\(2) & ((\L_ADC|Mux7~10_combout\))))

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
	datab => \L_ADC|Mux7~11_combout\,
	datac => \ADC_L~combout\(2),
	datad => \L_ADC|Mux7~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux7~12_combout\);

-- Location: LC_X8_Y5_N8
\L_ADC|Mux7~13\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux7~13_combout\ = (\ADC_L~combout\(5) & (((\ADC_L~combout\(3))))) # (!\ADC_L~combout\(5) & ((\ADC_L~combout\(3) & (\L_ADC|Mux7~7_combout\)) # (!\ADC_L~combout\(3) & ((\L_ADC|Mux7~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(5),
	datab => \L_ADC|Mux7~7_combout\,
	datac => \ADC_L~combout\(3),
	datad => \L_ADC|Mux7~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux7~13_combout\);

-- Location: LC_X10_Y6_N6
\L_ADC|Mux7~1\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux7~1_combout\ = (\ADC_L~combout\(4) & (\ADC_L~combout\(0) $ (((\ADC_L~combout\(6)) # (!\ADC_L~combout\(1)))))) # (!\ADC_L~combout\(4) & (\ADC_L~combout\(6) & (!\ADC_L~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "42b2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(6),
	datab => \ADC_L~combout\(1),
	datac => \ADC_L~combout\(4),
	datad => \ADC_L~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux7~1_combout\);

-- Location: LC_X10_Y6_N1
\L_ADC|Mux7~0\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux7~0_combout\ = (\ADC_L~combout\(6) & (\ADC_L~combout\(4) & (\ADC_L~combout\(1) $ (\ADC_L~combout\(0))))) # (!\ADC_L~combout\(6) & ((\ADC_L~combout\(1)) # ((\ADC_L~combout\(4) & !\ADC_L~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "64d4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(6),
	datab => \ADC_L~combout\(1),
	datac => \ADC_L~combout\(4),
	datad => \ADC_L~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux7~0_combout\);

-- Location: LC_X10_Y6_N5
\L_ADC|Mux7~3\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux7~3_combout\ = (\ADC_L~combout\(0) & ((\ADC_L~combout\(2) & (!\L_ADC|Mux7~1_combout\)) # (!\ADC_L~combout\(2) & (\L_ADC|Mux7~1_combout\ & !\L_ADC|Mux7~0_combout\)))) # (!\ADC_L~combout\(0) & ((\ADC_L~combout\(2) & (\L_ADC|Mux7~1_combout\ & 
-- !\L_ADC|Mux7~0_combout\)) # (!\ADC_L~combout\(2) & ((\L_ADC|Mux7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1968",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(0),
	datab => \ADC_L~combout\(2),
	datac => \L_ADC|Mux7~1_combout\,
	datad => \L_ADC|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux7~3_combout\);

-- Location: LC_X10_Y6_N9
\L_ADC|Mux7~2\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux7~2_combout\ = (\ADC_L~combout\(0) & ((\ADC_L~combout\(2) & ((\L_ADC|Mux7~0_combout\))) # (!\ADC_L~combout\(2) & (!\L_ADC|Mux7~1_combout\ & !\L_ADC|Mux7~0_combout\)))) # (!\ADC_L~combout\(0) & (\L_ADC|Mux7~1_combout\ $ (((\ADC_L~combout\(2) & 
-- !\L_ADC|Mux7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d816",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(0),
	datab => \ADC_L~combout\(2),
	datac => \L_ADC|Mux7~1_combout\,
	datad => \L_ADC|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux7~2_combout\);

-- Location: LC_X10_Y6_N2
\L_ADC|Mux7~4\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux7~4_combout\ = (\L_ADC|Mux7~2_combout\ $ (((\ADC_L~combout\(7) & \L_ADC|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3fc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ADC_L~combout\(7),
	datac => \L_ADC|Mux7~3_combout\,
	datad => \L_ADC|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux7~4_combout\);

-- Location: LC_X10_Y6_N4
\L_ADC|Mux7~15\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux7~15_combout\ = (\ADC_L~combout\(2) & (\ADC_L~combout\(6) $ ((!\ADC_L~combout\(1))))) # (!\ADC_L~combout\(2) & (\ADC_L~combout\(6) & ((!\ADC_L~combout\(7)) # (!\ADC_L~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "86a6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(6),
	datab => \ADC_L~combout\(2),
	datac => \ADC_L~combout\(1),
	datad => \ADC_L~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux7~15_combout\);

-- Location: LC_X10_Y6_N3
\L_ADC|Mux7~14\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux7~14_combout\ = (\ADC_L~combout\(6) & (\ADC_L~combout\(1) $ (((\ADC_L~combout\(2)) # (\ADC_L~combout\(7)))))) # (!\ADC_L~combout\(6) & (!\ADC_L~combout\(2) & (\ADC_L~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1a38",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(6),
	datab => \ADC_L~combout\(2),
	datac => \ADC_L~combout\(1),
	datad => \ADC_L~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux7~14_combout\);

-- Location: LC_X10_Y6_N0
\L_ADC|Mux7~17\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux7~17_combout\ = (\ADC_L~combout\(0) & ((\ADC_L~combout\(7) & ((\L_ADC|Mux7~14_combout\))) # (!\ADC_L~combout\(7) & (\L_ADC|Mux7~15_combout\ & !\L_ADC|Mux7~14_combout\)))) # (!\ADC_L~combout\(0) & (!\L_ADC|Mux7~15_combout\ & ((\ADC_L~combout\(7)) 
-- # (\L_ADC|Mux7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8d24",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(0),
	datab => \ADC_L~combout\(7),
	datac => \L_ADC|Mux7~15_combout\,
	datad => \L_ADC|Mux7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux7~17_combout\);

-- Location: LC_X10_Y6_N7
\L_ADC|Mux7~16\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux7~16_combout\ = (\ADC_L~combout\(7) & ((\L_ADC|Mux7~15_combout\) # (\ADC_L~combout\(0) $ (\L_ADC|Mux7~14_combout\)))) # (!\ADC_L~combout\(7) & (\L_ADC|Mux7~15_combout\ $ (((\ADC_L~combout\(0) & !\L_ADC|Mux7~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4da",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(0),
	datab => \ADC_L~combout\(7),
	datac => \L_ADC|Mux7~15_combout\,
	datad => \L_ADC|Mux7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux7~16_combout\);

-- Location: LC_X10_Y6_N8
\L_ADC|Mux7~18\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux7~18_combout\ = ((\ADC_L~combout\(4) & (\L_ADC|Mux7~17_combout\)) # (!\ADC_L~combout\(4) & ((!\L_ADC|Mux7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \L_ADC|Mux7~17_combout\,
	datac => \ADC_L~combout\(4),
	datad => \L_ADC|Mux7~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux7~18_combout\);

-- Location: LC_X8_Y5_N4
\L_ADC|Mux7~19\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux7~19_combout\ = (\L_ADC|Mux7~13_combout\ & (((\L_ADC|Mux7~18_combout\)) # (!\ADC_L~combout\(5)))) # (!\L_ADC|Mux7~13_combout\ & (\ADC_L~combout\(5) & (\L_ADC|Mux7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux7~13_combout\,
	datab => \ADC_L~combout\(5),
	datac => \L_ADC|Mux7~4_combout\,
	datad => \L_ADC|Mux7~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux7~19_combout\);

-- Location: LC_X6_Y5_N7
\dist[3]~2\ : maxv_lcell
-- Equation(s):
-- \dist[3]~2_combout\ = ((\L0_R1~combout\ & (\R_ADC|Mux7~19_combout\)) # (!\L0_R1~combout\ & ((\L_ADC|Mux7~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux7~19_combout\,
	datab => \L_ADC|Mux7~19_combout\,
	datad => \L0_R1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dist[3]~2_combout\);

-- Location: LC_X6_Y5_N5
\Add0~1\ : maxv_lcell
-- Equation(s):
-- \Add0~1_combout\ = \dist[3]~2_combout\ $ (((\dist[1]~0_combout\) # ((\dist[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1e1e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dist[1]~0_combout\,
	datab => \dist[2]~1_combout\,
	datac => \dist[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~1_combout\);

-- Location: LC_X7_Y7_N0
\L_ADC|Mux6~12\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux6~12_combout\ = (\ADC_L~combout\(2) & (((!\ADC_L~combout\(3) & \ADC_L~combout\(6))) # (!\ADC_L~combout\(7)))) # (!\ADC_L~combout\(2) & (\ADC_L~combout\(7) $ (((!\ADC_L~combout\(3) & \ADC_L~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "65ba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(2),
	datab => \ADC_L~combout\(3),
	datac => \ADC_L~combout\(6),
	datad => \ADC_L~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux6~12_combout\);

-- Location: LC_X7_Y7_N3
\L_ADC|Mux6~13\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux6~13_combout\ = (\ADC_L~combout\(2) & ((\ADC_L~combout\(3) & (\ADC_L~combout\(6))) # (!\ADC_L~combout\(3) & ((!\ADC_L~combout\(7)))))) # (!\ADC_L~combout\(2) & (\ADC_L~combout\(6) & (\ADC_L~combout\(3) $ (\ADC_L~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "90e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(2),
	datab => \ADC_L~combout\(3),
	datac => \ADC_L~combout\(6),
	datad => \ADC_L~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux6~13_combout\);

-- Location: LC_X7_Y7_N2
\L_ADC|Mux6~15\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux6~15_combout\ = (!\ADC_L~combout\(0) & (\L_ADC|Mux6~13_combout\ & (\ADC_L~combout\(3) $ (!\L_ADC|Mux6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(0),
	datab => \ADC_L~combout\(3),
	datac => \L_ADC|Mux6~12_combout\,
	datad => \L_ADC|Mux6~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux6~15_combout\);

-- Location: LC_X7_Y7_N5
\L_ADC|Mux6~14\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux6~14_combout\ = (\L_ADC|Mux6~12_combout\ & ((\ADC_L~combout\(3) $ (!\L_ADC|Mux6~13_combout\)))) # (!\L_ADC|Mux6~12_combout\ & ((\ADC_L~combout\(0) & ((!\L_ADC|Mux6~13_combout\))) # (!\ADC_L~combout\(0) & (\ADC_L~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c43e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(0),
	datab => \ADC_L~combout\(3),
	datac => \L_ADC|Mux6~12_combout\,
	datad => \L_ADC|Mux6~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux6~14_combout\);

-- Location: LC_X7_Y7_N6
\L_ADC|Mux6~16\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux6~16_combout\ = (\L_ADC|Mux6~14_combout\ $ (((!\L_ADC|Mux6~15_combout\ & !\ADC_L~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \L_ADC|Mux6~15_combout\,
	datac => \L_ADC|Mux6~14_combout\,
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux6~16_combout\);

-- Location: LC_X9_Y5_N6
\L_ADC|Mux6~6\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux6~6_combout\ = (\ADC_L~combout\(6) & (\ADC_L~combout\(7) $ (\ADC_L~combout\(2) $ (!\ADC_L~combout\(4))))) # (!\ADC_L~combout\(6) & ((\ADC_L~combout\(7) & (!\ADC_L~combout\(2) & !\ADC_L~combout\(4))) # (!\ADC_L~combout\(7) & (\ADC_L~combout\(2) & 
-- \ADC_L~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5886",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(7),
	datab => \ADC_L~combout\(6),
	datac => \ADC_L~combout\(2),
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux6~6_combout\);

-- Location: LC_X9_Y5_N9
\L_ADC|Mux6~8\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux6~8_combout\ = \ADC_L~combout\(4) $ (((\ADC_L~combout\(7) & ((!\ADC_L~combout\(2)))) # (!\ADC_L~combout\(7) & (!\ADC_L~combout\(6) & \ADC_L~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e51a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(7),
	datab => \ADC_L~combout\(6),
	datac => \ADC_L~combout\(2),
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux6~8_combout\);

-- Location: LC_X9_Y5_N7
\L_ADC|Mux6~7\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux6~7_combout\ = (\ADC_L~combout\(7) & (\ADC_L~combout\(4) $ (((\ADC_L~combout\(6)) # (!\ADC_L~combout\(2)))))) # (!\ADC_L~combout\(7) & ((\ADC_L~combout\(6) & (\ADC_L~combout\(2) $ (!\ADC_L~combout\(4)))) # (!\ADC_L~combout\(6) & 
-- ((\ADC_L~combout\(2)) # (\ADC_L~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "719e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(7),
	datab => \ADC_L~combout\(6),
	datac => \ADC_L~combout\(2),
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux6~7_combout\);

-- Location: LC_X9_Y5_N8
\L_ADC|Mux6~9\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux6~9_combout\ = (\ADC_L~combout\(0) & (((\ADC_L~combout\(3)) # (\L_ADC|Mux6~7_combout\)))) # (!\ADC_L~combout\(0) & (\L_ADC|Mux6~8_combout\ & (!\ADC_L~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(0),
	datab => \L_ADC|Mux6~8_combout\,
	datac => \ADC_L~combout\(3),
	datad => \L_ADC|Mux6~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux6~9_combout\);

-- Location: LC_X9_Y7_N2
\L_ADC|Mux6~10\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux6~10_combout\ = (\ADC_L~combout\(7) & ((\ADC_L~combout\(2) $ (!\ADC_L~combout\(4))))) # (!\ADC_L~combout\(7) & ((\ADC_L~combout\(2) & ((\ADC_L~combout\(6)) # (!\ADC_L~combout\(4)))) # (!\ADC_L~combout\(2) & ((\ADC_L~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(7),
	datab => \ADC_L~combout\(6),
	datac => \ADC_L~combout\(2),
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux6~10_combout\);

-- Location: LC_X9_Y7_N3
\L_ADC|Mux6~11\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux6~11_combout\ = (\ADC_L~combout\(3) & ((\L_ADC|Mux6~9_combout\ & ((!\L_ADC|Mux6~10_combout\))) # (!\L_ADC|Mux6~9_combout\ & (\L_ADC|Mux6~6_combout\)))) # (!\ADC_L~combout\(3) & (((\L_ADC|Mux6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "38f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux6~6_combout\,
	datab => \ADC_L~combout\(3),
	datac => \L_ADC|Mux6~9_combout\,
	datad => \L_ADC|Mux6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux6~11_combout\);

-- Location: LC_X9_Y7_N9
\L_ADC|Mux6~17\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux6~17_combout\ = (\ADC_L~combout\(5) & (\ADC_L~combout\(1))) # (!\ADC_L~combout\(5) & ((\ADC_L~combout\(1) & ((\L_ADC|Mux6~11_combout\))) # (!\ADC_L~combout\(1) & (\L_ADC|Mux6~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(5),
	datab => \ADC_L~combout\(1),
	datac => \L_ADC|Mux6~16_combout\,
	datad => \L_ADC|Mux6~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux6~17_combout\);

-- Location: LC_X7_Y7_N7
\L_ADC|Mux6~18\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux6~18_combout\ = (\ADC_L~combout\(3) & ((\ADC_L~combout\(2) & (\ADC_L~combout\(6) & \ADC_L~combout\(0))) # (!\ADC_L~combout\(2) & ((!\ADC_L~combout\(0)))))) # (!\ADC_L~combout\(3) & (!\ADC_L~combout\(6) & (\ADC_L~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "901c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(6),
	datab => \ADC_L~combout\(3),
	datac => \ADC_L~combout\(2),
	datad => \ADC_L~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux6~18_combout\);

-- Location: LC_X7_Y7_N1
\L_ADC|Mux6~19\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux6~19_combout\ = (\ADC_L~combout\(6) & ((\ADC_L~combout\(3) & ((\ADC_L~combout\(0)))) # (!\ADC_L~combout\(3) & (!\ADC_L~combout\(2))))) # (!\ADC_L~combout\(6) & (\ADC_L~combout\(3) & (!\ADC_L~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8e06",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(6),
	datab => \ADC_L~combout\(3),
	datac => \ADC_L~combout\(2),
	datad => \ADC_L~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux6~19_combout\);

-- Location: LC_X7_Y7_N8
\L_ADC|Mux6~21\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux6~21_combout\ = (\ADC_L~combout\(0) & (\L_ADC|Mux6~18_combout\ & (!\L_ADC|Mux6~19_combout\ & \ADC_L~combout\(7)))) # (!\ADC_L~combout\(0) & (\L_ADC|Mux6~19_combout\ & (\L_ADC|Mux6~18_combout\ $ (!\ADC_L~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4810",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(0),
	datab => \L_ADC|Mux6~18_combout\,
	datac => \L_ADC|Mux6~19_combout\,
	datad => \ADC_L~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux6~21_combout\);

-- Location: LC_X7_Y7_N9
\L_ADC|Mux6~20\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux6~20_combout\ = (\L_ADC|Mux6~18_combout\ & ((\L_ADC|Mux6~19_combout\) # ((!\ADC_L~combout\(0) & !\ADC_L~combout\(7))))) # (!\L_ADC|Mux6~18_combout\ & (\ADC_L~combout\(7) $ (((\ADC_L~combout\(0) & \L_ADC|Mux6~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d3e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(0),
	datab => \L_ADC|Mux6~18_combout\,
	datac => \L_ADC|Mux6~19_combout\,
	datad => \ADC_L~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux6~20_combout\);

-- Location: LC_X7_Y7_N4
\L_ADC|Mux6~22\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux6~22_combout\ = \L_ADC|Mux6~20_combout\ $ (((!\L_ADC|Mux6~21_combout\ & ((\ADC_L~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "99cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux6~21_combout\,
	datab => \L_ADC|Mux6~20_combout\,
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux6~22_combout\);

-- Location: LC_X9_Y7_N4
\L_ADC|Mux6~1\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux6~1_combout\ = (\ADC_L~combout\(7) & (!\ADC_L~combout\(2) & ((\ADC_L~combout\(6)) # (\ADC_L~combout\(0))))) # (!\ADC_L~combout\(7) & (\ADC_L~combout\(2) & ((!\ADC_L~combout\(0)) # (!\ADC_L~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1a58",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(7),
	datab => \ADC_L~combout\(6),
	datac => \ADC_L~combout\(2),
	datad => \ADC_L~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux6~1_combout\);

-- Location: LC_X9_Y7_N0
\L_ADC|Mux6~2\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux6~2_combout\ = \ADC_L~combout\(7) $ (((!\ADC_L~combout\(2) & ((\ADC_L~combout\(6)) # (\ADC_L~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a5a6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(7),
	datab => \ADC_L~combout\(6),
	datac => \ADC_L~combout\(2),
	datad => \ADC_L~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux6~2_combout\);

-- Location: LC_X9_Y7_N6
\L_ADC|Mux6~3\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux6~3_combout\ = (\ADC_L~combout\(3) & (((\ADC_L~combout\(4))))) # (!\ADC_L~combout\(3) & ((\ADC_L~combout\(4) & (!\L_ADC|Mux6~1_combout\)) # (!\ADC_L~combout\(4) & ((!\L_ADC|Mux6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux6~1_combout\,
	datab => \ADC_L~combout\(3),
	datac => \L_ADC|Mux6~2_combout\,
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux6~3_combout\);

-- Location: LC_X9_Y7_N5
\L_ADC|Mux6~4\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux6~4_combout\ = (\ADC_L~combout\(6) & (\ADC_L~combout\(7) $ (((!\ADC_L~combout\(2) & \ADC_L~combout\(0)))))) # (!\ADC_L~combout\(6) & ((\ADC_L~combout\(7) & (!\ADC_L~combout\(2))) # (!\ADC_L~combout\(7) & (\ADC_L~combout\(2) & 
-- !\ADC_L~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "869a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(7),
	datab => \ADC_L~combout\(6),
	datac => \ADC_L~combout\(2),
	datad => \ADC_L~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux6~4_combout\);

-- Location: LC_X9_Y7_N1
\L_ADC|Mux6~0\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux6~0_combout\ = (\ADC_L~combout\(7) & (((\ADC_L~combout\(6) & \ADC_L~combout\(0))) # (!\ADC_L~combout\(2)))) # (!\ADC_L~combout\(7) & ((\ADC_L~combout\(6) & (!\ADC_L~combout\(2) & \ADC_L~combout\(0))) # (!\ADC_L~combout\(6) & (\ADC_L~combout\(2) 
-- & !\ADC_L~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8e1a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(7),
	datab => \ADC_L~combout\(6),
	datac => \ADC_L~combout\(2),
	datad => \ADC_L~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux6~0_combout\);

-- Location: LC_X9_Y7_N7
\L_ADC|Mux6~5\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux6~5_combout\ = (\L_ADC|Mux6~3_combout\ & (((!\L_ADC|Mux6~4_combout\)) # (!\ADC_L~combout\(3)))) # (!\L_ADC|Mux6~3_combout\ & (\ADC_L~combout\(3) & ((\L_ADC|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6e2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux6~3_combout\,
	datab => \ADC_L~combout\(3),
	datac => \L_ADC|Mux6~4_combout\,
	datad => \L_ADC|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux6~5_combout\);

-- Location: LC_X9_Y7_N8
\L_ADC|Mux6~23\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux6~23_combout\ = (\ADC_L~combout\(5) & ((\L_ADC|Mux6~17_combout\ & (\L_ADC|Mux6~22_combout\)) # (!\L_ADC|Mux6~17_combout\ & ((\L_ADC|Mux6~5_combout\))))) # (!\ADC_L~combout\(5) & (\L_ADC|Mux6~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(5),
	datab => \L_ADC|Mux6~17_combout\,
	datac => \L_ADC|Mux6~22_combout\,
	datad => \L_ADC|Mux6~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux6~23_combout\);

-- Location: LC_X3_Y7_N2
\R_ADC|Mux6~13\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux6~13_combout\ = (\ADC_R~combout\(7) & (\ADC_R~combout\(6) & (\ADC_R~combout\(2) $ (!\ADC_R~combout\(3))))) # (!\ADC_R~combout\(7) & ((\ADC_R~combout\(3) & ((\ADC_R~combout\(6)))) # (!\ADC_R~combout\(3) & (\ADC_R~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d064",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(7),
	datab => \ADC_R~combout\(2),
	datac => \ADC_R~combout\(6),
	datad => \ADC_R~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux6~13_combout\);

-- Location: LC_X3_Y7_N0
\R_ADC|Mux6~12\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux6~12_combout\ = (\ADC_R~combout\(7) & (\ADC_R~combout\(2) $ (((\ADC_R~combout\(3)) # (!\ADC_R~combout\(6)))))) # (!\ADC_R~combout\(7) & ((\ADC_R~combout\(2)) # ((\ADC_R~combout\(6) & !\ADC_R~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66d6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(7),
	datab => \ADC_R~combout\(2),
	datac => \ADC_R~combout\(6),
	datad => \ADC_R~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux6~12_combout\);

-- Location: LC_X3_Y7_N9
\R_ADC|Mux6~15\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux6~15_combout\ = (\R_ADC|Mux6~13_combout\ & (!\ADC_R~combout\(0) & (\ADC_R~combout\(3) $ (!\R_ADC|Mux6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0084",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(3),
	datab => \R_ADC|Mux6~13_combout\,
	datac => \R_ADC|Mux6~12_combout\,
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux6~15_combout\);

-- Location: LC_X3_Y7_N5
\R_ADC|Mux6~14\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux6~14_combout\ = (\R_ADC|Mux6~12_combout\ & (\ADC_R~combout\(3) $ ((!\R_ADC|Mux6~13_combout\)))) # (!\R_ADC|Mux6~12_combout\ & ((\ADC_R~combout\(0) & ((!\R_ADC|Mux6~13_combout\))) # (!\ADC_R~combout\(0) & (\ADC_R~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "939a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(3),
	datab => \R_ADC|Mux6~13_combout\,
	datac => \R_ADC|Mux6~12_combout\,
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux6~14_combout\);

-- Location: LC_X3_Y7_N8
\R_ADC|Mux6~16\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux6~16_combout\ = (\R_ADC|Mux6~14_combout\ $ (((!\R_ADC|Mux6~15_combout\ & !\ADC_R~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \R_ADC|Mux6~15_combout\,
	datac => \R_ADC|Mux6~14_combout\,
	datad => \ADC_R~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux6~16_combout\);

-- Location: LC_X5_Y6_N6
\R_ADC|Mux6~7\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux6~7_combout\ = (\ADC_R~combout\(2) & ((\ADC_R~combout\(6) & (\ADC_R~combout\(7) $ (\ADC_R~combout\(4)))) # (!\ADC_R~combout\(6) & ((\ADC_R~combout\(4)) # (!\ADC_R~combout\(7)))))) # (!\ADC_R~combout\(2) & (\ADC_R~combout\(4) $ 
-- (((\ADC_R~combout\(6)) # (\ADC_R~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2bd6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(2),
	datab => \ADC_R~combout\(6),
	datac => \ADC_R~combout\(7),
	datad => \ADC_R~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux6~7_combout\);

-- Location: LC_X5_Y6_N1
\R_ADC|Mux6~8\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux6~8_combout\ = \ADC_R~combout\(4) $ (((\ADC_R~combout\(2) & (!\ADC_R~combout\(6) & !\ADC_R~combout\(7))) # (!\ADC_R~combout\(2) & ((\ADC_R~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ad52",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(2),
	datab => \ADC_R~combout\(6),
	datac => \ADC_R~combout\(7),
	datad => \ADC_R~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux6~8_combout\);

-- Location: LC_X5_Y6_N4
\R_ADC|Mux6~9\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux6~9_combout\ = (\ADC_R~combout\(3) & (((\ADC_R~combout\(0))))) # (!\ADC_R~combout\(3) & ((\ADC_R~combout\(0) & (\R_ADC|Mux6~7_combout\)) # (!\ADC_R~combout\(0) & ((\R_ADC|Mux6~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux6~7_combout\,
	datab => \R_ADC|Mux6~8_combout\,
	datac => \ADC_R~combout\(3),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux6~9_combout\);

-- Location: LC_X5_Y6_N9
\R_ADC|Mux6~10\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux6~10_combout\ = (\ADC_R~combout\(2) & ((\ADC_R~combout\(7) & ((\ADC_R~combout\(4)))) # (!\ADC_R~combout\(7) & ((\ADC_R~combout\(6)) # (!\ADC_R~combout\(4)))))) # (!\ADC_R~combout\(2) & ((\ADC_R~combout\(7) $ (\ADC_R~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ad5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(2),
	datab => \ADC_R~combout\(6),
	datac => \ADC_R~combout\(7),
	datad => \ADC_R~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux6~10_combout\);

-- Location: LC_X5_Y6_N3
\R_ADC|Mux6~6\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux6~6_combout\ = (\ADC_R~combout\(6) & (\ADC_R~combout\(2) $ (\ADC_R~combout\(7) $ (!\ADC_R~combout\(4))))) # (!\ADC_R~combout\(6) & ((\ADC_R~combout\(2) & (!\ADC_R~combout\(7) & \ADC_R~combout\(4))) # (!\ADC_R~combout\(2) & (\ADC_R~combout\(7) & 
-- !\ADC_R~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4a94",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(2),
	datab => \ADC_R~combout\(6),
	datac => \ADC_R~combout\(7),
	datad => \ADC_R~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux6~6_combout\);

-- Location: LC_X5_Y6_N2
\R_ADC|Mux6~11\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux6~11_combout\ = (\R_ADC|Mux6~9_combout\ & (((!\ADC_R~combout\(3))) # (!\R_ADC|Mux6~10_combout\))) # (!\R_ADC|Mux6~9_combout\ & (((\ADC_R~combout\(3) & \R_ADC|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7a2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux6~9_combout\,
	datab => \R_ADC|Mux6~10_combout\,
	datac => \ADC_R~combout\(3),
	datad => \R_ADC|Mux6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux6~11_combout\);

-- Location: LC_X3_Y7_N4
\R_ADC|Mux6~17\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux6~17_combout\ = (\ADC_R~combout\(5) & (((\ADC_R~combout\(1))))) # (!\ADC_R~combout\(5) & ((\ADC_R~combout\(1) & ((\R_ADC|Mux6~11_combout\))) # (!\ADC_R~combout\(1) & (\R_ADC|Mux6~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux6~16_combout\,
	datab => \ADC_R~combout\(5),
	datac => \ADC_R~combout\(1),
	datad => \R_ADC|Mux6~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux6~17_combout\);

-- Location: LC_X5_Y7_N4
\R_ADC|Mux6~19\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux6~19_combout\ = (\ADC_R~combout\(3) & ((\ADC_R~combout\(6) & ((\ADC_R~combout\(0)))) # (!\ADC_R~combout\(6) & (!\ADC_R~combout\(2))))) # (!\ADC_R~combout\(3) & (!\ADC_R~combout\(2) & (\ADC_R~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d414",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(2),
	datab => \ADC_R~combout\(3),
	datac => \ADC_R~combout\(6),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux6~19_combout\);

-- Location: LC_X5_Y7_N2
\R_ADC|Mux6~18\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux6~18_combout\ = (\ADC_R~combout\(2) & ((\ADC_R~combout\(3) & (\ADC_R~combout\(6) & \ADC_R~combout\(0))) # (!\ADC_R~combout\(3) & (!\ADC_R~combout\(6))))) # (!\ADC_R~combout\(2) & (\ADC_R~combout\(3) & ((!\ADC_R~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8246",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(2),
	datab => \ADC_R~combout\(3),
	datac => \ADC_R~combout\(6),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux6~18_combout\);

-- Location: LC_X5_Y7_N7
\R_ADC|Mux6~21\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux6~21_combout\ = (\R_ADC|Mux6~19_combout\ & (!\ADC_R~combout\(0) & (\R_ADC|Mux6~18_combout\ $ (!\ADC_R~combout\(7))))) # (!\R_ADC|Mux6~19_combout\ & (\R_ADC|Mux6~18_combout\ & (\ADC_R~combout\(7) & \ADC_R~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4082",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux6~19_combout\,
	datab => \R_ADC|Mux6~18_combout\,
	datac => \ADC_R~combout\(7),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux6~21_combout\);

-- Location: LC_X5_Y7_N8
\R_ADC|Mux6~20\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux6~20_combout\ = (\R_ADC|Mux6~18_combout\ & ((\R_ADC|Mux6~19_combout\) # ((!\ADC_R~combout\(7) & !\ADC_R~combout\(0))))) # (!\R_ADC|Mux6~18_combout\ & (\ADC_R~combout\(7) $ (((\R_ADC|Mux6~19_combout\ & \ADC_R~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9abc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux6~19_combout\,
	datab => \R_ADC|Mux6~18_combout\,
	datac => \ADC_R~combout\(7),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux6~20_combout\);

-- Location: LC_X5_Y7_N9
\R_ADC|Mux6~22\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux6~22_combout\ = (\R_ADC|Mux6~20_combout\ $ (((\ADC_R~combout\(4) & !\R_ADC|Mux6~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f50a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(4),
	datac => \R_ADC|Mux6~21_combout\,
	datad => \R_ADC|Mux6~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux6~22_combout\);

-- Location: LC_X5_Y7_N5
\R_ADC|Mux6~4\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux6~4_combout\ = (\ADC_R~combout\(2) & ((\ADC_R~combout\(6) & (\ADC_R~combout\(7))) # (!\ADC_R~combout\(6) & (!\ADC_R~combout\(7) & !\ADC_R~combout\(0))))) # (!\ADC_R~combout\(2) & (\ADC_R~combout\(7) $ (((\ADC_R~combout\(6) & 
-- \ADC_R~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "94d2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(2),
	datab => \ADC_R~combout\(6),
	datac => \ADC_R~combout\(7),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux6~4_combout\);

-- Location: LC_X5_Y6_N8
\R_ADC|Mux6~0\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux6~0_combout\ = (\ADC_R~combout\(2) & ((\ADC_R~combout\(6) & (\ADC_R~combout\(7) & \ADC_R~combout\(0))) # (!\ADC_R~combout\(6) & (!\ADC_R~combout\(7) & !\ADC_R~combout\(0))))) # (!\ADC_R~combout\(2) & ((\ADC_R~combout\(7)) # ((\ADC_R~combout\(6) 
-- & \ADC_R~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d452",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(2),
	datab => \ADC_R~combout\(6),
	datac => \ADC_R~combout\(7),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux6~0_combout\);

-- Location: LC_X5_Y6_N7
\R_ADC|Mux6~2\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux6~2_combout\ = \ADC_R~combout\(7) $ (((!\ADC_R~combout\(2) & ((\ADC_R~combout\(6)) # (\ADC_R~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a5b4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(2),
	datab => \ADC_R~combout\(6),
	datac => \ADC_R~combout\(7),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux6~2_combout\);

-- Location: LC_X5_Y7_N1
\R_ADC|Mux6~1\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux6~1_combout\ = (\ADC_R~combout\(2) & (!\ADC_R~combout\(7) & ((!\ADC_R~combout\(0)) # (!\ADC_R~combout\(6))))) # (!\ADC_R~combout\(2) & (\ADC_R~combout\(7) & ((\ADC_R~combout\(6)) # (\ADC_R~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "524a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(2),
	datab => \ADC_R~combout\(6),
	datac => \ADC_R~combout\(7),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux6~1_combout\);

-- Location: LC_X5_Y7_N6
\R_ADC|Mux6~3\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux6~3_combout\ = (\ADC_R~combout\(4) & ((\ADC_R~combout\(3)) # ((!\R_ADC|Mux6~1_combout\)))) # (!\ADC_R~combout\(4) & (!\ADC_R~combout\(3) & (!\R_ADC|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "89ab",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(4),
	datab => \ADC_R~combout\(3),
	datac => \R_ADC|Mux6~2_combout\,
	datad => \R_ADC|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux6~3_combout\);

-- Location: LC_X5_Y7_N3
\R_ADC|Mux6~5\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux6~5_combout\ = (\R_ADC|Mux6~3_combout\ & (((!\ADC_R~combout\(3))) # (!\R_ADC|Mux6~4_combout\))) # (!\R_ADC|Mux6~3_combout\ & (((\R_ADC|Mux6~0_combout\ & \ADC_R~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5cf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux6~4_combout\,
	datab => \R_ADC|Mux6~0_combout\,
	datac => \R_ADC|Mux6~3_combout\,
	datad => \ADC_R~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux6~5_combout\);

-- Location: LC_X5_Y7_N0
\R_ADC|Mux6~23\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux6~23_combout\ = (\R_ADC|Mux6~17_combout\ & ((\R_ADC|Mux6~22_combout\) # ((!\ADC_R~combout\(5))))) # (!\R_ADC|Mux6~17_combout\ & (((\ADC_R~combout\(5) & \R_ADC|Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux6~17_combout\,
	datab => \R_ADC|Mux6~22_combout\,
	datac => \ADC_R~combout\(5),
	datad => \R_ADC|Mux6~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux6~23_combout\);

-- Location: LC_X6_Y5_N8
\dist[4]~3\ : maxv_lcell
-- Equation(s):
-- \dist[4]~3_combout\ = ((\L0_R1~combout\ & ((\R_ADC|Mux6~23_combout\))) # (!\L0_R1~combout\ & (\L_ADC|Mux6~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux6~23_combout\,
	datab => \R_ADC|Mux6~23_combout\,
	datad => \L0_R1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dist[4]~3_combout\);

-- Location: LC_X6_Y5_N3
\Add0~2\ : maxv_lcell
-- Equation(s):
-- \Add0~2_combout\ = \dist[4]~3_combout\ $ (((\dist[3]~2_combout\) # ((\dist[2]~1_combout\) # (\dist[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "01fe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dist[3]~2_combout\,
	datab => \dist[2]~1_combout\,
	datac => \dist[1]~0_combout\,
	datad => \dist[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~2_combout\);

-- Location: LC_X3_Y4_N3
\R_ADC|Mux5~2\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux5~2_combout\ = (\ADC_R~combout\(7) & ((\ADC_R~combout\(6)) # ((\ADC_R~combout\(1)) # (\ADC_R~combout\(0))))) # (!\ADC_R~combout\(7) & (\ADC_R~combout\(6) & (\ADC_R~combout\(1) & \ADC_R~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(7),
	datab => \ADC_R~combout\(6),
	datac => \ADC_R~combout\(1),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux5~2_combout\);

-- Location: LC_X3_Y4_N7
\R_ADC|Mux5~1\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux5~1_combout\ = ((\ADC_R~combout\(6) & (\ADC_R~combout\(1) & \ADC_R~combout\(7))))

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
	datab => \ADC_R~combout\(6),
	datac => \ADC_R~combout\(1),
	datad => \ADC_R~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux5~1_combout\);

-- Location: LC_X3_Y4_N8
\R_ADC|Mux5~3\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux5~3_combout\ = (\ADC_R~combout\(2) & (((\R_ADC|Mux5~1_combout\) # (\ADC_R~combout\(4))))) # (!\ADC_R~combout\(2) & (!\R_ADC|Mux5~2_combout\ & ((!\ADC_R~combout\(4)))))

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
	dataa => \R_ADC|Mux5~2_combout\,
	datab => \ADC_R~combout\(2),
	datac => \R_ADC|Mux5~1_combout\,
	datad => \ADC_R~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux5~3_combout\);

-- Location: LC_X4_Y4_N4
\R_ADC|Mux5~4\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux5~4_combout\ = (\ADC_R~combout\(7)) # ((\ADC_R~combout\(6) & ((\ADC_R~combout\(1)) # (\ADC_R~combout\(0)))) # (!\ADC_R~combout\(6) & (\ADC_R~combout\(1) & \ADC_R~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(6),
	datab => \ADC_R~combout\(1),
	datac => \ADC_R~combout\(7),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux5~4_combout\);

-- Location: LC_X3_Y4_N6
\R_ADC|Mux5~0\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux5~0_combout\ = (\ADC_R~combout\(7) & (\ADC_R~combout\(6) & (\ADC_R~combout\(1) & \ADC_R~combout\(0))))

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
	dataa => \ADC_R~combout\(7),
	datab => \ADC_R~combout\(6),
	datac => \ADC_R~combout\(1),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux5~0_combout\);

-- Location: LC_X3_Y4_N0
\R_ADC|Mux5~5\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux5~5_combout\ = (\R_ADC|Mux5~3_combout\ & ((\R_ADC|Mux5~4_combout\) # ((!\ADC_R~combout\(4))))) # (!\R_ADC|Mux5~3_combout\ & (((\R_ADC|Mux5~0_combout\ & \ADC_R~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux5~3_combout\,
	datab => \R_ADC|Mux5~4_combout\,
	datac => \R_ADC|Mux5~0_combout\,
	datad => \ADC_R~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux5~5_combout\);

-- Location: LC_X3_Y5_N3
\R_ADC|Mux5~20\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux5~20_combout\ = (\ADC_R~combout\(1)) # ((\ADC_R~combout\(7)) # ((\ADC_R~combout\(6) & \ADC_R~combout\(0))))

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
	dataa => \ADC_R~combout\(6),
	datab => \ADC_R~combout\(1),
	datac => \ADC_R~combout\(7),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux5~20_combout\);

-- Location: LC_X3_Y5_N6
\R_ADC|Mux5~19\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux5~19_combout\ = (\ADC_R~combout\(1) & ((\ADC_R~combout\(7)) # ((\ADC_R~combout\(6) & \ADC_R~combout\(0))))) # (!\ADC_R~combout\(1) & (\ADC_R~combout\(6) & (\ADC_R~combout\(7) & \ADC_R~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(6),
	datab => \ADC_R~combout\(1),
	datac => \ADC_R~combout\(7),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux5~19_combout\);

-- Location: LC_X3_Y5_N8
\R_ADC|Mux5~21\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux5~21_combout\ = (\ADC_R~combout\(2) & (((\ADC_R~combout\(4)) # (!\R_ADC|Mux5~19_combout\)))) # (!\ADC_R~combout\(2) & (\R_ADC|Mux5~20_combout\ & ((!\ADC_R~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc2e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux5~20_combout\,
	datab => \ADC_R~combout\(2),
	datac => \R_ADC|Mux5~19_combout\,
	datad => \ADC_R~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux5~21_combout\);

-- Location: LC_X3_Y5_N2
\R_ADC|Mux5~22\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux5~22_combout\ = (!\ADC_R~combout\(6) & (!\ADC_R~combout\(1) & (!\ADC_R~combout\(7) & !\ADC_R~combout\(0))))

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
	dataa => \ADC_R~combout\(6),
	datab => \ADC_R~combout\(1),
	datac => \ADC_R~combout\(7),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux5~22_combout\);

-- Location: LC_X3_Y5_N0
\R_ADC|Mux5~18\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux5~18_combout\ = (\ADC_R~combout\(7) & ((\ADC_R~combout\(1)) # ((\ADC_R~combout\(6) & \ADC_R~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(6),
	datab => \ADC_R~combout\(1),
	datac => \ADC_R~combout\(7),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux5~18_combout\);

-- Location: LC_X3_Y5_N9
\R_ADC|Mux5~23\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux5~23_combout\ = (\R_ADC|Mux5~21_combout\ & ((\R_ADC|Mux5~22_combout\) # ((!\ADC_R~combout\(4))))) # (!\R_ADC|Mux5~21_combout\ & (((!\R_ADC|Mux5~18_combout\ & \ADC_R~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8daa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux5~21_combout\,
	datab => \R_ADC|Mux5~22_combout\,
	datac => \R_ADC|Mux5~18_combout\,
	datad => \ADC_R~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux5~23_combout\);

-- Location: LC_X4_Y4_N8
\R_ADC|Mux5~7\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux5~7_combout\ = (\ADC_R~combout\(7) & ((\ADC_R~combout\(6) & ((\ADC_R~combout\(1)) # (\ADC_R~combout\(0)))) # (!\ADC_R~combout\(6) & (\ADC_R~combout\(1) & \ADC_R~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(6),
	datab => \ADC_R~combout\(1),
	datac => \ADC_R~combout\(7),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux5~7_combout\);

-- Location: LC_X4_Y4_N1
\R_ADC|Mux5~8\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux5~8_combout\ = (\ADC_R~combout\(2) & (((\ADC_R~combout\(4)) # (\R_ADC|Mux5~7_combout\)))) # (!\ADC_R~combout\(2) & (!\R_ADC|Mux5~4_combout\ & (!\ADC_R~combout\(4))))

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
	dataa => \R_ADC|Mux5~4_combout\,
	datab => \ADC_R~combout\(2),
	datac => \ADC_R~combout\(4),
	datad => \R_ADC|Mux5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux5~8_combout\);

-- Location: LC_X3_Y5_N7
\R_ADC|Mux5~9\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux5~9_combout\ = ((!\ADC_R~combout\(6) & (!\ADC_R~combout\(7) & !\ADC_R~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ADC_R~combout\(6),
	datac => \ADC_R~combout\(7),
	datad => \ADC_R~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux5~9_combout\);

-- Location: LC_X3_Y5_N5
\R_ADC|Mux5~6\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux5~6_combout\ = (\ADC_R~combout\(1) & (\ADC_R~combout\(7) & ((\ADC_R~combout\(6)) # (\ADC_R~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(6),
	datab => \ADC_R~combout\(1),
	datac => \ADC_R~combout\(7),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux5~6_combout\);

-- Location: LC_X3_Y5_N1
\R_ADC|Mux5~10\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux5~10_combout\ = (\R_ADC|Mux5~8_combout\ & (((!\ADC_R~combout\(4))) # (!\R_ADC|Mux5~9_combout\))) # (!\R_ADC|Mux5~8_combout\ & (((\R_ADC|Mux5~6_combout\ & \ADC_R~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "72aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux5~8_combout\,
	datab => \R_ADC|Mux5~9_combout\,
	datac => \R_ADC|Mux5~6_combout\,
	datad => \ADC_R~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux5~10_combout\);

-- Location: LC_X4_Y4_N9
\R_ADC|Mux5~15\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux5~15_combout\ = (\ADC_R~combout\(2) & ((\ADC_R~combout\(6)) # ((\ADC_R~combout\(1)) # (\ADC_R~combout\(0)))))

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
	dataa => \ADC_R~combout\(6),
	datab => \ADC_R~combout\(1),
	datac => \ADC_R~combout\(2),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux5~15_combout\);

-- Location: LC_X4_Y4_N6
\R_ADC|Mux5~11\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux5~11_combout\ = (\ADC_R~combout\(1) & (((!\ADC_R~combout\(6) & !\ADC_R~combout\(0))) # (!\ADC_R~combout\(2)))) # (!\ADC_R~combout\(1) & ((\ADC_R~combout\(6)) # ((\ADC_R~combout\(2)) # (\ADC_R~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f7e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(6),
	datab => \ADC_R~combout\(1),
	datac => \ADC_R~combout\(2),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux5~11_combout\);

-- Location: LC_X4_Y4_N3
\R_ADC|Mux5~13\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux5~13_combout\ = (\ADC_R~combout\(2)) # ((\ADC_R~combout\(6) & (\ADC_R~combout\(1) & \ADC_R~combout\(0))))

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
	dataa => \ADC_R~combout\(6),
	datab => \ADC_R~combout\(1),
	datac => \ADC_R~combout\(2),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux5~13_combout\);

-- Location: LC_X4_Y4_N7
\R_ADC|Mux5~12\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux5~12_combout\ = (\ADC_R~combout\(1) & (((!\ADC_R~combout\(0)) # (!\ADC_R~combout\(2))) # (!\ADC_R~combout\(6)))) # (!\ADC_R~combout\(1) & ((\ADC_R~combout\(2)) # ((\ADC_R~combout\(6) & \ADC_R~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7efc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(6),
	datab => \ADC_R~combout\(1),
	datac => \ADC_R~combout\(2),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux5~12_combout\);

-- Location: LC_X4_Y4_N2
\R_ADC|Mux5~14\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux5~14_combout\ = (\ADC_R~combout\(4) & (((\ADC_R~combout\(7))))) # (!\ADC_R~combout\(4) & ((\ADC_R~combout\(7) & ((\R_ADC|Mux5~12_combout\))) # (!\ADC_R~combout\(7) & (\R_ADC|Mux5~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux5~13_combout\,
	datab => \R_ADC|Mux5~12_combout\,
	datac => \ADC_R~combout\(4),
	datad => \ADC_R~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux5~14_combout\);

-- Location: LC_X4_Y4_N5
\R_ADC|Mux5~16\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux5~16_combout\ = (\ADC_R~combout\(4) & ((\R_ADC|Mux5~14_combout\ & (!\R_ADC|Mux5~15_combout\)) # (!\R_ADC|Mux5~14_combout\ & ((\R_ADC|Mux5~11_combout\))))) # (!\ADC_R~combout\(4) & (((\R_ADC|Mux5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(4),
	datab => \R_ADC|Mux5~15_combout\,
	datac => \R_ADC|Mux5~11_combout\,
	datad => \R_ADC|Mux5~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux5~16_combout\);

-- Location: LC_X5_Y5_N3
\R_ADC|Mux5~17\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux5~17_combout\ = (\ADC_R~combout\(3) & ((\R_ADC|Mux5~10_combout\) # ((\ADC_R~combout\(5))))) # (!\ADC_R~combout\(3) & (((!\ADC_R~combout\(5) & \R_ADC|Mux5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(3),
	datab => \R_ADC|Mux5~10_combout\,
	datac => \ADC_R~combout\(5),
	datad => \R_ADC|Mux5~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux5~17_combout\);

-- Location: LC_X5_Y5_N4
\R_ADC|Mux5~24\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux5~24_combout\ = (\ADC_R~combout\(5) & ((\R_ADC|Mux5~17_combout\ & ((\R_ADC|Mux5~23_combout\))) # (!\R_ADC|Mux5~17_combout\ & (\R_ADC|Mux5~5_combout\)))) # (!\ADC_R~combout\(5) & (((\R_ADC|Mux5~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux5~5_combout\,
	datab => \R_ADC|Mux5~23_combout\,
	datac => \ADC_R~combout\(5),
	datad => \R_ADC|Mux5~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux5~24_combout\);

-- Location: LC_X9_Y6_N6
\L_ADC|Mux5~22\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux5~22_combout\ = (!\ADC_L~combout\(7) & (!\ADC_L~combout\(0) & (!\ADC_L~combout\(6) & !\ADC_L~combout\(1))))

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
	dataa => \ADC_L~combout\(7),
	datab => \ADC_L~combout\(0),
	datac => \ADC_L~combout\(6),
	datad => \ADC_L~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux5~22_combout\);

-- Location: LC_X9_Y6_N3
\L_ADC|Mux5~19\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux5~19_combout\ = (\ADC_L~combout\(7) & ((\ADC_L~combout\(1)) # ((\ADC_L~combout\(0) & \ADC_L~combout\(6))))) # (!\ADC_L~combout\(7) & (\ADC_L~combout\(0) & (\ADC_L~combout\(6) & \ADC_L~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(7),
	datab => \ADC_L~combout\(0),
	datac => \ADC_L~combout\(6),
	datad => \ADC_L~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux5~19_combout\);

-- Location: LC_X9_Y6_N0
\L_ADC|Mux5~20\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux5~20_combout\ = (\ADC_L~combout\(7)) # ((\ADC_L~combout\(1)) # ((\ADC_L~combout\(0) & \ADC_L~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(7),
	datab => \ADC_L~combout\(0),
	datac => \ADC_L~combout\(6),
	datad => \ADC_L~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux5~20_combout\);

-- Location: LC_X9_Y6_N4
\L_ADC|Mux5~21\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux5~21_combout\ = (\ADC_L~combout\(2) & (((\ADC_L~combout\(4))) # (!\L_ADC|Mux5~19_combout\))) # (!\ADC_L~combout\(2) & (((\L_ADC|Mux5~20_combout\ & !\ADC_L~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f05c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux5~19_combout\,
	datab => \L_ADC|Mux5~20_combout\,
	datac => \ADC_L~combout\(2),
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux5~21_combout\);

-- Location: LC_X9_Y6_N2
\L_ADC|Mux5~18\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux5~18_combout\ = (\ADC_L~combout\(7) & ((\ADC_L~combout\(1)) # ((\ADC_L~combout\(0) & \ADC_L~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(7),
	datab => \ADC_L~combout\(0),
	datac => \ADC_L~combout\(6),
	datad => \ADC_L~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux5~18_combout\);

-- Location: LC_X9_Y6_N1
\L_ADC|Mux5~23\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux5~23_combout\ = (\ADC_L~combout\(4) & ((\L_ADC|Mux5~21_combout\ & (\L_ADC|Mux5~22_combout\)) # (!\L_ADC|Mux5~21_combout\ & ((!\L_ADC|Mux5~18_combout\))))) # (!\ADC_L~combout\(4) & (((\L_ADC|Mux5~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0bc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux5~22_combout\,
	datab => \ADC_L~combout\(4),
	datac => \L_ADC|Mux5~21_combout\,
	datad => \L_ADC|Mux5~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux5~23_combout\);

-- Location: LC_X9_Y6_N8
\L_ADC|Mux5~1\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux5~1_combout\ = (\ADC_L~combout\(7) & (((\ADC_L~combout\(6) & \ADC_L~combout\(1)))))

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
	dataa => \ADC_L~combout\(7),
	datac => \ADC_L~combout\(6),
	datad => \ADC_L~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux5~1_combout\);

-- Location: LC_X7_Y5_N1
\L_ADC|Mux5~2\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux5~2_combout\ = (\ADC_L~combout\(6) & ((\ADC_L~combout\(7)) # ((\ADC_L~combout\(0) & \ADC_L~combout\(1))))) # (!\ADC_L~combout\(6) & (\ADC_L~combout\(7) & ((\ADC_L~combout\(0)) # (\ADC_L~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(6),
	datab => \ADC_L~combout\(0),
	datac => \ADC_L~combout\(7),
	datad => \ADC_L~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux5~2_combout\);

-- Location: LC_X7_Y5_N4
\L_ADC|Mux5~3\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux5~3_combout\ = (\ADC_L~combout\(2) & ((\L_ADC|Mux5~1_combout\) # ((\ADC_L~combout\(4))))) # (!\ADC_L~combout\(2) & (((!\L_ADC|Mux5~2_combout\ & !\ADC_L~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0a3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux5~1_combout\,
	datab => \L_ADC|Mux5~2_combout\,
	datac => \ADC_L~combout\(2),
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux5~3_combout\);

-- Location: LC_X7_Y5_N0
\L_ADC|Mux5~4\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux5~4_combout\ = (\ADC_L~combout\(7)) # ((\ADC_L~combout\(6) & ((\ADC_L~combout\(0)) # (\ADC_L~combout\(1)))) # (!\ADC_L~combout\(6) & (\ADC_L~combout\(0) & \ADC_L~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(6),
	datab => \ADC_L~combout\(0),
	datac => \ADC_L~combout\(7),
	datad => \ADC_L~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux5~4_combout\);

-- Location: LC_X7_Y5_N6
\L_ADC|Mux5~0\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux5~0_combout\ = (\ADC_L~combout\(6) & (\ADC_L~combout\(0) & (\ADC_L~combout\(7) & \ADC_L~combout\(1))))

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
	dataa => \ADC_L~combout\(6),
	datab => \ADC_L~combout\(0),
	datac => \ADC_L~combout\(7),
	datad => \ADC_L~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux5~0_combout\);

-- Location: LC_X7_Y5_N3
\L_ADC|Mux5~5\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux5~5_combout\ = (\L_ADC|Mux5~3_combout\ & ((\L_ADC|Mux5~4_combout\) # ((!\ADC_L~combout\(4))))) # (!\L_ADC|Mux5~3_combout\ & (((\L_ADC|Mux5~0_combout\ & \ADC_L~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux5~3_combout\,
	datab => \L_ADC|Mux5~4_combout\,
	datac => \L_ADC|Mux5~0_combout\,
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux5~5_combout\);

-- Location: LC_X8_Y7_N1
\L_ADC|Mux5~13\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux5~13_combout\ = (\ADC_L~combout\(2)) # ((\ADC_L~combout\(0) & (\ADC_L~combout\(6) & \ADC_L~combout\(1))))

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
	dataa => \ADC_L~combout\(0),
	datab => \ADC_L~combout\(6),
	datac => \ADC_L~combout\(1),
	datad => \ADC_L~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux5~13_combout\);

-- Location: LC_X8_Y7_N0
\L_ADC|Mux5~12\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux5~12_combout\ = (\ADC_L~combout\(1) & (((!\ADC_L~combout\(2)) # (!\ADC_L~combout\(6))) # (!\ADC_L~combout\(0)))) # (!\ADC_L~combout\(1) & ((\ADC_L~combout\(2)) # ((\ADC_L~combout\(0) & \ADC_L~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7ff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(0),
	datab => \ADC_L~combout\(6),
	datac => \ADC_L~combout\(1),
	datad => \ADC_L~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux5~12_combout\);

-- Location: LC_X8_Y7_N4
\L_ADC|Mux5~14\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux5~14_combout\ = (\ADC_L~combout\(7) & (((\L_ADC|Mux5~12_combout\) # (\ADC_L~combout\(4))))) # (!\ADC_L~combout\(7) & (\L_ADC|Mux5~13_combout\ & ((!\ADC_L~combout\(4)))))

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
	dataa => \ADC_L~combout\(7),
	datab => \L_ADC|Mux5~13_combout\,
	datac => \L_ADC|Mux5~12_combout\,
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux5~14_combout\);

-- Location: LC_X8_Y7_N2
\L_ADC|Mux5~15\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux5~15_combout\ = (\ADC_L~combout\(2) & ((\ADC_L~combout\(0)) # ((\ADC_L~combout\(6)) # (\ADC_L~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(0),
	datab => \ADC_L~combout\(6),
	datac => \ADC_L~combout\(1),
	datad => \ADC_L~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux5~15_combout\);

-- Location: LC_X8_Y7_N6
\L_ADC|Mux5~11\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux5~11_combout\ = (\ADC_L~combout\(1) & (((!\ADC_L~combout\(0) & !\ADC_L~combout\(6))) # (!\ADC_L~combout\(2)))) # (!\ADC_L~combout\(1) & ((\ADC_L~combout\(0)) # ((\ADC_L~combout\(6)) # (\ADC_L~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1ffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(0),
	datab => \ADC_L~combout\(6),
	datac => \ADC_L~combout\(1),
	datad => \ADC_L~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux5~11_combout\);

-- Location: LC_X8_Y7_N7
\L_ADC|Mux5~16\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux5~16_combout\ = (\L_ADC|Mux5~14_combout\ & (((!\ADC_L~combout\(4))) # (!\L_ADC|Mux5~15_combout\))) # (!\L_ADC|Mux5~14_combout\ & (((\L_ADC|Mux5~11_combout\ & \ADC_L~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "72aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux5~14_combout\,
	datab => \L_ADC|Mux5~15_combout\,
	datac => \L_ADC|Mux5~11_combout\,
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux5~16_combout\);

-- Location: LC_X7_Y5_N7
\L_ADC|Mux5~7\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux5~7_combout\ = (\ADC_L~combout\(7) & ((\ADC_L~combout\(6) & ((\ADC_L~combout\(0)) # (\ADC_L~combout\(1)))) # (!\ADC_L~combout\(6) & (\ADC_L~combout\(0) & \ADC_L~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(6),
	datab => \ADC_L~combout\(0),
	datac => \ADC_L~combout\(7),
	datad => \ADC_L~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux5~7_combout\);

-- Location: LC_X7_Y5_N5
\L_ADC|Mux5~8\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux5~8_combout\ = (\ADC_L~combout\(2) & ((\L_ADC|Mux5~7_combout\) # ((\ADC_L~combout\(4))))) # (!\ADC_L~combout\(2) & (((!\L_ADC|Mux5~4_combout\ & !\ADC_L~combout\(4)))))

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
	dataa => \ADC_L~combout\(2),
	datab => \L_ADC|Mux5~7_combout\,
	datac => \L_ADC|Mux5~4_combout\,
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux5~8_combout\);

-- Location: LC_X8_Y7_N5
\L_ADC|Mux5~9\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux5~9_combout\ = ((!\ADC_L~combout\(6) & (!\ADC_L~combout\(1) & !\ADC_L~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ADC_L~combout\(6),
	datac => \ADC_L~combout\(1),
	datad => \ADC_L~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux5~9_combout\);

-- Location: LC_X8_Y7_N9
\L_ADC|Mux5~6\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux5~6_combout\ = (\ADC_L~combout\(1) & (\ADC_L~combout\(7) & ((\ADC_L~combout\(0)) # (\ADC_L~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(0),
	datab => \ADC_L~combout\(6),
	datac => \ADC_L~combout\(1),
	datad => \ADC_L~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux5~6_combout\);

-- Location: LC_X8_Y7_N3
\L_ADC|Mux5~10\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux5~10_combout\ = (\L_ADC|Mux5~8_combout\ & (((!\L_ADC|Mux5~9_combout\)) # (!\ADC_L~combout\(4)))) # (!\L_ADC|Mux5~8_combout\ & (\ADC_L~combout\(4) & ((\L_ADC|Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6e2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux5~8_combout\,
	datab => \ADC_L~combout\(4),
	datac => \L_ADC|Mux5~9_combout\,
	datad => \L_ADC|Mux5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux5~10_combout\);

-- Location: LC_X8_Y7_N8
\L_ADC|Mux5~17\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux5~17_combout\ = (\ADC_L~combout\(5) & (((\ADC_L~combout\(3))))) # (!\ADC_L~combout\(5) & ((\ADC_L~combout\(3) & ((\L_ADC|Mux5~10_combout\))) # (!\ADC_L~combout\(3) & (\L_ADC|Mux5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(5),
	datab => \L_ADC|Mux5~16_combout\,
	datac => \ADC_L~combout\(3),
	datad => \L_ADC|Mux5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux5~17_combout\);

-- Location: LC_X5_Y5_N9
\L_ADC|Mux5~24\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux5~24_combout\ = (\ADC_L~combout\(5) & ((\L_ADC|Mux5~17_combout\ & (\L_ADC|Mux5~23_combout\)) # (!\L_ADC|Mux5~17_combout\ & ((\L_ADC|Mux5~5_combout\))))) # (!\ADC_L~combout\(5) & (((\L_ADC|Mux5~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux5~23_combout\,
	datab => \L_ADC|Mux5~5_combout\,
	datac => \ADC_L~combout\(5),
	datad => \L_ADC|Mux5~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux5~24_combout\);

-- Location: LC_X6_Y5_N9
\Add0~3\ : maxv_lcell
-- Equation(s):
-- \Add0~3_combout\ = (\dist[4]~3_combout\ & ((\dist[1]~0_combout\) # ((\dist[3]~2_combout\) # (\dist[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dist[1]~0_combout\,
	datab => \dist[3]~2_combout\,
	datac => \dist[2]~1_combout\,
	datad => \dist[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~3_combout\);

-- Location: LC_X5_Y5_N2
\Add0~4\ : maxv_lcell
-- Equation(s):
-- \Add0~4_combout\ = \Add0~3_combout\ $ (((\L0_R1~combout\ & (\R_ADC|Mux5~24_combout\)) # (!\L0_R1~combout\ & ((\L_ADC|Mux5~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux5~24_combout\,
	datab => \L_ADC|Mux5~24_combout\,
	datac => \Add0~3_combout\,
	datad => \L0_R1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~4_combout\);

-- Location: LC_X6_Y4_N0
\L_ADC|Mux4~12\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux4~12_combout\ = (\ADC_L~combout\(7) & ((\ADC_L~combout\(2)) # ((\ADC_L~combout\(0) & \ADC_L~combout\(1))))) # (!\ADC_L~combout\(7) & (\ADC_L~combout\(2) & ((\ADC_L~combout\(0)) # (\ADC_L~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ecc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(7),
	datab => \ADC_L~combout\(2),
	datac => \ADC_L~combout\(0),
	datad => \ADC_L~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux4~12_combout\);

-- Location: LC_X6_Y4_N3
\L_ADC|Mux4~11\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux4~11_combout\ = (\ADC_L~combout\(2) & ((\ADC_L~combout\(7)) # ((\ADC_L~combout\(0) & \ADC_L~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(7),
	datab => \ADC_L~combout\(2),
	datac => \ADC_L~combout\(0),
	datad => \ADC_L~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux4~11_combout\);

-- Location: LC_X6_Y4_N2
\L_ADC|Mux4~13\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux4~13_combout\ = (\ADC_L~combout\(3) & (((!\ADC_L~combout\(6))))) # (!\ADC_L~combout\(3) & ((\ADC_L~combout\(6) & (!\L_ADC|Mux4~12_combout\)) # (!\ADC_L~combout\(6) & ((\L_ADC|Mux4~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1f1a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(3),
	datab => \L_ADC|Mux4~12_combout\,
	datac => \ADC_L~combout\(6),
	datad => \L_ADC|Mux4~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux4~13_combout\);

-- Location: LC_X7_Y4_N0
\L_ADC|Mux4~3\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux4~3_combout\ = (\ADC_L~combout\(7) & ((\ADC_L~combout\(2)) # ((\ADC_L~combout\(0) & \ADC_L~combout\(1))))) # (!\ADC_L~combout\(7) & (((\ADC_L~combout\(1) & \ADC_L~combout\(2)))))

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
	dataa => \ADC_L~combout\(0),
	datab => \ADC_L~combout\(7),
	datac => \ADC_L~combout\(1),
	datad => \ADC_L~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux4~3_combout\);

-- Location: LC_X7_Y4_N5
\L_ADC|Mux4~1\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux4~1_combout\ = (\ADC_L~combout\(2)) # ((\ADC_L~combout\(1) & (\ADC_L~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(1),
	datab => \ADC_L~combout\(7),
	datac => \ADC_L~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux4~1_combout\);

-- Location: LC_X7_Y4_N1
\L_ADC|Mux4~0\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux4~0_combout\ = (!\ADC_L~combout\(0) & (!\ADC_L~combout\(7) & (!\ADC_L~combout\(1) & !\ADC_L~combout\(2))))

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
	dataa => \ADC_L~combout\(0),
	datab => \ADC_L~combout\(7),
	datac => \ADC_L~combout\(1),
	datad => \ADC_L~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux4~0_combout\);

-- Location: LC_X7_Y4_N9
\L_ADC|Mux4~2\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux4~2_combout\ = (\ADC_L~combout\(6) & (((!\L_ADC|Mux4~1_combout\)) # (!\ADC_L~combout\(3)))) # (!\ADC_L~combout\(6) & (!\ADC_L~combout\(3) & ((\L_ADC|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3b2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(6),
	datab => \ADC_L~combout\(3),
	datac => \L_ADC|Mux4~1_combout\,
	datad => \L_ADC|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux4~2_combout\);

-- Location: LC_X7_Y4_N8
\L_ADC|Mux4~4\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux4~4_combout\ = (\L_ADC|Mux4~2_combout\) # ((!\ADC_L~combout\(6) & (\ADC_L~combout\(3) & \L_ADC|Mux4~3_combout\)))

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
	dataa => \ADC_L~combout\(6),
	datab => \ADC_L~combout\(3),
	datac => \L_ADC|Mux4~3_combout\,
	datad => \L_ADC|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux4~4_combout\);

-- Location: LC_X7_Y4_N7
\L_ADC|Mux4~8\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux4~8_combout\ = (\ADC_L~combout\(7) & (\ADC_L~combout\(2) & ((\ADC_L~combout\(0)) # (\ADC_L~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(0),
	datab => \ADC_L~combout\(7),
	datac => \ADC_L~combout\(1),
	datad => \ADC_L~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux4~8_combout\);

-- Location: LC_X7_Y4_N4
\L_ADC|Mux4~5\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux4~5_combout\ = (\ADC_L~combout\(0) & (\ADC_L~combout\(7) & (\ADC_L~combout\(1) & \ADC_L~combout\(2))))

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
	dataa => \ADC_L~combout\(0),
	datab => \ADC_L~combout\(7),
	datac => \ADC_L~combout\(1),
	datad => \ADC_L~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux4~5_combout\);

-- Location: LC_X7_Y4_N2
\L_ADC|Mux4~6\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux4~6_combout\ = (\ADC_L~combout\(2)) # ((\ADC_L~combout\(0) & ((\ADC_L~combout\(7)) # (\ADC_L~combout\(1)))) # (!\ADC_L~combout\(0) & (\ADC_L~combout\(7) & \ADC_L~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffe8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(0),
	datab => \ADC_L~combout\(7),
	datac => \ADC_L~combout\(1),
	datad => \ADC_L~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux4~6_combout\);

-- Location: LC_X7_Y4_N3
\L_ADC|Mux4~7\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux4~7_combout\ = (\ADC_L~combout\(3) & (((\ADC_L~combout\(6))))) # (!\ADC_L~combout\(3) & ((\ADC_L~combout\(6) & ((!\L_ADC|Mux4~6_combout\))) # (!\ADC_L~combout\(6) & (\L_ADC|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c2f2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux4~1_combout\,
	datab => \ADC_L~combout\(3),
	datac => \ADC_L~combout\(6),
	datad => \L_ADC|Mux4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux4~7_combout\);

-- Location: LC_X7_Y4_N6
\L_ADC|Mux4~9\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux4~9_combout\ = (\ADC_L~combout\(3) & ((\L_ADC|Mux4~7_combout\ & (\L_ADC|Mux4~8_combout\)) # (!\L_ADC|Mux4~7_combout\ & ((!\L_ADC|Mux4~5_combout\))))) # (!\ADC_L~combout\(3) & (((\L_ADC|Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux4~8_combout\,
	datab => \ADC_L~combout\(3),
	datac => \L_ADC|Mux4~5_combout\,
	datad => \L_ADC|Mux4~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux4~9_combout\);

-- Location: LC_X6_Y4_N5
\L_ADC|Mux4~10\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux4~10_combout\ = (\ADC_L~combout\(5) & (((\ADC_L~combout\(4))))) # (!\ADC_L~combout\(5) & ((\ADC_L~combout\(4) & (\L_ADC|Mux4~4_combout\)) # (!\ADC_L~combout\(4) & ((\L_ADC|Mux4~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(5),
	datab => \L_ADC|Mux4~4_combout\,
	datac => \L_ADC|Mux4~9_combout\,
	datad => \ADC_L~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux4~10_combout\);

-- Location: LC_X6_Y4_N9
\L_ADC|Mux4~15\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux4~15_combout\ = (\ADC_L~combout\(3) & (!\ADC_L~combout\(7) & (!\ADC_L~combout\(2) & !\ADC_L~combout\(1)))) # (!\ADC_L~combout\(3) & (\ADC_L~combout\(7) & (\ADC_L~combout\(2) & \ADC_L~combout\(1))))

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
	dataa => \ADC_L~combout\(3),
	datab => \ADC_L~combout\(7),
	datac => \ADC_L~combout\(2),
	datad => \ADC_L~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux4~15_combout\);

-- Location: LC_X6_Y4_N1
\L_ADC|Mux4~16\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux4~16_combout\ = (\L_ADC|Mux4~15_combout\ & (((\ADC_L~combout\(0)) # (!\ADC_L~combout\(6))) # (!\ADC_L~combout\(3)))) # (!\L_ADC|Mux4~15_combout\ & (\ADC_L~combout\(3) $ (((!\ADC_L~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfa5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(3),
	datab => \ADC_L~combout\(0),
	datac => \ADC_L~combout\(6),
	datad => \L_ADC|Mux4~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux4~16_combout\);

-- Location: LC_X6_Y4_N4
\L_ADC|Mux4~14\ : maxv_lcell
-- Equation(s):
-- \L_ADC|Mux4~14_combout\ = (\ADC_L~combout\(5) & ((\L_ADC|Mux4~10_combout\ & (\L_ADC|Mux4~13_combout\)) # (!\L_ADC|Mux4~10_combout\ & ((\L_ADC|Mux4~16_combout\))))) # (!\ADC_L~combout\(5) & (((\L_ADC|Mux4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_L~combout\(5),
	datab => \L_ADC|Mux4~13_combout\,
	datac => \L_ADC|Mux4~10_combout\,
	datad => \L_ADC|Mux4~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L_ADC|Mux4~14_combout\);

-- Location: LC_X3_Y5_N4
\R_ADC|Mux4~12\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux4~12_combout\ = (\ADC_R~combout\(2) & ((\ADC_R~combout\(1)) # ((\ADC_R~combout\(7)) # (\ADC_R~combout\(0))))) # (!\ADC_R~combout\(2) & (\ADC_R~combout\(1) & (\ADC_R~combout\(7) & \ADC_R~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(2),
	datab => \ADC_R~combout\(1),
	datac => \ADC_R~combout\(7),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux4~12_combout\);

-- Location: LC_X2_Y7_N6
\R_ADC|Mux4~11\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux4~11_combout\ = (\ADC_R~combout\(2) & ((\ADC_R~combout\(7)) # ((\ADC_R~combout\(1) & \ADC_R~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(1),
	datab => \ADC_R~combout\(7),
	datac => \ADC_R~combout\(2),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux4~11_combout\);

-- Location: LC_X2_Y7_N5
\R_ADC|Mux4~13\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux4~13_combout\ = (\ADC_R~combout\(6) & (!\R_ADC|Mux4~12_combout\ & ((!\ADC_R~combout\(3))))) # (!\ADC_R~combout\(6) & (((\R_ADC|Mux4~11_combout\) # (\ADC_R~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3374",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux4~12_combout\,
	datab => \ADC_R~combout\(6),
	datac => \R_ADC|Mux4~11_combout\,
	datad => \ADC_R~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux4~13_combout\);

-- Location: LC_X1_Y7_N8
\R_ADC|Mux4~1\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux4~1_combout\ = (\ADC_R~combout\(2)) # ((\ADC_R~combout\(7) & (\ADC_R~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(2),
	datab => \ADC_R~combout\(7),
	datac => \ADC_R~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux4~1_combout\);

-- Location: LC_X1_Y7_N1
\R_ADC|Mux4~6\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux4~6_combout\ = (\ADC_R~combout\(2)) # ((\ADC_R~combout\(7) & ((\ADC_R~combout\(1)) # (\ADC_R~combout\(0)))) # (!\ADC_R~combout\(7) & (\ADC_R~combout\(1) & \ADC_R~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(2),
	datab => \ADC_R~combout\(7),
	datac => \ADC_R~combout\(1),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux4~6_combout\);

-- Location: LC_X1_Y7_N2
\R_ADC|Mux4~7\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux4~7_combout\ = (\ADC_R~combout\(6) & (((\ADC_R~combout\(3)) # (!\R_ADC|Mux4~6_combout\)))) # (!\ADC_R~combout\(6) & (\R_ADC|Mux4~1_combout\ & ((!\ADC_R~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc2e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux4~1_combout\,
	datab => \ADC_R~combout\(6),
	datac => \R_ADC|Mux4~6_combout\,
	datad => \ADC_R~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux4~7_combout\);

-- Location: LC_X1_Y7_N9
\R_ADC|Mux4~8\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux4~8_combout\ = (\ADC_R~combout\(2) & (\ADC_R~combout\(7) & ((\ADC_R~combout\(1)) # (\ADC_R~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8880",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(2),
	datab => \ADC_R~combout\(7),
	datac => \ADC_R~combout\(1),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux4~8_combout\);

-- Location: LC_X1_Y7_N0
\R_ADC|Mux4~5\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux4~5_combout\ = (\ADC_R~combout\(2) & (\ADC_R~combout\(7) & (\ADC_R~combout\(1) & \ADC_R~combout\(0))))

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
	dataa => \ADC_R~combout\(2),
	datab => \ADC_R~combout\(7),
	datac => \ADC_R~combout\(1),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux4~5_combout\);

-- Location: LC_X1_Y7_N4
\R_ADC|Mux4~9\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux4~9_combout\ = (\R_ADC|Mux4~7_combout\ & ((\R_ADC|Mux4~8_combout\) # ((!\ADC_R~combout\(3))))) # (!\R_ADC|Mux4~7_combout\ & (((!\R_ADC|Mux4~5_combout\ & \ADC_R~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8daa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux4~7_combout\,
	datab => \R_ADC|Mux4~8_combout\,
	datac => \R_ADC|Mux4~5_combout\,
	datad => \ADC_R~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux4~9_combout\);

-- Location: LC_X1_Y7_N3
\R_ADC|Mux4~3\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux4~3_combout\ = (\ADC_R~combout\(2) & ((\ADC_R~combout\(7)) # ((\ADC_R~combout\(1))))) # (!\ADC_R~combout\(2) & (\ADC_R~combout\(7) & (\ADC_R~combout\(1) & \ADC_R~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(2),
	datab => \ADC_R~combout\(7),
	datac => \ADC_R~combout\(1),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux4~3_combout\);

-- Location: LC_X1_Y7_N5
\R_ADC|Mux4~0\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux4~0_combout\ = (!\ADC_R~combout\(2) & (!\ADC_R~combout\(7) & (!\ADC_R~combout\(1) & !\ADC_R~combout\(0))))

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
	dataa => \ADC_R~combout\(2),
	datab => \ADC_R~combout\(7),
	datac => \ADC_R~combout\(1),
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux4~0_combout\);

-- Location: LC_X1_Y7_N7
\R_ADC|Mux4~2\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux4~2_combout\ = (\ADC_R~combout\(6) & (((!\ADC_R~combout\(3))) # (!\R_ADC|Mux4~1_combout\))) # (!\ADC_R~combout\(6) & (((\R_ADC|Mux4~0_combout\ & !\ADC_R~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux4~1_combout\,
	datab => \ADC_R~combout\(6),
	datac => \R_ADC|Mux4~0_combout\,
	datad => \ADC_R~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux4~2_combout\);

-- Location: LC_X1_Y7_N6
\R_ADC|Mux4~4\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux4~4_combout\ = (\R_ADC|Mux4~2_combout\) # ((\R_ADC|Mux4~3_combout\ & (!\ADC_R~combout\(6) & \ADC_R~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux4~3_combout\,
	datab => \ADC_R~combout\(6),
	datac => \R_ADC|Mux4~2_combout\,
	datad => \ADC_R~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux4~4_combout\);

-- Location: LC_X2_Y7_N9
\R_ADC|Mux4~10\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux4~10_combout\ = (\ADC_R~combout\(4) & (((\R_ADC|Mux4~4_combout\) # (\ADC_R~combout\(5))))) # (!\ADC_R~combout\(4) & (\R_ADC|Mux4~9_combout\ & ((!\ADC_R~combout\(5)))))

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
	dataa => \ADC_R~combout\(4),
	datab => \R_ADC|Mux4~9_combout\,
	datac => \R_ADC|Mux4~4_combout\,
	datad => \ADC_R~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux4~10_combout\);

-- Location: LC_X2_Y7_N0
\R_ADC|Mux4~15\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux4~15_combout\ = (\ADC_R~combout\(1) & (\ADC_R~combout\(7) & (\ADC_R~combout\(2) & !\ADC_R~combout\(3)))) # (!\ADC_R~combout\(1) & (!\ADC_R~combout\(7) & (!\ADC_R~combout\(2) & \ADC_R~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0180",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(1),
	datab => \ADC_R~combout\(7),
	datac => \ADC_R~combout\(2),
	datad => \ADC_R~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux4~15_combout\);

-- Location: LC_X2_Y7_N4
\R_ADC|Mux4~16\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux4~16_combout\ = (\R_ADC|Mux4~15_combout\ & (((\ADC_R~combout\(0)) # (!\ADC_R~combout\(6))) # (!\ADC_R~combout\(3)))) # (!\R_ADC|Mux4~15_combout\ & (\ADC_R~combout\(3) $ ((!\ADC_R~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f979",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_R~combout\(3),
	datab => \ADC_R~combout\(6),
	datac => \R_ADC|Mux4~15_combout\,
	datad => \ADC_R~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux4~16_combout\);

-- Location: LC_X2_Y7_N2
\R_ADC|Mux4~14\ : maxv_lcell
-- Equation(s):
-- \R_ADC|Mux4~14_combout\ = (\R_ADC|Mux4~10_combout\ & ((\R_ADC|Mux4~13_combout\) # ((!\ADC_R~combout\(5))))) # (!\R_ADC|Mux4~10_combout\ & (((\R_ADC|Mux4~16_combout\ & \ADC_R~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux4~13_combout\,
	datab => \R_ADC|Mux4~10_combout\,
	datac => \R_ADC|Mux4~16_combout\,
	datad => \ADC_R~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R_ADC|Mux4~14_combout\);

-- Location: LC_X5_Y5_N6
\Add0~5\ : maxv_lcell
-- Equation(s):
-- \Add0~5_combout\ = (\Add0~3_combout\ & ((\L0_R1~combout\ & (\R_ADC|Mux5~24_combout\)) # (!\L0_R1~combout\ & ((\L_ADC|Mux5~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R_ADC|Mux5~24_combout\,
	datab => \L_ADC|Mux5~24_combout\,
	datac => \Add0~3_combout\,
	datad => \L0_R1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\);

-- Location: LC_X5_Y5_N7
\Add0~6\ : maxv_lcell
-- Equation(s):
-- \Add0~6_combout\ = \Add0~5_combout\ $ (((\L0_R1~combout\ & ((\R_ADC|Mux4~14_combout\))) # (!\L0_R1~combout\ & (\L_ADC|Mux4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux4~14_combout\,
	datab => \R_ADC|Mux4~14_combout\,
	datac => \Add0~5_combout\,
	datad => \L0_R1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~6_combout\);

-- Location: LC_X5_Y5_N8
\Add0~7\ : maxv_lcell
-- Equation(s):
-- \Add0~7_combout\ = (\Add0~5_combout\) # ((\L0_R1~combout\ & ((\R_ADC|Mux4~14_combout\))) # (!\L0_R1~combout\ & (\L_ADC|Mux4~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L_ADC|Mux4~14_combout\,
	datab => \R_ADC|Mux4~14_combout\,
	datac => \Add0~5_combout\,
	datad => \L0_R1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~7_combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CORRECTN[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \CORRECTN~0_combout\,
	oe => VCC,
	padio => ww_CORRECTN(0));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CORRECTN[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_dist[1]~0_combout\,
	oe => VCC,
	padio => ww_CORRECTN(1));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CORRECTN[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Add0~0_combout\,
	oe => VCC,
	padio => ww_CORRECTN(2));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CORRECTN[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Add0~1_combout\,
	oe => VCC,
	padio => ww_CORRECTN(3));

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CORRECTN[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add0~2_combout\,
	oe => VCC,
	padio => ww_CORRECTN(4));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CORRECTN[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add0~4_combout\,
	oe => VCC,
	padio => ww_CORRECTN(5));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CORRECTN[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Add0~6_combout\,
	oe => VCC,
	padio => ww_CORRECTN(6));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CORRECTN[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Add0~7_combout\,
	oe => VCC,
	padio => ww_CORRECTN(7));
END structure;


