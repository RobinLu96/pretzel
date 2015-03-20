-- Copyright (C) 1991-2009 Altera Corporation
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
-- VERSION "Version 9.0 Build 132 02/25/2009 SJ Full Version"

-- DATE "03/28/2013 16:42:30"

-- 
-- Device: Altera EP2C35F672C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE, cycloneii;
USE IEEE.std_logic_1164.all;
USE cycloneii.cycloneii_components.all;

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

ARCHITECTURE structure OF top_kirsch_chip IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
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
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_uw_uart|i_uarts|TopTx\ : std_logic;
SIGNAL \u_kirsch|p_o_row_3_\ : std_logic;
SIGNAL \u_uw_uart|sdout_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx4608z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxBitCnt_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDivisor_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z5\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z6\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z7\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z9\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z8\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z1\ : std_logic;
SIGNAL \u_uw_uart|mdata_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx51917z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx51917z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx51917z1\ : std_logic;
SIGNAL \u_uw_uart|nx40736z2\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z19\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z21\ : std_logic;
SIGNAL \u_uw_uart|nx39480z3\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z25\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx64508z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx51271z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx52268z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx53265z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx54262z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx55259z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx56256z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx57253z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx58250z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx59247z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx60244z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx17096z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z1\ : std_logic;
SIGNAL \u_kirsch|p_o_edge\ : std_logic;
SIGNAL \u_kirsch|nx60567z6\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx54262z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx56256z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx57253z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z2\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z9\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_2_\ : std_logic;
SIGNAL \u_kirsch|r8_6_\ : std_logic;
SIGNAL \u_kirsch|r9_8_\ : std_logic;
SIGNAL \u_kirsch|r8_4_\ : std_logic;
SIGNAL \u_kirsch|r9_6_\ : std_logic;
SIGNAL \u_kirsch|r8_2_\ : std_logic;
SIGNAL \u_kirsch|r9_4_\ : std_logic;
SIGNAL \u_kirsch|r8_0_\ : std_logic;
SIGNAL \u_kirsch|r9_2_\ : std_logic;
SIGNAL \u_kirsch|r9_0_\ : std_logic;
SIGNAL \u_kirsch|sub_sub13_1|d_7_\ : std_logic;
SIGNAL \u_kirsch|sub_sub13_1|d_8_\ : std_logic;
SIGNAL \u_kirsch|r9_10_\ : std_logic;
SIGNAL \u_kirsch|sub_sub13_1|d_9_\ : std_logic;
SIGNAL \u_kirsch|r8_8_\ : std_logic;
SIGNAL \u_kirsch|r9_12_\ : std_logic;
SIGNAL \u_kirsch|nx1448z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx53265z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx56256z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx14544z1\ : std_logic;
SIGNAL \u_kirsch|r3_7_\ : std_logic;
SIGNAL \u_kirsch|r3_2_\ : std_logic;
SIGNAL \u_kirsch|r9_add12_17i1|nx38970z1\ : std_logic;
SIGNAL \u_kirsch|r9_add12_17i1|nx40964z1\ : std_logic;
SIGNAL \u_kirsch|r9_add12_17i1|nx42958z1\ : std_logic;
SIGNAL \u_kirsch|r9_add12_17i1|nx44952z1\ : std_logic;
SIGNAL \u_kirsch|r5_8_\ : std_logic;
SIGNAL \u_kirsch|r9_add12_17i1|nx46946z1\ : std_logic;
SIGNAL \u_kirsch|r9_add12_17i1|nx63795z4\ : std_logic;
SIGNAL \u_kirsch|r3_12_\ : std_logic;
SIGNAL \u_kirsch|r9_add12_17i1|nx63795z1\ : std_logic;
SIGNAL \u_kirsch|nx31323z2\ : std_logic;
SIGNAL \u_kirsch|p_o_dir_1_\ : std_logic;
SIGNAL \u_kirsch|r6_8_\ : std_logic;
SIGNAL \u_kirsch|r3_11n1s1f1_8_\ : std_logic;
SIGNAL \u_kirsch|r6_6_\ : std_logic;
SIGNAL \u_kirsch|r3_11n1s1f1_6_\ : std_logic;
SIGNAL \u_kirsch|r6_5_\ : std_logic;
SIGNAL \u_kirsch|r3_11n1s1f1_5_\ : std_logic;
SIGNAL \u_kirsch|r6_4_\ : std_logic;
SIGNAL \u_kirsch|r3_11n1s1f1_4_\ : std_logic;
SIGNAL \u_kirsch|r6_1_\ : std_logic;
SIGNAL \u_kirsch|r3_11n1s1f1_1_\ : std_logic;
SIGNAL \u_kirsch|r6_0_\ : std_logic;
SIGNAL \u_kirsch|r3_11n1s1f1_0_\ : std_logic;
SIGNAL \u_kirsch|r3_add13_11i1|nx39967z1\ : std_logic;
SIGNAL \u_kirsch|r3_add13_11i1|nx44952z1\ : std_logic;
SIGNAL \u_kirsch|r3_add13_11i1|nx64792z3\ : std_logic;
SIGNAL \u_kirsch|r3_add13_11i1|nx64792z1\ : std_logic;
SIGNAL \u_kirsch|r5_dir_0_\ : std_logic;
SIGNAL \u_kirsch|r8_dir_1_\ : std_logic;
SIGNAL \u_kirsch|p_o_dir_2_\ : std_logic;
SIGNAL \u_kirsch|g_6_\ : std_logic;
SIGNAL \u_kirsch|r6_add8_14i1|nx37973z1\ : std_logic;
SIGNAL \u_kirsch|r6_add8_14i1|nx38970z1\ : std_logic;
SIGNAL \u_kirsch|r6_add8_14i1|nx41961z1\ : std_logic;
SIGNAL \u_kirsch|r6_add8_14i1|nx42958z1\ : std_logic;
SIGNAL \u_kirsch|r6_add8_14i1|nx43955z1\ : std_logic;
SIGNAL \u_kirsch|r6_add8_14i1|nx23445z2\ : std_logic;
SIGNAL \u_kirsch|r6_add8_14i1|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|nx30960z2\ : std_logic;
SIGNAL \u_kirsch|nx30960z4\ : std_logic;
SIGNAL \u_kirsch|r2_10n1s1f1_6_\ : std_logic;
SIGNAL \u_kirsch|r2_10n1s1f1_5_\ : std_logic;
SIGNAL \u_kirsch|r2_10n1s1f1_4_\ : std_logic;
SIGNAL \u_kirsch|r2_10n1s4f1_3_\ : std_logic;
SIGNAL \u_kirsch|r2_add8_10i25|nx40964z1\ : std_logic;
SIGNAL \u_kirsch|r2_10n1s1f1_2_\ : std_logic;
SIGNAL \u_kirsch|r2_10n1s1f1_1_\ : std_logic;
SIGNAL \u_kirsch|r2_10n1s1f1_0_\ : std_logic;
SIGNAL \u_kirsch|r2_10n1s1f1_7_\ : std_logic;
SIGNAL \u_kirsch|r7_add8_15i9|nx37973z1\ : std_logic;
SIGNAL \u_kirsch|r7_add8_15i9|nx38970z1\ : std_logic;
SIGNAL \u_kirsch|r7_add8_15i9|nx39967z1\ : std_logic;
SIGNAL \u_kirsch|r7_add8_15i9|nx42958z1\ : std_logic;
SIGNAL \u_kirsch|r5_dir_1_\ : std_logic;
SIGNAL \u_kirsch|nx44420z1\ : std_logic;
SIGNAL \u_kirsch|r8_dir_2_\ : std_logic;
SIGNAL \u_kirsch|r2_dir_1_\ : std_logic;
SIGNAL \u_kirsch|r5_dir_2_\ : std_logic;
SIGNAL \u_kirsch|r4_dir_2_\ : std_logic;
SIGNAL \u_kirsch|nx20067z1\ : std_logic;
SIGNAL \u_kirsch|r2_dir_2_\ : std_logic;
SIGNAL \u_kirsch|nx19070z1\ : std_logic;
SIGNAL \u_kirsch|nx44420z1~_wirecell_combout\ : std_logic;
SIGNAL \u_kirsch|r2_dir_1_~_wirecell_combout\ : std_logic;
SIGNAL \u_uw_uart|sdout_0_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|mdata_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r8_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r8_8_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r5_8_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r8_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r8_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r8_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r8_dir_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r8_dir_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r5_dir_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r4_dir_2_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDivisor_5_~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx5605z1\ : std_logic;
SIGNAL \nrst~combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxFSM_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx48926z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxBitCnt_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx51917z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx50920z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx49923z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxBitCnt_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx50920z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx50920z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxBitCnt_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx4608z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx4608z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxFSM_0_\ : std_logic;
SIGNAL \u_kirsch|r8_dir_0_~feeder_combout\ : std_logic;
SIGNAL \rxflex~combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Rx\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|not_Rx_r\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|not_Rx_r~_wirecell_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx11553z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z2~_wirecell_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_6_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_6_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx15541z3\ : std_logic;
SIGNAL \u_uw_uart|rawrx\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx51271z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx65151z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx52268z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx54262z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx57253z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx59247z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx60244z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z10\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z8\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx58250z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx55259z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z7\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z6\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z5\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TopRx\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx15541z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx15541z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx16538z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|not_rtlc17_X_0_n360\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx11364z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxBitCnt_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx10367z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxBitCnt_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx9370z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx9370z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxBitCnt_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx8373z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx8373z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxBitCnt_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx13547z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx13547z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx54636z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_7_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_7_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx30017z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_7_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxRDY\ : std_logic;
SIGNAL \u_uw_uart|rdata_7_\ : std_logic;
SIGNAL \u_uw_uart|datain_7_\ : std_logic;
SIGNAL \u_uw_uart|nx58116z1\ : std_logic;
SIGNAL \u_uw_uart|o_pixavail\ : std_logic;
SIGNAL \u_kirsch|e_7_\ : std_logic;
SIGNAL \u_kirsch|f_7_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_6_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_6_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_5_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_4_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_4_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_4_\ : std_logic;
SIGNAL \u_uw_uart|rdata_4_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|rdata_4_\ : std_logic;
SIGNAL \u_uw_uart|datain_4_\ : std_logic;
SIGNAL \u_kirsch|e_4_\ : std_logic;
SIGNAL \u_kirsch|f_4_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_3_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_1_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_1_\ : std_logic;
SIGNAL \u_uw_uart|rdata_1_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|rdata_1_\ : std_logic;
SIGNAL \u_uw_uart|datain_1_\ : std_logic;
SIGNAL \u_kirsch|e_1_\ : std_logic;
SIGNAL \u_kirsch|f_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_0_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_0_\ : std_logic;
SIGNAL \u_uw_uart|rdata_0_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|rdata_0_\ : std_logic;
SIGNAL \u_uw_uart|datain_0_\ : std_logic;
SIGNAL \u_kirsch|e_0_\ : std_logic;
SIGNAL \u_kirsch|f_0_\ : std_logic;
SIGNAL \u_kirsch|ix20740z19328|nx23445z22\ : std_logic;
SIGNAL \u_kirsch|ix20740z19328|nx23445z19\ : std_logic;
SIGNAL \u_kirsch|ix20740z19328|nx23445z16\ : std_logic;
SIGNAL \u_kirsch|ix20740z19328|nx23445z13\ : std_logic;
SIGNAL \u_kirsch|ix20740z19328|nx23445z10\ : std_logic;
SIGNAL \u_kirsch|ix20740z19328|nx23445z7\ : std_logic;
SIGNAL \u_kirsch|ix20740z19328|nx23445z4\ : std_logic;
SIGNAL \u_kirsch|ix20740z19328|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|v_1_\ : std_logic;
SIGNAL \u_kirsch|v_2_\ : std_logic;
SIGNAL \u_kirsch|nx21064z1\ : std_logic;
SIGNAL \u_kirsch|nx33634z1\ : std_logic;
SIGNAL \u_kirsch|r2_dir_0_\ : std_logic;
SIGNAL \u_kirsch|r2_dir_0_~_wirecell_combout\ : std_logic;
SIGNAL \u_kirsch|v_3_\ : std_logic;
SIGNAL \u_kirsch|v_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|v_4_\ : std_logic;
SIGNAL \u_kirsch|v_5_\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_6_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_6_\ : std_logic;
SIGNAL \u_uw_uart|rdata_6_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|rdata_6_\ : std_logic;
SIGNAL \u_uw_uart|datain_6_\ : std_logic;
SIGNAL \u_kirsch|e_6_\ : std_logic;
SIGNAL \u_kirsch|f_6_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_5_\ : std_logic;
SIGNAL \u_uw_uart|rdata_5_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|rdata_5_\ : std_logic;
SIGNAL \u_uw_uart|datain_5_\ : std_logic;
SIGNAL \u_kirsch|e_5_\ : std_logic;
SIGNAL \u_kirsch|f_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_3_\ : std_logic;
SIGNAL \u_uw_uart|rdata_3_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|rdata_3_\ : std_logic;
SIGNAL \u_uw_uart|datain_3_\ : std_logic;
SIGNAL \u_kirsch|e_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_2_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_2_\ : std_logic;
SIGNAL \u_uw_uart|rdata_2_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|rdata_2_\ : std_logic;
SIGNAL \u_uw_uart|datain_2_\ : std_logic;
SIGNAL \u_kirsch|e_2_\ : std_logic;
SIGNAL \u_kirsch|r7_add8_15i9|nx44952z22\ : std_logic;
SIGNAL \u_kirsch|r7_add8_15i9|nx44952z19\ : std_logic;
SIGNAL \u_kirsch|r7_add8_15i9|nx44952z16\ : std_logic;
SIGNAL \u_kirsch|r7_add8_15i9|nx44952z13\ : std_logic;
SIGNAL \u_kirsch|r7_add8_15i9|nx44952z10\ : std_logic;
SIGNAL \u_kirsch|r7_add8_15i9|nx44952z7\ : std_logic;
SIGNAL \u_kirsch|r7_add8_15i9|nx44952z4\ : std_logic;
SIGNAL \u_kirsch|r7_add8_15i9|nx23445z2\ : std_logic;
SIGNAL \u_kirsch|r7_add8_15i9|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|r7_add8_15i9|nx44952z1\ : std_logic;
SIGNAL \u_kirsch|r7_add8_15i9|nx43955z1\ : std_logic;
SIGNAL \u_kirsch|g_5_\ : std_logic;
SIGNAL \u_kirsch|r7_add8_15i9|nx41961z1\ : std_logic;
SIGNAL \u_kirsch|r7_add8_15i9|nx40964z1\ : std_logic;
SIGNAL \u_kirsch|f_2_\ : std_logic;
SIGNAL \u_kirsch|g_2_\ : std_logic;
SIGNAL \u_kirsch|g_1_\ : std_logic;
SIGNAL \u_kirsch|g_0_\ : std_logic;
SIGNAL \u_kirsch|r7_add9_15i10|nx45949z24\ : std_logic;
SIGNAL \u_kirsch|r7_add9_15i10|nx45949z21\ : std_logic;
SIGNAL \u_kirsch|r7_add9_15i10|nx45949z18\ : std_logic;
SIGNAL \u_kirsch|r7_add9_15i10|nx45949z15\ : std_logic;
SIGNAL \u_kirsch|r7_add9_15i10|nx45949z12\ : std_logic;
SIGNAL \u_kirsch|r7_add9_15i10|nx45949z9\ : std_logic;
SIGNAL \u_kirsch|r7_add9_15i10|nx45949z6\ : std_logic;
SIGNAL \u_kirsch|r7_add9_15i10|nx45949z3\ : std_logic;
SIGNAL \u_kirsch|r7_add9_15i10|nx23445z2\ : std_logic;
SIGNAL \u_kirsch|r7_add9_15i10|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|r7_9_\ : std_logic;
SIGNAL \u_kirsch|nx47743z1\ : std_logic;
SIGNAL \u_kirsch|r4_9_\ : std_logic;
SIGNAL \u_kirsch|r7_add9_15i10|nx45949z1\ : std_logic;
SIGNAL \u_kirsch|r7_8_\ : std_logic;
SIGNAL \u_kirsch|nx20740z1\ : std_logic;
SIGNAL \u_kirsch|g_7_\ : std_logic;
SIGNAL \u_kirsch|nx20740z4\ : std_logic;
SIGNAL \u_kirsch|nx20740z2\ : std_logic;
SIGNAL \u_kirsch|r2_10n1s4f1_7_\ : std_logic;
SIGNAL \u_kirsch|r2_add8_10i25|nx44952z1\ : std_logic;
SIGNAL \u_kirsch|r2_10n1s4f1_6_\ : std_logic;
SIGNAL \u_kirsch|r2_add8_10i25|nx43955z1\ : std_logic;
SIGNAL \u_kirsch|r2_10n1s4f1_5_\ : std_logic;
SIGNAL \u_kirsch|r2_add8_10i25|nx42958z1\ : std_logic;
SIGNAL \u_kirsch|r2_10n1s4f1_4_\ : std_logic;
SIGNAL \u_kirsch|r2_add8_10i25|nx41961z1\ : std_logic;
SIGNAL \u_kirsch|r2_10n1s1f1_3_\ : std_logic;
SIGNAL \u_kirsch|r2_10n1s4f1_2_\ : std_logic;
SIGNAL \u_kirsch|r2_add8_10i25|nx39967z1\ : std_logic;
SIGNAL \u_kirsch|r2_10n1s4f1_1_\ : std_logic;
SIGNAL \u_kirsch|r2_add8_10i25|nx38970z1\ : std_logic;
SIGNAL \u_kirsch|r2_10n1s4f1_0_\ : std_logic;
SIGNAL \u_kirsch|r2_add8_10i25|nx37973z1\ : std_logic;
SIGNAL \u_kirsch|r2_add9_10i26|nx45949z24\ : std_logic;
SIGNAL \u_kirsch|r2_add9_10i26|nx45949z21\ : std_logic;
SIGNAL \u_kirsch|r2_add9_10i26|nx45949z18\ : std_logic;
SIGNAL \u_kirsch|r2_add9_10i26|nx45949z15\ : std_logic;
SIGNAL \u_kirsch|r2_add9_10i26|nx45949z12\ : std_logic;
SIGNAL \u_kirsch|r2_add9_10i26|nx45949z9\ : std_logic;
SIGNAL \u_kirsch|r2_add9_10i26|nx45949z6\ : std_logic;
SIGNAL \u_kirsch|r2_add9_10i26|nx44952z1\ : std_logic;
SIGNAL \u_kirsch|r2_7_\ : std_logic;
SIGNAL \u_kirsch|r4_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r7_add9_15i10|nx44952z1\ : std_logic;
SIGNAL \u_kirsch|r7_7_\ : std_logic;
SIGNAL \u_kirsch|r4_7_\ : std_logic;
SIGNAL \u_kirsch|r2_add9_10i26|nx43955z1\ : std_logic;
SIGNAL \u_kirsch|r2_6_\ : std_logic;
SIGNAL \u_kirsch|r4_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r7_add9_15i10|nx43955z1\ : std_logic;
SIGNAL \u_kirsch|r7_6_\ : std_logic;
SIGNAL \u_kirsch|r4_6_\ : std_logic;
SIGNAL \u_kirsch|r7_add9_15i10|nx42958z1\ : std_logic;
SIGNAL \u_kirsch|r7_5_\ : std_logic;
SIGNAL \u_kirsch|r2_add9_10i26|nx41961z1\ : std_logic;
SIGNAL \u_kirsch|r2_4_\ : std_logic;
SIGNAL \u_kirsch|r4_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r7_add9_15i10|nx41961z1\ : std_logic;
SIGNAL \u_kirsch|r7_4_\ : std_logic;
SIGNAL \u_kirsch|r4_4_\ : std_logic;
SIGNAL \u_kirsch|r7_add9_15i10|nx40964z1\ : std_logic;
SIGNAL \u_kirsch|r7_3_\ : std_logic;
SIGNAL \u_kirsch|r2_add9_10i26|nx39967z1\ : std_logic;
SIGNAL \u_kirsch|r2_2_\ : std_logic;
SIGNAL \u_kirsch|r4_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r7_add9_15i10|nx39967z1\ : std_logic;
SIGNAL \u_kirsch|r7_2_\ : std_logic;
SIGNAL \u_kirsch|r4_2_\ : std_logic;
SIGNAL \u_kirsch|r4_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r7_add9_15i10|nx38970z1\ : std_logic;
SIGNAL \u_kirsch|r7_1_\ : std_logic;
SIGNAL \u_kirsch|r4_1_\ : std_logic;
SIGNAL \u_kirsch|r2_add9_10i26|nx37973z1\ : std_logic;
SIGNAL \u_kirsch|r2_0_\ : std_logic;
SIGNAL \u_kirsch|r4_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r7_add9_15i10|nx37973z1\ : std_logic;
SIGNAL \u_kirsch|r7_0_\ : std_logic;
SIGNAL \u_kirsch|r4_0_\ : std_logic;
SIGNAL \u_kirsch|ix47743z6956|nx23445z28\ : std_logic;
SIGNAL \u_kirsch|ix47743z6956|nx23445z25\ : std_logic;
SIGNAL \u_kirsch|ix47743z6956|nx23445z22\ : std_logic;
SIGNAL \u_kirsch|ix47743z6956|nx23445z19\ : std_logic;
SIGNAL \u_kirsch|ix47743z6956|nx23445z16\ : std_logic;
SIGNAL \u_kirsch|ix47743z6956|nx23445z13\ : std_logic;
SIGNAL \u_kirsch|ix47743z6956|nx23445z10\ : std_logic;
SIGNAL \u_kirsch|ix47743z6956|nx23445z7\ : std_logic;
SIGNAL \u_kirsch|ix47743z6956|nx23445z4\ : std_logic;
SIGNAL \u_kirsch|ix47743z6956|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|nx82z1\ : std_logic;
SIGNAL \u_kirsch|nx43423z1\ : std_logic;
SIGNAL \u_kirsch|nx43423z1~_wirecell_combout\ : std_logic;
SIGNAL \u_kirsch|r5_9_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r2_add9_10i26|nx45949z3\ : std_logic;
SIGNAL \u_kirsch|r2_add9_10i26|nx45949z1\ : std_logic;
SIGNAL \u_kirsch|r2_8_\ : std_logic;
SIGNAL \u_kirsch|r2_add9_10i26|nx42958z1\ : std_logic;
SIGNAL \u_kirsch|r2_5_\ : std_logic;
SIGNAL \u_kirsch|r4_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r4_5_\ : std_logic;
SIGNAL \u_kirsch|r2_add9_10i26|nx40964z1\ : std_logic;
SIGNAL \u_kirsch|r2_3_\ : std_logic;
SIGNAL \u_kirsch|r4_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r4_3_\ : std_logic;
SIGNAL \u_kirsch|ix9374z6956|nx23445z28\ : std_logic;
SIGNAL \u_kirsch|ix9374z6956|nx23445z25\ : std_logic;
SIGNAL \u_kirsch|ix9374z6956|nx23445z22\ : std_logic;
SIGNAL \u_kirsch|ix9374z6956|nx23445z19\ : std_logic;
SIGNAL \u_kirsch|ix9374z6956|nx23445z16\ : std_logic;
SIGNAL \u_kirsch|ix9374z6956|nx23445z13\ : std_logic;
SIGNAL \u_kirsch|ix9374z6956|nx23445z10\ : std_logic;
SIGNAL \u_kirsch|ix9374z6956|nx23445z7\ : std_logic;
SIGNAL \u_kirsch|ix9374z6956|nx23445z4\ : std_logic;
SIGNAL \u_kirsch|ix9374z6956|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|r5_9_\ : std_logic;
SIGNAL \u_kirsch|r4_8_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r4_8_\ : std_logic;
SIGNAL \u_kirsch|r5_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r5_6_\ : std_logic;
SIGNAL \u_kirsch|r5_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r5_5_\ : std_logic;
SIGNAL \u_kirsch|r5_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r5_4_\ : std_logic;
SIGNAL \u_kirsch|r5_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r5_3_\ : std_logic;
SIGNAL \u_kirsch|r5_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r5_2_\ : std_logic;
SIGNAL \u_kirsch|r5_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r5_0_\ : std_logic;
SIGNAL \u_kirsch|ix15883z6955|nx23445z28\ : std_logic;
SIGNAL \u_kirsch|ix15883z6955|nx23445z25\ : std_logic;
SIGNAL \u_kirsch|ix15883z6955|nx23445z22\ : std_logic;
SIGNAL \u_kirsch|ix15883z6955|nx23445z19\ : std_logic;
SIGNAL \u_kirsch|ix15883z6955|nx23445z16\ : std_logic;
SIGNAL \u_kirsch|ix15883z6955|nx23445z13\ : std_logic;
SIGNAL \u_kirsch|ix15883z6955|nx23445z10\ : std_logic;
SIGNAL \u_kirsch|ix15883z6955|nx23445z7\ : std_logic;
SIGNAL \u_kirsch|ix15883z6955|nx23445z4\ : std_logic;
SIGNAL \u_kirsch|ix15883z6955|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|v_6_\ : std_logic;
SIGNAL \u_kirsch|r8_dir_0_\ : std_logic;
SIGNAL \u_kirsch|g_4_\ : std_logic;
SIGNAL \u_kirsch|f_3_\ : std_logic;
SIGNAL \u_kirsch|g_3_\ : std_logic;
SIGNAL \u_kirsch|r6_add8_14i1|nx44952z22\ : std_logic;
SIGNAL \u_kirsch|r6_add8_14i1|nx44952z19\ : std_logic;
SIGNAL \u_kirsch|r6_add8_14i1|nx44952z16\ : std_logic;
SIGNAL \u_kirsch|r6_add8_14i1|nx44952z13\ : std_logic;
SIGNAL \u_kirsch|r6_add8_14i1|nx44952z10\ : std_logic;
SIGNAL \u_kirsch|r6_add8_14i1|nx44952z7\ : std_logic;
SIGNAL \u_kirsch|r6_add8_14i1|nx44952z4\ : std_logic;
SIGNAL \u_kirsch|r6_add8_14i1|nx44952z1\ : std_logic;
SIGNAL \u_kirsch|r6_7_\ : std_logic;
SIGNAL \u_kirsch|nx30960z1\ : std_logic;
SIGNAL \u_kirsch|r1_9n1s1f2_7_\ : std_logic;
SIGNAL \u_kirsch|r1_7_\ : std_logic;
SIGNAL \u_kirsch|r3_11n1s1f1_7_\ : std_logic;
SIGNAL \u_kirsch|nx30960z5\ : std_logic;
SIGNAL \u_kirsch|r1_9n1s1f2_3_\ : std_logic;
SIGNAL \u_kirsch|r1_3_\ : std_logic;
SIGNAL \u_kirsch|r6_add8_14i1|nx40964z1\ : std_logic;
SIGNAL \u_kirsch|r6_3_\ : std_logic;
SIGNAL \u_kirsch|r3_11n1s1f1_3_\ : std_logic;
SIGNAL \u_kirsch|nx30960z6\ : std_logic;
SIGNAL \u_kirsch|r1_9n1s1f2_2_\ : std_logic;
SIGNAL \u_kirsch|r1_2_\ : std_logic;
SIGNAL \u_kirsch|r6_add8_14i1|nx39967z1\ : std_logic;
SIGNAL \u_kirsch|r6_2_\ : std_logic;
SIGNAL \u_kirsch|r3_11n1s1f1_2_\ : std_logic;
SIGNAL \u_kirsch|r3_add13_11i1|nx37973z1\ : std_logic;
SIGNAL \u_kirsch|nx30960z8\ : std_logic;
SIGNAL \u_kirsch|r1_9n1s1f2_0_\ : std_logic;
SIGNAL \u_kirsch|r1_0_\ : std_logic;
SIGNAL \u_kirsch|r3_0_\ : std_logic;
SIGNAL \u_kirsch|r3_add13_11i1|nx64792z33\ : std_logic;
SIGNAL \u_kirsch|r3_add13_11i1|nx38970z1\ : std_logic;
SIGNAL \u_kirsch|nx30960z7\ : std_logic;
SIGNAL \u_kirsch|r1_9n1s1f2_1_\ : std_logic;
SIGNAL \u_kirsch|r1_1_\ : std_logic;
SIGNAL \u_kirsch|r3_1_\ : std_logic;
SIGNAL \u_kirsch|r3_add13_11i1|nx64792z30\ : std_logic;
SIGNAL \u_kirsch|r3_add13_11i1|nx64792z27\ : std_logic;
SIGNAL \u_kirsch|r3_add13_11i1|nx64792z24\ : std_logic;
SIGNAL \u_kirsch|r3_add13_11i1|nx41961z1\ : std_logic;
SIGNAL \u_kirsch|r1_9n1s1f2_4_\ : std_logic;
SIGNAL \u_kirsch|r1_4_\ : std_logic;
SIGNAL \u_kirsch|r3_4_\ : std_logic;
SIGNAL \u_kirsch|r3_add13_11i1|nx64792z21\ : std_logic;
SIGNAL \u_kirsch|r3_add13_11i1|nx42958z1\ : std_logic;
SIGNAL \u_kirsch|nx30960z3\ : std_logic;
SIGNAL \u_kirsch|r1_9n1s1f2_5_\ : std_logic;
SIGNAL \u_kirsch|r1_5_\ : std_logic;
SIGNAL \u_kirsch|r3_5_\ : std_logic;
SIGNAL \u_kirsch|r3_add13_11i1|nx64792z18\ : std_logic;
SIGNAL \u_kirsch|r3_add13_11i1|nx43955z1\ : std_logic;
SIGNAL \u_kirsch|r1_9n1s1f2_6_\ : std_logic;
SIGNAL \u_kirsch|r1_6_\ : std_logic;
SIGNAL \u_kirsch|r3_6_\ : std_logic;
SIGNAL \u_kirsch|r3_add13_11i1|nx64792z15\ : std_logic;
SIGNAL \u_kirsch|r3_add13_11i1|nx64792z12\ : std_logic;
SIGNAL \u_kirsch|r3_add13_11i1|nx45949z1\ : std_logic;
SIGNAL \u_kirsch|r3_8_\ : std_logic;
SIGNAL \u_kirsch|r3_add13_11i1|nx64792z9\ : std_logic;
SIGNAL \u_kirsch|r3_add13_11i1|nx46946z1\ : std_logic;
SIGNAL \u_kirsch|r3_9_\ : std_logic;
SIGNAL \u_kirsch|r3_add13_11i1|nx64792z7\ : std_logic;
SIGNAL \u_kirsch|r3_add13_11i1|nx64792z5\ : std_logic;
SIGNAL \u_kirsch|r3_add13_11i1|nx63795z1\ : std_logic;
SIGNAL \u_kirsch|r3_11_\ : std_logic;
SIGNAL \u_kirsch|r3_add13_11i1|nx62798z1\ : std_logic;
SIGNAL \u_kirsch|r3_10_\ : std_logic;
SIGNAL \u_kirsch|r3_add13_11i1|nx40964z1\ : std_logic;
SIGNAL \u_kirsch|r3_3_\ : std_logic;
SIGNAL \u_kirsch|r9_add12_17i1|nx63795z24\ : std_logic;
SIGNAL \u_kirsch|r9_add12_17i1|nx63795z22\ : std_logic;
SIGNAL \u_kirsch|r9_add12_17i1|nx63795z20\ : std_logic;
SIGNAL \u_kirsch|r9_add12_17i1|nx63795z18\ : std_logic;
SIGNAL \u_kirsch|r9_add12_17i1|nx63795z16\ : std_logic;
SIGNAL \u_kirsch|r9_add12_17i1|nx63795z14\ : std_logic;
SIGNAL \u_kirsch|r9_add12_17i1|nx63795z12\ : std_logic;
SIGNAL \u_kirsch|r9_add12_17i1|nx63795z10\ : std_logic;
SIGNAL \u_kirsch|r9_add12_17i1|nx63795z8\ : std_logic;
SIGNAL \u_kirsch|r9_add12_17i1|nx63795z6\ : std_logic;
SIGNAL \u_kirsch|r9_add12_17i1|nx62798z1\ : std_logic;
SIGNAL \u_kirsch|r9_11_\ : std_logic;
SIGNAL \u_kirsch|r5_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r5_7_\ : std_logic;
SIGNAL \u_kirsch|r8_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r8_7_\ : std_logic;
SIGNAL \u_kirsch|r9_add12_17i1|nx45949z1\ : std_logic;
SIGNAL \u_kirsch|r9_9_\ : std_logic;
SIGNAL \u_kirsch|r8_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r8_5_\ : std_logic;
SIGNAL \u_kirsch|r9_add12_17i1|nx43955z1\ : std_logic;
SIGNAL \u_kirsch|r9_7_\ : std_logic;
SIGNAL \u_kirsch|r8_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r8_3_\ : std_logic;
SIGNAL \u_kirsch|r9_add12_17i1|nx41961z1\ : std_logic;
SIGNAL \u_kirsch|r9_5_\ : std_logic;
SIGNAL \u_kirsch|r5_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r2_add9_10i26|nx38970z1\ : std_logic;
SIGNAL \u_kirsch|r2_1_\ : std_logic;
SIGNAL \u_kirsch|r5_1_\ : std_logic;
SIGNAL \u_kirsch|r8_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r8_1_\ : std_logic;
SIGNAL \u_kirsch|r9_add12_17i1|nx39967z1\ : std_logic;
SIGNAL \u_kirsch|r9_3_\ : std_logic;
SIGNAL \u_kirsch|r9_add12_17i1|nx37973z1\ : std_logic;
SIGNAL \u_kirsch|r9_1_\ : std_logic;
SIGNAL \u_kirsch|sub_sub13_1|nx63795z11\ : std_logic;
SIGNAL \u_kirsch|sub_sub13_1|nx63795z10\ : std_logic;
SIGNAL \u_kirsch|sub_sub13_1|nx63795z9\ : std_logic;
SIGNAL \u_kirsch|sub_sub13_1|nx63795z8\ : std_logic;
SIGNAL \u_kirsch|sub_sub13_1|nx63795z7\ : std_logic;
SIGNAL \u_kirsch|sub_sub13_1|nx63795z6\ : std_logic;
SIGNAL \u_kirsch|sub_sub13_1|nx63795z5\ : std_logic;
SIGNAL \u_kirsch|sub_sub13_1|nx63795z4\ : std_logic;
SIGNAL \u_kirsch|sub_sub13_1|nx63795z3\ : std_logic;
SIGNAL \u_kirsch|sub_sub13_1|nx63795z2\ : std_logic;
SIGNAL \u_kirsch|sub_sub13_1|d_10_\ : std_logic;
SIGNAL \u_kirsch|v_7_\ : std_logic;
SIGNAL \u_kirsch|sub_sub13_1|d_6_\ : std_logic;
SIGNAL \u_kirsch|r8_9_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|r8_9_\ : std_logic;
SIGNAL \u_kirsch|sub_sub13_1|nx63795z1\ : std_logic;
SIGNAL \u_kirsch|sub_sub13_1|nx23445z2\ : std_logic;
SIGNAL \u_kirsch|sub_sub13_1|nx23445z1\ : std_logic;
SIGNAL \u_kirsch|sub_sub13_1|d_11_\ : std_logic;
SIGNAL \u_kirsch|nx1448z2\ : std_logic;
SIGNAL \u_kirsch|nx31323z1\ : std_logic;
SIGNAL \u_kirsch|p_o_dir_0_\ : std_logic;
SIGNAL \u_uw_uart|mdata_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|p_o_mode_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|p_o_mode_1_\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx51271z1\ : std_logic;
SIGNAL \u_uw_uart|nx33354z2\ : std_logic;
SIGNAL \u_uw_uart|nx33354z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z31\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z30\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx52268z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z29\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z28\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx53265z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z27\ : std_logic;
SIGNAL \u_uw_uart|nx39480z4\ : std_logic;
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
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx59247z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z15\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z14\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx60244z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z13\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z12\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z10\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx18093z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z9\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z8\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z6\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx20087z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z5\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z4\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx21084z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z3\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx19090z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z7\ : std_logic;
SIGNAL \u_uw_uart|nx39480z6\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx17096z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z11\ : std_logic;
SIGNAL \u_uw_uart|nx39480z7\ : std_logic;
SIGNAL \u_uw_uart|nx39480z5\ : std_logic;
SIGNAL \u_kirsch|col_i_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|col_i_3_\ : std_logic;
SIGNAL \u_kirsch|ix39583z59249|nx37973z1\ : std_logic;
SIGNAL \u_kirsch|col_flop_0_\ : std_logic;
SIGNAL \u_kirsch|col_i_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|col_i_0_\ : std_logic;
SIGNAL \u_kirsch|ix39583z59249|nx44952z15\ : std_logic;
SIGNAL \u_kirsch|ix39583z59249|nx44952z13\ : std_logic;
SIGNAL \u_kirsch|ix39583z59249|nx44952z11\ : std_logic;
SIGNAL \u_kirsch|ix39583z59249|nx40964z1\ : std_logic;
SIGNAL \u_kirsch|col_flop_3_\ : std_logic;
SIGNAL \u_kirsch|ix39583z59249|nx39967z1\ : std_logic;
SIGNAL \u_kirsch|col_flop_2_\ : std_logic;
SIGNAL \u_kirsch|nx60567z5\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_row_count|nx58250z8\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_row_count|nx52268z1\ : std_logic;
SIGNAL \u_kirsch|ix39583z59249|nx44952z9\ : std_logic;
SIGNAL \u_kirsch|ix39583z59249|nx41961z1\ : std_logic;
SIGNAL \u_kirsch|col_flop_4_\ : std_logic;
SIGNAL \u_kirsch|col_i_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|col_i_4_\ : std_logic;
SIGNAL \u_kirsch|ix39583z59249|nx44952z7\ : std_logic;
SIGNAL \u_kirsch|ix39583z59249|nx42958z1\ : std_logic;
SIGNAL \u_kirsch|col_flop_5_\ : std_logic;
SIGNAL \u_kirsch|col_i_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|col_i_5_\ : std_logic;
SIGNAL \u_kirsch|ix39583z59249|nx44952z5\ : std_logic;
SIGNAL \u_kirsch|ix39583z59249|nx43955z1\ : std_logic;
SIGNAL \u_kirsch|col_flop_6_\ : std_logic;
SIGNAL \u_kirsch|col_i_6_\ : std_logic;
SIGNAL \u_kirsch|nx64436z2\ : std_logic;
SIGNAL \u_kirsch|ix39583z59249|nx44952z3\ : std_logic;
SIGNAL \u_kirsch|ix39583z59249|nx44952z1\ : std_logic;
SIGNAL \u_kirsch|col_flop_7_\ : std_logic;
SIGNAL \u_kirsch|col_i_7_\ : std_logic;
SIGNAL \u_kirsch|col_i_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|col_i_2_\ : std_logic;
SIGNAL \u_kirsch|ix39583z59249|nx38970z1\ : std_logic;
SIGNAL \u_kirsch|col_flop_1_\ : std_logic;
SIGNAL \u_kirsch|col_i_1_\ : std_logic;
SIGNAL \u_kirsch|nx64436z3\ : std_logic;
SIGNAL \u_kirsch|nx64436z1\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_row_count|q_1_\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_row_count|nx58250z7\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_row_count|nx58250z6\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_row_count|nx58250z5\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_row_count|nx55259z1\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_row_count|q_4_\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_row_count|nx58250z4\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_row_count|nx58250z3\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_row_count|nx57253z1\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_row_count|q_6_\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_row_count|nx58250z2\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_row_count|nx58250z1\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_row_count|q_7_\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_row_count|nx56256z1\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_row_count|q_5_\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_row_count|nx51271z1\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_row_count|q_0_\ : std_logic;
SIGNAL \u_kirsch|nx60567z4\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_row_count|nx53265z1\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_row_count|q_2_\ : std_logic;
SIGNAL \u_kirsch|nx60567z2\ : std_logic;
SIGNAL \u_kirsch|nx60567z1\ : std_logic;
SIGNAL \u_kirsch|p_o_valid\ : std_logic;
SIGNAL \u_uw_uart|nx39480z2\ : std_logic;
SIGNAL \u_uw_uart|nx39480z1\ : std_logic;
SIGNAL \u_uw_uart|ack\ : std_logic;
SIGNAL \u_uw_uart|nx38742z1\ : std_logic;
SIGNAL \u_kirsch|nx43221z2\ : std_logic;
SIGNAL \u_kirsch|nx43221z1\ : std_logic;
SIGNAL \u_kirsch|NOT_rtlc19_PS6_n24\ : std_logic;
SIGNAL \u_kirsch|nx64269z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx15376z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxErr\ : std_logic;
SIGNAL \u_uw_uart|nx40736z4\ : std_logic;
SIGNAL \u_uw_uart|nx40736z3\ : std_logic;
SIGNAL \u_uw_uart|mdata_1_\ : std_logic;
SIGNAL \u_uw_uart|sdout_1_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|state\ : std_logic;
SIGNAL \u_uw_uart|nx46385z2\ : std_logic;
SIGNAL \u_uw_uart|nx46385z1\ : std_logic;
SIGNAL \u_uw_uart|dsend\ : std_logic;
SIGNAL \u_uw_uart|nx38868z1\ : std_logic;
SIGNAL \u_uw_uart|sdout_1_\ : std_logic;
SIGNAL \u_uw_uart|mdata_2_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|mdata_2_\ : std_logic;
SIGNAL \u_uw_uart|sdout_2_\ : std_logic;
SIGNAL \u_uw_uart|mdata_7n5ss1_4_\ : std_logic;
SIGNAL \u_uw_uart|mdata_5_\ : std_logic;
SIGNAL \u_uw_uart|sdout_5_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|sdout_5_\ : std_logic;
SIGNAL \u_uw_uart|mdata_7n5ss1_6_\ : std_logic;
SIGNAL \u_uw_uart|mdata_7_\ : std_logic;
SIGNAL \u_uw_uart|sdout_7_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_\ : std_logic;
SIGNAL \u_uw_uart|nx18433z1\ : std_logic;
SIGNAL \u_uw_uart|ld_sdout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx35603z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34606z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_7_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx33609z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_6_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32612z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx31615z1\ : std_logic;
SIGNAL \u_uw_uart|mdata_3_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|mdata_3_\ : std_logic;
SIGNAL \u_uw_uart|sdout_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_4_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx30618z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx29621z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx28624z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx61140z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Tx_Reg_14n6ss1_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx61812z1\ : std_logic;
SIGNAL nx21351z2 : std_logic;
SIGNAL \u_kirsch|p_o_row_2_\ : std_logic;
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
SIGNAL \u_kirsch|nx12508z1\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_row_count|nx54262z1\ : std_logic;
SIGNAL \u_kirsch|modgen_counter_row_count|q_3_\ : std_logic;
SIGNAL \u_kirsch|nx60567z3\ : std_logic;
SIGNAL \u_kirsch|p_o_row_6_\ : std_logic;
SIGNAL \u_kirsch|p_o_row_5_\ : std_logic;
SIGNAL \u_kirsch|nx13505z1\ : std_logic;
SIGNAL \u_kirsch|p_o_row_7_\ : std_logic;
SIGNAL nx30z1 : std_logic;
SIGNAL nx49827z1 : std_logic;
SIGNAL \u_kirsch|p_o_row_4_\ : std_logic;
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
SIGNAL ALT_INV_nx21351z2 : std_logic;
SIGNAL \u_kirsch|ALT_INV_nx64269z1\ : std_logic;
SIGNAL \ALT_INV_nrst~combout\ : std_logic;
SIGNAL \u_kirsch|ALT_INV_v_7_\ : std_logic;
SIGNAL \u_kirsch|ALT_INV_p_o_valid\ : std_logic;

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

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
ALT_INV_nx21351z2 <= NOT nx21351z2;
\u_kirsch|ALT_INV_nx64269z1\ <= NOT \u_kirsch|nx64269z1\;
\ALT_INV_nrst~combout\ <= NOT \nrst~combout\;
\u_kirsch|ALT_INV_v_7_\ <= NOT \u_kirsch|v_7_\;
\u_kirsch|ALT_INV_p_o_valid\ <= NOT \u_kirsch|p_o_valid\;

\u_uw_uart|i_uarts|reg_TopTx\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx32400z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TopTx\);

\u_kirsch|ix9517z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|p_o_row_3_\ = \u_kirsch|modgen_counter_row_count|q_3_\ $ (!\u_kirsch|modgen_counter_row_count|q_2_\ & !\u_kirsch|modgen_counter_row_count|q_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_row_count|q_2_\,
	datac => \u_kirsch|modgen_counter_row_count|q_1_\,
	datad => \u_kirsch|modgen_counter_row_count|q_3_\,
	combout => \u_kirsch|p_o_row_3_\);

\u_uw_uart|reg_sdout_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_0_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|nx38868z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_0_\);

\u_uw_uart|i_uarts|ix4608z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx4608z2\ = \u_uw_uart|i_uarts|TxFSM_1_\ & !\u_uw_uart|i_uarts|TopTx\ # !\u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|i_uarts|TxFSM_0_\ & !\u_uw_uart|i_uarts|TopTx\ # !\u_uw_uart|i_uarts|TxFSM_0_\ & (!\u_uw_uart|ld_sdout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TopTx\,
	datab => \u_uw_uart|i_uarts|TxFSM_1_\,
	datac => \u_uw_uart|i_uarts|TxFSM_0_\,
	datad => \u_uw_uart|ld_sdout\,
	combout => \u_uw_uart|i_uarts|nx4608z2\);

\u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx51917z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxBitCnt_3_\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx51271z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23\);

\u_uw_uart|i_uarts|reg_TxDivisor_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|TxDivisor_5_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDivisor_5_\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx17096z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx60244z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\);

\u_uw_uart|i_uarts|ix32400z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z3\ = \u_uw_uart|i_uarts|TxDivisor_5_\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDivisor_5_\,
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1\,
	datac => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\,
	datad => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\,
	combout => \u_uw_uart|i_uarts|nx32400z3\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx59247z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx58250z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx57253z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx56256z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\);

\u_uw_uart|i_uarts|ix32400z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z4\ = !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\ & \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\ & \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\ & \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\,
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\,
	datac => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\,
	datad => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\,
	combout => \u_uw_uart|i_uarts|nx32400z4\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx55259z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx54262z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx53265z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx52268z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\);

\u_uw_uart|i_uarts|ix32400z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z5\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\,
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\,
	datac => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\,
	datad => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\,
	combout => \u_uw_uart|i_uarts|nx32400z5\);

\u_uw_uart|i_uarts|ix32400z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z2\ = \u_uw_uart|i_uarts|nx32400z4\ & \u_uw_uart|i_uarts|nx32400z5\ & \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23\ & \u_uw_uart|i_uarts|nx32400z3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx32400z4\,
	datab => \u_uw_uart|i_uarts|nx32400z5\,
	datac => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23\,
	datad => \u_uw_uart|i_uarts|nx32400z3\,
	combout => \u_uw_uart|i_uarts|nx32400z2\);

\u_uw_uart|i_uarts|ix32400z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z6\ = !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\,
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\,
	datac => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\,
	datad => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\,
	combout => \u_uw_uart|i_uarts|nx32400z6\);

\u_uw_uart|i_uarts|ix32400z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z7\ = !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\,
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\,
	datac => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\,
	datad => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\,
	combout => \u_uw_uart|i_uarts|nx32400z7\);

\u_uw_uart|i_uarts|ix32400z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z9\ = !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\,
	datad => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\,
	combout => \u_uw_uart|i_uarts|nx32400z9\);

\u_uw_uart|i_uarts|ix32400z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z8\ = !\u_uw_uart|i_uarts|TxDivisor_5_\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23\ & \u_uw_uart|i_uarts|nx32400z9\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDivisor_5_\,
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23\,
	datac => \u_uw_uart|i_uarts|nx32400z9\,
	datad => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1\,
	combout => \u_uw_uart|i_uarts|nx32400z8\);

\u_uw_uart|i_uarts|ix32400z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z1\ = \u_uw_uart|i_uarts|nx32400z2\ # \u_uw_uart|i_uarts|nx32400z6\ & \u_uw_uart|i_uarts|nx32400z8\ & \u_uw_uart|i_uarts|nx32400z7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx32400z6\,
	datab => \u_uw_uart|i_uarts|nx32400z8\,
	datac => \u_uw_uart|i_uarts|nx32400z7\,
	datad => \u_uw_uart|i_uarts|nx32400z2\,
	combout => \u_uw_uart|i_uarts|nx32400z1\);

\u_uw_uart|reg_mdata_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|mdata_0_~feeder_combout\,
	sdata => VCC,
	sclr => \u_uw_uart|nx38742z1\,
	sload => \u_kirsch|ALT_INV_p_o_valid\,
	ena => \u_uw_uart|nx40736z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_0_\);

\u_uw_uart|i_uarts|ix51917z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx51917z3\ = \u_uw_uart|i_uarts|TxBitCnt_2_\ # \u_uw_uart|i_uarts|TxBitCnt_1_\ # \u_uw_uart|i_uarts|TxBitCnt_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxBitCnt_2_\,
	datab => \u_uw_uart|i_uarts|TxBitCnt_1_\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_0_\,
	combout => \u_uw_uart|i_uarts|nx51917z3\);

\u_uw_uart|i_uarts|ix51917z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx51917z4\ = \u_uw_uart|i_uarts|nx50920z2\ # !\u_uw_uart|i_uarts|nx50920z3\ & !\u_uw_uart|i_uarts|TxBitCnt_3_\ & !\u_uw_uart|i_uarts|TxBitCnt_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx50920z3\,
	datab => \u_uw_uart|i_uarts|TxBitCnt_3_\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_2_\,
	datad => \u_uw_uart|i_uarts|nx50920z2\,
	combout => \u_uw_uart|i_uarts|nx51917z4\);

\u_uw_uart|i_uarts|ix51917z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx51917z1\ = \u_uw_uart|i_uarts|nx51917z2\ & (\u_uw_uart|i_uarts|nx51917z4\ # \u_uw_uart|i_uarts|nx51917z3\ & \u_uw_uart|i_uarts|TxBitCnt_3_\) # !\u_uw_uart|i_uarts|nx51917z2\ & (\u_uw_uart|i_uarts|TxBitCnt_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx51917z4\,
	datab => \u_uw_uart|i_uarts|nx51917z3\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_3_\,
	datad => \u_uw_uart|i_uarts|nx51917z2\,
	combout => \u_uw_uart|i_uarts|nx51917z1\);

\u_uw_uart|ix40736z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx40736z2\ = \u_uw_uart|o_pixavail\ # \u_uw_uart|ack\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|o_pixavail\,
	datad => \u_uw_uart|ack\,
	combout => \u_uw_uart|nx40736z2\);

\u_uw_uart|modgen_counter_waitcount|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx57253z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z19\);

\u_uw_uart|modgen_counter_waitcount|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx56256z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z21\);

\u_uw_uart|ix39480z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z3\ = !\u_uw_uart|modgen_counter_waitcount|nx22081z17\ & \u_uw_uart|modgen_counter_waitcount|nx22081z21\ & \u_uw_uart|modgen_counter_waitcount|nx22081z19\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z17\,
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z21\,
	datac => \u_uw_uart|modgen_counter_waitcount|nx22081z19\,
	datad => \u_uw_uart|modgen_counter_waitcount|nx22081z23\,
	combout => \u_uw_uart|nx39480z3\);

\u_uw_uart|modgen_counter_waitcount|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx54262z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z25\);

\u_uw_uart|modgen_counter_waitcount|reg_q_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx22081z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx64508z1\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx51271z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23\ $ VCC
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

\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx52268z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22\ # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\ & 
-- (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22\ # GND)
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20\ = CARRY(!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22\ # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx52268z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx53265z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\ & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20\ $ GND) # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\ & 
-- !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20\ & VCC
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18\ = CARRY(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20\)

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

\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx54262z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18\ # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\ & 
-- (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18\ # GND)
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16\ = CARRY(!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18\ # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17\)

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

\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx55259z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\ & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16\ $ GND) # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\ & 
-- !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16\ & VCC
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14\ = CARRY(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx55259z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx56256z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14\ # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\ & 
-- (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14\ # GND)
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12\ = CARRY(!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14\ # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx56256z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12\);

\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx57253z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\ & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12\ $ GND) # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\ & 
-- !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12\ & VCC
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10\ = CARRY(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12\)

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

\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx58250z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10\ # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\ & 
-- (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10\ # GND)
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8\ = CARRY(!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10\ # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9\)

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

\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx59247z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\ & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8\ $ GND) # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\ & 
-- !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8\ & VCC
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6\ = CARRY(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8\)

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

\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx60244z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6\ # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\ & 
-- (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6\ # GND)
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4\ = CARRY(!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6\ # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5\)

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

\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx17096z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\ & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4\ $ GND) # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\ & 
-- !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4\ & VCC
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2\ = CARRY(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3\ & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4\)

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

\u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z1\ = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2\ $ \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1\,
	cin => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2\,
	combout => \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z1\);

\u_kirsch|reg_o_edge\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx1448z1\,
	ena => \u_kirsch|v_7_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|p_o_edge\);

\u_kirsch|ix60567z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx60567z6\ = \u_kirsch|col_flop_5_\ # \u_kirsch|col_flop_6_\ # \u_kirsch|col_flop_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|col_flop_5_\,
	datac => \u_kirsch|col_flop_6_\,
	datad => \u_kirsch|col_flop_7_\,
	combout => \u_kirsch|nx60567z6\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx54262z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z25\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z26\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z25\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z26\ # 
-- GND)
-- \u_uw_uart|modgen_counter_waitcount|nx22081z24\ = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z26\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z25\)

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

\u_uw_uart|modgen_counter_waitcount|ix22081z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx56256z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z21\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z22\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z21\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z22\ # 
-- GND)
-- \u_uw_uart|modgen_counter_waitcount|nx22081z20\ = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z22\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z21\)

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

\u_uw_uart|modgen_counter_waitcount|ix22081z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx57253z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z19\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z20\ $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z19\ & 
-- !\u_uw_uart|modgen_counter_waitcount|nx22081z20\ & VCC
-- \u_uw_uart|modgen_counter_waitcount|nx22081z18\ = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z19\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z20\)

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

\u_uw_uart|modgen_counter_waitcount|ix22081z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx21084z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z3\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z4\ $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z3\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z4\ & 
-- VCC
-- \u_uw_uart|modgen_counter_waitcount|nx22081z2\ = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z3\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z4\)

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

\u_uw_uart|modgen_counter_waitcount|ix22081z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx22081z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z2\ $ \u_uw_uart|modgen_counter_waitcount|nx64508z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|modgen_counter_waitcount|nx64508z1\,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z2\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx22081z1\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx56256z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx53265z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\);

\u_uw_uart|i_uarts|ix34394z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z9\ = !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\ & \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\ & \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\ & \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\,
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\,
	datac => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\,
	datad => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\,
	combout => \u_uw_uart|i_uarts|nx34394z9\);

\u_uw_uart|i_uarts|reg_RxFSM_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx14544z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxFSM_2_\);

\u_kirsch|reg_r8_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r8_6_~feeder_combout\,
	sdata => \u_kirsch|r4_6_\,
	sload => \u_kirsch|ix15883z6955|nx23445z1\,
	ena => \u_kirsch|v_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_6_\);

\u_kirsch|reg_r9_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r9_add12_17i1|nx44952z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r9_8_\);

\u_kirsch|reg_r8_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r8_4_~feeder_combout\,
	sdata => \u_kirsch|r4_4_\,
	sload => \u_kirsch|ix15883z6955|nx23445z1\,
	ena => \u_kirsch|v_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_4_\);

\u_kirsch|reg_r9_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r9_add12_17i1|nx42958z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r9_6_\);

\u_kirsch|reg_r8_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r8_2_~feeder_combout\,
	sdata => \u_kirsch|r4_2_\,
	sload => \u_kirsch|ix15883z6955|nx23445z1\,
	ena => \u_kirsch|v_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_2_\);

\u_kirsch|reg_r9_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r9_add12_17i1|nx40964z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r9_4_\);

\u_kirsch|reg_r8_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r8_0_~feeder_combout\,
	sdata => \u_kirsch|r4_0_\,
	sload => \u_kirsch|ix15883z6955|nx23445z1\,
	ena => \u_kirsch|v_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_0_\);

\u_kirsch|reg_r9_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r9_add12_17i1|nx38970z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r9_2_\);

\u_kirsch|reg_r9_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r3_0_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r9_0_\);

\u_kirsch|sub_sub13_1|ix63795z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub_sub13_1|d_7_\ = \u_kirsch|r9_8_\ & (\u_kirsch|r8_5_\ & !\u_kirsch|sub_sub13_1|nx63795z5\ # !\u_kirsch|r8_5_\ & (\u_kirsch|sub_sub13_1|nx63795z5\ # GND)) # !\u_kirsch|r9_8_\ & (\u_kirsch|r8_5_\ & \u_kirsch|sub_sub13_1|nx63795z5\ & VCC # 
-- !\u_kirsch|r8_5_\ & !\u_kirsch|sub_sub13_1|nx63795z5\)
-- \u_kirsch|sub_sub13_1|nx63795z4\ = CARRY(\u_kirsch|r9_8_\ & (!\u_kirsch|sub_sub13_1|nx63795z5\ # !\u_kirsch|r8_5_\) # !\u_kirsch|r9_8_\ & !\u_kirsch|r8_5_\ & !\u_kirsch|sub_sub13_1|nx63795z5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r9_8_\,
	datab => \u_kirsch|r8_5_\,
	datad => VCC,
	cin => \u_kirsch|sub_sub13_1|nx63795z5\,
	combout => \u_kirsch|sub_sub13_1|d_7_\,
	cout => \u_kirsch|sub_sub13_1|nx63795z4\);

\u_kirsch|sub_sub13_1|ix63795z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub_sub13_1|d_8_\ = (\u_kirsch|r8_6_\ $ \u_kirsch|r9_9_\ $ \u_kirsch|sub_sub13_1|nx63795z4\) # GND
-- \u_kirsch|sub_sub13_1|nx63795z3\ = CARRY(\u_kirsch|r8_6_\ & (!\u_kirsch|sub_sub13_1|nx63795z4\ # !\u_kirsch|r9_9_\) # !\u_kirsch|r8_6_\ & !\u_kirsch|r9_9_\ & !\u_kirsch|sub_sub13_1|nx63795z4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r8_6_\,
	datab => \u_kirsch|r9_9_\,
	datad => VCC,
	cin => \u_kirsch|sub_sub13_1|nx63795z4\,
	combout => \u_kirsch|sub_sub13_1|d_8_\,
	cout => \u_kirsch|sub_sub13_1|nx63795z3\);

\u_kirsch|reg_r9_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r9_add12_17i1|nx46946z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r9_10_\);

\u_kirsch|sub_sub13_1|ix63795z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub_sub13_1|d_9_\ = \u_kirsch|r9_10_\ & (\u_kirsch|r8_7_\ & !\u_kirsch|sub_sub13_1|nx63795z3\ # !\u_kirsch|r8_7_\ & (\u_kirsch|sub_sub13_1|nx63795z3\ # GND)) # !\u_kirsch|r9_10_\ & (\u_kirsch|r8_7_\ & \u_kirsch|sub_sub13_1|nx63795z3\ & VCC # 
-- !\u_kirsch|r8_7_\ & !\u_kirsch|sub_sub13_1|nx63795z3\)
-- \u_kirsch|sub_sub13_1|nx63795z2\ = CARRY(\u_kirsch|r9_10_\ & (!\u_kirsch|sub_sub13_1|nx63795z3\ # !\u_kirsch|r8_7_\) # !\u_kirsch|r9_10_\ & !\u_kirsch|r8_7_\ & !\u_kirsch|sub_sub13_1|nx63795z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r9_10_\,
	datab => \u_kirsch|r8_7_\,
	datad => VCC,
	cin => \u_kirsch|sub_sub13_1|nx63795z3\,
	combout => \u_kirsch|sub_sub13_1|d_9_\,
	cout => \u_kirsch|sub_sub13_1|nx63795z2\);

\u_kirsch|reg_r8_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r8_8_~feeder_combout\,
	sdata => \u_kirsch|r4_8_\,
	sload => \u_kirsch|ix15883z6955|nx23445z1\,
	ena => \u_kirsch|v_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_8_\);

\u_kirsch|reg_r9_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r9_add12_17i1|nx63795z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r9_12_\);

\u_kirsch|ix1448z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx1448z1\ = \u_kirsch|sub_sub13_1|d_10_\ # \u_kirsch|sub_sub13_1|d_9_\ # \u_kirsch|nx1448z2\ # \u_kirsch|sub_sub13_1|d_8_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|sub_sub13_1|d_10_\,
	datab => \u_kirsch|sub_sub13_1|d_9_\,
	datac => \u_kirsch|nx1448z2\,
	datad => \u_kirsch|sub_sub13_1|d_8_\,
	combout => \u_kirsch|nx1448z1\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx53265z1\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\ & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18\ $ GND) # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\ & 
-- !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18\ & VCC
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16\ = CARRY(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx53265z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx56256z1\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12\ # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\ & 
-- (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12\ # GND)
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10\ = CARRY(!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12\ # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx56256z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10\);

\u_uw_uart|i_uarts|ix14544z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx14544z1\ = \u_uw_uart|i_uarts|RxFSM_3_\ # \u_uw_uart|i_uarts|not_Rx_r\ & \u_uw_uart|i_uarts|RxFSM_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|not_Rx_r\,
	datab => \u_uw_uart|i_uarts|RxFSM_1_\,
	datad => \u_uw_uart|i_uarts|RxFSM_3_\,
	combout => \u_uw_uart|i_uarts|nx14544z1\);

\u_kirsch|reg_r3_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r3_add13_11i1|nx44952z1\,
	sdata => \u_kirsch|r1_7_\,
	sload => \u_kirsch|v_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_7_\);

\u_kirsch|reg_r3_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r3_add13_11i1|nx39967z1\,
	sdata => \u_kirsch|r1_2_\,
	sload => \u_kirsch|v_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_2_\);

\u_kirsch|r9_add12_17i1|ix63795z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r9_add12_17i1|nx38970z1\ = \u_kirsch|r3_2_\ & (\u_kirsch|r3_1_\ & \u_kirsch|r9_add12_17i1|nx63795z24\ & VCC # !\u_kirsch|r3_1_\ & !\u_kirsch|r9_add12_17i1|nx63795z24\) # !\u_kirsch|r3_2_\ & (\u_kirsch|r3_1_\ & 
-- !\u_kirsch|r9_add12_17i1|nx63795z24\ # !\u_kirsch|r3_1_\ & (\u_kirsch|r9_add12_17i1|nx63795z24\ # GND))
-- \u_kirsch|r9_add12_17i1|nx63795z22\ = CARRY(\u_kirsch|r3_2_\ & !\u_kirsch|r3_1_\ & !\u_kirsch|r9_add12_17i1|nx63795z24\ # !\u_kirsch|r3_2_\ & (!\u_kirsch|r9_add12_17i1|nx63795z24\ # !\u_kirsch|r3_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_2_\,
	datab => \u_kirsch|r3_1_\,
	datad => VCC,
	cin => \u_kirsch|r9_add12_17i1|nx63795z24\,
	combout => \u_kirsch|r9_add12_17i1|nx38970z1\,
	cout => \u_kirsch|r9_add12_17i1|nx63795z22\);

\u_kirsch|r9_add12_17i1|ix63795z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r9_add12_17i1|nx40964z1\ = \u_kirsch|r3_4_\ & (\u_kirsch|r3_3_\ & \u_kirsch|r9_add12_17i1|nx63795z20\ & VCC # !\u_kirsch|r3_3_\ & !\u_kirsch|r9_add12_17i1|nx63795z20\) # !\u_kirsch|r3_4_\ & (\u_kirsch|r3_3_\ & 
-- !\u_kirsch|r9_add12_17i1|nx63795z20\ # !\u_kirsch|r3_3_\ & (\u_kirsch|r9_add12_17i1|nx63795z20\ # GND))
-- \u_kirsch|r9_add12_17i1|nx63795z18\ = CARRY(\u_kirsch|r3_4_\ & !\u_kirsch|r3_3_\ & !\u_kirsch|r9_add12_17i1|nx63795z20\ # !\u_kirsch|r3_4_\ & (!\u_kirsch|r9_add12_17i1|nx63795z20\ # !\u_kirsch|r3_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_4_\,
	datab => \u_kirsch|r3_3_\,
	datad => VCC,
	cin => \u_kirsch|r9_add12_17i1|nx63795z20\,
	combout => \u_kirsch|r9_add12_17i1|nx40964z1\,
	cout => \u_kirsch|r9_add12_17i1|nx63795z18\);

\u_kirsch|r9_add12_17i1|ix63795z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r9_add12_17i1|nx42958z1\ = \u_kirsch|r3_6_\ & (\u_kirsch|r3_5_\ & \u_kirsch|r9_add12_17i1|nx63795z16\ & VCC # !\u_kirsch|r3_5_\ & !\u_kirsch|r9_add12_17i1|nx63795z16\) # !\u_kirsch|r3_6_\ & (\u_kirsch|r3_5_\ & 
-- !\u_kirsch|r9_add12_17i1|nx63795z16\ # !\u_kirsch|r3_5_\ & (\u_kirsch|r9_add12_17i1|nx63795z16\ # GND))
-- \u_kirsch|r9_add12_17i1|nx63795z14\ = CARRY(\u_kirsch|r3_6_\ & !\u_kirsch|r3_5_\ & !\u_kirsch|r9_add12_17i1|nx63795z16\ # !\u_kirsch|r3_6_\ & (!\u_kirsch|r9_add12_17i1|nx63795z16\ # !\u_kirsch|r3_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_6_\,
	datab => \u_kirsch|r3_5_\,
	datad => VCC,
	cin => \u_kirsch|r9_add12_17i1|nx63795z16\,
	combout => \u_kirsch|r9_add12_17i1|nx42958z1\,
	cout => \u_kirsch|r9_add12_17i1|nx63795z14\);

\u_kirsch|r9_add12_17i1|ix63795z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r9_add12_17i1|nx44952z1\ = \u_kirsch|r3_7_\ & (\u_kirsch|r3_8_\ & \u_kirsch|r9_add12_17i1|nx63795z12\ & VCC # !\u_kirsch|r3_8_\ & !\u_kirsch|r9_add12_17i1|nx63795z12\) # !\u_kirsch|r3_7_\ & (\u_kirsch|r3_8_\ & 
-- !\u_kirsch|r9_add12_17i1|nx63795z12\ # !\u_kirsch|r3_8_\ & (\u_kirsch|r9_add12_17i1|nx63795z12\ # GND))
-- \u_kirsch|r9_add12_17i1|nx63795z10\ = CARRY(\u_kirsch|r3_7_\ & !\u_kirsch|r3_8_\ & !\u_kirsch|r9_add12_17i1|nx63795z12\ # !\u_kirsch|r3_7_\ & (!\u_kirsch|r9_add12_17i1|nx63795z12\ # !\u_kirsch|r3_8_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_7_\,
	datab => \u_kirsch|r3_8_\,
	datad => VCC,
	cin => \u_kirsch|r9_add12_17i1|nx63795z12\,
	combout => \u_kirsch|r9_add12_17i1|nx44952z1\,
	cout => \u_kirsch|r9_add12_17i1|nx63795z10\);

\u_kirsch|reg_r5_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r5_8_~feeder_combout\,
	sdata => \u_kirsch|r2_8_\,
	sload => \u_kirsch|ix9374z6956|nx23445z1\,
	ena => \u_kirsch|v_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r5_8_\);

\u_kirsch|r9_add12_17i1|ix63795z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r9_add12_17i1|nx46946z1\ = \u_kirsch|r3_9_\ & (\u_kirsch|r3_10_\ & \u_kirsch|r9_add12_17i1|nx63795z8\ & VCC # !\u_kirsch|r3_10_\ & !\u_kirsch|r9_add12_17i1|nx63795z8\) # !\u_kirsch|r3_9_\ & (\u_kirsch|r3_10_\ & 
-- !\u_kirsch|r9_add12_17i1|nx63795z8\ # !\u_kirsch|r3_10_\ & (\u_kirsch|r9_add12_17i1|nx63795z8\ # GND))
-- \u_kirsch|r9_add12_17i1|nx63795z6\ = CARRY(\u_kirsch|r3_9_\ & !\u_kirsch|r3_10_\ & !\u_kirsch|r9_add12_17i1|nx63795z8\ # !\u_kirsch|r3_9_\ & (!\u_kirsch|r9_add12_17i1|nx63795z8\ # !\u_kirsch|r3_10_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_9_\,
	datab => \u_kirsch|r3_10_\,
	datad => VCC,
	cin => \u_kirsch|r9_add12_17i1|nx63795z8\,
	combout => \u_kirsch|r9_add12_17i1|nx46946z1\,
	cout => \u_kirsch|r9_add12_17i1|nx63795z6\);

\u_kirsch|r9_add12_17i1|ix63795z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r9_add12_17i1|nx62798z1\ = (\u_kirsch|r3_10_\ $ \u_kirsch|r3_11_\ $ !\u_kirsch|r9_add12_17i1|nx63795z6\) # GND
-- \u_kirsch|r9_add12_17i1|nx63795z4\ = CARRY(\u_kirsch|r3_10_\ & (\u_kirsch|r3_11_\ # !\u_kirsch|r9_add12_17i1|nx63795z6\) # !\u_kirsch|r3_10_\ & \u_kirsch|r3_11_\ & !\u_kirsch|r9_add12_17i1|nx63795z6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_10_\,
	datab => \u_kirsch|r3_11_\,
	datad => VCC,
	cin => \u_kirsch|r9_add12_17i1|nx63795z6\,
	combout => \u_kirsch|r9_add12_17i1|nx62798z1\,
	cout => \u_kirsch|r9_add12_17i1|nx63795z4\);

\u_kirsch|reg_r3_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r3_add13_11i1|nx64792z1\,
	sclr => \u_kirsch|v_2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_12_\);

\u_kirsch|r9_add12_17i1|ix63795z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r9_add12_17i1|nx63795z1\ = \u_kirsch|r3_12_\ $ \u_kirsch|r9_add12_17i1|nx63795z4\ $ \u_kirsch|r3_11_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r3_12_\,
	datad => \u_kirsch|r3_11_\,
	cin => \u_kirsch|r9_add12_17i1|nx63795z4\,
	combout => \u_kirsch|r9_add12_17i1|nx63795z1\);

\u_kirsch|ix31323z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx31323z2\ = \u_kirsch|sub_sub13_1|d_9_\ # \u_kirsch|sub_sub13_1|d_8_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|sub_sub13_1|d_9_\,
	datad => \u_kirsch|sub_sub13_1|d_8_\,
	combout => \u_kirsch|nx31323z2\);

\u_kirsch|reg_o_dir_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r8_dir_1_\,
	sclr => \u_kirsch|nx31323z1\,
	sload => VCC,
	ena => \u_kirsch|v_7_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|p_o_dir_1_\);

\u_kirsch|reg_r6_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r6_add8_14i1|nx23445z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r6_8_\);

\u_kirsch|ix38408z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r3_11n1s1f1_8_\ = \u_kirsch|v_5_\ & \u_kirsch|r6_8_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|v_5_\,
	datad => \u_kirsch|r6_8_\,
	combout => \u_kirsch|r3_11n1s1f1_8_\);

\u_kirsch|reg_r6_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r6_add8_14i1|nx43955z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r6_6_\);

\u_kirsch|ix38408z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r3_11n1s1f1_6_\ = \u_kirsch|v_5_\ & (\u_kirsch|r6_6_\) # !\u_kirsch|v_5_\ & \u_kirsch|r1_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r1_6_\,
	datab => \u_kirsch|r6_6_\,
	datad => \u_kirsch|v_5_\,
	combout => \u_kirsch|r3_11n1s1f1_6_\);

\u_kirsch|reg_r6_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r6_add8_14i1|nx42958z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r6_5_\);

\u_kirsch|ix38408z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r3_11n1s1f1_5_\ = \u_kirsch|v_5_\ & (\u_kirsch|r6_5_\) # !\u_kirsch|v_5_\ & \u_kirsch|r1_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r1_5_\,
	datac => \u_kirsch|r6_5_\,
	datad => \u_kirsch|v_5_\,
	combout => \u_kirsch|r3_11n1s1f1_5_\);

\u_kirsch|reg_r6_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r6_add8_14i1|nx41961z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r6_4_\);

\u_kirsch|ix38408z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r3_11n1s1f1_4_\ = \u_kirsch|v_5_\ & (\u_kirsch|r6_4_\) # !\u_kirsch|v_5_\ & \u_kirsch|r1_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r1_4_\,
	datac => \u_kirsch|v_5_\,
	datad => \u_kirsch|r6_4_\,
	combout => \u_kirsch|r3_11n1s1f1_4_\);

\u_kirsch|reg_r6_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r6_add8_14i1|nx38970z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r6_1_\);

\u_kirsch|ix38408z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r3_11n1s1f1_1_\ = \u_kirsch|v_5_\ & \u_kirsch|r6_1_\ # !\u_kirsch|v_5_\ & (\u_kirsch|r1_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|v_5_\,
	datac => \u_kirsch|r6_1_\,
	datad => \u_kirsch|r1_1_\,
	combout => \u_kirsch|r3_11n1s1f1_1_\);

\u_kirsch|reg_r6_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r6_add8_14i1|nx37973z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r6_0_\);

\u_kirsch|ix38408z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r3_11n1s1f1_0_\ = \u_kirsch|v_5_\ & \u_kirsch|r6_0_\ # !\u_kirsch|v_5_\ & (\u_kirsch|r1_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r6_0_\,
	datac => \u_kirsch|v_5_\,
	datad => \u_kirsch|r1_0_\,
	combout => \u_kirsch|r3_11n1s1f1_0_\);

\u_kirsch|r3_add13_11i1|ix64792z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r3_add13_11i1|nx39967z1\ = (\u_kirsch|r3_2_\ $ \u_kirsch|r3_11n1s1f1_2_\ $ !\u_kirsch|r3_add13_11i1|nx64792z30\) # GND
-- \u_kirsch|r3_add13_11i1|nx64792z27\ = CARRY(\u_kirsch|r3_2_\ & (\u_kirsch|r3_11n1s1f1_2_\ # !\u_kirsch|r3_add13_11i1|nx64792z30\) # !\u_kirsch|r3_2_\ & \u_kirsch|r3_11n1s1f1_2_\ & !\u_kirsch|r3_add13_11i1|nx64792z30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_2_\,
	datab => \u_kirsch|r3_11n1s1f1_2_\,
	datad => VCC,
	cin => \u_kirsch|r3_add13_11i1|nx64792z30\,
	combout => \u_kirsch|r3_add13_11i1|nx39967z1\,
	cout => \u_kirsch|r3_add13_11i1|nx64792z27\);

\u_kirsch|r3_add13_11i1|ix64792z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r3_add13_11i1|nx44952z1\ = \u_kirsch|r3_7_\ & (\u_kirsch|r3_11n1s1f1_7_\ & \u_kirsch|r3_add13_11i1|nx64792z15\ & VCC # !\u_kirsch|r3_11n1s1f1_7_\ & !\u_kirsch|r3_add13_11i1|nx64792z15\) # !\u_kirsch|r3_7_\ & (\u_kirsch|r3_11n1s1f1_7_\ & 
-- !\u_kirsch|r3_add13_11i1|nx64792z15\ # !\u_kirsch|r3_11n1s1f1_7_\ & (\u_kirsch|r3_add13_11i1|nx64792z15\ # GND))
-- \u_kirsch|r3_add13_11i1|nx64792z12\ = CARRY(\u_kirsch|r3_7_\ & !\u_kirsch|r3_11n1s1f1_7_\ & !\u_kirsch|r3_add13_11i1|nx64792z15\ # !\u_kirsch|r3_7_\ & (!\u_kirsch|r3_add13_11i1|nx64792z15\ # !\u_kirsch|r3_11n1s1f1_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_7_\,
	datab => \u_kirsch|r3_11n1s1f1_7_\,
	datad => VCC,
	cin => \u_kirsch|r3_add13_11i1|nx64792z15\,
	combout => \u_kirsch|r3_add13_11i1|nx44952z1\,
	cout => \u_kirsch|r3_add13_11i1|nx64792z12\);

\u_kirsch|r3_add13_11i1|ix64792z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r3_add13_11i1|nx63795z1\ = \u_kirsch|r3_11_\ & !\u_kirsch|r3_add13_11i1|nx64792z5\ # !\u_kirsch|r3_11_\ & (\u_kirsch|r3_add13_11i1|nx64792z5\ # GND)
-- \u_kirsch|r3_add13_11i1|nx64792z3\ = CARRY(!\u_kirsch|r3_add13_11i1|nx64792z5\ # !\u_kirsch|r3_11_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r3_11_\,
	datad => VCC,
	cin => \u_kirsch|r3_add13_11i1|nx64792z5\,
	combout => \u_kirsch|r3_add13_11i1|nx63795z1\,
	cout => \u_kirsch|r3_add13_11i1|nx64792z3\);

\u_kirsch|r3_add13_11i1|ix64792z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r3_add13_11i1|nx64792z1\ = \u_kirsch|r3_add13_11i1|nx64792z3\ $ !\u_kirsch|r3_12_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r3_12_\,
	cin => \u_kirsch|r3_add13_11i1|nx64792z3\,
	combout => \u_kirsch|r3_add13_11i1|nx64792z1\);

\u_kirsch|reg_r5_dir_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx43423z1~_wirecell_combout\,
	sdata => \u_kirsch|r2_dir_0_\,
	sload => \u_kirsch|ix9374z6956|nx23445z1\,
	ena => \u_kirsch|v_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r5_dir_0_\);

\u_kirsch|reg_r8_dir_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r8_dir_1_~feeder_combout\,
	sdata => \u_kirsch|nx44420z1~_wirecell_combout\,
	sload => \u_kirsch|ix15883z6955|nx23445z1\,
	ena => \u_kirsch|v_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_dir_1_\);

\u_kirsch|reg_o_dir_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r8_dir_2_\,
	sclr => \u_kirsch|nx31323z1\,
	sload => VCC,
	ena => \u_kirsch|v_7_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|p_o_dir_2_\);

\u_kirsch|reg_g_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_6_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|g_6_\);

\u_kirsch|r6_add8_14i1|ix44952z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r6_add8_14i1|nx37973z1\ = \u_kirsch|g_0_\ & (\u_kirsch|f_0_\ $ VCC) # !\u_kirsch|g_0_\ & \u_kirsch|f_0_\ & VCC
-- \u_kirsch|r6_add8_14i1|nx44952z22\ = CARRY(\u_kirsch|g_0_\ & \u_kirsch|f_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|g_0_\,
	datab => \u_kirsch|f_0_\,
	datad => VCC,
	combout => \u_kirsch|r6_add8_14i1|nx37973z1\,
	cout => \u_kirsch|r6_add8_14i1|nx44952z22\);

\u_kirsch|r6_add8_14i1|ix44952z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r6_add8_14i1|nx38970z1\ = \u_kirsch|g_1_\ & (\u_kirsch|f_1_\ & \u_kirsch|r6_add8_14i1|nx44952z22\ & VCC # !\u_kirsch|f_1_\ & !\u_kirsch|r6_add8_14i1|nx44952z22\) # !\u_kirsch|g_1_\ & (\u_kirsch|f_1_\ & !\u_kirsch|r6_add8_14i1|nx44952z22\ # 
-- !\u_kirsch|f_1_\ & (\u_kirsch|r6_add8_14i1|nx44952z22\ # GND))
-- \u_kirsch|r6_add8_14i1|nx44952z19\ = CARRY(\u_kirsch|g_1_\ & !\u_kirsch|f_1_\ & !\u_kirsch|r6_add8_14i1|nx44952z22\ # !\u_kirsch|g_1_\ & (!\u_kirsch|r6_add8_14i1|nx44952z22\ # !\u_kirsch|f_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|g_1_\,
	datab => \u_kirsch|f_1_\,
	datad => VCC,
	cin => \u_kirsch|r6_add8_14i1|nx44952z22\,
	combout => \u_kirsch|r6_add8_14i1|nx38970z1\,
	cout => \u_kirsch|r6_add8_14i1|nx44952z19\);

\u_kirsch|r6_add8_14i1|ix44952z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r6_add8_14i1|nx41961z1\ = (\u_kirsch|f_4_\ $ \u_kirsch|g_4_\ $ !\u_kirsch|r6_add8_14i1|nx44952z13\) # GND
-- \u_kirsch|r6_add8_14i1|nx44952z10\ = CARRY(\u_kirsch|f_4_\ & (\u_kirsch|g_4_\ # !\u_kirsch|r6_add8_14i1|nx44952z13\) # !\u_kirsch|f_4_\ & \u_kirsch|g_4_\ & !\u_kirsch|r6_add8_14i1|nx44952z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_4_\,
	datab => \u_kirsch|g_4_\,
	datad => VCC,
	cin => \u_kirsch|r6_add8_14i1|nx44952z13\,
	combout => \u_kirsch|r6_add8_14i1|nx41961z1\,
	cout => \u_kirsch|r6_add8_14i1|nx44952z10\);

\u_kirsch|r6_add8_14i1|ix44952z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r6_add8_14i1|nx42958z1\ = \u_kirsch|g_5_\ & (\u_kirsch|f_5_\ & \u_kirsch|r6_add8_14i1|nx44952z10\ & VCC # !\u_kirsch|f_5_\ & !\u_kirsch|r6_add8_14i1|nx44952z10\) # !\u_kirsch|g_5_\ & (\u_kirsch|f_5_\ & !\u_kirsch|r6_add8_14i1|nx44952z10\ # 
-- !\u_kirsch|f_5_\ & (\u_kirsch|r6_add8_14i1|nx44952z10\ # GND))
-- \u_kirsch|r6_add8_14i1|nx44952z7\ = CARRY(\u_kirsch|g_5_\ & !\u_kirsch|f_5_\ & !\u_kirsch|r6_add8_14i1|nx44952z10\ # !\u_kirsch|g_5_\ & (!\u_kirsch|r6_add8_14i1|nx44952z10\ # !\u_kirsch|f_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|g_5_\,
	datab => \u_kirsch|f_5_\,
	datad => VCC,
	cin => \u_kirsch|r6_add8_14i1|nx44952z10\,
	combout => \u_kirsch|r6_add8_14i1|nx42958z1\,
	cout => \u_kirsch|r6_add8_14i1|nx44952z7\);

\u_kirsch|r6_add8_14i1|ix44952z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r6_add8_14i1|nx43955z1\ = (\u_kirsch|g_6_\ $ \u_kirsch|f_6_\ $ !\u_kirsch|r6_add8_14i1|nx44952z7\) # GND
-- \u_kirsch|r6_add8_14i1|nx44952z4\ = CARRY(\u_kirsch|g_6_\ & (\u_kirsch|f_6_\ # !\u_kirsch|r6_add8_14i1|nx44952z7\) # !\u_kirsch|g_6_\ & \u_kirsch|f_6_\ & !\u_kirsch|r6_add8_14i1|nx44952z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|g_6_\,
	datab => \u_kirsch|f_6_\,
	datad => VCC,
	cin => \u_kirsch|r6_add8_14i1|nx44952z7\,
	combout => \u_kirsch|r6_add8_14i1|nx43955z1\,
	cout => \u_kirsch|r6_add8_14i1|nx44952z4\);

\u_kirsch|r6_add8_14i1|ix44952z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r6_add8_14i1|nx44952z1\ = \u_kirsch|g_7_\ & (\u_kirsch|f_7_\ & \u_kirsch|r6_add8_14i1|nx44952z4\ & VCC # !\u_kirsch|f_7_\ & !\u_kirsch|r6_add8_14i1|nx44952z4\) # !\u_kirsch|g_7_\ & (\u_kirsch|f_7_\ & !\u_kirsch|r6_add8_14i1|nx44952z4\ # 
-- !\u_kirsch|f_7_\ & (\u_kirsch|r6_add8_14i1|nx44952z4\ # GND))
-- \u_kirsch|r6_add8_14i1|nx23445z2\ = CARRY(\u_kirsch|g_7_\ & !\u_kirsch|f_7_\ & !\u_kirsch|r6_add8_14i1|nx44952z4\ # !\u_kirsch|g_7_\ & (!\u_kirsch|r6_add8_14i1|nx44952z4\ # !\u_kirsch|f_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|g_7_\,
	datab => \u_kirsch|f_7_\,
	datad => VCC,
	cin => \u_kirsch|r6_add8_14i1|nx44952z4\,
	combout => \u_kirsch|r6_add8_14i1|nx44952z1\,
	cout => \u_kirsch|r6_add8_14i1|nx23445z2\);

\u_kirsch|r6_add8_14i1|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r6_add8_14i1|nx23445z1\ = !\u_kirsch|r6_add8_14i1|nx23445z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_kirsch|r6_add8_14i1|nx23445z2\,
	combout => \u_kirsch|r6_add8_14i1|nx23445z1\);

\u_kirsch|ix30960z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx30960z2\ = !\u_kirsch|v_2_\ & !\u_kirsch|v_1_\ & \u_kirsch|e_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|v_1_\,
	datad => \u_kirsch|e_6_\,
	combout => \u_kirsch|nx30960z2\);

\u_kirsch|ix30960z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx30960z4\ = !\u_kirsch|v_2_\ & !\u_kirsch|v_1_\ & \u_kirsch|e_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|v_1_\,
	datad => \u_kirsch|e_4_\,
	combout => \u_kirsch|nx30960z4\);

\u_kirsch|ix9650z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_10n1s1f1_6_\ = \u_kirsch|v_3_\ & !\u_kirsch|v_2_\ & !\u_kirsch|v_1_\ & \u_kirsch|e_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_3_\,
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|v_1_\,
	datad => \u_kirsch|e_6_\,
	combout => \u_kirsch|r2_10n1s1f1_6_\);

\u_kirsch|ix9650z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_10n1s1f1_5_\ = \u_kirsch|v_3_\ & !\u_kirsch|v_2_\ & !\u_kirsch|v_1_\ & \u_kirsch|e_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_3_\,
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|v_1_\,
	datad => \u_kirsch|e_5_\,
	combout => \u_kirsch|r2_10n1s1f1_5_\);

\u_kirsch|ix9650z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_10n1s1f1_4_\ = !\u_kirsch|v_1_\ & \u_kirsch|e_4_\ & !\u_kirsch|v_2_\ & \u_kirsch|v_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|e_4_\,
	datac => \u_kirsch|v_2_\,
	datad => \u_kirsch|v_3_\,
	combout => \u_kirsch|r2_10n1s1f1_4_\);

\u_kirsch|ix20740z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_10n1s4f1_3_\ = !\u_kirsch|nx20740z2\ & (\u_kirsch|nx20740z1\ & \u_kirsch|g_3_\ # !\u_kirsch|nx20740z1\ & (\u_kirsch|f_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|g_3_\,
	datab => \u_kirsch|nx20740z1\,
	datac => \u_kirsch|f_3_\,
	datad => \u_kirsch|nx20740z2\,
	combout => \u_kirsch|r2_10n1s4f1_3_\);

\u_kirsch|r2_add8_10i25|ix44952z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_add8_10i25|nx40964z1\ = \u_kirsch|r2_10n1s4f1_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r2_10n1s4f1_3_\,
	combout => \u_kirsch|r2_add8_10i25|nx40964z1\);

\u_kirsch|ix9650z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_10n1s1f1_2_\ = !\u_kirsch|v_1_\ & !\u_kirsch|v_2_\ & \u_kirsch|e_2_\ & \u_kirsch|v_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|e_2_\,
	datad => \u_kirsch|v_3_\,
	combout => \u_kirsch|r2_10n1s1f1_2_\);

\u_kirsch|ix9650z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_10n1s1f1_1_\ = !\u_kirsch|v_1_\ & \u_kirsch|e_1_\ & !\u_kirsch|v_2_\ & \u_kirsch|v_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|e_1_\,
	datac => \u_kirsch|v_2_\,
	datad => \u_kirsch|v_3_\,
	combout => \u_kirsch|r2_10n1s1f1_1_\);

\u_kirsch|ix9650z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_10n1s1f1_0_\ = !\u_kirsch|v_1_\ & !\u_kirsch|v_2_\ & \u_kirsch|v_3_\ & \u_kirsch|e_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|v_3_\,
	datad => \u_kirsch|e_0_\,
	combout => \u_kirsch|r2_10n1s1f1_0_\);

\u_kirsch|ix9650z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_10n1s1f1_7_\ = \u_kirsch|v_3_\ & !\u_kirsch|v_2_\ & !\u_kirsch|v_1_\ & \u_kirsch|e_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_3_\,
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|v_1_\,
	datad => \u_kirsch|e_7_\,
	combout => \u_kirsch|r2_10n1s1f1_7_\);

\u_kirsch|r7_add8_15i9|ix44952z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_add8_15i9|nx37973z1\ = \u_kirsch|f_0_\ & (\u_kirsch|e_0_\ $ VCC) # !\u_kirsch|f_0_\ & \u_kirsch|e_0_\ & VCC
-- \u_kirsch|r7_add8_15i9|nx44952z22\ = CARRY(\u_kirsch|f_0_\ & \u_kirsch|e_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_0_\,
	datab => \u_kirsch|e_0_\,
	datad => VCC,
	combout => \u_kirsch|r7_add8_15i9|nx37973z1\,
	cout => \u_kirsch|r7_add8_15i9|nx44952z22\);

\u_kirsch|r7_add8_15i9|ix44952z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_add8_15i9|nx38970z1\ = \u_kirsch|f_1_\ & (\u_kirsch|e_1_\ & \u_kirsch|r7_add8_15i9|nx44952z22\ & VCC # !\u_kirsch|e_1_\ & !\u_kirsch|r7_add8_15i9|nx44952z22\) # !\u_kirsch|f_1_\ & (\u_kirsch|e_1_\ & !\u_kirsch|r7_add8_15i9|nx44952z22\ # 
-- !\u_kirsch|e_1_\ & (\u_kirsch|r7_add8_15i9|nx44952z22\ # GND))
-- \u_kirsch|r7_add8_15i9|nx44952z19\ = CARRY(\u_kirsch|f_1_\ & !\u_kirsch|e_1_\ & !\u_kirsch|r7_add8_15i9|nx44952z22\ # !\u_kirsch|f_1_\ & (!\u_kirsch|r7_add8_15i9|nx44952z22\ # !\u_kirsch|e_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_1_\,
	datab => \u_kirsch|e_1_\,
	datad => VCC,
	cin => \u_kirsch|r7_add8_15i9|nx44952z22\,
	combout => \u_kirsch|r7_add8_15i9|nx38970z1\,
	cout => \u_kirsch|r7_add8_15i9|nx44952z19\);

\u_kirsch|r7_add8_15i9|ix44952z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_add8_15i9|nx39967z1\ = (\u_kirsch|f_2_\ $ \u_kirsch|e_2_\ $ !\u_kirsch|r7_add8_15i9|nx44952z19\) # GND
-- \u_kirsch|r7_add8_15i9|nx44952z16\ = CARRY(\u_kirsch|f_2_\ & (\u_kirsch|e_2_\ # !\u_kirsch|r7_add8_15i9|nx44952z19\) # !\u_kirsch|f_2_\ & \u_kirsch|e_2_\ & !\u_kirsch|r7_add8_15i9|nx44952z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_2_\,
	datab => \u_kirsch|e_2_\,
	datad => VCC,
	cin => \u_kirsch|r7_add8_15i9|nx44952z19\,
	combout => \u_kirsch|r7_add8_15i9|nx39967z1\,
	cout => \u_kirsch|r7_add8_15i9|nx44952z16\);

\u_kirsch|r7_add8_15i9|ix44952z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_add8_15i9|nx42958z1\ = \u_kirsch|e_5_\ & (\u_kirsch|f_5_\ & \u_kirsch|r7_add8_15i9|nx44952z10\ & VCC # !\u_kirsch|f_5_\ & !\u_kirsch|r7_add8_15i9|nx44952z10\) # !\u_kirsch|e_5_\ & (\u_kirsch|f_5_\ & !\u_kirsch|r7_add8_15i9|nx44952z10\ # 
-- !\u_kirsch|f_5_\ & (\u_kirsch|r7_add8_15i9|nx44952z10\ # GND))
-- \u_kirsch|r7_add8_15i9|nx44952z7\ = CARRY(\u_kirsch|e_5_\ & !\u_kirsch|f_5_\ & !\u_kirsch|r7_add8_15i9|nx44952z10\ # !\u_kirsch|e_5_\ & (!\u_kirsch|r7_add8_15i9|nx44952z10\ # !\u_kirsch|f_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|e_5_\,
	datab => \u_kirsch|f_5_\,
	datad => VCC,
	cin => \u_kirsch|r7_add8_15i9|nx44952z10\,
	combout => \u_kirsch|r7_add8_15i9|nx42958z1\,
	cout => \u_kirsch|r7_add8_15i9|nx44952z7\);

\u_kirsch|reg_r5_dir_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx44420z1~_wirecell_combout\,
	sdata => \u_kirsch|r2_dir_1_\,
	sload => \u_kirsch|ix9374z6956|nx23445z1\,
	ena => \u_kirsch|v_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r5_dir_1_\);

\u_kirsch|reg_r4_dir_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r2_dir_1_~_wirecell_combout\,
	sclr => \u_kirsch|nx82z1\,
	ena => \u_kirsch|nx47743z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|nx44420z1\);

\u_kirsch|reg_r8_dir_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r8_dir_2_~feeder_combout\,
	sdata => \u_kirsch|r4_dir_2_\,
	sload => \u_kirsch|ix15883z6955|nx23445z1\,
	ena => \u_kirsch|v_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_dir_2_\);

\u_kirsch|reg_r2_dir_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx20067z1\,
	ena => \u_kirsch|nx33634z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_dir_1_\);

\u_kirsch|reg_r5_dir_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r5_dir_2_~feeder_combout\,
	sdata => \u_kirsch|r2_dir_2_\,
	sload => \u_kirsch|ix9374z6956|nx23445z1\,
	ena => \u_kirsch|v_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r5_dir_2_\);

\u_kirsch|reg_r4_dir_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r4_dir_2_~feeder_combout\,
	sdata => \~GND~combout\,
	sload => \u_kirsch|v_5_\,
	ena => \u_kirsch|nx47743z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_dir_2_\);

\u_kirsch|ix20067z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx20067z1\ = !\u_kirsch|v_1_\ & \u_kirsch|v_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|v_1_\,
	datad => \u_kirsch|v_2_\,
	combout => \u_kirsch|nx20067z1\);

\u_kirsch|reg_r2_dir_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx19070z1\,
	ena => \u_kirsch|nx33634z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_dir_2_\);

\u_kirsch|ix19070z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx19070z1\ = !\u_kirsch|ix20740z19328|nx23445z1\ & !\u_kirsch|v_1_\ & !\u_kirsch|v_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|ix20740z19328|nx23445z1\,
	datac => \u_kirsch|v_1_\,
	datad => \u_kirsch|v_2_\,
	combout => \u_kirsch|nx19070z1\);

\u_kirsch|nx44420z1~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx44420z1~_wirecell_combout\ = !\u_kirsch|nx44420z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|nx44420z1\,
	combout => \u_kirsch|nx44420z1~_wirecell_combout\);

\u_kirsch|r2_dir_1_~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_dir_1_~_wirecell_combout\ = !\u_kirsch|r2_dir_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r2_dir_1_\,
	combout => \u_kirsch|r2_dir_1_~_wirecell_combout\);

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

\u_uw_uart|mdata_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|mdata_0_~feeder_combout\ = \u_kirsch|p_o_edge\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|p_o_edge\,
	combout => \u_uw_uart|mdata_0_~feeder_combout\);

\u_kirsch|r8_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r8_6_~feeder_combout\ = \u_kirsch|r5_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r5_6_\,
	combout => \u_kirsch|r8_6_~feeder_combout\);

\u_kirsch|r8_8_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r8_8_~feeder_combout\ = \u_kirsch|r5_8_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r5_8_\,
	combout => \u_kirsch|r8_8_~feeder_combout\);

\u_kirsch|r5_8_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r5_8_~feeder_combout\ = \u_kirsch|r4_8_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r4_8_\,
	combout => \u_kirsch|r5_8_~feeder_combout\);

\u_kirsch|r8_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r8_4_~feeder_combout\ = \u_kirsch|r5_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r5_4_\,
	combout => \u_kirsch|r8_4_~feeder_combout\);

\u_kirsch|r8_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r8_2_~feeder_combout\ = \u_kirsch|r5_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r5_2_\,
	combout => \u_kirsch|r8_2_~feeder_combout\);

\u_kirsch|r8_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r8_0_~feeder_combout\ = \u_kirsch|r5_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r5_0_\,
	combout => \u_kirsch|r8_0_~feeder_combout\);

\u_kirsch|r8_dir_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r8_dir_1_~feeder_combout\ = \u_kirsch|r5_dir_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r5_dir_1_\,
	combout => \u_kirsch|r8_dir_1_~feeder_combout\);

\u_kirsch|r8_dir_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r8_dir_2_~feeder_combout\ = \u_kirsch|r5_dir_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r5_dir_2_\,
	combout => \u_kirsch|r8_dir_2_~feeder_combout\);

\u_kirsch|r5_dir_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r5_dir_2_~feeder_combout\ = \u_kirsch|r4_dir_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r4_dir_2_\,
	combout => \u_kirsch|r5_dir_2_~feeder_combout\);

\u_kirsch|r4_dir_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r4_dir_2_~feeder_combout\ = \u_kirsch|r2_dir_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r2_dir_2_\,
	combout => \u_kirsch|r4_dir_2_~feeder_combout\);

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

\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

\u_uw_uart|i_uarts|ix5605z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx5605z1\ = \u_uw_uart|i_uarts|TxFSM_1_\ $ (\u_uw_uart|i_uarts|TopTx\ & \u_uw_uart|i_uarts|TxFSM_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TopTx\,
	datab => \u_uw_uart|i_uarts|TxFSM_0_\,
	datac => \u_uw_uart|i_uarts|TxFSM_1_\,
	combout => \u_uw_uart|i_uarts|nx5605z1\);

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

\u_uw_uart|i_uarts|reg_TxFSM_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx5605z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxFSM_1_\);

\u_uw_uart|i_uarts|ix48926z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx48926z1\ = \u_uw_uart|i_uarts|TopTx\ & (\u_uw_uart|i_uarts|TxFSM_0_\ & (\u_uw_uart|i_uarts|TxBitCnt_0_\ # !\u_uw_uart|i_uarts|TxFSM_1_\) # !\u_uw_uart|i_uarts|TxFSM_0_\ & (\u_uw_uart|i_uarts|TxBitCnt_0_\ $ 
-- \u_uw_uart|i_uarts|TxFSM_1_\)) # !\u_uw_uart|i_uarts|TopTx\ & (\u_uw_uart|i_uarts|TxBitCnt_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TopTx\,
	datab => \u_uw_uart|i_uarts|TxFSM_0_\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_0_\,
	datad => \u_uw_uart|i_uarts|TxFSM_1_\,
	combout => \u_uw_uart|i_uarts|nx48926z1\);

\u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx48926z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxBitCnt_0_\);

\u_uw_uart|i_uarts|ix51917z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx51917z2\ = \u_uw_uart|i_uarts|TopTx\ & (\u_uw_uart|i_uarts|TxFSM_0_\ $ \u_uw_uart|i_uarts|TxFSM_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TopTx\,
	datac => \u_uw_uart|i_uarts|TxFSM_0_\,
	datad => \u_uw_uart|i_uarts|TxFSM_1_\,
	combout => \u_uw_uart|i_uarts|nx51917z2\);

\u_uw_uart|i_uarts|ix50920z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx50920z2\ = \u_uw_uart|i_uarts|TopTx\ & !\u_uw_uart|i_uarts|TxFSM_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TopTx\,
	datad => \u_uw_uart|i_uarts|TxFSM_1_\,
	combout => \u_uw_uart|i_uarts|nx50920z2\);

\u_uw_uart|i_uarts|ix49923z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx49923z1\ = \u_uw_uart|i_uarts|nx51917z2\ & !\u_uw_uart|i_uarts|nx50920z2\ & (\u_uw_uart|i_uarts|TxBitCnt_0_\ $ !\u_uw_uart|i_uarts|TxBitCnt_1_\) # !\u_uw_uart|i_uarts|nx51917z2\ & (\u_uw_uart|i_uarts|TxBitCnt_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxBitCnt_0_\,
	datab => \u_uw_uart|i_uarts|nx51917z2\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_1_\,
	datad => \u_uw_uart|i_uarts|nx50920z2\,
	combout => \u_uw_uart|i_uarts|nx49923z1\);

\u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx49923z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxBitCnt_1_\);

\u_uw_uart|i_uarts|ix50920z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx50920z3\ = \u_uw_uart|i_uarts|TxBitCnt_0_\ # \u_uw_uart|i_uarts|TxBitCnt_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|TxBitCnt_0_\,
	datad => \u_uw_uart|i_uarts|TxBitCnt_1_\,
	combout => \u_uw_uart|i_uarts|nx50920z3\);

\u_uw_uart|i_uarts|ix50920z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx50920z1\ = \u_uw_uart|i_uarts|nx51917z2\ & !\u_uw_uart|i_uarts|nx50920z2\ & (\u_uw_uart|i_uarts|TxBitCnt_2_\ $ !\u_uw_uart|i_uarts|nx50920z3\) # !\u_uw_uart|i_uarts|nx51917z2\ & (\u_uw_uart|i_uarts|TxBitCnt_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx50920z2\,
	datab => \u_uw_uart|i_uarts|nx51917z2\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_2_\,
	datad => \u_uw_uart|i_uarts|nx50920z3\,
	combout => \u_uw_uart|i_uarts|nx50920z1\);

\u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx50920z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxBitCnt_2_\);

\u_uw_uart|i_uarts|ix4608z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx4608z3\ = \u_uw_uart|i_uarts|TxBitCnt_3_\ # \u_uw_uart|i_uarts|TxBitCnt_1_\ # \u_uw_uart|i_uarts|TxBitCnt_2_\ # !\u_uw_uart|i_uarts|TxBitCnt_0_\

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

\u_uw_uart|i_uarts|ix4608z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx4608z1\ = \u_uw_uart|i_uarts|nx4608z2\ & (\u_uw_uart|i_uarts|TxFSM_0_\) # !\u_uw_uart|i_uarts|nx4608z2\ & !\u_uw_uart|i_uarts|TxFSM_0_\ & (!\u_uw_uart|i_uarts|TxFSM_1_\ # !\u_uw_uart|i_uarts|nx4608z3\)

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

\u_uw_uart|i_uarts|reg_TxFSM_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx4608z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxFSM_0_\);

\u_kirsch|r8_dir_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r8_dir_0_~feeder_combout\ = \u_kirsch|r5_dir_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r5_dir_0_\,
	combout => \u_kirsch|r8_dir_0_~feeder_combout\);

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

\u_uw_uart|i_uarts|ix57064z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Rx\ = !\rxflex~combout\ # !\nrst~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nrst~combout\,
	datad => \rxflex~combout\,
	combout => \u_uw_uart|i_uarts|NOT_Rx\);

\u_uw_uart|i_uarts|reg_Rx_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Rx\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|not_Rx_r\);

\u_uw_uart|i_uarts|not_Rx_r~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|not_Rx_r~_wirecell_combout\ = !\u_uw_uart|i_uarts|not_Rx_r\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|not_Rx_r\,
	combout => \u_uw_uart|i_uarts|not_Rx_r~_wirecell_combout\);

\u_uw_uart|i_uarts|ix11553z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx11553z1\ = \u_uw_uart|i_uarts|RxFSM_2_\ & \u_uw_uart|i_uarts|nx13547z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxFSM_2_\,
	datad => \u_uw_uart|i_uarts|nx13547z2\,
	combout => \u_uw_uart|i_uarts|nx11553z1\);

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

\u_uw_uart|i_uarts|reg_RxFSM_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx34394z2~_wirecell_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxFSM_1_\);

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

\u_uw_uart|i_uarts|ix15541z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx15541z3\ = \nrst~combout\ & \rxflex~combout\ # !\u_uw_uart|i_uarts|RxFSM_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nrst~combout\,
	datac => \u_uw_uart|i_uarts|RxFSM_6_\,
	datad => \rxflex~combout\,
	combout => \u_uw_uart|i_uarts|nx15541z3\);

\u_uw_uart|ix15671z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|rawrx\ = \nrst~combout\ & \rxflex~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nrst~combout\,
	datad => \rxflex~combout\,
	combout => \u_uw_uart|rawrx\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx51271z1\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21\ $ VCC
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

\u_uw_uart|i_uarts|ix65151z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx65151z1\ = \u_uw_uart|i_uarts|nx34394z3\ # !\u_uw_uart|i_uarts|nx34394z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|nx34394z3\,
	datad => \u_uw_uart|i_uarts|nx34394z2\,
	combout => \u_uw_uart|i_uarts|nx65151z1\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx51271z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx52268z1\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20\ # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\ & 
-- (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20\ # GND)
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18\ = CARRY(!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20\ # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx52268z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx52268z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx54262z1\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16\ # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\ & 
-- (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16\ # GND)
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14\ = CARRY(!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16\ # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx54262z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx54262z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx55259z1\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\ & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14\ $ GND) # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\ & 
-- !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14\ & VCC
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12\ = CARRY(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14\)

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

\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx57253z1\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\ & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10\ $ GND) # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\ & 
-- !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10\ & VCC
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8\ = CARRY(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx57253z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx57253z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx58250z1\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8\ # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\ & 
-- (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8\ # GND)
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6\ = CARRY(!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8\ # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx58250z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx59247z1\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\ & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6\ $ GND) # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\ & 
-- !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6\ & VCC
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4\ = CARRY(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx59247z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx59247z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx60244z1\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4\ # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\ & 
-- (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4\ # GND)
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2\ = CARRY(!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4\ # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx60244z1\,
	cout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z1\ = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2\ $ !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1\,
	cin => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2\,
	combout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z1\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx60244z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\);

\u_uw_uart|i_uarts|ix34394z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z4\ = \u_uw_uart|i_uarts|TxDivisor_5_\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDivisor_5_\,
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1\,
	datac => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\,
	datad => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\,
	combout => \u_uw_uart|i_uarts|nx34394z4\);

\u_uw_uart|i_uarts|ix34394z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z10\ = !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\ & \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\,
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\,
	datac => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\,
	datad => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21\,
	combout => \u_uw_uart|i_uarts|nx34394z10\);

\u_uw_uart|i_uarts|ix34394z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z8\ = !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17\,
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15\,
	datac => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19\,
	datad => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21\,
	combout => \u_uw_uart|i_uarts|nx34394z8\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx58250z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\);

\u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx55259z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\);

\u_uw_uart|i_uarts|ix34394z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z7\ = !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11\,
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9\,
	datac => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7\,
	datad => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13\,
	combout => \u_uw_uart|i_uarts|nx34394z7\);

\u_uw_uart|i_uarts|ix34394z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z6\ = !\u_uw_uart|i_uarts|TxDivisor_5_\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\ & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDivisor_5_\,
	datab => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1\,
	datac => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3\,
	datad => \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5\,
	combout => \u_uw_uart|i_uarts|nx34394z6\);

\u_uw_uart|i_uarts|ix34394z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z5\ = \u_uw_uart|i_uarts|nx34394z8\ & \u_uw_uart|i_uarts|nx34394z7\ & \u_uw_uart|i_uarts|nx34394z6\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|nx34394z8\,
	datac => \u_uw_uart|i_uarts|nx34394z7\,
	datad => \u_uw_uart|i_uarts|nx34394z6\,
	combout => \u_uw_uart|i_uarts|nx34394z5\);

\u_uw_uart|i_uarts|ix34394z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z3\ = \u_uw_uart|i_uarts|nx34394z5\ # \u_uw_uart|i_uarts|nx34394z9\ & \u_uw_uart|i_uarts|nx34394z4\ & \u_uw_uart|i_uarts|nx34394z10\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx34394z9\,
	datab => \u_uw_uart|i_uarts|nx34394z4\,
	datac => \u_uw_uart|i_uarts|nx34394z10\,
	datad => \u_uw_uart|i_uarts|nx34394z5\,
	combout => \u_uw_uart|i_uarts|nx34394z3\);

\u_uw_uart|i_uarts|ix34394z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z1\ = \u_uw_uart|i_uarts|nx34394z3\ & \u_uw_uart|i_uarts|nx34394z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|nx34394z3\,
	datad => \u_uw_uart|i_uarts|nx34394z2\,
	combout => \u_uw_uart|i_uarts|nx34394z1\);

\u_uw_uart|i_uarts|reg_TopRx\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx34394z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TopRx\);

\u_uw_uart|i_uarts|ix15541z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx15541z2\ = \u_uw_uart|i_uarts|nx34394z2\ & (\u_uw_uart|i_uarts|RxFSM_6_\ & \u_uw_uart|rawrx\ # !\u_uw_uart|i_uarts|RxFSM_6_\ & (\u_uw_uart|i_uarts|TopRx\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxFSM_6_\,
	datab => \u_uw_uart|i_uarts|nx34394z2\,
	datac => \u_uw_uart|rawrx\,
	datad => \u_uw_uart|i_uarts|TopRx\,
	combout => \u_uw_uart|i_uarts|nx15541z2\);

\u_uw_uart|i_uarts|ix15541z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx15541z1\ = \u_uw_uart|i_uarts|nx15541z2\ # \u_uw_uart|i_uarts|not_Rx_r\ & \u_uw_uart|i_uarts|nx15541z3\ & !\u_uw_uart|i_uarts|nx34394z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|not_Rx_r\,
	datab => \u_uw_uart|i_uarts|nx15541z3\,
	datac => \u_uw_uart|i_uarts|nx15541z2\,
	datad => \u_uw_uart|i_uarts|nx34394z2\,
	combout => \u_uw_uart|i_uarts|nx15541z1\);

\u_uw_uart|i_uarts|reg_RxFSM_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx11553z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxFSM_5_\);

\u_uw_uart|i_uarts|ix16538z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx16538z1\ = !\u_uw_uart|i_uarts|RxFSM_6_\ & (\u_uw_uart|i_uarts|not_Rx_r\ # !\u_uw_uart|i_uarts|RxFSM_5_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|not_Rx_r\,
	datac => \u_uw_uart|i_uarts|RxFSM_5_\,
	datad => \u_uw_uart|i_uarts|RxFSM_6_\,
	combout => \u_uw_uart|i_uarts|nx16538z1\);

\u_uw_uart|i_uarts|reg_RxFSM_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx16538z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx34394z2\);

\u_uw_uart|i_uarts|ix8373z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|not_rtlc17_X_0_n360\ = \u_uw_uart|i_uarts|RxFSM_3_\ & \u_uw_uart|i_uarts|TopRx\ # !\u_uw_uart|i_uarts|RxFSM_3_\ & (!\u_uw_uart|i_uarts|nx34394z2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TopRx\,
	datab => \u_uw_uart|i_uarts|nx34394z2\,
	datad => \u_uw_uart|i_uarts|RxFSM_3_\,
	combout => \u_uw_uart|i_uarts|not_rtlc17_X_0_n360\);

\u_uw_uart|i_uarts|ix11364z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx11364z1\ = \u_uw_uart|i_uarts|TopRx\ & \u_uw_uart|i_uarts|nx34394z2\ & (\u_uw_uart|i_uarts|RxBitCnt_0_\ $ \u_uw_uart|i_uarts|RxFSM_3_\) # !\u_uw_uart|i_uarts|TopRx\ & \u_uw_uart|i_uarts|RxBitCnt_0_\ & (\u_uw_uart|i_uarts|nx34394z2\ # 
-- \u_uw_uart|i_uarts|RxFSM_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TopRx\,
	datab => \u_uw_uart|i_uarts|nx34394z2\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	datad => \u_uw_uart|i_uarts|RxFSM_3_\,
	combout => \u_uw_uart|i_uarts|nx11364z1\);

\u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx11364z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxBitCnt_0_\);

\u_uw_uart|i_uarts|ix10367z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx10367z1\ = \u_uw_uart|i_uarts|not_rtlc17_X_0_n360\ & \u_uw_uart|i_uarts|nx34394z2\ & (\u_uw_uart|i_uarts|RxBitCnt_1_\ $ \u_uw_uart|i_uarts|RxBitCnt_0_\) # !\u_uw_uart|i_uarts|not_rtlc17_X_0_n360\ & (\u_uw_uart|i_uarts|RxBitCnt_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx34394z2\,
	datab => \u_uw_uart|i_uarts|not_rtlc17_X_0_n360\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_1_\,
	datad => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	combout => \u_uw_uart|i_uarts|nx10367z1\);

\u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx10367z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxBitCnt_1_\);

\u_uw_uart|i_uarts|ix9370z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx9370z2\ = \u_uw_uart|i_uarts|RxBitCnt_0_\ & \u_uw_uart|i_uarts|RxBitCnt_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	datad => \u_uw_uart|i_uarts|RxBitCnt_1_\,
	combout => \u_uw_uart|i_uarts|nx9370z2\);

\u_uw_uart|i_uarts|ix9370z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx9370z1\ = \u_uw_uart|i_uarts|not_rtlc17_X_0_n360\ & \u_uw_uart|i_uarts|nx34394z2\ & (\u_uw_uart|i_uarts|RxBitCnt_2_\ $ \u_uw_uart|i_uarts|nx9370z2\) # !\u_uw_uart|i_uarts|not_rtlc17_X_0_n360\ & (\u_uw_uart|i_uarts|RxBitCnt_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx34394z2\,
	datab => \u_uw_uart|i_uarts|not_rtlc17_X_0_n360\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_2_\,
	datad => \u_uw_uart|i_uarts|nx9370z2\,
	combout => \u_uw_uart|i_uarts|nx9370z1\);

\u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx9370z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxBitCnt_2_\);

\u_uw_uart|i_uarts|ix8373z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx8373z2\ = \u_uw_uart|i_uarts|RxBitCnt_3_\ $ (\u_uw_uart|i_uarts|RxBitCnt_1_\ & \u_uw_uart|i_uarts|RxBitCnt_2_\ & \u_uw_uart|i_uarts|RxBitCnt_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxBitCnt_1_\,
	datab => \u_uw_uart|i_uarts|RxBitCnt_2_\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	datad => \u_uw_uart|i_uarts|RxBitCnt_3_\,
	combout => \u_uw_uart|i_uarts|nx8373z2\);

\u_uw_uart|i_uarts|ix8373z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx8373z1\ = \u_uw_uart|i_uarts|not_rtlc17_X_0_n360\ & \u_uw_uart|i_uarts|nx34394z2\ & (\u_uw_uart|i_uarts|nx8373z2\) # !\u_uw_uart|i_uarts|not_rtlc17_X_0_n360\ & (\u_uw_uart|i_uarts|RxBitCnt_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx34394z2\,
	datab => \u_uw_uart|i_uarts|not_rtlc17_X_0_n360\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_3_\,
	datad => \u_uw_uart|i_uarts|nx8373z2\,
	combout => \u_uw_uart|i_uarts|nx8373z1\);

\u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx8373z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxBitCnt_3_\);

\u_uw_uart|i_uarts|ix13547z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx13547z2\ = !\u_uw_uart|i_uarts|RxBitCnt_1_\ & !\u_uw_uart|i_uarts|RxBitCnt_2_\ & !\u_uw_uart|i_uarts|RxBitCnt_0_\ & \u_uw_uart|i_uarts|RxBitCnt_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxBitCnt_1_\,
	datab => \u_uw_uart|i_uarts|RxBitCnt_2_\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	datad => \u_uw_uart|i_uarts|RxBitCnt_3_\,
	combout => \u_uw_uart|i_uarts|nx13547z2\);

\u_uw_uart|i_uarts|ix13547z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx13547z1\ = \u_uw_uart|i_uarts|RxFSM_2_\ & !\u_uw_uart|i_uarts|nx13547z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxFSM_2_\,
	datad => \u_uw_uart|i_uarts|nx13547z2\,
	combout => \u_uw_uart|i_uarts|nx13547z1\);

\u_uw_uart|i_uarts|reg_RxFSM_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx13547z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxFSM_3_\);

\u_uw_uart|i_uarts|ix54636z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx54636z1\ = \u_uw_uart|i_uarts|TopRx\ & \u_uw_uart|i_uarts|RxFSM_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TopRx\,
	datad => \u_uw_uart|i_uarts|RxFSM_3_\,
	combout => \u_uw_uart|i_uarts|nx54636z1\);

\u_uw_uart|i_uarts|reg_Rx_Reg_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|not_Rx_r~_wirecell_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_7_\);

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

\u_uw_uart|i_uarts|ix30017z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx30017z1\ = !\u_uw_uart|i_uarts|not_Rx_r\ & \u_uw_uart|i_uarts|TopRx\ & \u_uw_uart|i_uarts|RxFSM_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|not_Rx_r\,
	datac => \u_uw_uart|i_uarts|TopRx\,
	datad => \u_uw_uart|i_uarts|RxFSM_5_\,
	combout => \u_uw_uart|i_uarts|nx30017z1\);

\u_uw_uart|i_uarts|reg_Dout_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Dout_7_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_7_\);

\u_uw_uart|i_uarts|reg_RxRDYi\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx30017z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxRDY\);

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

\u_uw_uart|ix47405z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_7_\ = \u_uw_uart|o_pixavail\ & \u_uw_uart|rdata_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datad => \u_uw_uart|rdata_7_\,
	combout => \u_uw_uart|datain_7_\);

\u_uw_uart|ix58116z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx58116z1\ = !\u_uw_uart|o_pixavail\ & \u_uw_uart|i_uarts|RxRDY\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|o_pixavail\,
	datad => \u_uw_uart|i_uarts|RxRDY\,
	combout => \u_uw_uart|nx58116z1\);

\u_uw_uart|reg_charavail\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx58116z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|o_pixavail\);

\u_kirsch|reg_e_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|datain_7_\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|e_7_\);

\u_kirsch|reg_f_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|e_7_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_7_\);

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

\u_uw_uart|i_uarts|reg_Rx_Reg_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Rx_Reg_6_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_6_\);

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

\u_uw_uart|i_uarts|reg_Rx_Reg_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Rx_Reg_5_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_5_\);

\u_uw_uart|i_uarts|reg_Rx_Reg_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Rx_Reg_5_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_4_\);

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

\u_uw_uart|i_uarts|reg_Dout_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Dout_4_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_4_\);

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

\u_uw_uart|reg_rdata_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|rdata_4_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_4_\);

\u_uw_uart|ix44414z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_4_\ = \u_uw_uart|o_pixavail\ & \u_uw_uart|rdata_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datad => \u_uw_uart|rdata_4_\,
	combout => \u_uw_uart|datain_4_\);

\u_kirsch|reg_e_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|datain_4_\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|e_4_\);

\u_kirsch|reg_f_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|e_4_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_4_\);

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

\u_uw_uart|i_uarts|reg_Rx_Reg_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Rx_Reg_3_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_3_\);

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

\u_uw_uart|i_uarts|reg_Rx_Reg_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Rx_Reg_1_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_1_\);

\u_uw_uart|i_uarts|reg_Dout_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Rx_Reg_1_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_1_\);

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

\u_uw_uart|reg_rdata_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|rdata_1_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_1_\);

\u_uw_uart|ix41423z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_1_\ = \u_uw_uart|o_pixavail\ & \u_uw_uart|rdata_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datad => \u_uw_uart|rdata_1_\,
	combout => \u_uw_uart|datain_1_\);

\u_kirsch|reg_e_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|datain_1_\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|e_1_\);

\u_kirsch|reg_f_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|e_1_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_1_\);

\u_uw_uart|i_uarts|reg_Rx_Reg_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Rx_Reg_1_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_0_\);

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

\u_uw_uart|i_uarts|reg_Dout_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Dout_0_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_0_\);

\u_uw_uart|rdata_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|rdata_0_~feeder_combout\ = \u_uw_uart|i_uarts|Dout_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Dout_0_\,
	combout => \u_uw_uart|rdata_0_~feeder_combout\);

\u_uw_uart|reg_rdata_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|rdata_0_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_0_\);

\u_uw_uart|ix40426z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_0_\ = \u_uw_uart|o_pixavail\ & \u_uw_uart|rdata_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datad => \u_uw_uart|rdata_0_\,
	combout => \u_uw_uart|datain_0_\);

\u_kirsch|reg_e_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|datain_0_\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|e_0_\);

\u_kirsch|reg_f_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|e_0_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_0_\);

\u_kirsch|ix20740z19328|ix23445z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix20740z19328|nx23445z22\ = CARRY(!\u_kirsch|f_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_0_\,
	datad => VCC,
	cout => \u_kirsch|ix20740z19328|nx23445z22\);

\u_kirsch|ix20740z19328|ix23445z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix20740z19328|nx23445z19\ = CARRY(\u_kirsch|f_1_\ # !\u_kirsch|ix20740z19328|nx23445z22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_1_\,
	datad => VCC,
	cin => \u_kirsch|ix20740z19328|nx23445z22\,
	cout => \u_kirsch|ix20740z19328|nx23445z19\);

\u_kirsch|ix20740z19328|ix23445z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix20740z19328|nx23445z16\ = CARRY(!\u_kirsch|f_2_\ & !\u_kirsch|ix20740z19328|nx23445z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_2_\,
	datad => VCC,
	cin => \u_kirsch|ix20740z19328|nx23445z19\,
	cout => \u_kirsch|ix20740z19328|nx23445z16\);

\u_kirsch|ix20740z19328|ix23445z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix20740z19328|nx23445z13\ = CARRY(\u_kirsch|f_3_\ # !\u_kirsch|ix20740z19328|nx23445z16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_3_\,
	datad => VCC,
	cin => \u_kirsch|ix20740z19328|nx23445z16\,
	cout => \u_kirsch|ix20740z19328|nx23445z13\);

\u_kirsch|ix20740z19328|ix23445z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix20740z19328|nx23445z10\ = CARRY(!\u_kirsch|f_4_\ & !\u_kirsch|ix20740z19328|nx23445z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|f_4_\,
	datad => VCC,
	cin => \u_kirsch|ix20740z19328|nx23445z13\,
	cout => \u_kirsch|ix20740z19328|nx23445z10\);

\u_kirsch|ix20740z19328|ix23445z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix20740z19328|nx23445z7\ = CARRY(\u_kirsch|f_5_\ # !\u_kirsch|ix20740z19328|nx23445z10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_5_\,
	datad => VCC,
	cin => \u_kirsch|ix20740z19328|nx23445z10\,
	cout => \u_kirsch|ix20740z19328|nx23445z7\);

\u_kirsch|ix20740z19328|ix23445z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix20740z19328|nx23445z4\ = CARRY(!\u_kirsch|f_6_\ & !\u_kirsch|ix20740z19328|nx23445z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_6_\,
	datad => VCC,
	cin => \u_kirsch|ix20740z19328|nx23445z7\,
	cout => \u_kirsch|ix20740z19328|nx23445z4\);

\u_kirsch|ix20740z19328|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix20740z19328|nx23445z1\ = \u_kirsch|ix20740z19328|nx23445z4\ & !\u_kirsch|f_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|f_7_\,
	cin => \u_kirsch|ix20740z19328|nx23445z4\,
	combout => \u_kirsch|ix20740z19328|nx23445z1\);

\u_kirsch|reg_v_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|o_pixavail\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|v_1_\);

\u_kirsch|reg_v_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|v_1_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|v_2_\);

\u_kirsch|ix21064z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx21064z1\ = \u_kirsch|v_1_\ # !\u_kirsch|ix20740z19328|nx23445z1\ & !\u_kirsch|v_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|ix20740z19328|nx23445z1\,
	datac => \u_kirsch|v_1_\,
	datad => \u_kirsch|v_2_\,
	combout => \u_kirsch|nx21064z1\);

\u_kirsch|ix33634z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx33634z1\ = \u_kirsch|v_3_\ # \u_kirsch|v_2_\ # \u_kirsch|v_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_3_\,
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|v_1_\,
	combout => \u_kirsch|nx33634z1\);

\u_kirsch|reg_r2_dir_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx21064z1\,
	ena => \u_kirsch|nx33634z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_dir_0_\);

\u_kirsch|r2_dir_0_~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_dir_0_~_wirecell_combout\ = !\u_kirsch|r2_dir_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r2_dir_0_\,
	combout => \u_kirsch|r2_dir_0_~_wirecell_combout\);

\u_kirsch|reg_v_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|v_2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|v_3_\);

\u_kirsch|v_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|v_4_~feeder_combout\ = \u_kirsch|v_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|v_3_\,
	combout => \u_kirsch|v_4_~feeder_combout\);

\u_kirsch|reg_v_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|v_4_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|v_4_\);

\u_kirsch|reg_v_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|v_4_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|v_5_\);

\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

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

\u_uw_uart|i_uarts|reg_Dout_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Dout_6_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_6_\);

\u_uw_uart|rdata_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|rdata_6_~feeder_combout\ = \u_uw_uart|i_uarts|Dout_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Dout_6_\,
	combout => \u_uw_uart|rdata_6_~feeder_combout\);

\u_uw_uart|reg_rdata_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|rdata_6_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_6_\);

\u_uw_uart|ix46408z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_6_\ = \u_uw_uart|o_pixavail\ & \u_uw_uart|rdata_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datad => \u_uw_uart|rdata_6_\,
	combout => \u_uw_uart|datain_6_\);

\u_kirsch|reg_e_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|datain_6_\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|e_6_\);

\u_kirsch|reg_f_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|e_6_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_6_\);

\u_uw_uart|i_uarts|reg_Dout_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Rx_Reg_5_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_5_\);

\u_uw_uart|rdata_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|rdata_5_~feeder_combout\ = \u_uw_uart|i_uarts|Dout_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Dout_5_\,
	combout => \u_uw_uart|rdata_5_~feeder_combout\);

\u_uw_uart|reg_rdata_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|rdata_5_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_5_\);

\u_uw_uart|ix45411z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_5_\ = \u_uw_uart|o_pixavail\ & \u_uw_uart|rdata_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datad => \u_uw_uart|rdata_5_\,
	combout => \u_uw_uart|datain_5_\);

\u_kirsch|reg_e_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|datain_5_\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|e_5_\);

\u_kirsch|reg_f_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|e_5_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_5_\);

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

\u_uw_uart|reg_rdata_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|rdata_3_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_3_\);

\u_uw_uart|ix43417z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_3_\ = \u_uw_uart|o_pixavail\ & \u_uw_uart|rdata_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datad => \u_uw_uart|rdata_3_\,
	combout => \u_uw_uart|datain_3_\);

\u_kirsch|reg_e_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|datain_3_\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|e_3_\);

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

\u_uw_uart|i_uarts|reg_Dout_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Dout_2_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_2_\);

\u_uw_uart|rdata_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|rdata_2_~feeder_combout\ = \u_uw_uart|i_uarts|Dout_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Dout_2_\,
	combout => \u_uw_uart|rdata_2_~feeder_combout\);

\u_uw_uart|reg_rdata_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|rdata_2_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_2_\);

\u_uw_uart|ix42420z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_2_\ = \u_uw_uart|o_pixavail\ & \u_uw_uart|rdata_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datac => \u_uw_uart|rdata_2_\,
	combout => \u_uw_uart|datain_2_\);

\u_kirsch|reg_e_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|datain_2_\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|e_2_\);

\u_kirsch|r7_add8_15i9|ix44952z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_add8_15i9|nx40964z1\ = \u_kirsch|f_3_\ & (\u_kirsch|e_3_\ & \u_kirsch|r7_add8_15i9|nx44952z16\ & VCC # !\u_kirsch|e_3_\ & !\u_kirsch|r7_add8_15i9|nx44952z16\) # !\u_kirsch|f_3_\ & (\u_kirsch|e_3_\ & !\u_kirsch|r7_add8_15i9|nx44952z16\ # 
-- !\u_kirsch|e_3_\ & (\u_kirsch|r7_add8_15i9|nx44952z16\ # GND))
-- \u_kirsch|r7_add8_15i9|nx44952z13\ = CARRY(\u_kirsch|f_3_\ & !\u_kirsch|e_3_\ & !\u_kirsch|r7_add8_15i9|nx44952z16\ # !\u_kirsch|f_3_\ & (!\u_kirsch|r7_add8_15i9|nx44952z16\ # !\u_kirsch|e_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_3_\,
	datab => \u_kirsch|e_3_\,
	datad => VCC,
	cin => \u_kirsch|r7_add8_15i9|nx44952z16\,
	combout => \u_kirsch|r7_add8_15i9|nx40964z1\,
	cout => \u_kirsch|r7_add8_15i9|nx44952z13\);

\u_kirsch|r7_add8_15i9|ix44952z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_add8_15i9|nx41961z1\ = (\u_kirsch|f_4_\ $ \u_kirsch|e_4_\ $ !\u_kirsch|r7_add8_15i9|nx44952z13\) # GND
-- \u_kirsch|r7_add8_15i9|nx44952z10\ = CARRY(\u_kirsch|f_4_\ & (\u_kirsch|e_4_\ # !\u_kirsch|r7_add8_15i9|nx44952z13\) # !\u_kirsch|f_4_\ & \u_kirsch|e_4_\ & !\u_kirsch|r7_add8_15i9|nx44952z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_4_\,
	datab => \u_kirsch|e_4_\,
	datad => VCC,
	cin => \u_kirsch|r7_add8_15i9|nx44952z13\,
	combout => \u_kirsch|r7_add8_15i9|nx41961z1\,
	cout => \u_kirsch|r7_add8_15i9|nx44952z10\);

\u_kirsch|r7_add8_15i9|ix44952z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_add8_15i9|nx43955z1\ = (\u_kirsch|e_6_\ $ \u_kirsch|f_6_\ $ !\u_kirsch|r7_add8_15i9|nx44952z7\) # GND
-- \u_kirsch|r7_add8_15i9|nx44952z4\ = CARRY(\u_kirsch|e_6_\ & (\u_kirsch|f_6_\ # !\u_kirsch|r7_add8_15i9|nx44952z7\) # !\u_kirsch|e_6_\ & \u_kirsch|f_6_\ & !\u_kirsch|r7_add8_15i9|nx44952z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|e_6_\,
	datab => \u_kirsch|f_6_\,
	datad => VCC,
	cin => \u_kirsch|r7_add8_15i9|nx44952z7\,
	combout => \u_kirsch|r7_add8_15i9|nx43955z1\,
	cout => \u_kirsch|r7_add8_15i9|nx44952z4\);

\u_kirsch|r7_add8_15i9|ix44952z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_add8_15i9|nx44952z1\ = \u_kirsch|f_7_\ & (\u_kirsch|e_7_\ & \u_kirsch|r7_add8_15i9|nx44952z4\ & VCC # !\u_kirsch|e_7_\ & !\u_kirsch|r7_add8_15i9|nx44952z4\) # !\u_kirsch|f_7_\ & (\u_kirsch|e_7_\ & !\u_kirsch|r7_add8_15i9|nx44952z4\ # 
-- !\u_kirsch|e_7_\ & (\u_kirsch|r7_add8_15i9|nx44952z4\ # GND))
-- \u_kirsch|r7_add8_15i9|nx23445z2\ = CARRY(\u_kirsch|f_7_\ & !\u_kirsch|e_7_\ & !\u_kirsch|r7_add8_15i9|nx44952z4\ # !\u_kirsch|f_7_\ & (!\u_kirsch|r7_add8_15i9|nx44952z4\ # !\u_kirsch|e_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_7_\,
	datab => \u_kirsch|e_7_\,
	datad => VCC,
	cin => \u_kirsch|r7_add8_15i9|nx44952z4\,
	combout => \u_kirsch|r7_add8_15i9|nx44952z1\,
	cout => \u_kirsch|r7_add8_15i9|nx23445z2\);

\u_kirsch|r7_add8_15i9|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_add8_15i9|nx23445z1\ = !\u_kirsch|r7_add8_15i9|nx23445z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_kirsch|r7_add8_15i9|nx23445z2\,
	combout => \u_kirsch|r7_add8_15i9|nx23445z1\);

\u_kirsch|reg_g_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_5_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|g_5_\);

\u_kirsch|reg_f_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|e_2_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_2_\);

\u_kirsch|reg_g_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_2_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|g_2_\);

\u_kirsch|reg_g_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_1_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|g_1_\);

\u_kirsch|reg_g_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_0_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|g_0_\);

\u_kirsch|r7_add9_15i10|ix45949z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_add9_15i10|nx37973z1\ = \u_kirsch|r7_add8_15i9|nx37973z1\ & (\u_kirsch|g_0_\ $ VCC) # !\u_kirsch|r7_add8_15i9|nx37973z1\ & \u_kirsch|g_0_\ & VCC
-- \u_kirsch|r7_add9_15i10|nx45949z24\ = CARRY(\u_kirsch|r7_add8_15i9|nx37973z1\ & \u_kirsch|g_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r7_add8_15i9|nx37973z1\,
	datab => \u_kirsch|g_0_\,
	datad => VCC,
	combout => \u_kirsch|r7_add9_15i10|nx37973z1\,
	cout => \u_kirsch|r7_add9_15i10|nx45949z24\);

\u_kirsch|r7_add9_15i10|ix45949z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_add9_15i10|nx38970z1\ = \u_kirsch|r7_add8_15i9|nx38970z1\ & (\u_kirsch|g_1_\ & \u_kirsch|r7_add9_15i10|nx45949z24\ & VCC # !\u_kirsch|g_1_\ & !\u_kirsch|r7_add9_15i10|nx45949z24\) # !\u_kirsch|r7_add8_15i9|nx38970z1\ & (\u_kirsch|g_1_\ & 
-- !\u_kirsch|r7_add9_15i10|nx45949z24\ # !\u_kirsch|g_1_\ & (\u_kirsch|r7_add9_15i10|nx45949z24\ # GND))
-- \u_kirsch|r7_add9_15i10|nx45949z21\ = CARRY(\u_kirsch|r7_add8_15i9|nx38970z1\ & !\u_kirsch|g_1_\ & !\u_kirsch|r7_add9_15i10|nx45949z24\ # !\u_kirsch|r7_add8_15i9|nx38970z1\ & (!\u_kirsch|r7_add9_15i10|nx45949z24\ # !\u_kirsch|g_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r7_add8_15i9|nx38970z1\,
	datab => \u_kirsch|g_1_\,
	datad => VCC,
	cin => \u_kirsch|r7_add9_15i10|nx45949z24\,
	combout => \u_kirsch|r7_add9_15i10|nx38970z1\,
	cout => \u_kirsch|r7_add9_15i10|nx45949z21\);

\u_kirsch|r7_add9_15i10|ix45949z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_add9_15i10|nx39967z1\ = (\u_kirsch|r7_add8_15i9|nx39967z1\ $ \u_kirsch|g_2_\ $ !\u_kirsch|r7_add9_15i10|nx45949z21\) # GND
-- \u_kirsch|r7_add9_15i10|nx45949z18\ = CARRY(\u_kirsch|r7_add8_15i9|nx39967z1\ & (\u_kirsch|g_2_\ # !\u_kirsch|r7_add9_15i10|nx45949z21\) # !\u_kirsch|r7_add8_15i9|nx39967z1\ & \u_kirsch|g_2_\ & !\u_kirsch|r7_add9_15i10|nx45949z21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r7_add8_15i9|nx39967z1\,
	datab => \u_kirsch|g_2_\,
	datad => VCC,
	cin => \u_kirsch|r7_add9_15i10|nx45949z21\,
	combout => \u_kirsch|r7_add9_15i10|nx39967z1\,
	cout => \u_kirsch|r7_add9_15i10|nx45949z18\);

\u_kirsch|r7_add9_15i10|ix45949z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_add9_15i10|nx40964z1\ = \u_kirsch|g_3_\ & (\u_kirsch|r7_add8_15i9|nx40964z1\ & \u_kirsch|r7_add9_15i10|nx45949z18\ & VCC # !\u_kirsch|r7_add8_15i9|nx40964z1\ & !\u_kirsch|r7_add9_15i10|nx45949z18\) # !\u_kirsch|g_3_\ & 
-- (\u_kirsch|r7_add8_15i9|nx40964z1\ & !\u_kirsch|r7_add9_15i10|nx45949z18\ # !\u_kirsch|r7_add8_15i9|nx40964z1\ & (\u_kirsch|r7_add9_15i10|nx45949z18\ # GND))
-- \u_kirsch|r7_add9_15i10|nx45949z15\ = CARRY(\u_kirsch|g_3_\ & !\u_kirsch|r7_add8_15i9|nx40964z1\ & !\u_kirsch|r7_add9_15i10|nx45949z18\ # !\u_kirsch|g_3_\ & (!\u_kirsch|r7_add9_15i10|nx45949z18\ # !\u_kirsch|r7_add8_15i9|nx40964z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|g_3_\,
	datab => \u_kirsch|r7_add8_15i9|nx40964z1\,
	datad => VCC,
	cin => \u_kirsch|r7_add9_15i10|nx45949z18\,
	combout => \u_kirsch|r7_add9_15i10|nx40964z1\,
	cout => \u_kirsch|r7_add9_15i10|nx45949z15\);

\u_kirsch|r7_add9_15i10|ix45949z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_add9_15i10|nx41961z1\ = (\u_kirsch|g_4_\ $ \u_kirsch|r7_add8_15i9|nx41961z1\ $ !\u_kirsch|r7_add9_15i10|nx45949z15\) # GND
-- \u_kirsch|r7_add9_15i10|nx45949z12\ = CARRY(\u_kirsch|g_4_\ & (\u_kirsch|r7_add8_15i9|nx41961z1\ # !\u_kirsch|r7_add9_15i10|nx45949z15\) # !\u_kirsch|g_4_\ & \u_kirsch|r7_add8_15i9|nx41961z1\ & !\u_kirsch|r7_add9_15i10|nx45949z15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|g_4_\,
	datab => \u_kirsch|r7_add8_15i9|nx41961z1\,
	datad => VCC,
	cin => \u_kirsch|r7_add9_15i10|nx45949z15\,
	combout => \u_kirsch|r7_add9_15i10|nx41961z1\,
	cout => \u_kirsch|r7_add9_15i10|nx45949z12\);

\u_kirsch|r7_add9_15i10|ix45949z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_add9_15i10|nx42958z1\ = \u_kirsch|r7_add8_15i9|nx42958z1\ & (\u_kirsch|g_5_\ & \u_kirsch|r7_add9_15i10|nx45949z12\ & VCC # !\u_kirsch|g_5_\ & !\u_kirsch|r7_add9_15i10|nx45949z12\) # !\u_kirsch|r7_add8_15i9|nx42958z1\ & (\u_kirsch|g_5_\ & 
-- !\u_kirsch|r7_add9_15i10|nx45949z12\ # !\u_kirsch|g_5_\ & (\u_kirsch|r7_add9_15i10|nx45949z12\ # GND))
-- \u_kirsch|r7_add9_15i10|nx45949z9\ = CARRY(\u_kirsch|r7_add8_15i9|nx42958z1\ & !\u_kirsch|g_5_\ & !\u_kirsch|r7_add9_15i10|nx45949z12\ # !\u_kirsch|r7_add8_15i9|nx42958z1\ & (!\u_kirsch|r7_add9_15i10|nx45949z12\ # !\u_kirsch|g_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r7_add8_15i9|nx42958z1\,
	datab => \u_kirsch|g_5_\,
	datad => VCC,
	cin => \u_kirsch|r7_add9_15i10|nx45949z12\,
	combout => \u_kirsch|r7_add9_15i10|nx42958z1\,
	cout => \u_kirsch|r7_add9_15i10|nx45949z9\);

\u_kirsch|r7_add9_15i10|ix45949z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_add9_15i10|nx43955z1\ = (\u_kirsch|g_6_\ $ \u_kirsch|r7_add8_15i9|nx43955z1\ $ !\u_kirsch|r7_add9_15i10|nx45949z9\) # GND
-- \u_kirsch|r7_add9_15i10|nx45949z6\ = CARRY(\u_kirsch|g_6_\ & (\u_kirsch|r7_add8_15i9|nx43955z1\ # !\u_kirsch|r7_add9_15i10|nx45949z9\) # !\u_kirsch|g_6_\ & \u_kirsch|r7_add8_15i9|nx43955z1\ & !\u_kirsch|r7_add9_15i10|nx45949z9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|g_6_\,
	datab => \u_kirsch|r7_add8_15i9|nx43955z1\,
	datad => VCC,
	cin => \u_kirsch|r7_add9_15i10|nx45949z9\,
	combout => \u_kirsch|r7_add9_15i10|nx43955z1\,
	cout => \u_kirsch|r7_add9_15i10|nx45949z6\);

\u_kirsch|r7_add9_15i10|ix45949z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_add9_15i10|nx44952z1\ = \u_kirsch|g_7_\ & (\u_kirsch|r7_add8_15i9|nx44952z1\ & \u_kirsch|r7_add9_15i10|nx45949z6\ & VCC # !\u_kirsch|r7_add8_15i9|nx44952z1\ & !\u_kirsch|r7_add9_15i10|nx45949z6\) # !\u_kirsch|g_7_\ & 
-- (\u_kirsch|r7_add8_15i9|nx44952z1\ & !\u_kirsch|r7_add9_15i10|nx45949z6\ # !\u_kirsch|r7_add8_15i9|nx44952z1\ & (\u_kirsch|r7_add9_15i10|nx45949z6\ # GND))
-- \u_kirsch|r7_add9_15i10|nx45949z3\ = CARRY(\u_kirsch|g_7_\ & !\u_kirsch|r7_add8_15i9|nx44952z1\ & !\u_kirsch|r7_add9_15i10|nx45949z6\ # !\u_kirsch|g_7_\ & (!\u_kirsch|r7_add9_15i10|nx45949z6\ # !\u_kirsch|r7_add8_15i9|nx44952z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|g_7_\,
	datab => \u_kirsch|r7_add8_15i9|nx44952z1\,
	datad => VCC,
	cin => \u_kirsch|r7_add9_15i10|nx45949z6\,
	combout => \u_kirsch|r7_add9_15i10|nx44952z1\,
	cout => \u_kirsch|r7_add9_15i10|nx45949z3\);

\u_kirsch|r7_add9_15i10|ix45949z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_add9_15i10|nx45949z1\ = \u_kirsch|r7_add8_15i9|nx23445z1\ & (\u_kirsch|r7_add9_15i10|nx45949z3\ $ GND) # !\u_kirsch|r7_add8_15i9|nx23445z1\ & !\u_kirsch|r7_add9_15i10|nx45949z3\ & VCC
-- \u_kirsch|r7_add9_15i10|nx23445z2\ = CARRY(\u_kirsch|r7_add8_15i9|nx23445z1\ & !\u_kirsch|r7_add9_15i10|nx45949z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r7_add8_15i9|nx23445z1\,
	datad => VCC,
	cin => \u_kirsch|r7_add9_15i10|nx45949z3\,
	combout => \u_kirsch|r7_add9_15i10|nx45949z1\,
	cout => \u_kirsch|r7_add9_15i10|nx23445z2\);

\u_kirsch|r7_add9_15i10|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r7_add9_15i10|nx23445z1\ = \u_kirsch|r7_add9_15i10|nx23445z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_kirsch|r7_add9_15i10|nx23445z2\,
	combout => \u_kirsch|r7_add9_15i10|nx23445z1\);

\u_kirsch|reg_r7_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r7_add9_15i10|nx23445z1\,
	ena => \u_kirsch|v_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r7_9_\);

\u_kirsch|ix47743z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx47743z1\ = !\u_kirsch|ix47743z6956|nx23445z1\ # !\u_kirsch|v_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|v_5_\,
	datad => \u_kirsch|ix47743z6956|nx23445z1\,
	combout => \u_kirsch|nx47743z1\);

\u_kirsch|reg_r4_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \~GND~combout\,
	sdata => \u_kirsch|r7_9_\,
	sload => \u_kirsch|v_5_\,
	ena => \u_kirsch|nx47743z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_9_\);

\u_kirsch|reg_r7_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r7_add9_15i10|nx45949z1\,
	ena => \u_kirsch|v_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r7_8_\);

\u_kirsch|ix20740z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx20740z1\ = \u_kirsch|v_2_\ # \u_kirsch|v_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|v_1_\,
	combout => \u_kirsch|nx20740z1\);

\u_kirsch|reg_g_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_7_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|g_7_\);

\u_kirsch|ix20740z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx20740z4\ = !\u_kirsch|v_1_\ & \u_kirsch|v_3_\ & \u_kirsch|ix20740z19328|nx23445z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|v_3_\,
	datad => \u_kirsch|ix20740z19328|nx23445z1\,
	combout => \u_kirsch|nx20740z4\);

\u_kirsch|ix20740z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx20740z2\ = \u_kirsch|nx20740z4\ # \u_kirsch|v_2_\ & !\u_kirsch|v_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_2_\,
	datab => \u_kirsch|v_1_\,
	datad => \u_kirsch|nx20740z4\,
	combout => \u_kirsch|nx20740z2\);

\u_kirsch|ix20740z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_10n1s4f1_7_\ = !\u_kirsch|nx20740z2\ & (\u_kirsch|nx20740z1\ & (\u_kirsch|g_7_\) # !\u_kirsch|nx20740z1\ & \u_kirsch|f_7_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_7_\,
	datab => \u_kirsch|nx20740z1\,
	datac => \u_kirsch|g_7_\,
	datad => \u_kirsch|nx20740z2\,
	combout => \u_kirsch|r2_10n1s4f1_7_\);

\u_kirsch|r2_add8_10i25|ix44952z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_add8_10i25|nx44952z1\ = \u_kirsch|r2_10n1s4f1_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r2_10n1s4f1_7_\,
	combout => \u_kirsch|r2_add8_10i25|nx44952z1\);

\u_kirsch|ix20740z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_10n1s4f1_6_\ = !\u_kirsch|nx20740z2\ & (\u_kirsch|nx20740z1\ & \u_kirsch|g_6_\ # !\u_kirsch|nx20740z1\ & (\u_kirsch|f_6_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|g_6_\,
	datab => \u_kirsch|nx20740z1\,
	datac => \u_kirsch|f_6_\,
	datad => \u_kirsch|nx20740z2\,
	combout => \u_kirsch|r2_10n1s4f1_6_\);

\u_kirsch|r2_add8_10i25|ix44952z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_add8_10i25|nx43955z1\ = \u_kirsch|r2_10n1s4f1_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r2_10n1s4f1_6_\,
	combout => \u_kirsch|r2_add8_10i25|nx43955z1\);

\u_kirsch|ix20740z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_10n1s4f1_5_\ = !\u_kirsch|nx20740z2\ & (\u_kirsch|nx20740z1\ & \u_kirsch|g_5_\ # !\u_kirsch|nx20740z1\ & (\u_kirsch|f_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|g_5_\,
	datab => \u_kirsch|nx20740z1\,
	datac => \u_kirsch|f_5_\,
	datad => \u_kirsch|nx20740z2\,
	combout => \u_kirsch|r2_10n1s4f1_5_\);

\u_kirsch|r2_add8_10i25|ix44952z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_add8_10i25|nx42958z1\ = \u_kirsch|r2_10n1s4f1_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r2_10n1s4f1_5_\,
	combout => \u_kirsch|r2_add8_10i25|nx42958z1\);

\u_kirsch|ix20740z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_10n1s4f1_4_\ = !\u_kirsch|nx20740z2\ & (\u_kirsch|nx20740z1\ & \u_kirsch|g_4_\ # !\u_kirsch|nx20740z1\ & (\u_kirsch|f_4_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|g_4_\,
	datab => \u_kirsch|nx20740z1\,
	datac => \u_kirsch|f_4_\,
	datad => \u_kirsch|nx20740z2\,
	combout => \u_kirsch|r2_10n1s4f1_4_\);

\u_kirsch|r2_add8_10i25|ix44952z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_add8_10i25|nx41961z1\ = \u_kirsch|r2_10n1s4f1_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r2_10n1s4f1_4_\,
	combout => \u_kirsch|r2_add8_10i25|nx41961z1\);

\u_kirsch|ix9650z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_10n1s1f1_3_\ = !\u_kirsch|v_1_\ & \u_kirsch|e_3_\ & !\u_kirsch|v_2_\ & \u_kirsch|v_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|e_3_\,
	datac => \u_kirsch|v_2_\,
	datad => \u_kirsch|v_3_\,
	combout => \u_kirsch|r2_10n1s1f1_3_\);

\u_kirsch|ix20740z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_10n1s4f1_2_\ = !\u_kirsch|nx20740z2\ & (\u_kirsch|nx20740z1\ & (\u_kirsch|g_2_\) # !\u_kirsch|nx20740z1\ & \u_kirsch|f_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx20740z1\,
	datab => \u_kirsch|f_2_\,
	datac => \u_kirsch|g_2_\,
	datad => \u_kirsch|nx20740z2\,
	combout => \u_kirsch|r2_10n1s4f1_2_\);

\u_kirsch|r2_add8_10i25|ix44952z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_add8_10i25|nx39967z1\ = \u_kirsch|r2_10n1s4f1_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r2_10n1s4f1_2_\,
	combout => \u_kirsch|r2_add8_10i25|nx39967z1\);

\u_kirsch|ix20740z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_10n1s4f1_1_\ = !\u_kirsch|nx20740z2\ & (\u_kirsch|nx20740z1\ & (\u_kirsch|g_1_\) # !\u_kirsch|nx20740z1\ & \u_kirsch|f_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx20740z1\,
	datab => \u_kirsch|f_1_\,
	datac => \u_kirsch|g_1_\,
	datad => \u_kirsch|nx20740z2\,
	combout => \u_kirsch|r2_10n1s4f1_1_\);

\u_kirsch|r2_add8_10i25|ix44952z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_add8_10i25|nx38970z1\ = \u_kirsch|r2_10n1s4f1_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r2_10n1s4f1_1_\,
	combout => \u_kirsch|r2_add8_10i25|nx38970z1\);

\u_kirsch|ix20740z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_10n1s4f1_0_\ = !\u_kirsch|nx20740z2\ & (\u_kirsch|nx20740z1\ & (\u_kirsch|g_0_\) # !\u_kirsch|nx20740z1\ & \u_kirsch|f_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx20740z1\,
	datab => \u_kirsch|f_0_\,
	datac => \u_kirsch|g_0_\,
	datad => \u_kirsch|nx20740z2\,
	combout => \u_kirsch|r2_10n1s4f1_0_\);

\u_kirsch|r2_add8_10i25|ix44952z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_add8_10i25|nx37973z1\ = \u_kirsch|r2_10n1s4f1_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r2_10n1s4f1_0_\,
	combout => \u_kirsch|r2_add8_10i25|nx37973z1\);

\u_kirsch|r2_add9_10i26|ix45949z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_add9_10i26|nx37973z1\ = \u_kirsch|r2_10n1s1f1_0_\ & (\u_kirsch|r2_add8_10i25|nx37973z1\ $ VCC) # !\u_kirsch|r2_10n1s1f1_0_\ & \u_kirsch|r2_add8_10i25|nx37973z1\ & VCC
-- \u_kirsch|r2_add9_10i26|nx45949z24\ = CARRY(\u_kirsch|r2_10n1s1f1_0_\ & \u_kirsch|r2_add8_10i25|nx37973z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r2_10n1s1f1_0_\,
	datab => \u_kirsch|r2_add8_10i25|nx37973z1\,
	datad => VCC,
	combout => \u_kirsch|r2_add9_10i26|nx37973z1\,
	cout => \u_kirsch|r2_add9_10i26|nx45949z24\);

\u_kirsch|r2_add9_10i26|ix45949z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_add9_10i26|nx38970z1\ = \u_kirsch|r2_10n1s1f1_1_\ & (\u_kirsch|r2_add8_10i25|nx38970z1\ & \u_kirsch|r2_add9_10i26|nx45949z24\ & VCC # !\u_kirsch|r2_add8_10i25|nx38970z1\ & !\u_kirsch|r2_add9_10i26|nx45949z24\) # !\u_kirsch|r2_10n1s1f1_1_\ & 
-- (\u_kirsch|r2_add8_10i25|nx38970z1\ & !\u_kirsch|r2_add9_10i26|nx45949z24\ # !\u_kirsch|r2_add8_10i25|nx38970z1\ & (\u_kirsch|r2_add9_10i26|nx45949z24\ # GND))
-- \u_kirsch|r2_add9_10i26|nx45949z21\ = CARRY(\u_kirsch|r2_10n1s1f1_1_\ & !\u_kirsch|r2_add8_10i25|nx38970z1\ & !\u_kirsch|r2_add9_10i26|nx45949z24\ # !\u_kirsch|r2_10n1s1f1_1_\ & (!\u_kirsch|r2_add9_10i26|nx45949z24\ # !\u_kirsch|r2_add8_10i25|nx38970z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r2_10n1s1f1_1_\,
	datab => \u_kirsch|r2_add8_10i25|nx38970z1\,
	datad => VCC,
	cin => \u_kirsch|r2_add9_10i26|nx45949z24\,
	combout => \u_kirsch|r2_add9_10i26|nx38970z1\,
	cout => \u_kirsch|r2_add9_10i26|nx45949z21\);

\u_kirsch|r2_add9_10i26|ix45949z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_add9_10i26|nx39967z1\ = (\u_kirsch|r2_10n1s1f1_2_\ $ \u_kirsch|r2_add8_10i25|nx39967z1\ $ !\u_kirsch|r2_add9_10i26|nx45949z21\) # GND
-- \u_kirsch|r2_add9_10i26|nx45949z18\ = CARRY(\u_kirsch|r2_10n1s1f1_2_\ & (\u_kirsch|r2_add8_10i25|nx39967z1\ # !\u_kirsch|r2_add9_10i26|nx45949z21\) # !\u_kirsch|r2_10n1s1f1_2_\ & \u_kirsch|r2_add8_10i25|nx39967z1\ & !\u_kirsch|r2_add9_10i26|nx45949z21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r2_10n1s1f1_2_\,
	datab => \u_kirsch|r2_add8_10i25|nx39967z1\,
	datad => VCC,
	cin => \u_kirsch|r2_add9_10i26|nx45949z21\,
	combout => \u_kirsch|r2_add9_10i26|nx39967z1\,
	cout => \u_kirsch|r2_add9_10i26|nx45949z18\);

\u_kirsch|r2_add9_10i26|ix45949z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_add9_10i26|nx40964z1\ = \u_kirsch|r2_add8_10i25|nx40964z1\ & (\u_kirsch|r2_10n1s1f1_3_\ & \u_kirsch|r2_add9_10i26|nx45949z18\ & VCC # !\u_kirsch|r2_10n1s1f1_3_\ & !\u_kirsch|r2_add9_10i26|nx45949z18\) # !\u_kirsch|r2_add8_10i25|nx40964z1\ & 
-- (\u_kirsch|r2_10n1s1f1_3_\ & !\u_kirsch|r2_add9_10i26|nx45949z18\ # !\u_kirsch|r2_10n1s1f1_3_\ & (\u_kirsch|r2_add9_10i26|nx45949z18\ # GND))
-- \u_kirsch|r2_add9_10i26|nx45949z15\ = CARRY(\u_kirsch|r2_add8_10i25|nx40964z1\ & !\u_kirsch|r2_10n1s1f1_3_\ & !\u_kirsch|r2_add9_10i26|nx45949z18\ # !\u_kirsch|r2_add8_10i25|nx40964z1\ & (!\u_kirsch|r2_add9_10i26|nx45949z18\ # !\u_kirsch|r2_10n1s1f1_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r2_add8_10i25|nx40964z1\,
	datab => \u_kirsch|r2_10n1s1f1_3_\,
	datad => VCC,
	cin => \u_kirsch|r2_add9_10i26|nx45949z18\,
	combout => \u_kirsch|r2_add9_10i26|nx40964z1\,
	cout => \u_kirsch|r2_add9_10i26|nx45949z15\);

\u_kirsch|r2_add9_10i26|ix45949z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_add9_10i26|nx41961z1\ = (\u_kirsch|r2_10n1s1f1_4_\ $ \u_kirsch|r2_add8_10i25|nx41961z1\ $ !\u_kirsch|r2_add9_10i26|nx45949z15\) # GND
-- \u_kirsch|r2_add9_10i26|nx45949z12\ = CARRY(\u_kirsch|r2_10n1s1f1_4_\ & (\u_kirsch|r2_add8_10i25|nx41961z1\ # !\u_kirsch|r2_add9_10i26|nx45949z15\) # !\u_kirsch|r2_10n1s1f1_4_\ & \u_kirsch|r2_add8_10i25|nx41961z1\ & !\u_kirsch|r2_add9_10i26|nx45949z15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r2_10n1s1f1_4_\,
	datab => \u_kirsch|r2_add8_10i25|nx41961z1\,
	datad => VCC,
	cin => \u_kirsch|r2_add9_10i26|nx45949z15\,
	combout => \u_kirsch|r2_add9_10i26|nx41961z1\,
	cout => \u_kirsch|r2_add9_10i26|nx45949z12\);

\u_kirsch|r2_add9_10i26|ix45949z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_add9_10i26|nx42958z1\ = \u_kirsch|r2_10n1s1f1_5_\ & (\u_kirsch|r2_add8_10i25|nx42958z1\ & \u_kirsch|r2_add9_10i26|nx45949z12\ & VCC # !\u_kirsch|r2_add8_10i25|nx42958z1\ & !\u_kirsch|r2_add9_10i26|nx45949z12\) # !\u_kirsch|r2_10n1s1f1_5_\ & 
-- (\u_kirsch|r2_add8_10i25|nx42958z1\ & !\u_kirsch|r2_add9_10i26|nx45949z12\ # !\u_kirsch|r2_add8_10i25|nx42958z1\ & (\u_kirsch|r2_add9_10i26|nx45949z12\ # GND))
-- \u_kirsch|r2_add9_10i26|nx45949z9\ = CARRY(\u_kirsch|r2_10n1s1f1_5_\ & !\u_kirsch|r2_add8_10i25|nx42958z1\ & !\u_kirsch|r2_add9_10i26|nx45949z12\ # !\u_kirsch|r2_10n1s1f1_5_\ & (!\u_kirsch|r2_add9_10i26|nx45949z12\ # !\u_kirsch|r2_add8_10i25|nx42958z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r2_10n1s1f1_5_\,
	datab => \u_kirsch|r2_add8_10i25|nx42958z1\,
	datad => VCC,
	cin => \u_kirsch|r2_add9_10i26|nx45949z12\,
	combout => \u_kirsch|r2_add9_10i26|nx42958z1\,
	cout => \u_kirsch|r2_add9_10i26|nx45949z9\);

\u_kirsch|r2_add9_10i26|ix45949z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_add9_10i26|nx43955z1\ = (\u_kirsch|r2_10n1s1f1_6_\ $ \u_kirsch|r2_add8_10i25|nx43955z1\ $ !\u_kirsch|r2_add9_10i26|nx45949z9\) # GND
-- \u_kirsch|r2_add9_10i26|nx45949z6\ = CARRY(\u_kirsch|r2_10n1s1f1_6_\ & (\u_kirsch|r2_add8_10i25|nx43955z1\ # !\u_kirsch|r2_add9_10i26|nx45949z9\) # !\u_kirsch|r2_10n1s1f1_6_\ & \u_kirsch|r2_add8_10i25|nx43955z1\ & !\u_kirsch|r2_add9_10i26|nx45949z9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r2_10n1s1f1_6_\,
	datab => \u_kirsch|r2_add8_10i25|nx43955z1\,
	datad => VCC,
	cin => \u_kirsch|r2_add9_10i26|nx45949z9\,
	combout => \u_kirsch|r2_add9_10i26|nx43955z1\,
	cout => \u_kirsch|r2_add9_10i26|nx45949z6\);

\u_kirsch|r2_add9_10i26|ix45949z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_add9_10i26|nx44952z1\ = \u_kirsch|r2_10n1s1f1_7_\ & (\u_kirsch|r2_add8_10i25|nx44952z1\ & \u_kirsch|r2_add9_10i26|nx45949z6\ & VCC # !\u_kirsch|r2_add8_10i25|nx44952z1\ & !\u_kirsch|r2_add9_10i26|nx45949z6\) # !\u_kirsch|r2_10n1s1f1_7_\ & 
-- (\u_kirsch|r2_add8_10i25|nx44952z1\ & !\u_kirsch|r2_add9_10i26|nx45949z6\ # !\u_kirsch|r2_add8_10i25|nx44952z1\ & (\u_kirsch|r2_add9_10i26|nx45949z6\ # GND))
-- \u_kirsch|r2_add9_10i26|nx45949z3\ = CARRY(\u_kirsch|r2_10n1s1f1_7_\ & !\u_kirsch|r2_add8_10i25|nx44952z1\ & !\u_kirsch|r2_add9_10i26|nx45949z6\ # !\u_kirsch|r2_10n1s1f1_7_\ & (!\u_kirsch|r2_add9_10i26|nx45949z6\ # !\u_kirsch|r2_add8_10i25|nx44952z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r2_10n1s1f1_7_\,
	datab => \u_kirsch|r2_add8_10i25|nx44952z1\,
	datad => VCC,
	cin => \u_kirsch|r2_add9_10i26|nx45949z6\,
	combout => \u_kirsch|r2_add9_10i26|nx44952z1\,
	cout => \u_kirsch|r2_add9_10i26|nx45949z3\);

\u_kirsch|reg_r2_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r2_add9_10i26|nx44952z1\,
	ena => \u_kirsch|nx33634z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_7_\);

\u_kirsch|r4_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r4_7_~feeder_combout\ = \u_kirsch|r2_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r2_7_\,
	combout => \u_kirsch|r4_7_~feeder_combout\);

\u_kirsch|reg_r7_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r7_add9_15i10|nx44952z1\,
	ena => \u_kirsch|v_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r7_7_\);

\u_kirsch|reg_r4_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r4_7_~feeder_combout\,
	sdata => \u_kirsch|r7_7_\,
	sload => \u_kirsch|v_5_\,
	ena => \u_kirsch|nx47743z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_7_\);

\u_kirsch|reg_r2_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r2_add9_10i26|nx43955z1\,
	ena => \u_kirsch|nx33634z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_6_\);

\u_kirsch|r4_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r4_6_~feeder_combout\ = \u_kirsch|r2_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r2_6_\,
	combout => \u_kirsch|r4_6_~feeder_combout\);

\u_kirsch|reg_r7_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r7_add9_15i10|nx43955z1\,
	ena => \u_kirsch|v_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r7_6_\);

\u_kirsch|reg_r4_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r4_6_~feeder_combout\,
	sdata => \u_kirsch|r7_6_\,
	sload => \u_kirsch|v_5_\,
	ena => \u_kirsch|nx47743z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_6_\);

\u_kirsch|reg_r7_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r7_add9_15i10|nx42958z1\,
	ena => \u_kirsch|v_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r7_5_\);

\u_kirsch|reg_r2_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r2_add9_10i26|nx41961z1\,
	ena => \u_kirsch|nx33634z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_4_\);

\u_kirsch|r4_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r4_4_~feeder_combout\ = \u_kirsch|r2_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r2_4_\,
	combout => \u_kirsch|r4_4_~feeder_combout\);

\u_kirsch|reg_r7_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r7_add9_15i10|nx41961z1\,
	ena => \u_kirsch|v_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r7_4_\);

\u_kirsch|reg_r4_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r4_4_~feeder_combout\,
	sdata => \u_kirsch|r7_4_\,
	sload => \u_kirsch|v_5_\,
	ena => \u_kirsch|nx47743z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_4_\);

\u_kirsch|reg_r7_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r7_add9_15i10|nx40964z1\,
	ena => \u_kirsch|v_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r7_3_\);

\u_kirsch|reg_r2_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r2_add9_10i26|nx39967z1\,
	ena => \u_kirsch|nx33634z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_2_\);

\u_kirsch|r4_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r4_2_~feeder_combout\ = \u_kirsch|r2_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r2_2_\,
	combout => \u_kirsch|r4_2_~feeder_combout\);

\u_kirsch|reg_r7_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r7_add9_15i10|nx39967z1\,
	ena => \u_kirsch|v_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r7_2_\);

\u_kirsch|reg_r4_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r4_2_~feeder_combout\,
	sdata => \u_kirsch|r7_2_\,
	sload => \u_kirsch|v_5_\,
	ena => \u_kirsch|nx47743z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_2_\);

\u_kirsch|r4_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r4_1_~feeder_combout\ = \u_kirsch|r2_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r2_1_\,
	combout => \u_kirsch|r4_1_~feeder_combout\);

\u_kirsch|reg_r7_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r7_add9_15i10|nx38970z1\,
	ena => \u_kirsch|v_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r7_1_\);

\u_kirsch|reg_r4_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r4_1_~feeder_combout\,
	sdata => \u_kirsch|r7_1_\,
	sload => \u_kirsch|v_5_\,
	ena => \u_kirsch|nx47743z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_1_\);

\u_kirsch|reg_r2_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r2_add9_10i26|nx37973z1\,
	ena => \u_kirsch|nx33634z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_0_\);

\u_kirsch|r4_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r4_0_~feeder_combout\ = \u_kirsch|r2_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r2_0_\,
	combout => \u_kirsch|r4_0_~feeder_combout\);

\u_kirsch|reg_r7_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r7_add9_15i10|nx37973z1\,
	ena => \u_kirsch|v_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r7_0_\);

\u_kirsch|reg_r4_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r4_0_~feeder_combout\,
	sdata => \u_kirsch|r7_0_\,
	sload => \u_kirsch|v_5_\,
	ena => \u_kirsch|nx47743z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_0_\);

\u_kirsch|ix47743z6956|ix23445z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix47743z6956|nx23445z28\ = CARRY(\u_kirsch|r4_0_\ # !\u_kirsch|r7_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r7_0_\,
	datab => \u_kirsch|r4_0_\,
	datad => VCC,
	cout => \u_kirsch|ix47743z6956|nx23445z28\);

\u_kirsch|ix47743z6956|ix23445z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix47743z6956|nx23445z25\ = CARRY(\u_kirsch|r7_1_\ & (!\u_kirsch|ix47743z6956|nx23445z28\ # !\u_kirsch|r4_1_\) # !\u_kirsch|r7_1_\ & !\u_kirsch|r4_1_\ & !\u_kirsch|ix47743z6956|nx23445z28\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r7_1_\,
	datab => \u_kirsch|r4_1_\,
	datad => VCC,
	cin => \u_kirsch|ix47743z6956|nx23445z28\,
	cout => \u_kirsch|ix47743z6956|nx23445z25\);

\u_kirsch|ix47743z6956|ix23445z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix47743z6956|nx23445z22\ = CARRY(\u_kirsch|r7_2_\ & \u_kirsch|r4_2_\ & !\u_kirsch|ix47743z6956|nx23445z25\ # !\u_kirsch|r7_2_\ & (\u_kirsch|r4_2_\ # !\u_kirsch|ix47743z6956|nx23445z25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r7_2_\,
	datab => \u_kirsch|r4_2_\,
	datad => VCC,
	cin => \u_kirsch|ix47743z6956|nx23445z25\,
	cout => \u_kirsch|ix47743z6956|nx23445z22\);

\u_kirsch|ix47743z6956|ix23445z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix47743z6956|nx23445z19\ = CARRY(\u_kirsch|r4_3_\ & \u_kirsch|r7_3_\ & !\u_kirsch|ix47743z6956|nx23445z22\ # !\u_kirsch|r4_3_\ & (\u_kirsch|r7_3_\ # !\u_kirsch|ix47743z6956|nx23445z22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r4_3_\,
	datab => \u_kirsch|r7_3_\,
	datad => VCC,
	cin => \u_kirsch|ix47743z6956|nx23445z22\,
	cout => \u_kirsch|ix47743z6956|nx23445z19\);

\u_kirsch|ix47743z6956|ix23445z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix47743z6956|nx23445z16\ = CARRY(\u_kirsch|r7_4_\ & \u_kirsch|r4_4_\ & !\u_kirsch|ix47743z6956|nx23445z19\ # !\u_kirsch|r7_4_\ & (\u_kirsch|r4_4_\ # !\u_kirsch|ix47743z6956|nx23445z19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r7_4_\,
	datab => \u_kirsch|r4_4_\,
	datad => VCC,
	cin => \u_kirsch|ix47743z6956|nx23445z19\,
	cout => \u_kirsch|ix47743z6956|nx23445z16\);

\u_kirsch|ix47743z6956|ix23445z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix47743z6956|nx23445z13\ = CARRY(\u_kirsch|r4_5_\ & \u_kirsch|r7_5_\ & !\u_kirsch|ix47743z6956|nx23445z16\ # !\u_kirsch|r4_5_\ & (\u_kirsch|r7_5_\ # !\u_kirsch|ix47743z6956|nx23445z16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r4_5_\,
	datab => \u_kirsch|r7_5_\,
	datad => VCC,
	cin => \u_kirsch|ix47743z6956|nx23445z16\,
	cout => \u_kirsch|ix47743z6956|nx23445z13\);

\u_kirsch|ix47743z6956|ix23445z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix47743z6956|nx23445z10\ = CARRY(\u_kirsch|r7_6_\ & \u_kirsch|r4_6_\ & !\u_kirsch|ix47743z6956|nx23445z13\ # !\u_kirsch|r7_6_\ & (\u_kirsch|r4_6_\ # !\u_kirsch|ix47743z6956|nx23445z13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r7_6_\,
	datab => \u_kirsch|r4_6_\,
	datad => VCC,
	cin => \u_kirsch|ix47743z6956|nx23445z13\,
	cout => \u_kirsch|ix47743z6956|nx23445z10\);

\u_kirsch|ix47743z6956|ix23445z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix47743z6956|nx23445z7\ = CARRY(\u_kirsch|r7_7_\ & (!\u_kirsch|ix47743z6956|nx23445z10\ # !\u_kirsch|r4_7_\) # !\u_kirsch|r7_7_\ & !\u_kirsch|r4_7_\ & !\u_kirsch|ix47743z6956|nx23445z10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r7_7_\,
	datab => \u_kirsch|r4_7_\,
	datad => VCC,
	cin => \u_kirsch|ix47743z6956|nx23445z10\,
	cout => \u_kirsch|ix47743z6956|nx23445z7\);

\u_kirsch|ix47743z6956|ix23445z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix47743z6956|nx23445z4\ = CARRY(\u_kirsch|r4_8_\ & (!\u_kirsch|ix47743z6956|nx23445z7\ # !\u_kirsch|r7_8_\) # !\u_kirsch|r4_8_\ & !\u_kirsch|r7_8_\ & !\u_kirsch|ix47743z6956|nx23445z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r4_8_\,
	datab => \u_kirsch|r7_8_\,
	datad => VCC,
	cin => \u_kirsch|ix47743z6956|nx23445z7\,
	cout => \u_kirsch|ix47743z6956|nx23445z4\);

\u_kirsch|ix47743z6956|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix47743z6956|nx23445z1\ = \u_kirsch|r4_9_\ & (\u_kirsch|ix47743z6956|nx23445z4\ # !\u_kirsch|r7_9_\) # !\u_kirsch|r4_9_\ & \u_kirsch|ix47743z6956|nx23445z4\ & !\u_kirsch|r7_9_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r4_9_\,
	datad => \u_kirsch|r7_9_\,
	cin => \u_kirsch|ix47743z6956|nx23445z4\,
	combout => \u_kirsch|ix47743z6956|nx23445z1\);

\u_kirsch|ix82z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx82z1\ = \u_kirsch|v_5_\ & !\u_kirsch|ix47743z6956|nx23445z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|v_5_\,
	datad => \u_kirsch|ix47743z6956|nx23445z1\,
	combout => \u_kirsch|nx82z1\);

\u_kirsch|reg_r4_dir_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r2_dir_0_~_wirecell_combout\,
	sclr => \u_kirsch|nx82z1\,
	ena => \u_kirsch|nx47743z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|nx43423z1\);

\u_kirsch|nx43423z1~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx43423z1~_wirecell_combout\ = !\u_kirsch|nx43423z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|nx43423z1\,
	combout => \u_kirsch|nx43423z1~_wirecell_combout\);

\u_kirsch|r5_9_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r5_9_~feeder_combout\ = \u_kirsch|r4_9_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r4_9_\,
	combout => \u_kirsch|r5_9_~feeder_combout\);

\u_kirsch|r2_add9_10i26|ix45949z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r2_add9_10i26|nx45949z1\ = !\u_kirsch|r2_add9_10i26|nx45949z3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_kirsch|r2_add9_10i26|nx45949z3\,
	combout => \u_kirsch|r2_add9_10i26|nx45949z1\);

\u_kirsch|reg_r2_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r2_add9_10i26|nx45949z1\,
	ena => \u_kirsch|nx33634z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_8_\);

\u_kirsch|reg_r2_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r2_add9_10i26|nx42958z1\,
	ena => \u_kirsch|nx33634z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_5_\);

\u_kirsch|r4_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r4_5_~feeder_combout\ = \u_kirsch|r2_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r2_5_\,
	combout => \u_kirsch|r4_5_~feeder_combout\);

\u_kirsch|reg_r4_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r4_5_~feeder_combout\,
	sdata => \u_kirsch|r7_5_\,
	sload => \u_kirsch|v_5_\,
	ena => \u_kirsch|nx47743z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_5_\);

\u_kirsch|reg_r2_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r2_add9_10i26|nx40964z1\,
	ena => \u_kirsch|nx33634z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_3_\);

\u_kirsch|r4_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r4_3_~feeder_combout\ = \u_kirsch|r2_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r2_3_\,
	combout => \u_kirsch|r4_3_~feeder_combout\);

\u_kirsch|reg_r4_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r4_3_~feeder_combout\,
	sdata => \u_kirsch|r7_3_\,
	sload => \u_kirsch|v_5_\,
	ena => \u_kirsch|nx47743z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_3_\);

\u_kirsch|ix9374z6956|ix23445z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix9374z6956|nx23445z28\ = CARRY(\u_kirsch|r2_0_\ # !\u_kirsch|r4_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r4_0_\,
	datab => \u_kirsch|r2_0_\,
	datad => VCC,
	cout => \u_kirsch|ix9374z6956|nx23445z28\);

\u_kirsch|ix9374z6956|ix23445z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix9374z6956|nx23445z25\ = CARRY(\u_kirsch|r2_1_\ & \u_kirsch|r4_1_\ & !\u_kirsch|ix9374z6956|nx23445z28\ # !\u_kirsch|r2_1_\ & (\u_kirsch|r4_1_\ # !\u_kirsch|ix9374z6956|nx23445z28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r2_1_\,
	datab => \u_kirsch|r4_1_\,
	datad => VCC,
	cin => \u_kirsch|ix9374z6956|nx23445z28\,
	cout => \u_kirsch|ix9374z6956|nx23445z25\);

\u_kirsch|ix9374z6956|ix23445z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix9374z6956|nx23445z22\ = CARRY(\u_kirsch|r4_2_\ & \u_kirsch|r2_2_\ & !\u_kirsch|ix9374z6956|nx23445z25\ # !\u_kirsch|r4_2_\ & (\u_kirsch|r2_2_\ # !\u_kirsch|ix9374z6956|nx23445z25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r4_2_\,
	datab => \u_kirsch|r2_2_\,
	datad => VCC,
	cin => \u_kirsch|ix9374z6956|nx23445z25\,
	cout => \u_kirsch|ix9374z6956|nx23445z22\);

\u_kirsch|ix9374z6956|ix23445z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix9374z6956|nx23445z19\ = CARRY(\u_kirsch|r2_3_\ & \u_kirsch|r4_3_\ & !\u_kirsch|ix9374z6956|nx23445z22\ # !\u_kirsch|r2_3_\ & (\u_kirsch|r4_3_\ # !\u_kirsch|ix9374z6956|nx23445z22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r2_3_\,
	datab => \u_kirsch|r4_3_\,
	datad => VCC,
	cin => \u_kirsch|ix9374z6956|nx23445z22\,
	cout => \u_kirsch|ix9374z6956|nx23445z19\);

\u_kirsch|ix9374z6956|ix23445z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix9374z6956|nx23445z16\ = CARRY(\u_kirsch|r2_4_\ & (!\u_kirsch|ix9374z6956|nx23445z19\ # !\u_kirsch|r4_4_\) # !\u_kirsch|r2_4_\ & !\u_kirsch|r4_4_\ & !\u_kirsch|ix9374z6956|nx23445z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r2_4_\,
	datab => \u_kirsch|r4_4_\,
	datad => VCC,
	cin => \u_kirsch|ix9374z6956|nx23445z19\,
	cout => \u_kirsch|ix9374z6956|nx23445z16\);

\u_kirsch|ix9374z6956|ix23445z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix9374z6956|nx23445z13\ = CARRY(\u_kirsch|r2_5_\ & \u_kirsch|r4_5_\ & !\u_kirsch|ix9374z6956|nx23445z16\ # !\u_kirsch|r2_5_\ & (\u_kirsch|r4_5_\ # !\u_kirsch|ix9374z6956|nx23445z16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r2_5_\,
	datab => \u_kirsch|r4_5_\,
	datad => VCC,
	cin => \u_kirsch|ix9374z6956|nx23445z16\,
	cout => \u_kirsch|ix9374z6956|nx23445z13\);

\u_kirsch|ix9374z6956|ix23445z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix9374z6956|nx23445z10\ = CARRY(\u_kirsch|r2_6_\ & (!\u_kirsch|ix9374z6956|nx23445z13\ # !\u_kirsch|r4_6_\) # !\u_kirsch|r2_6_\ & !\u_kirsch|r4_6_\ & !\u_kirsch|ix9374z6956|nx23445z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r2_6_\,
	datab => \u_kirsch|r4_6_\,
	datad => VCC,
	cin => \u_kirsch|ix9374z6956|nx23445z13\,
	cout => \u_kirsch|ix9374z6956|nx23445z10\);

\u_kirsch|ix9374z6956|ix23445z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix9374z6956|nx23445z7\ = CARRY(\u_kirsch|r4_7_\ & (!\u_kirsch|ix9374z6956|nx23445z10\ # !\u_kirsch|r2_7_\) # !\u_kirsch|r4_7_\ & !\u_kirsch|r2_7_\ & !\u_kirsch|ix9374z6956|nx23445z10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r4_7_\,
	datab => \u_kirsch|r2_7_\,
	datad => VCC,
	cin => \u_kirsch|ix9374z6956|nx23445z10\,
	cout => \u_kirsch|ix9374z6956|nx23445z7\);

\u_kirsch|ix9374z6956|ix23445z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix9374z6956|nx23445z4\ = CARRY(\u_kirsch|r4_8_\ & \u_kirsch|r2_8_\ & !\u_kirsch|ix9374z6956|nx23445z7\ # !\u_kirsch|r4_8_\ & (\u_kirsch|r2_8_\ # !\u_kirsch|ix9374z6956|nx23445z7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r4_8_\,
	datab => \u_kirsch|r2_8_\,
	datad => VCC,
	cin => \u_kirsch|ix9374z6956|nx23445z7\,
	cout => \u_kirsch|ix9374z6956|nx23445z4\);

\u_kirsch|ix9374z6956|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix9374z6956|nx23445z1\ = \u_kirsch|ix9374z6956|nx23445z4\ & !\u_kirsch|r4_9_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r4_9_\,
	cin => \u_kirsch|ix9374z6956|nx23445z4\,
	combout => \u_kirsch|ix9374z6956|nx23445z1\);

\u_kirsch|reg_r5_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r5_9_~feeder_combout\,
	sdata => \~GND~combout\,
	sload => \u_kirsch|ix9374z6956|nx23445z1\,
	ena => \u_kirsch|v_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r5_9_\);

\u_kirsch|r4_8_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r4_8_~feeder_combout\ = \u_kirsch|r2_8_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r2_8_\,
	combout => \u_kirsch|r4_8_~feeder_combout\);

\u_kirsch|reg_r4_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r4_8_~feeder_combout\,
	sdata => \u_kirsch|r7_8_\,
	sload => \u_kirsch|v_5_\,
	ena => \u_kirsch|nx47743z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_8_\);

\u_kirsch|r5_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r5_6_~feeder_combout\ = \u_kirsch|r4_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r4_6_\,
	combout => \u_kirsch|r5_6_~feeder_combout\);

\u_kirsch|reg_r5_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r5_6_~feeder_combout\,
	sdata => \u_kirsch|r2_6_\,
	sload => \u_kirsch|ix9374z6956|nx23445z1\,
	ena => \u_kirsch|v_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r5_6_\);

\u_kirsch|r5_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r5_5_~feeder_combout\ = \u_kirsch|r4_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r4_5_\,
	combout => \u_kirsch|r5_5_~feeder_combout\);

\u_kirsch|reg_r5_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r5_5_~feeder_combout\,
	sdata => \u_kirsch|r2_5_\,
	sload => \u_kirsch|ix9374z6956|nx23445z1\,
	ena => \u_kirsch|v_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r5_5_\);

\u_kirsch|r5_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r5_4_~feeder_combout\ = \u_kirsch|r4_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r4_4_\,
	combout => \u_kirsch|r5_4_~feeder_combout\);

\u_kirsch|reg_r5_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r5_4_~feeder_combout\,
	sdata => \u_kirsch|r2_4_\,
	sload => \u_kirsch|ix9374z6956|nx23445z1\,
	ena => \u_kirsch|v_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r5_4_\);

\u_kirsch|r5_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r5_3_~feeder_combout\ = \u_kirsch|r4_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r4_3_\,
	combout => \u_kirsch|r5_3_~feeder_combout\);

\u_kirsch|reg_r5_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r5_3_~feeder_combout\,
	sdata => \u_kirsch|r2_3_\,
	sload => \u_kirsch|ix9374z6956|nx23445z1\,
	ena => \u_kirsch|v_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r5_3_\);

\u_kirsch|r5_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r5_2_~feeder_combout\ = \u_kirsch|r4_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r4_2_\,
	combout => \u_kirsch|r5_2_~feeder_combout\);

\u_kirsch|reg_r5_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r5_2_~feeder_combout\,
	sdata => \u_kirsch|r2_2_\,
	sload => \u_kirsch|ix9374z6956|nx23445z1\,
	ena => \u_kirsch|v_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r5_2_\);

\u_kirsch|r5_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r5_0_~feeder_combout\ = \u_kirsch|r4_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r4_0_\,
	combout => \u_kirsch|r5_0_~feeder_combout\);

\u_kirsch|reg_r5_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r5_0_~feeder_combout\,
	sdata => \u_kirsch|r2_0_\,
	sload => \u_kirsch|ix9374z6956|nx23445z1\,
	ena => \u_kirsch|v_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r5_0_\);

\u_kirsch|ix15883z6955|ix23445z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix15883z6955|nx23445z28\ = CARRY(\u_kirsch|r4_0_\ # !\u_kirsch|r5_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r4_0_\,
	datab => \u_kirsch|r5_0_\,
	datad => VCC,
	cout => \u_kirsch|ix15883z6955|nx23445z28\);

\u_kirsch|ix15883z6955|ix23445z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix15883z6955|nx23445z25\ = CARRY(\u_kirsch|r5_1_\ & (!\u_kirsch|ix15883z6955|nx23445z28\ # !\u_kirsch|r4_1_\) # !\u_kirsch|r5_1_\ & !\u_kirsch|r4_1_\ & !\u_kirsch|ix15883z6955|nx23445z28\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r5_1_\,
	datab => \u_kirsch|r4_1_\,
	datad => VCC,
	cin => \u_kirsch|ix15883z6955|nx23445z28\,
	cout => \u_kirsch|ix15883z6955|nx23445z25\);

\u_kirsch|ix15883z6955|ix23445z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix15883z6955|nx23445z22\ = CARRY(\u_kirsch|r4_2_\ & (!\u_kirsch|ix15883z6955|nx23445z25\ # !\u_kirsch|r5_2_\) # !\u_kirsch|r4_2_\ & !\u_kirsch|r5_2_\ & !\u_kirsch|ix15883z6955|nx23445z25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r4_2_\,
	datab => \u_kirsch|r5_2_\,
	datad => VCC,
	cin => \u_kirsch|ix15883z6955|nx23445z25\,
	cout => \u_kirsch|ix15883z6955|nx23445z22\);

\u_kirsch|ix15883z6955|ix23445z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix15883z6955|nx23445z19\ = CARRY(\u_kirsch|r4_3_\ & \u_kirsch|r5_3_\ & !\u_kirsch|ix15883z6955|nx23445z22\ # !\u_kirsch|r4_3_\ & (\u_kirsch|r5_3_\ # !\u_kirsch|ix15883z6955|nx23445z22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r4_3_\,
	datab => \u_kirsch|r5_3_\,
	datad => VCC,
	cin => \u_kirsch|ix15883z6955|nx23445z22\,
	cout => \u_kirsch|ix15883z6955|nx23445z19\);

\u_kirsch|ix15883z6955|ix23445z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix15883z6955|nx23445z16\ = CARRY(\u_kirsch|r4_4_\ & (!\u_kirsch|ix15883z6955|nx23445z19\ # !\u_kirsch|r5_4_\) # !\u_kirsch|r4_4_\ & !\u_kirsch|r5_4_\ & !\u_kirsch|ix15883z6955|nx23445z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r4_4_\,
	datab => \u_kirsch|r5_4_\,
	datad => VCC,
	cin => \u_kirsch|ix15883z6955|nx23445z19\,
	cout => \u_kirsch|ix15883z6955|nx23445z16\);

\u_kirsch|ix15883z6955|ix23445z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix15883z6955|nx23445z13\ = CARRY(\u_kirsch|r4_5_\ & \u_kirsch|r5_5_\ & !\u_kirsch|ix15883z6955|nx23445z16\ # !\u_kirsch|r4_5_\ & (\u_kirsch|r5_5_\ # !\u_kirsch|ix15883z6955|nx23445z16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r4_5_\,
	datab => \u_kirsch|r5_5_\,
	datad => VCC,
	cin => \u_kirsch|ix15883z6955|nx23445z16\,
	cout => \u_kirsch|ix15883z6955|nx23445z13\);

\u_kirsch|ix15883z6955|ix23445z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix15883z6955|nx23445z10\ = CARRY(\u_kirsch|r4_6_\ & (!\u_kirsch|ix15883z6955|nx23445z13\ # !\u_kirsch|r5_6_\) # !\u_kirsch|r4_6_\ & !\u_kirsch|r5_6_\ & !\u_kirsch|ix15883z6955|nx23445z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r4_6_\,
	datab => \u_kirsch|r5_6_\,
	datad => VCC,
	cin => \u_kirsch|ix15883z6955|nx23445z13\,
	cout => \u_kirsch|ix15883z6955|nx23445z10\);

\u_kirsch|ix15883z6955|ix23445z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix15883z6955|nx23445z7\ = CARRY(\u_kirsch|r5_7_\ & (!\u_kirsch|ix15883z6955|nx23445z10\ # !\u_kirsch|r4_7_\) # !\u_kirsch|r5_7_\ & !\u_kirsch|r4_7_\ & !\u_kirsch|ix15883z6955|nx23445z10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r5_7_\,
	datab => \u_kirsch|r4_7_\,
	datad => VCC,
	cin => \u_kirsch|ix15883z6955|nx23445z10\,
	cout => \u_kirsch|ix15883z6955|nx23445z7\);

\u_kirsch|ix15883z6955|ix23445z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix15883z6955|nx23445z4\ = CARRY(\u_kirsch|r5_8_\ & \u_kirsch|r4_8_\ & !\u_kirsch|ix15883z6955|nx23445z7\ # !\u_kirsch|r5_8_\ & (\u_kirsch|r4_8_\ # !\u_kirsch|ix15883z6955|nx23445z7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r5_8_\,
	datab => \u_kirsch|r4_8_\,
	datad => VCC,
	cin => \u_kirsch|ix15883z6955|nx23445z7\,
	cout => \u_kirsch|ix15883z6955|nx23445z4\);

\u_kirsch|ix15883z6955|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix15883z6955|nx23445z1\ = \u_kirsch|r5_9_\ & \u_kirsch|ix15883z6955|nx23445z4\ & \u_kirsch|r4_9_\ # !\u_kirsch|r5_9_\ & (\u_kirsch|ix15883z6955|nx23445z4\ # \u_kirsch|r4_9_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r5_9_\,
	datad => \u_kirsch|r4_9_\,
	cin => \u_kirsch|ix15883z6955|nx23445z4\,
	combout => \u_kirsch|ix15883z6955|nx23445z1\);

\u_kirsch|reg_v_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|v_5_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|v_6_\);

\u_kirsch|reg_r8_dir_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r8_dir_0_~feeder_combout\,
	sdata => \u_kirsch|nx43423z1~_wirecell_combout\,
	sload => \u_kirsch|ix15883z6955|nx23445z1\,
	ena => \u_kirsch|v_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_dir_0_\);

\u_kirsch|reg_g_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_4_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|g_4_\);

\u_kirsch|reg_f_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|e_3_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_3_\);

\u_kirsch|reg_g_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_3_\,
	sload => VCC,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|g_3_\);

\u_kirsch|r6_add8_14i1|ix44952z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r6_add8_14i1|nx39967z1\ = (\u_kirsch|f_2_\ $ \u_kirsch|g_2_\ $ !\u_kirsch|r6_add8_14i1|nx44952z19\) # GND
-- \u_kirsch|r6_add8_14i1|nx44952z16\ = CARRY(\u_kirsch|f_2_\ & (\u_kirsch|g_2_\ # !\u_kirsch|r6_add8_14i1|nx44952z19\) # !\u_kirsch|f_2_\ & \u_kirsch|g_2_\ & !\u_kirsch|r6_add8_14i1|nx44952z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_2_\,
	datab => \u_kirsch|g_2_\,
	datad => VCC,
	cin => \u_kirsch|r6_add8_14i1|nx44952z19\,
	combout => \u_kirsch|r6_add8_14i1|nx39967z1\,
	cout => \u_kirsch|r6_add8_14i1|nx44952z16\);

\u_kirsch|r6_add8_14i1|ix44952z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r6_add8_14i1|nx40964z1\ = \u_kirsch|f_3_\ & (\u_kirsch|g_3_\ & \u_kirsch|r6_add8_14i1|nx44952z16\ & VCC # !\u_kirsch|g_3_\ & !\u_kirsch|r6_add8_14i1|nx44952z16\) # !\u_kirsch|f_3_\ & (\u_kirsch|g_3_\ & !\u_kirsch|r6_add8_14i1|nx44952z16\ # 
-- !\u_kirsch|g_3_\ & (\u_kirsch|r6_add8_14i1|nx44952z16\ # GND))
-- \u_kirsch|r6_add8_14i1|nx44952z13\ = CARRY(\u_kirsch|f_3_\ & !\u_kirsch|g_3_\ & !\u_kirsch|r6_add8_14i1|nx44952z16\ # !\u_kirsch|f_3_\ & (!\u_kirsch|r6_add8_14i1|nx44952z16\ # !\u_kirsch|g_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_3_\,
	datab => \u_kirsch|g_3_\,
	datad => VCC,
	cin => \u_kirsch|r6_add8_14i1|nx44952z16\,
	combout => \u_kirsch|r6_add8_14i1|nx40964z1\,
	cout => \u_kirsch|r6_add8_14i1|nx44952z13\);

\u_kirsch|reg_r6_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r6_add8_14i1|nx44952z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r6_7_\);

\u_kirsch|ix30960z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx30960z1\ = !\u_kirsch|v_2_\ & !\u_kirsch|v_1_\ & \u_kirsch|e_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|v_1_\,
	datad => \u_kirsch|e_7_\,
	combout => \u_kirsch|nx30960z1\);

\u_kirsch|ix30960z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r1_9n1s1f2_7_\ = \u_kirsch|nx30960z1\ & (\u_kirsch|v_1_\ # !\u_kirsch|v_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|nx30960z1\,
	combout => \u_kirsch|r1_9n1s1f2_7_\);

\u_kirsch|reg_r1_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r1_9n1s1f2_7_\,
	ena => \u_kirsch|nx33634z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r1_7_\);

\u_kirsch|ix38408z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r3_11n1s1f1_7_\ = \u_kirsch|v_5_\ & \u_kirsch|r6_7_\ # !\u_kirsch|v_5_\ & (\u_kirsch|r1_7_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|v_5_\,
	datac => \u_kirsch|r6_7_\,
	datad => \u_kirsch|r1_7_\,
	combout => \u_kirsch|r3_11n1s1f1_7_\);

\u_kirsch|ix30960z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx30960z5\ = !\u_kirsch|v_2_\ & !\u_kirsch|v_1_\ & \u_kirsch|e_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|v_1_\,
	datad => \u_kirsch|e_3_\,
	combout => \u_kirsch|nx30960z5\);

\u_kirsch|ix30960z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r1_9n1s1f2_3_\ = \u_kirsch|nx30960z5\ & (\u_kirsch|v_1_\ # !\u_kirsch|v_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|v_1_\,
	datad => \u_kirsch|nx30960z5\,
	combout => \u_kirsch|r1_9n1s1f2_3_\);

\u_kirsch|reg_r1_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r1_9n1s1f2_3_\,
	ena => \u_kirsch|nx33634z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r1_3_\);

\u_kirsch|reg_r6_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r6_add8_14i1|nx40964z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r6_3_\);

\u_kirsch|ix38408z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r3_11n1s1f1_3_\ = \u_kirsch|v_5_\ & (\u_kirsch|r6_3_\) # !\u_kirsch|v_5_\ & \u_kirsch|r1_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r1_3_\,
	datac => \u_kirsch|v_5_\,
	datad => \u_kirsch|r6_3_\,
	combout => \u_kirsch|r3_11n1s1f1_3_\);

\u_kirsch|ix30960z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx30960z6\ = !\u_kirsch|v_2_\ & \u_kirsch|e_2_\ & !\u_kirsch|v_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|e_2_\,
	datad => \u_kirsch|v_1_\,
	combout => \u_kirsch|nx30960z6\);

\u_kirsch|ix30960z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r1_9n1s1f2_2_\ = \u_kirsch|nx30960z6\ & (\u_kirsch|v_1_\ # !\u_kirsch|v_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|v_1_\,
	datad => \u_kirsch|nx30960z6\,
	combout => \u_kirsch|r1_9n1s1f2_2_\);

\u_kirsch|reg_r1_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r1_9n1s1f2_2_\,
	ena => \u_kirsch|nx33634z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r1_2_\);

\u_kirsch|reg_r6_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r6_add8_14i1|nx39967z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r6_2_\);

\u_kirsch|ix38408z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r3_11n1s1f1_2_\ = \u_kirsch|v_5_\ & (\u_kirsch|r6_2_\) # !\u_kirsch|v_5_\ & \u_kirsch|r1_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|v_5_\,
	datac => \u_kirsch|r1_2_\,
	datad => \u_kirsch|r6_2_\,
	combout => \u_kirsch|r3_11n1s1f1_2_\);

\u_kirsch|r3_add13_11i1|ix64792z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r3_add13_11i1|nx37973z1\ = \u_kirsch|r3_11n1s1f1_0_\ & (\u_kirsch|r3_0_\ $ VCC) # !\u_kirsch|r3_11n1s1f1_0_\ & \u_kirsch|r3_0_\ & VCC
-- \u_kirsch|r3_add13_11i1|nx64792z33\ = CARRY(\u_kirsch|r3_11n1s1f1_0_\ & \u_kirsch|r3_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_11n1s1f1_0_\,
	datab => \u_kirsch|r3_0_\,
	datad => VCC,
	combout => \u_kirsch|r3_add13_11i1|nx37973z1\,
	cout => \u_kirsch|r3_add13_11i1|nx64792z33\);

\u_kirsch|ix30960z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx30960z8\ = \u_kirsch|e_0_\ & !\u_kirsch|v_2_\ & !\u_kirsch|v_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|e_0_\,
	datac => \u_kirsch|v_2_\,
	datad => \u_kirsch|v_1_\,
	combout => \u_kirsch|nx30960z8\);

\u_kirsch|ix30960z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r1_9n1s1f2_0_\ = \u_kirsch|nx30960z8\ & (\u_kirsch|v_1_\ # !\u_kirsch|v_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|v_1_\,
	datad => \u_kirsch|nx30960z8\,
	combout => \u_kirsch|r1_9n1s1f2_0_\);

\u_kirsch|reg_r1_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r1_9n1s1f2_0_\,
	ena => \u_kirsch|nx33634z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r1_0_\);

\u_kirsch|reg_r3_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r3_add13_11i1|nx37973z1\,
	sdata => \u_kirsch|r1_0_\,
	sload => \u_kirsch|v_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_0_\);

\u_kirsch|r3_add13_11i1|ix64792z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r3_add13_11i1|nx38970z1\ = \u_kirsch|r3_11n1s1f1_1_\ & (\u_kirsch|r3_1_\ & \u_kirsch|r3_add13_11i1|nx64792z33\ & VCC # !\u_kirsch|r3_1_\ & !\u_kirsch|r3_add13_11i1|nx64792z33\) # !\u_kirsch|r3_11n1s1f1_1_\ & (\u_kirsch|r3_1_\ & 
-- !\u_kirsch|r3_add13_11i1|nx64792z33\ # !\u_kirsch|r3_1_\ & (\u_kirsch|r3_add13_11i1|nx64792z33\ # GND))
-- \u_kirsch|r3_add13_11i1|nx64792z30\ = CARRY(\u_kirsch|r3_11n1s1f1_1_\ & !\u_kirsch|r3_1_\ & !\u_kirsch|r3_add13_11i1|nx64792z33\ # !\u_kirsch|r3_11n1s1f1_1_\ & (!\u_kirsch|r3_add13_11i1|nx64792z33\ # !\u_kirsch|r3_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_11n1s1f1_1_\,
	datab => \u_kirsch|r3_1_\,
	datad => VCC,
	cin => \u_kirsch|r3_add13_11i1|nx64792z33\,
	combout => \u_kirsch|r3_add13_11i1|nx38970z1\,
	cout => \u_kirsch|r3_add13_11i1|nx64792z30\);

\u_kirsch|ix30960z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx30960z7\ = !\u_kirsch|v_2_\ & !\u_kirsch|v_1_\ & \u_kirsch|e_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|v_1_\,
	datad => \u_kirsch|e_1_\,
	combout => \u_kirsch|nx30960z7\);

\u_kirsch|ix30960z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r1_9n1s1f2_1_\ = \u_kirsch|nx30960z7\ & (\u_kirsch|v_1_\ # !\u_kirsch|v_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|v_1_\,
	datad => \u_kirsch|nx30960z7\,
	combout => \u_kirsch|r1_9n1s1f2_1_\);

\u_kirsch|reg_r1_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r1_9n1s1f2_1_\,
	ena => \u_kirsch|nx33634z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r1_1_\);

\u_kirsch|reg_r3_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r3_add13_11i1|nx38970z1\,
	sdata => \u_kirsch|r1_1_\,
	sload => \u_kirsch|v_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_1_\);

\u_kirsch|r3_add13_11i1|ix64792z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r3_add13_11i1|nx40964z1\ = \u_kirsch|r3_3_\ & (\u_kirsch|r3_11n1s1f1_3_\ & \u_kirsch|r3_add13_11i1|nx64792z27\ & VCC # !\u_kirsch|r3_11n1s1f1_3_\ & !\u_kirsch|r3_add13_11i1|nx64792z27\) # !\u_kirsch|r3_3_\ & (\u_kirsch|r3_11n1s1f1_3_\ & 
-- !\u_kirsch|r3_add13_11i1|nx64792z27\ # !\u_kirsch|r3_11n1s1f1_3_\ & (\u_kirsch|r3_add13_11i1|nx64792z27\ # GND))
-- \u_kirsch|r3_add13_11i1|nx64792z24\ = CARRY(\u_kirsch|r3_3_\ & !\u_kirsch|r3_11n1s1f1_3_\ & !\u_kirsch|r3_add13_11i1|nx64792z27\ # !\u_kirsch|r3_3_\ & (!\u_kirsch|r3_add13_11i1|nx64792z27\ # !\u_kirsch|r3_11n1s1f1_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_3_\,
	datab => \u_kirsch|r3_11n1s1f1_3_\,
	datad => VCC,
	cin => \u_kirsch|r3_add13_11i1|nx64792z27\,
	combout => \u_kirsch|r3_add13_11i1|nx40964z1\,
	cout => \u_kirsch|r3_add13_11i1|nx64792z24\);

\u_kirsch|r3_add13_11i1|ix64792z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r3_add13_11i1|nx41961z1\ = (\u_kirsch|r3_11n1s1f1_4_\ $ \u_kirsch|r3_4_\ $ !\u_kirsch|r3_add13_11i1|nx64792z24\) # GND
-- \u_kirsch|r3_add13_11i1|nx64792z21\ = CARRY(\u_kirsch|r3_11n1s1f1_4_\ & (\u_kirsch|r3_4_\ # !\u_kirsch|r3_add13_11i1|nx64792z24\) # !\u_kirsch|r3_11n1s1f1_4_\ & \u_kirsch|r3_4_\ & !\u_kirsch|r3_add13_11i1|nx64792z24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_11n1s1f1_4_\,
	datab => \u_kirsch|r3_4_\,
	datad => VCC,
	cin => \u_kirsch|r3_add13_11i1|nx64792z24\,
	combout => \u_kirsch|r3_add13_11i1|nx41961z1\,
	cout => \u_kirsch|r3_add13_11i1|nx64792z21\);

\u_kirsch|ix30960z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r1_9n1s1f2_4_\ = \u_kirsch|nx30960z4\ & (\u_kirsch|v_1_\ # !\u_kirsch|v_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx30960z4\,
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|v_1_\,
	combout => \u_kirsch|r1_9n1s1f2_4_\);

\u_kirsch|reg_r1_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r1_9n1s1f2_4_\,
	ena => \u_kirsch|nx33634z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r1_4_\);

\u_kirsch|reg_r3_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r3_add13_11i1|nx41961z1\,
	sdata => \u_kirsch|r1_4_\,
	sload => \u_kirsch|v_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_4_\);

\u_kirsch|r3_add13_11i1|ix64792z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r3_add13_11i1|nx42958z1\ = \u_kirsch|r3_11n1s1f1_5_\ & (\u_kirsch|r3_5_\ & \u_kirsch|r3_add13_11i1|nx64792z21\ & VCC # !\u_kirsch|r3_5_\ & !\u_kirsch|r3_add13_11i1|nx64792z21\) # !\u_kirsch|r3_11n1s1f1_5_\ & (\u_kirsch|r3_5_\ & 
-- !\u_kirsch|r3_add13_11i1|nx64792z21\ # !\u_kirsch|r3_5_\ & (\u_kirsch|r3_add13_11i1|nx64792z21\ # GND))
-- \u_kirsch|r3_add13_11i1|nx64792z18\ = CARRY(\u_kirsch|r3_11n1s1f1_5_\ & !\u_kirsch|r3_5_\ & !\u_kirsch|r3_add13_11i1|nx64792z21\ # !\u_kirsch|r3_11n1s1f1_5_\ & (!\u_kirsch|r3_add13_11i1|nx64792z21\ # !\u_kirsch|r3_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_11n1s1f1_5_\,
	datab => \u_kirsch|r3_5_\,
	datad => VCC,
	cin => \u_kirsch|r3_add13_11i1|nx64792z21\,
	combout => \u_kirsch|r3_add13_11i1|nx42958z1\,
	cout => \u_kirsch|r3_add13_11i1|nx64792z18\);

\u_kirsch|ix30960z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx30960z3\ = !\u_kirsch|v_2_\ & !\u_kirsch|v_1_\ & \u_kirsch|e_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|v_1_\,
	datad => \u_kirsch|e_5_\,
	combout => \u_kirsch|nx30960z3\);

\u_kirsch|ix30960z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r1_9n1s1f2_5_\ = \u_kirsch|nx30960z3\ & (\u_kirsch|v_1_\ # !\u_kirsch|v_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|v_1_\,
	datad => \u_kirsch|nx30960z3\,
	combout => \u_kirsch|r1_9n1s1f2_5_\);

\u_kirsch|reg_r1_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r1_9n1s1f2_5_\,
	ena => \u_kirsch|nx33634z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r1_5_\);

\u_kirsch|reg_r3_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r3_add13_11i1|nx42958z1\,
	sdata => \u_kirsch|r1_5_\,
	sload => \u_kirsch|v_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_5_\);

\u_kirsch|r3_add13_11i1|ix64792z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r3_add13_11i1|nx43955z1\ = (\u_kirsch|r3_11n1s1f1_6_\ $ \u_kirsch|r3_6_\ $ !\u_kirsch|r3_add13_11i1|nx64792z18\) # GND
-- \u_kirsch|r3_add13_11i1|nx64792z15\ = CARRY(\u_kirsch|r3_11n1s1f1_6_\ & (\u_kirsch|r3_6_\ # !\u_kirsch|r3_add13_11i1|nx64792z18\) # !\u_kirsch|r3_11n1s1f1_6_\ & \u_kirsch|r3_6_\ & !\u_kirsch|r3_add13_11i1|nx64792z18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_11n1s1f1_6_\,
	datab => \u_kirsch|r3_6_\,
	datad => VCC,
	cin => \u_kirsch|r3_add13_11i1|nx64792z18\,
	combout => \u_kirsch|r3_add13_11i1|nx43955z1\,
	cout => \u_kirsch|r3_add13_11i1|nx64792z15\);

\u_kirsch|ix30960z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r1_9n1s1f2_6_\ = \u_kirsch|nx30960z2\ & (\u_kirsch|v_1_\ # !\u_kirsch|v_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx30960z2\,
	datab => \u_kirsch|v_2_\,
	datac => \u_kirsch|v_1_\,
	combout => \u_kirsch|r1_9n1s1f2_6_\);

\u_kirsch|reg_r1_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r1_9n1s1f2_6_\,
	ena => \u_kirsch|nx33634z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r1_6_\);

\u_kirsch|reg_r3_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r3_add13_11i1|nx43955z1\,
	sdata => \u_kirsch|r1_6_\,
	sload => \u_kirsch|v_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_6_\);

\u_kirsch|r3_add13_11i1|ix64792z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r3_add13_11i1|nx45949z1\ = (\u_kirsch|r3_11n1s1f1_8_\ $ \u_kirsch|r3_8_\ $ !\u_kirsch|r3_add13_11i1|nx64792z12\) # GND
-- \u_kirsch|r3_add13_11i1|nx64792z9\ = CARRY(\u_kirsch|r3_11n1s1f1_8_\ & (\u_kirsch|r3_8_\ # !\u_kirsch|r3_add13_11i1|nx64792z12\) # !\u_kirsch|r3_11n1s1f1_8_\ & \u_kirsch|r3_8_\ & !\u_kirsch|r3_add13_11i1|nx64792z12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_11n1s1f1_8_\,
	datab => \u_kirsch|r3_8_\,
	datad => VCC,
	cin => \u_kirsch|r3_add13_11i1|nx64792z12\,
	combout => \u_kirsch|r3_add13_11i1|nx45949z1\,
	cout => \u_kirsch|r3_add13_11i1|nx64792z9\);

\u_kirsch|reg_r3_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r3_add13_11i1|nx45949z1\,
	sdata => \~GND~combout\,
	sload => \u_kirsch|v_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_8_\);

\u_kirsch|r3_add13_11i1|ix64792z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r3_add13_11i1|nx46946z1\ = \u_kirsch|r3_9_\ & !\u_kirsch|r3_add13_11i1|nx64792z9\ # !\u_kirsch|r3_9_\ & (\u_kirsch|r3_add13_11i1|nx64792z9\ # GND)
-- \u_kirsch|r3_add13_11i1|nx64792z7\ = CARRY(!\u_kirsch|r3_add13_11i1|nx64792z9\ # !\u_kirsch|r3_9_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r3_9_\,
	datad => VCC,
	cin => \u_kirsch|r3_add13_11i1|nx64792z9\,
	combout => \u_kirsch|r3_add13_11i1|nx46946z1\,
	cout => \u_kirsch|r3_add13_11i1|nx64792z7\);

\u_kirsch|reg_r3_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r3_add13_11i1|nx46946z1\,
	sclr => \u_kirsch|v_2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_9_\);

\u_kirsch|r3_add13_11i1|ix64792z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r3_add13_11i1|nx62798z1\ = \u_kirsch|r3_10_\ & (\u_kirsch|r3_add13_11i1|nx64792z7\ $ GND) # !\u_kirsch|r3_10_\ & !\u_kirsch|r3_add13_11i1|nx64792z7\ & VCC
-- \u_kirsch|r3_add13_11i1|nx64792z5\ = CARRY(\u_kirsch|r3_10_\ & !\u_kirsch|r3_add13_11i1|nx64792z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_10_\,
	datad => VCC,
	cin => \u_kirsch|r3_add13_11i1|nx64792z7\,
	combout => \u_kirsch|r3_add13_11i1|nx62798z1\,
	cout => \u_kirsch|r3_add13_11i1|nx64792z5\);

\u_kirsch|reg_r3_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r3_add13_11i1|nx63795z1\,
	sclr => \u_kirsch|v_2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_11_\);

\u_kirsch|reg_r3_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r3_add13_11i1|nx62798z1\,
	sclr => \u_kirsch|v_2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_10_\);

\u_kirsch|reg_r3_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r3_add13_11i1|nx40964z1\,
	sdata => \u_kirsch|r1_3_\,
	sload => \u_kirsch|v_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_3_\);

\u_kirsch|r9_add12_17i1|ix63795z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r9_add12_17i1|nx37973z1\ = \u_kirsch|r3_1_\ & (\u_kirsch|r3_0_\ $ VCC) # !\u_kirsch|r3_1_\ & \u_kirsch|r3_0_\ & VCC
-- \u_kirsch|r9_add12_17i1|nx63795z24\ = CARRY(\u_kirsch|r3_1_\ & \u_kirsch|r3_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_1_\,
	datab => \u_kirsch|r3_0_\,
	datad => VCC,
	combout => \u_kirsch|r9_add12_17i1|nx37973z1\,
	cout => \u_kirsch|r9_add12_17i1|nx63795z24\);

\u_kirsch|r9_add12_17i1|ix63795z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r9_add12_17i1|nx39967z1\ = (\u_kirsch|r3_2_\ $ \u_kirsch|r3_3_\ $ !\u_kirsch|r9_add12_17i1|nx63795z22\) # GND
-- \u_kirsch|r9_add12_17i1|nx63795z20\ = CARRY(\u_kirsch|r3_2_\ & (\u_kirsch|r3_3_\ # !\u_kirsch|r9_add12_17i1|nx63795z22\) # !\u_kirsch|r3_2_\ & \u_kirsch|r3_3_\ & !\u_kirsch|r9_add12_17i1|nx63795z22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_2_\,
	datab => \u_kirsch|r3_3_\,
	datad => VCC,
	cin => \u_kirsch|r9_add12_17i1|nx63795z22\,
	combout => \u_kirsch|r9_add12_17i1|nx39967z1\,
	cout => \u_kirsch|r9_add12_17i1|nx63795z20\);

\u_kirsch|r9_add12_17i1|ix63795z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r9_add12_17i1|nx41961z1\ = (\u_kirsch|r3_4_\ $ \u_kirsch|r3_5_\ $ !\u_kirsch|r9_add12_17i1|nx63795z18\) # GND
-- \u_kirsch|r9_add12_17i1|nx63795z16\ = CARRY(\u_kirsch|r3_4_\ & (\u_kirsch|r3_5_\ # !\u_kirsch|r9_add12_17i1|nx63795z18\) # !\u_kirsch|r3_4_\ & \u_kirsch|r3_5_\ & !\u_kirsch|r9_add12_17i1|nx63795z18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_4_\,
	datab => \u_kirsch|r3_5_\,
	datad => VCC,
	cin => \u_kirsch|r9_add12_17i1|nx63795z18\,
	combout => \u_kirsch|r9_add12_17i1|nx41961z1\,
	cout => \u_kirsch|r9_add12_17i1|nx63795z16\);

\u_kirsch|r9_add12_17i1|ix63795z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r9_add12_17i1|nx43955z1\ = (\u_kirsch|r3_7_\ $ \u_kirsch|r3_6_\ $ !\u_kirsch|r9_add12_17i1|nx63795z14\) # GND
-- \u_kirsch|r9_add12_17i1|nx63795z12\ = CARRY(\u_kirsch|r3_7_\ & (\u_kirsch|r3_6_\ # !\u_kirsch|r9_add12_17i1|nx63795z14\) # !\u_kirsch|r3_7_\ & \u_kirsch|r3_6_\ & !\u_kirsch|r9_add12_17i1|nx63795z14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_7_\,
	datab => \u_kirsch|r3_6_\,
	datad => VCC,
	cin => \u_kirsch|r9_add12_17i1|nx63795z14\,
	combout => \u_kirsch|r9_add12_17i1|nx43955z1\,
	cout => \u_kirsch|r9_add12_17i1|nx63795z12\);

\u_kirsch|r9_add12_17i1|ix63795z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r9_add12_17i1|nx45949z1\ = (\u_kirsch|r3_9_\ $ \u_kirsch|r3_8_\ $ !\u_kirsch|r9_add12_17i1|nx63795z10\) # GND
-- \u_kirsch|r9_add12_17i1|nx63795z8\ = CARRY(\u_kirsch|r3_9_\ & (\u_kirsch|r3_8_\ # !\u_kirsch|r9_add12_17i1|nx63795z10\) # !\u_kirsch|r3_9_\ & \u_kirsch|r3_8_\ & !\u_kirsch|r9_add12_17i1|nx63795z10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_9_\,
	datab => \u_kirsch|r3_8_\,
	datad => VCC,
	cin => \u_kirsch|r9_add12_17i1|nx63795z10\,
	combout => \u_kirsch|r9_add12_17i1|nx45949z1\,
	cout => \u_kirsch|r9_add12_17i1|nx63795z8\);

\u_kirsch|reg_r9_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r9_add12_17i1|nx62798z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r9_11_\);

\u_kirsch|r5_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r5_7_~feeder_combout\ = \u_kirsch|r4_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r4_7_\,
	combout => \u_kirsch|r5_7_~feeder_combout\);

\u_kirsch|reg_r5_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r5_7_~feeder_combout\,
	sdata => \u_kirsch|r2_7_\,
	sload => \u_kirsch|ix9374z6956|nx23445z1\,
	ena => \u_kirsch|v_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r5_7_\);

\u_kirsch|r8_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r8_7_~feeder_combout\ = \u_kirsch|r5_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r5_7_\,
	combout => \u_kirsch|r8_7_~feeder_combout\);

\u_kirsch|reg_r8_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r8_7_~feeder_combout\,
	sdata => \u_kirsch|r4_7_\,
	sload => \u_kirsch|ix15883z6955|nx23445z1\,
	ena => \u_kirsch|v_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_7_\);

\u_kirsch|reg_r9_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r9_add12_17i1|nx45949z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r9_9_\);

\u_kirsch|r8_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r8_5_~feeder_combout\ = \u_kirsch|r5_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r5_5_\,
	combout => \u_kirsch|r8_5_~feeder_combout\);

\u_kirsch|reg_r8_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r8_5_~feeder_combout\,
	sdata => \u_kirsch|r4_5_\,
	sload => \u_kirsch|ix15883z6955|nx23445z1\,
	ena => \u_kirsch|v_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_5_\);

\u_kirsch|reg_r9_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r9_add12_17i1|nx43955z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r9_7_\);

\u_kirsch|r8_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r8_3_~feeder_combout\ = \u_kirsch|r5_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r5_3_\,
	combout => \u_kirsch|r8_3_~feeder_combout\);

\u_kirsch|reg_r8_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r8_3_~feeder_combout\,
	sdata => \u_kirsch|r4_3_\,
	sload => \u_kirsch|ix15883z6955|nx23445z1\,
	ena => \u_kirsch|v_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_3_\);

\u_kirsch|reg_r9_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r9_add12_17i1|nx41961z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r9_5_\);

\u_kirsch|r5_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r5_1_~feeder_combout\ = \u_kirsch|r4_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r4_1_\,
	combout => \u_kirsch|r5_1_~feeder_combout\);

\u_kirsch|reg_r2_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r2_add9_10i26|nx38970z1\,
	ena => \u_kirsch|nx33634z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_1_\);

\u_kirsch|reg_r5_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r5_1_~feeder_combout\,
	sdata => \u_kirsch|r2_1_\,
	sload => \u_kirsch|ix9374z6956|nx23445z1\,
	ena => \u_kirsch|v_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r5_1_\);

\u_kirsch|r8_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r8_1_~feeder_combout\ = \u_kirsch|r5_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r5_1_\,
	combout => \u_kirsch|r8_1_~feeder_combout\);

\u_kirsch|reg_r8_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r8_1_~feeder_combout\,
	sdata => \u_kirsch|r4_1_\,
	sload => \u_kirsch|ix15883z6955|nx23445z1\,
	ena => \u_kirsch|v_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_1_\);

\u_kirsch|reg_r9_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r9_add12_17i1|nx39967z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r9_3_\);

\u_kirsch|reg_r9_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r9_add12_17i1|nx37973z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r9_1_\);

\u_kirsch|sub_sub13_1|ix63795z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub_sub13_1|nx63795z11\ = CARRY(!\u_kirsch|r9_0_\ & !\u_kirsch|r9_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r9_0_\,
	datab => \u_kirsch|r9_1_\,
	datad => VCC,
	cout => \u_kirsch|sub_sub13_1|nx63795z11\);

\u_kirsch|sub_sub13_1|ix63795z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub_sub13_1|nx63795z10\ = CARRY(\u_kirsch|r9_2_\ # !\u_kirsch|sub_sub13_1|nx63795z11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r9_2_\,
	datad => VCC,
	cin => \u_kirsch|sub_sub13_1|nx63795z11\,
	cout => \u_kirsch|sub_sub13_1|nx63795z10\);

\u_kirsch|sub_sub13_1|ix63795z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub_sub13_1|nx63795z9\ = CARRY(\u_kirsch|r8_0_\ & (!\u_kirsch|sub_sub13_1|nx63795z10\ # !\u_kirsch|r9_3_\) # !\u_kirsch|r8_0_\ & !\u_kirsch|r9_3_\ & !\u_kirsch|sub_sub13_1|nx63795z10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r8_0_\,
	datab => \u_kirsch|r9_3_\,
	datad => VCC,
	cin => \u_kirsch|sub_sub13_1|nx63795z10\,
	cout => \u_kirsch|sub_sub13_1|nx63795z9\);

\u_kirsch|sub_sub13_1|ix63795z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub_sub13_1|nx63795z8\ = CARRY(\u_kirsch|r9_4_\ & (!\u_kirsch|sub_sub13_1|nx63795z9\ # !\u_kirsch|r8_1_\) # !\u_kirsch|r9_4_\ & !\u_kirsch|r8_1_\ & !\u_kirsch|sub_sub13_1|nx63795z9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r9_4_\,
	datab => \u_kirsch|r8_1_\,
	datad => VCC,
	cin => \u_kirsch|sub_sub13_1|nx63795z9\,
	cout => \u_kirsch|sub_sub13_1|nx63795z8\);

\u_kirsch|sub_sub13_1|ix63795z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub_sub13_1|nx63795z7\ = CARRY(\u_kirsch|r8_2_\ & (!\u_kirsch|sub_sub13_1|nx63795z8\ # !\u_kirsch|r9_5_\) # !\u_kirsch|r8_2_\ & !\u_kirsch|r9_5_\ & !\u_kirsch|sub_sub13_1|nx63795z8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r8_2_\,
	datab => \u_kirsch|r9_5_\,
	datad => VCC,
	cin => \u_kirsch|sub_sub13_1|nx63795z8\,
	cout => \u_kirsch|sub_sub13_1|nx63795z7\);

\u_kirsch|sub_sub13_1|ix63795z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub_sub13_1|nx63795z6\ = CARRY(\u_kirsch|r9_6_\ & (!\u_kirsch|sub_sub13_1|nx63795z7\ # !\u_kirsch|r8_3_\) # !\u_kirsch|r9_6_\ & !\u_kirsch|r8_3_\ & !\u_kirsch|sub_sub13_1|nx63795z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r9_6_\,
	datab => \u_kirsch|r8_3_\,
	datad => VCC,
	cin => \u_kirsch|sub_sub13_1|nx63795z7\,
	cout => \u_kirsch|sub_sub13_1|nx63795z6\);

\u_kirsch|sub_sub13_1|ix63795z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub_sub13_1|d_6_\ = (\u_kirsch|r8_4_\ $ \u_kirsch|r9_7_\ $ \u_kirsch|sub_sub13_1|nx63795z6\) # GND
-- \u_kirsch|sub_sub13_1|nx63795z5\ = CARRY(\u_kirsch|r8_4_\ & (!\u_kirsch|sub_sub13_1|nx63795z6\ # !\u_kirsch|r9_7_\) # !\u_kirsch|r8_4_\ & !\u_kirsch|r9_7_\ & !\u_kirsch|sub_sub13_1|nx63795z6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r8_4_\,
	datab => \u_kirsch|r9_7_\,
	datad => VCC,
	cin => \u_kirsch|sub_sub13_1|nx63795z6\,
	combout => \u_kirsch|sub_sub13_1|d_6_\,
	cout => \u_kirsch|sub_sub13_1|nx63795z5\);

\u_kirsch|sub_sub13_1|ix63795z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub_sub13_1|d_10_\ = (\u_kirsch|r8_8_\ $ \u_kirsch|r9_11_\ $ \u_kirsch|sub_sub13_1|nx63795z2\) # GND
-- \u_kirsch|sub_sub13_1|nx63795z1\ = CARRY(\u_kirsch|r8_8_\ & (!\u_kirsch|sub_sub13_1|nx63795z2\ # !\u_kirsch|r9_11_\) # !\u_kirsch|r8_8_\ & !\u_kirsch|r9_11_\ & !\u_kirsch|sub_sub13_1|nx63795z2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r8_8_\,
	datab => \u_kirsch|r9_11_\,
	datad => VCC,
	cin => \u_kirsch|sub_sub13_1|nx63795z2\,
	combout => \u_kirsch|sub_sub13_1|d_10_\,
	cout => \u_kirsch|sub_sub13_1|nx63795z1\);

\u_kirsch|reg_v_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|v_6_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|v_7_\);

\u_kirsch|r8_9_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|r8_9_~feeder_combout\ = \u_kirsch|r5_9_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|r5_9_\,
	combout => \u_kirsch|r8_9_~feeder_combout\);

\u_kirsch|reg_r8_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|r8_9_~feeder_combout\,
	sdata => \u_kirsch|r4_9_\,
	sload => \u_kirsch|ix15883z6955|nx23445z1\,
	ena => \u_kirsch|v_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_9_\);

\u_kirsch|sub_sub13_1|ix63795z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub_sub13_1|d_11_\ = \u_kirsch|r9_12_\ & (\u_kirsch|r8_9_\ & !\u_kirsch|sub_sub13_1|nx63795z1\ # !\u_kirsch|r8_9_\ & (\u_kirsch|sub_sub13_1|nx63795z1\ # GND)) # !\u_kirsch|r9_12_\ & (\u_kirsch|r8_9_\ & \u_kirsch|sub_sub13_1|nx63795z1\ & VCC # 
-- !\u_kirsch|r8_9_\ & !\u_kirsch|sub_sub13_1|nx63795z1\)
-- \u_kirsch|sub_sub13_1|nx23445z2\ = CARRY(\u_kirsch|r9_12_\ & (!\u_kirsch|sub_sub13_1|nx63795z1\ # !\u_kirsch|r8_9_\) # !\u_kirsch|r9_12_\ & !\u_kirsch|r8_9_\ & !\u_kirsch|sub_sub13_1|nx63795z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r9_12_\,
	datab => \u_kirsch|r8_9_\,
	datad => VCC,
	cin => \u_kirsch|sub_sub13_1|nx63795z1\,
	combout => \u_kirsch|sub_sub13_1|d_11_\,
	cout => \u_kirsch|sub_sub13_1|nx23445z2\);

\u_kirsch|sub_sub13_1|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub_sub13_1|nx23445z1\ = !\u_kirsch|sub_sub13_1|nx23445z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_kirsch|sub_sub13_1|nx23445z2\,
	combout => \u_kirsch|sub_sub13_1|nx23445z1\);

\u_kirsch|ix1448z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx1448z2\ = \u_kirsch|sub_sub13_1|d_11_\ # \u_kirsch|sub_sub13_1|d_7_\ & \u_kirsch|sub_sub13_1|d_6_\ # !\u_kirsch|sub_sub13_1|nx23445z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|sub_sub13_1|d_7_\,
	datab => \u_kirsch|sub_sub13_1|d_6_\,
	datac => \u_kirsch|sub_sub13_1|nx23445z1\,
	datad => \u_kirsch|sub_sub13_1|d_11_\,
	combout => \u_kirsch|nx1448z2\);

\u_kirsch|ix31323z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx31323z1\ = !\u_kirsch|nx31323z2\ & !\u_kirsch|sub_sub13_1|d_10_\ & \u_kirsch|v_7_\ & !\u_kirsch|nx1448z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx31323z2\,
	datab => \u_kirsch|sub_sub13_1|d_10_\,
	datac => \u_kirsch|v_7_\,
	datad => \u_kirsch|nx1448z2\,
	combout => \u_kirsch|nx31323z1\);

\u_kirsch|reg_o_dir_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r8_dir_0_\,
	sclr => \u_kirsch|nx31323z1\,
	sload => VCC,
	ena => \u_kirsch|v_7_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|p_o_dir_0_\);

\u_uw_uart|mdata_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|mdata_1_~feeder_combout\ = \u_kirsch|p_o_dir_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|p_o_dir_0_\,
	combout => \u_uw_uart|mdata_1_~feeder_combout\);

\u_kirsch|p_o_mode_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|p_o_mode_1_~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_kirsch|p_o_mode_1_~feeder_combout\);

\u_kirsch|reg_o_mode_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|p_o_mode_1_~feeder_combout\,
	sclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|p_o_mode_1_\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx51271z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z31\ $ VCC
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

\u_uw_uart|ix33354z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx33354z2\ = \u_uw_uart|nx39480z2\ # !\nrst~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nrst~combout\,
	datad => \u_uw_uart|nx39480z2\,
	combout => \u_uw_uart|nx33354z2\);

\u_uw_uart|ix33354z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx33354z1\ = \u_uw_uart|ack\ # \u_uw_uart|o_pixavail\ # !\nrst~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|ack\,
	datac => \u_uw_uart|o_pixavail\,
	datad => \nrst~combout\,
	combout => \u_uw_uart|nx33354z1\);

\u_uw_uart|modgen_counter_waitcount|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx51271z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z31\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx52268z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z29\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z30\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z29\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z30\ # 
-- GND)
-- \u_uw_uart|modgen_counter_waitcount|nx22081z28\ = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z30\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z29\)

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

\u_uw_uart|modgen_counter_waitcount|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx52268z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z29\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx53265z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z27\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z28\ $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z27\ & 
-- !\u_uw_uart|modgen_counter_waitcount|nx22081z28\ & VCC
-- \u_uw_uart|modgen_counter_waitcount|nx22081z26\ = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z27\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z28\)

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

\u_uw_uart|modgen_counter_waitcount|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx53265z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z27\);

\u_uw_uart|ix39480z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z4\ = !\u_uw_uart|modgen_counter_waitcount|nx22081z25\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z31\ & \u_uw_uart|modgen_counter_waitcount|nx22081z27\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z29\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z25\,
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z31\,
	datac => \u_uw_uart|modgen_counter_waitcount|nx22081z27\,
	datad => \u_uw_uart|modgen_counter_waitcount|nx22081z29\,
	combout => \u_uw_uart|nx39480z4\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx55259z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z23\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z24\ $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z23\ & 
-- !\u_uw_uart|modgen_counter_waitcount|nx22081z24\ & VCC
-- \u_uw_uart|modgen_counter_waitcount|nx22081z22\ = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z23\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z24\)

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

\u_uw_uart|modgen_counter_waitcount|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx55259z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z23\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx58250z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z17\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z18\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z17\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z18\ # 
-- GND)
-- \u_uw_uart|modgen_counter_waitcount|nx22081z16\ = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z18\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z17\)

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

\u_uw_uart|modgen_counter_waitcount|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx58250z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z17\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx59247z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z15\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z16\ $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z15\ & 
-- !\u_uw_uart|modgen_counter_waitcount|nx22081z16\ & VCC
-- \u_uw_uart|modgen_counter_waitcount|nx22081z14\ = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z15\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z16\)

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

\u_uw_uart|modgen_counter_waitcount|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx59247z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z15\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx60244z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z13\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z14\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z13\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z14\ # 
-- GND)
-- \u_uw_uart|modgen_counter_waitcount|nx22081z12\ = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z14\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z13\)

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

\u_uw_uart|modgen_counter_waitcount|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx60244z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z13\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx17096z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z11\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z12\ $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z11\ & 
-- !\u_uw_uart|modgen_counter_waitcount|nx22081z12\ & VCC
-- \u_uw_uart|modgen_counter_waitcount|nx22081z10\ = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z11\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z12\)

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

\u_uw_uart|modgen_counter_waitcount|ix22081z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx18093z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z9\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z10\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z9\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z10\ # GND)
-- \u_uw_uart|modgen_counter_waitcount|nx22081z8\ = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z10\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z9\)

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

\u_uw_uart|modgen_counter_waitcount|reg_q_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx18093z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z9\);

\u_uw_uart|modgen_counter_waitcount|ix22081z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx19090z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z7\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z8\ $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z7\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z8\ & 
-- VCC
-- \u_uw_uart|modgen_counter_waitcount|nx22081z6\ = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z7\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z8\)

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

\u_uw_uart|modgen_counter_waitcount|ix22081z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx20087z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z5\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z6\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z5\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z6\ # GND)
-- \u_uw_uart|modgen_counter_waitcount|nx22081z4\ = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z6\ # !\u_uw_uart|modgen_counter_waitcount|nx22081z5\)

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

\u_uw_uart|modgen_counter_waitcount|reg_q_13_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx20087z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z5\);

\u_uw_uart|modgen_counter_waitcount|reg_q_14_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx21084z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z3\);

\u_uw_uart|modgen_counter_waitcount|reg_q_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx19090z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z7\);

\u_uw_uart|ix39480z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z6\ = !\u_uw_uart|modgen_counter_waitcount|nx64508z1\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z3\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z5\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx64508z1\,
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z3\,
	datac => \u_uw_uart|modgen_counter_waitcount|nx22081z5\,
	datad => \u_uw_uart|modgen_counter_waitcount|nx22081z7\,
	combout => \u_uw_uart|nx39480z6\);

\u_uw_uart|modgen_counter_waitcount|reg_q_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx17096z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z11\);

\u_uw_uart|ix39480z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z7\ = !\u_uw_uart|modgen_counter_waitcount|nx22081z11\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|modgen_counter_waitcount|nx22081z11\,
	datad => \u_uw_uart|modgen_counter_waitcount|nx22081z9\,
	combout => \u_uw_uart|nx39480z7\);

\u_uw_uart|ix39480z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z5\ = !\u_uw_uart|modgen_counter_waitcount|nx22081z13\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z15\ & \u_uw_uart|nx39480z6\ & \u_uw_uart|nx39480z7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z13\,
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z15\,
	datac => \u_uw_uart|nx39480z6\,
	datad => \u_uw_uart|nx39480z7\,
	combout => \u_uw_uart|nx39480z5\);

\u_kirsch|col_i_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|col_i_3_~feeder_combout\ = \u_kirsch|col_flop_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|col_flop_3_\,
	combout => \u_kirsch|col_i_3_~feeder_combout\);

\u_kirsch|reg_col_i_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|col_i_3_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|col_i_3_\);

\u_kirsch|ix39583z59249|ix44952z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix39583z59249|nx37973z1\ = \u_kirsch|col_i_0_\ $ VCC
-- \u_kirsch|ix39583z59249|nx44952z15\ = CARRY(\u_kirsch|col_i_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|col_i_0_\,
	datad => VCC,
	combout => \u_kirsch|ix39583z59249|nx37973z1\,
	cout => \u_kirsch|ix39583z59249|nx44952z15\);

\u_kirsch|reg_col_flop_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|ix39583z59249|nx37973z1\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|col_flop_0_\);

\u_kirsch|col_i_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|col_i_0_~feeder_combout\ = \u_kirsch|col_flop_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|col_flop_0_\,
	combout => \u_kirsch|col_i_0_~feeder_combout\);

\u_kirsch|reg_col_i_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|col_i_0_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|col_i_0_\);

\u_kirsch|ix39583z59249|ix44952z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix39583z59249|nx38970z1\ = \u_kirsch|col_i_1_\ & !\u_kirsch|ix39583z59249|nx44952z15\ # !\u_kirsch|col_i_1_\ & (\u_kirsch|ix39583z59249|nx44952z15\ # GND)
-- \u_kirsch|ix39583z59249|nx44952z13\ = CARRY(!\u_kirsch|ix39583z59249|nx44952z15\ # !\u_kirsch|col_i_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|col_i_1_\,
	datad => VCC,
	cin => \u_kirsch|ix39583z59249|nx44952z15\,
	combout => \u_kirsch|ix39583z59249|nx38970z1\,
	cout => \u_kirsch|ix39583z59249|nx44952z13\);

\u_kirsch|ix39583z59249|ix44952z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix39583z59249|nx39967z1\ = \u_kirsch|col_i_2_\ & (\u_kirsch|ix39583z59249|nx44952z13\ $ GND) # !\u_kirsch|col_i_2_\ & !\u_kirsch|ix39583z59249|nx44952z13\ & VCC
-- \u_kirsch|ix39583z59249|nx44952z11\ = CARRY(\u_kirsch|col_i_2_\ & !\u_kirsch|ix39583z59249|nx44952z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|col_i_2_\,
	datad => VCC,
	cin => \u_kirsch|ix39583z59249|nx44952z13\,
	combout => \u_kirsch|ix39583z59249|nx39967z1\,
	cout => \u_kirsch|ix39583z59249|nx44952z11\);

\u_kirsch|ix39583z59249|ix44952z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix39583z59249|nx40964z1\ = \u_kirsch|col_i_3_\ & !\u_kirsch|ix39583z59249|nx44952z11\ # !\u_kirsch|col_i_3_\ & (\u_kirsch|ix39583z59249|nx44952z11\ # GND)
-- \u_kirsch|ix39583z59249|nx44952z9\ = CARRY(!\u_kirsch|ix39583z59249|nx44952z11\ # !\u_kirsch|col_i_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|col_i_3_\,
	datad => VCC,
	cin => \u_kirsch|ix39583z59249|nx44952z11\,
	combout => \u_kirsch|ix39583z59249|nx40964z1\,
	cout => \u_kirsch|ix39583z59249|nx44952z9\);

\u_kirsch|reg_col_flop_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|ix39583z59249|nx40964z1\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|col_flop_3_\);

\u_kirsch|reg_col_flop_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|ix39583z59249|nx39967z1\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|col_flop_2_\);

\u_kirsch|ix60567z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx60567z5\ = \u_kirsch|col_flop_4_\ # \u_kirsch|col_flop_3_\ # \u_kirsch|col_flop_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|col_flop_4_\,
	datac => \u_kirsch|col_flop_3_\,
	datad => \u_kirsch|col_flop_2_\,
	combout => \u_kirsch|nx60567z5\);

\u_kirsch|modgen_counter_row_count|ix58250z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_row_count|nx51271z1\ = \u_kirsch|modgen_counter_row_count|q_0_\ $ VCC
-- \u_kirsch|modgen_counter_row_count|nx58250z8\ = CARRY(\u_kirsch|modgen_counter_row_count|q_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_row_count|q_0_\,
	datad => VCC,
	combout => \u_kirsch|modgen_counter_row_count|nx51271z1\,
	cout => \u_kirsch|modgen_counter_row_count|nx58250z8\);

\u_kirsch|modgen_counter_row_count|ix58250z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_row_count|nx52268z1\ = \u_kirsch|modgen_counter_row_count|q_1_\ & !\u_kirsch|modgen_counter_row_count|nx58250z8\ # !\u_kirsch|modgen_counter_row_count|q_1_\ & (\u_kirsch|modgen_counter_row_count|nx58250z8\ # GND)
-- \u_kirsch|modgen_counter_row_count|nx58250z7\ = CARRY(!\u_kirsch|modgen_counter_row_count|nx58250z8\ # !\u_kirsch|modgen_counter_row_count|q_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|modgen_counter_row_count|q_1_\,
	datad => VCC,
	cin => \u_kirsch|modgen_counter_row_count|nx58250z8\,
	combout => \u_kirsch|modgen_counter_row_count|nx52268z1\,
	cout => \u_kirsch|modgen_counter_row_count|nx58250z7\);

\u_kirsch|ix39583z59249|ix44952z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix39583z59249|nx41961z1\ = \u_kirsch|col_i_4_\ & (\u_kirsch|ix39583z59249|nx44952z9\ $ GND) # !\u_kirsch|col_i_4_\ & !\u_kirsch|ix39583z59249|nx44952z9\ & VCC
-- \u_kirsch|ix39583z59249|nx44952z7\ = CARRY(\u_kirsch|col_i_4_\ & !\u_kirsch|ix39583z59249|nx44952z9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|col_i_4_\,
	datad => VCC,
	cin => \u_kirsch|ix39583z59249|nx44952z9\,
	combout => \u_kirsch|ix39583z59249|nx41961z1\,
	cout => \u_kirsch|ix39583z59249|nx44952z7\);

\u_kirsch|reg_col_flop_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|ix39583z59249|nx41961z1\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|col_flop_4_\);

\u_kirsch|col_i_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|col_i_4_~feeder_combout\ = \u_kirsch|col_flop_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|col_flop_4_\,
	combout => \u_kirsch|col_i_4_~feeder_combout\);

\u_kirsch|reg_col_i_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|col_i_4_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|col_i_4_\);

\u_kirsch|ix39583z59249|ix44952z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix39583z59249|nx42958z1\ = \u_kirsch|col_i_5_\ & !\u_kirsch|ix39583z59249|nx44952z7\ # !\u_kirsch|col_i_5_\ & (\u_kirsch|ix39583z59249|nx44952z7\ # GND)
-- \u_kirsch|ix39583z59249|nx44952z5\ = CARRY(!\u_kirsch|ix39583z59249|nx44952z7\ # !\u_kirsch|col_i_5_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|col_i_5_\,
	datad => VCC,
	cin => \u_kirsch|ix39583z59249|nx44952z7\,
	combout => \u_kirsch|ix39583z59249|nx42958z1\,
	cout => \u_kirsch|ix39583z59249|nx44952z5\);

\u_kirsch|reg_col_flop_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|ix39583z59249|nx42958z1\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|col_flop_5_\);

\u_kirsch|col_i_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|col_i_5_~feeder_combout\ = \u_kirsch|col_flop_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|col_flop_5_\,
	combout => \u_kirsch|col_i_5_~feeder_combout\);

\u_kirsch|reg_col_i_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|col_i_5_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|col_i_5_\);

\u_kirsch|ix39583z59249|ix44952z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix39583z59249|nx43955z1\ = \u_kirsch|col_i_6_\ & (\u_kirsch|ix39583z59249|nx44952z5\ $ GND) # !\u_kirsch|col_i_6_\ & !\u_kirsch|ix39583z59249|nx44952z5\ & VCC
-- \u_kirsch|ix39583z59249|nx44952z3\ = CARRY(\u_kirsch|col_i_6_\ & !\u_kirsch|ix39583z59249|nx44952z5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|col_i_6_\,
	datad => VCC,
	cin => \u_kirsch|ix39583z59249|nx44952z5\,
	combout => \u_kirsch|ix39583z59249|nx43955z1\,
	cout => \u_kirsch|ix39583z59249|nx44952z3\);

\u_kirsch|reg_col_flop_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|ix39583z59249|nx43955z1\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|col_flop_6_\);

\u_kirsch|reg_col_i_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|col_flop_6_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|col_i_6_\);

\u_kirsch|ix64436z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx64436z2\ = \u_kirsch|col_i_5_\ & \u_kirsch|col_i_3_\ & \u_kirsch|col_i_6_\ & \u_kirsch|col_i_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|col_i_5_\,
	datab => \u_kirsch|col_i_3_\,
	datac => \u_kirsch|col_i_6_\,
	datad => \u_kirsch|col_i_4_\,
	combout => \u_kirsch|nx64436z2\);

\u_kirsch|ix39583z59249|ix44952z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|ix39583z59249|nx44952z1\ = \u_kirsch|ix39583z59249|nx44952z3\ $ \u_kirsch|col_i_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|col_i_7_\,
	cin => \u_kirsch|ix39583z59249|nx44952z3\,
	combout => \u_kirsch|ix39583z59249|nx44952z1\);

\u_kirsch|reg_col_flop_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|ix39583z59249|nx44952z1\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|col_flop_7_\);

\u_kirsch|reg_col_i_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|col_flop_7_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|col_i_7_\);

\u_kirsch|col_i_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|col_i_2_~feeder_combout\ = \u_kirsch|col_flop_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|col_flop_2_\,
	combout => \u_kirsch|col_i_2_~feeder_combout\);

\u_kirsch|reg_col_i_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|col_i_2_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|col_i_2_\);

\u_kirsch|reg_col_flop_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|ix39583z59249|nx38970z1\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|col_flop_1_\);

\u_kirsch|reg_col_i_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|col_flop_1_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|col_i_1_\);

\u_kirsch|ix64436z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx64436z3\ = \u_kirsch|col_i_0_\ & \u_kirsch|col_i_2_\ & \u_kirsch|col_i_1_\ & \u_uw_uart|o_pixavail\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|col_i_0_\,
	datab => \u_kirsch|col_i_2_\,
	datac => \u_kirsch|col_i_1_\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_kirsch|nx64436z3\);

\u_kirsch|ix64436z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx64436z1\ = \u_kirsch|nx64436z2\ & \u_kirsch|col_i_7_\ & \u_kirsch|nx64436z3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|nx64436z2\,
	datac => \u_kirsch|col_i_7_\,
	datad => \u_kirsch|nx64436z3\,
	combout => \u_kirsch|nx64436z1\);

\u_kirsch|modgen_counter_row_count|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|modgen_counter_row_count|nx52268z1\,
	ena => \u_kirsch|nx64436z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|modgen_counter_row_count|q_1_\);

\u_kirsch|modgen_counter_row_count|ix58250z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_row_count|nx53265z1\ = \u_kirsch|modgen_counter_row_count|q_2_\ & (\u_kirsch|modgen_counter_row_count|nx58250z7\ $ GND) # !\u_kirsch|modgen_counter_row_count|q_2_\ & !\u_kirsch|modgen_counter_row_count|nx58250z7\ & VCC
-- \u_kirsch|modgen_counter_row_count|nx58250z6\ = CARRY(\u_kirsch|modgen_counter_row_count|q_2_\ & !\u_kirsch|modgen_counter_row_count|nx58250z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_row_count|q_2_\,
	datad => VCC,
	cin => \u_kirsch|modgen_counter_row_count|nx58250z7\,
	combout => \u_kirsch|modgen_counter_row_count|nx53265z1\,
	cout => \u_kirsch|modgen_counter_row_count|nx58250z6\);

\u_kirsch|modgen_counter_row_count|ix58250z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_row_count|nx54262z1\ = \u_kirsch|modgen_counter_row_count|q_3_\ & !\u_kirsch|modgen_counter_row_count|nx58250z6\ # !\u_kirsch|modgen_counter_row_count|q_3_\ & (\u_kirsch|modgen_counter_row_count|nx58250z6\ # GND)
-- \u_kirsch|modgen_counter_row_count|nx58250z5\ = CARRY(!\u_kirsch|modgen_counter_row_count|nx58250z6\ # !\u_kirsch|modgen_counter_row_count|q_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_row_count|q_3_\,
	datad => VCC,
	cin => \u_kirsch|modgen_counter_row_count|nx58250z6\,
	combout => \u_kirsch|modgen_counter_row_count|nx54262z1\,
	cout => \u_kirsch|modgen_counter_row_count|nx58250z5\);

\u_kirsch|modgen_counter_row_count|ix58250z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_row_count|nx55259z1\ = \u_kirsch|modgen_counter_row_count|q_4_\ & (\u_kirsch|modgen_counter_row_count|nx58250z5\ $ GND) # !\u_kirsch|modgen_counter_row_count|q_4_\ & !\u_kirsch|modgen_counter_row_count|nx58250z5\ & VCC
-- \u_kirsch|modgen_counter_row_count|nx58250z4\ = CARRY(\u_kirsch|modgen_counter_row_count|q_4_\ & !\u_kirsch|modgen_counter_row_count|nx58250z5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|modgen_counter_row_count|q_4_\,
	datad => VCC,
	cin => \u_kirsch|modgen_counter_row_count|nx58250z5\,
	combout => \u_kirsch|modgen_counter_row_count|nx55259z1\,
	cout => \u_kirsch|modgen_counter_row_count|nx58250z4\);

\u_kirsch|modgen_counter_row_count|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|modgen_counter_row_count|nx55259z1\,
	ena => \u_kirsch|nx64436z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|modgen_counter_row_count|q_4_\);

\u_kirsch|modgen_counter_row_count|ix58250z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_row_count|nx56256z1\ = \u_kirsch|modgen_counter_row_count|q_5_\ & !\u_kirsch|modgen_counter_row_count|nx58250z4\ # !\u_kirsch|modgen_counter_row_count|q_5_\ & (\u_kirsch|modgen_counter_row_count|nx58250z4\ # GND)
-- \u_kirsch|modgen_counter_row_count|nx58250z3\ = CARRY(!\u_kirsch|modgen_counter_row_count|nx58250z4\ # !\u_kirsch|modgen_counter_row_count|q_5_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_row_count|q_5_\,
	datad => VCC,
	cin => \u_kirsch|modgen_counter_row_count|nx58250z4\,
	combout => \u_kirsch|modgen_counter_row_count|nx56256z1\,
	cout => \u_kirsch|modgen_counter_row_count|nx58250z3\);

\u_kirsch|modgen_counter_row_count|ix58250z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_row_count|nx57253z1\ = \u_kirsch|modgen_counter_row_count|q_6_\ & (\u_kirsch|modgen_counter_row_count|nx58250z3\ $ GND) # !\u_kirsch|modgen_counter_row_count|q_6_\ & !\u_kirsch|modgen_counter_row_count|nx58250z3\ & VCC
-- \u_kirsch|modgen_counter_row_count|nx58250z2\ = CARRY(\u_kirsch|modgen_counter_row_count|q_6_\ & !\u_kirsch|modgen_counter_row_count|nx58250z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|modgen_counter_row_count|q_6_\,
	datad => VCC,
	cin => \u_kirsch|modgen_counter_row_count|nx58250z3\,
	combout => \u_kirsch|modgen_counter_row_count|nx57253z1\,
	cout => \u_kirsch|modgen_counter_row_count|nx58250z2\);

\u_kirsch|modgen_counter_row_count|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|modgen_counter_row_count|nx57253z1\,
	ena => \u_kirsch|nx64436z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|modgen_counter_row_count|q_6_\);

\u_kirsch|modgen_counter_row_count|ix58250z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|modgen_counter_row_count|nx58250z1\ = \u_kirsch|modgen_counter_row_count|q_7_\ $ \u_kirsch|modgen_counter_row_count|nx58250z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_row_count|q_7_\,
	cin => \u_kirsch|modgen_counter_row_count|nx58250z2\,
	combout => \u_kirsch|modgen_counter_row_count|nx58250z1\);

\u_kirsch|modgen_counter_row_count|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|modgen_counter_row_count|nx58250z1\,
	ena => \u_kirsch|nx64436z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|modgen_counter_row_count|q_7_\);

\u_kirsch|modgen_counter_row_count|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|modgen_counter_row_count|nx56256z1\,
	ena => \u_kirsch|nx64436z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|modgen_counter_row_count|q_5_\);

\u_kirsch|modgen_counter_row_count|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|modgen_counter_row_count|nx51271z1\,
	ena => \u_kirsch|nx64436z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|modgen_counter_row_count|q_0_\);

\u_kirsch|ix60567z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx60567z4\ = \u_kirsch|modgen_counter_row_count|q_6_\ # \u_kirsch|modgen_counter_row_count|q_5_\ # \u_kirsch|modgen_counter_row_count|q_1_\ & \u_kirsch|modgen_counter_row_count|q_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_row_count|q_6_\,
	datab => \u_kirsch|modgen_counter_row_count|q_5_\,
	datac => \u_kirsch|modgen_counter_row_count|q_1_\,
	datad => \u_kirsch|modgen_counter_row_count|q_0_\,
	combout => \u_kirsch|nx60567z4\);

\u_kirsch|modgen_counter_row_count|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|modgen_counter_row_count|nx53265z1\,
	ena => \u_kirsch|nx64436z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|modgen_counter_row_count|q_2_\);

\u_kirsch|ix60567z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx60567z2\ = \u_kirsch|nx60567z3\ # \u_kirsch|modgen_counter_row_count|q_7_\ # \u_kirsch|nx60567z4\ # \u_kirsch|modgen_counter_row_count|q_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx60567z3\,
	datab => \u_kirsch|modgen_counter_row_count|q_7_\,
	datac => \u_kirsch|nx60567z4\,
	datad => \u_kirsch|modgen_counter_row_count|q_2_\,
	combout => \u_kirsch|nx60567z2\);

\u_kirsch|ix60567z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx60567z1\ = \u_kirsch|nx60567z2\ & (\u_kirsch|nx60567z6\ # \u_kirsch|nx60567z5\ # \u_kirsch|col_flop_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx60567z6\,
	datab => \u_kirsch|nx60567z5\,
	datac => \u_kirsch|nx60567z2\,
	datad => \u_kirsch|col_flop_1_\,
	combout => \u_kirsch|nx60567z1\);

\u_kirsch|reg_o_valid\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx60567z1\,
	sclr => \u_kirsch|ALT_INV_v_7_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|p_o_valid\);

\u_uw_uart|ix39480z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z2\ = \u_kirsch|p_o_valid\ # \u_uw_uart|nx39480z3\ & \u_uw_uart|nx39480z4\ & \u_uw_uart|nx39480z5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|nx39480z3\,
	datab => \u_uw_uart|nx39480z4\,
	datac => \u_uw_uart|nx39480z5\,
	datad => \u_kirsch|p_o_valid\,
	combout => \u_uw_uart|nx39480z2\);

\u_uw_uart|ix39480z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z1\ = !\u_uw_uart|nx39480z2\ & (\u_uw_uart|o_pixavail\ # \u_uw_uart|ack\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|o_pixavail\,
	datac => \u_uw_uart|ack\,
	datad => \u_uw_uart|nx39480z2\,
	combout => \u_uw_uart|nx39480z1\);

\u_uw_uart|reg_ack\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx39480z1\,
	sclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|ack\);

\u_uw_uart|ix38742z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx38742z1\ = \u_kirsch|nx64269z1\ & (!\u_uw_uart|o_pixavail\ & !\u_uw_uart|ack\) # !\u_kirsch|nx64269z1\ & (!\u_uw_uart|o_pixavail\ & !\u_uw_uart|ack\ # !\u_kirsch|p_o_mode_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx64269z1\,
	datab => \u_kirsch|p_o_mode_1_\,
	datac => \u_uw_uart|o_pixavail\,
	datad => \u_uw_uart|ack\,
	combout => \u_uw_uart|nx38742z1\);

\u_kirsch|ix43221z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx43221z2\ = \u_kirsch|v_1_\ # \u_kirsch|v_2_\ # \u_uw_uart|o_pixavail\ # \u_kirsch|v_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_1_\,
	datab => \u_kirsch|v_2_\,
	datac => \u_uw_uart|o_pixavail\,
	datad => \u_kirsch|v_3_\,
	combout => \u_kirsch|nx43221z2\);

\u_kirsch|ix43221z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx43221z1\ = \u_kirsch|v_6_\ # \u_kirsch|v_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|v_6_\,
	datad => \u_kirsch|v_4_\,
	combout => \u_kirsch|nx43221z1\);

\u_kirsch|ix43221z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|NOT_rtlc19_PS6_n24\ = !\u_kirsch|v_7_\ & !\u_kirsch|v_5_\ & !\u_kirsch|nx43221z2\ & !\u_kirsch|nx43221z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|v_7_\,
	datab => \u_kirsch|v_5_\,
	datac => \u_kirsch|nx43221z2\,
	datad => \u_kirsch|nx43221z1\,
	combout => \u_kirsch|NOT_rtlc19_PS6_n24\);

\u_kirsch|reg_o_mode_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|NOT_rtlc19_PS6_n24\,
	sclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|nx64269z1\);

\u_uw_uart|i_uarts|ix15376z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx15376z1\ = \u_uw_uart|i_uarts|RxFSM_6_\ # !\u_uw_uart|i_uarts|RxRDY\ & \u_uw_uart|i_uarts|RxErr\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxRDY\,
	datac => \u_uw_uart|i_uarts|RxErr\,
	datad => \u_uw_uart|i_uarts|RxFSM_6_\,
	combout => \u_uw_uart|i_uarts|nx15376z1\);

\u_uw_uart|i_uarts|reg_RxErr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx15376z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxErr\);

\u_uw_uart|ix40736z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx40736z4\ = \u_uw_uart|ack\ & (\u_uw_uart|nx39480z2\) # !\u_uw_uart|ack\ & (\u_uw_uart|o_pixavail\ & (\u_uw_uart|nx39480z2\) # !\u_uw_uart|o_pixavail\ & \u_uw_uart|i_uarts|RxErr\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|ack\,
	datab => \u_uw_uart|o_pixavail\,
	datac => \u_uw_uart|i_uarts|RxErr\,
	datad => \u_uw_uart|nx39480z2\,
	combout => \u_uw_uart|nx40736z4\);

\u_uw_uart|ix40736z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx40736z3\ = \nrst~combout\ & (\u_uw_uart|nx40736z4\ # !\u_kirsch|p_o_mode_1_\ & !\u_kirsch|nx64269z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nrst~combout\,
	datab => \u_kirsch|p_o_mode_1_\,
	datac => \u_kirsch|nx64269z1\,
	datad => \u_uw_uart|nx40736z4\,
	combout => \u_uw_uart|nx40736z3\);

\u_uw_uart|reg_mdata_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|mdata_1_~feeder_combout\,
	sdata => VCC,
	sclr => \u_uw_uart|nx38742z1\,
	sload => \u_kirsch|ALT_INV_p_o_valid\,
	ena => \u_uw_uart|nx40736z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_1_\);

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

\u_uw_uart|reg_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx38868z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|state\);

\u_uw_uart|ix46385z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx46385z2\ = !\u_kirsch|nx64269z1\ & !\u_kirsch|p_o_mode_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|nx64269z1\,
	datad => \u_kirsch|p_o_mode_1_\,
	combout => \u_uw_uart|nx46385z2\);

\u_uw_uart|ix46385z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx46385z1\ = \u_uw_uart|nx46385z2\ # \u_uw_uart|nx40736z2\ & (\u_uw_uart|nx39480z2\) # !\u_uw_uart|nx40736z2\ & \u_uw_uart|i_uarts|RxErr\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|nx40736z2\,
	datab => \u_uw_uart|nx46385z2\,
	datac => \u_uw_uart|i_uarts|RxErr\,
	datad => \u_uw_uart|nx39480z2\,
	combout => \u_uw_uart|nx46385z1\);

\u_uw_uart|reg_dsend\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx46385z1\,
	sclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|dsend\);

\u_uw_uart|ix38868z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx38868z1\ = !\u_uw_uart|state\ & \u_uw_uart|dsend\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|state\,
	datad => \u_uw_uart|dsend\,
	combout => \u_uw_uart|nx38868z1\);

\u_uw_uart|reg_sdout_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_1_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|nx38868z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_1_\);

\u_uw_uart|mdata_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|mdata_2_~feeder_combout\ = \u_kirsch|p_o_dir_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|p_o_dir_1_\,
	combout => \u_uw_uart|mdata_2_~feeder_combout\);

\u_uw_uart|reg_mdata_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|mdata_2_~feeder_combout\,
	sdata => VCC,
	sclr => \u_uw_uart|nx38742z1\,
	sload => \u_kirsch|ALT_INV_p_o_valid\,
	ena => \u_uw_uart|nx40736z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_2_\);

\u_uw_uart|reg_sdout_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|mdata_2_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|nx38868z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_2_\);

\u_uw_uart|ix38742z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|mdata_7n5ss1_4_\ = \u_uw_uart|nx38742z1\ # !\u_kirsch|p_o_valid\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|nx38742z1\,
	datac => \u_kirsch|p_o_valid\,
	combout => \u_uw_uart|mdata_7n5ss1_4_\);

\u_uw_uart|reg_mdata_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|mdata_7n5ss1_4_\,
	ena => \u_uw_uart|nx40736z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_5_\);

\u_uw_uart|sdout_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_5_~feeder_combout\ = \u_uw_uart|mdata_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|mdata_5_\,
	combout => \u_uw_uart|sdout_5_~feeder_combout\);

\u_uw_uart|reg_sdout_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_5_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|nx38868z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_5_\);

\u_uw_uart|ix40736z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|mdata_7n5ss1_6_\ = \u_uw_uart|nx40736z2\ & !\u_kirsch|p_o_valid\ & (\u_kirsch|nx64269z1\ # \u_kirsch|p_o_mode_1_\) # !\u_uw_uart|nx40736z2\ & (\u_kirsch|nx64269z1\ # \u_kirsch|p_o_mode_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|nx40736z2\,
	datab => \u_kirsch|p_o_valid\,
	datac => \u_kirsch|nx64269z1\,
	datad => \u_kirsch|p_o_mode_1_\,
	combout => \u_uw_uart|mdata_7n5ss1_6_\);

\u_uw_uart|reg_mdata_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|mdata_7n5ss1_6_\,
	ena => \u_uw_uart|nx40736z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_7_\);

\u_uw_uart|reg_sdout_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|mdata_7_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|nx38868z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_7_\);

\u_uw_uart|i_uarts|ix35603z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_\ = !\u_uw_uart|i_uarts|TxFSM_1_\ & !\u_uw_uart|sdout_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxFSM_1_\,
	datad => \u_uw_uart|sdout_7_\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_\);

\u_uw_uart|ix18433z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx18433z1\ = !\u_uw_uart|state\ & (\u_uw_uart|ld_sdout\ # \u_uw_uart|dsend\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|state\,
	datac => \u_uw_uart|ld_sdout\,
	datad => \u_uw_uart|dsend\,
	combout => \u_uw_uart|nx18433z1\);

\u_uw_uart|reg_ld_sdout\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx18433z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|ld_sdout\);

\u_uw_uart|i_uarts|ix35603z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx35603z1\ = !\u_uw_uart|i_uarts|TxFSM_0_\ & (\u_uw_uart|i_uarts|TxFSM_1_\ & \u_uw_uart|i_uarts|TopTx\ # !\u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|ld_sdout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TopTx\,
	datab => \u_uw_uart|i_uarts|TxFSM_1_\,
	datac => \u_uw_uart|i_uarts|TxFSM_0_\,
	datad => \u_uw_uart|ld_sdout\,
	combout => \u_uw_uart|i_uarts|nx35603z1\);

\u_uw_uart|i_uarts|reg_Tx_Reg_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx34606z1\);

\u_uw_uart|i_uarts|ix34606z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_7_\ = \u_uw_uart|i_uarts|TxFSM_1_\ & \u_uw_uart|i_uarts|nx34606z1\ # !\u_uw_uart|i_uarts|TxFSM_1_\ & (!\u_uw_uart|sdout_7_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxFSM_1_\,
	datac => \u_uw_uart|i_uarts|nx34606z1\,
	datad => \u_uw_uart|sdout_7_\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_7_\);

\u_uw_uart|i_uarts|reg_Tx_Reg_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_7_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx33609z1\);

\u_uw_uart|i_uarts|ix33609z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_6_\ = \u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|i_uarts|nx33609z1\) # !\u_uw_uart|i_uarts|TxFSM_1_\ & !\u_uw_uart|sdout_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxFSM_1_\,
	datac => \u_uw_uart|sdout_5_\,
	datad => \u_uw_uart|i_uarts|nx33609z1\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_6_\);

\u_uw_uart|i_uarts|reg_Tx_Reg_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_6_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx32612z1\);

\u_uw_uart|i_uarts|ix32612z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_5_\ = \u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|i_uarts|nx32612z1\) # !\u_uw_uart|i_uarts|TxFSM_1_\ & !\u_uw_uart|sdout_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxFSM_1_\,
	datac => \u_uw_uart|sdout_5_\,
	datad => \u_uw_uart|i_uarts|nx32612z1\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_5_\);

\u_uw_uart|i_uarts|reg_Tx_Reg_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_5_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx31615z1\);

\u_uw_uart|mdata_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|mdata_3_~feeder_combout\ = \u_kirsch|p_o_dir_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|p_o_dir_2_\,
	combout => \u_uw_uart|mdata_3_~feeder_combout\);

\u_uw_uart|reg_mdata_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|mdata_3_~feeder_combout\,
	sdata => VCC,
	sclr => \u_uw_uart|nx38742z1\,
	sload => \u_kirsch|ALT_INV_p_o_valid\,
	ena => \u_uw_uart|nx40736z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_3_\);

\u_uw_uart|reg_sdout_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|mdata_3_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|nx38868z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_3_\);

\u_uw_uart|i_uarts|ix31615z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_4_\ = \u_uw_uart|i_uarts|TxFSM_1_\ & \u_uw_uart|i_uarts|nx31615z1\ # !\u_uw_uart|i_uarts|TxFSM_1_\ & (!\u_uw_uart|sdout_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxFSM_1_\,
	datac => \u_uw_uart|i_uarts|nx31615z1\,
	datad => \u_uw_uart|sdout_3_\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_4_\);

\u_uw_uart|i_uarts|reg_Tx_Reg_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_4_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx30618z1\);

\u_uw_uart|i_uarts|ix30618z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_3_\ = \u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|i_uarts|nx30618z1\) # !\u_uw_uart|i_uarts|TxFSM_1_\ & !\u_uw_uart|sdout_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxFSM_1_\,
	datac => \u_uw_uart|sdout_2_\,
	datad => \u_uw_uart|i_uarts|nx30618z1\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_3_\);

\u_uw_uart|i_uarts|reg_Tx_Reg_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_3_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx29621z1\);

\u_uw_uart|i_uarts|ix29621z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_2_\ = \u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|i_uarts|nx29621z1\) # !\u_uw_uart|i_uarts|TxFSM_1_\ & !\u_uw_uart|sdout_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxFSM_1_\,
	datac => \u_uw_uart|sdout_1_\,
	datad => \u_uw_uart|i_uarts|nx29621z1\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_2_\);

\u_uw_uart|i_uarts|reg_Tx_Reg_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_2_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx28624z1\);

\u_uw_uart|i_uarts|ix28624z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_1_\ = \u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|i_uarts|nx28624z1\) # !\u_uw_uart|i_uarts|TxFSM_1_\ & !\u_uw_uart|sdout_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|sdout_0_\,
	datab => \u_uw_uart|i_uarts|TxFSM_1_\,
	datac => \u_uw_uart|i_uarts|nx28624z1\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_1_\);

\u_uw_uart|i_uarts|reg_Tx_Reg_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_1_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx61140z1\);

\u_uw_uart|i_uarts|ix61140z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Tx_Reg_14n6ss1_0_\ = \u_uw_uart|i_uarts|TxFSM_0_\ # \u_uw_uart|i_uarts|nx61140z1\ & \u_uw_uart|i_uarts|TxFSM_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxFSM_0_\,
	datac => \u_uw_uart|i_uarts|nx61140z1\,
	datad => \u_uw_uart|i_uarts|TxFSM_1_\,
	combout => \u_uw_uart|i_uarts|Tx_Reg_14n6ss1_0_\);

\u_uw_uart|i_uarts|ix61812z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx61812z1\ = \u_uw_uart|i_uarts|TxFSM_1_\ & \u_uw_uart|i_uarts|TopTx\ & !\u_uw_uart|i_uarts|TxFSM_0_\ # !\u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|i_uarts|TxFSM_0_\ & \u_uw_uart|i_uarts|TopTx\ # !\u_uw_uart|i_uarts|TxFSM_0_\ & 
-- (\u_uw_uart|ld_sdout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TopTx\,
	datab => \u_uw_uart|i_uarts|TxFSM_1_\,
	datac => \u_uw_uart|i_uarts|TxFSM_0_\,
	datad => \u_uw_uart|ld_sdout\,
	combout => \u_uw_uart|i_uarts|nx61812z1\);

reg_out_txflex_obuf : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Tx_Reg_14n6ss1_0_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx61812z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx21351z2);

\u_kirsch|ix8520z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|p_o_row_2_\ = \u_kirsch|modgen_counter_row_count|q_1_\ $ !\u_kirsch|modgen_counter_row_count|q_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|modgen_counter_row_count|q_1_\,
	datad => \u_kirsch|modgen_counter_row_count|q_2_\,
	combout => \u_kirsch|p_o_row_2_\);

ix57590z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx57590z1 = \u_kirsch|modgen_counter_row_count|q_0_\ & !\u_kirsch|p_o_row_3_\ & (\u_kirsch|p_o_row_2_\ $ \u_kirsch|modgen_counter_row_count|q_1_\) # !\u_kirsch|modgen_counter_row_count|q_0_\ & \u_kirsch|modgen_counter_row_count|q_1_\ & 
-- (\u_kirsch|p_o_row_3_\ $ !\u_kirsch|p_o_row_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|p_o_row_3_\,
	datab => \u_kirsch|p_o_row_2_\,
	datac => \u_kirsch|modgen_counter_row_count|q_1_\,
	datad => \u_kirsch|modgen_counter_row_count|q_0_\,
	combout => nx57590z1);

\reg_out_o_sevenseg_obuf_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx57590z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx41851z1);

ix58587z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx58587z1 = \u_kirsch|p_o_row_2_\ & \u_kirsch|modgen_counter_row_count|q_0_\ & (\u_kirsch|p_o_row_3_\ $ !\u_kirsch|modgen_counter_row_count|q_1_\) # !\u_kirsch|p_o_row_2_\ & !\u_kirsch|p_o_row_3_\ & (\u_kirsch|modgen_counter_row_count|q_0_\ # 
-- !\u_kirsch|modgen_counter_row_count|q_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|p_o_row_3_\,
	datab => \u_kirsch|p_o_row_2_\,
	datac => \u_kirsch|modgen_counter_row_count|q_1_\,
	datad => \u_kirsch|modgen_counter_row_count|q_0_\,
	combout => nx58587z1);

\reg_out_o_sevenseg_obuf_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx58587z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx42848z1);

ix59584z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx59584z1 = \u_kirsch|modgen_counter_row_count|q_1_\ & (\u_kirsch|p_o_row_2_\ & !\u_kirsch|p_o_row_3_\ # !\u_kirsch|p_o_row_2_\ & (\u_kirsch|modgen_counter_row_count|q_0_\)) # !\u_kirsch|modgen_counter_row_count|q_1_\ & !\u_kirsch|p_o_row_3_\ & 
-- (\u_kirsch|modgen_counter_row_count|q_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|p_o_row_3_\,
	datab => \u_kirsch|p_o_row_2_\,
	datac => \u_kirsch|modgen_counter_row_count|q_1_\,
	datad => \u_kirsch|modgen_counter_row_count|q_0_\,
	combout => nx59584z1);

\reg_out_o_sevenseg_obuf_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx59584z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx43845z1);

ix60581z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx60581z1 = \u_kirsch|modgen_counter_row_count|q_0_\ & (\u_kirsch|p_o_row_2_\ $ \u_kirsch|modgen_counter_row_count|q_1_\) # !\u_kirsch|modgen_counter_row_count|q_0_\ & (\u_kirsch|p_o_row_3_\ & !\u_kirsch|p_o_row_2_\ & 
-- !\u_kirsch|modgen_counter_row_count|q_1_\ # !\u_kirsch|p_o_row_3_\ & \u_kirsch|p_o_row_2_\ & \u_kirsch|modgen_counter_row_count|q_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|p_o_row_3_\,
	datab => \u_kirsch|p_o_row_2_\,
	datac => \u_kirsch|modgen_counter_row_count|q_1_\,
	datad => \u_kirsch|modgen_counter_row_count|q_0_\,
	combout => nx60581z1);

\reg_out_o_sevenseg_obuf_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx60581z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx44842z1);

ix61578z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx61578z1 = \u_kirsch|p_o_row_3_\ & \u_kirsch|p_o_row_2_\ & (!\u_kirsch|modgen_counter_row_count|q_0_\ # !\u_kirsch|modgen_counter_row_count|q_1_\) # !\u_kirsch|p_o_row_3_\ & !\u_kirsch|p_o_row_2_\ & !\u_kirsch|modgen_counter_row_count|q_1_\ & 
-- !\u_kirsch|modgen_counter_row_count|q_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|p_o_row_3_\,
	datab => \u_kirsch|p_o_row_2_\,
	datac => \u_kirsch|modgen_counter_row_count|q_1_\,
	datad => \u_kirsch|modgen_counter_row_count|q_0_\,
	combout => nx61578z1);

\reg_out_o_sevenseg_obuf_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx61578z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx45839z1);

ix62575z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx62575z1 = \u_kirsch|p_o_row_3_\ & (\u_kirsch|modgen_counter_row_count|q_0_\ & (!\u_kirsch|modgen_counter_row_count|q_1_\) # !\u_kirsch|modgen_counter_row_count|q_0_\ & \u_kirsch|p_o_row_2_\) # !\u_kirsch|p_o_row_3_\ & \u_kirsch|p_o_row_2_\ & 
-- (\u_kirsch|modgen_counter_row_count|q_1_\ $ !\u_kirsch|modgen_counter_row_count|q_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|p_o_row_3_\,
	datab => \u_kirsch|p_o_row_2_\,
	datac => \u_kirsch|modgen_counter_row_count|q_1_\,
	datad => \u_kirsch|modgen_counter_row_count|q_0_\,
	combout => nx62575z1);

\reg_out_o_sevenseg_obuf_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx62575z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx46836z1);

ix63572z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx63572z1 = \u_kirsch|p_o_row_3_\ & \u_kirsch|modgen_counter_row_count|q_0_\ & (\u_kirsch|p_o_row_2_\ $ !\u_kirsch|modgen_counter_row_count|q_1_\) # !\u_kirsch|p_o_row_3_\ & \u_kirsch|modgen_counter_row_count|q_1_\ & (\u_kirsch|p_o_row_2_\ $ 
-- \u_kirsch|modgen_counter_row_count|q_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|p_o_row_3_\,
	datab => \u_kirsch|p_o_row_2_\,
	datac => \u_kirsch|modgen_counter_row_count|q_1_\,
	datad => \u_kirsch|modgen_counter_row_count|q_0_\,
	combout => nx63572z1);

\reg_out_o_sevenseg_obuf_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx63572z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx47833z1);

\u_kirsch|ix12508z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx12508z1\ = \u_kirsch|modgen_counter_row_count|q_1_\ # \u_kirsch|modgen_counter_row_count|q_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|modgen_counter_row_count|q_1_\,
	datad => \u_kirsch|modgen_counter_row_count|q_2_\,
	combout => \u_kirsch|nx12508z1\);

\u_kirsch|modgen_counter_row_count|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|modgen_counter_row_count|nx54262z1\,
	ena => \u_kirsch|nx64436z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|modgen_counter_row_count|q_3_\);

\u_kirsch|ix60567z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx60567z3\ = \u_kirsch|modgen_counter_row_count|q_4_\ # \u_kirsch|modgen_counter_row_count|q_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|modgen_counter_row_count|q_4_\,
	datad => \u_kirsch|modgen_counter_row_count|q_3_\,
	combout => \u_kirsch|nx60567z3\);

\u_kirsch|ix12508z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|p_o_row_6_\ = \u_kirsch|modgen_counter_row_count|q_6_\ $ (!\u_kirsch|nx12508z1\ & !\u_kirsch|nx60567z3\ & !\u_kirsch|modgen_counter_row_count|q_5_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_row_count|q_6_\,
	datab => \u_kirsch|nx12508z1\,
	datac => \u_kirsch|nx60567z3\,
	datad => \u_kirsch|modgen_counter_row_count|q_5_\,
	combout => \u_kirsch|p_o_row_6_\);

\u_kirsch|ix11511z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|p_o_row_5_\ = \u_kirsch|modgen_counter_row_count|q_5_\ $ (!\u_kirsch|nx60567z3\ & !\u_kirsch|modgen_counter_row_count|q_1_\ & !\u_kirsch|modgen_counter_row_count|q_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx60567z3\,
	datab => \u_kirsch|modgen_counter_row_count|q_5_\,
	datac => \u_kirsch|modgen_counter_row_count|q_1_\,
	datad => \u_kirsch|modgen_counter_row_count|q_2_\,
	combout => \u_kirsch|p_o_row_5_\);

\u_kirsch|ix13505z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx13505z1\ = \u_kirsch|modgen_counter_row_count|q_4_\ # \u_kirsch|modgen_counter_row_count|q_5_\ # \u_kirsch|modgen_counter_row_count|q_6_\ # \u_kirsch|modgen_counter_row_count|q_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_row_count|q_4_\,
	datab => \u_kirsch|modgen_counter_row_count|q_5_\,
	datac => \u_kirsch|modgen_counter_row_count|q_6_\,
	datad => \u_kirsch|modgen_counter_row_count|q_3_\,
	combout => \u_kirsch|nx13505z1\);

\u_kirsch|ix13505z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|p_o_row_7_\ = \u_kirsch|modgen_counter_row_count|q_7_\ $ (!\u_kirsch|modgen_counter_row_count|q_2_\ & !\u_kirsch|modgen_counter_row_count|q_1_\ & !\u_kirsch|nx13505z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_row_count|q_2_\,
	datab => \u_kirsch|modgen_counter_row_count|q_7_\,
	datac => \u_kirsch|modgen_counter_row_count|q_1_\,
	datad => \u_kirsch|nx13505z1\,
	combout => \u_kirsch|p_o_row_7_\);

ix30z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx30z1 = \u_kirsch|p_o_row_4_\ & !\u_kirsch|p_o_row_7_\ & (\u_kirsch|p_o_row_6_\ $ !\u_kirsch|p_o_row_5_\) # !\u_kirsch|p_o_row_4_\ & !\u_kirsch|p_o_row_5_\ & (\u_kirsch|p_o_row_6_\ $ !\u_kirsch|p_o_row_7_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|p_o_row_4_\,
	datab => \u_kirsch|p_o_row_6_\,
	datac => \u_kirsch|p_o_row_5_\,
	datad => \u_kirsch|p_o_row_7_\,
	combout => nx30z1);

\reg_out_o_sevenseg_obuf_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx30z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx49827z1);

\u_kirsch|ix10514z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|p_o_row_4_\ = \u_kirsch|modgen_counter_row_count|q_4_\ $ (!\u_kirsch|modgen_counter_row_count|q_2_\ & !\u_kirsch|modgen_counter_row_count|q_1_\ & !\u_kirsch|modgen_counter_row_count|q_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|modgen_counter_row_count|q_2_\,
	datab => \u_kirsch|modgen_counter_row_count|q_1_\,
	datac => \u_kirsch|modgen_counter_row_count|q_4_\,
	datad => \u_kirsch|modgen_counter_row_count|q_3_\,
	combout => \u_kirsch|p_o_row_4_\);

ix1027z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx1027z1 = \u_kirsch|p_o_row_5_\ & !\u_kirsch|p_o_row_7_\ & (\u_kirsch|p_o_row_4_\ # !\u_kirsch|p_o_row_6_\) # !\u_kirsch|p_o_row_5_\ & \u_kirsch|p_o_row_4_\ & (\u_kirsch|p_o_row_6_\ $ !\u_kirsch|p_o_row_7_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|p_o_row_5_\,
	datab => \u_kirsch|p_o_row_6_\,
	datac => \u_kirsch|p_o_row_4_\,
	datad => \u_kirsch|p_o_row_7_\,
	combout => nx1027z1);

\reg_out_o_sevenseg_obuf_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx1027z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx50824z1);

ix25683z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx25683z1 = \u_kirsch|p_o_row_5_\ & (\u_kirsch|p_o_row_4_\ & !\u_kirsch|p_o_row_7_\) # !\u_kirsch|p_o_row_5_\ & (\u_kirsch|p_o_row_6_\ & (!\u_kirsch|p_o_row_7_\) # !\u_kirsch|p_o_row_6_\ & \u_kirsch|p_o_row_4_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|p_o_row_5_\,
	datab => \u_kirsch|p_o_row_6_\,
	datac => \u_kirsch|p_o_row_4_\,
	datad => \u_kirsch|p_o_row_7_\,
	combout => nx25683z1);

\reg_out_o_sevenseg_obuf_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx25683z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx62540z1);

ix26680z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx26680z1 = \u_kirsch|p_o_row_4_\ & (\u_kirsch|p_o_row_6_\ $ !\u_kirsch|p_o_row_5_\) # !\u_kirsch|p_o_row_4_\ & (\u_kirsch|p_o_row_6_\ & !\u_kirsch|p_o_row_5_\ & !\u_kirsch|p_o_row_7_\ # !\u_kirsch|p_o_row_6_\ & \u_kirsch|p_o_row_5_\ & 
-- \u_kirsch|p_o_row_7_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|p_o_row_4_\,
	datab => \u_kirsch|p_o_row_6_\,
	datac => \u_kirsch|p_o_row_5_\,
	datad => \u_kirsch|p_o_row_7_\,
	combout => nx26680z1);

\reg_out_o_sevenseg_obuf_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx26680z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx63537z1);

ix27677z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx27677z1 = \u_kirsch|p_o_row_6_\ & \u_kirsch|p_o_row_7_\ & (\u_kirsch|p_o_row_5_\ # !\u_kirsch|p_o_row_4_\) # !\u_kirsch|p_o_row_6_\ & !\u_kirsch|p_o_row_4_\ & \u_kirsch|p_o_row_5_\ & !\u_kirsch|p_o_row_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|p_o_row_4_\,
	datab => \u_kirsch|p_o_row_6_\,
	datac => \u_kirsch|p_o_row_5_\,
	datad => \u_kirsch|p_o_row_7_\,
	combout => nx27677z1);

\reg_out_o_sevenseg_obuf_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx27677z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx64534z1);

ix28674z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx28674z1 = \u_kirsch|p_o_row_5_\ & (\u_kirsch|p_o_row_4_\ & (\u_kirsch|p_o_row_7_\) # !\u_kirsch|p_o_row_4_\ & \u_kirsch|p_o_row_6_\) # !\u_kirsch|p_o_row_5_\ & \u_kirsch|p_o_row_6_\ & (\u_kirsch|p_o_row_4_\ $ \u_kirsch|p_o_row_7_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|p_o_row_4_\,
	datab => \u_kirsch|p_o_row_6_\,
	datac => \u_kirsch|p_o_row_5_\,
	datad => \u_kirsch|p_o_row_7_\,
	combout => nx28674z1);

\reg_out_o_sevenseg_obuf_13_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx28674z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx65531z1);

ix29671z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx29671z1 = \u_kirsch|p_o_row_6_\ & !\u_kirsch|p_o_row_5_\ & (\u_kirsch|p_o_row_4_\ $ !\u_kirsch|p_o_row_7_\) # !\u_kirsch|p_o_row_6_\ & \u_kirsch|p_o_row_4_\ & (\u_kirsch|p_o_row_5_\ $ !\u_kirsch|p_o_row_7_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|p_o_row_4_\,
	datab => \u_kirsch|p_o_row_6_\,
	datac => \u_kirsch|p_o_row_5_\,
	datad => \u_kirsch|p_o_row_7_\,
	combout => nx29671z1);

\reg_out_o_sevenseg_obuf_14_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx29671z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx992z1);

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
	datain => \u_kirsch|ALT_INV_nx64269z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_mode(0));

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
	datain => \u_kirsch|p_o_mode_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_mode(1));

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

\u_kirsch_debug_led_red_triBus3_0_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(0));

\u_kirsch_debug_led_red_triBus3_1_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(1));

\u_kirsch_debug_led_red_triBus3_2_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(2));

\u_kirsch_debug_led_red_triBus3_3_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(3));

\u_kirsch_debug_led_red_triBus3_4_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(4));

\u_kirsch_debug_led_red_triBus3_5_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(5));

\u_kirsch_debug_led_red_triBus3_6_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(6));

\u_kirsch_debug_led_red_triBus3_7_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(7));

\u_kirsch_debug_led_red_triBus3_8_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(8));

\u_kirsch_debug_led_red_triBus3_9_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(9));

\u_kirsch_debug_led_red_triBus3_10_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(10));

\u_kirsch_debug_led_red_triBus3_11_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(11));

\u_kirsch_debug_led_red_triBus3_12_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(12));

\u_kirsch_debug_led_red_triBus3_13_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(13));

\u_kirsch_debug_led_red_triBus3_14_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(14));

\u_kirsch_debug_led_red_triBus3_15_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(15));

\u_kirsch_debug_led_red_triBus3_16_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_red(16));

\u_kirsch_debug_led_grn_triBus4_0_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_grn(0));

\u_kirsch_debug_led_grn_triBus4_1_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_grn(1));

\u_kirsch_debug_led_grn_triBus4_2_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_grn(2));

\u_kirsch_debug_led_grn_triBus4_3_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_grn(3));

\u_kirsch_debug_led_grn_triBus4_4_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_grn(4));

\u_kirsch_debug_led_grn_triBus4_5_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_debug_led_grn(5));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_0(1));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_0(2));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_0(3));

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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_1(0));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_1(1));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_1(4));

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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_2(0));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_2(1));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_2(2));

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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_3(0));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_3(4));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_3(5));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_4(4));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_4(5));

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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_5(0));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_5(4));

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_sevenseg_5(5));

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

