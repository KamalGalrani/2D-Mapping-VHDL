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

-- DATE "03/10/2014 00:13:47"

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

ENTITY 	GLCD IS
    PORT (
	rs : BUFFER std_logic;
	rw : BUFFER std_logic;
	en : BUFFER std_logic;
	cs1 : BUFFER std_logic;
	cs2 : BUFFER std_logic;
	lcdData : BUFFER std_logic_vector(7 DOWNTO 0);
	button1 : IN std_logic;
	button2 : IN std_logic;
	clk : IN std_logic
	);
END GLCD;

-- Design Ports Information
-- rs	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rw	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- en	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- cs1	=>  Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- cs2	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcdData[0]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcdData[1]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcdData[2]	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcdData[3]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcdData[4]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcdData[5]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcdData[6]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcdData[7]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- clk	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- button1	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- button2	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF GLCD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rs : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_cs1 : std_logic;
SIGNAL ww_cs2 : std_logic;
SIGNAL ww_lcdData : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_button1 : std_logic;
SIGNAL ww_button2 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \button2~combout\ : std_logic;
SIGNAL \Add0~137\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_186\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_188\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~135_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_190\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_192\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_202\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_204\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_206\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~57COUT1_208\ : std_logic;
SIGNAL \Add0~150_combout\ : std_logic;
SIGNAL \Add0~152\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_210\ : std_logic;
SIGNAL \Add0~155_combout\ : std_logic;
SIGNAL \Add0~157\ : std_logic;
SIGNAL \Add0~157COUT1_212\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~122COUT1_214\ : std_logic;
SIGNAL \Add0~125_combout\ : std_logic;
SIGNAL \Add0~127\ : std_logic;
SIGNAL \Add0~127COUT1_216\ : std_logic;
SIGNAL \Add0~130_combout\ : std_logic;
SIGNAL \Add0~132\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~67COUT1_218\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_220\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Equal0~6\ : std_logic;
SIGNAL \Equal0~5\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_222\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~92COUT1_226\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~82COUT1_224\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Equal0~7\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~97COUT1_228\ : std_logic;
SIGNAL \Add0~102COUT1_230\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~107COUT1_232\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~112\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Equal0~8\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_194\ : std_logic;
SIGNAL \Add0~140_combout\ : std_logic;
SIGNAL \count~4_combout\ : std_logic;
SIGNAL \Add0~142\ : std_logic;
SIGNAL \Add0~142COUT1_196\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_198\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_200\ : std_logic;
SIGNAL \Add0~145_combout\ : std_logic;
SIGNAL \Add0~147\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Equal0~3\ : std_logic;
SIGNAL \Equal0~2\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \count~3_combout\ : std_logic;
SIGNAL \count~1\ : std_logic;
SIGNAL \count~0\ : std_logic;
SIGNAL \count~2\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \count~6\ : std_logic;
SIGNAL \count~5\ : std_logic;
SIGNAL \count~7\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \present_state.s0~regout\ : std_logic;
SIGNAL \present_state.s1~regout\ : std_logic;
SIGNAL \present_state.s2~regout\ : std_logic;
SIGNAL \present_state.s3~regout\ : std_logic;
SIGNAL \button1~combout\ : std_logic;
SIGNAL \present_state.S15~regout\ : std_logic;
SIGNAL \Selector7~0\ : std_logic;
SIGNAL \Selector7~1\ : std_logic;
SIGNAL \lcdData[0]~reg0_regout\ : std_logic;
SIGNAL \present_state.s4~regout\ : std_logic;
SIGNAL \present_state.s5~regout\ : std_logic;
SIGNAL \present_state.s6~regout\ : std_logic;
SIGNAL \present_state.s7~regout\ : std_logic;
SIGNAL \present_state.s8~regout\ : std_logic;
SIGNAL \present_state.s9~regout\ : std_logic;
SIGNAL \present_state.s10~regout\ : std_logic;
SIGNAL \present_state.S16~regout\ : std_logic;
SIGNAL \present_state.S17~regout\ : std_logic;
SIGNAL \present_state.S18~regout\ : std_logic;
SIGNAL \Selector4~0\ : std_logic;
SIGNAL \Selector6~0\ : std_logic;
SIGNAL \lcdData[1]~reg0_regout\ : std_logic;
SIGNAL \present_state.s19~regout\ : std_logic;
SIGNAL \present_state.s20~regout\ : std_logic;
SIGNAL \present_state~44_combout\ : std_logic;
SIGNAL \present_state.s11~regout\ : std_logic;
SIGNAL \present_state.s12~regout\ : std_logic;
SIGNAL \lcdData[6]~reg0_regout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1\ : std_logic;
SIGNAL \en~reg0_regout\ : std_logic;
SIGNAL \Selector3~0\ : std_logic;
SIGNAL \lcdData[3]~reg0_regout\ : std_logic;
SIGNAL \lcdData[4]~reg0_regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \lcdData[7]~reg0_regout\ : std_logic;
SIGNAL count : std_logic_vector(31 DOWNTO 0);

BEGIN

rs <= ww_rs;
rw <= ww_rw;
en <= ww_en;
cs1 <= ww_cs1;
cs2 <= ww_cs2;
lcdData <= ww_lcdData;
ww_button1 <= button1;
ww_button2 <= button2;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\button2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_button2,
	combout => \button2~combout\);

-- Location: LC_X4_Y7_N4
\Add0~135\ : maxv_lcell
-- Equation(s):
-- \Add0~135_combout\ = ((!count(0)))
-- \Add0~137\ = CARRY(((count(0))))

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
	combout => \Add0~135_combout\,
	cout => \Add0~137\);

-- Location: LC_X4_Y7_N5
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = count(1) $ ((((\Add0~137\))))
-- \Add0~2\ = CARRY(((!\Add0~137\)) # (!count(1)))
-- \Add0~2COUT1_186\ = CARRY(((!\Add0~137\)) # (!count(1)))

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
	dataa => count(1),
	cin => \Add0~137\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_186\);

-- Location: LC_X4_Y7_N3
\count[1]\ : maxv_lcell
-- Equation(s):
-- count(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~0_combout\, , , VCC)

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
	clk => \clk~combout\,
	datac => \Add0~0_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LC_X4_Y7_N6
\Add0~5\ : maxv_lcell
-- Equation(s):
-- \Add0~5_combout\ = (count(2) $ ((!(!\Add0~137\ & \Add0~2\) # (\Add0~137\ & \Add0~2COUT1_186\))))
-- \Add0~7\ = CARRY(((count(2) & !\Add0~2\)))
-- \Add0~7COUT1_188\ = CARRY(((count(2) & !\Add0~2COUT1_186\)))

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
	cin => \Add0~137\,
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_186\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_188\);

-- Location: LC_X4_Y7_N2
\count[2]\ : maxv_lcell
-- Equation(s):
-- count(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~5_combout\, , , VCC)

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
	clk => \clk~combout\,
	datac => \Add0~5_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LC_X4_Y7_N7
\Add0~10\ : maxv_lcell
-- Equation(s):
-- \Add0~10_combout\ = (count(3) $ (((!\Add0~137\ & \Add0~7\) # (\Add0~137\ & \Add0~7COUT1_188\))))
-- \Add0~12\ = CARRY(((!\Add0~7\) # (!count(3))))
-- \Add0~12COUT1_190\ = CARRY(((!\Add0~7COUT1_188\) # (!count(3))))

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
	cin => \Add0~137\,
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_188\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_190\);

-- Location: LC_X3_Y7_N7
\count[3]\ : maxv_lcell
-- Equation(s):
-- count(3) = DFFEAS((((\Add0~10_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datad => \Add0~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LC_X4_Y7_N0
\count[0]\ : maxv_lcell
-- Equation(s):
-- \Equal0~0\ = (!count(1) & (!count(2) & (!count[0] & !count(3))))
-- count(0) = DFFEAS(\Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \count~3_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count(1),
	datab => count(2),
	datac => \count~3_combout\,
	datad => count(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => count(0));

-- Location: LC_X4_Y7_N8
\Add0~15\ : maxv_lcell
-- Equation(s):
-- \Add0~15_combout\ = (count(4) $ ((!(!\Add0~137\ & \Add0~12\) # (\Add0~137\ & \Add0~12COUT1_190\))))
-- \Add0~17\ = CARRY(((count(4) & !\Add0~12\)))
-- \Add0~17COUT1_192\ = CARRY(((count(4) & !\Add0~12COUT1_190\)))

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
	datab => count(4),
	cin => \Add0~137\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_192\);

-- Location: LC_X4_Y7_N1
\count[4]\ : maxv_lcell
-- Equation(s):
-- count(4) = DFFEAS((((\Add0~15_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datad => \Add0~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4));

-- Location: LC_X4_Y7_N9
\Add0~20\ : maxv_lcell
-- Equation(s):
-- \Add0~20_combout\ = (count(5) $ (((!\Add0~137\ & \Add0~17\) # (\Add0~137\ & \Add0~17COUT1_192\))))
-- \Add0~22\ = CARRY(((!\Add0~17COUT1_192\) # (!count(5))))

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
	cin => \Add0~137\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_192\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout => \Add0~22\);

-- Location: LC_X3_Y7_N6
\count[5]\ : maxv_lcell
-- Equation(s):
-- count(5) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~20_combout\, , , VCC)

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
	clk => \clk~combout\,
	datac => \Add0~20_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(5));

-- Location: LC_X5_Y7_N5
\Add0~40\ : maxv_lcell
-- Equation(s):
-- \Add0~40_combout\ = count(11) $ ((((\Add0~147\))))
-- \Add0~42\ = CARRY(((!\Add0~147\)) # (!count(11)))
-- \Add0~42COUT1_202\ = CARRY(((!\Add0~147\)) # (!count(11)))

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
	dataa => count(11),
	cin => \Add0~147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_202\);

-- Location: LC_X10_Y7_N3
\count[11]\ : maxv_lcell
-- Equation(s):
-- count(11) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~40_combout\, , , VCC)

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
	clk => \clk~combout\,
	datac => \Add0~40_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(11));

-- Location: LC_X5_Y7_N6
\Add0~45\ : maxv_lcell
-- Equation(s):
-- \Add0~45_combout\ = (count(12) $ ((!(!\Add0~147\ & \Add0~42\) # (\Add0~147\ & \Add0~42COUT1_202\))))
-- \Add0~47\ = CARRY(((count(12) & !\Add0~42\)))
-- \Add0~47COUT1_204\ = CARRY(((count(12) & !\Add0~42COUT1_202\)))

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
	cin => \Add0~147\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_202\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_204\);

-- Location: LC_X10_Y7_N9
\count[12]\ : maxv_lcell
-- Equation(s):
-- \Equal0~3\ = (!count(13) & (!count(14) & (!count[12] & count(15))))
-- count(12) = DFFEAS(\Equal0~3\, GLOBAL(\clk~combout\), VCC, , , \Add0~45_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count(13),
	datab => count(14),
	datac => \Add0~45_combout\,
	datad => count(15),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3\,
	regout => count(12));

-- Location: LC_X5_Y7_N7
\Add0~50\ : maxv_lcell
-- Equation(s):
-- \Add0~50_combout\ = (count(13) $ (((!\Add0~147\ & \Add0~47\) # (\Add0~147\ & \Add0~47COUT1_204\))))
-- \Add0~52\ = CARRY(((!\Add0~47\) # (!count(13))))
-- \Add0~52COUT1_206\ = CARRY(((!\Add0~47COUT1_204\) # (!count(13))))

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
	cin => \Add0~147\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_204\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_206\);

-- Location: LC_X5_Y7_N8
\Add0~55\ : maxv_lcell
-- Equation(s):
-- \Add0~55_combout\ = count(14) $ ((((!(!\Add0~147\ & \Add0~52\) # (\Add0~147\ & \Add0~52COUT1_206\)))))
-- \Add0~57\ = CARRY((count(14) & ((!\Add0~52\))))
-- \Add0~57COUT1_208\ = CARRY((count(14) & ((!\Add0~52COUT1_206\))))

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
	cin => \Add0~147\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_206\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout0 => \Add0~57\,
	cout1 => \Add0~57COUT1_208\);

-- Location: LC_X10_Y7_N1
\count[14]\ : maxv_lcell
-- Equation(s):
-- count(14) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~55_combout\, , , VCC)

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
	clk => \clk~combout\,
	datac => \Add0~55_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(14));

-- Location: LC_X5_Y7_N9
\Add0~150\ : maxv_lcell
-- Equation(s):
-- \Add0~150_combout\ = (count(15) $ (((!\Add0~147\ & \Add0~57\) # (\Add0~147\ & \Add0~57COUT1_208\))))
-- \Add0~152\ = CARRY(((!\Add0~57COUT1_208\) # (!count(15))))

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
	cin => \Add0~147\,
	cin0 => \Add0~57\,
	cin1 => \Add0~57COUT1_208\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~150_combout\,
	cout => \Add0~152\);

-- Location: LC_X9_Y7_N1
\count[15]\ : maxv_lcell
-- Equation(s):
-- \count~6\ = ((\Add0~150_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\))))
-- count(15) = DFFEAS(\count~6\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~150_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count~6\,
	regout => count(15));

-- Location: LC_X6_Y7_N0
\Add0~60\ : maxv_lcell
-- Equation(s):
-- \Add0~60_combout\ = count(16) $ ((((!\Add0~152\))))
-- \Add0~62\ = CARRY((count(16) & ((!\Add0~152\))))
-- \Add0~62COUT1_210\ = CARRY((count(16) & ((!\Add0~152\))))

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
	dataa => count(16),
	cin => \Add0~152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_210\);

-- Location: LC_X9_Y7_N2
\count[16]\ : maxv_lcell
-- Equation(s):
-- \Equal0~5\ = (count(17) & (count(18) & (!count[16] & count(19))))
-- count(16) = DFFEAS(\Equal0~5\, GLOBAL(\clk~combout\), VCC, , , \Add0~60_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count(17),
	datab => count(18),
	datac => \Add0~60_combout\,
	datad => count(19),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5\,
	regout => count(16));

-- Location: LC_X6_Y7_N1
\Add0~155\ : maxv_lcell
-- Equation(s):
-- \Add0~155_combout\ = (count(17) $ (((!\Add0~152\ & \Add0~62\) # (\Add0~152\ & \Add0~62COUT1_210\))))
-- \Add0~157\ = CARRY(((!\Add0~62\) # (!count(17))))
-- \Add0~157COUT1_212\ = CARRY(((!\Add0~62COUT1_210\) # (!count(17))))

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
	cin => \Add0~152\,
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_210\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~155_combout\,
	cout0 => \Add0~157\,
	cout1 => \Add0~157COUT1_212\);

-- Location: LC_X9_Y7_N5
\count[17]\ : maxv_lcell
-- Equation(s):
-- \count~7\ = ((\Add0~155_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\))))
-- count(17) = DFFEAS(\count~7\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~155_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count~7\,
	regout => count(17));

-- Location: LC_X6_Y7_N2
\Add0~120\ : maxv_lcell
-- Equation(s):
-- \Add0~120_combout\ = (count(18) $ ((!(!\Add0~152\ & \Add0~157\) # (\Add0~152\ & \Add0~157COUT1_212\))))
-- \Add0~122\ = CARRY(((count(18) & !\Add0~157\)))
-- \Add0~122COUT1_214\ = CARRY(((count(18) & !\Add0~157COUT1_212\)))

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
	cin => \Add0~152\,
	cin0 => \Add0~157\,
	cin1 => \Add0~157COUT1_212\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~120_combout\,
	cout0 => \Add0~122\,
	cout1 => \Add0~122COUT1_214\);

-- Location: LC_X8_Y7_N6
\count[18]\ : maxv_lcell
-- Equation(s):
-- \count~0\ = ((\Add0~120_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\))))
-- count(18) = DFFEAS(\count~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~120_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count~0\,
	regout => count(18));

-- Location: LC_X6_Y7_N3
\Add0~125\ : maxv_lcell
-- Equation(s):
-- \Add0~125_combout\ = (count(19) $ (((!\Add0~152\ & \Add0~122\) # (\Add0~152\ & \Add0~122COUT1_214\))))
-- \Add0~127\ = CARRY(((!\Add0~122\) # (!count(19))))
-- \Add0~127COUT1_216\ = CARRY(((!\Add0~122COUT1_214\) # (!count(19))))

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
	cin => \Add0~152\,
	cin0 => \Add0~122\,
	cin1 => \Add0~122COUT1_214\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~125_combout\,
	cout0 => \Add0~127\,
	cout1 => \Add0~127COUT1_216\);

-- Location: LC_X8_Y7_N0
\count[19]\ : maxv_lcell
-- Equation(s):
-- \count~1\ = ((\Add0~125_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\))))
-- count(19) = DFFEAS(\count~1\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~125_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count~1\,
	regout => count(19));

-- Location: LC_X6_Y7_N4
\Add0~130\ : maxv_lcell
-- Equation(s):
-- \Add0~130_combout\ = (count(20) $ ((!(!\Add0~152\ & \Add0~127\) # (\Add0~152\ & \Add0~127COUT1_216\))))
-- \Add0~132\ = CARRY(((count(20) & !\Add0~127COUT1_216\)))

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
	cin => \Add0~152\,
	cin0 => \Add0~127\,
	cin1 => \Add0~127COUT1_216\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~130_combout\,
	cout => \Add0~132\);

-- Location: LC_X8_Y7_N4
\count[20]\ : maxv_lcell
-- Equation(s):
-- \count~2\ = ((\Add0~130_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\))))
-- count(20) = DFFEAS(\count~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~130_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count~2\,
	regout => count(20));

-- Location: LC_X6_Y7_N5
\Add0~65\ : maxv_lcell
-- Equation(s):
-- \Add0~65_combout\ = (count(21) $ ((\Add0~132\)))
-- \Add0~67\ = CARRY(((!\Add0~132\) # (!count(21))))
-- \Add0~67COUT1_218\ = CARRY(((!\Add0~132\) # (!count(21))))

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
	cin => \Add0~132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout0 => \Add0~67\,
	cout1 => \Add0~67COUT1_218\);

-- Location: LC_X6_Y7_N6
\Add0~70\ : maxv_lcell
-- Equation(s):
-- \Add0~70_combout\ = (count(22) $ ((!(!\Add0~132\ & \Add0~67\) # (\Add0~132\ & \Add0~67COUT1_218\))))
-- \Add0~72\ = CARRY(((count(22) & !\Add0~67\)))
-- \Add0~72COUT1_220\ = CARRY(((count(22) & !\Add0~67COUT1_218\)))

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
	datab => count(22),
	cin => \Add0~132\,
	cin0 => \Add0~67\,
	cin1 => \Add0~67COUT1_218\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_220\);

-- Location: LC_X6_Y7_N7
\Add0~75\ : maxv_lcell
-- Equation(s):
-- \Add0~75_combout\ = (count(23) $ (((!\Add0~132\ & \Add0~72\) # (\Add0~132\ & \Add0~72COUT1_220\))))
-- \Add0~77\ = CARRY(((!\Add0~72\) # (!count(23))))
-- \Add0~77COUT1_222\ = CARRY(((!\Add0~72COUT1_220\) # (!count(23))))

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
	datab => count(23),
	cin => \Add0~132\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_220\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_222\);

-- Location: LC_X8_Y7_N3
\count[23]\ : maxv_lcell
-- Equation(s):
-- count(23) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~75_combout\, , , VCC)

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
	clk => \clk~combout\,
	datac => \Add0~75_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(23));

-- Location: LC_X8_Y7_N9
\count[21]\ : maxv_lcell
-- Equation(s):
-- \Equal0~6\ = (count(20) & (!count(22) & (!count[21] & !count(23))))
-- count(21) = DFFEAS(\Equal0~6\, GLOBAL(\clk~combout\), VCC, , , \Add0~65_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count(20),
	datab => count(22),
	datac => \Add0~65_combout\,
	datad => count(23),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6\,
	regout => count(21));

-- Location: LC_X8_Y7_N7
\count[22]\ : maxv_lcell
-- Equation(s):
-- count(22) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~70_combout\, , , VCC)

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
	clk => \clk~combout\,
	datac => \Add0~70_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(22));

-- Location: LC_X6_Y7_N8
\Add0~80\ : maxv_lcell
-- Equation(s):
-- \Add0~80_combout\ = (count(24) $ ((!(!\Add0~132\ & \Add0~77\) # (\Add0~132\ & \Add0~77COUT1_222\))))
-- \Add0~82\ = CARRY(((count(24) & !\Add0~77\)))
-- \Add0~82COUT1_224\ = CARRY(((count(24) & !\Add0~77COUT1_222\)))

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
	cin => \Add0~132\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_222\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout0 => \Add0~82\,
	cout1 => \Add0~82COUT1_224\);

-- Location: LC_X7_Y7_N0
\Add0~90\ : maxv_lcell
-- Equation(s):
-- \Add0~90_combout\ = count(26) $ ((((!\Add0~87\))))
-- \Add0~92\ = CARRY((count(26) & ((!\Add0~87\))))
-- \Add0~92COUT1_226\ = CARRY((count(26) & ((!\Add0~87\))))

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
	dataa => count(26),
	cin => \Add0~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout0 => \Add0~92\,
	cout1 => \Add0~92COUT1_226\);

-- Location: LC_X7_Y7_N1
\Add0~95\ : maxv_lcell
-- Equation(s):
-- \Add0~95_combout\ = (count(27) $ (((!\Add0~87\ & \Add0~92\) # (\Add0~87\ & \Add0~92COUT1_226\))))
-- \Add0~97\ = CARRY(((!\Add0~92\) # (!count(27))))
-- \Add0~97COUT1_228\ = CARRY(((!\Add0~92COUT1_226\) # (!count(27))))

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
	datab => count(27),
	cin => \Add0~87\,
	cin0 => \Add0~92\,
	cin1 => \Add0~92COUT1_226\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout0 => \Add0~97\,
	cout1 => \Add0~97COUT1_228\);

-- Location: LC_X8_Y7_N2
\count[27]\ : maxv_lcell
-- Equation(s):
-- count(27) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~95_combout\, , , VCC)

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
	clk => \clk~combout\,
	datac => \Add0~95_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(27));

-- Location: LC_X9_Y7_N7
\count[24]\ : maxv_lcell
-- Equation(s):
-- \Equal0~7\ = (!count(26) & (!count(25) & (!count[24] & !count(27))))
-- count(24) = DFFEAS(\Equal0~7\, GLOBAL(\clk~combout\), VCC, , , \Add0~80_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count(26),
	datab => count(25),
	datac => \Add0~80_combout\,
	datad => count(27),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~7\,
	regout => count(24));

-- Location: LC_X6_Y7_N9
\Add0~85\ : maxv_lcell
-- Equation(s):
-- \Add0~85_combout\ = (count(25) $ (((!\Add0~132\ & \Add0~82\) # (\Add0~132\ & \Add0~82COUT1_224\))))
-- \Add0~87\ = CARRY(((!\Add0~82COUT1_224\) # (!count(25))))

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
	datab => count(25),
	cin => \Add0~132\,
	cin0 => \Add0~82\,
	cin1 => \Add0~82COUT1_224\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout => \Add0~87\);

-- Location: LC_X10_Y7_N6
\count[25]\ : maxv_lcell
-- Equation(s):
-- count(25) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~85_combout\, , , VCC)

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
	clk => \clk~combout\,
	datac => \Add0~85_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(25));

-- Location: LC_X8_Y7_N1
\count[26]\ : maxv_lcell
-- Equation(s):
-- count(26) = DFFEAS((((\Add0~90_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datad => \Add0~90_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(26));

-- Location: LC_X7_Y7_N2
\Add0~100\ : maxv_lcell
-- Equation(s):
-- \Add0~100_combout\ = (count(28) $ ((!(!\Add0~87\ & \Add0~97\) # (\Add0~87\ & \Add0~97COUT1_228\))))
-- \Add0~102\ = CARRY(((count(28) & !\Add0~97\)))
-- \Add0~102COUT1_230\ = CARRY(((count(28) & !\Add0~97COUT1_228\)))

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
	datab => count(28),
	cin => \Add0~87\,
	cin0 => \Add0~97\,
	cin1 => \Add0~97COUT1_228\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~100_combout\,
	cout0 => \Add0~102\,
	cout1 => \Add0~102COUT1_230\);

-- Location: LC_X7_Y7_N3
\Add0~105\ : maxv_lcell
-- Equation(s):
-- \Add0~105_combout\ = (count(29) $ (((!\Add0~87\ & \Add0~102\) # (\Add0~87\ & \Add0~102COUT1_230\))))
-- \Add0~107\ = CARRY(((!\Add0~102\) # (!count(29))))
-- \Add0~107COUT1_232\ = CARRY(((!\Add0~102COUT1_230\) # (!count(29))))

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
	datab => count(29),
	cin => \Add0~87\,
	cin0 => \Add0~102\,
	cin1 => \Add0~102COUT1_230\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~105_combout\,
	cout0 => \Add0~107\,
	cout1 => \Add0~107COUT1_232\);

-- Location: LC_X7_Y7_N4
\Add0~110\ : maxv_lcell
-- Equation(s):
-- \Add0~110_combout\ = (count(30) $ ((!(!\Add0~87\ & \Add0~107\) # (\Add0~87\ & \Add0~107COUT1_232\))))
-- \Add0~112\ = CARRY(((count(30) & !\Add0~107COUT1_232\)))

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
	datab => count(30),
	cin => \Add0~87\,
	cin0 => \Add0~107\,
	cin1 => \Add0~107COUT1_232\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~110_combout\,
	cout => \Add0~112\);

-- Location: LC_X8_Y8_N9
\count[30]\ : maxv_lcell
-- Equation(s):
-- count(30) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~110_combout\, , , VCC)

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
	clk => \clk~combout\,
	datac => \Add0~110_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(30));

-- Location: LC_X7_Y7_N5
\Add0~115\ : maxv_lcell
-- Equation(s):
-- \Add0~115_combout\ = ((\Add0~112\ $ (count(31))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => count(31),
	cin => \Add0~112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~115_combout\);

-- Location: LC_X8_Y8_N8
\count[31]\ : maxv_lcell
-- Equation(s):
-- count(31) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~115_combout\, , , VCC)

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
	clk => \clk~combout\,
	datac => \Add0~115_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(31));

-- Location: LC_X8_Y8_N6
\count[28]\ : maxv_lcell
-- Equation(s):
-- \Equal0~8\ = (!count(29) & (!count(30) & (!count[28] & !count(31))))
-- count(28) = DFFEAS(\Equal0~8\, GLOBAL(\clk~combout\), VCC, , , \Add0~100_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count(29),
	datab => count(30),
	datac => \Add0~100_combout\,
	datad => count(31),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~8\,
	regout => count(28));

-- Location: LC_X8_Y8_N3
\count[29]\ : maxv_lcell
-- Equation(s):
-- count(29) = DFFEAS((((\Add0~105_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datad => \Add0~105_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(29));

-- Location: LC_X9_Y7_N8
\Equal0~9\ : maxv_lcell
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~6\ & (\Equal0~5\ & (\Equal0~7\ & \Equal0~8\)))

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
	dataa => \Equal0~6\,
	datab => \Equal0~5\,
	datac => \Equal0~7\,
	datad => \Equal0~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~9_combout\);

-- Location: LC_X5_Y7_N0
\Add0~25\ : maxv_lcell
-- Equation(s):
-- \Add0~25_combout\ = count(6) $ ((((!\Add0~22\))))
-- \Add0~27\ = CARRY((count(6) & ((!\Add0~22\))))
-- \Add0~27COUT1_194\ = CARRY((count(6) & ((!\Add0~22\))))

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
	dataa => count(6),
	cin => \Add0~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_194\);

-- Location: LC_X10_Y7_N4
\count[6]\ : maxv_lcell
-- Equation(s):
-- count(6) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~25_combout\, , , VCC)

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
	clk => \clk~combout\,
	datac => \Add0~25_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(6));

-- Location: LC_X5_Y7_N1
\Add0~140\ : maxv_lcell
-- Equation(s):
-- \Add0~140_combout\ = (count(7) $ (((!\Add0~22\ & \Add0~27\) # (\Add0~22\ & \Add0~27COUT1_194\))))
-- \Add0~142\ = CARRY(((!\Add0~27\) # (!count(7))))
-- \Add0~142COUT1_196\ = CARRY(((!\Add0~27COUT1_194\) # (!count(7))))

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
	cin1 => \Add0~27COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~140_combout\,
	cout0 => \Add0~142\,
	cout1 => \Add0~142COUT1_196\);

-- Location: LC_X9_Y7_N3
\count~4\ : maxv_lcell
-- Equation(s):
-- \count~4_combout\ = ((\Add0~140_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count~4_combout\);

-- Location: LC_X9_Y7_N9
\count[7]\ : maxv_lcell
-- Equation(s):
-- \Equal0~1\ = (!count(4) & (!count(5) & (count[7] & !count(6))))
-- count(7) = DFFEAS(\Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \count~4_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(4),
	datab => count(5),
	datac => \count~4_combout\,
	datad => count(6),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => count(7));

-- Location: LC_X5_Y7_N2
\Add0~30\ : maxv_lcell
-- Equation(s):
-- \Add0~30_combout\ = (count(8) $ ((!(!\Add0~22\ & \Add0~142\) # (\Add0~22\ & \Add0~142COUT1_196\))))
-- \Add0~32\ = CARRY(((count(8) & !\Add0~142\)))
-- \Add0~32COUT1_198\ = CARRY(((count(8) & !\Add0~142COUT1_196\)))

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
	datab => count(8),
	cin => \Add0~22\,
	cin0 => \Add0~142\,
	cin1 => \Add0~142COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_198\);

-- Location: LC_X10_Y7_N2
\count[8]\ : maxv_lcell
-- Equation(s):
-- \Equal0~2\ = (!count(9) & (count(10) & (!count[8] & !count(11))))
-- count(8) = DFFEAS(\Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \Add0~30_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count(9),
	datab => count(10),
	datac => \Add0~30_combout\,
	datad => count(11),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2\,
	regout => count(8));

-- Location: LC_X5_Y7_N3
\Add0~35\ : maxv_lcell
-- Equation(s):
-- \Add0~35_combout\ = (count(9) $ (((!\Add0~22\ & \Add0~32\) # (\Add0~22\ & \Add0~32COUT1_198\))))
-- \Add0~37\ = CARRY(((!\Add0~32\) # (!count(9))))
-- \Add0~37COUT1_200\ = CARRY(((!\Add0~32COUT1_198\) # (!count(9))))

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
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_200\);

-- Location: LC_X10_Y7_N7
\count[9]\ : maxv_lcell
-- Equation(s):
-- count(9) = DFFEAS((((\Add0~35_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datad => \Add0~35_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(9));

-- Location: LC_X5_Y7_N4
\Add0~145\ : maxv_lcell
-- Equation(s):
-- \Add0~145_combout\ = (count(10) $ ((!(!\Add0~22\ & \Add0~37\) # (\Add0~22\ & \Add0~37COUT1_200\))))
-- \Add0~147\ = CARRY(((count(10) & !\Add0~37COUT1_200\)))

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
	cin => \Add0~22\,
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~145_combout\,
	cout => \Add0~147\);

-- Location: LC_X9_Y7_N4
\count[10]\ : maxv_lcell
-- Equation(s):
-- \count~5\ = ((\Add0~145_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\))))
-- count(10) = DFFEAS(\count~5\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Equal0~4_combout\,
	datac => \Add0~145_combout\,
	datad => \Equal0~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count~5\,
	regout => count(10));

-- Location: LC_X10_Y7_N8
\count[13]\ : maxv_lcell
-- Equation(s):
-- count(13) = DFFEAS((((\Add0~50_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datad => \Add0~50_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(13));

-- Location: LC_X9_Y7_N0
\Equal0~4\ : maxv_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3\ & (\Equal0~2\ & (\Equal0~0\ & \Equal0~1\)))

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
	dataa => \Equal0~3\,
	datab => \Equal0~2\,
	datac => \Equal0~0\,
	datad => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X8_Y7_N8
\count~3\ : maxv_lcell
-- Equation(s):
-- \count~3_combout\ = (\Add0~135_combout\ & (((!\Equal0~9_combout\) # (!\Equal0~4_combout\))))

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
	dataa => \Add0~135_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count~3_combout\);

-- Location: LC_X8_Y7_N5
\Equal1~8\ : maxv_lcell
-- Equation(s):
-- \Equal1~8_combout\ = (!\count~3_combout\ & (!\count~1\ & (!\count~0\ & !\count~2\)))

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
	dataa => \count~3_combout\,
	datab => \count~1\,
	datac => \count~0\,
	datad => \count~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~8_combout\);

-- Location: LC_X7_Y7_N9
\Equal1~6\ : maxv_lcell
-- Equation(s):
-- \Equal1~6_combout\ = ((!\Add0~100_combout\ & ((!\Add0~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add0~100_combout\,
	datad => \Add0~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~6_combout\);

-- Location: LC_X7_Y7_N8
\Equal1~5\ : maxv_lcell
-- Equation(s):
-- \Equal1~5_combout\ = (!\Add0~80_combout\ & (!\Add0~95_combout\ & (!\Add0~90_combout\ & !\Add0~85_combout\)))

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
	dataa => \Add0~80_combout\,
	datab => \Add0~95_combout\,
	datac => \Add0~90_combout\,
	datad => \Add0~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~5_combout\);

-- Location: LC_X7_Y7_N6
\Equal1~7\ : maxv_lcell
-- Equation(s):
-- \Equal1~7_combout\ = (!\Add0~115_combout\ & (\Equal1~6_combout\ & (!\Add0~110_combout\ & \Equal1~5_combout\)))

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
	dataa => \Add0~115_combout\,
	datab => \Equal1~6_combout\,
	datac => \Add0~110_combout\,
	datad => \Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~7_combout\);

-- Location: LC_X9_Y7_N6
\Equal1~9\ : maxv_lcell
-- Equation(s):
-- \Equal1~9_combout\ = (\count~4_combout\ & (!\count~6\ & (!\count~5\ & !\count~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count~4_combout\,
	datab => \count~6\,
	datac => \count~5\,
	datad => \count~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~9_combout\);

-- Location: LC_X3_Y7_N5
\Equal1~0\ : maxv_lcell
-- Equation(s):
-- \Equal1~0_combout\ = (!\Add0~10_combout\ & (!\Add0~15_combout\ & (!\Add0~5_combout\ & !\Add0~0_combout\)))

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
	dataa => \Add0~10_combout\,
	datab => \Add0~15_combout\,
	datac => \Add0~5_combout\,
	datad => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~0_combout\);

-- Location: LC_X8_Y6_N7
\Equal1~1\ : maxv_lcell
-- Equation(s):
-- \Equal1~1_combout\ = (!\Add0~25_combout\ & (!\Add0~20_combout\ & (!\Add0~30_combout\ & !\Add0~35_combout\)))

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
	dataa => \Add0~25_combout\,
	datab => \Add0~20_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~1_combout\);

-- Location: LC_X7_Y7_N7
\Equal1~3\ : maxv_lcell
-- Equation(s):
-- \Equal1~3_combout\ = (\Add0~60_combout\ & (!\Add0~75_combout\ & (!\Add0~70_combout\ & !\Add0~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~60_combout\,
	datab => \Add0~75_combout\,
	datac => \Add0~70_combout\,
	datad => \Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~3_combout\);

-- Location: LC_X8_Y6_N1
\Equal1~2\ : maxv_lcell
-- Equation(s):
-- \Equal1~2_combout\ = (\Add0~45_combout\ & (\Add0~40_combout\ & (!\Add0~55_combout\ & \Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~45_combout\,
	datab => \Add0~40_combout\,
	datac => \Add0~55_combout\,
	datad => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~2_combout\);

-- Location: LC_X8_Y6_N2
\Equal1~4\ : maxv_lcell
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~0_combout\ & (\Equal1~1_combout\ & (\Equal1~3_combout\ & \Equal1~2_combout\)))

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
	datab => \Equal1~1_combout\,
	datac => \Equal1~3_combout\,
	datad => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~4_combout\);

-- Location: LC_X8_Y6_N3
\Equal1~10\ : maxv_lcell
-- Equation(s):
-- \Equal1~10_combout\ = (\Equal1~8_combout\ & (\Equal1~7_combout\ & (\Equal1~9_combout\ & \Equal1~4_combout\)))

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
	dataa => \Equal1~8_combout\,
	datab => \Equal1~7_combout\,
	datac => \Equal1~9_combout\,
	datad => \Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~10_combout\);

-- Location: LC_X7_Y6_N6
\present_state.s0\ : maxv_lcell
-- Equation(s):
-- \present_state.s0~regout\ = DFFEAS((((\button2~combout\) # (!\present_state.s12~regout\))), GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \present_state.s12~regout\,
	datad => \button2~combout\,
	aclr => GND,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.s0~regout\);

-- Location: LC_X9_Y6_N3
\present_state.s1\ : maxv_lcell
-- Equation(s):
-- \present_state.s1~regout\ = DFFEAS((((!\present_state.s0~regout\))), GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, , , , )

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
	datad => \present_state.s0~regout\,
	aclr => GND,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.s1~regout\);

-- Location: LC_X9_Y6_N4
\present_state.s2\ : maxv_lcell
-- Equation(s):
-- \Selector3~0\ = ((\present_state.s0~regout\ & (!present_state.s2 & !\present_state.s1~regout\)))
-- \present_state.s2~regout\ = DFFEAS(\Selector3~0\, GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, \present_state.s1~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \present_state.s0~regout\,
	datac => \present_state.s1~regout\,
	datad => \present_state.s1~regout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector3~0\,
	regout => \present_state.s2~regout\);

-- Location: LC_X9_Y6_N9
\present_state.s3\ : maxv_lcell
-- Equation(s):
-- \present_state.s3~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, \present_state.s2~regout\, , , VCC)

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
	clk => \clk~combout\,
	datac => \present_state.s2~regout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.s3~regout\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\button1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_button1,
	combout => \button1~combout\);

-- Location: LC_X7_Y6_N3
\present_state.S15\ : maxv_lcell
-- Equation(s):
-- \present_state.S15~regout\ = DFFEAS((\present_state.s12~regout\ & (((!\button1~combout\ & \button2~combout\)))), GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \present_state.s12~regout\,
	datac => \button1~combout\,
	datad => \button2~combout\,
	aclr => GND,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.S15~regout\);

-- Location: LC_X7_Y6_N9
\present_state.S17\ : maxv_lcell
-- Equation(s):
-- \Selector7~0\ = ((!\present_state.S16~regout\ & (!present_state.S17 & !\present_state.S15~regout\)))
-- \present_state.S17~regout\ = DFFEAS(\Selector7~0\, GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, \present_state.S16~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \present_state.S16~regout\,
	datac => \present_state.S16~regout\,
	datad => \present_state.S15~regout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~0\,
	regout => \present_state.S17~regout\);

-- Location: LC_X9_Y6_N5
\present_state.s4\ : maxv_lcell
-- Equation(s):
-- \Selector7~1\ = (present_state.s4) # ((\present_state.s5~regout\) # ((\lcdData[0]~reg0_regout\ & \present_state.s12~regout\)))
-- \present_state.s4~regout\ = DFFEAS(\Selector7~1\, GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, \present_state.s3~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \lcdData[0]~reg0_regout\,
	datab => \present_state.s12~regout\,
	datac => \present_state.s3~regout\,
	datad => \present_state.s5~regout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~1\,
	regout => \present_state.s4~regout\);

-- Location: LC_X9_Y6_N6
\lcdData[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \lcdData[0]~reg0_regout\ = DFFEAS(((\present_state.s3~regout\) # ((\Selector7~1\) # (!\Selector7~0\))), GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcf",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \present_state.s3~regout\,
	datac => \Selector7~0\,
	datad => \Selector7~1\,
	aclr => GND,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdData[0]~reg0_regout\);

-- Location: LC_X9_Y6_N2
\present_state.s5\ : maxv_lcell
-- Equation(s):
-- \present_state.s5~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, \present_state.s4~regout\, , , VCC)

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
	clk => \clk~combout\,
	datac => \present_state.s4~regout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.s5~regout\);

-- Location: LC_X8_Y6_N6
\present_state.s6\ : maxv_lcell
-- Equation(s):
-- \present_state.s6~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, \present_state.s5~regout\, , , VCC)

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
	clk => \clk~combout\,
	datac => \present_state.s5~regout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.s6~regout\);

-- Location: LC_X8_Y6_N4
\present_state.s7\ : maxv_lcell
-- Equation(s):
-- \Selector4~0\ = (!\present_state.s6~regout\ & (!\present_state.s8~regout\ & (!present_state.s7)))
-- \present_state.s7~regout\ = DFFEAS(\Selector4~0\, GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, \present_state.s6~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \present_state.s6~regout\,
	datab => \present_state.s8~regout\,
	datac => \present_state.s6~regout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector4~0\,
	regout => \present_state.s7~regout\);

-- Location: LC_X7_Y6_N4
\present_state.s8\ : maxv_lcell
-- Equation(s):
-- \present_state.s8~regout\ = DFFEAS((((\present_state.s7~regout\))), GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, , , , )

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
	clk => \clk~combout\,
	datad => \present_state.s7~regout\,
	aclr => GND,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.s8~regout\);

-- Location: LC_X7_Y6_N8
\present_state.s9\ : maxv_lcell
-- Equation(s):
-- \present_state.s9~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, \present_state.s8~regout\, , , VCC)

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
	clk => \clk~combout\,
	datac => \present_state.s8~regout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.s9~regout\);

-- Location: LC_X7_Y6_N2
\present_state.s10\ : maxv_lcell
-- Equation(s):
-- \present_state.s10~regout\ = DFFEAS((((\present_state.s9~regout\))), GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, , , , )

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
	clk => \clk~combout\,
	datad => \present_state.s9~regout\,
	aclr => GND,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.s10~regout\);

-- Location: LC_X7_Y6_N7
\present_state.S16\ : maxv_lcell
-- Equation(s):
-- \Selector9~1\ = (\present_state.s10~regout\) # ((\present_state.s19~regout\) # ((present_state.S16) # (\present_state.s7~regout\)))
-- \present_state.S16~regout\ = DFFEAS(\Selector9~1\, GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, \present_state.S15~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \present_state.s10~regout\,
	datab => \present_state.s19~regout\,
	datac => \present_state.S15~regout\,
	datad => \present_state.s7~regout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~1\,
	regout => \present_state.S16~regout\);

-- Location: LC_X8_Y6_N5
\present_state.S18\ : maxv_lcell
-- Equation(s):
-- \present_state.S18~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, \present_state.S17~regout\, , , VCC)

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
	clk => \clk~combout\,
	datac => \present_state.S17~regout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.S18~regout\);

-- Location: LC_X8_Y6_N8
\present_state.s19\ : maxv_lcell
-- Equation(s):
-- \Selector6~0\ = (\present_state.s20~regout\) # ((present_state.s19) # ((\present_state.s12~regout\ & \lcdData[1]~reg0_regout\)))
-- \present_state.s19~regout\ = DFFEAS(\Selector6~0\, GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, \present_state.S18~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \present_state.s12~regout\,
	datab => \present_state.s20~regout\,
	datac => \present_state.S18~regout\,
	datad => \lcdData[1]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector6~0\,
	regout => \present_state.s19~regout\);

-- Location: LC_X8_Y6_N9
\lcdData[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \lcdData[1]~reg0_regout\ = DFFEAS((((\present_state.S18~regout\) # (\Selector6~0\))) # (!\Selector4~0\), GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Selector4~0\,
	datac => \present_state.S18~regout\,
	datad => \Selector6~0\,
	aclr => GND,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdData[1]~reg0_regout\);

-- Location: LC_X8_Y6_N0
\present_state.s20\ : maxv_lcell
-- Equation(s):
-- \present_state.s20~regout\ = DFFEAS((((\present_state.s19~regout\))), GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, , , , )

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
	clk => \clk~combout\,
	datad => \present_state.s19~regout\,
	aclr => GND,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.s20~regout\);

-- Location: LC_X6_Y6_N2
\present_state~44\ : maxv_lcell
-- Equation(s):
-- \present_state~44_combout\ = (((\button2~combout\ & \present_state.s12~regout\)))

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
	datac => \button2~combout\,
	datad => \present_state.s12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \present_state~44_combout\);

-- Location: LC_X7_Y6_N1
\present_state.s11\ : maxv_lcell
-- Equation(s):
-- \present_state.s11~regout\ = DFFEAS((((\present_state.s10~regout\))), GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, , , , )

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
	clk => \clk~combout\,
	datad => \present_state.s10~regout\,
	aclr => GND,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.s11~regout\);

-- Location: LC_X7_Y6_N5
\present_state.s12\ : maxv_lcell
-- Equation(s):
-- \present_state.s12~regout\ = DFFEAS((\present_state.s20~regout\) # ((\present_state.s11~regout\) # ((\present_state~44_combout\ & \button1~combout\))), GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \present_state.s20~regout\,
	datab => \present_state~44_combout\,
	datac => \button1~combout\,
	datad => \present_state.s11~regout\,
	aclr => GND,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.s12~regout\);

-- Location: LC_X9_Y6_N1
\lcdData[6]~reg0\ : maxv_lcell
-- Equation(s):
-- \lcdData[6]~reg0_regout\ = DFFEAS((((\present_state.s12~regout\ & \lcdData[6]~reg0_regout\)) # (!\Selector7~0\)), GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \present_state.s12~regout\,
	datac => \Selector7~0\,
	datad => \lcdData[6]~reg0_regout\,
	aclr => GND,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdData[6]~reg0_regout\);

-- Location: LC_X9_Y5_N2
\Selector9~0\ : maxv_lcell
-- Equation(s):
-- \Selector9~0_combout\ = (((\present_state.s12~regout\ & \en~reg0_regout\)))

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
	datac => \present_state.s12~regout\,
	datad => \en~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~0_combout\);

-- Location: LC_X9_Y6_N7
\en~reg0\ : maxv_lcell
-- Equation(s):
-- \en~reg0_regout\ = DFFEAS((\present_state.s4~regout\) # ((\Selector9~0_combout\) # ((\Selector9~1\) # (\present_state.s1~regout\))), GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \present_state.s4~regout\,
	datab => \Selector9~0_combout\,
	datac => \Selector9~1\,
	datad => \present_state.s1~regout\,
	aclr => GND,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \en~reg0_regout\);

-- Location: LC_X9_Y6_N8
\lcdData[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \lcdData[3]~reg0_regout\ = DFFEAS((((\lcdData[3]~reg0_regout\ & \present_state.s12~regout\)) # (!\Selector3~0\)) # (!\Selector4~0\), GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \lcdData[3]~reg0_regout\,
	datab => \Selector4~0\,
	datac => \present_state.s12~regout\,
	datad => \Selector3~0\,
	aclr => GND,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdData[3]~reg0_regout\);

-- Location: LC_X9_Y6_N0
\lcdData[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \lcdData[4]~reg0_regout\ = DFFEAS((((\lcdData[4]~reg0_regout\ & \present_state.s12~regout\)) # (!\Selector3~0\)), GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \lcdData[4]~reg0_regout\,
	datac => \present_state.s12~regout\,
	datad => \Selector3~0\,
	aclr => GND,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdData[4]~reg0_regout\);

-- Location: LC_X7_Y5_N2
\Selector0~0\ : maxv_lcell
-- Equation(s):
-- \Selector0~0_combout\ = (((\lcdData[7]~reg0_regout\ & \present_state.s12~regout\)))

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
	datac => \lcdData[7]~reg0_regout\,
	datad => \present_state.s12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector0~0_combout\);

-- Location: LC_X7_Y6_N0
\lcdData[7]~reg0\ : maxv_lcell
-- Equation(s):
-- \lcdData[7]~reg0_regout\ = DFFEAS((\present_state.s9~regout\) # ((\present_state.s11~regout\) # ((\Selector0~0_combout\) # (\present_state.s10~regout\))), GLOBAL(\clk~combout\), VCC, , \Equal1~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \present_state.s9~regout\,
	datab => \present_state.s11~regout\,
	datac => \Selector0~0_combout\,
	datad => \present_state.s10~regout\,
	aclr => GND,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdData[7]~reg0_regout\);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rs~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcdData[6]~reg0_regout\,
	oe => VCC,
	padio => ww_rs);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rw~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_rw);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\en~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \en~reg0_regout\,
	oe => VCC,
	padio => ww_en);

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cs1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_cs1);

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cs2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_cs2);

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcdData[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcdData[0]~reg0_regout\,
	oe => VCC,
	padio => ww_lcdData(0));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcdData[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcdData[1]~reg0_regout\,
	oe => VCC,
	padio => ww_lcdData(1));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcdData[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcdData[1]~reg0_regout\,
	oe => VCC,
	padio => ww_lcdData(2));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcdData[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcdData[3]~reg0_regout\,
	oe => VCC,
	padio => ww_lcdData(3));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcdData[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcdData[4]~reg0_regout\,
	oe => VCC,
	padio => ww_lcdData(4));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcdData[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcdData[4]~reg0_regout\,
	oe => VCC,
	padio => ww_lcdData(5));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcdData[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcdData[6]~reg0_regout\,
	oe => VCC,
	padio => ww_lcdData(6));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcdData[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcdData[7]~reg0_regout\,
	oe => VCC,
	padio => ww_lcdData(7));
END structure;


