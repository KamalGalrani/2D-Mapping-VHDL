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

-- DATE "04/07/2014 17:18:00"

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

ENTITY 	Navigation IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	CH1_L : BUFFER std_logic;
	CH2_L : BUFFER std_logic;
	CH3_L : BUFFER std_logic;
	CH4_L : BUFFER std_logic;
	CH1_R : BUFFER std_logic;
	CH2_R : BUFFER std_logic;
	CH3_R : BUFFER std_logic;
	CH4_R : BUFFER std_logic;
	DEBUG : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END Navigation;

-- Design Ports Information
-- RST	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CH1_L	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CH2_L	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CH3_L	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CH4_L	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CH1_R	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CH2_R	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CH3_R	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CH4_R	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- DEBUG[0]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- DEBUG[1]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- DEBUG[2]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- DEBUG[3]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLK	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Navigation IS
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
SIGNAL ww_CH1_L : std_logic;
SIGNAL ww_CH2_L : std_logic;
SIGNAL ww_CH3_L : std_logic;
SIGNAL ww_CH4_L : std_logic;
SIGNAL ww_CH1_R : std_logic;
SIGNAL ww_CH2_R : std_logic;
SIGNAL ww_CH3_R : std_logic;
SIGNAL ww_CH4_R : std_logic;
SIGNAL ww_DEBUG : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \Stepper_L|Add0~20_combout\ : std_logic;
SIGNAL \Stepper_L|Add0~22\ : std_logic;
SIGNAL \Stepper_L|Add0~22COUT1_131\ : std_logic;
SIGNAL \Stepper_L|Add0~25_combout\ : std_logic;
SIGNAL \Stepper_L|Add0~0_combout\ : std_logic;
SIGNAL \Stepper_L|Add0~2\ : std_logic;
SIGNAL \Stepper_L|Add0~2COUT1_123\ : std_logic;
SIGNAL \Stepper_L|Add0~5_combout\ : std_logic;
SIGNAL \Stepper_L|Add0~7\ : std_logic;
SIGNAL \Stepper_L|Add0~7COUT1_125\ : std_logic;
SIGNAL \Stepper_L|Add0~10_combout\ : std_logic;
SIGNAL \Stepper_L|Add0~12\ : std_logic;
SIGNAL \Stepper_L|Add0~12COUT1_127\ : std_logic;
SIGNAL \Stepper_L|Add0~15_combout\ : std_logic;
SIGNAL \Stepper_L|Add0~17\ : std_logic;
SIGNAL \Stepper_L|Add0~17COUT1_129\ : std_logic;
SIGNAL \Stepper_L|Add0~30_combout\ : std_logic;
SIGNAL \Stepper_L|Add0~27\ : std_logic;
SIGNAL \Stepper_L|Add0~27COUT1_133\ : std_logic;
SIGNAL \Stepper_L|Add0~35_combout\ : std_logic;
SIGNAL \Stepper_L|Add0~32\ : std_logic;
SIGNAL \Stepper_L|Add0~37\ : std_logic;
SIGNAL \Stepper_L|Add0~37COUT1_135\ : std_logic;
SIGNAL \Stepper_L|Add0~40_combout\ : std_logic;
SIGNAL \Stepper_L|Add0~42\ : std_logic;
SIGNAL \Stepper_L|Add0~42COUT1_137\ : std_logic;
SIGNAL \Stepper_L|Add0~45_combout\ : std_logic;
SIGNAL \Stepper_L|Add0~47\ : std_logic;
SIGNAL \Stepper_L|Add0~50_combout\ : std_logic;
SIGNAL \Stepper_L|Add0~52\ : std_logic;
SIGNAL \Stepper_L|Add0~52COUT1_139\ : std_logic;
SIGNAL \Stepper_L|Add0~55_combout\ : std_logic;
SIGNAL \Stepper_L|Add0~57\ : std_logic;
SIGNAL \Stepper_L|Add0~57COUT1_141\ : std_logic;
SIGNAL \Stepper_L|Add0~75_combout\ : std_logic;
SIGNAL \Stepper_L|Add0~77COUT1_143\ : std_logic;
SIGNAL \Stepper_L|Add0~62COUT1_145\ : std_logic;
SIGNAL \Stepper_L|Add0~67\ : std_logic;
SIGNAL \Stepper_L|Add0~70_combout\ : std_logic;
SIGNAL \Stepper_L|Add0~77\ : std_logic;
SIGNAL \Stepper_L|Add0~60_combout\ : std_logic;
SIGNAL \Stepper_L|Add0~62\ : std_logic;
SIGNAL \Stepper_L|Add0~65_combout\ : std_logic;
SIGNAL \Stepper_L|Equal0~3\ : std_logic;
SIGNAL \Stepper_L|Equal0~1\ : std_logic;
SIGNAL \Stepper_L|Equal0~2\ : std_logic;
SIGNAL \Stepper_L|Equal0~0\ : std_logic;
SIGNAL \Stepper_L|Equal0~4_combout\ : std_logic;
SIGNAL \Stepper_L|Add0~72\ : std_logic;
SIGNAL \Stepper_L|Add0~72COUT1_147\ : std_logic;
SIGNAL \Stepper_L|Add0~97COUT1_149\ : std_logic;
SIGNAL \Stepper_L|Add0~87\ : std_logic;
SIGNAL \Stepper_L|Add0~87COUT1_151\ : std_logic;
SIGNAL \Stepper_L|Add0~90_combout\ : std_logic;
SIGNAL \Stepper_L|Add0~92\ : std_logic;
SIGNAL \Stepper_L|Add0~92COUT1_153\ : std_logic;
SIGNAL \Stepper_L|Add0~100_combout\ : std_logic;
SIGNAL \Stepper_L|Add0~95_combout\ : std_logic;
SIGNAL \Stepper_L|Add0~97\ : std_logic;
SIGNAL \Stepper_L|Add0~85_combout\ : std_logic;
SIGNAL \Stepper_L|Equal0~5\ : std_logic;
SIGNAL \Stepper_L|Add0~102\ : std_logic;
SIGNAL \Stepper_L|Add0~80_combout\ : std_logic;
SIGNAL \Stepper_L|stepper_clk~regout\ : std_logic;
SIGNAL \Stepper_L|CH1~regout\ : std_logic;
SIGNAL \Stepper_L|CH2~regout\ : std_logic;
SIGNAL \Stepper_L|CH3~0\ : std_logic;
SIGNAL \Stepper_L|CH3~regout\ : std_logic;
SIGNAL \Stepper_L|CH4~regout\ : std_logic;
SIGNAL \Stepper_L|Equal0~6\ : std_logic;
SIGNAL \Stepper_R|stepper_clk~regout\ : std_logic;
SIGNAL \Stepper_R|CH1~regout\ : std_logic;
SIGNAL \Stepper_R|CH2~regout\ : std_logic;
SIGNAL \Stepper_R|CH3~0\ : std_logic;
SIGNAL \Stepper_R|CH3~regout\ : std_logic;
SIGNAL \Stepper_R|CH4~regout\ : std_logic;
SIGNAL \Stepper_L|state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Stepper_R|state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Stepper_L|count\ : std_logic_vector(20 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
CH1_L <= ww_CH1_L;
CH2_L <= ww_CH2_L;
CH3_L <= ww_CH3_L;
CH4_L <= ww_CH4_L;
CH1_R <= ww_CH1_R;
CH2_R <= ww_CH2_R;
CH3_R <= ww_CH3_R;
CH4_R <= ww_CH4_R;
DEBUG <= ww_DEBUG;
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

-- Location: LC_X10_Y5_N0
\Stepper_L|Add0~20\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Add0~20_combout\ = (\Stepper_L|count\(5) $ ((\Stepper_L|Add0~32\)))
-- \Stepper_L|Add0~22\ = CARRY(((!\Stepper_L|Add0~32\) # (!\Stepper_L|count\(5))))
-- \Stepper_L|Add0~22COUT1_131\ = CARRY(((!\Stepper_L|Add0~32\) # (!\Stepper_L|count\(5))))

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
	datab => \Stepper_L|count\(5),
	cin => \Stepper_L|Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Add0~20_combout\,
	cout0 => \Stepper_L|Add0~22\,
	cout1 => \Stepper_L|Add0~22COUT1_131\);

-- Location: LC_X13_Y5_N7
\Stepper_L|count[5]\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|count\(5) = DFFEAS((\Stepper_L|Add0~20_combout\ & (((!\Stepper_L|Equal0~5\) # (!\Stepper_L|Equal0~4_combout\)) # (!\Stepper_L|count\(20)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Stepper_L|count\(20),
	datab => \Stepper_L|Equal0~4_combout\,
	datac => \Stepper_L|Equal0~5\,
	datad => \Stepper_L|Add0~20_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_L|count\(5));

-- Location: LC_X10_Y5_N1
\Stepper_L|Add0~25\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Add0~25_combout\ = (\Stepper_L|count\(6) $ ((!(!\Stepper_L|Add0~32\ & \Stepper_L|Add0~22\) # (\Stepper_L|Add0~32\ & \Stepper_L|Add0~22COUT1_131\))))
-- \Stepper_L|Add0~27\ = CARRY(((\Stepper_L|count\(6) & !\Stepper_L|Add0~22\)))
-- \Stepper_L|Add0~27COUT1_133\ = CARRY(((\Stepper_L|count\(6) & !\Stepper_L|Add0~22COUT1_131\)))

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
	datab => \Stepper_L|count\(6),
	cin => \Stepper_L|Add0~32\,
	cin0 => \Stepper_L|Add0~22\,
	cin1 => \Stepper_L|Add0~22COUT1_131\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Add0~25_combout\,
	cout0 => \Stepper_L|Add0~27\,
	cout1 => \Stepper_L|Add0~27COUT1_133\);

-- Location: LC_X13_Y5_N3
\Stepper_L|count[6]\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|count\(6) = DFFEAS((\Stepper_L|Add0~25_combout\ & (((!\Stepper_L|count\(20)) # (!\Stepper_L|Equal0~5\)) # (!\Stepper_L|Equal0~4_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Stepper_L|Equal0~4_combout\,
	datab => \Stepper_L|Equal0~5\,
	datac => \Stepper_L|count\(20),
	datad => \Stepper_L|Add0~25_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_L|count\(6));

-- Location: LC_X9_Y5_N5
\Stepper_L|Add0~0\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Add0~0_combout\ = (!\Stepper_L|count\(0))
-- \Stepper_L|Add0~2\ = CARRY((\Stepper_L|count\(0)))
-- \Stepper_L|Add0~2COUT1_123\ = CARRY((\Stepper_L|count\(0)))

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
	dataa => \Stepper_L|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Add0~0_combout\,
	cout0 => \Stepper_L|Add0~2\,
	cout1 => \Stepper_L|Add0~2COUT1_123\);

-- Location: LC_X9_Y5_N3
\Stepper_L|count[0]\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|count\(0) = DFFEAS((\Stepper_L|Add0~0_combout\ & (((!\Stepper_L|Equal0~4_combout\) # (!\Stepper_L|Equal0~5\)) # (!\Stepper_L|count\(20)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Stepper_L|Add0~0_combout\,
	datab => \Stepper_L|count\(20),
	datac => \Stepper_L|Equal0~5\,
	datad => \Stepper_L|Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_L|count\(0));

-- Location: LC_X9_Y5_N6
\Stepper_L|Add0~5\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Add0~5_combout\ = \Stepper_L|count\(1) $ ((((\Stepper_L|Add0~2\))))
-- \Stepper_L|Add0~7\ = CARRY(((!\Stepper_L|Add0~2\)) # (!\Stepper_L|count\(1)))
-- \Stepper_L|Add0~7COUT1_125\ = CARRY(((!\Stepper_L|Add0~2COUT1_123\)) # (!\Stepper_L|count\(1)))

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
	dataa => \Stepper_L|count\(1),
	cin0 => \Stepper_L|Add0~2\,
	cin1 => \Stepper_L|Add0~2COUT1_123\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Add0~5_combout\,
	cout0 => \Stepper_L|Add0~7\,
	cout1 => \Stepper_L|Add0~7COUT1_125\);

-- Location: LC_X9_Y5_N4
\Stepper_L|count[1]\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Equal0~0\ = (!\Stepper_L|count\(0) & (!\Stepper_L|count\(2) & (!B1_count[1] & !\Stepper_L|count\(3))))
-- \Stepper_L|count\(1) = DFFEAS(\Stepper_L|Equal0~0\, GLOBAL(\CLK~combout\), VCC, , , \Stepper_L|Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Stepper_L|count\(0),
	datab => \Stepper_L|count\(2),
	datac => \Stepper_L|Add0~5_combout\,
	datad => \Stepper_L|count\(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Equal0~0\,
	regout => \Stepper_L|count\(1));

-- Location: LC_X9_Y5_N7
\Stepper_L|Add0~10\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Add0~10_combout\ = (\Stepper_L|count\(2) $ ((!\Stepper_L|Add0~7\)))
-- \Stepper_L|Add0~12\ = CARRY(((\Stepper_L|count\(2) & !\Stepper_L|Add0~7\)))
-- \Stepper_L|Add0~12COUT1_127\ = CARRY(((\Stepper_L|count\(2) & !\Stepper_L|Add0~7COUT1_125\)))

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
	datab => \Stepper_L|count\(2),
	cin0 => \Stepper_L|Add0~7\,
	cin1 => \Stepper_L|Add0~7COUT1_125\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Add0~10_combout\,
	cout0 => \Stepper_L|Add0~12\,
	cout1 => \Stepper_L|Add0~12COUT1_127\);

-- Location: LC_X9_Y5_N2
\Stepper_L|count[2]\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|count\(2) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Stepper_L|Add0~10_combout\, , , VCC)

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
	datac => \Stepper_L|Add0~10_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_L|count\(2));

-- Location: LC_X9_Y5_N8
\Stepper_L|Add0~15\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Add0~15_combout\ = (\Stepper_L|count\(3) $ ((\Stepper_L|Add0~12\)))
-- \Stepper_L|Add0~17\ = CARRY(((!\Stepper_L|Add0~12\) # (!\Stepper_L|count\(3))))
-- \Stepper_L|Add0~17COUT1_129\ = CARRY(((!\Stepper_L|Add0~12COUT1_127\) # (!\Stepper_L|count\(3))))

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
	datab => \Stepper_L|count\(3),
	cin0 => \Stepper_L|Add0~12\,
	cin1 => \Stepper_L|Add0~12COUT1_127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Add0~15_combout\,
	cout0 => \Stepper_L|Add0~17\,
	cout1 => \Stepper_L|Add0~17COUT1_129\);

-- Location: LC_X9_Y5_N1
\Stepper_L|count[3]\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|count\(3) = DFFEAS((((\Stepper_L|Add0~15_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	datad => \Stepper_L|Add0~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_L|count\(3));

-- Location: LC_X9_Y5_N9
\Stepper_L|Add0~30\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Add0~30_combout\ = (\Stepper_L|count\(4) $ ((!\Stepper_L|Add0~17\)))
-- \Stepper_L|Add0~32\ = CARRY(((\Stepper_L|count\(4) & !\Stepper_L|Add0~17COUT1_129\)))

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
	datab => \Stepper_L|count\(4),
	cin0 => \Stepper_L|Add0~17\,
	cin1 => \Stepper_L|Add0~17COUT1_129\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Add0~30_combout\,
	cout => \Stepper_L|Add0~32\);

-- Location: LC_X10_Y5_N2
\Stepper_L|Add0~35\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Add0~35_combout\ = (\Stepper_L|count\(7) $ (((!\Stepper_L|Add0~32\ & \Stepper_L|Add0~27\) # (\Stepper_L|Add0~32\ & \Stepper_L|Add0~27COUT1_133\))))
-- \Stepper_L|Add0~37\ = CARRY(((!\Stepper_L|Add0~27\) # (!\Stepper_L|count\(7))))
-- \Stepper_L|Add0~37COUT1_135\ = CARRY(((!\Stepper_L|Add0~27COUT1_133\) # (!\Stepper_L|count\(7))))

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
	datab => \Stepper_L|count\(7),
	cin => \Stepper_L|Add0~32\,
	cin0 => \Stepper_L|Add0~27\,
	cin1 => \Stepper_L|Add0~27COUT1_133\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Add0~35_combout\,
	cout0 => \Stepper_L|Add0~37\,
	cout1 => \Stepper_L|Add0~37COUT1_135\);

-- Location: LC_X13_Y5_N6
\Stepper_L|count[7]\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|count\(7) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Stepper_L|Add0~35_combout\, , , VCC)

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
	datac => \Stepper_L|Add0~35_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_L|count\(7));

-- Location: LC_X13_Y5_N1
\Stepper_L|count[4]\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Equal0~1\ = (\Stepper_L|count\(6) & (\Stepper_L|count\(5) & (!B1_count[4] & !\Stepper_L|count\(7))))
-- \Stepper_L|count\(4) = DFFEAS(\Stepper_L|Equal0~1\, GLOBAL(\CLK~combout\), VCC, , , \Stepper_L|Add0~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Stepper_L|count\(6),
	datab => \Stepper_L|count\(5),
	datac => \Stepper_L|Add0~30_combout\,
	datad => \Stepper_L|count\(7),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Equal0~1\,
	regout => \Stepper_L|count\(4));

-- Location: LC_X10_Y5_N3
\Stepper_L|Add0~40\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Add0~40_combout\ = (\Stepper_L|count\(8) $ ((!(!\Stepper_L|Add0~32\ & \Stepper_L|Add0~37\) # (\Stepper_L|Add0~32\ & \Stepper_L|Add0~37COUT1_135\))))
-- \Stepper_L|Add0~42\ = CARRY(((\Stepper_L|count\(8) & !\Stepper_L|Add0~37\)))
-- \Stepper_L|Add0~42COUT1_137\ = CARRY(((\Stepper_L|count\(8) & !\Stepper_L|Add0~37COUT1_135\)))

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
	datab => \Stepper_L|count\(8),
	cin => \Stepper_L|Add0~32\,
	cin0 => \Stepper_L|Add0~37\,
	cin1 => \Stepper_L|Add0~37COUT1_135\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Add0~40_combout\,
	cout0 => \Stepper_L|Add0~42\,
	cout1 => \Stepper_L|Add0~42COUT1_137\);

-- Location: LC_X12_Y5_N7
\Stepper_L|count[8]\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|count\(8) = DFFEAS((\Stepper_L|Add0~40_combout\ & (((!\Stepper_L|Equal0~5\) # (!\Stepper_L|Equal0~4_combout\)) # (!\Stepper_L|count\(20)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Stepper_L|count\(20),
	datab => \Stepper_L|Equal0~4_combout\,
	datac => \Stepper_L|Equal0~5\,
	datad => \Stepper_L|Add0~40_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_L|count\(8));

-- Location: LC_X10_Y5_N4
\Stepper_L|Add0~45\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Add0~45_combout\ = \Stepper_L|count\(9) $ (((((!\Stepper_L|Add0~32\ & \Stepper_L|Add0~42\) # (\Stepper_L|Add0~32\ & \Stepper_L|Add0~42COUT1_137\)))))
-- \Stepper_L|Add0~47\ = CARRY(((!\Stepper_L|Add0~42COUT1_137\)) # (!\Stepper_L|count\(9)))

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
	dataa => \Stepper_L|count\(9),
	cin => \Stepper_L|Add0~32\,
	cin0 => \Stepper_L|Add0~42\,
	cin1 => \Stepper_L|Add0~42COUT1_137\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Add0~45_combout\,
	cout => \Stepper_L|Add0~47\);

-- Location: LC_X9_Y5_N0
\Stepper_L|count[9]\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|count\(9) = DFFEAS((\Stepper_L|Add0~45_combout\ & (((!\Stepper_L|Equal0~4_combout\) # (!\Stepper_L|Equal0~5\)) # (!\Stepper_L|count\(20)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Stepper_L|count\(20),
	datab => \Stepper_L|Add0~45_combout\,
	datac => \Stepper_L|Equal0~5\,
	datad => \Stepper_L|Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_L|count\(9));

-- Location: LC_X10_Y5_N5
\Stepper_L|Add0~50\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Add0~50_combout\ = \Stepper_L|count\(10) $ ((((!\Stepper_L|Add0~47\))))
-- \Stepper_L|Add0~52\ = CARRY((\Stepper_L|count\(10) & ((!\Stepper_L|Add0~47\))))
-- \Stepper_L|Add0~52COUT1_139\ = CARRY((\Stepper_L|count\(10) & ((!\Stepper_L|Add0~47\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Stepper_L|count\(10),
	cin => \Stepper_L|Add0~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Add0~50_combout\,
	cout0 => \Stepper_L|Add0~52\,
	cout1 => \Stepper_L|Add0~52COUT1_139\);

-- Location: LC_X12_Y5_N9
\Stepper_L|count[10]\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Equal0~2\ = (\Stepper_L|count\(8) & (!\Stepper_L|count\(11) & (!B1_count[10] & \Stepper_L|count\(9))))
-- \Stepper_L|count\(10) = DFFEAS(\Stepper_L|Equal0~2\, GLOBAL(\CLK~combout\), VCC, , , \Stepper_L|Add0~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Stepper_L|count\(8),
	datab => \Stepper_L|count\(11),
	datac => \Stepper_L|Add0~50_combout\,
	datad => \Stepper_L|count\(9),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Equal0~2\,
	regout => \Stepper_L|count\(10));

-- Location: LC_X10_Y5_N6
\Stepper_L|Add0~55\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Add0~55_combout\ = (\Stepper_L|count\(11) $ (((!\Stepper_L|Add0~47\ & \Stepper_L|Add0~52\) # (\Stepper_L|Add0~47\ & \Stepper_L|Add0~52COUT1_139\))))
-- \Stepper_L|Add0~57\ = CARRY(((!\Stepper_L|Add0~52\) # (!\Stepper_L|count\(11))))
-- \Stepper_L|Add0~57COUT1_141\ = CARRY(((!\Stepper_L|Add0~52COUT1_139\) # (!\Stepper_L|count\(11))))

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
	datab => \Stepper_L|count\(11),
	cin => \Stepper_L|Add0~47\,
	cin0 => \Stepper_L|Add0~52\,
	cin1 => \Stepper_L|Add0~52COUT1_139\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Add0~55_combout\,
	cout0 => \Stepper_L|Add0~57\,
	cout1 => \Stepper_L|Add0~57COUT1_141\);

-- Location: LC_X11_Y5_N7
\Stepper_L|count[11]\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|count\(11) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Stepper_L|Add0~55_combout\, , , VCC)

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
	datac => \Stepper_L|Add0~55_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_L|count\(11));

-- Location: LC_X10_Y5_N7
\Stepper_L|Add0~75\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Add0~75_combout\ = (\Stepper_L|count\(12) $ ((!(!\Stepper_L|Add0~47\ & \Stepper_L|Add0~57\) # (\Stepper_L|Add0~47\ & \Stepper_L|Add0~57COUT1_141\))))
-- \Stepper_L|Add0~77\ = CARRY(((\Stepper_L|count\(12) & !\Stepper_L|Add0~57\)))
-- \Stepper_L|Add0~77COUT1_143\ = CARRY(((\Stepper_L|count\(12) & !\Stepper_L|Add0~57COUT1_141\)))

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
	datab => \Stepper_L|count\(12),
	cin => \Stepper_L|Add0~47\,
	cin0 => \Stepper_L|Add0~57\,
	cin1 => \Stepper_L|Add0~57COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Add0~75_combout\,
	cout0 => \Stepper_L|Add0~77\,
	cout1 => \Stepper_L|Add0~77COUT1_143\);

-- Location: LC_X10_Y5_N8
\Stepper_L|Add0~60\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Add0~60_combout\ = \Stepper_L|count\(13) $ (((((!\Stepper_L|Add0~47\ & \Stepper_L|Add0~77\) # (\Stepper_L|Add0~47\ & \Stepper_L|Add0~77COUT1_143\)))))
-- \Stepper_L|Add0~62\ = CARRY(((!\Stepper_L|Add0~77\)) # (!\Stepper_L|count\(13)))
-- \Stepper_L|Add0~62COUT1_145\ = CARRY(((!\Stepper_L|Add0~77COUT1_143\)) # (!\Stepper_L|count\(13)))

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
	dataa => \Stepper_L|count\(13),
	cin => \Stepper_L|Add0~47\,
	cin0 => \Stepper_L|Add0~77\,
	cin1 => \Stepper_L|Add0~77COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Add0~60_combout\,
	cout0 => \Stepper_L|Add0~62\,
	cout1 => \Stepper_L|Add0~62COUT1_145\);

-- Location: LC_X10_Y5_N9
\Stepper_L|Add0~65\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Add0~65_combout\ = (\Stepper_L|count\(14) $ ((!(!\Stepper_L|Add0~47\ & \Stepper_L|Add0~62\) # (\Stepper_L|Add0~47\ & \Stepper_L|Add0~62COUT1_145\))))
-- \Stepper_L|Add0~67\ = CARRY(((\Stepper_L|count\(14) & !\Stepper_L|Add0~62COUT1_145\)))

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
	datab => \Stepper_L|count\(14),
	cin => \Stepper_L|Add0~47\,
	cin0 => \Stepper_L|Add0~62\,
	cin1 => \Stepper_L|Add0~62COUT1_145\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Add0~65_combout\,
	cout => \Stepper_L|Add0~67\);

-- Location: LC_X11_Y5_N0
\Stepper_L|Add0~70\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Add0~70_combout\ = (\Stepper_L|count\(15) $ ((\Stepper_L|Add0~67\)))
-- \Stepper_L|Add0~72\ = CARRY(((!\Stepper_L|Add0~67\) # (!\Stepper_L|count\(15))))
-- \Stepper_L|Add0~72COUT1_147\ = CARRY(((!\Stepper_L|Add0~67\) # (!\Stepper_L|count\(15))))

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
	datab => \Stepper_L|count\(15),
	cin => \Stepper_L|Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Add0~70_combout\,
	cout0 => \Stepper_L|Add0~72\,
	cout1 => \Stepper_L|Add0~72COUT1_147\);

-- Location: LC_X12_Y5_N2
\Stepper_L|count[15]\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|count\(15) = DFFEAS((\Stepper_L|Add0~70_combout\ & (((!\Stepper_L|Equal0~5\) # (!\Stepper_L|Equal0~4_combout\)) # (!\Stepper_L|count\(20)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Stepper_L|count\(20),
	datab => \Stepper_L|Equal0~4_combout\,
	datac => \Stepper_L|Equal0~5\,
	datad => \Stepper_L|Add0~70_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_L|count\(15));

-- Location: LC_X13_Y5_N5
\Stepper_L|count[12]\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Equal0~3\ = (\Stepper_L|count\(14) & (\Stepper_L|count\(13) & (!B1_count[12] & \Stepper_L|count\(15))))
-- \Stepper_L|count\(12) = DFFEAS(\Stepper_L|Equal0~3\, GLOBAL(\CLK~combout\), VCC, , , \Stepper_L|Add0~75_combout\, , , VCC)

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
	dataa => \Stepper_L|count\(14),
	datab => \Stepper_L|count\(13),
	datac => \Stepper_L|Add0~75_combout\,
	datad => \Stepper_L|count\(15),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Equal0~3\,
	regout => \Stepper_L|count\(12));

-- Location: LC_X13_Y5_N9
\Stepper_L|count[13]\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|count\(13) = DFFEAS((\Stepper_L|Add0~60_combout\ & (((!\Stepper_L|count\(20)) # (!\Stepper_L|Equal0~5\)) # (!\Stepper_L|Equal0~4_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Stepper_L|Equal0~4_combout\,
	datab => \Stepper_L|Equal0~5\,
	datac => \Stepper_L|count\(20),
	datad => \Stepper_L|Add0~60_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_L|count\(13));

-- Location: LC_X13_Y5_N4
\Stepper_L|count[14]\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|count\(14) = DFFEAS((\Stepper_L|Add0~65_combout\ & (((!\Stepper_L|count\(20)) # (!\Stepper_L|Equal0~5\)) # (!\Stepper_L|Equal0~4_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Stepper_L|Equal0~4_combout\,
	datab => \Stepper_L|Equal0~5\,
	datac => \Stepper_L|count\(20),
	datad => \Stepper_L|Add0~65_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_L|count\(14));

-- Location: LC_X13_Y5_N8
\Stepper_L|Equal0~4\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Equal0~4_combout\ = (\Stepper_L|Equal0~3\ & (\Stepper_L|Equal0~1\ & (\Stepper_L|Equal0~2\ & \Stepper_L|Equal0~0\)))

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
	dataa => \Stepper_L|Equal0~3\,
	datab => \Stepper_L|Equal0~1\,
	datac => \Stepper_L|Equal0~2\,
	datad => \Stepper_L|Equal0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Equal0~4_combout\);

-- Location: LC_X11_Y5_N1
\Stepper_L|Add0~95\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Add0~95_combout\ = \Stepper_L|count\(16) $ ((((!(!\Stepper_L|Add0~67\ & \Stepper_L|Add0~72\) # (\Stepper_L|Add0~67\ & \Stepper_L|Add0~72COUT1_147\)))))
-- \Stepper_L|Add0~97\ = CARRY((\Stepper_L|count\(16) & ((!\Stepper_L|Add0~72\))))
-- \Stepper_L|Add0~97COUT1_149\ = CARRY((\Stepper_L|count\(16) & ((!\Stepper_L|Add0~72COUT1_147\))))

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
	dataa => \Stepper_L|count\(16),
	cin => \Stepper_L|Add0~67\,
	cin0 => \Stepper_L|Add0~72\,
	cin1 => \Stepper_L|Add0~72COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Add0~95_combout\,
	cout0 => \Stepper_L|Add0~97\,
	cout1 => \Stepper_L|Add0~97COUT1_149\);

-- Location: LC_X11_Y5_N2
\Stepper_L|Add0~85\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Add0~85_combout\ = (\Stepper_L|count\(17) $ (((!\Stepper_L|Add0~67\ & \Stepper_L|Add0~97\) # (\Stepper_L|Add0~67\ & \Stepper_L|Add0~97COUT1_149\))))
-- \Stepper_L|Add0~87\ = CARRY(((!\Stepper_L|Add0~97\) # (!\Stepper_L|count\(17))))
-- \Stepper_L|Add0~87COUT1_151\ = CARRY(((!\Stepper_L|Add0~97COUT1_149\) # (!\Stepper_L|count\(17))))

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
	datab => \Stepper_L|count\(17),
	cin => \Stepper_L|Add0~67\,
	cin0 => \Stepper_L|Add0~97\,
	cin1 => \Stepper_L|Add0~97COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Add0~85_combout\,
	cout0 => \Stepper_L|Add0~87\,
	cout1 => \Stepper_L|Add0~87COUT1_151\);

-- Location: LC_X11_Y5_N3
\Stepper_L|Add0~90\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Add0~90_combout\ = (\Stepper_L|count\(18) $ ((!(!\Stepper_L|Add0~67\ & \Stepper_L|Add0~87\) # (\Stepper_L|Add0~67\ & \Stepper_L|Add0~87COUT1_151\))))
-- \Stepper_L|Add0~92\ = CARRY(((\Stepper_L|count\(18) & !\Stepper_L|Add0~87\)))
-- \Stepper_L|Add0~92COUT1_153\ = CARRY(((\Stepper_L|count\(18) & !\Stepper_L|Add0~87COUT1_151\)))

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
	datab => \Stepper_L|count\(18),
	cin => \Stepper_L|Add0~67\,
	cin0 => \Stepper_L|Add0~87\,
	cin1 => \Stepper_L|Add0~87COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Add0~90_combout\,
	cout0 => \Stepper_L|Add0~92\,
	cout1 => \Stepper_L|Add0~92COUT1_153\);

-- Location: LC_X12_Y5_N8
\Stepper_L|count[18]\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|count\(18) = DFFEAS((\Stepper_L|Add0~90_combout\ & (((!\Stepper_L|Equal0~5\) # (!\Stepper_L|Equal0~4_combout\)) # (!\Stepper_L|count\(20)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Stepper_L|count\(20),
	datab => \Stepper_L|Equal0~4_combout\,
	datac => \Stepper_L|Equal0~5\,
	datad => \Stepper_L|Add0~90_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_L|count\(18));

-- Location: LC_X11_Y5_N4
\Stepper_L|Add0~100\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Add0~100_combout\ = (\Stepper_L|count\(19) $ (((!\Stepper_L|Add0~67\ & \Stepper_L|Add0~92\) # (\Stepper_L|Add0~67\ & \Stepper_L|Add0~92COUT1_153\))))
-- \Stepper_L|Add0~102\ = CARRY(((!\Stepper_L|Add0~92COUT1_153\) # (!\Stepper_L|count\(19))))

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
	datab => \Stepper_L|count\(19),
	cin => \Stepper_L|Add0~67\,
	cin0 => \Stepper_L|Add0~92\,
	cin1 => \Stepper_L|Add0~92COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Add0~100_combout\,
	cout => \Stepper_L|Add0~102\);

-- Location: LC_X11_Y5_N9
\Stepper_L|count[19]\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|count\(19) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Stepper_L|Add0~100_combout\, , , VCC)

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
	datac => \Stepper_L|Add0~100_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_L|count\(19));

-- Location: LC_X11_Y5_N8
\Stepper_L|count[16]\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Equal0~5\ = (\Stepper_L|count\(17) & (!\Stepper_L|count\(19) & (!B1_count[16] & \Stepper_L|count\(18))))
-- \Stepper_L|count\(16) = DFFEAS(\Stepper_L|Equal0~5\, GLOBAL(\CLK~combout\), VCC, , , \Stepper_L|Add0~95_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Stepper_L|count\(17),
	datab => \Stepper_L|count\(19),
	datac => \Stepper_L|Add0~95_combout\,
	datad => \Stepper_L|count\(18),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Equal0~5\,
	regout => \Stepper_L|count\(16));

-- Location: LC_X12_Y5_N4
\Stepper_L|count[17]\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|count\(17) = DFFEAS((\Stepper_L|Add0~85_combout\ & (((!\Stepper_L|Equal0~5\) # (!\Stepper_L|Equal0~4_combout\)) # (!\Stepper_L|count\(20)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Stepper_L|count\(20),
	datab => \Stepper_L|Equal0~4_combout\,
	datac => \Stepper_L|Equal0~5\,
	datad => \Stepper_L|Add0~85_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_L|count\(17));

-- Location: LC_X11_Y5_N5
\Stepper_L|Add0~80\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Add0~80_combout\ = ((\Stepper_L|Add0~102\ $ (!\Stepper_L|count\(20))))

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
	datad => \Stepper_L|count\(20),
	cin => \Stepper_L|Add0~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Add0~80_combout\);

-- Location: LC_X11_Y5_N6
\Stepper_L|count[20]\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|count\(20) = DFFEAS((\Stepper_L|Add0~80_combout\ & (((!\Stepper_L|Equal0~4_combout\) # (!\Stepper_L|count\(20))) # (!\Stepper_L|Equal0~5\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Stepper_L|Equal0~5\,
	datab => \Stepper_L|count\(20),
	datac => \Stepper_L|Add0~80_combout\,
	datad => \Stepper_L|Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_L|count\(20));

-- Location: LC_X12_Y5_N5
\Stepper_L|stepper_clk\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|Equal0~6\ = ((\Stepper_L|count\(20) & (\Stepper_L|Equal0~5\ & \Stepper_L|Equal0~4_combout\)))
-- \Stepper_L|stepper_clk~regout\ = DFFEAS(\Stepper_L|Equal0~6\, GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Stepper_L|count\(20),
	datac => \Stepper_L|Equal0~5\,
	datad => \Stepper_L|Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|Equal0~6\,
	regout => \Stepper_L|stepper_clk~regout\);

-- Location: LC_X1_Y8_N9
\Stepper_L|state[0]\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|state\(0) = DFFEAS((((!\Stepper_L|state\(0)))), GLOBAL(\Stepper_L|stepper_clk~regout\), VCC, , , , , , )

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
	clk => \Stepper_L|stepper_clk~regout\,
	datad => \Stepper_L|state\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_L|state\(0));

-- Location: LC_X1_Y8_N8
\Stepper_L|CH1\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|CH1~regout\ = DFFEAS((((!\Stepper_L|state\(0)))), GLOBAL(\Stepper_L|stepper_clk~regout\), VCC, , , , , , )

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
	clk => \Stepper_L|stepper_clk~regout\,
	datad => \Stepper_L|state\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_L|CH1~regout\);

-- Location: LC_X1_Y8_N4
\Stepper_L|CH2\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|CH2~regout\ = DFFEAS((((\Stepper_L|state\(0)))), GLOBAL(\Stepper_L|stepper_clk~regout\), VCC, , , , , , )

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
	clk => \Stepper_L|stepper_clk~regout\,
	datad => \Stepper_L|state\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_L|CH2~regout\);

-- Location: LC_X1_Y8_N5
\Stepper_L|state[1]\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|state\(1) = DFFEAS(GND, GLOBAL(\Stepper_L|stepper_clk~regout\), VCC, , , \Stepper_L|CH3~0\, , , VCC)

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
	clk => \Stepper_L|stepper_clk~regout\,
	datac => \Stepper_L|CH3~0\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_L|state\(1));

-- Location: LC_X1_Y8_N6
\Stepper_L|CH4\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|CH3~0\ = ((\Stepper_L|state\(1) $ (\Stepper_L|state\(0))))
-- \Stepper_L|CH4~regout\ = DFFEAS(\Stepper_L|CH3~0\, GLOBAL(\Stepper_L|stepper_clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Stepper_L|stepper_clk~regout\,
	datac => \Stepper_L|state\(1),
	datad => \Stepper_L|state\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_L|CH3~0\,
	regout => \Stepper_L|CH4~regout\);

-- Location: LC_X1_Y8_N7
\Stepper_L|CH3\ : maxv_lcell
-- Equation(s):
-- \Stepper_L|CH3~regout\ = DFFEAS((((!\Stepper_L|CH3~0\))), GLOBAL(\Stepper_L|stepper_clk~regout\), VCC, , , , , , )

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
	clk => \Stepper_L|stepper_clk~regout\,
	datad => \Stepper_L|CH3~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_L|CH3~regout\);

-- Location: LC_X12_Y5_N6
\Stepper_R|stepper_clk\ : maxv_lcell
-- Equation(s):
-- \Stepper_R|stepper_clk~regout\ = DFFEAS((((\Stepper_L|Equal0~6\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	datad => \Stepper_L|Equal0~6\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_R|stepper_clk~regout\);

-- Location: LC_X7_Y10_N9
\Stepper_R|state[0]\ : maxv_lcell
-- Equation(s):
-- \Stepper_R|state\(0) = DFFEAS((((!\Stepper_R|state\(0)))), GLOBAL(\Stepper_R|stepper_clk~regout\), VCC, , , , , , )

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
	clk => \Stepper_R|stepper_clk~regout\,
	datad => \Stepper_R|state\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_R|state\(0));

-- Location: LC_X7_Y10_N8
\Stepper_R|CH1\ : maxv_lcell
-- Equation(s):
-- \Stepper_R|CH1~regout\ = DFFEAS((((!\Stepper_R|state\(0)))), GLOBAL(\Stepper_R|stepper_clk~regout\), VCC, , , , , , )

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
	clk => \Stepper_R|stepper_clk~regout\,
	datad => \Stepper_R|state\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_R|CH1~regout\);

-- Location: LC_X7_Y10_N6
\Stepper_R|CH2\ : maxv_lcell
-- Equation(s):
-- \Stepper_R|CH2~regout\ = DFFEAS((((\Stepper_R|state\(0)))), GLOBAL(\Stepper_R|stepper_clk~regout\), VCC, , , , , , )

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
	clk => \Stepper_R|stepper_clk~regout\,
	datad => \Stepper_R|state\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_R|CH2~regout\);

-- Location: LC_X7_Y10_N7
\Stepper_R|state[1]\ : maxv_lcell
-- Equation(s):
-- \Stepper_R|state\(1) = DFFEAS(GND, GLOBAL(\Stepper_R|stepper_clk~regout\), VCC, , , \Stepper_R|CH3~0\, , , VCC)

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
	clk => \Stepper_R|stepper_clk~regout\,
	datac => \Stepper_R|CH3~0\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_R|state\(1));

-- Location: LC_X7_Y10_N0
\Stepper_R|CH4\ : maxv_lcell
-- Equation(s):
-- \Stepper_R|CH3~0\ = ((\Stepper_R|state\(1) $ (\Stepper_R|state\(0))))
-- \Stepper_R|CH4~regout\ = DFFEAS(\Stepper_R|CH3~0\, GLOBAL(\Stepper_R|stepper_clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Stepper_R|stepper_clk~regout\,
	datac => \Stepper_R|state\(1),
	datad => \Stepper_R|state\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Stepper_R|CH3~0\,
	regout => \Stepper_R|CH4~regout\);

-- Location: LC_X7_Y10_N1
\Stepper_R|CH3\ : maxv_lcell
-- Equation(s):
-- \Stepper_R|CH3~regout\ = DFFEAS((((!\Stepper_R|CH3~0\))), GLOBAL(\Stepper_R|stepper_clk~regout\), VCC, , , , , , )

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
	clk => \Stepper_R|stepper_clk~regout\,
	datad => \Stepper_R|CH3~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Stepper_R|CH3~regout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RST~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RST);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CH1_L~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Stepper_L|CH1~regout\,
	oe => VCC,
	padio => ww_CH1_L);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CH2_L~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Stepper_L|CH2~regout\,
	oe => VCC,
	padio => ww_CH2_L);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CH3_L~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Stepper_L|CH3~regout\,
	oe => VCC,
	padio => ww_CH3_L);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CH4_L~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Stepper_L|CH4~regout\,
	oe => VCC,
	padio => ww_CH4_L);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CH1_R~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Stepper_R|CH1~regout\,
	oe => VCC,
	padio => ww_CH1_R);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CH2_R~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Stepper_R|CH2~regout\,
	oe => VCC,
	padio => ww_CH2_R);

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CH3_R~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Stepper_R|CH3~regout\,
	oe => VCC,
	padio => ww_CH3_R);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CH4_R~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Stepper_R|CH4~regout\,
	oe => VCC,
	padio => ww_CH4_R);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DEBUG[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Stepper_L|state\(0),
	oe => VCC,
	padio => ww_DEBUG(0));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DEBUG[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Stepper_L|state\(1),
	oe => VCC,
	padio => ww_DEBUG(1));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DEBUG[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Stepper_R|state\(0),
	oe => VCC,
	padio => ww_DEBUG(2));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DEBUG[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Stepper_R|state\(1),
	oe => VCC,
	padio => ww_DEBUG(3));
END structure;


