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

-- DATE "03/09/2014 21:21:32"

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
	CLK : IN std_logic;
	RST : IN std_logic;
	WR : IN std_logic;
	TX : BUFFER std_logic;
	TXRDY : BUFFER std_logic
	);
END UART;

-- Design Ports Information
-- TX	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- TXRDY	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- RST	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WR	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_WR : std_logic;
SIGNAL ww_TX : std_logic;
SIGNAL ww_TXRDY : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_76\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \RST~combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_78\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_80\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_82\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_84\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_86\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_88\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_90\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_92\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \Equal0~3\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Equal0~2\ : std_logic;
SIGNAL \tx_clk_tick~regout\ : std_logic;
SIGNAL \WR~combout\ : std_logic;
SIGNAL \transmitter|step[0]~0_combout\ : std_logic;
SIGNAL \transmitter|TX~1_combout\ : std_logic;
SIGNAL \transmitter|TXRDY~1_combout\ : std_logic;
SIGNAL \transmitter|TX~regout\ : std_logic;
SIGNAL \transmitter|TXRDY~regout\ : std_logic;
SIGNAL tx_clk_count : std_logic_vector(12 DOWNTO 0);
SIGNAL \transmitter|step\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \transmitter|ALT_INV_TX~regout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
ww_WR <= WR;
TX <= ww_TX;
TXRDY <= ww_TXRDY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\transmitter|ALT_INV_TX~regout\ <= NOT \transmitter|TX~regout\;

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

-- Location: LC_X14_Y4_N5
\Add0~40\ : maxv_lcell
-- Equation(s):
-- \Add0~40_combout\ = (tx_clk_count(1) $ ((\Add0~2\)))
-- \Add0~42\ = CARRY(((!\Add0~2\) # (!tx_clk_count(1))))
-- \Add0~42COUT1_76\ = CARRY(((!\Add0~2\) # (!tx_clk_count(1))))

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
	datab => tx_clk_count(1),
	cin => \Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_76\);

-- Location: LC_X14_Y4_N6
\Add0~50\ : maxv_lcell
-- Equation(s):
-- \Add0~50_combout\ = (tx_clk_count(2) $ ((!(!\Add0~2\ & \Add0~42\) # (\Add0~2\ & \Add0~42COUT1_76\))))
-- \Add0~52\ = CARRY(((tx_clk_count(2) & !\Add0~42\)))
-- \Add0~52COUT1_78\ = CARRY(((tx_clk_count(2) & !\Add0~42COUT1_76\)))

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
	datab => tx_clk_count(2),
	cin => \Add0~2\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_78\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RST~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RST,
	combout => \RST~combout\);

-- Location: LC_X15_Y4_N9
\tx_clk_count[2]\ : maxv_lcell
-- Equation(s):
-- \Equal0~2\ = (!tx_clk_count(3) & (tx_clk_count(4) & (tx_clk_count[2] & !tx_clk_count(5))))
-- tx_clk_count(2) = DFFEAS(\Equal0~2\, GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , \Add0~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => tx_clk_count(3),
	datab => tx_clk_count(4),
	datac => \Add0~50_combout\,
	datad => tx_clk_count(5),
	aclr => \RST~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2\,
	regout => tx_clk_count(2));

-- Location: LC_X14_Y4_N7
\Add0~60\ : maxv_lcell
-- Equation(s):
-- \Add0~60_combout\ = (tx_clk_count(3) $ (((!\Add0~2\ & \Add0~52\) # (\Add0~2\ & \Add0~52COUT1_78\))))
-- \Add0~62\ = CARRY(((!\Add0~52\) # (!tx_clk_count(3))))
-- \Add0~62COUT1_80\ = CARRY(((!\Add0~52COUT1_78\) # (!tx_clk_count(3))))

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
	datab => tx_clk_count(3),
	cin => \Add0~2\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_80\);

-- Location: LC_X14_Y4_N8
\Add0~45\ : maxv_lcell
-- Equation(s):
-- \Add0~45_combout\ = (tx_clk_count(4) $ ((!(!\Add0~2\ & \Add0~62\) # (\Add0~2\ & \Add0~62COUT1_80\))))
-- \Add0~47\ = CARRY(((tx_clk_count(4) & !\Add0~62\)))
-- \Add0~47COUT1_82\ = CARRY(((tx_clk_count(4) & !\Add0~62COUT1_80\)))

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
	datab => tx_clk_count(4),
	cin => \Add0~2\,
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_82\);

-- Location: LC_X16_Y4_N2
\tx_clk_count[4]\ : maxv_lcell
-- Equation(s):
-- tx_clk_count(4) = DFFEAS((((!\Equal0~3\ & \Add0~45_combout\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , , )

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
	datac => \Equal0~3\,
	datad => \Add0~45_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tx_clk_count(4));

-- Location: LC_X14_Y4_N9
\Add0~55\ : maxv_lcell
-- Equation(s):
-- \Add0~55_combout\ = (tx_clk_count(5) $ (((!\Add0~2\ & \Add0~47\) # (\Add0~2\ & \Add0~47COUT1_82\))))
-- \Add0~57\ = CARRY(((!\Add0~47COUT1_82\) # (!tx_clk_count(5))))

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
	datab => tx_clk_count(5),
	cin => \Add0~2\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout => \Add0~57\);

-- Location: LC_X14_Y4_N0
\tx_clk_count[5]\ : maxv_lcell
-- Equation(s):
-- tx_clk_count(5) = DFFEAS((((\Add0~55_combout\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , , )

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
	datad => \Add0~55_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tx_clk_count(5));

-- Location: LC_X15_Y4_N0
\Add0~20\ : maxv_lcell
-- Equation(s):
-- \Add0~20_combout\ = (tx_clk_count(6) $ ((!\Add0~57\)))
-- \Add0~22\ = CARRY(((tx_clk_count(6) & !\Add0~57\)))
-- \Add0~22COUT1_84\ = CARRY(((tx_clk_count(6) & !\Add0~57\)))

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
	datab => tx_clk_count(6),
	cin => \Add0~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_84\);

-- Location: LC_X16_Y4_N9
\tx_clk_count[6]\ : maxv_lcell
-- Equation(s):
-- tx_clk_count(6) = DFFEAS((((!\Equal0~3\ & \Add0~20_combout\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , , )

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
	datac => \Equal0~3\,
	datad => \Add0~20_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tx_clk_count(6));

-- Location: LC_X15_Y4_N1
\Add0~35\ : maxv_lcell
-- Equation(s):
-- \Add0~35_combout\ = (tx_clk_count(7) $ (((!\Add0~57\ & \Add0~22\) # (\Add0~57\ & \Add0~22COUT1_84\))))
-- \Add0~37\ = CARRY(((!\Add0~22\) # (!tx_clk_count(7))))
-- \Add0~37COUT1_86\ = CARRY(((!\Add0~22COUT1_84\) # (!tx_clk_count(7))))

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
	datab => tx_clk_count(7),
	cin => \Add0~57\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_86\);

-- Location: LC_X15_Y4_N7
\tx_clk_count[7]\ : maxv_lcell
-- Equation(s):
-- tx_clk_count(7) = DFFEAS((((\Add0~35_combout\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , , )

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
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tx_clk_count(7));

-- Location: LC_X15_Y4_N2
\Add0~30\ : maxv_lcell
-- Equation(s):
-- \Add0~30_combout\ = (tx_clk_count(8) $ ((!(!\Add0~57\ & \Add0~37\) # (\Add0~57\ & \Add0~37COUT1_86\))))
-- \Add0~32\ = CARRY(((tx_clk_count(8) & !\Add0~37\)))
-- \Add0~32COUT1_88\ = CARRY(((tx_clk_count(8) & !\Add0~37COUT1_86\)))

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
	datab => tx_clk_count(8),
	cin => \Add0~57\,
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_88\);

-- Location: LC_X16_Y4_N4
\tx_clk_count[8]\ : maxv_lcell
-- Equation(s):
-- tx_clk_count(8) = DFFEAS((((\Add0~30_combout\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , , )

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
	datad => \Add0~30_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tx_clk_count(8));

-- Location: LC_X15_Y4_N3
\Add0~25\ : maxv_lcell
-- Equation(s):
-- \Add0~25_combout\ = (tx_clk_count(9) $ (((!\Add0~57\ & \Add0~32\) # (\Add0~57\ & \Add0~32COUT1_88\))))
-- \Add0~27\ = CARRY(((!\Add0~32\) # (!tx_clk_count(9))))
-- \Add0~27COUT1_90\ = CARRY(((!\Add0~32COUT1_88\) # (!tx_clk_count(9))))

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
	datab => tx_clk_count(9),
	cin => \Add0~57\,
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_90\);

-- Location: LC_X16_Y4_N5
\tx_clk_count[9]\ : maxv_lcell
-- Equation(s):
-- \Equal0~1\ = (!tx_clk_count(8) & (!tx_clk_count(7) & (!tx_clk_count[9] & tx_clk_count(6))))
-- tx_clk_count(9) = DFFEAS(\Equal0~1\, GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , \Add0~25_combout\, , , VCC)

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
	dataa => tx_clk_count(8),
	datab => tx_clk_count(7),
	datac => \Add0~25_combout\,
	datad => tx_clk_count(6),
	aclr => \RST~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => tx_clk_count(9));

-- Location: LC_X15_Y4_N4
\Add0~10\ : maxv_lcell
-- Equation(s):
-- \Add0~10_combout\ = tx_clk_count(10) $ ((((!(!\Add0~57\ & \Add0~27\) # (\Add0~57\ & \Add0~27COUT1_90\)))))
-- \Add0~12\ = CARRY((tx_clk_count(10) & ((!\Add0~27COUT1_90\))))

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
	dataa => tx_clk_count(10),
	cin => \Add0~57\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout => \Add0~12\);

-- Location: LC_X16_Y4_N6
\tx_clk_count[10]\ : maxv_lcell
-- Equation(s):
-- tx_clk_count(10) = DFFEAS((((!\Equal0~3\ & \Add0~10_combout\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , , )

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
	datac => \Equal0~3\,
	datad => \Add0~10_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tx_clk_count(10));

-- Location: LC_X15_Y4_N5
\Add0~15\ : maxv_lcell
-- Equation(s):
-- \Add0~15_combout\ = (tx_clk_count(11) $ ((\Add0~12\)))
-- \Add0~17\ = CARRY(((!\Add0~12\) # (!tx_clk_count(11))))
-- \Add0~17COUT1_92\ = CARRY(((!\Add0~12\) # (!tx_clk_count(11))))

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
	datab => tx_clk_count(11),
	cin => \Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_92\);

-- Location: LC_X16_Y4_N8
\tx_clk_count[11]\ : maxv_lcell
-- Equation(s):
-- tx_clk_count(11) = DFFEAS((((\Add0~15_combout\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , , )

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
	datad => \Add0~15_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tx_clk_count(11));

-- Location: LC_X15_Y4_N6
\Add0~5\ : maxv_lcell
-- Equation(s):
-- \Add0~5_combout\ = (((!\Add0~12\ & \Add0~17\) # (\Add0~12\ & \Add0~17COUT1_92\) $ (!tx_clk_count(12))))

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
	datad => tx_clk_count(12),
	cin => \Add0~12\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\);

-- Location: LC_X16_Y4_N7
\tx_clk_count[12]\ : maxv_lcell
-- Equation(s):
-- tx_clk_count(12) = DFFEAS(((!\Equal0~3\ & (\Add0~5_combout\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Equal0~3\,
	datac => \Add0~5_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tx_clk_count(12));

-- Location: LC_X14_Y4_N4
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = ((!tx_clk_count(0)))
-- \Add0~2\ = CARRY(((tx_clk_count(0))))

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
	datab => tx_clk_count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout => \Add0~2\);

-- Location: LC_X16_Y4_N3
\tx_clk_count[0]\ : maxv_lcell
-- Equation(s):
-- \Equal0~0\ = (!tx_clk_count(11) & (tx_clk_count(12) & (tx_clk_count[0] & tx_clk_count(10))))
-- tx_clk_count(0) = DFFEAS(\Equal0~0\, GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , \Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => tx_clk_count(11),
	datab => tx_clk_count(12),
	datac => \Add0~0_combout\,
	datad => tx_clk_count(10),
	aclr => \RST~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => tx_clk_count(0));

-- Location: LC_X14_Y4_N2
\tx_clk_count[1]\ : maxv_lcell
-- Equation(s):
-- tx_clk_count(1) = DFFEAS(GND, GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , \Add0~40_combout\, , , VCC)

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
	datac => \Add0~40_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tx_clk_count(1));

-- Location: LC_X16_Y4_N0
tx_clk_tick : maxv_lcell
-- Equation(s):
-- \Equal0~3\ = (\Equal0~2\ & (tx_clk_count(1) & (\Equal0~1\ & \Equal0~0\)))
-- \tx_clk_tick~regout\ = DFFEAS(\Equal0~3\, GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , , )

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
	dataa => \Equal0~2\,
	datab => tx_clk_count(1),
	datac => \Equal0~1\,
	datad => \Equal0~0\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3\,
	regout => \tx_clk_tick~regout\);

-- Location: LC_X15_Y4_N8
\tx_clk_count[3]\ : maxv_lcell
-- Equation(s):
-- tx_clk_count(3) = DFFEAS((((!\Equal0~3\ & \Add0~60_combout\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , , )

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
	datac => \Equal0~3\,
	datad => \Add0~60_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tx_clk_count(3));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_WR,
	combout => \WR~combout\);

-- Location: LC_X10_Y4_N5
\transmitter|step[0]~0\ : maxv_lcell
-- Equation(s):
-- \transmitter|step[0]~0_combout\ = ((!\transmitter|step\(2) & (\transmitter|step\(3) & \transmitter|step\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|step\(2),
	datac => \transmitter|step\(3),
	datad => \transmitter|step\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \transmitter|step[0]~0_combout\);

-- Location: LC_X10_Y4_N8
\transmitter|TX~1\ : maxv_lcell
-- Equation(s):
-- \transmitter|TX~1_combout\ = (\RST~combout\) # ((!\WR~combout\ & (!\transmitter|step\(0) & \transmitter|step[0]~0_combout\)))

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
	dataa => \WR~combout\,
	datab => \transmitter|step\(0),
	datac => \RST~combout\,
	datad => \transmitter|step[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \transmitter|TX~1_combout\);

-- Location: LC_X10_Y4_N2
\transmitter|step[2]\ : maxv_lcell
-- Equation(s):
-- \transmitter|step\(2) = DFFEAS((\transmitter|step\(2) $ (((\transmitter|step\(0) & \transmitter|step\(1))))), GLOBAL(\tx_clk_tick~regout\), !\transmitter|TX~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tx_clk_tick~regout\,
	datab => \transmitter|step\(2),
	datac => \transmitter|step\(0),
	datad => \transmitter|step\(1),
	aclr => \transmitter|TX~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \transmitter|step\(2));

-- Location: LC_X10_Y4_N9
\transmitter|step[0]\ : maxv_lcell
-- Equation(s):
-- \transmitter|step\(0) = DFFEAS((!\transmitter|step\(0) & (((\transmitter|step\(2)) # (!\transmitter|step\(1))) # (!\transmitter|step\(3)))), GLOBAL(\tx_clk_tick~regout\), !\transmitter|TX~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tx_clk_tick~regout\,
	dataa => \transmitter|step\(3),
	datab => \transmitter|step\(2),
	datac => \transmitter|step\(0),
	datad => \transmitter|step\(1),
	aclr => \transmitter|TX~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \transmitter|step\(0));

-- Location: LC_X10_Y4_N0
\transmitter|TXRDY~1\ : maxv_lcell
-- Equation(s):
-- \transmitter|TXRDY~1_combout\ = (!\WR~combout\ & (!\RST~combout\ & (\transmitter|step[0]~0_combout\ & !\transmitter|step\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WR~combout\,
	datab => \RST~combout\,
	datac => \transmitter|step[0]~0_combout\,
	datad => \transmitter|step\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \transmitter|TXRDY~1_combout\);

-- Location: LC_X10_Y4_N3
\transmitter|step[1]\ : maxv_lcell
-- Equation(s):
-- \transmitter|step\(1) = DFFEAS((\transmitter|step\(0) $ (((\transmitter|step\(1))))), GLOBAL(\tx_clk_tick~regout\), !GLOBAL(\transmitter|TXRDY~1_combout\), , , VCC, GLOBAL(\RST~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tx_clk_tick~regout\,
	datab => \transmitter|step\(0),
	datac => VCC,
	datad => \transmitter|step\(1),
	aclr => \transmitter|TXRDY~1_combout\,
	aload => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \transmitter|step\(1));

-- Location: LC_X10_Y4_N7
\transmitter|step[3]\ : maxv_lcell
-- Equation(s):
-- \transmitter|step\(3) = DFFEAS(B1_step[3] $ (((\transmitter|step\(1) & (\transmitter|step\(2) & \transmitter|step\(0))))), GLOBAL(\tx_clk_tick~regout\), !GLOBAL(\transmitter|TXRDY~1_combout\), , , VCC, GLOBAL(\RST~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "78f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tx_clk_tick~regout\,
	dataa => \transmitter|step\(1),
	datab => \transmitter|step\(2),
	datac => VCC,
	datad => \transmitter|step\(0),
	aclr => \transmitter|TXRDY~1_combout\,
	aload => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \transmitter|step\(3));

-- Location: LC_X10_Y4_N4
\transmitter|TX\ : maxv_lcell
-- Equation(s):
-- \transmitter|TX~regout\ = DFFEAS((\transmitter|step\(1) & ((\transmitter|step\(2) $ (\transmitter|step\(0))))) # (!\transmitter|step\(1) & (((\transmitter|step\(2)) # (!\transmitter|step\(0))) # (!\transmitter|step\(3)))), GLOBAL(\tx_clk_tick~regout\), 
-- !\transmitter|TX~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cdf",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tx_clk_tick~regout\,
	dataa => \transmitter|step\(3),
	datab => \transmitter|step\(2),
	datac => \transmitter|step\(0),
	datad => \transmitter|step\(1),
	aclr => \transmitter|TX~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \transmitter|TX~regout\);

-- Location: LC_X10_Y4_N6
\transmitter|TXRDY\ : maxv_lcell
-- Equation(s):
-- \transmitter|TXRDY~regout\ = DFFEAS((\transmitter|TXRDY~regout\) # ((!\transmitter|step\(0) & ((\transmitter|step[0]~0_combout\)))), GLOBAL(\tx_clk_tick~regout\), !GLOBAL(\transmitter|TXRDY~1_combout\), , , VCC, GLOBAL(\RST~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tx_clk_tick~regout\,
	dataa => \transmitter|TXRDY~regout\,
	datab => \transmitter|step\(0),
	datac => VCC,
	datad => \transmitter|step[0]~0_combout\,
	aclr => \transmitter|TXRDY~1_combout\,
	aload => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \transmitter|TXRDY~regout\);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \transmitter|ALT_INV_TX~regout\,
	oe => VCC,
	padio => ww_TX);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TXRDY~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \transmitter|TXRDY~regout\,
	oe => VCC,
	padio => ww_TXRDY);
END structure;


