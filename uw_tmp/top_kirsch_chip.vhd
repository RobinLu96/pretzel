-- Copyright (C) 1991-2011 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 10.1 Build 197 01/19/2011 Service Pack 1 SJ Full Version"

-- DATE "03/20/2015 14:40:28"

-- 
-- Device: Altera EP2C35F672C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_kirsch_chip IS
    PORT (
	nrst : IN std_logic;
	clk : IN std_logic;
	rxflex : IN std_logic;
	txflex : OUT std_logic;
	o_sevenseg : OUT std_logic_vector(15 DOWNTO 0);
	o_mode : OUT std_logic_vector(1 DOWNTO 0);
	o_nrst : OUT std_logic;
	debug_key : IN std_logic_vector(3 DOWNTO 1);
	debug_switch : IN std_logic_vector(17 DOWNTO 0);
	debug_led_red : OUT std_logic_vector(16 DOWNTO 0);
	debug_led_grn : OUT std_logic_vector(5 DOWNTO 0);
	debug_sevenseg_0 : OUT std_logic_vector(7 DOWNTO 0);
	debug_sevenseg_1 : OUT std_logic_vector(7 DOWNTO 0);
	debug_sevenseg_2 : OUT std_logic_vector(7 DOWNTO 0);
	debug_sevenseg_3 : OUT std_logic_vector(7 DOWNTO 0);
	debug_sevenseg_4 : OUT std_logic_vector(7 DOWNTO 0);
	debug_sevenseg_5 : OUT std_logic_vector(7 DOWNTO 0)
	);
END top_kirsch_chip;

-- Design Ports Information
-- txflex	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[0]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[1]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[2]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[4]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[5]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[6]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[7]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[8]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[9]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[10]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[11]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[12]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[13]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[14]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[15]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_mode[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_mode[1]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_nrst	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_0[0]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_0[1]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_0[2]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_0[4]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_0[5]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_0[6]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_0[7]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_1[0]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_1[1]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_1[2]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_1[4]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_1[5]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_1[6]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_1[7]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_2[0]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_2[1]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_2[2]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_2[4]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_2[5]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_2[6]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_2[7]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_3[0]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_3[1]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_3[2]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_3[4]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_3[5]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_3[6]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_3[7]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_4[0]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_4[1]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_4[2]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_4[4]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_4[5]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_4[6]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_4[7]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_5[0]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_5[1]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_5[2]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_5[4]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_5[5]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_5[6]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_5[7]	=>  Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nrst	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rxflex	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_key[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_key[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_key[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top_kirsch_chip IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_nrst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rxflex : std_logic;
SIGNAL ww_txflex : std_logic;
SIGNAL ww_o_sevenseg : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_o_nrst : std_logic;
SIGNAL ww_debug_key : std_logic_vector(3 DOWNTO 1);
SIGNAL ww_debug_switch : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_debug_led_red : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_debug_led_grn : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_debug_sevenseg_0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_sevenseg_1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_sevenseg_2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_sevenseg_3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_sevenseg_4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_sevenseg_5 : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|m2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|m2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|m2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|m3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|m3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|m3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|m1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|m1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|m1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_uw_uart|ld_sdout\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_o_row|nx58250z15\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx4608z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxBitCnt_3_\ : std_logic;
SIGNAL \u_uw_uart|nx18433z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDivisor_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z6\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_o_row|nx51271z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx51917z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx51917z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx51917z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z11\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z15\ : std_logic;
SIGNAL \u_uw_uart|nx39480z4\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z21\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z25\ : std_logic;
SIGNAL \u_uw_uart|nx40736z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx57253z1\ : std_logic;
SIGNAL \u_kirsch|o_edge\ : std_logic;
SIGNAL \u_kirsch|nx20813z3\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx54262z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx56256z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx59247z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx17096z1\ : std_logic;
SIGNAL \u_kirsch|sub4_12_\ : std_logic;
SIGNAL \u_kirsch|sub4_11_\ : std_logic;
SIGNAL \u_kirsch|sub4_10_\ : std_logic;
SIGNAL \u_kirsch|sub4_9_\ : std_logic;
SIGNAL \u_kirsch|sub4_8_\ : std_logic;
SIGNAL \u_kirsch|sub4_7_\ : std_logic;
SIGNAL \u_kirsch|nx60630z1\ : std_logic;
SIGNAL \u_kirsch|output_edge_22n5s1\ : std_logic;
SIGNAL \u_kirsch|sub4_13_\ : std_logic;
SIGNAL \rxflex~combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx15541z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxBitCnt_3_\ : std_logic;
SIGNAL \u_kirsch|r15_12_\ : std_logic;
SIGNAL \u_kirsch|r14_12_\ : std_logic;
SIGNAL \u_kirsch|r15_11_\ : std_logic;
SIGNAL \u_kirsch|r14_11_\ : std_logic;
SIGNAL \u_kirsch|r15_10_\ : std_logic;
SIGNAL \u_kirsch|r14_10_\ : std_logic;
SIGNAL \u_kirsch|r15_9_\ : std_logic;
SIGNAL \u_kirsch|r14_9_\ : std_logic;
SIGNAL \u_kirsch|r15_8_\ : std_logic;
SIGNAL \u_kirsch|r14_8_\ : std_logic;
SIGNAL \u_kirsch|r15_7_\ : std_logic;
SIGNAL \u_kirsch|r14_7_\ : std_logic;
SIGNAL \u_kirsch|r15_6_\ : std_logic;
SIGNAL \u_kirsch|r14_6_\ : std_logic;
SIGNAL \u_kirsch|r15_5_\ : std_logic;
SIGNAL \u_kirsch|r14_5_\ : std_logic;
SIGNAL \u_kirsch|r15_4_\ : std_logic;
SIGNAL \u_kirsch|r14_4_\ : std_logic;
SIGNAL \u_kirsch|r15_3_\ : std_logic;
SIGNAL \u_kirsch|r14_3_\ : std_logic;
SIGNAL \u_kirsch|r15_2_\ : std_logic;
SIGNAL \u_kirsch|r15_0_\ : std_logic;
SIGNAL \u_kirsch|r15_1_\ : std_logic;
SIGNAL \u_kirsch|sub4_sub13_22i36|nx63795z11\ : std_logic;
SIGNAL \u_kirsch|sub4_sub13_22i36|nx63795z10\ : std_logic;
SIGNAL \u_kirsch|sub4_sub13_22i36|nx63795z9\ : std_logic;
SIGNAL \u_kirsch|sub4_sub13_22i36|nx63795z8\ : std_logic;
SIGNAL \u_kirsch|sub4_sub13_22i36|nx63795z7\ : std_logic;
SIGNAL \u_kirsch|sub4_sub13_22i36|nx63795z6\ : std_logic;
SIGNAL \u_kirsch|sub4_sub13_22i36|nx63795z5\ : std_logic;
SIGNAL \u_kirsch|sub4_sub13_22i36|d_6_\ : std_logic;
SIGNAL \u_kirsch|sub4_sub13_22i36|nx63795z4\ : std_logic;
SIGNAL \u_kirsch|sub4_sub13_22i36|d_7_\ : std_logic;
SIGNAL \u_kirsch|sub4_sub13_22i36|nx63795z3\ : std_logic;
SIGNAL \u_kirsch|sub4_sub13_22i36|d_8_\ : std_logic;
SIGNAL \u_kirsch|sub4_sub13_22i36|nx63795z2\ : std_logic;
SIGNAL \u_kirsch|sub4_sub13_22i36|d_9_\ : std_logic;
SIGNAL \u_kirsch|sub4_sub13_22i36|nx63795z1\ : std_logic;
SIGNAL \u_kirsch|sub4_sub13_22i36|d_10_\ : std_logic;
SIGNAL \u_kirsch|sub4_sub13_22i36|nx23445z2\ : std_logic;
SIGNAL \u_kirsch|sub4_sub13_22i36|d_11_\ : std_logic;
SIGNAL \u_kirsch|sub4_sub13_22i36|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|nx46108z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx52268z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|not_rtlc17_X_0_n360\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx8373z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx8373z1\ : std_logic;
SIGNAL \u_kirsch|add4_12_\ : std_logic;
SIGNAL \u_kirsch|max3_9_\ : std_logic;
SIGNAL \u_kirsch|add4_11_\ : std_logic;
SIGNAL \u_kirsch|max3_8_\ : std_logic;
SIGNAL \u_kirsch|add4_10_\ : std_logic;
SIGNAL \u_kirsch|max3_7_\ : std_logic;
SIGNAL \u_kirsch|add4_9_\ : std_logic;
SIGNAL \u_kirsch|max3_6_\ : std_logic;
SIGNAL \u_kirsch|add4_8_\ : std_logic;
SIGNAL \u_kirsch|max3_5_\ : std_logic;
SIGNAL \u_kirsch|add4_7_\ : std_logic;
SIGNAL \u_kirsch|max3_4_\ : std_logic;
SIGNAL \u_kirsch|add4_6_\ : std_logic;
SIGNAL \u_kirsch|max3_3_\ : std_logic;
SIGNAL \u_kirsch|add4_5_\ : std_logic;
SIGNAL \u_kirsch|max3_2_\ : std_logic;
SIGNAL \u_kirsch|add4_4_\ : std_logic;
SIGNAL \u_kirsch|max3_1_\ : std_logic;
SIGNAL \u_kirsch|add4_3_\ : std_logic;
SIGNAL \u_kirsch|max3_0_\ : std_logic;
SIGNAL \u_kirsch|add4_2_\ : std_logic;
SIGNAL \u_kirsch|add4_0_\ : std_logic;
SIGNAL \u_kirsch|add4_1_\ : std_logic;
SIGNAL \u_kirsch|r12_9_\ : std_logic;
SIGNAL \u_kirsch|r12_8_\ : std_logic;
SIGNAL \u_kirsch|r12_6_\ : std_logic;
SIGNAL \u_kirsch|r12_4_\ : std_logic;
SIGNAL \u_kirsch|r12_3_\ : std_logic;
SIGNAL \u_kirsch|r12_2_\ : std_logic;
SIGNAL \u_kirsch|r12_0_\ : std_logic;
SIGNAL \u_kirsch|dir5_0_\ : std_logic;
SIGNAL \u_kirsch|r13_10_\ : std_logic;
SIGNAL \u_kirsch|r13_9_\ : std_logic;
SIGNAL \u_kirsch|r13_8_\ : std_logic;
SIGNAL \u_kirsch|r13_7_\ : std_logic;
SIGNAL \u_kirsch|r13_6_\ : std_logic;
SIGNAL \u_kirsch|r13_5_\ : std_logic;
SIGNAL \u_kirsch|r13_4_\ : std_logic;
SIGNAL \u_kirsch|r13_3_\ : std_logic;
SIGNAL \u_kirsch|r13_2_\ : std_logic;
SIGNAL \u_kirsch|r13_1_\ : std_logic;
SIGNAL \u_kirsch|r13_0_\ : std_logic;
SIGNAL \u_kirsch|add4_add11_22i35|nx62798z21\ : std_logic;
SIGNAL \u_kirsch|add4_add11_22i35|nx37973z1\ : std_logic;
SIGNAL \u_kirsch|add4_add11_22i35|nx62798z19\ : std_logic;
SIGNAL \u_kirsch|add4_add11_22i35|nx38970z1\ : std_logic;
SIGNAL \u_kirsch|add4_add11_22i35|nx62798z17\ : std_logic;
SIGNAL \u_kirsch|add4_add11_22i35|nx39967z1\ : std_logic;
SIGNAL \u_kirsch|add4_add11_22i35|nx62798z15\ : std_logic;
SIGNAL \u_kirsch|add4_add11_22i35|nx40964z1\ : std_logic;
SIGNAL \u_kirsch|add4_add11_22i35|nx62798z13\ : std_logic;
SIGNAL \u_kirsch|add4_add11_22i35|nx41961z1\ : std_logic;
SIGNAL \u_kirsch|add4_add11_22i35|nx62798z11\ : std_logic;
SIGNAL \u_kirsch|add4_add11_22i35|nx42958z1\ : std_logic;
SIGNAL \u_kirsch|add4_add11_22i35|nx62798z9\ : std_logic;
SIGNAL \u_kirsch|add4_add11_22i35|nx43955z1\ : std_logic;
SIGNAL \u_kirsch|add4_add11_22i35|nx62798z7\ : std_logic;
SIGNAL \u_kirsch|add4_add11_22i35|nx44952z1\ : std_logic;
SIGNAL \u_kirsch|add4_add11_22i35|nx62798z5\ : std_logic;
SIGNAL \u_kirsch|add4_add11_22i35|nx45949z1\ : std_logic;
SIGNAL \u_kirsch|add4_add11_22i35|nx62798z3\ : std_logic;
SIGNAL \u_kirsch|add4_add11_22i35|nx46946z1\ : std_logic;
SIGNAL \u_kirsch|add4_add11_22i35|nx23445z2\ : std_logic;
SIGNAL \u_kirsch|add4_add11_22i35|nx62798z1\ : std_logic;
SIGNAL \u_kirsch|add4_add11_22i35|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|max2_8_\ : std_logic;
SIGNAL \u_kirsch|max2_3_\ : std_logic;
SIGNAL \u_kirsch|max2_2_\ : std_logic;
SIGNAL \u_kirsch|max2_0_\ : std_logic;
SIGNAL \u_kirsch|r1_7_\ : std_logic;
SIGNAL \u_kirsch|r1_6_\ : std_logic;
SIGNAL \u_kirsch|r2_4_\ : std_logic;
SIGNAL \u_kirsch|r1_1_\ : std_logic;
SIGNAL \u_kirsch|dir2_2_\ : std_logic;
SIGNAL \u_kirsch|nx36266z1\ : std_logic;
SIGNAL \u_kirsch|r9_8_\ : std_logic;
SIGNAL \u_kirsch|r9_3_\ : std_logic;
SIGNAL \u_kirsch|r9_2_\ : std_logic;
SIGNAL \u_kirsch|r9_0_\ : std_logic;
SIGNAL \u_kirsch|dir6_2_\ : std_logic;
SIGNAL \u_kirsch|add3_10_\ : std_logic;
SIGNAL \u_kirsch|add3_9_\ : std_logic;
SIGNAL \u_kirsch|add3_8_\ : std_logic;
SIGNAL \u_kirsch|add3_7_\ : std_logic;
SIGNAL \u_kirsch|add3_6_\ : std_logic;
SIGNAL \u_kirsch|add3_5_\ : std_logic;
SIGNAL \u_kirsch|add3_4_\ : std_logic;
SIGNAL \u_kirsch|add3_3_\ : std_logic;
SIGNAL \u_kirsch|add3_2_\ : std_logic;
SIGNAL \u_kirsch|add3_1_\ : std_logic;
SIGNAL \u_kirsch|add3_0_\ : std_logic;
SIGNAL \u_kirsch|r7_8_\ : std_logic;
SIGNAL \u_kirsch|r5_7_\ : std_logic;
SIGNAL \u_kirsch|r7_6_\ : std_logic;
SIGNAL \u_kirsch|r7_5_\ : std_logic;
SIGNAL \u_kirsch|r5_4_\ : std_logic;
SIGNAL \u_kirsch|r7_3_\ : std_logic;
SIGNAL \u_kirsch|r7_2_\ : std_logic;
SIGNAL \u_kirsch|r5_1_\ : std_logic;
SIGNAL \u_kirsch|r7_0_\ : std_logic;
SIGNAL \u_kirsch|nx41056z2\ : std_logic;
SIGNAL \u_kirsch|nx41056z1\ : std_logic;
SIGNAL \u_kirsch|a_7_\ : std_logic;
SIGNAL \u_kirsch|h_6_\ : std_logic;
SIGNAL \u_kirsch|nx31640z2\ : std_logic;
SIGNAL \u_kirsch|g_6_\ : std_logic;
SIGNAL \u_kirsch|nx40059z2\ : std_logic;
SIGNAL \u_kirsch|nx40059z1\ : std_logic;
SIGNAL \u_kirsch|h_4_\ : std_logic;
SIGNAL \u_kirsch|nx29646z2\ : std_logic;
SIGNAL \u_kirsch|nx29646z1\ : std_logic;
SIGNAL \u_kirsch|d_4_\ : std_logic;
SIGNAL \u_kirsch|f_1_\ : std_logic;
SIGNAL \u_kirsch|g_1_\ : std_logic;
SIGNAL \u_kirsch|nx35074z2\ : std_logic;
SIGNAL \u_kirsch|nx35074z1\ : std_logic;
SIGNAL \u_kirsch|a_1_\ : std_logic;
SIGNAL \u_kirsch|nx25658z2\ : std_logic;
SIGNAL \u_kirsch|nx2019z1\ : std_logic;
SIGNAL \u_kirsch|dir3_2_\ : std_logic;
SIGNAL \u_kirsch|dir5_2_\ : std_logic;
SIGNAL \u_kirsch|dir6_18n5ss1_2_\ : std_logic;
SIGNAL \u_kirsch|nx35695z1\ : std_logic;
SIGNAL \u_kirsch|r8_10_\ : std_logic;
SIGNAL \u_kirsch|r8_9_\ : std_logic;
SIGNAL \u_kirsch|r8_8_\ : std_logic;
SIGNAL \u_kirsch|r8_7_\ : std_logic;
SIGNAL \u_kirsch|r8_6_\ : std_logic;
SIGNAL \u_kirsch|r8_5_\ : std_logic;
SIGNAL \u_kirsch|r8_4_\ : std_logic;
SIGNAL \u_kirsch|r8_3_\ : std_logic;
SIGNAL \u_kirsch|r8_2_\ : std_logic;
SIGNAL \u_kirsch|r8_1_\ : std_logic;
SIGNAL \u_kirsch|r8_0_\ : std_logic;
SIGNAL \u_kirsch|add3_add11_22i1|nx62798z29\ : std_logic;
SIGNAL \u_kirsch|add3_add11_22i1|nx37973z1\ : std_logic;
SIGNAL \u_kirsch|add3_add11_22i1|nx62798z26\ : std_logic;
SIGNAL \u_kirsch|add3_add11_22i1|nx38970z1\ : std_logic;
SIGNAL \u_kirsch|add3_add11_22i1|nx62798z23\ : std_logic;
SIGNAL \u_kirsch|add3_add11_22i1|nx39967z1\ : std_logic;
SIGNAL \u_kirsch|add3_add11_22i1|nx62798z20\ : std_logic;
SIGNAL \u_kirsch|add3_add11_22i1|nx40964z1\ : std_logic;
SIGNAL \u_kirsch|add3_add11_22i1|nx62798z17\ : std_logic;
SIGNAL \u_kirsch|add3_add11_22i1|nx41961z1\ : std_logic;
SIGNAL \u_kirsch|add3_add11_22i1|nx62798z14\ : std_logic;
SIGNAL \u_kirsch|add3_add11_22i1|nx42958z1\ : std_logic;
SIGNAL \u_kirsch|add3_add11_22i1|nx62798z11\ : std_logic;
SIGNAL \u_kirsch|add3_add11_22i1|nx43955z1\ : std_logic;
SIGNAL \u_kirsch|add3_add11_22i1|nx62798z8\ : std_logic;
SIGNAL \u_kirsch|add3_add11_22i1|nx44952z1\ : std_logic;
SIGNAL \u_kirsch|add3_add11_22i1|nx62798z5\ : std_logic;
SIGNAL \u_kirsch|add3_add11_22i1|nx45949z1\ : std_logic;
SIGNAL \u_kirsch|add3_add11_22i1|nx62798z3\ : std_logic;
SIGNAL \u_kirsch|add3_add11_22i1|nx46946z1\ : std_logic;
SIGNAL \u_kirsch|add3_add11_22i1|nx62798z1\ : std_logic;
SIGNAL \u_kirsch|add1_8_\ : std_logic;
SIGNAL \u_kirsch|max1_7_\ : std_logic;
SIGNAL \u_kirsch|add1_6_\ : std_logic;
SIGNAL \u_kirsch|add1_5_\ : std_logic;
SIGNAL \u_kirsch|max1_4_\ : std_logic;
SIGNAL \u_kirsch|add1_3_\ : std_logic;
SIGNAL \u_kirsch|add1_2_\ : std_logic;
SIGNAL \u_kirsch|max1_1_\ : std_logic;
SIGNAL \u_kirsch|add1_0_\ : std_logic;
SIGNAL \u_kirsch|i_6_\ : std_logic;
SIGNAL \u_kirsch|i_4_\ : std_logic;
SIGNAL \u_kirsch|nx33634z1\ : std_logic;
SIGNAL \u_uw_uart|rdata_3_\ : std_logic;
SIGNAL \u_kirsch|nx10438z1\ : std_logic;
SIGNAL \u_kirsch|dir1_2_\ : std_logic;
SIGNAL \u_kirsch|dir5_18n5ss1_2_\ : std_logic;
SIGNAL \u_kirsch|r3_7_\ : std_logic;
SIGNAL \u_kirsch|r4_6_\ : std_logic;
SIGNAL \u_kirsch|r3_5_\ : std_logic;
SIGNAL \u_kirsch|r4_4_\ : std_logic;
SIGNAL \u_kirsch|r3_3_\ : std_logic;
SIGNAL \u_kirsch|r3_2_\ : std_logic;
SIGNAL \u_kirsch|r4_1_\ : std_logic;
SIGNAL \u_kirsch|r3_0_\ : std_logic;
SIGNAL \u_kirsch|add1_add8_22i31|nx37973z1\ : std_logic;
SIGNAL \u_kirsch|add1_add8_22i31|nx39967z1\ : std_logic;
SIGNAL \u_kirsch|add1_add8_22i31|nx40964z1\ : std_logic;
SIGNAL \u_kirsch|add1_add8_22i31|nx42958z1\ : std_logic;
SIGNAL \u_kirsch|add1_add8_22i31|nx43955z1\ : std_logic;
SIGNAL \u_kirsch|add1_add8_22i31|nx23445z2\ : std_logic;
SIGNAL \u_kirsch|add1_add8_22i31|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|wren_m1\ : std_logic;
SIGNAL \u_kirsch|wren_m3\ : std_logic;
SIGNAL \u_kirsch|wren_m2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_3_\ : std_logic;
SIGNAL \u_kirsch|nx41318z2\ : std_logic;
SIGNAL \u_kirsch|nx41318z1\ : std_logic;
SIGNAL \u_kirsch|nx50734z2\ : std_logic;
SIGNAL \u_kirsch|nx50734z1\ : std_logic;
SIGNAL \u_kirsch|nx43312z2\ : std_logic;
SIGNAL \u_kirsch|nx43312z1\ : std_logic;
SIGNAL \u_kirsch|nx52728z2\ : std_logic;
SIGNAL \u_kirsch|nx52728z1\ : std_logic;
SIGNAL \u_kirsch|nx53725z2\ : std_logic;
SIGNAL \u_kirsch|nx45306z2\ : std_logic;
SIGNAL \u_kirsch|nx45306z1\ : std_logic;
SIGNAL \u_kirsch|nx54722z2\ : std_logic;
SIGNAL \u_kirsch|nx46303z2\ : std_logic;
SIGNAL \u_kirsch|nx46303z1\ : std_logic;
SIGNAL \u_kirsch|nx55719z2\ : std_logic;
SIGNAL \u_kirsch|nx55719z1\ : std_logic;
SIGNAL \u_kirsch|nx47300z2\ : std_logic;
SIGNAL \u_kirsch|nx48297z2\ : std_logic;
SIGNAL \u_kirsch|nx48297z1\ : std_logic;
SIGNAL \u_kirsch|dir5_0_~_wirecell_combout\ : std_logic;
SIGNAL \u_kirsch|sub4_sub13_22i36|nx23445z1~_wirecell_combout\ : std_logic;
SIGNAL \u_kirsch|r15_12_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r14_12_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r15_11_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r14_11_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r14_10_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r15_9_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r14_9_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r15_8_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r14_8_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r14_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r15_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r14_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r14_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r14_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r14_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r15_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|max3_9_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|max3_8_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|max3_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|max3_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|max3_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|max3_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|max3_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|max3_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|max3_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|max3_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|dir1_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|add4_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r12_8_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r9_8_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r12_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r12_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r12_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r9_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r12_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r9_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r9_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|max1_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|max1_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|max1_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|max2_8_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|max2_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|max2_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|max2_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r13_10_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r13_9_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r13_8_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r8_8_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r13_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r8_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r13_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r8_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r8_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r13_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r13_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r8_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r8_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r13_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r8_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r8_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r8_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|i_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|i_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|a_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r7_8_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r5_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r7_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r5_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r7_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r7_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r5_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r7_0_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|rdata_3_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDivisor_5_~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z2~_wirecell_combout\ : std_logic;
SIGNAL \nrst~combout\ : std_logic;
SIGNAL \u_uw_uart|rawrx\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx15541z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Rx\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|not_Rx_r\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx15541z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_6_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx14544z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx13547z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx11364z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxBitCnt_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx10367z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxBitCnt_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx9370z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx9370z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxBitCnt_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx13547z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx11553z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_6_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx16538z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx51271z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx65151z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx53265z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx54262z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z10\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx56256z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx57253z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx58250z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z9\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z8\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx59247z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx60244z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z6\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx55259z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z7\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z5\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TopRx\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx30017z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxRDY\ : std_logic;
SIGNAL \u_uw_uart|nx58116z1\ : std_logic;
SIGNAL \u_uw_uart|o_pixavail\ : std_logic;
SIGNAL \u_kirsch|v_0_\ : std_logic;
SIGNAL \u_kirsch|v_1_\ : std_logic;
SIGNAL \u_kirsch|v_2_\ : std_logic;
SIGNAL \u_kirsch|v_3_\ : std_logic;
SIGNAL \u_kirsch|v_4_\ : std_logic;
SIGNAL \u_kirsch|v_5_\ : std_logic;
SIGNAL \u_kirsch|v_6_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|not_Rx_r~_wirecell_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx54636z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_7_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_7_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_7_\ : std_logic;
SIGNAL \u_uw_uart|rdata_7_\ : std_logic;
SIGNAL \u_uw_uart|datain_7_\ : std_logic;
SIGNAL \u_kirsch|e_7_\ : std_logic;
SIGNAL \u_kirsch|f_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_7_\ : std_logic;
SIGNAL \u_kirsch|g_7_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_6_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_6_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_5_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_4_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_4_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_3_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_1_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_0_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_0_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_0_\ : std_logic;
SIGNAL \u_uw_uart|rdata_0_\ : std_logic;
SIGNAL \u_uw_uart|datain_0_\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_x|nx51271z1\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_x|nx57253z3\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_x|nx58250z15\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_o_row|nx58250z14\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_o_row|nx52268z1\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_x|nx58250z14\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_x|nx58250z12\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_x|nx53265z1\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_x|nx58250z11\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_x|nx58250z10\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_x|nx54262z1\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_x|nx58250z9\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_x|nx58250z8\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_x|nx55259z1\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_x|nx58250z7\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_x|nx58250z6\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_x|nx56256z1\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_x|nx58250z5\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_x|nx58250z4\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_x|nx57253z1\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_x|nx58250z3\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_x|nx58250z2\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_x|nx58250z1\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_x|nx1041z1\ : std_logic;
SIGNAL \u_kirsch|nx17322z8\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_x|nx52268z1\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_x|nx58250z13\ : std_logic;
SIGNAL \u_kirsch|nx17322z7\ : std_logic;
SIGNAL \u_kirsch|nx17322z6\ : std_logic;
SIGNAL \u_kirsch|nx17322z9\ : std_logic;
SIGNAL \u_kirsch|nx17322z2\ : std_logic;
SIGNAL \u_kirsch|nx17322z1\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_o_row|nx57253z3\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_o_row|nx58250z13\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_o_row|nx58250z12\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_o_row|nx58250z10\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_o_row|nx54262z1\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_o_row|nx58250z9\ : std_logic;
SIGNAL \u_kirsch|nx17322z5\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_o_row|nx58250z8\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_o_row|nx55259z1\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_o_row|nx58250z7\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_o_row|nx58250z6\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_o_row|nx58250z4\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_o_row|nx57253z1\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_o_row|nx58250z3\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_o_row|nx58250z2\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_o_row|nx58250z1\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_o_row|nx1041z1\ : std_logic;
SIGNAL \u_kirsch|nx17322z4\ : std_logic;
SIGNAL \u_kirsch|nx17322z3\ : std_logic;
SIGNAL \u_kirsch|addr_x_0_\ : std_logic;
SIGNAL \u_kirsch|addr_x_1_\ : std_logic;
SIGNAL \u_kirsch|addr_x_2_\ : std_logic;
SIGNAL \u_kirsch|addr_x_3_\ : std_logic;
SIGNAL \u_kirsch|addr_x_4_\ : std_logic;
SIGNAL \u_kirsch|addr_x_5_\ : std_logic;
SIGNAL \u_kirsch|addr_x_6_\ : std_logic;
SIGNAL \u_kirsch|addr_x_7_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_1_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_1_\ : std_logic;
SIGNAL \u_uw_uart|rdata_1_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|rdata_1_\ : std_logic;
SIGNAL \u_uw_uart|datain_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_2_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_2_\ : std_logic;
SIGNAL \u_uw_uart|rdata_2_\ : std_logic;
SIGNAL \u_uw_uart|datain_2_\ : std_logic;
SIGNAL \u_uw_uart|datain_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_4_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_4_\ : std_logic;
SIGNAL \u_uw_uart|rdata_4_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|rdata_4_\ : std_logic;
SIGNAL \u_uw_uart|datain_4_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_5_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_5_\ : std_logic;
SIGNAL \u_uw_uart|rdata_5_\ : std_logic;
SIGNAL \u_uw_uart|datain_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_6_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_6_\ : std_logic;
SIGNAL \u_uw_uart|rdata_6_\ : std_logic;
SIGNAL \u_uw_uart|datain_6_\ : std_logic;
SIGNAL \u_kirsch|nx36625z1\ : std_logic;
SIGNAL \u_kirsch|t_15n2s1_0_\ : std_logic;
SIGNAL \u_kirsch|nx38525z1\ : std_logic;
SIGNAL \u_kirsch|t_0_\ : std_logic;
SIGNAL \u_kirsch|t_15n2s1_1_\ : std_logic;
SIGNAL \u_kirsch|t_1_\ : std_logic;
SIGNAL \u_kirsch|nx20492z2\ : std_logic;
SIGNAL \u_kirsch|d_7_\ : std_logic;
SIGNAL \u_kirsch|i_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|i_7_\ : std_logic;
SIGNAL \u_kirsch|h_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|h_7_\ : std_logic;
SIGNAL \u_kirsch|nx49737z2\ : std_logic;
SIGNAL \u_kirsch|nx49737z1\ : std_logic;
SIGNAL \u_kirsch|nx20492z1\ : std_logic;
SIGNAL \u_kirsch|c_7_\ : std_logic;
SIGNAL \u_kirsch|b_7_\ : std_logic;
SIGNAL \u_kirsch|nx41056z3\ : std_logic;
SIGNAL \u_kirsch|r4_7_\ : std_logic;
SIGNAL \u_kirsch|nx21489z1\ : std_logic;
SIGNAL \u_kirsch|c_6_\ : std_logic;
SIGNAL \u_kirsch|b_6_\ : std_logic;
SIGNAL \u_kirsch|a_6_\ : std_logic;
SIGNAL \u_kirsch|nx42315z2\ : std_logic;
SIGNAL \u_kirsch|e_6_\ : std_logic;
SIGNAL \u_kirsch|nx42315z1\ : std_logic;
SIGNAL \u_kirsch|r3_6_\ : std_logic;
SIGNAL \u_kirsch|e_5_\ : std_logic;
SIGNAL \u_kirsch|f_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_5_\ : std_logic;
SIGNAL \u_kirsch|g_5_\ : std_logic;
SIGNAL \u_kirsch|nx34631z1\ : std_logic;
SIGNAL \u_kirsch|d_5_\ : std_logic;
SIGNAL \u_kirsch|i_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|i_5_\ : std_logic;
SIGNAL \u_kirsch|h_5_\ : std_logic;
SIGNAL \u_kirsch|nx51731z2\ : std_logic;
SIGNAL \u_kirsch|nx51731z1\ : std_logic;
SIGNAL \u_kirsch|nx22486z1\ : std_logic;
SIGNAL \u_kirsch|c_5_\ : std_logic;
SIGNAL \u_kirsch|b_5_\ : std_logic;
SIGNAL \u_kirsch|r4_5_\ : std_logic;
SIGNAL \u_kirsch|nx23483z1\ : std_logic;
SIGNAL \u_kirsch|c_4_\ : std_logic;
SIGNAL \u_kirsch|b_4_\ : std_logic;
SIGNAL \u_kirsch|a_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|a_4_\ : std_logic;
SIGNAL \u_kirsch|e_4_\ : std_logic;
SIGNAL \u_kirsch|f_4_\ : std_logic;
SIGNAL \u_kirsch|nx44309z2\ : std_logic;
SIGNAL \u_kirsch|nx44309z1\ : std_logic;
SIGNAL \u_kirsch|r3_4_\ : std_logic;
SIGNAL \u_kirsch|nx32637z3\ : std_logic;
SIGNAL \u_kirsch|d_3_\ : std_logic;
SIGNAL \u_kirsch|nx53725z1\ : std_logic;
SIGNAL \u_kirsch|nx24480z1\ : std_logic;
SIGNAL \u_kirsch|c_3_\ : std_logic;
SIGNAL \u_kirsch|b_3_\ : std_logic;
SIGNAL \u_kirsch|r4_3_\ : std_logic;
SIGNAL \u_kirsch|nx31640z3\ : std_logic;
SIGNAL \u_kirsch|d_2_\ : std_logic;
SIGNAL \u_kirsch|nx54722z1\ : std_logic;
SIGNAL \u_kirsch|nx25477z1\ : std_logic;
SIGNAL \u_kirsch|c_2_\ : std_logic;
SIGNAL \u_kirsch|b_2_\ : std_logic;
SIGNAL \u_kirsch|r4_2_\ : std_logic;
SIGNAL \u_kirsch|e_1_\ : std_logic;
SIGNAL \u_kirsch|nx47300z1\ : std_logic;
SIGNAL \u_kirsch|nx26474z1\ : std_logic;
SIGNAL \u_kirsch|c_1_\ : std_logic;
SIGNAL \u_kirsch|r3_1_\ : std_logic;
SIGNAL \u_kirsch|nx29646z3\ : std_logic;
SIGNAL \u_kirsch|d_0_\ : std_logic;
SIGNAL \u_kirsch|i_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|i_0_\ : std_logic;
SIGNAL \u_kirsch|h_0_\ : std_logic;
SIGNAL \u_kirsch|e_0_\ : std_logic;
SIGNAL \u_kirsch|f_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_0_\ : std_logic;
SIGNAL \u_kirsch|g_0_\ : std_logic;
SIGNAL \u_kirsch|nx56716z2\ : std_logic;
SIGNAL \u_kirsch|nx56716z1\ : std_logic;
SIGNAL \u_kirsch|nx27471z1\ : std_logic;
SIGNAL \u_kirsch|c_0_\ : std_logic;
SIGNAL \u_kirsch|b_0_\ : std_logic;
SIGNAL \u_kirsch|r4_0_\ : std_logic;
SIGNAL \u_kirsch|add1_add8_22i31|nx44952z22\ : std_logic;
SIGNAL \u_kirsch|add1_add8_22i31|nx44952z19\ : std_logic;
SIGNAL \u_kirsch|add1_add8_22i31|nx44952z16\ : std_logic;
SIGNAL \u_kirsch|add1_add8_22i31|nx44952z13\ : std_logic;
SIGNAL \u_kirsch|add1_add8_22i31|nx44952z10\ : std_logic;
SIGNAL \u_kirsch|add1_add8_22i31|nx44952z7\ : std_logic;
SIGNAL \u_kirsch|add1_add8_22i31|nx44952z4\ : std_logic;
SIGNAL \u_kirsch|add1_add8_22i31|nx44952z1\ : std_logic;
SIGNAL \u_kirsch|add1_7_\ : std_logic;
SIGNAL \u_kirsch|r7_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r7_7_\ : std_logic;
SIGNAL \u_kirsch|max1_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_6_\ : std_logic;
SIGNAL \u_kirsch|nx31640z1\ : std_logic;
SIGNAL \u_kirsch|nx35628z1\ : std_logic;
SIGNAL \u_kirsch|d_6_\ : std_logic;
SIGNAL \u_kirsch|r2_6_\ : std_logic;
SIGNAL \u_kirsch|nx32637z2\ : std_logic;
SIGNAL \u_kirsch|nx32637z1\ : std_logic;
SIGNAL \u_kirsch|r2_7_\ : std_logic;
SIGNAL \u_kirsch|nx39062z2\ : std_logic;
SIGNAL \u_kirsch|nx39062z1\ : std_logic;
SIGNAL \u_kirsch|a_5_\ : std_logic;
SIGNAL \u_kirsch|r1_5_\ : std_logic;
SIGNAL \u_kirsch|g_4_\ : std_logic;
SIGNAL \u_kirsch|nx38065z2\ : std_logic;
SIGNAL \u_kirsch|nx38065z1\ : std_logic;
SIGNAL \u_kirsch|r1_4_\ : std_logic;
SIGNAL \u_kirsch|e_3_\ : std_logic;
SIGNAL \u_kirsch|f_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|f_3_\ : std_logic;
SIGNAL \u_kirsch|g_3_\ : std_logic;
SIGNAL \u_kirsch|nx37068z2\ : std_logic;
SIGNAL \u_kirsch|nx37068z1\ : std_logic;
SIGNAL \u_kirsch|a_3_\ : std_logic;
SIGNAL \u_kirsch|r1_3_\ : std_logic;
SIGNAL \u_kirsch|e_2_\ : std_logic;
SIGNAL \u_kirsch|f_2_\ : std_logic;
SIGNAL \u_kirsch|g_2_\ : std_logic;
SIGNAL \u_kirsch|nx36071z2\ : std_logic;
SIGNAL \u_kirsch|nx36071z1\ : std_logic;
SIGNAL \u_kirsch|a_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|a_2_\ : std_logic;
SIGNAL \u_kirsch|r1_2_\ : std_logic;
SIGNAL \u_kirsch|b_1_\ : std_logic;
SIGNAL \u_kirsch|nx30643z3\ : std_logic;
SIGNAL \u_kirsch|d_1_\ : std_logic;
SIGNAL \u_kirsch|i_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|i_1_\ : std_logic;
SIGNAL \u_kirsch|h_1_\ : std_logic;
SIGNAL \u_kirsch|nx26655z2\ : std_logic;
SIGNAL \u_kirsch|nx26655z1\ : std_logic;
SIGNAL \u_kirsch|r2_1_\ : std_logic;
SIGNAL \u_kirsch|nx25658z1\ : std_logic;
SIGNAL \u_kirsch|r2_0_\ : std_logic;
SIGNAL \u_kirsch|sub1_sub8_22i30|nx23445z22\ : std_logic;
SIGNAL \u_kirsch|sub1_sub8_22i30|nx23445z19\ : std_logic;
SIGNAL \u_kirsch|sub1_sub8_22i30|nx23445z16\ : std_logic;
SIGNAL \u_kirsch|sub1_sub8_22i30|nx23445z13\ : std_logic;
SIGNAL \u_kirsch|sub1_sub8_22i30|nx23445z10\ : std_logic;
SIGNAL \u_kirsch|sub1_sub8_22i30|nx23445z7\ : std_logic;
SIGNAL \u_kirsch|sub1_sub8_22i30|nx23445z4\ : std_logic;
SIGNAL \u_kirsch|sub1_sub8_22i30|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|sub1_sub8_22i30|nx23445z1~_wirecell_combout\ : std_logic;
SIGNAL \u_kirsch|sub1_8_\ : std_logic;
SIGNAL \u_kirsch|max1_6_\ : std_logic;
SIGNAL \u_kirsch|r5_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r5_6_\ : std_logic;
SIGNAL \u_kirsch|max1_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|nx30643z2\ : std_logic;
SIGNAL \u_kirsch|nx30643z1\ : std_logic;
SIGNAL \u_kirsch|r2_5_\ : std_logic;
SIGNAL \u_kirsch|max1_5_\ : std_logic;
SIGNAL \u_kirsch|r5_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r5_5_\ : std_logic;
SIGNAL \u_kirsch|add1_add8_22i31|nx41961z1\ : std_logic;
SIGNAL \u_kirsch|add1_4_\ : std_logic;
SIGNAL \u_kirsch|r7_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r7_4_\ : std_logic;
SIGNAL \u_kirsch|max1_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|i_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|i_3_\ : std_logic;
SIGNAL \u_kirsch|h_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|h_3_\ : std_logic;
SIGNAL \u_kirsch|nx28649z2\ : std_logic;
SIGNAL \u_kirsch|nx28649z1\ : std_logic;
SIGNAL \u_kirsch|r2_3_\ : std_logic;
SIGNAL \u_kirsch|max1_3_\ : std_logic;
SIGNAL \u_kirsch|r5_3_\ : std_logic;
SIGNAL \u_kirsch|max1_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|i_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|i_2_\ : std_logic;
SIGNAL \u_kirsch|h_2_\ : std_logic;
SIGNAL \u_kirsch|nx27652z2\ : std_logic;
SIGNAL \u_kirsch|nx27652z1\ : std_logic;
SIGNAL \u_kirsch|r2_2_\ : std_logic;
SIGNAL \u_kirsch|max1_2_\ : std_logic;
SIGNAL \u_kirsch|r5_2_\ : std_logic;
SIGNAL \u_kirsch|add1_add8_22i31|nx38970z1\ : std_logic;
SIGNAL \u_kirsch|add1_1_\ : std_logic;
SIGNAL \u_kirsch|r7_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r7_1_\ : std_logic;
SIGNAL \u_kirsch|nx34077z2\ : std_logic;
SIGNAL \u_kirsch|nx34077z1\ : std_logic;
SIGNAL \u_kirsch|a_0_\ : std_logic;
SIGNAL \u_kirsch|r1_0_\ : std_logic;
SIGNAL \u_kirsch|max1_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|max1_0_\ : std_logic;
SIGNAL \u_kirsch|r5_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r5_0_\ : std_logic;
SIGNAL \u_kirsch|add2_add9_22i32|nx45949z24\ : std_logic;
SIGNAL \u_kirsch|add2_add9_22i32|nx45949z21\ : std_logic;
SIGNAL \u_kirsch|add2_add9_22i32|nx45949z18\ : std_logic;
SIGNAL \u_kirsch|add2_add9_22i32|nx45949z15\ : std_logic;
SIGNAL \u_kirsch|add2_add9_22i32|nx45949z12\ : std_logic;
SIGNAL \u_kirsch|add2_add9_22i32|nx45949z9\ : std_logic;
SIGNAL \u_kirsch|add2_add9_22i32|nx45949z6\ : std_logic;
SIGNAL \u_kirsch|add2_add9_22i32|nx45949z3\ : std_logic;
SIGNAL \u_kirsch|add2_add9_22i32|nx23445z2\ : std_logic;
SIGNAL \u_kirsch|add2_add9_22i32|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|add2_9_\ : std_logic;
SIGNAL \u_kirsch|r11_9_\ : std_logic;
SIGNAL \u_kirsch|add2_add9_22i32|nx45949z1\ : std_logic;
SIGNAL \u_kirsch|add2_8_\ : std_logic;
SIGNAL \u_kirsch|r11_8_\ : std_logic;
SIGNAL \u_kirsch|r9_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|add2_add9_22i32|nx44952z1\ : std_logic;
SIGNAL \u_kirsch|add2_7_\ : std_logic;
SIGNAL \u_kirsch|nx24302z2\ : std_logic;
SIGNAL \u_kirsch|nx24302z1\ : std_logic;
SIGNAL \u_kirsch|r9_7_\ : std_logic;
SIGNAL \u_kirsch|max2_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r11_7_\ : std_logic;
SIGNAL \u_kirsch|max2_9_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|max2_9_\ : std_logic;
SIGNAL \u_kirsch|r9_9_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r9_9_\ : std_logic;
SIGNAL \u_kirsch|max2_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|add2_add9_22i32|nx43955z1\ : std_logic;
SIGNAL \u_kirsch|add2_6_\ : std_logic;
SIGNAL \u_kirsch|r11_6_\ : std_logic;
SIGNAL \u_kirsch|max2_6_\ : std_logic;
SIGNAL \u_kirsch|r9_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r9_6_\ : std_logic;
SIGNAL \u_kirsch|max2_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|add2_add9_22i32|nx42958z1\ : std_logic;
SIGNAL \u_kirsch|add2_5_\ : std_logic;
SIGNAL \u_kirsch|r11_5_\ : std_logic;
SIGNAL \u_kirsch|max2_5_\ : std_logic;
SIGNAL \u_kirsch|r9_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r9_5_\ : std_logic;
SIGNAL \u_kirsch|max2_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|add2_add9_22i32|nx41961z1\ : std_logic;
SIGNAL \u_kirsch|add2_4_\ : std_logic;
SIGNAL \u_kirsch|r11_4_\ : std_logic;
SIGNAL \u_kirsch|max2_4_\ : std_logic;
SIGNAL \u_kirsch|r9_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r9_4_\ : std_logic;
SIGNAL \u_kirsch|add2_add9_22i32|nx40964z1\ : std_logic;
SIGNAL \u_kirsch|add2_3_\ : std_logic;
SIGNAL \u_kirsch|r11_3_\ : std_logic;
SIGNAL \u_kirsch|add2_add9_22i32|nx39967z1\ : std_logic;
SIGNAL \u_kirsch|add2_2_\ : std_logic;
SIGNAL \u_kirsch|r11_2_\ : std_logic;
SIGNAL \u_kirsch|max2_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|add2_add9_22i32|nx38970z1\ : std_logic;
SIGNAL \u_kirsch|add2_1_\ : std_logic;
SIGNAL \u_kirsch|r11_1_\ : std_logic;
SIGNAL \u_kirsch|max2_1_\ : std_logic;
SIGNAL \u_kirsch|r9_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r9_1_\ : std_logic;
SIGNAL \u_kirsch|add2_add9_22i32|nx37973z1\ : std_logic;
SIGNAL \u_kirsch|add2_0_\ : std_logic;
SIGNAL \u_kirsch|r11_0_\ : std_logic;
SIGNAL \u_kirsch|sub2_sub10_22i33|nx23445z28\ : std_logic;
SIGNAL \u_kirsch|sub2_sub10_22i33|nx23445z25\ : std_logic;
SIGNAL \u_kirsch|sub2_sub10_22i33|nx23445z22\ : std_logic;
SIGNAL \u_kirsch|sub2_sub10_22i33|nx23445z19\ : std_logic;
SIGNAL \u_kirsch|sub2_sub10_22i33|nx23445z16\ : std_logic;
SIGNAL \u_kirsch|sub2_sub10_22i33|nx23445z13\ : std_logic;
SIGNAL \u_kirsch|sub2_sub10_22i33|nx23445z10\ : std_logic;
SIGNAL \u_kirsch|sub2_sub10_22i33|nx23445z7\ : std_logic;
SIGNAL \u_kirsch|sub2_sub10_22i33|nx23445z4\ : std_logic;
SIGNAL \u_kirsch|sub2_sub10_22i33|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|sub2_sub10_22i33|nx23445z1~_wirecell_combout\ : std_logic;
SIGNAL \u_kirsch|sub2_10_\ : std_logic;
SIGNAL \u_kirsch|max2_7_\ : std_logic;
SIGNAL \u_kirsch|r12_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r12_7_\ : std_logic;
SIGNAL \u_kirsch|r12_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r12_5_\ : std_logic;
SIGNAL \u_kirsch|r12_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r12_1_\ : std_logic;
SIGNAL \u_kirsch|sub3_sub10_22i34|nx23445z28\ : std_logic;
SIGNAL \u_kirsch|sub3_sub10_22i34|nx23445z25\ : std_logic;
SIGNAL \u_kirsch|sub3_sub10_22i34|nx23445z22\ : std_logic;
SIGNAL \u_kirsch|sub3_sub10_22i34|nx23445z19\ : std_logic;
SIGNAL \u_kirsch|sub3_sub10_22i34|nx23445z16\ : std_logic;
SIGNAL \u_kirsch|sub3_sub10_22i34|nx23445z13\ : std_logic;
SIGNAL \u_kirsch|sub3_sub10_22i34|nx23445z10\ : std_logic;
SIGNAL \u_kirsch|sub3_sub10_22i34|nx23445z7\ : std_logic;
SIGNAL \u_kirsch|sub3_sub10_22i34|nx23445z4\ : std_logic;
SIGNAL \u_kirsch|sub3_sub10_22i34|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|sub3_sub10_22i34|nx23445z1~_wirecell_combout\ : std_logic;
SIGNAL \u_kirsch|sub3_10_\ : std_logic;
SIGNAL \u_kirsch|nx46679z2\ : std_logic;
SIGNAL \u_kirsch|nx46679z1\ : std_logic;
SIGNAL \u_kirsch|dir4_2_\ : std_logic;
SIGNAL \u_kirsch|nx44114z2\ : std_logic;
SIGNAL \u_kirsch|nx44114z1\ : std_logic;
SIGNAL \u_kirsch|dir7_2_\ : std_logic;
SIGNAL \u_kirsch|v_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|v_7_\ : std_logic;
SIGNAL \u_kirsch|o_dir_2_\ : std_logic;
SIGNAL \u_kirsch|nx6176z1\ : std_logic;
SIGNAL \u_kirsch|end_of_img\ : std_logic;
SIGNAL \u_kirsch|o_mode_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|o_mode_1_\ : std_logic;
SIGNAL \u_kirsch|nx26373z2\ : std_logic;
SIGNAL \u_kirsch|nx26373z1\ : std_logic;
SIGNAL \u_kirsch|nx15976z1\ : std_logic;
SIGNAL \u_uw_uart|nx36748z2\ : std_logic;
SIGNAL \u_kirsch|nx20813z7\ : std_logic;
SIGNAL \u_kirsch|nx20813z6\ : std_logic;
SIGNAL \u_kirsch|nx20813z5\ : std_logic;
SIGNAL \u_kirsch|nx20813z2\ : std_logic;
SIGNAL \u_kirsch|nx20813z4\ : std_logic;
SIGNAL \u_kirsch|nx20813z1\ : std_logic;
SIGNAL \u_kirsch|o_valid\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx15376z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxErr\ : std_logic;
SIGNAL \u_kirsch|nx11375z1\ : std_logic;
SIGNAL \u_uw_uart|nx40736z5\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx51271z1\ : std_logic;
SIGNAL \u_uw_uart|nx33354z2\ : std_logic;
SIGNAL \u_uw_uart|nx39480z1\ : std_logic;
SIGNAL \u_uw_uart|ack\ : std_logic;
SIGNAL \u_uw_uart|nx33354z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z31\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z30\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx52268z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z29\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z28\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx53265z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z27\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z26\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z24\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx55259z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z23\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z22\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z20\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z18\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx58250z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z17\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z16\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z14\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx60244z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z13\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z12\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z10\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx18093z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z9\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z8\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx19090z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z7\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z6\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx20087z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z5\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z4\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx21084z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z3\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z2\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx64508z1\ : std_logic;
SIGNAL \u_uw_uart|nx39480z3\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx57253z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z19\ : std_logic;
SIGNAL \u_uw_uart|nx39480z5\ : std_logic;
SIGNAL \u_uw_uart|nx39480z6\ : std_logic;
SIGNAL \u_uw_uart|nx39480z2\ : std_logic;
SIGNAL \u_uw_uart|nx40736z3\ : std_logic;
SIGNAL \u_uw_uart|nx40736z2\ : std_logic;
SIGNAL \u_uw_uart|mdata_3_\ : std_logic;
SIGNAL \u_uw_uart|sdout_3_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|state\ : std_logic;
SIGNAL \u_uw_uart|dsend\ : std_logic;
SIGNAL \u_uw_uart|nx38868z1\ : std_logic;
SIGNAL \u_uw_uart|sdout_3_\ : std_logic;
SIGNAL \u_uw_uart|mdata_7n5ss1_6_\ : std_logic;
SIGNAL \u_uw_uart|mdata_7_\ : std_logic;
SIGNAL \u_uw_uart|sdout_7_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|sdout_7_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx51271z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx52268z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx53265z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx55259z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx58250z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx60244z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx17096z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx59247z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx56256z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx54262z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z5\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z7\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z9\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z8\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TopTx\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx48926z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxBitCnt_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx50920z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx49923z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxBitCnt_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx50920z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx51917z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx50920z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxBitCnt_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx4608z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx4608z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxFSM_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx5605z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxFSM_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx35603z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34606z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_7_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx33609z1\ : std_logic;
SIGNAL \u_uw_uart|mdata_7n5ss1_4_\ : std_logic;
SIGNAL \u_uw_uart|mdata_5_\ : std_logic;
SIGNAL \u_uw_uart|sdout_5_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|sdout_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_6_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32612z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx31615z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_4_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx30618z1\ : std_logic;
SIGNAL \u_kirsch|sub2_10_~_wirecell_combout\ : std_logic;
SIGNAL \u_kirsch|dir5_1_\ : std_logic;
SIGNAL \u_kirsch|dir5_1_~_wirecell_combout\ : std_logic;
SIGNAL \u_kirsch|nx36692z2\ : std_logic;
SIGNAL \u_kirsch|nx36692z1\ : std_logic;
SIGNAL \u_kirsch|nx45111z2\ : std_logic;
SIGNAL \u_kirsch|nx45111z1\ : std_logic;
SIGNAL \u_kirsch|dir7_1_\ : std_logic;
SIGNAL \u_kirsch|o_dir_1_\ : std_logic;
SIGNAL \u_uw_uart|mdata_2_\ : std_logic;
SIGNAL \u_uw_uart|sdout_2_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|sdout_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx29621z1\ : std_logic;
SIGNAL \u_kirsch|nx44685z1\ : std_logic;
SIGNAL \u_kirsch|dir4_0_\ : std_logic;
SIGNAL \u_kirsch|nx46108z2\ : std_logic;
SIGNAL \u_kirsch|nx46108z1\ : std_logic;
SIGNAL \u_kirsch|dir7_0_\ : std_logic;
SIGNAL \u_kirsch|o_dir_0_\ : std_logic;
SIGNAL \u_uw_uart|mdata_1_\ : std_logic;
SIGNAL \u_uw_uart|sdout_1_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|sdout_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx28624z1\ : std_logic;
SIGNAL \u_uw_uart|mdata_0_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|mdata_0_\ : std_logic;
SIGNAL \u_uw_uart|sdout_0_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|sdout_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx61140z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Tx_Reg_14n6ss1_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx61812z1\ : std_logic;
SIGNAL nx21351z2 : std_logic;
SIGNAL \u_kirsch|modgen_counter_o_row|nx53265z1\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_o_row|nx58250z11\ : std_logic;
SIGNAL nx57590z1 : std_logic;
SIGNAL nx41851z1 : std_logic;
SIGNAL nx58587z1 : std_logic;
SIGNAL nx42848z1 : std_logic;
SIGNAL nx59584z1 : std_logic;
SIGNAL nx43845z1 : std_logic;
SIGNAL nx60581z1 : std_logic;
SIGNAL nx44842z1 : std_logic;
SIGNAL nx61578z1 : std_logic;
SIGNAL nx45839z1 : std_logic;
SIGNAL nx62575z1 : std_logic;
SIGNAL nx46836z1 : std_logic;
SIGNAL nx63572z1 : std_logic;
SIGNAL nx47833z1 : std_logic;
SIGNAL \u_kirsch|modgen_counter_o_row|nx56256z1\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_o_row|nx58250z5\ : std_logic;
SIGNAL nx30z1 : std_logic;
SIGNAL nx49827z1 : std_logic;
SIGNAL nx1027z1 : std_logic;
SIGNAL nx50824z1 : std_logic;
SIGNAL nx25683z1 : std_logic;
SIGNAL nx62540z1 : std_logic;
SIGNAL nx26680z1 : std_logic;
SIGNAL nx63537z1 : std_logic;
SIGNAL nx27677z1 : std_logic;
SIGNAL nx64534z1 : std_logic;
SIGNAL nx28674z1 : std_logic;
SIGNAL nx65531z1 : std_logic;
SIGNAL nx29671z1 : std_logic;
SIGNAL nx992z1 : std_logic;
SIGNAL \u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_nx21351z2 : std_logic;
SIGNAL \u_kirsch|ALT_INV_nx15976z1\ : std_logic;
SIGNAL \ALT_INV_nrst~combout\ : std_logic;
SIGNAL \u_kirsch|ALT_INV_o_valid\ : std_logic;
SIGNAL \u_kirsch|ALT_INV_v_7_\ : std_logic;

BEGIN

ww_nrst <= nrst;
ww_clk <= clk;
ww_rxflex <= rxflex;
txflex <= ww_txflex;
o_sevenseg <= ww_o_sevenseg;
o_mode <= ww_o_mode;
o_nrst <= ww_o_nrst;
ww_debug_key <= debug_key;
ww_debug_switch <= debug_switch;
debug_led_red <= ww_debug_led_red;
debug_led_grn <= ww_debug_led_grn;
debug_sevenseg_0 <= ww_debug_sevenseg_0;
debug_sevenseg_1 <= ww_debug_sevenseg_1;
debug_sevenseg_2 <= ww_debug_sevenseg_2;
debug_sevenseg_3 <= ww_debug_sevenseg_3;
debug_sevenseg_4 <= ww_debug_sevenseg_4;
debug_sevenseg_5 <= ww_debug_sevenseg_5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u_kirsch|m2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\u_uw_uart|datain_7_\ & \u_uw_uart|datain_6_\ & \u_uw_uart|datain_5_\ & \u_uw_uart|datain_4_\ & \u_uw_uart|datain_3_\ & \u_uw_uart|datain_2_\ & \u_uw_uart|datain_1_\ & 
\u_uw_uart|datain_0_\);

\u_kirsch|m2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u_kirsch|addr_x_7_\ & \u_kirsch|addr_x_6_\ & \u_kirsch|addr_x_5_\ & \u_kirsch|addr_x_4_\ & \u_kirsch|addr_x_3_\ & \u_kirsch|addr_x_2_\ & \u_kirsch|addr_x_1_\ & 
\u_kirsch|addr_x_0_\);

\u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(0) <= \u_kirsch|m2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(1) <= \u_kirsch|m2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(2) <= \u_kirsch|m2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(3) <= \u_kirsch|m2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(4) <= \u_kirsch|m2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(5) <= \u_kirsch|m2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(6) <= \u_kirsch|m2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(7) <= \u_kirsch|m2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\u_kirsch|m3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\u_uw_uart|datain_7_\ & \u_uw_uart|datain_6_\ & \u_uw_uart|datain_5_\ & \u_uw_uart|datain_4_\ & \u_uw_uart|datain_3_\ & \u_uw_uart|datain_2_\ & \u_uw_uart|datain_1_\ & 
\u_uw_uart|datain_0_\);

\u_kirsch|m3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u_kirsch|addr_x_7_\ & \u_kirsch|addr_x_6_\ & \u_kirsch|addr_x_5_\ & \u_kirsch|addr_x_4_\ & \u_kirsch|addr_x_3_\ & \u_kirsch|addr_x_2_\ & \u_kirsch|addr_x_1_\ & 
\u_kirsch|addr_x_0_\);

\u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(0) <= \u_kirsch|m3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(1) <= \u_kirsch|m3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(2) <= \u_kirsch|m3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(3) <= \u_kirsch|m3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(4) <= \u_kirsch|m3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(5) <= \u_kirsch|m3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(6) <= \u_kirsch|m3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(7) <= \u_kirsch|m3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\u_kirsch|m1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\u_uw_uart|datain_7_\ & \u_uw_uart|datain_6_\ & \u_uw_uart|datain_5_\ & \u_uw_uart|datain_4_\ & \u_uw_uart|datain_3_\ & \u_uw_uart|datain_2_\ & \u_uw_uart|datain_1_\ & 
\u_uw_uart|datain_0_\);

\u_kirsch|m1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u_kirsch|addr_x_7_\ & \u_kirsch|addr_x_6_\ & \u_kirsch|addr_x_5_\ & \u_kirsch|addr_x_4_\ & \u_kirsch|addr_x_3_\ & \u_kirsch|addr_x_2_\ & \u_kirsch|addr_x_1_\ & 
\u_kirsch|addr_x_0_\);

\u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(0) <= \u_kirsch|m1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(1) <= \u_kirsch|m1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(2) <= \u_kirsch|m1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(3) <= \u_kirsch|m1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(4) <= \u_kirsch|m1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(5) <= \u_kirsch|m1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(6) <= \u_kirsch|m1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(7) <= \u_kirsch|m1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
ALT_INV_nx21351z2 <= NOT nx21351z2;
\u_kirsch|ALT_INV_nx15976z1\ <= NOT \u_kirsch|nx15976z1\;
\ALT_INV_nrst~combout\ <= NOT \nrst~combout\;
\u_kirsch|ALT_INV_o_valid\ <= NOT \u_kirsch|o_valid\;
\u_kirsch|ALT_INV_v_7_\ <= NOT \u_kirsch|v_7_\;

-- Location: LCFF_X53_Y25_N5
\u_uw_uart|reg_ld_sdout\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx18433z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|ld_sdout\);

-- Location: LCFF_X50_Y24_N7
\u_kirsch|modgen_counter_o_row|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|modgen_counter_o_row|nx51271z1\,
	sclr => \u_kirsch|nx17322z9\,
	ena => \u_kirsch|modgen_counter_o_row|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|modgen_counter_o_row|nx58250z15\);

-- Location: LCCOMB_X53_Y25_N12
\u_uw_uart|i_uarts|ix4608z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx4608z2\ = (\u_uw_uart|i_uarts|TxFSM_0_\ & (((!\u_uw_uart|i_uarts|TopTx\)))) # (!\u_uw_uart|i_uarts|TxFSM_0_\ & ((\u_uw_uart|i_uarts|TxFSM_1_\ & ((!\u_uw_uart|i_uarts|TopTx\))) # (!\u_uw_uart|i_uarts|TxFSM_1_\ & 
-- (!\u_uw_uart|ld_sdout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|ld_sdout\,
	datab => \u_uw_uart|i_uarts|TxFSM_0_\,
	datac => \u_uw_uart|i_uarts|TopTx\,
	datad => \u_uw_uart|i_uarts|TxFSM_1_\,
	combout => \u_uw_uart|i_uarts|nx4608z2\);

-- Location: LCFF_X53_Y24_N13
\u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx51917z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxBitCnt_3_\);

-- Location: LCCOMB_X53_Y25_N4
\u_uw_uart|ix18433z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx18433z1\ = (!\u_uw_uart|state\ & ((\u_uw_uart|dsend\) # (\u_uw_uart|ld_sdout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|dsend\,
	datac => \u_uw_uart|ld_sdout\,
	datad => \u_uw_uart|state\,
	combout => \u_uw_uart|nx18433z1\);

-- Location: LCFF_X50_Y25_N21
\u_uw_uart|i_uarts|reg_TxDivisor_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|TxDivisor_5_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDivisor_5_\);

-- Location: LCFF_X49_Y25_N13
\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx57253z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\);

-- Location: LCCOMB_X50_Y25_N6
\u_uw_uart|i_uarts|ix32400z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z6\ = (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\ & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\ & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\,
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\,
	datac => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\,
	datad => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\,
	combout => \u_uw_uart|i_uarts|nx32400z6\);

-- Location: LCCOMB_X50_Y24_N6
\u_kirsch|modgen_counter_o_row|ix58250z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_o_row|nx51271z1\ = \u_kirsch|modgen_counter_o_row|nx58250z15\ $ (VCC)
-- \u_kirsch|modgen_counter_o_row|nx58250z14\ = CARRY(\u_kirsch|modgen_counter_o_row|nx58250z15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_o_row|nx58250z15\,
	datad => VCC,
	combout => \u_kirsch|modgen_counter_o_row|nx51271z1\,
	cout => \u_kirsch|modgen_counter_o_row|nx58250z14\);

-- Location: LCCOMB_X53_Y24_N2
\u_uw_uart|i_uarts|ix51917z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx51917z3\ = (\u_uw_uart|i_uarts|TxBitCnt_1_\) # ((\u_uw_uart|i_uarts|TxBitCnt_0_\) # (\u_uw_uart|i_uarts|TxBitCnt_2_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxBitCnt_1_\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_0_\,
	datad => \u_uw_uart|i_uarts|TxBitCnt_2_\,
	combout => \u_uw_uart|i_uarts|nx51917z3\);

-- Location: LCCOMB_X53_Y24_N28
\u_uw_uart|i_uarts|ix51917z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx51917z4\ = (\u_uw_uart|i_uarts|nx50920z2\) # ((!\u_uw_uart|i_uarts|TxBitCnt_3_\ & (!\u_uw_uart|i_uarts|nx50920z3\ & !\u_uw_uart|i_uarts|TxBitCnt_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxBitCnt_3_\,
	datab => \u_uw_uart|i_uarts|nx50920z3\,
	datac => \u_uw_uart|i_uarts|nx50920z2\,
	datad => \u_uw_uart|i_uarts|TxBitCnt_2_\,
	combout => \u_uw_uart|i_uarts|nx51917z4\);

-- Location: LCCOMB_X53_Y24_N12
\u_uw_uart|i_uarts|ix51917z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx51917z1\ = (\u_uw_uart|i_uarts|nx51917z2\ & ((\u_uw_uart|i_uarts|nx51917z4\) # ((\u_uw_uart|i_uarts|nx51917z3\ & \u_uw_uart|i_uarts|TxBitCnt_3_\)))) # (!\u_uw_uart|i_uarts|nx51917z2\ & (((\u_uw_uart|i_uarts|TxBitCnt_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx51917z2\,
	datab => \u_uw_uart|i_uarts|nx51917z3\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_3_\,
	datad => \u_uw_uart|i_uarts|nx51917z4\,
	combout => \u_uw_uart|i_uarts|nx51917z1\);

-- Location: LCFF_X55_Y25_N21
\u_uw_uart|modgen_counter_waitcount|reg_q_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx17096z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z11\);

-- Location: LCFF_X55_Y25_N17
\u_uw_uart|modgen_counter_waitcount|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx59247z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z15\);

-- Location: LCCOMB_X54_Y25_N10
\u_uw_uart|ix39480z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z4\ = (!\u_uw_uart|modgen_counter_waitcount|nx22081z15\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z11\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z9\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z15\,
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z11\,
	datac => \u_uw_uart|modgen_counter_waitcount|nx22081z9\,
	datad => \u_uw_uart|modgen_counter_waitcount|nx22081z13\,
	combout => \u_uw_uart|nx39480z4\);

-- Location: LCFF_X55_Y25_N11
\u_uw_uart|modgen_counter_waitcount|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx56256z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z21\);

-- Location: LCFF_X55_Y25_N7
\u_uw_uart|modgen_counter_waitcount|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx54262z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z25\);

-- Location: LCCOMB_X54_Y25_N2
\u_uw_uart|ix40736z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx40736z4\ = (\u_uw_uart|o_pixavail\) # (\u_uw_uart|ack\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|o_pixavail\,
	datad => \u_uw_uart|ack\,
	combout => \u_uw_uart|nx40736z4\);

-- Location: LCCOMB_X49_Y25_N12
\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx57253z1\ = (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\ & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12\ $ (GND))) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\ & 
-- (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12\ & VCC))
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10\ = CARRY((\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx57253z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10\);

-- Location: LCFF_X40_Y25_N25
\u_kirsch|reg_output_edge\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|output_edge_22n5s1\,
	sclr => \u_kirsch|sub4_13_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|o_edge\);

-- Location: LCCOMB_X49_Y24_N6
\u_kirsch|ix20813z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx20813z3\ = (\u_kirsch|v_6_\ & ((\u_kirsch|modgen_counter_o_row|nx58250z11\) # ((\u_kirsch|modgen_counter_o_row|nx58250z7\) # (\u_kirsch|modgen_counter_o_row|nx58250z9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_o_row|nx58250z11\,
	datab => \u_kirsch|modgen_counter_o_row|nx58250z7\,
	datac => \u_kirsch|modgen_counter_o_row|nx58250z9\,
	datad => \u_kirsch|v_6_\,
	combout => \u_kirsch|nx20813z3\);

-- Location: LCCOMB_X55_Y25_N6
\u_uw_uart|modgen_counter_waitcount|ix22081z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx54262z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z25\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z26\)) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z25\ & 
-- ((\u_uw_uart|modgen_counter_waitcount|nx22081z26\) # (GND)))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z24\ = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z26\) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z25\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z26\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx54262z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z24\);

-- Location: LCCOMB_X55_Y25_N10
\u_uw_uart|modgen_counter_waitcount|ix22081z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx56256z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z21\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z22\)) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z21\ & 
-- ((\u_uw_uart|modgen_counter_waitcount|nx22081z22\) # (GND)))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z20\ = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z22\) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z21\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z22\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx56256z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z20\);

-- Location: LCCOMB_X55_Y25_N16
\u_uw_uart|modgen_counter_waitcount|ix22081z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx59247z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z15\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z16\ $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z15\ & 
-- (!\u_uw_uart|modgen_counter_waitcount|nx22081z16\ & VCC))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z14\ = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z15\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z15\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z16\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx59247z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z14\);

-- Location: LCCOMB_X55_Y25_N20
\u_uw_uart|modgen_counter_waitcount|ix22081z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx17096z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z11\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z12\ $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z11\ & 
-- (!\u_uw_uart|modgen_counter_waitcount|nx22081z12\ & VCC))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z10\ = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z11\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z11\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z12\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx17096z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z10\);

-- Location: LCFF_X40_Y23_N23
\u_kirsch|reg_sub4_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|sub4_sub13_22i36|d_11_\,
	sclr => \u_kirsch|ALT_INV_v_7_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|sub4_12_\);

-- Location: LCFF_X40_Y23_N21
\u_kirsch|reg_sub4_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|sub4_sub13_22i36|d_10_\,
	sclr => \u_kirsch|ALT_INV_v_7_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|sub4_11_\);

-- Location: LCFF_X40_Y23_N19
\u_kirsch|reg_sub4_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|sub4_sub13_22i36|d_9_\,
	sclr => \u_kirsch|ALT_INV_v_7_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|sub4_10_\);

-- Location: LCFF_X40_Y23_N17
\u_kirsch|reg_sub4_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|sub4_sub13_22i36|d_8_\,
	sclr => \u_kirsch|ALT_INV_v_7_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|sub4_9_\);

-- Location: LCFF_X40_Y23_N15
\u_kirsch|reg_sub4_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|sub4_sub13_22i36|d_7_\,
	sclr => \u_kirsch|ALT_INV_v_7_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|sub4_8_\);

-- Location: LCFF_X40_Y23_N13
\u_kirsch|reg_sub4_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|sub4_sub13_22i36|d_6_\,
	sclr => \u_kirsch|ALT_INV_v_7_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|sub4_7_\);

-- Location: LCCOMB_X40_Y23_N26
\u_kirsch|ix60630z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx60630z1\ = (\u_kirsch|sub4_9_\) # ((\u_kirsch|sub4_10_\) # ((\u_kirsch|sub4_7_\ & \u_kirsch|sub4_8_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|sub4_7_\,
	datab => \u_kirsch|sub4_8_\,
	datac => \u_kirsch|sub4_9_\,
	datad => \u_kirsch|sub4_10_\,
	combout => \u_kirsch|nx60630z1\);

-- Location: LCCOMB_X40_Y25_N24
\u_kirsch|ix60630z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|output_edge_22n5s1\ = (\u_kirsch|nx60630z1\) # ((\u_kirsch|sub4_11_\) # (\u_kirsch|sub4_12_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|nx60630z1\,
	datac => \u_kirsch|sub4_11_\,
	datad => \u_kirsch|sub4_12_\,
	combout => \u_kirsch|output_edge_22n5s1\);

-- Location: LCFF_X40_Y23_N29
\u_kirsch|reg_sub4_13_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|sub4_sub13_22i36|nx23445z1~_wirecell_combout\,
	sclr => \u_kirsch|ALT_INV_v_7_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|sub4_13_\);

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
rxflex_ibuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rxflex,
	combout => \rxflex~combout\);

-- Location: LCCOMB_X51_Y26_N10
\u_uw_uart|i_uarts|ix15541z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx15541z3\ = ((\rxflex~combout\ & \nrst~combout\)) # (!\u_uw_uart|i_uarts|RxFSM_6_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rxflex~combout\,
	datac => \nrst~combout\,
	datad => \u_uw_uart|i_uarts|RxFSM_6_\,
	combout => \u_uw_uart|i_uarts|nx15541z3\);

-- Location: LCCOMB_X50_Y25_N4
\u_uw_uart|i_uarts|ix34394z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z4\ = (\u_uw_uart|i_uarts|TxDivisor_5_\ & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\ & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDivisor_5_\,
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\,
	datac => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1\,
	datad => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\,
	combout => \u_uw_uart|i_uarts|nx34394z4\);

-- Location: LCFF_X50_Y26_N7
\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx52268z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\);

-- Location: LCFF_X51_Y25_N13
\u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx8373z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxBitCnt_3_\);

-- Location: LCFF_X41_Y23_N25
\u_kirsch|reg_r15_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r15_12_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r15_12_\);

-- Location: LCFF_X37_Y23_N17
\u_kirsch|reg_r14_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r14_12_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r14_12_\);

-- Location: LCFF_X41_Y23_N11
\u_kirsch|reg_r15_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r15_11_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r15_11_\);

-- Location: LCFF_X37_Y23_N11
\u_kirsch|reg_r14_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r14_11_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r14_11_\);

-- Location: LCFF_X41_Y23_N13
\u_kirsch|reg_r15_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|add4_10_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r15_10_\);

-- Location: LCFF_X37_Y23_N21
\u_kirsch|reg_r14_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r14_10_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r14_10_\);

-- Location: LCFF_X41_Y23_N7
\u_kirsch|reg_r15_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r15_9_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r15_9_\);

-- Location: LCFF_X37_Y23_N23
\u_kirsch|reg_r14_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r14_9_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r14_9_\);

-- Location: LCFF_X41_Y23_N9
\u_kirsch|reg_r15_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r15_8_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r15_8_\);

-- Location: LCFF_X37_Y23_N9
\u_kirsch|reg_r14_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r14_8_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r14_8_\);

-- Location: LCFF_X41_Y23_N27
\u_kirsch|reg_r15_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|add4_7_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r15_7_\);

-- Location: LCFF_X37_Y23_N3
\u_kirsch|reg_r14_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r14_7_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r14_7_\);

-- Location: LCFF_X41_Y23_N29
\u_kirsch|reg_r15_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r15_6_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r15_6_\);

-- Location: LCFF_X38_Y23_N25
\u_kirsch|reg_r14_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r14_6_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r14_6_\);

-- Location: LCFF_X41_Y23_N31
\u_kirsch|reg_r15_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|add4_5_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r15_5_\);

-- Location: LCFF_X38_Y23_N3
\u_kirsch|reg_r14_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r14_5_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r14_5_\);

-- Location: LCFF_X41_Y23_N1
\u_kirsch|reg_r15_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|add4_4_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r15_4_\);

-- Location: LCFF_X38_Y23_N13
\u_kirsch|reg_r14_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r14_4_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r14_4_\);

-- Location: LCFF_X41_Y23_N19
\u_kirsch|reg_r15_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|add4_3_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r15_3_\);

-- Location: LCFF_X38_Y23_N7
\u_kirsch|reg_r14_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r14_3_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r14_3_\);

-- Location: LCFF_X41_Y23_N21
\u_kirsch|reg_r15_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|add4_2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r15_2_\);

-- Location: LCFF_X40_Y23_N31
\u_kirsch|reg_r15_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r15_0_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r15_0_\);

-- Location: LCFF_X41_Y23_N15
\u_kirsch|reg_r15_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|add4_1_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r15_1_\);

-- Location: LCCOMB_X40_Y23_N0
\u_kirsch|sub4_sub13_22i36|ix63795z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub4_sub13_22i36|nx63795z11\ = CARRY((!\u_kirsch|r15_0_\ & !\u_kirsch|r15_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r15_0_\,
	datab => \u_kirsch|r15_1_\,
	datad => VCC,
	cout => \u_kirsch|sub4_sub13_22i36|nx63795z11\);

-- Location: LCCOMB_X40_Y23_N2
\u_kirsch|sub4_sub13_22i36|ix63795z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub4_sub13_22i36|nx63795z10\ = CARRY((\u_kirsch|r15_2_\) # (!\u_kirsch|sub4_sub13_22i36|nx63795z11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r15_2_\,
	datad => VCC,
	cin => \u_kirsch|sub4_sub13_22i36|nx63795z11\,
	cout => \u_kirsch|sub4_sub13_22i36|nx63795z10\);

-- Location: LCCOMB_X40_Y23_N4
\u_kirsch|sub4_sub13_22i36|ix63795z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub4_sub13_22i36|nx63795z9\ = CARRY((\u_kirsch|r14_3_\ & ((!\u_kirsch|sub4_sub13_22i36|nx63795z10\) # (!\u_kirsch|r15_3_\))) # (!\u_kirsch|r14_3_\ & (!\u_kirsch|r15_3_\ & !\u_kirsch|sub4_sub13_22i36|nx63795z10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r14_3_\,
	datab => \u_kirsch|r15_3_\,
	datad => VCC,
	cin => \u_kirsch|sub4_sub13_22i36|nx63795z10\,
	cout => \u_kirsch|sub4_sub13_22i36|nx63795z9\);

-- Location: LCCOMB_X40_Y23_N6
\u_kirsch|sub4_sub13_22i36|ix63795z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub4_sub13_22i36|nx63795z8\ = CARRY((\u_kirsch|r14_4_\ & (\u_kirsch|r15_4_\ & !\u_kirsch|sub4_sub13_22i36|nx63795z9\)) # (!\u_kirsch|r14_4_\ & ((\u_kirsch|r15_4_\) # (!\u_kirsch|sub4_sub13_22i36|nx63795z9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r14_4_\,
	datab => \u_kirsch|r15_4_\,
	datad => VCC,
	cin => \u_kirsch|sub4_sub13_22i36|nx63795z9\,
	cout => \u_kirsch|sub4_sub13_22i36|nx63795z8\);

-- Location: LCCOMB_X40_Y23_N8
\u_kirsch|sub4_sub13_22i36|ix63795z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub4_sub13_22i36|nx63795z7\ = CARRY((\u_kirsch|r14_5_\ & ((!\u_kirsch|sub4_sub13_22i36|nx63795z8\) # (!\u_kirsch|r15_5_\))) # (!\u_kirsch|r14_5_\ & (!\u_kirsch|r15_5_\ & !\u_kirsch|sub4_sub13_22i36|nx63795z8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r14_5_\,
	datab => \u_kirsch|r15_5_\,
	datad => VCC,
	cin => \u_kirsch|sub4_sub13_22i36|nx63795z8\,
	cout => \u_kirsch|sub4_sub13_22i36|nx63795z7\);

-- Location: LCCOMB_X40_Y23_N10
\u_kirsch|sub4_sub13_22i36|ix63795z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub4_sub13_22i36|nx63795z6\ = CARRY((\u_kirsch|r14_6_\ & (\u_kirsch|r15_6_\ & !\u_kirsch|sub4_sub13_22i36|nx63795z7\)) # (!\u_kirsch|r14_6_\ & ((\u_kirsch|r15_6_\) # (!\u_kirsch|sub4_sub13_22i36|nx63795z7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r14_6_\,
	datab => \u_kirsch|r15_6_\,
	datad => VCC,
	cin => \u_kirsch|sub4_sub13_22i36|nx63795z7\,
	cout => \u_kirsch|sub4_sub13_22i36|nx63795z6\);

-- Location: LCCOMB_X40_Y23_N12
\u_kirsch|sub4_sub13_22i36|ix63795z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub4_sub13_22i36|d_6_\ = ((\u_kirsch|r15_7_\ $ (\u_kirsch|r14_7_\ $ (\u_kirsch|sub4_sub13_22i36|nx63795z6\)))) # (GND)
-- \u_kirsch|sub4_sub13_22i36|nx63795z5\ = CARRY((\u_kirsch|r15_7_\ & (\u_kirsch|r14_7_\ & !\u_kirsch|sub4_sub13_22i36|nx63795z6\)) # (!\u_kirsch|r15_7_\ & ((\u_kirsch|r14_7_\) # (!\u_kirsch|sub4_sub13_22i36|nx63795z6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r15_7_\,
	datab => \u_kirsch|r14_7_\,
	datad => VCC,
	cin => \u_kirsch|sub4_sub13_22i36|nx63795z6\,
	combout => \u_kirsch|sub4_sub13_22i36|d_6_\,
	cout => \u_kirsch|sub4_sub13_22i36|nx63795z5\);

-- Location: LCCOMB_X40_Y23_N14
\u_kirsch|sub4_sub13_22i36|ix63795z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub4_sub13_22i36|d_7_\ = (\u_kirsch|r14_8_\ & ((\u_kirsch|r15_8_\ & (!\u_kirsch|sub4_sub13_22i36|nx63795z5\)) # (!\u_kirsch|r15_8_\ & (\u_kirsch|sub4_sub13_22i36|nx63795z5\ & VCC)))) # (!\u_kirsch|r14_8_\ & ((\u_kirsch|r15_8_\ & 
-- ((\u_kirsch|sub4_sub13_22i36|nx63795z5\) # (GND))) # (!\u_kirsch|r15_8_\ & (!\u_kirsch|sub4_sub13_22i36|nx63795z5\))))
-- \u_kirsch|sub4_sub13_22i36|nx63795z4\ = CARRY((\u_kirsch|r14_8_\ & (\u_kirsch|r15_8_\ & !\u_kirsch|sub4_sub13_22i36|nx63795z5\)) # (!\u_kirsch|r14_8_\ & ((\u_kirsch|r15_8_\) # (!\u_kirsch|sub4_sub13_22i36|nx63795z5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r14_8_\,
	datab => \u_kirsch|r15_8_\,
	datad => VCC,
	cin => \u_kirsch|sub4_sub13_22i36|nx63795z5\,
	combout => \u_kirsch|sub4_sub13_22i36|d_7_\,
	cout => \u_kirsch|sub4_sub13_22i36|nx63795z4\);

-- Location: LCCOMB_X40_Y23_N16
\u_kirsch|sub4_sub13_22i36|ix63795z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub4_sub13_22i36|d_8_\ = ((\u_kirsch|r15_9_\ $ (\u_kirsch|r14_9_\ $ (\u_kirsch|sub4_sub13_22i36|nx63795z4\)))) # (GND)
-- \u_kirsch|sub4_sub13_22i36|nx63795z3\ = CARRY((\u_kirsch|r15_9_\ & (\u_kirsch|r14_9_\ & !\u_kirsch|sub4_sub13_22i36|nx63795z4\)) # (!\u_kirsch|r15_9_\ & ((\u_kirsch|r14_9_\) # (!\u_kirsch|sub4_sub13_22i36|nx63795z4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r15_9_\,
	datab => \u_kirsch|r14_9_\,
	datad => VCC,
	cin => \u_kirsch|sub4_sub13_22i36|nx63795z4\,
	combout => \u_kirsch|sub4_sub13_22i36|d_8_\,
	cout => \u_kirsch|sub4_sub13_22i36|nx63795z3\);

-- Location: LCCOMB_X40_Y23_N18
\u_kirsch|sub4_sub13_22i36|ix63795z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub4_sub13_22i36|d_9_\ = (\u_kirsch|r14_10_\ & ((\u_kirsch|r15_10_\ & (!\u_kirsch|sub4_sub13_22i36|nx63795z3\)) # (!\u_kirsch|r15_10_\ & (\u_kirsch|sub4_sub13_22i36|nx63795z3\ & VCC)))) # (!\u_kirsch|r14_10_\ & ((\u_kirsch|r15_10_\ & 
-- ((\u_kirsch|sub4_sub13_22i36|nx63795z3\) # (GND))) # (!\u_kirsch|r15_10_\ & (!\u_kirsch|sub4_sub13_22i36|nx63795z3\))))
-- \u_kirsch|sub4_sub13_22i36|nx63795z2\ = CARRY((\u_kirsch|r14_10_\ & (\u_kirsch|r15_10_\ & !\u_kirsch|sub4_sub13_22i36|nx63795z3\)) # (!\u_kirsch|r14_10_\ & ((\u_kirsch|r15_10_\) # (!\u_kirsch|sub4_sub13_22i36|nx63795z3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r14_10_\,
	datab => \u_kirsch|r15_10_\,
	datad => VCC,
	cin => \u_kirsch|sub4_sub13_22i36|nx63795z3\,
	combout => \u_kirsch|sub4_sub13_22i36|d_9_\,
	cout => \u_kirsch|sub4_sub13_22i36|nx63795z2\);

-- Location: LCCOMB_X40_Y23_N20
\u_kirsch|sub4_sub13_22i36|ix63795z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub4_sub13_22i36|d_10_\ = ((\u_kirsch|r14_11_\ $ (\u_kirsch|r15_11_\ $ (\u_kirsch|sub4_sub13_22i36|nx63795z2\)))) # (GND)
-- \u_kirsch|sub4_sub13_22i36|nx63795z1\ = CARRY((\u_kirsch|r14_11_\ & ((!\u_kirsch|sub4_sub13_22i36|nx63795z2\) # (!\u_kirsch|r15_11_\))) # (!\u_kirsch|r14_11_\ & (!\u_kirsch|r15_11_\ & !\u_kirsch|sub4_sub13_22i36|nx63795z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r14_11_\,
	datab => \u_kirsch|r15_11_\,
	datad => VCC,
	cin => \u_kirsch|sub4_sub13_22i36|nx63795z2\,
	combout => \u_kirsch|sub4_sub13_22i36|d_10_\,
	cout => \u_kirsch|sub4_sub13_22i36|nx63795z1\);

-- Location: LCCOMB_X40_Y23_N22
\u_kirsch|sub4_sub13_22i36|ix63795z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub4_sub13_22i36|d_11_\ = (\u_kirsch|r14_12_\ & ((\u_kirsch|r15_12_\ & (!\u_kirsch|sub4_sub13_22i36|nx63795z1\)) # (!\u_kirsch|r15_12_\ & (\u_kirsch|sub4_sub13_22i36|nx63795z1\ & VCC)))) # (!\u_kirsch|r14_12_\ & ((\u_kirsch|r15_12_\ & 
-- ((\u_kirsch|sub4_sub13_22i36|nx63795z1\) # (GND))) # (!\u_kirsch|r15_12_\ & (!\u_kirsch|sub4_sub13_22i36|nx63795z1\))))
-- \u_kirsch|sub4_sub13_22i36|nx23445z2\ = CARRY((\u_kirsch|r14_12_\ & (\u_kirsch|r15_12_\ & !\u_kirsch|sub4_sub13_22i36|nx63795z1\)) # (!\u_kirsch|r14_12_\ & ((\u_kirsch|r15_12_\) # (!\u_kirsch|sub4_sub13_22i36|nx63795z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r14_12_\,
	datab => \u_kirsch|r15_12_\,
	datad => VCC,
	cin => \u_kirsch|sub4_sub13_22i36|nx63795z1\,
	combout => \u_kirsch|sub4_sub13_22i36|d_11_\,
	cout => \u_kirsch|sub4_sub13_22i36|nx23445z2\);

-- Location: LCCOMB_X40_Y23_N24
\u_kirsch|sub4_sub13_22i36|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub4_sub13_22i36|nx23445z1\ = !\u_kirsch|sub4_sub13_22i36|nx23445z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_kirsch|sub4_sub13_22i36|nx23445z2\,
	combout => \u_kirsch|sub4_sub13_22i36|nx23445z1\);

-- Location: LCFF_X42_Y25_N25
\u_kirsch|reg_dir6_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|dir5_0_~_wirecell_combout\,
	sclr => \u_kirsch|nx36692z2\,
	ena => \u_kirsch|nx36692z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|nx46108z3\);

-- Location: LCCOMB_X50_Y26_N6
\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx52268z1\ = (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\ & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20\)) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\ & 
-- ((\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20\) # (GND)))
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18\ = CARRY((!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20\) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx52268z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18\);

-- Location: LCCOMB_X51_Y26_N28
\u_uw_uart|i_uarts|ix8373z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|not_rtlc17_X_0_n360\ = (\u_uw_uart|i_uarts|RxFSM_3_\ & ((\u_uw_uart|i_uarts|TopRx\))) # (!\u_uw_uart|i_uarts|RxFSM_3_\ & (!\u_uw_uart|i_uarts|nx34394z2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx34394z2\,
	datab => \u_uw_uart|i_uarts|TopRx\,
	datac => \u_uw_uart|i_uarts|RxFSM_3_\,
	combout => \u_uw_uart|i_uarts|not_rtlc17_X_0_n360\);

-- Location: LCCOMB_X51_Y25_N30
\u_uw_uart|i_uarts|ix8373z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx8373z2\ = \u_uw_uart|i_uarts|RxBitCnt_3_\ $ (((\u_uw_uart|i_uarts|RxBitCnt_2_\ & (\u_uw_uart|i_uarts|RxBitCnt_0_\ & \u_uw_uart|i_uarts|RxBitCnt_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxBitCnt_3_\,
	datab => \u_uw_uart|i_uarts|RxBitCnt_2_\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	datad => \u_uw_uart|i_uarts|RxBitCnt_1_\,
	combout => \u_uw_uart|i_uarts|nx8373z2\);

-- Location: LCCOMB_X51_Y25_N12
\u_uw_uart|i_uarts|ix8373z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx8373z1\ = (\u_uw_uart|i_uarts|not_rtlc17_X_0_n360\ & (\u_uw_uart|i_uarts|nx8373z2\ & ((\u_uw_uart|i_uarts|nx34394z2\)))) # (!\u_uw_uart|i_uarts|not_rtlc17_X_0_n360\ & (((\u_uw_uart|i_uarts|RxBitCnt_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|not_rtlc17_X_0_n360\,
	datab => \u_uw_uart|i_uarts|nx8373z2\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_3_\,
	datad => \u_uw_uart|i_uarts|nx34394z2\,
	combout => \u_uw_uart|i_uarts|nx8373z1\);

-- Location: LCFF_X42_Y23_N31
\u_kirsch|reg_add4_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add4_add11_22i35|nx23445z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add4_12_\);

-- Location: LCFF_X37_Y23_N5
\u_kirsch|reg_max3_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max3_9_~feeder_combout\,
	sdata => \u_kirsch|r12_9_\,
	sload => \u_kirsch|sub3_10_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max3_9_\);

-- Location: LCFF_X42_Y23_N29
\u_kirsch|reg_add4_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add4_add11_22i35|nx62798z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add4_11_\);

-- Location: LCFF_X37_Y23_N31
\u_kirsch|reg_max3_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max3_8_~feeder_combout\,
	sdata => \u_kirsch|r12_8_\,
	sload => \u_kirsch|sub3_10_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max3_8_\);

-- Location: LCFF_X42_Y23_N27
\u_kirsch|reg_add4_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add4_add11_22i35|nx46946z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add4_10_\);

-- Location: LCFF_X37_Y23_N1
\u_kirsch|reg_max3_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max3_7_~feeder_combout\,
	sdata => \u_kirsch|r12_7_\,
	sload => \u_kirsch|sub3_10_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max3_7_\);

-- Location: LCFF_X42_Y23_N25
\u_kirsch|reg_add4_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add4_add11_22i35|nx45949z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add4_9_\);

-- Location: LCFF_X37_Y23_N27
\u_kirsch|reg_max3_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max3_6_~feeder_combout\,
	sdata => \u_kirsch|r12_6_\,
	sload => \u_kirsch|sub3_10_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max3_6_\);

-- Location: LCFF_X42_Y23_N23
\u_kirsch|reg_add4_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add4_add11_22i35|nx44952z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add4_8_\);

-- Location: LCFF_X37_Y23_N29
\u_kirsch|reg_max3_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max3_5_~feeder_combout\,
	sdata => \u_kirsch|r12_5_\,
	sload => \u_kirsch|sub3_10_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max3_5_\);

-- Location: LCFF_X42_Y23_N21
\u_kirsch|reg_add4_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add4_add11_22i35|nx43955z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add4_7_\);

-- Location: LCFF_X37_Y23_N7
\u_kirsch|reg_max3_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max3_4_~feeder_combout\,
	sdata => \u_kirsch|r12_4_\,
	sload => \u_kirsch|sub3_10_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max3_4_\);

-- Location: LCFF_X42_Y23_N19
\u_kirsch|reg_add4_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add4_add11_22i35|nx42958z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add4_6_\);

-- Location: LCFF_X37_Y23_N25
\u_kirsch|reg_max3_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max3_3_~feeder_combout\,
	sdata => \u_kirsch|r12_3_\,
	sload => \u_kirsch|sub3_10_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max3_3_\);

-- Location: LCFF_X42_Y23_N17
\u_kirsch|reg_add4_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add4_add11_22i35|nx41961z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add4_5_\);

-- Location: LCFF_X37_Y23_N19
\u_kirsch|reg_max3_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max3_2_~feeder_combout\,
	sdata => \u_kirsch|r12_2_\,
	sload => \u_kirsch|sub3_10_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max3_2_\);

-- Location: LCFF_X42_Y23_N15
\u_kirsch|reg_add4_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add4_add11_22i35|nx40964z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add4_4_\);

-- Location: LCFF_X37_Y23_N13
\u_kirsch|reg_max3_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max3_1_~feeder_combout\,
	sdata => \u_kirsch|r12_1_\,
	sload => \u_kirsch|sub3_10_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max3_1_\);

-- Location: LCFF_X42_Y23_N13
\u_kirsch|reg_add4_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add4_add11_22i35|nx39967z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add4_3_\);

-- Location: LCFF_X37_Y23_N15
\u_kirsch|reg_max3_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max3_0_~feeder_combout\,
	sdata => \u_kirsch|r12_0_\,
	sload => \u_kirsch|sub3_10_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max3_0_\);

-- Location: LCFF_X42_Y23_N11
\u_kirsch|reg_add4_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add4_add11_22i35|nx38970z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add4_2_\);

-- Location: LCFF_X42_Y23_N1
\u_kirsch|reg_add4_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add4_0_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add4_0_\);

-- Location: LCFF_X42_Y23_N9
\u_kirsch|reg_add4_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add4_add11_22i35|nx37973z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add4_1_\);

-- Location: LCFF_X36_Y24_N29
\u_kirsch|reg_r12_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|max2_9_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r12_9_\);

-- Location: LCFF_X37_Y24_N7
\u_kirsch|reg_r12_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r12_8_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r12_8_\);

-- Location: LCFF_X37_Y24_N5
\u_kirsch|reg_r12_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r12_6_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r12_6_\);

-- Location: LCFF_X36_Y24_N5
\u_kirsch|reg_r12_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r12_4_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r12_4_\);

-- Location: LCFF_X36_Y24_N7
\u_kirsch|reg_r12_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r12_3_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r12_3_\);

-- Location: LCFF_X36_Y24_N9
\u_kirsch|reg_r12_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r12_2_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r12_2_\);

-- Location: LCFF_X36_Y24_N11
\u_kirsch|reg_r12_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|max2_0_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r12_0_\);

-- Location: LCFF_X43_Y25_N25
\u_kirsch|reg_dir5_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|dir2_2_\,
	sclr => \u_kirsch|nx36266z1\,
	sload => VCC,
	ena => \u_kirsch|v_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|dir5_0_\);

-- Location: LCFF_X42_Y24_N25
\u_kirsch|reg_r13_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r13_10_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r13_10_\);

-- Location: LCFF_X42_Y24_N27
\u_kirsch|reg_r13_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r13_9_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r13_9_\);

-- Location: LCFF_X37_Y24_N17
\u_kirsch|reg_r13_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r13_8_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r13_8_\);

-- Location: LCFF_X42_Y24_N13
\u_kirsch|reg_r13_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r13_7_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r13_7_\);

-- Location: LCFF_X41_Y25_N17
\u_kirsch|reg_r13_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r13_6_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r13_6_\);

-- Location: LCFF_X42_Y24_N23
\u_kirsch|reg_r13_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r13_5_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r13_5_\);

-- Location: LCFF_X42_Y24_N17
\u_kirsch|reg_r13_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r13_4_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r13_4_\);

-- Location: LCFF_X42_Y24_N11
\u_kirsch|reg_r13_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r13_3_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r13_3_\);

-- Location: LCFF_X42_Y23_N3
\u_kirsch|reg_r13_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|add3_2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r13_2_\);

-- Location: LCFF_X42_Y23_N5
\u_kirsch|reg_r13_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|add3_1_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r13_1_\);

-- Location: LCFF_X42_Y23_N7
\u_kirsch|reg_r13_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|add3_0_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r13_0_\);

-- Location: LCCOMB_X42_Y23_N8
\u_kirsch|add4_add11_22i35|ix62798z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add4_add11_22i35|nx37973z1\ = (\u_kirsch|r13_0_\ & (\u_kirsch|r13_1_\ $ (VCC))) # (!\u_kirsch|r13_0_\ & (\u_kirsch|r13_1_\ & VCC))
-- \u_kirsch|add4_add11_22i35|nx62798z21\ = CARRY((\u_kirsch|r13_0_\ & \u_kirsch|r13_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r13_0_\,
	datab => \u_kirsch|r13_1_\,
	datad => VCC,
	combout => \u_kirsch|add4_add11_22i35|nx37973z1\,
	cout => \u_kirsch|add4_add11_22i35|nx62798z21\);

-- Location: LCCOMB_X42_Y23_N10
\u_kirsch|add4_add11_22i35|ix62798z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add4_add11_22i35|nx38970z1\ = (\u_kirsch|r13_1_\ & ((\u_kirsch|r13_2_\ & (\u_kirsch|add4_add11_22i35|nx62798z21\ & VCC)) # (!\u_kirsch|r13_2_\ & (!\u_kirsch|add4_add11_22i35|nx62798z21\)))) # (!\u_kirsch|r13_1_\ & ((\u_kirsch|r13_2_\ & 
-- (!\u_kirsch|add4_add11_22i35|nx62798z21\)) # (!\u_kirsch|r13_2_\ & ((\u_kirsch|add4_add11_22i35|nx62798z21\) # (GND)))))
-- \u_kirsch|add4_add11_22i35|nx62798z19\ = CARRY((\u_kirsch|r13_1_\ & (!\u_kirsch|r13_2_\ & !\u_kirsch|add4_add11_22i35|nx62798z21\)) # (!\u_kirsch|r13_1_\ & ((!\u_kirsch|add4_add11_22i35|nx62798z21\) # (!\u_kirsch|r13_2_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r13_1_\,
	datab => \u_kirsch|r13_2_\,
	datad => VCC,
	cin => \u_kirsch|add4_add11_22i35|nx62798z21\,
	combout => \u_kirsch|add4_add11_22i35|nx38970z1\,
	cout => \u_kirsch|add4_add11_22i35|nx62798z19\);

-- Location: LCCOMB_X42_Y23_N12
\u_kirsch|add4_add11_22i35|ix62798z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add4_add11_22i35|nx39967z1\ = ((\u_kirsch|r13_2_\ $ (\u_kirsch|r13_3_\ $ (!\u_kirsch|add4_add11_22i35|nx62798z19\)))) # (GND)
-- \u_kirsch|add4_add11_22i35|nx62798z17\ = CARRY((\u_kirsch|r13_2_\ & ((\u_kirsch|r13_3_\) # (!\u_kirsch|add4_add11_22i35|nx62798z19\))) # (!\u_kirsch|r13_2_\ & (\u_kirsch|r13_3_\ & !\u_kirsch|add4_add11_22i35|nx62798z19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r13_2_\,
	datab => \u_kirsch|r13_3_\,
	datad => VCC,
	cin => \u_kirsch|add4_add11_22i35|nx62798z19\,
	combout => \u_kirsch|add4_add11_22i35|nx39967z1\,
	cout => \u_kirsch|add4_add11_22i35|nx62798z17\);

-- Location: LCCOMB_X42_Y23_N14
\u_kirsch|add4_add11_22i35|ix62798z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add4_add11_22i35|nx40964z1\ = (\u_kirsch|r13_4_\ & ((\u_kirsch|r13_3_\ & (\u_kirsch|add4_add11_22i35|nx62798z17\ & VCC)) # (!\u_kirsch|r13_3_\ & (!\u_kirsch|add4_add11_22i35|nx62798z17\)))) # (!\u_kirsch|r13_4_\ & ((\u_kirsch|r13_3_\ & 
-- (!\u_kirsch|add4_add11_22i35|nx62798z17\)) # (!\u_kirsch|r13_3_\ & ((\u_kirsch|add4_add11_22i35|nx62798z17\) # (GND)))))
-- \u_kirsch|add4_add11_22i35|nx62798z15\ = CARRY((\u_kirsch|r13_4_\ & (!\u_kirsch|r13_3_\ & !\u_kirsch|add4_add11_22i35|nx62798z17\)) # (!\u_kirsch|r13_4_\ & ((!\u_kirsch|add4_add11_22i35|nx62798z17\) # (!\u_kirsch|r13_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r13_4_\,
	datab => \u_kirsch|r13_3_\,
	datad => VCC,
	cin => \u_kirsch|add4_add11_22i35|nx62798z17\,
	combout => \u_kirsch|add4_add11_22i35|nx40964z1\,
	cout => \u_kirsch|add4_add11_22i35|nx62798z15\);

-- Location: LCCOMB_X42_Y23_N16
\u_kirsch|add4_add11_22i35|ix62798z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add4_add11_22i35|nx41961z1\ = ((\u_kirsch|r13_4_\ $ (\u_kirsch|r13_5_\ $ (!\u_kirsch|add4_add11_22i35|nx62798z15\)))) # (GND)
-- \u_kirsch|add4_add11_22i35|nx62798z13\ = CARRY((\u_kirsch|r13_4_\ & ((\u_kirsch|r13_5_\) # (!\u_kirsch|add4_add11_22i35|nx62798z15\))) # (!\u_kirsch|r13_4_\ & (\u_kirsch|r13_5_\ & !\u_kirsch|add4_add11_22i35|nx62798z15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r13_4_\,
	datab => \u_kirsch|r13_5_\,
	datad => VCC,
	cin => \u_kirsch|add4_add11_22i35|nx62798z15\,
	combout => \u_kirsch|add4_add11_22i35|nx41961z1\,
	cout => \u_kirsch|add4_add11_22i35|nx62798z13\);

-- Location: LCCOMB_X42_Y23_N18
\u_kirsch|add4_add11_22i35|ix62798z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add4_add11_22i35|nx42958z1\ = (\u_kirsch|r13_5_\ & ((\u_kirsch|r13_6_\ & (\u_kirsch|add4_add11_22i35|nx62798z13\ & VCC)) # (!\u_kirsch|r13_6_\ & (!\u_kirsch|add4_add11_22i35|nx62798z13\)))) # (!\u_kirsch|r13_5_\ & ((\u_kirsch|r13_6_\ & 
-- (!\u_kirsch|add4_add11_22i35|nx62798z13\)) # (!\u_kirsch|r13_6_\ & ((\u_kirsch|add4_add11_22i35|nx62798z13\) # (GND)))))
-- \u_kirsch|add4_add11_22i35|nx62798z11\ = CARRY((\u_kirsch|r13_5_\ & (!\u_kirsch|r13_6_\ & !\u_kirsch|add4_add11_22i35|nx62798z13\)) # (!\u_kirsch|r13_5_\ & ((!\u_kirsch|add4_add11_22i35|nx62798z13\) # (!\u_kirsch|r13_6_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r13_5_\,
	datab => \u_kirsch|r13_6_\,
	datad => VCC,
	cin => \u_kirsch|add4_add11_22i35|nx62798z13\,
	combout => \u_kirsch|add4_add11_22i35|nx42958z1\,
	cout => \u_kirsch|add4_add11_22i35|nx62798z11\);

-- Location: LCCOMB_X42_Y23_N20
\u_kirsch|add4_add11_22i35|ix62798z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add4_add11_22i35|nx43955z1\ = ((\u_kirsch|r13_7_\ $ (\u_kirsch|r13_6_\ $ (!\u_kirsch|add4_add11_22i35|nx62798z11\)))) # (GND)
-- \u_kirsch|add4_add11_22i35|nx62798z9\ = CARRY((\u_kirsch|r13_7_\ & ((\u_kirsch|r13_6_\) # (!\u_kirsch|add4_add11_22i35|nx62798z11\))) # (!\u_kirsch|r13_7_\ & (\u_kirsch|r13_6_\ & !\u_kirsch|add4_add11_22i35|nx62798z11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r13_7_\,
	datab => \u_kirsch|r13_6_\,
	datad => VCC,
	cin => \u_kirsch|add4_add11_22i35|nx62798z11\,
	combout => \u_kirsch|add4_add11_22i35|nx43955z1\,
	cout => \u_kirsch|add4_add11_22i35|nx62798z9\);

-- Location: LCCOMB_X42_Y23_N22
\u_kirsch|add4_add11_22i35|ix62798z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add4_add11_22i35|nx44952z1\ = (\u_kirsch|r13_7_\ & ((\u_kirsch|r13_8_\ & (\u_kirsch|add4_add11_22i35|nx62798z9\ & VCC)) # (!\u_kirsch|r13_8_\ & (!\u_kirsch|add4_add11_22i35|nx62798z9\)))) # (!\u_kirsch|r13_7_\ & ((\u_kirsch|r13_8_\ & 
-- (!\u_kirsch|add4_add11_22i35|nx62798z9\)) # (!\u_kirsch|r13_8_\ & ((\u_kirsch|add4_add11_22i35|nx62798z9\) # (GND)))))
-- \u_kirsch|add4_add11_22i35|nx62798z7\ = CARRY((\u_kirsch|r13_7_\ & (!\u_kirsch|r13_8_\ & !\u_kirsch|add4_add11_22i35|nx62798z9\)) # (!\u_kirsch|r13_7_\ & ((!\u_kirsch|add4_add11_22i35|nx62798z9\) # (!\u_kirsch|r13_8_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r13_7_\,
	datab => \u_kirsch|r13_8_\,
	datad => VCC,
	cin => \u_kirsch|add4_add11_22i35|nx62798z9\,
	combout => \u_kirsch|add4_add11_22i35|nx44952z1\,
	cout => \u_kirsch|add4_add11_22i35|nx62798z7\);

-- Location: LCCOMB_X42_Y23_N24
\u_kirsch|add4_add11_22i35|ix62798z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add4_add11_22i35|nx45949z1\ = ((\u_kirsch|r13_9_\ $ (\u_kirsch|r13_8_\ $ (!\u_kirsch|add4_add11_22i35|nx62798z7\)))) # (GND)
-- \u_kirsch|add4_add11_22i35|nx62798z5\ = CARRY((\u_kirsch|r13_9_\ & ((\u_kirsch|r13_8_\) # (!\u_kirsch|add4_add11_22i35|nx62798z7\))) # (!\u_kirsch|r13_9_\ & (\u_kirsch|r13_8_\ & !\u_kirsch|add4_add11_22i35|nx62798z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r13_9_\,
	datab => \u_kirsch|r13_8_\,
	datad => VCC,
	cin => \u_kirsch|add4_add11_22i35|nx62798z7\,
	combout => \u_kirsch|add4_add11_22i35|nx45949z1\,
	cout => \u_kirsch|add4_add11_22i35|nx62798z5\);

-- Location: LCCOMB_X42_Y23_N26
\u_kirsch|add4_add11_22i35|ix62798z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add4_add11_22i35|nx46946z1\ = (\u_kirsch|r13_9_\ & ((\u_kirsch|r13_10_\ & (\u_kirsch|add4_add11_22i35|nx62798z5\ & VCC)) # (!\u_kirsch|r13_10_\ & (!\u_kirsch|add4_add11_22i35|nx62798z5\)))) # (!\u_kirsch|r13_9_\ & ((\u_kirsch|r13_10_\ & 
-- (!\u_kirsch|add4_add11_22i35|nx62798z5\)) # (!\u_kirsch|r13_10_\ & ((\u_kirsch|add4_add11_22i35|nx62798z5\) # (GND)))))
-- \u_kirsch|add4_add11_22i35|nx62798z3\ = CARRY((\u_kirsch|r13_9_\ & (!\u_kirsch|r13_10_\ & !\u_kirsch|add4_add11_22i35|nx62798z5\)) # (!\u_kirsch|r13_9_\ & ((!\u_kirsch|add4_add11_22i35|nx62798z5\) # (!\u_kirsch|r13_10_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r13_9_\,
	datab => \u_kirsch|r13_10_\,
	datad => VCC,
	cin => \u_kirsch|add4_add11_22i35|nx62798z5\,
	combout => \u_kirsch|add4_add11_22i35|nx46946z1\,
	cout => \u_kirsch|add4_add11_22i35|nx62798z3\);

-- Location: LCCOMB_X42_Y23_N28
\u_kirsch|add4_add11_22i35|ix62798z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add4_add11_22i35|nx62798z1\ = (\u_kirsch|r13_10_\ & (\u_kirsch|add4_add11_22i35|nx62798z3\ $ (GND))) # (!\u_kirsch|r13_10_\ & (!\u_kirsch|add4_add11_22i35|nx62798z3\ & VCC))
-- \u_kirsch|add4_add11_22i35|nx23445z2\ = CARRY((\u_kirsch|r13_10_\ & !\u_kirsch|add4_add11_22i35|nx62798z3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r13_10_\,
	datad => VCC,
	cin => \u_kirsch|add4_add11_22i35|nx62798z3\,
	combout => \u_kirsch|add4_add11_22i35|nx62798z1\,
	cout => \u_kirsch|add4_add11_22i35|nx23445z2\);

-- Location: LCCOMB_X42_Y23_N30
\u_kirsch|add4_add11_22i35|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add4_add11_22i35|nx23445z1\ = \u_kirsch|add4_add11_22i35|nx23445z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_kirsch|add4_add11_22i35|nx23445z2\,
	combout => \u_kirsch|add4_add11_22i35|nx23445z1\);

-- Location: LCFF_X35_Y24_N27
\u_kirsch|reg_max2_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max2_8_~feeder_combout\,
	sdata => \u_kirsch|r11_8_\,
	sload => \u_kirsch|sub2_10_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max2_8_\);

-- Location: LCFF_X35_Y24_N21
\u_kirsch|reg_max2_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max2_3_~feeder_combout\,
	sdata => \u_kirsch|r11_3_\,
	sload => \u_kirsch|sub2_10_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max2_3_\);

-- Location: LCFF_X35_Y24_N15
\u_kirsch|reg_max2_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max2_2_~feeder_combout\,
	sdata => \u_kirsch|r11_2_\,
	sload => \u_kirsch|sub2_10_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max2_2_\);

-- Location: LCFF_X35_Y24_N3
\u_kirsch|reg_max2_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max2_0_~feeder_combout\,
	sdata => \u_kirsch|r11_0_\,
	sload => \u_kirsch|sub2_10_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max2_0_\);

-- Location: LCFF_X46_Y23_N27
\u_kirsch|reg_r1_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx41056z1\,
	sdata => \u_kirsch|a_7_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r1_7_\);

-- Location: LCFF_X46_Y23_N23
\u_kirsch|reg_r1_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx40059z1\,
	sdata => \u_kirsch|a_6_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r1_6_\);

-- Location: LCFF_X48_Y23_N21
\u_kirsch|reg_r2_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx29646z1\,
	sdata => \u_kirsch|d_4_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_4_\);

-- Location: LCFF_X46_Y23_N3
\u_kirsch|reg_r1_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx35074z1\,
	sdata => \u_kirsch|a_1_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r1_1_\);

-- Location: LCFF_X46_Y24_N27
\u_kirsch|reg_dir2_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx2019z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|dir2_2_\);

-- Location: LCCOMB_X46_Y24_N4
\u_kirsch|ix36266z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx36266z1\ = (!\u_kirsch|sub2_10_\ & \u_kirsch|v_4_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|sub2_10_\,
	datad => \u_kirsch|v_4_\,
	combout => \u_kirsch|nx36266z1\);

-- Location: LCFF_X37_Y24_N9
\u_kirsch|reg_r9_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r9_8_~feeder_combout\,
	sdata => \u_kirsch|add2_8_\,
	sload => \u_kirsch|v_2_\,
	ena => \u_kirsch|nx24302z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r9_8_\);

-- Location: LCFF_X37_Y24_N31
\u_kirsch|reg_r9_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r9_3_~feeder_combout\,
	sdata => \u_kirsch|add2_3_\,
	sload => \u_kirsch|v_2_\,
	ena => \u_kirsch|nx24302z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r9_3_\);

-- Location: LCFF_X37_Y24_N13
\u_kirsch|reg_r9_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r9_2_~feeder_combout\,
	sdata => \u_kirsch|add2_2_\,
	sload => \u_kirsch|v_2_\,
	ena => \u_kirsch|nx24302z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r9_2_\);

-- Location: LCFF_X37_Y24_N3
\u_kirsch|reg_r9_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r9_0_~feeder_combout\,
	sdata => \u_kirsch|add2_0_\,
	sload => \u_kirsch|v_2_\,
	ena => \u_kirsch|nx24302z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r9_0_\);

-- Location: LCFF_X38_Y24_N25
\u_kirsch|reg_dir6_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx35695z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|dir6_2_\);

-- Location: LCFF_X41_Y24_N21
\u_kirsch|reg_add3_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add3_add11_22i1|nx62798z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add3_10_\);

-- Location: LCFF_X41_Y24_N19
\u_kirsch|reg_add3_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add3_add11_22i1|nx46946z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add3_9_\);

-- Location: LCFF_X41_Y24_N17
\u_kirsch|reg_add3_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add3_add11_22i1|nx45949z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add3_8_\);

-- Location: LCFF_X41_Y24_N15
\u_kirsch|reg_add3_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add3_add11_22i1|nx44952z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add3_7_\);

-- Location: LCFF_X41_Y24_N13
\u_kirsch|reg_add3_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add3_add11_22i1|nx43955z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add3_6_\);

-- Location: LCFF_X41_Y24_N11
\u_kirsch|reg_add3_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add3_add11_22i1|nx42958z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add3_5_\);

-- Location: LCFF_X41_Y24_N9
\u_kirsch|reg_add3_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add3_add11_22i1|nx41961z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add3_4_\);

-- Location: LCFF_X41_Y24_N7
\u_kirsch|reg_add3_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add3_add11_22i1|nx40964z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add3_3_\);

-- Location: LCFF_X41_Y24_N5
\u_kirsch|reg_add3_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add3_add11_22i1|nx39967z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add3_2_\);

-- Location: LCFF_X41_Y24_N3
\u_kirsch|reg_add3_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add3_add11_22i1|nx38970z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add3_1_\);

-- Location: LCFF_X41_Y24_N1
\u_kirsch|reg_add3_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add3_add11_22i1|nx37973z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add3_0_\);

-- Location: LCFF_X37_Y24_N21
\u_kirsch|reg_r7_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r7_8_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r7_8_\);

-- Location: LCFF_X40_Y24_N7
\u_kirsch|reg_r5_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r5_7_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r5_7_\);

-- Location: LCFF_X43_Y23_N1
\u_kirsch|reg_r7_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r7_6_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r7_6_\);

-- Location: LCFF_X43_Y24_N17
\u_kirsch|reg_r7_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|add1_5_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r7_5_\);

-- Location: LCFF_X40_Y24_N3
\u_kirsch|reg_r5_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r5_4_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r5_4_\);

-- Location: LCFF_X43_Y23_N3
\u_kirsch|reg_r7_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r7_3_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r7_3_\);

-- Location: LCFF_X43_Y24_N27
\u_kirsch|reg_r7_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r7_2_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r7_2_\);

-- Location: LCFF_X44_Y24_N1
\u_kirsch|reg_r5_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r5_1_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r5_1_\);

-- Location: LCFF_X43_Y24_N7
\u_kirsch|reg_r7_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r7_0_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r7_0_\);

-- Location: LCCOMB_X46_Y24_N30
\u_kirsch|ix41056z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx41056z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & (\u_kirsch|e_7_\)) # (!\u_kirsch|v_2_\ & ((\u_kirsch|g_7_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_2_\,
	datab => \u_kirsch|e_7_\,
	datac => \u_kirsch|g_7_\,
	datad => \u_kirsch|v_1_\,
	combout => \u_kirsch|nx41056z2\);

-- Location: LCCOMB_X46_Y23_N26
\u_kirsch|ix41056z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx41056z1\ = (\u_kirsch|nx41056z2\) # ((\u_kirsch|c_7_\ & \u_kirsch|v_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx41056z2\,
	datab => \u_kirsch|c_7_\,
	datad => \u_kirsch|v_1_\,
	combout => \u_kirsch|nx41056z1\);

-- Location: LCFF_X47_Y23_N13
\u_kirsch|reg_a_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|b_7_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|a_7_\);

-- Location: LCFF_X47_Y23_N19
\u_kirsch|reg_h_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|i_6_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|h_6_\);

-- Location: LCCOMB_X47_Y23_N10
\u_kirsch|ix31640z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx31640z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & ((\u_kirsch|h_6_\))) # (!\u_kirsch|v_2_\ & (\u_kirsch|b_6_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_2_\,
	datab => \u_kirsch|v_1_\,
	datac => \u_kirsch|b_6_\,
	datad => \u_kirsch|h_6_\,
	combout => \u_kirsch|nx31640z2\);

-- Location: LCFF_X47_Y23_N3
\u_kirsch|reg_g_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_6_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|g_6_\);

-- Location: LCCOMB_X47_Y23_N2
\u_kirsch|ix40059z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx40059z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & ((\u_kirsch|e_6_\))) # (!\u_kirsch|v_2_\ & (\u_kirsch|g_6_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_2_\,
	datab => \u_kirsch|v_1_\,
	datac => \u_kirsch|g_6_\,
	datad => \u_kirsch|e_6_\,
	combout => \u_kirsch|nx40059z2\);

-- Location: LCCOMB_X46_Y23_N22
\u_kirsch|ix40059z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx40059z1\ = (\u_kirsch|nx40059z2\) # ((\u_kirsch|c_6_\ & \u_kirsch|v_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|c_6_\,
	datab => \u_kirsch|v_1_\,
	datad => \u_kirsch|nx40059z2\,
	combout => \u_kirsch|nx40059z1\);

-- Location: LCFF_X47_Y23_N27
\u_kirsch|reg_h_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|i_4_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|h_4_\);

-- Location: LCCOMB_X47_Y23_N8
\u_kirsch|ix29646z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx29646z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & ((\u_kirsch|h_4_\))) # (!\u_kirsch|v_2_\ & (\u_kirsch|b_4_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_2_\,
	datab => \u_kirsch|v_1_\,
	datac => \u_kirsch|b_4_\,
	datad => \u_kirsch|h_4_\,
	combout => \u_kirsch|nx29646z2\);

-- Location: LCCOMB_X48_Y23_N20
\u_kirsch|ix29646z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx29646z1\ = (\u_kirsch|nx29646z2\) # ((\u_kirsch|f_4_\ & \u_kirsch|v_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx29646z2\,
	datab => \u_kirsch|f_4_\,
	datad => \u_kirsch|v_1_\,
	combout => \u_kirsch|nx29646z1\);

-- Location: LCFF_X51_Y23_N13
\u_kirsch|reg_d_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx33634z1\,
	sdata => \u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(4),
	sload => \u_kirsch|t_1_\,
	ena => \u_kirsch|nx20492z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|d_4_\);

-- Location: LCFF_X45_Y23_N15
\u_kirsch|reg_f_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|e_1_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_1_\);

-- Location: LCFF_X45_Y23_N19
\u_kirsch|reg_g_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_1_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|g_1_\);

-- Location: LCCOMB_X45_Y23_N18
\u_kirsch|ix35074z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx35074z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & ((\u_kirsch|e_1_\))) # (!\u_kirsch|v_2_\ & (\u_kirsch|g_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|g_1_\,
	datad => \u_kirsch|e_1_\,
	combout => \u_kirsch|nx35074z2\);

-- Location: LCCOMB_X46_Y23_N2
\u_kirsch|ix35074z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx35074z1\ = (\u_kirsch|nx35074z2\) # ((\u_kirsch|v_1_\ & \u_kirsch|c_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx35074z2\,
	datab => \u_kirsch|v_1_\,
	datad => \u_kirsch|c_1_\,
	combout => \u_kirsch|nx35074z1\);

-- Location: LCFF_X49_Y23_N19
\u_kirsch|reg_a_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|a_1_~feeder_combout\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|a_1_\);

-- Location: LCCOMB_X45_Y23_N10
\u_kirsch|ix25658z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx25658z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & ((\u_kirsch|h_0_\))) # (!\u_kirsch|v_2_\ & (\u_kirsch|b_0_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|b_0_\,
	datad => \u_kirsch|h_0_\,
	combout => \u_kirsch|nx25658z2\);

-- Location: LCCOMB_X46_Y24_N26
\u_kirsch|ix2019z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx2019z1\ = (\u_kirsch|v_2_\ & ((\u_kirsch|v_1_\ & ((\u_kirsch|dir2_2_\))) # (!\u_kirsch|v_1_\ & (\u_kirsch|sub1_8_\)))) # (!\u_kirsch|v_2_\ & (((\u_kirsch|dir2_2_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_2_\,
	datab => \u_kirsch|sub1_8_\,
	datac => \u_kirsch|dir2_2_\,
	datad => \u_kirsch|v_1_\,
	combout => \u_kirsch|nx2019z1\);

-- Location: LCFF_X46_Y25_N11
\u_kirsch|reg_dir3_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx10438z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|dir3_2_\);

-- Location: LCFF_X38_Y24_N31
\u_kirsch|reg_dir5_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|dir5_18n5ss1_2_\,
	ena => \u_kirsch|v_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|dir5_2_\);

-- Location: LCCOMB_X46_Y25_N20
\u_kirsch|ix35695z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|dir6_18n5ss1_2_\ = (\u_kirsch|sub2_10_\ & (\u_kirsch|dir3_2_\)) # (!\u_kirsch|sub2_10_\ & ((\u_kirsch|dir5_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|dir3_2_\,
	datac => \u_kirsch|sub2_10_\,
	datad => \u_kirsch|dir5_2_\,
	combout => \u_kirsch|dir6_18n5ss1_2_\);

-- Location: LCCOMB_X38_Y24_N24
\u_kirsch|ix35695z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx35695z1\ = (\u_kirsch|v_4_\ & (((\u_kirsch|dir6_2_\)))) # (!\u_kirsch|v_4_\ & ((\u_kirsch|v_5_\ & ((\u_kirsch|dir6_18n5ss1_2_\))) # (!\u_kirsch|v_5_\ & (\u_kirsch|dir6_2_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_4_\,
	datab => \u_kirsch|v_5_\,
	datac => \u_kirsch|dir6_2_\,
	datad => \u_kirsch|dir6_18n5ss1_2_\,
	combout => \u_kirsch|nx35695z1\);

-- Location: LCFF_X42_Y24_N21
\u_kirsch|reg_r8_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|add3_10_\,
	sclr => \u_kirsch|v_2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_10_\);

-- Location: LCFF_X42_Y24_N31
\u_kirsch|reg_r8_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|add3_9_\,
	sclr => \u_kirsch|v_2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_9_\);

-- Location: LCFF_X37_Y24_N19
\u_kirsch|reg_r8_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r8_8_~feeder_combout\,
	sdata => \u_kirsch|r7_8_\,
	sload => \u_kirsch|v_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_8_\);

-- Location: LCFF_X40_Y24_N11
\u_kirsch|reg_r8_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r8_7_~feeder_combout\,
	sdata => \u_kirsch|r7_7_\,
	sload => \u_kirsch|v_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_7_\);

-- Location: LCFF_X41_Y25_N19
\u_kirsch|reg_r8_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r8_6_~feeder_combout\,
	sdata => \u_kirsch|r7_6_\,
	sload => \u_kirsch|v_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_6_\);

-- Location: LCFF_X41_Y24_N23
\u_kirsch|reg_r8_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r8_5_~feeder_combout\,
	sdata => \u_kirsch|r7_5_\,
	sload => \u_kirsch|v_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_5_\);

-- Location: LCFF_X40_Y24_N1
\u_kirsch|reg_r8_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r8_4_~feeder_combout\,
	sdata => \u_kirsch|r7_4_\,
	sload => \u_kirsch|v_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_4_\);

-- Location: LCFF_X41_Y24_N25
\u_kirsch|reg_r8_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r8_3_~feeder_combout\,
	sdata => \u_kirsch|r7_3_\,
	sload => \u_kirsch|v_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_3_\);

-- Location: LCFF_X41_Y24_N27
\u_kirsch|reg_r8_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r8_2_~feeder_combout\,
	sdata => \u_kirsch|r7_2_\,
	sload => \u_kirsch|v_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_2_\);

-- Location: LCFF_X41_Y24_N29
\u_kirsch|reg_r8_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r8_1_~feeder_combout\,
	sdata => \u_kirsch|r7_1_\,
	sload => \u_kirsch|v_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_1_\);

-- Location: LCFF_X41_Y24_N31
\u_kirsch|reg_r8_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r8_0_~feeder_combout\,
	sdata => \u_kirsch|r7_0_\,
	sload => \u_kirsch|v_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_0_\);

-- Location: LCCOMB_X41_Y24_N0
\u_kirsch|add3_add11_22i1|ix62798z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add3_add11_22i1|nx37973z1\ = (\u_kirsch|r7_0_\ & (\u_kirsch|r8_0_\ $ (VCC))) # (!\u_kirsch|r7_0_\ & (\u_kirsch|r8_0_\ & VCC))
-- \u_kirsch|add3_add11_22i1|nx62798z29\ = CARRY((\u_kirsch|r7_0_\ & \u_kirsch|r8_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r7_0_\,
	datab => \u_kirsch|r8_0_\,
	datad => VCC,
	combout => \u_kirsch|add3_add11_22i1|nx37973z1\,
	cout => \u_kirsch|add3_add11_22i1|nx62798z29\);

-- Location: LCCOMB_X41_Y24_N2
\u_kirsch|add3_add11_22i1|ix62798z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add3_add11_22i1|nx38970z1\ = (\u_kirsch|r7_1_\ & ((\u_kirsch|r8_1_\ & (\u_kirsch|add3_add11_22i1|nx62798z29\ & VCC)) # (!\u_kirsch|r8_1_\ & (!\u_kirsch|add3_add11_22i1|nx62798z29\)))) # (!\u_kirsch|r7_1_\ & ((\u_kirsch|r8_1_\ & 
-- (!\u_kirsch|add3_add11_22i1|nx62798z29\)) # (!\u_kirsch|r8_1_\ & ((\u_kirsch|add3_add11_22i1|nx62798z29\) # (GND)))))
-- \u_kirsch|add3_add11_22i1|nx62798z26\ = CARRY((\u_kirsch|r7_1_\ & (!\u_kirsch|r8_1_\ & !\u_kirsch|add3_add11_22i1|nx62798z29\)) # (!\u_kirsch|r7_1_\ & ((!\u_kirsch|add3_add11_22i1|nx62798z29\) # (!\u_kirsch|r8_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r7_1_\,
	datab => \u_kirsch|r8_1_\,
	datad => VCC,
	cin => \u_kirsch|add3_add11_22i1|nx62798z29\,
	combout => \u_kirsch|add3_add11_22i1|nx38970z1\,
	cout => \u_kirsch|add3_add11_22i1|nx62798z26\);

-- Location: LCCOMB_X41_Y24_N4
\u_kirsch|add3_add11_22i1|ix62798z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add3_add11_22i1|nx39967z1\ = ((\u_kirsch|r7_2_\ $ (\u_kirsch|r8_2_\ $ (!\u_kirsch|add3_add11_22i1|nx62798z26\)))) # (GND)
-- \u_kirsch|add3_add11_22i1|nx62798z23\ = CARRY((\u_kirsch|r7_2_\ & ((\u_kirsch|r8_2_\) # (!\u_kirsch|add3_add11_22i1|nx62798z26\))) # (!\u_kirsch|r7_2_\ & (\u_kirsch|r8_2_\ & !\u_kirsch|add3_add11_22i1|nx62798z26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r7_2_\,
	datab => \u_kirsch|r8_2_\,
	datad => VCC,
	cin => \u_kirsch|add3_add11_22i1|nx62798z26\,
	combout => \u_kirsch|add3_add11_22i1|nx39967z1\,
	cout => \u_kirsch|add3_add11_22i1|nx62798z23\);

-- Location: LCCOMB_X41_Y24_N6
\u_kirsch|add3_add11_22i1|ix62798z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add3_add11_22i1|nx40964z1\ = (\u_kirsch|r8_3_\ & ((\u_kirsch|r7_3_\ & (\u_kirsch|add3_add11_22i1|nx62798z23\ & VCC)) # (!\u_kirsch|r7_3_\ & (!\u_kirsch|add3_add11_22i1|nx62798z23\)))) # (!\u_kirsch|r8_3_\ & ((\u_kirsch|r7_3_\ & 
-- (!\u_kirsch|add3_add11_22i1|nx62798z23\)) # (!\u_kirsch|r7_3_\ & ((\u_kirsch|add3_add11_22i1|nx62798z23\) # (GND)))))
-- \u_kirsch|add3_add11_22i1|nx62798z20\ = CARRY((\u_kirsch|r8_3_\ & (!\u_kirsch|r7_3_\ & !\u_kirsch|add3_add11_22i1|nx62798z23\)) # (!\u_kirsch|r8_3_\ & ((!\u_kirsch|add3_add11_22i1|nx62798z23\) # (!\u_kirsch|r7_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r8_3_\,
	datab => \u_kirsch|r7_3_\,
	datad => VCC,
	cin => \u_kirsch|add3_add11_22i1|nx62798z23\,
	combout => \u_kirsch|add3_add11_22i1|nx40964z1\,
	cout => \u_kirsch|add3_add11_22i1|nx62798z20\);

-- Location: LCCOMB_X41_Y24_N8
\u_kirsch|add3_add11_22i1|ix62798z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add3_add11_22i1|nx41961z1\ = ((\u_kirsch|r8_4_\ $ (\u_kirsch|r7_4_\ $ (!\u_kirsch|add3_add11_22i1|nx62798z20\)))) # (GND)
-- \u_kirsch|add3_add11_22i1|nx62798z17\ = CARRY((\u_kirsch|r8_4_\ & ((\u_kirsch|r7_4_\) # (!\u_kirsch|add3_add11_22i1|nx62798z20\))) # (!\u_kirsch|r8_4_\ & (\u_kirsch|r7_4_\ & !\u_kirsch|add3_add11_22i1|nx62798z20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r8_4_\,
	datab => \u_kirsch|r7_4_\,
	datad => VCC,
	cin => \u_kirsch|add3_add11_22i1|nx62798z20\,
	combout => \u_kirsch|add3_add11_22i1|nx41961z1\,
	cout => \u_kirsch|add3_add11_22i1|nx62798z17\);

-- Location: LCCOMB_X41_Y24_N10
\u_kirsch|add3_add11_22i1|ix62798z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add3_add11_22i1|nx42958z1\ = (\u_kirsch|r7_5_\ & ((\u_kirsch|r8_5_\ & (\u_kirsch|add3_add11_22i1|nx62798z17\ & VCC)) # (!\u_kirsch|r8_5_\ & (!\u_kirsch|add3_add11_22i1|nx62798z17\)))) # (!\u_kirsch|r7_5_\ & ((\u_kirsch|r8_5_\ & 
-- (!\u_kirsch|add3_add11_22i1|nx62798z17\)) # (!\u_kirsch|r8_5_\ & ((\u_kirsch|add3_add11_22i1|nx62798z17\) # (GND)))))
-- \u_kirsch|add3_add11_22i1|nx62798z14\ = CARRY((\u_kirsch|r7_5_\ & (!\u_kirsch|r8_5_\ & !\u_kirsch|add3_add11_22i1|nx62798z17\)) # (!\u_kirsch|r7_5_\ & ((!\u_kirsch|add3_add11_22i1|nx62798z17\) # (!\u_kirsch|r8_5_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r7_5_\,
	datab => \u_kirsch|r8_5_\,
	datad => VCC,
	cin => \u_kirsch|add3_add11_22i1|nx62798z17\,
	combout => \u_kirsch|add3_add11_22i1|nx42958z1\,
	cout => \u_kirsch|add3_add11_22i1|nx62798z14\);

-- Location: LCCOMB_X41_Y24_N12
\u_kirsch|add3_add11_22i1|ix62798z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add3_add11_22i1|nx43955z1\ = ((\u_kirsch|r8_6_\ $ (\u_kirsch|r7_6_\ $ (!\u_kirsch|add3_add11_22i1|nx62798z14\)))) # (GND)
-- \u_kirsch|add3_add11_22i1|nx62798z11\ = CARRY((\u_kirsch|r8_6_\ & ((\u_kirsch|r7_6_\) # (!\u_kirsch|add3_add11_22i1|nx62798z14\))) # (!\u_kirsch|r8_6_\ & (\u_kirsch|r7_6_\ & !\u_kirsch|add3_add11_22i1|nx62798z14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r8_6_\,
	datab => \u_kirsch|r7_6_\,
	datad => VCC,
	cin => \u_kirsch|add3_add11_22i1|nx62798z14\,
	combout => \u_kirsch|add3_add11_22i1|nx43955z1\,
	cout => \u_kirsch|add3_add11_22i1|nx62798z11\);

-- Location: LCCOMB_X41_Y24_N14
\u_kirsch|add3_add11_22i1|ix62798z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add3_add11_22i1|nx44952z1\ = (\u_kirsch|r8_7_\ & ((\u_kirsch|r7_7_\ & (\u_kirsch|add3_add11_22i1|nx62798z11\ & VCC)) # (!\u_kirsch|r7_7_\ & (!\u_kirsch|add3_add11_22i1|nx62798z11\)))) # (!\u_kirsch|r8_7_\ & ((\u_kirsch|r7_7_\ & 
-- (!\u_kirsch|add3_add11_22i1|nx62798z11\)) # (!\u_kirsch|r7_7_\ & ((\u_kirsch|add3_add11_22i1|nx62798z11\) # (GND)))))
-- \u_kirsch|add3_add11_22i1|nx62798z8\ = CARRY((\u_kirsch|r8_7_\ & (!\u_kirsch|r7_7_\ & !\u_kirsch|add3_add11_22i1|nx62798z11\)) # (!\u_kirsch|r8_7_\ & ((!\u_kirsch|add3_add11_22i1|nx62798z11\) # (!\u_kirsch|r7_7_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r8_7_\,
	datab => \u_kirsch|r7_7_\,
	datad => VCC,
	cin => \u_kirsch|add3_add11_22i1|nx62798z11\,
	combout => \u_kirsch|add3_add11_22i1|nx44952z1\,
	cout => \u_kirsch|add3_add11_22i1|nx62798z8\);

-- Location: LCCOMB_X41_Y24_N16
\u_kirsch|add3_add11_22i1|ix62798z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add3_add11_22i1|nx45949z1\ = ((\u_kirsch|r7_8_\ $ (\u_kirsch|r8_8_\ $ (!\u_kirsch|add3_add11_22i1|nx62798z8\)))) # (GND)
-- \u_kirsch|add3_add11_22i1|nx62798z5\ = CARRY((\u_kirsch|r7_8_\ & ((\u_kirsch|r8_8_\) # (!\u_kirsch|add3_add11_22i1|nx62798z8\))) # (!\u_kirsch|r7_8_\ & (\u_kirsch|r8_8_\ & !\u_kirsch|add3_add11_22i1|nx62798z8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r7_8_\,
	datab => \u_kirsch|r8_8_\,
	datad => VCC,
	cin => \u_kirsch|add3_add11_22i1|nx62798z8\,
	combout => \u_kirsch|add3_add11_22i1|nx45949z1\,
	cout => \u_kirsch|add3_add11_22i1|nx62798z5\);

-- Location: LCCOMB_X41_Y24_N18
\u_kirsch|add3_add11_22i1|ix62798z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add3_add11_22i1|nx46946z1\ = (\u_kirsch|r8_9_\ & (!\u_kirsch|add3_add11_22i1|nx62798z5\)) # (!\u_kirsch|r8_9_\ & ((\u_kirsch|add3_add11_22i1|nx62798z5\) # (GND)))
-- \u_kirsch|add3_add11_22i1|nx62798z3\ = CARRY((!\u_kirsch|add3_add11_22i1|nx62798z5\) # (!\u_kirsch|r8_9_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r8_9_\,
	datad => VCC,
	cin => \u_kirsch|add3_add11_22i1|nx62798z5\,
	combout => \u_kirsch|add3_add11_22i1|nx46946z1\,
	cout => \u_kirsch|add3_add11_22i1|nx62798z3\);

-- Location: LCCOMB_X41_Y24_N20
\u_kirsch|add3_add11_22i1|ix62798z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add3_add11_22i1|nx62798z1\ = \u_kirsch|add3_add11_22i1|nx62798z3\ $ (!\u_kirsch|r8_10_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r8_10_\,
	cin => \u_kirsch|add3_add11_22i1|nx62798z3\,
	combout => \u_kirsch|add3_add11_22i1|nx62798z1\);

-- Location: LCFF_X43_Y23_N29
\u_kirsch|reg_add1_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add1_add8_22i31|nx23445z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add1_8_\);

-- Location: LCFF_X45_Y24_N9
\u_kirsch|reg_max1_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max1_7_~feeder_combout\,
	sdata => \u_kirsch|r2_7_\,
	sload => \u_kirsch|sub1_8_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max1_7_\);

-- Location: LCFF_X43_Y23_N25
\u_kirsch|reg_add1_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add1_add8_22i31|nx43955z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add1_6_\);

-- Location: LCFF_X43_Y23_N23
\u_kirsch|reg_add1_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add1_add8_22i31|nx42958z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add1_5_\);

-- Location: LCFF_X45_Y24_N7
\u_kirsch|reg_max1_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max1_4_~feeder_combout\,
	sdata => \u_kirsch|r2_4_\,
	sload => \u_kirsch|sub1_8_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max1_4_\);

-- Location: LCFF_X43_Y23_N19
\u_kirsch|reg_add1_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add1_add8_22i31|nx40964z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add1_3_\);

-- Location: LCFF_X43_Y23_N17
\u_kirsch|reg_add1_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add1_add8_22i31|nx39967z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add1_2_\);

-- Location: LCFF_X45_Y24_N29
\u_kirsch|reg_max1_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max1_1_~feeder_combout\,
	sdata => \u_kirsch|r2_1_\,
	sload => \u_kirsch|sub1_8_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max1_1_\);

-- Location: LCFF_X43_Y23_N13
\u_kirsch|reg_add1_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add1_add8_22i31|nx37973z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add1_0_\);

-- Location: LCFF_X49_Y23_N25
\u_kirsch|reg_i_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|i_6_~feeder_combout\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|i_6_\);

-- Location: LCFF_X49_Y23_N13
\u_kirsch|reg_i_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|i_4_~feeder_combout\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|i_4_\);

-- Location: LCCOMB_X51_Y23_N12
\u_kirsch|ix33634z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx33634z1\ = (\u_kirsch|t_0_\ & ((\u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(4)))) # (!\u_kirsch|t_0_\ & (\u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|t_0_\,
	datab => \u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(4),
	datad => \u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(4),
	combout => \u_kirsch|nx33634z1\);

-- Location: LCFF_X48_Y24_N27
\u_uw_uart|reg_rdata_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|rdata_3_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_3_\);

-- Location: M4K_X52_Y25
\u_kirsch|m3_mem|ix64056z29483|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "kirsch:u_kirsch|ram_dq_8_2:m3_mem|altsyncram:ix64056z29483|altsyncram_jpg2:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \u_kirsch|wren_m3\,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \u_kirsch|m3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u_kirsch|m3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u_kirsch|m3_mem|ix64056z29483|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X46_Y25_N10
\u_kirsch|ix10438z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx10438z1\ = (\u_kirsch|nx46679z2\ & (((\u_kirsch|dir3_2_\)))) # (!\u_kirsch|nx46679z2\ & ((\u_kirsch|v_3_\ & (\u_kirsch|sub1_8_\)) # (!\u_kirsch|v_3_\ & ((\u_kirsch|dir3_2_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|sub1_8_\,
	datab => \u_kirsch|nx46679z2\,
	datac => \u_kirsch|dir3_2_\,
	datad => \u_kirsch|v_3_\,
	combout => \u_kirsch|nx10438z1\);

-- Location: LCFF_X46_Y24_N11
\u_kirsch|reg_dir1_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|dir1_2_~feeder_combout\,
	ena => \u_kirsch|v_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|dir1_2_\);

-- Location: LCCOMB_X38_Y24_N30
\u_kirsch|ix38260z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|dir5_18n5ss1_2_\ = (\u_kirsch|sub2_10_\ & ((\u_kirsch|dir2_2_\))) # (!\u_kirsch|sub2_10_\ & (\u_kirsch|dir1_2_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|sub2_10_\,
	datac => \u_kirsch|dir1_2_\,
	datad => \u_kirsch|dir2_2_\,
	combout => \u_kirsch|dir5_18n5ss1_2_\);

-- Location: LCFF_X46_Y23_N9
\u_kirsch|reg_r3_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx41318z1\,
	sdata => \u_kirsch|c_7_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_7_\);

-- Location: LCFF_X46_Y23_N19
\u_kirsch|reg_r4_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx50734z1\,
	sdata => \u_kirsch|b_6_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_6_\);

-- Location: LCFF_X48_Y23_N7
\u_kirsch|reg_r3_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx43312z1\,
	sdata => \u_kirsch|c_5_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_5_\);

-- Location: LCFF_X44_Y23_N1
\u_kirsch|reg_r4_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx52728z1\,
	sdata => \u_kirsch|b_4_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_4_\);

-- Location: LCFF_X48_Y23_N19
\u_kirsch|reg_r3_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx45306z1\,
	sdata => \u_kirsch|c_3_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_3_\);

-- Location: LCFF_X44_Y23_N7
\u_kirsch|reg_r3_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx46303z1\,
	sdata => \u_kirsch|c_2_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_2_\);

-- Location: LCFF_X43_Y23_N7
\u_kirsch|reg_r4_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx55719z1\,
	sdata => \u_kirsch|b_1_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_1_\);

-- Location: LCFF_X43_Y23_N11
\u_kirsch|reg_r3_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx48297z1\,
	sdata => \u_kirsch|c_0_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_0_\);

-- Location: LCCOMB_X43_Y23_N12
\u_kirsch|add1_add8_22i31|ix44952z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add1_add8_22i31|nx37973z1\ = (\u_kirsch|r3_0_\ & (\u_kirsch|r4_0_\ $ (VCC))) # (!\u_kirsch|r3_0_\ & (\u_kirsch|r4_0_\ & VCC))
-- \u_kirsch|add1_add8_22i31|nx44952z22\ = CARRY((\u_kirsch|r3_0_\ & \u_kirsch|r4_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_0_\,
	datab => \u_kirsch|r4_0_\,
	datad => VCC,
	combout => \u_kirsch|add1_add8_22i31|nx37973z1\,
	cout => \u_kirsch|add1_add8_22i31|nx44952z22\);

-- Location: LCCOMB_X43_Y23_N16
\u_kirsch|add1_add8_22i31|ix44952z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add1_add8_22i31|nx39967z1\ = ((\u_kirsch|r3_2_\ $ (\u_kirsch|r4_2_\ $ (!\u_kirsch|add1_add8_22i31|nx44952z19\)))) # (GND)
-- \u_kirsch|add1_add8_22i31|nx44952z16\ = CARRY((\u_kirsch|r3_2_\ & ((\u_kirsch|r4_2_\) # (!\u_kirsch|add1_add8_22i31|nx44952z19\))) # (!\u_kirsch|r3_2_\ & (\u_kirsch|r4_2_\ & !\u_kirsch|add1_add8_22i31|nx44952z19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_2_\,
	datab => \u_kirsch|r4_2_\,
	datad => VCC,
	cin => \u_kirsch|add1_add8_22i31|nx44952z19\,
	combout => \u_kirsch|add1_add8_22i31|nx39967z1\,
	cout => \u_kirsch|add1_add8_22i31|nx44952z16\);

-- Location: LCCOMB_X43_Y23_N18
\u_kirsch|add1_add8_22i31|ix44952z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add1_add8_22i31|nx40964z1\ = (\u_kirsch|r3_3_\ & ((\u_kirsch|r4_3_\ & (\u_kirsch|add1_add8_22i31|nx44952z16\ & VCC)) # (!\u_kirsch|r4_3_\ & (!\u_kirsch|add1_add8_22i31|nx44952z16\)))) # (!\u_kirsch|r3_3_\ & ((\u_kirsch|r4_3_\ & 
-- (!\u_kirsch|add1_add8_22i31|nx44952z16\)) # (!\u_kirsch|r4_3_\ & ((\u_kirsch|add1_add8_22i31|nx44952z16\) # (GND)))))
-- \u_kirsch|add1_add8_22i31|nx44952z13\ = CARRY((\u_kirsch|r3_3_\ & (!\u_kirsch|r4_3_\ & !\u_kirsch|add1_add8_22i31|nx44952z16\)) # (!\u_kirsch|r3_3_\ & ((!\u_kirsch|add1_add8_22i31|nx44952z16\) # (!\u_kirsch|r4_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_3_\,
	datab => \u_kirsch|r4_3_\,
	datad => VCC,
	cin => \u_kirsch|add1_add8_22i31|nx44952z16\,
	combout => \u_kirsch|add1_add8_22i31|nx40964z1\,
	cout => \u_kirsch|add1_add8_22i31|nx44952z13\);

-- Location: LCCOMB_X43_Y23_N22
\u_kirsch|add1_add8_22i31|ix44952z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add1_add8_22i31|nx42958z1\ = (\u_kirsch|r3_5_\ & ((\u_kirsch|r4_5_\ & (\u_kirsch|add1_add8_22i31|nx44952z10\ & VCC)) # (!\u_kirsch|r4_5_\ & (!\u_kirsch|add1_add8_22i31|nx44952z10\)))) # (!\u_kirsch|r3_5_\ & ((\u_kirsch|r4_5_\ & 
-- (!\u_kirsch|add1_add8_22i31|nx44952z10\)) # (!\u_kirsch|r4_5_\ & ((\u_kirsch|add1_add8_22i31|nx44952z10\) # (GND)))))
-- \u_kirsch|add1_add8_22i31|nx44952z7\ = CARRY((\u_kirsch|r3_5_\ & (!\u_kirsch|r4_5_\ & !\u_kirsch|add1_add8_22i31|nx44952z10\)) # (!\u_kirsch|r3_5_\ & ((!\u_kirsch|add1_add8_22i31|nx44952z10\) # (!\u_kirsch|r4_5_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_5_\,
	datab => \u_kirsch|r4_5_\,
	datad => VCC,
	cin => \u_kirsch|add1_add8_22i31|nx44952z10\,
	combout => \u_kirsch|add1_add8_22i31|nx42958z1\,
	cout => \u_kirsch|add1_add8_22i31|nx44952z7\);

-- Location: LCCOMB_X43_Y23_N24
\u_kirsch|add1_add8_22i31|ix44952z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add1_add8_22i31|nx43955z1\ = ((\u_kirsch|r4_6_\ $ (\u_kirsch|r3_6_\ $ (!\u_kirsch|add1_add8_22i31|nx44952z7\)))) # (GND)
-- \u_kirsch|add1_add8_22i31|nx44952z4\ = CARRY((\u_kirsch|r4_6_\ & ((\u_kirsch|r3_6_\) # (!\u_kirsch|add1_add8_22i31|nx44952z7\))) # (!\u_kirsch|r4_6_\ & (\u_kirsch|r3_6_\ & !\u_kirsch|add1_add8_22i31|nx44952z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r4_6_\,
	datab => \u_kirsch|r3_6_\,
	datad => VCC,
	cin => \u_kirsch|add1_add8_22i31|nx44952z7\,
	combout => \u_kirsch|add1_add8_22i31|nx43955z1\,
	cout => \u_kirsch|add1_add8_22i31|nx44952z4\);

-- Location: LCCOMB_X43_Y23_N26
\u_kirsch|add1_add8_22i31|ix44952z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add1_add8_22i31|nx44952z1\ = (\u_kirsch|r3_7_\ & ((\u_kirsch|r4_7_\ & (\u_kirsch|add1_add8_22i31|nx44952z4\ & VCC)) # (!\u_kirsch|r4_7_\ & (!\u_kirsch|add1_add8_22i31|nx44952z4\)))) # (!\u_kirsch|r3_7_\ & ((\u_kirsch|r4_7_\ & 
-- (!\u_kirsch|add1_add8_22i31|nx44952z4\)) # (!\u_kirsch|r4_7_\ & ((\u_kirsch|add1_add8_22i31|nx44952z4\) # (GND)))))
-- \u_kirsch|add1_add8_22i31|nx23445z2\ = CARRY((\u_kirsch|r3_7_\ & (!\u_kirsch|r4_7_\ & !\u_kirsch|add1_add8_22i31|nx44952z4\)) # (!\u_kirsch|r3_7_\ & ((!\u_kirsch|add1_add8_22i31|nx44952z4\) # (!\u_kirsch|r4_7_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_7_\,
	datab => \u_kirsch|r4_7_\,
	datad => VCC,
	cin => \u_kirsch|add1_add8_22i31|nx44952z4\,
	combout => \u_kirsch|add1_add8_22i31|nx44952z1\,
	cout => \u_kirsch|add1_add8_22i31|nx23445z2\);

-- Location: LCCOMB_X43_Y23_N28
\u_kirsch|add1_add8_22i31|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add1_add8_22i31|nx23445z1\ = !\u_kirsch|add1_add8_22i31|nx23445z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_kirsch|add1_add8_22i31|nx23445z2\,
	combout => \u_kirsch|add1_add8_22i31|nx23445z1\);

-- Location: LCCOMB_X51_Y24_N28
\u_kirsch|ix13952z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|wren_m1\ = (\u_uw_uart|o_pixavail\ & ((\u_kirsch|nx17322z2\) # ((!\u_kirsch|t_1_\ & !\u_kirsch|t_0_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|t_1_\,
	datab => \u_kirsch|t_0_\,
	datac => \u_kirsch|nx17322z2\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_kirsch|wren_m1\);

-- Location: LCCOMB_X51_Y24_N12
\u_kirsch|ix24222z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|wren_m3\ = (\u_kirsch|t_1_\ & (!\u_kirsch|t_0_\ & (!\u_kirsch|nx17322z2\ & \u_uw_uart|o_pixavail\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|t_1_\,
	datab => \u_kirsch|t_0_\,
	datac => \u_kirsch|nx17322z2\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_kirsch|wren_m3\);

-- Location: LCCOMB_X51_Y24_N22
\u_kirsch|ix19087z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|wren_m2\ = (!\u_kirsch|t_1_\ & (\u_kirsch|t_0_\ & (!\u_kirsch|nx17322z2\ & \u_uw_uart|o_pixavail\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|t_1_\,
	datab => \u_kirsch|t_0_\,
	datac => \u_kirsch|nx17322z2\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_kirsch|wren_m2\);

-- Location: LCFF_X48_Y25_N9
\u_uw_uart|i_uarts|reg_Dout_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Rx_Reg_3_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_3_\);

-- Location: LCCOMB_X47_Y23_N12
\u_kirsch|ix41318z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx41318z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & ((\u_kirsch|f_7_\))) # (!\u_kirsch|v_2_\ & (\u_kirsch|a_7_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_2_\,
	datab => \u_kirsch|v_1_\,
	datac => \u_kirsch|a_7_\,
	datad => \u_kirsch|f_7_\,
	combout => \u_kirsch|nx41318z2\);

-- Location: LCCOMB_X46_Y23_N8
\u_kirsch|ix41318z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx41318z1\ = (\u_kirsch|nx41318z2\) # ((\u_kirsch|v_1_\ & \u_kirsch|e_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx41318z2\,
	datab => \u_kirsch|v_1_\,
	datad => \u_kirsch|e_7_\,
	combout => \u_kirsch|nx41318z1\);

-- Location: LCCOMB_X47_Y23_N18
\u_kirsch|ix50734z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx50734z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & (\u_kirsch|g_6_\)) # (!\u_kirsch|v_2_\ & ((\u_kirsch|h_6_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_2_\,
	datab => \u_kirsch|g_6_\,
	datac => \u_kirsch|h_6_\,
	datad => \u_kirsch|v_1_\,
	combout => \u_kirsch|nx50734z2\);

-- Location: LCCOMB_X46_Y23_N18
\u_kirsch|ix50734z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx50734z1\ = (\u_kirsch|nx50734z2\) # ((\u_kirsch|d_6_\ & \u_kirsch|v_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|d_6_\,
	datab => \u_kirsch|v_1_\,
	datad => \u_kirsch|nx50734z2\,
	combout => \u_kirsch|nx50734z1\);

-- Location: LCCOMB_X47_Y23_N4
\u_kirsch|ix43312z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx43312z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & ((\u_kirsch|f_5_\))) # (!\u_kirsch|v_2_\ & (\u_kirsch|a_5_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_2_\,
	datab => \u_kirsch|v_1_\,
	datac => \u_kirsch|a_5_\,
	datad => \u_kirsch|f_5_\,
	combout => \u_kirsch|nx43312z2\);

-- Location: LCCOMB_X48_Y23_N6
\u_kirsch|ix43312z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx43312z1\ = (\u_kirsch|nx43312z2\) # ((\u_kirsch|e_5_\ & \u_kirsch|v_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx43312z2\,
	datab => \u_kirsch|e_5_\,
	datad => \u_kirsch|v_1_\,
	combout => \u_kirsch|nx43312z1\);

-- Location: LCCOMB_X47_Y23_N26
\u_kirsch|ix52728z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx52728z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & ((\u_kirsch|g_4_\))) # (!\u_kirsch|v_2_\ & (\u_kirsch|h_4_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_2_\,
	datab => \u_kirsch|v_1_\,
	datac => \u_kirsch|h_4_\,
	datad => \u_kirsch|g_4_\,
	combout => \u_kirsch|nx52728z2\);

-- Location: LCCOMB_X44_Y23_N0
\u_kirsch|ix52728z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx52728z1\ = (\u_kirsch|nx52728z2\) # ((\u_kirsch|v_1_\ & \u_kirsch|d_4_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx52728z2\,
	datab => \u_kirsch|v_1_\,
	datad => \u_kirsch|d_4_\,
	combout => \u_kirsch|nx52728z1\);

-- Location: LCCOMB_X47_Y23_N0
\u_kirsch|ix53725z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx53725z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & (\u_kirsch|g_3_\)) # (!\u_kirsch|v_2_\ & ((\u_kirsch|h_3_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_2_\,
	datab => \u_kirsch|v_1_\,
	datac => \u_kirsch|g_3_\,
	datad => \u_kirsch|h_3_\,
	combout => \u_kirsch|nx53725z2\);

-- Location: LCCOMB_X47_Y23_N28
\u_kirsch|ix45306z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx45306z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & ((\u_kirsch|f_3_\))) # (!\u_kirsch|v_2_\ & (\u_kirsch|a_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_2_\,
	datab => \u_kirsch|v_1_\,
	datac => \u_kirsch|a_3_\,
	datad => \u_kirsch|f_3_\,
	combout => \u_kirsch|nx45306z2\);

-- Location: LCCOMB_X48_Y23_N18
\u_kirsch|ix45306z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx45306z1\ = (\u_kirsch|nx45306z2\) # ((\u_kirsch|v_1_\ & \u_kirsch|e_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|e_3_\,
	datad => \u_kirsch|nx45306z2\,
	combout => \u_kirsch|nx45306z1\);

-- Location: LCCOMB_X45_Y23_N26
\u_kirsch|ix54722z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx54722z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & (\u_kirsch|g_2_\)) # (!\u_kirsch|v_2_\ & ((\u_kirsch|h_2_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|g_2_\,
	datac => \u_kirsch|h_2_\,
	datad => \u_kirsch|v_2_\,
	combout => \u_kirsch|nx54722z2\);

-- Location: LCCOMB_X45_Y23_N30
\u_kirsch|ix46303z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx46303z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & ((\u_kirsch|f_2_\))) # (!\u_kirsch|v_2_\ & (\u_kirsch|a_2_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|a_2_\,
	datac => \u_kirsch|f_2_\,
	datad => \u_kirsch|v_2_\,
	combout => \u_kirsch|nx46303z2\);

-- Location: LCCOMB_X44_Y23_N6
\u_kirsch|ix46303z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx46303z1\ = (\u_kirsch|nx46303z2\) # ((\u_kirsch|v_1_\ & \u_kirsch|e_2_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx46303z2\,
	datab => \u_kirsch|v_1_\,
	datad => \u_kirsch|e_2_\,
	combout => \u_kirsch|nx46303z1\);

-- Location: LCCOMB_X45_Y23_N22
\u_kirsch|ix55719z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx55719z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & (\u_kirsch|g_1_\)) # (!\u_kirsch|v_2_\ & ((\u_kirsch|h_1_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|g_1_\,
	datac => \u_kirsch|h_1_\,
	datad => \u_kirsch|v_2_\,
	combout => \u_kirsch|nx55719z2\);

-- Location: LCCOMB_X43_Y23_N6
\u_kirsch|ix55719z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx55719z1\ = (\u_kirsch|nx55719z2\) # ((\u_kirsch|v_1_\ & \u_kirsch|d_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|nx55719z2\,
	datad => \u_kirsch|d_1_\,
	combout => \u_kirsch|nx55719z1\);

-- Location: LCCOMB_X45_Y23_N14
\u_kirsch|ix47300z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx47300z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & ((\u_kirsch|f_1_\))) # (!\u_kirsch|v_2_\ & (\u_kirsch|a_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|a_1_\,
	datac => \u_kirsch|f_1_\,
	datad => \u_kirsch|v_2_\,
	combout => \u_kirsch|nx47300z2\);

-- Location: LCCOMB_X45_Y23_N8
\u_kirsch|ix48297z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx48297z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & ((\u_kirsch|f_0_\))) # (!\u_kirsch|v_2_\ & (\u_kirsch|a_0_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|a_0_\,
	datad => \u_kirsch|f_0_\,
	combout => \u_kirsch|nx48297z2\);

-- Location: LCCOMB_X43_Y23_N10
\u_kirsch|ix48297z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx48297z1\ = (\u_kirsch|nx48297z2\) # ((\u_kirsch|v_1_\ & \u_kirsch|e_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|nx48297z2\,
	datad => \u_kirsch|e_0_\,
	combout => \u_kirsch|nx48297z1\);

-- Location: LCCOMB_X42_Y25_N24
\u_kirsch|dir5_0_~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|dir5_0_~_wirecell_combout\ = !\u_kirsch|dir5_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|dir5_0_\,
	combout => \u_kirsch|dir5_0_~_wirecell_combout\);

-- Location: LCCOMB_X40_Y23_N28
\u_kirsch|sub4_sub13_22i36|nx23445z1~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub4_sub13_22i36|nx23445z1~_wirecell_combout\ = !\u_kirsch|sub4_sub13_22i36|nx23445z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|sub4_sub13_22i36|nx23445z1\,
	combout => \u_kirsch|sub4_sub13_22i36|nx23445z1~_wirecell_combout\);

-- Location: LCCOMB_X41_Y23_N24
\u_kirsch|r15_12_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r15_12_~feeder_combout\ = \u_kirsch|add4_12_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|add4_12_\,
	combout => \u_kirsch|r15_12_~feeder_combout\);

-- Location: LCCOMB_X37_Y23_N16
\u_kirsch|r14_12_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r14_12_~feeder_combout\ = \u_kirsch|max3_9_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|max3_9_\,
	combout => \u_kirsch|r14_12_~feeder_combout\);

-- Location: LCCOMB_X41_Y23_N10
\u_kirsch|r15_11_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r15_11_~feeder_combout\ = \u_kirsch|add4_11_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|add4_11_\,
	combout => \u_kirsch|r15_11_~feeder_combout\);

-- Location: LCCOMB_X37_Y23_N10
\u_kirsch|r14_11_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r14_11_~feeder_combout\ = \u_kirsch|max3_8_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max3_8_\,
	combout => \u_kirsch|r14_11_~feeder_combout\);

-- Location: LCCOMB_X37_Y23_N20
\u_kirsch|r14_10_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r14_10_~feeder_combout\ = \u_kirsch|max3_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max3_7_\,
	combout => \u_kirsch|r14_10_~feeder_combout\);

-- Location: LCCOMB_X41_Y23_N6
\u_kirsch|r15_9_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r15_9_~feeder_combout\ = \u_kirsch|add4_9_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|add4_9_\,
	combout => \u_kirsch|r15_9_~feeder_combout\);

-- Location: LCCOMB_X37_Y23_N22
\u_kirsch|r14_9_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r14_9_~feeder_combout\ = \u_kirsch|max3_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max3_6_\,
	combout => \u_kirsch|r14_9_~feeder_combout\);

-- Location: LCCOMB_X41_Y23_N8
\u_kirsch|r15_8_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r15_8_~feeder_combout\ = \u_kirsch|add4_8_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|add4_8_\,
	combout => \u_kirsch|r15_8_~feeder_combout\);

-- Location: LCCOMB_X37_Y23_N8
\u_kirsch|r14_8_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r14_8_~feeder_combout\ = \u_kirsch|max3_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max3_5_\,
	combout => \u_kirsch|r14_8_~feeder_combout\);

-- Location: LCCOMB_X37_Y23_N2
\u_kirsch|r14_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r14_7_~feeder_combout\ = \u_kirsch|max3_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max3_4_\,
	combout => \u_kirsch|r14_7_~feeder_combout\);

-- Location: LCCOMB_X41_Y23_N28
\u_kirsch|r15_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r15_6_~feeder_combout\ = \u_kirsch|add4_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|add4_6_\,
	combout => \u_kirsch|r15_6_~feeder_combout\);

-- Location: LCCOMB_X38_Y23_N24
\u_kirsch|r14_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r14_6_~feeder_combout\ = \u_kirsch|max3_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max3_3_\,
	combout => \u_kirsch|r14_6_~feeder_combout\);

-- Location: LCCOMB_X38_Y23_N2
\u_kirsch|r14_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r14_5_~feeder_combout\ = \u_kirsch|max3_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max3_2_\,
	combout => \u_kirsch|r14_5_~feeder_combout\);

-- Location: LCCOMB_X38_Y23_N12
\u_kirsch|r14_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r14_4_~feeder_combout\ = \u_kirsch|max3_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max3_1_\,
	combout => \u_kirsch|r14_4_~feeder_combout\);

-- Location: LCCOMB_X38_Y23_N6
\u_kirsch|r14_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r14_3_~feeder_combout\ = \u_kirsch|max3_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max3_0_\,
	combout => \u_kirsch|r14_3_~feeder_combout\);

-- Location: LCCOMB_X40_Y23_N30
\u_kirsch|r15_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r15_0_~feeder_combout\ = \u_kirsch|add4_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|add4_0_\,
	combout => \u_kirsch|r15_0_~feeder_combout\);

-- Location: LCCOMB_X37_Y23_N4
\u_kirsch|max3_9_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max3_9_~feeder_combout\ = \u_kirsch|r11_9_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r11_9_\,
	combout => \u_kirsch|max3_9_~feeder_combout\);

-- Location: LCCOMB_X37_Y23_N30
\u_kirsch|max3_8_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max3_8_~feeder_combout\ = \u_kirsch|r11_8_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r11_8_\,
	combout => \u_kirsch|max3_8_~feeder_combout\);

-- Location: LCCOMB_X37_Y23_N0
\u_kirsch|max3_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max3_7_~feeder_combout\ = \u_kirsch|r11_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r11_7_\,
	combout => \u_kirsch|max3_7_~feeder_combout\);

-- Location: LCCOMB_X37_Y23_N26
\u_kirsch|max3_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max3_6_~feeder_combout\ = \u_kirsch|r11_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r11_6_\,
	combout => \u_kirsch|max3_6_~feeder_combout\);

-- Location: LCCOMB_X37_Y23_N28
\u_kirsch|max3_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max3_5_~feeder_combout\ = \u_kirsch|r11_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r11_5_\,
	combout => \u_kirsch|max3_5_~feeder_combout\);

-- Location: LCCOMB_X37_Y23_N6
\u_kirsch|max3_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max3_4_~feeder_combout\ = \u_kirsch|r11_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r11_4_\,
	combout => \u_kirsch|max3_4_~feeder_combout\);

-- Location: LCCOMB_X37_Y23_N24
\u_kirsch|max3_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max3_3_~feeder_combout\ = \u_kirsch|r11_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r11_3_\,
	combout => \u_kirsch|max3_3_~feeder_combout\);

-- Location: LCCOMB_X37_Y23_N18
\u_kirsch|max3_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max3_2_~feeder_combout\ = \u_kirsch|r11_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r11_2_\,
	combout => \u_kirsch|max3_2_~feeder_combout\);

-- Location: LCCOMB_X37_Y23_N12
\u_kirsch|max3_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max3_1_~feeder_combout\ = \u_kirsch|r11_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r11_1_\,
	combout => \u_kirsch|max3_1_~feeder_combout\);

-- Location: LCCOMB_X37_Y23_N14
\u_kirsch|max3_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max3_0_~feeder_combout\ = \u_kirsch|r11_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r11_0_\,
	combout => \u_kirsch|max3_0_~feeder_combout\);

-- Location: LCCOMB_X46_Y24_N10
\u_kirsch|dir1_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|dir1_2_~feeder_combout\ = \u_kirsch|sub1_8_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|sub1_8_\,
	combout => \u_kirsch|dir1_2_~feeder_combout\);

-- Location: LCCOMB_X42_Y23_N0
\u_kirsch|add4_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add4_0_~feeder_combout\ = \u_kirsch|r13_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r13_0_\,
	combout => \u_kirsch|add4_0_~feeder_combout\);

-- Location: LCCOMB_X37_Y24_N6
\u_kirsch|r12_8_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r12_8_~feeder_combout\ = \u_kirsch|max2_8_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max2_8_\,
	combout => \u_kirsch|r12_8_~feeder_combout\);

-- Location: LCCOMB_X37_Y24_N8
\u_kirsch|r9_8_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r9_8_~feeder_combout\ = \u_kirsch|max2_8_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max2_8_\,
	combout => \u_kirsch|r9_8_~feeder_combout\);

-- Location: LCCOMB_X37_Y24_N4
\u_kirsch|r12_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r12_6_~feeder_combout\ = \u_kirsch|max2_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max2_6_\,
	combout => \u_kirsch|r12_6_~feeder_combout\);

-- Location: LCCOMB_X36_Y24_N4
\u_kirsch|r12_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r12_4_~feeder_combout\ = \u_kirsch|max2_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max2_4_\,
	combout => \u_kirsch|r12_4_~feeder_combout\);

-- Location: LCCOMB_X36_Y24_N6
\u_kirsch|r12_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r12_3_~feeder_combout\ = \u_kirsch|max2_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max2_3_\,
	combout => \u_kirsch|r12_3_~feeder_combout\);

-- Location: LCCOMB_X37_Y24_N30
\u_kirsch|r9_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r9_3_~feeder_combout\ = \u_kirsch|max2_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max2_3_\,
	combout => \u_kirsch|r9_3_~feeder_combout\);

-- Location: LCCOMB_X36_Y24_N8
\u_kirsch|r12_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r12_2_~feeder_combout\ = \u_kirsch|max2_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max2_2_\,
	combout => \u_kirsch|r12_2_~feeder_combout\);

-- Location: LCCOMB_X37_Y24_N12
\u_kirsch|r9_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r9_2_~feeder_combout\ = \u_kirsch|max2_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max2_2_\,
	combout => \u_kirsch|r9_2_~feeder_combout\);

-- Location: LCCOMB_X37_Y24_N2
\u_kirsch|r9_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r9_0_~feeder_combout\ = \u_kirsch|max2_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|max2_0_\,
	combout => \u_kirsch|r9_0_~feeder_combout\);

-- Location: LCCOMB_X45_Y24_N8
\u_kirsch|max1_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max1_7_~feeder_combout\ = \u_kirsch|r1_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r1_7_\,
	combout => \u_kirsch|max1_7_~feeder_combout\);

-- Location: LCCOMB_X45_Y24_N6
\u_kirsch|max1_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max1_4_~feeder_combout\ = \u_kirsch|r1_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r1_4_\,
	combout => \u_kirsch|max1_4_~feeder_combout\);

-- Location: LCCOMB_X45_Y24_N28
\u_kirsch|max1_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max1_1_~feeder_combout\ = \u_kirsch|r1_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r1_1_\,
	combout => \u_kirsch|max1_1_~feeder_combout\);

-- Location: LCCOMB_X35_Y24_N26
\u_kirsch|max2_8_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max2_8_~feeder_combout\ = \u_kirsch|r9_8_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r9_8_\,
	combout => \u_kirsch|max2_8_~feeder_combout\);

-- Location: LCCOMB_X35_Y24_N20
\u_kirsch|max2_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max2_3_~feeder_combout\ = \u_kirsch|r9_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r9_3_\,
	combout => \u_kirsch|max2_3_~feeder_combout\);

-- Location: LCCOMB_X35_Y24_N14
\u_kirsch|max2_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max2_2_~feeder_combout\ = \u_kirsch|r9_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r9_2_\,
	combout => \u_kirsch|max2_2_~feeder_combout\);

-- Location: LCCOMB_X35_Y24_N2
\u_kirsch|max2_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max2_0_~feeder_combout\ = \u_kirsch|r9_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r9_0_\,
	combout => \u_kirsch|max2_0_~feeder_combout\);

-- Location: LCCOMB_X42_Y24_N24
\u_kirsch|r13_10_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r13_10_~feeder_combout\ = \u_kirsch|add3_10_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|add3_10_\,
	combout => \u_kirsch|r13_10_~feeder_combout\);

-- Location: LCCOMB_X42_Y24_N26
\u_kirsch|r13_9_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r13_9_~feeder_combout\ = \u_kirsch|add3_9_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|add3_9_\,
	combout => \u_kirsch|r13_9_~feeder_combout\);

-- Location: LCCOMB_X37_Y24_N16
\u_kirsch|r13_8_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r13_8_~feeder_combout\ = \u_kirsch|add3_8_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|add3_8_\,
	combout => \u_kirsch|r13_8_~feeder_combout\);

-- Location: LCCOMB_X37_Y24_N18
\u_kirsch|r8_8_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r8_8_~feeder_combout\ = \u_kirsch|add3_8_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|add3_8_\,
	combout => \u_kirsch|r8_8_~feeder_combout\);

-- Location: LCCOMB_X42_Y24_N12
\u_kirsch|r13_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r13_7_~feeder_combout\ = \u_kirsch|add3_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|add3_7_\,
	combout => \u_kirsch|r13_7_~feeder_combout\);

-- Location: LCCOMB_X40_Y24_N10
\u_kirsch|r8_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r8_7_~feeder_combout\ = \u_kirsch|add3_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|add3_7_\,
	combout => \u_kirsch|r8_7_~feeder_combout\);

-- Location: LCCOMB_X41_Y25_N16
\u_kirsch|r13_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r13_6_~feeder_combout\ = \u_kirsch|add3_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|add3_6_\,
	combout => \u_kirsch|r13_6_~feeder_combout\);

-- Location: LCCOMB_X41_Y25_N18
\u_kirsch|r8_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r8_6_~feeder_combout\ = \u_kirsch|add3_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|add3_6_\,
	combout => \u_kirsch|r8_6_~feeder_combout\);

-- Location: LCCOMB_X41_Y24_N22
\u_kirsch|r8_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r8_5_~feeder_combout\ = \u_kirsch|add3_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|add3_5_\,
	combout => \u_kirsch|r8_5_~feeder_combout\);

-- Location: LCCOMB_X42_Y24_N22
\u_kirsch|r13_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r13_5_~feeder_combout\ = \u_kirsch|add3_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|add3_5_\,
	combout => \u_kirsch|r13_5_~feeder_combout\);

-- Location: LCCOMB_X42_Y24_N16
\u_kirsch|r13_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r13_4_~feeder_combout\ = \u_kirsch|add3_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|add3_4_\,
	combout => \u_kirsch|r13_4_~feeder_combout\);

-- Location: LCCOMB_X40_Y24_N0
\u_kirsch|r8_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r8_4_~feeder_combout\ = \u_kirsch|add3_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|add3_4_\,
	combout => \u_kirsch|r8_4_~feeder_combout\);

-- Location: LCCOMB_X41_Y24_N24
\u_kirsch|r8_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r8_3_~feeder_combout\ = \u_kirsch|add3_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|add3_3_\,
	combout => \u_kirsch|r8_3_~feeder_combout\);

-- Location: LCCOMB_X42_Y24_N10
\u_kirsch|r13_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r13_3_~feeder_combout\ = \u_kirsch|add3_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|add3_3_\,
	combout => \u_kirsch|r13_3_~feeder_combout\);

-- Location: LCCOMB_X41_Y24_N26
\u_kirsch|r8_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r8_2_~feeder_combout\ = \u_kirsch|add3_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|add3_2_\,
	combout => \u_kirsch|r8_2_~feeder_combout\);

-- Location: LCCOMB_X41_Y24_N28
\u_kirsch|r8_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r8_1_~feeder_combout\ = \u_kirsch|add3_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|add3_1_\,
	combout => \u_kirsch|r8_1_~feeder_combout\);

-- Location: LCCOMB_X41_Y24_N30
\u_kirsch|r8_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r8_0_~feeder_combout\ = \u_kirsch|add3_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|add3_0_\,
	combout => \u_kirsch|r8_0_~feeder_combout\);

-- Location: LCCOMB_X49_Y23_N24
\u_kirsch|i_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_6_~feeder_combout\ = \u_kirsch|d_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|d_6_\,
	combout => \u_kirsch|i_6_~feeder_combout\);

-- Location: LCCOMB_X49_Y23_N12
\u_kirsch|i_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_4_~feeder_combout\ = \u_kirsch|d_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|d_4_\,
	combout => \u_kirsch|i_4_~feeder_combout\);

-- Location: LCCOMB_X49_Y23_N18
\u_kirsch|a_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|a_1_~feeder_combout\ = \u_kirsch|b_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|b_1_\,
	combout => \u_kirsch|a_1_~feeder_combout\);

-- Location: LCCOMB_X37_Y24_N20
\u_kirsch|r7_8_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_8_~feeder_combout\ = \u_kirsch|add1_8_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|add1_8_\,
	combout => \u_kirsch|r7_8_~feeder_combout\);

-- Location: LCCOMB_X40_Y24_N6
\u_kirsch|r5_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r5_7_~feeder_combout\ = \u_kirsch|max1_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max1_7_\,
	combout => \u_kirsch|r5_7_~feeder_combout\);

-- Location: LCCOMB_X43_Y23_N0
\u_kirsch|r7_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_6_~feeder_combout\ = \u_kirsch|add1_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|add1_6_\,
	combout => \u_kirsch|r7_6_~feeder_combout\);

-- Location: LCCOMB_X40_Y24_N2
\u_kirsch|r5_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r5_4_~feeder_combout\ = \u_kirsch|max1_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|max1_4_\,
	combout => \u_kirsch|r5_4_~feeder_combout\);

-- Location: LCCOMB_X43_Y23_N2
\u_kirsch|r7_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_3_~feeder_combout\ = \u_kirsch|add1_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|add1_3_\,
	combout => \u_kirsch|r7_3_~feeder_combout\);

-- Location: LCCOMB_X43_Y24_N26
\u_kirsch|r7_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_2_~feeder_combout\ = \u_kirsch|add1_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|add1_2_\,
	combout => \u_kirsch|r7_2_~feeder_combout\);

-- Location: LCCOMB_X44_Y24_N0
\u_kirsch|r5_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r5_1_~feeder_combout\ = \u_kirsch|max1_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max1_1_\,
	combout => \u_kirsch|r5_1_~feeder_combout\);

-- Location: LCCOMB_X43_Y24_N6
\u_kirsch|r7_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_0_~feeder_combout\ = \u_kirsch|add1_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|add1_0_\,
	combout => \u_kirsch|r7_0_~feeder_combout\);

-- Location: LCCOMB_X48_Y24_N26
\u_uw_uart|rdata_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|rdata_3_~feeder_combout\ = \u_uw_uart|i_uarts|Dout_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Dout_3_\,
	combout => \u_uw_uart|rdata_3_~feeder_combout\);

-- Location: LCCOMB_X50_Y25_N20
\u_uw_uart|i_uarts|TxDivisor_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|TxDivisor_5_~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_uw_uart|i_uarts|TxDivisor_5_~feeder_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
clk_ibuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X51_Y26_N0
\u_uw_uart|i_uarts|nx34394z2~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z2~_wirecell_combout\ = !\u_uw_uart|i_uarts|nx34394z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|nx34394z2\,
	combout => \u_uw_uart|i_uarts|nx34394z2~_wirecell_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
nrst_ibuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_nrst,
	combout => \nrst~combout\);

-- Location: LCCOMB_X51_Y26_N16
\u_uw_uart|ix15671z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|rawrx\ = (\rxflex~combout\ & \nrst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rxflex~combout\,
	datac => \nrst~combout\,
	combout => \u_uw_uart|rawrx\);

-- Location: LCCOMB_X51_Y26_N2
\u_uw_uart|i_uarts|ix15541z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx15541z2\ = (\u_uw_uart|i_uarts|nx34394z2\ & ((\u_uw_uart|i_uarts|RxFSM_6_\ & ((\u_uw_uart|rawrx\))) # (!\u_uw_uart|i_uarts|RxFSM_6_\ & (\u_uw_uart|i_uarts|TopRx\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx34394z2\,
	datab => \u_uw_uart|i_uarts|TopRx\,
	datac => \u_uw_uart|rawrx\,
	datad => \u_uw_uart|i_uarts|RxFSM_6_\,
	combout => \u_uw_uart|i_uarts|nx15541z2\);

-- Location: LCCOMB_X51_Y26_N30
\u_uw_uart|i_uarts|ix57064z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Rx\ = (!\nrst~combout\) # (!\rxflex~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rxflex~combout\,
	datac => \nrst~combout\,
	combout => \u_uw_uart|i_uarts|NOT_Rx\);

-- Location: LCFF_X51_Y26_N31
\u_uw_uart|i_uarts|reg_Rx_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Rx\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|not_Rx_r\);

-- Location: LCCOMB_X51_Y26_N20
\u_uw_uart|i_uarts|ix15541z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx15541z1\ = (\u_uw_uart|i_uarts|nx15541z2\) # ((\u_uw_uart|i_uarts|nx15541z3\ & (!\u_uw_uart|i_uarts|nx34394z2\ & \u_uw_uart|i_uarts|not_Rx_r\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx15541z3\,
	datab => \u_uw_uart|i_uarts|nx15541z2\,
	datac => \u_uw_uart|i_uarts|nx34394z2\,
	datad => \u_uw_uart|i_uarts|not_Rx_r\,
	combout => \u_uw_uart|i_uarts|nx15541z1\);

-- Location: LCFF_X51_Y26_N1
\u_uw_uart|i_uarts|reg_RxFSM_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx34394z2~_wirecell_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxFSM_1_\);

-- Location: LCCOMB_X51_Y26_N18
\u_uw_uart|i_uarts|RxFSM_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|RxFSM_6_~feeder_combout\ = \u_uw_uart|i_uarts|RxFSM_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|RxFSM_1_\,
	combout => \u_uw_uart|i_uarts|RxFSM_6_~feeder_combout\);

-- Location: LCCOMB_X51_Y26_N24
\u_uw_uart|i_uarts|ix14544z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx14544z1\ = (\u_uw_uart|i_uarts|RxFSM_3_\) # ((\u_uw_uart|i_uarts|RxFSM_1_\ & \u_uw_uart|i_uarts|not_Rx_r\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|RxFSM_1_\,
	datac => \u_uw_uart|i_uarts|RxFSM_3_\,
	datad => \u_uw_uart|i_uarts|not_Rx_r\,
	combout => \u_uw_uart|i_uarts|nx14544z1\);

-- Location: LCFF_X51_Y26_N25
\u_uw_uart|i_uarts|reg_RxFSM_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx14544z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxFSM_2_\);

-- Location: LCCOMB_X51_Y26_N4
\u_uw_uart|i_uarts|ix13547z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx13547z1\ = (!\u_uw_uart|i_uarts|nx13547z2\ & \u_uw_uart|i_uarts|RxFSM_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|nx13547z2\,
	datad => \u_uw_uart|i_uarts|RxFSM_2_\,
	combout => \u_uw_uart|i_uarts|nx13547z1\);

-- Location: LCFF_X51_Y26_N5
\u_uw_uart|i_uarts|reg_RxFSM_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx13547z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxFSM_3_\);

-- Location: LCCOMB_X51_Y26_N26
\u_uw_uart|i_uarts|ix11364z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx11364z1\ = (\u_uw_uart|i_uarts|nx34394z2\ & (\u_uw_uart|i_uarts|RxBitCnt_0_\ $ (((\u_uw_uart|i_uarts|TopRx\ & \u_uw_uart|i_uarts|RxFSM_3_\))))) # (!\u_uw_uart|i_uarts|nx34394z2\ & (!\u_uw_uart|i_uarts|TopRx\ & 
-- (\u_uw_uart|i_uarts|RxBitCnt_0_\ & \u_uw_uart|i_uarts|RxFSM_3_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx34394z2\,
	datab => \u_uw_uart|i_uarts|TopRx\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	datad => \u_uw_uart|i_uarts|RxFSM_3_\,
	combout => \u_uw_uart|i_uarts|nx11364z1\);

-- Location: LCFF_X51_Y26_N27
\u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx11364z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxBitCnt_0_\);

-- Location: LCCOMB_X51_Y25_N0
\u_uw_uart|i_uarts|ix10367z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx10367z1\ = (\u_uw_uart|i_uarts|not_rtlc17_X_0_n360\ & (\u_uw_uart|i_uarts|nx34394z2\ & (\u_uw_uart|i_uarts|RxBitCnt_0_\ $ (\u_uw_uart|i_uarts|RxBitCnt_1_\)))) # (!\u_uw_uart|i_uarts|not_rtlc17_X_0_n360\ & 
-- (((\u_uw_uart|i_uarts|RxBitCnt_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|not_rtlc17_X_0_n360\,
	datab => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_1_\,
	datad => \u_uw_uart|i_uarts|nx34394z2\,
	combout => \u_uw_uart|i_uarts|nx10367z1\);

-- Location: LCFF_X51_Y25_N1
\u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx10367z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxBitCnt_1_\);

-- Location: LCCOMB_X51_Y25_N8
\u_uw_uart|i_uarts|ix9370z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx9370z2\ = (\u_uw_uart|i_uarts|RxBitCnt_0_\ & \u_uw_uart|i_uarts|RxBitCnt_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	datad => \u_uw_uart|i_uarts|RxBitCnt_1_\,
	combout => \u_uw_uart|i_uarts|nx9370z2\);

-- Location: LCCOMB_X51_Y25_N22
\u_uw_uart|i_uarts|ix9370z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx9370z1\ = (\u_uw_uart|i_uarts|not_rtlc17_X_0_n360\ & (\u_uw_uart|i_uarts|nx34394z2\ & (\u_uw_uart|i_uarts|nx9370z2\ $ (\u_uw_uart|i_uarts|RxBitCnt_2_\)))) # (!\u_uw_uart|i_uarts|not_rtlc17_X_0_n360\ & 
-- (((\u_uw_uart|i_uarts|RxBitCnt_2_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|not_rtlc17_X_0_n360\,
	datab => \u_uw_uart|i_uarts|nx9370z2\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_2_\,
	datad => \u_uw_uart|i_uarts|nx34394z2\,
	combout => \u_uw_uart|i_uarts|nx9370z1\);

-- Location: LCFF_X51_Y25_N23
\u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx9370z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxBitCnt_2_\);

-- Location: LCCOMB_X51_Y25_N10
\u_uw_uart|i_uarts|ix13547z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx13547z2\ = (\u_uw_uart|i_uarts|RxBitCnt_3_\ & (!\u_uw_uart|i_uarts|RxBitCnt_2_\ & (!\u_uw_uart|i_uarts|RxBitCnt_0_\ & !\u_uw_uart|i_uarts|RxBitCnt_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxBitCnt_3_\,
	datab => \u_uw_uart|i_uarts|RxBitCnt_2_\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	datad => \u_uw_uart|i_uarts|RxBitCnt_1_\,
	combout => \u_uw_uart|i_uarts|nx13547z2\);

-- Location: LCCOMB_X51_Y26_N6
\u_uw_uart|i_uarts|ix11553z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx11553z1\ = (\u_uw_uart|i_uarts|nx13547z2\ & \u_uw_uart|i_uarts|RxFSM_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|nx13547z2\,
	datad => \u_uw_uart|i_uarts|RxFSM_2_\,
	combout => \u_uw_uart|i_uarts|nx11553z1\);

-- Location: LCFF_X51_Y26_N7
\u_uw_uart|i_uarts|reg_RxFSM_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx11553z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxFSM_5_\);

-- Location: LCFF_X51_Y26_N19
\u_uw_uart|i_uarts|reg_RxFSM_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|RxFSM_6_~feeder_combout\,
	sdata => \u_uw_uart|i_uarts|RxFSM_5_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => \u_uw_uart|i_uarts|not_Rx_r\,
	ena => \u_uw_uart|i_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxFSM_6_\);

-- Location: LCCOMB_X51_Y26_N8
\u_uw_uart|i_uarts|ix16538z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx16538z1\ = (!\u_uw_uart|i_uarts|RxFSM_6_\ & ((\u_uw_uart|i_uarts|not_Rx_r\) # (!\u_uw_uart|i_uarts|RxFSM_5_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxFSM_5_\,
	datab => \u_uw_uart|i_uarts|RxFSM_6_\,
	datad => \u_uw_uart|i_uarts|not_Rx_r\,
	combout => \u_uw_uart|i_uarts|nx16538z1\);

-- Location: LCFF_X51_Y26_N9
\u_uw_uart|i_uarts|reg_RxFSM_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx16538z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx34394z2\);

-- Location: LCCOMB_X50_Y26_N4
\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx51271z1\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21\ $ (VCC)
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20\ = CARRY(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21\,
	datad => VCC,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx51271z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20\);

-- Location: LCCOMB_X50_Y26_N30
\u_uw_uart|i_uarts|ix65151z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx65151z1\ = (\u_uw_uart|i_uarts|nx34394z3\) # (!\u_uw_uart|i_uarts|nx34394z2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|nx34394z2\,
	datad => \u_uw_uart|i_uarts|nx34394z3\,
	combout => \u_uw_uart|i_uarts|nx65151z1\);

-- Location: LCFF_X50_Y26_N5
\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx51271z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21\);

-- Location: LCCOMB_X50_Y26_N8
\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx53265z1\ = (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\ & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18\ $ (GND))) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\ & 
-- (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18\ & VCC))
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16\ = CARRY((\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx53265z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16\);

-- Location: LCFF_X50_Y26_N9
\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx53265z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\);

-- Location: LCCOMB_X50_Y26_N10
\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx54262z1\ = (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\ & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16\)) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\ & 
-- ((\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16\) # (GND)))
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14\ = CARRY((!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16\) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx54262z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14\);

-- Location: LCFF_X50_Y26_N11
\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx54262z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\);

-- Location: LCCOMB_X49_Y26_N24
\u_uw_uart|i_uarts|ix34394z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z10\ = (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\ & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\ & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\,
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\,
	datac => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\,
	datad => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21\,
	combout => \u_uw_uart|i_uarts|nx34394z10\);

-- Location: LCCOMB_X50_Y26_N12
\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx55259z1\ = (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\ & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14\ $ (GND))) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\ & 
-- (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14\ & VCC))
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12\ = CARRY((\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx55259z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12\);

-- Location: LCCOMB_X50_Y26_N14
\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx56256z1\ = (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\ & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12\)) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\ & 
-- ((\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12\) # (GND)))
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10\ = CARRY((!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12\) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx56256z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10\);

-- Location: LCFF_X50_Y26_N15
\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx56256z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\);

-- Location: LCCOMB_X50_Y26_N16
\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx57253z1\ = (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\ & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10\ $ (GND))) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\ & 
-- (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10\ & VCC))
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8\ = CARRY((\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx57253z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8\);

-- Location: LCFF_X50_Y26_N17
\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx57253z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\);

-- Location: LCCOMB_X50_Y26_N18
\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx58250z1\ = (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\ & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8\)) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\ & 
-- ((\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8\) # (GND)))
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6\ = CARRY((!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8\) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx58250z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6\);

-- Location: LCFF_X50_Y26_N19
\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx58250z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\);

-- Location: LCCOMB_X48_Y26_N8
\u_uw_uart|i_uarts|ix34394z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z9\ = (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\ & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\ & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\ & \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\,
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\,
	datac => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\,
	datad => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\,
	combout => \u_uw_uart|i_uarts|nx34394z9\);

-- Location: LCCOMB_X50_Y26_N2
\u_uw_uart|i_uarts|ix34394z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z8\ = (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\ & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\ & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\,
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\,
	datac => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21\,
	datad => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\,
	combout => \u_uw_uart|i_uarts|nx34394z8\);

-- Location: LCCOMB_X50_Y26_N20
\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx59247z1\ = (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\ & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6\ $ (GND))) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\ & 
-- (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6\ & VCC))
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4\ = CARRY((\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx59247z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4\);

-- Location: LCFF_X50_Y26_N21
\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx59247z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\);

-- Location: LCCOMB_X50_Y26_N22
\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx60244z1\ = (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\ & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4\)) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\ & 
-- ((\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4\) # (GND)))
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2\ = CARRY((!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4\) # (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx60244z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2\);

-- Location: LCFF_X50_Y26_N23
\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx60244z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\);

-- Location: LCCOMB_X50_Y26_N24
\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z1\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1\ $ (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1\,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z1\);

-- Location: LCFF_X50_Y26_N25
\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1\);

-- Location: LCCOMB_X50_Y25_N22
\u_uw_uart|i_uarts|ix34394z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z6\ = (!\u_uw_uart|i_uarts|TxDivisor_5_\ & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\ & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDivisor_5_\,
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\,
	datac => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1\,
	datad => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\,
	combout => \u_uw_uart|i_uarts|nx34394z6\);

-- Location: LCFF_X50_Y26_N13
\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx55259z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\);

-- Location: LCCOMB_X50_Y26_N0
\u_uw_uart|i_uarts|ix34394z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z7\ = (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\ & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\ & (!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\,
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\,
	datac => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\,
	datad => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\,
	combout => \u_uw_uart|i_uarts|nx34394z7\);

-- Location: LCCOMB_X50_Y26_N26
\u_uw_uart|i_uarts|ix34394z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z5\ = (\u_uw_uart|i_uarts|nx34394z8\ & (\u_uw_uart|i_uarts|nx34394z6\ & \u_uw_uart|i_uarts|nx34394z7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|nx34394z8\,
	datac => \u_uw_uart|i_uarts|nx34394z6\,
	datad => \u_uw_uart|i_uarts|nx34394z7\,
	combout => \u_uw_uart|i_uarts|nx34394z5\);

-- Location: LCCOMB_X50_Y26_N28
\u_uw_uart|i_uarts|ix34394z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z3\ = (\u_uw_uart|i_uarts|nx34394z5\) # ((\u_uw_uart|i_uarts|nx34394z4\ & (\u_uw_uart|i_uarts|nx34394z10\ & \u_uw_uart|i_uarts|nx34394z9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx34394z4\,
	datab => \u_uw_uart|i_uarts|nx34394z10\,
	datac => \u_uw_uart|i_uarts|nx34394z9\,
	datad => \u_uw_uart|i_uarts|nx34394z5\,
	combout => \u_uw_uart|i_uarts|nx34394z3\);

-- Location: LCCOMB_X51_Y26_N14
\u_uw_uart|i_uarts|ix34394z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z1\ = (\u_uw_uart|i_uarts|nx34394z2\ & \u_uw_uart|i_uarts|nx34394z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|nx34394z2\,
	datad => \u_uw_uart|i_uarts|nx34394z3\,
	combout => \u_uw_uart|i_uarts|nx34394z1\);

-- Location: LCFF_X51_Y26_N15
\u_uw_uart|i_uarts|reg_TopRx\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx34394z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TopRx\);

-- Location: LCCOMB_X51_Y26_N22
\u_uw_uart|i_uarts|ix30017z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx30017z1\ = (\u_uw_uart|i_uarts|RxFSM_5_\ & (\u_uw_uart|i_uarts|TopRx\ & !\u_uw_uart|i_uarts|not_Rx_r\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxFSM_5_\,
	datac => \u_uw_uart|i_uarts|TopRx\,
	datad => \u_uw_uart|i_uarts|not_Rx_r\,
	combout => \u_uw_uart|i_uarts|nx30017z1\);

-- Location: LCFF_X51_Y26_N23
\u_uw_uart|i_uarts|reg_RxRDYi\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx30017z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxRDY\);

-- Location: LCCOMB_X53_Y24_N16
\u_uw_uart|ix58116z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx58116z1\ = (!\u_uw_uart|o_pixavail\ & \u_uw_uart|i_uarts|RxRDY\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|o_pixavail\,
	datad => \u_uw_uart|i_uarts|RxRDY\,
	combout => \u_uw_uart|nx58116z1\);

-- Location: LCFF_X53_Y24_N17
\u_uw_uart|reg_charavail\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx58116z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|o_pixavail\);

-- Location: LCFF_X49_Y23_N1
\u_kirsch|reg_v_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|o_pixavail\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|v_0_\);

-- Location: LCFF_X46_Y24_N23
\u_kirsch|reg_v_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|v_0_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|v_1_\);

-- Location: LCFF_X46_Y24_N13
\u_kirsch|reg_v_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|v_1_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|v_2_\);

-- Location: LCFF_X46_Y24_N17
\u_kirsch|reg_v_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|v_2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|v_3_\);

-- Location: LCFF_X46_Y24_N9
\u_kirsch|reg_v_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|v_3_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|v_4_\);

-- Location: LCFF_X38_Y24_N3
\u_kirsch|reg_v_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|v_4_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|v_5_\);

-- Location: LCFF_X38_Y24_N29
\u_kirsch|reg_v_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|v_5_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|v_6_\);

-- Location: LCCOMB_X48_Y25_N0
\u_uw_uart|i_uarts|not_Rx_r~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|not_Rx_r~_wirecell_combout\ = !\u_uw_uart|i_uarts|not_Rx_r\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|not_Rx_r\,
	combout => \u_uw_uart|i_uarts|not_Rx_r~_wirecell_combout\);

-- Location: LCCOMB_X51_Y26_N12
\u_uw_uart|i_uarts|ix54636z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx54636z1\ = (\u_uw_uart|i_uarts|TopRx\ & \u_uw_uart|i_uarts|RxFSM_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TopRx\,
	datac => \u_uw_uart|i_uarts|RxFSM_3_\,
	combout => \u_uw_uart|i_uarts|nx54636z1\);

-- Location: LCFF_X48_Y25_N1
\u_uw_uart|i_uarts|reg_Rx_Reg_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|not_Rx_r~_wirecell_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_7_\);

-- Location: LCCOMB_X48_Y25_N16
\u_uw_uart|i_uarts|Dout_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Dout_7_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_7_\,
	combout => \u_uw_uart|i_uarts|Dout_7_~feeder_combout\);

-- Location: LCFF_X48_Y25_N17
\u_uw_uart|i_uarts|reg_Dout_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Dout_7_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_7_\);

-- Location: LCFF_X48_Y24_N19
\u_uw_uart|reg_rdata_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Dout_7_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_7_\);

-- Location: LCCOMB_X51_Y24_N4
\u_uw_uart|ix47405z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_7_\ = (\u_uw_uart|o_pixavail\ & \u_uw_uart|rdata_7_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|o_pixavail\,
	datad => \u_uw_uart|rdata_7_\,
	combout => \u_uw_uart|datain_7_\);

-- Location: LCFF_X51_Y24_N5
\u_kirsch|reg_e_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|datain_7_\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|e_7_\);

-- Location: LCCOMB_X49_Y23_N10
\u_kirsch|f_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_7_~feeder_combout\ = \u_kirsch|e_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|e_7_\,
	combout => \u_kirsch|f_7_~feeder_combout\);

-- Location: LCFF_X49_Y23_N11
\u_kirsch|reg_f_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_7_~feeder_combout\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_7_\);

-- Location: LCFF_X47_Y23_N7
\u_kirsch|reg_g_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_7_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|g_7_\);

-- Location: LCCOMB_X48_Y25_N26
\u_uw_uart|i_uarts|Rx_Reg_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Rx_Reg_6_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_7_\,
	combout => \u_uw_uart|i_uarts|Rx_Reg_6_~feeder_combout\);

-- Location: LCFF_X48_Y25_N27
\u_uw_uart|i_uarts|reg_Rx_Reg_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Rx_Reg_6_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_6_\);

-- Location: LCCOMB_X48_Y25_N12
\u_uw_uart|i_uarts|Rx_Reg_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Rx_Reg_5_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_6_\,
	combout => \u_uw_uart|i_uarts|Rx_Reg_5_~feeder_combout\);

-- Location: LCFF_X48_Y25_N13
\u_uw_uart|i_uarts|reg_Rx_Reg_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Rx_Reg_5_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_5_\);

-- Location: LCCOMB_X48_Y25_N6
\u_uw_uart|i_uarts|Rx_Reg_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Rx_Reg_4_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_5_\,
	combout => \u_uw_uart|i_uarts|Rx_Reg_4_~feeder_combout\);

-- Location: LCFF_X48_Y25_N7
\u_uw_uart|i_uarts|reg_Rx_Reg_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Rx_Reg_4_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_4_\);

-- Location: LCCOMB_X48_Y25_N24
\u_uw_uart|i_uarts|Rx_Reg_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Rx_Reg_3_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_4_\,
	combout => \u_uw_uart|i_uarts|Rx_Reg_3_~feeder_combout\);

-- Location: LCFF_X48_Y25_N25
\u_uw_uart|i_uarts|reg_Rx_Reg_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Rx_Reg_3_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_3_\);

-- Location: LCFF_X48_Y25_N3
\u_uw_uart|i_uarts|reg_Rx_Reg_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Rx_Reg_3_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_2_\);

-- Location: LCCOMB_X48_Y25_N28
\u_uw_uart|i_uarts|Rx_Reg_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Rx_Reg_1_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_2_\,
	combout => \u_uw_uart|i_uarts|Rx_Reg_1_~feeder_combout\);

-- Location: LCFF_X48_Y25_N29
\u_uw_uart|i_uarts|reg_Rx_Reg_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Rx_Reg_1_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_1_\);

-- Location: LCCOMB_X48_Y25_N22
\u_uw_uart|i_uarts|Rx_Reg_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Rx_Reg_0_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_1_\,
	combout => \u_uw_uart|i_uarts|Rx_Reg_0_~feeder_combout\);

-- Location: LCFF_X48_Y25_N23
\u_uw_uart|i_uarts|reg_Rx_Reg_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Rx_Reg_0_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_0_\);

-- Location: LCCOMB_X48_Y25_N30
\u_uw_uart|i_uarts|Dout_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Dout_0_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_0_\,
	combout => \u_uw_uart|i_uarts|Dout_0_~feeder_combout\);

-- Location: LCFF_X48_Y25_N31
\u_uw_uart|i_uarts|reg_Dout_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Dout_0_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_0_\);

-- Location: LCFF_X48_Y24_N17
\u_uw_uart|reg_rdata_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Dout_0_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_0_\);

-- Location: LCCOMB_X51_Y24_N2
\u_uw_uart|ix40426z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_0_\ = (\u_uw_uart|o_pixavail\ & \u_uw_uart|rdata_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|o_pixavail\,
	datad => \u_uw_uart|rdata_0_\,
	combout => \u_uw_uart|datain_0_\);

-- Location: LCCOMB_X49_Y24_N8
\u_kirsch|modgen_counter_x|ix58250z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_x|nx51271z1\ = \u_kirsch|modgen_counter_x|nx58250z15\ $ (VCC)
-- \u_kirsch|modgen_counter_x|nx58250z14\ = CARRY(\u_kirsch|modgen_counter_x|nx58250z15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|modgen_counter_x|nx58250z15\,
	datad => VCC,
	combout => \u_kirsch|modgen_counter_x|nx51271z1\,
	cout => \u_kirsch|modgen_counter_x|nx58250z14\);

-- Location: LCCOMB_X49_Y24_N4
\u_kirsch|modgen_counter_x|ix57253z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_x|nx57253z3\ = (\u_uw_uart|o_pixavail\) # (!\nrst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|o_pixavail\,
	datad => \nrst~combout\,
	combout => \u_kirsch|modgen_counter_x|nx57253z3\);

-- Location: LCFF_X49_Y24_N9
\u_kirsch|modgen_counter_x|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|modgen_counter_x|nx51271z1\,
	sclr => \ALT_INV_nrst~combout\,
	ena => \u_kirsch|modgen_counter_x|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|modgen_counter_x|nx58250z15\);

-- Location: LCCOMB_X50_Y24_N8
\u_kirsch|modgen_counter_o_row|ix58250z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_o_row|nx52268z1\ = (\u_kirsch|modgen_counter_o_row|nx58250z13\ & (!\u_kirsch|modgen_counter_o_row|nx58250z14\)) # (!\u_kirsch|modgen_counter_o_row|nx58250z13\ & ((\u_kirsch|modgen_counter_o_row|nx58250z14\) # (GND)))
-- \u_kirsch|modgen_counter_o_row|nx58250z12\ = CARRY((!\u_kirsch|modgen_counter_o_row|nx58250z14\) # (!\u_kirsch|modgen_counter_o_row|nx58250z13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|modgen_counter_o_row|nx58250z13\,
	datad => VCC,
	cin => \u_kirsch|modgen_counter_o_row|nx58250z14\,
	combout => \u_kirsch|modgen_counter_o_row|nx52268z1\,
	cout => \u_kirsch|modgen_counter_o_row|nx58250z12\);

-- Location: LCCOMB_X49_Y24_N10
\u_kirsch|modgen_counter_x|ix58250z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_x|nx52268z1\ = (\u_kirsch|modgen_counter_x|nx58250z13\ & (!\u_kirsch|modgen_counter_x|nx58250z14\)) # (!\u_kirsch|modgen_counter_x|nx58250z13\ & ((\u_kirsch|modgen_counter_x|nx58250z14\) # (GND)))
-- \u_kirsch|modgen_counter_x|nx58250z12\ = CARRY((!\u_kirsch|modgen_counter_x|nx58250z14\) # (!\u_kirsch|modgen_counter_x|nx58250z13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_x|nx58250z13\,
	datad => VCC,
	cin => \u_kirsch|modgen_counter_x|nx58250z14\,
	combout => \u_kirsch|modgen_counter_x|nx52268z1\,
	cout => \u_kirsch|modgen_counter_x|nx58250z12\);

-- Location: LCCOMB_X49_Y24_N12
\u_kirsch|modgen_counter_x|ix58250z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_x|nx53265z1\ = (\u_kirsch|modgen_counter_x|nx58250z11\ & (\u_kirsch|modgen_counter_x|nx58250z12\ $ (GND))) # (!\u_kirsch|modgen_counter_x|nx58250z11\ & (!\u_kirsch|modgen_counter_x|nx58250z12\ & VCC))
-- \u_kirsch|modgen_counter_x|nx58250z10\ = CARRY((\u_kirsch|modgen_counter_x|nx58250z11\ & !\u_kirsch|modgen_counter_x|nx58250z12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_x|nx58250z11\,
	datad => VCC,
	cin => \u_kirsch|modgen_counter_x|nx58250z12\,
	combout => \u_kirsch|modgen_counter_x|nx53265z1\,
	cout => \u_kirsch|modgen_counter_x|nx58250z10\);

-- Location: LCFF_X49_Y24_N13
\u_kirsch|modgen_counter_x|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|modgen_counter_x|nx53265z1\,
	sclr => \ALT_INV_nrst~combout\,
	ena => \u_kirsch|modgen_counter_x|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|modgen_counter_x|nx58250z11\);

-- Location: LCCOMB_X49_Y24_N14
\u_kirsch|modgen_counter_x|ix58250z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_x|nx54262z1\ = (\u_kirsch|modgen_counter_x|nx58250z9\ & (!\u_kirsch|modgen_counter_x|nx58250z10\)) # (!\u_kirsch|modgen_counter_x|nx58250z9\ & ((\u_kirsch|modgen_counter_x|nx58250z10\) # (GND)))
-- \u_kirsch|modgen_counter_x|nx58250z8\ = CARRY((!\u_kirsch|modgen_counter_x|nx58250z10\) # (!\u_kirsch|modgen_counter_x|nx58250z9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|modgen_counter_x|nx58250z9\,
	datad => VCC,
	cin => \u_kirsch|modgen_counter_x|nx58250z10\,
	combout => \u_kirsch|modgen_counter_x|nx54262z1\,
	cout => \u_kirsch|modgen_counter_x|nx58250z8\);

-- Location: LCFF_X49_Y24_N15
\u_kirsch|modgen_counter_x|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|modgen_counter_x|nx54262z1\,
	sclr => \ALT_INV_nrst~combout\,
	ena => \u_kirsch|modgen_counter_x|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|modgen_counter_x|nx58250z9\);

-- Location: LCCOMB_X49_Y24_N16
\u_kirsch|modgen_counter_x|ix58250z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_x|nx55259z1\ = (\u_kirsch|modgen_counter_x|nx58250z7\ & (\u_kirsch|modgen_counter_x|nx58250z8\ $ (GND))) # (!\u_kirsch|modgen_counter_x|nx58250z7\ & (!\u_kirsch|modgen_counter_x|nx58250z8\ & VCC))
-- \u_kirsch|modgen_counter_x|nx58250z6\ = CARRY((\u_kirsch|modgen_counter_x|nx58250z7\ & !\u_kirsch|modgen_counter_x|nx58250z8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_x|nx58250z7\,
	datad => VCC,
	cin => \u_kirsch|modgen_counter_x|nx58250z8\,
	combout => \u_kirsch|modgen_counter_x|nx55259z1\,
	cout => \u_kirsch|modgen_counter_x|nx58250z6\);

-- Location: LCFF_X49_Y24_N17
\u_kirsch|modgen_counter_x|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|modgen_counter_x|nx55259z1\,
	sclr => \ALT_INV_nrst~combout\,
	ena => \u_kirsch|modgen_counter_x|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|modgen_counter_x|nx58250z7\);

-- Location: LCCOMB_X49_Y24_N18
\u_kirsch|modgen_counter_x|ix58250z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_x|nx56256z1\ = (\u_kirsch|modgen_counter_x|nx58250z5\ & (!\u_kirsch|modgen_counter_x|nx58250z6\)) # (!\u_kirsch|modgen_counter_x|nx58250z5\ & ((\u_kirsch|modgen_counter_x|nx58250z6\) # (GND)))
-- \u_kirsch|modgen_counter_x|nx58250z4\ = CARRY((!\u_kirsch|modgen_counter_x|nx58250z6\) # (!\u_kirsch|modgen_counter_x|nx58250z5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|modgen_counter_x|nx58250z5\,
	datad => VCC,
	cin => \u_kirsch|modgen_counter_x|nx58250z6\,
	combout => \u_kirsch|modgen_counter_x|nx56256z1\,
	cout => \u_kirsch|modgen_counter_x|nx58250z4\);

-- Location: LCFF_X49_Y24_N19
\u_kirsch|modgen_counter_x|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|modgen_counter_x|nx56256z1\,
	sclr => \ALT_INV_nrst~combout\,
	ena => \u_kirsch|modgen_counter_x|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|modgen_counter_x|nx58250z5\);

-- Location: LCCOMB_X49_Y24_N20
\u_kirsch|modgen_counter_x|ix58250z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_x|nx57253z1\ = (\u_kirsch|modgen_counter_x|nx58250z3\ & (\u_kirsch|modgen_counter_x|nx58250z4\ $ (GND))) # (!\u_kirsch|modgen_counter_x|nx58250z3\ & (!\u_kirsch|modgen_counter_x|nx58250z4\ & VCC))
-- \u_kirsch|modgen_counter_x|nx58250z2\ = CARRY((\u_kirsch|modgen_counter_x|nx58250z3\ & !\u_kirsch|modgen_counter_x|nx58250z4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|modgen_counter_x|nx58250z3\,
	datad => VCC,
	cin => \u_kirsch|modgen_counter_x|nx58250z4\,
	combout => \u_kirsch|modgen_counter_x|nx57253z1\,
	cout => \u_kirsch|modgen_counter_x|nx58250z2\);

-- Location: LCFF_X49_Y24_N21
\u_kirsch|modgen_counter_x|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|modgen_counter_x|nx57253z1\,
	sclr => \ALT_INV_nrst~combout\,
	ena => \u_kirsch|modgen_counter_x|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|modgen_counter_x|nx58250z3\);

-- Location: LCCOMB_X49_Y24_N22
\u_kirsch|modgen_counter_x|ix58250z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_x|nx58250z1\ = \u_kirsch|modgen_counter_x|nx58250z2\ $ (\u_kirsch|modgen_counter_x|nx1041z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|modgen_counter_x|nx1041z1\,
	cin => \u_kirsch|modgen_counter_x|nx58250z2\,
	combout => \u_kirsch|modgen_counter_x|nx58250z1\);

-- Location: LCFF_X49_Y24_N23
\u_kirsch|modgen_counter_x|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|modgen_counter_x|nx58250z1\,
	sclr => \ALT_INV_nrst~combout\,
	ena => \u_kirsch|modgen_counter_x|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|modgen_counter_x|nx1041z1\);

-- Location: LCCOMB_X50_Y24_N24
\u_kirsch|ix17322z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx17322z8\ = (\u_kirsch|modgen_counter_x|nx58250z3\ & (\u_kirsch|modgen_counter_x|nx58250z7\ & (\u_kirsch|modgen_counter_x|nx1041z1\ & \u_kirsch|modgen_counter_x|nx58250z5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_x|nx58250z3\,
	datab => \u_kirsch|modgen_counter_x|nx58250z7\,
	datac => \u_kirsch|modgen_counter_x|nx1041z1\,
	datad => \u_kirsch|modgen_counter_x|nx58250z5\,
	combout => \u_kirsch|nx17322z8\);

-- Location: LCFF_X49_Y24_N11
\u_kirsch|modgen_counter_x|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|modgen_counter_x|nx52268z1\,
	sclr => \ALT_INV_nrst~combout\,
	ena => \u_kirsch|modgen_counter_x|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|modgen_counter_x|nx58250z13\);

-- Location: LCCOMB_X49_Y24_N24
\u_kirsch|ix17322z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx17322z7\ = (\u_kirsch|modgen_counter_x|nx58250z15\ & \u_kirsch|modgen_counter_x|nx58250z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|modgen_counter_x|nx58250z15\,
	datad => \u_kirsch|modgen_counter_x|nx58250z13\,
	combout => \u_kirsch|nx17322z7\);

-- Location: LCCOMB_X50_Y24_N26
\u_kirsch|ix17322z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx17322z6\ = (\u_kirsch|modgen_counter_x|nx58250z9\ & (\u_kirsch|modgen_counter_x|nx58250z11\ & (\u_kirsch|nx17322z8\ & \u_kirsch|nx17322z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_x|nx58250z9\,
	datab => \u_kirsch|modgen_counter_x|nx58250z11\,
	datac => \u_kirsch|nx17322z8\,
	datad => \u_kirsch|nx17322z7\,
	combout => \u_kirsch|nx17322z6\);

-- Location: LCCOMB_X50_Y24_N2
\u_kirsch|ix17322z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx17322z9\ = ((\u_kirsch|end_of_img\ & ((\u_kirsch|nx17322z3\) # (!\u_kirsch|nx17322z6\)))) # (!\nrst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|end_of_img\,
	datab => \u_kirsch|nx17322z6\,
	datac => \nrst~combout\,
	datad => \u_kirsch|nx17322z3\,
	combout => \u_kirsch|nx17322z9\);

-- Location: LCCOMB_X51_Y24_N24
\u_kirsch|ix17322z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx17322z2\ = (\u_kirsch|nx17322z3\ & \u_kirsch|nx17322z6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|nx17322z3\,
	datad => \u_kirsch|nx17322z6\,
	combout => \u_kirsch|nx17322z2\);

-- Location: LCCOMB_X50_Y24_N4
\u_kirsch|ix17322z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx17322z1\ = ((\u_uw_uart|o_pixavail\ & ((\u_kirsch|end_of_img\) # (!\u_kirsch|nx17322z2\)))) # (!\nrst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|end_of_img\,
	datab => \u_uw_uart|o_pixavail\,
	datac => \nrst~combout\,
	datad => \u_kirsch|nx17322z2\,
	combout => \u_kirsch|nx17322z1\);

-- Location: LCCOMB_X50_Y24_N22
\u_kirsch|modgen_counter_o_row|ix57253z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_o_row|nx57253z3\ = (\u_kirsch|nx17322z1\ & ((\u_kirsch|nx17322z6\) # (\u_kirsch|nx17322z9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|nx17322z6\,
	datac => \u_kirsch|nx17322z1\,
	datad => \u_kirsch|nx17322z9\,
	combout => \u_kirsch|modgen_counter_o_row|nx57253z3\);

-- Location: LCFF_X50_Y24_N9
\u_kirsch|modgen_counter_o_row|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|modgen_counter_o_row|nx52268z1\,
	sclr => \u_kirsch|nx17322z9\,
	ena => \u_kirsch|modgen_counter_o_row|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|modgen_counter_o_row|nx58250z13\);

-- Location: LCCOMB_X50_Y24_N10
\u_kirsch|modgen_counter_o_row|ix58250z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_o_row|nx53265z1\ = (\u_kirsch|modgen_counter_o_row|nx58250z11\ & (\u_kirsch|modgen_counter_o_row|nx58250z12\ $ (GND))) # (!\u_kirsch|modgen_counter_o_row|nx58250z11\ & (!\u_kirsch|modgen_counter_o_row|nx58250z12\ & VCC))
-- \u_kirsch|modgen_counter_o_row|nx58250z10\ = CARRY((\u_kirsch|modgen_counter_o_row|nx58250z11\ & !\u_kirsch|modgen_counter_o_row|nx58250z12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_o_row|nx58250z11\,
	datad => VCC,
	cin => \u_kirsch|modgen_counter_o_row|nx58250z12\,
	combout => \u_kirsch|modgen_counter_o_row|nx53265z1\,
	cout => \u_kirsch|modgen_counter_o_row|nx58250z10\);

-- Location: LCCOMB_X50_Y24_N12
\u_kirsch|modgen_counter_o_row|ix58250z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_o_row|nx54262z1\ = (\u_kirsch|modgen_counter_o_row|nx58250z9\ & (!\u_kirsch|modgen_counter_o_row|nx58250z10\)) # (!\u_kirsch|modgen_counter_o_row|nx58250z9\ & ((\u_kirsch|modgen_counter_o_row|nx58250z10\) # (GND)))
-- \u_kirsch|modgen_counter_o_row|nx58250z8\ = CARRY((!\u_kirsch|modgen_counter_o_row|nx58250z10\) # (!\u_kirsch|modgen_counter_o_row|nx58250z9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_o_row|nx58250z9\,
	datad => VCC,
	cin => \u_kirsch|modgen_counter_o_row|nx58250z10\,
	combout => \u_kirsch|modgen_counter_o_row|nx54262z1\,
	cout => \u_kirsch|modgen_counter_o_row|nx58250z8\);

-- Location: LCFF_X50_Y24_N13
\u_kirsch|modgen_counter_o_row|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|modgen_counter_o_row|nx54262z1\,
	sclr => \u_kirsch|nx17322z9\,
	ena => \u_kirsch|modgen_counter_o_row|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|modgen_counter_o_row|nx58250z9\);

-- Location: LCCOMB_X50_Y24_N30
\u_kirsch|ix17322z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx17322z5\ = (\u_kirsch|modgen_counter_o_row|nx58250z11\ & \u_kirsch|modgen_counter_o_row|nx58250z9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_o_row|nx58250z11\,
	datad => \u_kirsch|modgen_counter_o_row|nx58250z9\,
	combout => \u_kirsch|nx17322z5\);

-- Location: LCCOMB_X50_Y24_N14
\u_kirsch|modgen_counter_o_row|ix58250z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_o_row|nx55259z1\ = (\u_kirsch|modgen_counter_o_row|nx58250z7\ & (\u_kirsch|modgen_counter_o_row|nx58250z8\ $ (GND))) # (!\u_kirsch|modgen_counter_o_row|nx58250z7\ & (!\u_kirsch|modgen_counter_o_row|nx58250z8\ & VCC))
-- \u_kirsch|modgen_counter_o_row|nx58250z6\ = CARRY((\u_kirsch|modgen_counter_o_row|nx58250z7\ & !\u_kirsch|modgen_counter_o_row|nx58250z8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|modgen_counter_o_row|nx58250z7\,
	datad => VCC,
	cin => \u_kirsch|modgen_counter_o_row|nx58250z8\,
	combout => \u_kirsch|modgen_counter_o_row|nx55259z1\,
	cout => \u_kirsch|modgen_counter_o_row|nx58250z6\);

-- Location: LCFF_X50_Y24_N15
\u_kirsch|modgen_counter_o_row|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|modgen_counter_o_row|nx55259z1\,
	sclr => \u_kirsch|nx17322z9\,
	ena => \u_kirsch|modgen_counter_o_row|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|modgen_counter_o_row|nx58250z7\);

-- Location: LCCOMB_X50_Y24_N16
\u_kirsch|modgen_counter_o_row|ix58250z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_o_row|nx56256z1\ = (\u_kirsch|modgen_counter_o_row|nx58250z5\ & (!\u_kirsch|modgen_counter_o_row|nx58250z6\)) # (!\u_kirsch|modgen_counter_o_row|nx58250z5\ & ((\u_kirsch|modgen_counter_o_row|nx58250z6\) # (GND)))
-- \u_kirsch|modgen_counter_o_row|nx58250z4\ = CARRY((!\u_kirsch|modgen_counter_o_row|nx58250z6\) # (!\u_kirsch|modgen_counter_o_row|nx58250z5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_o_row|nx58250z5\,
	datad => VCC,
	cin => \u_kirsch|modgen_counter_o_row|nx58250z6\,
	combout => \u_kirsch|modgen_counter_o_row|nx56256z1\,
	cout => \u_kirsch|modgen_counter_o_row|nx58250z4\);

-- Location: LCCOMB_X50_Y24_N18
\u_kirsch|modgen_counter_o_row|ix58250z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_o_row|nx57253z1\ = (\u_kirsch|modgen_counter_o_row|nx58250z3\ & (\u_kirsch|modgen_counter_o_row|nx58250z4\ $ (GND))) # (!\u_kirsch|modgen_counter_o_row|nx58250z3\ & (!\u_kirsch|modgen_counter_o_row|nx58250z4\ & VCC))
-- \u_kirsch|modgen_counter_o_row|nx58250z2\ = CARRY((\u_kirsch|modgen_counter_o_row|nx58250z3\ & !\u_kirsch|modgen_counter_o_row|nx58250z4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|modgen_counter_o_row|nx58250z3\,
	datad => VCC,
	cin => \u_kirsch|modgen_counter_o_row|nx58250z4\,
	combout => \u_kirsch|modgen_counter_o_row|nx57253z1\,
	cout => \u_kirsch|modgen_counter_o_row|nx58250z2\);

-- Location: LCFF_X50_Y24_N19
\u_kirsch|modgen_counter_o_row|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|modgen_counter_o_row|nx57253z1\,
	sclr => \u_kirsch|nx17322z9\,
	ena => \u_kirsch|modgen_counter_o_row|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|modgen_counter_o_row|nx58250z3\);

-- Location: LCCOMB_X50_Y24_N20
\u_kirsch|modgen_counter_o_row|ix58250z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_o_row|nx58250z1\ = \u_kirsch|modgen_counter_o_row|nx1041z1\ $ (\u_kirsch|modgen_counter_o_row|nx58250z2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_o_row|nx1041z1\,
	cin => \u_kirsch|modgen_counter_o_row|nx58250z2\,
	combout => \u_kirsch|modgen_counter_o_row|nx58250z1\);

-- Location: LCFF_X50_Y24_N21
\u_kirsch|modgen_counter_o_row|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|modgen_counter_o_row|nx58250z1\,
	sclr => \u_kirsch|nx17322z9\,
	ena => \u_kirsch|modgen_counter_o_row|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|modgen_counter_o_row|nx1041z1\);

-- Location: LCCOMB_X50_Y24_N28
\u_kirsch|ix17322z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx17322z4\ = (\u_kirsch|modgen_counter_o_row|nx58250z5\ & (\u_kirsch|modgen_counter_o_row|nx58250z7\ & (\u_kirsch|modgen_counter_o_row|nx1041z1\ & \u_kirsch|modgen_counter_o_row|nx58250z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_o_row|nx58250z5\,
	datab => \u_kirsch|modgen_counter_o_row|nx58250z7\,
	datac => \u_kirsch|modgen_counter_o_row|nx1041z1\,
	datad => \u_kirsch|modgen_counter_o_row|nx58250z3\,
	combout => \u_kirsch|nx17322z4\);

-- Location: LCCOMB_X50_Y24_N0
\u_kirsch|ix17322z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx17322z3\ = (\u_kirsch|modgen_counter_o_row|nx58250z15\ & (\u_kirsch|nx17322z5\ & (\u_kirsch|modgen_counter_o_row|nx58250z13\ & \u_kirsch|nx17322z4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_o_row|nx58250z15\,
	datab => \u_kirsch|nx17322z5\,
	datac => \u_kirsch|modgen_counter_o_row|nx58250z13\,
	datad => \u_kirsch|nx17322z4\,
	combout => \u_kirsch|nx17322z3\);

-- Location: LCCOMB_X51_Y24_N14
\u_kirsch|ix19087z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|addr_x_0_\ = (\u_kirsch|modgen_counter_x|nx58250z15\ & (((!\u_kirsch|nx17322z6\) # (!\u_kirsch|nx17322z3\)) # (!\u_uw_uart|o_pixavail\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datab => \u_kirsch|modgen_counter_x|nx58250z15\,
	datac => \u_kirsch|nx17322z3\,
	datad => \u_kirsch|nx17322z6\,
	combout => \u_kirsch|addr_x_0_\);

-- Location: LCCOMB_X51_Y24_N8
\u_kirsch|ix19087z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|addr_x_1_\ = (\u_kirsch|modgen_counter_x|nx58250z13\ & (((!\u_kirsch|nx17322z3\) # (!\u_kirsch|nx17322z6\)) # (!\u_uw_uart|o_pixavail\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datab => \u_kirsch|nx17322z6\,
	datac => \u_kirsch|nx17322z3\,
	datad => \u_kirsch|modgen_counter_x|nx58250z13\,
	combout => \u_kirsch|addr_x_1_\);

-- Location: LCCOMB_X51_Y24_N26
\u_kirsch|ix19087z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|addr_x_2_\ = (\u_kirsch|modgen_counter_x|nx58250z11\ & (((!\u_kirsch|nx17322z3\) # (!\u_kirsch|nx17322z6\)) # (!\u_uw_uart|o_pixavail\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datab => \u_kirsch|nx17322z6\,
	datac => \u_kirsch|nx17322z3\,
	datad => \u_kirsch|modgen_counter_x|nx58250z11\,
	combout => \u_kirsch|addr_x_2_\);

-- Location: LCCOMB_X53_Y24_N22
\u_kirsch|ix19087z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|addr_x_3_\ = (\u_kirsch|modgen_counter_x|nx58250z9\ & (((!\u_kirsch|nx17322z3\) # (!\u_kirsch|nx17322z6\)) # (!\u_uw_uart|o_pixavail\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_x|nx58250z9\,
	datab => \u_uw_uart|o_pixavail\,
	datac => \u_kirsch|nx17322z6\,
	datad => \u_kirsch|nx17322z3\,
	combout => \u_kirsch|addr_x_3_\);

-- Location: LCCOMB_X53_Y24_N24
\u_kirsch|ix19087z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|addr_x_4_\ = (\u_kirsch|modgen_counter_x|nx58250z7\ & (((!\u_kirsch|nx17322z3\) # (!\u_kirsch|nx17322z6\)) # (!\u_uw_uart|o_pixavail\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_x|nx58250z7\,
	datab => \u_uw_uart|o_pixavail\,
	datac => \u_kirsch|nx17322z6\,
	datad => \u_kirsch|nx17322z3\,
	combout => \u_kirsch|addr_x_4_\);

-- Location: LCCOMB_X53_Y24_N18
\u_kirsch|ix19087z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|addr_x_5_\ = (\u_kirsch|modgen_counter_x|nx58250z5\ & (((!\u_kirsch|nx17322z3\) # (!\u_kirsch|nx17322z6\)) # (!\u_uw_uart|o_pixavail\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_x|nx58250z5\,
	datab => \u_uw_uart|o_pixavail\,
	datac => \u_kirsch|nx17322z6\,
	datad => \u_kirsch|nx17322z3\,
	combout => \u_kirsch|addr_x_5_\);

-- Location: LCCOMB_X53_Y24_N4
\u_kirsch|ix19087z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|addr_x_6_\ = (\u_kirsch|modgen_counter_x|nx58250z3\ & (((!\u_kirsch|nx17322z3\) # (!\u_kirsch|nx17322z6\)) # (!\u_uw_uart|o_pixavail\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_x|nx58250z3\,
	datab => \u_uw_uart|o_pixavail\,
	datac => \u_kirsch|nx17322z6\,
	datad => \u_kirsch|nx17322z3\,
	combout => \u_kirsch|addr_x_6_\);

-- Location: LCCOMB_X53_Y24_N30
\u_kirsch|ix19087z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|addr_x_7_\ = (\u_kirsch|modgen_counter_x|nx1041z1\ & (((!\u_kirsch|nx17322z3\) # (!\u_kirsch|nx17322z6\)) # (!\u_uw_uart|o_pixavail\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_x|nx1041z1\,
	datab => \u_uw_uart|o_pixavail\,
	datac => \u_kirsch|nx17322z6\,
	datad => \u_kirsch|nx17322z3\,
	combout => \u_kirsch|addr_x_7_\);

-- Location: LCCOMB_X48_Y25_N4
\u_uw_uart|i_uarts|Dout_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Dout_1_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_1_\,
	combout => \u_uw_uart|i_uarts|Dout_1_~feeder_combout\);

-- Location: LCFF_X48_Y25_N5
\u_uw_uart|i_uarts|reg_Dout_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Dout_1_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_1_\);

-- Location: LCCOMB_X48_Y24_N6
\u_uw_uart|rdata_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|rdata_1_~feeder_combout\ = \u_uw_uart|i_uarts|Dout_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Dout_1_\,
	combout => \u_uw_uart|rdata_1_~feeder_combout\);

-- Location: LCFF_X48_Y24_N7
\u_uw_uart|reg_rdata_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|rdata_1_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_1_\);

-- Location: LCCOMB_X51_Y24_N16
\u_uw_uart|ix41423z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_1_\ = (\u_uw_uart|o_pixavail\ & \u_uw_uart|rdata_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|o_pixavail\,
	datad => \u_uw_uart|rdata_1_\,
	combout => \u_uw_uart|datain_1_\);

-- Location: LCCOMB_X48_Y25_N10
\u_uw_uart|i_uarts|Dout_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Dout_2_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_2_\,
	combout => \u_uw_uart|i_uarts|Dout_2_~feeder_combout\);

-- Location: LCFF_X48_Y25_N11
\u_uw_uart|i_uarts|reg_Dout_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Dout_2_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_2_\);

-- Location: LCFF_X48_Y24_N5
\u_uw_uart|reg_rdata_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Dout_2_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_2_\);

-- Location: LCCOMB_X51_Y24_N30
\u_uw_uart|ix42420z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_2_\ = (\u_uw_uart|o_pixavail\ & \u_uw_uart|rdata_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|o_pixavail\,
	datad => \u_uw_uart|rdata_2_\,
	combout => \u_uw_uart|datain_2_\);

-- Location: LCCOMB_X51_Y24_N20
\u_uw_uart|ix43417z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_3_\ = (\u_uw_uart|rdata_3_\ & \u_uw_uart|o_pixavail\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|rdata_3_\,
	datac => \u_uw_uart|o_pixavail\,
	combout => \u_uw_uart|datain_3_\);

-- Location: LCCOMB_X48_Y25_N14
\u_uw_uart|i_uarts|Dout_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Dout_4_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_4_\,
	combout => \u_uw_uart|i_uarts|Dout_4_~feeder_combout\);

-- Location: LCFF_X48_Y25_N15
\u_uw_uart|i_uarts|reg_Dout_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Dout_4_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_4_\);

-- Location: LCCOMB_X48_Y24_N8
\u_uw_uart|rdata_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|rdata_4_~feeder_combout\ = \u_uw_uart|i_uarts|Dout_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Dout_4_\,
	combout => \u_uw_uart|rdata_4_~feeder_combout\);

-- Location: LCFF_X48_Y24_N9
\u_uw_uart|reg_rdata_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|rdata_4_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_4_\);

-- Location: LCCOMB_X51_Y24_N18
\u_uw_uart|ix44414z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_4_\ = (\u_uw_uart|rdata_4_\ & \u_uw_uart|o_pixavail\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|rdata_4_\,
	datac => \u_uw_uart|o_pixavail\,
	combout => \u_uw_uart|datain_4_\);

-- Location: LCCOMB_X48_Y25_N20
\u_uw_uart|i_uarts|Dout_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Dout_5_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_5_\,
	combout => \u_uw_uart|i_uarts|Dout_5_~feeder_combout\);

-- Location: LCFF_X48_Y25_N21
\u_uw_uart|i_uarts|reg_Dout_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Dout_5_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_5_\);

-- Location: LCFF_X48_Y24_N23
\u_uw_uart|reg_rdata_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Dout_5_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_5_\);

-- Location: LCCOMB_X51_Y24_N0
\u_uw_uart|ix45411z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_5_\ = (\u_uw_uart|o_pixavail\ & \u_uw_uart|rdata_5_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|o_pixavail\,
	datad => \u_uw_uart|rdata_5_\,
	combout => \u_uw_uart|datain_5_\);

-- Location: LCCOMB_X48_Y25_N18
\u_uw_uart|i_uarts|Dout_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Dout_6_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_6_\,
	combout => \u_uw_uart|i_uarts|Dout_6_~feeder_combout\);

-- Location: LCFF_X48_Y25_N19
\u_uw_uart|i_uarts|reg_Dout_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Dout_6_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_6_\);

-- Location: LCFF_X48_Y24_N13
\u_uw_uart|reg_rdata_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Dout_6_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_6_\);

-- Location: LCCOMB_X51_Y24_N6
\u_uw_uart|ix46408z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_6_\ = (\u_uw_uart|o_pixavail\ & \u_uw_uart|rdata_6_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|o_pixavail\,
	datad => \u_uw_uart|rdata_6_\,
	combout => \u_uw_uart|datain_6_\);

-- Location: M4K_X52_Y24
\u_kirsch|m1_mem|ix64056z29481|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "kirsch:u_kirsch|ram_dq_8_0:m1_mem|altsyncram:ix64056z29481|altsyncram_jpg2:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \u_kirsch|wren_m1\,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \u_kirsch|m1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u_kirsch|m1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u_kirsch|m1_mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X51_Y23_N8
\u_kirsch|ix36625z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx36625z1\ = (\u_kirsch|t_0_\ & (\u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(7))) # (!\u_kirsch|t_0_\ & ((\u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|t_0_\,
	datab => \u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(7),
	datad => \u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(7),
	combout => \u_kirsch|nx36625z1\);

-- Location: M4K_X52_Y23
\u_kirsch|m2_mem|ix64056z29482|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "kirsch:u_kirsch|ram_dq_8_1:m2_mem|altsyncram:ix64056z29482|altsyncram_jpg2:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \u_kirsch|wren_m2\,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \u_kirsch|m2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u_kirsch|m2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u_kirsch|m2_mem|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X53_Y24_N8
\u_kirsch|ix39522z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|t_15n2s1_0_\ = (!\u_kirsch|t_0_\ & !\u_kirsch|t_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|t_0_\,
	datad => \u_kirsch|t_1_\,
	combout => \u_kirsch|t_15n2s1_0_\);

-- Location: LCCOMB_X53_Y24_N20
\u_kirsch|ix38525z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx38525z1\ = ((\u_kirsch|nx17322z6\ & \u_uw_uart|o_pixavail\)) # (!\nrst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx17322z6\,
	datac => \nrst~combout\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_kirsch|nx38525z1\);

-- Location: LCFF_X53_Y24_N9
\u_kirsch|reg_t_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|t_15n2s1_0_\,
	sclr => \ALT_INV_nrst~combout\,
	ena => \u_kirsch|nx38525z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|t_0_\);

-- Location: LCCOMB_X53_Y24_N26
\u_kirsch|ix38525z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|t_15n2s1_1_\ = (\u_kirsch|t_0_\ & !\u_kirsch|t_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|t_0_\,
	datac => \u_kirsch|t_1_\,
	combout => \u_kirsch|t_15n2s1_1_\);

-- Location: LCFF_X53_Y24_N27
\u_kirsch|reg_t_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|t_15n2s1_1_\,
	sclr => \ALT_INV_nrst~combout\,
	ena => \u_kirsch|nx38525z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|t_1_\);

-- Location: LCCOMB_X51_Y23_N6
\u_kirsch|ix20492z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx20492z2\ = (\u_uw_uart|o_pixavail\ & ((!\u_kirsch|t_1_\) # (!\u_kirsch|t_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|t_0_\,
	datac => \u_uw_uart|o_pixavail\,
	datad => \u_kirsch|t_1_\,
	combout => \u_kirsch|nx20492z2\);

-- Location: LCFF_X51_Y23_N9
\u_kirsch|reg_d_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx36625z1\,
	sdata => \u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(7),
	sload => \u_kirsch|t_1_\,
	ena => \u_kirsch|nx20492z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|d_7_\);

-- Location: LCCOMB_X49_Y23_N30
\u_kirsch|i_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_7_~feeder_combout\ = \u_kirsch|d_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|d_7_\,
	combout => \u_kirsch|i_7_~feeder_combout\);

-- Location: LCFF_X49_Y23_N31
\u_kirsch|reg_i_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|i_7_~feeder_combout\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|i_7_\);

-- Location: LCCOMB_X49_Y23_N4
\u_kirsch|h_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|h_7_~feeder_combout\ = \u_kirsch|i_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|i_7_\,
	combout => \u_kirsch|h_7_~feeder_combout\);

-- Location: LCFF_X49_Y23_N5
\u_kirsch|reg_h_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|h_7_~feeder_combout\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|h_7_\);

-- Location: LCCOMB_X47_Y23_N6
\u_kirsch|ix49737z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx49737z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & (\u_kirsch|g_7_\)) # (!\u_kirsch|v_2_\ & ((\u_kirsch|h_7_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_2_\,
	datab => \u_kirsch|v_1_\,
	datac => \u_kirsch|g_7_\,
	datad => \u_kirsch|h_7_\,
	combout => \u_kirsch|nx49737z2\);

-- Location: LCCOMB_X43_Y23_N4
\u_kirsch|ix49737z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx49737z1\ = (\u_kirsch|nx49737z2\) # ((\u_kirsch|v_1_\ & \u_kirsch|d_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|nx49737z2\,
	datad => \u_kirsch|d_7_\,
	combout => \u_kirsch|nx49737z1\);

-- Location: LCCOMB_X51_Y23_N2
\u_kirsch|ix20492z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx20492z1\ = (\u_kirsch|t_0_\ & ((\u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(7)))) # (!\u_kirsch|t_0_\ & (\u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(7),
	datab => \u_kirsch|t_0_\,
	datad => \u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(7),
	combout => \u_kirsch|nx20492z1\);

-- Location: LCFF_X51_Y23_N3
\u_kirsch|reg_c_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx20492z1\,
	sdata => \u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(7),
	sload => \u_kirsch|t_1_\,
	ena => \u_kirsch|nx20492z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|c_7_\);

-- Location: LCFF_X47_Y23_N25
\u_kirsch|reg_b_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|c_7_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|b_7_\);

-- Location: LCCOMB_X46_Y24_N16
\u_kirsch|ix41056z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx41056z3\ = (\u_kirsch|v_2_\) # ((\u_kirsch|v_1_\) # ((\u_kirsch|v_3_\) # (\u_kirsch|v_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_2_\,
	datab => \u_kirsch|v_1_\,
	datac => \u_kirsch|v_3_\,
	datad => \u_kirsch|v_0_\,
	combout => \u_kirsch|nx41056z3\);

-- Location: LCFF_X43_Y23_N5
\u_kirsch|reg_r4_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx49737z1\,
	sdata => \u_kirsch|b_7_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_7_\);

-- Location: LCCOMB_X51_Y23_N30
\u_kirsch|ix21489z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx21489z1\ = (\u_kirsch|t_0_\ & (\u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(6))) # (!\u_kirsch|t_0_\ & ((\u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(6),
	datab => \u_kirsch|t_0_\,
	datad => \u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(6),
	combout => \u_kirsch|nx21489z1\);

-- Location: LCFF_X51_Y23_N31
\u_kirsch|reg_c_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx21489z1\,
	sdata => \u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(6),
	sload => \u_kirsch|t_1_\,
	ena => \u_kirsch|nx20492z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|c_6_\);

-- Location: LCFF_X47_Y23_N11
\u_kirsch|reg_b_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|c_6_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|b_6_\);

-- Location: LCFF_X47_Y23_N23
\u_kirsch|reg_a_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|b_6_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|a_6_\);

-- Location: LCCOMB_X47_Y23_N22
\u_kirsch|ix42315z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx42315z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & (\u_kirsch|f_6_\)) # (!\u_kirsch|v_2_\ & ((\u_kirsch|a_6_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_6_\,
	datab => \u_kirsch|v_1_\,
	datac => \u_kirsch|a_6_\,
	datad => \u_kirsch|v_2_\,
	combout => \u_kirsch|nx42315z2\);

-- Location: LCFF_X51_Y24_N7
\u_kirsch|reg_e_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|datain_6_\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|e_6_\);

-- Location: LCCOMB_X46_Y23_N20
\u_kirsch|ix42315z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx42315z1\ = (\u_kirsch|nx42315z2\) # ((\u_kirsch|v_1_\ & \u_kirsch|e_6_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|nx42315z2\,
	datad => \u_kirsch|e_6_\,
	combout => \u_kirsch|nx42315z1\);

-- Location: LCFF_X46_Y23_N21
\u_kirsch|reg_r3_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx42315z1\,
	sdata => \u_kirsch|c_6_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_6_\);

-- Location: LCFF_X51_Y24_N1
\u_kirsch|reg_e_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|datain_5_\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|e_5_\);

-- Location: LCCOMB_X49_Y23_N8
\u_kirsch|f_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_5_~feeder_combout\ = \u_kirsch|e_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|e_5_\,
	combout => \u_kirsch|f_5_~feeder_combout\);

-- Location: LCFF_X49_Y23_N9
\u_kirsch|reg_f_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_5_~feeder_combout\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_5_\);

-- Location: LCFF_X47_Y23_N15
\u_kirsch|reg_g_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_5_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|g_5_\);

-- Location: LCCOMB_X51_Y23_N16
\u_kirsch|ix34631z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx34631z1\ = (\u_kirsch|t_0_\ & (\u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(5))) # (!\u_kirsch|t_0_\ & ((\u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|t_0_\,
	datab => \u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(5),
	datad => \u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(5),
	combout => \u_kirsch|nx34631z1\);

-- Location: LCFF_X51_Y23_N17
\u_kirsch|reg_d_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx34631z1\,
	sdata => \u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(5),
	sload => \u_kirsch|t_1_\,
	ena => \u_kirsch|nx20492z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|d_5_\);

-- Location: LCCOMB_X49_Y23_N2
\u_kirsch|i_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_5_~feeder_combout\ = \u_kirsch|d_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|d_5_\,
	combout => \u_kirsch|i_5_~feeder_combout\);

-- Location: LCFF_X49_Y23_N3
\u_kirsch|reg_i_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|i_5_~feeder_combout\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|i_5_\);

-- Location: LCFF_X47_Y23_N21
\u_kirsch|reg_h_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|i_5_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|h_5_\);

-- Location: LCCOMB_X47_Y23_N20
\u_kirsch|ix51731z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx51731z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & (\u_kirsch|g_5_\)) # (!\u_kirsch|v_2_\ & ((\u_kirsch|h_5_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_2_\,
	datab => \u_kirsch|g_5_\,
	datac => \u_kirsch|h_5_\,
	datad => \u_kirsch|v_1_\,
	combout => \u_kirsch|nx51731z2\);

-- Location: LCCOMB_X48_Y23_N12
\u_kirsch|ix51731z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx51731z1\ = (\u_kirsch|nx51731z2\) # ((\u_kirsch|d_5_\ & \u_kirsch|v_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|d_5_\,
	datab => \u_kirsch|v_1_\,
	datad => \u_kirsch|nx51731z2\,
	combout => \u_kirsch|nx51731z1\);

-- Location: LCCOMB_X51_Y23_N26
\u_kirsch|ix22486z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx22486z1\ = (\u_kirsch|t_0_\ & ((\u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(5)))) # (!\u_kirsch|t_0_\ & (\u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|t_0_\,
	datab => \u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(5),
	datad => \u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(5),
	combout => \u_kirsch|nx22486z1\);

-- Location: LCFF_X51_Y23_N27
\u_kirsch|reg_c_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx22486z1\,
	sdata => \u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(5),
	sload => \u_kirsch|t_1_\,
	ena => \u_kirsch|nx20492z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|c_5_\);

-- Location: LCFF_X47_Y23_N31
\u_kirsch|reg_b_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|c_5_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|b_5_\);

-- Location: LCFF_X48_Y23_N13
\u_kirsch|reg_r4_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx51731z1\,
	sdata => \u_kirsch|b_5_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_5_\);

-- Location: LCCOMB_X51_Y23_N14
\u_kirsch|ix23483z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx23483z1\ = (\u_kirsch|t_0_\ & ((\u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(4)))) # (!\u_kirsch|t_0_\ & (\u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|t_0_\,
	datab => \u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(4),
	datad => \u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(4),
	combout => \u_kirsch|nx23483z1\);

-- Location: LCFF_X51_Y23_N15
\u_kirsch|reg_c_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx23483z1\,
	sdata => \u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(4),
	sload => \u_kirsch|t_1_\,
	ena => \u_kirsch|nx20492z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|c_4_\);

-- Location: LCFF_X47_Y23_N9
\u_kirsch|reg_b_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|c_4_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|b_4_\);

-- Location: LCCOMB_X49_Y23_N26
\u_kirsch|a_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|a_4_~feeder_combout\ = \u_kirsch|b_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|b_4_\,
	combout => \u_kirsch|a_4_~feeder_combout\);

-- Location: LCFF_X49_Y23_N27
\u_kirsch|reg_a_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|a_4_~feeder_combout\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|a_4_\);

-- Location: LCFF_X51_Y24_N19
\u_kirsch|reg_e_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|datain_4_\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|e_4_\);

-- Location: LCFF_X45_Y23_N25
\u_kirsch|reg_f_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|e_4_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_4_\);

-- Location: LCCOMB_X45_Y23_N24
\u_kirsch|ix44309z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx44309z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & ((\u_kirsch|f_4_\))) # (!\u_kirsch|v_2_\ & (\u_kirsch|a_4_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|a_4_\,
	datac => \u_kirsch|f_4_\,
	datad => \u_kirsch|v_2_\,
	combout => \u_kirsch|nx44309z2\);

-- Location: LCCOMB_X44_Y23_N18
\u_kirsch|ix44309z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx44309z1\ = (\u_kirsch|nx44309z2\) # ((\u_kirsch|e_4_\ & \u_kirsch|v_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|e_4_\,
	datab => \u_kirsch|v_1_\,
	datad => \u_kirsch|nx44309z2\,
	combout => \u_kirsch|nx44309z1\);

-- Location: LCFF_X44_Y23_N19
\u_kirsch|reg_r3_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx44309z1\,
	sdata => \u_kirsch|c_4_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_4_\);

-- Location: LCCOMB_X51_Y23_N0
\u_kirsch|ix32637z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx32637z3\ = (\u_kirsch|t_0_\ & ((\u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(3)))) # (!\u_kirsch|t_0_\ & (\u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|t_0_\,
	datab => \u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(3),
	datad => \u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(3),
	combout => \u_kirsch|nx32637z3\);

-- Location: LCFF_X51_Y23_N1
\u_kirsch|reg_d_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx32637z3\,
	sdata => \u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(3),
	sload => \u_kirsch|t_1_\,
	ena => \u_kirsch|nx20492z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|d_3_\);

-- Location: LCCOMB_X48_Y23_N24
\u_kirsch|ix53725z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx53725z1\ = (\u_kirsch|nx53725z2\) # ((\u_kirsch|d_3_\ & \u_kirsch|v_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx53725z2\,
	datab => \u_kirsch|d_3_\,
	datad => \u_kirsch|v_1_\,
	combout => \u_kirsch|nx53725z1\);

-- Location: LCCOMB_X51_Y23_N18
\u_kirsch|ix24480z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx24480z1\ = (\u_kirsch|t_0_\ & (\u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(3))) # (!\u_kirsch|t_0_\ & ((\u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|t_0_\,
	datab => \u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(3),
	datad => \u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(3),
	combout => \u_kirsch|nx24480z1\);

-- Location: LCFF_X51_Y23_N19
\u_kirsch|reg_c_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx24480z1\,
	sdata => \u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(3),
	sload => \u_kirsch|t_1_\,
	ena => \u_kirsch|nx20492z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|c_3_\);

-- Location: LCFF_X47_Y23_N17
\u_kirsch|reg_b_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|c_3_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|b_3_\);

-- Location: LCFF_X48_Y23_N25
\u_kirsch|reg_r4_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx53725z1\,
	sdata => \u_kirsch|b_3_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_3_\);

-- Location: LCCOMB_X51_Y23_N4
\u_kirsch|ix31640z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx31640z3\ = (\u_kirsch|t_0_\ & (\u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(2))) # (!\u_kirsch|t_0_\ & ((\u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|t_0_\,
	datab => \u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(2),
	datad => \u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(2),
	combout => \u_kirsch|nx31640z3\);

-- Location: LCFF_X51_Y23_N5
\u_kirsch|reg_d_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx31640z3\,
	sdata => \u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(2),
	sload => \u_kirsch|t_1_\,
	ena => \u_kirsch|nx20492z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|d_2_\);

-- Location: LCCOMB_X44_Y23_N12
\u_kirsch|ix54722z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx54722z1\ = (\u_kirsch|nx54722z2\) # ((\u_kirsch|d_2_\ & \u_kirsch|v_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx54722z2\,
	datab => \u_kirsch|d_2_\,
	datad => \u_kirsch|v_1_\,
	combout => \u_kirsch|nx54722z1\);

-- Location: LCCOMB_X51_Y23_N22
\u_kirsch|ix25477z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx25477z1\ = (\u_kirsch|t_0_\ & ((\u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(2)))) # (!\u_kirsch|t_0_\ & (\u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(2),
	datab => \u_kirsch|t_0_\,
	datad => \u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(2),
	combout => \u_kirsch|nx25477z1\);

-- Location: LCFF_X51_Y23_N23
\u_kirsch|reg_c_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx25477z1\,
	sdata => \u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(2),
	sload => \u_kirsch|t_1_\,
	ena => \u_kirsch|nx20492z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|c_2_\);

-- Location: LCFF_X45_Y23_N21
\u_kirsch|reg_b_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|c_2_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|b_2_\);

-- Location: LCFF_X44_Y23_N13
\u_kirsch|reg_r4_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx54722z1\,
	sdata => \u_kirsch|b_2_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_2_\);

-- Location: LCFF_X51_Y24_N17
\u_kirsch|reg_e_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|datain_1_\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|e_1_\);

-- Location: LCCOMB_X43_Y23_N8
\u_kirsch|ix47300z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx47300z1\ = (\u_kirsch|nx47300z2\) # ((\u_kirsch|v_1_\ & \u_kirsch|e_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx47300z2\,
	datab => \u_kirsch|v_1_\,
	datad => \u_kirsch|e_1_\,
	combout => \u_kirsch|nx47300z1\);

-- Location: LCCOMB_X51_Y23_N10
\u_kirsch|ix26474z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx26474z1\ = (\u_kirsch|t_0_\ & ((\u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(1)))) # (!\u_kirsch|t_0_\ & (\u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(1),
	datab => \u_kirsch|t_0_\,
	datad => \u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(1),
	combout => \u_kirsch|nx26474z1\);

-- Location: LCFF_X51_Y23_N11
\u_kirsch|reg_c_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx26474z1\,
	sdata => \u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(1),
	sload => \u_kirsch|t_1_\,
	ena => \u_kirsch|nx20492z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|c_1_\);

-- Location: LCFF_X43_Y23_N9
\u_kirsch|reg_r3_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx47300z1\,
	sdata => \u_kirsch|c_1_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_1_\);

-- Location: LCCOMB_X54_Y25_N16
\u_kirsch|ix29646z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx29646z3\ = (\u_kirsch|t_0_\ & ((\u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(0)))) # (!\u_kirsch|t_0_\ & (\u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|t_0_\,
	datab => \u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(0),
	datad => \u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(0),
	combout => \u_kirsch|nx29646z3\);

-- Location: LCFF_X54_Y25_N17
\u_kirsch|reg_d_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx29646z3\,
	sdata => \u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(0),
	sload => \u_kirsch|t_1_\,
	ena => \u_kirsch|nx20492z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|d_0_\);

-- Location: LCCOMB_X54_Y25_N18
\u_kirsch|i_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_0_~feeder_combout\ = \u_kirsch|d_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|d_0_\,
	combout => \u_kirsch|i_0_~feeder_combout\);

-- Location: LCFF_X54_Y25_N19
\u_kirsch|reg_i_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|i_0_~feeder_combout\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|i_0_\);

-- Location: LCFF_X45_Y23_N7
\u_kirsch|reg_h_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|i_0_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|h_0_\);

-- Location: LCFF_X51_Y24_N3
\u_kirsch|reg_e_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|datain_0_\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|e_0_\);

-- Location: LCCOMB_X49_Y23_N20
\u_kirsch|f_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_0_~feeder_combout\ = \u_kirsch|e_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|e_0_\,
	combout => \u_kirsch|f_0_~feeder_combout\);

-- Location: LCFF_X49_Y23_N21
\u_kirsch|reg_f_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_0_~feeder_combout\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_0_\);

-- Location: LCFF_X45_Y23_N29
\u_kirsch|reg_g_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_0_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|g_0_\);

-- Location: LCCOMB_X45_Y23_N6
\u_kirsch|ix56716z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx56716z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & ((\u_kirsch|g_0_\))) # (!\u_kirsch|v_2_\ & (\u_kirsch|h_0_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|h_0_\,
	datad => \u_kirsch|g_0_\,
	combout => \u_kirsch|nx56716z2\);

-- Location: LCCOMB_X43_Y23_N30
\u_kirsch|ix56716z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx56716z1\ = (\u_kirsch|nx56716z2\) # ((\u_kirsch|d_0_\ & \u_kirsch|v_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|d_0_\,
	datab => \u_kirsch|v_1_\,
	datad => \u_kirsch|nx56716z2\,
	combout => \u_kirsch|nx56716z1\);

-- Location: LCCOMB_X51_Y23_N28
\u_kirsch|ix27471z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx27471z1\ = (\u_kirsch|t_0_\ & (\u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(0))) # (!\u_kirsch|t_0_\ & ((\u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|t_0_\,
	datab => \u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(0),
	datad => \u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(0),
	combout => \u_kirsch|nx27471z1\);

-- Location: LCFF_X51_Y23_N29
\u_kirsch|reg_c_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx27471z1\,
	sdata => \u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(0),
	sload => \u_kirsch|t_1_\,
	ena => \u_kirsch|nx20492z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|c_0_\);

-- Location: LCFF_X45_Y23_N11
\u_kirsch|reg_b_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|c_0_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|b_0_\);

-- Location: LCFF_X43_Y23_N31
\u_kirsch|reg_r4_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx56716z1\,
	sdata => \u_kirsch|b_0_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_0_\);

-- Location: LCCOMB_X43_Y23_N14
\u_kirsch|add1_add8_22i31|ix44952z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add1_add8_22i31|nx38970z1\ = (\u_kirsch|r4_1_\ & ((\u_kirsch|r3_1_\ & (\u_kirsch|add1_add8_22i31|nx44952z22\ & VCC)) # (!\u_kirsch|r3_1_\ & (!\u_kirsch|add1_add8_22i31|nx44952z22\)))) # (!\u_kirsch|r4_1_\ & ((\u_kirsch|r3_1_\ & 
-- (!\u_kirsch|add1_add8_22i31|nx44952z22\)) # (!\u_kirsch|r3_1_\ & ((\u_kirsch|add1_add8_22i31|nx44952z22\) # (GND)))))
-- \u_kirsch|add1_add8_22i31|nx44952z19\ = CARRY((\u_kirsch|r4_1_\ & (!\u_kirsch|r3_1_\ & !\u_kirsch|add1_add8_22i31|nx44952z22\)) # (!\u_kirsch|r4_1_\ & ((!\u_kirsch|add1_add8_22i31|nx44952z22\) # (!\u_kirsch|r3_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r4_1_\,
	datab => \u_kirsch|r3_1_\,
	datad => VCC,
	cin => \u_kirsch|add1_add8_22i31|nx44952z22\,
	combout => \u_kirsch|add1_add8_22i31|nx38970z1\,
	cout => \u_kirsch|add1_add8_22i31|nx44952z19\);

-- Location: LCCOMB_X43_Y23_N20
\u_kirsch|add1_add8_22i31|ix44952z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add1_add8_22i31|nx41961z1\ = ((\u_kirsch|r4_4_\ $ (\u_kirsch|r3_4_\ $ (!\u_kirsch|add1_add8_22i31|nx44952z13\)))) # (GND)
-- \u_kirsch|add1_add8_22i31|nx44952z10\ = CARRY((\u_kirsch|r4_4_\ & ((\u_kirsch|r3_4_\) # (!\u_kirsch|add1_add8_22i31|nx44952z13\))) # (!\u_kirsch|r4_4_\ & (\u_kirsch|r3_4_\ & !\u_kirsch|add1_add8_22i31|nx44952z13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r4_4_\,
	datab => \u_kirsch|r3_4_\,
	datad => VCC,
	cin => \u_kirsch|add1_add8_22i31|nx44952z13\,
	combout => \u_kirsch|add1_add8_22i31|nx41961z1\,
	cout => \u_kirsch|add1_add8_22i31|nx44952z10\);

-- Location: LCFF_X43_Y23_N27
\u_kirsch|reg_add1_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add1_add8_22i31|nx44952z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add1_7_\);

-- Location: LCCOMB_X40_Y24_N4
\u_kirsch|r7_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_7_~feeder_combout\ = \u_kirsch|add1_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|add1_7_\,
	combout => \u_kirsch|r7_7_~feeder_combout\);

-- Location: LCFF_X40_Y24_N5
\u_kirsch|reg_r7_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r7_7_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r7_7_\);

-- Location: LCCOMB_X45_Y24_N2
\u_kirsch|max1_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max1_6_~feeder_combout\ = \u_kirsch|r1_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r1_6_\,
	combout => \u_kirsch|max1_6_~feeder_combout\);

-- Location: LCCOMB_X49_Y23_N22
\u_kirsch|f_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_6_~feeder_combout\ = \u_kirsch|e_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|e_6_\,
	combout => \u_kirsch|f_6_~feeder_combout\);

-- Location: LCFF_X49_Y23_N23
\u_kirsch|reg_f_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_6_~feeder_combout\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_6_\);

-- Location: LCCOMB_X46_Y23_N4
\u_kirsch|ix31640z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx31640z1\ = (\u_kirsch|nx31640z2\) # ((\u_kirsch|v_1_\ & \u_kirsch|f_6_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx31640z2\,
	datab => \u_kirsch|v_1_\,
	datad => \u_kirsch|f_6_\,
	combout => \u_kirsch|nx31640z1\);

-- Location: LCCOMB_X51_Y23_N20
\u_kirsch|ix35628z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx35628z1\ = (\u_kirsch|t_0_\ & ((\u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(6)))) # (!\u_kirsch|t_0_\ & (\u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(6),
	datab => \u_kirsch|t_0_\,
	datad => \u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(6),
	combout => \u_kirsch|nx35628z1\);

-- Location: LCFF_X51_Y23_N21
\u_kirsch|reg_d_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx35628z1\,
	sdata => \u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(6),
	sload => \u_kirsch|t_1_\,
	ena => \u_kirsch|nx20492z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|d_6_\);

-- Location: LCFF_X46_Y23_N5
\u_kirsch|reg_r2_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx31640z1\,
	sdata => \u_kirsch|d_6_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_6_\);

-- Location: LCCOMB_X47_Y23_N24
\u_kirsch|ix32637z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx32637z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & ((\u_kirsch|h_7_\))) # (!\u_kirsch|v_2_\ & (\u_kirsch|b_7_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_2_\,
	datab => \u_kirsch|v_1_\,
	datac => \u_kirsch|b_7_\,
	datad => \u_kirsch|h_7_\,
	combout => \u_kirsch|nx32637z2\);

-- Location: LCCOMB_X46_Y23_N0
\u_kirsch|ix32637z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx32637z1\ = (\u_kirsch|nx32637z2\) # ((\u_kirsch|f_7_\ & \u_kirsch|v_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_7_\,
	datab => \u_kirsch|v_1_\,
	datad => \u_kirsch|nx32637z2\,
	combout => \u_kirsch|nx32637z1\);

-- Location: LCFF_X46_Y23_N1
\u_kirsch|reg_r2_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx32637z1\,
	sdata => \u_kirsch|d_7_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_7_\);

-- Location: LCCOMB_X47_Y23_N14
\u_kirsch|ix39062z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx39062z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & ((\u_kirsch|e_5_\))) # (!\u_kirsch|v_2_\ & (\u_kirsch|g_5_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_2_\,
	datab => \u_kirsch|v_1_\,
	datac => \u_kirsch|g_5_\,
	datad => \u_kirsch|e_5_\,
	combout => \u_kirsch|nx39062z2\);

-- Location: LCCOMB_X48_Y23_N2
\u_kirsch|ix39062z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx39062z1\ = (\u_kirsch|nx39062z2\) # ((\u_kirsch|c_5_\ & \u_kirsch|v_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|c_5_\,
	datab => \u_kirsch|nx39062z2\,
	datad => \u_kirsch|v_1_\,
	combout => \u_kirsch|nx39062z1\);

-- Location: LCFF_X47_Y23_N5
\u_kirsch|reg_a_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|b_5_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|a_5_\);

-- Location: LCFF_X48_Y23_N3
\u_kirsch|reg_r1_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx39062z1\,
	sdata => \u_kirsch|a_5_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r1_5_\);

-- Location: LCFF_X45_Y23_N13
\u_kirsch|reg_g_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_4_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|g_4_\);

-- Location: LCCOMB_X45_Y23_N12
\u_kirsch|ix38065z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx38065z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & ((\u_kirsch|e_4_\))) # (!\u_kirsch|v_2_\ & (\u_kirsch|g_4_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|g_4_\,
	datad => \u_kirsch|e_4_\,
	combout => \u_kirsch|nx38065z2\);

-- Location: LCCOMB_X48_Y23_N22
\u_kirsch|ix38065z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx38065z1\ = (\u_kirsch|nx38065z2\) # ((\u_kirsch|v_1_\ & \u_kirsch|c_4_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|c_4_\,
	datad => \u_kirsch|nx38065z2\,
	combout => \u_kirsch|nx38065z1\);

-- Location: LCFF_X48_Y23_N23
\u_kirsch|reg_r1_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx38065z1\,
	sdata => \u_kirsch|a_4_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r1_4_\);

-- Location: LCFF_X51_Y24_N21
\u_kirsch|reg_e_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|datain_3_\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|e_3_\);

-- Location: LCCOMB_X49_Y23_N28
\u_kirsch|f_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|f_3_~feeder_combout\ = \u_kirsch|e_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|e_3_\,
	combout => \u_kirsch|f_3_~feeder_combout\);

-- Location: LCFF_X49_Y23_N29
\u_kirsch|reg_f_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|f_3_~feeder_combout\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_3_\);

-- Location: LCFF_X47_Y23_N1
\u_kirsch|reg_g_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_3_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|g_3_\);

-- Location: LCCOMB_X46_Y24_N22
\u_kirsch|ix37068z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx37068z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & ((\u_kirsch|e_3_\))) # (!\u_kirsch|v_2_\ & (\u_kirsch|g_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_2_\,
	datab => \u_kirsch|g_3_\,
	datac => \u_kirsch|v_1_\,
	datad => \u_kirsch|e_3_\,
	combout => \u_kirsch|nx37068z2\);

-- Location: LCCOMB_X48_Y23_N10
\u_kirsch|ix37068z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx37068z1\ = (\u_kirsch|nx37068z2\) # ((\u_kirsch|c_3_\ & \u_kirsch|v_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|c_3_\,
	datab => \u_kirsch|nx37068z2\,
	datad => \u_kirsch|v_1_\,
	combout => \u_kirsch|nx37068z1\);

-- Location: LCFF_X47_Y23_N29
\u_kirsch|reg_a_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|b_3_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|a_3_\);

-- Location: LCFF_X48_Y23_N11
\u_kirsch|reg_r1_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx37068z1\,
	sdata => \u_kirsch|a_3_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r1_3_\);

-- Location: LCFF_X51_Y24_N31
\u_kirsch|reg_e_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|datain_2_\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|e_2_\);

-- Location: LCFF_X45_Y23_N31
\u_kirsch|reg_f_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|e_2_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_2_\);

-- Location: LCFF_X45_Y23_N5
\u_kirsch|reg_g_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_2_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|g_2_\);

-- Location: LCCOMB_X45_Y23_N4
\u_kirsch|ix36071z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx36071z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & ((\u_kirsch|e_2_\))) # (!\u_kirsch|v_2_\ & (\u_kirsch|g_2_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|g_2_\,
	datad => \u_kirsch|e_2_\,
	combout => \u_kirsch|nx36071z2\);

-- Location: LCCOMB_X44_Y23_N26
\u_kirsch|ix36071z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx36071z1\ = (\u_kirsch|nx36071z2\) # ((\u_kirsch|c_2_\ & \u_kirsch|v_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|c_2_\,
	datab => \u_kirsch|v_1_\,
	datad => \u_kirsch|nx36071z2\,
	combout => \u_kirsch|nx36071z1\);

-- Location: LCCOMB_X49_Y23_N16
\u_kirsch|a_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|a_2_~feeder_combout\ = \u_kirsch|b_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|b_2_\,
	combout => \u_kirsch|a_2_~feeder_combout\);

-- Location: LCFF_X49_Y23_N17
\u_kirsch|reg_a_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|a_2_~feeder_combout\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|a_2_\);

-- Location: LCFF_X44_Y23_N27
\u_kirsch|reg_r1_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx36071z1\,
	sdata => \u_kirsch|a_2_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r1_2_\);

-- Location: LCFF_X45_Y23_N17
\u_kirsch|reg_b_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|c_1_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|b_1_\);

-- Location: LCCOMB_X51_Y23_N24
\u_kirsch|ix30643z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx30643z3\ = (\u_kirsch|t_0_\ & (\u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(1))) # (!\u_kirsch|t_0_\ & ((\u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|m1_mem|ix64056z29481|auto_generated|q_a\(1),
	datab => \u_kirsch|t_0_\,
	datad => \u_kirsch|m3_mem|ix64056z29483|auto_generated|q_a\(1),
	combout => \u_kirsch|nx30643z3\);

-- Location: LCFF_X51_Y23_N25
\u_kirsch|reg_d_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx30643z3\,
	sdata => \u_kirsch|m2_mem|ix64056z29482|auto_generated|q_a\(1),
	sload => \u_kirsch|t_1_\,
	ena => \u_kirsch|nx20492z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|d_1_\);

-- Location: LCCOMB_X46_Y23_N14
\u_kirsch|i_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_1_~feeder_combout\ = \u_kirsch|d_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|d_1_\,
	combout => \u_kirsch|i_1_~feeder_combout\);

-- Location: LCFF_X46_Y23_N15
\u_kirsch|reg_i_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|i_1_~feeder_combout\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|i_1_\);

-- Location: LCFF_X45_Y23_N23
\u_kirsch|reg_h_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|i_1_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|h_1_\);

-- Location: LCCOMB_X45_Y23_N16
\u_kirsch|ix26655z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx26655z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & ((\u_kirsch|h_1_\))) # (!\u_kirsch|v_2_\ & (\u_kirsch|b_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|b_1_\,
	datad => \u_kirsch|h_1_\,
	combout => \u_kirsch|nx26655z2\);

-- Location: LCCOMB_X46_Y23_N24
\u_kirsch|ix26655z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx26655z1\ = (\u_kirsch|nx26655z2\) # ((\u_kirsch|f_1_\ & \u_kirsch|v_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_1_\,
	datab => \u_kirsch|v_1_\,
	datad => \u_kirsch|nx26655z2\,
	combout => \u_kirsch|nx26655z1\);

-- Location: LCFF_X46_Y23_N25
\u_kirsch|reg_r2_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx26655z1\,
	sdata => \u_kirsch|d_1_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_1_\);

-- Location: LCCOMB_X44_Y23_N22
\u_kirsch|ix25658z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx25658z1\ = (\u_kirsch|nx25658z2\) # ((\u_kirsch|v_1_\ & \u_kirsch|f_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx25658z2\,
	datab => \u_kirsch|v_1_\,
	datad => \u_kirsch|f_0_\,
	combout => \u_kirsch|nx25658z1\);

-- Location: LCFF_X44_Y23_N23
\u_kirsch|reg_r2_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx25658z1\,
	sdata => \u_kirsch|d_0_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_0_\);

-- Location: LCCOMB_X45_Y24_N12
\u_kirsch|sub1_sub8_22i30|ix23445z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub1_sub8_22i30|nx23445z22\ = CARRY((\u_kirsch|r1_0_\) # (!\u_kirsch|r2_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r1_0_\,
	datab => \u_kirsch|r2_0_\,
	datad => VCC,
	cout => \u_kirsch|sub1_sub8_22i30|nx23445z22\);

-- Location: LCCOMB_X45_Y24_N14
\u_kirsch|sub1_sub8_22i30|ix23445z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub1_sub8_22i30|nx23445z19\ = CARRY((\u_kirsch|r1_1_\ & (\u_kirsch|r2_1_\ & !\u_kirsch|sub1_sub8_22i30|nx23445z22\)) # (!\u_kirsch|r1_1_\ & ((\u_kirsch|r2_1_\) # (!\u_kirsch|sub1_sub8_22i30|nx23445z22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r1_1_\,
	datab => \u_kirsch|r2_1_\,
	datad => VCC,
	cin => \u_kirsch|sub1_sub8_22i30|nx23445z22\,
	cout => \u_kirsch|sub1_sub8_22i30|nx23445z19\);

-- Location: LCCOMB_X45_Y24_N16
\u_kirsch|sub1_sub8_22i30|ix23445z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub1_sub8_22i30|nx23445z16\ = CARRY((\u_kirsch|r2_2_\ & (\u_kirsch|r1_2_\ & !\u_kirsch|sub1_sub8_22i30|nx23445z19\)) # (!\u_kirsch|r2_2_\ & ((\u_kirsch|r1_2_\) # (!\u_kirsch|sub1_sub8_22i30|nx23445z19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r2_2_\,
	datab => \u_kirsch|r1_2_\,
	datad => VCC,
	cin => \u_kirsch|sub1_sub8_22i30|nx23445z19\,
	cout => \u_kirsch|sub1_sub8_22i30|nx23445z16\);

-- Location: LCCOMB_X45_Y24_N18
\u_kirsch|sub1_sub8_22i30|ix23445z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub1_sub8_22i30|nx23445z13\ = CARRY((\u_kirsch|r2_3_\ & ((!\u_kirsch|sub1_sub8_22i30|nx23445z16\) # (!\u_kirsch|r1_3_\))) # (!\u_kirsch|r2_3_\ & (!\u_kirsch|r1_3_\ & !\u_kirsch|sub1_sub8_22i30|nx23445z16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r2_3_\,
	datab => \u_kirsch|r1_3_\,
	datad => VCC,
	cin => \u_kirsch|sub1_sub8_22i30|nx23445z16\,
	cout => \u_kirsch|sub1_sub8_22i30|nx23445z13\);

-- Location: LCCOMB_X45_Y24_N20
\u_kirsch|sub1_sub8_22i30|ix23445z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub1_sub8_22i30|nx23445z10\ = CARRY((\u_kirsch|r2_4_\ & (\u_kirsch|r1_4_\ & !\u_kirsch|sub1_sub8_22i30|nx23445z13\)) # (!\u_kirsch|r2_4_\ & ((\u_kirsch|r1_4_\) # (!\u_kirsch|sub1_sub8_22i30|nx23445z13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r2_4_\,
	datab => \u_kirsch|r1_4_\,
	datad => VCC,
	cin => \u_kirsch|sub1_sub8_22i30|nx23445z13\,
	cout => \u_kirsch|sub1_sub8_22i30|nx23445z10\);

-- Location: LCCOMB_X45_Y24_N22
\u_kirsch|sub1_sub8_22i30|ix23445z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub1_sub8_22i30|nx23445z7\ = CARRY((\u_kirsch|r2_5_\ & ((!\u_kirsch|sub1_sub8_22i30|nx23445z10\) # (!\u_kirsch|r1_5_\))) # (!\u_kirsch|r2_5_\ & (!\u_kirsch|r1_5_\ & !\u_kirsch|sub1_sub8_22i30|nx23445z10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r2_5_\,
	datab => \u_kirsch|r1_5_\,
	datad => VCC,
	cin => \u_kirsch|sub1_sub8_22i30|nx23445z10\,
	cout => \u_kirsch|sub1_sub8_22i30|nx23445z7\);

-- Location: LCCOMB_X45_Y24_N24
\u_kirsch|sub1_sub8_22i30|ix23445z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub1_sub8_22i30|nx23445z4\ = CARRY((\u_kirsch|r1_6_\ & ((!\u_kirsch|sub1_sub8_22i30|nx23445z7\) # (!\u_kirsch|r2_6_\))) # (!\u_kirsch|r1_6_\ & (!\u_kirsch|r2_6_\ & !\u_kirsch|sub1_sub8_22i30|nx23445z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r1_6_\,
	datab => \u_kirsch|r2_6_\,
	datad => VCC,
	cin => \u_kirsch|sub1_sub8_22i30|nx23445z7\,
	cout => \u_kirsch|sub1_sub8_22i30|nx23445z4\);

-- Location: LCCOMB_X45_Y24_N26
\u_kirsch|sub1_sub8_22i30|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub1_sub8_22i30|nx23445z1\ = (\u_kirsch|r1_7_\ & ((\u_kirsch|sub1_sub8_22i30|nx23445z4\) # (!\u_kirsch|r2_7_\))) # (!\u_kirsch|r1_7_\ & (\u_kirsch|sub1_sub8_22i30|nx23445z4\ & !\u_kirsch|r2_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r1_7_\,
	datad => \u_kirsch|r2_7_\,
	cin => \u_kirsch|sub1_sub8_22i30|nx23445z4\,
	combout => \u_kirsch|sub1_sub8_22i30|nx23445z1\);

-- Location: LCCOMB_X46_Y24_N18
\u_kirsch|sub1_sub8_22i30|nx23445z1~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub1_sub8_22i30|nx23445z1~_wirecell_combout\ = !\u_kirsch|sub1_sub8_22i30|nx23445z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|sub1_sub8_22i30|nx23445z1\,
	combout => \u_kirsch|sub1_sub8_22i30|nx23445z1~_wirecell_combout\);

-- Location: LCFF_X46_Y24_N19
\u_kirsch|reg_sub1_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|sub1_sub8_22i30|nx23445z1~_wirecell_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|sub1_8_\);

-- Location: LCFF_X45_Y24_N3
\u_kirsch|reg_max1_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max1_6_~feeder_combout\,
	sdata => \u_kirsch|r2_6_\,
	sload => \u_kirsch|sub1_8_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max1_6_\);

-- Location: LCCOMB_X44_Y24_N24
\u_kirsch|r5_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r5_6_~feeder_combout\ = \u_kirsch|max1_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max1_6_\,
	combout => \u_kirsch|r5_6_~feeder_combout\);

-- Location: LCFF_X44_Y24_N25
\u_kirsch|reg_r5_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r5_6_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r5_6_\);

-- Location: LCCOMB_X45_Y24_N4
\u_kirsch|max1_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max1_5_~feeder_combout\ = \u_kirsch|r1_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r1_5_\,
	combout => \u_kirsch|max1_5_~feeder_combout\);

-- Location: LCCOMB_X47_Y23_N30
\u_kirsch|ix30643z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx30643z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & ((\u_kirsch|h_5_\))) # (!\u_kirsch|v_2_\ & (\u_kirsch|b_5_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_2_\,
	datab => \u_kirsch|v_1_\,
	datac => \u_kirsch|b_5_\,
	datad => \u_kirsch|h_5_\,
	combout => \u_kirsch|nx30643z2\);

-- Location: LCCOMB_X48_Y23_N0
\u_kirsch|ix30643z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx30643z1\ = (\u_kirsch|nx30643z2\) # ((\u_kirsch|f_5_\ & \u_kirsch|v_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_5_\,
	datab => \u_kirsch|v_1_\,
	datad => \u_kirsch|nx30643z2\,
	combout => \u_kirsch|nx30643z1\);

-- Location: LCFF_X48_Y23_N1
\u_kirsch|reg_r2_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx30643z1\,
	sdata => \u_kirsch|d_5_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_5_\);

-- Location: LCFF_X45_Y24_N5
\u_kirsch|reg_max1_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max1_5_~feeder_combout\,
	sdata => \u_kirsch|r2_5_\,
	sload => \u_kirsch|sub1_8_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max1_5_\);

-- Location: LCCOMB_X44_Y24_N26
\u_kirsch|r5_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r5_5_~feeder_combout\ = \u_kirsch|max1_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max1_5_\,
	combout => \u_kirsch|r5_5_~feeder_combout\);

-- Location: LCFF_X44_Y24_N27
\u_kirsch|reg_r5_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r5_5_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r5_5_\);

-- Location: LCFF_X43_Y23_N21
\u_kirsch|reg_add1_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add1_add8_22i31|nx41961z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add1_4_\);

-- Location: LCCOMB_X40_Y24_N8
\u_kirsch|r7_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_4_~feeder_combout\ = \u_kirsch|add1_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|add1_4_\,
	combout => \u_kirsch|r7_4_~feeder_combout\);

-- Location: LCFF_X40_Y24_N9
\u_kirsch|reg_r7_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r7_4_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r7_4_\);

-- Location: LCCOMB_X45_Y24_N0
\u_kirsch|max1_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max1_3_~feeder_combout\ = \u_kirsch|r1_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r1_3_\,
	combout => \u_kirsch|max1_3_~feeder_combout\);

-- Location: LCCOMB_X49_Y23_N14
\u_kirsch|i_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_3_~feeder_combout\ = \u_kirsch|d_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|d_3_\,
	combout => \u_kirsch|i_3_~feeder_combout\);

-- Location: LCFF_X49_Y23_N15
\u_kirsch|reg_i_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|i_3_~feeder_combout\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|i_3_\);

-- Location: LCCOMB_X49_Y23_N6
\u_kirsch|h_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|h_3_~feeder_combout\ = \u_kirsch|i_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|i_3_\,
	combout => \u_kirsch|h_3_~feeder_combout\);

-- Location: LCFF_X49_Y23_N7
\u_kirsch|reg_h_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|h_3_~feeder_combout\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|h_3_\);

-- Location: LCCOMB_X47_Y23_N16
\u_kirsch|ix28649z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28649z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & ((\u_kirsch|h_3_\))) # (!\u_kirsch|v_2_\ & (\u_kirsch|b_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_2_\,
	datab => \u_kirsch|v_1_\,
	datac => \u_kirsch|b_3_\,
	datad => \u_kirsch|h_3_\,
	combout => \u_kirsch|nx28649z2\);

-- Location: LCCOMB_X48_Y23_N8
\u_kirsch|ix28649z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28649z1\ = (\u_kirsch|nx28649z2\) # ((\u_kirsch|f_3_\ & \u_kirsch|v_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_3_\,
	datab => \u_kirsch|nx28649z2\,
	datad => \u_kirsch|v_1_\,
	combout => \u_kirsch|nx28649z1\);

-- Location: LCFF_X48_Y23_N9
\u_kirsch|reg_r2_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx28649z1\,
	sdata => \u_kirsch|d_3_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_3_\);

-- Location: LCFF_X45_Y24_N1
\u_kirsch|reg_max1_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max1_3_~feeder_combout\,
	sdata => \u_kirsch|r2_3_\,
	sload => \u_kirsch|sub1_8_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max1_3_\);

-- Location: LCFF_X44_Y24_N5
\u_kirsch|reg_r5_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|max1_3_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r5_3_\);

-- Location: LCCOMB_X45_Y24_N10
\u_kirsch|max1_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max1_2_~feeder_combout\ = \u_kirsch|r1_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r1_2_\,
	combout => \u_kirsch|max1_2_~feeder_combout\);

-- Location: LCCOMB_X46_Y23_N12
\u_kirsch|i_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_2_~feeder_combout\ = \u_kirsch|d_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|d_2_\,
	combout => \u_kirsch|i_2_~feeder_combout\);

-- Location: LCFF_X46_Y23_N13
\u_kirsch|reg_i_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|i_2_~feeder_combout\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|i_2_\);

-- Location: LCFF_X45_Y23_N27
\u_kirsch|reg_h_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|i_2_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|h_2_\);

-- Location: LCCOMB_X45_Y23_N20
\u_kirsch|ix27652z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx27652z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & ((\u_kirsch|h_2_\))) # (!\u_kirsch|v_2_\ & (\u_kirsch|b_2_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|b_2_\,
	datad => \u_kirsch|h_2_\,
	combout => \u_kirsch|nx27652z2\);

-- Location: LCCOMB_X44_Y23_N8
\u_kirsch|ix27652z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx27652z1\ = (\u_kirsch|nx27652z2\) # ((\u_kirsch|f_2_\ & \u_kirsch|v_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_2_\,
	datab => \u_kirsch|v_1_\,
	datad => \u_kirsch|nx27652z2\,
	combout => \u_kirsch|nx27652z1\);

-- Location: LCFF_X44_Y23_N9
\u_kirsch|reg_r2_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx27652z1\,
	sdata => \u_kirsch|d_2_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_2_\);

-- Location: LCFF_X45_Y24_N11
\u_kirsch|reg_max1_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max1_2_~feeder_combout\,
	sdata => \u_kirsch|r2_2_\,
	sload => \u_kirsch|sub1_8_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max1_2_\);

-- Location: LCFF_X44_Y24_N7
\u_kirsch|reg_r5_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|max1_2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r5_2_\);

-- Location: LCFF_X43_Y23_N15
\u_kirsch|reg_add1_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add1_add8_22i31|nx38970z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add1_1_\);

-- Location: LCCOMB_X43_Y24_N4
\u_kirsch|r7_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_1_~feeder_combout\ = \u_kirsch|add1_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|add1_1_\,
	combout => \u_kirsch|r7_1_~feeder_combout\);

-- Location: LCFF_X43_Y24_N5
\u_kirsch|reg_r7_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r7_1_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r7_1_\);

-- Location: LCCOMB_X45_Y23_N28
\u_kirsch|ix34077z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx34077z2\ = (!\u_kirsch|v_1_\ & ((\u_kirsch|v_2_\ & ((\u_kirsch|e_0_\))) # (!\u_kirsch|v_2_\ & (\u_kirsch|g_0_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|g_0_\,
	datad => \u_kirsch|e_0_\,
	combout => \u_kirsch|nx34077z2\);

-- Location: LCCOMB_X44_Y23_N4
\u_kirsch|ix34077z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx34077z1\ = (\u_kirsch|nx34077z2\) # ((\u_kirsch|c_0_\ & \u_kirsch|v_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|c_0_\,
	datab => \u_kirsch|v_1_\,
	datad => \u_kirsch|nx34077z2\,
	combout => \u_kirsch|nx34077z1\);

-- Location: LCFF_X45_Y23_N9
\u_kirsch|reg_a_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|b_0_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|a_0_\);

-- Location: LCFF_X44_Y23_N5
\u_kirsch|reg_r1_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx34077z1\,
	sdata => \u_kirsch|a_0_\,
	sload => \u_kirsch|v_0_\,
	ena => \u_kirsch|nx41056z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r1_0_\);

-- Location: LCCOMB_X45_Y24_N30
\u_kirsch|max1_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max1_0_~feeder_combout\ = \u_kirsch|r1_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r1_0_\,
	combout => \u_kirsch|max1_0_~feeder_combout\);

-- Location: LCFF_X45_Y24_N31
\u_kirsch|reg_max1_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max1_0_~feeder_combout\,
	sdata => \u_kirsch|r2_0_\,
	sload => \u_kirsch|sub1_8_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max1_0_\);

-- Location: LCCOMB_X44_Y24_N10
\u_kirsch|r5_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r5_0_~feeder_combout\ = \u_kirsch|max1_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max1_0_\,
	combout => \u_kirsch|r5_0_~feeder_combout\);

-- Location: LCFF_X44_Y24_N11
\u_kirsch|reg_r5_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r5_0_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r5_0_\);

-- Location: LCCOMB_X40_Y24_N12
\u_kirsch|add2_add9_22i32|ix45949z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add2_add9_22i32|nx37973z1\ = (\u_kirsch|r7_0_\ & (\u_kirsch|r5_0_\ $ (VCC))) # (!\u_kirsch|r7_0_\ & (\u_kirsch|r5_0_\ & VCC))
-- \u_kirsch|add2_add9_22i32|nx45949z24\ = CARRY((\u_kirsch|r7_0_\ & \u_kirsch|r5_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r7_0_\,
	datab => \u_kirsch|r5_0_\,
	datad => VCC,
	combout => \u_kirsch|add2_add9_22i32|nx37973z1\,
	cout => \u_kirsch|add2_add9_22i32|nx45949z24\);

-- Location: LCCOMB_X40_Y24_N14
\u_kirsch|add2_add9_22i32|ix45949z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add2_add9_22i32|nx38970z1\ = (\u_kirsch|r5_1_\ & ((\u_kirsch|r7_1_\ & (\u_kirsch|add2_add9_22i32|nx45949z24\ & VCC)) # (!\u_kirsch|r7_1_\ & (!\u_kirsch|add2_add9_22i32|nx45949z24\)))) # (!\u_kirsch|r5_1_\ & ((\u_kirsch|r7_1_\ & 
-- (!\u_kirsch|add2_add9_22i32|nx45949z24\)) # (!\u_kirsch|r7_1_\ & ((\u_kirsch|add2_add9_22i32|nx45949z24\) # (GND)))))
-- \u_kirsch|add2_add9_22i32|nx45949z21\ = CARRY((\u_kirsch|r5_1_\ & (!\u_kirsch|r7_1_\ & !\u_kirsch|add2_add9_22i32|nx45949z24\)) # (!\u_kirsch|r5_1_\ & ((!\u_kirsch|add2_add9_22i32|nx45949z24\) # (!\u_kirsch|r7_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r5_1_\,
	datab => \u_kirsch|r7_1_\,
	datad => VCC,
	cin => \u_kirsch|add2_add9_22i32|nx45949z24\,
	combout => \u_kirsch|add2_add9_22i32|nx38970z1\,
	cout => \u_kirsch|add2_add9_22i32|nx45949z21\);

-- Location: LCCOMB_X40_Y24_N16
\u_kirsch|add2_add9_22i32|ix45949z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add2_add9_22i32|nx39967z1\ = ((\u_kirsch|r7_2_\ $ (\u_kirsch|r5_2_\ $ (!\u_kirsch|add2_add9_22i32|nx45949z21\)))) # (GND)
-- \u_kirsch|add2_add9_22i32|nx45949z18\ = CARRY((\u_kirsch|r7_2_\ & ((\u_kirsch|r5_2_\) # (!\u_kirsch|add2_add9_22i32|nx45949z21\))) # (!\u_kirsch|r7_2_\ & (\u_kirsch|r5_2_\ & !\u_kirsch|add2_add9_22i32|nx45949z21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r7_2_\,
	datab => \u_kirsch|r5_2_\,
	datad => VCC,
	cin => \u_kirsch|add2_add9_22i32|nx45949z21\,
	combout => \u_kirsch|add2_add9_22i32|nx39967z1\,
	cout => \u_kirsch|add2_add9_22i32|nx45949z18\);

-- Location: LCCOMB_X40_Y24_N18
\u_kirsch|add2_add9_22i32|ix45949z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add2_add9_22i32|nx40964z1\ = (\u_kirsch|r7_3_\ & ((\u_kirsch|r5_3_\ & (\u_kirsch|add2_add9_22i32|nx45949z18\ & VCC)) # (!\u_kirsch|r5_3_\ & (!\u_kirsch|add2_add9_22i32|nx45949z18\)))) # (!\u_kirsch|r7_3_\ & ((\u_kirsch|r5_3_\ & 
-- (!\u_kirsch|add2_add9_22i32|nx45949z18\)) # (!\u_kirsch|r5_3_\ & ((\u_kirsch|add2_add9_22i32|nx45949z18\) # (GND)))))
-- \u_kirsch|add2_add9_22i32|nx45949z15\ = CARRY((\u_kirsch|r7_3_\ & (!\u_kirsch|r5_3_\ & !\u_kirsch|add2_add9_22i32|nx45949z18\)) # (!\u_kirsch|r7_3_\ & ((!\u_kirsch|add2_add9_22i32|nx45949z18\) # (!\u_kirsch|r5_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r7_3_\,
	datab => \u_kirsch|r5_3_\,
	datad => VCC,
	cin => \u_kirsch|add2_add9_22i32|nx45949z18\,
	combout => \u_kirsch|add2_add9_22i32|nx40964z1\,
	cout => \u_kirsch|add2_add9_22i32|nx45949z15\);

-- Location: LCCOMB_X40_Y24_N20
\u_kirsch|add2_add9_22i32|ix45949z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add2_add9_22i32|nx41961z1\ = ((\u_kirsch|r5_4_\ $ (\u_kirsch|r7_4_\ $ (!\u_kirsch|add2_add9_22i32|nx45949z15\)))) # (GND)
-- \u_kirsch|add2_add9_22i32|nx45949z12\ = CARRY((\u_kirsch|r5_4_\ & ((\u_kirsch|r7_4_\) # (!\u_kirsch|add2_add9_22i32|nx45949z15\))) # (!\u_kirsch|r5_4_\ & (\u_kirsch|r7_4_\ & !\u_kirsch|add2_add9_22i32|nx45949z15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r5_4_\,
	datab => \u_kirsch|r7_4_\,
	datad => VCC,
	cin => \u_kirsch|add2_add9_22i32|nx45949z15\,
	combout => \u_kirsch|add2_add9_22i32|nx41961z1\,
	cout => \u_kirsch|add2_add9_22i32|nx45949z12\);

-- Location: LCCOMB_X40_Y24_N22
\u_kirsch|add2_add9_22i32|ix45949z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add2_add9_22i32|nx42958z1\ = (\u_kirsch|r7_5_\ & ((\u_kirsch|r5_5_\ & (\u_kirsch|add2_add9_22i32|nx45949z12\ & VCC)) # (!\u_kirsch|r5_5_\ & (!\u_kirsch|add2_add9_22i32|nx45949z12\)))) # (!\u_kirsch|r7_5_\ & ((\u_kirsch|r5_5_\ & 
-- (!\u_kirsch|add2_add9_22i32|nx45949z12\)) # (!\u_kirsch|r5_5_\ & ((\u_kirsch|add2_add9_22i32|nx45949z12\) # (GND)))))
-- \u_kirsch|add2_add9_22i32|nx45949z9\ = CARRY((\u_kirsch|r7_5_\ & (!\u_kirsch|r5_5_\ & !\u_kirsch|add2_add9_22i32|nx45949z12\)) # (!\u_kirsch|r7_5_\ & ((!\u_kirsch|add2_add9_22i32|nx45949z12\) # (!\u_kirsch|r5_5_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r7_5_\,
	datab => \u_kirsch|r5_5_\,
	datad => VCC,
	cin => \u_kirsch|add2_add9_22i32|nx45949z12\,
	combout => \u_kirsch|add2_add9_22i32|nx42958z1\,
	cout => \u_kirsch|add2_add9_22i32|nx45949z9\);

-- Location: LCCOMB_X40_Y24_N24
\u_kirsch|add2_add9_22i32|ix45949z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add2_add9_22i32|nx43955z1\ = ((\u_kirsch|r7_6_\ $ (\u_kirsch|r5_6_\ $ (!\u_kirsch|add2_add9_22i32|nx45949z9\)))) # (GND)
-- \u_kirsch|add2_add9_22i32|nx45949z6\ = CARRY((\u_kirsch|r7_6_\ & ((\u_kirsch|r5_6_\) # (!\u_kirsch|add2_add9_22i32|nx45949z9\))) # (!\u_kirsch|r7_6_\ & (\u_kirsch|r5_6_\ & !\u_kirsch|add2_add9_22i32|nx45949z9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r7_6_\,
	datab => \u_kirsch|r5_6_\,
	datad => VCC,
	cin => \u_kirsch|add2_add9_22i32|nx45949z9\,
	combout => \u_kirsch|add2_add9_22i32|nx43955z1\,
	cout => \u_kirsch|add2_add9_22i32|nx45949z6\);

-- Location: LCCOMB_X40_Y24_N26
\u_kirsch|add2_add9_22i32|ix45949z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add2_add9_22i32|nx44952z1\ = (\u_kirsch|r5_7_\ & ((\u_kirsch|r7_7_\ & (\u_kirsch|add2_add9_22i32|nx45949z6\ & VCC)) # (!\u_kirsch|r7_7_\ & (!\u_kirsch|add2_add9_22i32|nx45949z6\)))) # (!\u_kirsch|r5_7_\ & ((\u_kirsch|r7_7_\ & 
-- (!\u_kirsch|add2_add9_22i32|nx45949z6\)) # (!\u_kirsch|r7_7_\ & ((\u_kirsch|add2_add9_22i32|nx45949z6\) # (GND)))))
-- \u_kirsch|add2_add9_22i32|nx45949z3\ = CARRY((\u_kirsch|r5_7_\ & (!\u_kirsch|r7_7_\ & !\u_kirsch|add2_add9_22i32|nx45949z6\)) # (!\u_kirsch|r5_7_\ & ((!\u_kirsch|add2_add9_22i32|nx45949z6\) # (!\u_kirsch|r7_7_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r5_7_\,
	datab => \u_kirsch|r7_7_\,
	datad => VCC,
	cin => \u_kirsch|add2_add9_22i32|nx45949z6\,
	combout => \u_kirsch|add2_add9_22i32|nx44952z1\,
	cout => \u_kirsch|add2_add9_22i32|nx45949z3\);

-- Location: LCCOMB_X40_Y24_N28
\u_kirsch|add2_add9_22i32|ix45949z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add2_add9_22i32|nx45949z1\ = (\u_kirsch|r7_8_\ & (\u_kirsch|add2_add9_22i32|nx45949z3\ $ (GND))) # (!\u_kirsch|r7_8_\ & (!\u_kirsch|add2_add9_22i32|nx45949z3\ & VCC))
-- \u_kirsch|add2_add9_22i32|nx23445z2\ = CARRY((\u_kirsch|r7_8_\ & !\u_kirsch|add2_add9_22i32|nx45949z3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r7_8_\,
	datad => VCC,
	cin => \u_kirsch|add2_add9_22i32|nx45949z3\,
	combout => \u_kirsch|add2_add9_22i32|nx45949z1\,
	cout => \u_kirsch|add2_add9_22i32|nx23445z2\);

-- Location: LCCOMB_X40_Y24_N30
\u_kirsch|add2_add9_22i32|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|add2_add9_22i32|nx23445z1\ = \u_kirsch|add2_add9_22i32|nx23445z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_kirsch|add2_add9_22i32|nx23445z2\,
	combout => \u_kirsch|add2_add9_22i32|nx23445z1\);

-- Location: LCFF_X40_Y24_N31
\u_kirsch|reg_add2_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add2_add9_22i32|nx23445z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add2_9_\);

-- Location: LCFF_X38_Y24_N23
\u_kirsch|reg_r11_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|add2_9_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r11_9_\);

-- Location: LCFF_X40_Y24_N29
\u_kirsch|reg_add2_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add2_add9_22i32|nx45949z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add2_8_\);

-- Location: LCFF_X36_Y24_N27
\u_kirsch|reg_r11_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|add2_8_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r11_8_\);

-- Location: LCCOMB_X37_Y24_N0
\u_kirsch|r9_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r9_7_~feeder_combout\ = \u_kirsch|max2_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max2_7_\,
	combout => \u_kirsch|r9_7_~feeder_combout\);

-- Location: LCFF_X40_Y24_N27
\u_kirsch|reg_add2_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add2_add9_22i32|nx44952z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add2_7_\);

-- Location: LCCOMB_X46_Y24_N8
\u_kirsch|ix24302z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx24302z2\ = (!\u_kirsch|v_3_\ & \u_kirsch|v_4_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_3_\,
	datac => \u_kirsch|v_4_\,
	combout => \u_kirsch|nx24302z2\);

-- Location: LCCOMB_X46_Y24_N24
\u_kirsch|ix24302z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx24302z1\ = (!\u_kirsch|v_1_\ & (!\u_kirsch|v_0_\ & ((\u_kirsch|v_2_\) # (\u_kirsch|nx24302z2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_2_\,
	datab => \u_kirsch|v_1_\,
	datac => \u_kirsch|nx24302z2\,
	datad => \u_kirsch|v_0_\,
	combout => \u_kirsch|nx24302z1\);

-- Location: LCFF_X37_Y24_N1
\u_kirsch|reg_r9_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r9_7_~feeder_combout\,
	sdata => \u_kirsch|add2_7_\,
	sload => \u_kirsch|v_2_\,
	ena => \u_kirsch|nx24302z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r9_7_\);

-- Location: LCCOMB_X35_Y24_N4
\u_kirsch|max2_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max2_7_~feeder_combout\ = \u_kirsch|r9_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r9_7_\,
	combout => \u_kirsch|max2_7_~feeder_combout\);

-- Location: LCFF_X36_Y24_N25
\u_kirsch|reg_r11_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|add2_7_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r11_7_\);

-- Location: LCCOMB_X35_Y24_N0
\u_kirsch|max2_9_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max2_9_~feeder_combout\ = \u_kirsch|r9_9_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r9_9_\,
	combout => \u_kirsch|max2_9_~feeder_combout\);

-- Location: LCFF_X35_Y24_N1
\u_kirsch|reg_max2_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max2_9_~feeder_combout\,
	sdata => \u_kirsch|r11_9_\,
	sload => \u_kirsch|sub2_10_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max2_9_\);

-- Location: LCCOMB_X37_Y24_N24
\u_kirsch|r9_9_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r9_9_~feeder_combout\ = \u_kirsch|max2_9_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|max2_9_\,
	combout => \u_kirsch|r9_9_~feeder_combout\);

-- Location: LCFF_X37_Y24_N25
\u_kirsch|reg_r9_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r9_9_~feeder_combout\,
	sdata => \u_kirsch|add2_9_\,
	sload => \u_kirsch|v_2_\,
	ena => \u_kirsch|nx24302z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r9_9_\);

-- Location: LCCOMB_X35_Y24_N6
\u_kirsch|max2_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max2_6_~feeder_combout\ = \u_kirsch|r9_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r9_6_\,
	combout => \u_kirsch|max2_6_~feeder_combout\);

-- Location: LCFF_X40_Y24_N25
\u_kirsch|reg_add2_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add2_add9_22i32|nx43955z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add2_6_\);

-- Location: LCFF_X36_Y24_N23
\u_kirsch|reg_r11_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|add2_6_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r11_6_\);

-- Location: LCFF_X35_Y24_N7
\u_kirsch|reg_max2_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max2_6_~feeder_combout\,
	sdata => \u_kirsch|r11_6_\,
	sload => \u_kirsch|sub2_10_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max2_6_\);

-- Location: LCCOMB_X37_Y24_N28
\u_kirsch|r9_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r9_6_~feeder_combout\ = \u_kirsch|max2_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max2_6_\,
	combout => \u_kirsch|r9_6_~feeder_combout\);

-- Location: LCFF_X37_Y24_N29
\u_kirsch|reg_r9_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r9_6_~feeder_combout\,
	sdata => \u_kirsch|add2_6_\,
	sload => \u_kirsch|v_2_\,
	ena => \u_kirsch|nx24302z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r9_6_\);

-- Location: LCCOMB_X35_Y24_N16
\u_kirsch|max2_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max2_5_~feeder_combout\ = \u_kirsch|r9_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r9_5_\,
	combout => \u_kirsch|max2_5_~feeder_combout\);

-- Location: LCFF_X40_Y24_N23
\u_kirsch|reg_add2_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add2_add9_22i32|nx42958z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add2_5_\);

-- Location: LCFF_X36_Y24_N21
\u_kirsch|reg_r11_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|add2_5_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r11_5_\);

-- Location: LCFF_X35_Y24_N17
\u_kirsch|reg_max2_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max2_5_~feeder_combout\,
	sdata => \u_kirsch|r11_5_\,
	sload => \u_kirsch|sub2_10_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max2_5_\);

-- Location: LCCOMB_X37_Y24_N10
\u_kirsch|r9_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r9_5_~feeder_combout\ = \u_kirsch|max2_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max2_5_\,
	combout => \u_kirsch|r9_5_~feeder_combout\);

-- Location: LCFF_X37_Y24_N11
\u_kirsch|reg_r9_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r9_5_~feeder_combout\,
	sdata => \u_kirsch|add2_5_\,
	sload => \u_kirsch|v_2_\,
	ena => \u_kirsch|nx24302z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r9_5_\);

-- Location: LCCOMB_X35_Y24_N10
\u_kirsch|max2_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max2_4_~feeder_combout\ = \u_kirsch|r9_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r9_4_\,
	combout => \u_kirsch|max2_4_~feeder_combout\);

-- Location: LCFF_X40_Y24_N21
\u_kirsch|reg_add2_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add2_add9_22i32|nx41961z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add2_4_\);

-- Location: LCFF_X36_Y24_N19
\u_kirsch|reg_r11_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|add2_4_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r11_4_\);

-- Location: LCFF_X35_Y24_N11
\u_kirsch|reg_max2_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max2_4_~feeder_combout\,
	sdata => \u_kirsch|r11_4_\,
	sload => \u_kirsch|sub2_10_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max2_4_\);

-- Location: LCCOMB_X37_Y24_N22
\u_kirsch|r9_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r9_4_~feeder_combout\ = \u_kirsch|max2_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max2_4_\,
	combout => \u_kirsch|r9_4_~feeder_combout\);

-- Location: LCFF_X37_Y24_N23
\u_kirsch|reg_r9_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r9_4_~feeder_combout\,
	sdata => \u_kirsch|add2_4_\,
	sload => \u_kirsch|v_2_\,
	ena => \u_kirsch|nx24302z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r9_4_\);

-- Location: LCFF_X40_Y24_N19
\u_kirsch|reg_add2_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add2_add9_22i32|nx40964z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add2_3_\);

-- Location: LCFF_X36_Y24_N17
\u_kirsch|reg_r11_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|add2_3_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r11_3_\);

-- Location: LCFF_X40_Y24_N17
\u_kirsch|reg_add2_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add2_add9_22i32|nx39967z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add2_2_\);

-- Location: LCFF_X36_Y24_N15
\u_kirsch|reg_r11_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|add2_2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r11_2_\);

-- Location: LCCOMB_X35_Y24_N24
\u_kirsch|max2_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|max2_1_~feeder_combout\ = \u_kirsch|r9_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r9_1_\,
	combout => \u_kirsch|max2_1_~feeder_combout\);

-- Location: LCFF_X40_Y24_N15
\u_kirsch|reg_add2_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add2_add9_22i32|nx38970z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add2_1_\);

-- Location: LCFF_X36_Y24_N13
\u_kirsch|reg_r11_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|add2_1_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r11_1_\);

-- Location: LCFF_X35_Y24_N25
\u_kirsch|reg_max2_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max2_1_~feeder_combout\,
	sdata => \u_kirsch|r11_1_\,
	sload => \u_kirsch|sub2_10_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max2_1_\);

-- Location: LCCOMB_X37_Y24_N26
\u_kirsch|r9_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r9_1_~feeder_combout\ = \u_kirsch|max2_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max2_1_\,
	combout => \u_kirsch|r9_1_~feeder_combout\);

-- Location: LCFF_X37_Y24_N27
\u_kirsch|reg_r9_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r9_1_~feeder_combout\,
	sdata => \u_kirsch|add2_1_\,
	sload => \u_kirsch|v_2_\,
	ena => \u_kirsch|nx24302z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r9_1_\);

-- Location: LCFF_X40_Y24_N13
\u_kirsch|reg_add2_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|add2_add9_22i32|nx37973z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|add2_0_\);

-- Location: LCFF_X38_Y24_N5
\u_kirsch|reg_r11_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|add2_0_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r11_0_\);

-- Location: LCCOMB_X38_Y24_N4
\u_kirsch|sub2_sub10_22i33|ix23445z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub2_sub10_22i33|nx23445z28\ = CARRY((\u_kirsch|r9_0_\) # (!\u_kirsch|r11_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r9_0_\,
	datab => \u_kirsch|r11_0_\,
	datad => VCC,
	cout => \u_kirsch|sub2_sub10_22i33|nx23445z28\);

-- Location: LCCOMB_X38_Y24_N6
\u_kirsch|sub2_sub10_22i33|ix23445z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub2_sub10_22i33|nx23445z25\ = CARRY((\u_kirsch|r11_1_\ & ((!\u_kirsch|sub2_sub10_22i33|nx23445z28\) # (!\u_kirsch|r9_1_\))) # (!\u_kirsch|r11_1_\ & (!\u_kirsch|r9_1_\ & !\u_kirsch|sub2_sub10_22i33|nx23445z28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r11_1_\,
	datab => \u_kirsch|r9_1_\,
	datad => VCC,
	cin => \u_kirsch|sub2_sub10_22i33|nx23445z28\,
	cout => \u_kirsch|sub2_sub10_22i33|nx23445z25\);

-- Location: LCCOMB_X38_Y24_N8
\u_kirsch|sub2_sub10_22i33|ix23445z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub2_sub10_22i33|nx23445z22\ = CARRY((\u_kirsch|r9_2_\ & ((!\u_kirsch|sub2_sub10_22i33|nx23445z25\) # (!\u_kirsch|r11_2_\))) # (!\u_kirsch|r9_2_\ & (!\u_kirsch|r11_2_\ & !\u_kirsch|sub2_sub10_22i33|nx23445z25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r9_2_\,
	datab => \u_kirsch|r11_2_\,
	datad => VCC,
	cin => \u_kirsch|sub2_sub10_22i33|nx23445z25\,
	cout => \u_kirsch|sub2_sub10_22i33|nx23445z22\);

-- Location: LCCOMB_X38_Y24_N10
\u_kirsch|sub2_sub10_22i33|ix23445z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub2_sub10_22i33|nx23445z19\ = CARRY((\u_kirsch|r9_3_\ & (\u_kirsch|r11_3_\ & !\u_kirsch|sub2_sub10_22i33|nx23445z22\)) # (!\u_kirsch|r9_3_\ & ((\u_kirsch|r11_3_\) # (!\u_kirsch|sub2_sub10_22i33|nx23445z22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r9_3_\,
	datab => \u_kirsch|r11_3_\,
	datad => VCC,
	cin => \u_kirsch|sub2_sub10_22i33|nx23445z22\,
	cout => \u_kirsch|sub2_sub10_22i33|nx23445z19\);

-- Location: LCCOMB_X38_Y24_N12
\u_kirsch|sub2_sub10_22i33|ix23445z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub2_sub10_22i33|nx23445z16\ = CARRY((\u_kirsch|r11_4_\ & (\u_kirsch|r9_4_\ & !\u_kirsch|sub2_sub10_22i33|nx23445z19\)) # (!\u_kirsch|r11_4_\ & ((\u_kirsch|r9_4_\) # (!\u_kirsch|sub2_sub10_22i33|nx23445z19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r11_4_\,
	datab => \u_kirsch|r9_4_\,
	datad => VCC,
	cin => \u_kirsch|sub2_sub10_22i33|nx23445z19\,
	cout => \u_kirsch|sub2_sub10_22i33|nx23445z16\);

-- Location: LCCOMB_X38_Y24_N14
\u_kirsch|sub2_sub10_22i33|ix23445z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub2_sub10_22i33|nx23445z13\ = CARRY((\u_kirsch|r11_5_\ & ((!\u_kirsch|sub2_sub10_22i33|nx23445z16\) # (!\u_kirsch|r9_5_\))) # (!\u_kirsch|r11_5_\ & (!\u_kirsch|r9_5_\ & !\u_kirsch|sub2_sub10_22i33|nx23445z16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r11_5_\,
	datab => \u_kirsch|r9_5_\,
	datad => VCC,
	cin => \u_kirsch|sub2_sub10_22i33|nx23445z16\,
	cout => \u_kirsch|sub2_sub10_22i33|nx23445z13\);

-- Location: LCCOMB_X38_Y24_N16
\u_kirsch|sub2_sub10_22i33|ix23445z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub2_sub10_22i33|nx23445z10\ = CARRY((\u_kirsch|r11_6_\ & (\u_kirsch|r9_6_\ & !\u_kirsch|sub2_sub10_22i33|nx23445z13\)) # (!\u_kirsch|r11_6_\ & ((\u_kirsch|r9_6_\) # (!\u_kirsch|sub2_sub10_22i33|nx23445z13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r11_6_\,
	datab => \u_kirsch|r9_6_\,
	datad => VCC,
	cin => \u_kirsch|sub2_sub10_22i33|nx23445z13\,
	cout => \u_kirsch|sub2_sub10_22i33|nx23445z10\);

-- Location: LCCOMB_X38_Y24_N18
\u_kirsch|sub2_sub10_22i33|ix23445z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub2_sub10_22i33|nx23445z7\ = CARRY((\u_kirsch|r9_7_\ & (\u_kirsch|r11_7_\ & !\u_kirsch|sub2_sub10_22i33|nx23445z10\)) # (!\u_kirsch|r9_7_\ & ((\u_kirsch|r11_7_\) # (!\u_kirsch|sub2_sub10_22i33|nx23445z10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r9_7_\,
	datab => \u_kirsch|r11_7_\,
	datad => VCC,
	cin => \u_kirsch|sub2_sub10_22i33|nx23445z10\,
	cout => \u_kirsch|sub2_sub10_22i33|nx23445z7\);

-- Location: LCCOMB_X38_Y24_N20
\u_kirsch|sub2_sub10_22i33|ix23445z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub2_sub10_22i33|nx23445z4\ = CARRY((\u_kirsch|r9_8_\ & ((!\u_kirsch|sub2_sub10_22i33|nx23445z7\) # (!\u_kirsch|r11_8_\))) # (!\u_kirsch|r9_8_\ & (!\u_kirsch|r11_8_\ & !\u_kirsch|sub2_sub10_22i33|nx23445z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r9_8_\,
	datab => \u_kirsch|r11_8_\,
	datad => VCC,
	cin => \u_kirsch|sub2_sub10_22i33|nx23445z7\,
	cout => \u_kirsch|sub2_sub10_22i33|nx23445z4\);

-- Location: LCCOMB_X38_Y24_N22
\u_kirsch|sub2_sub10_22i33|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub2_sub10_22i33|nx23445z1\ = (\u_kirsch|r11_9_\ & (\u_kirsch|sub2_sub10_22i33|nx23445z4\ & \u_kirsch|r9_9_\)) # (!\u_kirsch|r11_9_\ & ((\u_kirsch|sub2_sub10_22i33|nx23445z4\) # (\u_kirsch|r9_9_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r11_9_\,
	datad => \u_kirsch|r9_9_\,
	cin => \u_kirsch|sub2_sub10_22i33|nx23445z4\,
	combout => \u_kirsch|sub2_sub10_22i33|nx23445z1\);

-- Location: LCCOMB_X38_Y24_N26
\u_kirsch|sub2_sub10_22i33|nx23445z1~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub2_sub10_22i33|nx23445z1~_wirecell_combout\ = !\u_kirsch|sub2_sub10_22i33|nx23445z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|sub2_sub10_22i33|nx23445z1\,
	combout => \u_kirsch|sub2_sub10_22i33|nx23445z1~_wirecell_combout\);

-- Location: LCFF_X38_Y24_N27
\u_kirsch|reg_sub2_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|sub2_sub10_22i33|nx23445z1~_wirecell_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|sub2_10_\);

-- Location: LCFF_X35_Y24_N5
\u_kirsch|reg_max2_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|max2_7_~feeder_combout\,
	sdata => \u_kirsch|r11_7_\,
	sload => \u_kirsch|sub2_10_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|max2_7_\);

-- Location: LCCOMB_X37_Y24_N14
\u_kirsch|r12_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r12_7_~feeder_combout\ = \u_kirsch|max2_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max2_7_\,
	combout => \u_kirsch|r12_7_~feeder_combout\);

-- Location: LCFF_X37_Y24_N15
\u_kirsch|reg_r12_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r12_7_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r12_7_\);

-- Location: LCCOMB_X36_Y24_N2
\u_kirsch|r12_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r12_5_~feeder_combout\ = \u_kirsch|max2_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max2_5_\,
	combout => \u_kirsch|r12_5_~feeder_combout\);

-- Location: LCFF_X36_Y24_N3
\u_kirsch|reg_r12_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r12_5_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r12_5_\);

-- Location: LCCOMB_X36_Y24_N30
\u_kirsch|r12_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r12_1_~feeder_combout\ = \u_kirsch|max2_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|max2_1_\,
	combout => \u_kirsch|r12_1_~feeder_combout\);

-- Location: LCFF_X36_Y24_N31
\u_kirsch|reg_r12_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r12_1_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r12_1_\);

-- Location: LCCOMB_X36_Y24_N10
\u_kirsch|sub3_sub10_22i34|ix23445z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub3_sub10_22i34|nx23445z28\ = CARRY((\u_kirsch|r11_0_\) # (!\u_kirsch|r12_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r12_0_\,
	datab => \u_kirsch|r11_0_\,
	datad => VCC,
	cout => \u_kirsch|sub3_sub10_22i34|nx23445z28\);

-- Location: LCCOMB_X36_Y24_N12
\u_kirsch|sub3_sub10_22i34|ix23445z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub3_sub10_22i34|nx23445z25\ = CARRY((\u_kirsch|r11_1_\ & (\u_kirsch|r12_1_\ & !\u_kirsch|sub3_sub10_22i34|nx23445z28\)) # (!\u_kirsch|r11_1_\ & ((\u_kirsch|r12_1_\) # (!\u_kirsch|sub3_sub10_22i34|nx23445z28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r11_1_\,
	datab => \u_kirsch|r12_1_\,
	datad => VCC,
	cin => \u_kirsch|sub3_sub10_22i34|nx23445z28\,
	cout => \u_kirsch|sub3_sub10_22i34|nx23445z25\);

-- Location: LCCOMB_X36_Y24_N14
\u_kirsch|sub3_sub10_22i34|ix23445z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub3_sub10_22i34|nx23445z22\ = CARRY((\u_kirsch|r12_2_\ & (\u_kirsch|r11_2_\ & !\u_kirsch|sub3_sub10_22i34|nx23445z25\)) # (!\u_kirsch|r12_2_\ & ((\u_kirsch|r11_2_\) # (!\u_kirsch|sub3_sub10_22i34|nx23445z25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r12_2_\,
	datab => \u_kirsch|r11_2_\,
	datad => VCC,
	cin => \u_kirsch|sub3_sub10_22i34|nx23445z25\,
	cout => \u_kirsch|sub3_sub10_22i34|nx23445z22\);

-- Location: LCCOMB_X36_Y24_N16
\u_kirsch|sub3_sub10_22i34|ix23445z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub3_sub10_22i34|nx23445z19\ = CARRY((\u_kirsch|r12_3_\ & ((!\u_kirsch|sub3_sub10_22i34|nx23445z22\) # (!\u_kirsch|r11_3_\))) # (!\u_kirsch|r12_3_\ & (!\u_kirsch|r11_3_\ & !\u_kirsch|sub3_sub10_22i34|nx23445z22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r12_3_\,
	datab => \u_kirsch|r11_3_\,
	datad => VCC,
	cin => \u_kirsch|sub3_sub10_22i34|nx23445z22\,
	cout => \u_kirsch|sub3_sub10_22i34|nx23445z19\);

-- Location: LCCOMB_X36_Y24_N18
\u_kirsch|sub3_sub10_22i34|ix23445z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub3_sub10_22i34|nx23445z16\ = CARRY((\u_kirsch|r12_4_\ & (\u_kirsch|r11_4_\ & !\u_kirsch|sub3_sub10_22i34|nx23445z19\)) # (!\u_kirsch|r12_4_\ & ((\u_kirsch|r11_4_\) # (!\u_kirsch|sub3_sub10_22i34|nx23445z19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r12_4_\,
	datab => \u_kirsch|r11_4_\,
	datad => VCC,
	cin => \u_kirsch|sub3_sub10_22i34|nx23445z19\,
	cout => \u_kirsch|sub3_sub10_22i34|nx23445z16\);

-- Location: LCCOMB_X36_Y24_N20
\u_kirsch|sub3_sub10_22i34|ix23445z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub3_sub10_22i34|nx23445z13\ = CARRY((\u_kirsch|r11_5_\ & (\u_kirsch|r12_5_\ & !\u_kirsch|sub3_sub10_22i34|nx23445z16\)) # (!\u_kirsch|r11_5_\ & ((\u_kirsch|r12_5_\) # (!\u_kirsch|sub3_sub10_22i34|nx23445z16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r11_5_\,
	datab => \u_kirsch|r12_5_\,
	datad => VCC,
	cin => \u_kirsch|sub3_sub10_22i34|nx23445z16\,
	cout => \u_kirsch|sub3_sub10_22i34|nx23445z13\);

-- Location: LCCOMB_X36_Y24_N22
\u_kirsch|sub3_sub10_22i34|ix23445z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub3_sub10_22i34|nx23445z10\ = CARRY((\u_kirsch|r12_6_\ & (\u_kirsch|r11_6_\ & !\u_kirsch|sub3_sub10_22i34|nx23445z13\)) # (!\u_kirsch|r12_6_\ & ((\u_kirsch|r11_6_\) # (!\u_kirsch|sub3_sub10_22i34|nx23445z13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r12_6_\,
	datab => \u_kirsch|r11_6_\,
	datad => VCC,
	cin => \u_kirsch|sub3_sub10_22i34|nx23445z13\,
	cout => \u_kirsch|sub3_sub10_22i34|nx23445z10\);

-- Location: LCCOMB_X36_Y24_N24
\u_kirsch|sub3_sub10_22i34|ix23445z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub3_sub10_22i34|nx23445z7\ = CARRY((\u_kirsch|r11_7_\ & (\u_kirsch|r12_7_\ & !\u_kirsch|sub3_sub10_22i34|nx23445z10\)) # (!\u_kirsch|r11_7_\ & ((\u_kirsch|r12_7_\) # (!\u_kirsch|sub3_sub10_22i34|nx23445z10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r11_7_\,
	datab => \u_kirsch|r12_7_\,
	datad => VCC,
	cin => \u_kirsch|sub3_sub10_22i34|nx23445z10\,
	cout => \u_kirsch|sub3_sub10_22i34|nx23445z7\);

-- Location: LCCOMB_X36_Y24_N26
\u_kirsch|sub3_sub10_22i34|ix23445z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub3_sub10_22i34|nx23445z4\ = CARRY((\u_kirsch|r12_8_\ & (\u_kirsch|r11_8_\ & !\u_kirsch|sub3_sub10_22i34|nx23445z7\)) # (!\u_kirsch|r12_8_\ & ((\u_kirsch|r11_8_\) # (!\u_kirsch|sub3_sub10_22i34|nx23445z7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r12_8_\,
	datab => \u_kirsch|r11_8_\,
	datad => VCC,
	cin => \u_kirsch|sub3_sub10_22i34|nx23445z7\,
	cout => \u_kirsch|sub3_sub10_22i34|nx23445z4\);

-- Location: LCCOMB_X36_Y24_N28
\u_kirsch|sub3_sub10_22i34|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub3_sub10_22i34|nx23445z1\ = (\u_kirsch|r12_9_\ & (\u_kirsch|sub3_sub10_22i34|nx23445z4\ & \u_kirsch|r11_9_\)) # (!\u_kirsch|r12_9_\ & ((\u_kirsch|sub3_sub10_22i34|nx23445z4\) # (\u_kirsch|r11_9_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r12_9_\,
	datad => \u_kirsch|r11_9_\,
	cin => \u_kirsch|sub3_sub10_22i34|nx23445z4\,
	combout => \u_kirsch|sub3_sub10_22i34|nx23445z1\);

-- Location: LCCOMB_X36_Y24_N0
\u_kirsch|sub3_sub10_22i34|nx23445z1~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub3_sub10_22i34|nx23445z1~_wirecell_combout\ = !\u_kirsch|sub3_sub10_22i34|nx23445z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|sub3_sub10_22i34|nx23445z1\,
	combout => \u_kirsch|sub3_sub10_22i34|nx23445z1~_wirecell_combout\);

-- Location: LCFF_X36_Y24_N1
\u_kirsch|reg_sub3_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|sub3_sub10_22i34|nx23445z1~_wirecell_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|sub3_10_\);

-- Location: LCCOMB_X46_Y24_N12
\u_kirsch|ix46679z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx46679z2\ = (\u_kirsch|v_2_\) # (\u_kirsch|v_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|v_2_\,
	datad => \u_kirsch|v_1_\,
	combout => \u_kirsch|nx46679z2\);

-- Location: LCCOMB_X46_Y25_N22
\u_kirsch|ix46679z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx46679z1\ = (\u_kirsch|nx46679z2\ & (((\u_kirsch|dir4_2_\)))) # (!\u_kirsch|nx46679z2\ & ((\u_kirsch|nx24302z2\ & (\u_kirsch|sub1_8_\)) # (!\u_kirsch|nx24302z2\ & ((\u_kirsch|dir4_2_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|sub1_8_\,
	datab => \u_kirsch|nx46679z2\,
	datac => \u_kirsch|dir4_2_\,
	datad => \u_kirsch|nx24302z2\,
	combout => \u_kirsch|nx46679z1\);

-- Location: LCFF_X46_Y25_N23
\u_kirsch|reg_dir4_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx46679z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|dir4_2_\);

-- Location: LCCOMB_X46_Y25_N0
\u_kirsch|ix44114z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx44114z2\ = (\u_kirsch|sub3_10_\ & (\u_kirsch|dir6_2_\)) # (!\u_kirsch|sub3_10_\ & (((\u_kirsch|dir4_2_\) # (!\u_kirsch|v_6_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|dir6_2_\,
	datab => \u_kirsch|v_6_\,
	datac => \u_kirsch|sub3_10_\,
	datad => \u_kirsch|dir4_2_\,
	combout => \u_kirsch|nx44114z2\);

-- Location: LCCOMB_X46_Y25_N26
\u_kirsch|ix44114z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx44114z1\ = (\u_kirsch|nx44114z2\ & ((\u_kirsch|sub3_10_\) # ((\u_kirsch|v_6_\) # (\u_kirsch|dir7_2_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|sub3_10_\,
	datab => \u_kirsch|v_6_\,
	datac => \u_kirsch|dir7_2_\,
	datad => \u_kirsch|nx44114z2\,
	combout => \u_kirsch|nx44114z1\);

-- Location: LCFF_X46_Y25_N27
\u_kirsch|reg_dir7_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx44114z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|dir7_2_\);

-- Location: LCCOMB_X46_Y25_N28
\u_kirsch|v_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|v_7_~feeder_combout\ = \u_kirsch|v_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|v_6_\,
	combout => \u_kirsch|v_7_~feeder_combout\);

-- Location: LCFF_X46_Y25_N29
\u_kirsch|reg_v_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|v_7_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|v_7_\);

-- Location: LCCOMB_X46_Y25_N8
\u_kirsch|ix61892z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|o_dir_2_\ = (\u_kirsch|o_edge\ & (\u_kirsch|dir7_2_\ & \u_kirsch|v_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|o_edge\,
	datab => \u_kirsch|dir7_2_\,
	datad => \u_kirsch|v_7_\,
	combout => \u_kirsch|o_dir_2_\);

-- Location: LCCOMB_X51_Y24_N10
\u_kirsch|ix6176z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx6176z1\ = ((\u_uw_uart|o_pixavail\ & ((\u_kirsch|end_of_img\) # (\u_kirsch|nx17322z2\)))) # (!\nrst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datab => \u_kirsch|end_of_img\,
	datac => \u_kirsch|nx17322z2\,
	datad => \nrst~combout\,
	combout => \u_kirsch|nx6176z1\);

-- Location: LCFF_X51_Y24_N25
\u_kirsch|reg_end_of_img\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx17322z2\,
	sclr => \ALT_INV_nrst~combout\,
	ena => \u_kirsch|nx6176z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|end_of_img\);

-- Location: LCCOMB_X53_Y24_N10
\u_kirsch|o_mode_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|o_mode_1_~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_kirsch|o_mode_1_~feeder_combout\);

-- Location: LCFF_X53_Y24_N11
\u_kirsch|reg_mode_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|o_mode_1_~feeder_combout\,
	sclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|o_mode_1_\);

-- Location: LCCOMB_X49_Y23_N0
\u_kirsch|ix26373z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx26373z2\ = (!\u_kirsch|end_of_img\ & (((\u_kirsch|v_0_\) # (!\u_kirsch|o_mode_1_\)) # (!\u_kirsch|nx15976z1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx15976z1\,
	datab => \u_kirsch|end_of_img\,
	datac => \u_kirsch|v_0_\,
	datad => \u_kirsch|o_mode_1_\,
	combout => \u_kirsch|nx26373z2\);

-- Location: LCCOMB_X53_Y24_N0
\u_kirsch|ix26373z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx26373z1\ = ((!\u_kirsch|o_mode_1_\ & (\nrst~combout\ & !\u_kirsch|nx15976z1\))) # (!\u_kirsch|nx26373z2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|o_mode_1_\,
	datab => \nrst~combout\,
	datac => \u_kirsch|nx15976z1\,
	datad => \u_kirsch|nx26373z2\,
	combout => \u_kirsch|nx26373z1\);

-- Location: LCFF_X53_Y24_N1
\u_kirsch|reg_mode_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx26373z1\,
	sclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|nx15976z1\);

-- Location: LCCOMB_X54_Y25_N0
\u_uw_uart|ix36748z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx36748z2\ = (\u_uw_uart|ack\ & (((!\u_kirsch|nx15976z1\ & !\u_kirsch|o_mode_1_\)))) # (!\u_uw_uart|ack\ & (((!\u_kirsch|nx15976z1\ & !\u_kirsch|o_mode_1_\)) # (!\u_uw_uart|o_pixavail\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|ack\,
	datab => \u_uw_uart|o_pixavail\,
	datac => \u_kirsch|nx15976z1\,
	datad => \u_kirsch|o_mode_1_\,
	combout => \u_uw_uart|nx36748z2\);

-- Location: LCCOMB_X49_Y24_N28
\u_kirsch|ix20813z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx20813z7\ = (\u_kirsch|modgen_counter_x|nx58250z9\) # ((\u_kirsch|modgen_counter_x|nx58250z11\) # ((\u_kirsch|modgen_counter_x|nx58250z13\ & \u_kirsch|modgen_counter_x|nx58250z15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_x|nx58250z13\,
	datab => \u_kirsch|modgen_counter_x|nx58250z15\,
	datac => \u_kirsch|modgen_counter_x|nx58250z9\,
	datad => \u_kirsch|modgen_counter_x|nx58250z11\,
	combout => \u_kirsch|nx20813z7\);

-- Location: LCCOMB_X49_Y24_N26
\u_kirsch|ix20813z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx20813z6\ = (\u_kirsch|modgen_counter_x|nx58250z3\) # ((\u_kirsch|modgen_counter_x|nx58250z7\) # (\u_kirsch|modgen_counter_x|nx58250z5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|modgen_counter_x|nx58250z3\,
	datac => \u_kirsch|modgen_counter_x|nx58250z7\,
	datad => \u_kirsch|modgen_counter_x|nx58250z5\,
	combout => \u_kirsch|nx20813z6\);

-- Location: LCCOMB_X49_Y24_N30
\u_kirsch|ix20813z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx20813z5\ = (\u_kirsch|v_6_\ & (\u_kirsch|modgen_counter_o_row|nx58250z13\ & ((\u_kirsch|nx20813z7\) # (\u_kirsch|nx20813z6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_6_\,
	datab => \u_kirsch|nx20813z7\,
	datac => \u_kirsch|modgen_counter_o_row|nx58250z13\,
	datad => \u_kirsch|nx20813z6\,
	combout => \u_kirsch|nx20813z5\);

-- Location: LCCOMB_X38_Y24_N28
\u_kirsch|ix20813z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx20813z2\ = (\u_kirsch|v_6_\ & ((\u_kirsch|modgen_counter_o_row|nx58250z5\) # ((\u_kirsch|modgen_counter_o_row|nx58250z3\) # (\u_kirsch|modgen_counter_o_row|nx1041z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_o_row|nx58250z5\,
	datab => \u_kirsch|modgen_counter_o_row|nx58250z3\,
	datac => \u_kirsch|v_6_\,
	datad => \u_kirsch|modgen_counter_o_row|nx1041z1\,
	combout => \u_kirsch|nx20813z2\);

-- Location: LCCOMB_X49_Y24_N0
\u_kirsch|ix20813z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx20813z4\ = (\u_kirsch|modgen_counter_o_row|nx58250z13\ & (\u_kirsch|v_6_\ & ((\u_kirsch|modgen_counter_o_row|nx58250z15\) # (\u_kirsch|modgen_counter_x|nx1041z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_o_row|nx58250z15\,
	datab => \u_kirsch|modgen_counter_x|nx1041z1\,
	datac => \u_kirsch|modgen_counter_o_row|nx58250z13\,
	datad => \u_kirsch|v_6_\,
	combout => \u_kirsch|nx20813z4\);

-- Location: LCCOMB_X49_Y24_N2
\u_kirsch|ix20813z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx20813z1\ = (\u_kirsch|nx20813z3\) # ((\u_kirsch|nx20813z5\) # ((\u_kirsch|nx20813z2\) # (\u_kirsch|nx20813z4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx20813z3\,
	datab => \u_kirsch|nx20813z5\,
	datac => \u_kirsch|nx20813z2\,
	datad => \u_kirsch|nx20813z4\,
	combout => \u_kirsch|nx20813z1\);

-- Location: LCFF_X49_Y24_N3
\u_kirsch|reg_output_valid\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx20813z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|o_valid\);

-- Location: LCCOMB_X53_Y24_N14
\u_uw_uart|i_uarts|ix15376z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx15376z1\ = (\u_uw_uart|i_uarts|RxFSM_6_\) # ((!\u_uw_uart|i_uarts|RxRDY\ & \u_uw_uart|i_uarts|RxErr\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|RxRDY\,
	datac => \u_uw_uart|i_uarts|RxErr\,
	datad => \u_uw_uart|i_uarts|RxFSM_6_\,
	combout => \u_uw_uart|i_uarts|nx15376z1\);

-- Location: LCFF_X53_Y24_N15
\u_uw_uart|i_uarts|reg_RxErr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx15376z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxErr\);

-- Location: LCCOMB_X54_Y25_N12
\u_kirsch|ix11375z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx11375z1\ = (!\u_kirsch|nx15976z1\ & !\u_kirsch|o_mode_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|nx15976z1\,
	datad => \u_kirsch|o_mode_1_\,
	combout => \u_kirsch|nx11375z1\);

-- Location: LCCOMB_X54_Y25_N14
\u_uw_uart|ix40736z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx40736z5\ = (\u_kirsch|nx11375z1\) # ((!\u_uw_uart|ack\ & (!\u_uw_uart|o_pixavail\ & \u_uw_uart|i_uarts|RxErr\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|ack\,
	datab => \u_uw_uart|o_pixavail\,
	datac => \u_uw_uart|i_uarts|RxErr\,
	datad => \u_kirsch|nx11375z1\,
	combout => \u_uw_uart|nx40736z5\);

-- Location: LCCOMB_X55_Y25_N0
\u_uw_uart|modgen_counter_waitcount|ix22081z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx51271z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z31\ $ (VCC)
-- \u_uw_uart|modgen_counter_waitcount|nx22081z30\ = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z31\,
	datad => VCC,
	combout => \u_uw_uart|modgen_counter_waitcount|nx51271z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z30\);

-- Location: LCCOMB_X54_Y25_N4
\u_uw_uart|ix33354z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx33354z2\ = (\u_uw_uart|nx39480z2\) # ((\u_kirsch|o_valid\) # (!\nrst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|nx39480z2\,
	datab => \u_kirsch|o_valid\,
	datad => \nrst~combout\,
	combout => \u_uw_uart|nx33354z2\);

-- Location: LCCOMB_X53_Y25_N14
\u_uw_uart|ix39480z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z1\ = (!\u_uw_uart|nx39480z2\ & (!\u_kirsch|o_valid\ & ((\u_uw_uart|o_pixavail\) # (\u_uw_uart|ack\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datab => \u_uw_uart|nx39480z2\,
	datac => \u_uw_uart|ack\,
	datad => \u_kirsch|o_valid\,
	combout => \u_uw_uart|nx39480z1\);

-- Location: LCFF_X53_Y25_N15
\u_uw_uart|reg_ack\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx39480z1\,
	sclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|ack\);

-- Location: LCCOMB_X54_Y25_N30
\u_uw_uart|ix33354z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx33354z1\ = ((\u_uw_uart|o_pixavail\) # (\u_uw_uart|ack\)) # (!\nrst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nrst~combout\,
	datab => \u_uw_uart|o_pixavail\,
	datad => \u_uw_uart|ack\,
	combout => \u_uw_uart|nx33354z1\);

-- Location: LCFF_X55_Y25_N1
\u_uw_uart|modgen_counter_waitcount|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx51271z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z31\);

-- Location: LCCOMB_X55_Y25_N2
\u_uw_uart|modgen_counter_waitcount|ix22081z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx52268z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z29\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z30\)) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z29\ & 
-- ((\u_uw_uart|modgen_counter_waitcount|nx22081z30\) # (GND)))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z28\ = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z30\) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z29\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z30\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx52268z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z28\);

-- Location: LCFF_X55_Y25_N3
\u_uw_uart|modgen_counter_waitcount|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx52268z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z29\);

-- Location: LCCOMB_X55_Y25_N4
\u_uw_uart|modgen_counter_waitcount|ix22081z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx53265z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z27\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z28\ $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z27\ & 
-- (!\u_uw_uart|modgen_counter_waitcount|nx22081z28\ & VCC))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z26\ = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z27\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z27\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z28\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx53265z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z26\);

-- Location: LCFF_X55_Y25_N5
\u_uw_uart|modgen_counter_waitcount|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx53265z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z27\);

-- Location: LCCOMB_X55_Y25_N8
\u_uw_uart|modgen_counter_waitcount|ix22081z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx55259z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z23\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z24\ $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z23\ & 
-- (!\u_uw_uart|modgen_counter_waitcount|nx22081z24\ & VCC))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z22\ = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z23\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z23\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z24\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx55259z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z22\);

-- Location: LCFF_X55_Y25_N9
\u_uw_uart|modgen_counter_waitcount|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx55259z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z23\);

-- Location: LCCOMB_X55_Y25_N12
\u_uw_uart|modgen_counter_waitcount|ix22081z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx57253z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z19\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z20\ $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z19\ & 
-- (!\u_uw_uart|modgen_counter_waitcount|nx22081z20\ & VCC))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z18\ = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z19\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z19\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z20\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx57253z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z18\);

-- Location: LCCOMB_X55_Y25_N14
\u_uw_uart|modgen_counter_waitcount|ix22081z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx58250z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z17\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z18\)) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z17\ & 
-- ((\u_uw_uart|modgen_counter_waitcount|nx22081z18\) # (GND)))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z16\ = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z18\) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z17\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z18\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx58250z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z16\);

-- Location: LCFF_X55_Y25_N15
\u_uw_uart|modgen_counter_waitcount|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx58250z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z17\);

-- Location: LCCOMB_X55_Y25_N18
\u_uw_uart|modgen_counter_waitcount|ix22081z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx60244z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z13\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z14\)) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z13\ & 
-- ((\u_uw_uart|modgen_counter_waitcount|nx22081z14\) # (GND)))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z12\ = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z14\) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z13\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z14\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx60244z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z12\);

-- Location: LCFF_X55_Y25_N19
\u_uw_uart|modgen_counter_waitcount|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx60244z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z13\);

-- Location: LCCOMB_X55_Y25_N22
\u_uw_uart|modgen_counter_waitcount|ix22081z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx18093z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z9\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z10\)) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z9\ & ((\u_uw_uart|modgen_counter_waitcount|nx22081z10\) 
-- # (GND)))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z8\ = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z10\) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z9\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z10\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx18093z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z8\);

-- Location: LCFF_X55_Y25_N23
\u_uw_uart|modgen_counter_waitcount|reg_q_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx18093z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z9\);

-- Location: LCCOMB_X55_Y25_N24
\u_uw_uart|modgen_counter_waitcount|ix22081z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx19090z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z7\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z8\ $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z7\ & 
-- (!\u_uw_uart|modgen_counter_waitcount|nx22081z8\ & VCC))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z6\ = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z7\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z7\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z8\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx19090z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z6\);

-- Location: LCFF_X55_Y25_N25
\u_uw_uart|modgen_counter_waitcount|reg_q_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx19090z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z7\);

-- Location: LCCOMB_X55_Y25_N26
\u_uw_uart|modgen_counter_waitcount|ix22081z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx20087z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z5\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z6\)) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z5\ & ((\u_uw_uart|modgen_counter_waitcount|nx22081z6\) # 
-- (GND)))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z4\ = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z6\) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z5\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z6\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx20087z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z4\);

-- Location: LCFF_X55_Y25_N27
\u_uw_uart|modgen_counter_waitcount|reg_q_13_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx20087z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z5\);

-- Location: LCCOMB_X55_Y25_N28
\u_uw_uart|modgen_counter_waitcount|ix22081z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx21084z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z3\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z4\ $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z3\ & 
-- (!\u_uw_uart|modgen_counter_waitcount|nx22081z4\ & VCC))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z2\ = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z3\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z3\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z4\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx21084z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z2\);

-- Location: LCFF_X55_Y25_N29
\u_uw_uart|modgen_counter_waitcount|reg_q_14_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx21084z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z3\);

-- Location: LCCOMB_X55_Y25_N30
\u_uw_uart|modgen_counter_waitcount|ix22081z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx22081z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z2\ $ (\u_uw_uart|modgen_counter_waitcount|nx64508z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|modgen_counter_waitcount|nx64508z1\,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z2\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx22081z1\);

-- Location: LCFF_X55_Y25_N31
\u_uw_uart|modgen_counter_waitcount|reg_q_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx22081z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx64508z1\);

-- Location: LCCOMB_X54_Y25_N8
\u_uw_uart|ix39480z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z3\ = (!\u_uw_uart|modgen_counter_waitcount|nx22081z5\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z7\ & (!\u_uw_uart|modgen_counter_waitcount|nx64508z1\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z5\,
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z7\,
	datac => \u_uw_uart|modgen_counter_waitcount|nx64508z1\,
	datad => \u_uw_uart|modgen_counter_waitcount|nx22081z3\,
	combout => \u_uw_uart|nx39480z3\);

-- Location: LCFF_X55_Y25_N13
\u_uw_uart|modgen_counter_waitcount|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx57253z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z19\);

-- Location: LCCOMB_X54_Y25_N20
\u_uw_uart|ix39480z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z5\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z21\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z17\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z23\ & \u_uw_uart|modgen_counter_waitcount|nx22081z19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z21\,
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z17\,
	datac => \u_uw_uart|modgen_counter_waitcount|nx22081z23\,
	datad => \u_uw_uart|modgen_counter_waitcount|nx22081z19\,
	combout => \u_uw_uart|nx39480z5\);

-- Location: LCCOMB_X54_Y25_N6
\u_uw_uart|ix39480z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z6\ = (!\u_uw_uart|modgen_counter_waitcount|nx22081z25\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z31\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z29\ & \u_uw_uart|modgen_counter_waitcount|nx22081z27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z25\,
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z31\,
	datac => \u_uw_uart|modgen_counter_waitcount|nx22081z29\,
	datad => \u_uw_uart|modgen_counter_waitcount|nx22081z27\,
	combout => \u_uw_uart|nx39480z6\);

-- Location: LCCOMB_X54_Y25_N24
\u_uw_uart|ix39480z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z2\ = (\u_uw_uart|nx39480z4\ & (\u_uw_uart|nx39480z3\ & (\u_uw_uart|nx39480z5\ & \u_uw_uart|nx39480z6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|nx39480z4\,
	datab => \u_uw_uart|nx39480z3\,
	datac => \u_uw_uart|nx39480z5\,
	datad => \u_uw_uart|nx39480z6\,
	combout => \u_uw_uart|nx39480z2\);

-- Location: LCCOMB_X53_Y25_N18
\u_uw_uart|ix40736z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx40736z3\ = (\u_uw_uart|nx40736z5\) # ((\u_uw_uart|nx40736z4\ & ((\u_kirsch|o_valid\) # (\u_uw_uart|nx39480z2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|nx40736z4\,
	datab => \u_kirsch|o_valid\,
	datac => \u_uw_uart|nx40736z5\,
	datad => \u_uw_uart|nx39480z2\,
	combout => \u_uw_uart|nx40736z3\);

-- Location: LCCOMB_X54_Y25_N26
\u_uw_uart|ix40736z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx40736z2\ = (\nrst~combout\ & \u_uw_uart|nx40736z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nrst~combout\,
	datad => \u_uw_uart|nx40736z3\,
	combout => \u_uw_uart|nx40736z2\);

-- Location: LCFF_X46_Y25_N9
\u_uw_uart|reg_mdata_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|o_dir_2_\,
	sdata => VCC,
	sclr => \u_uw_uart|nx36748z2\,
	sload => \u_kirsch|ALT_INV_o_valid\,
	ena => \u_uw_uart|nx40736z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_3_\);

-- Location: LCCOMB_X53_Y25_N10
\u_uw_uart|sdout_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_3_~feeder_combout\ = \u_uw_uart|mdata_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|mdata_3_\,
	combout => \u_uw_uart|sdout_3_~feeder_combout\);

-- Location: LCFF_X53_Y25_N17
\u_uw_uart|reg_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx38868z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|state\);

-- Location: LCFF_X53_Y25_N19
\u_uw_uart|reg_dsend\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx40736z3\,
	sclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|dsend\);

-- Location: LCCOMB_X53_Y25_N16
\u_uw_uart|ix38868z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx38868z1\ = (!\u_uw_uart|state\ & \u_uw_uart|dsend\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|state\,
	datad => \u_uw_uart|dsend\,
	combout => \u_uw_uart|nx38868z1\);

-- Location: LCFF_X53_Y25_N11
\u_uw_uart|reg_sdout_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_3_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|nx38868z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_3_\);

-- Location: LCCOMB_X46_Y25_N6
\u_uw_uart|ix40736z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|mdata_7n5ss1_6_\ = (!\u_kirsch|nx11375z1\ & (((!\u_uw_uart|ack\ & !\u_uw_uart|o_pixavail\)) # (!\u_kirsch|o_valid\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|ack\,
	datab => \u_uw_uart|o_pixavail\,
	datac => \u_kirsch|nx11375z1\,
	datad => \u_kirsch|o_valid\,
	combout => \u_uw_uart|mdata_7n5ss1_6_\);

-- Location: LCFF_X46_Y25_N7
\u_uw_uart|reg_mdata_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|mdata_7n5ss1_6_\,
	ena => \u_uw_uart|nx40736z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_7_\);

-- Location: LCCOMB_X53_Y25_N22
\u_uw_uart|sdout_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_7_~feeder_combout\ = \u_uw_uart|mdata_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|mdata_7_\,
	combout => \u_uw_uart|sdout_7_~feeder_combout\);

-- Location: LCFF_X53_Y25_N23
\u_uw_uart|reg_sdout_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_7_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|nx38868z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_7_\);

-- Location: LCCOMB_X49_Y25_N0
\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx51271z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23\ $ (VCC)
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22\ = CARRY(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23\,
	datad => VCC,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx51271z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22\);

-- Location: LCFF_X49_Y25_N1
\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx51271z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23\);

-- Location: LCCOMB_X49_Y25_N2
\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx52268z1\ = (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\ & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22\)) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\ & 
-- ((\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22\) # (GND)))
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20\ = CARRY((!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22\) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx52268z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20\);

-- Location: LCFF_X49_Y25_N3
\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx52268z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\);

-- Location: LCCOMB_X49_Y25_N4
\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx53265z1\ = (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\ & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20\ $ (GND))) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\ & 
-- (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20\ & VCC))
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18\ = CARRY((\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx53265z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18\);

-- Location: LCFF_X49_Y25_N5
\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx53265z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\);

-- Location: LCCOMB_X49_Y25_N6
\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx54262z1\ = (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\ & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18\)) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\ & 
-- ((\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18\) # (GND)))
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16\ = CARRY((!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18\) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx54262z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16\);

-- Location: LCCOMB_X49_Y25_N8
\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx55259z1\ = (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\ & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16\ $ (GND))) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\ & 
-- (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16\ & VCC))
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14\ = CARRY((\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx55259z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14\);

-- Location: LCFF_X49_Y25_N9
\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx55259z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\);

-- Location: LCCOMB_X49_Y25_N10
\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx56256z1\ = (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\ & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14\)) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\ & 
-- ((\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14\) # (GND)))
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12\ = CARRY((!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14\) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx56256z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12\);

-- Location: LCCOMB_X49_Y25_N14
\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx58250z1\ = (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\ & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10\)) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\ & 
-- ((\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10\) # (GND)))
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8\ = CARRY((!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10\) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx58250z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8\);

-- Location: LCFF_X49_Y25_N15
\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx58250z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\);

-- Location: LCCOMB_X49_Y25_N16
\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx59247z1\ = (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\ & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8\ $ (GND))) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\ & 
-- (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8\ & VCC))
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6\ = CARRY((\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx59247z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6\);

-- Location: LCCOMB_X49_Y25_N18
\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx60244z1\ = (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\ & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6\)) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\ & 
-- ((\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6\) # (GND)))
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4\ = CARRY((!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6\) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx60244z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4\);

-- Location: LCFF_X49_Y25_N19
\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx60244z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\);

-- Location: LCCOMB_X49_Y25_N20
\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx17096z1\ = (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\ & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4\ $ (GND))) # (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\ & 
-- (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4\ & VCC))
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2\ = CARRY((\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx17096z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2\);

-- Location: LCCOMB_X49_Y25_N22
\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2\ $ (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1\,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z1\);

-- Location: LCFF_X49_Y25_N23
\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1\);

-- Location: LCFF_X49_Y25_N21
\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx17096z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\);

-- Location: LCCOMB_X50_Y25_N30
\u_uw_uart|i_uarts|ix32400z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z3\ = (\u_uw_uart|i_uarts|TxDivisor_5_\ & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1\ & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDivisor_5_\,
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1\,
	datac => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\,
	datad => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\,
	combout => \u_uw_uart|i_uarts|nx32400z3\);

-- Location: LCFF_X49_Y25_N17
\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx59247z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\);

-- Location: LCFF_X49_Y25_N11
\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx56256z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\);

-- Location: LCCOMB_X50_Y25_N8
\u_uw_uart|i_uarts|ix32400z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z4\ = (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\ & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\ & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\ & \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\,
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\,
	datac => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\,
	datad => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\,
	combout => \u_uw_uart|i_uarts|nx32400z4\);

-- Location: LCFF_X49_Y25_N7
\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx54262z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\);

-- Location: LCCOMB_X50_Y25_N10
\u_uw_uart|i_uarts|ix32400z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z5\ = (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\ & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\ & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\,
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\,
	datac => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\,
	datad => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\,
	combout => \u_uw_uart|i_uarts|nx32400z5\);

-- Location: LCCOMB_X50_Y25_N28
\u_uw_uart|i_uarts|ix32400z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z2\ = (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23\ & (\u_uw_uart|i_uarts|nx32400z3\ & (\u_uw_uart|i_uarts|nx32400z4\ & \u_uw_uart|i_uarts|nx32400z5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23\,
	datab => \u_uw_uart|i_uarts|nx32400z3\,
	datac => \u_uw_uart|i_uarts|nx32400z4\,
	datad => \u_uw_uart|i_uarts|nx32400z5\,
	combout => \u_uw_uart|i_uarts|nx32400z2\);

-- Location: LCCOMB_X50_Y25_N24
\u_uw_uart|i_uarts|ix32400z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z7\ = (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\ & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\ & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\,
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\,
	datac => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\,
	datad => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\,
	combout => \u_uw_uart|i_uarts|nx32400z7\);

-- Location: LCCOMB_X50_Y25_N2
\u_uw_uart|i_uarts|ix32400z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z9\ = (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\,
	datad => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\,
	combout => \u_uw_uart|i_uarts|nx32400z9\);

-- Location: LCCOMB_X50_Y25_N12
\u_uw_uart|i_uarts|ix32400z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z8\ = (!\u_uw_uart|i_uarts|TxDivisor_5_\ & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1\ & (!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23\ & \u_uw_uart|i_uarts|nx32400z9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDivisor_5_\,
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1\,
	datac => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23\,
	datad => \u_uw_uart|i_uarts|nx32400z9\,
	combout => \u_uw_uart|i_uarts|nx32400z8\);

-- Location: LCCOMB_X50_Y25_N0
\u_uw_uart|i_uarts|ix32400z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z1\ = (\u_uw_uart|i_uarts|nx32400z2\) # ((\u_uw_uart|i_uarts|nx32400z6\ & (\u_uw_uart|i_uarts|nx32400z7\ & \u_uw_uart|i_uarts|nx32400z8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx32400z6\,
	datab => \u_uw_uart|i_uarts|nx32400z2\,
	datac => \u_uw_uart|i_uarts|nx32400z7\,
	datad => \u_uw_uart|i_uarts|nx32400z8\,
	combout => \u_uw_uart|i_uarts|nx32400z1\);

-- Location: LCFF_X50_Y25_N1
\u_uw_uart|i_uarts|reg_TopTx\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx32400z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TopTx\);

-- Location: LCCOMB_X50_Y25_N26
\u_uw_uart|i_uarts|ix48926z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx48926z1\ = (\u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|i_uarts|TxBitCnt_0_\ $ (((!\u_uw_uart|i_uarts|TxFSM_0_\ & \u_uw_uart|i_uarts|TopTx\))))) # (!\u_uw_uart|i_uarts|TxFSM_1_\ & ((\u_uw_uart|i_uarts|TxBitCnt_0_\) # 
-- ((\u_uw_uart|i_uarts|TxFSM_0_\ & \u_uw_uart|i_uarts|TopTx\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxFSM_1_\,
	datab => \u_uw_uart|i_uarts|TxFSM_0_\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_0_\,
	datad => \u_uw_uart|i_uarts|TopTx\,
	combout => \u_uw_uart|i_uarts|nx48926z1\);

-- Location: LCFF_X50_Y25_N27
\u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx48926z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxBitCnt_0_\);

-- Location: LCCOMB_X50_Y25_N16
\u_uw_uart|i_uarts|ix50920z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx50920z2\ = (\u_uw_uart|i_uarts|TopTx\ & !\u_uw_uart|i_uarts|TxFSM_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TopTx\,
	datad => \u_uw_uart|i_uarts|TxFSM_1_\,
	combout => \u_uw_uart|i_uarts|nx50920z2\);

-- Location: LCCOMB_X51_Y25_N24
\u_uw_uart|i_uarts|ix49923z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx49923z1\ = (\u_uw_uart|i_uarts|nx51917z2\ & (!\u_uw_uart|i_uarts|nx50920z2\ & (\u_uw_uart|i_uarts|TxBitCnt_1_\ $ (!\u_uw_uart|i_uarts|TxBitCnt_0_\)))) # (!\u_uw_uart|i_uarts|nx51917z2\ & (((\u_uw_uart|i_uarts|TxBitCnt_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx51917z2\,
	datab => \u_uw_uart|i_uarts|nx50920z2\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_1_\,
	datad => \u_uw_uart|i_uarts|TxBitCnt_0_\,
	combout => \u_uw_uart|i_uarts|nx49923z1\);

-- Location: LCFF_X51_Y25_N25
\u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx49923z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxBitCnt_1_\);

-- Location: LCCOMB_X50_Y25_N18
\u_uw_uart|i_uarts|ix50920z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx50920z3\ = (\u_uw_uart|i_uarts|TxBitCnt_0_\) # (\u_uw_uart|i_uarts|TxBitCnt_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxBitCnt_0_\,
	datad => \u_uw_uart|i_uarts|TxBitCnt_1_\,
	combout => \u_uw_uart|i_uarts|nx50920z3\);

-- Location: LCCOMB_X50_Y25_N14
\u_uw_uart|i_uarts|ix51917z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx51917z2\ = (\u_uw_uart|i_uarts|TopTx\ & (\u_uw_uart|i_uarts|TxFSM_0_\ $ (\u_uw_uart|i_uarts|TxFSM_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TopTx\,
	datac => \u_uw_uart|i_uarts|TxFSM_0_\,
	datad => \u_uw_uart|i_uarts|TxFSM_1_\,
	combout => \u_uw_uart|i_uarts|nx51917z2\);

-- Location: LCCOMB_X53_Y24_N6
\u_uw_uart|i_uarts|ix50920z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx50920z1\ = (\u_uw_uart|i_uarts|nx51917z2\ & (!\u_uw_uart|i_uarts|nx50920z2\ & (\u_uw_uart|i_uarts|nx50920z3\ $ (!\u_uw_uart|i_uarts|TxBitCnt_2_\)))) # (!\u_uw_uart|i_uarts|nx51917z2\ & (((\u_uw_uart|i_uarts|TxBitCnt_2_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx50920z2\,
	datab => \u_uw_uart|i_uarts|nx50920z3\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_2_\,
	datad => \u_uw_uart|i_uarts|nx51917z2\,
	combout => \u_uw_uart|i_uarts|nx50920z1\);

-- Location: LCFF_X53_Y24_N7
\u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx50920z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxBitCnt_2_\);

-- Location: LCCOMB_X53_Y25_N30
\u_uw_uart|i_uarts|ix4608z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx4608z3\ = (\u_uw_uart|i_uarts|TxBitCnt_3_\) # (((\u_uw_uart|i_uarts|TxBitCnt_1_\) # (\u_uw_uart|i_uarts|TxBitCnt_2_\)) # (!\u_uw_uart|i_uarts|TxBitCnt_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxBitCnt_3_\,
	datab => \u_uw_uart|i_uarts|TxBitCnt_0_\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_1_\,
	datad => \u_uw_uart|i_uarts|TxBitCnt_2_\,
	combout => \u_uw_uart|i_uarts|nx4608z3\);

-- Location: LCCOMB_X53_Y25_N26
\u_uw_uart|i_uarts|ix4608z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx4608z1\ = (\u_uw_uart|i_uarts|nx4608z2\ & (((\u_uw_uart|i_uarts|TxFSM_0_\)))) # (!\u_uw_uart|i_uarts|nx4608z2\ & (!\u_uw_uart|i_uarts|TxFSM_0_\ & ((!\u_uw_uart|i_uarts|TxFSM_1_\) # (!\u_uw_uart|i_uarts|nx4608z3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx4608z2\,
	datab => \u_uw_uart|i_uarts|nx4608z3\,
	datac => \u_uw_uart|i_uarts|TxFSM_0_\,
	datad => \u_uw_uart|i_uarts|TxFSM_1_\,
	combout => \u_uw_uart|i_uarts|nx4608z1\);

-- Location: LCFF_X53_Y25_N27
\u_uw_uart|i_uarts|reg_TxFSM_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx4608z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxFSM_0_\);

-- Location: LCCOMB_X53_Y25_N0
\u_uw_uart|i_uarts|ix5605z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx5605z1\ = \u_uw_uart|i_uarts|TxFSM_1_\ $ (((\u_uw_uart|i_uarts|TopTx\ & \u_uw_uart|i_uarts|TxFSM_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TopTx\,
	datac => \u_uw_uart|i_uarts|TxFSM_1_\,
	datad => \u_uw_uart|i_uarts|TxFSM_0_\,
	combout => \u_uw_uart|i_uarts|nx5605z1\);

-- Location: LCFF_X53_Y25_N1
\u_uw_uart|i_uarts|reg_TxFSM_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx5605z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxFSM_1_\);

-- Location: LCCOMB_X51_Y25_N28
\u_uw_uart|i_uarts|ix35603z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_\ = (!\u_uw_uart|sdout_7_\ & !\u_uw_uart|i_uarts|TxFSM_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|sdout_7_\,
	datad => \u_uw_uart|i_uarts|TxFSM_1_\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_\);

-- Location: LCCOMB_X53_Y25_N2
\u_uw_uart|i_uarts|ix35603z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx35603z1\ = (!\u_uw_uart|i_uarts|TxFSM_0_\ & ((\u_uw_uart|i_uarts|TxFSM_1_\ & ((\u_uw_uart|i_uarts|TopTx\))) # (!\u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|ld_sdout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|ld_sdout\,
	datab => \u_uw_uart|i_uarts|TxFSM_0_\,
	datac => \u_uw_uart|i_uarts|TopTx\,
	datad => \u_uw_uart|i_uarts|TxFSM_1_\,
	combout => \u_uw_uart|i_uarts|nx35603z1\);

-- Location: LCFF_X51_Y25_N29
\u_uw_uart|i_uarts|reg_Tx_Reg_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx34606z1\);

-- Location: LCCOMB_X51_Y25_N26
\u_uw_uart|i_uarts|ix34606z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_7_\ = (\u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|i_uarts|nx34606z1\)) # (!\u_uw_uart|i_uarts|TxFSM_1_\ & ((!\u_uw_uart|sdout_7_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|nx34606z1\,
	datac => \u_uw_uart|sdout_7_\,
	datad => \u_uw_uart|i_uarts|TxFSM_1_\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_7_\);

-- Location: LCFF_X51_Y25_N27
\u_uw_uart|i_uarts|reg_Tx_Reg_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_7_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx33609z1\);

-- Location: LCCOMB_X46_Y25_N12
\u_uw_uart|ix38742z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|mdata_7n5ss1_4_\ = (\u_kirsch|nx11375z1\) # (((!\u_uw_uart|ack\ & !\u_uw_uart|o_pixavail\)) # (!\u_kirsch|o_valid\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|ack\,
	datab => \u_uw_uart|o_pixavail\,
	datac => \u_kirsch|nx11375z1\,
	datad => \u_kirsch|o_valid\,
	combout => \u_uw_uart|mdata_7n5ss1_4_\);

-- Location: LCFF_X46_Y25_N13
\u_uw_uart|reg_mdata_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|mdata_7n5ss1_4_\,
	ena => \u_uw_uart|nx40736z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_5_\);

-- Location: LCCOMB_X53_Y25_N20
\u_uw_uart|sdout_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_5_~feeder_combout\ = \u_uw_uart|mdata_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|mdata_5_\,
	combout => \u_uw_uart|sdout_5_~feeder_combout\);

-- Location: LCFF_X53_Y25_N21
\u_uw_uart|reg_sdout_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_5_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|nx38868z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_5_\);

-- Location: LCCOMB_X51_Y25_N4
\u_uw_uart|i_uarts|ix33609z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_6_\ = (\u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|i_uarts|nx33609z1\)) # (!\u_uw_uart|i_uarts|TxFSM_1_\ & ((!\u_uw_uart|sdout_5_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|nx33609z1\,
	datac => \u_uw_uart|sdout_5_\,
	datad => \u_uw_uart|i_uarts|TxFSM_1_\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_6_\);

-- Location: LCFF_X51_Y25_N5
\u_uw_uart|i_uarts|reg_Tx_Reg_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_6_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx32612z1\);

-- Location: LCCOMB_X51_Y25_N18
\u_uw_uart|i_uarts|ix32612z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_5_\ = (\u_uw_uart|i_uarts|TxFSM_1_\ & ((\u_uw_uart|i_uarts|nx32612z1\))) # (!\u_uw_uart|i_uarts|TxFSM_1_\ & (!\u_uw_uart|sdout_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|sdout_5_\,
	datac => \u_uw_uart|i_uarts|nx32612z1\,
	datad => \u_uw_uart|i_uarts|TxFSM_1_\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_5_\);

-- Location: LCFF_X51_Y25_N19
\u_uw_uart|i_uarts|reg_Tx_Reg_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_5_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx31615z1\);

-- Location: LCCOMB_X49_Y25_N30
\u_uw_uart|i_uarts|ix31615z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_4_\ = (\u_uw_uart|i_uarts|TxFSM_1_\ & ((\u_uw_uart|i_uarts|nx31615z1\))) # (!\u_uw_uart|i_uarts|TxFSM_1_\ & (!\u_uw_uart|sdout_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|sdout_3_\,
	datac => \u_uw_uart|i_uarts|nx31615z1\,
	datad => \u_uw_uart|i_uarts|TxFSM_1_\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_4_\);

-- Location: LCFF_X49_Y25_N31
\u_uw_uart|i_uarts|reg_Tx_Reg_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_4_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx30618z1\);

-- Location: LCCOMB_X42_Y25_N28
\u_kirsch|sub2_10_~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub2_10_~_wirecell_combout\ = !\u_kirsch|sub2_10_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|sub2_10_\,
	combout => \u_kirsch|sub2_10_~_wirecell_combout\);

-- Location: LCFF_X42_Y25_N29
\u_kirsch|reg_dir5_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|sub2_10_~_wirecell_combout\,
	ena => \u_kirsch|v_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|dir5_1_\);

-- Location: LCCOMB_X42_Y25_N18
\u_kirsch|dir5_1_~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|dir5_1_~_wirecell_combout\ = !\u_kirsch|dir5_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|dir5_1_\,
	combout => \u_kirsch|dir5_1_~_wirecell_combout\);

-- Location: LCCOMB_X38_Y24_N0
\u_kirsch|ix36692z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx36692z2\ = (\u_kirsch|sub2_10_\ & (!\u_kirsch|v_4_\ & \u_kirsch|v_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|sub2_10_\,
	datac => \u_kirsch|v_4_\,
	datad => \u_kirsch|v_5_\,
	combout => \u_kirsch|nx36692z2\);

-- Location: LCCOMB_X38_Y24_N2
\u_kirsch|ix36692z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx36692z1\ = (!\u_kirsch|v_4_\ & \u_kirsch|v_5_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|v_4_\,
	datac => \u_kirsch|v_5_\,
	combout => \u_kirsch|nx36692z1\);

-- Location: LCFF_X42_Y25_N19
\u_kirsch|reg_dir6_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|dir5_1_~_wirecell_combout\,
	sclr => \u_kirsch|nx36692z2\,
	ena => \u_kirsch|nx36692z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|nx45111z2\);

-- Location: LCCOMB_X46_Y25_N14
\u_kirsch|ix45111z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx45111z1\ = (\u_kirsch|sub3_10_\ & (((!\u_kirsch|nx45111z2\)))) # (!\u_kirsch|sub3_10_\ & (!\u_kirsch|v_6_\ & (\u_kirsch|dir7_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|sub3_10_\,
	datab => \u_kirsch|v_6_\,
	datac => \u_kirsch|dir7_1_\,
	datad => \u_kirsch|nx45111z2\,
	combout => \u_kirsch|nx45111z1\);

-- Location: LCFF_X46_Y25_N15
\u_kirsch|reg_dir7_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx45111z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|dir7_1_\);

-- Location: LCCOMB_X46_Y25_N24
\u_kirsch|ix62889z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|o_dir_1_\ = (\u_kirsch|o_edge\ & (\u_kirsch|dir7_1_\ & \u_kirsch|v_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|o_edge\,
	datab => \u_kirsch|dir7_1_\,
	datad => \u_kirsch|v_7_\,
	combout => \u_kirsch|o_dir_1_\);

-- Location: LCFF_X46_Y25_N25
\u_uw_uart|reg_mdata_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|o_dir_1_\,
	sdata => VCC,
	sclr => \u_uw_uart|nx36748z2\,
	sload => \u_kirsch|ALT_INV_o_valid\,
	ena => \u_uw_uart|nx40736z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_2_\);

-- Location: LCCOMB_X53_Y25_N24
\u_uw_uart|sdout_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_2_~feeder_combout\ = \u_uw_uart|mdata_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|mdata_2_\,
	combout => \u_uw_uart|sdout_2_~feeder_combout\);

-- Location: LCFF_X53_Y25_N25
\u_uw_uart|reg_sdout_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_2_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|nx38868z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_2_\);

-- Location: LCCOMB_X49_Y25_N28
\u_uw_uart|i_uarts|ix30618z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_3_\ = (\u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|i_uarts|nx30618z1\)) # (!\u_uw_uart|i_uarts|TxFSM_1_\ & ((!\u_uw_uart|sdout_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxFSM_1_\,
	datab => \u_uw_uart|i_uarts|nx30618z1\,
	datad => \u_uw_uart|sdout_2_\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_3_\);

-- Location: LCFF_X49_Y25_N29
\u_uw_uart|i_uarts|reg_Tx_Reg_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_3_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx29621z1\);

-- Location: LCCOMB_X46_Y25_N18
\u_kirsch|ix44685z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx44685z1\ = (\u_kirsch|nx46679z2\ & (((\u_kirsch|dir4_0_\)))) # (!\u_kirsch|nx46679z2\ & ((\u_kirsch|nx24302z2\ & (!\u_kirsch|sub1_8_\)) # (!\u_kirsch|nx24302z2\ & ((\u_kirsch|dir4_0_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|sub1_8_\,
	datab => \u_kirsch|nx46679z2\,
	datac => \u_kirsch|dir4_0_\,
	datad => \u_kirsch|nx24302z2\,
	combout => \u_kirsch|nx44685z1\);

-- Location: LCFF_X46_Y25_N19
\u_kirsch|reg_dir4_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx44685z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|dir4_0_\);

-- Location: LCCOMB_X46_Y25_N4
\u_kirsch|ix46108z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx46108z2\ = (\u_kirsch|sub3_10_\ & (!\u_kirsch|nx46108z3\)) # (!\u_kirsch|sub3_10_\ & (((\u_kirsch|dir4_0_\) # (!\u_kirsch|v_6_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx46108z3\,
	datab => \u_kirsch|v_6_\,
	datac => \u_kirsch|sub3_10_\,
	datad => \u_kirsch|dir4_0_\,
	combout => \u_kirsch|nx46108z2\);

-- Location: LCCOMB_X46_Y25_N30
\u_kirsch|ix46108z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx46108z1\ = (\u_kirsch|nx46108z2\ & ((\u_kirsch|sub3_10_\) # ((\u_kirsch|dir7_0_\) # (\u_kirsch|v_6_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|sub3_10_\,
	datab => \u_kirsch|nx46108z2\,
	datac => \u_kirsch|dir7_0_\,
	datad => \u_kirsch|v_6_\,
	combout => \u_kirsch|nx46108z1\);

-- Location: LCFF_X46_Y25_N31
\u_kirsch|reg_dir7_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx46108z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|dir7_0_\);

-- Location: LCCOMB_X46_Y25_N2
\u_kirsch|ix63886z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|o_dir_0_\ = (\u_kirsch|o_edge\ & (\u_kirsch|dir7_0_\ & \u_kirsch|v_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|o_edge\,
	datab => \u_kirsch|dir7_0_\,
	datad => \u_kirsch|v_7_\,
	combout => \u_kirsch|o_dir_0_\);

-- Location: LCFF_X46_Y25_N3
\u_uw_uart|reg_mdata_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|o_dir_0_\,
	sdata => VCC,
	sclr => \u_uw_uart|nx36748z2\,
	sload => \u_kirsch|ALT_INV_o_valid\,
	ena => \u_uw_uart|nx40736z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_1_\);

-- Location: LCCOMB_X53_Y25_N28
\u_uw_uart|sdout_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_1_~feeder_combout\ = \u_uw_uart|mdata_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|mdata_1_\,
	combout => \u_uw_uart|sdout_1_~feeder_combout\);

-- Location: LCFF_X53_Y25_N29
\u_uw_uart|reg_sdout_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_1_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|nx38868z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_1_\);

-- Location: LCCOMB_X49_Y25_N26
\u_uw_uart|i_uarts|ix29621z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_2_\ = (\u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|i_uarts|nx29621z1\)) # (!\u_uw_uart|i_uarts|TxFSM_1_\ & ((!\u_uw_uart|sdout_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxFSM_1_\,
	datab => \u_uw_uart|i_uarts|nx29621z1\,
	datad => \u_uw_uart|sdout_1_\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_2_\);

-- Location: LCFF_X49_Y25_N27
\u_uw_uart|i_uarts|reg_Tx_Reg_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_2_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx28624z1\);

-- Location: LCCOMB_X46_Y25_N16
\u_uw_uart|mdata_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|mdata_0_~feeder_combout\ = \u_kirsch|o_edge\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|o_edge\,
	combout => \u_uw_uart|mdata_0_~feeder_combout\);

-- Location: LCFF_X46_Y25_N17
\u_uw_uart|reg_mdata_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|mdata_0_~feeder_combout\,
	sdata => VCC,
	sclr => \u_uw_uart|nx36748z2\,
	sload => \u_kirsch|ALT_INV_o_valid\,
	ena => \u_uw_uart|nx40736z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_0_\);

-- Location: LCCOMB_X53_Y25_N8
\u_uw_uart|sdout_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_0_~feeder_combout\ = \u_uw_uart|mdata_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|mdata_0_\,
	combout => \u_uw_uart|sdout_0_~feeder_combout\);

-- Location: LCFF_X53_Y25_N9
\u_uw_uart|reg_sdout_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_0_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|nx38868z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_0_\);

-- Location: LCCOMB_X49_Y25_N24
\u_uw_uart|i_uarts|ix28624z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_1_\ = (\u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|i_uarts|nx28624z1\)) # (!\u_uw_uart|i_uarts|TxFSM_1_\ & ((!\u_uw_uart|sdout_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxFSM_1_\,
	datab => \u_uw_uart|i_uarts|nx28624z1\,
	datad => \u_uw_uart|sdout_0_\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_1_\);

-- Location: LCFF_X49_Y25_N25
\u_uw_uart|i_uarts|reg_Tx_Reg_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_1_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx61140z1\);

-- Location: LCCOMB_X48_Y24_N0
\u_uw_uart|i_uarts|ix61140z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Tx_Reg_14n6ss1_0_\ = (\u_uw_uart|i_uarts|TxFSM_0_\) # ((\u_uw_uart|i_uarts|nx61140z1\ & \u_uw_uart|i_uarts|TxFSM_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxFSM_0_\,
	datac => \u_uw_uart|i_uarts|nx61140z1\,
	datad => \u_uw_uart|i_uarts|TxFSM_1_\,
	combout => \u_uw_uart|i_uarts|Tx_Reg_14n6ss1_0_\);

-- Location: LCCOMB_X53_Y25_N6
\u_uw_uart|i_uarts|ix61812z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx61812z1\ = (\u_uw_uart|i_uarts|TxFSM_0_\ & (((\u_uw_uart|i_uarts|TopTx\ & !\u_uw_uart|i_uarts|TxFSM_1_\)))) # (!\u_uw_uart|i_uarts|TxFSM_0_\ & ((\u_uw_uart|i_uarts|TxFSM_1_\ & ((\u_uw_uart|i_uarts|TopTx\))) # 
-- (!\u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|ld_sdout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|ld_sdout\,
	datab => \u_uw_uart|i_uarts|TxFSM_0_\,
	datac => \u_uw_uart|i_uarts|TopTx\,
	datad => \u_uw_uart|i_uarts|TxFSM_1_\,
	combout => \u_uw_uart|i_uarts|nx61812z1\);

-- Location: LCFF_X48_Y24_N1
reg_out_txflex_obuf : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Tx_Reg_14n6ss1_0_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx61812z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx21351z2);

-- Location: LCFF_X50_Y24_N11
\u_kirsch|modgen_counter_o_row|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|modgen_counter_o_row|nx53265z1\,
	sclr => \u_kirsch|nx17322z9\,
	ena => \u_kirsch|modgen_counter_o_row|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|modgen_counter_o_row|nx58250z11\);

-- Location: LCCOMB_X1_Y24_N16
ix57590z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx57590z1 = (\u_kirsch|modgen_counter_o_row|nx58250z15\ & (!\u_kirsch|modgen_counter_o_row|nx58250z9\ & (\u_kirsch|modgen_counter_o_row|nx58250z13\ $ (!\u_kirsch|modgen_counter_o_row|nx58250z11\)))) # (!\u_kirsch|modgen_counter_o_row|nx58250z15\ & 
-- (!\u_kirsch|modgen_counter_o_row|nx58250z13\ & (\u_kirsch|modgen_counter_o_row|nx58250z9\ $ (!\u_kirsch|modgen_counter_o_row|nx58250z11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_o_row|nx58250z15\,
	datab => \u_kirsch|modgen_counter_o_row|nx58250z13\,
	datac => \u_kirsch|modgen_counter_o_row|nx58250z9\,
	datad => \u_kirsch|modgen_counter_o_row|nx58250z11\,
	combout => nx57590z1);

-- Location: LCFF_X1_Y24_N17
\reg_out_o_sevenseg_obuf_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx57590z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx41851z1);

-- Location: LCCOMB_X1_Y24_N2
ix58587z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx58587z1 = (\u_kirsch|modgen_counter_o_row|nx58250z15\ & (\u_kirsch|modgen_counter_o_row|nx58250z9\ $ (((\u_kirsch|modgen_counter_o_row|nx58250z13\) # (!\u_kirsch|modgen_counter_o_row|nx58250z11\))))) # (!\u_kirsch|modgen_counter_o_row|nx58250z15\ & 
-- (\u_kirsch|modgen_counter_o_row|nx58250z13\ & (!\u_kirsch|modgen_counter_o_row|nx58250z9\ & !\u_kirsch|modgen_counter_o_row|nx58250z11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_o_row|nx58250z15\,
	datab => \u_kirsch|modgen_counter_o_row|nx58250z13\,
	datac => \u_kirsch|modgen_counter_o_row|nx58250z9\,
	datad => \u_kirsch|modgen_counter_o_row|nx58250z11\,
	combout => nx58587z1);

-- Location: LCFF_X1_Y24_N3
\reg_out_o_sevenseg_obuf_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx58587z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx42848z1);

-- Location: LCCOMB_X1_Y24_N28
ix59584z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx59584z1 = (\u_kirsch|modgen_counter_o_row|nx58250z13\ & (\u_kirsch|modgen_counter_o_row|nx58250z15\ & (!\u_kirsch|modgen_counter_o_row|nx58250z9\))) # (!\u_kirsch|modgen_counter_o_row|nx58250z13\ & ((\u_kirsch|modgen_counter_o_row|nx58250z11\ & 
-- ((!\u_kirsch|modgen_counter_o_row|nx58250z9\))) # (!\u_kirsch|modgen_counter_o_row|nx58250z11\ & (\u_kirsch|modgen_counter_o_row|nx58250z15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_o_row|nx58250z15\,
	datab => \u_kirsch|modgen_counter_o_row|nx58250z13\,
	datac => \u_kirsch|modgen_counter_o_row|nx58250z9\,
	datad => \u_kirsch|modgen_counter_o_row|nx58250z11\,
	combout => nx59584z1);

-- Location: LCFF_X1_Y24_N29
\reg_out_o_sevenseg_obuf_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx59584z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx43845z1);

-- Location: LCCOMB_X1_Y24_N22
ix60581z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx60581z1 = (\u_kirsch|modgen_counter_o_row|nx58250z15\ & (\u_kirsch|modgen_counter_o_row|nx58250z13\ $ (((!\u_kirsch|modgen_counter_o_row|nx58250z11\))))) # (!\u_kirsch|modgen_counter_o_row|nx58250z15\ & ((\u_kirsch|modgen_counter_o_row|nx58250z13\ & 
-- (\u_kirsch|modgen_counter_o_row|nx58250z9\ & !\u_kirsch|modgen_counter_o_row|nx58250z11\)) # (!\u_kirsch|modgen_counter_o_row|nx58250z13\ & (!\u_kirsch|modgen_counter_o_row|nx58250z9\ & \u_kirsch|modgen_counter_o_row|nx58250z11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_o_row|nx58250z15\,
	datab => \u_kirsch|modgen_counter_o_row|nx58250z13\,
	datac => \u_kirsch|modgen_counter_o_row|nx58250z9\,
	datad => \u_kirsch|modgen_counter_o_row|nx58250z11\,
	combout => nx60581z1);

-- Location: LCFF_X1_Y24_N23
\reg_out_o_sevenseg_obuf_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx60581z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx44842z1);

-- Location: LCCOMB_X1_Y24_N8
ix61578z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx61578z1 = (\u_kirsch|modgen_counter_o_row|nx58250z9\ & (\u_kirsch|modgen_counter_o_row|nx58250z11\ & ((\u_kirsch|modgen_counter_o_row|nx58250z13\) # (!\u_kirsch|modgen_counter_o_row|nx58250z15\)))) # (!\u_kirsch|modgen_counter_o_row|nx58250z9\ & 
-- (!\u_kirsch|modgen_counter_o_row|nx58250z15\ & (\u_kirsch|modgen_counter_o_row|nx58250z13\ & !\u_kirsch|modgen_counter_o_row|nx58250z11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_o_row|nx58250z15\,
	datab => \u_kirsch|modgen_counter_o_row|nx58250z13\,
	datac => \u_kirsch|modgen_counter_o_row|nx58250z9\,
	datad => \u_kirsch|modgen_counter_o_row|nx58250z11\,
	combout => nx61578z1);

-- Location: LCFF_X1_Y24_N9
\reg_out_o_sevenseg_obuf_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx61578z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx45839z1);

-- Location: LCCOMB_X1_Y24_N10
ix62575z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx62575z1 = (\u_kirsch|modgen_counter_o_row|nx58250z13\ & ((\u_kirsch|modgen_counter_o_row|nx58250z15\ & (\u_kirsch|modgen_counter_o_row|nx58250z9\)) # (!\u_kirsch|modgen_counter_o_row|nx58250z15\ & ((\u_kirsch|modgen_counter_o_row|nx58250z11\))))) # 
-- (!\u_kirsch|modgen_counter_o_row|nx58250z13\ & (\u_kirsch|modgen_counter_o_row|nx58250z11\ & (\u_kirsch|modgen_counter_o_row|nx58250z15\ $ (\u_kirsch|modgen_counter_o_row|nx58250z9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_o_row|nx58250z15\,
	datab => \u_kirsch|modgen_counter_o_row|nx58250z13\,
	datac => \u_kirsch|modgen_counter_o_row|nx58250z9\,
	datad => \u_kirsch|modgen_counter_o_row|nx58250z11\,
	combout => nx62575z1);

-- Location: LCFF_X1_Y24_N11
\reg_out_o_sevenseg_obuf_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx62575z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx46836z1);

-- Location: LCCOMB_X1_Y24_N20
ix63572z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx63572z1 = (\u_kirsch|modgen_counter_o_row|nx58250z9\ & (\u_kirsch|modgen_counter_o_row|nx58250z15\ & (\u_kirsch|modgen_counter_o_row|nx58250z13\ $ (\u_kirsch|modgen_counter_o_row|nx58250z11\)))) # (!\u_kirsch|modgen_counter_o_row|nx58250z9\ & 
-- (!\u_kirsch|modgen_counter_o_row|nx58250z13\ & (\u_kirsch|modgen_counter_o_row|nx58250z15\ $ (\u_kirsch|modgen_counter_o_row|nx58250z11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_o_row|nx58250z15\,
	datab => \u_kirsch|modgen_counter_o_row|nx58250z13\,
	datac => \u_kirsch|modgen_counter_o_row|nx58250z9\,
	datad => \u_kirsch|modgen_counter_o_row|nx58250z11\,
	combout => nx63572z1);

-- Location: LCFF_X1_Y24_N21
\reg_out_o_sevenseg_obuf_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx63572z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx47833z1);

-- Location: LCFF_X50_Y24_N17
\u_kirsch|modgen_counter_o_row|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|modgen_counter_o_row|nx56256z1\,
	sclr => \u_kirsch|nx17322z9\,
	ena => \u_kirsch|modgen_counter_o_row|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|modgen_counter_o_row|nx58250z5\);

-- Location: LCCOMB_X8_Y24_N0
ix30z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx30z1 = (\u_kirsch|modgen_counter_o_row|nx58250z7\ & (!\u_kirsch|modgen_counter_o_row|nx1041z1\ & (\u_kirsch|modgen_counter_o_row|nx58250z3\ $ (!\u_kirsch|modgen_counter_o_row|nx58250z5\)))) # (!\u_kirsch|modgen_counter_o_row|nx58250z7\ & 
-- (!\u_kirsch|modgen_counter_o_row|nx58250z5\ & (\u_kirsch|modgen_counter_o_row|nx58250z3\ $ (!\u_kirsch|modgen_counter_o_row|nx1041z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_o_row|nx58250z3\,
	datab => \u_kirsch|modgen_counter_o_row|nx58250z7\,
	datac => \u_kirsch|modgen_counter_o_row|nx58250z5\,
	datad => \u_kirsch|modgen_counter_o_row|nx1041z1\,
	combout => nx30z1);

-- Location: LCFF_X8_Y24_N1
\reg_out_o_sevenseg_obuf_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx30z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx49827z1);

-- Location: LCCOMB_X8_Y24_N2
ix1027z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx1027z1 = (\u_kirsch|modgen_counter_o_row|nx58250z3\ & (\u_kirsch|modgen_counter_o_row|nx58250z7\ & (\u_kirsch|modgen_counter_o_row|nx58250z5\ $ (\u_kirsch|modgen_counter_o_row|nx1041z1\)))) # (!\u_kirsch|modgen_counter_o_row|nx58250z3\ & 
-- (!\u_kirsch|modgen_counter_o_row|nx1041z1\ & ((\u_kirsch|modgen_counter_o_row|nx58250z7\) # (\u_kirsch|modgen_counter_o_row|nx58250z5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_o_row|nx58250z3\,
	datab => \u_kirsch|modgen_counter_o_row|nx58250z7\,
	datac => \u_kirsch|modgen_counter_o_row|nx58250z5\,
	datad => \u_kirsch|modgen_counter_o_row|nx1041z1\,
	combout => nx1027z1);

-- Location: LCFF_X8_Y24_N3
\reg_out_o_sevenseg_obuf_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx1027z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx50824z1);

-- Location: LCCOMB_X8_Y24_N12
ix25683z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx25683z1 = (\u_kirsch|modgen_counter_o_row|nx58250z5\ & (((\u_kirsch|modgen_counter_o_row|nx58250z7\ & !\u_kirsch|modgen_counter_o_row|nx1041z1\)))) # (!\u_kirsch|modgen_counter_o_row|nx58250z5\ & ((\u_kirsch|modgen_counter_o_row|nx58250z3\ & 
-- ((!\u_kirsch|modgen_counter_o_row|nx1041z1\))) # (!\u_kirsch|modgen_counter_o_row|nx58250z3\ & (\u_kirsch|modgen_counter_o_row|nx58250z7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_o_row|nx58250z3\,
	datab => \u_kirsch|modgen_counter_o_row|nx58250z7\,
	datac => \u_kirsch|modgen_counter_o_row|nx58250z5\,
	datad => \u_kirsch|modgen_counter_o_row|nx1041z1\,
	combout => nx25683z1);

-- Location: LCFF_X8_Y24_N13
\reg_out_o_sevenseg_obuf_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx25683z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx62540z1);

-- Location: LCCOMB_X8_Y24_N6
ix26680z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx26680z1 = (\u_kirsch|modgen_counter_o_row|nx58250z7\ & (\u_kirsch|modgen_counter_o_row|nx58250z3\ $ ((!\u_kirsch|modgen_counter_o_row|nx58250z5\)))) # (!\u_kirsch|modgen_counter_o_row|nx58250z7\ & ((\u_kirsch|modgen_counter_o_row|nx58250z3\ & 
-- (!\u_kirsch|modgen_counter_o_row|nx58250z5\ & !\u_kirsch|modgen_counter_o_row|nx1041z1\)) # (!\u_kirsch|modgen_counter_o_row|nx58250z3\ & (\u_kirsch|modgen_counter_o_row|nx58250z5\ & \u_kirsch|modgen_counter_o_row|nx1041z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_o_row|nx58250z3\,
	datab => \u_kirsch|modgen_counter_o_row|nx58250z7\,
	datac => \u_kirsch|modgen_counter_o_row|nx58250z5\,
	datad => \u_kirsch|modgen_counter_o_row|nx1041z1\,
	combout => nx26680z1);

-- Location: LCFF_X8_Y24_N7
\reg_out_o_sevenseg_obuf_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx26680z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx63537z1);

-- Location: LCCOMB_X8_Y24_N24
ix27677z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx27677z1 = (\u_kirsch|modgen_counter_o_row|nx58250z3\ & (\u_kirsch|modgen_counter_o_row|nx1041z1\ & ((\u_kirsch|modgen_counter_o_row|nx58250z5\) # (!\u_kirsch|modgen_counter_o_row|nx58250z7\)))) # (!\u_kirsch|modgen_counter_o_row|nx58250z3\ & 
-- (!\u_kirsch|modgen_counter_o_row|nx58250z7\ & (\u_kirsch|modgen_counter_o_row|nx58250z5\ & !\u_kirsch|modgen_counter_o_row|nx1041z1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_o_row|nx58250z3\,
	datab => \u_kirsch|modgen_counter_o_row|nx58250z7\,
	datac => \u_kirsch|modgen_counter_o_row|nx58250z5\,
	datad => \u_kirsch|modgen_counter_o_row|nx1041z1\,
	combout => nx27677z1);

-- Location: LCFF_X8_Y24_N25
\reg_out_o_sevenseg_obuf_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx27677z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx64534z1);

-- Location: LCCOMB_X8_Y24_N18
ix28674z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx28674z1 = (\u_kirsch|modgen_counter_o_row|nx58250z5\ & ((\u_kirsch|modgen_counter_o_row|nx58250z7\ & ((\u_kirsch|modgen_counter_o_row|nx1041z1\))) # (!\u_kirsch|modgen_counter_o_row|nx58250z7\ & (\u_kirsch|modgen_counter_o_row|nx58250z3\)))) # 
-- (!\u_kirsch|modgen_counter_o_row|nx58250z5\ & (\u_kirsch|modgen_counter_o_row|nx58250z3\ & (\u_kirsch|modgen_counter_o_row|nx58250z7\ $ (\u_kirsch|modgen_counter_o_row|nx1041z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_o_row|nx58250z3\,
	datab => \u_kirsch|modgen_counter_o_row|nx58250z7\,
	datac => \u_kirsch|modgen_counter_o_row|nx58250z5\,
	datad => \u_kirsch|modgen_counter_o_row|nx1041z1\,
	combout => nx28674z1);

-- Location: LCFF_X8_Y24_N19
\reg_out_o_sevenseg_obuf_13_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx28674z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx65531z1);

-- Location: LCCOMB_X8_Y24_N20
ix29671z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx29671z1 = (\u_kirsch|modgen_counter_o_row|nx58250z3\ & (!\u_kirsch|modgen_counter_o_row|nx58250z5\ & (\u_kirsch|modgen_counter_o_row|nx58250z7\ $ (!\u_kirsch|modgen_counter_o_row|nx1041z1\)))) # (!\u_kirsch|modgen_counter_o_row|nx58250z3\ & 
-- (\u_kirsch|modgen_counter_o_row|nx58250z7\ & (\u_kirsch|modgen_counter_o_row|nx58250z5\ $ (!\u_kirsch|modgen_counter_o_row|nx1041z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_o_row|nx58250z3\,
	datab => \u_kirsch|modgen_counter_o_row|nx58250z7\,
	datac => \u_kirsch|modgen_counter_o_row|nx58250z5\,
	datad => \u_kirsch|modgen_counter_o_row|nx1041z1\,
	combout => nx29671z1);

-- Location: LCFF_X8_Y24_N21
\reg_out_o_sevenseg_obuf_14_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx29671z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx992z1);

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix21351z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_nx21351z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_txflex);

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix41851z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx41851z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(0));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix42848z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx42848z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(1));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix43845z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx43845z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix44842z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx44842z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(3));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix45839z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx45839z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(4));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix46836z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx46836z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(5));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix47833z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx47833z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(6));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg_obuf_7_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(7));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix49827z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx49827z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(8));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix50824z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx50824z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(9));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix62540z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx62540z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(10));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix63537z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx63537z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(11));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix64534z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx64534z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(12));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix65531z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx65531z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(13));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix992z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx992z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(14));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg_obuf_15_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(15));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_mode_obuf_0_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_kirsch|ALT_INV_nx15976z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_mode(0));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_mode_obuf_1_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_kirsch|o_mode_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_mode(1));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_nrst_obuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_nrst);

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red_obuf_0_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red_obuf_1_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red_obuf_2_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red_obuf_3_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red_obuf_4_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(4));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red_obuf_5_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(5));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red_obuf_6_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(6));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red_obuf_7_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(7));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red_obuf_8_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(8));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red_obuf_9_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(9));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red_obuf_10_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(10));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red_obuf_11_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(11));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red_obuf_12_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(12));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red_obuf_13_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(13));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red_obuf_14_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(14));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red_obuf_15_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(15));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red_obuf_16_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(16));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_grn_obuf_0_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(0));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_grn_obuf_1_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(1));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_grn_obuf_2_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(2));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_grn_obuf_3_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(3));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_grn_obuf_4_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(4));

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_grn_obuf_5_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_0_obuf_0_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_0(0));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_0_obuf_1_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_0(1));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_0_obuf_2_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_0(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_0_obuf_3_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_0(3));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_0_obuf_4_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_0(4));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_0_obuf_5_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_0(5));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_0_obuf_6_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_0(6));

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_0_obuf_7_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_0(7));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_1_obuf_0_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_1(0));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_1_obuf_1_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_1(1));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_1_obuf_2_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_1(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_1_obuf_3_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_1(3));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_1_obuf_4_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_1(4));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_1_obuf_5_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_1(5));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_1_obuf_6_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_1(6));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_1_obuf_7_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_1(7));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_2_obuf_0_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_2(0));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_2_obuf_1_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_2(1));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_2_obuf_2_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_2(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_2_obuf_3_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_2(3));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_2_obuf_4_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_2(4));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_2_obuf_5_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_2(5));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_2_obuf_6_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_2(6));

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_2_obuf_7_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_2(7));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_3_obuf_0_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_3(0));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_3_obuf_1_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_3(1));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_3_obuf_2_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_3(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_3_obuf_3_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_3(3));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_3_obuf_4_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_3(4));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_3_obuf_5_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_3(5));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_3_obuf_6_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_3(6));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_3_obuf_7_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_3(7));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_4_obuf_0_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_4(0));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_4_obuf_1_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_4(1));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_4_obuf_2_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_4(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_4_obuf_3_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_4(3));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_4_obuf_4_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_4(4));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_4_obuf_5_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_4(5));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_4_obuf_6_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_4(6));

-- Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_4_obuf_7_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_4(7));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_5_obuf_0_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_5(0));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_5_obuf_1_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_5(1));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_5_obuf_2_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_5(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_5_obuf_3_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_5(3));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_5_obuf_4_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_5(4));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_5_obuf_5_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_5(5));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_5_obuf_6_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_5(6));

-- Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_5_obuf_7_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_5(7));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_key[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_key(1));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_key[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_key(2));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_key[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_key(3));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(0));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(1));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(2));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(3));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(4));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(5));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(6));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(7));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(8));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(9));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(10));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(11));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(12));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(13));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(14));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(15));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(16));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(17));
END structure;


------------------------------------------------------------------------
-- begin uw-generated entity
-- upper-level of shim 
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.kirsch_synth_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity top_kirsch is
  port (
      nrst  : in STD_LOGIC
    ; clk  : in STD_LOGIC
    ; rxflex  : in STD_LOGIC
    ; txflex  : out STD_LOGIC
    ; o_sevenseg  : out std_logic_vector (15 downto 0)
    ; o_mode  : out std_logic_vector (1 downto 0)
    ; o_nrst  : out STD_LOGIC
    ; debug_key  : in std_logic_vector (3 downto 1)
    ; debug_switch  : in std_logic_vector (17 downto 0)
    ; debug_led_red  : out std_logic_vector (16 downto 0)
    ; debug_led_grn  : out std_logic_vector (5 downto 0)
    ; debug_sevenseg_0  : out std_logic_vector (7 downto 0)
    ; debug_sevenseg_1  : out std_logic_vector (7 downto 0)
    ; debug_sevenseg_2  : out std_logic_vector (7 downto 0)
    ; debug_sevenseg_3  : out std_logic_vector (7 downto 0)
    ; debug_sevenseg_4  : out std_logic_vector (7 downto 0)
    ; debug_sevenseg_5  : out std_logic_vector (7 downto 0)
  );
end entity;

------------------------------------------------------------------------
-- begin uw-generated architecture
-- lower-level of shim 
------------------------------------------------------------------------

architecture shim of top_kirsch is
  signal VDD, VSS : std_logic; 
begin
  chip : entity work.top_kirsch_chip
    port map (
        nrst => nrst
      , clk => clk
      , rxflex => rxflex
      , txflex => txflex
      , o_sevenseg(15) => o_sevenseg(15)
      , o_sevenseg(14) => o_sevenseg(14)
      , o_sevenseg(13) => o_sevenseg(13)
      , o_sevenseg(12) => o_sevenseg(12)
      , o_sevenseg(11) => o_sevenseg(11)
      , o_sevenseg(10) => o_sevenseg(10)
      , o_sevenseg(9) => o_sevenseg(9)
      , o_sevenseg(8) => o_sevenseg(8)
      , o_sevenseg(7) => o_sevenseg(7)
      , o_sevenseg(6) => o_sevenseg(6)
      , o_sevenseg(5) => o_sevenseg(5)
      , o_sevenseg(4) => o_sevenseg(4)
      , o_sevenseg(3) => o_sevenseg(3)
      , o_sevenseg(2) => o_sevenseg(2)
      , o_sevenseg(1) => o_sevenseg(1)
      , o_sevenseg(0) => o_sevenseg(0)
      , o_mode(1) => o_mode(1)
      , o_mode(0) => o_mode(0)
      , o_nrst => o_nrst
      , debug_key(3) => debug_key(3)
      , debug_key(2) => debug_key(2)
      , debug_key(1) => debug_key(1)
      , debug_switch(17) => debug_switch(17)
      , debug_switch(16) => debug_switch(16)
      , debug_switch(15) => debug_switch(15)
      , debug_switch(14) => debug_switch(14)
      , debug_switch(13) => debug_switch(13)
      , debug_switch(12) => debug_switch(12)
      , debug_switch(11) => debug_switch(11)
      , debug_switch(10) => debug_switch(10)
      , debug_switch(9) => debug_switch(9)
      , debug_switch(8) => debug_switch(8)
      , debug_switch(7) => debug_switch(7)
      , debug_switch(6) => debug_switch(6)
      , debug_switch(5) => debug_switch(5)
      , debug_switch(4) => debug_switch(4)
      , debug_switch(3) => debug_switch(3)
      , debug_switch(2) => debug_switch(2)
      , debug_switch(1) => debug_switch(1)
      , debug_switch(0) => debug_switch(0)
      , debug_led_red(16) => debug_led_red(16)
      , debug_led_red(15) => debug_led_red(15)
      , debug_led_red(14) => debug_led_red(14)
      , debug_led_red(13) => debug_led_red(13)
      , debug_led_red(12) => debug_led_red(12)
      , debug_led_red(11) => debug_led_red(11)
      , debug_led_red(10) => debug_led_red(10)
      , debug_led_red(9) => debug_led_red(9)
      , debug_led_red(8) => debug_led_red(8)
      , debug_led_red(7) => debug_led_red(7)
      , debug_led_red(6) => debug_led_red(6)
      , debug_led_red(5) => debug_led_red(5)
      , debug_led_red(4) => debug_led_red(4)
      , debug_led_red(3) => debug_led_red(3)
      , debug_led_red(2) => debug_led_red(2)
      , debug_led_red(1) => debug_led_red(1)
      , debug_led_red(0) => debug_led_red(0)
      , debug_led_grn(5) => debug_led_grn(5)
      , debug_led_grn(4) => debug_led_grn(4)
      , debug_led_grn(3) => debug_led_grn(3)
      , debug_led_grn(2) => debug_led_grn(2)
      , debug_led_grn(1) => debug_led_grn(1)
      , debug_led_grn(0) => debug_led_grn(0)
      , debug_sevenseg_0(7) => debug_sevenseg_0(7)
      , debug_sevenseg_0(6) => debug_sevenseg_0(6)
      , debug_sevenseg_0(5) => debug_sevenseg_0(5)
      , debug_sevenseg_0(4) => debug_sevenseg_0(4)
      , debug_sevenseg_0(3) => debug_sevenseg_0(3)
      , debug_sevenseg_0(2) => debug_sevenseg_0(2)
      , debug_sevenseg_0(1) => debug_sevenseg_0(1)
      , debug_sevenseg_0(0) => debug_sevenseg_0(0)
      , debug_sevenseg_1(7) => debug_sevenseg_1(7)
      , debug_sevenseg_1(6) => debug_sevenseg_1(6)
      , debug_sevenseg_1(5) => debug_sevenseg_1(5)
      , debug_sevenseg_1(4) => debug_sevenseg_1(4)
      , debug_sevenseg_1(3) => debug_sevenseg_1(3)
      , debug_sevenseg_1(2) => debug_sevenseg_1(2)
      , debug_sevenseg_1(1) => debug_sevenseg_1(1)
      , debug_sevenseg_1(0) => debug_sevenseg_1(0)
      , debug_sevenseg_2(7) => debug_sevenseg_2(7)
      , debug_sevenseg_2(6) => debug_sevenseg_2(6)
      , debug_sevenseg_2(5) => debug_sevenseg_2(5)
      , debug_sevenseg_2(4) => debug_sevenseg_2(4)
      , debug_sevenseg_2(3) => debug_sevenseg_2(3)
      , debug_sevenseg_2(2) => debug_sevenseg_2(2)
      , debug_sevenseg_2(1) => debug_sevenseg_2(1)
      , debug_sevenseg_2(0) => debug_sevenseg_2(0)
      , debug_sevenseg_3(7) => debug_sevenseg_3(7)
      , debug_sevenseg_3(6) => debug_sevenseg_3(6)
      , debug_sevenseg_3(5) => debug_sevenseg_3(5)
      , debug_sevenseg_3(4) => debug_sevenseg_3(4)
      , debug_sevenseg_3(3) => debug_sevenseg_3(3)
      , debug_sevenseg_3(2) => debug_sevenseg_3(2)
      , debug_sevenseg_3(1) => debug_sevenseg_3(1)
      , debug_sevenseg_3(0) => debug_sevenseg_3(0)
      , debug_sevenseg_4(7) => debug_sevenseg_4(7)
      , debug_sevenseg_4(6) => debug_sevenseg_4(6)
      , debug_sevenseg_4(5) => debug_sevenseg_4(5)
      , debug_sevenseg_4(4) => debug_sevenseg_4(4)
      , debug_sevenseg_4(3) => debug_sevenseg_4(3)
      , debug_sevenseg_4(2) => debug_sevenseg_4(2)
      , debug_sevenseg_4(1) => debug_sevenseg_4(1)
      , debug_sevenseg_4(0) => debug_sevenseg_4(0)
      , debug_sevenseg_5(7) => debug_sevenseg_5(7)
      , debug_sevenseg_5(6) => debug_sevenseg_5(6)
      , debug_sevenseg_5(5) => debug_sevenseg_5(5)
      , debug_sevenseg_5(4) => debug_sevenseg_5(4)
      , debug_sevenseg_5(3) => debug_sevenseg_5(3)
      , debug_sevenseg_5(2) => debug_sevenseg_5(2)
      , debug_sevenseg_5(1) => debug_sevenseg_5(1)
      , debug_sevenseg_5(0) => debug_sevenseg_5(0)
    );
end architecture;

