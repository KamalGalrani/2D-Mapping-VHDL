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

-- DATE "03/26/2014 18:34:35"

-- 
-- Device: Altera 5M240ZT144A5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	ErrorCalculation IS
    PORT (
	RGHT : IN std_logic;
	ADC_L1 : IN IEEE.NUMERIC_STD.unsigned(7 DOWNTO 0);
	ADC_L2 : IN IEEE.NUMERIC_STD.unsigned(7 DOWNTO 0);
	ADC_R1 : IN IEEE.NUMERIC_STD.unsigned(7 DOWNTO 0);
	ADC_R2 : IN IEEE.NUMERIC_STD.unsigned(7 DOWNTO 0);
	ERR : OUT STD.STANDARD.integer range -255 TO 255;
	ROT : OUT STD.STANDARD.integer range -127 TO 127
	);
END ErrorCalculation;

-- Design Ports Information
-- ERR[0]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ERR[1]	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ERR[2]	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ERR[3]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ERR[4]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ERR[5]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ERR[6]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ERR[7]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ERR[8]	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ROT[0]	=>  Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ROT[1]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ROT[2]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ROT[3]	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ROT[4]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ROT[5]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ROT[6]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ROT[7]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- RGHT	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_R2[1]	=>  Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_R1[1]	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_L2[1]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_L1[1]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_R2[0]	=>  Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_R1[0]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_L2[0]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_L1[0]	=>  Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_R2[2]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_R1[2]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_L2[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_L1[2]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_R2[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_R1[3]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_L2[3]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_L1[3]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_R2[4]	=>  Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_R1[4]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_L2[4]	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_L1[4]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_R2[5]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_R1[5]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_L2[5]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_L1[5]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_R2[6]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_R1[6]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_L2[6]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_L1[6]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_R2[7]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_R1[7]	=>  Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_L2[7]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_L1[7]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_RGHT : std_logic;
SIGNAL ww_ADC_L1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ADC_L2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ADC_R1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ADC_R2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ERR : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_ROT : std_logic_vector(7 DOWNTO 0);
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add5~40\ : std_logic;
SIGNAL \RGHT~combout\ : std_logic;
SIGNAL \Add0~7_cout0\ : std_logic;
SIGNAL \Add0~7COUT1_54\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add2~7_cout0\ : std_logic;
SIGNAL \Add2~7COUT1_54\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \ERR~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_56\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~2COUT1_56\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~5_combout\ : std_logic;
SIGNAL \Add2~12\ : std_logic;
SIGNAL \Add2~12COUT1_58\ : std_logic;
SIGNAL \Add2~15_combout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~2COUT1_56\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_58\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~2COUT1_48\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add3~11_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_60\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~7COUT1_50\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~17COUT1_60\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add3~8\ : std_logic;
SIGNAL \Add3~8COUT1_58\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~17_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~12COUT1_52\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_combout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~14COUT1_60\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~23_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_62\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~17COUT1_54\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~27COUT1_62\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add3~20\ : std_logic;
SIGNAL \Add3~20COUT1_62\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Add3~29_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_64\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \Add2~32\ : std_logic;
SIGNAL \Add2~32COUT1_64\ : std_logic;
SIGNAL \Add2~35_combout\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add3~35_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_66\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~27COUT1_56\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~37COUT1_66\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add3~32\ : std_logic;
SIGNAL \Add3~32COUT1_64\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Add3~41_combout\ : std_logic;
SIGNAL \Add1~32\ : std_logic;
SIGNAL \Add1~32COUT1_58\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~38COUT1_66\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \Add3~47_combout\ : std_logic;
SIGNAL \Add6~50\ : std_logic;
SIGNAL \Add6~50COUT1_63\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~42COUT1_54\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add6~5_combout\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \Add6~48_combout\ : std_logic;
SIGNAL \Add6~53_combout\ : std_logic;
SIGNAL \Add6~2\ : std_logic;
SIGNAL \Add6~2COUT1_65\ : std_logic;
SIGNAL \Add6~8\ : std_logic;
SIGNAL \Add6~8COUT1_67\ : std_logic;
SIGNAL \Add6~14\ : std_logic;
SIGNAL \Add6~14COUT1_69\ : std_logic;
SIGNAL \Add6~20\ : std_logic;
SIGNAL \Add6~26\ : std_logic;
SIGNAL \Add6~26COUT1_71\ : std_logic;
SIGNAL \Add6~32\ : std_logic;
SIGNAL \Add6~32COUT1_73\ : std_logic;
SIGNAL \Add6~38\ : std_logic;
SIGNAL \Add6~38COUT1_75\ : std_logic;
SIGNAL \Add6~42_combout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~2COUT1_56\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~7COUT1_58\ : std_logic;
SIGNAL \Add4~12\ : std_logic;
SIGNAL \Add4~12COUT1_60\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~22COUT1_62\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~27COUT1_64\ : std_logic;
SIGNAL \Add4~32\ : std_logic;
SIGNAL \Add4~32COUT1_66\ : std_logic;
SIGNAL \Add4~35_combout\ : std_logic;
SIGNAL \Add6~47_combout\ : std_logic;
SIGNAL \Add5~42_cout0\ : std_logic;
SIGNAL \Add5~42COUT1_54\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add4~5_combout\ : std_logic;
SIGNAL \Add6~11_combout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~2COUT1_56\ : std_logic;
SIGNAL \Add5~5_combout\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add6~17_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~7COUT1_58\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add6~18_combout\ : std_logic;
SIGNAL \Add4~15_combout\ : std_logic;
SIGNAL \Add6~23_combout\ : std_logic;
SIGNAL \Add5~12\ : std_logic;
SIGNAL \Add5~12COUT1_60\ : std_logic;
SIGNAL \Add5~15_combout\ : std_logic;
SIGNAL \Add6~24_combout\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Add6~29_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Add6~30_combout\ : std_logic;
SIGNAL \Add4~25_combout\ : std_logic;
SIGNAL \Add6~35_combout\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~22COUT1_62\ : std_logic;
SIGNAL \Add5~25_combout\ : std_logic;
SIGNAL \Add6~36_combout\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add6~41_combout\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~27COUT1_64\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \Add5~32\ : std_logic;
SIGNAL \Add5~32COUT1_66\ : std_logic;
SIGNAL \Add5~35_combout\ : std_logic;
SIGNAL \ADC_R1~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ADC_L1~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ADC_L2~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ADC_R2~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_RGHT <= RGHT;
ww_ADC_L1 <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(ADC_L1);
ww_ADC_L2 <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(ADC_L2);
ww_ADC_R1 <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(ADC_R1);
ww_ADC_R2 <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(ADC_R2);
ERR <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(SIGNED(ww_ERR));
ROT <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(SIGNED(ww_ROT));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RGHT~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RGHT,
	combout => \RGHT~combout\);

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_R2[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_R2(1),
	combout => \ADC_R2~combout\(1));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_R1[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_R1(1),
	combout => \ADC_R1~combout\(1));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_R1[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_R1(0),
	combout => \ADC_R1~combout\(0));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_R2[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_R2(0),
	combout => \ADC_R2~combout\(0));

-- Location: LC_X8_Y6_N0
\Add0~7\ : maxv_lcell
-- Equation(s):
-- \Add0~7_cout0\ = CARRY((\ADC_R1~combout\(0) & (\ADC_R2~combout\(0))))
-- \Add0~7COUT1_54\ = CARRY((\ADC_R1~combout\(0) & (\ADC_R2~combout\(0))))

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
	dataa => \ADC_R1~combout\(0),
	datab => \ADC_R2~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5\,
	cout0 => \Add0~7_cout0\,
	cout1 => \Add0~7COUT1_54\);

-- Location: LC_X8_Y6_N1
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = \ADC_R2~combout\(1) $ (\ADC_R1~combout\(1) $ ((\Add0~7_cout0\)))
-- \Add0~2\ = CARRY((\ADC_R2~combout\(1) & (!\ADC_R1~combout\(1) & !\Add0~7_cout0\)) # (!\ADC_R2~combout\(1) & ((!\Add0~7_cout0\) # (!\ADC_R1~combout\(1)))))
-- \Add0~2COUT1_56\ = CARRY((\ADC_R2~combout\(1) & (!\ADC_R1~combout\(1) & !\Add0~7COUT1_54\)) # (!\ADC_R2~combout\(1) & ((!\Add0~7COUT1_54\) # (!\ADC_R1~combout\(1)))))

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
	dataa => \ADC_R2~combout\(1),
	datab => \ADC_R1~combout\(1),
	cin0 => \Add0~7_cout0\,
	cin1 => \Add0~7COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_56\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_L1[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_L1(1),
	combout => \ADC_L1~combout\(1));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_L2[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_L2(1),
	combout => \ADC_L2~combout\(1));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_L1[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_L1(0),
	combout => \ADC_L1~combout\(0));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_L2[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_L2(0),
	combout => \ADC_L2~combout\(0));

-- Location: LC_X7_Y5_N0
\Add2~7\ : maxv_lcell
-- Equation(s):
-- \Add2~7_cout0\ = CARRY((\ADC_L1~combout\(0) & (\ADC_L2~combout\(0))))
-- \Add2~7COUT1_54\ = CARRY((\ADC_L1~combout\(0) & (\ADC_L2~combout\(0))))

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
	dataa => \ADC_L1~combout\(0),
	datab => \ADC_L2~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~5\,
	cout0 => \Add2~7_cout0\,
	cout1 => \Add2~7COUT1_54\);

-- Location: LC_X7_Y5_N1
\Add2~0\ : maxv_lcell
-- Equation(s):
-- \Add2~0_combout\ = \ADC_L1~combout\(1) $ (\ADC_L2~combout\(1) $ ((\Add2~7_cout0\)))
-- \Add2~2\ = CARRY((\ADC_L1~combout\(1) & (!\ADC_L2~combout\(1) & !\Add2~7_cout0\)) # (!\ADC_L1~combout\(1) & ((!\Add2~7_cout0\) # (!\ADC_L2~combout\(1)))))
-- \Add2~2COUT1_56\ = CARRY((\ADC_L1~combout\(1) & (!\ADC_L2~combout\(1) & !\Add2~7COUT1_54\)) # (!\ADC_L1~combout\(1) & ((!\Add2~7COUT1_54\) # (!\ADC_L2~combout\(1)))))

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
	dataa => \ADC_L1~combout\(1),
	datab => \ADC_L2~combout\(1),
	cin0 => \Add2~7_cout0\,
	cin1 => \Add2~7COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~0_combout\,
	cout0 => \Add2~2\,
	cout1 => \Add2~2COUT1_56\);

-- Location: LC_X7_Y5_N9
\ERR~0\ : maxv_lcell
-- Equation(s):
-- \ERR~0_combout\ = (\RGHT~combout\ & (((\Add0~0_combout\)))) # (!\RGHT~combout\ & (((\Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RGHT~combout\,
	datac => \Add0~0_combout\,
	datad => \Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ERR~0_combout\);

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_R1[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_R1(2),
	combout => \ADC_R1~combout\(2));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_R2[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_R2(2),
	combout => \ADC_R2~combout\(2));

-- Location: LC_X8_Y6_N2
\Add0~10\ : maxv_lcell
-- Equation(s):
-- \Add0~10_combout\ = \ADC_R1~combout\(2) $ (\ADC_R2~combout\(2) $ ((!\Add0~2\)))
-- \Add0~12\ = CARRY((\ADC_R1~combout\(2) & ((\ADC_R2~combout\(2)) # (!\Add0~2\))) # (!\ADC_R1~combout\(2) & (\ADC_R2~combout\(2) & !\Add0~2\)))
-- \Add0~12COUT1_58\ = CARRY((\ADC_R1~combout\(2) & ((\ADC_R2~combout\(2)) # (!\Add0~2COUT1_56\))) # (!\ADC_R1~combout\(2) & (\ADC_R2~combout\(2) & !\Add0~2COUT1_56\)))

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
	dataa => \ADC_R1~combout\(2),
	datab => \ADC_R2~combout\(2),
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_58\);

-- Location: LC_X7_Y6_N0
\Add1~0\ : maxv_lcell
-- Equation(s):
-- \Add1~0_combout\ = ((!\Add0~10_combout\))
-- \Add1~2\ = CARRY(((\Add0~10_combout\)))
-- \Add1~2COUT1_48\ = CARRY(((\Add0~10_combout\)))

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
	datab => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~0_combout\,
	cout0 => \Add1~2\,
	cout1 => \Add1~2COUT1_48\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_L2[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_L2(2),
	combout => \ADC_L2~combout\(2));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_L1[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_L1(2),
	combout => \ADC_L1~combout\(2));

-- Location: LC_X7_Y5_N2
\Add2~10\ : maxv_lcell
-- Equation(s):
-- \Add2~10_combout\ = \ADC_L2~combout\(2) $ (\ADC_L1~combout\(2) $ ((!\Add2~2\)))
-- \Add2~12\ = CARRY((\ADC_L2~combout\(2) & ((\ADC_L1~combout\(2)) # (!\Add2~2\))) # (!\ADC_L2~combout\(2) & (\ADC_L1~combout\(2) & !\Add2~2\)))
-- \Add2~12COUT1_58\ = CARRY((\ADC_L2~combout\(2) & ((\ADC_L1~combout\(2)) # (!\Add2~2COUT1_56\))) # (!\ADC_L2~combout\(2) & (\ADC_L1~combout\(2) & !\Add2~2COUT1_56\)))

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
	dataa => \ADC_L2~combout\(2),
	datab => \ADC_L1~combout\(2),
	cin0 => \Add2~2\,
	cin1 => \Add2~2COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~10_combout\,
	cout0 => \Add2~12\,
	cout1 => \Add2~12COUT1_58\);

-- Location: LC_X7_Y7_N0
\Add3~0\ : maxv_lcell
-- Equation(s):
-- \Add3~0_combout\ = ((!\Add2~10_combout\))
-- \Add3~2\ = CARRY(((\Add2~10_combout\)))
-- \Add3~2COUT1_56\ = CARRY(((\Add2~10_combout\)))

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
	datab => \Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~0_combout\,
	cout0 => \Add3~2\,
	cout1 => \Add3~2COUT1_56\);

-- Location: LC_X6_Y6_N4
\Add3~5\ : maxv_lcell
-- Equation(s):
-- \Add3~5_combout\ = ((\RGHT~combout\ & (\Add1~0_combout\)) # (!\RGHT~combout\ & ((\Add3~0_combout\))))

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
	dataa => \Add1~0_combout\,
	datac => \Add3~0_combout\,
	datad => \RGHT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~5_combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_L1[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_L1(3),
	combout => \ADC_L1~combout\(3));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_L2[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_L2(3),
	combout => \ADC_L2~combout\(3));

-- Location: LC_X7_Y5_N3
\Add2~15\ : maxv_lcell
-- Equation(s):
-- \Add2~15_combout\ = \ADC_L1~combout\(3) $ (\ADC_L2~combout\(3) $ ((\Add2~12\)))
-- \Add2~17\ = CARRY((\ADC_L1~combout\(3) & (!\ADC_L2~combout\(3) & !\Add2~12\)) # (!\ADC_L1~combout\(3) & ((!\Add2~12\) # (!\ADC_L2~combout\(3)))))
-- \Add2~17COUT1_60\ = CARRY((\ADC_L1~combout\(3) & (!\ADC_L2~combout\(3) & !\Add2~12COUT1_58\)) # (!\ADC_L1~combout\(3) & ((!\Add2~12COUT1_58\) # (!\ADC_L2~combout\(3)))))

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
	dataa => \ADC_L1~combout\(3),
	datab => \ADC_L2~combout\(3),
	cin0 => \Add2~12\,
	cin1 => \Add2~12COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~15_combout\,
	cout0 => \Add2~17\,
	cout1 => \Add2~17COUT1_60\);

-- Location: LC_X7_Y7_N1
\Add3~6\ : maxv_lcell
-- Equation(s):
-- \Add3~6_combout\ = \Add2~15_combout\ $ ((((\Add3~2\))))
-- \Add3~8\ = CARRY(((!\Add3~2\)) # (!\Add2~15_combout\))
-- \Add3~8COUT1_58\ = CARRY(((!\Add3~2COUT1_56\)) # (!\Add2~15_combout\))

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
	dataa => \Add2~15_combout\,
	cin0 => \Add3~2\,
	cin1 => \Add3~2COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~6_combout\,
	cout0 => \Add3~8\,
	cout1 => \Add3~8COUT1_58\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_R1[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_R1(3),
	combout => \ADC_R1~combout\(3));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_R2[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_R2(3),
	combout => \ADC_R2~combout\(3));

-- Location: LC_X8_Y6_N3
\Add0~15\ : maxv_lcell
-- Equation(s):
-- \Add0~15_combout\ = \ADC_R1~combout\(3) $ (\ADC_R2~combout\(3) $ ((\Add0~12\)))
-- \Add0~17\ = CARRY((\ADC_R1~combout\(3) & (!\ADC_R2~combout\(3) & !\Add0~12\)) # (!\ADC_R1~combout\(3) & ((!\Add0~12\) # (!\ADC_R2~combout\(3)))))
-- \Add0~17COUT1_60\ = CARRY((\ADC_R1~combout\(3) & (!\ADC_R2~combout\(3) & !\Add0~12COUT1_58\)) # (!\ADC_R1~combout\(3) & ((!\Add0~12COUT1_58\) # (!\ADC_R2~combout\(3)))))

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
	dataa => \ADC_R1~combout\(3),
	datab => \ADC_R2~combout\(3),
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_60\);

-- Location: LC_X7_Y6_N1
\Add1~5\ : maxv_lcell
-- Equation(s):
-- \Add1~5_combout\ = \Add0~15_combout\ $ ((((\Add1~2\))))
-- \Add1~7\ = CARRY(((!\Add1~2\)) # (!\Add0~15_combout\))
-- \Add1~7COUT1_50\ = CARRY(((!\Add1~2COUT1_48\)) # (!\Add0~15_combout\))

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
	dataa => \Add0~15_combout\,
	cin0 => \Add1~2\,
	cin1 => \Add1~2COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~5_combout\,
	cout0 => \Add1~7\,
	cout1 => \Add1~7COUT1_50\);

-- Location: LC_X5_Y6_N4
\Add3~11\ : maxv_lcell
-- Equation(s):
-- \Add3~11_combout\ = (\RGHT~combout\ & (((\Add1~5_combout\)))) # (!\RGHT~combout\ & (\Add3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RGHT~combout\,
	datab => \Add3~6_combout\,
	datad => \Add1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~11_combout\);

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_R2[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_R2(4),
	combout => \ADC_R2~combout\(4));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_R1[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_R1(4),
	combout => \ADC_R1~combout\(4));

-- Location: LC_X8_Y6_N4
\Add0~20\ : maxv_lcell
-- Equation(s):
-- \Add0~20_combout\ = \ADC_R2~combout\(4) $ (\ADC_R1~combout\(4) $ ((!\Add0~17\)))
-- \Add0~22\ = CARRY((\ADC_R2~combout\(4) & ((\ADC_R1~combout\(4)) # (!\Add0~17COUT1_60\))) # (!\ADC_R2~combout\(4) & (\ADC_R1~combout\(4) & !\Add0~17COUT1_60\)))

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
	dataa => \ADC_R2~combout\(4),
	datab => \ADC_R1~combout\(4),
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout => \Add0~22\);

-- Location: LC_X7_Y6_N2
\Add1~10\ : maxv_lcell
-- Equation(s):
-- \Add1~10_combout\ = (\Add0~20_combout\ $ ((!\Add1~7\)))
-- \Add1~12\ = CARRY(((\Add0~20_combout\ & !\Add1~7\)))
-- \Add1~12COUT1_52\ = CARRY(((\Add0~20_combout\ & !\Add1~7COUT1_50\)))

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
	datab => \Add0~20_combout\,
	cin0 => \Add1~7\,
	cin1 => \Add1~7COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~10_combout\,
	cout0 => \Add1~12\,
	cout1 => \Add1~12COUT1_52\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_L1[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_L1(4),
	combout => \ADC_L1~combout\(4));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_L2[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_L2(4),
	combout => \ADC_L2~combout\(4));

-- Location: LC_X7_Y5_N4
\Add2~20\ : maxv_lcell
-- Equation(s):
-- \Add2~20_combout\ = \ADC_L1~combout\(4) $ (\ADC_L2~combout\(4) $ ((!\Add2~17\)))
-- \Add2~22\ = CARRY((\ADC_L1~combout\(4) & ((\ADC_L2~combout\(4)) # (!\Add2~17COUT1_60\))) # (!\ADC_L1~combout\(4) & (\ADC_L2~combout\(4) & !\Add2~17COUT1_60\)))

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
	dataa => \ADC_L1~combout\(4),
	datab => \ADC_L2~combout\(4),
	cin0 => \Add2~17\,
	cin1 => \Add2~17COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~20_combout\,
	cout => \Add2~22\);

-- Location: LC_X7_Y7_N2
\Add3~12\ : maxv_lcell
-- Equation(s):
-- \Add3~12_combout\ = \Add2~20_combout\ $ ((((!\Add3~8\))))
-- \Add3~14\ = CARRY((\Add2~20_combout\ & ((!\Add3~8\))))
-- \Add3~14COUT1_60\ = CARRY((\Add2~20_combout\ & ((!\Add3~8COUT1_58\))))

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
	dataa => \Add2~20_combout\,
	cin0 => \Add3~8\,
	cin1 => \Add3~8COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~12_combout\,
	cout0 => \Add3~14\,
	cout1 => \Add3~14COUT1_60\);

-- Location: LC_X7_Y7_N9
\Add3~17\ : maxv_lcell
-- Equation(s):
-- \Add3~17_combout\ = (\RGHT~combout\ & (\Add1~10_combout\)) # (!\RGHT~combout\ & (((\Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \RGHT~combout\,
	datad => \Add3~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~17_combout\);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_R1[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_R1(5),
	combout => \ADC_R1~combout\(5));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_R2[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_R2(5),
	combout => \ADC_R2~combout\(5));

-- Location: LC_X8_Y6_N5
\Add0~25\ : maxv_lcell
-- Equation(s):
-- \Add0~25_combout\ = \ADC_R1~combout\(5) $ (\ADC_R2~combout\(5) $ ((\Add0~22\)))
-- \Add0~27\ = CARRY((\ADC_R1~combout\(5) & (!\ADC_R2~combout\(5) & !\Add0~22\)) # (!\ADC_R1~combout\(5) & ((!\Add0~22\) # (!\ADC_R2~combout\(5)))))
-- \Add0~27COUT1_62\ = CARRY((\ADC_R1~combout\(5) & (!\ADC_R2~combout\(5) & !\Add0~22\)) # (!\ADC_R1~combout\(5) & ((!\Add0~22\) # (!\ADC_R2~combout\(5)))))

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
	dataa => \ADC_R1~combout\(5),
	datab => \ADC_R2~combout\(5),
	cin => \Add0~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_62\);

-- Location: LC_X7_Y6_N3
\Add1~15\ : maxv_lcell
-- Equation(s):
-- \Add1~15_combout\ = (\Add0~25_combout\ $ ((\Add1~12\)))
-- \Add1~17\ = CARRY(((!\Add1~12\) # (!\Add0~25_combout\)))
-- \Add1~17COUT1_54\ = CARRY(((!\Add1~12COUT1_52\) # (!\Add0~25_combout\)))

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
	datab => \Add0~25_combout\,
	cin0 => \Add1~12\,
	cin1 => \Add1~12COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~15_combout\,
	cout0 => \Add1~17\,
	cout1 => \Add1~17COUT1_54\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_L1[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_L1(5),
	combout => \ADC_L1~combout\(5));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_L2[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_L2(5),
	combout => \ADC_L2~combout\(5));

-- Location: LC_X7_Y5_N5
\Add2~25\ : maxv_lcell
-- Equation(s):
-- \Add2~25_combout\ = \ADC_L1~combout\(5) $ (\ADC_L2~combout\(5) $ ((\Add2~22\)))
-- \Add2~27\ = CARRY((\ADC_L1~combout\(5) & (!\ADC_L2~combout\(5) & !\Add2~22\)) # (!\ADC_L1~combout\(5) & ((!\Add2~22\) # (!\ADC_L2~combout\(5)))))
-- \Add2~27COUT1_62\ = CARRY((\ADC_L1~combout\(5) & (!\ADC_L2~combout\(5) & !\Add2~22\)) # (!\ADC_L1~combout\(5) & ((!\Add2~22\) # (!\ADC_L2~combout\(5)))))

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
	dataa => \ADC_L1~combout\(5),
	datab => \ADC_L2~combout\(5),
	cin => \Add2~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~25_combout\,
	cout0 => \Add2~27\,
	cout1 => \Add2~27COUT1_62\);

-- Location: LC_X7_Y7_N3
\Add3~18\ : maxv_lcell
-- Equation(s):
-- \Add3~18_combout\ = (\Add2~25_combout\ $ ((\Add3~14\)))
-- \Add3~20\ = CARRY(((!\Add3~14\) # (!\Add2~25_combout\)))
-- \Add3~20COUT1_62\ = CARRY(((!\Add3~14COUT1_60\) # (!\Add2~25_combout\)))

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
	datab => \Add2~25_combout\,
	cin0 => \Add3~14\,
	cin1 => \Add3~14COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~18_combout\,
	cout0 => \Add3~20\,
	cout1 => \Add3~20COUT1_62\);

-- Location: LC_X6_Y6_N6
\Add3~23\ : maxv_lcell
-- Equation(s):
-- \Add3~23_combout\ = ((\RGHT~combout\ & (\Add1~15_combout\)) # (!\RGHT~combout\ & ((\Add3~18_combout\))))

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
	dataa => \Add1~15_combout\,
	datac => \Add3~18_combout\,
	datad => \RGHT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~23_combout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_R2[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_R2(6),
	combout => \ADC_R2~combout\(6));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_R1[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_R1(6),
	combout => \ADC_R1~combout\(6));

-- Location: LC_X8_Y6_N6
\Add0~30\ : maxv_lcell
-- Equation(s):
-- \Add0~30_combout\ = \ADC_R2~combout\(6) $ (\ADC_R1~combout\(6) $ ((!(!\Add0~22\ & \Add0~27\) # (\Add0~22\ & \Add0~27COUT1_62\))))
-- \Add0~32\ = CARRY((\ADC_R2~combout\(6) & ((\ADC_R1~combout\(6)) # (!\Add0~27\))) # (!\ADC_R2~combout\(6) & (\ADC_R1~combout\(6) & !\Add0~27\)))
-- \Add0~32COUT1_64\ = CARRY((\ADC_R2~combout\(6) & ((\ADC_R1~combout\(6)) # (!\Add0~27COUT1_62\))) # (!\ADC_R2~combout\(6) & (\ADC_R1~combout\(6) & !\Add0~27COUT1_62\)))

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
	dataa => \ADC_R2~combout\(6),
	datab => \ADC_R1~combout\(6),
	cin => \Add0~22\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_64\);

-- Location: LC_X7_Y6_N4
\Add1~20\ : maxv_lcell
-- Equation(s):
-- \Add1~20_combout\ = \Add0~30_combout\ $ ((((\Add1~17\))))
-- \Add1~22\ = CARRY((\Add0~30_combout\) # ((!\Add1~17COUT1_54\)))

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
	dataa => \Add0~30_combout\,
	cin0 => \Add1~17\,
	cin1 => \Add1~17COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~20_combout\,
	cout => \Add1~22\);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_L2[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_L2(6),
	combout => \ADC_L2~combout\(6));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_L1[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_L1(6),
	combout => \ADC_L1~combout\(6));

-- Location: LC_X7_Y5_N6
\Add2~30\ : maxv_lcell
-- Equation(s):
-- \Add2~30_combout\ = \ADC_L2~combout\(6) $ (\ADC_L1~combout\(6) $ ((!(!\Add2~22\ & \Add2~27\) # (\Add2~22\ & \Add2~27COUT1_62\))))
-- \Add2~32\ = CARRY((\ADC_L2~combout\(6) & ((\ADC_L1~combout\(6)) # (!\Add2~27\))) # (!\ADC_L2~combout\(6) & (\ADC_L1~combout\(6) & !\Add2~27\)))
-- \Add2~32COUT1_64\ = CARRY((\ADC_L2~combout\(6) & ((\ADC_L1~combout\(6)) # (!\Add2~27COUT1_62\))) # (!\ADC_L2~combout\(6) & (\ADC_L1~combout\(6) & !\Add2~27COUT1_62\)))

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
	dataa => \ADC_L2~combout\(6),
	datab => \ADC_L1~combout\(6),
	cin => \Add2~22\,
	cin0 => \Add2~27\,
	cin1 => \Add2~27COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~30_combout\,
	cout0 => \Add2~32\,
	cout1 => \Add2~32COUT1_64\);

-- Location: LC_X7_Y7_N4
\Add3~24\ : maxv_lcell
-- Equation(s):
-- \Add3~24_combout\ = \Add2~30_combout\ $ ((((\Add3~20\))))
-- \Add3~26\ = CARRY((\Add2~30_combout\) # ((!\Add3~20COUT1_62\)))

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
	dataa => \Add2~30_combout\,
	cin0 => \Add3~20\,
	cin1 => \Add3~20COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~24_combout\,
	cout => \Add3~26\);

-- Location: LC_X7_Y7_N8
\Add3~29\ : maxv_lcell
-- Equation(s):
-- \Add3~29_combout\ = (\RGHT~combout\ & (\Add1~20_combout\)) # (!\RGHT~combout\ & (((\Add3~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => \RGHT~combout\,
	datac => \Add3~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~29_combout\);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_R2[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_R2(7),
	combout => \ADC_R2~combout\(7));

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_R1[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_R1(7),
	combout => \ADC_R1~combout\(7));

-- Location: LC_X8_Y6_N7
\Add0~35\ : maxv_lcell
-- Equation(s):
-- \Add0~35_combout\ = \ADC_R2~combout\(7) $ (\ADC_R1~combout\(7) $ (((!\Add0~22\ & \Add0~32\) # (\Add0~22\ & \Add0~32COUT1_64\))))
-- \Add0~37\ = CARRY((\ADC_R2~combout\(7) & (!\ADC_R1~combout\(7) & !\Add0~32\)) # (!\ADC_R2~combout\(7) & ((!\Add0~32\) # (!\ADC_R1~combout\(7)))))
-- \Add0~37COUT1_66\ = CARRY((\ADC_R2~combout\(7) & (!\ADC_R1~combout\(7) & !\Add0~32COUT1_64\)) # (!\ADC_R2~combout\(7) & ((!\Add0~32COUT1_64\) # (!\ADC_R1~combout\(7)))))

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
	dataa => \ADC_R2~combout\(7),
	datab => \ADC_R1~combout\(7),
	cin => \Add0~22\,
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_66\);

-- Location: LC_X7_Y6_N5
\Add1~25\ : maxv_lcell
-- Equation(s):
-- \Add1~25_combout\ = \Add0~35_combout\ $ ((((!\Add1~22\))))
-- \Add1~27\ = CARRY((!\Add0~35_combout\ & ((!\Add1~22\))))
-- \Add1~27COUT1_56\ = CARRY((!\Add0~35_combout\ & ((!\Add1~22\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~35_combout\,
	cin => \Add1~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~25_combout\,
	cout0 => \Add1~27\,
	cout1 => \Add1~27COUT1_56\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_L1[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_L1(7),
	combout => \ADC_L1~combout\(7));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_L2[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_L2(7),
	combout => \ADC_L2~combout\(7));

-- Location: LC_X7_Y5_N7
\Add2~35\ : maxv_lcell
-- Equation(s):
-- \Add2~35_combout\ = \ADC_L1~combout\(7) $ (\ADC_L2~combout\(7) $ (((!\Add2~22\ & \Add2~32\) # (\Add2~22\ & \Add2~32COUT1_64\))))
-- \Add2~37\ = CARRY((\ADC_L1~combout\(7) & (!\ADC_L2~combout\(7) & !\Add2~32\)) # (!\ADC_L1~combout\(7) & ((!\Add2~32\) # (!\ADC_L2~combout\(7)))))
-- \Add2~37COUT1_66\ = CARRY((\ADC_L1~combout\(7) & (!\ADC_L2~combout\(7) & !\Add2~32COUT1_64\)) # (!\ADC_L1~combout\(7) & ((!\Add2~32COUT1_64\) # (!\ADC_L2~combout\(7)))))

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
	dataa => \ADC_L1~combout\(7),
	datab => \ADC_L2~combout\(7),
	cin => \Add2~22\,
	cin0 => \Add2~32\,
	cin1 => \Add2~32COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~35_combout\,
	cout0 => \Add2~37\,
	cout1 => \Add2~37COUT1_66\);

-- Location: LC_X7_Y7_N5
\Add3~30\ : maxv_lcell
-- Equation(s):
-- \Add3~30_combout\ = \Add2~35_combout\ $ ((((!\Add3~26\))))
-- \Add3~32\ = CARRY((!\Add2~35_combout\ & ((!\Add3~26\))))
-- \Add3~32COUT1_64\ = CARRY((!\Add2~35_combout\ & ((!\Add3~26\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~35_combout\,
	cin => \Add3~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~30_combout\,
	cout0 => \Add3~32\,
	cout1 => \Add3~32COUT1_64\);

-- Location: LC_X7_Y6_N9
\Add3~35\ : maxv_lcell
-- Equation(s):
-- \Add3~35_combout\ = ((\RGHT~combout\ & (\Add1~25_combout\)) # (!\RGHT~combout\ & ((\Add3~30_combout\))))

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
	dataa => \Add1~25_combout\,
	datac => \Add3~30_combout\,
	datad => \RGHT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~35_combout\);

-- Location: LC_X8_Y6_N8
\Add0~40\ : maxv_lcell
-- Equation(s):
-- \Add0~40_combout\ = (((!(!\Add0~22\ & \Add0~37\) # (\Add0~22\ & \Add0~37COUT1_66\))))

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
	cin => \Add0~22\,
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\);

-- Location: LC_X7_Y6_N6
\Add1~30\ : maxv_lcell
-- Equation(s):
-- \Add1~30_combout\ = (\Add0~40_combout\ $ (((!\Add1~22\ & \Add1~27\) # (\Add1~22\ & \Add1~27COUT1_56\))))
-- \Add1~32\ = CARRY(((\Add0~40_combout\) # (!\Add1~27\)))
-- \Add1~32COUT1_58\ = CARRY(((\Add0~40_combout\) # (!\Add1~27COUT1_56\)))

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
	datab => \Add0~40_combout\,
	cin => \Add1~22\,
	cin0 => \Add1~27\,
	cin1 => \Add1~27COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~30_combout\,
	cout0 => \Add1~32\,
	cout1 => \Add1~32COUT1_58\);

-- Location: LC_X7_Y5_N8
\Add2~40\ : maxv_lcell
-- Equation(s):
-- \Add2~40_combout\ = (((!(!\Add2~22\ & \Add2~37\) # (\Add2~22\ & \Add2~37COUT1_66\))))

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
	cin => \Add2~22\,
	cin0 => \Add2~37\,
	cin1 => \Add2~37COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~40_combout\);

-- Location: LC_X7_Y7_N6
\Add3~36\ : maxv_lcell
-- Equation(s):
-- \Add3~36_combout\ = (\Add2~40_combout\ $ (((!\Add3~26\ & \Add3~32\) # (\Add3~26\ & \Add3~32COUT1_64\))))
-- \Add3~38\ = CARRY(((\Add2~40_combout\) # (!\Add3~32\)))
-- \Add3~38COUT1_66\ = CARRY(((\Add2~40_combout\) # (!\Add3~32COUT1_64\)))

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
	datab => \Add2~40_combout\,
	cin => \Add3~26\,
	cin0 => \Add3~32\,
	cin1 => \Add3~32COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~36_combout\,
	cout0 => \Add3~38\,
	cout1 => \Add3~38COUT1_66\);

-- Location: LC_X5_Y6_N5
\Add3~41\ : maxv_lcell
-- Equation(s):
-- \Add3~41_combout\ = ((\RGHT~combout\ & (\Add1~30_combout\)) # (!\RGHT~combout\ & ((\Add3~36_combout\))))

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
	datab => \Add1~30_combout\,
	datac => \RGHT~combout\,
	datad => \Add3~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~41_combout\);

-- Location: LC_X7_Y6_N7
\Add1~35\ : maxv_lcell
-- Equation(s):
-- \Add1~35_combout\ = (((!(!\Add1~22\ & \Add1~32\) # (\Add1~22\ & \Add1~32COUT1_58\))))

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
	cin => \Add1~22\,
	cin0 => \Add1~32\,
	cin1 => \Add1~32COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~35_combout\);

-- Location: LC_X7_Y7_N7
\Add3~42\ : maxv_lcell
-- Equation(s):
-- \Add3~42_combout\ = (((!(!\Add3~26\ & \Add3~38\) # (\Add3~26\ & \Add3~38COUT1_66\))))

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
	cin => \Add3~26\,
	cin0 => \Add3~38\,
	cin1 => \Add3~38COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~42_combout\);

-- Location: LC_X7_Y6_N8
\Add3~47\ : maxv_lcell
-- Equation(s):
-- \Add3~47_combout\ = (\RGHT~combout\ & (((\Add1~35_combout\)))) # (!\RGHT~combout\ & (((\Add3~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RGHT~combout\,
	datac => \Add1~35_combout\,
	datad => \Add3~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~47_combout\);

-- Location: LC_X7_Y4_N0
\Add6~48\ : maxv_lcell
-- Equation(s):
-- \Add6~48_combout\ = \ADC_L1~combout\(0) $ ((\ADC_L2~combout\(0)))
-- \Add6~50\ = CARRY((\ADC_L1~combout\(0)) # ((!\ADC_L2~combout\(0))))
-- \Add6~50COUT1_63\ = CARRY((\ADC_L1~combout\(0)) # ((!\ADC_L2~combout\(0))))

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
	dataa => \ADC_L1~combout\(0),
	datab => \ADC_L2~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~48_combout\,
	cout0 => \Add6~50\,
	cout1 => \Add6~50COUT1_63\);

-- Location: LC_X7_Y4_N1
\Add6~0\ : maxv_lcell
-- Equation(s):
-- \Add6~0_combout\ = \ADC_L2~combout\(1) $ (\ADC_L1~combout\(1) $ ((!\Add6~50\)))
-- \Add6~2\ = CARRY((\ADC_L2~combout\(1) & ((!\Add6~50\) # (!\ADC_L1~combout\(1)))) # (!\ADC_L2~combout\(1) & (!\ADC_L1~combout\(1) & !\Add6~50\)))
-- \Add6~2COUT1_65\ = CARRY((\ADC_L2~combout\(1) & ((!\Add6~50COUT1_63\) # (!\ADC_L1~combout\(1)))) # (!\ADC_L2~combout\(1) & (!\ADC_L1~combout\(1) & !\Add6~50COUT1_63\)))

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
	dataa => \ADC_L2~combout\(1),
	datab => \ADC_L1~combout\(1),
	cin0 => \Add6~50\,
	cin1 => \Add6~50COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~0_combout\,
	cout0 => \Add6~2\,
	cout1 => \Add6~2COUT1_65\);

-- Location: LC_X9_Y6_N0
\Add4~40\ : maxv_lcell
-- Equation(s):
-- \Add4~40_combout\ = \ADC_R1~combout\(0) $ ((\ADC_R2~combout\(0)))
-- \Add4~42\ = CARRY(((\ADC_R2~combout\(0))) # (!\ADC_R1~combout\(0)))
-- \Add4~42COUT1_54\ = CARRY(((\ADC_R2~combout\(0))) # (!\ADC_R1~combout\(0)))

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
	dataa => \ADC_R1~combout\(0),
	datab => \ADC_R2~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~40_combout\,
	cout0 => \Add4~42\,
	cout1 => \Add4~42COUT1_54\);

-- Location: LC_X9_Y6_N1
\Add4~0\ : maxv_lcell
-- Equation(s):
-- \Add4~0_combout\ = \ADC_R2~combout\(1) $ (\ADC_R1~combout\(1) $ ((!\Add4~42\)))
-- \Add4~2\ = CARRY((\ADC_R2~combout\(1) & (\ADC_R1~combout\(1) & !\Add4~42\)) # (!\ADC_R2~combout\(1) & ((\ADC_R1~combout\(1)) # (!\Add4~42\))))
-- \Add4~2COUT1_56\ = CARRY((\ADC_R2~combout\(1) & (\ADC_R1~combout\(1) & !\Add4~42COUT1_54\)) # (!\ADC_R2~combout\(1) & ((\ADC_R1~combout\(1)) # (!\Add4~42COUT1_54\))))

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
	dataa => \ADC_R2~combout\(1),
	datab => \ADC_R1~combout\(1),
	cin0 => \Add4~42\,
	cin1 => \Add4~42COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~0_combout\,
	cout0 => \Add4~2\,
	cout1 => \Add4~2COUT1_56\);

-- Location: LC_X5_Y6_N6
\Add6~5\ : maxv_lcell
-- Equation(s):
-- \Add6~5_combout\ = ((\RGHT~combout\ & ((\Add4~0_combout\))) # (!\RGHT~combout\ & (\Add6~0_combout\)))

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
	dataa => \Add6~0_combout\,
	datac => \RGHT~combout\,
	datad => \Add4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~5_combout\);

-- Location: LC_X8_Y5_N1
\Add6~53\ : maxv_lcell
-- Equation(s):
-- \Add6~53_combout\ = (\RGHT~combout\ & (((\Add4~40_combout\)))) # (!\RGHT~combout\ & (((\Add6~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RGHT~combout\,
	datac => \Add4~40_combout\,
	datad => \Add6~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~53_combout\);

-- Location: LC_X7_Y4_N2
\Add6~6\ : maxv_lcell
-- Equation(s):
-- \Add6~6_combout\ = \ADC_L2~combout\(2) $ (\ADC_L1~combout\(2) $ ((\Add6~2\)))
-- \Add6~8\ = CARRY((\ADC_L2~combout\(2) & (\ADC_L1~combout\(2) & !\Add6~2\)) # (!\ADC_L2~combout\(2) & ((\ADC_L1~combout\(2)) # (!\Add6~2\))))
-- \Add6~8COUT1_67\ = CARRY((\ADC_L2~combout\(2) & (\ADC_L1~combout\(2) & !\Add6~2COUT1_65\)) # (!\ADC_L2~combout\(2) & ((\ADC_L1~combout\(2)) # (!\Add6~2COUT1_65\))))

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
	dataa => \ADC_L2~combout\(2),
	datab => \ADC_L1~combout\(2),
	cin0 => \Add6~2\,
	cin1 => \Add6~2COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~6_combout\,
	cout0 => \Add6~8\,
	cout1 => \Add6~8COUT1_67\);

-- Location: LC_X7_Y4_N3
\Add6~12\ : maxv_lcell
-- Equation(s):
-- \Add6~12_combout\ = \ADC_L1~combout\(3) $ (\ADC_L2~combout\(3) $ ((!\Add6~8\)))
-- \Add6~14\ = CARRY((\ADC_L1~combout\(3) & (\ADC_L2~combout\(3) & !\Add6~8\)) # (!\ADC_L1~combout\(3) & ((\ADC_L2~combout\(3)) # (!\Add6~8\))))
-- \Add6~14COUT1_69\ = CARRY((\ADC_L1~combout\(3) & (\ADC_L2~combout\(3) & !\Add6~8COUT1_67\)) # (!\ADC_L1~combout\(3) & ((\ADC_L2~combout\(3)) # (!\Add6~8COUT1_67\))))

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
	dataa => \ADC_L1~combout\(3),
	datab => \ADC_L2~combout\(3),
	cin0 => \Add6~8\,
	cin1 => \Add6~8COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~12_combout\,
	cout0 => \Add6~14\,
	cout1 => \Add6~14COUT1_69\);

-- Location: LC_X7_Y4_N4
\Add6~18\ : maxv_lcell
-- Equation(s):
-- \Add6~18_combout\ = \ADC_L1~combout\(4) $ (\ADC_L2~combout\(4) $ ((\Add6~14\)))
-- \Add6~20\ = CARRY((\ADC_L1~combout\(4) & ((!\Add6~14COUT1_69\) # (!\ADC_L2~combout\(4)))) # (!\ADC_L1~combout\(4) & (!\ADC_L2~combout\(4) & !\Add6~14COUT1_69\)))

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
	dataa => \ADC_L1~combout\(4),
	datab => \ADC_L2~combout\(4),
	cin0 => \Add6~14\,
	cin1 => \Add6~14COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~18_combout\,
	cout => \Add6~20\);

-- Location: LC_X7_Y4_N5
\Add6~24\ : maxv_lcell
-- Equation(s):
-- \Add6~24_combout\ = \ADC_L2~combout\(5) $ (\ADC_L1~combout\(5) $ ((!\Add6~20\)))
-- \Add6~26\ = CARRY((\ADC_L2~combout\(5) & ((!\Add6~20\) # (!\ADC_L1~combout\(5)))) # (!\ADC_L2~combout\(5) & (!\ADC_L1~combout\(5) & !\Add6~20\)))
-- \Add6~26COUT1_71\ = CARRY((\ADC_L2~combout\(5) & ((!\Add6~20\) # (!\ADC_L1~combout\(5)))) # (!\ADC_L2~combout\(5) & (!\ADC_L1~combout\(5) & !\Add6~20\)))

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
	dataa => \ADC_L2~combout\(5),
	datab => \ADC_L1~combout\(5),
	cin => \Add6~20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~24_combout\,
	cout0 => \Add6~26\,
	cout1 => \Add6~26COUT1_71\);

-- Location: LC_X7_Y4_N6
\Add6~30\ : maxv_lcell
-- Equation(s):
-- \Add6~30_combout\ = \ADC_L1~combout\(6) $ (\ADC_L2~combout\(6) $ (((!\Add6~20\ & \Add6~26\) # (\Add6~20\ & \Add6~26COUT1_71\))))
-- \Add6~32\ = CARRY((\ADC_L1~combout\(6) & ((!\Add6~26\) # (!\ADC_L2~combout\(6)))) # (!\ADC_L1~combout\(6) & (!\ADC_L2~combout\(6) & !\Add6~26\)))
-- \Add6~32COUT1_73\ = CARRY((\ADC_L1~combout\(6) & ((!\Add6~26COUT1_71\) # (!\ADC_L2~combout\(6)))) # (!\ADC_L1~combout\(6) & (!\ADC_L2~combout\(6) & !\Add6~26COUT1_71\)))

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
	dataa => \ADC_L1~combout\(6),
	datab => \ADC_L2~combout\(6),
	cin => \Add6~20\,
	cin0 => \Add6~26\,
	cin1 => \Add6~26COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~30_combout\,
	cout0 => \Add6~32\,
	cout1 => \Add6~32COUT1_73\);

-- Location: LC_X7_Y4_N7
\Add6~36\ : maxv_lcell
-- Equation(s):
-- \Add6~36_combout\ = \ADC_L2~combout\(7) $ (\ADC_L1~combout\(7) $ ((!(!\Add6~20\ & \Add6~32\) # (\Add6~20\ & \Add6~32COUT1_73\))))
-- \Add6~38\ = CARRY((\ADC_L2~combout\(7) & ((!\Add6~32\) # (!\ADC_L1~combout\(7)))) # (!\ADC_L2~combout\(7) & (!\ADC_L1~combout\(7) & !\Add6~32\)))
-- \Add6~38COUT1_75\ = CARRY((\ADC_L2~combout\(7) & ((!\Add6~32COUT1_73\) # (!\ADC_L1~combout\(7)))) # (!\ADC_L2~combout\(7) & (!\ADC_L1~combout\(7) & !\Add6~32COUT1_73\)))

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
	dataa => \ADC_L2~combout\(7),
	datab => \ADC_L1~combout\(7),
	cin => \Add6~20\,
	cin0 => \Add6~32\,
	cin1 => \Add6~32COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~36_combout\,
	cout0 => \Add6~38\,
	cout1 => \Add6~38COUT1_75\);

-- Location: LC_X7_Y4_N8
\Add6~42\ : maxv_lcell
-- Equation(s):
-- \Add6~42_combout\ = ((((!\Add6~20\ & \Add6~38\) # (\Add6~20\ & \Add6~38COUT1_75\))))

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
	cin => \Add6~20\,
	cin0 => \Add6~38\,
	cin1 => \Add6~38COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~42_combout\);

-- Location: LC_X9_Y6_N2
\Add4~5\ : maxv_lcell
-- Equation(s):
-- \Add4~5_combout\ = \ADC_R2~combout\(2) $ (\ADC_R1~combout\(2) $ ((\Add4~2\)))
-- \Add4~7\ = CARRY((\ADC_R2~combout\(2) & ((!\Add4~2\) # (!\ADC_R1~combout\(2)))) # (!\ADC_R2~combout\(2) & (!\ADC_R1~combout\(2) & !\Add4~2\)))
-- \Add4~7COUT1_58\ = CARRY((\ADC_R2~combout\(2) & ((!\Add4~2COUT1_56\) # (!\ADC_R1~combout\(2)))) # (!\ADC_R2~combout\(2) & (!\ADC_R1~combout\(2) & !\Add4~2COUT1_56\)))

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
	dataa => \ADC_R2~combout\(2),
	datab => \ADC_R1~combout\(2),
	cin0 => \Add4~2\,
	cin1 => \Add4~2COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~5_combout\,
	cout0 => \Add4~7\,
	cout1 => \Add4~7COUT1_58\);

-- Location: LC_X9_Y6_N3
\Add4~10\ : maxv_lcell
-- Equation(s):
-- \Add4~10_combout\ = \ADC_R1~combout\(3) $ (\ADC_R2~combout\(3) $ ((!\Add4~7\)))
-- \Add4~12\ = CARRY((\ADC_R1~combout\(3) & ((!\Add4~7\) # (!\ADC_R2~combout\(3)))) # (!\ADC_R1~combout\(3) & (!\ADC_R2~combout\(3) & !\Add4~7\)))
-- \Add4~12COUT1_60\ = CARRY((\ADC_R1~combout\(3) & ((!\Add4~7COUT1_58\) # (!\ADC_R2~combout\(3)))) # (!\ADC_R1~combout\(3) & (!\ADC_R2~combout\(3) & !\Add4~7COUT1_58\)))

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
	dataa => \ADC_R1~combout\(3),
	datab => \ADC_R2~combout\(3),
	cin0 => \Add4~7\,
	cin1 => \Add4~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~10_combout\,
	cout0 => \Add4~12\,
	cout1 => \Add4~12COUT1_60\);

-- Location: LC_X9_Y6_N4
\Add4~15\ : maxv_lcell
-- Equation(s):
-- \Add4~15_combout\ = \ADC_R2~combout\(4) $ (\ADC_R1~combout\(4) $ ((\Add4~12\)))
-- \Add4~17\ = CARRY((\ADC_R2~combout\(4) & ((!\Add4~12COUT1_60\) # (!\ADC_R1~combout\(4)))) # (!\ADC_R2~combout\(4) & (!\ADC_R1~combout\(4) & !\Add4~12COUT1_60\)))

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
	dataa => \ADC_R2~combout\(4),
	datab => \ADC_R1~combout\(4),
	cin0 => \Add4~12\,
	cin1 => \Add4~12COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~15_combout\,
	cout => \Add4~17\);

-- Location: LC_X9_Y6_N5
\Add4~20\ : maxv_lcell
-- Equation(s):
-- \Add4~20_combout\ = \ADC_R2~combout\(5) $ (\ADC_R1~combout\(5) $ ((!\Add4~17\)))
-- \Add4~22\ = CARRY((\ADC_R2~combout\(5) & (\ADC_R1~combout\(5) & !\Add4~17\)) # (!\ADC_R2~combout\(5) & ((\ADC_R1~combout\(5)) # (!\Add4~17\))))
-- \Add4~22COUT1_62\ = CARRY((\ADC_R2~combout\(5) & (\ADC_R1~combout\(5) & !\Add4~17\)) # (!\ADC_R2~combout\(5) & ((\ADC_R1~combout\(5)) # (!\Add4~17\))))

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
	dataa => \ADC_R2~combout\(5),
	datab => \ADC_R1~combout\(5),
	cin => \Add4~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~20_combout\,
	cout0 => \Add4~22\,
	cout1 => \Add4~22COUT1_62\);

-- Location: LC_X9_Y6_N6
\Add4~25\ : maxv_lcell
-- Equation(s):
-- \Add4~25_combout\ = \ADC_R1~combout\(6) $ (\ADC_R2~combout\(6) $ (((!\Add4~17\ & \Add4~22\) # (\Add4~17\ & \Add4~22COUT1_62\))))
-- \Add4~27\ = CARRY((\ADC_R1~combout\(6) & (\ADC_R2~combout\(6) & !\Add4~22\)) # (!\ADC_R1~combout\(6) & ((\ADC_R2~combout\(6)) # (!\Add4~22\))))
-- \Add4~27COUT1_64\ = CARRY((\ADC_R1~combout\(6) & (\ADC_R2~combout\(6) & !\Add4~22COUT1_62\)) # (!\ADC_R1~combout\(6) & ((\ADC_R2~combout\(6)) # (!\Add4~22COUT1_62\))))

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
	dataa => \ADC_R1~combout\(6),
	datab => \ADC_R2~combout\(6),
	cin => \Add4~17\,
	cin0 => \Add4~22\,
	cin1 => \Add4~22COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~25_combout\,
	cout0 => \Add4~27\,
	cout1 => \Add4~27COUT1_64\);

-- Location: LC_X9_Y6_N7
\Add4~30\ : maxv_lcell
-- Equation(s):
-- \Add4~30_combout\ = \ADC_R1~combout\(7) $ (\ADC_R2~combout\(7) $ ((!(!\Add4~17\ & \Add4~27\) # (\Add4~17\ & \Add4~27COUT1_64\))))
-- \Add4~32\ = CARRY((\ADC_R1~combout\(7) & ((!\Add4~27\) # (!\ADC_R2~combout\(7)))) # (!\ADC_R1~combout\(7) & (!\ADC_R2~combout\(7) & !\Add4~27\)))
-- \Add4~32COUT1_66\ = CARRY((\ADC_R1~combout\(7) & ((!\Add4~27COUT1_64\) # (!\ADC_R2~combout\(7)))) # (!\ADC_R1~combout\(7) & (!\ADC_R2~combout\(7) & !\Add4~27COUT1_64\)))

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
	dataa => \ADC_R1~combout\(7),
	datab => \ADC_R2~combout\(7),
	cin => \Add4~17\,
	cin0 => \Add4~27\,
	cin1 => \Add4~27COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~30_combout\,
	cout0 => \Add4~32\,
	cout1 => \Add4~32COUT1_66\);

-- Location: LC_X9_Y6_N8
\Add4~35\ : maxv_lcell
-- Equation(s):
-- \Add4~35_combout\ = ((((!\Add4~17\ & \Add4~32\) # (\Add4~17\ & \Add4~32COUT1_66\))))

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
	cin => \Add4~17\,
	cin0 => \Add4~32\,
	cin1 => \Add4~32COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~35_combout\);

-- Location: LC_X9_Y5_N9
\Add6~47\ : maxv_lcell
-- Equation(s):
-- \Add6~47_combout\ = ((\RGHT~combout\ & ((\Add4~35_combout\))) # (!\RGHT~combout\ & (\Add6~42_combout\)))

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
	datab => \RGHT~combout\,
	datac => \Add6~42_combout\,
	datad => \Add4~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~47_combout\);

-- Location: LC_X9_Y5_N0
\Add5~42\ : maxv_lcell
-- Equation(s):
-- \Add5~42_cout0\ = CARRY((\Add6~53_combout\ & (\Add6~47_combout\)))
-- \Add5~42COUT1_54\ = CARRY((\Add6~53_combout\ & (\Add6~47_combout\)))

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
	dataa => \Add6~53_combout\,
	datab => \Add6~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~40\,
	cout0 => \Add5~42_cout0\,
	cout1 => \Add5~42COUT1_54\);

-- Location: LC_X9_Y5_N1
\Add5~0\ : maxv_lcell
-- Equation(s):
-- \Add5~0_combout\ = (\Add6~5_combout\ $ ((\Add5~42_cout0\)))
-- \Add5~2\ = CARRY(((!\Add5~42_cout0\) # (!\Add6~5_combout\)))
-- \Add5~2COUT1_56\ = CARRY(((!\Add5~42COUT1_54\) # (!\Add6~5_combout\)))

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
	datab => \Add6~5_combout\,
	cin0 => \Add5~42_cout0\,
	cin1 => \Add5~42COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~0_combout\,
	cout0 => \Add5~2\,
	cout1 => \Add5~2COUT1_56\);

-- Location: LC_X6_Y6_N2
\Add6~11\ : maxv_lcell
-- Equation(s):
-- \Add6~11_combout\ = (\RGHT~combout\ & (((\Add4~5_combout\)))) # (!\RGHT~combout\ & (\Add6~6_combout\))

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
	dataa => \Add6~6_combout\,
	datab => \RGHT~combout\,
	datad => \Add4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~11_combout\);

-- Location: LC_X9_Y5_N2
\Add5~5\ : maxv_lcell
-- Equation(s):
-- \Add5~5_combout\ = (\Add6~11_combout\ $ ((!\Add5~2\)))
-- \Add5~7\ = CARRY(((\Add6~11_combout\ & !\Add5~2\)))
-- \Add5~7COUT1_58\ = CARRY(((\Add6~11_combout\ & !\Add5~2COUT1_56\)))

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
	datab => \Add6~11_combout\,
	cin0 => \Add5~2\,
	cin1 => \Add5~2COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~5_combout\,
	cout0 => \Add5~7\,
	cout1 => \Add5~7COUT1_58\);

-- Location: LC_X7_Y4_N9
\Add6~17\ : maxv_lcell
-- Equation(s):
-- \Add6~17_combout\ = ((\RGHT~combout\ & ((\Add4~10_combout\))) # (!\RGHT~combout\ & (\Add6~12_combout\)))

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
	dataa => \Add6~12_combout\,
	datac => \RGHT~combout\,
	datad => \Add4~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~17_combout\);

-- Location: LC_X9_Y5_N3
\Add5~10\ : maxv_lcell
-- Equation(s):
-- \Add5~10_combout\ = \Add6~17_combout\ $ ((((\Add5~7\))))
-- \Add5~12\ = CARRY(((!\Add5~7\)) # (!\Add6~17_combout\))
-- \Add5~12COUT1_60\ = CARRY(((!\Add5~7COUT1_58\)) # (!\Add6~17_combout\))

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
	dataa => \Add6~17_combout\,
	cin0 => \Add5~7\,
	cin1 => \Add5~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~10_combout\,
	cout0 => \Add5~12\,
	cout1 => \Add5~12COUT1_60\);

-- Location: LC_X6_Y6_N5
\Add6~23\ : maxv_lcell
-- Equation(s):
-- \Add6~23_combout\ = ((\RGHT~combout\ & ((\Add4~15_combout\))) # (!\RGHT~combout\ & (\Add6~18_combout\)))

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
	datab => \RGHT~combout\,
	datac => \Add6~18_combout\,
	datad => \Add4~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~23_combout\);

-- Location: LC_X9_Y5_N4
\Add5~15\ : maxv_lcell
-- Equation(s):
-- \Add5~15_combout\ = \Add6~23_combout\ $ ((((!\Add5~12\))))
-- \Add5~17\ = CARRY((\Add6~23_combout\ & ((!\Add5~12COUT1_60\))))

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
	dataa => \Add6~23_combout\,
	cin0 => \Add5~12\,
	cin1 => \Add5~12COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~15_combout\,
	cout => \Add5~17\);

-- Location: LC_X9_Y6_N9
\Add6~29\ : maxv_lcell
-- Equation(s):
-- \Add6~29_combout\ = ((\RGHT~combout\ & ((\Add4~20_combout\))) # (!\RGHT~combout\ & (\Add6~24_combout\)))

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
	dataa => \Add6~24_combout\,
	datac => \Add4~20_combout\,
	datad => \RGHT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~29_combout\);

-- Location: LC_X9_Y5_N5
\Add5~20\ : maxv_lcell
-- Equation(s):
-- \Add5~20_combout\ = (\Add6~29_combout\ $ ((\Add5~17\)))
-- \Add5~22\ = CARRY(((!\Add5~17\) # (!\Add6~29_combout\)))
-- \Add5~22COUT1_62\ = CARRY(((!\Add5~17\) # (!\Add6~29_combout\)))

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
	datab => \Add6~29_combout\,
	cin => \Add5~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~20_combout\,
	cout0 => \Add5~22\,
	cout1 => \Add5~22COUT1_62\);

-- Location: LC_X8_Y5_N5
\Add6~35\ : maxv_lcell
-- Equation(s):
-- \Add6~35_combout\ = (\RGHT~combout\ & (((\Add4~25_combout\)))) # (!\RGHT~combout\ & (\Add6~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RGHT~combout\,
	datab => \Add6~30_combout\,
	datad => \Add4~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~35_combout\);

-- Location: LC_X9_Y5_N6
\Add5~25\ : maxv_lcell
-- Equation(s):
-- \Add5~25_combout\ = \Add6~35_combout\ $ ((((!(!\Add5~17\ & \Add5~22\) # (\Add5~17\ & \Add5~22COUT1_62\)))))
-- \Add5~27\ = CARRY((\Add6~35_combout\ & ((!\Add5~22\))))
-- \Add5~27COUT1_64\ = CARRY((\Add6~35_combout\ & ((!\Add5~22COUT1_62\))))

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
	dataa => \Add6~35_combout\,
	cin => \Add5~17\,
	cin0 => \Add5~22\,
	cin1 => \Add5~22COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~25_combout\,
	cout0 => \Add5~27\,
	cout1 => \Add5~27COUT1_64\);

-- Location: LC_X8_Y5_N7
\Add6~41\ : maxv_lcell
-- Equation(s):
-- \Add6~41_combout\ = (\RGHT~combout\ & (((\Add4~30_combout\)))) # (!\RGHT~combout\ & (\Add6~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RGHT~combout\,
	datab => \Add6~36_combout\,
	datad => \Add4~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~41_combout\);

-- Location: LC_X9_Y5_N7
\Add5~30\ : maxv_lcell
-- Equation(s):
-- \Add5~30_combout\ = (\Add6~41_combout\ $ (((!\Add5~17\ & \Add5~27\) # (\Add5~17\ & \Add5~27COUT1_64\))))
-- \Add5~32\ = CARRY(((!\Add5~27\) # (!\Add6~41_combout\)))
-- \Add5~32COUT1_66\ = CARRY(((!\Add5~27COUT1_64\) # (!\Add6~41_combout\)))

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
	datab => \Add6~41_combout\,
	cin => \Add5~17\,
	cin0 => \Add5~27\,
	cin1 => \Add5~27COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~30_combout\,
	cout0 => \Add5~32\,
	cout1 => \Add5~32COUT1_66\);

-- Location: LC_X9_Y5_N8
\Add5~35\ : maxv_lcell
-- Equation(s):
-- \Add5~35_combout\ = (((!\Add5~17\ & \Add5~32\) # (\Add5~17\ & \Add5~32COUT1_66\) $ (!\Add6~47_combout\)))

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
	datad => \Add6~47_combout\,
	cin => \Add5~17\,
	cin0 => \Add5~32\,
	cin1 => \Add5~32COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~35_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ERR[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ERR~0_combout\,
	oe => VCC,
	padio => ww_ERR(0));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ERR[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~5_combout\,
	oe => VCC,
	padio => ww_ERR(1));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ERR[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~11_combout\,
	oe => VCC,
	padio => ww_ERR(2));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ERR[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~17_combout\,
	oe => VCC,
	padio => ww_ERR(3));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ERR[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~23_combout\,
	oe => VCC,
	padio => ww_ERR(4));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ERR[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~29_combout\,
	oe => VCC,
	padio => ww_ERR(5));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ERR[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~35_combout\,
	oe => VCC,
	padio => ww_ERR(6));

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ERR[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~41_combout\,
	oe => VCC,
	padio => ww_ERR(7));

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ERR[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~47_combout\,
	oe => VCC,
	padio => ww_ERR(8));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ROT[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~0_combout\,
	oe => VCC,
	padio => ww_ROT(0));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ROT[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~5_combout\,
	oe => VCC,
	padio => ww_ROT(1));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ROT[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~10_combout\,
	oe => VCC,
	padio => ww_ROT(2));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ROT[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~15_combout\,
	oe => VCC,
	padio => ww_ROT(3));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ROT[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~20_combout\,
	oe => VCC,
	padio => ww_ROT(4));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ROT[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~25_combout\,
	oe => VCC,
	padio => ww_ROT(5));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ROT[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~30_combout\,
	oe => VCC,
	padio => ww_ROT(6));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ROT[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~35_combout\,
	oe => VCC,
	padio => ww_ROT(7));
END structure;


