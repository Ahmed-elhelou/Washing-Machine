-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "05/20/2023 02:49:44"

-- 
-- Device: Altera 5M240ZM68C4 Package MBGA68
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	main IS
    PORT (
	userProg : IN std_logic_vector(4 DOWNTO 0);
	clk : IN std_logic;
	reset : IN std_logic;
	start : IN std_logic;
	state : BUFFER std_logic_vector(1 DOWNTO 0);
	sevSeg_data : BUFFER std_logic_vector(6 DOWNTO 0);
	sevSeg_driver : BUFFER std_logic_vector(5 DOWNTO 0)
	);
END main;

-- Design Ports Information


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_userProg : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_state : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sevSeg_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sevSeg_driver : std_logic_vector(5 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[0]~63\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[1]~61\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[1]~61COUT1_65\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[2]~59\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[2]~59COUT1_66\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[3]~3\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[3]~3COUT1_67\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[4]~5\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[4]~5COUT1_68\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[5]~7\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[6]~9\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[6]~9COUT1_69\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[7]~11\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[7]~11COUT1_70\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[8]~13\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[8]~13COUT1_71\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[9]~15\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[9]~15COUT1_72\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[10]~17\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[11]~19\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[11]~19COUT1_73\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[12]~21\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[12]~21COUT1_74\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[13]~23\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[13]~23COUT1_75\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[14]~25\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[14]~25COUT1_76\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[15]~27\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[16]~29\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[16]~29COUT1_77\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[17]~31\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[17]~31COUT1_78\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[18]~33\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[18]~33COUT1_79\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[19]~35\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[19]~35COUT1_80\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[20]~37\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[21]~39\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[21]~39COUT1_81\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[22]~41\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[22]~41COUT1_82\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[23]~43\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[23]~43COUT1_83\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[24]~45\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[24]~45COUT1_84\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[25]~55\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[26]~57\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[26]~57COUT1_85\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[27]~47\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[27]~47COUT1_86\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[28]~49\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[28]~49COUT1_87\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[29]~51\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[29]~51COUT1_88\ : std_logic;
SIGNAL \washing_machine_clock_devider|counter[30]~53\ : std_logic;
SIGNAL \washing_machine_clock_devider|LessThan0~5_combout\ : std_logic;
SIGNAL \washing_machine_clock_devider|LessThan0~7_combout\ : std_logic;
SIGNAL \washing_machine_clock_devider|LessThan0~6_combout\ : std_logic;
SIGNAL \washing_machine_clock_devider|LessThan0~8_combout\ : std_logic;
SIGNAL \washing_machine_clock_devider|LessThan0~2_combout\ : std_logic;
SIGNAL \washing_machine_clock_devider|LessThan0~1_combout\ : std_logic;
SIGNAL \washing_machine_clock_devider|LessThan0~3_combout\ : std_logic;
SIGNAL \washing_machine_clock_devider|LessThan0~0_combout\ : std_logic;
SIGNAL \washing_machine_clock_devider|LessThan0~4_combout\ : std_logic;
SIGNAL \washing_machine_clock_devider|LessThan0~9_combout\ : std_logic;
SIGNAL \washing_machine_clock_devider|curr_out~regout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \washing_machine_driver|state[1]~2_combout\ : std_logic;
SIGNAL \sev_segment_driver|sevSegIndex~0_combout\ : std_logic;
SIGNAL \washing_machine_driver|Equal4~0_combout\ : std_logic;
SIGNAL \washing_machine_driver|Equal1~0_combout\ : std_logic;
SIGNAL \washing_machine_driver|Equal2~0_combout\ : std_logic;
SIGNAL \washing_machine_driver|wash_counter~16_combout\ : std_logic;
SIGNAL \washing_machine_driver|Equal3~0_combout\ : std_logic;
SIGNAL \washing_machine_driver|Equal0~0_combout\ : std_logic;
SIGNAL \washing_machine_driver|wash_counter~9_combout\ : std_logic;
SIGNAL \washing_machine_driver|Equal4~1_combout\ : std_logic;
SIGNAL \washing_machine_driver|Equal1~1_combout\ : std_logic;
SIGNAL \washing_machine_driver|wash_counter[1]~10_combout\ : std_logic;
SIGNAL \washing_machine_driver|RINSE_counter[3]~7_combout\ : std_logic;
SIGNAL \washing_machine_driver|zero_flag~3_combout\ : std_logic;
SIGNAL \washing_machine_driver|SPIN_counter[3]~0_combout\ : std_logic;
SIGNAL \washing_machine_driver|Add1~0_combout\ : std_logic;
SIGNAL \washing_machine_driver|Add1~1_combout\ : std_logic;
SIGNAL \washing_machine_driver|Add1~2_combout\ : std_logic;
SIGNAL \washing_machine_driver|SPIN_counter~1_combout\ : std_logic;
SIGNAL \washing_machine_driver|zero_flag~1_combout\ : std_logic;
SIGNAL \washing_machine_driver|RINSE_counter~8_combout\ : std_logic;
SIGNAL \washing_machine_driver|RINSE_counter[3]~3_combout\ : std_logic;
SIGNAL \washing_machine_driver|RINSE_counter[3]~4_combout\ : std_logic;
SIGNAL \washing_machine_driver|Add2~1_combout\ : std_logic;
SIGNAL \washing_machine_driver|RINSE_counter~6_combout\ : std_logic;
SIGNAL \washing_machine_driver|Add2~2_combout\ : std_logic;
SIGNAL \washing_machine_driver|Add2~0_combout\ : std_logic;
SIGNAL \washing_machine_driver|RINSE_counter[3]~2_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \washing_machine_driver|wash_counter[4]~11_combout\ : std_logic;
SIGNAL \washing_machine_driver|wash_counter[4]~12_combout\ : std_logic;
SIGNAL \washing_machine_driver|wash_counter~15_combout\ : std_logic;
SIGNAL \washing_machine_driver|wash_counter[0]~14\ : std_logic;
SIGNAL \washing_machine_driver|wash_counter[0]~14COUT1_18\ : std_logic;
SIGNAL \washing_machine_driver|wash_counter[1]~1\ : std_logic;
SIGNAL \washing_machine_driver|wash_counter[1]~1COUT1_19\ : std_logic;
SIGNAL \washing_machine_driver|wash_counter[2]~3\ : std_logic;
SIGNAL \washing_machine_driver|wash_counter[2]~3COUT1_20\ : std_logic;
SIGNAL \washing_machine_driver|wash_counter[3]~5\ : std_logic;
SIGNAL \washing_machine_driver|wash_counter[3]~5COUT1_21\ : std_logic;
SIGNAL \washing_machine_driver|wash_counter[4]~8_combout\ : std_logic;
SIGNAL \washing_machine_driver|zero_flag~0_combout\ : std_logic;
SIGNAL \washing_machine_driver|zero_flag~2_combout\ : std_logic;
SIGNAL \sev_segment_driver|sevSeg_data[1]~9_combout\ : std_logic;
SIGNAL \washing_machine_driver|curr_state[1]~7_combout\ : std_logic;
SIGNAL \washing_machine_driver|curr_state[0]~en_regout\ : std_logic;
SIGNAL \washing_machine_driver|state[0]~3_combout\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[0]~3\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[1]~5\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[1]~5COUT1_65\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[2]~7\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[2]~7COUT1_66\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[3]~9\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[3]~9COUT1_67\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[4]~11\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[4]~11COUT1_68\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[5]~13\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[6]~15\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[6]~15COUT1_69\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[7]~17\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[7]~17COUT1_70\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[8]~19\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[8]~19COUT1_71\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[9]~21\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[9]~21COUT1_72\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[10]~23\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[11]~25\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[11]~25COUT1_73\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[12]~27\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[12]~27COUT1_74\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[13]~29\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[13]~29COUT1_75\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[14]~31\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[14]~31COUT1_76\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[15]~33\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[16]~35\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[16]~35COUT1_77\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[17]~37\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[17]~37COUT1_78\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[18]~47\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[18]~47COUT1_79\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[19]~49\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[19]~49COUT1_80\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[20]~39\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[21]~41\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[21]~41COUT1_81\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[22]~43\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[22]~43COUT1_82\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[23]~45\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[23]~45COUT1_83\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[24]~51\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[24]~51COUT1_84\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[25]~53\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[26]~55\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[26]~55COUT1_85\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[27]~57\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[27]~57COUT1_86\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[28]~59\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[28]~59COUT1_87\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[29]~61\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[29]~61COUT1_88\ : std_logic;
SIGNAL \sev_seg_clock_devider|counter[30]~63\ : std_logic;
SIGNAL \sev_seg_clock_devider|LessThan0~8_combout\ : std_logic;
SIGNAL \sev_seg_clock_devider|LessThan0~9_combout\ : std_logic;
SIGNAL \sev_seg_clock_devider|LessThan0~5_combout\ : std_logic;
SIGNAL \sev_seg_clock_devider|LessThan0~6_combout\ : std_logic;
SIGNAL \sev_seg_clock_devider|LessThan0~7_combout\ : std_logic;
SIGNAL \sev_seg_clock_devider|LessThan0~3_combout\ : std_logic;
SIGNAL \sev_seg_clock_devider|LessThan0~2_combout\ : std_logic;
SIGNAL \sev_seg_clock_devider|LessThan0~0_combout\ : std_logic;
SIGNAL \sev_seg_clock_devider|LessThan0~1_combout\ : std_logic;
SIGNAL \sev_seg_clock_devider|LessThan0~4_combout\ : std_logic;
SIGNAL \sev_seg_clock_devider|LessThan0~10_combout\ : std_logic;
SIGNAL \sev_seg_clock_devider|curr_out~regout\ : std_logic;
SIGNAL \sev_segment_driver|Mux25~0_combout\ : std_logic;
SIGNAL \sev_segment_driver|Equal14~0_combout\ : std_logic;
SIGNAL \sev_segment_driver|sevSeg_data[0]~23_combout\ : std_logic;
SIGNAL \sev_segment_driver|sevSeg_data[0]~6_combout\ : std_logic;
SIGNAL \sev_segment_driver|sevSeg_data[0]~7_combout\ : std_logic;
SIGNAL \sev_segment_driver|sevSeg_data[1]~8_combout\ : std_logic;
SIGNAL \sev_segment_driver|Equal14~1_combout\ : std_logic;
SIGNAL \sev_segment_driver|sevSeg_data[1]~10_combout\ : std_logic;
SIGNAL \sev_segment_driver|sevSeg_data[2]~11_combout\ : std_logic;
SIGNAL \sev_segment_driver|Mux6~0_combout\ : std_logic;
SIGNAL \sev_segment_driver|sevSeg_data[2]~12_combout\ : std_logic;
SIGNAL \sev_segment_driver|sevSeg_data[3]~13_combout\ : std_logic;
SIGNAL \sev_segment_driver|sevSeg_driver[0]~0_combout\ : std_logic;
SIGNAL \sev_segment_driver|sevSeg_data[3]~14_combout\ : std_logic;
SIGNAL \sev_segment_driver|sevSeg_data[3]~15_combout\ : std_logic;
SIGNAL \sev_segment_driver|sevSeg_data[4]~16_combout\ : std_logic;
SIGNAL \sev_segment_driver|sevSeg_data[4]~17_combout\ : std_logic;
SIGNAL \sev_segment_driver|Mux16~0_combout\ : std_logic;
SIGNAL \sev_segment_driver|sevSeg_data[4]~18_combout\ : std_logic;
SIGNAL \sev_segment_driver|Mux21~0_combout\ : std_logic;
SIGNAL \sev_segment_driver|sevSeg_data[5]~19_combout\ : std_logic;
SIGNAL \sev_segment_driver|sevSeg_data[5]~20_combout\ : std_logic;
SIGNAL \sev_segment_driver|Mux24~0_combout\ : std_logic;
SIGNAL \sev_segment_driver|sevSeg_data[6]~21_combout\ : std_logic;
SIGNAL \sev_segment_driver|sevSeg_data[6]~22_combout\ : std_logic;
SIGNAL \sev_segment_driver|sevSeg_driver[0]~1_combout\ : std_logic;
SIGNAL \sev_segment_driver|Equal14~2_combout\ : std_logic;
SIGNAL \sev_segment_driver|Equal14~3_combout\ : std_logic;
SIGNAL \sev_segment_driver|Equal14~4_combout\ : std_logic;
SIGNAL \userProg~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \washing_machine_driver|curr_state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \washing_machine_clock_devider|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \washing_machine_driver|RINSE_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sev_segment_driver|sevSegIndex\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \washing_machine_driver|wash_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \washing_machine_driver|SPIN_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sev_seg_clock_devider|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \sev_segment_driver|ALT_INV_sevSeg_data[3]~13_combout\ : std_logic;

BEGIN

ww_userProg <= userProg;
ww_clk <= clk;
ww_reset <= reset;
ww_start <= start;
state <= ww_state;
sevSeg_data <= ww_sevSeg_data;
sevSeg_driver <= ww_sevSeg_driver;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\sev_segment_driver|ALT_INV_sevSeg_data[3]~13_combout\ <= NOT \sev_segment_driver|sevSeg_data[3]~13_combout\;

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LC_X2_Y2_N4
\washing_machine_clock_devider|counter[0]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(0) = DFFEAS((!\washing_machine_clock_devider|counter\(0)), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[0]~63\ = CARRY((\washing_machine_clock_devider|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \washing_machine_clock_devider|counter\(0),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(0),
	cout => \washing_machine_clock_devider|counter[0]~63\);

-- Location: LC_X2_Y2_N5
\washing_machine_clock_devider|counter[1]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(1) = DFFEAS(\washing_machine_clock_devider|counter\(1) $ ((((\washing_machine_clock_devider|counter[0]~63\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , 
-- \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[1]~61\ = CARRY(((!\washing_machine_clock_devider|counter[0]~63\)) # (!\washing_machine_clock_devider|counter\(1)))
-- \washing_machine_clock_devider|counter[1]~61COUT1_65\ = CARRY(((!\washing_machine_clock_devider|counter[0]~63\)) # (!\washing_machine_clock_devider|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \washing_machine_clock_devider|counter\(1),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[0]~63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(1),
	cout0 => \washing_machine_clock_devider|counter[1]~61\,
	cout1 => \washing_machine_clock_devider|counter[1]~61COUT1_65\);

-- Location: LC_X2_Y2_N6
\washing_machine_clock_devider|counter[2]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(2) = DFFEAS(\washing_machine_clock_devider|counter\(2) $ ((((!(!\washing_machine_clock_devider|counter[0]~63\ & \washing_machine_clock_devider|counter[1]~61\) # (\washing_machine_clock_devider|counter[0]~63\ & 
-- \washing_machine_clock_devider|counter[1]~61COUT1_65\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[2]~59\ = CARRY((\washing_machine_clock_devider|counter\(2) & ((!\washing_machine_clock_devider|counter[1]~61\))))
-- \washing_machine_clock_devider|counter[2]~59COUT1_66\ = CARRY((\washing_machine_clock_devider|counter\(2) & ((!\washing_machine_clock_devider|counter[1]~61COUT1_65\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \washing_machine_clock_devider|counter\(2),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[0]~63\,
	cin0 => \washing_machine_clock_devider|counter[1]~61\,
	cin1 => \washing_machine_clock_devider|counter[1]~61COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(2),
	cout0 => \washing_machine_clock_devider|counter[2]~59\,
	cout1 => \washing_machine_clock_devider|counter[2]~59COUT1_66\);

-- Location: LC_X2_Y2_N7
\washing_machine_clock_devider|counter[3]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(3) = DFFEAS((\washing_machine_clock_devider|counter\(3) $ (((!\washing_machine_clock_devider|counter[0]~63\ & \washing_machine_clock_devider|counter[2]~59\) # (\washing_machine_clock_devider|counter[0]~63\ & 
-- \washing_machine_clock_devider|counter[2]~59COUT1_66\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[3]~3\ = CARRY(((!\washing_machine_clock_devider|counter[2]~59\) # (!\washing_machine_clock_devider|counter\(3))))
-- \washing_machine_clock_devider|counter[3]~3COUT1_67\ = CARRY(((!\washing_machine_clock_devider|counter[2]~59COUT1_66\) # (!\washing_machine_clock_devider|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \washing_machine_clock_devider|counter\(3),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[0]~63\,
	cin0 => \washing_machine_clock_devider|counter[2]~59\,
	cin1 => \washing_machine_clock_devider|counter[2]~59COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(3),
	cout0 => \washing_machine_clock_devider|counter[3]~3\,
	cout1 => \washing_machine_clock_devider|counter[3]~3COUT1_67\);

-- Location: LC_X2_Y2_N8
\washing_machine_clock_devider|counter[4]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(4) = DFFEAS(\washing_machine_clock_devider|counter\(4) $ ((((!(!\washing_machine_clock_devider|counter[0]~63\ & \washing_machine_clock_devider|counter[3]~3\) # (\washing_machine_clock_devider|counter[0]~63\ & 
-- \washing_machine_clock_devider|counter[3]~3COUT1_67\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[4]~5\ = CARRY((\washing_machine_clock_devider|counter\(4) & ((!\washing_machine_clock_devider|counter[3]~3\))))
-- \washing_machine_clock_devider|counter[4]~5COUT1_68\ = CARRY((\washing_machine_clock_devider|counter\(4) & ((!\washing_machine_clock_devider|counter[3]~3COUT1_67\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \washing_machine_clock_devider|counter\(4),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[0]~63\,
	cin0 => \washing_machine_clock_devider|counter[3]~3\,
	cin1 => \washing_machine_clock_devider|counter[3]~3COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(4),
	cout0 => \washing_machine_clock_devider|counter[4]~5\,
	cout1 => \washing_machine_clock_devider|counter[4]~5COUT1_68\);

-- Location: LC_X2_Y2_N9
\washing_machine_clock_devider|counter[5]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(5) = DFFEAS((\washing_machine_clock_devider|counter\(5) $ (((!\washing_machine_clock_devider|counter[0]~63\ & \washing_machine_clock_devider|counter[4]~5\) # (\washing_machine_clock_devider|counter[0]~63\ & 
-- \washing_machine_clock_devider|counter[4]~5COUT1_68\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[5]~7\ = CARRY(((!\washing_machine_clock_devider|counter[4]~5COUT1_68\) # (!\washing_machine_clock_devider|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \washing_machine_clock_devider|counter\(5),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[0]~63\,
	cin0 => \washing_machine_clock_devider|counter[4]~5\,
	cin1 => \washing_machine_clock_devider|counter[4]~5COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(5),
	cout => \washing_machine_clock_devider|counter[5]~7\);

-- Location: LC_X3_Y2_N0
\washing_machine_clock_devider|counter[6]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(6) = DFFEAS((\washing_machine_clock_devider|counter\(6) $ ((!\washing_machine_clock_devider|counter[5]~7\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , 
-- \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[6]~9\ = CARRY(((\washing_machine_clock_devider|counter\(6) & !\washing_machine_clock_devider|counter[5]~7\)))
-- \washing_machine_clock_devider|counter[6]~9COUT1_69\ = CARRY(((\washing_machine_clock_devider|counter\(6) & !\washing_machine_clock_devider|counter[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \washing_machine_clock_devider|counter\(6),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[5]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(6),
	cout0 => \washing_machine_clock_devider|counter[6]~9\,
	cout1 => \washing_machine_clock_devider|counter[6]~9COUT1_69\);

-- Location: LC_X3_Y2_N1
\washing_machine_clock_devider|counter[7]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(7) = DFFEAS((\washing_machine_clock_devider|counter\(7) $ (((!\washing_machine_clock_devider|counter[5]~7\ & \washing_machine_clock_devider|counter[6]~9\) # (\washing_machine_clock_devider|counter[5]~7\ & 
-- \washing_machine_clock_devider|counter[6]~9COUT1_69\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[7]~11\ = CARRY(((!\washing_machine_clock_devider|counter[6]~9\) # (!\washing_machine_clock_devider|counter\(7))))
-- \washing_machine_clock_devider|counter[7]~11COUT1_70\ = CARRY(((!\washing_machine_clock_devider|counter[6]~9COUT1_69\) # (!\washing_machine_clock_devider|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \washing_machine_clock_devider|counter\(7),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[5]~7\,
	cin0 => \washing_machine_clock_devider|counter[6]~9\,
	cin1 => \washing_machine_clock_devider|counter[6]~9COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(7),
	cout0 => \washing_machine_clock_devider|counter[7]~11\,
	cout1 => \washing_machine_clock_devider|counter[7]~11COUT1_70\);

-- Location: LC_X3_Y2_N2
\washing_machine_clock_devider|counter[8]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(8) = DFFEAS((\washing_machine_clock_devider|counter\(8) $ ((!(!\washing_machine_clock_devider|counter[5]~7\ & \washing_machine_clock_devider|counter[7]~11\) # (\washing_machine_clock_devider|counter[5]~7\ & 
-- \washing_machine_clock_devider|counter[7]~11COUT1_70\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[8]~13\ = CARRY(((\washing_machine_clock_devider|counter\(8) & !\washing_machine_clock_devider|counter[7]~11\)))
-- \washing_machine_clock_devider|counter[8]~13COUT1_71\ = CARRY(((\washing_machine_clock_devider|counter\(8) & !\washing_machine_clock_devider|counter[7]~11COUT1_70\)))

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
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \washing_machine_clock_devider|counter\(8),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[5]~7\,
	cin0 => \washing_machine_clock_devider|counter[7]~11\,
	cin1 => \washing_machine_clock_devider|counter[7]~11COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(8),
	cout0 => \washing_machine_clock_devider|counter[8]~13\,
	cout1 => \washing_machine_clock_devider|counter[8]~13COUT1_71\);

-- Location: LC_X3_Y2_N3
\washing_machine_clock_devider|counter[9]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(9) = DFFEAS(\washing_machine_clock_devider|counter\(9) $ (((((!\washing_machine_clock_devider|counter[5]~7\ & \washing_machine_clock_devider|counter[8]~13\) # (\washing_machine_clock_devider|counter[5]~7\ & 
-- \washing_machine_clock_devider|counter[8]~13COUT1_71\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[9]~15\ = CARRY(((!\washing_machine_clock_devider|counter[8]~13\)) # (!\washing_machine_clock_devider|counter\(9)))
-- \washing_machine_clock_devider|counter[9]~15COUT1_72\ = CARRY(((!\washing_machine_clock_devider|counter[8]~13COUT1_71\)) # (!\washing_machine_clock_devider|counter\(9)))

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
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \washing_machine_clock_devider|counter\(9),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[5]~7\,
	cin0 => \washing_machine_clock_devider|counter[8]~13\,
	cin1 => \washing_machine_clock_devider|counter[8]~13COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(9),
	cout0 => \washing_machine_clock_devider|counter[9]~15\,
	cout1 => \washing_machine_clock_devider|counter[9]~15COUT1_72\);

-- Location: LC_X3_Y2_N4
\washing_machine_clock_devider|counter[10]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(10) = DFFEAS(\washing_machine_clock_devider|counter\(10) $ ((((!(!\washing_machine_clock_devider|counter[5]~7\ & \washing_machine_clock_devider|counter[9]~15\) # (\washing_machine_clock_devider|counter[5]~7\ & 
-- \washing_machine_clock_devider|counter[9]~15COUT1_72\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[10]~17\ = CARRY((\washing_machine_clock_devider|counter\(10) & ((!\washing_machine_clock_devider|counter[9]~15COUT1_72\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \washing_machine_clock_devider|counter\(10),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[5]~7\,
	cin0 => \washing_machine_clock_devider|counter[9]~15\,
	cin1 => \washing_machine_clock_devider|counter[9]~15COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(10),
	cout => \washing_machine_clock_devider|counter[10]~17\);

-- Location: LC_X3_Y2_N5
\washing_machine_clock_devider|counter[11]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(11) = DFFEAS(\washing_machine_clock_devider|counter\(11) $ ((((\washing_machine_clock_devider|counter[10]~17\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , 
-- \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[11]~19\ = CARRY(((!\washing_machine_clock_devider|counter[10]~17\)) # (!\washing_machine_clock_devider|counter\(11)))
-- \washing_machine_clock_devider|counter[11]~19COUT1_73\ = CARRY(((!\washing_machine_clock_devider|counter[10]~17\)) # (!\washing_machine_clock_devider|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \washing_machine_clock_devider|counter\(11),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[10]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(11),
	cout0 => \washing_machine_clock_devider|counter[11]~19\,
	cout1 => \washing_machine_clock_devider|counter[11]~19COUT1_73\);

-- Location: LC_X3_Y2_N6
\washing_machine_clock_devider|counter[12]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(12) = DFFEAS(\washing_machine_clock_devider|counter\(12) $ ((((!(!\washing_machine_clock_devider|counter[10]~17\ & \washing_machine_clock_devider|counter[11]~19\) # (\washing_machine_clock_devider|counter[10]~17\ & 
-- \washing_machine_clock_devider|counter[11]~19COUT1_73\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[12]~21\ = CARRY((\washing_machine_clock_devider|counter\(12) & ((!\washing_machine_clock_devider|counter[11]~19\))))
-- \washing_machine_clock_devider|counter[12]~21COUT1_74\ = CARRY((\washing_machine_clock_devider|counter\(12) & ((!\washing_machine_clock_devider|counter[11]~19COUT1_73\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \washing_machine_clock_devider|counter\(12),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[10]~17\,
	cin0 => \washing_machine_clock_devider|counter[11]~19\,
	cin1 => \washing_machine_clock_devider|counter[11]~19COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(12),
	cout0 => \washing_machine_clock_devider|counter[12]~21\,
	cout1 => \washing_machine_clock_devider|counter[12]~21COUT1_74\);

-- Location: LC_X3_Y2_N7
\washing_machine_clock_devider|counter[13]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(13) = DFFEAS((\washing_machine_clock_devider|counter\(13) $ (((!\washing_machine_clock_devider|counter[10]~17\ & \washing_machine_clock_devider|counter[12]~21\) # (\washing_machine_clock_devider|counter[10]~17\ & 
-- \washing_machine_clock_devider|counter[12]~21COUT1_74\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[13]~23\ = CARRY(((!\washing_machine_clock_devider|counter[12]~21\) # (!\washing_machine_clock_devider|counter\(13))))
-- \washing_machine_clock_devider|counter[13]~23COUT1_75\ = CARRY(((!\washing_machine_clock_devider|counter[12]~21COUT1_74\) # (!\washing_machine_clock_devider|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \washing_machine_clock_devider|counter\(13),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[10]~17\,
	cin0 => \washing_machine_clock_devider|counter[12]~21\,
	cin1 => \washing_machine_clock_devider|counter[12]~21COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(13),
	cout0 => \washing_machine_clock_devider|counter[13]~23\,
	cout1 => \washing_machine_clock_devider|counter[13]~23COUT1_75\);

-- Location: LC_X3_Y2_N8
\washing_machine_clock_devider|counter[14]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(14) = DFFEAS(\washing_machine_clock_devider|counter\(14) $ ((((!(!\washing_machine_clock_devider|counter[10]~17\ & \washing_machine_clock_devider|counter[13]~23\) # (\washing_machine_clock_devider|counter[10]~17\ & 
-- \washing_machine_clock_devider|counter[13]~23COUT1_75\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[14]~25\ = CARRY((\washing_machine_clock_devider|counter\(14) & ((!\washing_machine_clock_devider|counter[13]~23\))))
-- \washing_machine_clock_devider|counter[14]~25COUT1_76\ = CARRY((\washing_machine_clock_devider|counter\(14) & ((!\washing_machine_clock_devider|counter[13]~23COUT1_75\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \washing_machine_clock_devider|counter\(14),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[10]~17\,
	cin0 => \washing_machine_clock_devider|counter[13]~23\,
	cin1 => \washing_machine_clock_devider|counter[13]~23COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(14),
	cout0 => \washing_machine_clock_devider|counter[14]~25\,
	cout1 => \washing_machine_clock_devider|counter[14]~25COUT1_76\);

-- Location: LC_X3_Y2_N9
\washing_machine_clock_devider|counter[15]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(15) = DFFEAS((\washing_machine_clock_devider|counter\(15) $ (((!\washing_machine_clock_devider|counter[10]~17\ & \washing_machine_clock_devider|counter[14]~25\) # (\washing_machine_clock_devider|counter[10]~17\ & 
-- \washing_machine_clock_devider|counter[14]~25COUT1_76\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[15]~27\ = CARRY(((!\washing_machine_clock_devider|counter[14]~25COUT1_76\) # (!\washing_machine_clock_devider|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \washing_machine_clock_devider|counter\(15),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[10]~17\,
	cin0 => \washing_machine_clock_devider|counter[14]~25\,
	cin1 => \washing_machine_clock_devider|counter[14]~25COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(15),
	cout => \washing_machine_clock_devider|counter[15]~27\);

-- Location: LC_X4_Y2_N0
\washing_machine_clock_devider|counter[16]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(16) = DFFEAS((\washing_machine_clock_devider|counter\(16) $ ((!\washing_machine_clock_devider|counter[15]~27\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , 
-- \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[16]~29\ = CARRY(((\washing_machine_clock_devider|counter\(16) & !\washing_machine_clock_devider|counter[15]~27\)))
-- \washing_machine_clock_devider|counter[16]~29COUT1_77\ = CARRY(((\washing_machine_clock_devider|counter\(16) & !\washing_machine_clock_devider|counter[15]~27\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \washing_machine_clock_devider|counter\(16),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[15]~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(16),
	cout0 => \washing_machine_clock_devider|counter[16]~29\,
	cout1 => \washing_machine_clock_devider|counter[16]~29COUT1_77\);

-- Location: LC_X4_Y2_N1
\washing_machine_clock_devider|counter[17]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(17) = DFFEAS((\washing_machine_clock_devider|counter\(17) $ (((!\washing_machine_clock_devider|counter[15]~27\ & \washing_machine_clock_devider|counter[16]~29\) # (\washing_machine_clock_devider|counter[15]~27\ & 
-- \washing_machine_clock_devider|counter[16]~29COUT1_77\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[17]~31\ = CARRY(((!\washing_machine_clock_devider|counter[16]~29\) # (!\washing_machine_clock_devider|counter\(17))))
-- \washing_machine_clock_devider|counter[17]~31COUT1_78\ = CARRY(((!\washing_machine_clock_devider|counter[16]~29COUT1_77\) # (!\washing_machine_clock_devider|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \washing_machine_clock_devider|counter\(17),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[15]~27\,
	cin0 => \washing_machine_clock_devider|counter[16]~29\,
	cin1 => \washing_machine_clock_devider|counter[16]~29COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(17),
	cout0 => \washing_machine_clock_devider|counter[17]~31\,
	cout1 => \washing_machine_clock_devider|counter[17]~31COUT1_78\);

-- Location: LC_X4_Y2_N2
\washing_machine_clock_devider|counter[18]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(18) = DFFEAS((\washing_machine_clock_devider|counter\(18) $ ((!(!\washing_machine_clock_devider|counter[15]~27\ & \washing_machine_clock_devider|counter[17]~31\) # (\washing_machine_clock_devider|counter[15]~27\ & 
-- \washing_machine_clock_devider|counter[17]~31COUT1_78\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[18]~33\ = CARRY(((\washing_machine_clock_devider|counter\(18) & !\washing_machine_clock_devider|counter[17]~31\)))
-- \washing_machine_clock_devider|counter[18]~33COUT1_79\ = CARRY(((\washing_machine_clock_devider|counter\(18) & !\washing_machine_clock_devider|counter[17]~31COUT1_78\)))

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
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \washing_machine_clock_devider|counter\(18),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[15]~27\,
	cin0 => \washing_machine_clock_devider|counter[17]~31\,
	cin1 => \washing_machine_clock_devider|counter[17]~31COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(18),
	cout0 => \washing_machine_clock_devider|counter[18]~33\,
	cout1 => \washing_machine_clock_devider|counter[18]~33COUT1_79\);

-- Location: LC_X4_Y2_N3
\washing_machine_clock_devider|counter[19]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(19) = DFFEAS(\washing_machine_clock_devider|counter\(19) $ (((((!\washing_machine_clock_devider|counter[15]~27\ & \washing_machine_clock_devider|counter[18]~33\) # (\washing_machine_clock_devider|counter[15]~27\ & 
-- \washing_machine_clock_devider|counter[18]~33COUT1_79\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[19]~35\ = CARRY(((!\washing_machine_clock_devider|counter[18]~33\)) # (!\washing_machine_clock_devider|counter\(19)))
-- \washing_machine_clock_devider|counter[19]~35COUT1_80\ = CARRY(((!\washing_machine_clock_devider|counter[18]~33COUT1_79\)) # (!\washing_machine_clock_devider|counter\(19)))

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
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \washing_machine_clock_devider|counter\(19),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[15]~27\,
	cin0 => \washing_machine_clock_devider|counter[18]~33\,
	cin1 => \washing_machine_clock_devider|counter[18]~33COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(19),
	cout0 => \washing_machine_clock_devider|counter[19]~35\,
	cout1 => \washing_machine_clock_devider|counter[19]~35COUT1_80\);

-- Location: LC_X4_Y2_N4
\washing_machine_clock_devider|counter[20]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(20) = DFFEAS(\washing_machine_clock_devider|counter\(20) $ ((((!(!\washing_machine_clock_devider|counter[15]~27\ & \washing_machine_clock_devider|counter[19]~35\) # (\washing_machine_clock_devider|counter[15]~27\ & 
-- \washing_machine_clock_devider|counter[19]~35COUT1_80\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[20]~37\ = CARRY((\washing_machine_clock_devider|counter\(20) & ((!\washing_machine_clock_devider|counter[19]~35COUT1_80\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \washing_machine_clock_devider|counter\(20),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[15]~27\,
	cin0 => \washing_machine_clock_devider|counter[19]~35\,
	cin1 => \washing_machine_clock_devider|counter[19]~35COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(20),
	cout => \washing_machine_clock_devider|counter[20]~37\);

-- Location: LC_X4_Y2_N5
\washing_machine_clock_devider|counter[21]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(21) = DFFEAS(\washing_machine_clock_devider|counter\(21) $ ((((\washing_machine_clock_devider|counter[20]~37\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , 
-- \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[21]~39\ = CARRY(((!\washing_machine_clock_devider|counter[20]~37\)) # (!\washing_machine_clock_devider|counter\(21)))
-- \washing_machine_clock_devider|counter[21]~39COUT1_81\ = CARRY(((!\washing_machine_clock_devider|counter[20]~37\)) # (!\washing_machine_clock_devider|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \washing_machine_clock_devider|counter\(21),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[20]~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(21),
	cout0 => \washing_machine_clock_devider|counter[21]~39\,
	cout1 => \washing_machine_clock_devider|counter[21]~39COUT1_81\);

-- Location: LC_X4_Y2_N6
\washing_machine_clock_devider|counter[22]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(22) = DFFEAS(\washing_machine_clock_devider|counter\(22) $ ((((!(!\washing_machine_clock_devider|counter[20]~37\ & \washing_machine_clock_devider|counter[21]~39\) # (\washing_machine_clock_devider|counter[20]~37\ & 
-- \washing_machine_clock_devider|counter[21]~39COUT1_81\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[22]~41\ = CARRY((\washing_machine_clock_devider|counter\(22) & ((!\washing_machine_clock_devider|counter[21]~39\))))
-- \washing_machine_clock_devider|counter[22]~41COUT1_82\ = CARRY((\washing_machine_clock_devider|counter\(22) & ((!\washing_machine_clock_devider|counter[21]~39COUT1_81\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \washing_machine_clock_devider|counter\(22),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[20]~37\,
	cin0 => \washing_machine_clock_devider|counter[21]~39\,
	cin1 => \washing_machine_clock_devider|counter[21]~39COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(22),
	cout0 => \washing_machine_clock_devider|counter[22]~41\,
	cout1 => \washing_machine_clock_devider|counter[22]~41COUT1_82\);

-- Location: LC_X4_Y2_N7
\washing_machine_clock_devider|counter[23]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(23) = DFFEAS((\washing_machine_clock_devider|counter\(23) $ (((!\washing_machine_clock_devider|counter[20]~37\ & \washing_machine_clock_devider|counter[22]~41\) # (\washing_machine_clock_devider|counter[20]~37\ & 
-- \washing_machine_clock_devider|counter[22]~41COUT1_82\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[23]~43\ = CARRY(((!\washing_machine_clock_devider|counter[22]~41\) # (!\washing_machine_clock_devider|counter\(23))))
-- \washing_machine_clock_devider|counter[23]~43COUT1_83\ = CARRY(((!\washing_machine_clock_devider|counter[22]~41COUT1_82\) # (!\washing_machine_clock_devider|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \washing_machine_clock_devider|counter\(23),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[20]~37\,
	cin0 => \washing_machine_clock_devider|counter[22]~41\,
	cin1 => \washing_machine_clock_devider|counter[22]~41COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(23),
	cout0 => \washing_machine_clock_devider|counter[23]~43\,
	cout1 => \washing_machine_clock_devider|counter[23]~43COUT1_83\);

-- Location: LC_X4_Y2_N8
\washing_machine_clock_devider|counter[24]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(24) = DFFEAS(\washing_machine_clock_devider|counter\(24) $ ((((!(!\washing_machine_clock_devider|counter[20]~37\ & \washing_machine_clock_devider|counter[23]~43\) # (\washing_machine_clock_devider|counter[20]~37\ & 
-- \washing_machine_clock_devider|counter[23]~43COUT1_83\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[24]~45\ = CARRY((\washing_machine_clock_devider|counter\(24) & ((!\washing_machine_clock_devider|counter[23]~43\))))
-- \washing_machine_clock_devider|counter[24]~45COUT1_84\ = CARRY((\washing_machine_clock_devider|counter\(24) & ((!\washing_machine_clock_devider|counter[23]~43COUT1_83\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \washing_machine_clock_devider|counter\(24),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[20]~37\,
	cin0 => \washing_machine_clock_devider|counter[23]~43\,
	cin1 => \washing_machine_clock_devider|counter[23]~43COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(24),
	cout0 => \washing_machine_clock_devider|counter[24]~45\,
	cout1 => \washing_machine_clock_devider|counter[24]~45COUT1_84\);

-- Location: LC_X4_Y2_N9
\washing_machine_clock_devider|counter[25]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(25) = DFFEAS((\washing_machine_clock_devider|counter\(25) $ (((!\washing_machine_clock_devider|counter[20]~37\ & \washing_machine_clock_devider|counter[24]~45\) # (\washing_machine_clock_devider|counter[20]~37\ & 
-- \washing_machine_clock_devider|counter[24]~45COUT1_84\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[25]~55\ = CARRY(((!\washing_machine_clock_devider|counter[24]~45COUT1_84\) # (!\washing_machine_clock_devider|counter\(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \washing_machine_clock_devider|counter\(25),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[20]~37\,
	cin0 => \washing_machine_clock_devider|counter[24]~45\,
	cin1 => \washing_machine_clock_devider|counter[24]~45COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(25),
	cout => \washing_machine_clock_devider|counter[25]~55\);

-- Location: LC_X5_Y2_N0
\washing_machine_clock_devider|counter[26]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(26) = DFFEAS((\washing_machine_clock_devider|counter\(26) $ ((!\washing_machine_clock_devider|counter[25]~55\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , 
-- \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[26]~57\ = CARRY(((\washing_machine_clock_devider|counter\(26) & !\washing_machine_clock_devider|counter[25]~55\)))
-- \washing_machine_clock_devider|counter[26]~57COUT1_85\ = CARRY(((\washing_machine_clock_devider|counter\(26) & !\washing_machine_clock_devider|counter[25]~55\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \washing_machine_clock_devider|counter\(26),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[25]~55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(26),
	cout0 => \washing_machine_clock_devider|counter[26]~57\,
	cout1 => \washing_machine_clock_devider|counter[26]~57COUT1_85\);

-- Location: LC_X5_Y2_N1
\washing_machine_clock_devider|counter[27]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(27) = DFFEAS((\washing_machine_clock_devider|counter\(27) $ (((!\washing_machine_clock_devider|counter[25]~55\ & \washing_machine_clock_devider|counter[26]~57\) # (\washing_machine_clock_devider|counter[25]~55\ & 
-- \washing_machine_clock_devider|counter[26]~57COUT1_85\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[27]~47\ = CARRY(((!\washing_machine_clock_devider|counter[26]~57\) # (!\washing_machine_clock_devider|counter\(27))))
-- \washing_machine_clock_devider|counter[27]~47COUT1_86\ = CARRY(((!\washing_machine_clock_devider|counter[26]~57COUT1_85\) # (!\washing_machine_clock_devider|counter\(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \washing_machine_clock_devider|counter\(27),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[25]~55\,
	cin0 => \washing_machine_clock_devider|counter[26]~57\,
	cin1 => \washing_machine_clock_devider|counter[26]~57COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(27),
	cout0 => \washing_machine_clock_devider|counter[27]~47\,
	cout1 => \washing_machine_clock_devider|counter[27]~47COUT1_86\);

-- Location: LC_X5_Y2_N2
\washing_machine_clock_devider|counter[28]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(28) = DFFEAS((\washing_machine_clock_devider|counter\(28) $ ((!(!\washing_machine_clock_devider|counter[25]~55\ & \washing_machine_clock_devider|counter[27]~47\) # (\washing_machine_clock_devider|counter[25]~55\ & 
-- \washing_machine_clock_devider|counter[27]~47COUT1_86\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[28]~49\ = CARRY(((\washing_machine_clock_devider|counter\(28) & !\washing_machine_clock_devider|counter[27]~47\)))
-- \washing_machine_clock_devider|counter[28]~49COUT1_87\ = CARRY(((\washing_machine_clock_devider|counter\(28) & !\washing_machine_clock_devider|counter[27]~47COUT1_86\)))

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
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \washing_machine_clock_devider|counter\(28),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[25]~55\,
	cin0 => \washing_machine_clock_devider|counter[27]~47\,
	cin1 => \washing_machine_clock_devider|counter[27]~47COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(28),
	cout0 => \washing_machine_clock_devider|counter[28]~49\,
	cout1 => \washing_machine_clock_devider|counter[28]~49COUT1_87\);

-- Location: LC_X5_Y2_N3
\washing_machine_clock_devider|counter[29]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(29) = DFFEAS(\washing_machine_clock_devider|counter\(29) $ (((((!\washing_machine_clock_devider|counter[25]~55\ & \washing_machine_clock_devider|counter[28]~49\) # (\washing_machine_clock_devider|counter[25]~55\ & 
-- \washing_machine_clock_devider|counter[28]~49COUT1_87\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[29]~51\ = CARRY(((!\washing_machine_clock_devider|counter[28]~49\)) # (!\washing_machine_clock_devider|counter\(29)))
-- \washing_machine_clock_devider|counter[29]~51COUT1_88\ = CARRY(((!\washing_machine_clock_devider|counter[28]~49COUT1_87\)) # (!\washing_machine_clock_devider|counter\(29)))

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
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \washing_machine_clock_devider|counter\(29),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[25]~55\,
	cin0 => \washing_machine_clock_devider|counter[28]~49\,
	cin1 => \washing_machine_clock_devider|counter[28]~49COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(29),
	cout0 => \washing_machine_clock_devider|counter[29]~51\,
	cout1 => \washing_machine_clock_devider|counter[29]~51COUT1_88\);

-- Location: LC_X5_Y2_N4
\washing_machine_clock_devider|counter[30]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(30) = DFFEAS(\washing_machine_clock_devider|counter\(30) $ ((((!(!\washing_machine_clock_devider|counter[25]~55\ & \washing_machine_clock_devider|counter[29]~51\) # (\washing_machine_clock_devider|counter[25]~55\ & 
-- \washing_machine_clock_devider|counter[29]~51COUT1_88\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \washing_machine_clock_devider|LessThan0~9_combout\, )
-- \washing_machine_clock_devider|counter[30]~53\ = CARRY((\washing_machine_clock_devider|counter\(30) & ((!\washing_machine_clock_devider|counter[29]~51COUT1_88\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \washing_machine_clock_devider|counter\(30),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[25]~55\,
	cin0 => \washing_machine_clock_devider|counter[29]~51\,
	cin1 => \washing_machine_clock_devider|counter[29]~51COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(30),
	cout => \washing_machine_clock_devider|counter[30]~53\);

-- Location: LC_X5_Y2_N5
\washing_machine_clock_devider|counter[31]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|counter\(31) = DFFEAS(\washing_machine_clock_devider|counter\(31) $ ((((\washing_machine_clock_devider|counter[30]~53\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , 
-- \washing_machine_clock_devider|LessThan0~9_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \washing_machine_clock_devider|counter\(31),
	aclr => \reset~combout\,
	sclr => \washing_machine_clock_devider|LessThan0~9_combout\,
	cin => \washing_machine_clock_devider|counter[30]~53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|counter\(31));

-- Location: LC_X5_Y2_N7
\washing_machine_clock_devider|LessThan0~5\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|LessThan0~5_combout\ = (!\washing_machine_clock_devider|counter\(21) & (!\washing_machine_clock_devider|counter\(20) & (!\washing_machine_clock_devider|counter\(22) & !\washing_machine_clock_devider|counter\(19))))

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
	dataa => \washing_machine_clock_devider|counter\(21),
	datab => \washing_machine_clock_devider|counter\(20),
	datac => \washing_machine_clock_devider|counter\(22),
	datad => \washing_machine_clock_devider|counter\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_clock_devider|LessThan0~5_combout\);

-- Location: LC_X5_Y2_N9
\washing_machine_clock_devider|LessThan0~7\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|LessThan0~7_combout\ = (!\washing_machine_clock_devider|counter\(30) & (!\washing_machine_clock_devider|counter\(27) & (!\washing_machine_clock_devider|counter\(28) & !\washing_machine_clock_devider|counter\(29))))

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
	dataa => \washing_machine_clock_devider|counter\(30),
	datab => \washing_machine_clock_devider|counter\(27),
	datac => \washing_machine_clock_devider|counter\(28),
	datad => \washing_machine_clock_devider|counter\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_clock_devider|LessThan0~7_combout\);

-- Location: LC_X5_Y2_N8
\washing_machine_clock_devider|LessThan0~6\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|LessThan0~6_combout\ = ((!\washing_machine_clock_devider|counter\(23) & ((!\washing_machine_clock_devider|counter\(24)))))

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
	datab => \washing_machine_clock_devider|counter\(23),
	datad => \washing_machine_clock_devider|counter\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_clock_devider|LessThan0~6_combout\);

-- Location: LC_X5_Y2_N6
\washing_machine_clock_devider|LessThan0~8\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|LessThan0~8_combout\ = (!\washing_machine_clock_devider|counter\(25) & (!\washing_machine_clock_devider|counter\(26) & (\washing_machine_clock_devider|LessThan0~7_combout\ & 
-- \washing_machine_clock_devider|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \washing_machine_clock_devider|counter\(25),
	datab => \washing_machine_clock_devider|counter\(26),
	datac => \washing_machine_clock_devider|LessThan0~7_combout\,
	datad => \washing_machine_clock_devider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_clock_devider|LessThan0~8_combout\);

-- Location: LC_X6_Y2_N5
\washing_machine_clock_devider|LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|LessThan0~2_combout\ = (!\washing_machine_clock_devider|counter\(14) & (!\washing_machine_clock_devider|counter\(12) & (!\washing_machine_clock_devider|counter\(11) & !\washing_machine_clock_devider|counter\(13))))

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
	dataa => \washing_machine_clock_devider|counter\(14),
	datab => \washing_machine_clock_devider|counter\(12),
	datac => \washing_machine_clock_devider|counter\(11),
	datad => \washing_machine_clock_devider|counter\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_clock_devider|LessThan0~2_combout\);

-- Location: LC_X6_Y2_N9
\washing_machine_clock_devider|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|LessThan0~1_combout\ = (!\washing_machine_clock_devider|counter\(9) & (!\washing_machine_clock_devider|counter\(8) & (!\washing_machine_clock_devider|counter\(10) & !\washing_machine_clock_devider|counter\(7))))

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
	dataa => \washing_machine_clock_devider|counter\(9),
	datab => \washing_machine_clock_devider|counter\(8),
	datac => \washing_machine_clock_devider|counter\(10),
	datad => \washing_machine_clock_devider|counter\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_clock_devider|LessThan0~1_combout\);

-- Location: LC_X6_Y2_N0
\washing_machine_clock_devider|LessThan0~3\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|LessThan0~3_combout\ = (!\washing_machine_clock_devider|counter\(15) & (!\washing_machine_clock_devider|counter\(17) & (!\washing_machine_clock_devider|counter\(16) & !\washing_machine_clock_devider|counter\(18))))

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
	dataa => \washing_machine_clock_devider|counter\(15),
	datab => \washing_machine_clock_devider|counter\(17),
	datac => \washing_machine_clock_devider|counter\(16),
	datad => \washing_machine_clock_devider|counter\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_clock_devider|LessThan0~3_combout\);

-- Location: LC_X6_Y2_N6
\washing_machine_clock_devider|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|LessThan0~0_combout\ = (!\washing_machine_clock_devider|counter\(6) & (!\washing_machine_clock_devider|counter\(5) & ((!\washing_machine_clock_devider|counter\(3)) # (!\washing_machine_clock_devider|counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0105",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \washing_machine_clock_devider|counter\(6),
	datab => \washing_machine_clock_devider|counter\(4),
	datac => \washing_machine_clock_devider|counter\(5),
	datad => \washing_machine_clock_devider|counter\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_clock_devider|LessThan0~0_combout\);

-- Location: LC_X6_Y2_N7
\washing_machine_clock_devider|LessThan0~4\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|LessThan0~4_combout\ = (\washing_machine_clock_devider|LessThan0~2_combout\ & (\washing_machine_clock_devider|LessThan0~1_combout\ & (\washing_machine_clock_devider|LessThan0~3_combout\ & 
-- \washing_machine_clock_devider|LessThan0~0_combout\)))

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
	dataa => \washing_machine_clock_devider|LessThan0~2_combout\,
	datab => \washing_machine_clock_devider|LessThan0~1_combout\,
	datac => \washing_machine_clock_devider|LessThan0~3_combout\,
	datad => \washing_machine_clock_devider|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_clock_devider|LessThan0~4_combout\);

-- Location: LC_X6_Y2_N8
\washing_machine_clock_devider|LessThan0~9\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|LessThan0~9_combout\ = (!\washing_machine_clock_devider|counter\(31) & (((!\washing_machine_clock_devider|LessThan0~4_combout\) # (!\washing_machine_clock_devider|LessThan0~8_combout\)) # 
-- (!\washing_machine_clock_devider|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1555",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \washing_machine_clock_devider|counter\(31),
	datab => \washing_machine_clock_devider|LessThan0~5_combout\,
	datac => \washing_machine_clock_devider|LessThan0~8_combout\,
	datad => \washing_machine_clock_devider|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_clock_devider|LessThan0~9_combout\);

-- Location: LC_X6_Y2_N4
\washing_machine_clock_devider|curr_out\ : maxv_lcell
-- Equation(s):
-- \washing_machine_clock_devider|curr_out~regout\ = DFFEAS((\washing_machine_clock_devider|curr_out~regout\ $ (((!\reset~combout\ & \washing_machine_clock_devider|LessThan0~9_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \reset~combout\,
	datac => \washing_machine_clock_devider|curr_out~regout\,
	datad => \washing_machine_clock_devider|LessThan0~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_clock_devider|curr_out~regout\);

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_start,
	combout => \start~combout\);

-- Location: LC_X6_Y1_N4
\washing_machine_driver|state[1]~2\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|state[1]~2_combout\ = (((\washing_machine_driver|curr_state\(1)) # (!\washing_machine_driver|curr_state[0]~en_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \washing_machine_driver|curr_state[0]~en_regout\,
	datad => \washing_machine_driver|curr_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|state[1]~2_combout\);

-- Location: LC_X4_Y4_N7
\sev_segment_driver|sevSegIndex~0\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|sevSegIndex~0_combout\ = (((!\reset~combout\ & !\start~combout\)))

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
	datac => \reset~combout\,
	datad => \start~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|sevSegIndex~0_combout\);

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\userProg[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_userProg(0),
	combout => \userProg~combout\(0));

-- Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\userProg[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_userProg(2),
	combout => \userProg~combout\(2));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\userProg[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_userProg(3),
	combout => \userProg~combout\(3));

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\userProg[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_userProg(1),
	combout => \userProg~combout\(1));

-- Location: LC_X7_Y1_N1
\washing_machine_driver|Equal4~0\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|Equal4~0_combout\ = ((!\userProg~combout\(2) & (!\userProg~combout\(3) & !\userProg~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \userProg~combout\(2),
	datac => \userProg~combout\(3),
	datad => \userProg~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|Equal4~0_combout\);

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\userProg[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_userProg(4),
	combout => \userProg~combout\(4));

-- Location: LC_X7_Y2_N8
\washing_machine_driver|Equal1~0\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|Equal1~0_combout\ = (!\userProg~combout\(0) & (((!\userProg~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(0),
	datac => \userProg~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|Equal1~0_combout\);

-- Location: LC_X7_Y1_N6
\washing_machine_driver|Equal2~0\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|Equal2~0_combout\ = (!\userProg~combout\(1) & (\userProg~combout\(2) & (!\userProg~combout\(3) & \washing_machine_driver|Equal1~0_combout\)))

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
	dataa => \userProg~combout\(1),
	datab => \userProg~combout\(2),
	datac => \userProg~combout\(3),
	datad => \washing_machine_driver|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|Equal2~0_combout\);

-- Location: LC_X7_Y2_N6
\washing_machine_driver|wash_counter~16\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|wash_counter~16_combout\ = (!\washing_machine_driver|Equal2~0_combout\ & ((\userProg~combout\(0)) # ((!\userProg~combout\(4)) # (!\washing_machine_driver|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00bf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(0),
	datab => \washing_machine_driver|Equal4~0_combout\,
	datac => \userProg~combout\(4),
	datad => \washing_machine_driver|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|wash_counter~16_combout\);

-- Location: LC_X7_Y1_N7
\washing_machine_driver|Equal3~0\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|Equal3~0_combout\ = (\userProg~combout\(1) & (!\userProg~combout\(2) & (!\userProg~combout\(3) & \washing_machine_driver|Equal1~0_combout\)))

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
	dataa => \userProg~combout\(1),
	datab => \userProg~combout\(2),
	datac => \userProg~combout\(3),
	datad => \washing_machine_driver|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|Equal3~0_combout\);

-- Location: LC_X7_Y2_N2
\washing_machine_driver|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|Equal0~0_combout\ = (\userProg~combout\(0)) # (((!\userProg~combout\(4))) # (!\washing_machine_driver|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfbf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(0),
	datab => \washing_machine_driver|Equal4~0_combout\,
	datac => \userProg~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|Equal0~0_combout\);

-- Location: LC_X7_Y1_N2
\washing_machine_driver|wash_counter~9\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|wash_counter~9_combout\ = (!\washing_machine_driver|Equal2~0_combout\ & (!\washing_machine_driver|Equal3~0_combout\ & (\washing_machine_driver|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \washing_machine_driver|Equal2~0_combout\,
	datab => \washing_machine_driver|Equal3~0_combout\,
	datac => \washing_machine_driver|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|wash_counter~9_combout\);

-- Location: LC_X7_Y2_N5
\washing_machine_driver|Equal4~1\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|Equal4~1_combout\ = (\userProg~combout\(0) & (\washing_machine_driver|Equal4~0_combout\ & (!\userProg~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(0),
	datab => \washing_machine_driver|Equal4~0_combout\,
	datac => \userProg~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|Equal4~1_combout\);

-- Location: LC_X7_Y1_N0
\washing_machine_driver|Equal1~1\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|Equal1~1_combout\ = (!\userProg~combout\(1) & (!\userProg~combout\(2) & (\userProg~combout\(3) & \washing_machine_driver|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(1),
	datab => \userProg~combout\(2),
	datac => \userProg~combout\(3),
	datad => \washing_machine_driver|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|Equal1~1_combout\);

-- Location: LC_X7_Y2_N9
\washing_machine_driver|wash_counter[1]~10\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|wash_counter[1]~10_combout\ = (\start~combout\ & (((!\washing_machine_driver|Equal4~1_combout\ & !\washing_machine_driver|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datac => \washing_machine_driver|Equal4~1_combout\,
	datad => \washing_machine_driver|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|wash_counter[1]~10_combout\);

-- Location: LC_X3_Y1_N8
\washing_machine_driver|RINSE_counter[3]~7\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|RINSE_counter[3]~7_combout\ = ((!\reset~combout\ & ((!\washing_machine_driver|wash_counter[1]~10_combout\) # (!\washing_machine_driver|wash_counter~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0333",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datac => \washing_machine_driver|wash_counter~9_combout\,
	datad => \washing_machine_driver|wash_counter[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|RINSE_counter[3]~7_combout\);

-- Location: LC_X6_Y1_N8
\washing_machine_driver|zero_flag~3\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|zero_flag~3_combout\ = ((\washing_machine_driver|curr_state[0]~en_regout\ & (\washing_machine_driver|curr_state\(0) & !\washing_machine_driver|curr_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \washing_machine_driver|curr_state[0]~en_regout\,
	datac => \washing_machine_driver|curr_state\(0),
	datad => \washing_machine_driver|curr_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|zero_flag~3_combout\);

-- Location: LC_X6_Y1_N9
\washing_machine_driver|SPIN_counter[3]~0\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|SPIN_counter[3]~0_combout\ = ((!\start~combout\ & ((\washing_machine_driver|zero_flag~1_combout\) # (!\washing_machine_driver|zero_flag~3_combout\)))) # (!\washing_machine_driver|RINSE_counter[3]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7577",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \washing_machine_driver|RINSE_counter[3]~7_combout\,
	datab => \start~combout\,
	datac => \washing_machine_driver|zero_flag~1_combout\,
	datad => \washing_machine_driver|zero_flag~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|SPIN_counter[3]~0_combout\);

-- Location: LC_X6_Y1_N1
\washing_machine_driver|SPIN_counter[0]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|SPIN_counter\(0) = DFFEAS(((\start~combout\ & (!\washing_machine_driver|Equal3~0_combout\)) # (!\start~combout\ & ((!\washing_machine_driver|SPIN_counter\(0))))), GLOBAL(\washing_machine_clock_devider|curr_out~regout\), VCC, , , 
-- \washing_machine_driver|SPIN_counter\(0), , , \washing_machine_driver|SPIN_counter[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5533",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \washing_machine_clock_devider|curr_out~regout\,
	dataa => \washing_machine_driver|Equal3~0_combout\,
	datab => \washing_machine_driver|SPIN_counter\(0),
	datac => \washing_machine_driver|SPIN_counter\(0),
	datad => \start~combout\,
	aclr => GND,
	sload => \washing_machine_driver|SPIN_counter[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_driver|SPIN_counter\(0));

-- Location: LC_X7_Y1_N9
\washing_machine_driver|Add1~0\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|Add1~0_combout\ = ((\washing_machine_driver|SPIN_counter\(0) $ (\washing_machine_driver|SPIN_counter\(1))))

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
	datac => \washing_machine_driver|SPIN_counter\(0),
	datad => \washing_machine_driver|SPIN_counter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|Add1~0_combout\);

-- Location: LC_X7_Y1_N8
\washing_machine_driver|SPIN_counter[1]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|SPIN_counter\(1) = DFFEAS((\start~combout\ & (\washing_machine_driver|Equal0~0_combout\)) # (!\start~combout\ & (((!\washing_machine_driver|Add1~0_combout\)))), GLOBAL(\washing_machine_clock_devider|curr_out~regout\), VCC, , , 
-- \washing_machine_driver|SPIN_counter\(1), , , \washing_machine_driver|SPIN_counter[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88bb",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \washing_machine_clock_devider|curr_out~regout\,
	dataa => \washing_machine_driver|Equal0~0_combout\,
	datab => \start~combout\,
	datac => \washing_machine_driver|SPIN_counter\(1),
	datad => \washing_machine_driver|Add1~0_combout\,
	aclr => GND,
	sload => \washing_machine_driver|SPIN_counter[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_driver|SPIN_counter\(1));

-- Location: LC_X6_Y1_N2
\washing_machine_driver|Add1~1\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|Add1~1_combout\ = (\washing_machine_driver|SPIN_counter\(2) $ (((\washing_machine_driver|SPIN_counter\(0)) # (\washing_machine_driver|SPIN_counter\(1)))))

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
	datab => \washing_machine_driver|SPIN_counter\(0),
	datac => \washing_machine_driver|SPIN_counter\(2),
	datad => \washing_machine_driver|SPIN_counter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|Add1~1_combout\);

-- Location: LC_X6_Y1_N0
\washing_machine_driver|SPIN_counter[2]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|SPIN_counter\(2) = DFFEAS((\start~combout\ & (!\washing_machine_driver|wash_counter~16_combout\)) # (!\start~combout\ & (((!\washing_machine_driver|Add1~1_combout\)))), GLOBAL(\washing_machine_clock_devider|curr_out~regout\), VCC, 
-- , , \washing_machine_driver|SPIN_counter\(2), , , \washing_machine_driver|SPIN_counter[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4477",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \washing_machine_clock_devider|curr_out~regout\,
	dataa => \washing_machine_driver|wash_counter~16_combout\,
	datab => \start~combout\,
	datac => \washing_machine_driver|SPIN_counter\(2),
	datad => \washing_machine_driver|Add1~1_combout\,
	aclr => GND,
	sload => \washing_machine_driver|SPIN_counter[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_driver|SPIN_counter\(2));

-- Location: LC_X6_Y1_N3
\washing_machine_driver|Add1~2\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|Add1~2_combout\ = \washing_machine_driver|SPIN_counter\(3) $ (((\washing_machine_driver|SPIN_counter\(0)) # ((\washing_machine_driver|SPIN_counter\(2)) # (\washing_machine_driver|SPIN_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3336",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \washing_machine_driver|SPIN_counter\(0),
	datab => \washing_machine_driver|SPIN_counter\(3),
	datac => \washing_machine_driver|SPIN_counter\(2),
	datad => \washing_machine_driver|SPIN_counter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|Add1~2_combout\);

-- Location: LC_X7_Y1_N4
\washing_machine_driver|SPIN_counter~1\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|SPIN_counter~1_combout\ = (!\userProg~combout\(3) & (\washing_machine_driver|Equal1~0_combout\ & (\userProg~combout\(1) $ (\userProg~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0600",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(1),
	datab => \userProg~combout\(2),
	datac => \userProg~combout\(3),
	datad => \washing_machine_driver|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|SPIN_counter~1_combout\);

-- Location: LC_X6_Y1_N7
\washing_machine_driver|SPIN_counter[3]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|SPIN_counter\(3) = DFFEAS(((\start~combout\ & ((\washing_machine_driver|SPIN_counter~1_combout\))) # (!\start~combout\ & (!\washing_machine_driver|Add1~2_combout\))), GLOBAL(\washing_machine_clock_devider|curr_out~regout\), VCC, , 
-- , \washing_machine_driver|SPIN_counter\(3), , , \washing_machine_driver|SPIN_counter[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc55",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \washing_machine_clock_devider|curr_out~regout\,
	dataa => \washing_machine_driver|Add1~2_combout\,
	datab => \washing_machine_driver|SPIN_counter~1_combout\,
	datac => \washing_machine_driver|SPIN_counter\(3),
	datad => \start~combout\,
	aclr => GND,
	sload => \washing_machine_driver|SPIN_counter[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_driver|SPIN_counter\(3));

-- Location: LC_X6_Y1_N6
\washing_machine_driver|zero_flag~1\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|zero_flag~1_combout\ = ((!\washing_machine_driver|SPIN_counter\(2) & (!\washing_machine_driver|SPIN_counter\(3) & !\washing_machine_driver|SPIN_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \washing_machine_driver|SPIN_counter\(2),
	datac => \washing_machine_driver|SPIN_counter\(3),
	datad => \washing_machine_driver|SPIN_counter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|zero_flag~1_combout\);

-- Location: LC_X7_Y2_N4
\washing_machine_driver|RINSE_counter~8\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|RINSE_counter~8_combout\ = (!\washing_machine_driver|Equal1~1_combout\ & ((\userProg~combout\(0)) # ((!\userProg~combout\(4)) # (!\washing_machine_driver|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00bf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(0),
	datab => \washing_machine_driver|Equal4~0_combout\,
	datac => \userProg~combout\(4),
	datad => \washing_machine_driver|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|RINSE_counter~8_combout\);

-- Location: LC_X5_Y1_N2
\washing_machine_driver|RINSE_counter[3]~3\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|RINSE_counter[3]~3_combout\ = (!\start~combout\ & ((\washing_machine_driver|state[0]~3_combout\) # ((\washing_machine_driver|RINSE_counter[3]~2_combout\) # (!\washing_machine_driver|state[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5455",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => \washing_machine_driver|state[0]~3_combout\,
	datac => \washing_machine_driver|RINSE_counter[3]~2_combout\,
	datad => \washing_machine_driver|state[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|RINSE_counter[3]~3_combout\);

-- Location: LC_X5_Y1_N3
\washing_machine_driver|RINSE_counter[3]~4\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|RINSE_counter[3]~4_combout\ = (\reset~combout\) # ((\washing_machine_driver|RINSE_counter[3]~3_combout\) # ((\washing_machine_driver|wash_counter[1]~10_combout\ & \washing_machine_driver|wash_counter~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \washing_machine_driver|wash_counter[1]~10_combout\,
	datac => \washing_machine_driver|wash_counter~9_combout\,
	datad => \washing_machine_driver|RINSE_counter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|RINSE_counter[3]~4_combout\);

-- Location: LC_X5_Y1_N4
\washing_machine_driver|RINSE_counter[0]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|RINSE_counter\(0) = DFFEAS(((\start~combout\ & (\washing_machine_driver|RINSE_counter~8_combout\)) # (!\start~combout\ & ((!\washing_machine_driver|RINSE_counter\(0))))), GLOBAL(\washing_machine_clock_devider|curr_out~regout\), 
-- VCC, , , \washing_machine_driver|RINSE_counter\(0), , , \washing_machine_driver|RINSE_counter[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa33",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \washing_machine_clock_devider|curr_out~regout\,
	dataa => \washing_machine_driver|RINSE_counter~8_combout\,
	datab => \washing_machine_driver|RINSE_counter\(0),
	datac => \washing_machine_driver|RINSE_counter\(0),
	datad => \start~combout\,
	aclr => GND,
	sload => \washing_machine_driver|RINSE_counter[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_driver|RINSE_counter\(0));

-- Location: LC_X4_Y1_N4
\washing_machine_driver|Add2~1\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|Add2~1_combout\ = (\washing_machine_driver|RINSE_counter\(1) $ ((\washing_machine_driver|RINSE_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \washing_machine_driver|RINSE_counter\(1),
	datac => \washing_machine_driver|RINSE_counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|Add2~1_combout\);

-- Location: LC_X7_Y1_N5
\washing_machine_driver|RINSE_counter~6\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|RINSE_counter~6_combout\ = (\washing_machine_driver|Equal0~0_combout\ & (((!\washing_machine_driver|Equal2~0_combout\ & !\washing_machine_driver|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \washing_machine_driver|Equal0~0_combout\,
	datac => \washing_machine_driver|Equal2~0_combout\,
	datad => \washing_machine_driver|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|RINSE_counter~6_combout\);

-- Location: LC_X4_Y1_N0
\washing_machine_driver|RINSE_counter[1]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|RINSE_counter\(1) = DFFEAS((\start~combout\ & (((!\washing_machine_driver|RINSE_counter~6_combout\)))) # (!\start~combout\ & (!\washing_machine_driver|Add2~1_combout\)), GLOBAL(\washing_machine_clock_devider|curr_out~regout\), VCC, 
-- , , \washing_machine_driver|RINSE_counter\(1), , , \washing_machine_driver|RINSE_counter[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "11dd",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \washing_machine_clock_devider|curr_out~regout\,
	dataa => \washing_machine_driver|Add2~1_combout\,
	datab => \start~combout\,
	datac => \washing_machine_driver|RINSE_counter\(1),
	datad => \washing_machine_driver|RINSE_counter~6_combout\,
	aclr => GND,
	sload => \washing_machine_driver|RINSE_counter[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_driver|RINSE_counter\(1));

-- Location: LC_X4_Y1_N3
\washing_machine_driver|Add2~2\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|Add2~2_combout\ = (\washing_machine_driver|RINSE_counter\(2) $ (((\washing_machine_driver|RINSE_counter\(1)) # (\washing_machine_driver|RINSE_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \washing_machine_driver|RINSE_counter\(1),
	datac => \washing_machine_driver|RINSE_counter\(0),
	datad => \washing_machine_driver|RINSE_counter\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|Add2~2_combout\);

-- Location: LC_X4_Y1_N9
\washing_machine_driver|RINSE_counter[2]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|RINSE_counter\(2) = DFFEAS(((\start~combout\ & ((\washing_machine_driver|RINSE_counter~8_combout\))) # (!\start~combout\ & (!\washing_machine_driver|Add2~2_combout\))), GLOBAL(\washing_machine_clock_devider|curr_out~regout\), VCC, 
-- , , \washing_machine_driver|RINSE_counter\(2), , , \washing_machine_driver|RINSE_counter[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc55",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \washing_machine_clock_devider|curr_out~regout\,
	dataa => \washing_machine_driver|Add2~2_combout\,
	datab => \washing_machine_driver|RINSE_counter~8_combout\,
	datac => \washing_machine_driver|RINSE_counter\(2),
	datad => \start~combout\,
	aclr => GND,
	sload => \washing_machine_driver|RINSE_counter[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_driver|RINSE_counter\(2));

-- Location: LC_X4_Y1_N7
\washing_machine_driver|Add2~0\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|Add2~0_combout\ = ((\washing_machine_driver|RINSE_counter\(1)) # ((\washing_machine_driver|RINSE_counter\(0)) # (\washing_machine_driver|RINSE_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \washing_machine_driver|RINSE_counter\(1),
	datac => \washing_machine_driver|RINSE_counter\(0),
	datad => \washing_machine_driver|RINSE_counter\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|Add2~0_combout\);

-- Location: LC_X4_Y1_N8
\washing_machine_driver|RINSE_counter[3]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|RINSE_counter\(3) = DFFEAS((\washing_machine_driver|RINSE_counter[3]~4_combout\ & (\washing_machine_driver|RINSE_counter\(3))) # (!\washing_machine_driver|RINSE_counter[3]~4_combout\ & (!\start~combout\ & 
-- (\washing_machine_driver|RINSE_counter\(3) $ (!\washing_machine_driver|Add2~0_combout\)))), GLOBAL(\washing_machine_clock_devider|curr_out~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa21",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \washing_machine_clock_devider|curr_out~regout\,
	dataa => \washing_machine_driver|RINSE_counter\(3),
	datab => \start~combout\,
	datac => \washing_machine_driver|Add2~0_combout\,
	datad => \washing_machine_driver|RINSE_counter[3]~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_driver|RINSE_counter\(3));

-- Location: LC_X4_Y1_N1
\washing_machine_driver|RINSE_counter[3]~2\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|RINSE_counter[3]~2_combout\ = ((!\washing_machine_driver|RINSE_counter\(2) & (!\washing_machine_driver|RINSE_counter\(1) & !\washing_machine_driver|RINSE_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \washing_machine_driver|RINSE_counter\(2),
	datac => \washing_machine_driver|RINSE_counter\(1),
	datad => \washing_machine_driver|RINSE_counter\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|RINSE_counter[3]~2_combout\);

-- Location: LC_X3_Y1_N7
\~GND\ : maxv_lcell
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \~GND~combout\);

-- Location: LC_X4_Y1_N5
\washing_machine_driver|wash_counter[4]~11\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|wash_counter[4]~11_combout\ = (((\washing_machine_driver|curr_state\(1)) # (\washing_machine_driver|curr_state\(0)))) # (!\washing_machine_driver|curr_state[0]~en_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \washing_machine_driver|curr_state[0]~en_regout\,
	datac => \washing_machine_driver|curr_state\(1),
	datad => \washing_machine_driver|curr_state\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|wash_counter[4]~11_combout\);

-- Location: LC_X3_Y1_N6
\washing_machine_driver|wash_counter[4]~12\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|wash_counter[4]~12_combout\ = (\washing_machine_driver|RINSE_counter[3]~7_combout\ & ((\start~combout\) # ((!\washing_machine_driver|wash_counter[4]~8_combout\ & !\washing_machine_driver|wash_counter[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "888c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => \washing_machine_driver|RINSE_counter[3]~7_combout\,
	datac => \washing_machine_driver|wash_counter[4]~8_combout\,
	datad => \washing_machine_driver|wash_counter[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|wash_counter[4]~12_combout\);

-- Location: LC_X7_Y1_N3
\washing_machine_driver|wash_counter~15\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|wash_counter~15_combout\ = (\userProg~combout\(2)) # ((\userProg~combout\(1) $ (!\userProg~combout\(3))) # (!\washing_machine_driver|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "edff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(1),
	datab => \userProg~combout\(2),
	datac => \userProg~combout\(3),
	datad => \washing_machine_driver|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|wash_counter~15_combout\);

-- Location: LC_X3_Y1_N0
\washing_machine_driver|wash_counter[0]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|wash_counter\(0) = DFFEAS(((!\washing_machine_driver|wash_counter\(0))), GLOBAL(\washing_machine_clock_devider|curr_out~regout\), VCC, , \washing_machine_driver|wash_counter[4]~12_combout\, \~GND~combout\, , , \start~combout\)
-- \washing_machine_driver|wash_counter[0]~14\ = CARRY(((\washing_machine_driver|wash_counter\(0))))
-- \washing_machine_driver|wash_counter[0]~14COUT1_18\ = CARRY(((\washing_machine_driver|wash_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \washing_machine_clock_devider|curr_out~regout\,
	datab => \washing_machine_driver|wash_counter\(0),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \start~combout\,
	ena => \washing_machine_driver|wash_counter[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_driver|wash_counter\(0),
	cout0 => \washing_machine_driver|wash_counter[0]~14\,
	cout1 => \washing_machine_driver|wash_counter[0]~14COUT1_18\);

-- Location: LC_X3_Y1_N1
\washing_machine_driver|wash_counter[1]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|wash_counter\(1) = DFFEAS((\washing_machine_driver|wash_counter\(1) $ ((!\washing_machine_driver|wash_counter[0]~14\))), GLOBAL(\washing_machine_clock_devider|curr_out~regout\), VCC, , 
-- \washing_machine_driver|wash_counter[4]~12_combout\, \washing_machine_driver|wash_counter~9_combout\, , , \start~combout\)
-- \washing_machine_driver|wash_counter[1]~1\ = CARRY(((!\washing_machine_driver|wash_counter\(1) & !\washing_machine_driver|wash_counter[0]~14\)))
-- \washing_machine_driver|wash_counter[1]~1COUT1_19\ = CARRY(((!\washing_machine_driver|wash_counter\(1) & !\washing_machine_driver|wash_counter[0]~14COUT1_18\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \washing_machine_clock_devider|curr_out~regout\,
	datab => \washing_machine_driver|wash_counter\(1),
	datac => \washing_machine_driver|wash_counter~9_combout\,
	aclr => GND,
	sload => \start~combout\,
	ena => \washing_machine_driver|wash_counter[4]~12_combout\,
	cin0 => \washing_machine_driver|wash_counter[0]~14\,
	cin1 => \washing_machine_driver|wash_counter[0]~14COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_driver|wash_counter\(1),
	cout0 => \washing_machine_driver|wash_counter[1]~1\,
	cout1 => \washing_machine_driver|wash_counter[1]~1COUT1_19\);

-- Location: LC_X3_Y1_N2
\washing_machine_driver|wash_counter[2]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|wash_counter\(2) = DFFEAS((\washing_machine_driver|wash_counter\(2) $ ((\washing_machine_driver|wash_counter[1]~1\))), GLOBAL(\washing_machine_clock_devider|curr_out~regout\), VCC, , 
-- \washing_machine_driver|wash_counter[4]~12_combout\, \washing_machine_driver|wash_counter~15_combout\, , , \start~combout\)
-- \washing_machine_driver|wash_counter[2]~3\ = CARRY(((\washing_machine_driver|wash_counter\(2)) # (!\washing_machine_driver|wash_counter[1]~1\)))
-- \washing_machine_driver|wash_counter[2]~3COUT1_20\ = CARRY(((\washing_machine_driver|wash_counter\(2)) # (!\washing_machine_driver|wash_counter[1]~1COUT1_19\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \washing_machine_clock_devider|curr_out~regout\,
	datab => \washing_machine_driver|wash_counter\(2),
	datac => \washing_machine_driver|wash_counter~15_combout\,
	aclr => GND,
	sload => \start~combout\,
	ena => \washing_machine_driver|wash_counter[4]~12_combout\,
	cin0 => \washing_machine_driver|wash_counter[1]~1\,
	cin1 => \washing_machine_driver|wash_counter[1]~1COUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_driver|wash_counter\(2),
	cout0 => \washing_machine_driver|wash_counter[2]~3\,
	cout1 => \washing_machine_driver|wash_counter[2]~3COUT1_20\);

-- Location: LC_X3_Y1_N3
\washing_machine_driver|wash_counter[3]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|wash_counter\(3) = DFFEAS(\washing_machine_driver|wash_counter\(3) $ ((((!\washing_machine_driver|wash_counter[2]~3\)))), GLOBAL(\washing_machine_clock_devider|curr_out~regout\), VCC, , 
-- \washing_machine_driver|wash_counter[4]~12_combout\, \~GND~combout\, , , \start~combout\)
-- \washing_machine_driver|wash_counter[3]~5\ = CARRY((!\washing_machine_driver|wash_counter\(3) & ((!\washing_machine_driver|wash_counter[2]~3\))))
-- \washing_machine_driver|wash_counter[3]~5COUT1_21\ = CARRY((!\washing_machine_driver|wash_counter\(3) & ((!\washing_machine_driver|wash_counter[2]~3COUT1_20\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \washing_machine_clock_devider|curr_out~regout\,
	dataa => \washing_machine_driver|wash_counter\(3),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \start~combout\,
	ena => \washing_machine_driver|wash_counter[4]~12_combout\,
	cin0 => \washing_machine_driver|wash_counter[2]~3\,
	cin1 => \washing_machine_driver|wash_counter[2]~3COUT1_20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_driver|wash_counter\(3),
	cout0 => \washing_machine_driver|wash_counter[3]~5\,
	cout1 => \washing_machine_driver|wash_counter[3]~5COUT1_21\);

-- Location: LC_X3_Y1_N4
\washing_machine_driver|wash_counter[4]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|wash_counter\(4) = DFFEAS(((\washing_machine_driver|wash_counter[3]~5\ $ (\washing_machine_driver|wash_counter\(4)))), GLOBAL(\washing_machine_clock_devider|curr_out~regout\), VCC, , 
-- \washing_machine_driver|wash_counter[4]~12_combout\, \washing_machine_driver|Equal2~0_combout\, , , \start~combout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \washing_machine_clock_devider|curr_out~regout\,
	datac => \washing_machine_driver|Equal2~0_combout\,
	datad => \washing_machine_driver|wash_counter\(4),
	aclr => GND,
	sload => \start~combout\,
	ena => \washing_machine_driver|wash_counter[4]~12_combout\,
	cin0 => \washing_machine_driver|wash_counter[3]~5\,
	cin1 => \washing_machine_driver|wash_counter[3]~5COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_driver|wash_counter\(4));

-- Location: LC_X3_Y1_N5
\washing_machine_driver|wash_counter[4]~8\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|wash_counter[4]~8_combout\ = (!\washing_machine_driver|wash_counter\(3) & (!\washing_machine_driver|wash_counter\(1) & (!\washing_machine_driver|wash_counter\(4) & !\washing_machine_driver|wash_counter\(2))))

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
	dataa => \washing_machine_driver|wash_counter\(3),
	datab => \washing_machine_driver|wash_counter\(1),
	datac => \washing_machine_driver|wash_counter\(4),
	datad => \washing_machine_driver|wash_counter\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|wash_counter[4]~8_combout\);

-- Location: LC_X5_Y1_N8
\washing_machine_driver|zero_flag~0\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|zero_flag~0_combout\ = (\washing_machine_driver|curr_state[0]~en_regout\ & ((\washing_machine_driver|curr_state\(1) & (\washing_machine_driver|RINSE_counter[3]~2_combout\)) # (!\washing_machine_driver|curr_state\(1) & 
-- ((\washing_machine_driver|wash_counter[4]~8_combout\))))) # (!\washing_machine_driver|curr_state[0]~en_regout\ & (((\washing_machine_driver|RINSE_counter[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \washing_machine_driver|curr_state[0]~en_regout\,
	datab => \washing_machine_driver|curr_state\(1),
	datac => \washing_machine_driver|RINSE_counter[3]~2_combout\,
	datad => \washing_machine_driver|wash_counter[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|zero_flag~0_combout\);

-- Location: LC_X5_Y1_N9
\washing_machine_driver|zero_flag~2\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|zero_flag~2_combout\ = (\washing_machine_driver|state[0]~3_combout\ & (\washing_machine_driver|zero_flag~1_combout\ & (!\washing_machine_driver|state[1]~2_combout\))) # (!\washing_machine_driver|state[0]~3_combout\ & 
-- (((\washing_machine_driver|zero_flag~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \washing_machine_driver|zero_flag~1_combout\,
	datab => \washing_machine_driver|state[1]~2_combout\,
	datac => \washing_machine_driver|state[0]~3_combout\,
	datad => \washing_machine_driver|zero_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|zero_flag~2_combout\);

-- Location: LC_X5_Y1_N7
\washing_machine_driver|curr_state[1]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|curr_state\(1) = DFFEAS((\sev_segment_driver|sevSegIndex~0_combout\ & (\washing_machine_driver|zero_flag~2_combout\ & (\washing_machine_driver|state[1]~2_combout\ $ (\washing_machine_driver|state[0]~3_combout\)))), 
-- GLOBAL(\washing_machine_clock_devider|curr_out~regout\), VCC, , \washing_machine_driver|curr_state[1]~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \washing_machine_clock_devider|curr_out~regout\,
	dataa => \washing_machine_driver|state[1]~2_combout\,
	datab => \washing_machine_driver|state[0]~3_combout\,
	datac => \sev_segment_driver|sevSegIndex~0_combout\,
	datad => \washing_machine_driver|zero_flag~2_combout\,
	aclr => GND,
	ena => \washing_machine_driver|curr_state[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_driver|curr_state\(1));

-- Location: LC_X6_Y1_N5
\sev_segment_driver|sevSeg_data[1]~9\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|sevSeg_data[1]~9_combout\ = (((\washing_machine_driver|curr_state\(0) & \washing_machine_driver|curr_state\(1))) # (!\washing_machine_driver|curr_state[0]~en_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f333",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \washing_machine_driver|curr_state[0]~en_regout\,
	datac => \washing_machine_driver|curr_state\(0),
	datad => \washing_machine_driver|curr_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|sevSeg_data[1]~9_combout\);

-- Location: LC_X5_Y1_N5
\washing_machine_driver|curr_state[1]~7\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|curr_state[1]~7_combout\ = (\start~combout\) # ((\reset~combout\) # ((!\sev_segment_driver|sevSeg_data[1]~9_combout\ & \washing_machine_driver|zero_flag~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbfa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => \sev_segment_driver|sevSeg_data[1]~9_combout\,
	datac => \reset~combout\,
	datad => \washing_machine_driver|zero_flag~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|curr_state[1]~7_combout\);

-- Location: LC_X5_Y1_N6
\washing_machine_driver|curr_state[0]~en\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|curr_state[0]~en_regout\ = DFFEAS((((!\reset~combout\))), GLOBAL(\washing_machine_clock_devider|curr_out~regout\), VCC, , \washing_machine_driver|curr_state[1]~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \washing_machine_clock_devider|curr_out~regout\,
	datac => \reset~combout\,
	aclr => GND,
	ena => \washing_machine_driver|curr_state[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_driver|curr_state[0]~en_regout\);

-- Location: LC_X5_Y1_N0
\washing_machine_driver|state[0]~3\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|state[0]~3_combout\ = (((\washing_machine_driver|curr_state\(0)) # (!\washing_machine_driver|curr_state[0]~en_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \washing_machine_driver|curr_state[0]~en_regout\,
	datad => \washing_machine_driver|curr_state\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \washing_machine_driver|state[0]~3_combout\);

-- Location: LC_X5_Y1_N1
\washing_machine_driver|curr_state[0]\ : maxv_lcell
-- Equation(s):
-- \washing_machine_driver|curr_state\(0) = DFFEAS((!\start~combout\ & (!\washing_machine_driver|state[0]~3_combout\ & (!\reset~combout\ & \washing_machine_driver|zero_flag~2_combout\))), GLOBAL(\washing_machine_clock_devider|curr_out~regout\), VCC, , 
-- \washing_machine_driver|curr_state[1]~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \washing_machine_clock_devider|curr_out~regout\,
	dataa => \start~combout\,
	datab => \washing_machine_driver|state[0]~3_combout\,
	datac => \reset~combout\,
	datad => \washing_machine_driver|zero_flag~2_combout\,
	aclr => GND,
	ena => \washing_machine_driver|curr_state[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \washing_machine_driver|curr_state\(0));

-- Location: LC_X2_Y3_N4
\sev_seg_clock_devider|counter[0]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(0) = DFFEAS((!\sev_seg_clock_devider|counter\(0)), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[0]~3\ = CARRY((\sev_seg_clock_devider|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \sev_seg_clock_devider|counter\(0),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(0),
	cout => \sev_seg_clock_devider|counter[0]~3\);

-- Location: LC_X2_Y3_N5
\sev_seg_clock_devider|counter[1]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(1) = DFFEAS(\sev_seg_clock_devider|counter\(1) $ ((((\sev_seg_clock_devider|counter[0]~3\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[1]~5\ = CARRY(((!\sev_seg_clock_devider|counter[0]~3\)) # (!\sev_seg_clock_devider|counter\(1)))
-- \sev_seg_clock_devider|counter[1]~5COUT1_65\ = CARRY(((!\sev_seg_clock_devider|counter[0]~3\)) # (!\sev_seg_clock_devider|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \sev_seg_clock_devider|counter\(1),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[0]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(1),
	cout0 => \sev_seg_clock_devider|counter[1]~5\,
	cout1 => \sev_seg_clock_devider|counter[1]~5COUT1_65\);

-- Location: LC_X2_Y3_N6
\sev_seg_clock_devider|counter[2]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(2) = DFFEAS(\sev_seg_clock_devider|counter\(2) $ ((((!(!\sev_seg_clock_devider|counter[0]~3\ & \sev_seg_clock_devider|counter[1]~5\) # (\sev_seg_clock_devider|counter[0]~3\ & 
-- \sev_seg_clock_devider|counter[1]~5COUT1_65\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[2]~7\ = CARRY((\sev_seg_clock_devider|counter\(2) & ((!\sev_seg_clock_devider|counter[1]~5\))))
-- \sev_seg_clock_devider|counter[2]~7COUT1_66\ = CARRY((\sev_seg_clock_devider|counter\(2) & ((!\sev_seg_clock_devider|counter[1]~5COUT1_65\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \sev_seg_clock_devider|counter\(2),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[0]~3\,
	cin0 => \sev_seg_clock_devider|counter[1]~5\,
	cin1 => \sev_seg_clock_devider|counter[1]~5COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(2),
	cout0 => \sev_seg_clock_devider|counter[2]~7\,
	cout1 => \sev_seg_clock_devider|counter[2]~7COUT1_66\);

-- Location: LC_X2_Y3_N7
\sev_seg_clock_devider|counter[3]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(3) = DFFEAS((\sev_seg_clock_devider|counter\(3) $ (((!\sev_seg_clock_devider|counter[0]~3\ & \sev_seg_clock_devider|counter[2]~7\) # (\sev_seg_clock_devider|counter[0]~3\ & \sev_seg_clock_devider|counter[2]~7COUT1_66\)))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[3]~9\ = CARRY(((!\sev_seg_clock_devider|counter[2]~7\) # (!\sev_seg_clock_devider|counter\(3))))
-- \sev_seg_clock_devider|counter[3]~9COUT1_67\ = CARRY(((!\sev_seg_clock_devider|counter[2]~7COUT1_66\) # (!\sev_seg_clock_devider|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \sev_seg_clock_devider|counter\(3),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[0]~3\,
	cin0 => \sev_seg_clock_devider|counter[2]~7\,
	cin1 => \sev_seg_clock_devider|counter[2]~7COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(3),
	cout0 => \sev_seg_clock_devider|counter[3]~9\,
	cout1 => \sev_seg_clock_devider|counter[3]~9COUT1_67\);

-- Location: LC_X2_Y3_N8
\sev_seg_clock_devider|counter[4]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(4) = DFFEAS(\sev_seg_clock_devider|counter\(4) $ ((((!(!\sev_seg_clock_devider|counter[0]~3\ & \sev_seg_clock_devider|counter[3]~9\) # (\sev_seg_clock_devider|counter[0]~3\ & 
-- \sev_seg_clock_devider|counter[3]~9COUT1_67\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[4]~11\ = CARRY((\sev_seg_clock_devider|counter\(4) & ((!\sev_seg_clock_devider|counter[3]~9\))))
-- \sev_seg_clock_devider|counter[4]~11COUT1_68\ = CARRY((\sev_seg_clock_devider|counter\(4) & ((!\sev_seg_clock_devider|counter[3]~9COUT1_67\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \sev_seg_clock_devider|counter\(4),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[0]~3\,
	cin0 => \sev_seg_clock_devider|counter[3]~9\,
	cin1 => \sev_seg_clock_devider|counter[3]~9COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(4),
	cout0 => \sev_seg_clock_devider|counter[4]~11\,
	cout1 => \sev_seg_clock_devider|counter[4]~11COUT1_68\);

-- Location: LC_X2_Y3_N9
\sev_seg_clock_devider|counter[5]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(5) = DFFEAS((\sev_seg_clock_devider|counter\(5) $ (((!\sev_seg_clock_devider|counter[0]~3\ & \sev_seg_clock_devider|counter[4]~11\) # (\sev_seg_clock_devider|counter[0]~3\ & 
-- \sev_seg_clock_devider|counter[4]~11COUT1_68\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[5]~13\ = CARRY(((!\sev_seg_clock_devider|counter[4]~11COUT1_68\) # (!\sev_seg_clock_devider|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \sev_seg_clock_devider|counter\(5),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[0]~3\,
	cin0 => \sev_seg_clock_devider|counter[4]~11\,
	cin1 => \sev_seg_clock_devider|counter[4]~11COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(5),
	cout => \sev_seg_clock_devider|counter[5]~13\);

-- Location: LC_X3_Y3_N0
\sev_seg_clock_devider|counter[6]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(6) = DFFEAS((\sev_seg_clock_devider|counter\(6) $ ((!\sev_seg_clock_devider|counter[5]~13\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[6]~15\ = CARRY(((\sev_seg_clock_devider|counter\(6) & !\sev_seg_clock_devider|counter[5]~13\)))
-- \sev_seg_clock_devider|counter[6]~15COUT1_69\ = CARRY(((\sev_seg_clock_devider|counter\(6) & !\sev_seg_clock_devider|counter[5]~13\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \sev_seg_clock_devider|counter\(6),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[5]~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(6),
	cout0 => \sev_seg_clock_devider|counter[6]~15\,
	cout1 => \sev_seg_clock_devider|counter[6]~15COUT1_69\);

-- Location: LC_X3_Y3_N1
\sev_seg_clock_devider|counter[7]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(7) = DFFEAS((\sev_seg_clock_devider|counter\(7) $ (((!\sev_seg_clock_devider|counter[5]~13\ & \sev_seg_clock_devider|counter[6]~15\) # (\sev_seg_clock_devider|counter[5]~13\ & 
-- \sev_seg_clock_devider|counter[6]~15COUT1_69\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[7]~17\ = CARRY(((!\sev_seg_clock_devider|counter[6]~15\) # (!\sev_seg_clock_devider|counter\(7))))
-- \sev_seg_clock_devider|counter[7]~17COUT1_70\ = CARRY(((!\sev_seg_clock_devider|counter[6]~15COUT1_69\) # (!\sev_seg_clock_devider|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \sev_seg_clock_devider|counter\(7),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[5]~13\,
	cin0 => \sev_seg_clock_devider|counter[6]~15\,
	cin1 => \sev_seg_clock_devider|counter[6]~15COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(7),
	cout0 => \sev_seg_clock_devider|counter[7]~17\,
	cout1 => \sev_seg_clock_devider|counter[7]~17COUT1_70\);

-- Location: LC_X3_Y3_N2
\sev_seg_clock_devider|counter[8]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(8) = DFFEAS((\sev_seg_clock_devider|counter\(8) $ ((!(!\sev_seg_clock_devider|counter[5]~13\ & \sev_seg_clock_devider|counter[7]~17\) # (\sev_seg_clock_devider|counter[5]~13\ & 
-- \sev_seg_clock_devider|counter[7]~17COUT1_70\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[8]~19\ = CARRY(((\sev_seg_clock_devider|counter\(8) & !\sev_seg_clock_devider|counter[7]~17\)))
-- \sev_seg_clock_devider|counter[8]~19COUT1_71\ = CARRY(((\sev_seg_clock_devider|counter\(8) & !\sev_seg_clock_devider|counter[7]~17COUT1_70\)))

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
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \sev_seg_clock_devider|counter\(8),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[5]~13\,
	cin0 => \sev_seg_clock_devider|counter[7]~17\,
	cin1 => \sev_seg_clock_devider|counter[7]~17COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(8),
	cout0 => \sev_seg_clock_devider|counter[8]~19\,
	cout1 => \sev_seg_clock_devider|counter[8]~19COUT1_71\);

-- Location: LC_X3_Y3_N3
\sev_seg_clock_devider|counter[9]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(9) = DFFEAS(\sev_seg_clock_devider|counter\(9) $ (((((!\sev_seg_clock_devider|counter[5]~13\ & \sev_seg_clock_devider|counter[8]~19\) # (\sev_seg_clock_devider|counter[5]~13\ & 
-- \sev_seg_clock_devider|counter[8]~19COUT1_71\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[9]~21\ = CARRY(((!\sev_seg_clock_devider|counter[8]~19\)) # (!\sev_seg_clock_devider|counter\(9)))
-- \sev_seg_clock_devider|counter[9]~21COUT1_72\ = CARRY(((!\sev_seg_clock_devider|counter[8]~19COUT1_71\)) # (!\sev_seg_clock_devider|counter\(9)))

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
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \sev_seg_clock_devider|counter\(9),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[5]~13\,
	cin0 => \sev_seg_clock_devider|counter[8]~19\,
	cin1 => \sev_seg_clock_devider|counter[8]~19COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(9),
	cout0 => \sev_seg_clock_devider|counter[9]~21\,
	cout1 => \sev_seg_clock_devider|counter[9]~21COUT1_72\);

-- Location: LC_X3_Y3_N4
\sev_seg_clock_devider|counter[10]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(10) = DFFEAS(\sev_seg_clock_devider|counter\(10) $ ((((!(!\sev_seg_clock_devider|counter[5]~13\ & \sev_seg_clock_devider|counter[9]~21\) # (\sev_seg_clock_devider|counter[5]~13\ & 
-- \sev_seg_clock_devider|counter[9]~21COUT1_72\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[10]~23\ = CARRY((\sev_seg_clock_devider|counter\(10) & ((!\sev_seg_clock_devider|counter[9]~21COUT1_72\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \sev_seg_clock_devider|counter\(10),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[5]~13\,
	cin0 => \sev_seg_clock_devider|counter[9]~21\,
	cin1 => \sev_seg_clock_devider|counter[9]~21COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(10),
	cout => \sev_seg_clock_devider|counter[10]~23\);

-- Location: LC_X3_Y3_N5
\sev_seg_clock_devider|counter[11]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(11) = DFFEAS(\sev_seg_clock_devider|counter\(11) $ ((((\sev_seg_clock_devider|counter[10]~23\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[11]~25\ = CARRY(((!\sev_seg_clock_devider|counter[10]~23\)) # (!\sev_seg_clock_devider|counter\(11)))
-- \sev_seg_clock_devider|counter[11]~25COUT1_73\ = CARRY(((!\sev_seg_clock_devider|counter[10]~23\)) # (!\sev_seg_clock_devider|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \sev_seg_clock_devider|counter\(11),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[10]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(11),
	cout0 => \sev_seg_clock_devider|counter[11]~25\,
	cout1 => \sev_seg_clock_devider|counter[11]~25COUT1_73\);

-- Location: LC_X3_Y3_N6
\sev_seg_clock_devider|counter[12]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(12) = DFFEAS(\sev_seg_clock_devider|counter\(12) $ ((((!(!\sev_seg_clock_devider|counter[10]~23\ & \sev_seg_clock_devider|counter[11]~25\) # (\sev_seg_clock_devider|counter[10]~23\ & 
-- \sev_seg_clock_devider|counter[11]~25COUT1_73\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[12]~27\ = CARRY((\sev_seg_clock_devider|counter\(12) & ((!\sev_seg_clock_devider|counter[11]~25\))))
-- \sev_seg_clock_devider|counter[12]~27COUT1_74\ = CARRY((\sev_seg_clock_devider|counter\(12) & ((!\sev_seg_clock_devider|counter[11]~25COUT1_73\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \sev_seg_clock_devider|counter\(12),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[10]~23\,
	cin0 => \sev_seg_clock_devider|counter[11]~25\,
	cin1 => \sev_seg_clock_devider|counter[11]~25COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(12),
	cout0 => \sev_seg_clock_devider|counter[12]~27\,
	cout1 => \sev_seg_clock_devider|counter[12]~27COUT1_74\);

-- Location: LC_X3_Y3_N7
\sev_seg_clock_devider|counter[13]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(13) = DFFEAS((\sev_seg_clock_devider|counter\(13) $ (((!\sev_seg_clock_devider|counter[10]~23\ & \sev_seg_clock_devider|counter[12]~27\) # (\sev_seg_clock_devider|counter[10]~23\ & 
-- \sev_seg_clock_devider|counter[12]~27COUT1_74\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[13]~29\ = CARRY(((!\sev_seg_clock_devider|counter[12]~27\) # (!\sev_seg_clock_devider|counter\(13))))
-- \sev_seg_clock_devider|counter[13]~29COUT1_75\ = CARRY(((!\sev_seg_clock_devider|counter[12]~27COUT1_74\) # (!\sev_seg_clock_devider|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \sev_seg_clock_devider|counter\(13),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[10]~23\,
	cin0 => \sev_seg_clock_devider|counter[12]~27\,
	cin1 => \sev_seg_clock_devider|counter[12]~27COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(13),
	cout0 => \sev_seg_clock_devider|counter[13]~29\,
	cout1 => \sev_seg_clock_devider|counter[13]~29COUT1_75\);

-- Location: LC_X3_Y3_N8
\sev_seg_clock_devider|counter[14]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(14) = DFFEAS(\sev_seg_clock_devider|counter\(14) $ ((((!(!\sev_seg_clock_devider|counter[10]~23\ & \sev_seg_clock_devider|counter[13]~29\) # (\sev_seg_clock_devider|counter[10]~23\ & 
-- \sev_seg_clock_devider|counter[13]~29COUT1_75\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[14]~31\ = CARRY((\sev_seg_clock_devider|counter\(14) & ((!\sev_seg_clock_devider|counter[13]~29\))))
-- \sev_seg_clock_devider|counter[14]~31COUT1_76\ = CARRY((\sev_seg_clock_devider|counter\(14) & ((!\sev_seg_clock_devider|counter[13]~29COUT1_75\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \sev_seg_clock_devider|counter\(14),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[10]~23\,
	cin0 => \sev_seg_clock_devider|counter[13]~29\,
	cin1 => \sev_seg_clock_devider|counter[13]~29COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(14),
	cout0 => \sev_seg_clock_devider|counter[14]~31\,
	cout1 => \sev_seg_clock_devider|counter[14]~31COUT1_76\);

-- Location: LC_X3_Y3_N9
\sev_seg_clock_devider|counter[15]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(15) = DFFEAS((\sev_seg_clock_devider|counter\(15) $ (((!\sev_seg_clock_devider|counter[10]~23\ & \sev_seg_clock_devider|counter[14]~31\) # (\sev_seg_clock_devider|counter[10]~23\ & 
-- \sev_seg_clock_devider|counter[14]~31COUT1_76\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[15]~33\ = CARRY(((!\sev_seg_clock_devider|counter[14]~31COUT1_76\) # (!\sev_seg_clock_devider|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \sev_seg_clock_devider|counter\(15),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[10]~23\,
	cin0 => \sev_seg_clock_devider|counter[14]~31\,
	cin1 => \sev_seg_clock_devider|counter[14]~31COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(15),
	cout => \sev_seg_clock_devider|counter[15]~33\);

-- Location: LC_X4_Y3_N0
\sev_seg_clock_devider|counter[16]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(16) = DFFEAS((\sev_seg_clock_devider|counter\(16) $ ((!\sev_seg_clock_devider|counter[15]~33\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[16]~35\ = CARRY(((\sev_seg_clock_devider|counter\(16) & !\sev_seg_clock_devider|counter[15]~33\)))
-- \sev_seg_clock_devider|counter[16]~35COUT1_77\ = CARRY(((\sev_seg_clock_devider|counter\(16) & !\sev_seg_clock_devider|counter[15]~33\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \sev_seg_clock_devider|counter\(16),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[15]~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(16),
	cout0 => \sev_seg_clock_devider|counter[16]~35\,
	cout1 => \sev_seg_clock_devider|counter[16]~35COUT1_77\);

-- Location: LC_X4_Y3_N1
\sev_seg_clock_devider|counter[17]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(17) = DFFEAS((\sev_seg_clock_devider|counter\(17) $ (((!\sev_seg_clock_devider|counter[15]~33\ & \sev_seg_clock_devider|counter[16]~35\) # (\sev_seg_clock_devider|counter[15]~33\ & 
-- \sev_seg_clock_devider|counter[16]~35COUT1_77\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[17]~37\ = CARRY(((!\sev_seg_clock_devider|counter[16]~35\) # (!\sev_seg_clock_devider|counter\(17))))
-- \sev_seg_clock_devider|counter[17]~37COUT1_78\ = CARRY(((!\sev_seg_clock_devider|counter[16]~35COUT1_77\) # (!\sev_seg_clock_devider|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \sev_seg_clock_devider|counter\(17),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[15]~33\,
	cin0 => \sev_seg_clock_devider|counter[16]~35\,
	cin1 => \sev_seg_clock_devider|counter[16]~35COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(17),
	cout0 => \sev_seg_clock_devider|counter[17]~37\,
	cout1 => \sev_seg_clock_devider|counter[17]~37COUT1_78\);

-- Location: LC_X4_Y3_N2
\sev_seg_clock_devider|counter[18]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(18) = DFFEAS((\sev_seg_clock_devider|counter\(18) $ ((!(!\sev_seg_clock_devider|counter[15]~33\ & \sev_seg_clock_devider|counter[17]~37\) # (\sev_seg_clock_devider|counter[15]~33\ & 
-- \sev_seg_clock_devider|counter[17]~37COUT1_78\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[18]~47\ = CARRY(((\sev_seg_clock_devider|counter\(18) & !\sev_seg_clock_devider|counter[17]~37\)))
-- \sev_seg_clock_devider|counter[18]~47COUT1_79\ = CARRY(((\sev_seg_clock_devider|counter\(18) & !\sev_seg_clock_devider|counter[17]~37COUT1_78\)))

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
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \sev_seg_clock_devider|counter\(18),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[15]~33\,
	cin0 => \sev_seg_clock_devider|counter[17]~37\,
	cin1 => \sev_seg_clock_devider|counter[17]~37COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(18),
	cout0 => \sev_seg_clock_devider|counter[18]~47\,
	cout1 => \sev_seg_clock_devider|counter[18]~47COUT1_79\);

-- Location: LC_X4_Y3_N3
\sev_seg_clock_devider|counter[19]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(19) = DFFEAS(\sev_seg_clock_devider|counter\(19) $ (((((!\sev_seg_clock_devider|counter[15]~33\ & \sev_seg_clock_devider|counter[18]~47\) # (\sev_seg_clock_devider|counter[15]~33\ & 
-- \sev_seg_clock_devider|counter[18]~47COUT1_79\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[19]~49\ = CARRY(((!\sev_seg_clock_devider|counter[18]~47\)) # (!\sev_seg_clock_devider|counter\(19)))
-- \sev_seg_clock_devider|counter[19]~49COUT1_80\ = CARRY(((!\sev_seg_clock_devider|counter[18]~47COUT1_79\)) # (!\sev_seg_clock_devider|counter\(19)))

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
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \sev_seg_clock_devider|counter\(19),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[15]~33\,
	cin0 => \sev_seg_clock_devider|counter[18]~47\,
	cin1 => \sev_seg_clock_devider|counter[18]~47COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(19),
	cout0 => \sev_seg_clock_devider|counter[19]~49\,
	cout1 => \sev_seg_clock_devider|counter[19]~49COUT1_80\);

-- Location: LC_X4_Y3_N4
\sev_seg_clock_devider|counter[20]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(20) = DFFEAS(\sev_seg_clock_devider|counter\(20) $ ((((!(!\sev_seg_clock_devider|counter[15]~33\ & \sev_seg_clock_devider|counter[19]~49\) # (\sev_seg_clock_devider|counter[15]~33\ & 
-- \sev_seg_clock_devider|counter[19]~49COUT1_80\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[20]~39\ = CARRY((\sev_seg_clock_devider|counter\(20) & ((!\sev_seg_clock_devider|counter[19]~49COUT1_80\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \sev_seg_clock_devider|counter\(20),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[15]~33\,
	cin0 => \sev_seg_clock_devider|counter[19]~49\,
	cin1 => \sev_seg_clock_devider|counter[19]~49COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(20),
	cout => \sev_seg_clock_devider|counter[20]~39\);

-- Location: LC_X4_Y3_N5
\sev_seg_clock_devider|counter[21]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(21) = DFFEAS(\sev_seg_clock_devider|counter\(21) $ ((((\sev_seg_clock_devider|counter[20]~39\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[21]~41\ = CARRY(((!\sev_seg_clock_devider|counter[20]~39\)) # (!\sev_seg_clock_devider|counter\(21)))
-- \sev_seg_clock_devider|counter[21]~41COUT1_81\ = CARRY(((!\sev_seg_clock_devider|counter[20]~39\)) # (!\sev_seg_clock_devider|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \sev_seg_clock_devider|counter\(21),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[20]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(21),
	cout0 => \sev_seg_clock_devider|counter[21]~41\,
	cout1 => \sev_seg_clock_devider|counter[21]~41COUT1_81\);

-- Location: LC_X4_Y3_N6
\sev_seg_clock_devider|counter[22]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(22) = DFFEAS(\sev_seg_clock_devider|counter\(22) $ ((((!(!\sev_seg_clock_devider|counter[20]~39\ & \sev_seg_clock_devider|counter[21]~41\) # (\sev_seg_clock_devider|counter[20]~39\ & 
-- \sev_seg_clock_devider|counter[21]~41COUT1_81\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[22]~43\ = CARRY((\sev_seg_clock_devider|counter\(22) & ((!\sev_seg_clock_devider|counter[21]~41\))))
-- \sev_seg_clock_devider|counter[22]~43COUT1_82\ = CARRY((\sev_seg_clock_devider|counter\(22) & ((!\sev_seg_clock_devider|counter[21]~41COUT1_81\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \sev_seg_clock_devider|counter\(22),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[20]~39\,
	cin0 => \sev_seg_clock_devider|counter[21]~41\,
	cin1 => \sev_seg_clock_devider|counter[21]~41COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(22),
	cout0 => \sev_seg_clock_devider|counter[22]~43\,
	cout1 => \sev_seg_clock_devider|counter[22]~43COUT1_82\);

-- Location: LC_X4_Y3_N7
\sev_seg_clock_devider|counter[23]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(23) = DFFEAS((\sev_seg_clock_devider|counter\(23) $ (((!\sev_seg_clock_devider|counter[20]~39\ & \sev_seg_clock_devider|counter[22]~43\) # (\sev_seg_clock_devider|counter[20]~39\ & 
-- \sev_seg_clock_devider|counter[22]~43COUT1_82\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[23]~45\ = CARRY(((!\sev_seg_clock_devider|counter[22]~43\) # (!\sev_seg_clock_devider|counter\(23))))
-- \sev_seg_clock_devider|counter[23]~45COUT1_83\ = CARRY(((!\sev_seg_clock_devider|counter[22]~43COUT1_82\) # (!\sev_seg_clock_devider|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \sev_seg_clock_devider|counter\(23),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[20]~39\,
	cin0 => \sev_seg_clock_devider|counter[22]~43\,
	cin1 => \sev_seg_clock_devider|counter[22]~43COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(23),
	cout0 => \sev_seg_clock_devider|counter[23]~45\,
	cout1 => \sev_seg_clock_devider|counter[23]~45COUT1_83\);

-- Location: LC_X4_Y3_N8
\sev_seg_clock_devider|counter[24]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(24) = DFFEAS(\sev_seg_clock_devider|counter\(24) $ ((((!(!\sev_seg_clock_devider|counter[20]~39\ & \sev_seg_clock_devider|counter[23]~45\) # (\sev_seg_clock_devider|counter[20]~39\ & 
-- \sev_seg_clock_devider|counter[23]~45COUT1_83\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[24]~51\ = CARRY((\sev_seg_clock_devider|counter\(24) & ((!\sev_seg_clock_devider|counter[23]~45\))))
-- \sev_seg_clock_devider|counter[24]~51COUT1_84\ = CARRY((\sev_seg_clock_devider|counter\(24) & ((!\sev_seg_clock_devider|counter[23]~45COUT1_83\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \sev_seg_clock_devider|counter\(24),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[20]~39\,
	cin0 => \sev_seg_clock_devider|counter[23]~45\,
	cin1 => \sev_seg_clock_devider|counter[23]~45COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(24),
	cout0 => \sev_seg_clock_devider|counter[24]~51\,
	cout1 => \sev_seg_clock_devider|counter[24]~51COUT1_84\);

-- Location: LC_X4_Y3_N9
\sev_seg_clock_devider|counter[25]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(25) = DFFEAS((\sev_seg_clock_devider|counter\(25) $ (((!\sev_seg_clock_devider|counter[20]~39\ & \sev_seg_clock_devider|counter[24]~51\) # (\sev_seg_clock_devider|counter[20]~39\ & 
-- \sev_seg_clock_devider|counter[24]~51COUT1_84\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[25]~53\ = CARRY(((!\sev_seg_clock_devider|counter[24]~51COUT1_84\) # (!\sev_seg_clock_devider|counter\(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \sev_seg_clock_devider|counter\(25),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[20]~39\,
	cin0 => \sev_seg_clock_devider|counter[24]~51\,
	cin1 => \sev_seg_clock_devider|counter[24]~51COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(25),
	cout => \sev_seg_clock_devider|counter[25]~53\);

-- Location: LC_X5_Y3_N0
\sev_seg_clock_devider|counter[26]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(26) = DFFEAS((\sev_seg_clock_devider|counter\(26) $ ((!\sev_seg_clock_devider|counter[25]~53\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[26]~55\ = CARRY(((\sev_seg_clock_devider|counter\(26) & !\sev_seg_clock_devider|counter[25]~53\)))
-- \sev_seg_clock_devider|counter[26]~55COUT1_85\ = CARRY(((\sev_seg_clock_devider|counter\(26) & !\sev_seg_clock_devider|counter[25]~53\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \sev_seg_clock_devider|counter\(26),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[25]~53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(26),
	cout0 => \sev_seg_clock_devider|counter[26]~55\,
	cout1 => \sev_seg_clock_devider|counter[26]~55COUT1_85\);

-- Location: LC_X5_Y3_N1
\sev_seg_clock_devider|counter[27]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(27) = DFFEAS((\sev_seg_clock_devider|counter\(27) $ (((!\sev_seg_clock_devider|counter[25]~53\ & \sev_seg_clock_devider|counter[26]~55\) # (\sev_seg_clock_devider|counter[25]~53\ & 
-- \sev_seg_clock_devider|counter[26]~55COUT1_85\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[27]~57\ = CARRY(((!\sev_seg_clock_devider|counter[26]~55\) # (!\sev_seg_clock_devider|counter\(27))))
-- \sev_seg_clock_devider|counter[27]~57COUT1_86\ = CARRY(((!\sev_seg_clock_devider|counter[26]~55COUT1_85\) # (!\sev_seg_clock_devider|counter\(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \sev_seg_clock_devider|counter\(27),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[25]~53\,
	cin0 => \sev_seg_clock_devider|counter[26]~55\,
	cin1 => \sev_seg_clock_devider|counter[26]~55COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(27),
	cout0 => \sev_seg_clock_devider|counter[27]~57\,
	cout1 => \sev_seg_clock_devider|counter[27]~57COUT1_86\);

-- Location: LC_X5_Y3_N2
\sev_seg_clock_devider|counter[28]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(28) = DFFEAS((\sev_seg_clock_devider|counter\(28) $ ((!(!\sev_seg_clock_devider|counter[25]~53\ & \sev_seg_clock_devider|counter[27]~57\) # (\sev_seg_clock_devider|counter[25]~53\ & 
-- \sev_seg_clock_devider|counter[27]~57COUT1_86\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[28]~59\ = CARRY(((\sev_seg_clock_devider|counter\(28) & !\sev_seg_clock_devider|counter[27]~57\)))
-- \sev_seg_clock_devider|counter[28]~59COUT1_87\ = CARRY(((\sev_seg_clock_devider|counter\(28) & !\sev_seg_clock_devider|counter[27]~57COUT1_86\)))

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
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \sev_seg_clock_devider|counter\(28),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[25]~53\,
	cin0 => \sev_seg_clock_devider|counter[27]~57\,
	cin1 => \sev_seg_clock_devider|counter[27]~57COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(28),
	cout0 => \sev_seg_clock_devider|counter[28]~59\,
	cout1 => \sev_seg_clock_devider|counter[28]~59COUT1_87\);

-- Location: LC_X5_Y3_N3
\sev_seg_clock_devider|counter[29]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(29) = DFFEAS(\sev_seg_clock_devider|counter\(29) $ (((((!\sev_seg_clock_devider|counter[25]~53\ & \sev_seg_clock_devider|counter[28]~59\) # (\sev_seg_clock_devider|counter[25]~53\ & 
-- \sev_seg_clock_devider|counter[28]~59COUT1_87\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[29]~61\ = CARRY(((!\sev_seg_clock_devider|counter[28]~59\)) # (!\sev_seg_clock_devider|counter\(29)))
-- \sev_seg_clock_devider|counter[29]~61COUT1_88\ = CARRY(((!\sev_seg_clock_devider|counter[28]~59COUT1_87\)) # (!\sev_seg_clock_devider|counter\(29)))

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
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \sev_seg_clock_devider|counter\(29),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[25]~53\,
	cin0 => \sev_seg_clock_devider|counter[28]~59\,
	cin1 => \sev_seg_clock_devider|counter[28]~59COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(29),
	cout0 => \sev_seg_clock_devider|counter[29]~61\,
	cout1 => \sev_seg_clock_devider|counter[29]~61COUT1_88\);

-- Location: LC_X5_Y3_N4
\sev_seg_clock_devider|counter[30]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(30) = DFFEAS(\sev_seg_clock_devider|counter\(30) $ ((((!(!\sev_seg_clock_devider|counter[25]~53\ & \sev_seg_clock_devider|counter[29]~61\) # (\sev_seg_clock_devider|counter[25]~53\ & 
-- \sev_seg_clock_devider|counter[29]~61COUT1_88\))))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )
-- \sev_seg_clock_devider|counter[30]~63\ = CARRY((\sev_seg_clock_devider|counter\(30) & ((!\sev_seg_clock_devider|counter[29]~61COUT1_88\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \sev_seg_clock_devider|counter\(30),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[25]~53\,
	cin0 => \sev_seg_clock_devider|counter[29]~61\,
	cin1 => \sev_seg_clock_devider|counter[29]~61COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(30),
	cout => \sev_seg_clock_devider|counter[30]~63\);

-- Location: LC_X5_Y3_N5
\sev_seg_clock_devider|counter[31]\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|counter\(31) = DFFEAS(\sev_seg_clock_devider|counter\(31) $ ((((\sev_seg_clock_devider|counter[30]~63\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , \sev_seg_clock_devider|LessThan0~10_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \sev_seg_clock_devider|counter\(31),
	aclr => \reset~combout\,
	sclr => \sev_seg_clock_devider|LessThan0~10_combout\,
	cin => \sev_seg_clock_devider|counter[30]~63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|counter\(31));

-- Location: LC_X5_Y3_N8
\sev_seg_clock_devider|LessThan0~8\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|LessThan0~8_combout\ = (!\sev_seg_clock_devider|counter\(24) & (!\sev_seg_clock_devider|counter\(27) & (!\sev_seg_clock_devider|counter\(26) & !\sev_seg_clock_devider|counter\(25))))

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
	dataa => \sev_seg_clock_devider|counter\(24),
	datab => \sev_seg_clock_devider|counter\(27),
	datac => \sev_seg_clock_devider|counter\(26),
	datad => \sev_seg_clock_devider|counter\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_seg_clock_devider|LessThan0~8_combout\);

-- Location: LC_X5_Y3_N6
\sev_seg_clock_devider|LessThan0~9\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|LessThan0~9_combout\ = (!\sev_seg_clock_devider|counter\(29) & (!\sev_seg_clock_devider|counter\(28) & (!\sev_seg_clock_devider|counter\(30) & \sev_seg_clock_devider|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sev_seg_clock_devider|counter\(29),
	datab => \sev_seg_clock_devider|counter\(28),
	datac => \sev_seg_clock_devider|counter\(30),
	datad => \sev_seg_clock_devider|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_seg_clock_devider|LessThan0~9_combout\);

-- Location: LC_X5_Y3_N9
\sev_seg_clock_devider|LessThan0~5\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|LessThan0~5_combout\ = (((!\sev_seg_clock_devider|counter\(17) & !\sev_seg_clock_devider|counter\(16))))

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
	datac => \sev_seg_clock_devider|counter\(17),
	datad => \sev_seg_clock_devider|counter\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_seg_clock_devider|LessThan0~5_combout\);

-- Location: LC_X5_Y3_N7
\sev_seg_clock_devider|LessThan0~6\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|LessThan0~6_combout\ = (!\sev_seg_clock_devider|counter\(20) & (!\sev_seg_clock_devider|counter\(23) & (!\sev_seg_clock_devider|counter\(22) & !\sev_seg_clock_devider|counter\(21))))

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
	dataa => \sev_seg_clock_devider|counter\(20),
	datab => \sev_seg_clock_devider|counter\(23),
	datac => \sev_seg_clock_devider|counter\(22),
	datad => \sev_seg_clock_devider|counter\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_seg_clock_devider|LessThan0~6_combout\);

-- Location: LC_X6_Y3_N6
\sev_seg_clock_devider|LessThan0~7\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|LessThan0~7_combout\ = (!\sev_seg_clock_devider|counter\(19) & (!\sev_seg_clock_devider|counter\(18) & (\sev_seg_clock_devider|LessThan0~5_combout\ & \sev_seg_clock_devider|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sev_seg_clock_devider|counter\(19),
	datab => \sev_seg_clock_devider|counter\(18),
	datac => \sev_seg_clock_devider|LessThan0~5_combout\,
	datad => \sev_seg_clock_devider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_seg_clock_devider|LessThan0~7_combout\);

-- Location: LC_X6_Y3_N3
\sev_seg_clock_devider|LessThan0~3\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|LessThan0~3_combout\ = (!\sev_seg_clock_devider|counter\(14) & (!\sev_seg_clock_devider|counter\(12) & (!\sev_seg_clock_devider|counter\(13) & !\sev_seg_clock_devider|counter\(15))))

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
	dataa => \sev_seg_clock_devider|counter\(14),
	datab => \sev_seg_clock_devider|counter\(12),
	datac => \sev_seg_clock_devider|counter\(13),
	datad => \sev_seg_clock_devider|counter\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_seg_clock_devider|LessThan0~3_combout\);

-- Location: LC_X6_Y3_N9
\sev_seg_clock_devider|LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|LessThan0~2_combout\ = (!\sev_seg_clock_devider|counter\(10) & (!\sev_seg_clock_devider|counter\(9) & (!\sev_seg_clock_devider|counter\(8) & !\sev_seg_clock_devider|counter\(11))))

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
	dataa => \sev_seg_clock_devider|counter\(10),
	datab => \sev_seg_clock_devider|counter\(9),
	datac => \sev_seg_clock_devider|counter\(8),
	datad => \sev_seg_clock_devider|counter\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_seg_clock_devider|LessThan0~2_combout\);

-- Location: LC_X2_Y3_N3
\sev_seg_clock_devider|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|LessThan0~0_combout\ = (!\sev_seg_clock_devider|counter\(1) & (!\sev_seg_clock_devider|counter\(3) & (!\sev_seg_clock_devider|counter\(0) & !\sev_seg_clock_devider|counter\(2))))

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
	dataa => \sev_seg_clock_devider|counter\(1),
	datab => \sev_seg_clock_devider|counter\(3),
	datac => \sev_seg_clock_devider|counter\(0),
	datad => \sev_seg_clock_devider|counter\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_seg_clock_devider|LessThan0~0_combout\);

-- Location: LC_X6_Y3_N2
\sev_seg_clock_devider|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|LessThan0~1_combout\ = (!\sev_seg_clock_devider|counter\(6) & (!\sev_seg_clock_devider|counter\(7) & (!\sev_seg_clock_devider|counter\(5) & !\sev_seg_clock_devider|counter\(4))))

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
	dataa => \sev_seg_clock_devider|counter\(6),
	datab => \sev_seg_clock_devider|counter\(7),
	datac => \sev_seg_clock_devider|counter\(5),
	datad => \sev_seg_clock_devider|counter\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_seg_clock_devider|LessThan0~1_combout\);

-- Location: LC_X6_Y3_N0
\sev_seg_clock_devider|LessThan0~4\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|LessThan0~4_combout\ = (\sev_seg_clock_devider|LessThan0~3_combout\ & (\sev_seg_clock_devider|LessThan0~2_combout\ & (\sev_seg_clock_devider|LessThan0~0_combout\ & \sev_seg_clock_devider|LessThan0~1_combout\)))

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
	dataa => \sev_seg_clock_devider|LessThan0~3_combout\,
	datab => \sev_seg_clock_devider|LessThan0~2_combout\,
	datac => \sev_seg_clock_devider|LessThan0~0_combout\,
	datad => \sev_seg_clock_devider|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_seg_clock_devider|LessThan0~4_combout\);

-- Location: LC_X6_Y3_N1
\sev_seg_clock_devider|LessThan0~10\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|LessThan0~10_combout\ = (!\sev_seg_clock_devider|counter\(31) & (((!\sev_seg_clock_devider|LessThan0~4_combout\) # (!\sev_seg_clock_devider|LessThan0~7_combout\)) # (!\sev_seg_clock_devider|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1555",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sev_seg_clock_devider|counter\(31),
	datab => \sev_seg_clock_devider|LessThan0~9_combout\,
	datac => \sev_seg_clock_devider|LessThan0~7_combout\,
	datad => \sev_seg_clock_devider|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_seg_clock_devider|LessThan0~10_combout\);

-- Location: LC_X6_Y3_N8
\sev_seg_clock_devider|curr_out\ : maxv_lcell
-- Equation(s):
-- \sev_seg_clock_devider|curr_out~regout\ = DFFEAS(\sev_seg_clock_devider|curr_out~regout\ $ (((!\reset~combout\ & ((\sev_seg_clock_devider|LessThan0~10_combout\))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "99aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \sev_seg_clock_devider|curr_out~regout\,
	datab => \reset~combout\,
	datad => \sev_seg_clock_devider|LessThan0~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_seg_clock_devider|curr_out~regout\);

-- Location: LC_X4_Y4_N4
\sev_segment_driver|sevSegIndex[0]\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|sevSegIndex\(0) = DFFEAS(((!\start~combout\ & (!\reset~combout\ & !\sev_segment_driver|sevSegIndex\(0)))), GLOBAL(\sev_seg_clock_devider|curr_out~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sev_seg_clock_devider|curr_out~regout\,
	datab => \start~combout\,
	datac => \reset~combout\,
	datad => \sev_segment_driver|sevSegIndex\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_segment_driver|sevSegIndex\(0));

-- Location: LC_X4_Y4_N8
\sev_segment_driver|sevSegIndex[1]\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|sevSegIndex\(1) = DFFEAS((\sev_segment_driver|sevSegIndex~0_combout\ & ((\sev_segment_driver|sevSegIndex\(0) & (!\sev_segment_driver|sevSegIndex\(2) & !\sev_segment_driver|sevSegIndex\(1))) # (!\sev_segment_driver|sevSegIndex\(0) & 
-- ((\sev_segment_driver|sevSegIndex\(1)))))), GLOBAL(\sev_seg_clock_devider|curr_out~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sev_seg_clock_devider|curr_out~regout\,
	dataa => \sev_segment_driver|sevSegIndex~0_combout\,
	datab => \sev_segment_driver|sevSegIndex\(2),
	datac => \sev_segment_driver|sevSegIndex\(0),
	datad => \sev_segment_driver|sevSegIndex\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_segment_driver|sevSegIndex\(1));

-- Location: LC_X4_Y4_N2
\sev_segment_driver|sevSegIndex[2]\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|sevSegIndex\(2) = DFFEAS((\sev_segment_driver|sevSegIndex~0_combout\ & ((\sev_segment_driver|sevSegIndex\(2) & (!\sev_segment_driver|sevSegIndex\(0))) # (!\sev_segment_driver|sevSegIndex\(2) & (\sev_segment_driver|sevSegIndex\(0) & 
-- \sev_segment_driver|sevSegIndex\(1))))), GLOBAL(\sev_seg_clock_devider|curr_out~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2808",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sev_seg_clock_devider|curr_out~regout\,
	dataa => \sev_segment_driver|sevSegIndex~0_combout\,
	datab => \sev_segment_driver|sevSegIndex\(2),
	datac => \sev_segment_driver|sevSegIndex\(0),
	datad => \sev_segment_driver|sevSegIndex\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sev_segment_driver|sevSegIndex\(2));

-- Location: LC_X5_Y4_N5
\sev_segment_driver|Mux25~0\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|Mux25~0_combout\ = ((\sev_segment_driver|sevSegIndex\(1)) # ((!\sev_segment_driver|sevSegIndex\(2) & \sev_segment_driver|sevSegIndex\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sev_segment_driver|sevSegIndex\(2),
	datac => \sev_segment_driver|sevSegIndex\(0),
	datad => \sev_segment_driver|sevSegIndex\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|Mux25~0_combout\);

-- Location: LC_X6_Y4_N7
\sev_segment_driver|Equal14~0\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|Equal14~0_combout\ = (((\sev_segment_driver|sevSegIndex\(0) & !\sev_segment_driver|sevSegIndex\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \sev_segment_driver|sevSegIndex\(0),
	datad => \sev_segment_driver|sevSegIndex\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|Equal14~0_combout\);

-- Location: LC_X6_Y4_N6
\sev_segment_driver|sevSeg_data[0]~23\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|sevSeg_data[0]~23_combout\ = (\washing_machine_driver|curr_state[0]~en_regout\ & ((\washing_machine_driver|curr_state\(0) & ((\sev_segment_driver|Equal14~0_combout\))) # (!\washing_machine_driver|curr_state\(0) & 
-- (\sev_segment_driver|Mux25~0_combout\)))) # (!\washing_machine_driver|curr_state[0]~en_regout\ & (((\sev_segment_driver|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sev_segment_driver|Mux25~0_combout\,
	datab => \washing_machine_driver|curr_state[0]~en_regout\,
	datac => \sev_segment_driver|Equal14~0_combout\,
	datad => \washing_machine_driver|curr_state\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|sevSeg_data[0]~23_combout\);

-- Location: LC_X6_Y4_N3
\sev_segment_driver|sevSeg_data[0]~6\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|sevSeg_data[0]~6_combout\ = (\washing_machine_driver|state[0]~3_combout\ & ((\sev_segment_driver|sevSegIndex\(1)) # ((\sev_segment_driver|sevSegIndex\(2))))) # (!\washing_machine_driver|state[0]~3_combout\ & 
-- ((\sev_segment_driver|sevSegIndex\(0) & (\sev_segment_driver|sevSegIndex\(1))) # (!\sev_segment_driver|sevSegIndex\(0) & ((\sev_segment_driver|sevSegIndex\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sev_segment_driver|sevSegIndex\(1),
	datab => \washing_machine_driver|state[0]~3_combout\,
	datac => \sev_segment_driver|sevSegIndex\(0),
	datad => \sev_segment_driver|sevSegIndex\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|sevSeg_data[0]~6_combout\);

-- Location: LC_X6_Y4_N1
\sev_segment_driver|sevSeg_data[0]~7\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|sevSeg_data[0]~7_combout\ = (\washing_machine_driver|state[0]~3_combout\ & ((\washing_machine_driver|state[1]~2_combout\ & (!\sev_segment_driver|sevSeg_data[0]~23_combout\)) # (!\washing_machine_driver|state[1]~2_combout\ & 
-- ((\sev_segment_driver|sevSeg_data[0]~6_combout\))))) # (!\washing_machine_driver|state[0]~3_combout\ & ((\washing_machine_driver|state[1]~2_combout\ & ((!\sev_segment_driver|sevSeg_data[0]~6_combout\))) # (!\washing_machine_driver|state[1]~2_combout\ & 
-- (!\sev_segment_driver|sevSeg_data[0]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4d71",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sev_segment_driver|sevSeg_data[0]~23_combout\,
	datab => \washing_machine_driver|state[0]~3_combout\,
	datac => \washing_machine_driver|state[1]~2_combout\,
	datad => \sev_segment_driver|sevSeg_data[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|sevSeg_data[0]~7_combout\);

-- Location: LC_X7_Y4_N0
\sev_segment_driver|sevSeg_data[1]~8\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|sevSeg_data[1]~8_combout\ = (\sev_segment_driver|sevSegIndex\(2) & (((\sev_segment_driver|sevSegIndex\(0) & !\washing_machine_driver|state[0]~3_combout\)) # (!\washing_machine_driver|state[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \washing_machine_driver|state[1]~2_combout\,
	datab => \sev_segment_driver|sevSegIndex\(0),
	datac => \sev_segment_driver|sevSegIndex\(2),
	datad => \washing_machine_driver|state[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|sevSeg_data[1]~8_combout\);

-- Location: LC_X7_Y4_N4
\sev_segment_driver|Equal14~1\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|Equal14~1_combout\ = (!\sev_segment_driver|sevSegIndex\(2) & (((!\sev_segment_driver|sevSegIndex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sev_segment_driver|sevSegIndex\(2),
	datad => \sev_segment_driver|sevSegIndex\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|Equal14~1_combout\);

-- Location: LC_X7_Y4_N9
\sev_segment_driver|sevSeg_data[1]~10\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|sevSeg_data[1]~10_combout\ = (\sev_segment_driver|sevSeg_data[1]~8_combout\) # ((\sev_segment_driver|sevSeg_data[1]~9_combout\ & (!\sev_segment_driver|Equal14~1_combout\ & !\sev_segment_driver|sevSegIndex\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccce",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sev_segment_driver|sevSeg_data[1]~9_combout\,
	datab => \sev_segment_driver|sevSeg_data[1]~8_combout\,
	datac => \sev_segment_driver|Equal14~1_combout\,
	datad => \sev_segment_driver|sevSegIndex\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|sevSeg_data[1]~10_combout\);

-- Location: LC_X5_Y4_N6
\sev_segment_driver|sevSeg_data[2]~11\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|sevSeg_data[2]~11_combout\ = (\washing_machine_driver|state[1]~2_combout\ & (((\washing_machine_driver|state[0]~3_combout\)))) # (!\washing_machine_driver|state[1]~2_combout\ & (!\sev_segment_driver|Equal14~0_combout\ & 
-- ((!\washing_machine_driver|state[0]~3_combout\) # (!\sev_segment_driver|sevSegIndex\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0b5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \washing_machine_driver|state[1]~2_combout\,
	datab => \sev_segment_driver|sevSegIndex\(1),
	datac => \washing_machine_driver|state[0]~3_combout\,
	datad => \sev_segment_driver|Equal14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|sevSeg_data[2]~11_combout\);

-- Location: LC_X5_Y4_N9
\sev_segment_driver|Mux6~0\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|Mux6~0_combout\ = ((\sev_segment_driver|sevSegIndex\(0) & (\sev_segment_driver|sevSegIndex\(2) $ (\sev_segment_driver|sevSegIndex\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sev_segment_driver|sevSegIndex\(2),
	datac => \sev_segment_driver|sevSegIndex\(0),
	datad => \sev_segment_driver|sevSegIndex\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|Mux6~0_combout\);

-- Location: LC_X5_Y4_N2
\sev_segment_driver|sevSeg_data[2]~12\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|sevSeg_data[2]~12_combout\ = (\sev_segment_driver|sevSeg_data[2]~11_combout\ & (((\sev_segment_driver|sevSegIndex\(2)) # (!\washing_machine_driver|state[1]~2_combout\)))) # (!\sev_segment_driver|sevSeg_data[2]~11_combout\ & 
-- (\sev_segment_driver|Mux6~0_combout\ & (\washing_machine_driver|state[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sev_segment_driver|sevSeg_data[2]~11_combout\,
	datab => \sev_segment_driver|Mux6~0_combout\,
	datac => \washing_machine_driver|state[1]~2_combout\,
	datad => \sev_segment_driver|sevSegIndex\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|sevSeg_data[2]~12_combout\);

-- Location: LC_X6_Y4_N0
\sev_segment_driver|sevSeg_data[3]~13\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|sevSeg_data[3]~13_combout\ = ((\sev_segment_driver|sevSegIndex\(1)) # ((\sev_segment_driver|sevSegIndex\(0)) # (\sev_segment_driver|sevSegIndex\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sev_segment_driver|sevSegIndex\(1),
	datac => \sev_segment_driver|sevSegIndex\(0),
	datad => \sev_segment_driver|sevSegIndex\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|sevSeg_data[3]~13_combout\);

-- Location: LC_X6_Y4_N8
\sev_segment_driver|sevSeg_driver[0]~0\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|sevSeg_driver[0]~0_combout\ = (((\sev_segment_driver|sevSegIndex\(0) & !\sev_segment_driver|sevSegIndex\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \sev_segment_driver|sevSegIndex\(0),
	datad => \sev_segment_driver|sevSegIndex\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|sevSeg_driver[0]~0_combout\);

-- Location: LC_X6_Y4_N2
\sev_segment_driver|sevSeg_data[3]~14\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|sevSeg_data[3]~14_combout\ = (\sev_segment_driver|Equal14~1_combout\ & (((\washing_machine_driver|state[1]~2_combout\)))) # (!\sev_segment_driver|Equal14~1_combout\ & ((\washing_machine_driver|state[1]~2_combout\ & 
-- ((\sev_segment_driver|sevSeg_driver[0]~0_combout\) # (\washing_machine_driver|state[0]~3_combout\))) # (!\washing_machine_driver|state[1]~2_combout\ & ((!\washing_machine_driver|state[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sev_segment_driver|sevSeg_driver[0]~0_combout\,
	datab => \sev_segment_driver|Equal14~1_combout\,
	datac => \washing_machine_driver|state[1]~2_combout\,
	datad => \washing_machine_driver|state[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|sevSeg_data[3]~14_combout\);

-- Location: LC_X6_Y4_N9
\sev_segment_driver|sevSeg_data[3]~15\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|sevSeg_data[3]~15_combout\ = (\washing_machine_driver|state[0]~3_combout\ & ((\sev_segment_driver|sevSeg_data[3]~14_combout\ & (!\sev_segment_driver|Mux25~0_combout\)) # (!\sev_segment_driver|sevSeg_data[3]~14_combout\ & 
-- ((\sev_segment_driver|sevSeg_data[3]~13_combout\))))) # (!\washing_machine_driver|state[0]~3_combout\ & (((\sev_segment_driver|sevSeg_data[3]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sev_segment_driver|Mux25~0_combout\,
	datab => \washing_machine_driver|state[0]~3_combout\,
	datac => \sev_segment_driver|sevSeg_data[3]~13_combout\,
	datad => \sev_segment_driver|sevSeg_data[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|sevSeg_data[3]~15_combout\);

-- Location: LC_X5_Y4_N0
\sev_segment_driver|sevSeg_data[4]~16\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|sevSeg_data[4]~16_combout\ = ((\sev_segment_driver|sevSegIndex\(2)) # (\sev_segment_driver|sevSegIndex\(0) $ (\sev_segment_driver|sevSegIndex\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sev_segment_driver|sevSegIndex\(2),
	datac => \sev_segment_driver|sevSegIndex\(0),
	datad => \sev_segment_driver|sevSegIndex\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|sevSeg_data[4]~16_combout\);

-- Location: LC_X5_Y4_N4
\sev_segment_driver|sevSeg_data[4]~17\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|sevSeg_data[4]~17_combout\ = (\washing_machine_driver|state[0]~3_combout\ & (((\sev_segment_driver|sevSeg_data[4]~16_combout\) # (\washing_machine_driver|state[1]~2_combout\)))) # (!\washing_machine_driver|state[0]~3_combout\ & 
-- (!\sev_segment_driver|Mux25~0_combout\ & ((!\washing_machine_driver|state[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccd1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sev_segment_driver|Mux25~0_combout\,
	datab => \washing_machine_driver|state[0]~3_combout\,
	datac => \sev_segment_driver|sevSeg_data[4]~16_combout\,
	datad => \washing_machine_driver|state[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|sevSeg_data[4]~17_combout\);

-- Location: LC_X5_Y4_N7
\sev_segment_driver|Mux16~0\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|Mux16~0_combout\ = ((!\sev_segment_driver|sevSegIndex\(2) & (\sev_segment_driver|sevSegIndex\(0) & !\sev_segment_driver|sevSegIndex\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sev_segment_driver|sevSegIndex\(2),
	datac => \sev_segment_driver|sevSegIndex\(0),
	datad => \sev_segment_driver|sevSegIndex\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|Mux16~0_combout\);

-- Location: LC_X5_Y4_N1
\sev_segment_driver|sevSeg_data[4]~18\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|sevSeg_data[4]~18_combout\ = (\sev_segment_driver|sevSeg_data[4]~17_combout\ & (((!\washing_machine_driver|state[1]~2_combout\)) # (!\sev_segment_driver|Mux16~0_combout\))) # (!\sev_segment_driver|sevSeg_data[4]~17_combout\ & 
-- (((!\sev_segment_driver|sevSegIndex\(1) & \washing_machine_driver|state[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "27aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sev_segment_driver|sevSeg_data[4]~17_combout\,
	datab => \sev_segment_driver|Mux16~0_combout\,
	datac => \sev_segment_driver|sevSegIndex\(1),
	datad => \washing_machine_driver|state[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|sevSeg_data[4]~18_combout\);

-- Location: LC_X7_Y4_N1
\sev_segment_driver|Mux21~0\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|Mux21~0_combout\ = (\sev_segment_driver|sevSegIndex\(2)) # ((!\sev_segment_driver|sevSegIndex\(0) & ((\sev_segment_driver|sevSegIndex\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sev_segment_driver|sevSegIndex\(2),
	datab => \sev_segment_driver|sevSegIndex\(0),
	datad => \sev_segment_driver|sevSegIndex\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|Mux21~0_combout\);

-- Location: LC_X7_Y4_N2
\sev_segment_driver|sevSeg_data[5]~19\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|sevSeg_data[5]~19_combout\ = (\washing_machine_driver|state[1]~2_combout\ & ((\washing_machine_driver|state[0]~3_combout\) # ((!\sev_segment_driver|Equal14~1_combout\)))) # (!\washing_machine_driver|state[1]~2_combout\ & 
-- (!\washing_machine_driver|state[0]~3_combout\ & ((\sev_segment_driver|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9b8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \washing_machine_driver|state[1]~2_combout\,
	datab => \washing_machine_driver|state[0]~3_combout\,
	datac => \sev_segment_driver|Equal14~1_combout\,
	datad => \sev_segment_driver|Mux21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|sevSeg_data[5]~19_combout\);

-- Location: LC_X5_Y4_N3
\sev_segment_driver|sevSeg_data[5]~20\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|sevSeg_data[5]~20_combout\ = (\washing_machine_driver|state[0]~3_combout\ & ((\sev_segment_driver|sevSeg_data[5]~19_combout\ & ((!\sev_segment_driver|Mux16~0_combout\))) # (!\sev_segment_driver|sevSeg_data[5]~19_combout\ & 
-- (!\sev_segment_driver|Equal14~0_combout\)))) # (!\washing_machine_driver|state[0]~3_combout\ & (((\sev_segment_driver|sevSeg_data[5]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sev_segment_driver|Equal14~0_combout\,
	datab => \washing_machine_driver|state[0]~3_combout\,
	datac => \sev_segment_driver|Mux16~0_combout\,
	datad => \sev_segment_driver|sevSeg_data[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|sevSeg_data[5]~20_combout\);

-- Location: LC_X7_Y4_N7
\sev_segment_driver|Mux24~0\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|Mux24~0_combout\ = (\sev_segment_driver|sevSegIndex\(2)) # (\sev_segment_driver|sevSegIndex\(0) $ (((!\sev_segment_driver|sevSegIndex\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eebb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sev_segment_driver|sevSegIndex\(2),
	datab => \sev_segment_driver|sevSegIndex\(0),
	datad => \sev_segment_driver|sevSegIndex\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|Mux24~0_combout\);

-- Location: LC_X7_Y4_N6
\sev_segment_driver|sevSeg_data[6]~21\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|sevSeg_data[6]~21_combout\ = (\washing_machine_driver|state[1]~2_combout\ & (\washing_machine_driver|state[0]~3_combout\)) # (!\washing_machine_driver|state[1]~2_combout\ & ((\washing_machine_driver|state[0]~3_combout\ & 
-- ((\sev_segment_driver|Mux21~0_combout\))) # (!\washing_machine_driver|state[0]~3_combout\ & (\sev_segment_driver|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \washing_machine_driver|state[1]~2_combout\,
	datab => \washing_machine_driver|state[0]~3_combout\,
	datac => \sev_segment_driver|Mux24~0_combout\,
	datad => \sev_segment_driver|Mux21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|sevSeg_data[6]~21_combout\);

-- Location: LC_X7_Y4_N5
\sev_segment_driver|sevSeg_data[6]~22\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|sevSeg_data[6]~22_combout\ = (\sev_segment_driver|sevSegIndex\(0) & ((\washing_machine_driver|state[1]~2_combout\ & ((!\sev_segment_driver|sevSegIndex\(1)))) # (!\washing_machine_driver|state[1]~2_combout\ & 
-- (\sev_segment_driver|sevSeg_data[6]~21_combout\)))) # (!\sev_segment_driver|sevSegIndex\(0) & (\sev_segment_driver|sevSeg_data[6]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sev_segment_driver|sevSeg_data[6]~21_combout\,
	datab => \sev_segment_driver|sevSegIndex\(0),
	datac => \washing_machine_driver|state[1]~2_combout\,
	datad => \sev_segment_driver|sevSegIndex\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|sevSeg_data[6]~22_combout\);

-- Location: LC_X4_Y4_N1
\sev_segment_driver|sevSeg_driver[0]~1\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|sevSeg_driver[0]~1_combout\ = ((\sev_segment_driver|sevSegIndex\(0) & (\sev_segment_driver|sevSegIndex\(2) & !\sev_segment_driver|sevSegIndex\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sev_segment_driver|sevSegIndex\(0),
	datac => \sev_segment_driver|sevSegIndex\(2),
	datad => \sev_segment_driver|sevSegIndex\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|sevSeg_driver[0]~1_combout\);

-- Location: LC_X4_Y4_N3
\sev_segment_driver|Equal14~2\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|Equal14~2_combout\ = ((!\sev_segment_driver|sevSegIndex\(0) & (\sev_segment_driver|sevSegIndex\(2) & !\sev_segment_driver|sevSegIndex\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sev_segment_driver|sevSegIndex\(0),
	datac => \sev_segment_driver|sevSegIndex\(2),
	datad => \sev_segment_driver|sevSegIndex\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|Equal14~2_combout\);

-- Location: LC_X7_Y4_N8
\sev_segment_driver|Equal14~3\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|Equal14~3_combout\ = (!\sev_segment_driver|sevSegIndex\(2) & (\sev_segment_driver|sevSegIndex\(0) & ((\sev_segment_driver|sevSegIndex\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sev_segment_driver|sevSegIndex\(2),
	datab => \sev_segment_driver|sevSegIndex\(0),
	datad => \sev_segment_driver|sevSegIndex\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|Equal14~3_combout\);

-- Location: LC_X7_Y4_N3
\sev_segment_driver|Equal14~4\ : maxv_lcell
-- Equation(s):
-- \sev_segment_driver|Equal14~4_combout\ = (!\sev_segment_driver|sevSegIndex\(2) & (!\sev_segment_driver|sevSegIndex\(0) & ((\sev_segment_driver|sevSegIndex\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sev_segment_driver|sevSegIndex\(2),
	datab => \sev_segment_driver|sevSegIndex\(0),
	datad => \sev_segment_driver|sevSegIndex\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sev_segment_driver|Equal14~4_combout\);

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\state[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \washing_machine_driver|curr_state\(0),
	oe => \washing_machine_driver|curr_state[0]~en_regout\,
	padio => ww_state(0));

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\state[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \washing_machine_driver|curr_state\(1),
	oe => \washing_machine_driver|curr_state[0]~en_regout\,
	padio => ww_state(1));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sevSeg_data[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sev_segment_driver|sevSeg_data[0]~7_combout\,
	oe => VCC,
	padio => ww_sevSeg_data(0));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sevSeg_data[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sev_segment_driver|sevSeg_data[1]~10_combout\,
	oe => VCC,
	padio => ww_sevSeg_data(1));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sevSeg_data[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sev_segment_driver|sevSeg_data[2]~12_combout\,
	oe => VCC,
	padio => ww_sevSeg_data(2));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sevSeg_data[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sev_segment_driver|sevSeg_data[3]~15_combout\,
	oe => VCC,
	padio => ww_sevSeg_data(3));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sevSeg_data[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sev_segment_driver|sevSeg_data[4]~18_combout\,
	oe => VCC,
	padio => ww_sevSeg_data(4));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sevSeg_data[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sev_segment_driver|sevSeg_data[5]~20_combout\,
	oe => VCC,
	padio => ww_sevSeg_data(5));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sevSeg_data[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sev_segment_driver|sevSeg_data[6]~22_combout\,
	oe => VCC,
	padio => ww_sevSeg_data(6));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sevSeg_driver[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sev_segment_driver|sevSeg_driver[0]~1_combout\,
	oe => VCC,
	padio => ww_sevSeg_driver(0));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sevSeg_driver[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sev_segment_driver|Equal14~2_combout\,
	oe => VCC,
	padio => ww_sevSeg_driver(1));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sevSeg_driver[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sev_segment_driver|Equal14~3_combout\,
	oe => VCC,
	padio => ww_sevSeg_driver(2));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sevSeg_driver[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sev_segment_driver|Equal14~4_combout\,
	oe => VCC,
	padio => ww_sevSeg_driver(3));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sevSeg_driver[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sev_segment_driver|Mux16~0_combout\,
	oe => VCC,
	padio => ww_sevSeg_driver(4));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sevSeg_driver[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sev_segment_driver|ALT_INV_sevSeg_data[3]~13_combout\,
	oe => VCC,
	padio => ww_sevSeg_driver(5));
END structure;


