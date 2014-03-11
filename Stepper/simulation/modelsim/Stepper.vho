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

-- DATE "03/10/2014 16:58:31"

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

ENTITY 	Stepper IS
    PORT (
	CLK : IN std_logic;
	PI : IN std_logic_vector(7 DOWNTO 0);
	PA : OUT std_logic_vector(7 DOWNTO 0);
	CH1 : OUT std_logic;
	CH2 : OUT std_logic;
	CH3 : OUT std_logic;
	CH4 : OUT std_logic;
	FWD : OUT std_logic
	);
END Stepper;

-- Design Ports Information
-- PA[0]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- PA[1]	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- PA[2]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- PA[3]	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- PA[4]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- PA[5]	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- PA[6]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- PA[7]	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CH1	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CH2	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CH3	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CH4	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- FWD	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- PI[1]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PI[0]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PI[3]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PI[2]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PI[5]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PI[4]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PI[7]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PI[6]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_PI : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CH1 : std_logic;
SIGNAL ww_CH2 : std_logic;
SIGNAL ww_CH3 : std_logic;
SIGNAL ww_CH4 : std_logic;
SIGNAL ww_FWD : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_152\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_154\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_156\ : std_logic;
SIGNAL \Add0~17COUT1_158\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_160\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Equal0~2\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_164\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_166\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_168\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~57COUT1_170\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_172\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_174\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Equal0~4\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~67COUT1_176\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~82COUT1_178\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~92COUT1_180\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~97COUT1_182\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~102COUT1_184\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~107COUT1_186\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add0~112\ : std_logic;
SIGNAL \Equal0~6\ : std_logic;
SIGNAL \Add0~117\ : std_logic;
SIGNAL \Add0~117COUT1_188\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \Equal0~5\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~122COUT1_190\ : std_logic;
SIGNAL \Add0~125_combout\ : std_logic;
SIGNAL \Equal0~7\ : std_logic;
SIGNAL \Equal0~8\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_162\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Equal0~3\ : std_logic;
SIGNAL \stepper_clk~regout\ : std_logic;
SIGNAL \t[0]~5\ : std_logic;
SIGNAL \t[0]~5COUT1_24\ : std_logic;
SIGNAL \t[1]~7\ : std_logic;
SIGNAL \t[1]~7COUT1_26\ : std_logic;
SIGNAL \t[2]~9\ : std_logic;
SIGNAL \t[2]~9COUT1_28\ : std_logic;
SIGNAL \t[3]~11\ : std_logic;
SIGNAL \t[3]~11COUT1_30\ : std_logic;
SIGNAL \t[4]~13\ : std_logic;
SIGNAL \t[5]~15\ : std_logic;
SIGNAL \t[5]~15COUT1_32\ : std_logic;
SIGNAL \t[6]~3\ : std_logic;
SIGNAL \t[6]~3COUT1_34\ : std_logic;
SIGNAL \position[0]~15_combout\ : std_logic;
SIGNAL \position[0]~14_combout\ : std_logic;
SIGNAL \position[0]~17_combout\ : std_logic;
SIGNAL \position[1]~1\ : std_logic;
SIGNAL \position[1]~1COUT1_25\ : std_logic;
SIGNAL \position[2]~3\ : std_logic;
SIGNAL \position[2]~3COUT1_27\ : std_logic;
SIGNAL \position[3]~5\ : std_logic;
SIGNAL \position[3]~5COUT1_29\ : std_logic;
SIGNAL \position[4]~7\ : std_logic;
SIGNAL \position[5]~9\ : std_logic;
SIGNAL \position[5]~9COUT1_31\ : std_logic;
SIGNAL \position[6]~11\ : std_logic;
SIGNAL \position[6]~11COUT1_33\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \CH2~0_combout\ : std_logic;
SIGNAL t : std_logic_vector(7 DOWNTO 0);
SIGNAL count : std_logic_vector(25 DOWNTO 0);
SIGNAL \PI~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL position : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \ALT_INV_CH2~0_combout\ : std_logic;
SIGNAL ALT_INV_t : std_logic_vector(7 DOWNTO 7);

BEGIN

ww_CLK <= CLK;
ww_PI <= PI;
PA <= ww_PA;
CH1 <= ww_CH1;
CH2 <= ww_CH2;
CH3 <= ww_CH3;
CH4 <= ww_CH4;
FWD <= ww_FWD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Equal1~4_combout\ <= NOT \Equal1~4_combout\;
\ALT_INV_CH2~0_combout\ <= NOT \CH2~0_combout\;
ALT_INV_t(7) <= NOT t(7);

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

-- Location: LC_X14_Y5_N5
\Add0~35\ : maxv_lcell
-- Equation(s):
-- \Add0~35_combout\ = (count(3) $ ((\Add0~32\)))
-- \Add0~37\ = CARRY(((!\Add0~32\) # (!count(3))))
-- \Add0~37COUT1_156\ = CARRY(((!\Add0~32\) # (!count(3))))

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
	datab => count(3),
	cin => \Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_156\);

-- Location: LC_X13_Y5_N7
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

-- Location: LC_X14_Y5_N2
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = ((!count(0)))
-- \Add0~2\ = CARRY(((count(0))))
-- \Add0~2COUT1_152\ = CARRY(((count(0))))

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
	datab => count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_152\);

-- Location: LC_X14_Y5_N3
\Add0~5\ : maxv_lcell
-- Equation(s):
-- \Add0~5_combout\ = (count(1) $ ((\Add0~2\)))
-- \Add0~7\ = CARRY(((!\Add0~2\) # (!count(1))))
-- \Add0~7COUT1_154\ = CARRY(((!\Add0~2COUT1_152\) # (!count(1))))

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
	datab => count(1),
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_154\);

-- Location: LC_X14_Y5_N4
\Add0~30\ : maxv_lcell
-- Equation(s):
-- \Add0~30_combout\ = count(2) $ ((((!\Add0~7\))))
-- \Add0~32\ = CARRY((count(2) & ((!\Add0~7COUT1_154\))))

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
	dataa => count(2),
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout => \Add0~32\);

-- Location: LC_X14_Y5_N6
\Add0~15\ : maxv_lcell
-- Equation(s):
-- \Add0~15_combout\ = count(4) $ ((((!(!\Add0~32\ & \Add0~37\) # (\Add0~32\ & \Add0~37COUT1_156\)))))
-- \Add0~17\ = CARRY((count(4) & ((!\Add0~37\))))
-- \Add0~17COUT1_158\ = CARRY((count(4) & ((!\Add0~37COUT1_156\))))

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
	cin => \Add0~32\,
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_158\);

-- Location: LC_X14_Y5_N7
\Add0~10\ : maxv_lcell
-- Equation(s):
-- \Add0~10_combout\ = (count(5) $ (((!\Add0~32\ & \Add0~17\) # (\Add0~32\ & \Add0~17COUT1_158\))))
-- \Add0~12\ = CARRY(((!\Add0~17\) # (!count(5))))
-- \Add0~12COUT1_160\ = CARRY(((!\Add0~17COUT1_158\) # (!count(5))))

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
	datab => count(5),
	cin => \Add0~32\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_160\);

-- Location: LC_X14_Y5_N8
\Add0~20\ : maxv_lcell
-- Equation(s):
-- \Add0~20_combout\ = count(6) $ ((((!(!\Add0~32\ & \Add0~12\) # (\Add0~32\ & \Add0~12COUT1_160\)))))
-- \Add0~22\ = CARRY((count(6) & ((!\Add0~12\))))
-- \Add0~22COUT1_162\ = CARRY((count(6) & ((!\Add0~12COUT1_160\))))

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
	dataa => count(6),
	cin => \Add0~32\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_162\);

-- Location: LC_X13_Y5_N0
\count[6]\ : maxv_lcell
-- Equation(s):
-- count(6) = DFFEAS((((\Add0~20_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	datad => \Add0~20_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(6));

-- Location: LC_X13_Y5_N1
\count[4]\ : maxv_lcell
-- Equation(s):
-- \Equal0~1\ = (count(5) & (!count(6) & (!count[4] & !count(7))))
-- count(4) = DFFEAS(\Equal0~1\, GLOBAL(\CLK~combout\), VCC, , , \Add0~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => count(5),
	datab => count(6),
	datac => \Add0~15_combout\,
	datad => count(7),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => count(4));

-- Location: LC_X13_Y5_N4
\count[5]\ : maxv_lcell
-- Equation(s):
-- count(5) = DFFEAS((((!\Equal0~8\ & \Add0~10_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	datac => \Equal0~8\,
	datad => \Add0~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(5));

-- Location: LC_X13_Y5_N5
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

-- Location: LC_X15_Y5_N5
\Add0~60\ : maxv_lcell
-- Equation(s):
-- \Add0~60_combout\ = (count(13) $ ((\Add0~72\)))
-- \Add0~62\ = CARRY(((!\Add0~72\) # (!count(13))))
-- \Add0~62COUT1_172\ = CARRY(((!\Add0~72\) # (!count(13))))

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
	datab => count(13),
	cin => \Add0~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_172\);

-- Location: LC_X12_Y5_N4
\count[13]\ : maxv_lcell
-- Equation(s):
-- count(13) = DFFEAS((!\Equal0~8\ & (((\Add0~60_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Equal0~8\,
	datad => \Add0~60_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(13));

-- Location: LC_X15_Y5_N0
\Add0~40\ : maxv_lcell
-- Equation(s):
-- \Add0~40_combout\ = (count(8) $ ((!\Add0~27\)))
-- \Add0~42\ = CARRY(((count(8) & !\Add0~27\)))
-- \Add0~42COUT1_164\ = CARRY(((count(8) & !\Add0~27\)))

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
	datab => count(8),
	cin => \Add0~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_164\);

-- Location: LC_X12_Y5_N6
\count[8]\ : maxv_lcell
-- Equation(s):
-- count(8) = DFFEAS((((\Add0~40_combout\ & !\Equal0~8\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	datad => \Equal0~8\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(8));

-- Location: LC_X15_Y5_N1
\Add0~45\ : maxv_lcell
-- Equation(s):
-- \Add0~45_combout\ = (count(9) $ (((!\Add0~27\ & \Add0~42\) # (\Add0~27\ & \Add0~42COUT1_164\))))
-- \Add0~47\ = CARRY(((!\Add0~42\) # (!count(9))))
-- \Add0~47COUT1_166\ = CARRY(((!\Add0~42COUT1_164\) # (!count(9))))

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
	cin => \Add0~27\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_166\);

-- Location: LC_X13_Y5_N3
\count[9]\ : maxv_lcell
-- Equation(s):
-- \Equal0~3\ = (!count(10) & (count(8) & (!count[9] & !count(11))))
-- count(9) = DFFEAS(\Equal0~3\, GLOBAL(\CLK~combout\), VCC, , , \Add0~45_combout\, , , VCC)

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
	dataa => count(10),
	datab => count(8),
	datac => \Add0~45_combout\,
	datad => count(11),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3\,
	regout => count(9));

-- Location: LC_X15_Y5_N2
\Add0~50\ : maxv_lcell
-- Equation(s):
-- \Add0~50_combout\ = (count(10) $ ((!(!\Add0~27\ & \Add0~47\) # (\Add0~27\ & \Add0~47COUT1_166\))))
-- \Add0~52\ = CARRY(((count(10) & !\Add0~47\)))
-- \Add0~52COUT1_168\ = CARRY(((count(10) & !\Add0~47COUT1_166\)))

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
	datab => count(10),
	cin => \Add0~27\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_168\);

-- Location: LC_X15_Y5_N3
\Add0~55\ : maxv_lcell
-- Equation(s):
-- \Add0~55_combout\ = count(11) $ (((((!\Add0~27\ & \Add0~52\) # (\Add0~27\ & \Add0~52COUT1_168\)))))
-- \Add0~57\ = CARRY(((!\Add0~52\)) # (!count(11)))
-- \Add0~57COUT1_170\ = CARRY(((!\Add0~52COUT1_168\)) # (!count(11)))

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
	dataa => count(11),
	cin => \Add0~27\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout0 => \Add0~57\,
	cout1 => \Add0~57COUT1_170\);

-- Location: LC_X13_Y5_N8
\count[11]\ : maxv_lcell
-- Equation(s):
-- count(11) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~55_combout\, , , VCC)

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
	datac => \Add0~55_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(11));

-- Location: LC_X15_Y5_N4
\Add0~70\ : maxv_lcell
-- Equation(s):
-- \Add0~70_combout\ = (count(12) $ ((!(!\Add0~27\ & \Add0~57\) # (\Add0~27\ & \Add0~57COUT1_170\))))
-- \Add0~72\ = CARRY(((count(12) & !\Add0~57COUT1_170\)))

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
	datab => count(12),
	cin => \Add0~27\,
	cin0 => \Add0~57\,
	cin1 => \Add0~57COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout => \Add0~72\);

-- Location: LC_X15_Y5_N6
\Add0~75\ : maxv_lcell
-- Equation(s):
-- \Add0~75_combout\ = count(14) $ ((((!(!\Add0~72\ & \Add0~62\) # (\Add0~72\ & \Add0~62COUT1_172\)))))
-- \Add0~77\ = CARRY((count(14) & ((!\Add0~62\))))
-- \Add0~77COUT1_174\ = CARRY((count(14) & ((!\Add0~62COUT1_172\))))

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
	dataa => count(14),
	cin => \Add0~72\,
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_174\);

-- Location: LC_X14_Y5_N1
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

-- Location: LC_X12_Y5_N7
\count[12]\ : maxv_lcell
-- Equation(s):
-- \Equal0~4\ = (count(15) & (count(13) & (!count[12] & !count(14))))
-- count(12) = DFFEAS(\Equal0~4\, GLOBAL(\CLK~combout\), VCC, , , \Add0~70_combout\, , , VCC)

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
	dataa => count(15),
	datab => count(13),
	datac => \Add0~70_combout\,
	datad => count(14),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4\,
	regout => count(12));

-- Location: LC_X15_Y5_N7
\Add0~65\ : maxv_lcell
-- Equation(s):
-- \Add0~65_combout\ = (count(15) $ (((!\Add0~72\ & \Add0~77\) # (\Add0~72\ & \Add0~77COUT1_174\))))
-- \Add0~67\ = CARRY(((!\Add0~77\) # (!count(15))))
-- \Add0~67COUT1_176\ = CARRY(((!\Add0~77COUT1_174\) # (!count(15))))

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
	cin => \Add0~72\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout0 => \Add0~67\,
	cout1 => \Add0~67COUT1_176\);

-- Location: LC_X12_Y5_N5
\count[15]\ : maxv_lcell
-- Equation(s):
-- count(15) = DFFEAS((((\Add0~65_combout\ & !\Equal0~8\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	datac => \Add0~65_combout\,
	datad => \Equal0~8\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(15));

-- Location: LC_X15_Y5_N8
\Add0~80\ : maxv_lcell
-- Equation(s):
-- \Add0~80_combout\ = count(16) $ ((((!(!\Add0~72\ & \Add0~67\) # (\Add0~72\ & \Add0~67COUT1_176\)))))
-- \Add0~82\ = CARRY((count(16) & ((!\Add0~67\))))
-- \Add0~82COUT1_178\ = CARRY((count(16) & ((!\Add0~67COUT1_176\))))

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
	dataa => count(16),
	cin => \Add0~72\,
	cin0 => \Add0~67\,
	cin1 => \Add0~67COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout0 => \Add0~82\,
	cout1 => \Add0~82COUT1_178\);

-- Location: LC_X14_Y5_N0
\count[16]\ : maxv_lcell
-- Equation(s):
-- count(16) = DFFEAS(((\Add0~80_combout\ & ((!\Equal0~8\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	clk => \CLK~combout\,
	datab => \Add0~80_combout\,
	datad => \Equal0~8\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(16));

-- Location: LC_X15_Y5_N9
\Add0~85\ : maxv_lcell
-- Equation(s):
-- \Add0~85_combout\ = (count(17) $ (((!\Add0~72\ & \Add0~82\) # (\Add0~72\ & \Add0~82COUT1_178\))))
-- \Add0~87\ = CARRY(((!\Add0~82COUT1_178\) # (!count(17))))

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
	cin => \Add0~72\,
	cin0 => \Add0~82\,
	cin1 => \Add0~82COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout => \Add0~87\);

-- Location: LC_X12_Y5_N2
\count[17]\ : maxv_lcell
-- Equation(s):
-- count(17) = DFFEAS((!\Equal0~8\ & (((\Add0~85_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Equal0~8\,
	datad => \Add0~85_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(17));

-- Location: LC_X16_Y5_N5
\Add0~115\ : maxv_lcell
-- Equation(s):
-- \Add0~115_combout\ = (count(23) $ ((\Add0~112\)))
-- \Add0~117\ = CARRY(((!\Add0~112\) # (!count(23))))
-- \Add0~117COUT1_188\ = CARRY(((!\Add0~112\) # (!count(23))))

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
	datab => count(23),
	cin => \Add0~112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~115_combout\,
	cout0 => \Add0~117\,
	cout1 => \Add0~117COUT1_188\);

-- Location: LC_X16_Y5_N9
\count[23]\ : maxv_lcell
-- Equation(s):
-- count(23) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~115_combout\, , , VCC)

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
	datac => \Add0~115_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(23));

-- Location: LC_X16_Y5_N0
\Add0~90\ : maxv_lcell
-- Equation(s):
-- \Add0~90_combout\ = (count(18) $ ((!\Add0~87\)))
-- \Add0~92\ = CARRY(((count(18) & !\Add0~87\)))
-- \Add0~92COUT1_180\ = CARRY(((count(18) & !\Add0~87\)))

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
	datab => count(18),
	cin => \Add0~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout0 => \Add0~92\,
	cout1 => \Add0~92COUT1_180\);

-- Location: LC_X12_Y5_N3
\count[18]\ : maxv_lcell
-- Equation(s):
-- count(18) = DFFEAS((!\Equal0~8\ & (((\Add0~90_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Equal0~8\,
	datad => \Add0~90_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(18));

-- Location: LC_X16_Y5_N1
\Add0~95\ : maxv_lcell
-- Equation(s):
-- \Add0~95_combout\ = (count(19) $ (((!\Add0~87\ & \Add0~92\) # (\Add0~87\ & \Add0~92COUT1_180\))))
-- \Add0~97\ = CARRY(((!\Add0~92\) # (!count(19))))
-- \Add0~97COUT1_182\ = CARRY(((!\Add0~92COUT1_180\) # (!count(19))))

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
	datab => count(19),
	cin => \Add0~87\,
	cin0 => \Add0~92\,
	cin1 => \Add0~92COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout0 => \Add0~97\,
	cout1 => \Add0~97COUT1_182\);

-- Location: LC_X12_Y5_N9
\count[19]\ : maxv_lcell
-- Equation(s):
-- \Equal0~5\ = (count(18) & (count(16) & (!count[19] & count(17))))
-- count(19) = DFFEAS(\Equal0~5\, GLOBAL(\CLK~combout\), VCC, , , \Add0~95_combout\, , , VCC)

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
	dataa => count(18),
	datab => count(16),
	datac => \Add0~95_combout\,
	datad => count(17),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5\,
	regout => count(19));

-- Location: LC_X16_Y5_N2
\Add0~100\ : maxv_lcell
-- Equation(s):
-- \Add0~100_combout\ = (count(20) $ ((!(!\Add0~87\ & \Add0~97\) # (\Add0~87\ & \Add0~97COUT1_182\))))
-- \Add0~102\ = CARRY(((count(20) & !\Add0~97\)))
-- \Add0~102COUT1_184\ = CARRY(((count(20) & !\Add0~97COUT1_182\)))

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
	datab => count(20),
	cin => \Add0~87\,
	cin0 => \Add0~97\,
	cin1 => \Add0~97COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~100_combout\,
	cout0 => \Add0~102\,
	cout1 => \Add0~102COUT1_184\);

-- Location: LC_X12_Y5_N0
\count[20]\ : maxv_lcell
-- Equation(s):
-- \Equal0~6\ = (!count(21) & (!count(23) & (!count[20] & !count(22))))
-- count(20) = DFFEAS(\Equal0~6\, GLOBAL(\CLK~combout\), VCC, , , \Add0~100_combout\, , , VCC)

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
	dataa => count(21),
	datab => count(23),
	datac => \Add0~100_combout\,
	datad => count(22),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6\,
	regout => count(20));

-- Location: LC_X16_Y5_N3
\Add0~105\ : maxv_lcell
-- Equation(s):
-- \Add0~105_combout\ = (count(21) $ (((!\Add0~87\ & \Add0~102\) # (\Add0~87\ & \Add0~102COUT1_184\))))
-- \Add0~107\ = CARRY(((!\Add0~102\) # (!count(21))))
-- \Add0~107COUT1_186\ = CARRY(((!\Add0~102COUT1_184\) # (!count(21))))

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
	datab => count(21),
	cin => \Add0~87\,
	cin0 => \Add0~102\,
	cin1 => \Add0~102COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~105_combout\,
	cout0 => \Add0~107\,
	cout1 => \Add0~107COUT1_186\);

-- Location: LC_X11_Y5_N8
\count[21]\ : maxv_lcell
-- Equation(s):
-- count(21) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~105_combout\, , , VCC)

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
	datac => \Add0~105_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(21));

-- Location: LC_X16_Y5_N4
\Add0~110\ : maxv_lcell
-- Equation(s):
-- \Add0~110_combout\ = count(22) $ ((((!(!\Add0~87\ & \Add0~107\) # (\Add0~87\ & \Add0~107COUT1_186\)))))
-- \Add0~112\ = CARRY((count(22) & ((!\Add0~107COUT1_186\))))

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
	dataa => count(22),
	cin => \Add0~87\,
	cin0 => \Add0~107\,
	cin1 => \Add0~107COUT1_186\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~110_combout\,
	cout => \Add0~112\);

-- Location: LC_X16_Y5_N8
\count[22]\ : maxv_lcell
-- Equation(s):
-- count(22) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~110_combout\, , , VCC)

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
	datac => \Add0~110_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(22));

-- Location: LC_X16_Y5_N6
\Add0~120\ : maxv_lcell
-- Equation(s):
-- \Add0~120_combout\ = (count(24) $ ((!(!\Add0~112\ & \Add0~117\) # (\Add0~112\ & \Add0~117COUT1_188\))))
-- \Add0~122\ = CARRY(((count(24) & !\Add0~117\)))
-- \Add0~122COUT1_190\ = CARRY(((count(24) & !\Add0~117COUT1_188\)))

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
	datab => count(24),
	cin => \Add0~112\,
	cin0 => \Add0~117\,
	cin1 => \Add0~117COUT1_188\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~120_combout\,
	cout0 => \Add0~122\,
	cout1 => \Add0~122COUT1_190\);

-- Location: LC_X12_Y5_N1
\count[24]\ : maxv_lcell
-- Equation(s):
-- \Equal0~7\ = (!count(25) & (\Equal0~6\ & (!count[24] & \Equal0~5\)))
-- count(24) = DFFEAS(\Equal0~7\, GLOBAL(\CLK~combout\), VCC, , , \Add0~120_combout\, , , VCC)

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
	dataa => count(25),
	datab => \Equal0~6\,
	datac => \Add0~120_combout\,
	datad => \Equal0~5\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~7\,
	regout => count(24));

-- Location: LC_X16_Y5_N7
\Add0~125\ : maxv_lcell
-- Equation(s):
-- \Add0~125_combout\ = (((!\Add0~112\ & \Add0~122\) # (\Add0~112\ & \Add0~122COUT1_190\) $ (count(25))))

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
	datad => count(25),
	cin => \Add0~112\,
	cin0 => \Add0~122\,
	cin1 => \Add0~122COUT1_190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~125_combout\);

-- Location: LC_X11_Y5_N5
\count[25]\ : maxv_lcell
-- Equation(s):
-- count(25) = DFFEAS((((\Add0~125_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	datad => \Add0~125_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(25));

-- Location: LC_X12_Y5_N8
stepper_clk : maxv_lcell
-- Equation(s):
-- \Equal0~8\ = (\Equal0~3\ & (\Equal0~2\ & (\Equal0~4\ & \Equal0~7\)))
-- \stepper_clk~regout\ = DFFEAS(\Equal0~8\, GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	datab => \Equal0~2\,
	datac => \Equal0~4\,
	datad => \Equal0~7\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~8\,
	regout => \stepper_clk~regout\);

-- Location: LC_X13_Y5_N6
\count[0]\ : maxv_lcell
-- Equation(s):
-- count(0) = DFFEAS(((\Add0~0_combout\ & (!\Equal0~8\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Add0~0_combout\,
	datac => \Equal0~8\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LC_X13_Y5_N2
\count[1]\ : maxv_lcell
-- Equation(s):
-- \Equal0~0\ = (((!count[1] & !count(0))))
-- count(1) = DFFEAS(\Equal0~0\, GLOBAL(\CLK~combout\), VCC, , , \Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Add0~5_combout\,
	datad => count(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => count(1));

-- Location: LC_X14_Y5_N9
\Add0~25\ : maxv_lcell
-- Equation(s):
-- \Add0~25_combout\ = count(7) $ (((((!\Add0~32\ & \Add0~22\) # (\Add0~32\ & \Add0~22COUT1_162\)))))
-- \Add0~27\ = CARRY(((!\Add0~22COUT1_162\)) # (!count(7)))

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
	dataa => count(7),
	cin => \Add0~32\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout => \Add0~27\);

-- Location: LC_X13_Y5_N9
\count[7]\ : maxv_lcell
-- Equation(s):
-- count(7) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~25_combout\, , , VCC)

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
	regout => count(7));

-- Location: LC_X11_Y5_N9
\count[10]\ : maxv_lcell
-- Equation(s):
-- count(10) = DFFEAS((((\Add0~50_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	datad => \Add0~50_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(10));

-- Location: LC_X2_Y10_N0
\t[0]\ : maxv_lcell
-- Equation(s):
-- t(0) = DFFEAS(((!t(0))), GLOBAL(\stepper_clk~regout\), VCC, , !\Equal1~4_combout\, , , , )
-- \t[0]~5\ = CARRY(((t(0))))
-- \t[0]~5COUT1_24\ = CARRY(((t(0))))

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
	clk => \stepper_clk~regout\,
	datab => t(0),
	aclr => GND,
	ena => \ALT_INV_Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t(0),
	cout0 => \t[0]~5\,
	cout1 => \t[0]~5COUT1_24\);

-- Location: LC_X2_Y10_N1
\t[1]\ : maxv_lcell
-- Equation(s):
-- t(1) = DFFEAS((t(1) $ ((\t[0]~5\))), GLOBAL(\stepper_clk~regout\), VCC, , !\Equal1~4_combout\, , , , )
-- \t[1]~7\ = CARRY(((!\t[0]~5\) # (!t(1))))
-- \t[1]~7COUT1_26\ = CARRY(((!\t[0]~5COUT1_24\) # (!t(1))))

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
	clk => \stepper_clk~regout\,
	datab => t(1),
	aclr => GND,
	ena => \ALT_INV_Equal1~4_combout\,
	cin0 => \t[0]~5\,
	cin1 => \t[0]~5COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t(1),
	cout0 => \t[1]~7\,
	cout1 => \t[1]~7COUT1_26\);

-- Location: LC_X2_Y10_N2
\t[2]\ : maxv_lcell
-- Equation(s):
-- t(2) = DFFEAS((t(2) $ ((!\t[1]~7\))), GLOBAL(\stepper_clk~regout\), VCC, , !\Equal1~4_combout\, , , , )
-- \t[2]~9\ = CARRY(((t(2) & !\t[1]~7\)))
-- \t[2]~9COUT1_28\ = CARRY(((t(2) & !\t[1]~7COUT1_26\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \stepper_clk~regout\,
	datab => t(2),
	aclr => GND,
	ena => \ALT_INV_Equal1~4_combout\,
	cin0 => \t[1]~7\,
	cin1 => \t[1]~7COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t(2),
	cout0 => \t[2]~9\,
	cout1 => \t[2]~9COUT1_28\);

-- Location: LC_X2_Y10_N3
\t[3]\ : maxv_lcell
-- Equation(s):
-- t(3) = DFFEAS(t(3) $ ((((\t[2]~9\)))), GLOBAL(\stepper_clk~regout\), VCC, , !\Equal1~4_combout\, , , , )
-- \t[3]~11\ = CARRY(((!\t[2]~9\)) # (!t(3)))
-- \t[3]~11COUT1_30\ = CARRY(((!\t[2]~9COUT1_28\)) # (!t(3)))

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
	clk => \stepper_clk~regout\,
	dataa => t(3),
	aclr => GND,
	ena => \ALT_INV_Equal1~4_combout\,
	cin0 => \t[2]~9\,
	cin1 => \t[2]~9COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t(3),
	cout0 => \t[3]~11\,
	cout1 => \t[3]~11COUT1_30\);

-- Location: LC_X2_Y10_N4
\t[4]\ : maxv_lcell
-- Equation(s):
-- t(4) = DFFEAS(t(4) $ ((((!\t[3]~11\)))), GLOBAL(\stepper_clk~regout\), VCC, , !\Equal1~4_combout\, , , , )
-- \t[4]~13\ = CARRY((t(4) & ((!\t[3]~11COUT1_30\))))

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
	clk => \stepper_clk~regout\,
	dataa => t(4),
	aclr => GND,
	ena => \ALT_INV_Equal1~4_combout\,
	cin0 => \t[3]~11\,
	cin1 => \t[3]~11COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t(4),
	cout => \t[4]~13\);

-- Location: LC_X2_Y10_N5
\t[5]\ : maxv_lcell
-- Equation(s):
-- t(5) = DFFEAS(t(5) $ ((((\t[4]~13\)))), GLOBAL(\stepper_clk~regout\), VCC, , !\Equal1~4_combout\, , , , )
-- \t[5]~15\ = CARRY(((!\t[4]~13\)) # (!t(5)))
-- \t[5]~15COUT1_32\ = CARRY(((!\t[4]~13\)) # (!t(5)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \stepper_clk~regout\,
	dataa => t(5),
	aclr => GND,
	ena => \ALT_INV_Equal1~4_combout\,
	cin => \t[4]~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t(5),
	cout0 => \t[5]~15\,
	cout1 => \t[5]~15COUT1_32\);

-- Location: LC_X2_Y10_N6
\t[6]\ : maxv_lcell
-- Equation(s):
-- t(6) = DFFEAS((t(6) $ ((!(!\t[4]~13\ & \t[5]~15\) # (\t[4]~13\ & \t[5]~15COUT1_32\)))), GLOBAL(\stepper_clk~regout\), VCC, , !\Equal1~4_combout\, , , , )
-- \t[6]~3\ = CARRY(((t(6) & !\t[5]~15\)))
-- \t[6]~3COUT1_34\ = CARRY(((t(6) & !\t[5]~15COUT1_32\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \stepper_clk~regout\,
	datab => t(6),
	aclr => GND,
	ena => \ALT_INV_Equal1~4_combout\,
	cin => \t[4]~13\,
	cin0 => \t[5]~15\,
	cin1 => \t[5]~15COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t(6),
	cout0 => \t[6]~3\,
	cout1 => \t[6]~3COUT1_34\);

-- Location: LC_X2_Y10_N7
\t[7]\ : maxv_lcell
-- Equation(s):
-- t(7) = DFFEAS((t(7) $ (((!\t[4]~13\ & \t[6]~3\) # (\t[4]~13\ & \t[6]~3COUT1_34\)))), GLOBAL(\stepper_clk~regout\), VCC, , !\Equal1~4_combout\, , , , )

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \stepper_clk~regout\,
	datab => t(7),
	aclr => GND,
	ena => \ALT_INV_Equal1~4_combout\,
	cin => \t[4]~13\,
	cin0 => \t[6]~3\,
	cin1 => \t[6]~3COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t(7));

-- Location: LC_X2_Y10_N9
\position[0]~15\ : maxv_lcell
-- Equation(s):
-- \position[0]~15_combout\ = (t(5) & (t(7) & (t(4) & t(6))))

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
	dataa => t(5),
	datab => t(7),
	datac => t(4),
	datad => t(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \position[0]~15_combout\);

-- Location: LC_X2_Y10_N8
\position[0]~14\ : maxv_lcell
-- Equation(s):
-- \position[0]~14_combout\ = (t(3) & (t(1) & (t(0) & t(2))))

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
	dataa => t(3),
	datab => t(1),
	datac => t(0),
	datad => t(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \position[0]~14_combout\);

-- Location: LC_X3_Y10_N0
\position[0]~17\ : maxv_lcell
-- Equation(s):
-- \position[0]~17_combout\ = (\position[0]~15_combout\ & (((\position[0]~14_combout\ & !\Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \position[0]~15_combout\,
	datac => \position[0]~14_combout\,
	datad => \Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \position[0]~17_combout\);

-- Location: LC_X3_Y10_N1
\position[1]\ : maxv_lcell
-- Equation(s):
-- position(1) = DFFEAS(position(0) $ ((position(1))), GLOBAL(\stepper_clk~regout\), VCC, , \position[0]~17_combout\, , , , )
-- \position[1]~1\ = CARRY((position(0) & (position(1))))
-- \position[1]~1COUT1_25\ = CARRY((position(0) & (position(1))))

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
	clk => \stepper_clk~regout\,
	dataa => position(0),
	datab => position(1),
	aclr => GND,
	ena => \position[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => position(1),
	cout0 => \position[1]~1\,
	cout1 => \position[1]~1COUT1_25\);

-- Location: LC_X3_Y10_N2
\position[2]\ : maxv_lcell
-- Equation(s):
-- position(2) = DFFEAS((position(2) $ ((\position[1]~1\))), GLOBAL(\stepper_clk~regout\), VCC, , \position[0]~17_combout\, , , , )
-- \position[2]~3\ = CARRY(((!\position[1]~1\) # (!position(2))))
-- \position[2]~3COUT1_27\ = CARRY(((!\position[1]~1COUT1_25\) # (!position(2))))

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
	clk => \stepper_clk~regout\,
	datab => position(2),
	aclr => GND,
	ena => \position[0]~17_combout\,
	cin0 => \position[1]~1\,
	cin1 => \position[1]~1COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => position(2),
	cout0 => \position[2]~3\,
	cout1 => \position[2]~3COUT1_27\);

-- Location: LC_X3_Y10_N3
\position[3]\ : maxv_lcell
-- Equation(s):
-- position(3) = DFFEAS(position(3) $ ((((!\position[2]~3\)))), GLOBAL(\stepper_clk~regout\), VCC, , \position[0]~17_combout\, , , , )
-- \position[3]~5\ = CARRY((position(3) & ((!\position[2]~3\))))
-- \position[3]~5COUT1_29\ = CARRY((position(3) & ((!\position[2]~3COUT1_27\))))

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
	clk => \stepper_clk~regout\,
	dataa => position(3),
	aclr => GND,
	ena => \position[0]~17_combout\,
	cin0 => \position[2]~3\,
	cin1 => \position[2]~3COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => position(3),
	cout0 => \position[3]~5\,
	cout1 => \position[3]~5COUT1_29\);

-- Location: LC_X3_Y10_N4
\position[4]\ : maxv_lcell
-- Equation(s):
-- position(4) = DFFEAS((position(4) $ ((\position[3]~5\))), GLOBAL(\stepper_clk~regout\), VCC, , \position[0]~17_combout\, , , , )
-- \position[4]~7\ = CARRY(((!\position[3]~5COUT1_29\) # (!position(4))))

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
	clk => \stepper_clk~regout\,
	datab => position(4),
	aclr => GND,
	ena => \position[0]~17_combout\,
	cin0 => \position[3]~5\,
	cin1 => \position[3]~5COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => position(4),
	cout => \position[4]~7\);

-- Location: LC_X3_Y10_N5
\position[5]\ : maxv_lcell
-- Equation(s):
-- position(5) = DFFEAS(position(5) $ ((((!\position[4]~7\)))), GLOBAL(\stepper_clk~regout\), VCC, , \position[0]~17_combout\, , , , )
-- \position[5]~9\ = CARRY((position(5) & ((!\position[4]~7\))))
-- \position[5]~9COUT1_31\ = CARRY((position(5) & ((!\position[4]~7\))))

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
	clk => \stepper_clk~regout\,
	dataa => position(5),
	aclr => GND,
	ena => \position[0]~17_combout\,
	cin => \position[4]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => position(5),
	cout0 => \position[5]~9\,
	cout1 => \position[5]~9COUT1_31\);

-- Location: LC_X3_Y10_N6
\position[6]\ : maxv_lcell
-- Equation(s):
-- position(6) = DFFEAS(position(6) $ (((((!\position[4]~7\ & \position[5]~9\) # (\position[4]~7\ & \position[5]~9COUT1_31\))))), GLOBAL(\stepper_clk~regout\), VCC, , \position[0]~17_combout\, , , , )
-- \position[6]~11\ = CARRY(((!\position[5]~9\)) # (!position(6)))
-- \position[6]~11COUT1_33\ = CARRY(((!\position[5]~9COUT1_31\)) # (!position(6)))

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
	clk => \stepper_clk~regout\,
	dataa => position(6),
	aclr => GND,
	ena => \position[0]~17_combout\,
	cin => \position[4]~7\,
	cin0 => \position[5]~9\,
	cin1 => \position[5]~9COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => position(6),
	cout0 => \position[6]~11\,
	cout1 => \position[6]~11COUT1_33\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PI[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PI(6),
	combout => \PI~combout\(6));

-- Location: LC_X3_Y10_N7
\position[7]\ : maxv_lcell
-- Equation(s):
-- position(7) = DFFEAS((position(7) $ ((!(!\position[4]~7\ & \position[6]~11\) # (\position[4]~7\ & \position[6]~11COUT1_33\)))), GLOBAL(\stepper_clk~regout\), VCC, , \position[0]~17_combout\, , , , )

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
	clk => \stepper_clk~regout\,
	datab => position(7),
	aclr => GND,
	ena => \position[0]~17_combout\,
	cin => \position[4]~7\,
	cin0 => \position[6]~11\,
	cin1 => \position[6]~11COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => position(7));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PI[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PI(7),
	combout => \PI~combout\(7));

-- Location: LC_X3_Y10_N8
\Equal1~3\ : maxv_lcell
-- Equation(s):
-- \Equal1~3_combout\ = (position(6) & (\PI~combout\(6) & (position(7) $ (!\PI~combout\(7))))) # (!position(6) & (!\PI~combout\(6) & (position(7) $ (!\PI~combout\(7)))))

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
	dataa => position(6),
	datab => \PI~combout\(6),
	datac => position(7),
	datad => \PI~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~3_combout\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PI[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PI(2),
	combout => \PI~combout\(2));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PI[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PI(3),
	combout => \PI~combout\(3));

-- Location: LC_X4_Y10_N8
\Equal1~1\ : maxv_lcell
-- Equation(s):
-- \Equal1~1_combout\ = (\PI~combout\(2) & (position(2) & (\PI~combout\(3) $ (!position(3))))) # (!\PI~combout\(2) & (!position(2) & (\PI~combout\(3) $ (!position(3)))))

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
	dataa => \PI~combout\(2),
	datab => position(2),
	datac => \PI~combout\(3),
	datad => position(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~1_combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PI[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PI(4),
	combout => \PI~combout\(4));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PI[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PI(5),
	combout => \PI~combout\(5));

-- Location: LC_X4_Y10_N6
\Equal1~2\ : maxv_lcell
-- Equation(s):
-- \Equal1~2_combout\ = (\PI~combout\(4) & (position(4) & (\PI~combout\(5) $ (!position(5))))) # (!\PI~combout\(4) & (!position(4) & (\PI~combout\(5) $ (!position(5)))))

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
	dataa => \PI~combout\(4),
	datab => position(4),
	datac => \PI~combout\(5),
	datad => position(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~2_combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PI[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PI(1),
	combout => \PI~combout\(1));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PI[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PI(0),
	combout => \PI~combout\(0));

-- Location: LC_X4_Y10_N4
\Equal1~0\ : maxv_lcell
-- Equation(s):
-- \Equal1~0_combout\ = (\PI~combout\(1) & (position(1) & (\PI~combout\(0) $ (!position(0))))) # (!\PI~combout\(1) & (!position(1) & (\PI~combout\(0) $ (!position(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PI~combout\(1),
	datab => \PI~combout\(0),
	datac => position(1),
	datad => position(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~0_combout\);

-- Location: LC_X3_Y10_N9
\Equal1~4\ : maxv_lcell
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~3_combout\ & (\Equal1~1_combout\ & (\Equal1~2_combout\ & \Equal1~0_combout\)))

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
	dataa => \Equal1~3_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~4_combout\);

-- Location: LC_X4_Y10_N3
\position[0]\ : maxv_lcell
-- Equation(s):
-- position(0) = DFFEAS(position(0) $ (((!\Equal1~4_combout\ & (\position[0]~15_combout\ & \position[0]~14_combout\)))), GLOBAL(\stepper_clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bf40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \stepper_clk~regout\,
	dataa => \Equal1~4_combout\,
	datab => \position[0]~15_combout\,
	datac => \position[0]~14_combout\,
	datad => position(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => position(0));

-- Location: LC_X1_Y10_N3
\CH2~0\ : maxv_lcell
-- Equation(s):
-- \CH2~0_combout\ = ((t(6) $ (t(7))))

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
	datac => t(6),
	datad => t(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH2~0_combout\);

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PA[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => position(0),
	oe => VCC,
	padio => ww_PA(0));

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PA[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => position(1),
	oe => VCC,
	padio => ww_PA(1));

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PA[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => position(2),
	oe => VCC,
	padio => ww_PA(2));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PA[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => position(3),
	oe => VCC,
	padio => ww_PA(3));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PA[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => position(4),
	oe => VCC,
	padio => ww_PA(4));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PA[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => position(5),
	oe => VCC,
	padio => ww_PA(5));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PA[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => position(6),
	oe => VCC,
	padio => ww_PA(6));

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PA[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => position(7),
	oe => VCC,
	padio => ww_PA(7));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CH1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => t(7),
	oe => VCC,
	padio => ww_CH1);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CH2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_CH2~0_combout\,
	oe => VCC,
	padio => ww_CH2);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CH3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_t(7),
	oe => VCC,
	padio => ww_CH3);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CH4~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \CH2~0_combout\,
	oe => VCC,
	padio => ww_CH4);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\FWD~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_FWD);
END structure;


