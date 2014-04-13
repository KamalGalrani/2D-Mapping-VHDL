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

-- DATE "04/05/2014 16:39:15"

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

ENTITY 	ADC IS
    PORT (
	CLK : IN std_logic;
	TX : BUFFER std_logic;
	ADC : IN std_logic_vector(7 DOWNTO 0);
	THR : IN std_logic_vector(7 DOWNTO 0);
	BIN : BUFFER std_logic;
	DATA : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END ADC;

-- Design Ports Information
-- TX	=>  Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- BIN	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- DATA[0]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- DATA[1]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- DATA[2]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- DATA[3]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- DATA[4]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- DATA[5]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- DATA[6]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- DATA[7]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ADC[0]	=>  Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC[1]	=>  Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC[2]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC[3]	=>  Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC[4]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC[5]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC[6]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC[7]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- THR[0]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- THR[1]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- THR[2]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- THR[3]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- THR[4]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- THR[5]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- THR[6]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- THR[7]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ADC IS
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
SIGNAL ww_TX : std_logic;
SIGNAL ww_ADC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_THR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_BIN : std_logic;
SIGNAL ww_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \send_data|Add0~42\ : std_logic;
SIGNAL \send_data|Add0~42COUT1_76\ : std_logic;
SIGNAL \send_data|Add0~50_combout\ : std_logic;
SIGNAL \send_data|Add0~52\ : std_logic;
SIGNAL \send_data|Add0~52COUT1_78\ : std_logic;
SIGNAL \send_data|Add0~60_combout\ : std_logic;
SIGNAL \send_data|Add0~62\ : std_logic;
SIGNAL \send_data|Add0~62COUT1_80\ : std_logic;
SIGNAL \send_data|Add0~45_combout\ : std_logic;
SIGNAL \send_data|Add0~47\ : std_logic;
SIGNAL \send_data|Add0~47COUT1_82\ : std_logic;
SIGNAL \send_data|Add0~55_combout\ : std_logic;
SIGNAL \send_data|Add0~57\ : std_logic;
SIGNAL \send_data|Add0~20_combout\ : std_logic;
SIGNAL \send_data|Add0~22\ : std_logic;
SIGNAL \send_data|Add0~22COUT1_84\ : std_logic;
SIGNAL \send_data|Add0~35_combout\ : std_logic;
SIGNAL \send_data|Add0~37\ : std_logic;
SIGNAL \send_data|Add0~37COUT1_86\ : std_logic;
SIGNAL \send_data|Add0~30_combout\ : std_logic;
SIGNAL \send_data|Add0~32\ : std_logic;
SIGNAL \send_data|Add0~32COUT1_88\ : std_logic;
SIGNAL \send_data|Add0~25_combout\ : std_logic;
SIGNAL \send_data|Add0~27\ : std_logic;
SIGNAL \send_data|Add0~27COUT1_90\ : std_logic;
SIGNAL \send_data|Add0~12\ : std_logic;
SIGNAL \send_data|Add0~15_combout\ : std_logic;
SIGNAL \send_data|Add0~0_combout\ : std_logic;
SIGNAL \send_data|Add0~17\ : std_logic;
SIGNAL \send_data|Add0~17COUT1_92\ : std_logic;
SIGNAL \send_data|Add0~5_combout\ : std_logic;
SIGNAL \send_data|Equal0~0\ : std_logic;
SIGNAL \send_data|Equal0~2\ : std_logic;
SIGNAL \send_data|Equal0~1\ : std_logic;
SIGNAL \send_data|Equal0~3\ : std_logic;
SIGNAL \send_data|Add0~10_combout\ : std_logic;
SIGNAL \send_data|Add0~2\ : std_logic;
SIGNAL \send_data|Add0~40_combout\ : std_logic;
SIGNAL \send_data|tx_clk_tick~regout\ : std_logic;
SIGNAL \send_data|transmitter|ready~regout\ : std_logic;
SIGNAL \trigger~regout\ : std_logic;
SIGNAL \wr~regout\ : std_logic;
SIGNAL \send_data|transmitter|trigger~combout\ : std_logic;
SIGNAL \send_data|transmitter|process_1~1_combout\ : std_logic;
SIGNAL \send_data|transmitter|process_1~0_combout\ : std_logic;
SIGNAL \send_data|transmitter|TX~0_combout\ : std_logic;
SIGNAL \send_data|transmitter|Mux0~0_combout\ : std_logic;
SIGNAL \send_data|transmitter|Mux0~1_combout\ : std_logic;
SIGNAL \send_data|transmitter|TX~1_combout\ : std_logic;
SIGNAL \send_data|transmitter|Mux0~2_combout\ : std_logic;
SIGNAL \send_data|transmitter|Mux0~3_combout\ : std_logic;
SIGNAL \send_data|transmitter|TX~2_combout\ : std_logic;
SIGNAL \send_data|transmitter|TX~regout\ : std_logic;
SIGNAL \err[0]~2\ : std_logic;
SIGNAL \err[0]~2COUT1_49\ : std_logic;
SIGNAL \err[1]~7\ : std_logic;
SIGNAL \err[1]~7COUT1_51\ : std_logic;
SIGNAL \err[2]~12\ : std_logic;
SIGNAL \err[2]~12COUT1_53\ : std_logic;
SIGNAL \err[3]~15_combout\ : std_logic;
SIGNAL \err[2]~10_combout\ : std_logic;
SIGNAL \err[0]~0_combout\ : std_logic;
SIGNAL \err[1]~5_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \err[3]~17\ : std_logic;
SIGNAL \err[3]~17COUT1_55\ : std_logic;
SIGNAL \err[4]~20_combout\ : std_logic;
SIGNAL \err[4]~22\ : std_logic;
SIGNAL \err[5]~27\ : std_logic;
SIGNAL \err[5]~27COUT1_57\ : std_logic;
SIGNAL \err[6]~32\ : std_logic;
SIGNAL \err[6]~32COUT1_59\ : std_logic;
SIGNAL \err[7]~35_combout\ : std_logic;
SIGNAL \err[6]~30_combout\ : std_logic;
SIGNAL \err[5]~25_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \err[7]~37\ : std_logic;
SIGNAL \err[7]~37COUT1_61\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \BIN~reg0_regout\ : std_logic;
SIGNAL \send_data|transmitter|latch\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \send_data|transmitter|step\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ADC~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \THR~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \send_data|tx_clk_count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \send_data|transmitter|ALT_INV_TX~regout\ : std_logic;

BEGIN

ww_CLK <= CLK;
TX <= ww_TX;
ww_ADC <= ADC;
ww_THR <= THR;
BIN <= ww_BIN;
DATA <= ww_DATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\send_data|transmitter|ALT_INV_TX~regout\ <= NOT \send_data|transmitter|TX~regout\;

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

-- Location: LC_X14_Y3_N5
\send_data|Add0~40\ : maxv_lcell
-- Equation(s):
-- \send_data|Add0~40_combout\ = (\send_data|tx_clk_count\(1) $ ((\send_data|Add0~2\)))
-- \send_data|Add0~42\ = CARRY(((!\send_data|Add0~2\) # (!\send_data|tx_clk_count\(1))))
-- \send_data|Add0~42COUT1_76\ = CARRY(((!\send_data|Add0~2\) # (!\send_data|tx_clk_count\(1))))

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
	datab => \send_data|tx_clk_count\(1),
	cin => \send_data|Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|Add0~40_combout\,
	cout0 => \send_data|Add0~42\,
	cout1 => \send_data|Add0~42COUT1_76\);

-- Location: LC_X14_Y3_N6
\send_data|Add0~50\ : maxv_lcell
-- Equation(s):
-- \send_data|Add0~50_combout\ = (\send_data|tx_clk_count\(2) $ ((!(!\send_data|Add0~2\ & \send_data|Add0~42\) # (\send_data|Add0~2\ & \send_data|Add0~42COUT1_76\))))
-- \send_data|Add0~52\ = CARRY(((\send_data|tx_clk_count\(2) & !\send_data|Add0~42\)))
-- \send_data|Add0~52COUT1_78\ = CARRY(((\send_data|tx_clk_count\(2) & !\send_data|Add0~42COUT1_76\)))

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
	datab => \send_data|tx_clk_count\(2),
	cin => \send_data|Add0~2\,
	cin0 => \send_data|Add0~42\,
	cin1 => \send_data|Add0~42COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|Add0~50_combout\,
	cout0 => \send_data|Add0~52\,
	cout1 => \send_data|Add0~52COUT1_78\);

-- Location: LC_X13_Y3_N7
\send_data|tx_clk_count[2]\ : maxv_lcell
-- Equation(s):
-- \send_data|Equal0~2\ = (\send_data|tx_clk_count\(4) & (!\send_data|tx_clk_count\(5) & (B1_tx_clk_count[2] & !\send_data|tx_clk_count\(3))))
-- \send_data|tx_clk_count\(2) = DFFEAS(\send_data|Equal0~2\, GLOBAL(\CLK~combout\), VCC, , , \send_data|Add0~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \send_data|tx_clk_count\(4),
	datab => \send_data|tx_clk_count\(5),
	datac => \send_data|Add0~50_combout\,
	datad => \send_data|tx_clk_count\(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|Equal0~2\,
	regout => \send_data|tx_clk_count\(2));

-- Location: LC_X14_Y3_N7
\send_data|Add0~60\ : maxv_lcell
-- Equation(s):
-- \send_data|Add0~60_combout\ = (\send_data|tx_clk_count\(3) $ (((!\send_data|Add0~2\ & \send_data|Add0~52\) # (\send_data|Add0~2\ & \send_data|Add0~52COUT1_78\))))
-- \send_data|Add0~62\ = CARRY(((!\send_data|Add0~52\) # (!\send_data|tx_clk_count\(3))))
-- \send_data|Add0~62COUT1_80\ = CARRY(((!\send_data|Add0~52COUT1_78\) # (!\send_data|tx_clk_count\(3))))

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
	datab => \send_data|tx_clk_count\(3),
	cin => \send_data|Add0~2\,
	cin0 => \send_data|Add0~52\,
	cin1 => \send_data|Add0~52COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|Add0~60_combout\,
	cout0 => \send_data|Add0~62\,
	cout1 => \send_data|Add0~62COUT1_80\);

-- Location: LC_X13_Y3_N3
\send_data|tx_clk_count[3]\ : maxv_lcell
-- Equation(s):
-- \send_data|tx_clk_count\(3) = DFFEAS((((!\send_data|Equal0~3\ & \send_data|Add0~60_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	datac => \send_data|Equal0~3\,
	datad => \send_data|Add0~60_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \send_data|tx_clk_count\(3));

-- Location: LC_X14_Y3_N8
\send_data|Add0~45\ : maxv_lcell
-- Equation(s):
-- \send_data|Add0~45_combout\ = (\send_data|tx_clk_count\(4) $ ((!(!\send_data|Add0~2\ & \send_data|Add0~62\) # (\send_data|Add0~2\ & \send_data|Add0~62COUT1_80\))))
-- \send_data|Add0~47\ = CARRY(((\send_data|tx_clk_count\(4) & !\send_data|Add0~62\)))
-- \send_data|Add0~47COUT1_82\ = CARRY(((\send_data|tx_clk_count\(4) & !\send_data|Add0~62COUT1_80\)))

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
	datab => \send_data|tx_clk_count\(4),
	cin => \send_data|Add0~2\,
	cin0 => \send_data|Add0~62\,
	cin1 => \send_data|Add0~62COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|Add0~45_combout\,
	cout0 => \send_data|Add0~47\,
	cout1 => \send_data|Add0~47COUT1_82\);

-- Location: LC_X13_Y3_N2
\send_data|tx_clk_count[4]\ : maxv_lcell
-- Equation(s):
-- \send_data|tx_clk_count\(4) = DFFEAS((((!\send_data|Equal0~3\ & \send_data|Add0~45_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	datac => \send_data|Equal0~3\,
	datad => \send_data|Add0~45_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \send_data|tx_clk_count\(4));

-- Location: LC_X14_Y3_N9
\send_data|Add0~55\ : maxv_lcell
-- Equation(s):
-- \send_data|Add0~55_combout\ = (\send_data|tx_clk_count\(5) $ (((!\send_data|Add0~2\ & \send_data|Add0~47\) # (\send_data|Add0~2\ & \send_data|Add0~47COUT1_82\))))
-- \send_data|Add0~57\ = CARRY(((!\send_data|Add0~47COUT1_82\) # (!\send_data|tx_clk_count\(5))))

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
	datab => \send_data|tx_clk_count\(5),
	cin => \send_data|Add0~2\,
	cin0 => \send_data|Add0~47\,
	cin1 => \send_data|Add0~47COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|Add0~55_combout\,
	cout => \send_data|Add0~57\);

-- Location: LC_X13_Y3_N6
\send_data|tx_clk_count[5]\ : maxv_lcell
-- Equation(s):
-- \send_data|tx_clk_count\(5) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \send_data|Add0~55_combout\, , , VCC)

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
	datac => \send_data|Add0~55_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \send_data|tx_clk_count\(5));

-- Location: LC_X15_Y3_N0
\send_data|Add0~20\ : maxv_lcell
-- Equation(s):
-- \send_data|Add0~20_combout\ = (\send_data|tx_clk_count\(6) $ ((!\send_data|Add0~57\)))
-- \send_data|Add0~22\ = CARRY(((\send_data|tx_clk_count\(6) & !\send_data|Add0~57\)))
-- \send_data|Add0~22COUT1_84\ = CARRY(((\send_data|tx_clk_count\(6) & !\send_data|Add0~57\)))

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
	datab => \send_data|tx_clk_count\(6),
	cin => \send_data|Add0~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|Add0~20_combout\,
	cout0 => \send_data|Add0~22\,
	cout1 => \send_data|Add0~22COUT1_84\);

-- Location: LC_X14_Y3_N2
\send_data|tx_clk_count[6]\ : maxv_lcell
-- Equation(s):
-- \send_data|tx_clk_count\(6) = DFFEAS((((\send_data|Add0~20_combout\ & !\send_data|Equal0~3\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	datac => \send_data|Add0~20_combout\,
	datad => \send_data|Equal0~3\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \send_data|tx_clk_count\(6));

-- Location: LC_X15_Y3_N1
\send_data|Add0~35\ : maxv_lcell
-- Equation(s):
-- \send_data|Add0~35_combout\ = (\send_data|tx_clk_count\(7) $ (((!\send_data|Add0~57\ & \send_data|Add0~22\) # (\send_data|Add0~57\ & \send_data|Add0~22COUT1_84\))))
-- \send_data|Add0~37\ = CARRY(((!\send_data|Add0~22\) # (!\send_data|tx_clk_count\(7))))
-- \send_data|Add0~37COUT1_86\ = CARRY(((!\send_data|Add0~22COUT1_84\) # (!\send_data|tx_clk_count\(7))))

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
	datab => \send_data|tx_clk_count\(7),
	cin => \send_data|Add0~57\,
	cin0 => \send_data|Add0~22\,
	cin1 => \send_data|Add0~22COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|Add0~35_combout\,
	cout0 => \send_data|Add0~37\,
	cout1 => \send_data|Add0~37COUT1_86\);

-- Location: LC_X15_Y3_N9
\send_data|tx_clk_count[7]\ : maxv_lcell
-- Equation(s):
-- \send_data|tx_clk_count\(7) = DFFEAS((((\send_data|Add0~35_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	datad => \send_data|Add0~35_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \send_data|tx_clk_count\(7));

-- Location: LC_X15_Y3_N2
\send_data|Add0~30\ : maxv_lcell
-- Equation(s):
-- \send_data|Add0~30_combout\ = \send_data|tx_clk_count\(8) $ ((((!(!\send_data|Add0~57\ & \send_data|Add0~37\) # (\send_data|Add0~57\ & \send_data|Add0~37COUT1_86\)))))
-- \send_data|Add0~32\ = CARRY((\send_data|tx_clk_count\(8) & ((!\send_data|Add0~37\))))
-- \send_data|Add0~32COUT1_88\ = CARRY((\send_data|tx_clk_count\(8) & ((!\send_data|Add0~37COUT1_86\))))

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
	dataa => \send_data|tx_clk_count\(8),
	cin => \send_data|Add0~57\,
	cin0 => \send_data|Add0~37\,
	cin1 => \send_data|Add0~37COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|Add0~30_combout\,
	cout0 => \send_data|Add0~32\,
	cout1 => \send_data|Add0~32COUT1_88\);

-- Location: LC_X15_Y3_N8
\send_data|tx_clk_count[8]\ : maxv_lcell
-- Equation(s):
-- \send_data|tx_clk_count\(8) = DFFEAS((((\send_data|Add0~30_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	datad => \send_data|Add0~30_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \send_data|tx_clk_count\(8));

-- Location: LC_X15_Y3_N3
\send_data|Add0~25\ : maxv_lcell
-- Equation(s):
-- \send_data|Add0~25_combout\ = \send_data|tx_clk_count\(9) $ (((((!\send_data|Add0~57\ & \send_data|Add0~32\) # (\send_data|Add0~57\ & \send_data|Add0~32COUT1_88\)))))
-- \send_data|Add0~27\ = CARRY(((!\send_data|Add0~32\)) # (!\send_data|tx_clk_count\(9)))
-- \send_data|Add0~27COUT1_90\ = CARRY(((!\send_data|Add0~32COUT1_88\)) # (!\send_data|tx_clk_count\(9)))

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
	dataa => \send_data|tx_clk_count\(9),
	cin => \send_data|Add0~57\,
	cin0 => \send_data|Add0~32\,
	cin1 => \send_data|Add0~32COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|Add0~25_combout\,
	cout0 => \send_data|Add0~27\,
	cout1 => \send_data|Add0~27COUT1_90\);

-- Location: LC_X14_Y3_N1
\send_data|tx_clk_count[9]\ : maxv_lcell
-- Equation(s):
-- \send_data|Equal0~1\ = (\send_data|tx_clk_count\(6) & (!\send_data|tx_clk_count\(7) & (!B1_tx_clk_count[9] & !\send_data|tx_clk_count\(8))))
-- \send_data|tx_clk_count\(9) = DFFEAS(\send_data|Equal0~1\, GLOBAL(\CLK~combout\), VCC, , , \send_data|Add0~25_combout\, , , VCC)

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
	dataa => \send_data|tx_clk_count\(6),
	datab => \send_data|tx_clk_count\(7),
	datac => \send_data|Add0~25_combout\,
	datad => \send_data|tx_clk_count\(8),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|Equal0~1\,
	regout => \send_data|tx_clk_count\(9));

-- Location: LC_X15_Y3_N4
\send_data|Add0~10\ : maxv_lcell
-- Equation(s):
-- \send_data|Add0~10_combout\ = (\send_data|tx_clk_count\(10) $ ((!(!\send_data|Add0~57\ & \send_data|Add0~27\) # (\send_data|Add0~57\ & \send_data|Add0~27COUT1_90\))))
-- \send_data|Add0~12\ = CARRY(((\send_data|tx_clk_count\(10) & !\send_data|Add0~27COUT1_90\)))

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
	datab => \send_data|tx_clk_count\(10),
	cin => \send_data|Add0~57\,
	cin0 => \send_data|Add0~27\,
	cin1 => \send_data|Add0~27COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|Add0~10_combout\,
	cout => \send_data|Add0~12\);

-- Location: LC_X15_Y3_N5
\send_data|Add0~15\ : maxv_lcell
-- Equation(s):
-- \send_data|Add0~15_combout\ = (\send_data|tx_clk_count\(11) $ ((\send_data|Add0~12\)))
-- \send_data|Add0~17\ = CARRY(((!\send_data|Add0~12\) # (!\send_data|tx_clk_count\(11))))
-- \send_data|Add0~17COUT1_92\ = CARRY(((!\send_data|Add0~12\) # (!\send_data|tx_clk_count\(11))))

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
	datab => \send_data|tx_clk_count\(11),
	cin => \send_data|Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|Add0~15_combout\,
	cout0 => \send_data|Add0~17\,
	cout1 => \send_data|Add0~17COUT1_92\);

-- Location: LC_X15_Y3_N7
\send_data|tx_clk_count[11]\ : maxv_lcell
-- Equation(s):
-- \send_data|tx_clk_count\(11) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \send_data|Add0~15_combout\, , , VCC)

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
	datac => \send_data|Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \send_data|tx_clk_count\(11));

-- Location: LC_X14_Y3_N4
\send_data|Add0~0\ : maxv_lcell
-- Equation(s):
-- \send_data|Add0~0_combout\ = (!\send_data|tx_clk_count\(0))
-- \send_data|Add0~2\ = CARRY((\send_data|tx_clk_count\(0)))

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
	dataa => \send_data|tx_clk_count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|Add0~0_combout\,
	cout => \send_data|Add0~2\);

-- Location: LC_X15_Y3_N6
\send_data|Add0~5\ : maxv_lcell
-- Equation(s):
-- \send_data|Add0~5_combout\ = (((!\send_data|Add0~12\ & \send_data|Add0~17\) # (\send_data|Add0~12\ & \send_data|Add0~17COUT1_92\) $ (!\send_data|tx_clk_count\(12))))

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
	datad => \send_data|tx_clk_count\(12),
	cin => \send_data|Add0~12\,
	cin0 => \send_data|Add0~17\,
	cin1 => \send_data|Add0~17COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|Add0~5_combout\);

-- Location: LC_X14_Y3_N3
\send_data|tx_clk_count[12]\ : maxv_lcell
-- Equation(s):
-- \send_data|tx_clk_count\(12) = DFFEAS((((\send_data|Add0~5_combout\ & !\send_data|Equal0~3\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	datac => \send_data|Add0~5_combout\,
	datad => \send_data|Equal0~3\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \send_data|tx_clk_count\(12));

-- Location: LC_X13_Y3_N9
\send_data|tx_clk_count[0]\ : maxv_lcell
-- Equation(s):
-- \send_data|Equal0~0\ = (\send_data|tx_clk_count\(10) & (!\send_data|tx_clk_count\(11) & (B1_tx_clk_count[0] & \send_data|tx_clk_count\(12))))
-- \send_data|tx_clk_count\(0) = DFFEAS(\send_data|Equal0~0\, GLOBAL(\CLK~combout\), VCC, , , \send_data|Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \send_data|tx_clk_count\(10),
	datab => \send_data|tx_clk_count\(11),
	datac => \send_data|Add0~0_combout\,
	datad => \send_data|tx_clk_count\(12),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|Equal0~0\,
	regout => \send_data|tx_clk_count\(0));

-- Location: LC_X13_Y3_N0
\send_data|tx_clk_tick\ : maxv_lcell
-- Equation(s):
-- \send_data|Equal0~3\ = (\send_data|tx_clk_count\(1) & (\send_data|Equal0~0\ & (\send_data|Equal0~2\ & \send_data|Equal0~1\)))
-- \send_data|tx_clk_tick~regout\ = DFFEAS(\send_data|Equal0~3\, GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	dataa => \send_data|tx_clk_count\(1),
	datab => \send_data|Equal0~0\,
	datac => \send_data|Equal0~2\,
	datad => \send_data|Equal0~1\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|Equal0~3\,
	regout => \send_data|tx_clk_tick~regout\);

-- Location: LC_X13_Y3_N8
\send_data|tx_clk_count[10]\ : maxv_lcell
-- Equation(s):
-- \send_data|tx_clk_count\(10) = DFFEAS((((!\send_data|Equal0~3\ & \send_data|Add0~10_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	datac => \send_data|Equal0~3\,
	datad => \send_data|Add0~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \send_data|tx_clk_count\(10));

-- Location: LC_X14_Y3_N0
\send_data|tx_clk_count[1]\ : maxv_lcell
-- Equation(s):
-- \send_data|tx_clk_count\(1) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \send_data|Add0~40_combout\, , , VCC)

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
	datac => \send_data|Add0~40_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \send_data|tx_clk_count\(1));

-- Location: LC_X10_Y7_N9
\send_data|transmitter|ready\ : maxv_lcell
-- Equation(s):
-- \send_data|transmitter|ready~regout\ = DFFEAS((((\send_data|transmitter|ready~regout\) # (\send_data|transmitter|process_1~0_combout\))), GLOBAL(\send_data|tx_clk_tick~regout\), !GLOBAL(\send_data|transmitter|process_1~1_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \send_data|tx_clk_tick~regout\,
	datac => \send_data|transmitter|ready~regout\,
	datad => \send_data|transmitter|process_1~0_combout\,
	aclr => \send_data|transmitter|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \send_data|transmitter|ready~regout\);

-- Location: LC_X10_Y7_N8
trigger : maxv_lcell
-- Equation(s):
-- \trigger~regout\ = DFFEAS((!\trigger~regout\ & (((\send_data|transmitter|ready~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	dataa => \trigger~regout\,
	datad => \send_data|transmitter|ready~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \trigger~regout\);

-- Location: LC_X10_Y7_N0
wr : maxv_lcell
-- Equation(s):
-- \wr~regout\ = DFFEAS((((!\trigger~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	clk => \CLK~combout\,
	datad => \trigger~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wr~regout\);

-- Location: LC_X10_Y7_N2
\send_data|transmitter|trigger\ : maxv_lcell
-- Equation(s):
-- \send_data|transmitter|trigger~combout\ = ((\send_data|transmitter|ready~regout\ & ((\wr~regout\) # (\send_data|transmitter|trigger~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_data|transmitter|ready~regout\,
	datac => \wr~regout\,
	datad => \send_data|transmitter|trigger~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|transmitter|trigger~combout\);

-- Location: LC_X10_Y7_N4
\send_data|transmitter|process_1~1\ : maxv_lcell
-- Equation(s):
-- \send_data|transmitter|process_1~1_combout\ = ((\send_data|transmitter|trigger~combout\ & (!\wr~regout\ & \send_data|transmitter|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_data|transmitter|trigger~combout\,
	datac => \wr~regout\,
	datad => \send_data|transmitter|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|transmitter|process_1~1_combout\);

-- Location: LC_X9_Y7_N1
\send_data|transmitter|step[1]\ : maxv_lcell
-- Equation(s):
-- \send_data|transmitter|step\(1) = DFFEAS((\send_data|transmitter|step\(1) $ (((\send_data|transmitter|step\(0))))), GLOBAL(\send_data|tx_clk_tick~regout\), !GLOBAL(\send_data|transmitter|process_1~1_combout\), , , , , , )

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
	clk => \send_data|tx_clk_tick~regout\,
	datab => \send_data|transmitter|step\(1),
	datad => \send_data|transmitter|step\(0),
	aclr => \send_data|transmitter|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \send_data|transmitter|step\(1));

-- Location: LC_X10_Y7_N7
\send_data|transmitter|step[3]\ : maxv_lcell
-- Equation(s):
-- \send_data|transmitter|step\(3) = DFFEAS(\send_data|transmitter|step\(3) $ (((\send_data|transmitter|step\(0) & (\send_data|transmitter|step\(1) & \send_data|transmitter|step\(2))))), GLOBAL(\send_data|tx_clk_tick~regout\), 
-- !GLOBAL(\send_data|transmitter|process_1~1_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \send_data|tx_clk_tick~regout\,
	dataa => \send_data|transmitter|step\(0),
	datab => \send_data|transmitter|step\(3),
	datac => \send_data|transmitter|step\(1),
	datad => \send_data|transmitter|step\(2),
	aclr => \send_data|transmitter|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \send_data|transmitter|step\(3));

-- Location: LC_X9_Y7_N2
\send_data|transmitter|step[0]\ : maxv_lcell
-- Equation(s):
-- \send_data|transmitter|step\(0) = DFFEAS((!\send_data|transmitter|step\(0) & (((\send_data|transmitter|step\(2)) # (!\send_data|transmitter|step\(3))) # (!\send_data|transmitter|step\(1)))), GLOBAL(\send_data|tx_clk_tick~regout\), 
-- !GLOBAL(\send_data|transmitter|process_1~1_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5155",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \send_data|tx_clk_tick~regout\,
	dataa => \send_data|transmitter|step\(0),
	datab => \send_data|transmitter|step\(1),
	datac => \send_data|transmitter|step\(2),
	datad => \send_data|transmitter|step\(3),
	aclr => \send_data|transmitter|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \send_data|transmitter|step\(0));

-- Location: LC_X10_Y7_N6
\send_data|transmitter|step[2]\ : maxv_lcell
-- Equation(s):
-- \send_data|transmitter|step\(2) = DFFEAS(\send_data|transmitter|step\(2) $ (((\send_data|transmitter|step\(0) & (\send_data|transmitter|step\(1))))), GLOBAL(\send_data|tx_clk_tick~regout\), !GLOBAL(\send_data|transmitter|process_1~1_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6c6c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \send_data|tx_clk_tick~regout\,
	dataa => \send_data|transmitter|step\(0),
	datab => \send_data|transmitter|step\(2),
	datac => \send_data|transmitter|step\(1),
	aclr => \send_data|transmitter|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \send_data|transmitter|step\(2));

-- Location: LC_X10_Y7_N3
\send_data|transmitter|process_1~0\ : maxv_lcell
-- Equation(s):
-- \send_data|transmitter|process_1~0_combout\ = (!\send_data|transmitter|step\(2) & (\send_data|transmitter|step\(3) & (\send_data|transmitter|step\(1) & !\send_data|transmitter|step\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_data|transmitter|step\(2),
	datab => \send_data|transmitter|step\(3),
	datac => \send_data|transmitter|step\(1),
	datad => \send_data|transmitter|step\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|transmitter|process_1~0_combout\);

-- Location: LC_X9_Y7_N0
\send_data|transmitter|TX~0\ : maxv_lcell
-- Equation(s):
-- \send_data|transmitter|TX~0_combout\ = (\send_data|transmitter|step\(2) $ (((\send_data|transmitter|step\(0)) # (\send_data|transmitter|step\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_data|transmitter|step\(0),
	datac => \send_data|transmitter|step\(2),
	datad => \send_data|transmitter|step\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|transmitter|TX~0_combout\);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC(5),
	combout => \ADC~combout\(5));

-- Location: LC_X10_Y7_N1
\send_data|transmitter|latch[5]\ : maxv_lcell
-- Equation(s):
-- \send_data|transmitter|latch\(5) = (GLOBAL(\send_data|transmitter|process_1~1_combout\) & (\ADC~combout\(5))) # (!GLOBAL(\send_data|transmitter|process_1~1_combout\) & (((\send_data|transmitter|latch\(5)))))

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
	dataa => \ADC~combout\(5),
	datab => \send_data|transmitter|process_1~1_combout\,
	datad => \send_data|transmitter|latch\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|transmitter|latch\(5));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC(6),
	combout => \ADC~combout\(6));

-- Location: LC_X8_Y7_N3
\send_data|transmitter|latch[6]\ : maxv_lcell
-- Equation(s):
-- \send_data|transmitter|latch\(6) = ((GLOBAL(\send_data|transmitter|process_1~1_combout\) & (\ADC~combout\(6))) # (!GLOBAL(\send_data|transmitter|process_1~1_combout\) & ((\send_data|transmitter|latch\(6)))))

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
	dataa => \ADC~combout\(6),
	datac => \send_data|transmitter|process_1~1_combout\,
	datad => \send_data|transmitter|latch\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|transmitter|latch\(6));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC(4),
	combout => \ADC~combout\(4));

-- Location: LC_X8_Y7_N6
\send_data|transmitter|latch[4]\ : maxv_lcell
-- Equation(s):
-- \send_data|transmitter|latch\(4) = ((GLOBAL(\send_data|transmitter|process_1~1_combout\) & (\ADC~combout\(4))) # (!GLOBAL(\send_data|transmitter|process_1~1_combout\) & ((\send_data|transmitter|latch\(4)))))

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
	datab => \ADC~combout\(4),
	datac => \send_data|transmitter|latch\(4),
	datad => \send_data|transmitter|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|transmitter|latch\(4));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC(7),
	combout => \ADC~combout\(7));

-- Location: LC_X8_Y7_N5
\send_data|transmitter|latch[7]\ : maxv_lcell
-- Equation(s):
-- \send_data|transmitter|latch\(7) = ((GLOBAL(\send_data|transmitter|process_1~1_combout\) & (\ADC~combout\(7))) # (!GLOBAL(\send_data|transmitter|process_1~1_combout\) & ((\send_data|transmitter|latch\(7)))))

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
	datab => \ADC~combout\(7),
	datac => \send_data|transmitter|latch\(7),
	datad => \send_data|transmitter|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|transmitter|latch\(7));

-- Location: LC_X9_Y7_N3
\send_data|transmitter|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \send_data|transmitter|Mux0~0_combout\ = (\send_data|transmitter|step\(0) & ((\send_data|transmitter|step\(1)) # ((\send_data|transmitter|latch\(4))))) # (!\send_data|transmitter|step\(0) & (!\send_data|transmitter|step\(1) & 
-- ((\send_data|transmitter|latch\(7)))))

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
	dataa => \send_data|transmitter|step\(0),
	datab => \send_data|transmitter|step\(1),
	datac => \send_data|transmitter|latch\(4),
	datad => \send_data|transmitter|latch\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|transmitter|Mux0~0_combout\);

-- Location: LC_X9_Y7_N4
\send_data|transmitter|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \send_data|transmitter|Mux0~1_combout\ = (\send_data|transmitter|step\(1) & ((\send_data|transmitter|Mux0~0_combout\ & ((\send_data|transmitter|latch\(6)))) # (!\send_data|transmitter|Mux0~0_combout\ & (\send_data|transmitter|latch\(5))))) # 
-- (!\send_data|transmitter|step\(1) & (((\send_data|transmitter|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_data|transmitter|latch\(5),
	datab => \send_data|transmitter|step\(1),
	datac => \send_data|transmitter|latch\(6),
	datad => \send_data|transmitter|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|transmitter|Mux0~1_combout\);

-- Location: LC_X9_Y7_N5
\send_data|transmitter|TX~1\ : maxv_lcell
-- Equation(s):
-- \send_data|transmitter|TX~1_combout\ = (\send_data|transmitter|step\(1) & (((\send_data|transmitter|step\(2))))) # (!\send_data|transmitter|step\(1) & ((\send_data|transmitter|step\(2) & (\send_data|transmitter|step\(0))) # 
-- (!\send_data|transmitter|step\(2) & ((\send_data|transmitter|step\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_data|transmitter|step\(0),
	datab => \send_data|transmitter|step\(1),
	datac => \send_data|transmitter|step\(2),
	datad => \send_data|transmitter|step\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|transmitter|TX~1_combout\);

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC(1),
	combout => \ADC~combout\(1));

-- Location: LC_X8_Y7_N1
\send_data|transmitter|latch[1]\ : maxv_lcell
-- Equation(s):
-- \send_data|transmitter|latch\(1) = ((GLOBAL(\send_data|transmitter|process_1~1_combout\) & ((\ADC~combout\(1)))) # (!GLOBAL(\send_data|transmitter|process_1~1_combout\) & (\send_data|transmitter|latch\(1))))

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
	datab => \send_data|transmitter|latch\(1),
	datac => \ADC~combout\(1),
	datad => \send_data|transmitter|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|transmitter|latch\(1));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC(2),
	combout => \ADC~combout\(2));

-- Location: LC_X8_Y7_N4
\send_data|transmitter|latch[2]\ : maxv_lcell
-- Equation(s):
-- \send_data|transmitter|latch\(2) = ((GLOBAL(\send_data|transmitter|process_1~1_combout\) & (\ADC~combout\(2))) # (!GLOBAL(\send_data|transmitter|process_1~1_combout\) & ((\send_data|transmitter|latch\(2)))))

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
	datab => \ADC~combout\(2),
	datac => \send_data|transmitter|latch\(2),
	datad => \send_data|transmitter|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|transmitter|latch\(2));

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC(3),
	combout => \ADC~combout\(3));

-- Location: LC_X8_Y7_N7
\send_data|transmitter|latch[3]\ : maxv_lcell
-- Equation(s):
-- \send_data|transmitter|latch\(3) = ((GLOBAL(\send_data|transmitter|process_1~1_combout\) & (\ADC~combout\(3))) # (!GLOBAL(\send_data|transmitter|process_1~1_combout\) & ((\send_data|transmitter|latch\(3)))))

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
	datab => \ADC~combout\(3),
	datac => \send_data|transmitter|latch\(3),
	datad => \send_data|transmitter|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|transmitter|latch\(3));

-- Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC(0),
	combout => \ADC~combout\(0));

-- Location: LC_X8_Y7_N9
\send_data|transmitter|latch[0]\ : maxv_lcell
-- Equation(s):
-- \send_data|transmitter|latch\(0) = ((GLOBAL(\send_data|transmitter|process_1~1_combout\) & ((\ADC~combout\(0)))) # (!GLOBAL(\send_data|transmitter|process_1~1_combout\) & (\send_data|transmitter|latch\(0))))

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
	datab => \send_data|transmitter|latch\(0),
	datac => \ADC~combout\(0),
	datad => \send_data|transmitter|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|transmitter|latch\(0));

-- Location: LC_X9_Y7_N6
\send_data|transmitter|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \send_data|transmitter|Mux0~2_combout\ = (\send_data|transmitter|step\(0) & (((\send_data|transmitter|latch\(0)) # (\send_data|transmitter|step\(1))))) # (!\send_data|transmitter|step\(0) & (\send_data|transmitter|latch\(3) & 
-- ((!\send_data|transmitter|step\(1)))))

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
	dataa => \send_data|transmitter|step\(0),
	datab => \send_data|transmitter|latch\(3),
	datac => \send_data|transmitter|latch\(0),
	datad => \send_data|transmitter|step\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|transmitter|Mux0~2_combout\);

-- Location: LC_X9_Y7_N7
\send_data|transmitter|Mux0~3\ : maxv_lcell
-- Equation(s):
-- \send_data|transmitter|Mux0~3_combout\ = (\send_data|transmitter|step\(1) & ((\send_data|transmitter|Mux0~2_combout\ & ((\send_data|transmitter|latch\(2)))) # (!\send_data|transmitter|Mux0~2_combout\ & (\send_data|transmitter|latch\(1))))) # 
-- (!\send_data|transmitter|step\(1) & (((\send_data|transmitter|Mux0~2_combout\))))

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
	dataa => \send_data|transmitter|latch\(1),
	datab => \send_data|transmitter|latch\(2),
	datac => \send_data|transmitter|step\(1),
	datad => \send_data|transmitter|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|transmitter|Mux0~3_combout\);

-- Location: LC_X9_Y7_N8
\send_data|transmitter|TX~2\ : maxv_lcell
-- Equation(s):
-- \send_data|transmitter|TX~2_combout\ = ((\send_data|transmitter|TX~1_combout\) # ((\send_data|transmitter|TX~0_combout\ & \send_data|transmitter|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_data|transmitter|TX~0_combout\,
	datac => \send_data|transmitter|TX~1_combout\,
	datad => \send_data|transmitter|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send_data|transmitter|TX~2_combout\);

-- Location: LC_X9_Y7_N9
\send_data|transmitter|TX\ : maxv_lcell
-- Equation(s):
-- \send_data|transmitter|TX~regout\ = DFFEAS((!\send_data|transmitter|process_1~0_combout\ & (((!\send_data|transmitter|TX~0_combout\ & !\send_data|transmitter|Mux0~1_combout\)) # (!\send_data|transmitter|TX~2_combout\))), 
-- GLOBAL(\send_data|tx_clk_tick~regout\), !GLOBAL(\send_data|transmitter|process_1~1_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0155",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \send_data|tx_clk_tick~regout\,
	dataa => \send_data|transmitter|process_1~0_combout\,
	datab => \send_data|transmitter|TX~0_combout\,
	datac => \send_data|transmitter|Mux0~1_combout\,
	datad => \send_data|transmitter|TX~2_combout\,
	aclr => \send_data|transmitter|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \send_data|transmitter|TX~regout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\THR[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_THR(3),
	combout => \THR~combout\(3));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\THR[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_THR(2),
	combout => \THR~combout\(2));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\THR[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_THR(1),
	combout => \THR~combout\(1));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\THR[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_THR(0),
	combout => \THR~combout\(0));

-- Location: LC_X8_Y4_N0
\err[0]~0\ : maxv_lcell
-- Equation(s):
-- \err[0]~0_combout\ = \THR~combout\(0) $ ((\ADC~combout\(0)))
-- \err[0]~2\ = CARRY(((\ADC~combout\(0))) # (!\THR~combout\(0)))
-- \err[0]~2COUT1_49\ = CARRY(((\ADC~combout\(0))) # (!\THR~combout\(0)))

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
	dataa => \THR~combout\(0),
	datab => \ADC~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \err[0]~0_combout\,
	cout0 => \err[0]~2\,
	cout1 => \err[0]~2COUT1_49\);

-- Location: LC_X8_Y4_N1
\err[1]~5\ : maxv_lcell
-- Equation(s):
-- \err[1]~5_combout\ = \THR~combout\(1) $ (\ADC~combout\(1) $ ((!\err[0]~2\)))
-- \err[1]~7\ = CARRY((\THR~combout\(1) & ((!\err[0]~2\) # (!\ADC~combout\(1)))) # (!\THR~combout\(1) & (!\ADC~combout\(1) & !\err[0]~2\)))
-- \err[1]~7COUT1_51\ = CARRY((\THR~combout\(1) & ((!\err[0]~2COUT1_49\) # (!\ADC~combout\(1)))) # (!\THR~combout\(1) & (!\ADC~combout\(1) & !\err[0]~2COUT1_49\)))

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
	dataa => \THR~combout\(1),
	datab => \ADC~combout\(1),
	cin0 => \err[0]~2\,
	cin1 => \err[0]~2COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \err[1]~5_combout\,
	cout0 => \err[1]~7\,
	cout1 => \err[1]~7COUT1_51\);

-- Location: LC_X8_Y4_N2
\err[2]~10\ : maxv_lcell
-- Equation(s):
-- \err[2]~10_combout\ = \THR~combout\(2) $ (\ADC~combout\(2) $ ((\err[1]~7\)))
-- \err[2]~12\ = CARRY((\THR~combout\(2) & (\ADC~combout\(2) & !\err[1]~7\)) # (!\THR~combout\(2) & ((\ADC~combout\(2)) # (!\err[1]~7\))))
-- \err[2]~12COUT1_53\ = CARRY((\THR~combout\(2) & (\ADC~combout\(2) & !\err[1]~7COUT1_51\)) # (!\THR~combout\(2) & ((\ADC~combout\(2)) # (!\err[1]~7COUT1_51\))))

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
	dataa => \THR~combout\(2),
	datab => \ADC~combout\(2),
	cin0 => \err[1]~7\,
	cin1 => \err[1]~7COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \err[2]~10_combout\,
	cout0 => \err[2]~12\,
	cout1 => \err[2]~12COUT1_53\);

-- Location: LC_X8_Y4_N3
\err[3]~15\ : maxv_lcell
-- Equation(s):
-- \err[3]~15_combout\ = \ADC~combout\(3) $ (\THR~combout\(3) $ ((!\err[2]~12\)))
-- \err[3]~17\ = CARRY((\ADC~combout\(3) & (\THR~combout\(3) & !\err[2]~12\)) # (!\ADC~combout\(3) & ((\THR~combout\(3)) # (!\err[2]~12\))))
-- \err[3]~17COUT1_55\ = CARRY((\ADC~combout\(3) & (\THR~combout\(3) & !\err[2]~12COUT1_53\)) # (!\ADC~combout\(3) & ((\THR~combout\(3)) # (!\err[2]~12COUT1_53\))))

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
	dataa => \ADC~combout\(3),
	datab => \THR~combout\(3),
	cin0 => \err[2]~12\,
	cin1 => \err[2]~12COUT1_53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \err[3]~15_combout\,
	cout0 => \err[3]~17\,
	cout1 => \err[3]~17COUT1_55\);

-- Location: LC_X7_Y4_N2
\LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = (\err[3]~15_combout\) # ((\err[2]~10_combout\) # ((\err[0]~0_combout\) # (\err[1]~5_combout\)))

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
	dataa => \err[3]~15_combout\,
	datab => \err[2]~10_combout\,
	datac => \err[0]~0_combout\,
	datad => \err[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\THR[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_THR(4),
	combout => \THR~combout\(4));

-- Location: LC_X8_Y4_N4
\err[4]~20\ : maxv_lcell
-- Equation(s):
-- \err[4]~20_combout\ = \THR~combout\(4) $ (\ADC~combout\(4) $ ((\err[3]~17\)))
-- \err[4]~22\ = CARRY((\THR~combout\(4) & (\ADC~combout\(4) & !\err[3]~17COUT1_55\)) # (!\THR~combout\(4) & ((\ADC~combout\(4)) # (!\err[3]~17COUT1_55\))))

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
	dataa => \THR~combout\(4),
	datab => \ADC~combout\(4),
	cin0 => \err[3]~17\,
	cin1 => \err[3]~17COUT1_55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \err[4]~20_combout\,
	cout => \err[4]~22\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\THR[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_THR(7),
	combout => \THR~combout\(7));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\THR[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_THR(6),
	combout => \THR~combout\(6));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\THR[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_THR(5),
	combout => \THR~combout\(5));

-- Location: LC_X8_Y4_N5
\err[5]~25\ : maxv_lcell
-- Equation(s):
-- \err[5]~25_combout\ = \THR~combout\(5) $ (\ADC~combout\(5) $ ((!\err[4]~22\)))
-- \err[5]~27\ = CARRY((\THR~combout\(5) & ((!\err[4]~22\) # (!\ADC~combout\(5)))) # (!\THR~combout\(5) & (!\ADC~combout\(5) & !\err[4]~22\)))
-- \err[5]~27COUT1_57\ = CARRY((\THR~combout\(5) & ((!\err[4]~22\) # (!\ADC~combout\(5)))) # (!\THR~combout\(5) & (!\ADC~combout\(5) & !\err[4]~22\)))

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
	dataa => \THR~combout\(5),
	datab => \ADC~combout\(5),
	cin => \err[4]~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \err[5]~25_combout\,
	cout0 => \err[5]~27\,
	cout1 => \err[5]~27COUT1_57\);

-- Location: LC_X8_Y4_N6
\err[6]~30\ : maxv_lcell
-- Equation(s):
-- \err[6]~30_combout\ = \THR~combout\(6) $ (\ADC~combout\(6) $ (((!\err[4]~22\ & \err[5]~27\) # (\err[4]~22\ & \err[5]~27COUT1_57\))))
-- \err[6]~32\ = CARRY((\THR~combout\(6) & (\ADC~combout\(6) & !\err[5]~27\)) # (!\THR~combout\(6) & ((\ADC~combout\(6)) # (!\err[5]~27\))))
-- \err[6]~32COUT1_59\ = CARRY((\THR~combout\(6) & (\ADC~combout\(6) & !\err[5]~27COUT1_57\)) # (!\THR~combout\(6) & ((\ADC~combout\(6)) # (!\err[5]~27COUT1_57\))))

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
	dataa => \THR~combout\(6),
	datab => \ADC~combout\(6),
	cin => \err[4]~22\,
	cin0 => \err[5]~27\,
	cin1 => \err[5]~27COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \err[6]~30_combout\,
	cout0 => \err[6]~32\,
	cout1 => \err[6]~32COUT1_59\);

-- Location: LC_X8_Y4_N7
\err[7]~35\ : maxv_lcell
-- Equation(s):
-- \err[7]~35_combout\ = \THR~combout\(7) $ (\ADC~combout\(7) $ ((!(!\err[4]~22\ & \err[6]~32\) # (\err[4]~22\ & \err[6]~32COUT1_59\))))
-- \err[7]~37\ = CARRY((\THR~combout\(7) & ((!\err[6]~32\) # (!\ADC~combout\(7)))) # (!\THR~combout\(7) & (!\ADC~combout\(7) & !\err[6]~32\)))
-- \err[7]~37COUT1_61\ = CARRY((\THR~combout\(7) & ((!\err[6]~32COUT1_59\) # (!\ADC~combout\(7)))) # (!\THR~combout\(7) & (!\ADC~combout\(7) & !\err[6]~32COUT1_59\)))

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
	dataa => \THR~combout\(7),
	datab => \ADC~combout\(7),
	cin => \err[4]~22\,
	cin0 => \err[6]~32\,
	cin1 => \err[6]~32COUT1_59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \err[7]~35_combout\,
	cout0 => \err[7]~37\,
	cout1 => \err[7]~37COUT1_61\);

-- Location: LC_X8_Y4_N9
\LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \LessThan0~1_combout\ = (\err[4]~20_combout\) # ((\err[7]~35_combout\) # ((\err[6]~30_combout\) # (\err[5]~25_combout\)))

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
	dataa => \err[4]~20_combout\,
	datab => \err[7]~35_combout\,
	datac => \err[6]~30_combout\,
	datad => \err[5]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~1_combout\);

-- Location: LC_X8_Y4_N8
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = (((!(!\err[4]~22\ & \err[7]~37\) # (\err[4]~22\ & \err[7]~37COUT1_61\))))

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
	cin => \err[4]~22\,
	cin0 => \err[7]~37\,
	cin1 => \err[7]~37COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\);

-- Location: LC_X7_Y4_N4
\BIN~reg0\ : maxv_lcell
-- Equation(s):
-- \BIN~reg0_regout\ = DFFEAS(((\Add0~0_combout\ & ((\LessThan0~0_combout\) # (\LessThan0~1_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~1_combout\,
	datad => \Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BIN~reg0_regout\);

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \send_data|transmitter|ALT_INV_TX~regout\,
	oe => VCC,
	padio => ww_TX);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\BIN~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \BIN~reg0_regout\,
	oe => VCC,
	padio => ww_BIN);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DATA[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ADC~combout\(0),
	oe => VCC,
	padio => ww_DATA(0));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DATA[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ADC~combout\(1),
	oe => VCC,
	padio => ww_DATA(1));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DATA[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ADC~combout\(2),
	oe => VCC,
	padio => ww_DATA(2));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DATA[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ADC~combout\(3),
	oe => VCC,
	padio => ww_DATA(3));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DATA[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ADC~combout\(4),
	oe => VCC,
	padio => ww_DATA(4));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DATA[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ADC~combout\(5),
	oe => VCC,
	padio => ww_DATA(5));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DATA[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ADC~combout\(6),
	oe => VCC,
	padio => ww_DATA(6));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DATA[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ADC~combout\(7),
	oe => VCC,
	padio => ww_DATA(7));
END structure;


