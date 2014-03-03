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

-- DATE "03/03/2014 21:07:58"

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

ENTITY 	UART IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	wr : IN std_logic;
	tx : OUT std_logic;
	txrdy : OUT std_logic
	);
END UART;

-- Design Ports Information
-- tx	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- txrdy	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- reset	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wr	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF UART IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_wr : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL ww_txrdy : std_logic;
SIGNAL \Add0~155\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \Add0~157_cout\ : std_logic;
SIGNAL \Add0~150_combout\ : std_logic;
SIGNAL \Add0~152\ : std_logic;
SIGNAL \Add0~152COUT1_186\ : std_logic;
SIGNAL \Add0~145_combout\ : std_logic;
SIGNAL \Equal0~9\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~122COUT1_194\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \Add0~117\ : std_logic;
SIGNAL \Add0~117COUT1_196\ : std_logic;
SIGNAL \Add0~125_combout\ : std_logic;
SIGNAL \Add0~127\ : std_logic;
SIGNAL \Add0~127COUT1_198\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~102COUT1_200\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~92COUT1_202\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~87COUT1_204\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add0~112\ : std_logic;
SIGNAL \Add0~112COUT1_206\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Equal0~6\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~107COUT1_208\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Equal0~5\ : std_logic;
SIGNAL \Equal0~7\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_210\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_212\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~67COUT1_214\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_216\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_218\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_220\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_222\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_224\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_226\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_228\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Equal0~3\ : std_logic;
SIGNAL \Equal0~2\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_230\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_232\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~10\ : std_logic;
SIGNAL \Add0~147\ : std_logic;
SIGNAL \Add0~147COUT1_188\ : std_logic;
SIGNAL \Add0~140_combout\ : std_logic;
SIGNAL \Add0~142\ : std_logic;
SIGNAL \Add0~142COUT1_190\ : std_logic;
SIGNAL \Add0~135_combout\ : std_logic;
SIGNAL \Add0~137\ : std_logic;
SIGNAL \Add0~137COUT1_192\ : std_logic;
SIGNAL \Add0~130_combout\ : std_logic;
SIGNAL \Add0~132\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \Equal0~8\ : std_logic;
SIGNAL \txclk~regout\ : std_logic;
SIGNAL \transmitter|Equal1~0_combout\ : std_logic;
SIGNAL \transmitter|done~1_combout\ : std_logic;
SIGNAL \transmitter|done~regout\ : std_logic;
SIGNAL \wr~combout\ : std_logic;
SIGNAL \transmitter|trigger~combout\ : std_logic;
SIGNAL \transmitter|tx~4_combout\ : std_logic;
SIGNAL \transmitter|parity~4_combout\ : std_logic;
SIGNAL \transmitter|parity~regout\ : std_logic;
SIGNAL \transmitter|tx~5_combout\ : std_logic;
SIGNAL \transmitter|tx~regout\ : std_logic;
SIGNAL \transmitter|txrdy~combout\ : std_logic;
SIGNAL \transmitter|step\ : std_logic_vector(3 DOWNTO 0);
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL \transmitter|ALT_INV_done~regout\ : std_logic;
SIGNAL \transmitter|ALT_INV_tx~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_wr <= wr;
tx <= ww_tx;
txrdy <= ww_txrdy;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\transmitter|ALT_INV_done~regout\ <= NOT \transmitter|done~regout\;
\transmitter|ALT_INV_tx~regout\ <= NOT \transmitter|tx~regout\;

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

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LC_X11_Y6_N0
\count[0]\ : maxv_lcell
-- Equation(s):
-- count(0) = DFFEAS((((!count(0)))), GLOBAL(\clk~combout\), VCC, , , VCC, GLOBAL(\reset~combout\), , )

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
	datac => VCC,
	datad => count(0),
	aclr => GND,
	aload => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LC_X12_Y6_N4
\Add0~157\ : maxv_lcell
-- Equation(s):
-- \Add0~157_cout\ = CARRY((!count(0)))

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
	dataa => count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~155\,
	cout => \Add0~157_cout\);

-- Location: LC_X12_Y6_N5
\Add0~150\ : maxv_lcell
-- Equation(s):
-- \Add0~150_combout\ = (count(1) $ ((\Add0~157_cout\)))
-- \Add0~152\ = CARRY(((!\Add0~157_cout\) # (!count(1))))
-- \Add0~152COUT1_186\ = CARRY(((!\Add0~157_cout\) # (!count(1))))

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
	cin => \Add0~157_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~150_combout\,
	cout0 => \Add0~152\,
	cout1 => \Add0~152COUT1_186\);

-- Location: LC_X12_Y6_N6
\Add0~145\ : maxv_lcell
-- Equation(s):
-- \Add0~145_combout\ = (count(2) $ ((!(!\Add0~157_cout\ & \Add0~152\) # (\Add0~157_cout\ & \Add0~152COUT1_186\))))
-- \Add0~147\ = CARRY(((count(2) & !\Add0~152\)))
-- \Add0~147COUT1_188\ = CARRY(((count(2) & !\Add0~152COUT1_186\)))

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
	cin => \Add0~157_cout\,
	cin0 => \Add0~152\,
	cin1 => \Add0~152COUT1_186\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~145_combout\,
	cout0 => \Add0~147\,
	cout1 => \Add0~147COUT1_188\);

-- Location: LC_X12_Y6_N2
\count[2]\ : maxv_lcell
-- Equation(s):
-- \Equal0~9\ = (count(4) & (!count(1) & (!count[2] & count(3))))
-- count(2) = DFFEAS(\Equal0~9\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , \Add0~145_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count(4),
	datab => count(1),
	datac => \Add0~145_combout\,
	datad => count(3),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~9\,
	regout => count(2));

-- Location: LC_X13_Y6_N0
\Add0~120\ : maxv_lcell
-- Equation(s):
-- \Add0~120_combout\ = (count(6) $ ((!\Add0~132\)))
-- \Add0~122\ = CARRY(((count(6) & !\Add0~132\)))
-- \Add0~122COUT1_194\ = CARRY(((count(6) & !\Add0~132\)))

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
	cin => \Add0~132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~120_combout\,
	cout0 => \Add0~122\,
	cout1 => \Add0~122COUT1_194\);

-- Location: LC_X13_Y6_N1
\Add0~115\ : maxv_lcell
-- Equation(s):
-- \Add0~115_combout\ = count(7) $ (((((!\Add0~132\ & \Add0~122\) # (\Add0~132\ & \Add0~122COUT1_194\)))))
-- \Add0~117\ = CARRY(((!\Add0~122\)) # (!count(7)))
-- \Add0~117COUT1_196\ = CARRY(((!\Add0~122COUT1_194\)) # (!count(7)))

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
	cin => \Add0~132\,
	cin0 => \Add0~122\,
	cin1 => \Add0~122COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~115_combout\,
	cout0 => \Add0~117\,
	cout1 => \Add0~117COUT1_196\);

-- Location: LC_X12_Y6_N1
\count[7]\ : maxv_lcell
-- Equation(s):
-- count(7) = DFFEAS((((!\Equal0~10\ & \Add0~115_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

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
	clk => \clk~combout\,
	datac => \Equal0~10\,
	datad => \Add0~115_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(7));

-- Location: LC_X13_Y6_N2
\Add0~125\ : maxv_lcell
-- Equation(s):
-- \Add0~125_combout\ = (count(8) $ ((!(!\Add0~132\ & \Add0~117\) # (\Add0~132\ & \Add0~117COUT1_196\))))
-- \Add0~127\ = CARRY(((count(8) & !\Add0~117\)))
-- \Add0~127COUT1_198\ = CARRY(((count(8) & !\Add0~117COUT1_196\)))

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
	cin => \Add0~132\,
	cin0 => \Add0~117\,
	cin1 => \Add0~117COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~125_combout\,
	cout0 => \Add0~127\,
	cout1 => \Add0~127COUT1_198\);

-- Location: LC_X12_Y6_N3
\count[8]\ : maxv_lcell
-- Equation(s):
-- \Equal0~8\ = (count(6) & (count(7) & (!count[8] & !count(5))))
-- count(8) = DFFEAS(\Equal0~8\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , \Add0~125_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count(6),
	datab => count(7),
	datac => \Add0~125_combout\,
	datad => count(5),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~8\,
	regout => count(8));

-- Location: LC_X13_Y6_N3
\Add0~100\ : maxv_lcell
-- Equation(s):
-- \Add0~100_combout\ = (count(9) $ (((!\Add0~132\ & \Add0~127\) # (\Add0~132\ & \Add0~127COUT1_198\))))
-- \Add0~102\ = CARRY(((!\Add0~127\) # (!count(9))))
-- \Add0~102COUT1_200\ = CARRY(((!\Add0~127COUT1_198\) # (!count(9))))

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
	cin => \Add0~132\,
	cin0 => \Add0~127\,
	cin1 => \Add0~127COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~100_combout\,
	cout0 => \Add0~102\,
	cout1 => \Add0~102COUT1_200\);

-- Location: LC_X10_Y6_N0
\count[9]\ : maxv_lcell
-- Equation(s):
-- count(9) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , \Add0~100_combout\, , , VCC)

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
	datac => \Add0~100_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(9));

-- Location: LC_X13_Y6_N4
\Add0~95\ : maxv_lcell
-- Equation(s):
-- \Add0~95_combout\ = (count(10) $ ((!(!\Add0~132\ & \Add0~102\) # (\Add0~132\ & \Add0~102COUT1_200\))))
-- \Add0~97\ = CARRY(((count(10) & !\Add0~102COUT1_200\)))

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
	cin => \Add0~132\,
	cin0 => \Add0~102\,
	cin1 => \Add0~102COUT1_200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout => \Add0~97\);

-- Location: LC_X10_Y6_N3
\count[10]\ : maxv_lcell
-- Equation(s):
-- count(10) = DFFEAS((((\Add0~95_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

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
	datad => \Add0~95_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(10));

-- Location: LC_X13_Y6_N5
\Add0~90\ : maxv_lcell
-- Equation(s):
-- \Add0~90_combout\ = count(11) $ ((((\Add0~97\))))
-- \Add0~92\ = CARRY(((!\Add0~97\)) # (!count(11)))
-- \Add0~92COUT1_202\ = CARRY(((!\Add0~97\)) # (!count(11)))

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
	cin => \Add0~97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout0 => \Add0~92\,
	cout1 => \Add0~92COUT1_202\);

-- Location: LC_X12_Y6_N0
\count[11]\ : maxv_lcell
-- Equation(s):
-- count(11) = DFFEAS((((\Add0~90_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

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
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(11));

-- Location: LC_X13_Y6_N6
\Add0~85\ : maxv_lcell
-- Equation(s):
-- \Add0~85_combout\ = count(12) $ ((((!(!\Add0~97\ & \Add0~92\) # (\Add0~97\ & \Add0~92COUT1_202\)))))
-- \Add0~87\ = CARRY((count(12) & ((!\Add0~92\))))
-- \Add0~87COUT1_204\ = CARRY((count(12) & ((!\Add0~92COUT1_202\))))

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
	cin => \Add0~97\,
	cin0 => \Add0~92\,
	cin1 => \Add0~92COUT1_202\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout0 => \Add0~87\,
	cout1 => \Add0~87COUT1_204\);

-- Location: LC_X10_Y6_N2
\count[12]\ : maxv_lcell
-- Equation(s):
-- \Equal0~6\ = (!count(10) & (!count(9) & (!count[12] & !count(11))))
-- count(12) = DFFEAS(\Equal0~6\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , \Add0~85_combout\, , , VCC)

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
	dataa => count(10),
	datab => count(9),
	datac => \Add0~85_combout\,
	datad => count(11),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6\,
	regout => count(12));

-- Location: LC_X13_Y6_N7
\Add0~110\ : maxv_lcell
-- Equation(s):
-- \Add0~110_combout\ = (count(13) $ (((!\Add0~97\ & \Add0~87\) # (\Add0~97\ & \Add0~87COUT1_204\))))
-- \Add0~112\ = CARRY(((!\Add0~87\) # (!count(13))))
-- \Add0~112COUT1_206\ = CARRY(((!\Add0~87COUT1_204\) # (!count(13))))

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
	cin => \Add0~97\,
	cin0 => \Add0~87\,
	cin1 => \Add0~87COUT1_204\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~110_combout\,
	cout0 => \Add0~112\,
	cout1 => \Add0~112COUT1_206\);

-- Location: LC_X9_Y6_N9
\count[13]\ : maxv_lcell
-- Equation(s):
-- count(13) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , \Add0~110_combout\, , , VCC)

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
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(13));

-- Location: LC_X13_Y6_N8
\Add0~105\ : maxv_lcell
-- Equation(s):
-- \Add0~105_combout\ = (count(14) $ ((!(!\Add0~97\ & \Add0~112\) # (\Add0~97\ & \Add0~112COUT1_206\))))
-- \Add0~107\ = CARRY(((count(14) & !\Add0~112\)))
-- \Add0~107COUT1_208\ = CARRY(((count(14) & !\Add0~112COUT1_206\)))

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
	cin => \Add0~97\,
	cin0 => \Add0~112\,
	cin1 => \Add0~112COUT1_206\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~105_combout\,
	cout0 => \Add0~107\,
	cout1 => \Add0~107COUT1_208\);

-- Location: LC_X11_Y6_N6
\count[14]\ : maxv_lcell
-- Equation(s):
-- \Equal0~7\ = (\Equal0~5\ & (!count(13) & (!count[14] & \Equal0~6\)))
-- count(14) = DFFEAS(\Equal0~7\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , \Add0~105_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => \Equal0~5\,
	datab => count(13),
	datac => \Add0~105_combout\,
	datad => \Equal0~6\,
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~7\,
	regout => count(14));

-- Location: LC_X13_Y6_N9
\Add0~80\ : maxv_lcell
-- Equation(s):
-- \Add0~80_combout\ = (count(15) $ (((!\Add0~97\ & \Add0~107\) # (\Add0~97\ & \Add0~107COUT1_208\))))
-- \Add0~82\ = CARRY(((!\Add0~107COUT1_208\) # (!count(15))))

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
	cin => \Add0~97\,
	cin0 => \Add0~107\,
	cin1 => \Add0~107COUT1_208\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout => \Add0~82\);

-- Location: LC_X10_Y6_N6
\count[15]\ : maxv_lcell
-- Equation(s):
-- count(15) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , \Add0~80_combout\, , , VCC)

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
	datac => \Add0~80_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(15));

-- Location: LC_X10_Y6_N5
\count[16]\ : maxv_lcell
-- Equation(s):
-- \Equal0~5\ = (((!count[16] & !count(15))))
-- count(16) = DFFEAS(\Equal0~5\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , \Add0~75_combout\, , , VCC)

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
	clk => \clk~combout\,
	datac => \Add0~75_combout\,
	datad => count(15),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5\,
	regout => count(16));

-- Location: LC_X14_Y6_N0
\Add0~75\ : maxv_lcell
-- Equation(s):
-- \Add0~75_combout\ = (count(16) $ ((!\Add0~82\)))
-- \Add0~77\ = CARRY(((count(16) & !\Add0~82\)))
-- \Add0~77COUT1_210\ = CARRY(((count(16) & !\Add0~82\)))

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
	cin => \Add0~82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_210\);

-- Location: LC_X14_Y6_N1
\Add0~70\ : maxv_lcell
-- Equation(s):
-- \Add0~70_combout\ = (count(17) $ (((!\Add0~82\ & \Add0~77\) # (\Add0~82\ & \Add0~77COUT1_210\))))
-- \Add0~72\ = CARRY(((!\Add0~77\) # (!count(17))))
-- \Add0~72COUT1_212\ = CARRY(((!\Add0~77COUT1_210\) # (!count(17))))

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
	cin => \Add0~82\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_210\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_212\);

-- Location: LC_X9_Y6_N4
\count[17]\ : maxv_lcell
-- Equation(s):
-- count(17) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , \Add0~70_combout\, , , VCC)

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
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(17));

-- Location: LC_X14_Y6_N2
\Add0~65\ : maxv_lcell
-- Equation(s):
-- \Add0~65_combout\ = (count(18) $ ((!(!\Add0~82\ & \Add0~72\) # (\Add0~82\ & \Add0~72COUT1_212\))))
-- \Add0~67\ = CARRY(((count(18) & !\Add0~72\)))
-- \Add0~67COUT1_214\ = CARRY(((count(18) & !\Add0~72COUT1_212\)))

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
	cin => \Add0~82\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_212\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout0 => \Add0~67\,
	cout1 => \Add0~67COUT1_214\);

-- Location: LC_X10_Y6_N8
\count[18]\ : maxv_lcell
-- Equation(s):
-- count(18) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , \Add0~65_combout\, , , VCC)

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
	datac => \Add0~65_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(18));

-- Location: LC_X14_Y6_N3
\Add0~60\ : maxv_lcell
-- Equation(s):
-- \Add0~60_combout\ = (count(19) $ (((!\Add0~82\ & \Add0~67\) # (\Add0~82\ & \Add0~67COUT1_214\))))
-- \Add0~62\ = CARRY(((!\Add0~67\) # (!count(19))))
-- \Add0~62COUT1_216\ = CARRY(((!\Add0~67COUT1_214\) # (!count(19))))

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
	cin => \Add0~82\,
	cin0 => \Add0~67\,
	cin1 => \Add0~67COUT1_214\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_216\);

-- Location: LC_X10_Y6_N9
\count[19]\ : maxv_lcell
-- Equation(s):
-- count(19) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , \Add0~60_combout\, , , VCC)

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
	datac => \Add0~60_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(19));

-- Location: LC_X14_Y6_N4
\Add0~55\ : maxv_lcell
-- Equation(s):
-- \Add0~55_combout\ = (count(20) $ ((!(!\Add0~82\ & \Add0~62\) # (\Add0~82\ & \Add0~62COUT1_216\))))
-- \Add0~57\ = CARRY(((count(20) & !\Add0~62COUT1_216\)))

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
	cin => \Add0~82\,
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_216\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout => \Add0~57\);

-- Location: LC_X10_Y6_N7
\count[20]\ : maxv_lcell
-- Equation(s):
-- \Equal0~3\ = (!count(18) & (!count(17) & (!count[20] & !count(19))))
-- count(20) = DFFEAS(\Equal0~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , \Add0~55_combout\, , , VCC)

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
	dataa => count(18),
	datab => count(17),
	datac => \Add0~55_combout\,
	datad => count(19),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3\,
	regout => count(20));

-- Location: LC_X14_Y6_N5
\Add0~50\ : maxv_lcell
-- Equation(s):
-- \Add0~50_combout\ = count(21) $ ((((\Add0~57\))))
-- \Add0~52\ = CARRY(((!\Add0~57\)) # (!count(21)))
-- \Add0~52COUT1_218\ = CARRY(((!\Add0~57\)) # (!count(21)))

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
	dataa => count(21),
	cin => \Add0~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_218\);

-- Location: LC_X10_Y6_N4
\count[21]\ : maxv_lcell
-- Equation(s):
-- count(21) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , \Add0~50_combout\, , , VCC)

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
	datac => \Add0~50_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(21));

-- Location: LC_X14_Y6_N6
\Add0~45\ : maxv_lcell
-- Equation(s):
-- \Add0~45_combout\ = (count(22) $ ((!(!\Add0~57\ & \Add0~52\) # (\Add0~57\ & \Add0~52COUT1_218\))))
-- \Add0~47\ = CARRY(((count(22) & !\Add0~52\)))
-- \Add0~47COUT1_220\ = CARRY(((count(22) & !\Add0~52COUT1_218\)))

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
	cin => \Add0~57\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_218\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_220\);

-- Location: LC_X15_Y6_N8
\count[22]\ : maxv_lcell
-- Equation(s):
-- count(22) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , \Add0~45_combout\, , , VCC)

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
	datac => \Add0~45_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(22));

-- Location: LC_X14_Y6_N7
\Add0~40\ : maxv_lcell
-- Equation(s):
-- \Add0~40_combout\ = (count(23) $ (((!\Add0~57\ & \Add0~47\) # (\Add0~57\ & \Add0~47COUT1_220\))))
-- \Add0~42\ = CARRY(((!\Add0~47\) # (!count(23))))
-- \Add0~42COUT1_222\ = CARRY(((!\Add0~47COUT1_220\) # (!count(23))))

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
	cin => \Add0~57\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_220\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_222\);

-- Location: LC_X10_Y6_N1
\count[23]\ : maxv_lcell
-- Equation(s):
-- count(23) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , \Add0~40_combout\, , , VCC)

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
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(23));

-- Location: LC_X14_Y6_N8
\Add0~35\ : maxv_lcell
-- Equation(s):
-- \Add0~35_combout\ = count(24) $ ((((!(!\Add0~57\ & \Add0~42\) # (\Add0~57\ & \Add0~42COUT1_222\)))))
-- \Add0~37\ = CARRY((count(24) & ((!\Add0~42\))))
-- \Add0~37COUT1_224\ = CARRY((count(24) & ((!\Add0~42COUT1_222\))))

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
	dataa => count(24),
	cin => \Add0~57\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_222\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_224\);

-- Location: LC_X11_Y6_N4
\count[24]\ : maxv_lcell
-- Equation(s):
-- \Equal0~2\ = (!count(23) & (!count(22) & (!count[24] & !count(21))))
-- count(24) = DFFEAS(\Equal0~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , \Add0~35_combout\, , , VCC)

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
	dataa => count(23),
	datab => count(22),
	datac => \Add0~35_combout\,
	datad => count(21),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2\,
	regout => count(24));

-- Location: LC_X14_Y6_N9
\Add0~30\ : maxv_lcell
-- Equation(s):
-- \Add0~30_combout\ = (count(25) $ (((!\Add0~57\ & \Add0~37\) # (\Add0~57\ & \Add0~37COUT1_224\))))
-- \Add0~32\ = CARRY(((!\Add0~37COUT1_224\) # (!count(25))))

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
	cin => \Add0~57\,
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_224\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout => \Add0~32\);

-- Location: LC_X16_Y6_N8
\count[25]\ : maxv_lcell
-- Equation(s):
-- count(25) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , \Add0~30_combout\, , , VCC)

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
	datac => \Add0~30_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(25));

-- Location: LC_X15_Y6_N0
\Add0~25\ : maxv_lcell
-- Equation(s):
-- \Add0~25_combout\ = count(26) $ ((((!\Add0~32\))))
-- \Add0~27\ = CARRY((count(26) & ((!\Add0~32\))))
-- \Add0~27COUT1_226\ = CARRY((count(26) & ((!\Add0~32\))))

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
	cin => \Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_226\);

-- Location: LC_X16_Y6_N3
\count[26]\ : maxv_lcell
-- Equation(s):
-- count(26) = DFFEAS((((\Add0~25_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

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
	datad => \Add0~25_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(26));

-- Location: LC_X15_Y6_N1
\Add0~20\ : maxv_lcell
-- Equation(s):
-- \Add0~20_combout\ = (count(27) $ (((!\Add0~32\ & \Add0~27\) # (\Add0~32\ & \Add0~27COUT1_226\))))
-- \Add0~22\ = CARRY(((!\Add0~27\) # (!count(27))))
-- \Add0~22COUT1_228\ = CARRY(((!\Add0~27COUT1_226\) # (!count(27))))

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
	cin => \Add0~32\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_226\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_228\);

-- Location: LC_X15_Y6_N7
\count[27]\ : maxv_lcell
-- Equation(s):
-- count(27) = DFFEAS((((\Add0~20_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

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
	datad => \Add0~20_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(27));

-- Location: LC_X16_Y6_N1
\count[28]\ : maxv_lcell
-- Equation(s):
-- \Equal0~1\ = (!count(25) & (!count(27) & (!count[28] & !count(26))))
-- count(28) = DFFEAS(\Equal0~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , \Add0~15_combout\, , , VCC)

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
	dataa => count(25),
	datab => count(27),
	datac => \Add0~15_combout\,
	datad => count(26),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => count(28));

-- Location: LC_X15_Y6_N2
\Add0~15\ : maxv_lcell
-- Equation(s):
-- \Add0~15_combout\ = (count(28) $ ((!(!\Add0~32\ & \Add0~22\) # (\Add0~32\ & \Add0~22COUT1_228\))))
-- \Add0~17\ = CARRY(((count(28) & !\Add0~22\)))
-- \Add0~17COUT1_230\ = CARRY(((count(28) & !\Add0~22COUT1_228\)))

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
	cin => \Add0~32\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_228\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_230\);

-- Location: LC_X15_Y6_N3
\Add0~10\ : maxv_lcell
-- Equation(s):
-- \Add0~10_combout\ = count(29) $ (((((!\Add0~32\ & \Add0~17\) # (\Add0~32\ & \Add0~17COUT1_230\)))))
-- \Add0~12\ = CARRY(((!\Add0~17\)) # (!count(29)))
-- \Add0~12COUT1_232\ = CARRY(((!\Add0~17COUT1_230\)) # (!count(29)))

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
	dataa => count(29),
	cin => \Add0~32\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_230\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_232\);

-- Location: LC_X16_Y6_N7
\count[29]\ : maxv_lcell
-- Equation(s):
-- count(29) = DFFEAS((((\Add0~10_combout\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

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
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(29));

-- Location: LC_X15_Y6_N4
\Add0~5\ : maxv_lcell
-- Equation(s):
-- \Add0~5_combout\ = count(30) $ ((((!(!\Add0~32\ & \Add0~12\) # (\Add0~32\ & \Add0~12COUT1_232\)))))
-- \Add0~7\ = CARRY((count(30) & ((!\Add0~12COUT1_232\))))

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
	dataa => count(30),
	cin => \Add0~32\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_232\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout => \Add0~7\);

-- Location: LC_X15_Y6_N6
\count[30]\ : maxv_lcell
-- Equation(s):
-- \Equal0~0\ = (!count(29) & (count(31) & (!count[30] & !count(0))))
-- count(30) = DFFEAS(\Equal0~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , \Add0~5_combout\, , , VCC)

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
	dataa => count(29),
	datab => count(31),
	datac => \Add0~5_combout\,
	datad => count(0),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => count(30));

-- Location: LC_X15_Y6_N5
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = ((\Add0~7\ $ (!count(31))))

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
	datad => count(31),
	cin => \Add0~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\);

-- Location: LC_X15_Y6_N9
\count[31]\ : maxv_lcell
-- Equation(s):
-- count(31) = DFFEAS((!\Add0~0_combout\), GLOBAL(\clk~combout\), VCC, , , VCC, GLOBAL(\reset~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5555",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~0_combout\,
	datac => VCC,
	aclr => GND,
	aload => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(31));

-- Location: LC_X11_Y6_N8
\Equal0~4\ : maxv_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1\ & (\Equal0~3\ & (\Equal0~2\ & \Equal0~0\)))

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
	dataa => \Equal0~1\,
	datab => \Equal0~3\,
	datac => \Equal0~2\,
	datad => \Equal0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X11_Y6_N9
txclk : maxv_lcell
-- Equation(s):
-- \Equal0~10\ = (\Equal0~8\ & (\Equal0~9\ & (\Equal0~7\ & \Equal0~4_combout\)))
-- \txclk~regout\ = DFFEAS(\Equal0~10\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

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
	clk => \clk~combout\,
	dataa => \Equal0~8\,
	datab => \Equal0~9\,
	datac => \Equal0~7\,
	datad => \Equal0~4_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~10\,
	regout => \txclk~regout\);

-- Location: LC_X11_Y6_N7
\count[1]\ : maxv_lcell
-- Equation(s):
-- count(1) = DFFEAS(((\Add0~150_combout\ & ((!\Equal0~10\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

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
	datab => \Add0~150_combout\,
	datad => \Equal0~10\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LC_X12_Y6_N7
\Add0~140\ : maxv_lcell
-- Equation(s):
-- \Add0~140_combout\ = (count(3) $ (((!\Add0~157_cout\ & \Add0~147\) # (\Add0~157_cout\ & \Add0~147COUT1_188\))))
-- \Add0~142\ = CARRY(((!\Add0~147\) # (!count(3))))
-- \Add0~142COUT1_190\ = CARRY(((!\Add0~147COUT1_188\) # (!count(3))))

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
	cin => \Add0~157_cout\,
	cin0 => \Add0~147\,
	cin1 => \Add0~147COUT1_188\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~140_combout\,
	cout0 => \Add0~142\,
	cout1 => \Add0~142COUT1_190\);

-- Location: LC_X11_Y6_N2
\count[3]\ : maxv_lcell
-- Equation(s):
-- count(3) = DFFEAS((\Add0~140_combout\ & (((!\Equal0~10\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

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
	dataa => \Add0~140_combout\,
	datad => \Equal0~10\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LC_X12_Y6_N8
\Add0~135\ : maxv_lcell
-- Equation(s):
-- \Add0~135_combout\ = (count(4) $ ((!(!\Add0~157_cout\ & \Add0~142\) # (\Add0~157_cout\ & \Add0~142COUT1_190\))))
-- \Add0~137\ = CARRY(((count(4) & !\Add0~142\)))
-- \Add0~137COUT1_192\ = CARRY(((count(4) & !\Add0~142COUT1_190\)))

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
	cin => \Add0~157_cout\,
	cin0 => \Add0~142\,
	cin1 => \Add0~142COUT1_190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~135_combout\,
	cout0 => \Add0~137\,
	cout1 => \Add0~137COUT1_192\);

-- Location: LC_X11_Y6_N3
\count[4]\ : maxv_lcell
-- Equation(s):
-- count(4) = DFFEAS((((\Add0~135_combout\ & !\Equal0~10\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

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
	datac => \Add0~135_combout\,
	datad => \Equal0~10\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4));

-- Location: LC_X12_Y6_N9
\Add0~130\ : maxv_lcell
-- Equation(s):
-- \Add0~130_combout\ = count(5) $ (((((!\Add0~157_cout\ & \Add0~137\) # (\Add0~157_cout\ & \Add0~137COUT1_192\)))))
-- \Add0~132\ = CARRY(((!\Add0~137COUT1_192\)) # (!count(5)))

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
	cin => \Add0~157_cout\,
	cin0 => \Add0~137\,
	cin1 => \Add0~137COUT1_192\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~130_combout\,
	cout => \Add0~132\);

-- Location: LC_X11_Y6_N5
\count[5]\ : maxv_lcell
-- Equation(s):
-- count(5) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , \Add0~130_combout\, , , VCC)

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
	datac => \Add0~130_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(5));

-- Location: LC_X11_Y6_N1
\count[6]\ : maxv_lcell
-- Equation(s):
-- count(6) = DFFEAS((((\Add0~120_combout\ & !\Equal0~10\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

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
	datac => \Add0~120_combout\,
	datad => \Equal0~10\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(6));

-- Location: LC_X1_Y9_N3
\transmitter|Equal1~0\ : maxv_lcell
-- Equation(s):
-- \transmitter|Equal1~0_combout\ = (\transmitter|step\(3) & (!\transmitter|step\(0) & (!\transmitter|step\(2) & \transmitter|step\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|step\(3),
	datab => \transmitter|step\(0),
	datac => \transmitter|step\(2),
	datad => \transmitter|step\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \transmitter|Equal1~0_combout\);

-- Location: LC_X2_Y9_N2
\transmitter|done~1\ : maxv_lcell
-- Equation(s):
-- \transmitter|done~1_combout\ = ((\transmitter|trigger~combout\ & ((!\reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|trigger~combout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \transmitter|done~1_combout\);

-- Location: LC_X1_Y9_N2
\transmitter|done\ : maxv_lcell
-- Equation(s):
-- \transmitter|done~regout\ = DFFEAS(((\transmitter|done~regout\) # ((\transmitter|Equal1~0_combout\))), GLOBAL(\txclk~regout\), !\transmitter|done~1_combout\, , , VCC, GLOBAL(\reset~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \txclk~regout\,
	datab => \transmitter|done~regout\,
	datac => VCC,
	datad => \transmitter|Equal1~0_combout\,
	aclr => \transmitter|done~1_combout\,
	aload => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \transmitter|done~regout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr,
	combout => \wr~combout\);

-- Location: LC_X2_Y9_N9
\transmitter|trigger\ : maxv_lcell
-- Equation(s):
-- \transmitter|trigger~combout\ = ((\transmitter|done~regout\ & ((\transmitter|trigger~combout\) # (!\wr~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|done~regout\,
	datac => \wr~combout\,
	datad => \transmitter|trigger~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \transmitter|trigger~combout\);

-- Location: LC_X2_Y9_N6
\transmitter|tx~4\ : maxv_lcell
-- Equation(s):
-- \transmitter|tx~4_combout\ = ((\transmitter|trigger~combout\) # ((\reset~combout\)))

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
	datab => \transmitter|trigger~combout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \transmitter|tx~4_combout\);

-- Location: LC_X1_Y9_N7
\transmitter|step[0]\ : maxv_lcell
-- Equation(s):
-- \transmitter|step\(0) = DFFEAS((!\transmitter|step\(0) & ((\transmitter|step\(2)) # ((!\transmitter|step\(1)) # (!\transmitter|step\(3))))), GLOBAL(\txclk~regout\), !GLOBAL(\transmitter|tx~4_combout\), , !\transmitter|done~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2333",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \txclk~regout\,
	dataa => \transmitter|step\(2),
	datab => \transmitter|step\(0),
	datac => \transmitter|step\(3),
	datad => \transmitter|step\(1),
	aclr => \transmitter|tx~4_combout\,
	ena => \transmitter|ALT_INV_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \transmitter|step\(0));

-- Location: LC_X1_Y9_N4
\transmitter|step[1]\ : maxv_lcell
-- Equation(s):
-- \transmitter|step\(1) = DFFEAS((\transmitter|step\(0) & (((!\transmitter|step\(1))))) # (!\transmitter|step\(0) & (\transmitter|step\(1) & ((\transmitter|step\(2)) # (!\transmitter|step\(3))))), GLOBAL(\txclk~regout\), !GLOBAL(\transmitter|tx~4_combout\), 
-- , !\transmitter|done~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "45aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \txclk~regout\,
	dataa => \transmitter|step\(0),
	datab => \transmitter|step\(2),
	datac => \transmitter|step\(3),
	datad => \transmitter|step\(1),
	aclr => \transmitter|tx~4_combout\,
	ena => \transmitter|ALT_INV_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \transmitter|step\(1));

-- Location: LC_X1_Y9_N5
\transmitter|step[2]\ : maxv_lcell
-- Equation(s):
-- \transmitter|step\(2) = DFFEAS(\transmitter|step\(2) $ (((\transmitter|step\(1) & (\transmitter|step\(0))))), GLOBAL(\txclk~regout\), !GLOBAL(\transmitter|tx~4_combout\), , !\transmitter|done~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7878",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \txclk~regout\,
	dataa => \transmitter|step\(1),
	datab => \transmitter|step\(0),
	datac => \transmitter|step\(2),
	aclr => \transmitter|tx~4_combout\,
	ena => \transmitter|ALT_INV_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \transmitter|step\(2));

-- Location: LC_X1_Y9_N6
\transmitter|step[3]\ : maxv_lcell
-- Equation(s):
-- \transmitter|step\(3) = DFFEAS((\transmitter|step\(2) & (\transmitter|step\(3) $ (((\transmitter|step\(0) & \transmitter|step\(1)))))) # (!\transmitter|step\(2) & (\transmitter|step\(3) & ((\transmitter|step\(0)) # (!\transmitter|step\(1))))), 
-- GLOBAL(\txclk~regout\), !GLOBAL(\transmitter|tx~4_combout\), , !\transmitter|done~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "68f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \txclk~regout\,
	dataa => \transmitter|step\(2),
	datab => \transmitter|step\(0),
	datac => \transmitter|step\(3),
	datad => \transmitter|step\(1),
	aclr => \transmitter|tx~4_combout\,
	ena => \transmitter|ALT_INV_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \transmitter|step\(3));

-- Location: LC_X1_Y9_N0
\transmitter|parity~4\ : maxv_lcell
-- Equation(s):
-- \transmitter|parity~4_combout\ = (\transmitter|step\(2) & ((\transmitter|step\(0)) # ((!\transmitter|step\(1))))) # (!\transmitter|step\(2) & (\transmitter|step\(1) $ (((\transmitter|step\(0)) # (\transmitter|step\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f9e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|step\(2),
	datab => \transmitter|step\(0),
	datac => \transmitter|step\(1),
	datad => \transmitter|step\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \transmitter|parity~4_combout\);

-- Location: LC_X1_Y9_N1
\transmitter|parity\ : maxv_lcell
-- Equation(s):
-- \transmitter|parity~regout\ = DFFEAS((\transmitter|step\(1) & (\transmitter|parity~regout\ $ (((\transmitter|parity~4_combout\))))) # (!\transmitter|step\(1) & (\transmitter|parity~regout\ & ((\transmitter|parity~4_combout\)))), GLOBAL(\txclk~regout\), 
-- !GLOBAL(\transmitter|tx~4_combout\), , !\transmitter|done~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \txclk~regout\,
	dataa => \transmitter|step\(1),
	datab => \transmitter|parity~regout\,
	datad => \transmitter|parity~4_combout\,
	aclr => \transmitter|tx~4_combout\,
	ena => \transmitter|ALT_INV_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \transmitter|parity~regout\);

-- Location: LC_X1_Y9_N8
\transmitter|tx~5\ : maxv_lcell
-- Equation(s):
-- \transmitter|tx~5_combout\ = (!\transmitter|step\(2) & ((\transmitter|step\(1)) # ((\transmitter|parity~regout\ & \transmitter|step\(3)))))

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
	dataa => \transmitter|step\(2),
	datab => \transmitter|parity~regout\,
	datac => \transmitter|step\(3),
	datad => \transmitter|step\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \transmitter|tx~5_combout\);

-- Location: LC_X1_Y9_N9
\transmitter|tx\ : maxv_lcell
-- Equation(s):
-- \transmitter|tx~regout\ = DFFEAS((\transmitter|step\(1) & ((\transmitter|step\(0) $ (!\transmitter|tx~5_combout\)))) # (!\transmitter|step\(1) & (((!\transmitter|tx~5_combout\) # (!\transmitter|step\(0))) # (!\transmitter|step\(3)))), 
-- GLOBAL(\txclk~regout\), !GLOBAL(\transmitter|tx~4_combout\), , !\transmitter|done~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d33f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \txclk~regout\,
	dataa => \transmitter|step\(3),
	datab => \transmitter|step\(1),
	datac => \transmitter|step\(0),
	datad => \transmitter|tx~5_combout\,
	aclr => \transmitter|tx~4_combout\,
	ena => \transmitter|ALT_INV_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \transmitter|tx~regout\);

-- Location: LC_X2_Y9_N7
\transmitter|txrdy\ : maxv_lcell
-- Equation(s):
-- \transmitter|txrdy~combout\ = ((\transmitter|done~regout\ & (\wr~combout\)) # (!\transmitter|done~regout\ & ((\transmitter|txrdy~combout\))))

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
	dataa => \wr~combout\,
	datac => \transmitter|txrdy~combout\,
	datad => \transmitter|done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \transmitter|txrdy~combout\);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tx~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \transmitter|ALT_INV_tx~regout\,
	oe => VCC,
	padio => ww_tx);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\txrdy~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \transmitter|txrdy~combout\,
	oe => VCC,
	padio => ww_txrdy);
END structure;


