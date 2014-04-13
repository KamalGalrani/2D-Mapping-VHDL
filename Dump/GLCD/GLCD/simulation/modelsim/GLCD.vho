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

-- DATE "03/11/2014 13:36:08"

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
	RS : OUT std_logic;
	RW : OUT std_logic;
	EN : OUT std_logic;
	CS1 : OUT std_logic;
	CS2 : OUT std_logic;
	DATA_OUT : OUT std_logic_vector(7 DOWNTO 0);
	DATA_IN : IN std_logic_vector(7 DOWNTO 0);
	WR : IN std_logic;
	RST : IN std_logic;
	CLK : IN std_logic;
	BUSY : OUT std_logic
	);
END GLCD;

-- Design Ports Information
-- RS	=>  Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- RW	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- EN	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CS1	=>  Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CS2	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- DATA_OUT[0]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- DATA_OUT[1]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- DATA_OUT[2]	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- DATA_OUT[3]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- DATA_OUT[4]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- DATA_OUT[5]	=>  Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- DATA_OUT[6]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- DATA_OUT[7]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- BUSY	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- WR	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RST	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA_IN[0]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA_IN[1]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA_IN[2]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA_IN[3]	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA_IN[4]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA_IN[5]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA_IN[6]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA_IN[7]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_RS : std_logic;
SIGNAL ww_RW : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_CS1 : std_logic;
SIGNAL ww_CS2 : std_logic;
SIGNAL ww_DATA_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DATA_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_WR : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_BUSY : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \WR~combout\ : std_logic;
SIGNAL \RST~combout\ : std_logic;
SIGNAL \step~3_combout\ : std_logic;
SIGNAL \step[2]~1_combout\ : std_logic;
SIGNAL \RS~2_combout\ : std_logic;
SIGNAL \send~5_combout\ : std_logic;
SIGNAL \send~regout\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \RS~1_combout\ : std_logic;
SIGNAL \writing~regout\ : std_logic;
SIGNAL \RS~reg0_regout\ : std_logic;
SIGNAL \DATA_OUT[0]$latch~combout\ : std_logic;
SIGNAL \DATA_OUT[1]$latch~combout\ : std_logic;
SIGNAL \DATA_OUT[2]$latch~combout\ : std_logic;
SIGNAL \latch[3]~1_combout\ : std_logic;
SIGNAL \latch[3]~0_combout\ : std_logic;
SIGNAL \DATA_OUT[3]$latch~combout\ : std_logic;
SIGNAL \DATA_OUT[4]$latch~combout\ : std_logic;
SIGNAL \DATA_OUT[5]$latch~combout\ : std_logic;
SIGNAL \DATA_OUT[6]$latch~combout\ : std_logic;
SIGNAL \DATA_OUT[7]$latch~combout\ : std_logic;
SIGNAL latch : std_logic_vector(7 DOWNTO 0);
SIGNAL step : std_logic_vector(2 DOWNTO 0);
SIGNAL \DATA_IN~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

RS <= ww_RS;
RW <= ww_RW;
EN <= ww_EN;
CS1 <= ww_CS1;
CS2 <= ww_CS2;
DATA_OUT <= ww_DATA_OUT;
ww_DATA_IN <= DATA_IN;
ww_WR <= WR;
ww_RST <= RST;
ww_CLK <= CLK;
BUSY <= ww_BUSY;
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

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_WR,
	combout => \WR~combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RST~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RST,
	combout => \RST~combout\);

-- Location: LC_X16_Y5_N3
\step[0]\ : maxv_lcell
-- Equation(s):
-- step(0) = DFFEAS((\RST~combout\ & ((step(0) & ((\process_2~0_combout\))) # (!step(0) & (!step(2) & !\process_2~0_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8804",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => step(0),
	datab => \RST~combout\,
	datac => step(2),
	datad => \process_2~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => step(0));

-- Location: LC_X16_Y5_N4
\step~3\ : maxv_lcell
-- Equation(s):
-- \step~3_combout\ = (step(2) & (!\WR~combout\ & (step(1)))) # (!step(2) & ((step(1) $ (step(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "443c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WR~combout\,
	datab => step(1),
	datac => step(0),
	datad => step(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \step~3_combout\);

-- Location: LC_X16_Y5_N7
\step[2]~1\ : maxv_lcell
-- Equation(s):
-- \step[2]~1_combout\ = (((!\process_2~0_combout\) # (!\RST~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \RST~combout\,
	datad => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \step[2]~1_combout\);

-- Location: LC_X16_Y5_N5
\step[1]\ : maxv_lcell
-- Equation(s):
-- step(1) = DFFEAS((\RST~combout\ & (\step~3_combout\ & ((\writing~regout\) # (!step(2))))), GLOBAL(\CLK~combout\), VCC, , \step[2]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => step(2),
	datab => \RST~combout\,
	datac => \writing~regout\,
	datad => \step~3_combout\,
	aclr => GND,
	ena => \step[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => step(1));

-- Location: LC_X16_Y5_N8
\step[2]\ : maxv_lcell
-- Equation(s):
-- step(2) = DFFEAS((\RST~combout\ & ((step(2)) # ((step(1) & step(0))))), GLOBAL(\CLK~combout\), VCC, , \step[2]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => step(2),
	datab => step(1),
	datac => \RST~combout\,
	datad => step(0),
	aclr => GND,
	ena => \step[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => step(2));

-- Location: LC_X15_Y5_N5
\RS~2\ : maxv_lcell
-- Equation(s):
-- \RS~2_combout\ = (((!\WR~combout\ & !\writing~regout\)))

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
	datac => \WR~combout\,
	datad => \writing~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RS~2_combout\);

-- Location: LC_X14_Y5_N6
\send~5\ : maxv_lcell
-- Equation(s):
-- \send~5_combout\ = (\RST~combout\ & (!\process_2~0_combout\ & ((\RS~2_combout\) # (!step(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datab => step(2),
	datac => \process_2~0_combout\,
	datad => \RS~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \send~5_combout\);

-- Location: LC_X15_Y5_N8
send : maxv_lcell
-- Equation(s):
-- \send~regout\ = DFFEAS((\send~5_combout\) # ((\send~regout\ & ((!\process_2~0_combout\) # (!\RST~combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2fa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \send~regout\,
	datab => \RST~combout\,
	datac => \send~5_combout\,
	datad => \process_2~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \send~regout\);

-- Location: LC_X15_Y5_N3
\process_2~0\ : maxv_lcell
-- Equation(s):
-- \process_2~0_combout\ = (!\process_2~0_combout\ & (((\send~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~0_combout\,
	datad => \send~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_2~0_combout\);

-- Location: LC_X15_Y5_N4
\RS~1\ : maxv_lcell
-- Equation(s):
-- \RS~1_combout\ = ((\RST~combout\ & ((!\process_2~0_combout\))))

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
	datab => \RST~combout\,
	datad => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RS~1_combout\);

-- Location: LC_X15_Y5_N1
writing : maxv_lcell
-- Equation(s):
-- \writing~regout\ = DFFEAS((\RS~1_combout\ & ((step(2) & ((!\WR~combout\))) # (!step(2) & (\writing~regout\)))) # (!\RS~1_combout\ & (\writing~regout\)), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \writing~regout\,
	datab => \WR~combout\,
	datac => \RS~1_combout\,
	datad => step(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \writing~regout\);

-- Location: LC_X14_Y5_N4
\RS~reg0\ : maxv_lcell
-- Equation(s):
-- \RS~reg0_regout\ = DFFEAS(((!\WR~combout\ & (!\writing~regout\ & step(2)))), GLOBAL(\CLK~combout\), VCC, , \send~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \WR~combout\,
	datac => \writing~regout\,
	datad => step(2),
	aclr => GND,
	ena => \send~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RS~reg0_regout\);

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA_IN[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA_IN(0),
	combout => \DATA_IN~combout\(0));

-- Location: LC_X15_Y5_N9
\latch[0]\ : maxv_lcell
-- Equation(s):
-- latch(0) = DFFEAS((step(0) & (((!step(1))))), GLOBAL(\CLK~combout\), VCC, , \send~5_combout\, \DATA_IN~combout\(0), , , step(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => step(0),
	datac => \DATA_IN~combout\(0),
	datad => step(1),
	aclr => GND,
	sload => step(2),
	ena => \send~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => latch(0));

-- Location: LC_X15_Y5_N7
\DATA_OUT[0]$latch\ : maxv_lcell
-- Equation(s):
-- \DATA_OUT[0]$latch~combout\ = ((GLOBAL(\process_2~0_combout\) & ((latch(0)))) # (!GLOBAL(\process_2~0_combout\) & (\DATA_OUT[0]$latch~combout\)))

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
	datab => \DATA_OUT[0]$latch~combout\,
	datac => \process_2~0_combout\,
	datad => latch(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \DATA_OUT[0]$latch~combout\);

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA_IN[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA_IN(1),
	combout => \DATA_IN~combout\(1));

-- Location: LC_X14_Y5_N8
\latch[1]\ : maxv_lcell
-- Equation(s):
-- latch(1) = DFFEAS((step(1) & (((!step(0))))), GLOBAL(\CLK~combout\), VCC, , \send~5_combout\, \DATA_IN~combout\(1), , , step(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => step(1),
	datac => \DATA_IN~combout\(1),
	datad => step(0),
	aclr => GND,
	sload => step(2),
	ena => \send~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => latch(1));

-- Location: LC_X14_Y5_N0
\DATA_OUT[1]$latch\ : maxv_lcell
-- Equation(s):
-- \DATA_OUT[1]$latch~combout\ = ((GLOBAL(\process_2~0_combout\) & ((latch(1)))) # (!GLOBAL(\process_2~0_combout\) & (\DATA_OUT[1]$latch~combout\)))

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
	datab => \DATA_OUT[1]$latch~combout\,
	datac => \process_2~0_combout\,
	datad => latch(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \DATA_OUT[1]$latch~combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA_IN[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA_IN(2),
	combout => \DATA_IN~combout\(2));

-- Location: LC_X13_Y5_N2
\latch[2]\ : maxv_lcell
-- Equation(s):
-- latch(2) = DFFEAS(((step(1) & ((!step(0))))), GLOBAL(\CLK~combout\), VCC, , \send~5_combout\, \DATA_IN~combout\(2), , , step(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => step(1),
	datac => \DATA_IN~combout\(2),
	datad => step(0),
	aclr => GND,
	sload => step(2),
	ena => \send~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => latch(2));

-- Location: LC_X13_Y5_N3
\DATA_OUT[2]$latch\ : maxv_lcell
-- Equation(s):
-- \DATA_OUT[2]$latch~combout\ = ((GLOBAL(\process_2~0_combout\) & ((latch(2)))) # (!GLOBAL(\process_2~0_combout\) & (\DATA_OUT[2]$latch~combout\)))

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
	dataa => \DATA_OUT[2]$latch~combout\,
	datac => \process_2~0_combout\,
	datad => latch(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \DATA_OUT[2]$latch~combout\);

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA_IN[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA_IN(3),
	combout => \DATA_IN~combout\(3));

-- Location: LC_X16_Y5_N6
\latch[3]~1\ : maxv_lcell
-- Equation(s):
-- \latch[3]~1_combout\ = ((\DATA_IN~combout\(3) & (!\writing~regout\ & !\WR~combout\))) # (!step(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "555d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => step(2),
	datab => \DATA_IN~combout\(3),
	datac => \writing~regout\,
	datad => \WR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \latch[3]~1_combout\);

-- Location: LC_X16_Y5_N1
\latch[3]~0\ : maxv_lcell
-- Equation(s):
-- \latch[3]~0_combout\ = (latch(3) & (((!\RS~2_combout\ & !step(0))) # (!\RS~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "10f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RS~2_combout\,
	datab => step(0),
	datac => latch(3),
	datad => \RS~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \latch[3]~0_combout\);

-- Location: LC_X16_Y5_N2
\latch[3]\ : maxv_lcell
-- Equation(s):
-- latch(3) = DFFEAS((\latch[3]~0_combout\) # ((!step(0) & (\RS~1_combout\ & \latch[3]~1_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => step(0),
	datab => \RS~1_combout\,
	datac => \latch[3]~1_combout\,
	datad => \latch[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => latch(3));

-- Location: LC_X16_Y5_N0
\DATA_OUT[3]$latch\ : maxv_lcell
-- Equation(s):
-- \DATA_OUT[3]$latch~combout\ = ((GLOBAL(\process_2~0_combout\) & ((latch(3)))) # (!GLOBAL(\process_2~0_combout\) & (\DATA_OUT[3]$latch~combout\)))

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
	datab => \DATA_OUT[3]$latch~combout\,
	datac => \process_2~0_combout\,
	datad => latch(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \DATA_OUT[3]$latch~combout\);

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA_IN[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA_IN(4),
	combout => \DATA_IN~combout\(4));

-- Location: LC_X14_Y5_N3
\latch[4]\ : maxv_lcell
-- Equation(s):
-- latch(4) = DFFEAS((!step(1) & (((!step(0))))), GLOBAL(\CLK~combout\), VCC, , \send~5_combout\, \DATA_IN~combout\(4), , , step(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => step(1),
	datac => \DATA_IN~combout\(4),
	datad => step(0),
	aclr => GND,
	sload => step(2),
	ena => \send~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => latch(4));

-- Location: LC_X14_Y5_N2
\DATA_OUT[4]$latch\ : maxv_lcell
-- Equation(s):
-- \DATA_OUT[4]$latch~combout\ = ((GLOBAL(\process_2~0_combout\) & ((latch(4)))) # (!GLOBAL(\process_2~0_combout\) & (\DATA_OUT[4]$latch~combout\)))

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
	datab => \DATA_OUT[4]$latch~combout\,
	datac => \process_2~0_combout\,
	datad => latch(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \DATA_OUT[4]$latch~combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA_IN[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA_IN(5),
	combout => \DATA_IN~combout\(5));

-- Location: LC_X14_Y5_N1
\latch[5]\ : maxv_lcell
-- Equation(s):
-- latch(5) = DFFEAS((!step(1) & (((!step(0))))), GLOBAL(\CLK~combout\), VCC, , \send~5_combout\, \DATA_IN~combout\(5), , , step(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => step(1),
	datac => \DATA_IN~combout\(5),
	datad => step(0),
	aclr => GND,
	sload => step(2),
	ena => \send~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => latch(5));

-- Location: LC_X14_Y5_N5
\DATA_OUT[5]$latch\ : maxv_lcell
-- Equation(s):
-- \DATA_OUT[5]$latch~combout\ = ((GLOBAL(\process_2~0_combout\) & ((latch(5)))) # (!GLOBAL(\process_2~0_combout\) & (\DATA_OUT[5]$latch~combout\)))

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
	dataa => \DATA_OUT[5]$latch~combout\,
	datac => \process_2~0_combout\,
	datad => latch(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \DATA_OUT[5]$latch~combout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA_IN[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA_IN(6),
	combout => \DATA_IN~combout\(6));

-- Location: LC_X15_Y5_N2
\latch[6]\ : maxv_lcell
-- Equation(s):
-- latch(6) = DFFEAS((!\writing~regout\ & (step(2) & (!\WR~combout\ & \DATA_IN~combout\(6)))), GLOBAL(\CLK~combout\), VCC, , \send~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \writing~regout\,
	datab => step(2),
	datac => \WR~combout\,
	datad => \DATA_IN~combout\(6),
	aclr => GND,
	ena => \send~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => latch(6));

-- Location: LC_X15_Y5_N6
\DATA_OUT[6]$latch\ : maxv_lcell
-- Equation(s):
-- \DATA_OUT[6]$latch~combout\ = ((GLOBAL(\process_2~0_combout\) & ((latch(6)))) # (!GLOBAL(\process_2~0_combout\) & (\DATA_OUT[6]$latch~combout\)))

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
	dataa => \DATA_OUT[6]$latch~combout\,
	datac => \process_2~0_combout\,
	datad => latch(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \DATA_OUT[6]$latch~combout\);

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA_IN[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DATA_IN(7),
	combout => \DATA_IN~combout\(7));

-- Location: LC_X14_Y5_N9
\latch[7]\ : maxv_lcell
-- Equation(s):
-- latch(7) = DFFEAS((step(1) & (((step(0))))), GLOBAL(\CLK~combout\), VCC, , \send~5_combout\, \DATA_IN~combout\(7), , , step(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => step(1),
	datac => \DATA_IN~combout\(7),
	datad => step(0),
	aclr => GND,
	sload => step(2),
	ena => \send~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => latch(7));

-- Location: LC_X14_Y5_N7
\DATA_OUT[7]$latch\ : maxv_lcell
-- Equation(s):
-- \DATA_OUT[7]$latch~combout\ = ((GLOBAL(\process_2~0_combout\) & ((latch(7)))) # (!GLOBAL(\process_2~0_combout\) & (\DATA_OUT[7]$latch~combout\)))

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
	datab => \DATA_OUT[7]$latch~combout\,
	datac => \process_2~0_combout\,
	datad => latch(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \DATA_OUT[7]$latch~combout\);

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RS~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RS~reg0_regout\,
	oe => VCC,
	padio => ww_RS);

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RW~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_RW);

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\EN~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \process_2~0_combout\,
	oe => VCC,
	padio => ww_EN);

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CS1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_CS1);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CS2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_CS2);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DATA_OUT[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \DATA_OUT[0]$latch~combout\,
	oe => VCC,
	padio => ww_DATA_OUT(0));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DATA_OUT[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \DATA_OUT[1]$latch~combout\,
	oe => VCC,
	padio => ww_DATA_OUT(1));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DATA_OUT[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \DATA_OUT[2]$latch~combout\,
	oe => VCC,
	padio => ww_DATA_OUT(2));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DATA_OUT[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \DATA_OUT[3]$latch~combout\,
	oe => VCC,
	padio => ww_DATA_OUT(3));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DATA_OUT[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \DATA_OUT[4]$latch~combout\,
	oe => VCC,
	padio => ww_DATA_OUT(4));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DATA_OUT[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \DATA_OUT[5]$latch~combout\,
	oe => VCC,
	padio => ww_DATA_OUT(5));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DATA_OUT[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \DATA_OUT[6]$latch~combout\,
	oe => VCC,
	padio => ww_DATA_OUT(6));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\DATA_OUT[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \DATA_OUT[7]$latch~combout\,
	oe => VCC,
	padio => ww_DATA_OUT(7));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\BUSY~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \writing~regout\,
	oe => VCC,
	padio => ww_BUSY);
END structure;


