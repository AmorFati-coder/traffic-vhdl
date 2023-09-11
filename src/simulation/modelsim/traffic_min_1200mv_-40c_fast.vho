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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "08/28/2022 11:43:11"

-- 
-- Device: Altera EP3C10E144I7 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	traffic IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	SWI : IN std_logic;
	LED : OUT std_logic_vector(5 DOWNTO 0);
	WideSEGH : OUT std_logic_vector(3 DOWNTO 0);
	WideSEGL : OUT std_logic_vector(3 DOWNTO 0);
	NSEGH : OUT std_logic_vector(3 DOWNTO 0);
	NSEGL : OUT std_logic_vector(3 DOWNTO 0)
	);
END traffic;

-- Design Ports Information
-- LED[0]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WideSEGH[0]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WideSEGH[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WideSEGH[2]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WideSEGH[3]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WideSEGL[0]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WideSEGL[1]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WideSEGL[2]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WideSEGL[3]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NSEGH[0]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NSEGH[1]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NSEGH[2]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NSEGH[3]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NSEGL[0]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NSEGL[1]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NSEGL[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NSEGL[3]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWI	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF traffic IS
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
SIGNAL ww_SWI : std_logic;
SIGNAL ww_LED : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_WideSEGH : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_WideSEGL : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_NSEGH : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_NSEGL : std_logic_vector(3 DOWNTO 0);
SIGNAL \SWI~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~15_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \LessThan8~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[5]~output_o\ : std_logic;
SIGNAL \WideSEGH[0]~output_o\ : std_logic;
SIGNAL \WideSEGH[1]~output_o\ : std_logic;
SIGNAL \WideSEGH[2]~output_o\ : std_logic;
SIGNAL \WideSEGH[3]~output_o\ : std_logic;
SIGNAL \WideSEGL[0]~output_o\ : std_logic;
SIGNAL \WideSEGL[1]~output_o\ : std_logic;
SIGNAL \WideSEGL[2]~output_o\ : std_logic;
SIGNAL \WideSEGL[3]~output_o\ : std_logic;
SIGNAL \NSEGH[0]~output_o\ : std_logic;
SIGNAL \NSEGH[1]~output_o\ : std_logic;
SIGNAL \NSEGH[2]~output_o\ : std_logic;
SIGNAL \NSEGH[3]~output_o\ : std_logic;
SIGNAL \NSEGL[0]~output_o\ : std_logic;
SIGNAL \NSEGL[1]~output_o\ : std_logic;
SIGNAL \NSEGL[2]~output_o\ : std_logic;
SIGNAL \NSEGL[3]~output_o\ : std_logic;
SIGNAL \SWI~input_o\ : std_logic;
SIGNAL \SWI~inputclkctrl_outclk\ : std_logic;
SIGNAL \next_s.S3_464~combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \current_s.S3~q\ : std_logic;
SIGNAL \COUNT68[0]~9\ : std_logic;
SIGNAL \COUNT68[1]~10_combout\ : std_logic;
SIGNAL \COUNT68[3]~15\ : std_logic;
SIGNAL \COUNT68[4]~16_combout\ : std_logic;
SIGNAL \COUNT68[4]~17\ : std_logic;
SIGNAL \COUNT68[5]~19\ : std_logic;
SIGNAL \COUNT68[6]~20_combout\ : std_logic;
SIGNAL \COUNT68[0]~8_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \COUNT68[1]~11\ : std_logic;
SIGNAL \COUNT68[2]~12_combout\ : std_logic;
SIGNAL \COUNT68[2]~13\ : std_logic;
SIGNAL \COUNT68[3]~14_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \COUNT68[6]~21\ : std_logic;
SIGNAL \COUNT68[7]~22_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \LED~3_combout\ : std_logic;
SIGNAL \LED[0]$latch~combout\ : std_logic;
SIGNAL \COUNT68[5]~18_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \next_s.S0_482~combout\ : std_logic;
SIGNAL \current_s.S0~0_combout\ : std_logic;
SIGNAL \current_s.S0~q\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \next_s.S1_476~combout\ : std_logic;
SIGNAL \current_s.S1~feeder_combout\ : std_logic;
SIGNAL \current_s.S1~q\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \next_s.S2_470~combout\ : std_logic;
SIGNAL \current_s.S2~feeder_combout\ : std_logic;
SIGNAL \current_s.S2~q\ : std_logic;
SIGNAL \LED[1]$latch~combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \LED[2]$latch~combout\ : std_logic;
SIGNAL \LED~4_combout\ : std_logic;
SIGNAL \LED[3]$latch~combout\ : std_logic;
SIGNAL \LED[4]$latch~combout\ : std_logic;
SIGNAL \LED[5]$latch~combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~7_combout\ : std_logic;
SIGNAL \Add1~10_cout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~20\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add1~27_combout\ : std_logic;
SIGNAL \Add1~29_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \Add1~13_combout\ : std_logic;
SIGNAL \Add6~1_cout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add8~1_cout\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~19_combout\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \WESEG~2_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \WESEG~0_combout\ : std_logic;
SIGNAL \WESEG~1_combout\ : std_logic;
SIGNAL \WESEG~3_combout\ : std_logic;
SIGNAL \WESEG~4_combout\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \WideSEGH[0]$latch~combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~5_combout\ : std_logic;
SIGNAL \Add5~7_combout\ : std_logic;
SIGNAL \Add5~9_combout\ : std_logic;
SIGNAL \WideSEGH[1]$latch~combout\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add5~13_combout\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \WideSEGH[2]$latch~combout\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add5~17_combout\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \Add5~19_combout\ : std_logic;
SIGNAL \WideSEGH[3]$latch~combout\ : std_logic;
SIGNAL \WideSEGL[0]$latch~combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \WESEG~5_combout\ : std_logic;
SIGNAL \WESEG~6_combout\ : std_logic;
SIGNAL \WESEG~7_combout\ : std_logic;
SIGNAL \WideSEGL[1]$latch~combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \WESEG~8_combout\ : std_logic;
SIGNAL \WESEG~9_combout\ : std_logic;
SIGNAL \WESEG~10_combout\ : std_logic;
SIGNAL \WideSEGL[2]$latch~combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \WESEG~11_combout\ : std_logic;
SIGNAL \WESEG~12_combout\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \WideSEGL[3]$latch~combout\ : std_logic;
SIGNAL \Selector6~3_combout\ : std_logic;
SIGNAL \Selector8~4_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Selector8~5_combout\ : std_logic;
SIGNAL \Selector8~6_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \Selector9~3_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \Add10~1_cout\ : std_logic;
SIGNAL \Add10~3\ : std_logic;
SIGNAL \Add10~5\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \Add12~1_cout\ : std_logic;
SIGNAL \Add12~3\ : std_logic;
SIGNAL \Add12~5\ : std_logic;
SIGNAL \Add12~6_combout\ : std_logic;
SIGNAL \Add11~1\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \NSSEG~2_combout\ : std_logic;
SIGNAL \NSSEG~3_combout\ : std_logic;
SIGNAL \NSSEG~4_combout\ : std_logic;
SIGNAL \NSSEG~5_combout\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \NSEGH[0]$latch~combout\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~5_combout\ : std_logic;
SIGNAL \Add12~7\ : std_logic;
SIGNAL \Add12~8_combout\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \Add9~7_combout\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add9~9_combout\ : std_logic;
SIGNAL \NSEGH[1]$latch~combout\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~8_combout\ : std_logic;
SIGNAL \Add10~9\ : std_logic;
SIGNAL \Add10~10_combout\ : std_logic;
SIGNAL \Add12~9\ : std_logic;
SIGNAL \Add12~10_combout\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \Add9~13_combout\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \NSEGH[2]$latch~combout\ : std_logic;
SIGNAL \Add9~6\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~15_combout\ : std_logic;
SIGNAL \Add11~9\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \Add12~11\ : std_logic;
SIGNAL \Add12~12_combout\ : std_logic;
SIGNAL \Add10~11\ : std_logic;
SIGNAL \Add10~12_combout\ : std_logic;
SIGNAL \Add9~17_combout\ : std_logic;
SIGNAL \Add9~18_combout\ : std_logic;
SIGNAL \Add9~19_combout\ : std_logic;
SIGNAL \NSEGH[3]$latch~combout\ : std_logic;
SIGNAL \NSSEG~6_combout\ : std_logic;
SIGNAL \NSSEG~14_combout\ : std_logic;
SIGNAL \NSSEG~7_combout\ : std_logic;
SIGNAL \NSSEG~8_combout\ : std_logic;
SIGNAL \NSEGL[1]$latch~combout\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \Add12~2_combout\ : std_logic;
SIGNAL \LessThan8~2_combout\ : std_logic;
SIGNAL \NSSEG~9_combout\ : std_logic;
SIGNAL \NSSEG~10_combout\ : std_logic;
SIGNAL \NSSEG~11_combout\ : std_logic;
SIGNAL \NSEGL[2]$latch~combout\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \Add12~4_combout\ : std_logic;
SIGNAL \NSSEG~12_combout\ : std_logic;
SIGNAL \NSSEG~13_combout\ : std_logic;
SIGNAL \Add9~20_combout\ : std_logic;
SIGNAL \NSEGL[3]$latch~combout\ : std_logic;
SIGNAL COUNT68 : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_RST~input_o\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
ww_SWI <= SWI;
LED <= ww_LED;
WideSEGH <= ww_WideSEGH;
WideSEGL <= ww_WideSEGL;
NSEGH <= ww_NSEGH;
NSEGL <= ww_NSEGL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\SWI~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SWI~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RST~input_o\ <= NOT \RST~input_o\;

-- Location: LCCOMB_X11_Y9_N0
\Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = \Add1~13_combout\ $ (COUNT68(2) $ (VCC))
-- \Add7~1\ = CARRY(\Add1~13_combout\ $ (COUNT68(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~13_combout\,
	datab => COUNT68(2),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X11_Y9_N2
\Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\Add1~15_combout\ & (\Add7~1\ & VCC)) # (!\Add1~15_combout\ & (!\Add7~1\))
-- \Add7~3\ = CARRY((!\Add1~15_combout\ & !\Add7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~15_combout\,
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X11_Y9_N6
\Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (\Add1~29_combout\ & (!\Add7~5\)) # (!\Add1~29_combout\ & ((\Add7~5\) # (GND)))
-- \Add7~7\ = CARRY((!\Add7~5\) # (!\Add1~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~29_combout\,
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X11_Y8_N24
\Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\Add1~21_combout\ & (!\Add5~6\)) # (!\Add1~21_combout\ & ((\Add5~6\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~6\) # (!\Add1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~21_combout\,
	datad => VCC,
	cin => \Add5~6\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X11_Y8_N26
\Add5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~15_combout\ = \Add5~11\ $ (!\Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add1~26_combout\,
	cin => \Add5~11\,
	combout => \Add5~15_combout\);

-- Location: LCCOMB_X6_Y8_N2
\Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = \Selector10~0_combout\ $ (VCC)
-- \Add9~1\ = CARRY(\Selector10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector10~0_combout\,
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X5_Y8_N12
\Add11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = \Selector11~0_combout\ $ (COUNT68(2) $ (VCC))
-- \Add11~1\ = CARRY(\Selector11~0_combout\ $ (COUNT68(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~0_combout\,
	datab => COUNT68(2),
	datad => VCC,
	combout => \Add11~0_combout\,
	cout => \Add11~1\);

-- Location: LCCOMB_X6_Y8_N8
\Add9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (\Selector7~2_combout\ & (!\Add9~6\)) # (!\Selector7~2_combout\ & ((\Add9~6\) # (GND)))
-- \Add9~11\ = CARRY((!\Add9~6\) # (!\Selector7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~2_combout\,
	datad => VCC,
	cin => \Add9~6\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X12_Y9_N12
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = COUNT68(2) $ (((\current_s.S0~q\) # (\current_s.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNT68(2),
	datac => \current_s.S0~q\,
	datad => \current_s.S1~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X9_Y8_N30
\Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\current_s.S2~q\ & !\current_s.S3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_s.S2~q\,
	datac => \current_s.S3~q\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X9_Y8_N0
\Selector11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = COUNT68(2) $ (((\current_s.S2~q\ & !\current_s.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_s.S2~q\,
	datac => \current_s.S3~q\,
	datad => COUNT68(2),
	combout => \Selector11~1_combout\);

-- Location: LCCOMB_X9_Y8_N6
\LessThan8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~1_combout\ = (!\Selector9~3_combout\ & (((!\Selector11~1_combout\ & COUNT68(1))) # (!\Selector10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datab => \Selector11~1_combout\,
	datac => COUNT68(1),
	datad => \Selector9~3_combout\,
	combout => \LessThan8~1_combout\);

-- Location: LCCOMB_X9_Y9_N20
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\Equal0~0_combout\ & (COUNT68(2) & (COUNT68(4) & COUNT68(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => COUNT68(2),
	datac => COUNT68(4),
	datad => COUNT68(3),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X9_Y9_N14
\Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\Equal2~0_combout\ & ((\current_s.S2~q\) # ((\current_s.S3~q\ & !\Equal3~1_combout\)))) # (!\Equal2~0_combout\ & (\current_s.S3~q\ & ((!\Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \current_s.S3~q\,
	datac => \current_s.S2~q\,
	datad => \Equal3~1_combout\,
	combout => \Selector15~0_combout\);

-- Location: IOIBUF_X34_Y12_N15
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G9
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOOBUF_X9_Y24_N9
\LED[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[0]$latch~combout\,
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\LED[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[1]$latch~combout\,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\LED[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[2]$latch~combout\,
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\LED[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[3]$latch~combout\,
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\LED[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[4]$latch~combout\,
	devoe => ww_devoe,
	o => \LED[4]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\LED[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[5]$latch~combout\,
	devoe => ww_devoe,
	o => \LED[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\WideSEGH[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideSEGH[0]$latch~combout\,
	devoe => ww_devoe,
	o => \WideSEGH[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\WideSEGH[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideSEGH[1]$latch~combout\,
	devoe => ww_devoe,
	o => \WideSEGH[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\WideSEGH[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideSEGH[2]$latch~combout\,
	devoe => ww_devoe,
	o => \WideSEGH[2]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\WideSEGH[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideSEGH[3]$latch~combout\,
	devoe => ww_devoe,
	o => \WideSEGH[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\WideSEGL[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideSEGL[0]$latch~combout\,
	devoe => ww_devoe,
	o => \WideSEGL[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\WideSEGL[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideSEGL[1]$latch~combout\,
	devoe => ww_devoe,
	o => \WideSEGL[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\WideSEGL[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideSEGL[2]$latch~combout\,
	devoe => ww_devoe,
	o => \WideSEGL[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\WideSEGL[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideSEGL[3]$latch~combout\,
	devoe => ww_devoe,
	o => \WideSEGL[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\NSEGH[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NSEGH[0]$latch~combout\,
	devoe => ww_devoe,
	o => \NSEGH[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\NSEGH[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NSEGH[1]$latch~combout\,
	devoe => ww_devoe,
	o => \NSEGH[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\NSEGH[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NSEGH[2]$latch~combout\,
	devoe => ww_devoe,
	o => \NSEGH[2]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\NSEGH[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NSEGH[3]$latch~combout\,
	devoe => ww_devoe,
	o => \NSEGH[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\NSEGL[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideSEGL[0]$latch~combout\,
	devoe => ww_devoe,
	o => \NSEGL[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\NSEGL[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NSEGL[1]$latch~combout\,
	devoe => ww_devoe,
	o => \NSEGL[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\NSEGL[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NSEGL[2]$latch~combout\,
	devoe => ww_devoe,
	o => \NSEGL[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\NSEGL[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NSEGL[3]$latch~combout\,
	devoe => ww_devoe,
	o => \NSEGL[3]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\SWI~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWI,
	o => \SWI~input_o\);

-- Location: CLKCTRL_G0
\SWI~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SWI~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SWI~inputclkctrl_outclk\);

-- Location: LCCOMB_X9_Y8_N8
\next_s.S3_464\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_s.S3_464~combout\ = (GLOBAL(\SWI~inputclkctrl_outclk\) & ((\next_s.S3_464~combout\))) # (!GLOBAL(\SWI~inputclkctrl_outclk\) & (\Selector15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~0_combout\,
	datac => \SWI~inputclkctrl_outclk\,
	datad => \next_s.S3_464~combout\,
	combout => \next_s.S3_464~combout\);

-- Location: IOIBUF_X0_Y18_N22
\RST~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: FF_X9_Y8_N1
\current_s.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \next_s.S3_464~combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_s.S3~q\);

-- Location: LCCOMB_X10_Y9_N12
\COUNT68[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNT68[0]~8_combout\ = COUNT68(0) $ (VCC)
-- \COUNT68[0]~9\ = CARRY(COUNT68(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(0),
	datad => VCC,
	combout => \COUNT68[0]~8_combout\,
	cout => \COUNT68[0]~9\);

-- Location: LCCOMB_X10_Y9_N14
\COUNT68[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNT68[1]~10_combout\ = (COUNT68(1) & (!\COUNT68[0]~9\)) # (!COUNT68(1) & ((\COUNT68[0]~9\) # (GND)))
-- \COUNT68[1]~11\ = CARRY((!\COUNT68[0]~9\) # (!COUNT68(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT68(1),
	datad => VCC,
	cin => \COUNT68[0]~9\,
	combout => \COUNT68[1]~10_combout\,
	cout => \COUNT68[1]~11\);

-- Location: LCCOMB_X10_Y9_N18
\COUNT68[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNT68[3]~14_combout\ = (COUNT68(3) & (!\COUNT68[2]~13\)) # (!COUNT68(3) & ((\COUNT68[2]~13\) # (GND)))
-- \COUNT68[3]~15\ = CARRY((!\COUNT68[2]~13\) # (!COUNT68(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT68(3),
	datad => VCC,
	cin => \COUNT68[2]~13\,
	combout => \COUNT68[3]~14_combout\,
	cout => \COUNT68[3]~15\);

-- Location: LCCOMB_X10_Y9_N20
\COUNT68[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNT68[4]~16_combout\ = (COUNT68(4) & (\COUNT68[3]~15\ $ (GND))) # (!COUNT68(4) & (!\COUNT68[3]~15\ & VCC))
-- \COUNT68[4]~17\ = CARRY((COUNT68(4) & !\COUNT68[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT68(4),
	datad => VCC,
	cin => \COUNT68[3]~15\,
	combout => \COUNT68[4]~16_combout\,
	cout => \COUNT68[4]~17\);

-- Location: FF_X10_Y9_N21
\COUNT68[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNT68[4]~16_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNT68(4));

-- Location: LCCOMB_X10_Y9_N22
\COUNT68[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNT68[5]~18_combout\ = (COUNT68(5) & (!\COUNT68[4]~17\)) # (!COUNT68(5) & ((\COUNT68[4]~17\) # (GND)))
-- \COUNT68[5]~19\ = CARRY((!\COUNT68[4]~17\) # (!COUNT68(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(5),
	datad => VCC,
	cin => \COUNT68[4]~17\,
	combout => \COUNT68[5]~18_combout\,
	cout => \COUNT68[5]~19\);

-- Location: LCCOMB_X10_Y9_N24
\COUNT68[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNT68[6]~20_combout\ = (COUNT68(6) & (\COUNT68[5]~19\ $ (GND))) # (!COUNT68(6) & (!\COUNT68[5]~19\ & VCC))
-- \COUNT68[6]~21\ = CARRY((COUNT68(6) & !\COUNT68[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT68(6),
	datad => VCC,
	cin => \COUNT68[5]~19\,
	combout => \COUNT68[6]~20_combout\,
	cout => \COUNT68[6]~21\);

-- Location: FF_X10_Y9_N25
\COUNT68[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNT68[6]~20_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNT68(6));

-- Location: FF_X10_Y9_N13
\COUNT68[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNT68[0]~8_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNT68(0));

-- Location: LCCOMB_X10_Y9_N10
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (COUNT68(1) & COUNT68(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => COUNT68(1),
	datad => COUNT68(0),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X10_Y9_N8
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (COUNT68(7)) # ((COUNT68(6) & ((\LessThan0~0_combout\) # (!\Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(7),
	datab => COUNT68(6),
	datac => \Equal3~0_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: FF_X10_Y9_N15
\COUNT68[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNT68[1]~10_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNT68(1));

-- Location: LCCOMB_X10_Y9_N16
\COUNT68[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNT68[2]~12_combout\ = (COUNT68(2) & (\COUNT68[1]~11\ $ (GND))) # (!COUNT68(2) & (!\COUNT68[1]~11\ & VCC))
-- \COUNT68[2]~13\ = CARRY((COUNT68(2) & !\COUNT68[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT68(2),
	datad => VCC,
	cin => \COUNT68[1]~11\,
	combout => \COUNT68[2]~12_combout\,
	cout => \COUNT68[2]~13\);

-- Location: FF_X10_Y9_N17
\COUNT68[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNT68[2]~12_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNT68(2));

-- Location: FF_X10_Y9_N19
\COUNT68[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNT68[3]~14_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNT68(3));

-- Location: LCCOMB_X10_Y9_N4
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!COUNT68(5) & (!COUNT68(3) & (!COUNT68(4) & !COUNT68(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(5),
	datab => COUNT68(3),
	datac => COUNT68(4),
	datad => COUNT68(2),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X10_Y9_N26
\COUNT68[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNT68[7]~22_combout\ = COUNT68(7) $ (\COUNT68[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(7),
	cin => \COUNT68[6]~21\,
	combout => \COUNT68[7]~22_combout\);

-- Location: FF_X10_Y9_N27
\COUNT68[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNT68[7]~22_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNT68(7));

-- Location: LCCOMB_X10_Y9_N28
\Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (\LessThan0~0_combout\ & (\Equal3~0_combout\ & (!COUNT68(7) & COUNT68(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \Equal3~0_combout\,
	datac => COUNT68(7),
	datad => COUNT68(6),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X9_Y9_N4
\LED~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~3_combout\ = (\current_s.S3~q\ & \Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_s.S3~q\,
	datad => \Equal3~1_combout\,
	combout => \LED~3_combout\);

-- Location: LCCOMB_X9_Y9_N18
\LED[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[0]$latch~combout\ = (GLOBAL(\SWI~inputclkctrl_outclk\) & ((\LED[0]$latch~combout\))) # (!GLOBAL(\SWI~inputclkctrl_outclk\) & (\LED~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LED~3_combout\,
	datac => \SWI~inputclkctrl_outclk\,
	datad => \LED[0]$latch~combout\,
	combout => \LED[0]$latch~combout\);

-- Location: FF_X10_Y9_N23
\COUNT68[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \COUNT68[5]~18_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNT68(5));

-- Location: LCCOMB_X9_Y9_N6
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!COUNT68(6) & (!COUNT68(7) & (\LessThan0~0_combout\ & COUNT68(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(6),
	datab => COUNT68(7),
	datac => \LessThan0~0_combout\,
	datad => COUNT68(5),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X8_Y9_N22
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (COUNT68(2) & (!COUNT68(4) & (!COUNT68(3) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(2),
	datab => COUNT68(4),
	datac => COUNT68(3),
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X9_Y9_N10
\Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\current_s.S3~q\ & ((\Equal3~1_combout\) # ((!\current_s.S0~q\ & !\Equal0~1_combout\)))) # (!\current_s.S3~q\ & (((!\current_s.S0~q\ & !\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_s.S3~q\,
	datab => \Equal3~1_combout\,
	datac => \current_s.S0~q\,
	datad => \Equal0~1_combout\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X8_Y9_N14
\next_s.S0_482\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_s.S0_482~combout\ = (GLOBAL(\SWI~inputclkctrl_outclk\) & ((\next_s.S0_482~combout\))) # (!GLOBAL(\SWI~inputclkctrl_outclk\) & (\Selector12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector12~0_combout\,
	datac => \next_s.S0_482~combout\,
	datad => \SWI~inputclkctrl_outclk\,
	combout => \next_s.S0_482~combout\);

-- Location: LCCOMB_X8_Y9_N4
\current_s.S0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_s.S0~0_combout\ = !\next_s.S0_482~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \next_s.S0_482~combout\,
	combout => \current_s.S0~0_combout\);

-- Location: FF_X8_Y9_N5
\current_s.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \current_s.S0~0_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_s.S0~q\);

-- Location: LCCOMB_X9_Y9_N16
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\Equal0~0_combout\ & (!COUNT68(2) & (!COUNT68(4) & COUNT68(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => COUNT68(2),
	datac => COUNT68(4),
	datad => COUNT68(3),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X8_Y9_N28
\Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\current_s.S1~q\ & (((!\current_s.S0~q\ & \Equal0~1_combout\)) # (!\Equal1~0_combout\))) # (!\current_s.S1~q\ & (!\current_s.S0~q\ & (\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_s.S1~q\,
	datab => \current_s.S0~q\,
	datac => \Equal0~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X8_Y9_N24
\next_s.S1_476\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_s.S1_476~combout\ = (GLOBAL(\SWI~inputclkctrl_outclk\) & ((\next_s.S1_476~combout\))) # (!GLOBAL(\SWI~inputclkctrl_outclk\) & (\Selector13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector13~0_combout\,
	datac => \SWI~inputclkctrl_outclk\,
	datad => \next_s.S1_476~combout\,
	combout => \next_s.S1_476~combout\);

-- Location: LCCOMB_X8_Y9_N6
\current_s.S1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_s.S1~feeder_combout\ = \next_s.S1_476~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \next_s.S1_476~combout\,
	combout => \current_s.S1~feeder_combout\);

-- Location: FF_X8_Y9_N7
\current_s.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \current_s.S1~feeder_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_s.S1~q\);

-- Location: LCCOMB_X9_Y9_N0
\Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\Equal2~0_combout\ & (\current_s.S1~q\ & ((\Equal1~0_combout\)))) # (!\Equal2~0_combout\ & ((\current_s.S2~q\) # ((\current_s.S1~q\ & \Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \current_s.S1~q\,
	datac => \current_s.S2~q\,
	datad => \Equal1~0_combout\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X9_Y8_N18
\next_s.S2_470\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_s.S2_470~combout\ = (GLOBAL(\SWI~inputclkctrl_outclk\) & ((\next_s.S2_470~combout\))) # (!GLOBAL(\SWI~inputclkctrl_outclk\) & (\Selector14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector14~0_combout\,
	datac => \SWI~inputclkctrl_outclk\,
	datad => \next_s.S2_470~combout\,
	combout => \next_s.S2_470~combout\);

-- Location: LCCOMB_X9_Y8_N22
\current_s.S2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_s.S2~feeder_combout\ = \next_s.S2_470~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \next_s.S2_470~combout\,
	combout => \current_s.S2~feeder_combout\);

-- Location: FF_X9_Y8_N23
\current_s.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \current_s.S2~feeder_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_s.S2~q\);

-- Location: LCCOMB_X9_Y8_N20
\LED[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[1]$latch~combout\ = (GLOBAL(\SWI~inputclkctrl_outclk\) & ((\LED[1]$latch~combout\))) # (!GLOBAL(\SWI~inputclkctrl_outclk\) & (\current_s.S2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_s.S2~q\,
	datac => \SWI~inputclkctrl_outclk\,
	datad => \LED[1]$latch~combout\,
	combout => \LED[1]$latch~combout\);

-- Location: LCCOMB_X8_Y9_N16
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\current_s.S0~q\ & !\current_s.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_s.S0~q\,
	datad => \current_s.S1~q\,
	combout => \Add1~6_combout\);

-- Location: LCCOMB_X8_Y9_N26
\LED[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[2]$latch~combout\ = (GLOBAL(\SWI~inputclkctrl_outclk\) & ((\LED[2]$latch~combout\))) # (!GLOBAL(\SWI~inputclkctrl_outclk\) & (!\Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~6_combout\,
	datac => \LED[2]$latch~combout\,
	datad => \SWI~inputclkctrl_outclk\,
	combout => \LED[2]$latch~combout\);

-- Location: LCCOMB_X9_Y9_N22
\LED~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~4_combout\ = (\current_s.S1~q\ & \Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_s.S1~q\,
	datad => \Equal1~0_combout\,
	combout => \LED~4_combout\);

-- Location: LCCOMB_X9_Y9_N28
\LED[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[3]$latch~combout\ = (GLOBAL(\SWI~inputclkctrl_outclk\) & ((\LED[3]$latch~combout\))) # (!GLOBAL(\SWI~inputclkctrl_outclk\) & (\LED~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED~4_combout\,
	datac => \SWI~inputclkctrl_outclk\,
	datad => \LED[3]$latch~combout\,
	combout => \LED[3]$latch~combout\);

-- Location: LCCOMB_X9_Y9_N30
\LED[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[4]$latch~combout\ = (GLOBAL(\SWI~inputclkctrl_outclk\) & ((\LED[4]$latch~combout\))) # (!GLOBAL(\SWI~inputclkctrl_outclk\) & (!\current_s.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_s.S0~q\,
	datac => \LED[4]$latch~combout\,
	datad => \SWI~inputclkctrl_outclk\,
	combout => \LED[4]$latch~combout\);

-- Location: LCCOMB_X8_Y9_N20
\LED[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[5]$latch~combout\ = (GLOBAL(\SWI~inputclkctrl_outclk\) & ((\LED[5]$latch~combout\))) # (!GLOBAL(\SWI~inputclkctrl_outclk\) & (\Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~6_combout\,
	datac => \SWI~inputclkctrl_outclk\,
	datad => \LED[5]$latch~combout\,
	combout => \LED[5]$latch~combout\);

-- Location: LCCOMB_X8_Y9_N0
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\current_s.S1~q\ & (COUNT68(4) $ (((COUNT68(3) & COUNT68(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(4),
	datab => \current_s.S1~q\,
	datac => COUNT68(3),
	datad => COUNT68(2),
	combout => \Add1~8_combout\);

-- Location: LCCOMB_X8_Y9_N18
\Add1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~7_combout\ = (\Add1~6_combout\ & (COUNT68(4) $ (((COUNT68(2)) # (COUNT68(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(2),
	datab => COUNT68(4),
	datac => COUNT68(3),
	datad => \Add1~6_combout\,
	combout => \Add1~7_combout\);

-- Location: LCCOMB_X11_Y9_N18
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_cout\ = CARRY(!COUNT68(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNT68(3),
	datad => VCC,
	cout => \Add1~10_cout\);

-- Location: LCCOMB_X11_Y9_N20
\Add1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (COUNT68(4) & ((\Add1~10_cout\) # (GND))) # (!COUNT68(4) & (!\Add1~10_cout\))
-- \Add1~12\ = CARRY((COUNT68(4)) # (!\Add1~10_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT68(4),
	datad => VCC,
	cin => \Add1~10_cout\,
	combout => \Add1~11_combout\,
	cout => \Add1~12\);

-- Location: LCCOMB_X11_Y9_N16
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\Add1~8_combout\) # ((\Add1~7_combout\) # ((\Add1~13_combout\ & \Add1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~13_combout\,
	datab => \Add1~8_combout\,
	datac => \Add1~7_combout\,
	datad => \Add1~11_combout\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X8_Y9_N12
\Add1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = COUNT68(3) $ (((\current_s.S1~q\ & ((!COUNT68(2)))) # (!\current_s.S1~q\ & (\current_s.S0~q\ & COUNT68(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_s.S1~q\,
	datab => \current_s.S0~q\,
	datac => COUNT68(3),
	datad => COUNT68(2),
	combout => \Add1~15_combout\);

-- Location: LCCOMB_X11_Y8_N18
\Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = \Add1~15_combout\ $ (VCC)
-- \Add5~1\ = CARRY(\Add1~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~15_combout\,
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X11_Y8_N20
\Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\Add1~14_combout\ & (\Add5~1\ & VCC)) # (!\Add1~14_combout\ & (!\Add5~1\))
-- \Add5~3\ = CARRY((!\Add1~14_combout\ & !\Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~14_combout\,
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X10_Y9_N0
\Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = ((!COUNT68(4) & ((!COUNT68(3)) # (!COUNT68(2))))) # (!COUNT68(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(5),
	datab => COUNT68(2),
	datac => COUNT68(3),
	datad => COUNT68(4),
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X12_Y9_N2
\Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\current_s.S1~q\ & (COUNT68(7) $ (((COUNT68(6)) # (!\Add2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_s.S1~q\,
	datab => COUNT68(6),
	datac => COUNT68(7),
	datad => \Add2~1_combout\,
	combout => \Add1~22_combout\);

-- Location: LCCOMB_X11_Y9_N22
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (COUNT68(5) & (\Add1~12\ $ (GND))) # (!COUNT68(5) & ((GND) # (!\Add1~12\)))
-- \Add1~17\ = CARRY((!\Add1~12\) # (!COUNT68(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT68(5),
	datad => VCC,
	cin => \Add1~12\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X11_Y9_N24
\Add1~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~19_combout\ = (COUNT68(6) & ((\Add1~17\) # (GND))) # (!COUNT68(6) & (!\Add1~17\))
-- \Add1~20\ = CARRY((COUNT68(6)) # (!\Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT68(6),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~19_combout\,
	cout => \Add1~20\);

-- Location: LCCOMB_X11_Y9_N26
\Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = COUNT68(7) $ (\Add1~20\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(7),
	cin => \Add1~20\,
	combout => \Add1~24_combout\);

-- Location: LCCOMB_X10_Y9_N30
\Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = (COUNT68(5)) # ((COUNT68(2)) # ((COUNT68(4)) # (COUNT68(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(5),
	datab => COUNT68(2),
	datac => COUNT68(4),
	datad => COUNT68(3),
	combout => \Add3~1_combout\);

-- Location: LCCOMB_X12_Y9_N0
\Add1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = (\Add1~6_combout\ & (COUNT68(7) $ (((COUNT68(6) & \Add3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(7),
	datab => COUNT68(6),
	datac => \Add1~6_combout\,
	datad => \Add3~1_combout\,
	combout => \Add1~23_combout\);

-- Location: LCCOMB_X12_Y9_N26
\Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\Add1~22_combout\) # ((\Add1~23_combout\) # ((\Add1~13_combout\ & \Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~13_combout\,
	datab => \Add1~22_combout\,
	datac => \Add1~24_combout\,
	datad => \Add1~23_combout\,
	combout => \Add1~26_combout\);

-- Location: LCCOMB_X9_Y9_N26
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = COUNT68(5) $ (((!COUNT68(4) & ((!COUNT68(3)) # (!COUNT68(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(4),
	datab => COUNT68(2),
	datac => COUNT68(5),
	datad => COUNT68(3),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X9_Y9_N24
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = COUNT68(5) $ (((COUNT68(4)) # ((COUNT68(2)) # (COUNT68(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(4),
	datab => COUNT68(2),
	datac => COUNT68(5),
	datad => COUNT68(3),
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X9_Y9_N8
\Add1~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~27_combout\ = (\current_s.S1~q\ & (((\Add2~0_combout\)))) # (!\current_s.S1~q\ & (\current_s.S0~q\ & ((\Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_s.S0~q\,
	datab => \current_s.S1~q\,
	datac => \Add2~0_combout\,
	datad => \Add3~0_combout\,
	combout => \Add1~27_combout\);

-- Location: LCCOMB_X11_Y9_N30
\Add1~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~29_combout\ = (\Add1~27_combout\) # ((!\current_s.S1~q\ & (!\current_s.S0~q\ & \Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_s.S1~q\,
	datab => \current_s.S0~q\,
	datac => \Add1~16_combout\,
	datad => \Add1~27_combout\,
	combout => \Add1~29_combout\);

-- Location: LCCOMB_X12_Y9_N18
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\Add1~29_combout\ & ((\Add1~15_combout\) # (\Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~15_combout\,
	datac => \Add1~14_combout\,
	datad => \Add1~29_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X12_Y9_N28
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\Add1~21_combout\) # ((\Add1~26_combout\) # (\LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~21_combout\,
	datac => \Add1~26_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X8_Y9_N30
\Add1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~13_combout\ = (!\current_s.S0~q\ & !\current_s.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_s.S0~q\,
	datad => \current_s.S1~q\,
	combout => \Add1~13_combout\);

-- Location: LCCOMB_X12_Y8_N0
\Add6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~1_cout\ = CARRY(!COUNT68(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNT68(1),
	datad => VCC,
	cout => \Add6~1_cout\);

-- Location: LCCOMB_X12_Y8_N2
\Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\Add6~1_cout\ & (COUNT68(2) $ ((!\Add1~13_combout\)))) # (!\Add6~1_cout\ & ((COUNT68(2) $ (\Add1~13_combout\)) # (GND)))
-- \Add6~3\ = CARRY((COUNT68(2) $ (!\Add1~13_combout\)) # (!\Add6~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(2),
	datab => \Add1~13_combout\,
	datad => VCC,
	cin => \Add6~1_cout\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X12_Y8_N4
\Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (\Add1~15_combout\ & (\Add6~3\ $ (GND))) # (!\Add1~15_combout\ & (!\Add6~3\ & VCC))
-- \Add6~5\ = CARRY((\Add1~15_combout\ & !\Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~15_combout\,
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X12_Y8_N6
\Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (\Add1~14_combout\ & (\Add6~5\ & VCC)) # (!\Add1~14_combout\ & (!\Add6~5\))
-- \Add6~7\ = CARRY((!\Add1~14_combout\ & !\Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~14_combout\,
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X10_Y8_N4
\Add8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~1_cout\ = CARRY(!COUNT68(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNT68(1),
	datad => VCC,
	cout => \Add8~1_cout\);

-- Location: LCCOMB_X10_Y8_N6
\Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (\Add8~1_cout\ & ((COUNT68(2) $ (\Add1~13_combout\)))) # (!\Add8~1_cout\ & (COUNT68(2) $ ((!\Add1~13_combout\))))
-- \Add8~3\ = CARRY((!\Add8~1_cout\ & (COUNT68(2) $ (!\Add1~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(2),
	datab => \Add1~13_combout\,
	datad => VCC,
	cin => \Add8~1_cout\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X10_Y8_N8
\Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = (\Add1~15_combout\ & (\Add8~3\ $ (GND))) # (!\Add1~15_combout\ & (!\Add8~3\ & VCC))
-- \Add8~5\ = CARRY((\Add1~15_combout\ & !\Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~15_combout\,
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X10_Y8_N10
\Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (\Add1~14_combout\ & (!\Add8~5\)) # (!\Add1~14_combout\ & ((\Add8~5\) # (GND)))
-- \Add8~7\ = CARRY((!\Add8~5\) # (!\Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X11_Y9_N4
\Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (\Add1~14_combout\ & (\Add7~3\ $ (GND))) # (!\Add1~14_combout\ & (!\Add7~3\ & VCC))
-- \Add7~5\ = CARRY((\Add1~14_combout\ & !\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~14_combout\,
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X12_Y9_N24
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!\Selector5~0_combout\ & (!COUNT68(1) & (\Add1~14_combout\ & \Add1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datab => COUNT68(1),
	datac => \Add1~14_combout\,
	datad => \Add1~15_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X12_Y9_N14
\LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (\Add1~14_combout\ & ((\Add1~15_combout\) # (!\Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datac => \Add1~14_combout\,
	datad => \Add1~15_combout\,
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X11_Y9_N28
\Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (!\current_s.S1~q\ & (\current_s.S0~q\ & (COUNT68(6) $ (!\Add3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_s.S1~q\,
	datab => COUNT68(6),
	datac => \current_s.S0~q\,
	datad => \Add3~1_combout\,
	combout => \Add1~28_combout\);

-- Location: LCCOMB_X10_Y9_N6
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\current_s.S1~q\ & (COUNT68(6) $ (!\Add2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNT68(6),
	datac => \current_s.S1~q\,
	datad => \Add2~1_combout\,
	combout => \Add1~18_combout\);

-- Location: LCCOMB_X11_Y9_N14
\Add1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = (\Add1~28_combout\) # ((\Add1~18_combout\) # ((\Add1~13_combout\ & \Add1~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~13_combout\,
	datab => \Add1~28_combout\,
	datac => \Add1~18_combout\,
	datad => \Add1~19_combout\,
	combout => \Add1~21_combout\);

-- Location: LCCOMB_X11_Y9_N12
\LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!\Add1~27_combout\ & (!\Add1~21_combout\ & ((!\Add1~16_combout\) # (!\Add1~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~27_combout\,
	datab => \Add1~13_combout\,
	datac => \Add1~21_combout\,
	datad => \Add1~16_combout\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X12_Y9_N30
\WESEG~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WESEG~2_combout\ = (\Add1~26_combout\) # ((\LessThan2~0_combout\) # ((\LessThan3~1_combout\) # (!\LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datab => \LessThan2~0_combout\,
	datac => \LessThan3~1_combout\,
	datad => \LessThan3~0_combout\,
	combout => \WESEG~2_combout\);

-- Location: LCCOMB_X12_Y9_N4
\LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (!\Add1~14_combout\ & (((\Selector5~0_combout\ & COUNT68(1))) # (!\Add1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datab => COUNT68(1),
	datac => \Add1~14_combout\,
	datad => \Add1~15_combout\,
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X12_Y9_N10
\WESEG~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WESEG~0_combout\ = (!\Add1~21_combout\ & (!\Add1~29_combout\ & (!\Add1~26_combout\ & !\LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~21_combout\,
	datab => \Add1~29_combout\,
	datac => \Add1~26_combout\,
	datad => \LessThan2~0_combout\,
	combout => \WESEG~0_combout\);

-- Location: LCCOMB_X12_Y9_N20
\WESEG~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WESEG~1_combout\ = ((\LessThan3~0_combout\ & (!\LessThan3~1_combout\ & !\LessThan4~0_combout\))) # (!\WESEG~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \LessThan3~1_combout\,
	datac => \LessThan4~0_combout\,
	datad => \WESEG~0_combout\,
	combout => \WESEG~1_combout\);

-- Location: LCCOMB_X12_Y9_N8
\WESEG~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WESEG~3_combout\ = (\WESEG~2_combout\ & (((\Add7~4_combout\) # (\WESEG~1_combout\)))) # (!\WESEG~2_combout\ & (\Add1~14_combout\ & ((!\WESEG~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \Add7~4_combout\,
	datac => \WESEG~2_combout\,
	datad => \WESEG~1_combout\,
	combout => \WESEG~3_combout\);

-- Location: LCCOMB_X11_Y8_N28
\WESEG~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WESEG~4_combout\ = (\WESEG~1_combout\ & ((\WESEG~3_combout\ & (\Add6~6_combout\)) # (!\WESEG~3_combout\ & ((\Add8~6_combout\))))) # (!\WESEG~1_combout\ & (((\WESEG~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WESEG~1_combout\,
	datab => \Add6~6_combout\,
	datac => \Add8~6_combout\,
	datad => \WESEG~3_combout\,
	combout => \WESEG~4_combout\);

-- Location: LCCOMB_X11_Y8_N10
\Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (\LessThan1~1_combout\ & (\Add5~2_combout\)) # (!\LessThan1~1_combout\ & ((\WESEG~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~2_combout\,
	datac => \LessThan1~1_combout\,
	datad => \WESEG~4_combout\,
	combout => \Add5~4_combout\);

-- Location: LCCOMB_X11_Y8_N4
\WideSEGH[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideSEGH[0]$latch~combout\ = (GLOBAL(\SWI~inputclkctrl_outclk\) & (\WideSEGH[0]$latch~combout\)) # (!GLOBAL(\SWI~inputclkctrl_outclk\) & ((\Add5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideSEGH[0]$latch~combout\,
	datac => \SWI~inputclkctrl_outclk\,
	datad => \Add5~4_combout\,
	combout => \WideSEGH[0]$latch~combout\);

-- Location: LCCOMB_X12_Y8_N8
\Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (\Add1~29_combout\ & (\Add6~7\ $ (GND))) # (!\Add1~29_combout\ & (!\Add6~7\ & VCC))
-- \Add6~9\ = CARRY((\Add1~29_combout\ & !\Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~29_combout\,
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X10_Y8_N12
\Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = (\Add1~29_combout\ & (\Add8~7\ $ (GND))) # (!\Add1~29_combout\ & (!\Add8~7\ & VCC))
-- \Add8~9\ = CARRY((\Add1~29_combout\ & !\Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~29_combout\,
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X11_Y8_N30
\Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (\WESEG~1_combout\ & ((\WESEG~2_combout\ & (\Add6~8_combout\)) # (!\WESEG~2_combout\ & ((\Add8~8_combout\))))) # (!\WESEG~1_combout\ & (\WESEG~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WESEG~1_combout\,
	datab => \WESEG~2_combout\,
	datac => \Add6~8_combout\,
	datad => \Add8~8_combout\,
	combout => \Add5~8_combout\);

-- Location: LCCOMB_X11_Y8_N22
\Add5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~5_combout\ = (\Add1~29_combout\ & (\Add5~3\ $ (GND))) # (!\Add1~29_combout\ & (!\Add5~3\ & VCC))
-- \Add5~6\ = CARRY((\Add1~29_combout\ & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~29_combout\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~5_combout\,
	cout => \Add5~6\);

-- Location: LCCOMB_X11_Y8_N16
\Add5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~7_combout\ = (\LessThan1~1_combout\ & ((\Add5~5_combout\))) # (!\LessThan1~1_combout\ & (\Add7~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datac => \Add5~5_combout\,
	datad => \LessThan1~1_combout\,
	combout => \Add5~7_combout\);

-- Location: LCCOMB_X11_Y8_N12
\Add5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~9_combout\ = (\LessThan1~1_combout\ & (((\Add5~7_combout\)))) # (!\LessThan1~1_combout\ & (\Add5~8_combout\ & ((\WESEG~1_combout\) # (\Add5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WESEG~1_combout\,
	datab => \LessThan1~1_combout\,
	datac => \Add5~8_combout\,
	datad => \Add5~7_combout\,
	combout => \Add5~9_combout\);

-- Location: LCCOMB_X11_Y8_N8
\WideSEGH[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideSEGH[1]$latch~combout\ = (GLOBAL(\SWI~inputclkctrl_outclk\) & (\WideSEGH[1]$latch~combout\)) # (!GLOBAL(\SWI~inputclkctrl_outclk\) & ((\Add5~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideSEGH[1]$latch~combout\,
	datac => \SWI~inputclkctrl_outclk\,
	datad => \Add5~9_combout\,
	combout => \WideSEGH[1]$latch~combout\);

-- Location: LCCOMB_X11_Y9_N8
\Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (\Add1~21_combout\ & (\Add7~7\ $ (GND))) # (!\Add1~21_combout\ & (!\Add7~7\ & VCC))
-- \Add7~9\ = CARRY((\Add1~21_combout\ & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~21_combout\,
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X12_Y8_N10
\Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (\Add1~21_combout\ & (!\Add6~9\)) # (!\Add1~21_combout\ & ((\Add6~9\) # (GND)))
-- \Add6~11\ = CARRY((!\Add6~9\) # (!\Add1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~21_combout\,
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X10_Y8_N14
\Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (\Add1~21_combout\ & (!\Add8~9\)) # (!\Add1~21_combout\ & ((\Add8~9\) # (GND)))
-- \Add8~11\ = CARRY((!\Add8~9\) # (!\Add1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~21_combout\,
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X12_Y8_N18
\Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (\WESEG~2_combout\ & (\Add6~10_combout\)) # (!\WESEG~2_combout\ & ((\Add8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WESEG~2_combout\,
	datac => \Add6~10_combout\,
	datad => \Add8~10_combout\,
	combout => \Add5~12_combout\);

-- Location: LCCOMB_X12_Y8_N28
\Add5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~13_combout\ = (\WESEG~1_combout\ & (((\Add5~12_combout\)))) # (!\WESEG~1_combout\ & (\Add7~8_combout\ & (\WESEG~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WESEG~1_combout\,
	datab => \Add7~8_combout\,
	datac => \WESEG~2_combout\,
	datad => \Add5~12_combout\,
	combout => \Add5~13_combout\);

-- Location: LCCOMB_X12_Y8_N26
\Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (\LessThan1~1_combout\ & (\Add5~10_combout\)) # (!\LessThan1~1_combout\ & ((\Add5~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~1_combout\,
	datac => \Add5~10_combout\,
	datad => \Add5~13_combout\,
	combout => \Add5~14_combout\);

-- Location: LCCOMB_X12_Y8_N24
\WideSEGH[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideSEGH[2]$latch~combout\ = (GLOBAL(\SWI~inputclkctrl_outclk\) & (\WideSEGH[2]$latch~combout\)) # (!GLOBAL(\SWI~inputclkctrl_outclk\) & ((\Add5~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideSEGH[2]$latch~combout\,
	datac => \Add5~14_combout\,
	datad => \SWI~inputclkctrl_outclk\,
	combout => \WideSEGH[2]$latch~combout\);

-- Location: LCCOMB_X12_Y8_N12
\Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = \Add6~11\ $ (!\Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add1~26_combout\,
	cin => \Add6~11\,
	combout => \Add6~12_combout\);

-- Location: LCCOMB_X11_Y9_N10
\Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = \Add7~9\ $ (\Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add1~26_combout\,
	cin => \Add7~9\,
	combout => \Add7~10_combout\);

-- Location: LCCOMB_X11_Y8_N14
\Add5~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~17_combout\ = (\WESEG~1_combout\ & (((\Add6~12_combout\)) # (!\WESEG~2_combout\))) # (!\WESEG~1_combout\ & (\WESEG~2_combout\ & ((\Add7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WESEG~1_combout\,
	datab => \WESEG~2_combout\,
	datac => \Add6~12_combout\,
	datad => \Add7~10_combout\,
	combout => \Add5~17_combout\);

-- Location: LCCOMB_X10_Y8_N16
\Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = \Add8~11\ $ (!\Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add1~26_combout\,
	cin => \Add8~11\,
	combout => \Add8~12_combout\);

-- Location: LCCOMB_X11_Y8_N0
\Add5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (\Add8~12_combout\) # (\WESEG~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add8~12_combout\,
	datad => \WESEG~2_combout\,
	combout => \Add5~18_combout\);

-- Location: LCCOMB_X11_Y8_N2
\Add5~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~19_combout\ = (\LessThan1~1_combout\ & (\Add5~15_combout\)) # (!\LessThan1~1_combout\ & (((\Add5~17_combout\ & \Add5~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~15_combout\,
	datab => \LessThan1~1_combout\,
	datac => \Add5~17_combout\,
	datad => \Add5~18_combout\,
	combout => \Add5~19_combout\);

-- Location: LCCOMB_X11_Y8_N6
\WideSEGH[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideSEGH[3]$latch~combout\ = (GLOBAL(\SWI~inputclkctrl_outclk\) & (\WideSEGH[3]$latch~combout\)) # (!GLOBAL(\SWI~inputclkctrl_outclk\) & ((\Add5~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideSEGH[3]$latch~combout\,
	datac => \SWI~inputclkctrl_outclk\,
	datad => \Add5~19_combout\,
	combout => \WideSEGH[3]$latch~combout\);

-- Location: LCCOMB_X10_Y9_N2
\WideSEGL[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideSEGL[0]$latch~combout\ = (GLOBAL(\SWI~inputclkctrl_outclk\) & ((\WideSEGL[0]$latch~combout\))) # (!GLOBAL(\SWI~inputclkctrl_outclk\) & (!COUNT68(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(0),
	datac => \SWI~inputclkctrl_outclk\,
	datad => \WideSEGL[0]$latch~combout\,
	combout => \WideSEGL[0]$latch~combout\);

-- Location: LCCOMB_X12_Y9_N6
\LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (\Add1~26_combout\) # ((!\LessThan3~0_combout\) # (!\LessThan4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datac => \LessThan4~0_combout\,
	datad => \LessThan3~0_combout\,
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X13_Y9_N8
\WESEG~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WESEG~5_combout\ = (!\Add1~26_combout\ & (\LessThan3~0_combout\ & !\LessThan3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datac => \LessThan3~0_combout\,
	datad => \LessThan3~1_combout\,
	combout => \WESEG~5_combout\);

-- Location: LCCOMB_X13_Y9_N2
\WESEG~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WESEG~6_combout\ = (\LessThan1~1_combout\) # ((\WESEG~0_combout\ & ((!\WESEG~5_combout\) # (!\LessThan4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WESEG~0_combout\,
	datab => \LessThan4~1_combout\,
	datac => \WESEG~5_combout\,
	datad => \LessThan1~1_combout\,
	combout => \WESEG~6_combout\);

-- Location: LCCOMB_X13_Y9_N4
\WESEG~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WESEG~7_combout\ = COUNT68(1) $ (\WESEG~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => COUNT68(1),
	datad => \WESEG~6_combout\,
	combout => \WESEG~7_combout\);

-- Location: LCCOMB_X13_Y9_N10
\WideSEGL[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideSEGL[1]$latch~combout\ = (GLOBAL(\SWI~inputclkctrl_outclk\) & ((\WideSEGL[1]$latch~combout\))) # (!GLOBAL(\SWI~inputclkctrl_outclk\) & (\WESEG~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WESEG~7_combout\,
	datac => \SWI~inputclkctrl_outclk\,
	datad => \WideSEGL[1]$latch~combout\,
	combout => \WideSEGL[1]$latch~combout\);

-- Location: LCCOMB_X13_Y9_N18
\WESEG~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WESEG~8_combout\ = (\LessThan4~1_combout\ & ((\LessThan1~1_combout\ & (\Selector5~0_combout\)) # (!\LessThan1~1_combout\ & ((!\Add8~2_combout\))))) # (!\LessThan4~1_combout\ & (\Selector5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datab => \Add8~2_combout\,
	datac => \LessThan4~1_combout\,
	datad => \LessThan1~1_combout\,
	combout => \WESEG~8_combout\);

-- Location: LCCOMB_X13_Y9_N12
\WESEG~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WESEG~9_combout\ = (\LessThan1~1_combout\ & (((\WESEG~8_combout\)))) # (!\LessThan1~1_combout\ & ((\WESEG~5_combout\ & ((!\WESEG~8_combout\))) # (!\WESEG~5_combout\ & (\Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \LessThan1~1_combout\,
	datac => \WESEG~5_combout\,
	datad => \WESEG~8_combout\,
	combout => \WESEG~9_combout\);

-- Location: LCCOMB_X13_Y9_N30
\WESEG~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WESEG~10_combout\ = (\LessThan1~1_combout\ & (((!\WESEG~9_combout\)))) # (!\LessThan1~1_combout\ & ((\WESEG~0_combout\ & ((\WESEG~9_combout\))) # (!\WESEG~0_combout\ & (\Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WESEG~0_combout\,
	datab => \LessThan1~1_combout\,
	datac => \Add6~2_combout\,
	datad => \WESEG~9_combout\,
	combout => \WESEG~10_combout\);

-- Location: LCCOMB_X13_Y9_N20
\WideSEGL[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideSEGL[2]$latch~combout\ = (GLOBAL(\SWI~inputclkctrl_outclk\) & (\WideSEGL[2]$latch~combout\)) # (!GLOBAL(\SWI~inputclkctrl_outclk\) & ((\WESEG~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideSEGL[2]$latch~combout\,
	datac => \WESEG~10_combout\,
	datad => \SWI~inputclkctrl_outclk\,
	combout => \WideSEGL[2]$latch~combout\);

-- Location: LCCOMB_X12_Y9_N16
\WESEG~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WESEG~11_combout\ = (\WESEG~2_combout\ & (((\WESEG~1_combout\)))) # (!\WESEG~2_combout\ & ((\WESEG~1_combout\ & ((\Add8~4_combout\))) # (!\WESEG~1_combout\ & (\Add1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~15_combout\,
	datab => \Add8~4_combout\,
	datac => \WESEG~2_combout\,
	datad => \WESEG~1_combout\,
	combout => \WESEG~11_combout\);

-- Location: LCCOMB_X12_Y9_N22
\WESEG~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WESEG~12_combout\ = (\WESEG~2_combout\ & ((\WESEG~11_combout\ & ((\Add6~4_combout\))) # (!\WESEG~11_combout\ & (\Add7~2_combout\)))) # (!\WESEG~2_combout\ & (((\WESEG~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => \Add6~4_combout\,
	datac => \WESEG~2_combout\,
	datad => \WESEG~11_combout\,
	combout => \WESEG~12_combout\);

-- Location: LCCOMB_X13_Y9_N16
\Add5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (\LessThan1~1_combout\ & (\Add5~0_combout\)) # (!\LessThan1~1_combout\ & ((\WESEG~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~1_combout\,
	datac => \Add5~0_combout\,
	datad => \WESEG~12_combout\,
	combout => \Add5~20_combout\);

-- Location: LCCOMB_X13_Y9_N14
\WideSEGL[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideSEGL[3]$latch~combout\ = (GLOBAL(\SWI~inputclkctrl_outclk\) & (\WideSEGL[3]$latch~combout\)) # (!GLOBAL(\SWI~inputclkctrl_outclk\) & ((\Add5~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideSEGL[3]$latch~combout\,
	datac => \SWI~inputclkctrl_outclk\,
	datad => \Add5~20_combout\,
	combout => \WideSEGL[3]$latch~combout\);

-- Location: LCCOMB_X9_Y8_N26
\Selector6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~3_combout\ = (COUNT68(6) & ((\current_s.S3~q\ & (\Add3~1_combout\)) # (!\current_s.S3~q\ & ((\current_s.S2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_s.S3~q\,
	datab => COUNT68(6),
	datac => \Add3~1_combout\,
	datad => \current_s.S2~q\,
	combout => \Selector6~3_combout\);

-- Location: LCCOMB_X9_Y8_N4
\Selector8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~4_combout\ = (!\current_s.S2~q\ & !\current_s.S3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_s.S2~q\,
	datac => \current_s.S3~q\,
	combout => \Selector8~4_combout\);

-- Location: LCCOMB_X9_Y8_N24
\Selector6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\Selector6~3_combout\) # ((\Selector8~4_combout\ & ((COUNT68(6)) # (!\Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datab => COUNT68(6),
	datac => \Selector6~3_combout\,
	datad => \Selector8~4_combout\,
	combout => \Selector6~2_combout\);

-- Location: LCCOMB_X9_Y9_N2
\Selector8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~5_combout\ = (\current_s.S3~q\ & (((\Add3~0_combout\)))) # (!\current_s.S3~q\ & (!\current_s.S2~q\ & (\Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_s.S2~q\,
	datab => \current_s.S3~q\,
	datac => \Add2~0_combout\,
	datad => \Add3~0_combout\,
	combout => \Selector8~5_combout\);

-- Location: LCCOMB_X9_Y9_N12
\Selector8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~6_combout\ = (\Selector8~5_combout\) # ((!COUNT68(5) & (!\current_s.S3~q\ & \current_s.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(5),
	datab => \current_s.S3~q\,
	datac => \current_s.S2~q\,
	datad => \Selector8~5_combout\,
	combout => \Selector8~6_combout\);

-- Location: LCCOMB_X9_Y8_N16
\Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = COUNT68(3) $ (((\current_s.S3~q\ & ((COUNT68(2)))) # (!\current_s.S3~q\ & ((\current_s.S2~q\) # (!COUNT68(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(3),
	datab => \current_s.S2~q\,
	datac => \current_s.S3~q\,
	datad => COUNT68(2),
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X8_Y8_N6
\LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (\Selector8~6_combout\ & ((\Selector9~3_combout\) # (\Selector10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~3_combout\,
	datac => \Selector8~6_combout\,
	datad => \Selector10~0_combout\,
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X9_Y8_N12
\Selector7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (\current_s.S3~q\ & (COUNT68(6) $ ((!\Add3~1_combout\)))) # (!\current_s.S3~q\ & (COUNT68(6) & ((\current_s.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_s.S3~q\,
	datab => COUNT68(6),
	datac => \Add3~1_combout\,
	datad => \current_s.S2~q\,
	combout => \Selector7~3_combout\);

-- Location: LCCOMB_X9_Y8_N14
\Selector7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (\Selector7~3_combout\) # ((\Selector8~4_combout\ & (COUNT68(6) $ (!\Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~4_combout\,
	datab => COUNT68(6),
	datac => \Add2~1_combout\,
	datad => \Selector7~3_combout\,
	combout => \Selector7~2_combout\);

-- Location: LCCOMB_X8_Y8_N0
\LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (\LessThan5~0_combout\) # ((\Selector7~2_combout\) # (COUNT68(7) $ (\Selector6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(7),
	datab => \Selector6~2_combout\,
	datac => \LessThan5~0_combout\,
	datad => \Selector7~2_combout\,
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X9_Y8_N28
\Selector9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (\current_s.S3~q\ & ((COUNT68(3)) # ((COUNT68(2))))) # (!\current_s.S3~q\ & ((\current_s.S2~q\) # ((COUNT68(3) & COUNT68(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(3),
	datab => \current_s.S2~q\,
	datac => \current_s.S3~q\,
	datad => COUNT68(2),
	combout => \Selector9~2_combout\);

-- Location: LCCOMB_X9_Y8_N2
\Selector9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~3_combout\ = COUNT68(4) $ (\Selector9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => COUNT68(4),
	datad => \Selector9~2_combout\,
	combout => \Selector9~3_combout\);

-- Location: LCCOMB_X6_Y8_N4
\Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (\Selector9~3_combout\ & (\Add9~1\ & VCC)) # (!\Selector9~3_combout\ & (!\Add9~1\))
-- \Add9~3\ = CARRY((!\Selector9~3_combout\ & !\Add9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Selector9~3_combout\,
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X10_Y8_N18
\Add10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~1_cout\ = CARRY(!COUNT68(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNT68(1),
	datad => VCC,
	cout => \Add10~1_cout\);

-- Location: LCCOMB_X10_Y8_N20
\Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~2_combout\ = (\Add10~1_cout\ & (\Selector11~0_combout\ $ ((!COUNT68(2))))) # (!\Add10~1_cout\ & ((\Selector11~0_combout\ $ (COUNT68(2))) # (GND)))
-- \Add10~3\ = CARRY((\Selector11~0_combout\ $ (!COUNT68(2))) # (!\Add10~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~0_combout\,
	datab => COUNT68(2),
	datad => VCC,
	cin => \Add10~1_cout\,
	combout => \Add10~2_combout\,
	cout => \Add10~3\);

-- Location: LCCOMB_X10_Y8_N22
\Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = (\Selector10~0_combout\ & (\Add10~3\ $ (GND))) # (!\Selector10~0_combout\ & (!\Add10~3\ & VCC))
-- \Add10~5\ = CARRY((\Selector10~0_combout\ & !\Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datad => VCC,
	cin => \Add10~3\,
	combout => \Add10~4_combout\,
	cout => \Add10~5\);

-- Location: LCCOMB_X10_Y8_N24
\Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~6_combout\ = (\Selector9~3_combout\ & (\Add10~5\ & VCC)) # (!\Selector9~3_combout\ & (!\Add10~5\))
-- \Add10~7\ = CARRY((!\Selector9~3_combout\ & !\Add10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~3_combout\,
	datad => VCC,
	cin => \Add10~5\,
	combout => \Add10~6_combout\,
	cout => \Add10~7\);

-- Location: LCCOMB_X6_Y8_N18
\Add12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~1_cout\ = CARRY(!COUNT68(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(1),
	datad => VCC,
	cout => \Add12~1_cout\);

-- Location: LCCOMB_X6_Y8_N20
\Add12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~2_combout\ = (\Add12~1_cout\ & ((\Selector11~0_combout\ $ (COUNT68(2))))) # (!\Add12~1_cout\ & (\Selector11~0_combout\ $ ((!COUNT68(2)))))
-- \Add12~3\ = CARRY((!\Add12~1_cout\ & (\Selector11~0_combout\ $ (!COUNT68(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~0_combout\,
	datab => COUNT68(2),
	datad => VCC,
	cin => \Add12~1_cout\,
	combout => \Add12~2_combout\,
	cout => \Add12~3\);

-- Location: LCCOMB_X6_Y8_N22
\Add12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~4_combout\ = (\Selector10~0_combout\ & (\Add12~3\ $ (GND))) # (!\Selector10~0_combout\ & (!\Add12~3\ & VCC))
-- \Add12~5\ = CARRY((\Selector10~0_combout\ & !\Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Selector10~0_combout\,
	datad => VCC,
	cin => \Add12~3\,
	combout => \Add12~4_combout\,
	cout => \Add12~5\);

-- Location: LCCOMB_X6_Y8_N24
\Add12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~6_combout\ = (\Selector9~3_combout\ & (!\Add12~5\)) # (!\Selector9~3_combout\ & ((\Add12~5\) # (GND)))
-- \Add12~7\ = CARRY((!\Add12~5\) # (!\Selector9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Selector9~3_combout\,
	datad => VCC,
	cin => \Add12~5\,
	combout => \Add12~6_combout\,
	cout => \Add12~7\);

-- Location: LCCOMB_X5_Y8_N14
\Add11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = (\Selector10~0_combout\ & (\Add11~1\ & VCC)) # (!\Selector10~0_combout\ & (!\Add11~1\))
-- \Add11~3\ = CARRY((!\Selector10~0_combout\ & !\Add11~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datad => VCC,
	cin => \Add11~1\,
	combout => \Add11~2_combout\,
	cout => \Add11~3\);

-- Location: LCCOMB_X5_Y8_N16
\Add11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~4_combout\ = (\Selector9~3_combout\ & (\Add11~3\ $ (GND))) # (!\Selector9~3_combout\ & (!\Add11~3\ & VCC))
-- \Add11~5\ = CARRY((\Selector9~3_combout\ & !\Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~3_combout\,
	datad => VCC,
	cin => \Add11~3\,
	combout => \Add11~4_combout\,
	cout => \Add11~5\);

-- Location: LCCOMB_X8_Y8_N20
\LessThan8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = (!\Selector7~2_combout\ & (!\Selector8~6_combout\ & (COUNT68(7) $ (!\Selector6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(7),
	datab => \Selector7~2_combout\,
	datac => \Selector8~6_combout\,
	datad => \Selector6~2_combout\,
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X8_Y8_N12
\LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (\Selector11~1_combout\ & (\Selector10~0_combout\ & (!COUNT68(1) & \Selector9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~1_combout\,
	datab => \Selector10~0_combout\,
	datac => COUNT68(1),
	datad => \Selector9~3_combout\,
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X8_Y8_N26
\LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (\Selector8~6_combout\) # ((\Selector9~3_combout\ & ((\Selector11~1_combout\) # (\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~1_combout\,
	datab => \Selector10~0_combout\,
	datac => \Selector8~6_combout\,
	datad => \Selector9~3_combout\,
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X8_Y8_N2
\NSSEG~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NSSEG~2_combout\ = (\LessThan6~0_combout\) # ((\Selector7~2_combout\) # ((\LessThan7~0_combout\) # (!\LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~0_combout\,
	datab => \Selector7~2_combout\,
	datac => \LessThan7~0_combout\,
	datad => \LessThan8~0_combout\,
	combout => \NSSEG~2_combout\);

-- Location: LCCOMB_X8_Y8_N4
\NSSEG~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NSSEG~3_combout\ = ((\LessThan6~0_combout\) # ((!\LessThan8~1_combout\ & !\NSSEG~2_combout\))) # (!\LessThan8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~1_combout\,
	datab => \LessThan8~0_combout\,
	datac => \LessThan6~0_combout\,
	datad => \NSSEG~2_combout\,
	combout => \NSSEG~3_combout\);

-- Location: LCCOMB_X7_Y8_N16
\NSSEG~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NSSEG~4_combout\ = (\NSSEG~2_combout\ & (((\Add11~4_combout\) # (\NSSEG~3_combout\)))) # (!\NSSEG~2_combout\ & (\Selector9~3_combout\ & ((!\NSSEG~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NSSEG~2_combout\,
	datab => \Selector9~3_combout\,
	datac => \Add11~4_combout\,
	datad => \NSSEG~3_combout\,
	combout => \NSSEG~4_combout\);

-- Location: LCCOMB_X7_Y8_N18
\NSSEG~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NSSEG~5_combout\ = (\NSSEG~3_combout\ & ((\NSSEG~4_combout\ & (\Add10~6_combout\)) # (!\NSSEG~4_combout\ & ((\Add12~6_combout\))))) # (!\NSSEG~3_combout\ & (((\NSSEG~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NSSEG~3_combout\,
	datab => \Add10~6_combout\,
	datac => \Add12~6_combout\,
	datad => \NSSEG~4_combout\,
	combout => \NSSEG~5_combout\);

-- Location: LCCOMB_X7_Y8_N28
\Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (\LessThan5~1_combout\ & (\Add9~2_combout\)) # (!\LessThan5~1_combout\ & ((\NSSEG~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan5~1_combout\,
	datac => \Add9~2_combout\,
	datad => \NSSEG~5_combout\,
	combout => \Add9~4_combout\);

-- Location: LCCOMB_X7_Y8_N8
\NSEGH[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NSEGH[0]$latch~combout\ = (GLOBAL(\SWI~inputclkctrl_outclk\) & (\NSEGH[0]$latch~combout\)) # (!GLOBAL(\SWI~inputclkctrl_outclk\) & ((\Add9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NSEGH[0]$latch~combout\,
	datac => \SWI~inputclkctrl_outclk\,
	datad => \Add9~4_combout\,
	combout => \NSEGH[0]$latch~combout\);

-- Location: LCCOMB_X6_Y8_N6
\Add9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~5_combout\ = (\Selector8~6_combout\ & (\Add9~3\ $ (GND))) # (!\Selector8~6_combout\ & (!\Add9~3\ & VCC))
-- \Add9~6\ = CARRY((\Selector8~6_combout\ & !\Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~6_combout\,
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~5_combout\,
	cout => \Add9~6\);

-- Location: LCCOMB_X6_Y8_N26
\Add12~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~8_combout\ = (\Selector8~6_combout\ & (\Add12~7\ $ (GND))) # (!\Selector8~6_combout\ & (!\Add12~7\ & VCC))
-- \Add12~9\ = CARRY((\Selector8~6_combout\ & !\Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~6_combout\,
	datad => VCC,
	cin => \Add12~7\,
	combout => \Add12~8_combout\,
	cout => \Add12~9\);

-- Location: LCCOMB_X10_Y8_N26
\Add10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~8_combout\ = (\Selector8~6_combout\ & (\Add10~7\ $ (GND))) # (!\Selector8~6_combout\ & (!\Add10~7\ & VCC))
-- \Add10~9\ = CARRY((\Selector8~6_combout\ & !\Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Selector8~6_combout\,
	datad => VCC,
	cin => \Add10~7\,
	combout => \Add10~8_combout\,
	cout => \Add10~9\);

-- Location: LCCOMB_X7_Y8_N14
\Add9~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~7_combout\ = (\NSSEG~2_combout\ & ((\Add10~8_combout\))) # (!\NSSEG~2_combout\ & (\Add12~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NSSEG~2_combout\,
	datac => \Add12~8_combout\,
	datad => \Add10~8_combout\,
	combout => \Add9~7_combout\);

-- Location: LCCOMB_X5_Y8_N18
\Add11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = (\Selector8~6_combout\ & (!\Add11~5\)) # (!\Selector8~6_combout\ & ((\Add11~5\) # (GND)))
-- \Add11~7\ = CARRY((!\Add11~5\) # (!\Selector8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Selector8~6_combout\,
	datad => VCC,
	cin => \Add11~5\,
	combout => \Add11~6_combout\,
	cout => \Add11~7\);

-- Location: LCCOMB_X7_Y8_N0
\Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = (\NSSEG~3_combout\ & (((\Add9~7_combout\)))) # (!\NSSEG~3_combout\ & (\NSSEG~2_combout\ & ((\Add11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NSSEG~3_combout\,
	datab => \NSSEG~2_combout\,
	datac => \Add9~7_combout\,
	datad => \Add11~6_combout\,
	combout => \Add9~8_combout\);

-- Location: LCCOMB_X7_Y8_N30
\Add9~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~9_combout\ = (\LessThan5~1_combout\ & (\Add9~5_combout\)) # (!\LessThan5~1_combout\ & ((\Add9~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan5~1_combout\,
	datac => \Add9~5_combout\,
	datad => \Add9~8_combout\,
	combout => \Add9~9_combout\);

-- Location: LCCOMB_X7_Y8_N22
\NSEGH[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NSEGH[1]$latch~combout\ = (GLOBAL(\SWI~inputclkctrl_outclk\) & (\NSEGH[1]$latch~combout\)) # (!GLOBAL(\SWI~inputclkctrl_outclk\) & ((\Add9~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NSEGH[1]$latch~combout\,
	datac => \Add9~9_combout\,
	datad => \SWI~inputclkctrl_outclk\,
	combout => \NSEGH[1]$latch~combout\);

-- Location: LCCOMB_X5_Y8_N20
\Add11~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~8_combout\ = (\Selector7~2_combout\ & (\Add11~7\ $ (GND))) # (!\Selector7~2_combout\ & (!\Add11~7\ & VCC))
-- \Add11~9\ = CARRY((\Selector7~2_combout\ & !\Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Selector7~2_combout\,
	datad => VCC,
	cin => \Add11~7\,
	combout => \Add11~8_combout\,
	cout => \Add11~9\);

-- Location: LCCOMB_X10_Y8_N28
\Add10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~10_combout\ = (\Selector7~2_combout\ & (!\Add10~9\)) # (!\Selector7~2_combout\ & ((\Add10~9\) # (GND)))
-- \Add10~11\ = CARRY((!\Add10~9\) # (!\Selector7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~2_combout\,
	datad => VCC,
	cin => \Add10~9\,
	combout => \Add10~10_combout\,
	cout => \Add10~11\);

-- Location: LCCOMB_X6_Y8_N28
\Add12~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~10_combout\ = (\Selector7~2_combout\ & (!\Add12~9\)) # (!\Selector7~2_combout\ & ((\Add12~9\) # (GND)))
-- \Add12~11\ = CARRY((!\Add12~9\) # (!\Selector7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~2_combout\,
	datad => VCC,
	cin => \Add12~9\,
	combout => \Add12~10_combout\,
	cout => \Add12~11\);

-- Location: LCCOMB_X7_Y8_N24
\Add9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = (\NSSEG~2_combout\ & (\Add10~10_combout\)) # (!\NSSEG~2_combout\ & ((\Add12~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NSSEG~2_combout\,
	datac => \Add10~10_combout\,
	datad => \Add12~10_combout\,
	combout => \Add9~12_combout\);

-- Location: LCCOMB_X7_Y8_N6
\Add9~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~13_combout\ = (\NSSEG~3_combout\ & (((\Add9~12_combout\)))) # (!\NSSEG~3_combout\ & (\NSSEG~2_combout\ & (\Add11~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NSSEG~3_combout\,
	datab => \NSSEG~2_combout\,
	datac => \Add11~8_combout\,
	datad => \Add9~12_combout\,
	combout => \Add9~13_combout\);

-- Location: LCCOMB_X7_Y8_N12
\Add9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = (\LessThan5~1_combout\ & (\Add9~10_combout\)) # (!\LessThan5~1_combout\ & ((\Add9~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~10_combout\,
	datac => \LessThan5~1_combout\,
	datad => \Add9~13_combout\,
	combout => \Add9~14_combout\);

-- Location: LCCOMB_X7_Y8_N4
\NSEGH[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NSEGH[2]$latch~combout\ = (GLOBAL(\SWI~inputclkctrl_outclk\) & (\NSEGH[2]$latch~combout\)) # (!GLOBAL(\SWI~inputclkctrl_outclk\) & ((\Add9~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NSEGH[2]$latch~combout\,
	datac => \SWI~inputclkctrl_outclk\,
	datad => \Add9~14_combout\,
	combout => \NSEGH[2]$latch~combout\);

-- Location: LCCOMB_X6_Y8_N10
\Add9~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~15_combout\ = COUNT68(7) $ (\Add9~11\ $ (!\Selector6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT68(7),
	datad => \Selector6~2_combout\,
	cin => \Add9~11\,
	combout => \Add9~15_combout\);

-- Location: LCCOMB_X5_Y8_N22
\Add11~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~10_combout\ = COUNT68(7) $ (\Add11~9\ $ (\Selector6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT68(7),
	datad => \Selector6~2_combout\,
	cin => \Add11~9\,
	combout => \Add11~10_combout\);

-- Location: LCCOMB_X6_Y8_N30
\Add12~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~12_combout\ = COUNT68(7) $ (\Add12~11\ $ (!\Selector6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT68(7),
	datad => \Selector6~2_combout\,
	cin => \Add12~11\,
	combout => \Add12~12_combout\);

-- Location: LCCOMB_X10_Y8_N30
\Add10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~12_combout\ = COUNT68(7) $ (\Add10~11\ $ (!\Selector6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(7),
	datad => \Selector6~2_combout\,
	cin => \Add10~11\,
	combout => \Add10~12_combout\);

-- Location: LCCOMB_X6_Y8_N0
\Add9~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~17_combout\ = (\NSSEG~2_combout\ & ((\Add10~12_combout\))) # (!\NSSEG~2_combout\ & (\Add12~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NSSEG~2_combout\,
	datac => \Add12~12_combout\,
	datad => \Add10~12_combout\,
	combout => \Add9~17_combout\);

-- Location: LCCOMB_X6_Y8_N12
\Add9~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~18_combout\ = (\NSSEG~3_combout\ & (((\Add9~17_combout\)))) # (!\NSSEG~3_combout\ & (\Add11~10_combout\ & (\NSSEG~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NSSEG~3_combout\,
	datab => \Add11~10_combout\,
	datac => \NSSEG~2_combout\,
	datad => \Add9~17_combout\,
	combout => \Add9~18_combout\);

-- Location: LCCOMB_X6_Y8_N14
\Add9~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~19_combout\ = (\LessThan5~1_combout\ & (\Add9~15_combout\)) # (!\LessThan5~1_combout\ & ((\Add9~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~15_combout\,
	datac => \LessThan5~1_combout\,
	datad => \Add9~18_combout\,
	combout => \Add9~19_combout\);

-- Location: LCCOMB_X6_Y8_N16
\NSEGH[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NSEGH[3]$latch~combout\ = (GLOBAL(\SWI~inputclkctrl_outclk\) & (\NSEGH[3]$latch~combout\)) # (!GLOBAL(\SWI~inputclkctrl_outclk\) & ((\Add9~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NSEGH[3]$latch~combout\,
	datac => \Add9~19_combout\,
	datad => \SWI~inputclkctrl_outclk\,
	combout => \NSEGH[3]$latch~combout\);

-- Location: LCCOMB_X8_Y8_N28
\NSSEG~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NSSEG~6_combout\ = (!\LessThan7~0_combout\ & (!\Selector7~2_combout\ & (\Selector6~2_combout\ $ (!COUNT68(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~0_combout\,
	datab => \Selector7~2_combout\,
	datac => \Selector6~2_combout\,
	datad => COUNT68(7),
	combout => \NSSEG~6_combout\);

-- Location: LCCOMB_X8_Y8_N24
\NSSEG~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NSSEG~14_combout\ = (\NSSEG~6_combout\ & ((!\LessThan8~0_combout\) # (!\LessThan8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~1_combout\,
	datab => \LessThan8~0_combout\,
	datad => \NSSEG~6_combout\,
	combout => \NSSEG~14_combout\);

-- Location: LCCOMB_X8_Y8_N22
\NSSEG~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NSSEG~7_combout\ = (!\LessThan6~0_combout\ & \LessThan8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~0_combout\,
	datad => \LessThan8~0_combout\,
	combout => \NSSEG~7_combout\);

-- Location: LCCOMB_X8_Y8_N16
\NSSEG~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NSSEG~8_combout\ = COUNT68(1) $ (((\LessThan5~1_combout\) # ((!\NSSEG~14_combout\ & \NSSEG~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT68(1),
	datab => \NSSEG~14_combout\,
	datac => \NSSEG~7_combout\,
	datad => \LessThan5~1_combout\,
	combout => \NSSEG~8_combout\);

-- Location: LCCOMB_X9_Y8_N10
\NSEGL[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NSEGL[1]$latch~combout\ = (GLOBAL(\SWI~inputclkctrl_outclk\) & (\NSEGL[1]$latch~combout\)) # (!GLOBAL(\SWI~inputclkctrl_outclk\) & ((\NSSEG~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NSEGL[1]$latch~combout\,
	datac => \NSSEG~8_combout\,
	datad => \SWI~inputclkctrl_outclk\,
	combout => \NSEGL[1]$latch~combout\);

-- Location: LCCOMB_X8_Y8_N14
\LessThan8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~2_combout\ = (!\LessThan8~0_combout\) # (!\LessThan8~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~1_combout\,
	datad => \LessThan8~0_combout\,
	combout => \LessThan8~2_combout\);

-- Location: LCCOMB_X8_Y8_N30
\NSSEG~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NSSEG~9_combout\ = (\LessThan8~2_combout\ & ((\LessThan5~1_combout\ & (!\Selector11~1_combout\)) # (!\LessThan5~1_combout\ & ((!\Add12~2_combout\))))) # (!\LessThan8~2_combout\ & (!\Selector11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~1_combout\,
	datab => \Add12~2_combout\,
	datac => \LessThan8~2_combout\,
	datad => \LessThan5~1_combout\,
	combout => \NSSEG~9_combout\);

-- Location: LCCOMB_X8_Y8_N8
\NSSEG~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NSSEG~10_combout\ = (\LessThan5~1_combout\ & (((\NSSEG~9_combout\)))) # (!\LessThan5~1_combout\ & ((\NSSEG~6_combout\ & ((!\NSSEG~9_combout\))) # (!\NSSEG~6_combout\ & (\Add11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~0_combout\,
	datab => \NSSEG~6_combout\,
	datac => \NSSEG~9_combout\,
	datad => \LessThan5~1_combout\,
	combout => \NSSEG~10_combout\);

-- Location: LCCOMB_X8_Y8_N18
\NSSEG~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NSSEG~11_combout\ = (\LessThan5~1_combout\ & (((!\NSSEG~10_combout\)))) # (!\LessThan5~1_combout\ & ((\NSSEG~7_combout\ & ((\NSSEG~10_combout\))) # (!\NSSEG~7_combout\ & (\Add10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NSSEG~7_combout\,
	datab => \Add10~2_combout\,
	datac => \NSSEG~10_combout\,
	datad => \LessThan5~1_combout\,
	combout => \NSSEG~11_combout\);

-- Location: LCCOMB_X8_Y8_N10
\NSEGL[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NSEGL[2]$latch~combout\ = (GLOBAL(\SWI~inputclkctrl_outclk\) & ((\NSEGL[2]$latch~combout\))) # (!GLOBAL(\SWI~inputclkctrl_outclk\) & (\NSSEG~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NSSEG~11_combout\,
	datac => \SWI~inputclkctrl_outclk\,
	datad => \NSEGL[2]$latch~combout\,
	combout => \NSEGL[2]$latch~combout\);

-- Location: LCCOMB_X7_Y8_N10
\NSSEG~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NSSEG~12_combout\ = (\NSSEG~2_combout\ & (((\NSSEG~3_combout\)))) # (!\NSSEG~2_combout\ & ((\NSSEG~3_combout\ & ((\Add12~4_combout\))) # (!\NSSEG~3_combout\ & (\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NSSEG~2_combout\,
	datab => \Selector10~0_combout\,
	datac => \Add12~4_combout\,
	datad => \NSSEG~3_combout\,
	combout => \NSSEG~12_combout\);

-- Location: LCCOMB_X7_Y8_N20
\NSSEG~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NSSEG~13_combout\ = (\NSSEG~2_combout\ & ((\NSSEG~12_combout\ & (\Add10~4_combout\)) # (!\NSSEG~12_combout\ & ((\Add11~2_combout\))))) # (!\NSSEG~2_combout\ & (((\NSSEG~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NSSEG~2_combout\,
	datab => \Add10~4_combout\,
	datac => \Add11~2_combout\,
	datad => \NSSEG~12_combout\,
	combout => \NSSEG~13_combout\);

-- Location: LCCOMB_X7_Y8_N2
\Add9~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~20_combout\ = (\LessThan5~1_combout\ & (\Add9~0_combout\)) # (!\LessThan5~1_combout\ & ((\NSSEG~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datac => \LessThan5~1_combout\,
	datad => \NSSEG~13_combout\,
	combout => \Add9~20_combout\);

-- Location: LCCOMB_X7_Y8_N26
\NSEGL[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NSEGL[3]$latch~combout\ = (GLOBAL(\SWI~inputclkctrl_outclk\) & (\NSEGL[3]$latch~combout\)) # (!GLOBAL(\SWI~inputclkctrl_outclk\) & ((\Add9~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NSEGL[3]$latch~combout\,
	datac => \SWI~inputclkctrl_outclk\,
	datad => \Add9~20_combout\,
	combout => \NSEGL[3]$latch~combout\);

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(5) <= \LED[5]~output_o\;

ww_WideSEGH(0) <= \WideSEGH[0]~output_o\;

ww_WideSEGH(1) <= \WideSEGH[1]~output_o\;

ww_WideSEGH(2) <= \WideSEGH[2]~output_o\;

ww_WideSEGH(3) <= \WideSEGH[3]~output_o\;

ww_WideSEGL(0) <= \WideSEGL[0]~output_o\;

ww_WideSEGL(1) <= \WideSEGL[1]~output_o\;

ww_WideSEGL(2) <= \WideSEGL[2]~output_o\;

ww_WideSEGL(3) <= \WideSEGL[3]~output_o\;

ww_NSEGH(0) <= \NSEGH[0]~output_o\;

ww_NSEGH(1) <= \NSEGH[1]~output_o\;

ww_NSEGH(2) <= \NSEGH[2]~output_o\;

ww_NSEGH(3) <= \NSEGH[3]~output_o\;

ww_NSEGL(0) <= \NSEGL[0]~output_o\;

ww_NSEGL(1) <= \NSEGL[1]~output_o\;

ww_NSEGL(2) <= \NSEGL[2]~output_o\;

ww_NSEGL(3) <= \NSEGL[3]~output_o\;
END structure;


