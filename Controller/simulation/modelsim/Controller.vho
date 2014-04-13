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

-- DATE "04/13/2014 01:52:26"

-- 
-- Device: Altera 5M240ZM68C4 Package MBGA68
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	Controller IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	ENC_L : IN std_logic;
	ENC_R : IN std_logic;
	TX : OUT std_logic;
	SHARP : IN IEEE.NUMERIC_STD.unsigned(7 DOWNTO 0)
	);
END Controller;

-- Design Ports Information
-- TX	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SHARP[0]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SHARP[1]	=>  Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SHARP[2]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SHARP[3]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SHARP[4]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SHARP[5]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SHARP[6]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SHARP[7]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RST	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENC_L	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENC_R	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Controller IS
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
SIGNAL ww_ENC_L : std_logic;
SIGNAL ww_ENC_R : std_logic;
SIGNAL ww_TX : std_logic;
SIGNAL ww_SHARP : std_logic_vector(7 DOWNTO 0);
SIGNAL \POSITION|Lookup|Add1~42\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \TRANSMIT|Add0~42\ : std_logic;
SIGNAL \TRANSMIT|Add0~42COUT1_76\ : std_logic;
SIGNAL \TRANSMIT|Add0~50_combout\ : std_logic;
SIGNAL \RST~combout\ : std_logic;
SIGNAL \TRANSMIT|Add0~52\ : std_logic;
SIGNAL \TRANSMIT|Add0~52COUT1_78\ : std_logic;
SIGNAL \TRANSMIT|Add0~60_combout\ : std_logic;
SIGNAL \TRANSMIT|Add0~62\ : std_logic;
SIGNAL \TRANSMIT|Add0~62COUT1_80\ : std_logic;
SIGNAL \TRANSMIT|Add0~45_combout\ : std_logic;
SIGNAL \TRANSMIT|Add0~47\ : std_logic;
SIGNAL \TRANSMIT|Add0~47COUT1_82\ : std_logic;
SIGNAL \TRANSMIT|Add0~55_combout\ : std_logic;
SIGNAL \TRANSMIT|Equal0~2\ : std_logic;
SIGNAL \TRANSMIT|Add0~57\ : std_logic;
SIGNAL \TRANSMIT|Add0~20_combout\ : std_logic;
SIGNAL \TRANSMIT|Add0~22\ : std_logic;
SIGNAL \TRANSMIT|Add0~22COUT1_84\ : std_logic;
SIGNAL \TRANSMIT|Add0~35_combout\ : std_logic;
SIGNAL \TRANSMIT|Add0~37\ : std_logic;
SIGNAL \TRANSMIT|Add0~37COUT1_86\ : std_logic;
SIGNAL \TRANSMIT|Add0~30_combout\ : std_logic;
SIGNAL \TRANSMIT|Add0~32\ : std_logic;
SIGNAL \TRANSMIT|Add0~32COUT1_88\ : std_logic;
SIGNAL \TRANSMIT|Add0~25_combout\ : std_logic;
SIGNAL \TRANSMIT|Equal0~1\ : std_logic;
SIGNAL \TRANSMIT|Add0~0_combout\ : std_logic;
SIGNAL \TRANSMIT|Add0~17\ : std_logic;
SIGNAL \TRANSMIT|Add0~17COUT1_92\ : std_logic;
SIGNAL \TRANSMIT|Add0~5_combout\ : std_logic;
SIGNAL \TRANSMIT|Equal0~0\ : std_logic;
SIGNAL \TRANSMIT|Equal0~3\ : std_logic;
SIGNAL \TRANSMIT|Add0~27\ : std_logic;
SIGNAL \TRANSMIT|Add0~27COUT1_90\ : std_logic;
SIGNAL \TRANSMIT|Add0~10_combout\ : std_logic;
SIGNAL \TRANSMIT|Add0~12\ : std_logic;
SIGNAL \TRANSMIT|Add0~15_combout\ : std_logic;
SIGNAL \TRANSMIT|Add0~2\ : std_logic;
SIGNAL \TRANSMIT|Add0~40_combout\ : std_logic;
SIGNAL \TRANSMIT|tx_clk_tick~regout\ : std_logic;
SIGNAL \TRANSMIT|transmitter|Equal2~0_combout\ : std_logic;
SIGNAL \TRANSMIT|transmitter|ready~regout\ : std_logic;
SIGNAL \process_1:state[1]~0_combout\ : std_logic;
SIGNAL \process_1:state[2]~regout\ : std_logic;
SIGNAL \process_1:state[0]~regout\ : std_logic;
SIGNAL \process_1:state[1]~regout\ : std_logic;
SIGNAL \wr_buff~regout\ : std_logic;
SIGNAL \wr~regout\ : std_logic;
SIGNAL \TRANSMIT|transmitter|trigger~combout\ : std_logic;
SIGNAL \TRANSMIT|transmitter|ready~0_combout\ : std_logic;
SIGNAL \TRANSMIT|transmitter|TX~4_combout\ : std_logic;
SIGNAL \TRANSMIT|transmitter|TX~0_combout\ : std_logic;
SIGNAL \TRANSMIT|transmitter|TX~1_combout\ : std_logic;
SIGNAL \data[7]~3_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \ENC_R~combout\ : std_logic;
SIGNAL \POSITION|process_0~0\ : std_logic;
SIGNAL \ENC_L~combout\ : std_logic;
SIGNAL \POSITION|r_lck~regout\ : std_logic;
SIGNAL \POSITION|l_lck~regout\ : std_logic;
SIGNAL \POSITION|a_2t[7]~0_combout\ : std_logic;
SIGNAL \POSITION|a_2t[0]~14\ : std_logic;
SIGNAL \POSITION|a_2t[0]~14COUT1_31\ : std_logic;
SIGNAL \POSITION|a_2t[1]~16\ : std_logic;
SIGNAL \POSITION|a_2t[1]~16COUT1_33\ : std_logic;
SIGNAL \POSITION|a_2t[2]~6\ : std_logic;
SIGNAL \POSITION|a_2t[2]~6COUT1_35\ : std_logic;
SIGNAL \POSITION|a_2t[3]~20\ : std_logic;
SIGNAL \POSITION|a_2t[3]~20COUT1_37\ : std_logic;
SIGNAL \POSITION|a_2t[4]~8\ : std_logic;
SIGNAL \POSITION|a_2t[5]~10\ : std_logic;
SIGNAL \POSITION|a_2t[5]~10COUT1_39\ : std_logic;
SIGNAL \POSITION|a_2t[6]~18\ : std_logic;
SIGNAL \POSITION|a_2t[6]~18COUT1_41\ : std_logic;
SIGNAL \POSITION|a_2t[7]~12\ : std_logic;
SIGNAL \POSITION|a_2t[7]~12COUT1_43\ : std_logic;
SIGNAL \POSITION|a_2t[8]~4\ : std_logic;
SIGNAL \POSITION|a_2t[8]~4COUT1_45\ : std_logic;
SIGNAL \POSITION|Lookup|theta2_r~0_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~27\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~27COUT1_60\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~32\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~32COUT1_62\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~7\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~7COUT1_64\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~47\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~47COUT1_66\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~12\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~17\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~17COUT1_68\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~42\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~42COUT1_70\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~22\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~22COUT1_72\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~37\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~37COUT1_74\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~0_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~40_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~35_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~20_combout\ : std_logic;
SIGNAL \POSITION|Lookup|LessThan0~2_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~45_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~25_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~5_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~30_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~10_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add0~15_combout\ : std_logic;
SIGNAL \POSITION|Lookup|LessThan0~0_combout\ : std_logic;
SIGNAL \POSITION|Lookup|LessThan0~1_combout\ : std_logic;
SIGNAL \POSITION|Lookup|LessThan0~3_combout\ : std_logic;
SIGNAL \POSITION|Lookup|LessThan0~4_combout\ : std_logic;
SIGNAL \POSITION|Lookup|LessThan0~5_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~44_cout0\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~44COUT1_55\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~8\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~8COUT1_57\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~14\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~14COUT1_59\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~20\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~20COUT1_61\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~26\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~32\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~32COUT1_63\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~2\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~2COUT1_65\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~36_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~41_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~0_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~5_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~6_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~11_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~18_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~23_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~12_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~17_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux7~6_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~24_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~30_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~35_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux1~9_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux0~0_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux6~0_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux4~0_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux4~1_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux5~0_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add1~29_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux6~3_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux6~1_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux6~2_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux6~4_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux7~18_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux7~15_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux7~16_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux7~19_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux7~7_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux7~8_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux7~11_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux7~12_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux7~9_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux7~10_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux7~13_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux7~14_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux7~17_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add2~25_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add2~22\ : std_logic;
SIGNAL \POSITION|Lookup|Add2~22COUT1_32\ : std_logic;
SIGNAL \POSITION|Lookup|Add2~12\ : std_logic;
SIGNAL \POSITION|Lookup|Add2~12COUT1_34\ : std_logic;
SIGNAL \POSITION|Lookup|Add2~7\ : std_logic;
SIGNAL \POSITION|Lookup|Add2~7COUT1_36\ : std_logic;
SIGNAL \POSITION|Lookup|Add2~17\ : std_logic;
SIGNAL \POSITION|Lookup|Add2~17COUT1_38\ : std_logic;
SIGNAL \POSITION|Lookup|Add2~0_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add2~10_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add2~20_combout\ : std_logic;
SIGNAL \POSITION|a_x[0]~27\ : std_logic;
SIGNAL \POSITION|a_x[0]~27COUT1_40\ : std_logic;
SIGNAL \POSITION|a_x[1]~19\ : std_logic;
SIGNAL \POSITION|Lookup|Add2~15_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add2~5_combout\ : std_logic;
SIGNAL \POSITION|a_x[2]~15\ : std_logic;
SIGNAL \POSITION|a_x[2]~15COUT1_42\ : std_logic;
SIGNAL \POSITION|a_x[3]~23\ : std_logic;
SIGNAL \POSITION|a_x[3]~23COUT1_44\ : std_logic;
SIGNAL \POSITION|a_x[4]~11\ : std_logic;
SIGNAL \POSITION|a_x[4]~11COUT1_46\ : std_logic;
SIGNAL \POSITION|Lookup|Mux1~10_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux0~1_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux1~6_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux1~8_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux1~7_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux2~0_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux2~1_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux2~2_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux2~3_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux2~4_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux3~13_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux3~4_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux3~5_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux3~11_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux3~9_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux3~8_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux3~10_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux3~6_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux3~7_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Mux3~12_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add3~25_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add3~22\ : std_logic;
SIGNAL \POSITION|Lookup|Add3~22COUT1_32\ : std_logic;
SIGNAL \POSITION|Lookup|Add3~12\ : std_logic;
SIGNAL \POSITION|Lookup|Add3~12COUT1_34\ : std_logic;
SIGNAL \POSITION|Lookup|Add3~7\ : std_logic;
SIGNAL \POSITION|Lookup|Add3~7COUT1_36\ : std_logic;
SIGNAL \POSITION|Lookup|Add3~17\ : std_logic;
SIGNAL \POSITION|Lookup|Add3~17COUT1_38\ : std_logic;
SIGNAL \POSITION|Lookup|Add3~0_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add3~10_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add3~20_combout\ : std_logic;
SIGNAL \POSITION|a_y[0]~27\ : std_logic;
SIGNAL \POSITION|a_y[0]~27COUT1_40\ : std_logic;
SIGNAL \POSITION|a_y[1]~19\ : std_logic;
SIGNAL \POSITION|Lookup|Add3~15_combout\ : std_logic;
SIGNAL \POSITION|Lookup|Add3~5_combout\ : std_logic;
SIGNAL \POSITION|a_y[2]~15\ : std_logic;
SIGNAL \POSITION|a_y[2]~15COUT1_42\ : std_logic;
SIGNAL \POSITION|a_y[3]~23\ : std_logic;
SIGNAL \POSITION|a_y[3]~23COUT1_44\ : std_logic;
SIGNAL \POSITION|a_y[4]~11\ : std_logic;
SIGNAL \POSITION|a_y[4]~11COUT1_46\ : std_logic;
SIGNAL \data[7]~1_combout\ : std_logic;
SIGNAL \latch[7]~1_combout\ : std_logic;
SIGNAL \POSITION|a_x[5]~5\ : std_logic;
SIGNAL \POSITION|a_x[5]~5COUT1_48\ : std_logic;
SIGNAL \POSITION|a_x[6]~1\ : std_logic;
SIGNAL \POSITION|a_x[7]~7\ : std_logic;
SIGNAL \POSITION|a_x[7]~7COUT1_50\ : std_logic;
SIGNAL \POSITION|a_x[8]~25\ : std_logic;
SIGNAL \POSITION|a_x[8]~25COUT1_52\ : std_logic;
SIGNAL \POSITION|a_x[9]~17\ : std_logic;
SIGNAL \POSITION|a_x[9]~17COUT1_54\ : std_logic;
SIGNAL \POSITION|a_x[10]~13\ : std_logic;
SIGNAL \POSITION|a_x[10]~13COUT1_56\ : std_logic;
SIGNAL \POSITION|a_x[11]~21\ : std_logic;
SIGNAL \POSITION|a_x[12]~9\ : std_logic;
SIGNAL \POSITION|a_x[12]~9COUT1_58\ : std_logic;
SIGNAL \POSITION|a_y[5]~5\ : std_logic;
SIGNAL \POSITION|a_y[5]~5COUT1_48\ : std_logic;
SIGNAL \POSITION|a_y[6]~1\ : std_logic;
SIGNAL \POSITION|a_y[7]~7\ : std_logic;
SIGNAL \POSITION|a_y[7]~7COUT1_50\ : std_logic;
SIGNAL \POSITION|a_y[8]~25\ : std_logic;
SIGNAL \POSITION|a_y[8]~25COUT1_52\ : std_logic;
SIGNAL \POSITION|a_y[9]~17\ : std_logic;
SIGNAL \POSITION|a_y[9]~17COUT1_54\ : std_logic;
SIGNAL \POSITION|a_y[10]~13\ : std_logic;
SIGNAL \POSITION|a_y[10]~13COUT1_56\ : std_logic;
SIGNAL \POSITION|a_y[11]~21\ : std_logic;
SIGNAL \POSITION|a_y[12]~9\ : std_logic;
SIGNAL \POSITION|a_y[12]~9COUT1_58\ : std_logic;
SIGNAL \data[7]~2_combout\ : std_logic;
SIGNAL \TRANSMIT|transmitter|Mux0~0_combout\ : std_logic;
SIGNAL \TRANSMIT|transmitter|Mux0~1_combout\ : std_logic;
SIGNAL \TRANSMIT|transmitter|Mux0~2_combout\ : std_logic;
SIGNAL \TRANSMIT|transmitter|Mux0~3_combout\ : std_logic;
SIGNAL \TRANSMIT|transmitter|TX~2_combout\ : std_logic;
SIGNAL \TRANSMIT|transmitter|TX~regout\ : std_logic;
SIGNAL \TRANSMIT|transmitter|step\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \TRANSMIT|tx_clk_count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL data : std_logic_vector(7 DOWNTO 0);
SIGNAL \TRANSMIT|transmitter|latch\ : std_logic_vector(7 DOWNTO 0);
SIGNAL latch : std_logic_vector(15 DOWNTO 0);
SIGNAL \POSITION|a_2t\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \POSITION|a_x\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \POSITION|a_y\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \TRANSMIT|transmitter|ALT_INV_TX~regout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
ww_ENC_L <= ENC_L;
ww_ENC_R <= ENC_R;
TX <= ww_TX;
ww_SHARP <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(SHARP);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\TRANSMIT|transmitter|ALT_INV_TX~regout\ <= NOT \TRANSMIT|transmitter|TX~regout\;

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: LC_X3_Y4_N5
\TRANSMIT|Add0~40\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|Add0~40_combout\ = (\TRANSMIT|tx_clk_count\(1) $ ((\TRANSMIT|Add0~2\)))
-- \TRANSMIT|Add0~42\ = CARRY(((!\TRANSMIT|Add0~2\) # (!\TRANSMIT|tx_clk_count\(1))))
-- \TRANSMIT|Add0~42COUT1_76\ = CARRY(((!\TRANSMIT|Add0~2\) # (!\TRANSMIT|tx_clk_count\(1))))

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
	datab => \TRANSMIT|tx_clk_count\(1),
	cin => \TRANSMIT|Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|Add0~40_combout\,
	cout0 => \TRANSMIT|Add0~42\,
	cout1 => \TRANSMIT|Add0~42COUT1_76\);

-- Location: LC_X3_Y4_N6
\TRANSMIT|Add0~50\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|Add0~50_combout\ = (\TRANSMIT|tx_clk_count\(2) $ ((!(!\TRANSMIT|Add0~2\ & \TRANSMIT|Add0~42\) # (\TRANSMIT|Add0~2\ & \TRANSMIT|Add0~42COUT1_76\))))
-- \TRANSMIT|Add0~52\ = CARRY(((\TRANSMIT|tx_clk_count\(2) & !\TRANSMIT|Add0~42\)))
-- \TRANSMIT|Add0~52COUT1_78\ = CARRY(((\TRANSMIT|tx_clk_count\(2) & !\TRANSMIT|Add0~42COUT1_76\)))

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
	datab => \TRANSMIT|tx_clk_count\(2),
	cin => \TRANSMIT|Add0~2\,
	cin0 => \TRANSMIT|Add0~42\,
	cin1 => \TRANSMIT|Add0~42COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|Add0~50_combout\,
	cout0 => \TRANSMIT|Add0~52\,
	cout1 => \TRANSMIT|Add0~52COUT1_78\);

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RST~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RST,
	combout => \RST~combout\);

-- Location: LC_X2_Y4_N7
\TRANSMIT|tx_clk_count[2]\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|Equal0~2\ = (!\TRANSMIT|tx_clk_count\(5) & (!\TRANSMIT|tx_clk_count\(3) & (C1_tx_clk_count[2] & \TRANSMIT|tx_clk_count\(4))))
-- \TRANSMIT|tx_clk_count\(2) = DFFEAS(\TRANSMIT|Equal0~2\, GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , \TRANSMIT|Add0~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \TRANSMIT|tx_clk_count\(5),
	datab => \TRANSMIT|tx_clk_count\(3),
	datac => \TRANSMIT|Add0~50_combout\,
	datad => \TRANSMIT|tx_clk_count\(4),
	aclr => \RST~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|Equal0~2\,
	regout => \TRANSMIT|tx_clk_count\(2));

-- Location: LC_X3_Y4_N7
\TRANSMIT|Add0~60\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|Add0~60_combout\ = \TRANSMIT|tx_clk_count\(3) $ (((((!\TRANSMIT|Add0~2\ & \TRANSMIT|Add0~52\) # (\TRANSMIT|Add0~2\ & \TRANSMIT|Add0~52COUT1_78\)))))
-- \TRANSMIT|Add0~62\ = CARRY(((!\TRANSMIT|Add0~52\)) # (!\TRANSMIT|tx_clk_count\(3)))
-- \TRANSMIT|Add0~62COUT1_80\ = CARRY(((!\TRANSMIT|Add0~52COUT1_78\)) # (!\TRANSMIT|tx_clk_count\(3)))

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
	dataa => \TRANSMIT|tx_clk_count\(3),
	cin => \TRANSMIT|Add0~2\,
	cin0 => \TRANSMIT|Add0~52\,
	cin1 => \TRANSMIT|Add0~52COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|Add0~60_combout\,
	cout0 => \TRANSMIT|Add0~62\,
	cout1 => \TRANSMIT|Add0~62COUT1_80\);

-- Location: LC_X2_Y4_N0
\TRANSMIT|tx_clk_count[3]\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|tx_clk_count\(3) = DFFEAS(((!\TRANSMIT|Equal0~3\ & ((\TRANSMIT|Add0~60_combout\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \TRANSMIT|Equal0~3\,
	datad => \TRANSMIT|Add0~60_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TRANSMIT|tx_clk_count\(3));

-- Location: LC_X3_Y4_N8
\TRANSMIT|Add0~45\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|Add0~45_combout\ = (\TRANSMIT|tx_clk_count\(4) $ ((!(!\TRANSMIT|Add0~2\ & \TRANSMIT|Add0~62\) # (\TRANSMIT|Add0~2\ & \TRANSMIT|Add0~62COUT1_80\))))
-- \TRANSMIT|Add0~47\ = CARRY(((\TRANSMIT|tx_clk_count\(4) & !\TRANSMIT|Add0~62\)))
-- \TRANSMIT|Add0~47COUT1_82\ = CARRY(((\TRANSMIT|tx_clk_count\(4) & !\TRANSMIT|Add0~62COUT1_80\)))

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
	datab => \TRANSMIT|tx_clk_count\(4),
	cin => \TRANSMIT|Add0~2\,
	cin0 => \TRANSMIT|Add0~62\,
	cin1 => \TRANSMIT|Add0~62COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|Add0~45_combout\,
	cout0 => \TRANSMIT|Add0~47\,
	cout1 => \TRANSMIT|Add0~47COUT1_82\);

-- Location: LC_X2_Y4_N2
\TRANSMIT|tx_clk_count[4]\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|tx_clk_count\(4) = DFFEAS(((!\TRANSMIT|Equal0~3\ & ((\TRANSMIT|Add0~45_combout\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \TRANSMIT|Equal0~3\,
	datad => \TRANSMIT|Add0~45_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TRANSMIT|tx_clk_count\(4));

-- Location: LC_X3_Y4_N9
\TRANSMIT|Add0~55\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|Add0~55_combout\ = \TRANSMIT|tx_clk_count\(5) $ (((((!\TRANSMIT|Add0~2\ & \TRANSMIT|Add0~47\) # (\TRANSMIT|Add0~2\ & \TRANSMIT|Add0~47COUT1_82\)))))
-- \TRANSMIT|Add0~57\ = CARRY(((!\TRANSMIT|Add0~47COUT1_82\)) # (!\TRANSMIT|tx_clk_count\(5)))

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
	dataa => \TRANSMIT|tx_clk_count\(5),
	cin => \TRANSMIT|Add0~2\,
	cin0 => \TRANSMIT|Add0~47\,
	cin1 => \TRANSMIT|Add0~47COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|Add0~55_combout\,
	cout => \TRANSMIT|Add0~57\);

-- Location: LC_X2_Y4_N5
\TRANSMIT|tx_clk_count[5]\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|tx_clk_count\(5) = DFFEAS(GND, GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , \TRANSMIT|Add0~55_combout\, , , VCC)

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
	datac => \TRANSMIT|Add0~55_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TRANSMIT|tx_clk_count\(5));

-- Location: LC_X4_Y4_N0
\TRANSMIT|Add0~20\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|Add0~20_combout\ = \TRANSMIT|tx_clk_count\(6) $ ((((!\TRANSMIT|Add0~57\))))
-- \TRANSMIT|Add0~22\ = CARRY((\TRANSMIT|tx_clk_count\(6) & ((!\TRANSMIT|Add0~57\))))
-- \TRANSMIT|Add0~22COUT1_84\ = CARRY((\TRANSMIT|tx_clk_count\(6) & ((!\TRANSMIT|Add0~57\))))

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
	dataa => \TRANSMIT|tx_clk_count\(6),
	cin => \TRANSMIT|Add0~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|Add0~20_combout\,
	cout0 => \TRANSMIT|Add0~22\,
	cout1 => \TRANSMIT|Add0~22COUT1_84\);

-- Location: LC_X4_Y4_N8
\TRANSMIT|tx_clk_count[6]\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|tx_clk_count\(6) = DFFEAS((((\TRANSMIT|Add0~20_combout\ & !\TRANSMIT|Equal0~3\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , , )

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
	datac => \TRANSMIT|Add0~20_combout\,
	datad => \TRANSMIT|Equal0~3\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TRANSMIT|tx_clk_count\(6));

-- Location: LC_X4_Y4_N1
\TRANSMIT|Add0~35\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|Add0~35_combout\ = (\TRANSMIT|tx_clk_count\(7) $ (((!\TRANSMIT|Add0~57\ & \TRANSMIT|Add0~22\) # (\TRANSMIT|Add0~57\ & \TRANSMIT|Add0~22COUT1_84\))))
-- \TRANSMIT|Add0~37\ = CARRY(((!\TRANSMIT|Add0~22\) # (!\TRANSMIT|tx_clk_count\(7))))
-- \TRANSMIT|Add0~37COUT1_86\ = CARRY(((!\TRANSMIT|Add0~22COUT1_84\) # (!\TRANSMIT|tx_clk_count\(7))))

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
	datab => \TRANSMIT|tx_clk_count\(7),
	cin => \TRANSMIT|Add0~57\,
	cin0 => \TRANSMIT|Add0~22\,
	cin1 => \TRANSMIT|Add0~22COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|Add0~35_combout\,
	cout0 => \TRANSMIT|Add0~37\,
	cout1 => \TRANSMIT|Add0~37COUT1_86\);

-- Location: LC_X4_Y4_N7
\TRANSMIT|tx_clk_count[7]\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|tx_clk_count\(7) = DFFEAS((((\TRANSMIT|Add0~35_combout\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , , )

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
	datad => \TRANSMIT|Add0~35_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TRANSMIT|tx_clk_count\(7));

-- Location: LC_X4_Y4_N2
\TRANSMIT|Add0~30\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|Add0~30_combout\ = (\TRANSMIT|tx_clk_count\(8) $ ((!(!\TRANSMIT|Add0~57\ & \TRANSMIT|Add0~37\) # (\TRANSMIT|Add0~57\ & \TRANSMIT|Add0~37COUT1_86\))))
-- \TRANSMIT|Add0~32\ = CARRY(((\TRANSMIT|tx_clk_count\(8) & !\TRANSMIT|Add0~37\)))
-- \TRANSMIT|Add0~32COUT1_88\ = CARRY(((\TRANSMIT|tx_clk_count\(8) & !\TRANSMIT|Add0~37COUT1_86\)))

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
	datab => \TRANSMIT|tx_clk_count\(8),
	cin => \TRANSMIT|Add0~57\,
	cin0 => \TRANSMIT|Add0~37\,
	cin1 => \TRANSMIT|Add0~37COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|Add0~30_combout\,
	cout0 => \TRANSMIT|Add0~32\,
	cout1 => \TRANSMIT|Add0~32COUT1_88\);

-- Location: LC_X4_Y4_N9
\TRANSMIT|tx_clk_count[8]\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|tx_clk_count\(8) = DFFEAS((((\TRANSMIT|Add0~30_combout\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , , )

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
	datad => \TRANSMIT|Add0~30_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TRANSMIT|tx_clk_count\(8));

-- Location: LC_X3_Y4_N3
\TRANSMIT|tx_clk_count[9]\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|Equal0~1\ = (!\TRANSMIT|tx_clk_count\(7) & (!\TRANSMIT|tx_clk_count\(8) & (!C1_tx_clk_count[9] & \TRANSMIT|tx_clk_count\(6))))
-- \TRANSMIT|tx_clk_count\(9) = DFFEAS(\TRANSMIT|Equal0~1\, GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , \TRANSMIT|Add0~25_combout\, , , VCC)

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
	dataa => \TRANSMIT|tx_clk_count\(7),
	datab => \TRANSMIT|tx_clk_count\(8),
	datac => \TRANSMIT|Add0~25_combout\,
	datad => \TRANSMIT|tx_clk_count\(6),
	aclr => \RST~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|Equal0~1\,
	regout => \TRANSMIT|tx_clk_count\(9));

-- Location: LC_X4_Y4_N3
\TRANSMIT|Add0~25\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|Add0~25_combout\ = (\TRANSMIT|tx_clk_count\(9) $ (((!\TRANSMIT|Add0~57\ & \TRANSMIT|Add0~32\) # (\TRANSMIT|Add0~57\ & \TRANSMIT|Add0~32COUT1_88\))))
-- \TRANSMIT|Add0~27\ = CARRY(((!\TRANSMIT|Add0~32\) # (!\TRANSMIT|tx_clk_count\(9))))
-- \TRANSMIT|Add0~27COUT1_90\ = CARRY(((!\TRANSMIT|Add0~32COUT1_88\) # (!\TRANSMIT|tx_clk_count\(9))))

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
	datab => \TRANSMIT|tx_clk_count\(9),
	cin => \TRANSMIT|Add0~57\,
	cin0 => \TRANSMIT|Add0~32\,
	cin1 => \TRANSMIT|Add0~32COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|Add0~25_combout\,
	cout0 => \TRANSMIT|Add0~27\,
	cout1 => \TRANSMIT|Add0~27COUT1_90\);

-- Location: LC_X3_Y4_N4
\TRANSMIT|Add0~0\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|Add0~0_combout\ = ((!\TRANSMIT|tx_clk_count\(0)))
-- \TRANSMIT|Add0~2\ = CARRY(((\TRANSMIT|tx_clk_count\(0))))

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
	datab => \TRANSMIT|tx_clk_count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|Add0~0_combout\,
	cout => \TRANSMIT|Add0~2\);

-- Location: LC_X4_Y4_N5
\TRANSMIT|Add0~15\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|Add0~15_combout\ = \TRANSMIT|tx_clk_count\(11) $ ((((\TRANSMIT|Add0~12\))))
-- \TRANSMIT|Add0~17\ = CARRY(((!\TRANSMIT|Add0~12\)) # (!\TRANSMIT|tx_clk_count\(11)))
-- \TRANSMIT|Add0~17COUT1_92\ = CARRY(((!\TRANSMIT|Add0~12\)) # (!\TRANSMIT|tx_clk_count\(11)))

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
	dataa => \TRANSMIT|tx_clk_count\(11),
	cin => \TRANSMIT|Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|Add0~15_combout\,
	cout0 => \TRANSMIT|Add0~17\,
	cout1 => \TRANSMIT|Add0~17COUT1_92\);

-- Location: LC_X4_Y4_N6
\TRANSMIT|Add0~5\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|Add0~5_combout\ = (((!\TRANSMIT|Add0~12\ & \TRANSMIT|Add0~17\) # (\TRANSMIT|Add0~12\ & \TRANSMIT|Add0~17COUT1_92\) $ (!\TRANSMIT|tx_clk_count\(12))))

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
	datad => \TRANSMIT|tx_clk_count\(12),
	cin => \TRANSMIT|Add0~12\,
	cin0 => \TRANSMIT|Add0~17\,
	cin1 => \TRANSMIT|Add0~17COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|Add0~5_combout\);

-- Location: LC_X3_Y4_N1
\TRANSMIT|tx_clk_count[12]\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|tx_clk_count\(12) = DFFEAS((!\TRANSMIT|Equal0~3\ & (((\TRANSMIT|Add0~5_combout\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \TRANSMIT|Equal0~3\,
	datac => \TRANSMIT|Add0~5_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TRANSMIT|tx_clk_count\(12));

-- Location: LC_X2_Y4_N6
\TRANSMIT|tx_clk_count[0]\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|Equal0~0\ = (!\TRANSMIT|tx_clk_count\(11) & (\TRANSMIT|tx_clk_count\(10) & (C1_tx_clk_count[0] & \TRANSMIT|tx_clk_count\(12))))
-- \TRANSMIT|tx_clk_count\(0) = DFFEAS(\TRANSMIT|Equal0~0\, GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , \TRANSMIT|Add0~0_combout\, , , VCC)

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
	dataa => \TRANSMIT|tx_clk_count\(11),
	datab => \TRANSMIT|tx_clk_count\(10),
	datac => \TRANSMIT|Add0~0_combout\,
	datad => \TRANSMIT|tx_clk_count\(12),
	aclr => \RST~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|Equal0~0\,
	regout => \TRANSMIT|tx_clk_count\(0));

-- Location: LC_X2_Y4_N9
\TRANSMIT|tx_clk_tick\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|Equal0~3\ = (\TRANSMIT|tx_clk_count\(1) & (\TRANSMIT|Equal0~2\ & (\TRANSMIT|Equal0~1\ & \TRANSMIT|Equal0~0\)))
-- \TRANSMIT|tx_clk_tick~regout\ = DFFEAS(\TRANSMIT|Equal0~3\, GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , , )

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
	dataa => \TRANSMIT|tx_clk_count\(1),
	datab => \TRANSMIT|Equal0~2\,
	datac => \TRANSMIT|Equal0~1\,
	datad => \TRANSMIT|Equal0~0\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|Equal0~3\,
	regout => \TRANSMIT|tx_clk_tick~regout\);

-- Location: LC_X4_Y4_N4
\TRANSMIT|Add0~10\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|Add0~10_combout\ = (\TRANSMIT|tx_clk_count\(10) $ ((!(!\TRANSMIT|Add0~57\ & \TRANSMIT|Add0~27\) # (\TRANSMIT|Add0~57\ & \TRANSMIT|Add0~27COUT1_90\))))
-- \TRANSMIT|Add0~12\ = CARRY(((\TRANSMIT|tx_clk_count\(10) & !\TRANSMIT|Add0~27COUT1_90\)))

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
	datab => \TRANSMIT|tx_clk_count\(10),
	cin => \TRANSMIT|Add0~57\,
	cin0 => \TRANSMIT|Add0~27\,
	cin1 => \TRANSMIT|Add0~27COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|Add0~10_combout\,
	cout => \TRANSMIT|Add0~12\);

-- Location: LC_X3_Y4_N2
\TRANSMIT|tx_clk_count[10]\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|tx_clk_count\(10) = DFFEAS((((!\TRANSMIT|Equal0~3\ & \TRANSMIT|Add0~10_combout\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , , )

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
	datac => \TRANSMIT|Equal0~3\,
	datad => \TRANSMIT|Add0~10_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TRANSMIT|tx_clk_count\(10));

-- Location: LC_X3_Y4_N0
\TRANSMIT|tx_clk_count[11]\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|tx_clk_count\(11) = DFFEAS((((\TRANSMIT|Add0~15_combout\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , , )

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
	datad => \TRANSMIT|Add0~15_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TRANSMIT|tx_clk_count\(11));

-- Location: LC_X2_Y4_N4
\TRANSMIT|tx_clk_count[1]\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|tx_clk_count\(1) = DFFEAS((((\TRANSMIT|Add0~40_combout\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , , )

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
	datad => \TRANSMIT|Add0~40_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TRANSMIT|tx_clk_count\(1));

-- Location: LC_X2_Y3_N5
\TRANSMIT|transmitter|step[3]\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|transmitter|step\(3) = DFFEAS(E1_step[3] $ (((\TRANSMIT|transmitter|step\(2) & (\TRANSMIT|transmitter|step\(0) & \TRANSMIT|transmitter|step\(1))))), GLOBAL(\TRANSMIT|tx_clk_tick~regout\), !GLOBAL(\TRANSMIT|transmitter|ready~0_combout\), , , VCC, 
-- GLOBAL(\RST~combout\), , )

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
	clk => \TRANSMIT|tx_clk_tick~regout\,
	dataa => \TRANSMIT|transmitter|step\(2),
	datab => \TRANSMIT|transmitter|step\(0),
	datac => VCC,
	datad => \TRANSMIT|transmitter|step\(1),
	aclr => \TRANSMIT|transmitter|ready~0_combout\,
	aload => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TRANSMIT|transmitter|step\(3));

-- Location: LC_X2_Y3_N1
\TRANSMIT|transmitter|Equal2~0\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|transmitter|Equal2~0_combout\ = (\TRANSMIT|transmitter|step\(3) & (!\TRANSMIT|transmitter|step\(0) & (!\TRANSMIT|transmitter|step\(2) & \TRANSMIT|transmitter|step\(1))))

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
	dataa => \TRANSMIT|transmitter|step\(3),
	datab => \TRANSMIT|transmitter|step\(0),
	datac => \TRANSMIT|transmitter|step\(2),
	datad => \TRANSMIT|transmitter|step\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|transmitter|Equal2~0_combout\);

-- Location: LC_X3_Y1_N1
\TRANSMIT|transmitter|ready\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|transmitter|ready~regout\ = DFFEAS(((\TRANSMIT|transmitter|ready~regout\) # ((\TRANSMIT|transmitter|Equal2~0_combout\))), GLOBAL(\TRANSMIT|tx_clk_tick~regout\), !GLOBAL(\TRANSMIT|transmitter|ready~0_combout\), , , VCC, GLOBAL(\RST~combout\), , )

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
	clk => \TRANSMIT|tx_clk_tick~regout\,
	datab => \TRANSMIT|transmitter|ready~regout\,
	datac => VCC,
	datad => \TRANSMIT|transmitter|Equal2~0_combout\,
	aclr => \TRANSMIT|transmitter|ready~0_combout\,
	aload => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TRANSMIT|transmitter|ready~regout\);

-- Location: LC_X7_Y4_N7
\process_1:state[1]~0\ : maxv_lcell
-- Equation(s):
-- \process_1:state[1]~0_combout\ = (!\wr_buff~regout\ & (((\TRANSMIT|transmitter|ready~regout\))))

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
	dataa => \wr_buff~regout\,
	datad => \TRANSMIT|transmitter|ready~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_1:state[1]~0_combout\);

-- Location: LC_X7_Y4_N5
\process_1:state[2]\ : maxv_lcell
-- Equation(s):
-- \process_1:state[2]~regout\ = DFFEAS(\process_1:state[2]~regout\ $ (((\process_1:state[1]~0_combout\ & (\process_1:state[1]~regout\ & \process_1:state[0]~regout\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \process_1:state[2]~regout\,
	datab => \process_1:state[1]~0_combout\,
	datac => \process_1:state[1]~regout\,
	datad => \process_1:state[0]~regout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \process_1:state[2]~regout\);

-- Location: LC_X7_Y4_N9
\process_1:state[0]\ : maxv_lcell
-- Equation(s):
-- \process_1:state[0]~regout\ = DFFEAS((((\process_1:state[2]~regout\ & \process_1:state[1]~regout\)) # (!\process_1:state[0]~regout\)), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \process_1:state[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \process_1:state[2]~regout\,
	datac => \process_1:state[1]~regout\,
	datad => \process_1:state[0]~regout\,
	aclr => \RST~combout\,
	ena => \process_1:state[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \process_1:state[0]~regout\);

-- Location: LC_X7_Y4_N4
\process_1:state[1]\ : maxv_lcell
-- Equation(s):
-- \process_1:state[1]~regout\ = DFFEAS(((\process_1:state[1]~regout\ $ (\process_1:state[0]~regout\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \process_1:state[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \process_1:state[1]~regout\,
	datad => \process_1:state[0]~regout\,
	aclr => \RST~combout\,
	ena => \process_1:state[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \process_1:state[1]~regout\);

-- Location: LC_X7_Y4_N8
wr_buff : maxv_lcell
-- Equation(s):
-- \wr_buff~regout\ = DFFEAS((\process_1:state[1]~0_combout\ & ((\process_1:state[1]~regout\ $ (\process_1:state[0]~regout\)) # (!\process_1:state[2]~regout\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \process_1:state[1]~regout\,
	datab => \process_1:state[0]~regout\,
	datac => \process_1:state[2]~regout\,
	datad => \process_1:state[1]~0_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wr_buff~regout\);

-- Location: LC_X6_Y3_N8
wr : maxv_lcell
-- Equation(s):
-- \wr~regout\ = DFFEAS((!\wr_buff~regout\ & ((\wr~regout\) # ((!\TRANSMIT|transmitter|ready~regout\)))), GLOBAL(\CLK~combout\), VCC, , , VCC, GLOBAL(\RST~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2233",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \wr~regout\,
	datab => \wr_buff~regout\,
	datac => VCC,
	datad => \TRANSMIT|transmitter|ready~regout\,
	aclr => GND,
	aload => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wr~regout\);

-- Location: LC_X2_Y3_N7
\TRANSMIT|transmitter|trigger\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|transmitter|trigger~combout\ = (\TRANSMIT|transmitter|ready~regout\ & ((\wr~regout\) # ((\TRANSMIT|transmitter|trigger~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wr~regout\,
	datab => \TRANSMIT|transmitter|ready~regout\,
	datac => \TRANSMIT|transmitter|trigger~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|transmitter|trigger~combout\);

-- Location: LC_X2_Y3_N6
\TRANSMIT|transmitter|ready~0\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|transmitter|ready~0_combout\ = (\TRANSMIT|transmitter|trigger~combout\ & (!\wr~regout\ & (!\RST~combout\ & \TRANSMIT|transmitter|Equal2~0_combout\)))

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
	dataa => \TRANSMIT|transmitter|trigger~combout\,
	datab => \wr~regout\,
	datac => \RST~combout\,
	datad => \TRANSMIT|transmitter|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|transmitter|ready~0_combout\);

-- Location: LC_X7_Y3_N1
\TRANSMIT|transmitter|step[1]\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|transmitter|step\(1) = DFFEAS((\TRANSMIT|transmitter|step\(0) $ (((\TRANSMIT|transmitter|step\(1))))), GLOBAL(\TRANSMIT|tx_clk_tick~regout\), !GLOBAL(\TRANSMIT|transmitter|ready~0_combout\), , , VCC, GLOBAL(\RST~combout\), , )

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
	clk => \TRANSMIT|tx_clk_tick~regout\,
	datab => \TRANSMIT|transmitter|step\(0),
	datac => VCC,
	datad => \TRANSMIT|transmitter|step\(1),
	aclr => \TRANSMIT|transmitter|ready~0_combout\,
	aload => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TRANSMIT|transmitter|step\(1));

-- Location: LC_X7_Y3_N9
\TRANSMIT|transmitter|TX~4\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|transmitter|TX~4_combout\ = (\RST~combout\) # ((\TRANSMIT|transmitter|trigger~combout\ & (!\wr~regout\ & \TRANSMIT|transmitter|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cecc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRANSMIT|transmitter|trigger~combout\,
	datab => \RST~combout\,
	datac => \wr~regout\,
	datad => \TRANSMIT|transmitter|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|transmitter|TX~4_combout\);

-- Location: LC_X7_Y3_N2
\TRANSMIT|transmitter|step[0]\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|transmitter|step\(0) = DFFEAS((!\TRANSMIT|transmitter|step\(0) & (((\TRANSMIT|transmitter|step\(2)) # (!\TRANSMIT|transmitter|step\(3))) # (!\TRANSMIT|transmitter|step\(1)))), GLOBAL(\TRANSMIT|tx_clk_tick~regout\), 
-- !\TRANSMIT|transmitter|TX~4_combout\, , , , , , )

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
	clk => \TRANSMIT|tx_clk_tick~regout\,
	dataa => \TRANSMIT|transmitter|step\(0),
	datab => \TRANSMIT|transmitter|step\(1),
	datac => \TRANSMIT|transmitter|step\(2),
	datad => \TRANSMIT|transmitter|step\(3),
	aclr => \TRANSMIT|transmitter|TX~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TRANSMIT|transmitter|step\(0));

-- Location: LC_X7_Y3_N3
\TRANSMIT|transmitter|step[2]\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|transmitter|step\(2) = DFFEAS(\TRANSMIT|transmitter|step\(2) $ ((((\TRANSMIT|transmitter|step\(0) & \TRANSMIT|transmitter|step\(1))))), GLOBAL(\TRANSMIT|tx_clk_tick~regout\), !\TRANSMIT|transmitter|TX~4_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TRANSMIT|tx_clk_tick~regout\,
	dataa => \TRANSMIT|transmitter|step\(2),
	datac => \TRANSMIT|transmitter|step\(0),
	datad => \TRANSMIT|transmitter|step\(1),
	aclr => \TRANSMIT|transmitter|TX~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TRANSMIT|transmitter|step\(2));

-- Location: LC_X7_Y3_N4
\TRANSMIT|transmitter|TX~0\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|transmitter|TX~0_combout\ = (\TRANSMIT|transmitter|step\(2) & ((\TRANSMIT|transmitter|step\(1)) # ((\TRANSMIT|transmitter|step\(0))))) # (!\TRANSMIT|transmitter|step\(2) & (!\TRANSMIT|transmitter|step\(1) & ((\TRANSMIT|transmitter|step\(3)))))

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
	dataa => \TRANSMIT|transmitter|step\(2),
	datab => \TRANSMIT|transmitter|step\(1),
	datac => \TRANSMIT|transmitter|step\(0),
	datad => \TRANSMIT|transmitter|step\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|transmitter|TX~0_combout\);

-- Location: LC_X7_Y3_N0
\TRANSMIT|transmitter|TX~1\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|transmitter|TX~1_combout\ = \TRANSMIT|transmitter|step\(2) $ (((\TRANSMIT|transmitter|step\(0)) # ((\TRANSMIT|transmitter|step\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5566",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRANSMIT|transmitter|step\(2),
	datab => \TRANSMIT|transmitter|step\(0),
	datad => \TRANSMIT|transmitter|step\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|transmitter|TX~1_combout\);

-- Location: LC_X6_Y3_N7
\data[7]~3\ : maxv_lcell
-- Equation(s):
-- \data[7]~3_combout\ = (\process_1:state[2]~regout\ $ (((\process_1:state[0]~regout\))))

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
	datab => \process_1:state[2]~regout\,
	datad => \process_1:state[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data[7]~3_combout\);

-- Location: LC_X7_Y4_N1
\process_1~0\ : maxv_lcell
-- Equation(s):
-- \process_1~0_combout\ = (\process_1:state[2]~regout\) # (((\process_1:state[1]~regout\)))

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
	dataa => \process_1:state[2]~regout\,
	datac => \process_1:state[1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_1~0_combout\);

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENC_R~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ENC_R,
	combout => \ENC_R~combout\);

-- Location: LC_X7_Y4_N2
\POSITION|r_lck\ : maxv_lcell
-- Equation(s):
-- \POSITION|process_0~0\ = (\ENC_R~combout\ & (((!B1_r_lck))))
-- \POSITION|r_lck~regout\ = DFFEAS(\POSITION|process_0~0\, GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , \ENC_R~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \ENC_R~combout\,
	datac => \ENC_R~combout\,
	aclr => \RST~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|process_0~0\,
	regout => \POSITION|r_lck~regout\);

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENC_L~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ENC_L,
	combout => \ENC_L~combout\);

-- Location: LC_X7_Y4_N3
\POSITION|l_lck\ : maxv_lcell
-- Equation(s):
-- \POSITION|l_lck~regout\ = DFFEAS((\ENC_L~combout\ & ((\POSITION|r_lck~regout\) # ((\POSITION|l_lck~regout\) # (!\ENC_R~combout\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa8a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \ENC_L~combout\,
	datab => \POSITION|r_lck~regout\,
	datac => \ENC_R~combout\,
	datad => \POSITION|l_lck~regout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|l_lck~regout\);

-- Location: LC_X7_Y4_N6
\POSITION|a_2t[7]~0\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_2t[7]~0_combout\ = (\ENC_L~combout\ & (((!\POSITION|r_lck~regout\ & \ENC_R~combout\)) # (!\POSITION|l_lck~regout\))) # (!\ENC_L~combout\ & (!\POSITION|r_lck~regout\ & (\ENC_R~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30ba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ENC_L~combout\,
	datab => \POSITION|r_lck~regout\,
	datac => \ENC_R~combout\,
	datad => \POSITION|l_lck~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|a_2t[7]~0_combout\);

-- Location: LC_X3_Y2_N0
\POSITION|a_2t[0]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_2t\(0) = DFFEAS(((!\POSITION|a_2t\(0))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_2t[0]~14\ = CARRY(((\POSITION|a_2t\(0))))
-- \POSITION|a_2t[0]~14COUT1_31\ = CARRY(((\POSITION|a_2t\(0))))

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
	clk => \CLK~combout\,
	datab => \POSITION|a_2t\(0),
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_2t\(0),
	cout0 => \POSITION|a_2t[0]~14\,
	cout1 => \POSITION|a_2t[0]~14COUT1_31\);

-- Location: LC_X3_Y2_N1
\POSITION|a_2t[1]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_2t\(1) = DFFEAS(\POSITION|process_0~0\ $ (\POSITION|a_2t\(1) $ ((!\POSITION|a_2t[0]~14\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_2t[1]~16\ = CARRY((\POSITION|process_0~0\ & ((!\POSITION|a_2t[0]~14\) # (!\POSITION|a_2t\(1)))) # (!\POSITION|process_0~0\ & (!\POSITION|a_2t\(1) & !\POSITION|a_2t[0]~14\)))
-- \POSITION|a_2t[1]~16COUT1_33\ = CARRY((\POSITION|process_0~0\ & ((!\POSITION|a_2t[0]~14COUT1_31\) # (!\POSITION|a_2t\(1)))) # (!\POSITION|process_0~0\ & (!\POSITION|a_2t\(1) & !\POSITION|a_2t[0]~14COUT1_31\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|process_0~0\,
	datab => \POSITION|a_2t\(1),
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin0 => \POSITION|a_2t[0]~14\,
	cin1 => \POSITION|a_2t[0]~14COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_2t\(1),
	cout0 => \POSITION|a_2t[1]~16\,
	cout1 => \POSITION|a_2t[1]~16COUT1_33\);

-- Location: LC_X3_Y2_N2
\POSITION|a_2t[2]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_2t\(2) = DFFEAS(\POSITION|process_0~0\ $ (\POSITION|a_2t\(2) $ ((\POSITION|a_2t[1]~16\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_2t[2]~6\ = CARRY((\POSITION|process_0~0\ & (\POSITION|a_2t\(2) & !\POSITION|a_2t[1]~16\)) # (!\POSITION|process_0~0\ & ((\POSITION|a_2t\(2)) # (!\POSITION|a_2t[1]~16\))))
-- \POSITION|a_2t[2]~6COUT1_35\ = CARRY((\POSITION|process_0~0\ & (\POSITION|a_2t\(2) & !\POSITION|a_2t[1]~16COUT1_33\)) # (!\POSITION|process_0~0\ & ((\POSITION|a_2t\(2)) # (!\POSITION|a_2t[1]~16COUT1_33\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|process_0~0\,
	datab => \POSITION|a_2t\(2),
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin0 => \POSITION|a_2t[1]~16\,
	cin1 => \POSITION|a_2t[1]~16COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_2t\(2),
	cout0 => \POSITION|a_2t[2]~6\,
	cout1 => \POSITION|a_2t[2]~6COUT1_35\);

-- Location: LC_X3_Y2_N3
\POSITION|a_2t[3]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_2t\(3) = DFFEAS(\POSITION|a_2t\(3) $ (\POSITION|process_0~0\ $ ((!\POSITION|a_2t[2]~6\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_2t[3]~20\ = CARRY((\POSITION|a_2t\(3) & (\POSITION|process_0~0\ & !\POSITION|a_2t[2]~6\)) # (!\POSITION|a_2t\(3) & ((\POSITION|process_0~0\) # (!\POSITION|a_2t[2]~6\))))
-- \POSITION|a_2t[3]~20COUT1_37\ = CARRY((\POSITION|a_2t\(3) & (\POSITION|process_0~0\ & !\POSITION|a_2t[2]~6COUT1_35\)) # (!\POSITION|a_2t\(3) & ((\POSITION|process_0~0\) # (!\POSITION|a_2t[2]~6COUT1_35\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_2t\(3),
	datab => \POSITION|process_0~0\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin0 => \POSITION|a_2t[2]~6\,
	cin1 => \POSITION|a_2t[2]~6COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_2t\(3),
	cout0 => \POSITION|a_2t[3]~20\,
	cout1 => \POSITION|a_2t[3]~20COUT1_37\);

-- Location: LC_X3_Y2_N4
\POSITION|a_2t[4]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_2t\(4) = DFFEAS(\POSITION|process_0~0\ $ (\POSITION|a_2t\(4) $ ((\POSITION|a_2t[3]~20\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_2t[4]~8\ = CARRY((\POSITION|process_0~0\ & (\POSITION|a_2t\(4) & !\POSITION|a_2t[3]~20COUT1_37\)) # (!\POSITION|process_0~0\ & ((\POSITION|a_2t\(4)) # (!\POSITION|a_2t[3]~20COUT1_37\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|process_0~0\,
	datab => \POSITION|a_2t\(4),
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin0 => \POSITION|a_2t[3]~20\,
	cin1 => \POSITION|a_2t[3]~20COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_2t\(4),
	cout => \POSITION|a_2t[4]~8\);

-- Location: LC_X3_Y2_N5
\POSITION|a_2t[5]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_2t\(5) = DFFEAS(\POSITION|a_2t\(5) $ (\POSITION|process_0~0\ $ ((!\POSITION|a_2t[4]~8\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_2t[5]~10\ = CARRY((\POSITION|a_2t\(5) & (\POSITION|process_0~0\ & !\POSITION|a_2t[4]~8\)) # (!\POSITION|a_2t\(5) & ((\POSITION|process_0~0\) # (!\POSITION|a_2t[4]~8\))))
-- \POSITION|a_2t[5]~10COUT1_39\ = CARRY((\POSITION|a_2t\(5) & (\POSITION|process_0~0\ & !\POSITION|a_2t[4]~8\)) # (!\POSITION|a_2t\(5) & ((\POSITION|process_0~0\) # (!\POSITION|a_2t[4]~8\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_2t\(5),
	datab => \POSITION|process_0~0\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_2t[4]~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_2t\(5),
	cout0 => \POSITION|a_2t[5]~10\,
	cout1 => \POSITION|a_2t[5]~10COUT1_39\);

-- Location: LC_X3_Y2_N6
\POSITION|a_2t[6]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_2t\(6) = DFFEAS(\POSITION|process_0~0\ $ (\POSITION|a_2t\(6) $ (((!\POSITION|a_2t[4]~8\ & \POSITION|a_2t[5]~10\) # (\POSITION|a_2t[4]~8\ & \POSITION|a_2t[5]~10COUT1_39\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , 
-- \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_2t[6]~18\ = CARRY((\POSITION|process_0~0\ & (\POSITION|a_2t\(6) & !\POSITION|a_2t[5]~10\)) # (!\POSITION|process_0~0\ & ((\POSITION|a_2t\(6)) # (!\POSITION|a_2t[5]~10\))))
-- \POSITION|a_2t[6]~18COUT1_41\ = CARRY((\POSITION|process_0~0\ & (\POSITION|a_2t\(6) & !\POSITION|a_2t[5]~10COUT1_39\)) # (!\POSITION|process_0~0\ & ((\POSITION|a_2t\(6)) # (!\POSITION|a_2t[5]~10COUT1_39\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|process_0~0\,
	datab => \POSITION|a_2t\(6),
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_2t[4]~8\,
	cin0 => \POSITION|a_2t[5]~10\,
	cin1 => \POSITION|a_2t[5]~10COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_2t\(6),
	cout0 => \POSITION|a_2t[6]~18\,
	cout1 => \POSITION|a_2t[6]~18COUT1_41\);

-- Location: LC_X3_Y2_N7
\POSITION|a_2t[7]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_2t\(7) = DFFEAS(\POSITION|process_0~0\ $ (\POSITION|a_2t\(7) $ ((!(!\POSITION|a_2t[4]~8\ & \POSITION|a_2t[6]~18\) # (\POSITION|a_2t[4]~8\ & \POSITION|a_2t[6]~18COUT1_41\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , 
-- \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_2t[7]~12\ = CARRY((\POSITION|process_0~0\ & ((!\POSITION|a_2t[6]~18\) # (!\POSITION|a_2t\(7)))) # (!\POSITION|process_0~0\ & (!\POSITION|a_2t\(7) & !\POSITION|a_2t[6]~18\)))
-- \POSITION|a_2t[7]~12COUT1_43\ = CARRY((\POSITION|process_0~0\ & ((!\POSITION|a_2t[6]~18COUT1_41\) # (!\POSITION|a_2t\(7)))) # (!\POSITION|process_0~0\ & (!\POSITION|a_2t\(7) & !\POSITION|a_2t[6]~18COUT1_41\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|process_0~0\,
	datab => \POSITION|a_2t\(7),
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_2t[4]~8\,
	cin0 => \POSITION|a_2t[6]~18\,
	cin1 => \POSITION|a_2t[6]~18COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_2t\(7),
	cout0 => \POSITION|a_2t[7]~12\,
	cout1 => \POSITION|a_2t[7]~12COUT1_43\);

-- Location: LC_X3_Y2_N8
\POSITION|a_2t[8]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_2t\(8) = DFFEAS(\POSITION|a_2t\(8) $ (\POSITION|process_0~0\ $ (((!\POSITION|a_2t[4]~8\ & \POSITION|a_2t[7]~12\) # (\POSITION|a_2t[4]~8\ & \POSITION|a_2t[7]~12COUT1_43\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , 
-- \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_2t[8]~4\ = CARRY((\POSITION|a_2t\(8) & ((!\POSITION|a_2t[7]~12\) # (!\POSITION|process_0~0\))) # (!\POSITION|a_2t\(8) & (!\POSITION|process_0~0\ & !\POSITION|a_2t[7]~12\)))
-- \POSITION|a_2t[8]~4COUT1_45\ = CARRY((\POSITION|a_2t\(8) & ((!\POSITION|a_2t[7]~12COUT1_43\) # (!\POSITION|process_0~0\))) # (!\POSITION|a_2t\(8) & (!\POSITION|process_0~0\ & !\POSITION|a_2t[7]~12COUT1_43\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_2t\(8),
	datab => \POSITION|process_0~0\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_2t[4]~8\,
	cin0 => \POSITION|a_2t[7]~12\,
	cin1 => \POSITION|a_2t[7]~12COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_2t\(8),
	cout0 => \POSITION|a_2t[8]~4\,
	cout1 => \POSITION|a_2t[8]~4COUT1_45\);

-- Location: LC_X3_Y2_N9
\POSITION|a_2t[9]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_2t\(9) = DFFEAS((\POSITION|a_2t\(9) $ ((!\POSITION|a_2t[4]~8\ & \POSITION|a_2t[8]~4\) # (\POSITION|a_2t[4]~8\ & \POSITION|a_2t[8]~4COUT1_45\) $ (!\POSITION|process_0~0\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , 
-- \POSITION|a_2t[7]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \POSITION|a_2t\(9),
	datad => \POSITION|process_0~0\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_2t[4]~8\,
	cin0 => \POSITION|a_2t[8]~4\,
	cin1 => \POSITION|a_2t[8]~4COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_2t\(9));

-- Location: LC_X2_Y2_N3
\POSITION|Lookup|theta2_r~0\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|theta2_r~0_combout\ = ((\POSITION|a_2t\(0) $ (\POSITION|a_2t\(9))))

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
	datac => \POSITION|a_2t\(0),
	datad => \POSITION|a_2t\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|theta2_r~0_combout\);

-- Location: LC_X4_Y2_N0
\POSITION|Lookup|Add0~25\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add0~25_combout\ = \POSITION|a_2t\(9) $ ((\POSITION|Lookup|theta2_r~0_combout\))
-- \POSITION|Lookup|Add0~27\ = CARRY((\POSITION|a_2t\(9) & (\POSITION|Lookup|theta2_r~0_combout\)))
-- \POSITION|Lookup|Add0~27COUT1_60\ = CARRY((\POSITION|a_2t\(9) & (\POSITION|Lookup|theta2_r~0_combout\)))

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
	dataa => \POSITION|a_2t\(9),
	datab => \POSITION|Lookup|theta2_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add0~25_combout\,
	cout0 => \POSITION|Lookup|Add0~27\,
	cout1 => \POSITION|Lookup|Add0~27COUT1_60\);

-- Location: LC_X4_Y2_N1
\POSITION|Lookup|Add0~30\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add0~30_combout\ = \POSITION|a_2t\(1) $ (\POSITION|a_2t\(9) $ ((\POSITION|Lookup|Add0~27\)))
-- \POSITION|Lookup|Add0~32\ = CARRY((\POSITION|a_2t\(1) $ (!\POSITION|a_2t\(9))) # (!\POSITION|Lookup|Add0~27\))
-- \POSITION|Lookup|Add0~32COUT1_62\ = CARRY((\POSITION|a_2t\(1) $ (!\POSITION|a_2t\(9))) # (!\POSITION|Lookup|Add0~27COUT1_60\))

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
	dataa => \POSITION|a_2t\(1),
	datab => \POSITION|a_2t\(9),
	cin0 => \POSITION|Lookup|Add0~27\,
	cin1 => \POSITION|Lookup|Add0~27COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add0~30_combout\,
	cout0 => \POSITION|Lookup|Add0~32\,
	cout1 => \POSITION|Lookup|Add0~32COUT1_62\);

-- Location: LC_X4_Y2_N2
\POSITION|Lookup|Add0~5\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add0~5_combout\ = \POSITION|a_2t\(9) $ (\POSITION|a_2t\(2) $ ((!\POSITION|Lookup|Add0~32\)))
-- \POSITION|Lookup|Add0~7\ = CARRY((!\POSITION|Lookup|Add0~32\ & (\POSITION|a_2t\(9) $ (\POSITION|a_2t\(2)))))
-- \POSITION|Lookup|Add0~7COUT1_64\ = CARRY((!\POSITION|Lookup|Add0~32COUT1_62\ & (\POSITION|a_2t\(9) $ (\POSITION|a_2t\(2)))))

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
	dataa => \POSITION|a_2t\(9),
	datab => \POSITION|a_2t\(2),
	cin0 => \POSITION|Lookup|Add0~32\,
	cin1 => \POSITION|Lookup|Add0~32COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add0~5_combout\,
	cout0 => \POSITION|Lookup|Add0~7\,
	cout1 => \POSITION|Lookup|Add0~7COUT1_64\);

-- Location: LC_X4_Y2_N3
\POSITION|Lookup|Add0~45\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add0~45_combout\ = \POSITION|a_2t\(9) $ (\POSITION|a_2t\(3) $ ((\POSITION|Lookup|Add0~7\)))
-- \POSITION|Lookup|Add0~47\ = CARRY((\POSITION|a_2t\(9) $ (!\POSITION|a_2t\(3))) # (!\POSITION|Lookup|Add0~7\))
-- \POSITION|Lookup|Add0~47COUT1_66\ = CARRY((\POSITION|a_2t\(9) $ (!\POSITION|a_2t\(3))) # (!\POSITION|Lookup|Add0~7COUT1_64\))

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
	dataa => \POSITION|a_2t\(9),
	datab => \POSITION|a_2t\(3),
	cin0 => \POSITION|Lookup|Add0~7\,
	cin1 => \POSITION|Lookup|Add0~7COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add0~45_combout\,
	cout0 => \POSITION|Lookup|Add0~47\,
	cout1 => \POSITION|Lookup|Add0~47COUT1_66\);

-- Location: LC_X4_Y2_N4
\POSITION|Lookup|Add0~10\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add0~10_combout\ = \POSITION|a_2t\(9) $ (\POSITION|a_2t\(4) $ ((!\POSITION|Lookup|Add0~47\)))
-- \POSITION|Lookup|Add0~12\ = CARRY((!\POSITION|Lookup|Add0~47COUT1_66\ & (\POSITION|a_2t\(9) $ (\POSITION|a_2t\(4)))))

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
	dataa => \POSITION|a_2t\(9),
	datab => \POSITION|a_2t\(4),
	cin0 => \POSITION|Lookup|Add0~47\,
	cin1 => \POSITION|Lookup|Add0~47COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add0~10_combout\,
	cout => \POSITION|Lookup|Add0~12\);

-- Location: LC_X4_Y2_N5
\POSITION|Lookup|Add0~15\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add0~15_combout\ = \POSITION|a_2t\(5) $ (\POSITION|a_2t\(9) $ ((\POSITION|Lookup|Add0~12\)))
-- \POSITION|Lookup|Add0~17\ = CARRY((\POSITION|a_2t\(5) $ (!\POSITION|a_2t\(9))) # (!\POSITION|Lookup|Add0~12\))
-- \POSITION|Lookup|Add0~17COUT1_68\ = CARRY((\POSITION|a_2t\(5) $ (!\POSITION|a_2t\(9))) # (!\POSITION|Lookup|Add0~12\))

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
	dataa => \POSITION|a_2t\(5),
	datab => \POSITION|a_2t\(9),
	cin => \POSITION|Lookup|Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add0~15_combout\,
	cout0 => \POSITION|Lookup|Add0~17\,
	cout1 => \POSITION|Lookup|Add0~17COUT1_68\);

-- Location: LC_X4_Y2_N6
\POSITION|Lookup|Add0~40\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add0~40_combout\ = \POSITION|a_2t\(9) $ (\POSITION|a_2t\(6) $ ((!(!\POSITION|Lookup|Add0~12\ & \POSITION|Lookup|Add0~17\) # (\POSITION|Lookup|Add0~12\ & \POSITION|Lookup|Add0~17COUT1_68\))))
-- \POSITION|Lookup|Add0~42\ = CARRY((!\POSITION|Lookup|Add0~17\ & (\POSITION|a_2t\(9) $ (\POSITION|a_2t\(6)))))
-- \POSITION|Lookup|Add0~42COUT1_70\ = CARRY((!\POSITION|Lookup|Add0~17COUT1_68\ & (\POSITION|a_2t\(9) $ (\POSITION|a_2t\(6)))))

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
	dataa => \POSITION|a_2t\(9),
	datab => \POSITION|a_2t\(6),
	cin => \POSITION|Lookup|Add0~12\,
	cin0 => \POSITION|Lookup|Add0~17\,
	cin1 => \POSITION|Lookup|Add0~17COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add0~40_combout\,
	cout0 => \POSITION|Lookup|Add0~42\,
	cout1 => \POSITION|Lookup|Add0~42COUT1_70\);

-- Location: LC_X4_Y2_N7
\POSITION|Lookup|Add0~20\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add0~20_combout\ = \POSITION|a_2t\(9) $ (\POSITION|a_2t\(7) $ (((!\POSITION|Lookup|Add0~12\ & \POSITION|Lookup|Add0~42\) # (\POSITION|Lookup|Add0~12\ & \POSITION|Lookup|Add0~42COUT1_70\))))
-- \POSITION|Lookup|Add0~22\ = CARRY((\POSITION|a_2t\(9) $ (!\POSITION|a_2t\(7))) # (!\POSITION|Lookup|Add0~42\))
-- \POSITION|Lookup|Add0~22COUT1_72\ = CARRY((\POSITION|a_2t\(9) $ (!\POSITION|a_2t\(7))) # (!\POSITION|Lookup|Add0~42COUT1_70\))

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
	dataa => \POSITION|a_2t\(9),
	datab => \POSITION|a_2t\(7),
	cin => \POSITION|Lookup|Add0~12\,
	cin0 => \POSITION|Lookup|Add0~42\,
	cin1 => \POSITION|Lookup|Add0~42COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add0~20_combout\,
	cout0 => \POSITION|Lookup|Add0~22\,
	cout1 => \POSITION|Lookup|Add0~22COUT1_72\);

-- Location: LC_X4_Y2_N8
\POSITION|Lookup|Add0~35\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add0~35_combout\ = \POSITION|a_2t\(9) $ (\POSITION|a_2t\(8) $ ((!(!\POSITION|Lookup|Add0~12\ & \POSITION|Lookup|Add0~22\) # (\POSITION|Lookup|Add0~12\ & \POSITION|Lookup|Add0~22COUT1_72\))))
-- \POSITION|Lookup|Add0~37\ = CARRY((!\POSITION|Lookup|Add0~22\ & (\POSITION|a_2t\(9) $ (\POSITION|a_2t\(8)))))
-- \POSITION|Lookup|Add0~37COUT1_74\ = CARRY((!\POSITION|Lookup|Add0~22COUT1_72\ & (\POSITION|a_2t\(9) $ (\POSITION|a_2t\(8)))))

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
	dataa => \POSITION|a_2t\(9),
	datab => \POSITION|a_2t\(8),
	cin => \POSITION|Lookup|Add0~12\,
	cin0 => \POSITION|Lookup|Add0~22\,
	cin1 => \POSITION|Lookup|Add0~22COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add0~35_combout\,
	cout0 => \POSITION|Lookup|Add0~37\,
	cout1 => \POSITION|Lookup|Add0~37COUT1_74\);

-- Location: LC_X4_Y2_N9
\POSITION|Lookup|Add0~0\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add0~0_combout\ = ((((!\POSITION|Lookup|Add0~12\ & \POSITION|Lookup|Add0~37\) # (\POSITION|Lookup|Add0~12\ & \POSITION|Lookup|Add0~37COUT1_74\))))

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
	cin => \POSITION|Lookup|Add0~12\,
	cin0 => \POSITION|Lookup|Add0~37\,
	cin1 => \POSITION|Lookup|Add0~37COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add0~0_combout\);

-- Location: LC_X5_Y2_N0
\POSITION|Lookup|LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|LessThan0~2_combout\ = ((\POSITION|Lookup|Add0~35_combout\) # ((\POSITION|Lookup|Add0~40_combout\ & \POSITION|Lookup|Add0~20_combout\)))

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
	datab => \POSITION|Lookup|Add0~40_combout\,
	datac => \POSITION|Lookup|Add0~35_combout\,
	datad => \POSITION|Lookup|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|LessThan0~2_combout\);

-- Location: LC_X5_Y2_N8
\POSITION|Lookup|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|LessThan0~0_combout\ = ((\POSITION|Lookup|Add0~20_combout\ & (\POSITION|Lookup|Add0~10_combout\ & \POSITION|Lookup|Add0~15_combout\)))

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
	datab => \POSITION|Lookup|Add0~20_combout\,
	datac => \POSITION|Lookup|Add0~10_combout\,
	datad => \POSITION|Lookup|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|LessThan0~0_combout\);

-- Location: LC_X5_Y2_N3
\POSITION|Lookup|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|LessThan0~1_combout\ = (\POSITION|Lookup|Add0~5_combout\ & (\POSITION|Lookup|LessThan0~0_combout\ & ((\POSITION|Lookup|Add0~25_combout\) # (\POSITION|Lookup|Add0~30_combout\))))

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
	dataa => \POSITION|Lookup|Add0~25_combout\,
	datab => \POSITION|Lookup|Add0~5_combout\,
	datac => \POSITION|Lookup|Add0~30_combout\,
	datad => \POSITION|Lookup|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|LessThan0~1_combout\);

-- Location: LC_X6_Y3_N9
\POSITION|Lookup|LessThan0~3\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|LessThan0~3_combout\ = (\POSITION|Lookup|LessThan0~2_combout\) # ((\POSITION|Lookup|LessThan0~1_combout\) # ((\POSITION|Lookup|Add0~45_combout\ & \POSITION|Lookup|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|LessThan0~2_combout\,
	datab => \POSITION|Lookup|Add0~45_combout\,
	datac => \POSITION|Lookup|LessThan0~1_combout\,
	datad => \POSITION|Lookup|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|LessThan0~3_combout\);

-- Location: LC_X5_Y2_N9
\POSITION|Lookup|LessThan0~4\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|LessThan0~4_combout\ = (\POSITION|Lookup|Add0~45_combout\ & (\POSITION|Lookup|Add0~20_combout\ & (\POSITION|Lookup|Add0~10_combout\ & \POSITION|Lookup|Add0~15_combout\)))

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
	dataa => \POSITION|Lookup|Add0~45_combout\,
	datab => \POSITION|Lookup|Add0~20_combout\,
	datac => \POSITION|Lookup|Add0~10_combout\,
	datad => \POSITION|Lookup|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|LessThan0~4_combout\);

-- Location: LC_X5_Y2_N4
\POSITION|Lookup|LessThan0~5\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|LessThan0~5_combout\ = (\POSITION|Lookup|Add0~0_combout\) # ((\POSITION|Lookup|LessThan0~4_combout\) # ((\POSITION|Lookup|LessThan0~2_combout\) # (\POSITION|Lookup|LessThan0~1_combout\)))

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
	dataa => \POSITION|Lookup|Add0~0_combout\,
	datab => \POSITION|Lookup|LessThan0~4_combout\,
	datac => \POSITION|Lookup|LessThan0~2_combout\,
	datad => \POSITION|Lookup|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|LessThan0~5_combout\);

-- Location: LC_X6_Y2_N0
\POSITION|Lookup|Add1~44\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add1~44_cout0\ = CARRY(((!\POSITION|Lookup|Add0~25_combout\)))
-- \POSITION|Lookup|Add1~44COUT1_55\ = CARRY(((!\POSITION|Lookup|Add0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \POSITION|Lookup|Add0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add1~42\,
	cout0 => \POSITION|Lookup|Add1~44_cout0\,
	cout1 => \POSITION|Lookup|Add1~44COUT1_55\);

-- Location: LC_X6_Y2_N1
\POSITION|Lookup|Add1~6\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add1~6_combout\ = (\POSITION|Lookup|Add0~30_combout\ $ ((!\POSITION|Lookup|Add1~44_cout0\)))
-- \POSITION|Lookup|Add1~8\ = CARRY(((\POSITION|Lookup|Add0~30_combout\) # (!\POSITION|Lookup|Add1~44_cout0\)))
-- \POSITION|Lookup|Add1~8COUT1_57\ = CARRY(((\POSITION|Lookup|Add0~30_combout\) # (!\POSITION|Lookup|Add1~44COUT1_55\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c3cf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \POSITION|Lookup|Add0~30_combout\,
	cin0 => \POSITION|Lookup|Add1~44_cout0\,
	cin1 => \POSITION|Lookup|Add1~44COUT1_55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add1~6_combout\,
	cout0 => \POSITION|Lookup|Add1~8\,
	cout1 => \POSITION|Lookup|Add1~8COUT1_57\);

-- Location: LC_X6_Y2_N2
\POSITION|Lookup|Add1~12\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add1~12_combout\ = (\POSITION|Lookup|Add0~5_combout\ $ ((\POSITION|Lookup|Add1~8\)))
-- \POSITION|Lookup|Add1~14\ = CARRY(((!\POSITION|Lookup|Add0~5_combout\ & !\POSITION|Lookup|Add1~8\)))
-- \POSITION|Lookup|Add1~14COUT1_59\ = CARRY(((!\POSITION|Lookup|Add0~5_combout\ & !\POSITION|Lookup|Add1~8COUT1_57\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c03",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \POSITION|Lookup|Add0~5_combout\,
	cin0 => \POSITION|Lookup|Add1~8\,
	cin1 => \POSITION|Lookup|Add1~8COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add1~12_combout\,
	cout0 => \POSITION|Lookup|Add1~14\,
	cout1 => \POSITION|Lookup|Add1~14COUT1_59\);

-- Location: LC_X6_Y2_N3
\POSITION|Lookup|Add1~18\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add1~18_combout\ = (\POSITION|Lookup|Add0~45_combout\ $ ((\POSITION|Lookup|Add1~14\)))
-- \POSITION|Lookup|Add1~20\ = CARRY(((\POSITION|Lookup|Add0~45_combout\ & !\POSITION|Lookup|Add1~14\)))
-- \POSITION|Lookup|Add1~20COUT1_61\ = CARRY(((\POSITION|Lookup|Add0~45_combout\ & !\POSITION|Lookup|Add1~14COUT1_59\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c0c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \POSITION|Lookup|Add0~45_combout\,
	cin0 => \POSITION|Lookup|Add1~14\,
	cin1 => \POSITION|Lookup|Add1~14COUT1_59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add1~18_combout\,
	cout0 => \POSITION|Lookup|Add1~20\,
	cout1 => \POSITION|Lookup|Add1~20COUT1_61\);

-- Location: LC_X6_Y2_N4
\POSITION|Lookup|Add1~24\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add1~24_combout\ = (\POSITION|Lookup|Add0~10_combout\ $ ((\POSITION|Lookup|Add1~20\)))
-- \POSITION|Lookup|Add1~26\ = CARRY(((!\POSITION|Lookup|Add0~10_combout\ & !\POSITION|Lookup|Add1~20COUT1_61\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c03",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \POSITION|Lookup|Add0~10_combout\,
	cin0 => \POSITION|Lookup|Add1~20\,
	cin1 => \POSITION|Lookup|Add1~20COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add1~24_combout\,
	cout => \POSITION|Lookup|Add1~26\);

-- Location: LC_X6_Y2_N5
\POSITION|Lookup|Add1~30\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add1~30_combout\ = (\POSITION|Lookup|Add0~15_combout\ $ ((\POSITION|Lookup|Add1~26\)))
-- \POSITION|Lookup|Add1~32\ = CARRY(((\POSITION|Lookup|Add0~15_combout\ & !\POSITION|Lookup|Add1~26\)))
-- \POSITION|Lookup|Add1~32COUT1_63\ = CARRY(((\POSITION|Lookup|Add0~15_combout\ & !\POSITION|Lookup|Add1~26\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c0c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \POSITION|Lookup|Add0~15_combout\,
	cin => \POSITION|Lookup|Add1~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add1~30_combout\,
	cout0 => \POSITION|Lookup|Add1~32\,
	cout1 => \POSITION|Lookup|Add1~32COUT1_63\);

-- Location: LC_X6_Y2_N6
\POSITION|Lookup|Add1~0\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add1~0_combout\ = (\POSITION|Lookup|Add0~40_combout\ $ ((!(!\POSITION|Lookup|Add1~26\ & \POSITION|Lookup|Add1~32\) # (\POSITION|Lookup|Add1~26\ & \POSITION|Lookup|Add1~32COUT1_63\))))
-- \POSITION|Lookup|Add1~2\ = CARRY(((!\POSITION|Lookup|Add1~32\) # (!\POSITION|Lookup|Add0~40_combout\)))
-- \POSITION|Lookup|Add1~2COUT1_65\ = CARRY(((!\POSITION|Lookup|Add1~32COUT1_63\) # (!\POSITION|Lookup|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c33f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \POSITION|Lookup|Add0~40_combout\,
	cin => \POSITION|Lookup|Add1~26\,
	cin0 => \POSITION|Lookup|Add1~32\,
	cin1 => \POSITION|Lookup|Add1~32COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add1~0_combout\,
	cout0 => \POSITION|Lookup|Add1~2\,
	cout1 => \POSITION|Lookup|Add1~2COUT1_65\);

-- Location: LC_X6_Y2_N7
\POSITION|Lookup|Add1~36\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add1~36_combout\ = (((!\POSITION|Lookup|Add1~26\ & \POSITION|Lookup|Add1~2\) # (\POSITION|Lookup|Add1~26\ & \POSITION|Lookup|Add1~2COUT1_65\) $ (!\POSITION|Lookup|Add0~20_combout\)))

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
	datad => \POSITION|Lookup|Add0~20_combout\,
	cin => \POSITION|Lookup|Add1~26\,
	cin0 => \POSITION|Lookup|Add1~2\,
	cin1 => \POSITION|Lookup|Add1~2COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add1~36_combout\);

-- Location: LC_X6_Y2_N9
\POSITION|Lookup|Add1~41\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add1~41_combout\ = ((\POSITION|Lookup|LessThan0~5_combout\ & ((\POSITION|Lookup|Add1~36_combout\))) # (!\POSITION|Lookup|LessThan0~5_combout\ & (\POSITION|Lookup|Add0~20_combout\)))

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
	datab => \POSITION|Lookup|Add0~20_combout\,
	datac => \POSITION|Lookup|Add1~36_combout\,
	datad => \POSITION|Lookup|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add1~41_combout\);

-- Location: LC_X5_Y4_N2
\POSITION|Lookup|Add1~5\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add1~5_combout\ = ((\POSITION|Lookup|LessThan0~5_combout\ & (\POSITION|Lookup|Add1~0_combout\)) # (!\POSITION|Lookup|LessThan0~5_combout\ & ((\POSITION|Lookup|Add0~40_combout\))))

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
	datab => \POSITION|Lookup|Add1~0_combout\,
	datac => \POSITION|Lookup|Add0~40_combout\,
	datad => \POSITION|Lookup|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add1~5_combout\);

-- Location: LC_X5_Y2_N5
\POSITION|Lookup|Add1~11\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add1~11_combout\ = ((\POSITION|Lookup|LessThan0~5_combout\ & ((\POSITION|Lookup|Add1~6_combout\))) # (!\POSITION|Lookup|LessThan0~5_combout\ & (\POSITION|Lookup|Add0~30_combout\)))

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
	dataa => \POSITION|Lookup|Add0~30_combout\,
	datac => \POSITION|Lookup|Add1~6_combout\,
	datad => \POSITION|Lookup|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add1~11_combout\);

-- Location: LC_X5_Y2_N7
\POSITION|Lookup|Add1~23\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add1~23_combout\ = ((\POSITION|Lookup|LessThan0~5_combout\ & ((\POSITION|Lookup|Add1~18_combout\))) # (!\POSITION|Lookup|LessThan0~5_combout\ & (\POSITION|Lookup|Add0~45_combout\)))

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
	datab => \POSITION|Lookup|Add0~45_combout\,
	datac => \POSITION|Lookup|Add1~18_combout\,
	datad => \POSITION|Lookup|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add1~23_combout\);

-- Location: LC_X5_Y2_N6
\POSITION|Lookup|Add1~17\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add1~17_combout\ = ((\POSITION|Lookup|LessThan0~5_combout\ & ((\POSITION|Lookup|Add1~12_combout\))) # (!\POSITION|Lookup|LessThan0~5_combout\ & (\POSITION|Lookup|Add0~5_combout\)))

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
	datab => \POSITION|Lookup|Add0~5_combout\,
	datac => \POSITION|Lookup|Add1~12_combout\,
	datad => \POSITION|Lookup|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add1~17_combout\);

-- Location: LC_X5_Y2_N1
\POSITION|Lookup|Mux7~6\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux7~6_combout\ = (\POSITION|Lookup|Add1~23_combout\) # ((\POSITION|Lookup|Add1~17_combout\ & ((\POSITION|Lookup|Add1~11_combout\) # (\POSITION|Lookup|Add0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add1~11_combout\,
	datab => \POSITION|Lookup|Add1~23_combout\,
	datac => \POSITION|Lookup|Add1~17_combout\,
	datad => \POSITION|Lookup|Add0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux7~6_combout\);

-- Location: LC_X5_Y2_N2
\POSITION|Lookup|Add1~35\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add1~35_combout\ = ((\POSITION|Lookup|LessThan0~5_combout\ & ((\POSITION|Lookup|Add1~30_combout\))) # (!\POSITION|Lookup|LessThan0~5_combout\ & (\POSITION|Lookup|Add0~15_combout\)))

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
	dataa => \POSITION|Lookup|Add0~15_combout\,
	datac => \POSITION|Lookup|LessThan0~5_combout\,
	datad => \POSITION|Lookup|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add1~35_combout\);

-- Location: LC_X3_Y3_N0
\POSITION|Lookup|Mux1~9\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux1~9_combout\ = (\POSITION|Lookup|Add1~35_combout\ & ((\POSITION|Lookup|LessThan0~5_combout\ & ((\POSITION|Lookup|Add1~24_combout\))) # (!\POSITION|Lookup|LessThan0~5_combout\ & (\POSITION|Lookup|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add0~10_combout\,
	datab => \POSITION|Lookup|LessThan0~5_combout\,
	datac => \POSITION|Lookup|Add1~24_combout\,
	datad => \POSITION|Lookup|Add1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux1~9_combout\);

-- Location: LC_X3_Y3_N5
\POSITION|Lookup|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux0~0_combout\ = (((\POSITION|Lookup|Mux7~6_combout\ & \POSITION|Lookup|Mux1~9_combout\)))

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
	datac => \POSITION|Lookup|Mux7~6_combout\,
	datad => \POSITION|Lookup|Mux1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux0~0_combout\);

-- Location: LC_X3_Y3_N6
\POSITION|Lookup|Mux6~0\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux6~0_combout\ = (\POSITION|Lookup|Add1~23_combout\) # ((\POSITION|Lookup|Add0~25_combout\ & (\POSITION|Lookup|Add1~17_combout\ & \POSITION|Lookup|Add1~11_combout\)))

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
	dataa => \POSITION|Lookup|Add0~25_combout\,
	datab => \POSITION|Lookup|Add1~17_combout\,
	datac => \POSITION|Lookup|Add1~11_combout\,
	datad => \POSITION|Lookup|Add1~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux6~0_combout\);

-- Location: LC_X3_Y3_N3
\POSITION|Lookup|Mux4~0\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux4~0_combout\ = (((\POSITION|Lookup|Mux6~0_combout\ & \POSITION|Lookup|Mux1~9_combout\)))

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
	datac => \POSITION|Lookup|Mux6~0_combout\,
	datad => \POSITION|Lookup|Mux1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux4~0_combout\);

-- Location: LC_X3_Y3_N4
\POSITION|Lookup|Mux4~1\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux4~1_combout\ = (\POSITION|Lookup|Add1~41_combout\ & (!\POSITION|Lookup|Add1~5_combout\ & (!\POSITION|Lookup|Mux0~0_combout\))) # (!\POSITION|Lookup|Add1~41_combout\ & (\POSITION|Lookup|Add1~5_combout\ & 
-- ((\POSITION|Lookup|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4602",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add1~41_combout\,
	datab => \POSITION|Lookup|Add1~5_combout\,
	datac => \POSITION|Lookup|Mux0~0_combout\,
	datad => \POSITION|Lookup|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux4~1_combout\);

-- Location: LC_X3_Y3_N1
\POSITION|Lookup|Mux5~0\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux5~0_combout\ = (!\POSITION|Lookup|Add1~41_combout\ & ((\POSITION|Lookup|Add1~5_combout\ & ((!\POSITION|Lookup|Mux1~9_combout\) # (!\POSITION|Lookup|Mux6~0_combout\))) # (!\POSITION|Lookup|Add1~5_combout\ & 
-- ((\POSITION|Lookup|Mux1~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1544",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add1~41_combout\,
	datab => \POSITION|Lookup|Add1~5_combout\,
	datac => \POSITION|Lookup|Mux6~0_combout\,
	datad => \POSITION|Lookup|Mux1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux5~0_combout\);

-- Location: LC_X5_Y4_N7
\POSITION|Lookup|Add1~29\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add1~29_combout\ = ((\POSITION|Lookup|LessThan0~5_combout\ & ((\POSITION|Lookup|Add1~24_combout\))) # (!\POSITION|Lookup|LessThan0~5_combout\ & (\POSITION|Lookup|Add0~10_combout\)))

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
	datab => \POSITION|Lookup|Add0~10_combout\,
	datac => \POSITION|Lookup|Add1~24_combout\,
	datad => \POSITION|Lookup|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add1~29_combout\);

-- Location: LC_X3_Y3_N7
\POSITION|Lookup|Mux6~3\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux6~3_combout\ = (\POSITION|Lookup|Add1~35_combout\ & (((!\POSITION|Lookup|Add1~29_combout\)))) # (!\POSITION|Lookup|Add1~35_combout\ & (\POSITION|Lookup|Add1~29_combout\ & ((\POSITION|Lookup|Add1~17_combout\) # 
-- (\POSITION|Lookup|Add1~23_combout\))))

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
	dataa => \POSITION|Lookup|Add1~17_combout\,
	datab => \POSITION|Lookup|Add1~35_combout\,
	datac => \POSITION|Lookup|Add1~23_combout\,
	datad => \POSITION|Lookup|Add1~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux6~3_combout\);

-- Location: LC_X5_Y3_N1
\POSITION|Lookup|Mux6~1\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux6~1_combout\ = (\POSITION|Lookup|Add0~25_combout\ & (\POSITION|Lookup|Add1~11_combout\ & (\POSITION|Lookup|Add1~23_combout\ & \POSITION|Lookup|Add1~17_combout\)))

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
	dataa => \POSITION|Lookup|Add0~25_combout\,
	datab => \POSITION|Lookup|Add1~11_combout\,
	datac => \POSITION|Lookup|Add1~23_combout\,
	datad => \POSITION|Lookup|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux6~1_combout\);

-- Location: LC_X3_Y3_N9
\POSITION|Lookup|Mux6~2\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux6~2_combout\ = (\POSITION|Lookup|Add1~35_combout\ & (((!\POSITION|Lookup|Mux6~0_combout\)) # (!\POSITION|Lookup|Add1~29_combout\))) # (!\POSITION|Lookup|Add1~35_combout\ & ((\POSITION|Lookup|Add1~29_combout\) # 
-- ((\POSITION|Lookup|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f6e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add1~35_combout\,
	datab => \POSITION|Lookup|Add1~29_combout\,
	datac => \POSITION|Lookup|Mux6~0_combout\,
	datad => \POSITION|Lookup|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux6~2_combout\);

-- Location: LC_X3_Y3_N2
\POSITION|Lookup|Mux6~4\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux6~4_combout\ = (!\POSITION|Lookup|Add1~41_combout\ & ((\POSITION|Lookup|Add1~5_combout\ & ((\POSITION|Lookup|Mux6~2_combout\))) # (!\POSITION|Lookup|Add1~5_combout\ & (\POSITION|Lookup|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5410",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add1~41_combout\,
	datab => \POSITION|Lookup|Add1~5_combout\,
	datac => \POSITION|Lookup|Mux6~3_combout\,
	datad => \POSITION|Lookup|Mux6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux6~4_combout\);

-- Location: LC_X5_Y4_N6
\POSITION|Lookup|Mux7~18\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux7~18_combout\ = (!\POSITION|Lookup|Add1~5_combout\ & ((\POSITION|Lookup|LessThan0~5_combout\ & (\POSITION|Lookup|Add1~30_combout\)) # (!\POSITION|Lookup|LessThan0~5_combout\ & ((\POSITION|Lookup|Add0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add1~30_combout\,
	datab => \POSITION|Lookup|Add0~15_combout\,
	datac => \POSITION|Lookup|Add1~5_combout\,
	datad => \POSITION|Lookup|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux7~18_combout\);

-- Location: LC_X3_Y1_N7
\POSITION|Lookup|Mux7~15\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux7~15_combout\ = (((!\POSITION|Lookup|Add1~11_combout\ & !\POSITION|Lookup|Add1~17_combout\)) # (!\POSITION|Lookup|Add1~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \POSITION|Lookup|Add1~11_combout\,
	datac => \POSITION|Lookup|Add1~17_combout\,
	datad => \POSITION|Lookup|Add1~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux7~15_combout\);

-- Location: LC_X3_Y3_N8
\POSITION|Lookup|Mux7~16\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux7~16_combout\ = (\POSITION|Lookup|Add1~5_combout\) # ((\POSITION|Lookup|Add1~35_combout\ & (\POSITION|Lookup|Mux7~6_combout\)) # (!\POSITION|Lookup|Add1~35_combout\ & ((\POSITION|Lookup|Mux7~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbf8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Mux7~6_combout\,
	datab => \POSITION|Lookup|Add1~35_combout\,
	datac => \POSITION|Lookup|Add1~5_combout\,
	datad => \POSITION|Lookup|Mux7~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux7~16_combout\);

-- Location: LC_X5_Y4_N5
\POSITION|Lookup|Mux7~19\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux7~19_combout\ = (\POSITION|Lookup|Add0~25_combout\ & ((\POSITION|Lookup|LessThan0~5_combout\ & ((\POSITION|Lookup|Add1~6_combout\))) # (!\POSITION|Lookup|LessThan0~5_combout\ & (\POSITION|Lookup|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add0~30_combout\,
	datab => \POSITION|Lookup|Add0~25_combout\,
	datac => \POSITION|Lookup|Add1~6_combout\,
	datad => \POSITION|Lookup|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux7~19_combout\);

-- Location: LC_X5_Y4_N3
\POSITION|Lookup|Mux7~7\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux7~7_combout\ = (\POSITION|Lookup|Add1~23_combout\) # ((\POSITION|Lookup|Add1~17_combout\ & ((\POSITION|Lookup|Mux7~19_combout\) # (!\POSITION|Lookup|Add1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ecfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Mux7~19_combout\,
	datab => \POSITION|Lookup|Add1~23_combout\,
	datac => \POSITION|Lookup|Add1~17_combout\,
	datad => \POSITION|Lookup|Add1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux7~7_combout\);

-- Location: LC_X4_Y3_N5
\POSITION|Lookup|Mux7~8\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux7~8_combout\ = (\POSITION|Lookup|Add1~35_combout\ & ((\POSITION|Lookup|Add1~5_combout\ & ((!\POSITION|Lookup|Mux7~7_combout\))) # (!\POSITION|Lookup|Add1~5_combout\ & (\POSITION|Lookup|Mux6~1_combout\)))) # 
-- (!\POSITION|Lookup|Add1~35_combout\ & (((!\POSITION|Lookup|Add1~5_combout\ & !\POSITION|Lookup|Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "08cb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Mux6~1_combout\,
	datab => \POSITION|Lookup|Add1~35_combout\,
	datac => \POSITION|Lookup|Add1~5_combout\,
	datad => \POSITION|Lookup|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux7~8_combout\);

-- Location: LC_X5_Y3_N0
\POSITION|Lookup|Mux7~11\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux7~11_combout\ = (\POSITION|Lookup|Add0~25_combout\ & ((\POSITION|Lookup|LessThan0~5_combout\ & ((!\POSITION|Lookup|Add1~18_combout\))) # (!\POSITION|Lookup|LessThan0~5_combout\ & (!\POSITION|Lookup|Add0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add0~45_combout\,
	datab => \POSITION|Lookup|Add0~25_combout\,
	datac => \POSITION|Lookup|Add1~18_combout\,
	datad => \POSITION|Lookup|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux7~11_combout\);

-- Location: LC_X5_Y3_N2
\POSITION|Lookup|Mux7~12\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux7~12_combout\ = (\POSITION|Lookup|Add0~25_combout\ & (((\POSITION|Lookup|Add1~35_combout\) # (!\POSITION|Lookup|Add1~17_combout\)) # (!\POSITION|Lookup|Add1~11_combout\))) # (!\POSITION|Lookup|Add0~25_combout\ & 
-- ((\POSITION|Lookup|Add1~11_combout\) # ((\POSITION|Lookup|Add1~17_combout\) # (!\POSITION|Lookup|Add1~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7ef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add0~25_combout\,
	datab => \POSITION|Lookup|Add1~11_combout\,
	datac => \POSITION|Lookup|Add1~35_combout\,
	datad => \POSITION|Lookup|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux7~12_combout\);

-- Location: LC_X5_Y4_N4
\POSITION|Lookup|Mux7~9\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux7~9_combout\ = (\POSITION|Lookup|Add1~11_combout\ & ((\POSITION|Lookup|Add1~35_combout\) # ((\POSITION|Lookup|Add0~25_combout\ & \POSITION|Lookup|Add1~17_combout\)))) # (!\POSITION|Lookup|Add1~11_combout\ & 
-- (((\POSITION|Lookup|Add1~17_combout\ & \POSITION|Lookup|Add1~35_combout\))))

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
	dataa => \POSITION|Lookup|Add0~25_combout\,
	datab => \POSITION|Lookup|Add1~11_combout\,
	datac => \POSITION|Lookup|Add1~17_combout\,
	datad => \POSITION|Lookup|Add1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux7~9_combout\);

-- Location: LC_X5_Y4_N9
\POSITION|Lookup|Mux7~10\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux7~10_combout\ = (\POSITION|Lookup|Add1~23_combout\ & (((!\POSITION|Lookup|Add1~5_combout\)) # (!\POSITION|Lookup|Add0~25_combout\))) # (!\POSITION|Lookup|Add1~23_combout\ & (((!\POSITION|Lookup|Add1~5_combout\ & 
-- \POSITION|Lookup|Mux7~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f4c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add0~25_combout\,
	datab => \POSITION|Lookup|Add1~23_combout\,
	datac => \POSITION|Lookup|Add1~5_combout\,
	datad => \POSITION|Lookup|Mux7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux7~10_combout\);

-- Location: LC_X4_Y3_N6
\POSITION|Lookup|Mux7~13\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux7~13_combout\ = (\POSITION|Lookup|Mux7~10_combout\) # ((\POSITION|Lookup|Add1~5_combout\ & ((\POSITION|Lookup|Mux7~11_combout\) # (\POSITION|Lookup|Mux7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add1~5_combout\,
	datab => \POSITION|Lookup|Mux7~11_combout\,
	datac => \POSITION|Lookup|Mux7~12_combout\,
	datad => \POSITION|Lookup|Mux7~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux7~13_combout\);

-- Location: LC_X4_Y3_N7
\POSITION|Lookup|Mux7~14\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux7~14_combout\ = (\POSITION|Lookup|Add1~29_combout\ & ((\POSITION|Lookup|Add1~41_combout\) # ((\POSITION|Lookup|Mux7~8_combout\)))) # (!\POSITION|Lookup|Add1~29_combout\ & (!\POSITION|Lookup|Add1~41_combout\ & 
-- ((\POSITION|Lookup|Mux7~13_combout\))))

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
	dataa => \POSITION|Lookup|Add1~29_combout\,
	datab => \POSITION|Lookup|Add1~41_combout\,
	datac => \POSITION|Lookup|Mux7~8_combout\,
	datad => \POSITION|Lookup|Mux7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux7~14_combout\);

-- Location: LC_X4_Y3_N8
\POSITION|Lookup|Mux7~17\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux7~17_combout\ = (\POSITION|Lookup|Add1~41_combout\ & ((\POSITION|Lookup|Mux7~14_combout\ & ((!\POSITION|Lookup|Mux7~16_combout\))) # (!\POSITION|Lookup|Mux7~14_combout\ & (\POSITION|Lookup|Mux7~18_combout\)))) # 
-- (!\POSITION|Lookup|Add1~41_combout\ & (((\POSITION|Lookup|Mux7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Mux7~18_combout\,
	datab => \POSITION|Lookup|Add1~41_combout\,
	datac => \POSITION|Lookup|Mux7~16_combout\,
	datad => \POSITION|Lookup|Mux7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux7~17_combout\);

-- Location: LC_X4_Y3_N9
\POSITION|Lookup|Add2~25\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add2~25_combout\ = ((\POSITION|Lookup|LessThan0~5_combout\ $ (\POSITION|Lookup|Mux7~17_combout\)))

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
	datac => \POSITION|Lookup|LessThan0~5_combout\,
	datad => \POSITION|Lookup|Mux7~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add2~25_combout\);

-- Location: LC_X4_Y3_N0
\POSITION|Lookup|Add2~20\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add2~20_combout\ = \POSITION|Lookup|LessThan0~5_combout\ $ ((\POSITION|Lookup|Add2~25_combout\))
-- \POSITION|Lookup|Add2~22\ = CARRY((\POSITION|Lookup|LessThan0~5_combout\ & (\POSITION|Lookup|Add2~25_combout\)))
-- \POSITION|Lookup|Add2~22COUT1_32\ = CARRY((\POSITION|Lookup|LessThan0~5_combout\ & (\POSITION|Lookup|Add2~25_combout\)))

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
	dataa => \POSITION|Lookup|LessThan0~5_combout\,
	datab => \POSITION|Lookup|Add2~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add2~20_combout\,
	cout0 => \POSITION|Lookup|Add2~22\,
	cout1 => \POSITION|Lookup|Add2~22COUT1_32\);

-- Location: LC_X4_Y3_N1
\POSITION|Lookup|Add2~10\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add2~10_combout\ = \POSITION|Lookup|LessThan0~5_combout\ $ (\POSITION|Lookup|Mux6~4_combout\ $ ((\POSITION|Lookup|Add2~22\)))
-- \POSITION|Lookup|Add2~12\ = CARRY((\POSITION|Lookup|LessThan0~5_combout\ $ (!\POSITION|Lookup|Mux6~4_combout\)) # (!\POSITION|Lookup|Add2~22\))
-- \POSITION|Lookup|Add2~12COUT1_34\ = CARRY((\POSITION|Lookup|LessThan0~5_combout\ $ (!\POSITION|Lookup|Mux6~4_combout\)) # (!\POSITION|Lookup|Add2~22COUT1_32\))

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
	dataa => \POSITION|Lookup|LessThan0~5_combout\,
	datab => \POSITION|Lookup|Mux6~4_combout\,
	cin0 => \POSITION|Lookup|Add2~22\,
	cin1 => \POSITION|Lookup|Add2~22COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add2~10_combout\,
	cout0 => \POSITION|Lookup|Add2~12\,
	cout1 => \POSITION|Lookup|Add2~12COUT1_34\);

-- Location: LC_X4_Y3_N2
\POSITION|Lookup|Add2~5\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add2~5_combout\ = \POSITION|Lookup|Mux5~0_combout\ $ (\POSITION|Lookup|LessThan0~5_combout\ $ ((!\POSITION|Lookup|Add2~12\)))
-- \POSITION|Lookup|Add2~7\ = CARRY((!\POSITION|Lookup|Add2~12\ & (\POSITION|Lookup|Mux5~0_combout\ $ (\POSITION|Lookup|LessThan0~5_combout\))))
-- \POSITION|Lookup|Add2~7COUT1_36\ = CARRY((!\POSITION|Lookup|Add2~12COUT1_34\ & (\POSITION|Lookup|Mux5~0_combout\ $ (\POSITION|Lookup|LessThan0~5_combout\))))

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
	dataa => \POSITION|Lookup|Mux5~0_combout\,
	datab => \POSITION|Lookup|LessThan0~5_combout\,
	cin0 => \POSITION|Lookup|Add2~12\,
	cin1 => \POSITION|Lookup|Add2~12COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add2~5_combout\,
	cout0 => \POSITION|Lookup|Add2~7\,
	cout1 => \POSITION|Lookup|Add2~7COUT1_36\);

-- Location: LC_X4_Y3_N3
\POSITION|Lookup|Add2~15\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add2~15_combout\ = \POSITION|Lookup|LessThan0~5_combout\ $ (\POSITION|Lookup|Mux4~1_combout\ $ ((\POSITION|Lookup|Add2~7\)))
-- \POSITION|Lookup|Add2~17\ = CARRY((\POSITION|Lookup|LessThan0~5_combout\ $ (!\POSITION|Lookup|Mux4~1_combout\)) # (!\POSITION|Lookup|Add2~7\))
-- \POSITION|Lookup|Add2~17COUT1_38\ = CARRY((\POSITION|Lookup|LessThan0~5_combout\ $ (!\POSITION|Lookup|Mux4~1_combout\)) # (!\POSITION|Lookup|Add2~7COUT1_36\))

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
	dataa => \POSITION|Lookup|LessThan0~5_combout\,
	datab => \POSITION|Lookup|Mux4~1_combout\,
	cin0 => \POSITION|Lookup|Add2~7\,
	cin1 => \POSITION|Lookup|Add2~7COUT1_36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add2~15_combout\,
	cout0 => \POSITION|Lookup|Add2~17\,
	cout1 => \POSITION|Lookup|Add2~17COUT1_38\);

-- Location: LC_X4_Y3_N4
\POSITION|Lookup|Add2~0\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add2~0_combout\ = (\POSITION|Lookup|Add2~17\ $ (((!\POSITION|Lookup|Add0~0_combout\ & !\POSITION|Lookup|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0a5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add0~0_combout\,
	datad => \POSITION|Lookup|LessThan0~3_combout\,
	cin0 => \POSITION|Lookup|Add2~17\,
	cin1 => \POSITION|Lookup|Add2~17COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add2~0_combout\);

-- Location: LC_X5_Y3_N3
\POSITION|a_x[0]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_x\(0) = DFFEAS(\POSITION|Lookup|Add2~20_combout\ $ ((\POSITION|a_x\(0))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_x[0]~27\ = CARRY((\POSITION|Lookup|Add2~20_combout\ & (\POSITION|a_x\(0))))
-- \POSITION|a_x[0]~27COUT1_40\ = CARRY((\POSITION|Lookup|Add2~20_combout\ & (\POSITION|a_x\(0))))

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
	clk => \CLK~combout\,
	dataa => \POSITION|Lookup|Add2~20_combout\,
	datab => \POSITION|a_x\(0),
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_x\(0),
	cout0 => \POSITION|a_x[0]~27\,
	cout1 => \POSITION|a_x[0]~27COUT1_40\);

-- Location: LC_X5_Y3_N4
\POSITION|a_x[1]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_x\(1) = DFFEAS(\POSITION|Lookup|Add2~10_combout\ $ (\POSITION|a_x\(1) $ ((\POSITION|a_x[0]~27\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_x[1]~19\ = CARRY((\POSITION|Lookup|Add2~10_combout\ & (!\POSITION|a_x\(1) & !\POSITION|a_x[0]~27COUT1_40\)) # (!\POSITION|Lookup|Add2~10_combout\ & ((!\POSITION|a_x[0]~27COUT1_40\) # (!\POSITION|a_x\(1)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|Lookup|Add2~10_combout\,
	datab => \POSITION|a_x\(1),
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin0 => \POSITION|a_x[0]~27\,
	cin1 => \POSITION|a_x[0]~27COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_x\(1),
	cout => \POSITION|a_x[1]~19\);

-- Location: LC_X5_Y3_N5
\POSITION|a_x[2]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_x\(2) = DFFEAS(\POSITION|a_x\(2) $ (\POSITION|Lookup|Add2~5_combout\ $ ((!\POSITION|a_x[1]~19\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_x[2]~15\ = CARRY((\POSITION|a_x\(2) & ((\POSITION|Lookup|Add2~5_combout\) # (!\POSITION|a_x[1]~19\))) # (!\POSITION|a_x\(2) & (\POSITION|Lookup|Add2~5_combout\ & !\POSITION|a_x[1]~19\)))
-- \POSITION|a_x[2]~15COUT1_42\ = CARRY((\POSITION|a_x\(2) & ((\POSITION|Lookup|Add2~5_combout\) # (!\POSITION|a_x[1]~19\))) # (!\POSITION|a_x\(2) & (\POSITION|Lookup|Add2~5_combout\ & !\POSITION|a_x[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_x\(2),
	datab => \POSITION|Lookup|Add2~5_combout\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_x[1]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_x\(2),
	cout0 => \POSITION|a_x[2]~15\,
	cout1 => \POSITION|a_x[2]~15COUT1_42\);

-- Location: LC_X5_Y3_N6
\POSITION|a_x[3]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_x\(3) = DFFEAS(\POSITION|a_x\(3) $ (\POSITION|Lookup|Add2~15_combout\ $ (((!\POSITION|a_x[1]~19\ & \POSITION|a_x[2]~15\) # (\POSITION|a_x[1]~19\ & \POSITION|a_x[2]~15COUT1_42\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , 
-- \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_x[3]~23\ = CARRY((\POSITION|a_x\(3) & (!\POSITION|Lookup|Add2~15_combout\ & !\POSITION|a_x[2]~15\)) # (!\POSITION|a_x\(3) & ((!\POSITION|a_x[2]~15\) # (!\POSITION|Lookup|Add2~15_combout\))))
-- \POSITION|a_x[3]~23COUT1_44\ = CARRY((\POSITION|a_x\(3) & (!\POSITION|Lookup|Add2~15_combout\ & !\POSITION|a_x[2]~15COUT1_42\)) # (!\POSITION|a_x\(3) & ((!\POSITION|a_x[2]~15COUT1_42\) # (!\POSITION|Lookup|Add2~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_x\(3),
	datab => \POSITION|Lookup|Add2~15_combout\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_x[1]~19\,
	cin0 => \POSITION|a_x[2]~15\,
	cin1 => \POSITION|a_x[2]~15COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_x\(3),
	cout0 => \POSITION|a_x[3]~23\,
	cout1 => \POSITION|a_x[3]~23COUT1_44\);

-- Location: LC_X5_Y3_N7
\POSITION|a_x[4]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_x\(4) = DFFEAS(\POSITION|a_x\(4) $ (\POSITION|Lookup|Add2~0_combout\ $ ((!(!\POSITION|a_x[1]~19\ & \POSITION|a_x[3]~23\) # (\POSITION|a_x[1]~19\ & \POSITION|a_x[3]~23COUT1_44\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , 
-- \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_x[4]~11\ = CARRY((\POSITION|a_x\(4) & ((\POSITION|Lookup|Add2~0_combout\) # (!\POSITION|a_x[3]~23\))) # (!\POSITION|a_x\(4) & (\POSITION|Lookup|Add2~0_combout\ & !\POSITION|a_x[3]~23\)))
-- \POSITION|a_x[4]~11COUT1_46\ = CARRY((\POSITION|a_x\(4) & ((\POSITION|Lookup|Add2~0_combout\) # (!\POSITION|a_x[3]~23COUT1_44\))) # (!\POSITION|a_x\(4) & (\POSITION|Lookup|Add2~0_combout\ & !\POSITION|a_x[3]~23COUT1_44\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_x\(4),
	datab => \POSITION|Lookup|Add2~0_combout\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_x[1]~19\,
	cin0 => \POSITION|a_x[3]~23\,
	cin1 => \POSITION|a_x[3]~23COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_x\(4),
	cout0 => \POSITION|a_x[4]~11\,
	cout1 => \POSITION|a_x[4]~11COUT1_46\);

-- Location: LC_X5_Y3_N8
\POSITION|a_x[5]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_x\(5) = DFFEAS(\POSITION|a_x\(5) $ (\POSITION|Lookup|Add2~0_combout\ $ (((!\POSITION|a_x[1]~19\ & \POSITION|a_x[4]~11\) # (\POSITION|a_x[1]~19\ & \POSITION|a_x[4]~11COUT1_46\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , 
-- \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_x[5]~5\ = CARRY((\POSITION|a_x\(5) & (!\POSITION|Lookup|Add2~0_combout\ & !\POSITION|a_x[4]~11\)) # (!\POSITION|a_x\(5) & ((!\POSITION|a_x[4]~11\) # (!\POSITION|Lookup|Add2~0_combout\))))
-- \POSITION|a_x[5]~5COUT1_48\ = CARRY((\POSITION|a_x\(5) & (!\POSITION|Lookup|Add2~0_combout\ & !\POSITION|a_x[4]~11COUT1_46\)) # (!\POSITION|a_x\(5) & ((!\POSITION|a_x[4]~11COUT1_46\) # (!\POSITION|Lookup|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_x\(5),
	datab => \POSITION|Lookup|Add2~0_combout\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_x[1]~19\,
	cin0 => \POSITION|a_x[4]~11\,
	cin1 => \POSITION|a_x[4]~11COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_x\(5),
	cout0 => \POSITION|a_x[5]~5\,
	cout1 => \POSITION|a_x[5]~5COUT1_48\);

-- Location: LC_X4_Y1_N1
\POSITION|Lookup|Mux1~10\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux1~10_combout\ = (\POSITION|Lookup|Add1~23_combout\ & (\POSITION|Lookup|Add1~17_combout\ & (\POSITION|Lookup|Add1~11_combout\ & \POSITION|Lookup|Mux1~9_combout\)))

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
	dataa => \POSITION|Lookup|Add1~23_combout\,
	datab => \POSITION|Lookup|Add1~17_combout\,
	datac => \POSITION|Lookup|Add1~11_combout\,
	datad => \POSITION|Lookup|Mux1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux1~10_combout\);

-- Location: LC_X4_Y1_N3
\POSITION|Lookup|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux0~1_combout\ = (\POSITION|Lookup|Add1~5_combout\ & (\POSITION|Lookup|Add1~41_combout\)) # (!\POSITION|Lookup|Add1~5_combout\ & ((\POSITION|Lookup|Add1~41_combout\ & (\POSITION|Lookup|Mux0~0_combout\)) # 
-- (!\POSITION|Lookup|Add1~41_combout\ & ((!\POSITION|Lookup|Mux1~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8d9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add1~5_combout\,
	datab => \POSITION|Lookup|Add1~41_combout\,
	datac => \POSITION|Lookup|Mux0~0_combout\,
	datad => \POSITION|Lookup|Mux1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux0~1_combout\);

-- Location: LC_X6_Y4_N6
\POSITION|Lookup|Mux1~6\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux1~6_combout\ = (!\POSITION|Lookup|Add1~5_combout\ & (!\POSITION|Lookup|Add1~29_combout\ & (!\POSITION|Lookup|Mux7~6_combout\ & !\POSITION|Lookup|Add1~35_combout\)))

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
	dataa => \POSITION|Lookup|Add1~5_combout\,
	datab => \POSITION|Lookup|Add1~29_combout\,
	datac => \POSITION|Lookup|Mux7~6_combout\,
	datad => \POSITION|Lookup|Add1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux1~6_combout\);

-- Location: LC_X4_Y1_N2
\POSITION|Lookup|Mux1~8\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux1~8_combout\ = (\POSITION|Lookup|Add1~41_combout\ & (((\POSITION|Lookup|Mux1~6_combout\)))) # (!\POSITION|Lookup|Add1~41_combout\ & ((\POSITION|Lookup|Add1~5_combout\) # ((\POSITION|Lookup|Mux1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add1~5_combout\,
	datab => \POSITION|Lookup|Add1~41_combout\,
	datac => \POSITION|Lookup|Mux1~6_combout\,
	datad => \POSITION|Lookup|Mux1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux1~8_combout\);

-- Location: LC_X6_Y4_N9
\POSITION|Lookup|Mux1~7\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux1~7_combout\ = ((\POSITION|Lookup|Add1~17_combout\ & (\POSITION|Lookup|Add1~11_combout\ & \POSITION|Lookup|Add1~23_combout\)))

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
	datab => \POSITION|Lookup|Add1~17_combout\,
	datac => \POSITION|Lookup|Add1~11_combout\,
	datad => \POSITION|Lookup|Add1~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux1~7_combout\);

-- Location: LC_X6_Y2_N8
\POSITION|Lookup|Mux2~0\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux2~0_combout\ = (\POSITION|Lookup|Add1~11_combout\ & (((\POSITION|Lookup|Add1~17_combout\) # (\POSITION|Lookup|Add1~41_combout\)))) # (!\POSITION|Lookup|Add1~11_combout\ & (\POSITION|Lookup|Add1~41_combout\ & 
-- ((\POSITION|Lookup|Add0~25_combout\) # (\POSITION|Lookup|Add1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fea0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add1~11_combout\,
	datab => \POSITION|Lookup|Add0~25_combout\,
	datac => \POSITION|Lookup|Add1~17_combout\,
	datad => \POSITION|Lookup|Add1~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux2~0_combout\);

-- Location: LC_X5_Y4_N0
\POSITION|Lookup|Mux2~1\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux2~1_combout\ = (\POSITION|Lookup|Add1~29_combout\ & (((\POSITION|Lookup|Mux1~7_combout\)))) # (!\POSITION|Lookup|Add1~29_combout\ & ((\POSITION|Lookup|Add1~23_combout\) # ((\POSITION|Lookup|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add1~23_combout\,
	datab => \POSITION|Lookup|Add1~29_combout\,
	datac => \POSITION|Lookup|Mux1~7_combout\,
	datad => \POSITION|Lookup|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux2~1_combout\);

-- Location: LC_X5_Y4_N1
\POSITION|Lookup|Mux2~2\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux2~2_combout\ = (\POSITION|Lookup|Add1~5_combout\) # ((\POSITION|Lookup|Add1~35_combout\ & ((\POSITION|Lookup|Add1~29_combout\) # (\POSITION|Lookup|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add1~5_combout\,
	datab => \POSITION|Lookup|Add1~35_combout\,
	datac => \POSITION|Lookup|Add1~29_combout\,
	datad => \POSITION|Lookup|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux2~2_combout\);

-- Location: LC_X5_Y4_N8
\POSITION|Lookup|Mux2~3\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux2~3_combout\ = (\POSITION|Lookup|Add1~5_combout\ & (\POSITION|Lookup|Add1~35_combout\ & ((\POSITION|Lookup|Add1~29_combout\) # (\POSITION|Lookup|Mux2~1_combout\)))) # (!\POSITION|Lookup|Add1~5_combout\ & 
-- ((\POSITION|Lookup|Add1~35_combout\ & ((!\POSITION|Lookup|Mux2~1_combout\) # (!\POSITION|Lookup|Add1~29_combout\))) # (!\POSITION|Lookup|Add1~35_combout\ & (\POSITION|Lookup|Add1~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9cd4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add1~5_combout\,
	datab => \POSITION|Lookup|Add1~35_combout\,
	datac => \POSITION|Lookup|Add1~29_combout\,
	datad => \POSITION|Lookup|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux2~3_combout\);

-- Location: LC_X4_Y1_N4
\POSITION|Lookup|Mux2~4\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux2~4_combout\ = (\POSITION|Lookup|Add1~41_combout\ & (!\POSITION|Lookup|Mux2~2_combout\ & ((\POSITION|Lookup|Mux7~6_combout\) # (\POSITION|Lookup|Mux2~3_combout\)))) # (!\POSITION|Lookup|Add1~41_combout\ & 
-- (((\POSITION|Lookup|Mux2~2_combout\ & !\POSITION|Lookup|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a58",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add1~41_combout\,
	datab => \POSITION|Lookup|Mux7~6_combout\,
	datac => \POSITION|Lookup|Mux2~2_combout\,
	datad => \POSITION|Lookup|Mux2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux2~4_combout\);

-- Location: LC_X7_Y2_N2
\POSITION|Lookup|Mux3~13\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux3~13_combout\ = (!\POSITION|Lookup|Add1~41_combout\ & ((\POSITION|Lookup|LessThan0~5_combout\ & ((!\POSITION|Lookup|Add1~0_combout\))) # (!\POSITION|Lookup|LessThan0~5_combout\ & (!\POSITION|Lookup|Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "001b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|LessThan0~5_combout\,
	datab => \POSITION|Lookup|Add0~40_combout\,
	datac => \POSITION|Lookup|Add1~0_combout\,
	datad => \POSITION|Lookup|Add1~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux3~13_combout\);

-- Location: LC_X6_Y4_N3
\POSITION|Lookup|Mux3~4\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux3~4_combout\ = (\POSITION|Lookup|Add1~23_combout\ & ((\POSITION|Lookup|Add1~17_combout\) # ((\POSITION|Lookup|Add0~25_combout\ & \POSITION|Lookup|Add1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add0~25_combout\,
	datab => \POSITION|Lookup|Add1~17_combout\,
	datac => \POSITION|Lookup|Add1~11_combout\,
	datad => \POSITION|Lookup|Add1~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux3~4_combout\);

-- Location: LC_X6_Y4_N4
\POSITION|Lookup|Mux3~5\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux3~5_combout\ = (\POSITION|Lookup|Add1~35_combout\ & (\POSITION|Lookup|Add1~29_combout\ & (\POSITION|Lookup|Mux1~7_combout\))) # (!\POSITION|Lookup|Add1~35_combout\ & (((!\POSITION|Lookup|Mux3~4_combout\)) # 
-- (!\POSITION|Lookup|Add1~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "91d5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add1~35_combout\,
	datab => \POSITION|Lookup|Add1~29_combout\,
	datac => \POSITION|Lookup|Mux1~7_combout\,
	datad => \POSITION|Lookup|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux3~5_combout\);

-- Location: LC_X3_Y1_N0
\POSITION|Lookup|Mux3~11\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux3~11_combout\ = (\POSITION|Lookup|Add1~5_combout\) # ((\POSITION|Lookup|Mux7~6_combout\ & (\POSITION|Lookup|Add1~35_combout\ $ (!\POSITION|Lookup|Add1~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff84",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add1~35_combout\,
	datab => \POSITION|Lookup|Mux7~6_combout\,
	datac => \POSITION|Lookup|Add1~29_combout\,
	datad => \POSITION|Lookup|Add1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux3~11_combout\);

-- Location: LC_X3_Y1_N6
\POSITION|Lookup|Mux3~9\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux3~9_combout\ = (\POSITION|Lookup|Add1~23_combout\) # ((\POSITION|Lookup|Add1~17_combout\) # ((\POSITION|Lookup|Add0~25_combout\ & \POSITION|Lookup|Add1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add0~25_combout\,
	datab => \POSITION|Lookup|Add1~11_combout\,
	datac => \POSITION|Lookup|Add1~23_combout\,
	datad => \POSITION|Lookup|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux3~9_combout\);

-- Location: LC_X3_Y1_N9
\POSITION|Lookup|Mux3~8\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux3~8_combout\ = (\POSITION|Lookup|Add1~11_combout\ & (((!\POSITION|Lookup|Add1~17_combout\) # (!\POSITION|Lookup|Add1~23_combout\)))) # (!\POSITION|Lookup|Add1~11_combout\ & ((\POSITION|Lookup|Add0~25_combout\) # 
-- ((\POSITION|Lookup|Add1~23_combout\) # (\POSITION|Lookup|Add1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add0~25_combout\,
	datab => \POSITION|Lookup|Add1~11_combout\,
	datac => \POSITION|Lookup|Add1~23_combout\,
	datad => \POSITION|Lookup|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux3~8_combout\);

-- Location: LC_X3_Y1_N4
\POSITION|Lookup|Mux3~10\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux3~10_combout\ = (\POSITION|Lookup|Add1~35_combout\ & (!\POSITION|Lookup|Add1~29_combout\ & ((\POSITION|Lookup|Mux3~8_combout\)))) # (!\POSITION|Lookup|Add1~35_combout\ & (\POSITION|Lookup|Add1~29_combout\ & 
-- (!\POSITION|Lookup|Mux3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2604",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add1~35_combout\,
	datab => \POSITION|Lookup|Add1~29_combout\,
	datac => \POSITION|Lookup|Mux3~9_combout\,
	datad => \POSITION|Lookup|Mux3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux3~10_combout\);

-- Location: LC_X3_Y1_N2
\POSITION|Lookup|Mux3~6\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux3~6_combout\ = (\POSITION|Lookup|Add1~23_combout\) # ((\POSITION|Lookup|Add1~17_combout\ & ((\POSITION|Lookup|Add1~11_combout\) # (!\POSITION|Lookup|Add1~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add1~17_combout\,
	datab => \POSITION|Lookup|Add1~11_combout\,
	datac => \POSITION|Lookup|Add1~23_combout\,
	datad => \POSITION|Lookup|Add1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux3~6_combout\);

-- Location: LC_X3_Y1_N8
\POSITION|Lookup|Mux3~7\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux3~7_combout\ = (\POSITION|Lookup|Add1~5_combout\ & ((\POSITION|Lookup|Add1~29_combout\ & ((!\POSITION|Lookup|Mux3~6_combout\))) # (!\POSITION|Lookup|Add1~29_combout\ & ((\POSITION|Lookup|Mux3~6_combout\) # 
-- (!\POSITION|Lookup|Add1~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add1~35_combout\,
	datab => \POSITION|Lookup|Add1~29_combout\,
	datac => \POSITION|Lookup|Add1~5_combout\,
	datad => \POSITION|Lookup|Mux3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux3~7_combout\);

-- Location: LC_X3_Y1_N5
\POSITION|Lookup|Mux3~12\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Mux3~12_combout\ = (\POSITION|Lookup|Mux3~7_combout\) # ((\POSITION|Lookup|Add1~41_combout\ & ((\POSITION|Lookup|Mux3~11_combout\) # (\POSITION|Lookup|Mux3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|Lookup|Add1~41_combout\,
	datab => \POSITION|Lookup|Mux3~11_combout\,
	datac => \POSITION|Lookup|Mux3~10_combout\,
	datad => \POSITION|Lookup|Mux3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Mux3~12_combout\);

-- Location: LC_X4_Y1_N0
\POSITION|Lookup|Add3~25\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add3~25_combout\ = \POSITION|a_2t\(9) $ (((\POSITION|Lookup|Mux3~12_combout\) # ((\POSITION|Lookup|Mux3~13_combout\ & \POSITION|Lookup|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "556a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POSITION|a_2t\(9),
	datab => \POSITION|Lookup|Mux3~13_combout\,
	datac => \POSITION|Lookup|Mux3~5_combout\,
	datad => \POSITION|Lookup|Mux3~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add3~25_combout\);

-- Location: LC_X4_Y1_N5
\POSITION|Lookup|Add3~20\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add3~20_combout\ = \POSITION|a_2t\(9) $ ((\POSITION|Lookup|Add3~25_combout\))
-- \POSITION|Lookup|Add3~22\ = CARRY((\POSITION|a_2t\(9) & (\POSITION|Lookup|Add3~25_combout\)))
-- \POSITION|Lookup|Add3~22COUT1_32\ = CARRY((\POSITION|a_2t\(9) & (\POSITION|Lookup|Add3~25_combout\)))

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
	dataa => \POSITION|a_2t\(9),
	datab => \POSITION|Lookup|Add3~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add3~20_combout\,
	cout0 => \POSITION|Lookup|Add3~22\,
	cout1 => \POSITION|Lookup|Add3~22COUT1_32\);

-- Location: LC_X4_Y1_N6
\POSITION|Lookup|Add3~10\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add3~10_combout\ = \POSITION|Lookup|Mux2~4_combout\ $ (\POSITION|a_2t\(9) $ ((\POSITION|Lookup|Add3~22\)))
-- \POSITION|Lookup|Add3~12\ = CARRY((\POSITION|Lookup|Mux2~4_combout\ $ (!\POSITION|a_2t\(9))) # (!\POSITION|Lookup|Add3~22\))
-- \POSITION|Lookup|Add3~12COUT1_34\ = CARRY((\POSITION|Lookup|Mux2~4_combout\ $ (!\POSITION|a_2t\(9))) # (!\POSITION|Lookup|Add3~22COUT1_32\))

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
	dataa => \POSITION|Lookup|Mux2~4_combout\,
	datab => \POSITION|a_2t\(9),
	cin0 => \POSITION|Lookup|Add3~22\,
	cin1 => \POSITION|Lookup|Add3~22COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add3~10_combout\,
	cout0 => \POSITION|Lookup|Add3~12\,
	cout1 => \POSITION|Lookup|Add3~12COUT1_34\);

-- Location: LC_X4_Y1_N7
\POSITION|Lookup|Add3~5\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add3~5_combout\ = \POSITION|a_2t\(9) $ (\POSITION|Lookup|Mux1~8_combout\ $ ((!\POSITION|Lookup|Add3~12\)))
-- \POSITION|Lookup|Add3~7\ = CARRY((!\POSITION|Lookup|Add3~12\ & (\POSITION|a_2t\(9) $ (\POSITION|Lookup|Mux1~8_combout\))))
-- \POSITION|Lookup|Add3~7COUT1_36\ = CARRY((!\POSITION|Lookup|Add3~12COUT1_34\ & (\POSITION|a_2t\(9) $ (\POSITION|Lookup|Mux1~8_combout\))))

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
	dataa => \POSITION|a_2t\(9),
	datab => \POSITION|Lookup|Mux1~8_combout\,
	cin0 => \POSITION|Lookup|Add3~12\,
	cin1 => \POSITION|Lookup|Add3~12COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add3~5_combout\,
	cout0 => \POSITION|Lookup|Add3~7\,
	cout1 => \POSITION|Lookup|Add3~7COUT1_36\);

-- Location: LC_X4_Y1_N8
\POSITION|Lookup|Add3~15\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add3~15_combout\ = \POSITION|Lookup|Mux0~1_combout\ $ (\POSITION|a_2t\(9) $ ((\POSITION|Lookup|Add3~7\)))
-- \POSITION|Lookup|Add3~17\ = CARRY((\POSITION|Lookup|Mux0~1_combout\ $ (!\POSITION|a_2t\(9))) # (!\POSITION|Lookup|Add3~7\))
-- \POSITION|Lookup|Add3~17COUT1_38\ = CARRY((\POSITION|Lookup|Mux0~1_combout\ $ (!\POSITION|a_2t\(9))) # (!\POSITION|Lookup|Add3~7COUT1_36\))

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
	dataa => \POSITION|Lookup|Mux0~1_combout\,
	datab => \POSITION|a_2t\(9),
	cin0 => \POSITION|Lookup|Add3~7\,
	cin1 => \POSITION|Lookup|Add3~7COUT1_36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add3~15_combout\,
	cout0 => \POSITION|Lookup|Add3~17\,
	cout1 => \POSITION|Lookup|Add3~17COUT1_38\);

-- Location: LC_X4_Y1_N9
\POSITION|Lookup|Add3~0\ : maxv_lcell
-- Equation(s):
-- \POSITION|Lookup|Add3~0_combout\ = ((\POSITION|Lookup|Add3~17\ $ (!\POSITION|a_2t\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \POSITION|a_2t\(9),
	cin0 => \POSITION|Lookup|Add3~17\,
	cin1 => \POSITION|Lookup|Add3~17COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \POSITION|Lookup|Add3~0_combout\);

-- Location: LC_X5_Y1_N3
\POSITION|a_y[0]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_y\(0) = DFFEAS(\POSITION|Lookup|Add3~20_combout\ $ ((\POSITION|a_y\(0))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_y[0]~27\ = CARRY((\POSITION|Lookup|Add3~20_combout\ & (\POSITION|a_y\(0))))
-- \POSITION|a_y[0]~27COUT1_40\ = CARRY((\POSITION|Lookup|Add3~20_combout\ & (\POSITION|a_y\(0))))

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
	clk => \CLK~combout\,
	dataa => \POSITION|Lookup|Add3~20_combout\,
	datab => \POSITION|a_y\(0),
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_y\(0),
	cout0 => \POSITION|a_y[0]~27\,
	cout1 => \POSITION|a_y[0]~27COUT1_40\);

-- Location: LC_X5_Y1_N4
\POSITION|a_y[1]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_y\(1) = DFFEAS(\POSITION|a_y\(1) $ (\POSITION|Lookup|Add3~10_combout\ $ ((\POSITION|a_y[0]~27\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_y[1]~19\ = CARRY((\POSITION|a_y\(1) & (!\POSITION|Lookup|Add3~10_combout\ & !\POSITION|a_y[0]~27COUT1_40\)) # (!\POSITION|a_y\(1) & ((!\POSITION|a_y[0]~27COUT1_40\) # (!\POSITION|Lookup|Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_y\(1),
	datab => \POSITION|Lookup|Add3~10_combout\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin0 => \POSITION|a_y[0]~27\,
	cin1 => \POSITION|a_y[0]~27COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_y\(1),
	cout => \POSITION|a_y[1]~19\);

-- Location: LC_X5_Y1_N5
\POSITION|a_y[2]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_y\(2) = DFFEAS(\POSITION|a_y\(2) $ (\POSITION|Lookup|Add3~5_combout\ $ ((!\POSITION|a_y[1]~19\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_y[2]~15\ = CARRY((\POSITION|a_y\(2) & ((\POSITION|Lookup|Add3~5_combout\) # (!\POSITION|a_y[1]~19\))) # (!\POSITION|a_y\(2) & (\POSITION|Lookup|Add3~5_combout\ & !\POSITION|a_y[1]~19\)))
-- \POSITION|a_y[2]~15COUT1_42\ = CARRY((\POSITION|a_y\(2) & ((\POSITION|Lookup|Add3~5_combout\) # (!\POSITION|a_y[1]~19\))) # (!\POSITION|a_y\(2) & (\POSITION|Lookup|Add3~5_combout\ & !\POSITION|a_y[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_y\(2),
	datab => \POSITION|Lookup|Add3~5_combout\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_y[1]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_y\(2),
	cout0 => \POSITION|a_y[2]~15\,
	cout1 => \POSITION|a_y[2]~15COUT1_42\);

-- Location: LC_X5_Y1_N6
\POSITION|a_y[3]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_y\(3) = DFFEAS(\POSITION|a_y\(3) $ (\POSITION|Lookup|Add3~15_combout\ $ (((!\POSITION|a_y[1]~19\ & \POSITION|a_y[2]~15\) # (\POSITION|a_y[1]~19\ & \POSITION|a_y[2]~15COUT1_42\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , 
-- \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_y[3]~23\ = CARRY((\POSITION|a_y\(3) & (!\POSITION|Lookup|Add3~15_combout\ & !\POSITION|a_y[2]~15\)) # (!\POSITION|a_y\(3) & ((!\POSITION|a_y[2]~15\) # (!\POSITION|Lookup|Add3~15_combout\))))
-- \POSITION|a_y[3]~23COUT1_44\ = CARRY((\POSITION|a_y\(3) & (!\POSITION|Lookup|Add3~15_combout\ & !\POSITION|a_y[2]~15COUT1_42\)) # (!\POSITION|a_y\(3) & ((!\POSITION|a_y[2]~15COUT1_42\) # (!\POSITION|Lookup|Add3~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_y\(3),
	datab => \POSITION|Lookup|Add3~15_combout\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_y[1]~19\,
	cin0 => \POSITION|a_y[2]~15\,
	cin1 => \POSITION|a_y[2]~15COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_y\(3),
	cout0 => \POSITION|a_y[3]~23\,
	cout1 => \POSITION|a_y[3]~23COUT1_44\);

-- Location: LC_X5_Y1_N7
\POSITION|a_y[4]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_y\(4) = DFFEAS(\POSITION|Lookup|Add3~0_combout\ $ (\POSITION|a_y\(4) $ ((!(!\POSITION|a_y[1]~19\ & \POSITION|a_y[3]~23\) # (\POSITION|a_y[1]~19\ & \POSITION|a_y[3]~23COUT1_44\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , 
-- \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_y[4]~11\ = CARRY((\POSITION|Lookup|Add3~0_combout\ & ((\POSITION|a_y\(4)) # (!\POSITION|a_y[3]~23\))) # (!\POSITION|Lookup|Add3~0_combout\ & (\POSITION|a_y\(4) & !\POSITION|a_y[3]~23\)))
-- \POSITION|a_y[4]~11COUT1_46\ = CARRY((\POSITION|Lookup|Add3~0_combout\ & ((\POSITION|a_y\(4)) # (!\POSITION|a_y[3]~23COUT1_44\))) # (!\POSITION|Lookup|Add3~0_combout\ & (\POSITION|a_y\(4) & !\POSITION|a_y[3]~23COUT1_44\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|Lookup|Add3~0_combout\,
	datab => \POSITION|a_y\(4),
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_y[1]~19\,
	cin0 => \POSITION|a_y[3]~23\,
	cin1 => \POSITION|a_y[3]~23COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_y\(4),
	cout0 => \POSITION|a_y[4]~11\,
	cout1 => \POSITION|a_y[4]~11COUT1_46\);

-- Location: LC_X5_Y1_N8
\POSITION|a_y[5]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_y\(5) = DFFEAS(\POSITION|Lookup|Add3~0_combout\ $ (\POSITION|a_y\(5) $ (((!\POSITION|a_y[1]~19\ & \POSITION|a_y[4]~11\) # (\POSITION|a_y[1]~19\ & \POSITION|a_y[4]~11COUT1_46\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , 
-- \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_y[5]~5\ = CARRY((\POSITION|Lookup|Add3~0_combout\ & (!\POSITION|a_y\(5) & !\POSITION|a_y[4]~11\)) # (!\POSITION|Lookup|Add3~0_combout\ & ((!\POSITION|a_y[4]~11\) # (!\POSITION|a_y\(5)))))
-- \POSITION|a_y[5]~5COUT1_48\ = CARRY((\POSITION|Lookup|Add3~0_combout\ & (!\POSITION|a_y\(5) & !\POSITION|a_y[4]~11COUT1_46\)) # (!\POSITION|Lookup|Add3~0_combout\ & ((!\POSITION|a_y[4]~11COUT1_46\) # (!\POSITION|a_y\(5)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|Lookup|Add3~0_combout\,
	datab => \POSITION|a_y\(5),
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_y[1]~19\,
	cin0 => \POSITION|a_y[4]~11\,
	cin1 => \POSITION|a_y[4]~11COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_y\(5),
	cout0 => \POSITION|a_y[5]~5\,
	cout1 => \POSITION|a_y[5]~5COUT1_48\);

-- Location: LC_X2_Y1_N5
\data[7]~1\ : maxv_lcell
-- Equation(s):
-- \data[7]~1_combout\ = (!\wr_buff~regout\ & (((!\RST~combout\ & \TRANSMIT|transmitter|ready~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wr_buff~regout\,
	datac => \RST~combout\,
	datad => \TRANSMIT|transmitter|ready~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data[7]~1_combout\);

-- Location: LC_X2_Y1_N1
\latch[7]~1\ : maxv_lcell
-- Equation(s):
-- \latch[7]~1_combout\ = (\data[7]~1_combout\ & (!\process_1:state[1]~regout\ & ((!\process_1:state[0]~regout\) # (!\process_1:state[2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_1:state[2]~regout\,
	datab => \process_1:state[0]~regout\,
	datac => \data[7]~1_combout\,
	datad => \process_1:state[1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \latch[7]~1_combout\);

-- Location: LC_X3_Y1_N3
\latch[5]\ : maxv_lcell
-- Equation(s):
-- latch(5) = DFFEAS(((\process_1:state[2]~regout\ & ((\POSITION|a_y\(5)))) # (!\process_1:state[2]~regout\ & (\POSITION|a_x\(5)))), GLOBAL(\CLK~combout\), VCC, , \latch[7]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \POSITION|a_x\(5),
	datac => \POSITION|a_y\(5),
	datad => \process_1:state[2]~regout\,
	aclr => GND,
	ena => \latch[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => latch(5));

-- Location: LC_X5_Y3_N9
\POSITION|a_x[6]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_x\(6) = DFFEAS(\POSITION|a_x\(6) $ (\POSITION|Lookup|Add2~0_combout\ $ ((!(!\POSITION|a_x[1]~19\ & \POSITION|a_x[5]~5\) # (\POSITION|a_x[1]~19\ & \POSITION|a_x[5]~5COUT1_48\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , 
-- \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_x[6]~1\ = CARRY((\POSITION|a_x\(6) & ((\POSITION|Lookup|Add2~0_combout\) # (!\POSITION|a_x[5]~5COUT1_48\))) # (!\POSITION|a_x\(6) & (\POSITION|Lookup|Add2~0_combout\ & !\POSITION|a_x[5]~5COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_x\(6),
	datab => \POSITION|Lookup|Add2~0_combout\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_x[1]~19\,
	cin0 => \POSITION|a_x[5]~5\,
	cin1 => \POSITION|a_x[5]~5COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_x\(6),
	cout => \POSITION|a_x[6]~1\);

-- Location: LC_X6_Y3_N0
\POSITION|a_x[7]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_x\(7) = DFFEAS(\POSITION|a_x\(7) $ (\POSITION|Lookup|Add2~0_combout\ $ ((\POSITION|a_x[6]~1\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_x[7]~7\ = CARRY((\POSITION|a_x\(7) & (!\POSITION|Lookup|Add2~0_combout\ & !\POSITION|a_x[6]~1\)) # (!\POSITION|a_x\(7) & ((!\POSITION|a_x[6]~1\) # (!\POSITION|Lookup|Add2~0_combout\))))
-- \POSITION|a_x[7]~7COUT1_50\ = CARRY((\POSITION|a_x\(7) & (!\POSITION|Lookup|Add2~0_combout\ & !\POSITION|a_x[6]~1\)) # (!\POSITION|a_x\(7) & ((!\POSITION|a_x[6]~1\) # (!\POSITION|Lookup|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_x\(7),
	datab => \POSITION|Lookup|Add2~0_combout\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_x[6]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_x\(7),
	cout0 => \POSITION|a_x[7]~7\,
	cout1 => \POSITION|a_x[7]~7COUT1_50\);

-- Location: LC_X6_Y3_N1
\POSITION|a_x[8]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_x\(8) = DFFEAS(\POSITION|a_x\(8) $ (\POSITION|Lookup|Add2~0_combout\ $ ((!(!\POSITION|a_x[6]~1\ & \POSITION|a_x[7]~7\) # (\POSITION|a_x[6]~1\ & \POSITION|a_x[7]~7COUT1_50\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , 
-- \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_x[8]~25\ = CARRY((\POSITION|a_x\(8) & ((\POSITION|Lookup|Add2~0_combout\) # (!\POSITION|a_x[7]~7\))) # (!\POSITION|a_x\(8) & (\POSITION|Lookup|Add2~0_combout\ & !\POSITION|a_x[7]~7\)))
-- \POSITION|a_x[8]~25COUT1_52\ = CARRY((\POSITION|a_x\(8) & ((\POSITION|Lookup|Add2~0_combout\) # (!\POSITION|a_x[7]~7COUT1_50\))) # (!\POSITION|a_x\(8) & (\POSITION|Lookup|Add2~0_combout\ & !\POSITION|a_x[7]~7COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_x\(8),
	datab => \POSITION|Lookup|Add2~0_combout\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_x[6]~1\,
	cin0 => \POSITION|a_x[7]~7\,
	cin1 => \POSITION|a_x[7]~7COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_x\(8),
	cout0 => \POSITION|a_x[8]~25\,
	cout1 => \POSITION|a_x[8]~25COUT1_52\);

-- Location: LC_X6_Y3_N2
\POSITION|a_x[9]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_x\(9) = DFFEAS(\POSITION|a_x\(9) $ (\POSITION|Lookup|Add2~0_combout\ $ (((!\POSITION|a_x[6]~1\ & \POSITION|a_x[8]~25\) # (\POSITION|a_x[6]~1\ & \POSITION|a_x[8]~25COUT1_52\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , 
-- \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_x[9]~17\ = CARRY((\POSITION|a_x\(9) & (!\POSITION|Lookup|Add2~0_combout\ & !\POSITION|a_x[8]~25\)) # (!\POSITION|a_x\(9) & ((!\POSITION|a_x[8]~25\) # (!\POSITION|Lookup|Add2~0_combout\))))
-- \POSITION|a_x[9]~17COUT1_54\ = CARRY((\POSITION|a_x\(9) & (!\POSITION|Lookup|Add2~0_combout\ & !\POSITION|a_x[8]~25COUT1_52\)) # (!\POSITION|a_x\(9) & ((!\POSITION|a_x[8]~25COUT1_52\) # (!\POSITION|Lookup|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_x\(9),
	datab => \POSITION|Lookup|Add2~0_combout\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_x[6]~1\,
	cin0 => \POSITION|a_x[8]~25\,
	cin1 => \POSITION|a_x[8]~25COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_x\(9),
	cout0 => \POSITION|a_x[9]~17\,
	cout1 => \POSITION|a_x[9]~17COUT1_54\);

-- Location: LC_X6_Y3_N3
\POSITION|a_x[10]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_x\(10) = DFFEAS(\POSITION|a_x\(10) $ (\POSITION|Lookup|Add2~0_combout\ $ ((!(!\POSITION|a_x[6]~1\ & \POSITION|a_x[9]~17\) # (\POSITION|a_x[6]~1\ & \POSITION|a_x[9]~17COUT1_54\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , 
-- \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_x[10]~13\ = CARRY((\POSITION|a_x\(10) & ((\POSITION|Lookup|Add2~0_combout\) # (!\POSITION|a_x[9]~17\))) # (!\POSITION|a_x\(10) & (\POSITION|Lookup|Add2~0_combout\ & !\POSITION|a_x[9]~17\)))
-- \POSITION|a_x[10]~13COUT1_56\ = CARRY((\POSITION|a_x\(10) & ((\POSITION|Lookup|Add2~0_combout\) # (!\POSITION|a_x[9]~17COUT1_54\))) # (!\POSITION|a_x\(10) & (\POSITION|Lookup|Add2~0_combout\ & !\POSITION|a_x[9]~17COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_x\(10),
	datab => \POSITION|Lookup|Add2~0_combout\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_x[6]~1\,
	cin0 => \POSITION|a_x[9]~17\,
	cin1 => \POSITION|a_x[9]~17COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_x\(10),
	cout0 => \POSITION|a_x[10]~13\,
	cout1 => \POSITION|a_x[10]~13COUT1_56\);

-- Location: LC_X6_Y3_N4
\POSITION|a_x[11]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_x\(11) = DFFEAS(\POSITION|a_x\(11) $ (\POSITION|Lookup|Add2~0_combout\ $ (((!\POSITION|a_x[6]~1\ & \POSITION|a_x[10]~13\) # (\POSITION|a_x[6]~1\ & \POSITION|a_x[10]~13COUT1_56\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , 
-- \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_x[11]~21\ = CARRY((\POSITION|a_x\(11) & (!\POSITION|Lookup|Add2~0_combout\ & !\POSITION|a_x[10]~13COUT1_56\)) # (!\POSITION|a_x\(11) & ((!\POSITION|a_x[10]~13COUT1_56\) # (!\POSITION|Lookup|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_x\(11),
	datab => \POSITION|Lookup|Add2~0_combout\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_x[6]~1\,
	cin0 => \POSITION|a_x[10]~13\,
	cin1 => \POSITION|a_x[10]~13COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_x\(11),
	cout => \POSITION|a_x[11]~21\);

-- Location: LC_X6_Y3_N5
\POSITION|a_x[12]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_x\(12) = DFFEAS(\POSITION|a_x\(12) $ (\POSITION|Lookup|Add2~0_combout\ $ ((!\POSITION|a_x[11]~21\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_x[12]~9\ = CARRY((\POSITION|a_x\(12) & ((\POSITION|Lookup|Add2~0_combout\) # (!\POSITION|a_x[11]~21\))) # (!\POSITION|a_x\(12) & (\POSITION|Lookup|Add2~0_combout\ & !\POSITION|a_x[11]~21\)))
-- \POSITION|a_x[12]~9COUT1_58\ = CARRY((\POSITION|a_x\(12) & ((\POSITION|Lookup|Add2~0_combout\) # (!\POSITION|a_x[11]~21\))) # (!\POSITION|a_x\(12) & (\POSITION|Lookup|Add2~0_combout\ & !\POSITION|a_x[11]~21\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_x\(12),
	datab => \POSITION|Lookup|Add2~0_combout\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_x[11]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_x\(12),
	cout0 => \POSITION|a_x[12]~9\,
	cout1 => \POSITION|a_x[12]~9COUT1_58\);

-- Location: LC_X6_Y3_N6
\POSITION|a_x[13]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_x\(13) = DFFEAS(\POSITION|a_x\(13) $ ((((!\POSITION|a_x[11]~21\ & \POSITION|a_x[12]~9\) # (\POSITION|a_x[11]~21\ & \POSITION|a_x[12]~9COUT1_58\) $ (\POSITION|Lookup|Add2~0_combout\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , 
-- \POSITION|a_2t[7]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_x\(13),
	datad => \POSITION|Lookup|Add2~0_combout\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_x[11]~21\,
	cin0 => \POSITION|a_x[12]~9\,
	cin1 => \POSITION|a_x[12]~9COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_x\(13));

-- Location: LC_X5_Y1_N9
\POSITION|a_y[6]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_y\(6) = DFFEAS(\POSITION|Lookup|Add3~0_combout\ $ (\POSITION|a_y\(6) $ ((!(!\POSITION|a_y[1]~19\ & \POSITION|a_y[5]~5\) # (\POSITION|a_y[1]~19\ & \POSITION|a_y[5]~5COUT1_48\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , 
-- \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_y[6]~1\ = CARRY((\POSITION|Lookup|Add3~0_combout\ & ((\POSITION|a_y\(6)) # (!\POSITION|a_y[5]~5COUT1_48\))) # (!\POSITION|Lookup|Add3~0_combout\ & (\POSITION|a_y\(6) & !\POSITION|a_y[5]~5COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|Lookup|Add3~0_combout\,
	datab => \POSITION|a_y\(6),
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_y[1]~19\,
	cin0 => \POSITION|a_y[5]~5\,
	cin1 => \POSITION|a_y[5]~5COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_y\(6),
	cout => \POSITION|a_y[6]~1\);

-- Location: LC_X6_Y1_N0
\POSITION|a_y[7]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_y\(7) = DFFEAS(\POSITION|a_y\(7) $ (\POSITION|Lookup|Add3~0_combout\ $ ((\POSITION|a_y[6]~1\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_y[7]~7\ = CARRY((\POSITION|a_y\(7) & (!\POSITION|Lookup|Add3~0_combout\ & !\POSITION|a_y[6]~1\)) # (!\POSITION|a_y\(7) & ((!\POSITION|a_y[6]~1\) # (!\POSITION|Lookup|Add3~0_combout\))))
-- \POSITION|a_y[7]~7COUT1_50\ = CARRY((\POSITION|a_y\(7) & (!\POSITION|Lookup|Add3~0_combout\ & !\POSITION|a_y[6]~1\)) # (!\POSITION|a_y\(7) & ((!\POSITION|a_y[6]~1\) # (!\POSITION|Lookup|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_y\(7),
	datab => \POSITION|Lookup|Add3~0_combout\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_y[6]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_y\(7),
	cout0 => \POSITION|a_y[7]~7\,
	cout1 => \POSITION|a_y[7]~7COUT1_50\);

-- Location: LC_X6_Y1_N1
\POSITION|a_y[8]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_y\(8) = DFFEAS(\POSITION|a_y\(8) $ (\POSITION|Lookup|Add3~0_combout\ $ ((!(!\POSITION|a_y[6]~1\ & \POSITION|a_y[7]~7\) # (\POSITION|a_y[6]~1\ & \POSITION|a_y[7]~7COUT1_50\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , 
-- \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_y[8]~25\ = CARRY((\POSITION|a_y\(8) & ((\POSITION|Lookup|Add3~0_combout\) # (!\POSITION|a_y[7]~7\))) # (!\POSITION|a_y\(8) & (\POSITION|Lookup|Add3~0_combout\ & !\POSITION|a_y[7]~7\)))
-- \POSITION|a_y[8]~25COUT1_52\ = CARRY((\POSITION|a_y\(8) & ((\POSITION|Lookup|Add3~0_combout\) # (!\POSITION|a_y[7]~7COUT1_50\))) # (!\POSITION|a_y\(8) & (\POSITION|Lookup|Add3~0_combout\ & !\POSITION|a_y[7]~7COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_y\(8),
	datab => \POSITION|Lookup|Add3~0_combout\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_y[6]~1\,
	cin0 => \POSITION|a_y[7]~7\,
	cin1 => \POSITION|a_y[7]~7COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_y\(8),
	cout0 => \POSITION|a_y[8]~25\,
	cout1 => \POSITION|a_y[8]~25COUT1_52\);

-- Location: LC_X6_Y1_N2
\POSITION|a_y[9]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_y\(9) = DFFEAS(\POSITION|a_y\(9) $ (\POSITION|Lookup|Add3~0_combout\ $ (((!\POSITION|a_y[6]~1\ & \POSITION|a_y[8]~25\) # (\POSITION|a_y[6]~1\ & \POSITION|a_y[8]~25COUT1_52\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , 
-- \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_y[9]~17\ = CARRY((\POSITION|a_y\(9) & (!\POSITION|Lookup|Add3~0_combout\ & !\POSITION|a_y[8]~25\)) # (!\POSITION|a_y\(9) & ((!\POSITION|a_y[8]~25\) # (!\POSITION|Lookup|Add3~0_combout\))))
-- \POSITION|a_y[9]~17COUT1_54\ = CARRY((\POSITION|a_y\(9) & (!\POSITION|Lookup|Add3~0_combout\ & !\POSITION|a_y[8]~25COUT1_52\)) # (!\POSITION|a_y\(9) & ((!\POSITION|a_y[8]~25COUT1_52\) # (!\POSITION|Lookup|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_y\(9),
	datab => \POSITION|Lookup|Add3~0_combout\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_y[6]~1\,
	cin0 => \POSITION|a_y[8]~25\,
	cin1 => \POSITION|a_y[8]~25COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_y\(9),
	cout0 => \POSITION|a_y[9]~17\,
	cout1 => \POSITION|a_y[9]~17COUT1_54\);

-- Location: LC_X6_Y1_N3
\POSITION|a_y[10]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_y\(10) = DFFEAS(\POSITION|a_y\(10) $ (\POSITION|Lookup|Add3~0_combout\ $ ((!(!\POSITION|a_y[6]~1\ & \POSITION|a_y[9]~17\) # (\POSITION|a_y[6]~1\ & \POSITION|a_y[9]~17COUT1_54\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , 
-- \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_y[10]~13\ = CARRY((\POSITION|a_y\(10) & ((\POSITION|Lookup|Add3~0_combout\) # (!\POSITION|a_y[9]~17\))) # (!\POSITION|a_y\(10) & (\POSITION|Lookup|Add3~0_combout\ & !\POSITION|a_y[9]~17\)))
-- \POSITION|a_y[10]~13COUT1_56\ = CARRY((\POSITION|a_y\(10) & ((\POSITION|Lookup|Add3~0_combout\) # (!\POSITION|a_y[9]~17COUT1_54\))) # (!\POSITION|a_y\(10) & (\POSITION|Lookup|Add3~0_combout\ & !\POSITION|a_y[9]~17COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_y\(10),
	datab => \POSITION|Lookup|Add3~0_combout\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_y[6]~1\,
	cin0 => \POSITION|a_y[9]~17\,
	cin1 => \POSITION|a_y[9]~17COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_y\(10),
	cout0 => \POSITION|a_y[10]~13\,
	cout1 => \POSITION|a_y[10]~13COUT1_56\);

-- Location: LC_X6_Y1_N4
\POSITION|a_y[11]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_y\(11) = DFFEAS(\POSITION|a_y\(11) $ (\POSITION|Lookup|Add3~0_combout\ $ (((!\POSITION|a_y[6]~1\ & \POSITION|a_y[10]~13\) # (\POSITION|a_y[6]~1\ & \POSITION|a_y[10]~13COUT1_56\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , 
-- \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_y[11]~21\ = CARRY((\POSITION|a_y\(11) & (!\POSITION|Lookup|Add3~0_combout\ & !\POSITION|a_y[10]~13COUT1_56\)) # (!\POSITION|a_y\(11) & ((!\POSITION|a_y[10]~13COUT1_56\) # (!\POSITION|Lookup|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_y\(11),
	datab => \POSITION|Lookup|Add3~0_combout\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_y[6]~1\,
	cin0 => \POSITION|a_y[10]~13\,
	cin1 => \POSITION|a_y[10]~13COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_y\(11),
	cout => \POSITION|a_y[11]~21\);

-- Location: LC_X6_Y1_N5
\POSITION|a_y[12]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_y\(12) = DFFEAS(\POSITION|a_y\(12) $ (\POSITION|Lookup|Add3~0_combout\ $ ((!\POSITION|a_y[11]~21\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , \POSITION|a_2t[7]~0_combout\, , , , )
-- \POSITION|a_y[12]~9\ = CARRY((\POSITION|a_y\(12) & ((\POSITION|Lookup|Add3~0_combout\) # (!\POSITION|a_y[11]~21\))) # (!\POSITION|a_y\(12) & (\POSITION|Lookup|Add3~0_combout\ & !\POSITION|a_y[11]~21\)))
-- \POSITION|a_y[12]~9COUT1_58\ = CARRY((\POSITION|a_y\(12) & ((\POSITION|Lookup|Add3~0_combout\) # (!\POSITION|a_y[11]~21\))) # (!\POSITION|a_y\(12) & (\POSITION|Lookup|Add3~0_combout\ & !\POSITION|a_y[11]~21\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_y\(12),
	datab => \POSITION|Lookup|Add3~0_combout\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_y[11]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_y\(12),
	cout0 => \POSITION|a_y[12]~9\,
	cout1 => \POSITION|a_y[12]~9COUT1_58\);

-- Location: LC_X6_Y1_N6
\POSITION|a_y[13]\ : maxv_lcell
-- Equation(s):
-- \POSITION|a_y\(13) = DFFEAS(\POSITION|a_y\(13) $ ((((!\POSITION|a_y[11]~21\ & \POSITION|a_y[12]~9\) # (\POSITION|a_y[11]~21\ & \POSITION|a_y[12]~9COUT1_58\) $ (\POSITION|Lookup|Add3~0_combout\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , 
-- \POSITION|a_2t[7]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_y\(13),
	datad => \POSITION|Lookup|Add3~0_combout\,
	aclr => \RST~combout\,
	ena => \POSITION|a_2t[7]~0_combout\,
	cin => \POSITION|a_y[11]~21\,
	cin0 => \POSITION|a_y[12]~9\,
	cin1 => \POSITION|a_y[12]~9COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \POSITION|a_y\(13));

-- Location: LC_X2_Y1_N3
\latch[13]\ : maxv_lcell
-- Equation(s):
-- latch(13) = DFFEAS(((\process_1:state[2]~regout\ & ((\POSITION|a_y\(13)))) # (!\process_1:state[2]~regout\ & (\POSITION|a_x\(13)))), GLOBAL(\CLK~combout\), VCC, , \latch[7]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_x\(13),
	datab => \POSITION|a_y\(13),
	datad => \process_1:state[2]~regout\,
	aclr => GND,
	ena => \latch[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => latch(13));

-- Location: LC_X2_Y1_N6
\data[7]~2\ : maxv_lcell
-- Equation(s):
-- \data[7]~2_combout\ = (\data[7]~1_combout\ & ((\process_1:state[0]~regout\ $ (\process_1:state[1]~regout\)) # (!\process_1:state[2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7d00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_1:state[2]~regout\,
	datab => \process_1:state[0]~regout\,
	datac => \process_1:state[1]~regout\,
	datad => \data[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data[7]~2_combout\);

-- Location: LC_X7_Y1_N3
\data[5]\ : maxv_lcell
-- Equation(s):
-- data(5) = DFFEAS(((\data[7]~3_combout\ & ((latch(13)))) # (!\data[7]~3_combout\ & (latch(5)))) # (!\process_1~0_combout\), GLOBAL(\CLK~combout\), VCC, , \data[7]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb73",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \data[7]~3_combout\,
	datab => \process_1~0_combout\,
	datac => latch(5),
	datad => latch(13),
	aclr => GND,
	ena => \data[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(5));

-- Location: LC_X7_Y1_N6
\TRANSMIT|transmitter|latch[5]\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|transmitter|latch\(5) = ((GLOBAL(\TRANSMIT|transmitter|ready~0_combout\) & ((data(5)))) # (!GLOBAL(\TRANSMIT|transmitter|ready~0_combout\) & (\TRANSMIT|transmitter|latch\(5))))

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
	datab => \TRANSMIT|transmitter|ready~0_combout\,
	datac => \TRANSMIT|transmitter|latch\(5),
	datad => data(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|transmitter|latch\(5));

-- Location: LC_X5_Y1_N2
\latch[6]\ : maxv_lcell
-- Equation(s):
-- latch(6) = DFFEAS((\process_1:state[2]~regout\ & (\POSITION|a_y\(6))) # (!\process_1:state[2]~regout\ & (((\POSITION|a_x\(6))))), GLOBAL(\CLK~combout\), VCC, , \latch[7]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \process_1:state[2]~regout\,
	datab => \POSITION|a_y\(6),
	datad => \POSITION|a_x\(6),
	aclr => GND,
	ena => \latch[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => latch(6));

-- Location: LC_X2_Y3_N2
\data[6]\ : maxv_lcell
-- Equation(s):
-- data(6) = DFFEAS((\process_1:state[2]~regout\ & (((latch(6) & \process_1:state[0]~regout\)))) # (!\process_1:state[2]~regout\ & (((latch(6) & !\process_1:state[0]~regout\)) # (!\process_1:state[1]~regout\))), GLOBAL(\CLK~combout\), VCC, , 
-- \data[7]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d131",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \process_1:state[1]~regout\,
	datab => \process_1:state[2]~regout\,
	datac => latch(6),
	datad => \process_1:state[0]~regout\,
	aclr => GND,
	ena => \data[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(6));

-- Location: LC_X2_Y3_N0
\TRANSMIT|transmitter|latch[6]\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|transmitter|latch\(6) = ((GLOBAL(\TRANSMIT|transmitter|ready~0_combout\) & ((data(6)))) # (!GLOBAL(\TRANSMIT|transmitter|ready~0_combout\) & (\TRANSMIT|transmitter|latch\(6))))

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
	datab => \TRANSMIT|transmitter|ready~0_combout\,
	datac => \TRANSMIT|transmitter|latch\(6),
	datad => data(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|transmitter|latch\(6));

-- Location: LC_X6_Y1_N9
\latch[12]\ : maxv_lcell
-- Equation(s):
-- latch(12) = DFFEAS(((\process_1:state[2]~regout\ & ((\POSITION|a_y\(12)))) # (!\process_1:state[2]~regout\ & (\POSITION|a_x\(12)))), GLOBAL(\CLK~combout\), VCC, , \latch[7]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_x\(12),
	datac => \POSITION|a_y\(12),
	datad => \process_1:state[2]~regout\,
	aclr => GND,
	ena => \latch[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => latch(12));

-- Location: LC_X5_Y1_N0
\latch[4]\ : maxv_lcell
-- Equation(s):
-- latch(4) = DFFEAS(((\process_1:state[2]~regout\ & ((\POSITION|a_y\(4)))) # (!\process_1:state[2]~regout\ & (\POSITION|a_x\(4)))), GLOBAL(\CLK~combout\), VCC, , \latch[7]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \POSITION|a_x\(4),
	datac => \POSITION|a_y\(4),
	datad => \process_1:state[2]~regout\,
	aclr => GND,
	ena => \latch[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => latch(4));

-- Location: LC_X7_Y1_N1
\data[4]\ : maxv_lcell
-- Equation(s):
-- data(4) = DFFEAS(((\data[7]~3_combout\ & (latch(12))) # (!\data[7]~3_combout\ & ((latch(4))))) # (!\process_1~0_combout\), GLOBAL(\CLK~combout\), VCC, , \data[7]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbf3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => latch(12),
	datab => \process_1~0_combout\,
	datac => latch(4),
	datad => \data[7]~3_combout\,
	aclr => GND,
	ena => \data[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(4));

-- Location: LC_X7_Y1_N4
\TRANSMIT|transmitter|latch[4]\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|transmitter|latch\(4) = ((GLOBAL(\TRANSMIT|transmitter|ready~0_combout\) & ((data(4)))) # (!GLOBAL(\TRANSMIT|transmitter|ready~0_combout\) & (\TRANSMIT|transmitter|latch\(4))))

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
	datab => \TRANSMIT|transmitter|ready~0_combout\,
	datac => \TRANSMIT|transmitter|latch\(4),
	datad => data(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|transmitter|latch\(4));

-- Location: LC_X2_Y1_N0
\latch[7]\ : maxv_lcell
-- Equation(s):
-- latch(7) = DFFEAS(((\process_1:state[2]~regout\ & ((\POSITION|a_y\(7)))) # (!\process_1:state[2]~regout\ & (\POSITION|a_x\(7)))), GLOBAL(\CLK~combout\), VCC, , \latch[7]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \POSITION|a_x\(7),
	datac => \POSITION|a_y\(7),
	datad => \process_1:state[2]~regout\,
	aclr => GND,
	ena => \latch[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => latch(7));

-- Location: LC_X2_Y1_N9
\data[7]\ : maxv_lcell
-- Equation(s):
-- data(7) = DFFEAS((\process_1:state[2]~regout\ & (((latch(7) & \process_1:state[0]~regout\)))) # (!\process_1:state[2]~regout\ & (((latch(7) & !\process_1:state[0]~regout\)) # (!\process_1:state[1]~regout\))), GLOBAL(\CLK~combout\), VCC, , 
-- \data[7]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b151",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \process_1:state[2]~regout\,
	datab => \process_1:state[1]~regout\,
	datac => latch(7),
	datad => \process_1:state[0]~regout\,
	aclr => GND,
	ena => \data[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(7));

-- Location: LC_X2_Y1_N8
\TRANSMIT|transmitter|latch[7]\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|transmitter|latch\(7) = (GLOBAL(\TRANSMIT|transmitter|ready~0_combout\) & (((data(7))))) # (!GLOBAL(\TRANSMIT|transmitter|ready~0_combout\) & (\TRANSMIT|transmitter|latch\(7)))

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
	dataa => \TRANSMIT|transmitter|latch\(7),
	datab => \TRANSMIT|transmitter|ready~0_combout\,
	datad => data(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|transmitter|latch\(7));

-- Location: LC_X7_Y1_N7
\TRANSMIT|transmitter|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|transmitter|Mux0~0_combout\ = (\TRANSMIT|transmitter|step\(1) & (((\TRANSMIT|transmitter|step\(0))))) # (!\TRANSMIT|transmitter|step\(1) & ((\TRANSMIT|transmitter|step\(0) & (\TRANSMIT|transmitter|latch\(4))) # (!\TRANSMIT|transmitter|step\(0) & 
-- ((\TRANSMIT|transmitter|latch\(7))))))

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
	dataa => \TRANSMIT|transmitter|latch\(4),
	datab => \TRANSMIT|transmitter|step\(1),
	datac => \TRANSMIT|transmitter|step\(0),
	datad => \TRANSMIT|transmitter|latch\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|transmitter|Mux0~0_combout\);

-- Location: LC_X7_Y1_N8
\TRANSMIT|transmitter|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|transmitter|Mux0~1_combout\ = (\TRANSMIT|transmitter|step\(1) & ((\TRANSMIT|transmitter|Mux0~0_combout\ & ((\TRANSMIT|transmitter|latch\(6)))) # (!\TRANSMIT|transmitter|Mux0~0_combout\ & (\TRANSMIT|transmitter|latch\(5))))) # 
-- (!\TRANSMIT|transmitter|step\(1) & (((\TRANSMIT|transmitter|Mux0~0_combout\))))

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
	dataa => \TRANSMIT|transmitter|latch\(5),
	datab => \TRANSMIT|transmitter|step\(1),
	datac => \TRANSMIT|transmitter|latch\(6),
	datad => \TRANSMIT|transmitter|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|transmitter|Mux0~1_combout\);

-- Location: LC_X5_Y1_N1
\latch[2]\ : maxv_lcell
-- Equation(s):
-- latch(2) = DFFEAS(((\process_1:state[2]~regout\ & ((\POSITION|a_y\(2)))) # (!\process_1:state[2]~regout\ & (\POSITION|a_x\(2)))), GLOBAL(\CLK~combout\), VCC, , \latch[7]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \POSITION|a_x\(2),
	datac => \POSITION|a_y\(2),
	datad => \process_1:state[2]~regout\,
	aclr => GND,
	ena => \latch[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => latch(2));

-- Location: LC_X2_Y1_N4
\latch[10]\ : maxv_lcell
-- Equation(s):
-- latch(10) = DFFEAS(((\process_1:state[2]~regout\ & (\POSITION|a_y\(10))) # (!\process_1:state[2]~regout\ & ((\POSITION|a_x\(10))))), GLOBAL(\CLK~combout\), VCC, , \latch[7]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \process_1:state[2]~regout\,
	datac => \POSITION|a_y\(10),
	datad => \POSITION|a_x\(10),
	aclr => GND,
	ena => \latch[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => latch(10));

-- Location: LC_X7_Y1_N9
\data[2]\ : maxv_lcell
-- Equation(s):
-- data(2) = DFFEAS(((\data[7]~3_combout\ & ((latch(10)))) # (!\data[7]~3_combout\ & (latch(2)))) # (!\process_1~0_combout\), GLOBAL(\CLK~combout\), VCC, , \data[7]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef4f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \data[7]~3_combout\,
	datab => latch(2),
	datac => \process_1~0_combout\,
	datad => latch(10),
	aclr => GND,
	ena => \data[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(2));

-- Location: LC_X7_Y1_N5
\TRANSMIT|transmitter|latch[2]\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|transmitter|latch\(2) = ((GLOBAL(\TRANSMIT|transmitter|ready~0_combout\) & ((data(2)))) # (!GLOBAL(\TRANSMIT|transmitter|ready~0_combout\) & (\TRANSMIT|transmitter|latch\(2))))

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
	datab => \TRANSMIT|transmitter|ready~0_combout\,
	datac => \TRANSMIT|transmitter|latch\(2),
	datad => data(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|transmitter|latch\(2));

-- Location: LC_X6_Y1_N8
\latch[9]\ : maxv_lcell
-- Equation(s):
-- latch(9) = DFFEAS(((\process_1:state[2]~regout\ & (\POSITION|a_y\(9))) # (!\process_1:state[2]~regout\ & ((\POSITION|a_x\(9))))), GLOBAL(\CLK~combout\), VCC, , \latch[7]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \POSITION|a_y\(9),
	datac => \POSITION|a_x\(9),
	datad => \process_1:state[2]~regout\,
	aclr => GND,
	ena => \latch[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => latch(9));

-- Location: LC_X2_Y1_N7
\latch[1]\ : maxv_lcell
-- Equation(s):
-- latch(1) = DFFEAS((\process_1:state[2]~regout\ & (\POSITION|a_y\(1))) # (!\process_1:state[2]~regout\ & (((\POSITION|a_x\(1))))), GLOBAL(\CLK~combout\), VCC, , \latch[7]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_y\(1),
	datab => \process_1:state[2]~regout\,
	datad => \POSITION|a_x\(1),
	aclr => GND,
	ena => \latch[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => latch(1));

-- Location: LC_X2_Y3_N3
\data[1]\ : maxv_lcell
-- Equation(s):
-- data(1) = DFFEAS(((\data[7]~3_combout\ & (latch(9))) # (!\data[7]~3_combout\ & ((latch(1))))) # (!\process_1~0_combout\), GLOBAL(\CLK~combout\), VCC, , \data[7]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ddf5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \process_1~0_combout\,
	datab => latch(9),
	datac => latch(1),
	datad => \data[7]~3_combout\,
	aclr => GND,
	ena => \data[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(1));

-- Location: LC_X2_Y3_N8
\TRANSMIT|transmitter|latch[1]\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|transmitter|latch\(1) = (GLOBAL(\TRANSMIT|transmitter|ready~0_combout\) & (((data(1))))) # (!GLOBAL(\TRANSMIT|transmitter|ready~0_combout\) & (\TRANSMIT|transmitter|latch\(1)))

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
	dataa => \TRANSMIT|transmitter|latch\(1),
	datab => \TRANSMIT|transmitter|ready~0_combout\,
	datad => data(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|transmitter|latch\(1));

-- Location: LC_X6_Y1_N7
\latch[11]\ : maxv_lcell
-- Equation(s):
-- latch(11) = DFFEAS(((\process_1:state[2]~regout\ & ((\POSITION|a_y\(11)))) # (!\process_1:state[2]~regout\ & (\POSITION|a_x\(11)))), GLOBAL(\CLK~combout\), VCC, , \latch[7]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \POSITION|a_x\(11),
	datac => \POSITION|a_y\(11),
	datad => \process_1:state[2]~regout\,
	aclr => GND,
	ena => \latch[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => latch(11));

-- Location: LC_X2_Y1_N2
\latch[3]\ : maxv_lcell
-- Equation(s):
-- latch(3) = DFFEAS((\process_1:state[2]~regout\ & (((\POSITION|a_y\(3))))) # (!\process_1:state[2]~regout\ & (\POSITION|a_x\(3))), GLOBAL(\CLK~combout\), VCC, , \latch[7]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2e2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \POSITION|a_x\(3),
	datab => \process_1:state[2]~regout\,
	datac => \POSITION|a_y\(3),
	aclr => GND,
	ena => \latch[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => latch(3));

-- Location: LC_X7_Y1_N2
\data[3]\ : maxv_lcell
-- Equation(s):
-- data(3) = DFFEAS(((\data[7]~3_combout\ & (latch(11))) # (!\data[7]~3_combout\ & ((latch(3))))) # (!\process_1~0_combout\), GLOBAL(\CLK~combout\), VCC, , \data[7]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df8f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \data[7]~3_combout\,
	datab => latch(11),
	datac => \process_1~0_combout\,
	datad => latch(3),
	aclr => GND,
	ena => \data[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(3));

-- Location: LC_X7_Y1_N0
\TRANSMIT|transmitter|latch[3]\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|transmitter|latch\(3) = ((GLOBAL(\TRANSMIT|transmitter|ready~0_combout\) & ((data(3)))) # (!GLOBAL(\TRANSMIT|transmitter|ready~0_combout\) & (\TRANSMIT|transmitter|latch\(3))))

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
	datab => \TRANSMIT|transmitter|ready~0_combout\,
	datac => \TRANSMIT|transmitter|latch\(3),
	datad => data(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|transmitter|latch\(3));

-- Location: LC_X2_Y2_N2
\latch[8]\ : maxv_lcell
-- Equation(s):
-- latch(8) = DFFEAS(((\process_1:state[2]~regout\ & ((\POSITION|a_y\(8)))) # (!\process_1:state[2]~regout\ & (\POSITION|a_x\(8)))), GLOBAL(\CLK~combout\), VCC, , \latch[7]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \POSITION|a_x\(8),
	datac => \POSITION|a_y\(8),
	datad => \process_1:state[2]~regout\,
	aclr => GND,
	ena => \latch[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => latch(8));

-- Location: LC_X2_Y2_N5
\latch[0]\ : maxv_lcell
-- Equation(s):
-- latch(0) = DFFEAS(((\process_1:state[2]~regout\ & (\POSITION|a_y\(0))) # (!\process_1:state[2]~regout\ & ((\POSITION|a_x\(0))))), GLOBAL(\CLK~combout\), VCC, , \latch[7]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \POSITION|a_y\(0),
	datac => \POSITION|a_x\(0),
	datad => \process_1:state[2]~regout\,
	aclr => GND,
	ena => \latch[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => latch(0));

-- Location: LC_X2_Y3_N9
\data[0]\ : maxv_lcell
-- Equation(s):
-- data(0) = DFFEAS(((\data[7]~3_combout\ & (latch(8))) # (!\data[7]~3_combout\ & ((latch(0))))) # (!\process_1~0_combout\), GLOBAL(\CLK~combout\), VCC, , \data[7]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ddf5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \process_1~0_combout\,
	datab => latch(8),
	datac => latch(0),
	datad => \data[7]~3_combout\,
	aclr => GND,
	ena => \data[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(0));

-- Location: LC_X2_Y3_N4
\TRANSMIT|transmitter|latch[0]\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|transmitter|latch\(0) = ((GLOBAL(\TRANSMIT|transmitter|ready~0_combout\) & ((data(0)))) # (!GLOBAL(\TRANSMIT|transmitter|ready~0_combout\) & (\TRANSMIT|transmitter|latch\(0))))

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
	datab => \TRANSMIT|transmitter|ready~0_combout\,
	datac => \TRANSMIT|transmitter|latch\(0),
	datad => data(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|transmitter|latch\(0));

-- Location: LC_X7_Y3_N5
\TRANSMIT|transmitter|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|transmitter|Mux0~2_combout\ = (\TRANSMIT|transmitter|step\(0) & ((\TRANSMIT|transmitter|step\(1)) # ((\TRANSMIT|transmitter|latch\(0))))) # (!\TRANSMIT|transmitter|step\(0) & (!\TRANSMIT|transmitter|step\(1) & (\TRANSMIT|transmitter|latch\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRANSMIT|transmitter|step\(0),
	datab => \TRANSMIT|transmitter|step\(1),
	datac => \TRANSMIT|transmitter|latch\(3),
	datad => \TRANSMIT|transmitter|latch\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|transmitter|Mux0~2_combout\);

-- Location: LC_X7_Y3_N6
\TRANSMIT|transmitter|Mux0~3\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|transmitter|Mux0~3_combout\ = (\TRANSMIT|transmitter|step\(1) & ((\TRANSMIT|transmitter|Mux0~2_combout\ & (\TRANSMIT|transmitter|latch\(2))) # (!\TRANSMIT|transmitter|Mux0~2_combout\ & ((\TRANSMIT|transmitter|latch\(1)))))) # 
-- (!\TRANSMIT|transmitter|step\(1) & (((\TRANSMIT|transmitter|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRANSMIT|transmitter|latch\(2),
	datab => \TRANSMIT|transmitter|step\(1),
	datac => \TRANSMIT|transmitter|latch\(1),
	datad => \TRANSMIT|transmitter|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|transmitter|Mux0~3_combout\);

-- Location: LC_X7_Y3_N7
\TRANSMIT|transmitter|TX~2\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|transmitter|TX~2_combout\ = ((\TRANSMIT|transmitter|Equal2~0_combout\) # ((\TRANSMIT|transmitter|TX~1_combout\ & \TRANSMIT|transmitter|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRANSMIT|transmitter|TX~1_combout\,
	datac => \TRANSMIT|transmitter|Mux0~3_combout\,
	datad => \TRANSMIT|transmitter|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TRANSMIT|transmitter|TX~2_combout\);

-- Location: LC_X7_Y3_N8
\TRANSMIT|transmitter|TX\ : maxv_lcell
-- Equation(s):
-- \TRANSMIT|transmitter|TX~regout\ = DFFEAS((\TRANSMIT|transmitter|TX~0_combout\ & (!\TRANSMIT|transmitter|TX~1_combout\ & (!\TRANSMIT|transmitter|Mux0~1_combout\ & !\TRANSMIT|transmitter|TX~2_combout\))) # (!\TRANSMIT|transmitter|TX~0_combout\ & 
-- (((!\TRANSMIT|transmitter|TX~2_combout\)) # (!\TRANSMIT|transmitter|TX~1_combout\))), GLOBAL(\TRANSMIT|tx_clk_tick~regout\), !\TRANSMIT|transmitter|TX~4_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1157",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TRANSMIT|tx_clk_tick~regout\,
	dataa => \TRANSMIT|transmitter|TX~0_combout\,
	datab => \TRANSMIT|transmitter|TX~1_combout\,
	datac => \TRANSMIT|transmitter|Mux0~1_combout\,
	datad => \TRANSMIT|transmitter|TX~2_combout\,
	aclr => \TRANSMIT|transmitter|TX~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TRANSMIT|transmitter|TX~regout\);

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \TRANSMIT|transmitter|ALT_INV_TX~regout\,
	oe => VCC,
	padio => ww_TX);

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SHARP[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_SHARP(0));

-- Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SHARP[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_SHARP(1));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SHARP[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_SHARP(2));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SHARP[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_SHARP(3));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SHARP[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_SHARP(4));

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SHARP[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_SHARP(5));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SHARP[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_SHARP(6));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SHARP[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_SHARP(7));
END structure;


