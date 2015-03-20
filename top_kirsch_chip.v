// Copyright (C) 1991-2009 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus II"
// VERSION "Version 9.0 Build 132 02/25/2009 SJ Full Version"

// DATE "03/28/2013 16:42:34"

// 
// Device: Altera EP2C35F672C7 Package FBGA672
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module top_kirsch_chip (
	nrst,
	clk,
	rxflex,
	txflex,
	o_sevenseg,
	o_mode,
	o_nrst,
	debug_key,
	debug_switch,
	debug_led_red,
	debug_led_grn,
	debug_sevenseg_0,
	debug_sevenseg_1,
	debug_sevenseg_2,
	debug_sevenseg_3,
	debug_sevenseg_4,
	debug_sevenseg_5);
input 	nrst;
input 	clk;
input 	rxflex;
output 	txflex;
output 	[15:0] o_sevenseg;
output 	[1:0] o_mode;
output 	o_nrst;
input 	[3:1] debug_key;
input 	[17:0] debug_switch;
output 	[16:0] debug_led_red;
output 	[5:0] debug_led_grn;
output 	[7:0] debug_sevenseg_0;
output 	[7:0] debug_sevenseg_1;
output 	[7:0] debug_sevenseg_2;
output 	[7:0] debug_sevenseg_3;
output 	[7:0] debug_sevenseg_4;
output 	[7:0] debug_sevenseg_5;

wire gnd = 1'b0;
wire vcc = 1'b1;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
// synopsys translate_off
initial $sdf_annotate("top_kirsch_v.sdo");
// synopsys translate_on

wire \u_uw_uart|i_uarts|TopTx ;
wire \u_kirsch|p_o_row_3_ ;
wire \u_uw_uart|sdout_0_ ;
wire \u_uw_uart|i_uarts|nx4608z2 ;
wire \u_uw_uart|i_uarts|TxBitCnt_3_ ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23 ;
wire \u_uw_uart|i_uarts|TxDivisor_5_ ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5 ;
wire \u_uw_uart|i_uarts|nx32400z3 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13 ;
wire \u_uw_uart|i_uarts|nx32400z4 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21 ;
wire \u_uw_uart|i_uarts|nx32400z5 ;
wire \u_uw_uart|i_uarts|nx32400z2 ;
wire \u_uw_uart|i_uarts|nx32400z6 ;
wire \u_uw_uart|i_uarts|nx32400z7 ;
wire \u_uw_uart|i_uarts|nx32400z9 ;
wire \u_uw_uart|i_uarts|nx32400z8 ;
wire \u_uw_uart|i_uarts|nx32400z1 ;
wire \u_uw_uart|mdata_0_ ;
wire \u_uw_uart|i_uarts|nx51917z3 ;
wire \u_uw_uart|i_uarts|nx51917z4 ;
wire \u_uw_uart|i_uarts|nx51917z1 ;
wire \u_uw_uart|nx40736z2 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z19 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z21 ;
wire \u_uw_uart|nx39480z3 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z25 ;
wire \u_uw_uart|modgen_counter_waitcount|nx64508z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx51271z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx52268z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx53265z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx54262z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx55259z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx56256z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx57253z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx58250z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx59247z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx60244z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx17096z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2 ;
wire \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z1 ;
wire \u_kirsch|p_o_edge ;
wire \u_kirsch|nx60567z6 ;
wire \u_uw_uart|modgen_counter_waitcount|nx54262z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx56256z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx57253z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z2 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17 ;
wire \u_uw_uart|i_uarts|nx34394z9 ;
wire \u_uw_uart|i_uarts|RxFSM_2_ ;
wire \u_kirsch|r8_6_ ;
wire \u_kirsch|r9_8_ ;
wire \u_kirsch|r8_4_ ;
wire \u_kirsch|r9_6_ ;
wire \u_kirsch|r8_2_ ;
wire \u_kirsch|r9_4_ ;
wire \u_kirsch|r8_0_ ;
wire \u_kirsch|r9_2_ ;
wire \u_kirsch|r9_0_ ;
wire \u_kirsch|sub_sub13_1|d_7_ ;
wire \u_kirsch|sub_sub13_1|d_8_ ;
wire \u_kirsch|r9_10_ ;
wire \u_kirsch|sub_sub13_1|d_9_ ;
wire \u_kirsch|r8_8_ ;
wire \u_kirsch|r9_12_ ;
wire \u_kirsch|nx1448z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx53265z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx56256z1 ;
wire \u_uw_uart|i_uarts|nx14544z1 ;
wire \u_kirsch|r3_7_ ;
wire \u_kirsch|r3_2_ ;
wire \u_kirsch|r9_add12_17i1|nx38970z1 ;
wire \u_kirsch|r9_add12_17i1|nx40964z1 ;
wire \u_kirsch|r9_add12_17i1|nx42958z1 ;
wire \u_kirsch|r9_add12_17i1|nx44952z1 ;
wire \u_kirsch|r5_8_ ;
wire \u_kirsch|r9_add12_17i1|nx46946z1 ;
wire \u_kirsch|r9_add12_17i1|nx63795z4 ;
wire \u_kirsch|r3_12_ ;
wire \u_kirsch|r9_add12_17i1|nx63795z1 ;
wire \u_kirsch|nx31323z2 ;
wire \u_kirsch|p_o_dir_1_ ;
wire \u_kirsch|r6_8_ ;
wire \u_kirsch|r3_11n1s1f1_8_ ;
wire \u_kirsch|r6_6_ ;
wire \u_kirsch|r3_11n1s1f1_6_ ;
wire \u_kirsch|r6_5_ ;
wire \u_kirsch|r3_11n1s1f1_5_ ;
wire \u_kirsch|r6_4_ ;
wire \u_kirsch|r3_11n1s1f1_4_ ;
wire \u_kirsch|r6_1_ ;
wire \u_kirsch|r3_11n1s1f1_1_ ;
wire \u_kirsch|r6_0_ ;
wire \u_kirsch|r3_11n1s1f1_0_ ;
wire \u_kirsch|r3_add13_11i1|nx39967z1 ;
wire \u_kirsch|r3_add13_11i1|nx44952z1 ;
wire \u_kirsch|r3_add13_11i1|nx64792z3 ;
wire \u_kirsch|r3_add13_11i1|nx64792z1 ;
wire \u_kirsch|r5_dir_0_ ;
wire \u_kirsch|r8_dir_1_ ;
wire \u_kirsch|p_o_dir_2_ ;
wire \u_kirsch|g_6_ ;
wire \u_kirsch|r6_add8_14i1|nx37973z1 ;
wire \u_kirsch|r6_add8_14i1|nx38970z1 ;
wire \u_kirsch|r6_add8_14i1|nx41961z1 ;
wire \u_kirsch|r6_add8_14i1|nx42958z1 ;
wire \u_kirsch|r6_add8_14i1|nx43955z1 ;
wire \u_kirsch|r6_add8_14i1|nx23445z2 ;
wire \u_kirsch|r6_add8_14i1|nx23445z1 ;
wire \u_kirsch|nx30960z2 ;
wire \u_kirsch|nx30960z4 ;
wire \u_kirsch|r2_10n1s1f1_6_ ;
wire \u_kirsch|r2_10n1s1f1_5_ ;
wire \u_kirsch|r2_10n1s1f1_4_ ;
wire \u_kirsch|r2_10n1s4f1_3_ ;
wire \u_kirsch|r2_add8_10i25|nx40964z1 ;
wire \u_kirsch|r2_10n1s1f1_2_ ;
wire \u_kirsch|r2_10n1s1f1_1_ ;
wire \u_kirsch|r2_10n1s1f1_0_ ;
wire \u_kirsch|r2_10n1s1f1_7_ ;
wire \u_kirsch|r7_add8_15i9|nx37973z1 ;
wire \u_kirsch|r7_add8_15i9|nx38970z1 ;
wire \u_kirsch|r7_add8_15i9|nx39967z1 ;
wire \u_kirsch|r7_add8_15i9|nx42958z1 ;
wire \u_kirsch|r5_dir_1_ ;
wire \u_kirsch|nx44420z1 ;
wire \u_kirsch|r8_dir_2_ ;
wire \u_kirsch|r2_dir_1_ ;
wire \u_kirsch|r5_dir_2_ ;
wire \u_kirsch|r4_dir_2_ ;
wire \u_kirsch|nx20067z1 ;
wire \u_kirsch|r2_dir_2_ ;
wire \u_kirsch|nx19070z1 ;
wire \u_kirsch|nx44420z1~_wirecell_combout ;
wire \u_kirsch|r2_dir_1_~_wirecell_combout ;
wire \u_uw_uart|sdout_0_~feeder_combout ;
wire \u_uw_uart|mdata_0_~feeder_combout ;
wire \u_kirsch|r8_6_~feeder_combout ;
wire \u_kirsch|r8_8_~feeder_combout ;
wire \u_kirsch|r5_8_~feeder_combout ;
wire \u_kirsch|r8_4_~feeder_combout ;
wire \u_kirsch|r8_2_~feeder_combout ;
wire \u_kirsch|r8_0_~feeder_combout ;
wire \u_kirsch|r8_dir_1_~feeder_combout ;
wire \u_kirsch|r8_dir_2_~feeder_combout ;
wire \u_kirsch|r5_dir_2_~feeder_combout ;
wire \u_kirsch|r4_dir_2_~feeder_combout ;
wire \u_uw_uart|i_uarts|TxDivisor_5_~feeder_combout ;
wire \clk~combout ;
wire \clk~clkctrl_outclk ;
wire \u_uw_uart|i_uarts|nx5605z1 ;
wire \nrst~combout ;
wire \u_uw_uart|i_uarts|TxFSM_1_ ;
wire \u_uw_uart|i_uarts|nx48926z1 ;
wire \u_uw_uart|i_uarts|TxBitCnt_0_ ;
wire \u_uw_uart|i_uarts|nx51917z2 ;
wire \u_uw_uart|i_uarts|nx50920z2 ;
wire \u_uw_uart|i_uarts|nx49923z1 ;
wire \u_uw_uart|i_uarts|TxBitCnt_1_ ;
wire \u_uw_uart|i_uarts|nx50920z3 ;
wire \u_uw_uart|i_uarts|nx50920z1 ;
wire \u_uw_uart|i_uarts|TxBitCnt_2_ ;
wire \u_uw_uart|i_uarts|nx4608z3 ;
wire \u_uw_uart|i_uarts|nx4608z1 ;
wire \u_uw_uart|i_uarts|TxFSM_0_ ;
wire \u_kirsch|r8_dir_0_~feeder_combout ;
wire \rxflex~combout ;
wire \u_uw_uart|i_uarts|NOT_Rx ;
wire \u_uw_uart|i_uarts|not_Rx_r ;
wire \u_uw_uart|i_uarts|not_Rx_r~_wirecell_combout ;
wire \u_uw_uart|i_uarts|nx11553z1 ;
wire \u_uw_uart|i_uarts|nx34394z2~_wirecell_combout ;
wire \u_uw_uart|i_uarts|RxFSM_1_ ;
wire \u_uw_uart|i_uarts|RxFSM_6_~feeder_combout ;
wire \u_uw_uart|i_uarts|RxFSM_6_ ;
wire \u_uw_uart|i_uarts|nx15541z3 ;
wire \u_uw_uart|rawrx ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx51271z1 ;
wire \u_uw_uart|i_uarts|nx65151z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx52268z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx54262z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx57253z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx59247z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx60244z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3 ;
wire \u_uw_uart|i_uarts|nx34394z4 ;
wire \u_uw_uart|i_uarts|nx34394z10 ;
wire \u_uw_uart|i_uarts|nx34394z8 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx58250z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx55259z1 ;
wire \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13 ;
wire \u_uw_uart|i_uarts|nx34394z7 ;
wire \u_uw_uart|i_uarts|nx34394z6 ;
wire \u_uw_uart|i_uarts|nx34394z5 ;
wire \u_uw_uart|i_uarts|nx34394z3 ;
wire \u_uw_uart|i_uarts|nx34394z1 ;
wire \u_uw_uart|i_uarts|TopRx ;
wire \u_uw_uart|i_uarts|nx15541z2 ;
wire \u_uw_uart|i_uarts|nx15541z1 ;
wire \u_uw_uart|i_uarts|RxFSM_5_ ;
wire \u_uw_uart|i_uarts|nx16538z1 ;
wire \u_uw_uart|i_uarts|nx34394z2 ;
wire \u_uw_uart|i_uarts|not_rtlc17_X_0_n360 ;
wire \u_uw_uart|i_uarts|nx11364z1 ;
wire \u_uw_uart|i_uarts|RxBitCnt_0_ ;
wire \u_uw_uart|i_uarts|nx10367z1 ;
wire \u_uw_uart|i_uarts|RxBitCnt_1_ ;
wire \u_uw_uart|i_uarts|nx9370z2 ;
wire \u_uw_uart|i_uarts|nx9370z1 ;
wire \u_uw_uart|i_uarts|RxBitCnt_2_ ;
wire \u_uw_uart|i_uarts|nx8373z2 ;
wire \u_uw_uart|i_uarts|nx8373z1 ;
wire \u_uw_uart|i_uarts|RxBitCnt_3_ ;
wire \u_uw_uart|i_uarts|nx13547z2 ;
wire \u_uw_uart|i_uarts|nx13547z1 ;
wire \u_uw_uart|i_uarts|RxFSM_3_ ;
wire \u_uw_uart|i_uarts|nx54636z1 ;
wire \u_uw_uart|i_uarts|Rx_Reg_7_ ;
wire \u_uw_uart|i_uarts|Dout_7_~feeder_combout ;
wire \u_uw_uart|i_uarts|nx30017z1 ;
wire \u_uw_uart|i_uarts|Dout_7_ ;
wire \u_uw_uart|i_uarts|RxRDY ;
wire \u_uw_uart|rdata_7_ ;
wire \u_uw_uart|datain_7_ ;
wire \u_uw_uart|nx58116z1 ;
wire \u_uw_uart|o_pixavail ;
wire \u_kirsch|e_7_ ;
wire \u_kirsch|f_7_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_6_~feeder_combout ;
wire \u_uw_uart|i_uarts|Rx_Reg_6_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_5_~feeder_combout ;
wire \u_uw_uart|i_uarts|Rx_Reg_5_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_4_ ;
wire \u_uw_uart|i_uarts|Dout_4_~feeder_combout ;
wire \u_uw_uart|i_uarts|Dout_4_ ;
wire \u_uw_uart|rdata_4_~feeder_combout ;
wire \u_uw_uart|rdata_4_ ;
wire \u_uw_uart|datain_4_ ;
wire \u_kirsch|e_4_ ;
wire \u_kirsch|f_4_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_3_~feeder_combout ;
wire \u_uw_uart|i_uarts|Rx_Reg_3_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_2_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_1_~feeder_combout ;
wire \u_uw_uart|i_uarts|Rx_Reg_1_ ;
wire \u_uw_uart|i_uarts|Dout_1_ ;
wire \u_uw_uart|rdata_1_~feeder_combout ;
wire \u_uw_uart|rdata_1_ ;
wire \u_uw_uart|datain_1_ ;
wire \u_kirsch|e_1_ ;
wire \u_kirsch|f_1_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_0_ ;
wire \u_uw_uart|i_uarts|Dout_0_~feeder_combout ;
wire \u_uw_uart|i_uarts|Dout_0_ ;
wire \u_uw_uart|rdata_0_~feeder_combout ;
wire \u_uw_uart|rdata_0_ ;
wire \u_uw_uart|datain_0_ ;
wire \u_kirsch|e_0_ ;
wire \u_kirsch|f_0_ ;
wire \u_kirsch|ix20740z19328|nx23445z22 ;
wire \u_kirsch|ix20740z19328|nx23445z19 ;
wire \u_kirsch|ix20740z19328|nx23445z16 ;
wire \u_kirsch|ix20740z19328|nx23445z13 ;
wire \u_kirsch|ix20740z19328|nx23445z10 ;
wire \u_kirsch|ix20740z19328|nx23445z7 ;
wire \u_kirsch|ix20740z19328|nx23445z4 ;
wire \u_kirsch|ix20740z19328|nx23445z1 ;
wire \u_kirsch|v_1_ ;
wire \u_kirsch|v_2_ ;
wire \u_kirsch|nx21064z1 ;
wire \u_kirsch|nx33634z1 ;
wire \u_kirsch|r2_dir_0_ ;
wire \u_kirsch|r2_dir_0_~_wirecell_combout ;
wire \u_kirsch|v_3_ ;
wire \u_kirsch|v_4_~feeder_combout ;
wire \u_kirsch|v_4_ ;
wire \u_kirsch|v_5_ ;
wire \~GND~combout ;
wire \u_uw_uart|i_uarts|Dout_6_~feeder_combout ;
wire \u_uw_uart|i_uarts|Dout_6_ ;
wire \u_uw_uart|rdata_6_~feeder_combout ;
wire \u_uw_uart|rdata_6_ ;
wire \u_uw_uart|datain_6_ ;
wire \u_kirsch|e_6_ ;
wire \u_kirsch|f_6_ ;
wire \u_uw_uart|i_uarts|Dout_5_ ;
wire \u_uw_uart|rdata_5_~feeder_combout ;
wire \u_uw_uart|rdata_5_ ;
wire \u_uw_uart|datain_5_ ;
wire \u_kirsch|e_5_ ;
wire \u_kirsch|f_5_ ;
wire \u_uw_uart|i_uarts|Dout_3_ ;
wire \u_uw_uart|rdata_3_~feeder_combout ;
wire \u_uw_uart|rdata_3_ ;
wire \u_uw_uart|datain_3_ ;
wire \u_kirsch|e_3_ ;
wire \u_uw_uart|i_uarts|Dout_2_~feeder_combout ;
wire \u_uw_uart|i_uarts|Dout_2_ ;
wire \u_uw_uart|rdata_2_~feeder_combout ;
wire \u_uw_uart|rdata_2_ ;
wire \u_uw_uart|datain_2_ ;
wire \u_kirsch|e_2_ ;
wire \u_kirsch|r7_add8_15i9|nx44952z22 ;
wire \u_kirsch|r7_add8_15i9|nx44952z19 ;
wire \u_kirsch|r7_add8_15i9|nx44952z16 ;
wire \u_kirsch|r7_add8_15i9|nx44952z13 ;
wire \u_kirsch|r7_add8_15i9|nx44952z10 ;
wire \u_kirsch|r7_add8_15i9|nx44952z7 ;
wire \u_kirsch|r7_add8_15i9|nx44952z4 ;
wire \u_kirsch|r7_add8_15i9|nx23445z2 ;
wire \u_kirsch|r7_add8_15i9|nx23445z1 ;
wire \u_kirsch|r7_add8_15i9|nx44952z1 ;
wire \u_kirsch|r7_add8_15i9|nx43955z1 ;
wire \u_kirsch|g_5_ ;
wire \u_kirsch|r7_add8_15i9|nx41961z1 ;
wire \u_kirsch|r7_add8_15i9|nx40964z1 ;
wire \u_kirsch|f_2_ ;
wire \u_kirsch|g_2_ ;
wire \u_kirsch|g_1_ ;
wire \u_kirsch|g_0_ ;
wire \u_kirsch|r7_add9_15i10|nx45949z24 ;
wire \u_kirsch|r7_add9_15i10|nx45949z21 ;
wire \u_kirsch|r7_add9_15i10|nx45949z18 ;
wire \u_kirsch|r7_add9_15i10|nx45949z15 ;
wire \u_kirsch|r7_add9_15i10|nx45949z12 ;
wire \u_kirsch|r7_add9_15i10|nx45949z9 ;
wire \u_kirsch|r7_add9_15i10|nx45949z6 ;
wire \u_kirsch|r7_add9_15i10|nx45949z3 ;
wire \u_kirsch|r7_add9_15i10|nx23445z2 ;
wire \u_kirsch|r7_add9_15i10|nx23445z1 ;
wire \u_kirsch|r7_9_ ;
wire \u_kirsch|nx47743z1 ;
wire \u_kirsch|r4_9_ ;
wire \u_kirsch|r7_add9_15i10|nx45949z1 ;
wire \u_kirsch|r7_8_ ;
wire \u_kirsch|nx20740z1 ;
wire \u_kirsch|g_7_ ;
wire \u_kirsch|nx20740z4 ;
wire \u_kirsch|nx20740z2 ;
wire \u_kirsch|r2_10n1s4f1_7_ ;
wire \u_kirsch|r2_add8_10i25|nx44952z1 ;
wire \u_kirsch|r2_10n1s4f1_6_ ;
wire \u_kirsch|r2_add8_10i25|nx43955z1 ;
wire \u_kirsch|r2_10n1s4f1_5_ ;
wire \u_kirsch|r2_add8_10i25|nx42958z1 ;
wire \u_kirsch|r2_10n1s4f1_4_ ;
wire \u_kirsch|r2_add8_10i25|nx41961z1 ;
wire \u_kirsch|r2_10n1s1f1_3_ ;
wire \u_kirsch|r2_10n1s4f1_2_ ;
wire \u_kirsch|r2_add8_10i25|nx39967z1 ;
wire \u_kirsch|r2_10n1s4f1_1_ ;
wire \u_kirsch|r2_add8_10i25|nx38970z1 ;
wire \u_kirsch|r2_10n1s4f1_0_ ;
wire \u_kirsch|r2_add8_10i25|nx37973z1 ;
wire \u_kirsch|r2_add9_10i26|nx45949z24 ;
wire \u_kirsch|r2_add9_10i26|nx45949z21 ;
wire \u_kirsch|r2_add9_10i26|nx45949z18 ;
wire \u_kirsch|r2_add9_10i26|nx45949z15 ;
wire \u_kirsch|r2_add9_10i26|nx45949z12 ;
wire \u_kirsch|r2_add9_10i26|nx45949z9 ;
wire \u_kirsch|r2_add9_10i26|nx45949z6 ;
wire \u_kirsch|r2_add9_10i26|nx44952z1 ;
wire \u_kirsch|r2_7_ ;
wire \u_kirsch|r4_7_~feeder_combout ;
wire \u_kirsch|r7_add9_15i10|nx44952z1 ;
wire \u_kirsch|r7_7_ ;
wire \u_kirsch|r4_7_ ;
wire \u_kirsch|r2_add9_10i26|nx43955z1 ;
wire \u_kirsch|r2_6_ ;
wire \u_kirsch|r4_6_~feeder_combout ;
wire \u_kirsch|r7_add9_15i10|nx43955z1 ;
wire \u_kirsch|r7_6_ ;
wire \u_kirsch|r4_6_ ;
wire \u_kirsch|r7_add9_15i10|nx42958z1 ;
wire \u_kirsch|r7_5_ ;
wire \u_kirsch|r2_add9_10i26|nx41961z1 ;
wire \u_kirsch|r2_4_ ;
wire \u_kirsch|r4_4_~feeder_combout ;
wire \u_kirsch|r7_add9_15i10|nx41961z1 ;
wire \u_kirsch|r7_4_ ;
wire \u_kirsch|r4_4_ ;
wire \u_kirsch|r7_add9_15i10|nx40964z1 ;
wire \u_kirsch|r7_3_ ;
wire \u_kirsch|r2_add9_10i26|nx39967z1 ;
wire \u_kirsch|r2_2_ ;
wire \u_kirsch|r4_2_~feeder_combout ;
wire \u_kirsch|r7_add9_15i10|nx39967z1 ;
wire \u_kirsch|r7_2_ ;
wire \u_kirsch|r4_2_ ;
wire \u_kirsch|r4_1_~feeder_combout ;
wire \u_kirsch|r7_add9_15i10|nx38970z1 ;
wire \u_kirsch|r7_1_ ;
wire \u_kirsch|r4_1_ ;
wire \u_kirsch|r2_add9_10i26|nx37973z1 ;
wire \u_kirsch|r2_0_ ;
wire \u_kirsch|r4_0_~feeder_combout ;
wire \u_kirsch|r7_add9_15i10|nx37973z1 ;
wire \u_kirsch|r7_0_ ;
wire \u_kirsch|r4_0_ ;
wire \u_kirsch|ix47743z6956|nx23445z28 ;
wire \u_kirsch|ix47743z6956|nx23445z25 ;
wire \u_kirsch|ix47743z6956|nx23445z22 ;
wire \u_kirsch|ix47743z6956|nx23445z19 ;
wire \u_kirsch|ix47743z6956|nx23445z16 ;
wire \u_kirsch|ix47743z6956|nx23445z13 ;
wire \u_kirsch|ix47743z6956|nx23445z10 ;
wire \u_kirsch|ix47743z6956|nx23445z7 ;
wire \u_kirsch|ix47743z6956|nx23445z4 ;
wire \u_kirsch|ix47743z6956|nx23445z1 ;
wire \u_kirsch|nx82z1 ;
wire \u_kirsch|nx43423z1 ;
wire \u_kirsch|nx43423z1~_wirecell_combout ;
wire \u_kirsch|r5_9_~feeder_combout ;
wire \u_kirsch|r2_add9_10i26|nx45949z3 ;
wire \u_kirsch|r2_add9_10i26|nx45949z1 ;
wire \u_kirsch|r2_8_ ;
wire \u_kirsch|r2_add9_10i26|nx42958z1 ;
wire \u_kirsch|r2_5_ ;
wire \u_kirsch|r4_5_~feeder_combout ;
wire \u_kirsch|r4_5_ ;
wire \u_kirsch|r2_add9_10i26|nx40964z1 ;
wire \u_kirsch|r2_3_ ;
wire \u_kirsch|r4_3_~feeder_combout ;
wire \u_kirsch|r4_3_ ;
wire \u_kirsch|ix9374z6956|nx23445z28 ;
wire \u_kirsch|ix9374z6956|nx23445z25 ;
wire \u_kirsch|ix9374z6956|nx23445z22 ;
wire \u_kirsch|ix9374z6956|nx23445z19 ;
wire \u_kirsch|ix9374z6956|nx23445z16 ;
wire \u_kirsch|ix9374z6956|nx23445z13 ;
wire \u_kirsch|ix9374z6956|nx23445z10 ;
wire \u_kirsch|ix9374z6956|nx23445z7 ;
wire \u_kirsch|ix9374z6956|nx23445z4 ;
wire \u_kirsch|ix9374z6956|nx23445z1 ;
wire \u_kirsch|r5_9_ ;
wire \u_kirsch|r4_8_~feeder_combout ;
wire \u_kirsch|r4_8_ ;
wire \u_kirsch|r5_6_~feeder_combout ;
wire \u_kirsch|r5_6_ ;
wire \u_kirsch|r5_5_~feeder_combout ;
wire \u_kirsch|r5_5_ ;
wire \u_kirsch|r5_4_~feeder_combout ;
wire \u_kirsch|r5_4_ ;
wire \u_kirsch|r5_3_~feeder_combout ;
wire \u_kirsch|r5_3_ ;
wire \u_kirsch|r5_2_~feeder_combout ;
wire \u_kirsch|r5_2_ ;
wire \u_kirsch|r5_0_~feeder_combout ;
wire \u_kirsch|r5_0_ ;
wire \u_kirsch|ix15883z6955|nx23445z28 ;
wire \u_kirsch|ix15883z6955|nx23445z25 ;
wire \u_kirsch|ix15883z6955|nx23445z22 ;
wire \u_kirsch|ix15883z6955|nx23445z19 ;
wire \u_kirsch|ix15883z6955|nx23445z16 ;
wire \u_kirsch|ix15883z6955|nx23445z13 ;
wire \u_kirsch|ix15883z6955|nx23445z10 ;
wire \u_kirsch|ix15883z6955|nx23445z7 ;
wire \u_kirsch|ix15883z6955|nx23445z4 ;
wire \u_kirsch|ix15883z6955|nx23445z1 ;
wire \u_kirsch|v_6_ ;
wire \u_kirsch|r8_dir_0_ ;
wire \u_kirsch|g_4_ ;
wire \u_kirsch|f_3_ ;
wire \u_kirsch|g_3_ ;
wire \u_kirsch|r6_add8_14i1|nx44952z22 ;
wire \u_kirsch|r6_add8_14i1|nx44952z19 ;
wire \u_kirsch|r6_add8_14i1|nx44952z16 ;
wire \u_kirsch|r6_add8_14i1|nx44952z13 ;
wire \u_kirsch|r6_add8_14i1|nx44952z10 ;
wire \u_kirsch|r6_add8_14i1|nx44952z7 ;
wire \u_kirsch|r6_add8_14i1|nx44952z4 ;
wire \u_kirsch|r6_add8_14i1|nx44952z1 ;
wire \u_kirsch|r6_7_ ;
wire \u_kirsch|nx30960z1 ;
wire \u_kirsch|r1_9n1s1f2_7_ ;
wire \u_kirsch|r1_7_ ;
wire \u_kirsch|r3_11n1s1f1_7_ ;
wire \u_kirsch|nx30960z5 ;
wire \u_kirsch|r1_9n1s1f2_3_ ;
wire \u_kirsch|r1_3_ ;
wire \u_kirsch|r6_add8_14i1|nx40964z1 ;
wire \u_kirsch|r6_3_ ;
wire \u_kirsch|r3_11n1s1f1_3_ ;
wire \u_kirsch|nx30960z6 ;
wire \u_kirsch|r1_9n1s1f2_2_ ;
wire \u_kirsch|r1_2_ ;
wire \u_kirsch|r6_add8_14i1|nx39967z1 ;
wire \u_kirsch|r6_2_ ;
wire \u_kirsch|r3_11n1s1f1_2_ ;
wire \u_kirsch|r3_add13_11i1|nx37973z1 ;
wire \u_kirsch|nx30960z8 ;
wire \u_kirsch|r1_9n1s1f2_0_ ;
wire \u_kirsch|r1_0_ ;
wire \u_kirsch|r3_0_ ;
wire \u_kirsch|r3_add13_11i1|nx64792z33 ;
wire \u_kirsch|r3_add13_11i1|nx38970z1 ;
wire \u_kirsch|nx30960z7 ;
wire \u_kirsch|r1_9n1s1f2_1_ ;
wire \u_kirsch|r1_1_ ;
wire \u_kirsch|r3_1_ ;
wire \u_kirsch|r3_add13_11i1|nx64792z30 ;
wire \u_kirsch|r3_add13_11i1|nx64792z27 ;
wire \u_kirsch|r3_add13_11i1|nx64792z24 ;
wire \u_kirsch|r3_add13_11i1|nx41961z1 ;
wire \u_kirsch|r1_9n1s1f2_4_ ;
wire \u_kirsch|r1_4_ ;
wire \u_kirsch|r3_4_ ;
wire \u_kirsch|r3_add13_11i1|nx64792z21 ;
wire \u_kirsch|r3_add13_11i1|nx42958z1 ;
wire \u_kirsch|nx30960z3 ;
wire \u_kirsch|r1_9n1s1f2_5_ ;
wire \u_kirsch|r1_5_ ;
wire \u_kirsch|r3_5_ ;
wire \u_kirsch|r3_add13_11i1|nx64792z18 ;
wire \u_kirsch|r3_add13_11i1|nx43955z1 ;
wire \u_kirsch|r1_9n1s1f2_6_ ;
wire \u_kirsch|r1_6_ ;
wire \u_kirsch|r3_6_ ;
wire \u_kirsch|r3_add13_11i1|nx64792z15 ;
wire \u_kirsch|r3_add13_11i1|nx64792z12 ;
wire \u_kirsch|r3_add13_11i1|nx45949z1 ;
wire \u_kirsch|r3_8_ ;
wire \u_kirsch|r3_add13_11i1|nx64792z9 ;
wire \u_kirsch|r3_add13_11i1|nx46946z1 ;
wire \u_kirsch|r3_9_ ;
wire \u_kirsch|r3_add13_11i1|nx64792z7 ;
wire \u_kirsch|r3_add13_11i1|nx64792z5 ;
wire \u_kirsch|r3_add13_11i1|nx63795z1 ;
wire \u_kirsch|r3_11_ ;
wire \u_kirsch|r3_add13_11i1|nx62798z1 ;
wire \u_kirsch|r3_10_ ;
wire \u_kirsch|r3_add13_11i1|nx40964z1 ;
wire \u_kirsch|r3_3_ ;
wire \u_kirsch|r9_add12_17i1|nx63795z24 ;
wire \u_kirsch|r9_add12_17i1|nx63795z22 ;
wire \u_kirsch|r9_add12_17i1|nx63795z20 ;
wire \u_kirsch|r9_add12_17i1|nx63795z18 ;
wire \u_kirsch|r9_add12_17i1|nx63795z16 ;
wire \u_kirsch|r9_add12_17i1|nx63795z14 ;
wire \u_kirsch|r9_add12_17i1|nx63795z12 ;
wire \u_kirsch|r9_add12_17i1|nx63795z10 ;
wire \u_kirsch|r9_add12_17i1|nx63795z8 ;
wire \u_kirsch|r9_add12_17i1|nx63795z6 ;
wire \u_kirsch|r9_add12_17i1|nx62798z1 ;
wire \u_kirsch|r9_11_ ;
wire \u_kirsch|r5_7_~feeder_combout ;
wire \u_kirsch|r5_7_ ;
wire \u_kirsch|r8_7_~feeder_combout ;
wire \u_kirsch|r8_7_ ;
wire \u_kirsch|r9_add12_17i1|nx45949z1 ;
wire \u_kirsch|r9_9_ ;
wire \u_kirsch|r8_5_~feeder_combout ;
wire \u_kirsch|r8_5_ ;
wire \u_kirsch|r9_add12_17i1|nx43955z1 ;
wire \u_kirsch|r9_7_ ;
wire \u_kirsch|r8_3_~feeder_combout ;
wire \u_kirsch|r8_3_ ;
wire \u_kirsch|r9_add12_17i1|nx41961z1 ;
wire \u_kirsch|r9_5_ ;
wire \u_kirsch|r5_1_~feeder_combout ;
wire \u_kirsch|r2_add9_10i26|nx38970z1 ;
wire \u_kirsch|r2_1_ ;
wire \u_kirsch|r5_1_ ;
wire \u_kirsch|r8_1_~feeder_combout ;
wire \u_kirsch|r8_1_ ;
wire \u_kirsch|r9_add12_17i1|nx39967z1 ;
wire \u_kirsch|r9_3_ ;
wire \u_kirsch|r9_add12_17i1|nx37973z1 ;
wire \u_kirsch|r9_1_ ;
wire \u_kirsch|sub_sub13_1|nx63795z11 ;
wire \u_kirsch|sub_sub13_1|nx63795z10 ;
wire \u_kirsch|sub_sub13_1|nx63795z9 ;
wire \u_kirsch|sub_sub13_1|nx63795z8 ;
wire \u_kirsch|sub_sub13_1|nx63795z7 ;
wire \u_kirsch|sub_sub13_1|nx63795z6 ;
wire \u_kirsch|sub_sub13_1|nx63795z5 ;
wire \u_kirsch|sub_sub13_1|nx63795z4 ;
wire \u_kirsch|sub_sub13_1|nx63795z3 ;
wire \u_kirsch|sub_sub13_1|nx63795z2 ;
wire \u_kirsch|sub_sub13_1|d_10_ ;
wire \u_kirsch|v_7_ ;
wire \u_kirsch|sub_sub13_1|d_6_ ;
wire \u_kirsch|r8_9_~feeder_combout ;
wire \u_kirsch|r8_9_ ;
wire \u_kirsch|sub_sub13_1|nx63795z1 ;
wire \u_kirsch|sub_sub13_1|nx23445z2 ;
wire \u_kirsch|sub_sub13_1|nx23445z1 ;
wire \u_kirsch|sub_sub13_1|d_11_ ;
wire \u_kirsch|nx1448z2 ;
wire \u_kirsch|nx31323z1 ;
wire \u_kirsch|p_o_dir_0_ ;
wire \u_uw_uart|mdata_1_~feeder_combout ;
wire \u_kirsch|p_o_mode_1_~feeder_combout ;
wire \u_kirsch|p_o_mode_1_ ;
wire \u_uw_uart|modgen_counter_waitcount|nx51271z1 ;
wire \u_uw_uart|nx33354z2 ;
wire \u_uw_uart|nx33354z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z31 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z30 ;
wire \u_uw_uart|modgen_counter_waitcount|nx52268z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z29 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z28 ;
wire \u_uw_uart|modgen_counter_waitcount|nx53265z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z27 ;
wire \u_uw_uart|nx39480z4 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z26 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z24 ;
wire \u_uw_uart|modgen_counter_waitcount|nx55259z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z23 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z22 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z20 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z18 ;
wire \u_uw_uart|modgen_counter_waitcount|nx58250z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z17 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z16 ;
wire \u_uw_uart|modgen_counter_waitcount|nx59247z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z15 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z14 ;
wire \u_uw_uart|modgen_counter_waitcount|nx60244z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z13 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z12 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z10 ;
wire \u_uw_uart|modgen_counter_waitcount|nx18093z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z9 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z8 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z6 ;
wire \u_uw_uart|modgen_counter_waitcount|nx20087z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z5 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z4 ;
wire \u_uw_uart|modgen_counter_waitcount|nx21084z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z3 ;
wire \u_uw_uart|modgen_counter_waitcount|nx19090z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z7 ;
wire \u_uw_uart|nx39480z6 ;
wire \u_uw_uart|modgen_counter_waitcount|nx17096z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z11 ;
wire \u_uw_uart|nx39480z7 ;
wire \u_uw_uart|nx39480z5 ;
wire \u_kirsch|col_i_3_~feeder_combout ;
wire \u_kirsch|col_i_3_ ;
wire \u_kirsch|ix39583z59249|nx37973z1 ;
wire \u_kirsch|col_flop_0_ ;
wire \u_kirsch|col_i_0_~feeder_combout ;
wire \u_kirsch|col_i_0_ ;
wire \u_kirsch|ix39583z59249|nx44952z15 ;
wire \u_kirsch|ix39583z59249|nx44952z13 ;
wire \u_kirsch|ix39583z59249|nx44952z11 ;
wire \u_kirsch|ix39583z59249|nx40964z1 ;
wire \u_kirsch|col_flop_3_ ;
wire \u_kirsch|ix39583z59249|nx39967z1 ;
wire \u_kirsch|col_flop_2_ ;
wire \u_kirsch|nx60567z5 ;
wire \u_kirsch|modgen_counter_row_count|nx58250z8 ;
wire \u_kirsch|modgen_counter_row_count|nx52268z1 ;
wire \u_kirsch|ix39583z59249|nx44952z9 ;
wire \u_kirsch|ix39583z59249|nx41961z1 ;
wire \u_kirsch|col_flop_4_ ;
wire \u_kirsch|col_i_4_~feeder_combout ;
wire \u_kirsch|col_i_4_ ;
wire \u_kirsch|ix39583z59249|nx44952z7 ;
wire \u_kirsch|ix39583z59249|nx42958z1 ;
wire \u_kirsch|col_flop_5_ ;
wire \u_kirsch|col_i_5_~feeder_combout ;
wire \u_kirsch|col_i_5_ ;
wire \u_kirsch|ix39583z59249|nx44952z5 ;
wire \u_kirsch|ix39583z59249|nx43955z1 ;
wire \u_kirsch|col_flop_6_ ;
wire \u_kirsch|col_i_6_ ;
wire \u_kirsch|nx64436z2 ;
wire \u_kirsch|ix39583z59249|nx44952z3 ;
wire \u_kirsch|ix39583z59249|nx44952z1 ;
wire \u_kirsch|col_flop_7_ ;
wire \u_kirsch|col_i_7_ ;
wire \u_kirsch|col_i_2_~feeder_combout ;
wire \u_kirsch|col_i_2_ ;
wire \u_kirsch|ix39583z59249|nx38970z1 ;
wire \u_kirsch|col_flop_1_ ;
wire \u_kirsch|col_i_1_ ;
wire \u_kirsch|nx64436z3 ;
wire \u_kirsch|nx64436z1 ;
wire \u_kirsch|modgen_counter_row_count|q_1_ ;
wire \u_kirsch|modgen_counter_row_count|nx58250z7 ;
wire \u_kirsch|modgen_counter_row_count|nx58250z6 ;
wire \u_kirsch|modgen_counter_row_count|nx58250z5 ;
wire \u_kirsch|modgen_counter_row_count|nx55259z1 ;
wire \u_kirsch|modgen_counter_row_count|q_4_ ;
wire \u_kirsch|modgen_counter_row_count|nx58250z4 ;
wire \u_kirsch|modgen_counter_row_count|nx58250z3 ;
wire \u_kirsch|modgen_counter_row_count|nx57253z1 ;
wire \u_kirsch|modgen_counter_row_count|q_6_ ;
wire \u_kirsch|modgen_counter_row_count|nx58250z2 ;
wire \u_kirsch|modgen_counter_row_count|nx58250z1 ;
wire \u_kirsch|modgen_counter_row_count|q_7_ ;
wire \u_kirsch|modgen_counter_row_count|nx56256z1 ;
wire \u_kirsch|modgen_counter_row_count|q_5_ ;
wire \u_kirsch|modgen_counter_row_count|nx51271z1 ;
wire \u_kirsch|modgen_counter_row_count|q_0_ ;
wire \u_kirsch|nx60567z4 ;
wire \u_kirsch|modgen_counter_row_count|nx53265z1 ;
wire \u_kirsch|modgen_counter_row_count|q_2_ ;
wire \u_kirsch|nx60567z2 ;
wire \u_kirsch|nx60567z1 ;
wire \u_kirsch|p_o_valid ;
wire \u_uw_uart|nx39480z2 ;
wire \u_uw_uart|nx39480z1 ;
wire \u_uw_uart|ack ;
wire \u_uw_uart|nx38742z1 ;
wire \u_kirsch|nx43221z2 ;
wire \u_kirsch|nx43221z1 ;
wire \u_kirsch|NOT_rtlc19_PS6_n24 ;
wire \u_kirsch|nx64269z1 ;
wire \u_uw_uart|i_uarts|nx15376z1 ;
wire \u_uw_uart|i_uarts|RxErr ;
wire \u_uw_uart|nx40736z4 ;
wire \u_uw_uart|nx40736z3 ;
wire \u_uw_uart|mdata_1_ ;
wire \u_uw_uart|sdout_1_~feeder_combout ;
wire \u_uw_uart|state ;
wire \u_uw_uart|nx46385z2 ;
wire \u_uw_uart|nx46385z1 ;
wire \u_uw_uart|dsend ;
wire \u_uw_uart|nx38868z1 ;
wire \u_uw_uart|sdout_1_ ;
wire \u_uw_uart|mdata_2_~feeder_combout ;
wire \u_uw_uart|mdata_2_ ;
wire \u_uw_uart|sdout_2_ ;
wire \u_uw_uart|mdata_7n5ss1_4_ ;
wire \u_uw_uart|mdata_5_ ;
wire \u_uw_uart|sdout_5_~feeder_combout ;
wire \u_uw_uart|sdout_5_ ;
wire \u_uw_uart|mdata_7n5ss1_6_ ;
wire \u_uw_uart|mdata_7_ ;
wire \u_uw_uart|sdout_7_ ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_ ;
wire \u_uw_uart|nx18433z1 ;
wire \u_uw_uart|ld_sdout ;
wire \u_uw_uart|i_uarts|nx35603z1 ;
wire \u_uw_uart|i_uarts|nx34606z1 ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_7_ ;
wire \u_uw_uart|i_uarts|nx33609z1 ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_6_ ;
wire \u_uw_uart|i_uarts|nx32612z1 ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_5_ ;
wire \u_uw_uart|i_uarts|nx31615z1 ;
wire \u_uw_uart|mdata_3_~feeder_combout ;
wire \u_uw_uart|mdata_3_ ;
wire \u_uw_uart|sdout_3_ ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_4_ ;
wire \u_uw_uart|i_uarts|nx30618z1 ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_3_ ;
wire \u_uw_uart|i_uarts|nx29621z1 ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_2_ ;
wire \u_uw_uart|i_uarts|nx28624z1 ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_1_ ;
wire \u_uw_uart|i_uarts|nx61140z1 ;
wire \u_uw_uart|i_uarts|Tx_Reg_14n6ss1_0_ ;
wire \u_uw_uart|i_uarts|nx61812z1 ;
wire nx21351z2;
wire \u_kirsch|p_o_row_2_ ;
wire nx57590z1;
wire nx41851z1;
wire nx58587z1;
wire nx42848z1;
wire nx59584z1;
wire nx43845z1;
wire nx60581z1;
wire nx44842z1;
wire nx61578z1;
wire nx45839z1;
wire nx62575z1;
wire nx46836z1;
wire nx63572z1;
wire nx47833z1;
wire \u_kirsch|nx12508z1 ;
wire \u_kirsch|modgen_counter_row_count|nx54262z1 ;
wire \u_kirsch|modgen_counter_row_count|q_3_ ;
wire \u_kirsch|nx60567z3 ;
wire \u_kirsch|p_o_row_6_ ;
wire \u_kirsch|p_o_row_5_ ;
wire \u_kirsch|nx13505z1 ;
wire \u_kirsch|p_o_row_7_ ;
wire nx30z1;
wire nx49827z1;
wire \u_kirsch|p_o_row_4_ ;
wire nx1027z1;
wire nx50824z1;
wire nx25683z1;
wire nx62540z1;
wire nx26680z1;
wire nx63537z1;
wire nx27677z1;
wire nx64534z1;
wire nx28674z1;
wire nx65531z1;
wire nx29671z1;
wire nx992z1;


// atom is at LCFF_X53_Y12_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_TopTx (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx32400z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TopTx ));

// atom is at LCCOMB_X11_Y16_N12
cycloneii_lcell_comb \u_kirsch|ix9517z52923 (
// Equation(s):
// \u_kirsch|p_o_row_3_  = \u_kirsch|modgen_counter_row_count|q_3_  $ (!\u_kirsch|modgen_counter_row_count|q_2_  & !\u_kirsch|modgen_counter_row_count|q_1_ )

	.dataa(\u_kirsch|modgen_counter_row_count|q_2_ ),
	.datab(vcc),
	.datac(\u_kirsch|modgen_counter_row_count|q_1_ ),
	.datad(\u_kirsch|modgen_counter_row_count|q_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|p_o_row_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix9517z52923 .lut_mask = 16'hFA05;
defparam \u_kirsch|ix9517z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y13_N1
cycloneii_lcell_ff \u_uw_uart|reg_sdout_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_0_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx38868z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_0_ ));

// atom is at LCCOMB_X53_Y12_N20
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix4608z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx4608z2  = \u_uw_uart|i_uarts|TxFSM_1_  & !\u_uw_uart|i_uarts|TopTx  # !\u_uw_uart|i_uarts|TxFSM_1_  & (\u_uw_uart|i_uarts|TxFSM_0_  & !\u_uw_uart|i_uarts|TopTx  # !\u_uw_uart|i_uarts|TxFSM_0_  & (!\u_uw_uart|ld_sdout ))

	.dataa(\u_uw_uart|i_uarts|TopTx ),
	.datab(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datac(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datad(\u_uw_uart|ld_sdout ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx4608z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix4608z52924 .lut_mask = 16'h5457;
defparam \u_uw_uart|i_uarts|ix4608z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y12_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx51917z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxBitCnt_3_ ));

// atom is at LCFF_X51_Y12_N5
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx51271z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23 ));

// atom is at LCFF_X53_Y12_N11
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_TxDivisor_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|TxDivisor_5_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDivisor_5_ ));

// atom is at LCFF_X51_Y12_N27
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_11_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1 ));

// atom is at LCFF_X51_Y12_N25
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx17096z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3 ));

// atom is at LCFF_X51_Y12_N23
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx60244z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5 ));

// atom is at LCCOMB_X53_Y12_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z3  = \u_uw_uart|i_uarts|TxDivisor_5_  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3 

	.dataa(\u_uw_uart|i_uarts|TxDivisor_5_ ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52925 .lut_mask = 16'h0002;
defparam \u_uw_uart|i_uarts|ix32400z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X51_Y12_N21
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx59247z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7 ));

// atom is at LCFF_X51_Y12_N19
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx58250z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9 ));

// atom is at LCFF_X51_Y12_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx57253z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11 ));

// atom is at LCFF_X51_Y12_N15
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx56256z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13 ));

// atom is at LCCOMB_X51_Y12_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z4  = !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11  & \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13  & \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7  & \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9 

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52926 .lut_mask = 16'h4000;
defparam \u_uw_uart|i_uarts|ix32400z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X51_Y12_N13
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx55259z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15 ));

// atom is at LCFF_X51_Y12_N11
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx54262z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17 ));

// atom is at LCFF_X51_Y12_N9
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx53265z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19 ));

// atom is at LCFF_X51_Y12_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxDiv|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx52268z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21 ));

// atom is at LCCOMB_X51_Y12_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52927 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z5  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17 

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z5 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52927 .lut_mask = 16'h0002;
defparam \u_uw_uart|i_uarts|ix32400z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y12_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z2  = \u_uw_uart|i_uarts|nx32400z4  & \u_uw_uart|i_uarts|nx32400z5  & \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23  & \u_uw_uart|i_uarts|nx32400z3 

	.dataa(\u_uw_uart|i_uarts|nx32400z4 ),
	.datab(\u_uw_uart|i_uarts|nx32400z5 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23 ),
	.datad(\u_uw_uart|i_uarts|nx32400z3 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52924 .lut_mask = 16'h8000;
defparam \u_uw_uart|i_uarts|ix32400z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y12_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52928 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z6  = !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9 

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z6 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52928 .lut_mask = 16'h0001;
defparam \u_uw_uart|i_uarts|ix32400z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y12_N30
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52929 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z7  = !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17 

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z7 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52929 .lut_mask = 16'h0001;
defparam \u_uw_uart|i_uarts|ix32400z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y12_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52931 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z9  = !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z9 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52931 .lut_mask = 16'h000F;
defparam \u_uw_uart|i_uarts|ix32400z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y12_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52930 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z8  = !\u_uw_uart|i_uarts|TxDivisor_5_  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23  & \u_uw_uart|i_uarts|nx32400z9  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1 

	.dataa(\u_uw_uart|i_uarts|TxDivisor_5_ ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23 ),
	.datac(\u_uw_uart|i_uarts|nx32400z9 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z8 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52930 .lut_mask = 16'h0010;
defparam \u_uw_uart|i_uarts|ix32400z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y12_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z1  = \u_uw_uart|i_uarts|nx32400z2  # \u_uw_uart|i_uarts|nx32400z6  & \u_uw_uart|i_uarts|nx32400z8  & \u_uw_uart|i_uarts|nx32400z7 

	.dataa(\u_uw_uart|i_uarts|nx32400z6 ),
	.datab(\u_uw_uart|i_uarts|nx32400z8 ),
	.datac(\u_uw_uart|i_uarts|nx32400z7 ),
	.datad(\u_uw_uart|i_uarts|nx32400z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52923 .lut_mask = 16'hFF80;
defparam \u_uw_uart|i_uarts|ix32400z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y13_N1
cycloneii_lcell_ff \u_uw_uart|reg_mdata_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|mdata_0_~feeder_combout ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx38742z1 ),
	.sload(!\u_kirsch|p_o_valid ),
	.ena(\u_uw_uart|nx40736z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_0_ ));

// atom is at LCCOMB_X54_Y12_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix51917z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx51917z3  = \u_uw_uart|i_uarts|TxBitCnt_2_  # \u_uw_uart|i_uarts|TxBitCnt_1_  # \u_uw_uart|i_uarts|TxBitCnt_0_ 

	.dataa(\u_uw_uart|i_uarts|TxBitCnt_2_ ),
	.datab(\u_uw_uart|i_uarts|TxBitCnt_1_ ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_0_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx51917z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix51917z52925 .lut_mask = 16'hFEFE;
defparam \u_uw_uart|i_uarts|ix51917z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y12_N20
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix51917z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|nx51917z4  = \u_uw_uart|i_uarts|nx50920z2  # !\u_uw_uart|i_uarts|nx50920z3  & !\u_uw_uart|i_uarts|TxBitCnt_3_  & !\u_uw_uart|i_uarts|TxBitCnt_2_ 

	.dataa(\u_uw_uart|i_uarts|nx50920z3 ),
	.datab(\u_uw_uart|i_uarts|TxBitCnt_3_ ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_2_ ),
	.datad(\u_uw_uart|i_uarts|nx50920z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx51917z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix51917z52926 .lut_mask = 16'hFF01;
defparam \u_uw_uart|i_uarts|ix51917z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y12_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix51917z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx51917z1  = \u_uw_uart|i_uarts|nx51917z2  & (\u_uw_uart|i_uarts|nx51917z4  # \u_uw_uart|i_uarts|nx51917z3  & \u_uw_uart|i_uarts|TxBitCnt_3_ ) # !\u_uw_uart|i_uarts|nx51917z2  & (\u_uw_uart|i_uarts|TxBitCnt_3_ )

	.dataa(\u_uw_uart|i_uarts|nx51917z4 ),
	.datab(\u_uw_uart|i_uarts|nx51917z3 ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_3_ ),
	.datad(\u_uw_uart|i_uarts|nx51917z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx51917z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix51917z52923 .lut_mask = 16'hEAF0;
defparam \u_uw_uart|i_uarts|ix51917z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y12_N12
cycloneii_lcell_comb \u_uw_uart|ix40736z52924 (
// Equation(s):
// \u_uw_uart|nx40736z2  = \u_uw_uart|o_pixavail  # \u_uw_uart|ack 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|o_pixavail ),
	.datad(\u_uw_uart|ack ),
	.cin(gnd),
	.combout(\u_uw_uart|nx40736z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix40736z52924 .lut_mask = 16'hFFF0;
defparam \u_uw_uart|ix40736z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y11_N13
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx57253z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z19 ));

// atom is at LCFF_X56_Y11_N11
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx56256z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z21 ));

// atom is at LCCOMB_X55_Y11_N0
cycloneii_lcell_comb \u_uw_uart|ix39480z52925 (
// Equation(s):
// \u_uw_uart|nx39480z3  = !\u_uw_uart|modgen_counter_waitcount|nx22081z17  & \u_uw_uart|modgen_counter_waitcount|nx22081z21  & \u_uw_uart|modgen_counter_waitcount|nx22081z19  & !\u_uw_uart|modgen_counter_waitcount|nx22081z23 

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z17 ),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z21 ),
	.datac(\u_uw_uart|modgen_counter_waitcount|nx22081z19 ),
	.datad(\u_uw_uart|modgen_counter_waitcount|nx22081z23 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52925 .lut_mask = 16'h0040;
defparam \u_uw_uart|ix39480z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y11_N7
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx54262z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z25 ));

// atom is at LCFF_X56_Y11_N31
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_15_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx22081z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx64508z1 ));

// atom is at LCCOMB_X51_Y12_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52935 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx51271z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23  $ VCC
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22  = CARRY(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z23 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx51271z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52935 .lut_mask = 16'h33CC;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52935 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X51_Y12_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52934 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx52268z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22  # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21  & 
// (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22  # GND)
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20  = CARRY(!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22  # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21 )

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z21 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z22 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx52268z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52934 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X51_Y12_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52933 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx53265z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19  & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20  $ GND) # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19  & 
// !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20  & VCC
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18  = CARRY(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z19 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z20 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx53265z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52933 .lut_mask = 16'hC30C;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X51_Y12_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52932 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx54262z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18  # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17  & 
// (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18  # GND)
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16  = CARRY(!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18  # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17 )

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z17 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z18 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx54262z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52932 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X51_Y12_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52931 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx55259z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15  & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16  $ GND) # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15  & 
// !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16  & VCC
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14  = CARRY(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16 )

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z15 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z16 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx55259z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52931 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X51_Y12_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52930 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx56256z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14  # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13  & 
// (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14  # GND)
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12  = CARRY(!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14  # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z13 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z14 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx56256z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52930 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X51_Y12_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52929 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx57253z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11  & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12  $ GND) # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11  & 
// !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12  & VCC
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10  = CARRY(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12 )

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z11 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z12 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx57253z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52929 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X51_Y12_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52928 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx58250z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10  # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9  & 
// (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10  # GND)
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8  = CARRY(!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10  # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z9 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z10 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx58250z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52928 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X51_Y12_N20
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52927 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx59247z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7  & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8  $ GND) # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7  & 
// !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8  & VCC
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6  = CARRY(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8 )

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z7 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z8 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx59247z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52927 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X51_Y12_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx60244z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6  # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5  & 
// (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6  # GND)
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4  = CARRY(!\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6  # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z5 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z6 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx60244z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52926 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X51_Y12_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx17096z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3  & (\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4  $ GND) # !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3  & 
// !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4  & VCC
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2  = CARRY(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3  & !\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4 )

	.dataa(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z3 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z4 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx17096z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52925 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X51_Y12_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z1  = \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2  $ \u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx2960z1 ),
	.cin(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z2 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_TxDiv|nx18093z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52923 .lut_mask = 16'h0FF0;
defparam \u_uw_uart|i_uarts|modgen_counter_TxDiv|ix18093z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X61_Y13_N27
cycloneii_lcell_ff \u_kirsch|reg_o_edge (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx1448z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|v_7_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|p_o_edge ));

// atom is at LCCOMB_X16_Y16_N6
cycloneii_lcell_comb \u_kirsch|ix60567z52928 (
// Equation(s):
// \u_kirsch|nx60567z6  = \u_kirsch|col_flop_5_  # \u_kirsch|col_flop_6_  # \u_kirsch|col_flop_7_ 

	.dataa(vcc),
	.datab(\u_kirsch|col_flop_5_ ),
	.datac(\u_kirsch|col_flop_6_ ),
	.datad(\u_kirsch|col_flop_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx60567z6 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix60567z52928 .lut_mask = 16'hFFFC;
defparam \u_kirsch|ix60567z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y11_N6
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52936 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx54262z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z25  & !\u_uw_uart|modgen_counter_waitcount|nx22081z26  # !\u_uw_uart|modgen_counter_waitcount|nx22081z25  & (\u_uw_uart|modgen_counter_waitcount|nx22081z26  # 
// GND)
// \u_uw_uart|modgen_counter_waitcount|nx22081z24  = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z26  # !\u_uw_uart|modgen_counter_waitcount|nx22081z25 )

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z25 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z26 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx54262z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z24 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52936 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y11_N10
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52934 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx56256z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z21  & !\u_uw_uart|modgen_counter_waitcount|nx22081z22  # !\u_uw_uart|modgen_counter_waitcount|nx22081z21  & (\u_uw_uart|modgen_counter_waitcount|nx22081z22  # 
// GND)
// \u_uw_uart|modgen_counter_waitcount|nx22081z20  = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z22  # !\u_uw_uart|modgen_counter_waitcount|nx22081z21 )

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z21 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z22 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx56256z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z20 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52934 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y11_N12
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52933 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx57253z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z19  & (\u_uw_uart|modgen_counter_waitcount|nx22081z20  $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z19  & !\u_uw_uart|modgen_counter_waitcount|nx22081z20 
//  & VCC
// \u_uw_uart|modgen_counter_waitcount|nx22081z18  = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z19  & !\u_uw_uart|modgen_counter_waitcount|nx22081z20 )

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z19 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z20 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx57253z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z18 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52933 .lut_mask = 16'hA50A;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y11_N28
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52925 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx21084z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z3  & (\u_uw_uart|modgen_counter_waitcount|nx22081z4  $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z3  & !\u_uw_uart|modgen_counter_waitcount|nx22081z4  & 
// VCC
// \u_uw_uart|modgen_counter_waitcount|nx22081z2  = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z3  & !\u_uw_uart|modgen_counter_waitcount|nx22081z4 )

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z3 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z4 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx21084z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z2 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52925 .lut_mask = 16'hC30C;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y11_N30
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52923 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx22081z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z2  $ \u_uw_uart|modgen_counter_waitcount|nx64508z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|modgen_counter_waitcount|nx64508z1 ),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z2 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx22081z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52923 .lut_mask = 16'h0FF0;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X53_Y13_N13
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx56256z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11 ));

// atom is at LCFF_X53_Y13_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx53265z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17 ));

// atom is at LCCOMB_X53_Y13_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52930 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z9  = !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11  & \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9  & \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7  & \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13 

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z9 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52930 .lut_mask = 16'h4000;
defparam \u_uw_uart|i_uarts|ix34394z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y13_N15
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx14544z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxFSM_2_ ));

// atom is at LCFF_X62_Y14_N25
cycloneii_lcell_ff \u_kirsch|reg_r8_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r8_6_~feeder_combout ),
	.sdata(\u_kirsch|r4_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix15883z6955|nx23445z1 ),
	.ena(\u_kirsch|v_6_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r8_6_ ));

// atom is at LCFF_X63_Y11_N15
cycloneii_lcell_ff \u_kirsch|reg_r9_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r9_add12_17i1|nx44952z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r9_8_ ));

// atom is at LCFF_X62_Y14_N29
cycloneii_lcell_ff \u_kirsch|reg_r8_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r8_4_~feeder_combout ),
	.sdata(\u_kirsch|r4_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix15883z6955|nx23445z1 ),
	.ena(\u_kirsch|v_6_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r8_4_ ));

// atom is at LCFF_X63_Y11_N11
cycloneii_lcell_ff \u_kirsch|reg_r9_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r9_add12_17i1|nx42958z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r9_6_ ));

// atom is at LCFF_X62_Y14_N17
cycloneii_lcell_ff \u_kirsch|reg_r8_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r8_2_~feeder_combout ),
	.sdata(\u_kirsch|r4_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix15883z6955|nx23445z1 ),
	.ena(\u_kirsch|v_6_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r8_2_ ));

// atom is at LCFF_X63_Y11_N7
cycloneii_lcell_ff \u_kirsch|reg_r9_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r9_add12_17i1|nx40964z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r9_4_ ));

// atom is at LCFF_X62_Y14_N21
cycloneii_lcell_ff \u_kirsch|reg_r8_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r8_0_~feeder_combout ),
	.sdata(\u_kirsch|r4_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix15883z6955|nx23445z1 ),
	.ena(\u_kirsch|v_6_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r8_0_ ));

// atom is at LCFF_X63_Y11_N3
cycloneii_lcell_ff \u_kirsch|reg_r9_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r9_add12_17i1|nx38970z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r9_2_ ));

// atom is at LCFF_X62_Y13_N3
cycloneii_lcell_ff \u_kirsch|reg_r9_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r3_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r9_0_ ));

// atom is at LCCOMB_X62_Y13_N16
cycloneii_lcell_comb \u_kirsch|sub_sub13_1|ix63795z52928 (
// Equation(s):
// \u_kirsch|sub_sub13_1|d_7_  = \u_kirsch|r9_8_  & (\u_kirsch|r8_5_  & !\u_kirsch|sub_sub13_1|nx63795z5  # !\u_kirsch|r8_5_  & (\u_kirsch|sub_sub13_1|nx63795z5  # GND)) # !\u_kirsch|r9_8_  & (\u_kirsch|r8_5_  & \u_kirsch|sub_sub13_1|nx63795z5  & VCC # 
// !\u_kirsch|r8_5_  & !\u_kirsch|sub_sub13_1|nx63795z5 )
// \u_kirsch|sub_sub13_1|nx63795z4  = CARRY(\u_kirsch|r9_8_  & (!\u_kirsch|sub_sub13_1|nx63795z5  # !\u_kirsch|r8_5_ ) # !\u_kirsch|r9_8_  & !\u_kirsch|r8_5_  & !\u_kirsch|sub_sub13_1|nx63795z5 )

	.dataa(\u_kirsch|r9_8_ ),
	.datab(\u_kirsch|r8_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|sub_sub13_1|nx63795z5 ),
	.combout(\u_kirsch|sub_sub13_1|d_7_ ),
	.cout(\u_kirsch|sub_sub13_1|nx63795z4 ));
// synopsys translate_off
defparam \u_kirsch|sub_sub13_1|ix63795z52928 .lut_mask = 16'h692B;
defparam \u_kirsch|sub_sub13_1|ix63795z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X62_Y13_N18
cycloneii_lcell_comb \u_kirsch|sub_sub13_1|ix63795z52927 (
// Equation(s):
// \u_kirsch|sub_sub13_1|d_8_  = (\u_kirsch|r8_6_  $ \u_kirsch|r9_9_  $ \u_kirsch|sub_sub13_1|nx63795z4 ) # GND
// \u_kirsch|sub_sub13_1|nx63795z3  = CARRY(\u_kirsch|r8_6_  & (!\u_kirsch|sub_sub13_1|nx63795z4  # !\u_kirsch|r9_9_ ) # !\u_kirsch|r8_6_  & !\u_kirsch|r9_9_  & !\u_kirsch|sub_sub13_1|nx63795z4 )

	.dataa(\u_kirsch|r8_6_ ),
	.datab(\u_kirsch|r9_9_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|sub_sub13_1|nx63795z4 ),
	.combout(\u_kirsch|sub_sub13_1|d_8_ ),
	.cout(\u_kirsch|sub_sub13_1|nx63795z3 ));
// synopsys translate_off
defparam \u_kirsch|sub_sub13_1|ix63795z52927 .lut_mask = 16'h962B;
defparam \u_kirsch|sub_sub13_1|ix63795z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X63_Y11_N19
cycloneii_lcell_ff \u_kirsch|reg_r9_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r9_add12_17i1|nx46946z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r9_10_ ));

// atom is at LCCOMB_X62_Y13_N20
cycloneii_lcell_comb \u_kirsch|sub_sub13_1|ix63795z52926 (
// Equation(s):
// \u_kirsch|sub_sub13_1|d_9_  = \u_kirsch|r9_10_  & (\u_kirsch|r8_7_  & !\u_kirsch|sub_sub13_1|nx63795z3  # !\u_kirsch|r8_7_  & (\u_kirsch|sub_sub13_1|nx63795z3  # GND)) # !\u_kirsch|r9_10_  & (\u_kirsch|r8_7_  & \u_kirsch|sub_sub13_1|nx63795z3  & VCC # 
// !\u_kirsch|r8_7_  & !\u_kirsch|sub_sub13_1|nx63795z3 )
// \u_kirsch|sub_sub13_1|nx63795z2  = CARRY(\u_kirsch|r9_10_  & (!\u_kirsch|sub_sub13_1|nx63795z3  # !\u_kirsch|r8_7_ ) # !\u_kirsch|r9_10_  & !\u_kirsch|r8_7_  & !\u_kirsch|sub_sub13_1|nx63795z3 )

	.dataa(\u_kirsch|r9_10_ ),
	.datab(\u_kirsch|r8_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|sub_sub13_1|nx63795z3 ),
	.combout(\u_kirsch|sub_sub13_1|d_9_ ),
	.cout(\u_kirsch|sub_sub13_1|nx63795z2 ));
// synopsys translate_off
defparam \u_kirsch|sub_sub13_1|ix63795z52926 .lut_mask = 16'h692B;
defparam \u_kirsch|sub_sub13_1|ix63795z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X62_Y14_N9
cycloneii_lcell_ff \u_kirsch|reg_r8_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r8_8_~feeder_combout ),
	.sdata(\u_kirsch|r4_8_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix15883z6955|nx23445z1 ),
	.ena(\u_kirsch|v_6_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r8_8_ ));

// atom is at LCFF_X63_Y11_N23
cycloneii_lcell_ff \u_kirsch|reg_r9_12_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r9_add12_17i1|nx63795z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r9_12_ ));

// atom is at LCCOMB_X61_Y13_N26
cycloneii_lcell_comb \u_kirsch|ix1448z52923 (
// Equation(s):
// \u_kirsch|nx1448z1  = \u_kirsch|sub_sub13_1|d_10_  # \u_kirsch|sub_sub13_1|d_9_  # \u_kirsch|nx1448z2  # \u_kirsch|sub_sub13_1|d_8_ 

	.dataa(\u_kirsch|sub_sub13_1|d_10_ ),
	.datab(\u_kirsch|sub_sub13_1|d_9_ ),
	.datac(\u_kirsch|nx1448z2 ),
	.datad(\u_kirsch|sub_sub13_1|d_8_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx1448z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix1448z52923 .lut_mask = 16'hFFFE;
defparam \u_kirsch|ix1448z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y13_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52932 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx53265z1  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17  & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18  $ GND) # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17  & 
// !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18  & VCC
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16  = CARRY(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18 )

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx53265z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52932 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y13_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52929 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx56256z1  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12  # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11  & 
// (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12  # GND)
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10  = CARRY(!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12  # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11 )

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx56256z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52929 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X54_Y13_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix14544z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx14544z1  = \u_uw_uart|i_uarts|RxFSM_3_  # \u_uw_uart|i_uarts|not_Rx_r  & \u_uw_uart|i_uarts|RxFSM_1_ 

	.dataa(\u_uw_uart|i_uarts|not_Rx_r ),
	.datab(\u_uw_uart|i_uarts|RxFSM_1_ ),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|RxFSM_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx14544z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix14544z52923 .lut_mask = 16'hFF88;
defparam \u_uw_uart|i_uarts|ix14544z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X62_Y11_N21
cycloneii_lcell_ff \u_kirsch|reg_r3_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r3_add13_11i1|nx44952z1 ),
	.sdata(\u_kirsch|r1_7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|v_2_ ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r3_7_ ));

// atom is at LCFF_X62_Y11_N11
cycloneii_lcell_ff \u_kirsch|reg_r3_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r3_add13_11i1|nx39967z1 ),
	.sdata(\u_kirsch|r1_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|v_2_ ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r3_2_ ));

// atom is at LCCOMB_X63_Y11_N2
cycloneii_lcell_comb \u_kirsch|r9_add12_17i1|ix63795z52934 (
// Equation(s):
// \u_kirsch|r9_add12_17i1|nx38970z1  = \u_kirsch|r3_2_  & (\u_kirsch|r3_1_  & \u_kirsch|r9_add12_17i1|nx63795z24  & VCC # !\u_kirsch|r3_1_  & !\u_kirsch|r9_add12_17i1|nx63795z24 ) # !\u_kirsch|r3_2_  & (\u_kirsch|r3_1_  & !\u_kirsch|r9_add12_17i1|nx63795z24 
//  # !\u_kirsch|r3_1_  & (\u_kirsch|r9_add12_17i1|nx63795z24  # GND))
// \u_kirsch|r9_add12_17i1|nx63795z22  = CARRY(\u_kirsch|r3_2_  & !\u_kirsch|r3_1_  & !\u_kirsch|r9_add12_17i1|nx63795z24  # !\u_kirsch|r3_2_  & (!\u_kirsch|r9_add12_17i1|nx63795z24  # !\u_kirsch|r3_1_ ))

	.dataa(\u_kirsch|r3_2_ ),
	.datab(\u_kirsch|r3_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r9_add12_17i1|nx63795z24 ),
	.combout(\u_kirsch|r9_add12_17i1|nx38970z1 ),
	.cout(\u_kirsch|r9_add12_17i1|nx63795z22 ));
// synopsys translate_off
defparam \u_kirsch|r9_add12_17i1|ix63795z52934 .lut_mask = 16'h9617;
defparam \u_kirsch|r9_add12_17i1|ix63795z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X63_Y11_N6
cycloneii_lcell_comb \u_kirsch|r9_add12_17i1|ix63795z52932 (
// Equation(s):
// \u_kirsch|r9_add12_17i1|nx40964z1  = \u_kirsch|r3_4_  & (\u_kirsch|r3_3_  & \u_kirsch|r9_add12_17i1|nx63795z20  & VCC # !\u_kirsch|r3_3_  & !\u_kirsch|r9_add12_17i1|nx63795z20 ) # !\u_kirsch|r3_4_  & (\u_kirsch|r3_3_  & !\u_kirsch|r9_add12_17i1|nx63795z20 
//  # !\u_kirsch|r3_3_  & (\u_kirsch|r9_add12_17i1|nx63795z20  # GND))
// \u_kirsch|r9_add12_17i1|nx63795z18  = CARRY(\u_kirsch|r3_4_  & !\u_kirsch|r3_3_  & !\u_kirsch|r9_add12_17i1|nx63795z20  # !\u_kirsch|r3_4_  & (!\u_kirsch|r9_add12_17i1|nx63795z20  # !\u_kirsch|r3_3_ ))

	.dataa(\u_kirsch|r3_4_ ),
	.datab(\u_kirsch|r3_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r9_add12_17i1|nx63795z20 ),
	.combout(\u_kirsch|r9_add12_17i1|nx40964z1 ),
	.cout(\u_kirsch|r9_add12_17i1|nx63795z18 ));
// synopsys translate_off
defparam \u_kirsch|r9_add12_17i1|ix63795z52932 .lut_mask = 16'h9617;
defparam \u_kirsch|r9_add12_17i1|ix63795z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X63_Y11_N10
cycloneii_lcell_comb \u_kirsch|r9_add12_17i1|ix63795z52930 (
// Equation(s):
// \u_kirsch|r9_add12_17i1|nx42958z1  = \u_kirsch|r3_6_  & (\u_kirsch|r3_5_  & \u_kirsch|r9_add12_17i1|nx63795z16  & VCC # !\u_kirsch|r3_5_  & !\u_kirsch|r9_add12_17i1|nx63795z16 ) # !\u_kirsch|r3_6_  & (\u_kirsch|r3_5_  & !\u_kirsch|r9_add12_17i1|nx63795z16 
//  # !\u_kirsch|r3_5_  & (\u_kirsch|r9_add12_17i1|nx63795z16  # GND))
// \u_kirsch|r9_add12_17i1|nx63795z14  = CARRY(\u_kirsch|r3_6_  & !\u_kirsch|r3_5_  & !\u_kirsch|r9_add12_17i1|nx63795z16  # !\u_kirsch|r3_6_  & (!\u_kirsch|r9_add12_17i1|nx63795z16  # !\u_kirsch|r3_5_ ))

	.dataa(\u_kirsch|r3_6_ ),
	.datab(\u_kirsch|r3_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r9_add12_17i1|nx63795z16 ),
	.combout(\u_kirsch|r9_add12_17i1|nx42958z1 ),
	.cout(\u_kirsch|r9_add12_17i1|nx63795z14 ));
// synopsys translate_off
defparam \u_kirsch|r9_add12_17i1|ix63795z52930 .lut_mask = 16'h9617;
defparam \u_kirsch|r9_add12_17i1|ix63795z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X63_Y11_N14
cycloneii_lcell_comb \u_kirsch|r9_add12_17i1|ix63795z52928 (
// Equation(s):
// \u_kirsch|r9_add12_17i1|nx44952z1  = \u_kirsch|r3_7_  & (\u_kirsch|r3_8_  & \u_kirsch|r9_add12_17i1|nx63795z12  & VCC # !\u_kirsch|r3_8_  & !\u_kirsch|r9_add12_17i1|nx63795z12 ) # !\u_kirsch|r3_7_  & (\u_kirsch|r3_8_  & !\u_kirsch|r9_add12_17i1|nx63795z12 
//  # !\u_kirsch|r3_8_  & (\u_kirsch|r9_add12_17i1|nx63795z12  # GND))
// \u_kirsch|r9_add12_17i1|nx63795z10  = CARRY(\u_kirsch|r3_7_  & !\u_kirsch|r3_8_  & !\u_kirsch|r9_add12_17i1|nx63795z12  # !\u_kirsch|r3_7_  & (!\u_kirsch|r9_add12_17i1|nx63795z12  # !\u_kirsch|r3_8_ ))

	.dataa(\u_kirsch|r3_7_ ),
	.datab(\u_kirsch|r3_8_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r9_add12_17i1|nx63795z12 ),
	.combout(\u_kirsch|r9_add12_17i1|nx44952z1 ),
	.cout(\u_kirsch|r9_add12_17i1|nx63795z10 ));
// synopsys translate_off
defparam \u_kirsch|r9_add12_17i1|ix63795z52928 .lut_mask = 16'h9617;
defparam \u_kirsch|r9_add12_17i1|ix63795z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X60_Y14_N1
cycloneii_lcell_ff \u_kirsch|reg_r5_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r5_8_~feeder_combout ),
	.sdata(\u_kirsch|r2_8_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix9374z6956|nx23445z1 ),
	.ena(\u_kirsch|v_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r5_8_ ));

// atom is at LCCOMB_X63_Y11_N18
cycloneii_lcell_comb \u_kirsch|r9_add12_17i1|ix63795z52926 (
// Equation(s):
// \u_kirsch|r9_add12_17i1|nx46946z1  = \u_kirsch|r3_9_  & (\u_kirsch|r3_10_  & \u_kirsch|r9_add12_17i1|nx63795z8  & VCC # !\u_kirsch|r3_10_  & !\u_kirsch|r9_add12_17i1|nx63795z8 ) # !\u_kirsch|r3_9_  & (\u_kirsch|r3_10_  & !\u_kirsch|r9_add12_17i1|nx63795z8 
//  # !\u_kirsch|r3_10_  & (\u_kirsch|r9_add12_17i1|nx63795z8  # GND))
// \u_kirsch|r9_add12_17i1|nx63795z6  = CARRY(\u_kirsch|r3_9_  & !\u_kirsch|r3_10_  & !\u_kirsch|r9_add12_17i1|nx63795z8  # !\u_kirsch|r3_9_  & (!\u_kirsch|r9_add12_17i1|nx63795z8  # !\u_kirsch|r3_10_ ))

	.dataa(\u_kirsch|r3_9_ ),
	.datab(\u_kirsch|r3_10_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r9_add12_17i1|nx63795z8 ),
	.combout(\u_kirsch|r9_add12_17i1|nx46946z1 ),
	.cout(\u_kirsch|r9_add12_17i1|nx63795z6 ));
// synopsys translate_off
defparam \u_kirsch|r9_add12_17i1|ix63795z52926 .lut_mask = 16'h9617;
defparam \u_kirsch|r9_add12_17i1|ix63795z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X63_Y11_N20
cycloneii_lcell_comb \u_kirsch|r9_add12_17i1|ix63795z52925 (
// Equation(s):
// \u_kirsch|r9_add12_17i1|nx62798z1  = (\u_kirsch|r3_10_  $ \u_kirsch|r3_11_  $ !\u_kirsch|r9_add12_17i1|nx63795z6 ) # GND
// \u_kirsch|r9_add12_17i1|nx63795z4  = CARRY(\u_kirsch|r3_10_  & (\u_kirsch|r3_11_  # !\u_kirsch|r9_add12_17i1|nx63795z6 ) # !\u_kirsch|r3_10_  & \u_kirsch|r3_11_  & !\u_kirsch|r9_add12_17i1|nx63795z6 )

	.dataa(\u_kirsch|r3_10_ ),
	.datab(\u_kirsch|r3_11_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r9_add12_17i1|nx63795z6 ),
	.combout(\u_kirsch|r9_add12_17i1|nx62798z1 ),
	.cout(\u_kirsch|r9_add12_17i1|nx63795z4 ));
// synopsys translate_off
defparam \u_kirsch|r9_add12_17i1|ix63795z52925 .lut_mask = 16'h698E;
defparam \u_kirsch|r9_add12_17i1|ix63795z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X63_Y11_N31
cycloneii_lcell_ff \u_kirsch|reg_r3_12_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r3_add13_11i1|nx64792z1 ),
	.aclr(gnd),
	.sclr(\u_kirsch|v_2_ ),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r3_12_ ));

// atom is at LCCOMB_X63_Y11_N22
cycloneii_lcell_comb \u_kirsch|r9_add12_17i1|ix63795z52923 (
// Equation(s):
// \u_kirsch|r9_add12_17i1|nx63795z1  = \u_kirsch|r3_12_  $ \u_kirsch|r9_add12_17i1|nx63795z4  $ \u_kirsch|r3_11_ 

	.dataa(vcc),
	.datab(\u_kirsch|r3_12_ ),
	.datac(vcc),
	.datad(\u_kirsch|r3_11_ ),
	.cin(\u_kirsch|r9_add12_17i1|nx63795z4 ),
	.combout(\u_kirsch|r9_add12_17i1|nx63795z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r9_add12_17i1|ix63795z52923 .lut_mask = 16'hC33C;
defparam \u_kirsch|r9_add12_17i1|ix63795z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y13_N2
cycloneii_lcell_comb \u_kirsch|ix31323z52924 (
// Equation(s):
// \u_kirsch|nx31323z2  = \u_kirsch|sub_sub13_1|d_9_  # \u_kirsch|sub_sub13_1|d_8_ 

	.dataa(vcc),
	.datab(\u_kirsch|sub_sub13_1|d_9_ ),
	.datac(vcc),
	.datad(\u_kirsch|sub_sub13_1|d_8_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx31323z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix31323z52924 .lut_mask = 16'hFFCC;
defparam \u_kirsch|ix31323z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X63_Y13_N19
cycloneii_lcell_ff \u_kirsch|reg_o_dir_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r8_dir_1_ ),
	.aclr(gnd),
	.sclr(\u_kirsch|nx31323z1 ),
	.sload(vcc),
	.ena(\u_kirsch|v_7_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|p_o_dir_1_ ));

// atom is at LCFF_X60_Y11_N23
cycloneii_lcell_ff \u_kirsch|reg_r6_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r6_add8_14i1|nx23445z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r6_8_ ));

// atom is at LCCOMB_X61_Y11_N0
cycloneii_lcell_comb \u_kirsch|ix38408z52923 (
// Equation(s):
// \u_kirsch|r3_11n1s1f1_8_  = \u_kirsch|v_5_  & \u_kirsch|r6_8_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|v_5_ ),
	.datad(\u_kirsch|r6_8_ ),
	.cin(gnd),
	.combout(\u_kirsch|r3_11n1s1f1_8_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix38408z52923 .lut_mask = 16'hF000;
defparam \u_kirsch|ix38408z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y11_N19
cycloneii_lcell_ff \u_kirsch|reg_r6_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r6_add8_14i1|nx43955z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r6_6_ ));

// atom is at LCCOMB_X60_Y11_N2
cycloneii_lcell_comb \u_kirsch|ix38408z52925 (
// Equation(s):
// \u_kirsch|r3_11n1s1f1_6_  = \u_kirsch|v_5_  & (\u_kirsch|r6_6_ ) # !\u_kirsch|v_5_  & \u_kirsch|r1_6_ 

	.dataa(\u_kirsch|r1_6_ ),
	.datab(\u_kirsch|r6_6_ ),
	.datac(vcc),
	.datad(\u_kirsch|v_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|r3_11n1s1f1_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix38408z52925 .lut_mask = 16'hCCAA;
defparam \u_kirsch|ix38408z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y11_N17
cycloneii_lcell_ff \u_kirsch|reg_r6_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r6_add8_14i1|nx42958z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r6_5_ ));

// atom is at LCCOMB_X60_Y11_N4
cycloneii_lcell_comb \u_kirsch|ix38408z52926 (
// Equation(s):
// \u_kirsch|r3_11n1s1f1_5_  = \u_kirsch|v_5_  & (\u_kirsch|r6_5_ ) # !\u_kirsch|v_5_  & \u_kirsch|r1_5_ 

	.dataa(vcc),
	.datab(\u_kirsch|r1_5_ ),
	.datac(\u_kirsch|r6_5_ ),
	.datad(\u_kirsch|v_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|r3_11n1s1f1_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix38408z52926 .lut_mask = 16'hF0CC;
defparam \u_kirsch|ix38408z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y11_N15
cycloneii_lcell_ff \u_kirsch|reg_r6_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r6_add8_14i1|nx41961z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r6_4_ ));

// atom is at LCCOMB_X61_Y11_N12
cycloneii_lcell_comb \u_kirsch|ix38408z52927 (
// Equation(s):
// \u_kirsch|r3_11n1s1f1_4_  = \u_kirsch|v_5_  & (\u_kirsch|r6_4_ ) # !\u_kirsch|v_5_  & \u_kirsch|r1_4_ 

	.dataa(vcc),
	.datab(\u_kirsch|r1_4_ ),
	.datac(\u_kirsch|v_5_ ),
	.datad(\u_kirsch|r6_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|r3_11n1s1f1_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix38408z52927 .lut_mask = 16'hFC0C;
defparam \u_kirsch|ix38408z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y11_N9
cycloneii_lcell_ff \u_kirsch|reg_r6_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r6_add8_14i1|nx38970z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r6_1_ ));

// atom is at LCCOMB_X60_Y11_N26
cycloneii_lcell_comb \u_kirsch|ix38408z52930 (
// Equation(s):
// \u_kirsch|r3_11n1s1f1_1_  = \u_kirsch|v_5_  & \u_kirsch|r6_1_  # !\u_kirsch|v_5_  & (\u_kirsch|r1_1_ )

	.dataa(vcc),
	.datab(\u_kirsch|v_5_ ),
	.datac(\u_kirsch|r6_1_ ),
	.datad(\u_kirsch|r1_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|r3_11n1s1f1_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix38408z52930 .lut_mask = 16'hF3C0;
defparam \u_kirsch|ix38408z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y11_N7
cycloneii_lcell_ff \u_kirsch|reg_r6_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r6_add8_14i1|nx37973z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r6_0_ ));

// atom is at LCCOMB_X60_Y11_N0
cycloneii_lcell_comb \u_kirsch|ix38408z52931 (
// Equation(s):
// \u_kirsch|r3_11n1s1f1_0_  = \u_kirsch|v_5_  & \u_kirsch|r6_0_  # !\u_kirsch|v_5_  & (\u_kirsch|r1_0_ )

	.dataa(\u_kirsch|r6_0_ ),
	.datab(vcc),
	.datac(\u_kirsch|v_5_ ),
	.datad(\u_kirsch|r1_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|r3_11n1s1f1_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix38408z52931 .lut_mask = 16'hAFA0;
defparam \u_kirsch|ix38408z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X62_Y11_N10
cycloneii_lcell_comb \u_kirsch|r3_add13_11i1|ix64792z52934 (
// Equation(s):
// \u_kirsch|r3_add13_11i1|nx39967z1  = (\u_kirsch|r3_2_  $ \u_kirsch|r3_11n1s1f1_2_  $ !\u_kirsch|r3_add13_11i1|nx64792z30 ) # GND
// \u_kirsch|r3_add13_11i1|nx64792z27  = CARRY(\u_kirsch|r3_2_  & (\u_kirsch|r3_11n1s1f1_2_  # !\u_kirsch|r3_add13_11i1|nx64792z30 ) # !\u_kirsch|r3_2_  & \u_kirsch|r3_11n1s1f1_2_  & !\u_kirsch|r3_add13_11i1|nx64792z30 )

	.dataa(\u_kirsch|r3_2_ ),
	.datab(\u_kirsch|r3_11n1s1f1_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r3_add13_11i1|nx64792z30 ),
	.combout(\u_kirsch|r3_add13_11i1|nx39967z1 ),
	.cout(\u_kirsch|r3_add13_11i1|nx64792z27 ));
// synopsys translate_off
defparam \u_kirsch|r3_add13_11i1|ix64792z52934 .lut_mask = 16'h698E;
defparam \u_kirsch|r3_add13_11i1|ix64792z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X62_Y11_N20
cycloneii_lcell_comb \u_kirsch|r3_add13_11i1|ix64792z52929 (
// Equation(s):
// \u_kirsch|r3_add13_11i1|nx44952z1  = \u_kirsch|r3_7_  & (\u_kirsch|r3_11n1s1f1_7_  & \u_kirsch|r3_add13_11i1|nx64792z15  & VCC # !\u_kirsch|r3_11n1s1f1_7_  & !\u_kirsch|r3_add13_11i1|nx64792z15 ) # !\u_kirsch|r3_7_  & (\u_kirsch|r3_11n1s1f1_7_  & 
// !\u_kirsch|r3_add13_11i1|nx64792z15  # !\u_kirsch|r3_11n1s1f1_7_  & (\u_kirsch|r3_add13_11i1|nx64792z15  # GND))
// \u_kirsch|r3_add13_11i1|nx64792z12  = CARRY(\u_kirsch|r3_7_  & !\u_kirsch|r3_11n1s1f1_7_  & !\u_kirsch|r3_add13_11i1|nx64792z15  # !\u_kirsch|r3_7_  & (!\u_kirsch|r3_add13_11i1|nx64792z15  # !\u_kirsch|r3_11n1s1f1_7_ ))

	.dataa(\u_kirsch|r3_7_ ),
	.datab(\u_kirsch|r3_11n1s1f1_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r3_add13_11i1|nx64792z15 ),
	.combout(\u_kirsch|r3_add13_11i1|nx44952z1 ),
	.cout(\u_kirsch|r3_add13_11i1|nx64792z12 ));
// synopsys translate_off
defparam \u_kirsch|r3_add13_11i1|ix64792z52929 .lut_mask = 16'h9617;
defparam \u_kirsch|r3_add13_11i1|ix64792z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X62_Y11_N28
cycloneii_lcell_comb \u_kirsch|r3_add13_11i1|ix64792z52925 (
// Equation(s):
// \u_kirsch|r3_add13_11i1|nx63795z1  = \u_kirsch|r3_11_  & !\u_kirsch|r3_add13_11i1|nx64792z5  # !\u_kirsch|r3_11_  & (\u_kirsch|r3_add13_11i1|nx64792z5  # GND)
// \u_kirsch|r3_add13_11i1|nx64792z3  = CARRY(!\u_kirsch|r3_add13_11i1|nx64792z5  # !\u_kirsch|r3_11_ )

	.dataa(vcc),
	.datab(\u_kirsch|r3_11_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r3_add13_11i1|nx64792z5 ),
	.combout(\u_kirsch|r3_add13_11i1|nx63795z1 ),
	.cout(\u_kirsch|r3_add13_11i1|nx64792z3 ));
// synopsys translate_off
defparam \u_kirsch|r3_add13_11i1|ix64792z52925 .lut_mask = 16'h3C3F;
defparam \u_kirsch|r3_add13_11i1|ix64792z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X62_Y11_N30
cycloneii_lcell_comb \u_kirsch|r3_add13_11i1|ix64792z52923 (
// Equation(s):
// \u_kirsch|r3_add13_11i1|nx64792z1  = \u_kirsch|r3_add13_11i1|nx64792z3  $ !\u_kirsch|r3_12_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r3_12_ ),
	.cin(\u_kirsch|r3_add13_11i1|nx64792z3 ),
	.combout(\u_kirsch|r3_add13_11i1|nx64792z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r3_add13_11i1|ix64792z52923 .lut_mask = 16'hF00F;
defparam \u_kirsch|r3_add13_11i1|ix64792z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X61_Y14_N21
cycloneii_lcell_ff \u_kirsch|reg_r5_dir_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx43423z1~_wirecell_combout ),
	.sdata(\u_kirsch|r2_dir_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix9374z6956|nx23445z1 ),
	.ena(\u_kirsch|v_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r5_dir_0_ ));

// atom is at LCFF_X62_Y14_N31
cycloneii_lcell_ff \u_kirsch|reg_r8_dir_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r8_dir_1_~feeder_combout ),
	.sdata(\u_kirsch|nx44420z1~_wirecell_combout ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix15883z6955|nx23445z1 ),
	.ena(\u_kirsch|v_6_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r8_dir_1_ ));

// atom is at LCFF_X63_Y13_N21
cycloneii_lcell_ff \u_kirsch|reg_o_dir_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r8_dir_2_ ),
	.aclr(gnd),
	.sclr(\u_kirsch|nx31323z1 ),
	.sload(vcc),
	.ena(\u_kirsch|v_7_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|p_o_dir_2_ ));

// atom is at LCFF_X59_Y11_N21
cycloneii_lcell_ff \u_kirsch|reg_g_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|g_6_ ));

// atom is at LCCOMB_X60_Y11_N6
cycloneii_lcell_comb \u_kirsch|r6_add8_14i1|ix44952z52931 (
// Equation(s):
// \u_kirsch|r6_add8_14i1|nx37973z1  = \u_kirsch|g_0_  & (\u_kirsch|f_0_  $ VCC) # !\u_kirsch|g_0_  & \u_kirsch|f_0_  & VCC
// \u_kirsch|r6_add8_14i1|nx44952z22  = CARRY(\u_kirsch|g_0_  & \u_kirsch|f_0_ )

	.dataa(\u_kirsch|g_0_ ),
	.datab(\u_kirsch|f_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r6_add8_14i1|nx37973z1 ),
	.cout(\u_kirsch|r6_add8_14i1|nx44952z22 ));
// synopsys translate_off
defparam \u_kirsch|r6_add8_14i1|ix44952z52931 .lut_mask = 16'h6688;
defparam \u_kirsch|r6_add8_14i1|ix44952z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y11_N8
cycloneii_lcell_comb \u_kirsch|r6_add8_14i1|ix44952z52930 (
// Equation(s):
// \u_kirsch|r6_add8_14i1|nx38970z1  = \u_kirsch|g_1_  & (\u_kirsch|f_1_  & \u_kirsch|r6_add8_14i1|nx44952z22  & VCC # !\u_kirsch|f_1_  & !\u_kirsch|r6_add8_14i1|nx44952z22 ) # !\u_kirsch|g_1_  & (\u_kirsch|f_1_  & !\u_kirsch|r6_add8_14i1|nx44952z22  # 
// !\u_kirsch|f_1_  & (\u_kirsch|r6_add8_14i1|nx44952z22  # GND))
// \u_kirsch|r6_add8_14i1|nx44952z19  = CARRY(\u_kirsch|g_1_  & !\u_kirsch|f_1_  & !\u_kirsch|r6_add8_14i1|nx44952z22  # !\u_kirsch|g_1_  & (!\u_kirsch|r6_add8_14i1|nx44952z22  # !\u_kirsch|f_1_ ))

	.dataa(\u_kirsch|g_1_ ),
	.datab(\u_kirsch|f_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r6_add8_14i1|nx44952z22 ),
	.combout(\u_kirsch|r6_add8_14i1|nx38970z1 ),
	.cout(\u_kirsch|r6_add8_14i1|nx44952z19 ));
// synopsys translate_off
defparam \u_kirsch|r6_add8_14i1|ix44952z52930 .lut_mask = 16'h9617;
defparam \u_kirsch|r6_add8_14i1|ix44952z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y11_N14
cycloneii_lcell_comb \u_kirsch|r6_add8_14i1|ix44952z52927 (
// Equation(s):
// \u_kirsch|r6_add8_14i1|nx41961z1  = (\u_kirsch|f_4_  $ \u_kirsch|g_4_  $ !\u_kirsch|r6_add8_14i1|nx44952z13 ) # GND
// \u_kirsch|r6_add8_14i1|nx44952z10  = CARRY(\u_kirsch|f_4_  & (\u_kirsch|g_4_  # !\u_kirsch|r6_add8_14i1|nx44952z13 ) # !\u_kirsch|f_4_  & \u_kirsch|g_4_  & !\u_kirsch|r6_add8_14i1|nx44952z13 )

	.dataa(\u_kirsch|f_4_ ),
	.datab(\u_kirsch|g_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r6_add8_14i1|nx44952z13 ),
	.combout(\u_kirsch|r6_add8_14i1|nx41961z1 ),
	.cout(\u_kirsch|r6_add8_14i1|nx44952z10 ));
// synopsys translate_off
defparam \u_kirsch|r6_add8_14i1|ix44952z52927 .lut_mask = 16'h698E;
defparam \u_kirsch|r6_add8_14i1|ix44952z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y11_N16
cycloneii_lcell_comb \u_kirsch|r6_add8_14i1|ix44952z52926 (
// Equation(s):
// \u_kirsch|r6_add8_14i1|nx42958z1  = \u_kirsch|g_5_  & (\u_kirsch|f_5_  & \u_kirsch|r6_add8_14i1|nx44952z10  & VCC # !\u_kirsch|f_5_  & !\u_kirsch|r6_add8_14i1|nx44952z10 ) # !\u_kirsch|g_5_  & (\u_kirsch|f_5_  & !\u_kirsch|r6_add8_14i1|nx44952z10  # 
// !\u_kirsch|f_5_  & (\u_kirsch|r6_add8_14i1|nx44952z10  # GND))
// \u_kirsch|r6_add8_14i1|nx44952z7  = CARRY(\u_kirsch|g_5_  & !\u_kirsch|f_5_  & !\u_kirsch|r6_add8_14i1|nx44952z10  # !\u_kirsch|g_5_  & (!\u_kirsch|r6_add8_14i1|nx44952z10  # !\u_kirsch|f_5_ ))

	.dataa(\u_kirsch|g_5_ ),
	.datab(\u_kirsch|f_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r6_add8_14i1|nx44952z10 ),
	.combout(\u_kirsch|r6_add8_14i1|nx42958z1 ),
	.cout(\u_kirsch|r6_add8_14i1|nx44952z7 ));
// synopsys translate_off
defparam \u_kirsch|r6_add8_14i1|ix44952z52926 .lut_mask = 16'h9617;
defparam \u_kirsch|r6_add8_14i1|ix44952z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y11_N18
cycloneii_lcell_comb \u_kirsch|r6_add8_14i1|ix44952z52925 (
// Equation(s):
// \u_kirsch|r6_add8_14i1|nx43955z1  = (\u_kirsch|g_6_  $ \u_kirsch|f_6_  $ !\u_kirsch|r6_add8_14i1|nx44952z7 ) # GND
// \u_kirsch|r6_add8_14i1|nx44952z4  = CARRY(\u_kirsch|g_6_  & (\u_kirsch|f_6_  # !\u_kirsch|r6_add8_14i1|nx44952z7 ) # !\u_kirsch|g_6_  & \u_kirsch|f_6_  & !\u_kirsch|r6_add8_14i1|nx44952z7 )

	.dataa(\u_kirsch|g_6_ ),
	.datab(\u_kirsch|f_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r6_add8_14i1|nx44952z7 ),
	.combout(\u_kirsch|r6_add8_14i1|nx43955z1 ),
	.cout(\u_kirsch|r6_add8_14i1|nx44952z4 ));
// synopsys translate_off
defparam \u_kirsch|r6_add8_14i1|ix44952z52925 .lut_mask = 16'h698E;
defparam \u_kirsch|r6_add8_14i1|ix44952z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y11_N20
cycloneii_lcell_comb \u_kirsch|r6_add8_14i1|ix44952z52923 (
// Equation(s):
// \u_kirsch|r6_add8_14i1|nx44952z1  = \u_kirsch|g_7_  & (\u_kirsch|f_7_  & \u_kirsch|r6_add8_14i1|nx44952z4  & VCC # !\u_kirsch|f_7_  & !\u_kirsch|r6_add8_14i1|nx44952z4 ) # !\u_kirsch|g_7_  & (\u_kirsch|f_7_  & !\u_kirsch|r6_add8_14i1|nx44952z4  # 
// !\u_kirsch|f_7_  & (\u_kirsch|r6_add8_14i1|nx44952z4  # GND))
// \u_kirsch|r6_add8_14i1|nx23445z2  = CARRY(\u_kirsch|g_7_  & !\u_kirsch|f_7_  & !\u_kirsch|r6_add8_14i1|nx44952z4  # !\u_kirsch|g_7_  & (!\u_kirsch|r6_add8_14i1|nx44952z4  # !\u_kirsch|f_7_ ))

	.dataa(\u_kirsch|g_7_ ),
	.datab(\u_kirsch|f_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r6_add8_14i1|nx44952z4 ),
	.combout(\u_kirsch|r6_add8_14i1|nx44952z1 ),
	.cout(\u_kirsch|r6_add8_14i1|nx23445z2 ));
// synopsys translate_off
defparam \u_kirsch|r6_add8_14i1|ix44952z52923 .lut_mask = 16'h9617;
defparam \u_kirsch|r6_add8_14i1|ix44952z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y11_N22
cycloneii_lcell_comb \u_kirsch|r6_add8_14i1|ix23445z52923 (
// Equation(s):
// \u_kirsch|r6_add8_14i1|nx23445z1  = !\u_kirsch|r6_add8_14i1|nx23445z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r6_add8_14i1|nx23445z2 ),
	.combout(\u_kirsch|r6_add8_14i1|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r6_add8_14i1|ix23445z52923 .lut_mask = 16'h0F0F;
defparam \u_kirsch|r6_add8_14i1|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y11_N24
cycloneii_lcell_comb \u_kirsch|ix30960z52926 (
// Equation(s):
// \u_kirsch|nx30960z2  = !\u_kirsch|v_2_  & !\u_kirsch|v_1_  & \u_kirsch|e_6_ 

	.dataa(vcc),
	.datab(\u_kirsch|v_2_ ),
	.datac(\u_kirsch|v_1_ ),
	.datad(\u_kirsch|e_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx30960z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix30960z52926 .lut_mask = 16'h0300;
defparam \u_kirsch|ix30960z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y11_N20
cycloneii_lcell_comb \u_kirsch|ix30960z52930 (
// Equation(s):
// \u_kirsch|nx30960z4  = !\u_kirsch|v_2_  & !\u_kirsch|v_1_  & \u_kirsch|e_4_ 

	.dataa(vcc),
	.datab(\u_kirsch|v_2_ ),
	.datac(\u_kirsch|v_1_ ),
	.datad(\u_kirsch|e_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx30960z4 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix30960z52930 .lut_mask = 16'h0300;
defparam \u_kirsch|ix30960z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y11_N0
cycloneii_lcell_comb \u_kirsch|ix9650z52924 (
// Equation(s):
// \u_kirsch|r2_10n1s1f1_6_  = \u_kirsch|v_3_  & !\u_kirsch|v_2_  & !\u_kirsch|v_1_  & \u_kirsch|e_6_ 

	.dataa(\u_kirsch|v_3_ ),
	.datab(\u_kirsch|v_2_ ),
	.datac(\u_kirsch|v_1_ ),
	.datad(\u_kirsch|e_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|r2_10n1s1f1_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix9650z52924 .lut_mask = 16'h0200;
defparam \u_kirsch|ix9650z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y11_N28
cycloneii_lcell_comb \u_kirsch|ix9650z52925 (
// Equation(s):
// \u_kirsch|r2_10n1s1f1_5_  = \u_kirsch|v_3_  & !\u_kirsch|v_2_  & !\u_kirsch|v_1_  & \u_kirsch|e_5_ 

	.dataa(\u_kirsch|v_3_ ),
	.datab(\u_kirsch|v_2_ ),
	.datac(\u_kirsch|v_1_ ),
	.datad(\u_kirsch|e_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|r2_10n1s1f1_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix9650z52925 .lut_mask = 16'h0200;
defparam \u_kirsch|ix9650z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y12_N30
cycloneii_lcell_comb \u_kirsch|ix9650z52926 (
// Equation(s):
// \u_kirsch|r2_10n1s1f1_4_  = !\u_kirsch|v_1_  & \u_kirsch|e_4_  & !\u_kirsch|v_2_  & \u_kirsch|v_3_ 

	.dataa(\u_kirsch|v_1_ ),
	.datab(\u_kirsch|e_4_ ),
	.datac(\u_kirsch|v_2_ ),
	.datad(\u_kirsch|v_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|r2_10n1s1f1_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix9650z52926 .lut_mask = 16'h0400;
defparam \u_kirsch|ix9650z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y11_N24
cycloneii_lcell_comb \u_kirsch|ix20740z52933 (
// Equation(s):
// \u_kirsch|r2_10n1s4f1_3_  = !\u_kirsch|nx20740z2  & (\u_kirsch|nx20740z1  & \u_kirsch|g_3_  # !\u_kirsch|nx20740z1  & (\u_kirsch|f_3_ ))

	.dataa(\u_kirsch|g_3_ ),
	.datab(\u_kirsch|nx20740z1 ),
	.datac(\u_kirsch|f_3_ ),
	.datad(\u_kirsch|nx20740z2 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_10n1s4f1_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20740z52933 .lut_mask = 16'h00B8;
defparam \u_kirsch|ix20740z52933 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y12_N6
cycloneii_lcell_comb \u_kirsch|r2_add8_10i25|ix44952z52928 (
// Equation(s):
// \u_kirsch|r2_add8_10i25|nx40964z1  = \u_kirsch|r2_10n1s4f1_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_10n1s4f1_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|r2_add8_10i25|nx40964z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r2_add8_10i25|ix44952z52928 .lut_mask = 16'hFF00;
defparam \u_kirsch|r2_add8_10i25|ix44952z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y12_N4
cycloneii_lcell_comb \u_kirsch|ix9650z52928 (
// Equation(s):
// \u_kirsch|r2_10n1s1f1_2_  = !\u_kirsch|v_1_  & !\u_kirsch|v_2_  & \u_kirsch|e_2_  & \u_kirsch|v_3_ 

	.dataa(\u_kirsch|v_1_ ),
	.datab(\u_kirsch|v_2_ ),
	.datac(\u_kirsch|e_2_ ),
	.datad(\u_kirsch|v_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|r2_10n1s1f1_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix9650z52928 .lut_mask = 16'h1000;
defparam \u_kirsch|ix9650z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y12_N6
cycloneii_lcell_comb \u_kirsch|ix9650z52929 (
// Equation(s):
// \u_kirsch|r2_10n1s1f1_1_  = !\u_kirsch|v_1_  & \u_kirsch|e_1_  & !\u_kirsch|v_2_  & \u_kirsch|v_3_ 

	.dataa(\u_kirsch|v_1_ ),
	.datab(\u_kirsch|e_1_ ),
	.datac(\u_kirsch|v_2_ ),
	.datad(\u_kirsch|v_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|r2_10n1s1f1_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix9650z52929 .lut_mask = 16'h0400;
defparam \u_kirsch|ix9650z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y12_N8
cycloneii_lcell_comb \u_kirsch|ix9650z52930 (
// Equation(s):
// \u_kirsch|r2_10n1s1f1_0_  = !\u_kirsch|v_1_  & !\u_kirsch|v_2_  & \u_kirsch|v_3_  & \u_kirsch|e_0_ 

	.dataa(\u_kirsch|v_1_ ),
	.datab(\u_kirsch|v_2_ ),
	.datac(\u_kirsch|v_3_ ),
	.datad(\u_kirsch|e_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|r2_10n1s1f1_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix9650z52930 .lut_mask = 16'h1000;
defparam \u_kirsch|ix9650z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y11_N14
cycloneii_lcell_comb \u_kirsch|ix9650z52923 (
// Equation(s):
// \u_kirsch|r2_10n1s1f1_7_  = \u_kirsch|v_3_  & !\u_kirsch|v_2_  & !\u_kirsch|v_1_  & \u_kirsch|e_7_ 

	.dataa(\u_kirsch|v_3_ ),
	.datab(\u_kirsch|v_2_ ),
	.datac(\u_kirsch|v_1_ ),
	.datad(\u_kirsch|e_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|r2_10n1s1f1_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix9650z52923 .lut_mask = 16'h0200;
defparam \u_kirsch|ix9650z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y12_N10
cycloneii_lcell_comb \u_kirsch|r7_add8_15i9|ix44952z52931 (
// Equation(s):
// \u_kirsch|r7_add8_15i9|nx37973z1  = \u_kirsch|f_0_  & (\u_kirsch|e_0_  $ VCC) # !\u_kirsch|f_0_  & \u_kirsch|e_0_  & VCC
// \u_kirsch|r7_add8_15i9|nx44952z22  = CARRY(\u_kirsch|f_0_  & \u_kirsch|e_0_ )

	.dataa(\u_kirsch|f_0_ ),
	.datab(\u_kirsch|e_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r7_add8_15i9|nx37973z1 ),
	.cout(\u_kirsch|r7_add8_15i9|nx44952z22 ));
// synopsys translate_off
defparam \u_kirsch|r7_add8_15i9|ix44952z52931 .lut_mask = 16'h6688;
defparam \u_kirsch|r7_add8_15i9|ix44952z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y12_N12
cycloneii_lcell_comb \u_kirsch|r7_add8_15i9|ix44952z52930 (
// Equation(s):
// \u_kirsch|r7_add8_15i9|nx38970z1  = \u_kirsch|f_1_  & (\u_kirsch|e_1_  & \u_kirsch|r7_add8_15i9|nx44952z22  & VCC # !\u_kirsch|e_1_  & !\u_kirsch|r7_add8_15i9|nx44952z22 ) # !\u_kirsch|f_1_  & (\u_kirsch|e_1_  & !\u_kirsch|r7_add8_15i9|nx44952z22  # 
// !\u_kirsch|e_1_  & (\u_kirsch|r7_add8_15i9|nx44952z22  # GND))
// \u_kirsch|r7_add8_15i9|nx44952z19  = CARRY(\u_kirsch|f_1_  & !\u_kirsch|e_1_  & !\u_kirsch|r7_add8_15i9|nx44952z22  # !\u_kirsch|f_1_  & (!\u_kirsch|r7_add8_15i9|nx44952z22  # !\u_kirsch|e_1_ ))

	.dataa(\u_kirsch|f_1_ ),
	.datab(\u_kirsch|e_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r7_add8_15i9|nx44952z22 ),
	.combout(\u_kirsch|r7_add8_15i9|nx38970z1 ),
	.cout(\u_kirsch|r7_add8_15i9|nx44952z19 ));
// synopsys translate_off
defparam \u_kirsch|r7_add8_15i9|ix44952z52930 .lut_mask = 16'h9617;
defparam \u_kirsch|r7_add8_15i9|ix44952z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y12_N14
cycloneii_lcell_comb \u_kirsch|r7_add8_15i9|ix44952z52929 (
// Equation(s):
// \u_kirsch|r7_add8_15i9|nx39967z1  = (\u_kirsch|f_2_  $ \u_kirsch|e_2_  $ !\u_kirsch|r7_add8_15i9|nx44952z19 ) # GND
// \u_kirsch|r7_add8_15i9|nx44952z16  = CARRY(\u_kirsch|f_2_  & (\u_kirsch|e_2_  # !\u_kirsch|r7_add8_15i9|nx44952z19 ) # !\u_kirsch|f_2_  & \u_kirsch|e_2_  & !\u_kirsch|r7_add8_15i9|nx44952z19 )

	.dataa(\u_kirsch|f_2_ ),
	.datab(\u_kirsch|e_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r7_add8_15i9|nx44952z19 ),
	.combout(\u_kirsch|r7_add8_15i9|nx39967z1 ),
	.cout(\u_kirsch|r7_add8_15i9|nx44952z16 ));
// synopsys translate_off
defparam \u_kirsch|r7_add8_15i9|ix44952z52929 .lut_mask = 16'h698E;
defparam \u_kirsch|r7_add8_15i9|ix44952z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y12_N20
cycloneii_lcell_comb \u_kirsch|r7_add8_15i9|ix44952z52926 (
// Equation(s):
// \u_kirsch|r7_add8_15i9|nx42958z1  = \u_kirsch|e_5_  & (\u_kirsch|f_5_  & \u_kirsch|r7_add8_15i9|nx44952z10  & VCC # !\u_kirsch|f_5_  & !\u_kirsch|r7_add8_15i9|nx44952z10 ) # !\u_kirsch|e_5_  & (\u_kirsch|f_5_  & !\u_kirsch|r7_add8_15i9|nx44952z10  # 
// !\u_kirsch|f_5_  & (\u_kirsch|r7_add8_15i9|nx44952z10  # GND))
// \u_kirsch|r7_add8_15i9|nx44952z7  = CARRY(\u_kirsch|e_5_  & !\u_kirsch|f_5_  & !\u_kirsch|r7_add8_15i9|nx44952z10  # !\u_kirsch|e_5_  & (!\u_kirsch|r7_add8_15i9|nx44952z10  # !\u_kirsch|f_5_ ))

	.dataa(\u_kirsch|e_5_ ),
	.datab(\u_kirsch|f_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r7_add8_15i9|nx44952z10 ),
	.combout(\u_kirsch|r7_add8_15i9|nx42958z1 ),
	.cout(\u_kirsch|r7_add8_15i9|nx44952z7 ));
// synopsys translate_off
defparam \u_kirsch|r7_add8_15i9|ix44952z52926 .lut_mask = 16'h9617;
defparam \u_kirsch|r7_add8_15i9|ix44952z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X61_Y14_N31
cycloneii_lcell_ff \u_kirsch|reg_r5_dir_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx44420z1~_wirecell_combout ),
	.sdata(\u_kirsch|r2_dir_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix9374z6956|nx23445z1 ),
	.ena(\u_kirsch|v_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r5_dir_1_ ));

// atom is at LCFF_X60_Y13_N11
cycloneii_lcell_ff \u_kirsch|reg_r4_dir_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_dir_1_~_wirecell_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|nx82z1 ),
	.sload(gnd),
	.ena(\u_kirsch|nx47743z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|nx44420z1 ));

// atom is at LCFF_X62_Y14_N1
cycloneii_lcell_ff \u_kirsch|reg_r8_dir_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r8_dir_2_~feeder_combout ),
	.sdata(\u_kirsch|r4_dir_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix15883z6955|nx23445z1 ),
	.ena(\u_kirsch|v_6_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r8_dir_2_ ));

// atom is at LCFF_X60_Y13_N29
cycloneii_lcell_ff \u_kirsch|reg_r2_dir_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx20067z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx33634z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_dir_1_ ));

// atom is at LCFF_X59_Y13_N1
cycloneii_lcell_ff \u_kirsch|reg_r5_dir_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r5_dir_2_~feeder_combout ),
	.sdata(\u_kirsch|r2_dir_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix9374z6956|nx23445z1 ),
	.ena(\u_kirsch|v_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r5_dir_2_ ));

// atom is at LCFF_X61_Y11_N9
cycloneii_lcell_ff \u_kirsch|reg_r4_dir_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r4_dir_2_~feeder_combout ),
	.sdata(\~GND~combout ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|v_5_ ),
	.ena(\u_kirsch|nx47743z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r4_dir_2_ ));

// atom is at LCCOMB_X60_Y13_N28
cycloneii_lcell_comb \u_kirsch|ix20067z52923 (
// Equation(s):
// \u_kirsch|nx20067z1  = !\u_kirsch|v_1_  & \u_kirsch|v_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|v_1_ ),
	.datad(\u_kirsch|v_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx20067z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20067z52923 .lut_mask = 16'h0F00;
defparam \u_kirsch|ix20067z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y13_N7
cycloneii_lcell_ff \u_kirsch|reg_r2_dir_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx19070z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx33634z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_dir_2_ ));

// atom is at LCCOMB_X60_Y13_N6
cycloneii_lcell_comb \u_kirsch|ix19070z52923 (
// Equation(s):
// \u_kirsch|nx19070z1  = !\u_kirsch|ix20740z19328|nx23445z1  & !\u_kirsch|v_1_  & !\u_kirsch|v_2_ 

	.dataa(vcc),
	.datab(\u_kirsch|ix20740z19328|nx23445z1 ),
	.datac(\u_kirsch|v_1_ ),
	.datad(\u_kirsch|v_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx19070z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix19070z52923 .lut_mask = 16'h0003;
defparam \u_kirsch|ix19070z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X61_Y14_N30
cycloneii_lcell_comb \u_kirsch|nx44420z1~_wirecell (
// Equation(s):
// \u_kirsch|nx44420z1~_wirecell_combout  = !\u_kirsch|nx44420z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|nx44420z1 ),
	.cin(gnd),
	.combout(\u_kirsch|nx44420z1~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|nx44420z1~_wirecell .lut_mask = 16'h00FF;
defparam \u_kirsch|nx44420z1~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y13_N10
cycloneii_lcell_comb \u_kirsch|r2_dir_1_~_wirecell (
// Equation(s):
// \u_kirsch|r2_dir_1_~_wirecell_combout  = !\u_kirsch|r2_dir_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_dir_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|r2_dir_1_~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r2_dir_1_~_wirecell .lut_mask = 16'h00FF;
defparam \u_kirsch|r2_dir_1_~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y13_N0
cycloneii_lcell_comb \u_uw_uart|sdout_0_~feeder (
// Equation(s):
// \u_uw_uart|sdout_0_~feeder_combout  = \u_uw_uart|mdata_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|mdata_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_0_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|sdout_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X61_Y13_N0
cycloneii_lcell_comb \u_uw_uart|mdata_0_~feeder (
// Equation(s):
// \u_uw_uart|mdata_0_~feeder_combout  = \u_kirsch|p_o_edge 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|p_o_edge ),
	.cin(gnd),
	.combout(\u_uw_uart|mdata_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|mdata_0_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|mdata_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X62_Y14_N24
cycloneii_lcell_comb \u_kirsch|r8_6_~feeder (
// Equation(s):
// \u_kirsch|r8_6_~feeder_combout  = \u_kirsch|r5_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r5_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|r8_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r8_6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r8_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X62_Y14_N8
cycloneii_lcell_comb \u_kirsch|r8_8_~feeder (
// Equation(s):
// \u_kirsch|r8_8_~feeder_combout  = \u_kirsch|r5_8_ 

	.dataa(vcc),
	.datab(\u_kirsch|r5_8_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r8_8_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r8_8_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|r8_8_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y14_N0
cycloneii_lcell_comb \u_kirsch|r5_8_~feeder (
// Equation(s):
// \u_kirsch|r5_8_~feeder_combout  = \u_kirsch|r4_8_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r4_8_ ),
	.cin(gnd),
	.combout(\u_kirsch|r5_8_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r5_8_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r5_8_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X62_Y14_N28
cycloneii_lcell_comb \u_kirsch|r8_4_~feeder (
// Equation(s):
// \u_kirsch|r8_4_~feeder_combout  = \u_kirsch|r5_4_ 

	.dataa(\u_kirsch|r5_4_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r8_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r8_4_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|r8_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X62_Y14_N16
cycloneii_lcell_comb \u_kirsch|r8_2_~feeder (
// Equation(s):
// \u_kirsch|r8_2_~feeder_combout  = \u_kirsch|r5_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r5_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|r8_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r8_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r8_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X62_Y14_N20
cycloneii_lcell_comb \u_kirsch|r8_0_~feeder (
// Equation(s):
// \u_kirsch|r8_0_~feeder_combout  = \u_kirsch|r5_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r5_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|r8_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r8_0_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r8_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X62_Y14_N30
cycloneii_lcell_comb \u_kirsch|r8_dir_1_~feeder (
// Equation(s):
// \u_kirsch|r8_dir_1_~feeder_combout  = \u_kirsch|r5_dir_1_ 

	.dataa(\u_kirsch|r5_dir_1_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r8_dir_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r8_dir_1_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|r8_dir_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X62_Y14_N0
cycloneii_lcell_comb \u_kirsch|r8_dir_2_~feeder (
// Equation(s):
// \u_kirsch|r8_dir_2_~feeder_combout  = \u_kirsch|r5_dir_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r5_dir_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|r8_dir_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r8_dir_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r8_dir_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y13_N0
cycloneii_lcell_comb \u_kirsch|r5_dir_2_~feeder (
// Equation(s):
// \u_kirsch|r5_dir_2_~feeder_combout  = \u_kirsch|r4_dir_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r4_dir_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|r5_dir_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r5_dir_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r5_dir_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X61_Y11_N8
cycloneii_lcell_comb \u_kirsch|r4_dir_2_~feeder (
// Equation(s):
// \u_kirsch|r4_dir_2_~feeder_combout  = \u_kirsch|r2_dir_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_dir_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|r4_dir_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r4_dir_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r4_dir_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y12_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|TxDivisor_5_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|TxDivisor_5_~feeder_combout  = VCC

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|TxDivisor_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|TxDivisor_5_~feeder .lut_mask = 16'hFFFF;
defparam \u_uw_uart|i_uarts|TxDivisor_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_N2
cycloneii_io clk_ibuf(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\clk~combout ),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(clk));
// synopsys translate_off
defparam clk_ibuf.input_async_reset = "none";
defparam clk_ibuf.input_power_up = "low";
defparam clk_ibuf.input_register_mode = "none";
defparam clk_ibuf.input_sync_reset = "none";
defparam clk_ibuf.oe_async_reset = "none";
defparam clk_ibuf.oe_power_up = "low";
defparam clk_ibuf.oe_register_mode = "none";
defparam clk_ibuf.oe_sync_reset = "none";
defparam clk_ibuf.operation_mode = "input";
defparam clk_ibuf.output_async_reset = "none";
defparam clk_ibuf.output_power_up = "low";
defparam clk_ibuf.output_register_mode = "none";
defparam clk_ibuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at CLKCTRL_G2
cycloneii_clkctrl \clk~clkctrl (
	.ena(vcc),
	.inclk({gnd,gnd,gnd,\clk~combout }),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(\clk~clkctrl_outclk ));
// synopsys translate_off
defparam \clk~clkctrl .clock_type = "global clock";
defparam \clk~clkctrl .ena_register_mode = "falling edge";
// synopsys translate_on

// atom is at LCCOMB_X53_Y12_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix5605z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx5605z1  = \u_uw_uart|i_uarts|TxFSM_1_  $ (\u_uw_uart|i_uarts|TopTx  & \u_uw_uart|i_uarts|TxFSM_0_ )

	.dataa(\u_uw_uart|i_uarts|TopTx ),
	.datab(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datac(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx5605z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix5605z52923 .lut_mask = 16'h7878;
defparam \u_uw_uart|i_uarts|ix5605z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_G26
cycloneii_io nrst_ibuf(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\nrst~combout ),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(nrst));
// synopsys translate_off
defparam nrst_ibuf.input_async_reset = "none";
defparam nrst_ibuf.input_power_up = "low";
defparam nrst_ibuf.input_register_mode = "none";
defparam nrst_ibuf.input_sync_reset = "none";
defparam nrst_ibuf.oe_async_reset = "none";
defparam nrst_ibuf.oe_power_up = "low";
defparam nrst_ibuf.oe_register_mode = "none";
defparam nrst_ibuf.oe_sync_reset = "none";
defparam nrst_ibuf.operation_mode = "input";
defparam nrst_ibuf.output_async_reset = "none";
defparam nrst_ibuf.output_power_up = "low";
defparam nrst_ibuf.output_register_mode = "none";
defparam nrst_ibuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCFF_X53_Y12_N27
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_TxFSM_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx5605z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxFSM_1_ ));

// atom is at LCCOMB_X53_Y12_N30
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix48926z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx48926z1  = \u_uw_uart|i_uarts|TopTx  & (\u_uw_uart|i_uarts|TxFSM_0_  & (\u_uw_uart|i_uarts|TxBitCnt_0_  # !\u_uw_uart|i_uarts|TxFSM_1_ ) # !\u_uw_uart|i_uarts|TxFSM_0_  & (\u_uw_uart|i_uarts|TxBitCnt_0_  $ \u_uw_uart|i_uarts|TxFSM_1_ 
// )) # !\u_uw_uart|i_uarts|TopTx  & (\u_uw_uart|i_uarts|TxBitCnt_0_ )

	.dataa(\u_uw_uart|i_uarts|TopTx ),
	.datab(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_0_ ),
	.datad(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx48926z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix48926z52923 .lut_mask = 16'hD2F8;
defparam \u_uw_uart|i_uarts|ix48926z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y12_N31
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx48926z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxBitCnt_0_ ));

// atom is at LCCOMB_X53_Y12_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix51917z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx51917z2  = \u_uw_uart|i_uarts|TopTx  & (\u_uw_uart|i_uarts|TxFSM_0_  $ \u_uw_uart|i_uarts|TxFSM_1_ )

	.dataa(\u_uw_uart|i_uarts|TopTx ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datad(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx51917z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix51917z52924 .lut_mask = 16'h0AA0;
defparam \u_uw_uart|i_uarts|ix51917z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y12_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix50920z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx50920z2  = \u_uw_uart|i_uarts|TopTx  & !\u_uw_uart|i_uarts|TxFSM_1_ 

	.dataa(\u_uw_uart|i_uarts|TopTx ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx50920z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix50920z52924 .lut_mask = 16'h00AA;
defparam \u_uw_uart|i_uarts|ix50920z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y12_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix49923z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx49923z1  = \u_uw_uart|i_uarts|nx51917z2  & !\u_uw_uart|i_uarts|nx50920z2  & (\u_uw_uart|i_uarts|TxBitCnt_0_  $ !\u_uw_uart|i_uarts|TxBitCnt_1_ ) # !\u_uw_uart|i_uarts|nx51917z2  & (\u_uw_uart|i_uarts|TxBitCnt_1_ )

	.dataa(\u_uw_uart|i_uarts|TxBitCnt_0_ ),
	.datab(\u_uw_uart|i_uarts|nx51917z2 ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_1_ ),
	.datad(\u_uw_uart|i_uarts|nx50920z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx49923z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix49923z52923 .lut_mask = 16'h30B4;
defparam \u_uw_uart|i_uarts|ix49923z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y12_N27
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx49923z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxBitCnt_1_ ));

// atom is at LCCOMB_X54_Y12_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix50920z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx50920z3  = \u_uw_uart|i_uarts|TxBitCnt_0_  # \u_uw_uart|i_uarts|TxBitCnt_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_0_ ),
	.datad(\u_uw_uart|i_uarts|TxBitCnt_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx50920z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix50920z52925 .lut_mask = 16'hFFF0;
defparam \u_uw_uart|i_uarts|ix50920z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y12_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix50920z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx50920z1  = \u_uw_uart|i_uarts|nx51917z2  & !\u_uw_uart|i_uarts|nx50920z2  & (\u_uw_uart|i_uarts|TxBitCnt_2_  $ !\u_uw_uart|i_uarts|nx50920z3 ) # !\u_uw_uart|i_uarts|nx51917z2  & (\u_uw_uart|i_uarts|TxBitCnt_2_ )

	.dataa(\u_uw_uart|i_uarts|nx50920z2 ),
	.datab(\u_uw_uart|i_uarts|nx51917z2 ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_2_ ),
	.datad(\u_uw_uart|i_uarts|nx50920z3 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx50920z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix50920z52923 .lut_mask = 16'h7034;
defparam \u_uw_uart|i_uarts|ix50920z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y12_N25
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx50920z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxBitCnt_2_ ));

// atom is at LCCOMB_X53_Y12_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix4608z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx4608z3  = \u_uw_uart|i_uarts|TxBitCnt_3_  # \u_uw_uart|i_uarts|TxBitCnt_1_  # \u_uw_uart|i_uarts|TxBitCnt_2_  # !\u_uw_uart|i_uarts|TxBitCnt_0_ 

	.dataa(\u_uw_uart|i_uarts|TxBitCnt_3_ ),
	.datab(\u_uw_uart|i_uarts|TxBitCnt_0_ ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_1_ ),
	.datad(\u_uw_uart|i_uarts|TxBitCnt_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx4608z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix4608z52925 .lut_mask = 16'hFFFB;
defparam \u_uw_uart|i_uarts|ix4608z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y12_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix4608z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx4608z1  = \u_uw_uart|i_uarts|nx4608z2  & (\u_uw_uart|i_uarts|TxFSM_0_ ) # !\u_uw_uart|i_uarts|nx4608z2  & !\u_uw_uart|i_uarts|TxFSM_0_  & (!\u_uw_uart|i_uarts|TxFSM_1_  # !\u_uw_uart|i_uarts|nx4608z3 )

	.dataa(\u_uw_uart|i_uarts|nx4608z2 ),
	.datab(\u_uw_uart|i_uarts|nx4608z3 ),
	.datac(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datad(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx4608z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix4608z52923 .lut_mask = 16'hA1A5;
defparam \u_uw_uart|i_uarts|ix4608z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y12_N5
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_TxFSM_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx4608z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxFSM_0_ ));

// atom is at LCCOMB_X62_Y14_N4
cycloneii_lcell_comb \u_kirsch|r8_dir_0_~feeder (
// Equation(s):
// \u_kirsch|r8_dir_0_~feeder_combout  = \u_kirsch|r5_dir_0_ 

	.dataa(\u_kirsch|r5_dir_0_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r8_dir_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r8_dir_0_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|r8_dir_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_C25
cycloneii_io rxflex_ibuf(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\rxflex~combout ),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(rxflex));
// synopsys translate_off
defparam rxflex_ibuf.input_async_reset = "none";
defparam rxflex_ibuf.input_power_up = "low";
defparam rxflex_ibuf.input_register_mode = "none";
defparam rxflex_ibuf.input_sync_reset = "none";
defparam rxflex_ibuf.oe_async_reset = "none";
defparam rxflex_ibuf.oe_power_up = "low";
defparam rxflex_ibuf.oe_register_mode = "none";
defparam rxflex_ibuf.oe_sync_reset = "none";
defparam rxflex_ibuf.operation_mode = "input";
defparam rxflex_ibuf.output_async_reset = "none";
defparam rxflex_ibuf.output_power_up = "low";
defparam rxflex_ibuf.output_register_mode = "none";
defparam rxflex_ibuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X55_Y13_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix57064z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Rx  = !\rxflex~combout  # !\nrst~combout 

	.dataa(vcc),
	.datab(vcc),
	.datac(\nrst~combout ),
	.datad(\rxflex~combout ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Rx ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix57064z52923 .lut_mask = 16'h0FFF;
defparam \u_uw_uart|i_uarts|ix57064z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y13_N3
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_r (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Rx ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|not_Rx_r ));

// atom is at LCCOMB_X56_Y13_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|not_Rx_r~_wirecell (
// Equation(s):
// \u_uw_uart|i_uarts|not_Rx_r~_wirecell_combout  = !\u_uw_uart|i_uarts|not_Rx_r 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|not_Rx_r ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|not_Rx_r~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|not_Rx_r~_wirecell .lut_mask = 16'h00FF;
defparam \u_uw_uart|i_uarts|not_Rx_r~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y13_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix11553z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx11553z1  = \u_uw_uart|i_uarts|RxFSM_2_  & \u_uw_uart|i_uarts|nx13547z2 

	.dataa(\u_uw_uart|i_uarts|RxFSM_2_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|nx13547z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx11553z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix11553z52923 .lut_mask = 16'hAA00;
defparam \u_uw_uart|i_uarts|ix11553z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y13_N30
cycloneii_lcell_comb \u_uw_uart|i_uarts|nx34394z2~_wirecell (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z2~_wirecell_combout  = !\u_uw_uart|i_uarts|nx34394z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|nx34394z2 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z2~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|nx34394z2~_wirecell .lut_mask = 16'h0F0F;
defparam \u_uw_uart|i_uarts|nx34394z2~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y13_N31
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx34394z2~_wirecell_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxFSM_1_ ));

// atom is at LCCOMB_X54_Y13_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|RxFSM_6_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|RxFSM_6_~feeder_combout  = \u_uw_uart|i_uarts|RxFSM_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|RxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|RxFSM_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|RxFSM_6_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|RxFSM_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y13_N13
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|RxFSM_6_~feeder_combout ),
	.sdata(\u_uw_uart|i_uarts|RxFSM_5_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(\u_uw_uart|i_uarts|not_Rx_r ),
	.ena(\u_uw_uart|i_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxFSM_6_ ));

// atom is at LCCOMB_X54_Y13_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix15541z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|nx15541z3  = \nrst~combout  & \rxflex~combout  # !\u_uw_uart|i_uarts|RxFSM_6_ 

	.dataa(\nrst~combout ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|RxFSM_6_ ),
	.datad(\rxflex~combout ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx15541z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix15541z52926 .lut_mask = 16'hAF0F;
defparam \u_uw_uart|i_uarts|ix15541z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y13_N18
cycloneii_lcell_comb \u_uw_uart|ix15671z52923 (
// Equation(s):
// \u_uw_uart|rawrx  = \nrst~combout  & \rxflex~combout 

	.dataa(\nrst~combout ),
	.datab(vcc),
	.datac(vcc),
	.datad(\rxflex~combout ),
	.cin(gnd),
	.combout(\u_uw_uart|rawrx ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix15671z52923 .lut_mask = 16'hAA00;
defparam \u_uw_uart|ix15671z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y13_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52934 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx51271z1  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21  $ VCC
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20  = CARRY(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx51271z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52934 .lut_mask = 16'h33CC;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52934 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y13_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix65151z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx65151z1  = \u_uw_uart|i_uarts|nx34394z3  # !\u_uw_uart|i_uarts|nx34394z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|nx34394z3 ),
	.datad(\u_uw_uart|i_uarts|nx34394z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx65151z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix65151z52923 .lut_mask = 16'hF0FF;
defparam \u_uw_uart|i_uarts|ix65151z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y13_N3
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx51271z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21 ));

// atom is at LCCOMB_X53_Y13_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52933 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx52268z1  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20  # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19  & 
// (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20  # GND)
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18  = CARRY(!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20  # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z20 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx52268z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z18 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52933 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X53_Y13_N5
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx52268z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19 ));

// atom is at LCCOMB_X53_Y13_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52931 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx54262z1  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16  # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15  & 
// (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16  # GND)
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14  = CARRY(!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16  # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z16 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx54262z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52931 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X53_Y13_N9
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx54262z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15 ));

// atom is at LCCOMB_X53_Y13_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52930 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx55259z1  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13  & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14  $ GND) # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13  & 
// !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14  & VCC
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12  = CARRY(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14 )

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z14 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx55259z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z12 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52930 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y13_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52928 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx57253z1  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9  & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10  $ GND) # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9  & 
// !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10  & VCC
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8  = CARRY(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z10 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx57253z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52928 .lut_mask = 16'hC30C;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X53_Y13_N15
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx57253z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9 ));

// atom is at LCCOMB_X53_Y13_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52927 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx58250z1  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8  # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7  & 
// (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8  # GND)
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6  = CARRY(!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8  # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7 )

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z8 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx58250z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52927 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y13_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx59247z1  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5  & (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6  $ GND) # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5  & 
// !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6  & VCC
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4  = CARRY(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6 )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z6 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx59247z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52926 .lut_mask = 16'hC30C;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X53_Y13_N19
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx59247z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5 ));

// atom is at LCCOMB_X53_Y13_N20
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx60244z1  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4  # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3  & 
// (\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4  # GND)
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2  = CARRY(!\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4  # !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3 )

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z4 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx60244z1 ),
	.cout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52925 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X53_Y13_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z1  = \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2  $ !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1 ),
	.cin(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z2 ),
	.combout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52923 .lut_mask = 16'hF00F;
defparam \u_uw_uart|i_uarts|modgen_counter_RxDiv|ix17096z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X53_Y13_N23
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1 ));

// atom is at LCFF_X53_Y13_N21
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx60244z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3 ));

// atom is at LCCOMB_X54_Y13_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z4  = \u_uw_uart|i_uarts|TxDivisor_5_  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5 

	.dataa(\u_uw_uart|i_uarts|TxDivisor_5_ ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52925 .lut_mask = 16'h0002;
defparam \u_uw_uart|i_uarts|ix34394z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y13_N30
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52931 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z10  = !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17  & \u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21 

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z10 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52931 .lut_mask = 16'h0004;
defparam \u_uw_uart|i_uarts|ix34394z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y13_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52929 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z8  = !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21 

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z17 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z15 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z19 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z21 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z8 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52929 .lut_mask = 16'h0001;
defparam \u_uw_uart|i_uarts|ix34394z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y13_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx58250z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7 ));

// atom is at LCFF_X53_Y13_N11
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxDiv|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx55259z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13 ));

// atom is at LCCOMB_X53_Y13_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52928 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z7  = !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13 

	.dataa(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z11 ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z9 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z7 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z13 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z7 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52928 .lut_mask = 16'h0001;
defparam \u_uw_uart|i_uarts|ix34394z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y13_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52927 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z6  = !\u_uw_uart|i_uarts|TxDivisor_5_  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3  & !\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5 

	.dataa(\u_uw_uart|i_uarts|TxDivisor_5_ ),
	.datab(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx3957z1 ),
	.datac(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z3 ),
	.datad(\u_uw_uart|i_uarts|modgen_counter_RxDiv|nx17096z5 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z6 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52927 .lut_mask = 16'h0001;
defparam \u_uw_uart|i_uarts|ix34394z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y13_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z5  = \u_uw_uart|i_uarts|nx34394z8  & \u_uw_uart|i_uarts|nx34394z7  & \u_uw_uart|i_uarts|nx34394z6 

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|nx34394z8 ),
	.datac(\u_uw_uart|i_uarts|nx34394z7 ),
	.datad(\u_uw_uart|i_uarts|nx34394z6 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z5 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52926 .lut_mask = 16'hC000;
defparam \u_uw_uart|i_uarts|ix34394z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y13_N20
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z3  = \u_uw_uart|i_uarts|nx34394z5  # \u_uw_uart|i_uarts|nx34394z9  & \u_uw_uart|i_uarts|nx34394z4  & \u_uw_uart|i_uarts|nx34394z10 

	.dataa(\u_uw_uart|i_uarts|nx34394z9 ),
	.datab(\u_uw_uart|i_uarts|nx34394z4 ),
	.datac(\u_uw_uart|i_uarts|nx34394z10 ),
	.datad(\u_uw_uart|i_uarts|nx34394z5 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52924 .lut_mask = 16'hFF80;
defparam \u_uw_uart|i_uarts|ix34394z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y13_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z1  = \u_uw_uart|i_uarts|nx34394z3  & \u_uw_uart|i_uarts|nx34394z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|nx34394z3 ),
	.datad(\u_uw_uart|i_uarts|nx34394z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52923 .lut_mask = 16'hF000;
defparam \u_uw_uart|i_uarts|ix34394z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y13_N11
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_TopRx (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx34394z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TopRx ));

// atom is at LCCOMB_X54_Y13_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix15541z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx15541z2  = \u_uw_uart|i_uarts|nx34394z2  & (\u_uw_uart|i_uarts|RxFSM_6_  & \u_uw_uart|rawrx  # !\u_uw_uart|i_uarts|RxFSM_6_  & (\u_uw_uart|i_uarts|TopRx ))

	.dataa(\u_uw_uart|i_uarts|RxFSM_6_ ),
	.datab(\u_uw_uart|i_uarts|nx34394z2 ),
	.datac(\u_uw_uart|rawrx ),
	.datad(\u_uw_uart|i_uarts|TopRx ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx15541z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix15541z52925 .lut_mask = 16'hC480;
defparam \u_uw_uart|i_uarts|ix15541z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y13_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix15541z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx15541z1  = \u_uw_uart|i_uarts|nx15541z2  # \u_uw_uart|i_uarts|not_Rx_r  & \u_uw_uart|i_uarts|nx15541z3  & !\u_uw_uart|i_uarts|nx34394z2 

	.dataa(\u_uw_uart|i_uarts|not_Rx_r ),
	.datab(\u_uw_uart|i_uarts|nx15541z3 ),
	.datac(\u_uw_uart|i_uarts|nx15541z2 ),
	.datad(\u_uw_uart|i_uarts|nx34394z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx15541z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix15541z52924 .lut_mask = 16'hF0F8;
defparam \u_uw_uart|i_uarts|ix15541z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y13_N5
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx11553z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxFSM_5_ ));

// atom is at LCCOMB_X54_Y13_N30
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix16538z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx16538z1  = !\u_uw_uart|i_uarts|RxFSM_6_  & (\u_uw_uart|i_uarts|not_Rx_r  # !\u_uw_uart|i_uarts|RxFSM_5_ )

	.dataa(\u_uw_uart|i_uarts|not_Rx_r ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|RxFSM_5_ ),
	.datad(\u_uw_uart|i_uarts|RxFSM_6_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx16538z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix16538z52923 .lut_mask = 16'h00AF;
defparam \u_uw_uart|i_uarts|ix16538z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y13_N31
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx16538z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx34394z2 ));

// atom is at LCCOMB_X54_Y13_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix8373z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|not_rtlc17_X_0_n360  = \u_uw_uart|i_uarts|RxFSM_3_  & \u_uw_uart|i_uarts|TopRx  # !\u_uw_uart|i_uarts|RxFSM_3_  & (!\u_uw_uart|i_uarts|nx34394z2 )

	.dataa(\u_uw_uart|i_uarts|TopRx ),
	.datab(\u_uw_uart|i_uarts|nx34394z2 ),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|RxFSM_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|not_rtlc17_X_0_n360 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix8373z52924 .lut_mask = 16'hAA33;
defparam \u_uw_uart|i_uarts|ix8373z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y13_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix11364z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx11364z1  = \u_uw_uart|i_uarts|TopRx  & \u_uw_uart|i_uarts|nx34394z2  & (\u_uw_uart|i_uarts|RxBitCnt_0_  $ \u_uw_uart|i_uarts|RxFSM_3_ ) # !\u_uw_uart|i_uarts|TopRx  & \u_uw_uart|i_uarts|RxBitCnt_0_  & (\u_uw_uart|i_uarts|nx34394z2  # 
// \u_uw_uart|i_uarts|RxFSM_3_ )

	.dataa(\u_uw_uart|i_uarts|TopRx ),
	.datab(\u_uw_uart|i_uarts|nx34394z2 ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.datad(\u_uw_uart|i_uarts|RxFSM_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx11364z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix11364z52923 .lut_mask = 16'h58C0;
defparam \u_uw_uart|i_uarts|ix11364z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y13_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx11364z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxBitCnt_0_ ));

// atom is at LCCOMB_X55_Y13_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix10367z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx10367z1  = \u_uw_uart|i_uarts|not_rtlc17_X_0_n360  & \u_uw_uart|i_uarts|nx34394z2  & (\u_uw_uart|i_uarts|RxBitCnt_1_  $ \u_uw_uart|i_uarts|RxBitCnt_0_ ) # !\u_uw_uart|i_uarts|not_rtlc17_X_0_n360  & (\u_uw_uart|i_uarts|RxBitCnt_1_ )

	.dataa(\u_uw_uart|i_uarts|nx34394z2 ),
	.datab(\u_uw_uart|i_uarts|not_rtlc17_X_0_n360 ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_1_ ),
	.datad(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx10367z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix10367z52923 .lut_mask = 16'h38B0;
defparam \u_uw_uart|i_uarts|ix10367z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y13_N11
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx10367z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxBitCnt_1_ ));

// atom is at LCCOMB_X55_Y13_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix9370z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx9370z2  = \u_uw_uart|i_uarts|RxBitCnt_0_  & \u_uw_uart|i_uarts|RxBitCnt_1_ 

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|RxBitCnt_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx9370z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix9370z52924 .lut_mask = 16'hCC00;
defparam \u_uw_uart|i_uarts|ix9370z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y13_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix9370z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx9370z1  = \u_uw_uart|i_uarts|not_rtlc17_X_0_n360  & \u_uw_uart|i_uarts|nx34394z2  & (\u_uw_uart|i_uarts|RxBitCnt_2_  $ \u_uw_uart|i_uarts|nx9370z2 ) # !\u_uw_uart|i_uarts|not_rtlc17_X_0_n360  & (\u_uw_uart|i_uarts|RxBitCnt_2_ )

	.dataa(\u_uw_uart|i_uarts|nx34394z2 ),
	.datab(\u_uw_uart|i_uarts|not_rtlc17_X_0_n360 ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_2_ ),
	.datad(\u_uw_uart|i_uarts|nx9370z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx9370z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix9370z52923 .lut_mask = 16'h38B0;
defparam \u_uw_uart|i_uarts|ix9370z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y13_N1
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx9370z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxBitCnt_2_ ));

// atom is at LCCOMB_X55_Y13_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix8373z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx8373z2  = \u_uw_uart|i_uarts|RxBitCnt_3_  $ (\u_uw_uart|i_uarts|RxBitCnt_1_  & \u_uw_uart|i_uarts|RxBitCnt_2_  & \u_uw_uart|i_uarts|RxBitCnt_0_ )

	.dataa(\u_uw_uart|i_uarts|RxBitCnt_1_ ),
	.datab(\u_uw_uart|i_uarts|RxBitCnt_2_ ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.datad(\u_uw_uart|i_uarts|RxBitCnt_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx8373z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix8373z52925 .lut_mask = 16'h7F80;
defparam \u_uw_uart|i_uarts|ix8373z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y13_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix8373z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx8373z1  = \u_uw_uart|i_uarts|not_rtlc17_X_0_n360  & \u_uw_uart|i_uarts|nx34394z2  & (\u_uw_uart|i_uarts|nx8373z2 ) # !\u_uw_uart|i_uarts|not_rtlc17_X_0_n360  & (\u_uw_uart|i_uarts|RxBitCnt_3_ )

	.dataa(\u_uw_uart|i_uarts|nx34394z2 ),
	.datab(\u_uw_uart|i_uarts|not_rtlc17_X_0_n360 ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_3_ ),
	.datad(\u_uw_uart|i_uarts|nx8373z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx8373z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix8373z52923 .lut_mask = 16'hB830;
defparam \u_uw_uart|i_uarts|ix8373z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y13_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx8373z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxBitCnt_3_ ));

// atom is at LCCOMB_X55_Y13_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix13547z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx13547z2  = !\u_uw_uart|i_uarts|RxBitCnt_1_  & !\u_uw_uart|i_uarts|RxBitCnt_2_  & !\u_uw_uart|i_uarts|RxBitCnt_0_  & \u_uw_uart|i_uarts|RxBitCnt_3_ 

	.dataa(\u_uw_uart|i_uarts|RxBitCnt_1_ ),
	.datab(\u_uw_uart|i_uarts|RxBitCnt_2_ ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.datad(\u_uw_uart|i_uarts|RxBitCnt_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx13547z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix13547z52924 .lut_mask = 16'h0100;
defparam \u_uw_uart|i_uarts|ix13547z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y13_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix13547z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx13547z1  = \u_uw_uart|i_uarts|RxFSM_2_  & !\u_uw_uart|i_uarts|nx13547z2 

	.dataa(\u_uw_uart|i_uarts|RxFSM_2_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|nx13547z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx13547z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix13547z52923 .lut_mask = 16'h00AA;
defparam \u_uw_uart|i_uarts|ix13547z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y13_N25
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx13547z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxFSM_3_ ));

// atom is at LCCOMB_X54_Y13_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix54636z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx54636z1  = \u_uw_uart|i_uarts|TopRx  & \u_uw_uart|i_uarts|RxFSM_3_ 

	.dataa(\u_uw_uart|i_uarts|TopRx ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|RxFSM_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx54636z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix54636z52924 .lut_mask = 16'hAA00;
defparam \u_uw_uart|i_uarts|ix54636z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y13_N1
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|not_Rx_r~_wirecell_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_7_ ));

// atom is at LCCOMB_X56_Y13_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|Dout_7_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Dout_7_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_7_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Dout_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Dout_7_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Dout_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y13_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix30017z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx30017z1  = !\u_uw_uart|i_uarts|not_Rx_r  & \u_uw_uart|i_uarts|TopRx  & \u_uw_uart|i_uarts|RxFSM_5_ 

	.dataa(\u_uw_uart|i_uarts|not_Rx_r ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|TopRx ),
	.datad(\u_uw_uart|i_uarts|RxFSM_5_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx30017z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix30017z52923 .lut_mask = 16'h5000;
defparam \u_uw_uart|i_uarts|ix30017z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y13_N9
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Dout_7_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_7_ ));

// atom is at LCFF_X54_Y13_N25
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxRDYi (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx30017z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxRDY ));

// atom is at LCFF_X57_Y13_N13
cycloneii_lcell_ff \u_uw_uart|reg_rdata_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Dout_7_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_7_ ));

// atom is at LCCOMB_X58_Y13_N16
cycloneii_lcell_comb \u_uw_uart|ix47405z52923 (
// Equation(s):
// \u_uw_uart|datain_7_  = \u_uw_uart|o_pixavail  & \u_uw_uart|rdata_7_ 

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|rdata_7_ ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_7_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix47405z52923 .lut_mask = 16'hAA00;
defparam \u_uw_uart|ix47405z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X55_Y13_N16
cycloneii_lcell_comb \u_uw_uart|ix58116z52923 (
// Equation(s):
// \u_uw_uart|nx58116z1  = !\u_uw_uart|o_pixavail  & \u_uw_uart|i_uarts|RxRDY 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|o_pixavail ),
	.datad(\u_uw_uart|i_uarts|RxRDY ),
	.cin(gnd),
	.combout(\u_uw_uart|nx58116z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix58116z52923 .lut_mask = 16'h0F00;
defparam \u_uw_uart|ix58116z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X55_Y13_N17
cycloneii_lcell_ff \u_uw_uart|reg_charavail (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx58116z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|o_pixavail ));

// atom is at LCFF_X58_Y13_N17
cycloneii_lcell_ff \u_kirsch|reg_e_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|datain_7_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|e_7_ ));

// atom is at LCFF_X59_Y11_N1
cycloneii_lcell_ff \u_kirsch|reg_f_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|e_7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_7_ ));

// atom is at LCCOMB_X56_Y13_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|Rx_Reg_6_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Rx_Reg_6_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_7_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Rx_Reg_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Rx_Reg_6_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Rx_Reg_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y13_N27
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Rx_Reg_6_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_6_ ));

// atom is at LCCOMB_X56_Y13_N20
cycloneii_lcell_comb \u_uw_uart|i_uarts|Rx_Reg_5_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Rx_Reg_5_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_6_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Rx_Reg_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Rx_Reg_5_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Rx_Reg_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y13_N21
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Rx_Reg_5_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_5_ ));

// atom is at LCFF_X56_Y13_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Rx_Reg_5_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_4_ ));

// atom is at LCCOMB_X56_Y13_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|Dout_4_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Dout_4_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_4_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Dout_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Dout_4_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Dout_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y13_N15
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Dout_4_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_4_ ));

// atom is at LCCOMB_X57_Y13_N2
cycloneii_lcell_comb \u_uw_uart|rdata_4_~feeder (
// Equation(s):
// \u_uw_uart|rdata_4_~feeder_combout  = \u_uw_uart|i_uarts|Dout_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Dout_4_ ),
	.cin(gnd),
	.combout(\u_uw_uart|rdata_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|rdata_4_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|rdata_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y13_N3
cycloneii_lcell_ff \u_uw_uart|reg_rdata_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|rdata_4_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_4_ ));

// atom is at LCCOMB_X58_Y13_N6
cycloneii_lcell_comb \u_uw_uart|ix44414z52923 (
// Equation(s):
// \u_uw_uart|datain_4_  = \u_uw_uart|o_pixavail  & \u_uw_uart|rdata_4_ 

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|rdata_4_ ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_4_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix44414z52923 .lut_mask = 16'hAA00;
defparam \u_uw_uart|ix44414z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y13_N7
cycloneii_lcell_ff \u_kirsch|reg_e_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|datain_4_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|e_4_ ));

// atom is at LCFF_X59_Y11_N5
cycloneii_lcell_ff \u_kirsch|reg_f_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|e_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_4_ ));

// atom is at LCCOMB_X56_Y13_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|Rx_Reg_3_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Rx_Reg_3_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_4_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Rx_Reg_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Rx_Reg_3_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Rx_Reg_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y13_N25
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Rx_Reg_3_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_3_ ));

// atom is at LCFF_X56_Y13_N11
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Rx_Reg_3_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_2_ ));

// atom is at LCCOMB_X56_Y13_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|Rx_Reg_1_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Rx_Reg_1_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Rx_Reg_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Rx_Reg_1_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Rx_Reg_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y13_N5
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Rx_Reg_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_1_ ));

// atom is at LCFF_X56_Y13_N13
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Rx_Reg_1_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_1_ ));

// atom is at LCCOMB_X57_Y13_N24
cycloneii_lcell_comb \u_uw_uart|rdata_1_~feeder (
// Equation(s):
// \u_uw_uart|rdata_1_~feeder_combout  = \u_uw_uart|i_uarts|Dout_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Dout_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|rdata_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|rdata_1_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|rdata_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y13_N25
cycloneii_lcell_ff \u_uw_uart|reg_rdata_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|rdata_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_1_ ));

// atom is at LCCOMB_X58_Y13_N28
cycloneii_lcell_comb \u_uw_uart|ix41423z52923 (
// Equation(s):
// \u_uw_uart|datain_1_  = \u_uw_uart|o_pixavail  & \u_uw_uart|rdata_1_ 

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|rdata_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_1_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix41423z52923 .lut_mask = 16'hAA00;
defparam \u_uw_uart|ix41423z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y13_N29
cycloneii_lcell_ff \u_kirsch|reg_e_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|datain_1_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|e_1_ ));

// atom is at LCFF_X59_Y11_N29
cycloneii_lcell_ff \u_kirsch|reg_f_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|e_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_1_ ));

// atom is at LCFF_X56_Y13_N31
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Rx_Reg_1_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_0_ ));

// atom is at LCCOMB_X56_Y13_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|Dout_0_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Dout_0_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Dout_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Dout_0_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Dout_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y13_N23
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Dout_0_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_0_ ));

// atom is at LCCOMB_X57_Y13_N18
cycloneii_lcell_comb \u_uw_uart|rdata_0_~feeder (
// Equation(s):
// \u_uw_uart|rdata_0_~feeder_combout  = \u_uw_uart|i_uarts|Dout_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Dout_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|rdata_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|rdata_0_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|rdata_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y13_N19
cycloneii_lcell_ff \u_uw_uart|reg_rdata_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|rdata_0_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_0_ ));

// atom is at LCCOMB_X58_Y13_N22
cycloneii_lcell_comb \u_uw_uart|ix40426z52923 (
// Equation(s):
// \u_uw_uart|datain_0_  = \u_uw_uart|o_pixavail  & \u_uw_uart|rdata_0_ 

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|rdata_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_0_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix40426z52923 .lut_mask = 16'hAA00;
defparam \u_uw_uart|ix40426z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y13_N23
cycloneii_lcell_ff \u_kirsch|reg_e_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|datain_0_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|e_0_ ));

// atom is at LCFF_X59_Y11_N3
cycloneii_lcell_ff \u_kirsch|reg_f_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|e_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_0_ ));

// atom is at LCCOMB_X59_Y11_N8
cycloneii_lcell_comb \u_kirsch|ix20740z19328|ix23445z52931 (
// Equation(s):
// \u_kirsch|ix20740z19328|nx23445z22  = CARRY(!\u_kirsch|f_0_ )

	.dataa(vcc),
	.datab(\u_kirsch|f_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|ix20740z19328|nx23445z22 ));
// synopsys translate_off
defparam \u_kirsch|ix20740z19328|ix23445z52931 .lut_mask = 16'h0033;
defparam \u_kirsch|ix20740z19328|ix23445z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y11_N10
cycloneii_lcell_comb \u_kirsch|ix20740z19328|ix23445z52930 (
// Equation(s):
// \u_kirsch|ix20740z19328|nx23445z19  = CARRY(\u_kirsch|f_1_  # !\u_kirsch|ix20740z19328|nx23445z22 )

	.dataa(vcc),
	.datab(\u_kirsch|f_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix20740z19328|nx23445z22 ),
	.combout(),
	.cout(\u_kirsch|ix20740z19328|nx23445z19 ));
// synopsys translate_off
defparam \u_kirsch|ix20740z19328|ix23445z52930 .lut_mask = 16'h00CF;
defparam \u_kirsch|ix20740z19328|ix23445z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y11_N12
cycloneii_lcell_comb \u_kirsch|ix20740z19328|ix23445z52929 (
// Equation(s):
// \u_kirsch|ix20740z19328|nx23445z16  = CARRY(!\u_kirsch|f_2_  & !\u_kirsch|ix20740z19328|nx23445z19 )

	.dataa(\u_kirsch|f_2_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix20740z19328|nx23445z19 ),
	.combout(),
	.cout(\u_kirsch|ix20740z19328|nx23445z16 ));
// synopsys translate_off
defparam \u_kirsch|ix20740z19328|ix23445z52929 .lut_mask = 16'h0005;
defparam \u_kirsch|ix20740z19328|ix23445z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y11_N14
cycloneii_lcell_comb \u_kirsch|ix20740z19328|ix23445z52928 (
// Equation(s):
// \u_kirsch|ix20740z19328|nx23445z13  = CARRY(\u_kirsch|f_3_  # !\u_kirsch|ix20740z19328|nx23445z16 )

	.dataa(\u_kirsch|f_3_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix20740z19328|nx23445z16 ),
	.combout(),
	.cout(\u_kirsch|ix20740z19328|nx23445z13 ));
// synopsys translate_off
defparam \u_kirsch|ix20740z19328|ix23445z52928 .lut_mask = 16'h00AF;
defparam \u_kirsch|ix20740z19328|ix23445z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y11_N16
cycloneii_lcell_comb \u_kirsch|ix20740z19328|ix23445z52927 (
// Equation(s):
// \u_kirsch|ix20740z19328|nx23445z10  = CARRY(!\u_kirsch|f_4_  & !\u_kirsch|ix20740z19328|nx23445z13 )

	.dataa(vcc),
	.datab(\u_kirsch|f_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix20740z19328|nx23445z13 ),
	.combout(),
	.cout(\u_kirsch|ix20740z19328|nx23445z10 ));
// synopsys translate_off
defparam \u_kirsch|ix20740z19328|ix23445z52927 .lut_mask = 16'h0003;
defparam \u_kirsch|ix20740z19328|ix23445z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y11_N18
cycloneii_lcell_comb \u_kirsch|ix20740z19328|ix23445z52926 (
// Equation(s):
// \u_kirsch|ix20740z19328|nx23445z7  = CARRY(\u_kirsch|f_5_  # !\u_kirsch|ix20740z19328|nx23445z10 )

	.dataa(\u_kirsch|f_5_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix20740z19328|nx23445z10 ),
	.combout(),
	.cout(\u_kirsch|ix20740z19328|nx23445z7 ));
// synopsys translate_off
defparam \u_kirsch|ix20740z19328|ix23445z52926 .lut_mask = 16'h00AF;
defparam \u_kirsch|ix20740z19328|ix23445z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y11_N20
cycloneii_lcell_comb \u_kirsch|ix20740z19328|ix23445z52925 (
// Equation(s):
// \u_kirsch|ix20740z19328|nx23445z4  = CARRY(!\u_kirsch|f_6_  & !\u_kirsch|ix20740z19328|nx23445z7 )

	.dataa(\u_kirsch|f_6_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix20740z19328|nx23445z7 ),
	.combout(),
	.cout(\u_kirsch|ix20740z19328|nx23445z4 ));
// synopsys translate_off
defparam \u_kirsch|ix20740z19328|ix23445z52925 .lut_mask = 16'h0005;
defparam \u_kirsch|ix20740z19328|ix23445z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y11_N22
cycloneii_lcell_comb \u_kirsch|ix20740z19328|ix23445z52923 (
// Equation(s):
// \u_kirsch|ix20740z19328|nx23445z1  = \u_kirsch|ix20740z19328|nx23445z4  & !\u_kirsch|f_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|f_7_ ),
	.cin(\u_kirsch|ix20740z19328|nx23445z4 ),
	.combout(\u_kirsch|ix20740z19328|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20740z19328|ix23445z52923 .lut_mask = 16'h00F0;
defparam \u_kirsch|ix20740z19328|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X59_Y11_N9
cycloneii_lcell_ff \u_kirsch|reg_v_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|o_pixavail ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|v_1_ ));

// atom is at LCFF_X59_Y11_N11
cycloneii_lcell_ff \u_kirsch|reg_v_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|v_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|v_2_ ));

// atom is at LCCOMB_X60_Y13_N0
cycloneii_lcell_comb \u_kirsch|ix21064z52923 (
// Equation(s):
// \u_kirsch|nx21064z1  = \u_kirsch|v_1_  # !\u_kirsch|ix20740z19328|nx23445z1  & !\u_kirsch|v_2_ 

	.dataa(vcc),
	.datab(\u_kirsch|ix20740z19328|nx23445z1 ),
	.datac(\u_kirsch|v_1_ ),
	.datad(\u_kirsch|v_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx21064z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix21064z52923 .lut_mask = 16'hF0F3;
defparam \u_kirsch|ix21064z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y11_N30
cycloneii_lcell_comb \u_kirsch|ix33634z52923 (
// Equation(s):
// \u_kirsch|nx33634z1  = \u_kirsch|v_3_  # \u_kirsch|v_2_  # \u_kirsch|v_1_ 

	.dataa(\u_kirsch|v_3_ ),
	.datab(\u_kirsch|v_2_ ),
	.datac(\u_kirsch|v_1_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|nx33634z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix33634z52923 .lut_mask = 16'hFEFE;
defparam \u_kirsch|ix33634z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y13_N1
cycloneii_lcell_ff \u_kirsch|reg_r2_dir_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx21064z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx33634z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_dir_0_ ));

// atom is at LCCOMB_X60_Y13_N20
cycloneii_lcell_comb \u_kirsch|r2_dir_0_~_wirecell (
// Equation(s):
// \u_kirsch|r2_dir_0_~_wirecell_combout  = !\u_kirsch|r2_dir_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_dir_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|r2_dir_0_~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r2_dir_0_~_wirecell .lut_mask = 16'h00FF;
defparam \u_kirsch|r2_dir_0_~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y12_N9
cycloneii_lcell_ff \u_kirsch|reg_v_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|v_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|v_3_ ));

// atom is at LCCOMB_X62_Y13_N30
cycloneii_lcell_comb \u_kirsch|v_4_~feeder (
// Equation(s):
// \u_kirsch|v_4_~feeder_combout  = \u_kirsch|v_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|v_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|v_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|v_4_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|v_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X62_Y13_N31
cycloneii_lcell_ff \u_kirsch|reg_v_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|v_4_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|v_4_ ));

// atom is at LCFF_X60_Y11_N1
cycloneii_lcell_ff \u_kirsch|reg_v_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|v_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|v_5_ ));

// atom is at LCCOMB_X62_Y12_N22
cycloneii_lcell_comb \~GND (
// Equation(s):
// \~GND~combout  = GND

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\~GND~combout ),
	.cout());
// synopsys translate_off
defparam \~GND .lut_mask = 16'h0000;
defparam \~GND .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y13_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|Dout_6_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Dout_6_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_6_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Dout_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Dout_6_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Dout_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y13_N3
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Dout_6_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_6_ ));

// atom is at LCCOMB_X57_Y13_N14
cycloneii_lcell_comb \u_uw_uart|rdata_6_~feeder (
// Equation(s):
// \u_uw_uart|rdata_6_~feeder_combout  = \u_uw_uart|i_uarts|Dout_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Dout_6_ ),
	.cin(gnd),
	.combout(\u_uw_uart|rdata_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|rdata_6_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|rdata_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y13_N15
cycloneii_lcell_ff \u_uw_uart|reg_rdata_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|rdata_6_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_6_ ));

// atom is at LCCOMB_X58_Y13_N10
cycloneii_lcell_comb \u_uw_uart|ix46408z52923 (
// Equation(s):
// \u_uw_uart|datain_6_  = \u_uw_uart|o_pixavail  & \u_uw_uart|rdata_6_ 

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|rdata_6_ ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_6_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix46408z52923 .lut_mask = 16'hAA00;
defparam \u_uw_uart|ix46408z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y13_N11
cycloneii_lcell_ff \u_kirsch|reg_e_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|datain_6_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|e_6_ ));

// atom is at LCFF_X59_Y11_N7
cycloneii_lcell_ff \u_kirsch|reg_f_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|e_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_6_ ));

// atom is at LCFF_X56_Y13_N29
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Rx_Reg_5_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_5_ ));

// atom is at LCCOMB_X57_Y13_N16
cycloneii_lcell_comb \u_uw_uart|rdata_5_~feeder (
// Equation(s):
// \u_uw_uart|rdata_5_~feeder_combout  = \u_uw_uart|i_uarts|Dout_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Dout_5_ ),
	.cin(gnd),
	.combout(\u_uw_uart|rdata_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|rdata_5_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|rdata_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y13_N17
cycloneii_lcell_ff \u_uw_uart|reg_rdata_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|rdata_5_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_5_ ));

// atom is at LCCOMB_X58_Y13_N20
cycloneii_lcell_comb \u_uw_uart|ix45411z52923 (
// Equation(s):
// \u_uw_uart|datain_5_  = \u_uw_uart|o_pixavail  & \u_uw_uart|rdata_5_ 

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|rdata_5_ ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_5_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix45411z52923 .lut_mask = 16'hAA00;
defparam \u_uw_uart|ix45411z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y13_N21
cycloneii_lcell_ff \u_kirsch|reg_e_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|datain_5_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|e_5_ ));

// atom is at LCFF_X59_Y11_N27
cycloneii_lcell_ff \u_kirsch|reg_f_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|e_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_5_ ));

// atom is at LCFF_X56_Y13_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Rx_Reg_3_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_3_ ));

// atom is at LCCOMB_X57_Y13_N28
cycloneii_lcell_comb \u_uw_uart|rdata_3_~feeder (
// Equation(s):
// \u_uw_uart|rdata_3_~feeder_combout  = \u_uw_uart|i_uarts|Dout_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Dout_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|rdata_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|rdata_3_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|rdata_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y13_N29
cycloneii_lcell_ff \u_uw_uart|reg_rdata_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|rdata_3_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_3_ ));

// atom is at LCCOMB_X58_Y13_N8
cycloneii_lcell_comb \u_uw_uart|ix43417z52923 (
// Equation(s):
// \u_uw_uart|datain_3_  = \u_uw_uart|o_pixavail  & \u_uw_uart|rdata_3_ 

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|rdata_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_3_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix43417z52923 .lut_mask = 16'hAA00;
defparam \u_uw_uart|ix43417z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y13_N9
cycloneii_lcell_ff \u_kirsch|reg_e_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|datain_3_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|e_3_ ));

// atom is at LCCOMB_X56_Y13_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|Dout_2_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Dout_2_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Dout_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Dout_2_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Dout_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y13_N19
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Dout_2_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_2_ ));

// atom is at LCCOMB_X57_Y13_N30
cycloneii_lcell_comb \u_uw_uart|rdata_2_~feeder (
// Equation(s):
// \u_uw_uart|rdata_2_~feeder_combout  = \u_uw_uart|i_uarts|Dout_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Dout_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|rdata_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|rdata_2_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|rdata_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y13_N31
cycloneii_lcell_ff \u_uw_uart|reg_rdata_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|rdata_2_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_2_ ));

// atom is at LCCOMB_X58_Y13_N26
cycloneii_lcell_comb \u_uw_uart|ix42420z52923 (
// Equation(s):
// \u_uw_uart|datain_2_  = \u_uw_uart|o_pixavail  & \u_uw_uart|rdata_2_ 

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(vcc),
	.datac(\u_uw_uart|rdata_2_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|datain_2_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix42420z52923 .lut_mask = 16'hA0A0;
defparam \u_uw_uart|ix42420z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y13_N27
cycloneii_lcell_ff \u_kirsch|reg_e_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|datain_2_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|e_2_ ));

// atom is at LCCOMB_X60_Y12_N16
cycloneii_lcell_comb \u_kirsch|r7_add8_15i9|ix44952z52928 (
// Equation(s):
// \u_kirsch|r7_add8_15i9|nx40964z1  = \u_kirsch|f_3_  & (\u_kirsch|e_3_  & \u_kirsch|r7_add8_15i9|nx44952z16  & VCC # !\u_kirsch|e_3_  & !\u_kirsch|r7_add8_15i9|nx44952z16 ) # !\u_kirsch|f_3_  & (\u_kirsch|e_3_  & !\u_kirsch|r7_add8_15i9|nx44952z16  # 
// !\u_kirsch|e_3_  & (\u_kirsch|r7_add8_15i9|nx44952z16  # GND))
// \u_kirsch|r7_add8_15i9|nx44952z13  = CARRY(\u_kirsch|f_3_  & !\u_kirsch|e_3_  & !\u_kirsch|r7_add8_15i9|nx44952z16  # !\u_kirsch|f_3_  & (!\u_kirsch|r7_add8_15i9|nx44952z16  # !\u_kirsch|e_3_ ))

	.dataa(\u_kirsch|f_3_ ),
	.datab(\u_kirsch|e_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r7_add8_15i9|nx44952z16 ),
	.combout(\u_kirsch|r7_add8_15i9|nx40964z1 ),
	.cout(\u_kirsch|r7_add8_15i9|nx44952z13 ));
// synopsys translate_off
defparam \u_kirsch|r7_add8_15i9|ix44952z52928 .lut_mask = 16'h9617;
defparam \u_kirsch|r7_add8_15i9|ix44952z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y12_N18
cycloneii_lcell_comb \u_kirsch|r7_add8_15i9|ix44952z52927 (
// Equation(s):
// \u_kirsch|r7_add8_15i9|nx41961z1  = (\u_kirsch|f_4_  $ \u_kirsch|e_4_  $ !\u_kirsch|r7_add8_15i9|nx44952z13 ) # GND
// \u_kirsch|r7_add8_15i9|nx44952z10  = CARRY(\u_kirsch|f_4_  & (\u_kirsch|e_4_  # !\u_kirsch|r7_add8_15i9|nx44952z13 ) # !\u_kirsch|f_4_  & \u_kirsch|e_4_  & !\u_kirsch|r7_add8_15i9|nx44952z13 )

	.dataa(\u_kirsch|f_4_ ),
	.datab(\u_kirsch|e_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r7_add8_15i9|nx44952z13 ),
	.combout(\u_kirsch|r7_add8_15i9|nx41961z1 ),
	.cout(\u_kirsch|r7_add8_15i9|nx44952z10 ));
// synopsys translate_off
defparam \u_kirsch|r7_add8_15i9|ix44952z52927 .lut_mask = 16'h698E;
defparam \u_kirsch|r7_add8_15i9|ix44952z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y12_N22
cycloneii_lcell_comb \u_kirsch|r7_add8_15i9|ix44952z52925 (
// Equation(s):
// \u_kirsch|r7_add8_15i9|nx43955z1  = (\u_kirsch|e_6_  $ \u_kirsch|f_6_  $ !\u_kirsch|r7_add8_15i9|nx44952z7 ) # GND
// \u_kirsch|r7_add8_15i9|nx44952z4  = CARRY(\u_kirsch|e_6_  & (\u_kirsch|f_6_  # !\u_kirsch|r7_add8_15i9|nx44952z7 ) # !\u_kirsch|e_6_  & \u_kirsch|f_6_  & !\u_kirsch|r7_add8_15i9|nx44952z7 )

	.dataa(\u_kirsch|e_6_ ),
	.datab(\u_kirsch|f_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r7_add8_15i9|nx44952z7 ),
	.combout(\u_kirsch|r7_add8_15i9|nx43955z1 ),
	.cout(\u_kirsch|r7_add8_15i9|nx44952z4 ));
// synopsys translate_off
defparam \u_kirsch|r7_add8_15i9|ix44952z52925 .lut_mask = 16'h698E;
defparam \u_kirsch|r7_add8_15i9|ix44952z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y12_N24
cycloneii_lcell_comb \u_kirsch|r7_add8_15i9|ix44952z52923 (
// Equation(s):
// \u_kirsch|r7_add8_15i9|nx44952z1  = \u_kirsch|f_7_  & (\u_kirsch|e_7_  & \u_kirsch|r7_add8_15i9|nx44952z4  & VCC # !\u_kirsch|e_7_  & !\u_kirsch|r7_add8_15i9|nx44952z4 ) # !\u_kirsch|f_7_  & (\u_kirsch|e_7_  & !\u_kirsch|r7_add8_15i9|nx44952z4  # 
// !\u_kirsch|e_7_  & (\u_kirsch|r7_add8_15i9|nx44952z4  # GND))
// \u_kirsch|r7_add8_15i9|nx23445z2  = CARRY(\u_kirsch|f_7_  & !\u_kirsch|e_7_  & !\u_kirsch|r7_add8_15i9|nx44952z4  # !\u_kirsch|f_7_  & (!\u_kirsch|r7_add8_15i9|nx44952z4  # !\u_kirsch|e_7_ ))

	.dataa(\u_kirsch|f_7_ ),
	.datab(\u_kirsch|e_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r7_add8_15i9|nx44952z4 ),
	.combout(\u_kirsch|r7_add8_15i9|nx44952z1 ),
	.cout(\u_kirsch|r7_add8_15i9|nx23445z2 ));
// synopsys translate_off
defparam \u_kirsch|r7_add8_15i9|ix44952z52923 .lut_mask = 16'h9617;
defparam \u_kirsch|r7_add8_15i9|ix44952z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y12_N26
cycloneii_lcell_comb \u_kirsch|r7_add8_15i9|ix23445z52923 (
// Equation(s):
// \u_kirsch|r7_add8_15i9|nx23445z1  = !\u_kirsch|r7_add8_15i9|nx23445z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r7_add8_15i9|nx23445z2 ),
	.combout(\u_kirsch|r7_add8_15i9|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r7_add8_15i9|ix23445z52923 .lut_mask = 16'h0F0F;
defparam \u_kirsch|r7_add8_15i9|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X59_Y11_N19
cycloneii_lcell_ff \u_kirsch|reg_g_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|g_5_ ));

// atom is at LCFF_X59_Y11_N31
cycloneii_lcell_ff \u_kirsch|reg_f_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|e_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_2_ ));

// atom is at LCFF_X59_Y12_N1
cycloneii_lcell_ff \u_kirsch|reg_g_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|g_2_ ));

// atom is at LCFF_X59_Y12_N3
cycloneii_lcell_ff \u_kirsch|reg_g_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|g_1_ ));

// atom is at LCFF_X59_Y12_N29
cycloneii_lcell_ff \u_kirsch|reg_g_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|g_0_ ));

// atom is at LCCOMB_X61_Y12_N0
cycloneii_lcell_comb \u_kirsch|r7_add9_15i10|ix45949z52932 (
// Equation(s):
// \u_kirsch|r7_add9_15i10|nx37973z1  = \u_kirsch|r7_add8_15i9|nx37973z1  & (\u_kirsch|g_0_  $ VCC) # !\u_kirsch|r7_add8_15i9|nx37973z1  & \u_kirsch|g_0_  & VCC
// \u_kirsch|r7_add9_15i10|nx45949z24  = CARRY(\u_kirsch|r7_add8_15i9|nx37973z1  & \u_kirsch|g_0_ )

	.dataa(\u_kirsch|r7_add8_15i9|nx37973z1 ),
	.datab(\u_kirsch|g_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r7_add9_15i10|nx37973z1 ),
	.cout(\u_kirsch|r7_add9_15i10|nx45949z24 ));
// synopsys translate_off
defparam \u_kirsch|r7_add9_15i10|ix45949z52932 .lut_mask = 16'h6688;
defparam \u_kirsch|r7_add9_15i10|ix45949z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X61_Y12_N2
cycloneii_lcell_comb \u_kirsch|r7_add9_15i10|ix45949z52931 (
// Equation(s):
// \u_kirsch|r7_add9_15i10|nx38970z1  = \u_kirsch|r7_add8_15i9|nx38970z1  & (\u_kirsch|g_1_  & \u_kirsch|r7_add9_15i10|nx45949z24  & VCC # !\u_kirsch|g_1_  & !\u_kirsch|r7_add9_15i10|nx45949z24 ) # !\u_kirsch|r7_add8_15i9|nx38970z1  & (\u_kirsch|g_1_  & 
// !\u_kirsch|r7_add9_15i10|nx45949z24  # !\u_kirsch|g_1_  & (\u_kirsch|r7_add9_15i10|nx45949z24  # GND))
// \u_kirsch|r7_add9_15i10|nx45949z21  = CARRY(\u_kirsch|r7_add8_15i9|nx38970z1  & !\u_kirsch|g_1_  & !\u_kirsch|r7_add9_15i10|nx45949z24  # !\u_kirsch|r7_add8_15i9|nx38970z1  & (!\u_kirsch|r7_add9_15i10|nx45949z24  # !\u_kirsch|g_1_ ))

	.dataa(\u_kirsch|r7_add8_15i9|nx38970z1 ),
	.datab(\u_kirsch|g_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r7_add9_15i10|nx45949z24 ),
	.combout(\u_kirsch|r7_add9_15i10|nx38970z1 ),
	.cout(\u_kirsch|r7_add9_15i10|nx45949z21 ));
// synopsys translate_off
defparam \u_kirsch|r7_add9_15i10|ix45949z52931 .lut_mask = 16'h9617;
defparam \u_kirsch|r7_add9_15i10|ix45949z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y12_N4
cycloneii_lcell_comb \u_kirsch|r7_add9_15i10|ix45949z52930 (
// Equation(s):
// \u_kirsch|r7_add9_15i10|nx39967z1  = (\u_kirsch|r7_add8_15i9|nx39967z1  $ \u_kirsch|g_2_  $ !\u_kirsch|r7_add9_15i10|nx45949z21 ) # GND
// \u_kirsch|r7_add9_15i10|nx45949z18  = CARRY(\u_kirsch|r7_add8_15i9|nx39967z1  & (\u_kirsch|g_2_  # !\u_kirsch|r7_add9_15i10|nx45949z21 ) # !\u_kirsch|r7_add8_15i9|nx39967z1  & \u_kirsch|g_2_  & !\u_kirsch|r7_add9_15i10|nx45949z21 )

	.dataa(\u_kirsch|r7_add8_15i9|nx39967z1 ),
	.datab(\u_kirsch|g_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r7_add9_15i10|nx45949z21 ),
	.combout(\u_kirsch|r7_add9_15i10|nx39967z1 ),
	.cout(\u_kirsch|r7_add9_15i10|nx45949z18 ));
// synopsys translate_off
defparam \u_kirsch|r7_add9_15i10|ix45949z52930 .lut_mask = 16'h698E;
defparam \u_kirsch|r7_add9_15i10|ix45949z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y12_N6
cycloneii_lcell_comb \u_kirsch|r7_add9_15i10|ix45949z52929 (
// Equation(s):
// \u_kirsch|r7_add9_15i10|nx40964z1  = \u_kirsch|g_3_  & (\u_kirsch|r7_add8_15i9|nx40964z1  & \u_kirsch|r7_add9_15i10|nx45949z18  & VCC # !\u_kirsch|r7_add8_15i9|nx40964z1  & !\u_kirsch|r7_add9_15i10|nx45949z18 ) # !\u_kirsch|g_3_  & 
// (\u_kirsch|r7_add8_15i9|nx40964z1  & !\u_kirsch|r7_add9_15i10|nx45949z18  # !\u_kirsch|r7_add8_15i9|nx40964z1  & (\u_kirsch|r7_add9_15i10|nx45949z18  # GND))
// \u_kirsch|r7_add9_15i10|nx45949z15  = CARRY(\u_kirsch|g_3_  & !\u_kirsch|r7_add8_15i9|nx40964z1  & !\u_kirsch|r7_add9_15i10|nx45949z18  # !\u_kirsch|g_3_  & (!\u_kirsch|r7_add9_15i10|nx45949z18  # !\u_kirsch|r7_add8_15i9|nx40964z1 ))

	.dataa(\u_kirsch|g_3_ ),
	.datab(\u_kirsch|r7_add8_15i9|nx40964z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r7_add9_15i10|nx45949z18 ),
	.combout(\u_kirsch|r7_add9_15i10|nx40964z1 ),
	.cout(\u_kirsch|r7_add9_15i10|nx45949z15 ));
// synopsys translate_off
defparam \u_kirsch|r7_add9_15i10|ix45949z52929 .lut_mask = 16'h9617;
defparam \u_kirsch|r7_add9_15i10|ix45949z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y12_N8
cycloneii_lcell_comb \u_kirsch|r7_add9_15i10|ix45949z52928 (
// Equation(s):
// \u_kirsch|r7_add9_15i10|nx41961z1  = (\u_kirsch|g_4_  $ \u_kirsch|r7_add8_15i9|nx41961z1  $ !\u_kirsch|r7_add9_15i10|nx45949z15 ) # GND
// \u_kirsch|r7_add9_15i10|nx45949z12  = CARRY(\u_kirsch|g_4_  & (\u_kirsch|r7_add8_15i9|nx41961z1  # !\u_kirsch|r7_add9_15i10|nx45949z15 ) # !\u_kirsch|g_4_  & \u_kirsch|r7_add8_15i9|nx41961z1  & !\u_kirsch|r7_add9_15i10|nx45949z15 )

	.dataa(\u_kirsch|g_4_ ),
	.datab(\u_kirsch|r7_add8_15i9|nx41961z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r7_add9_15i10|nx45949z15 ),
	.combout(\u_kirsch|r7_add9_15i10|nx41961z1 ),
	.cout(\u_kirsch|r7_add9_15i10|nx45949z12 ));
// synopsys translate_off
defparam \u_kirsch|r7_add9_15i10|ix45949z52928 .lut_mask = 16'h698E;
defparam \u_kirsch|r7_add9_15i10|ix45949z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y12_N10
cycloneii_lcell_comb \u_kirsch|r7_add9_15i10|ix45949z52927 (
// Equation(s):
// \u_kirsch|r7_add9_15i10|nx42958z1  = \u_kirsch|r7_add8_15i9|nx42958z1  & (\u_kirsch|g_5_  & \u_kirsch|r7_add9_15i10|nx45949z12  & VCC # !\u_kirsch|g_5_  & !\u_kirsch|r7_add9_15i10|nx45949z12 ) # !\u_kirsch|r7_add8_15i9|nx42958z1  & (\u_kirsch|g_5_  & 
// !\u_kirsch|r7_add9_15i10|nx45949z12  # !\u_kirsch|g_5_  & (\u_kirsch|r7_add9_15i10|nx45949z12  # GND))
// \u_kirsch|r7_add9_15i10|nx45949z9  = CARRY(\u_kirsch|r7_add8_15i9|nx42958z1  & !\u_kirsch|g_5_  & !\u_kirsch|r7_add9_15i10|nx45949z12  # !\u_kirsch|r7_add8_15i9|nx42958z1  & (!\u_kirsch|r7_add9_15i10|nx45949z12  # !\u_kirsch|g_5_ ))

	.dataa(\u_kirsch|r7_add8_15i9|nx42958z1 ),
	.datab(\u_kirsch|g_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r7_add9_15i10|nx45949z12 ),
	.combout(\u_kirsch|r7_add9_15i10|nx42958z1 ),
	.cout(\u_kirsch|r7_add9_15i10|nx45949z9 ));
// synopsys translate_off
defparam \u_kirsch|r7_add9_15i10|ix45949z52927 .lut_mask = 16'h9617;
defparam \u_kirsch|r7_add9_15i10|ix45949z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y12_N12
cycloneii_lcell_comb \u_kirsch|r7_add9_15i10|ix45949z52926 (
// Equation(s):
// \u_kirsch|r7_add9_15i10|nx43955z1  = (\u_kirsch|g_6_  $ \u_kirsch|r7_add8_15i9|nx43955z1  $ !\u_kirsch|r7_add9_15i10|nx45949z9 ) # GND
// \u_kirsch|r7_add9_15i10|nx45949z6  = CARRY(\u_kirsch|g_6_  & (\u_kirsch|r7_add8_15i9|nx43955z1  # !\u_kirsch|r7_add9_15i10|nx45949z9 ) # !\u_kirsch|g_6_  & \u_kirsch|r7_add8_15i9|nx43955z1  & !\u_kirsch|r7_add9_15i10|nx45949z9 )

	.dataa(\u_kirsch|g_6_ ),
	.datab(\u_kirsch|r7_add8_15i9|nx43955z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r7_add9_15i10|nx45949z9 ),
	.combout(\u_kirsch|r7_add9_15i10|nx43955z1 ),
	.cout(\u_kirsch|r7_add9_15i10|nx45949z6 ));
// synopsys translate_off
defparam \u_kirsch|r7_add9_15i10|ix45949z52926 .lut_mask = 16'h698E;
defparam \u_kirsch|r7_add9_15i10|ix45949z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y12_N14
cycloneii_lcell_comb \u_kirsch|r7_add9_15i10|ix45949z52925 (
// Equation(s):
// \u_kirsch|r7_add9_15i10|nx44952z1  = \u_kirsch|g_7_  & (\u_kirsch|r7_add8_15i9|nx44952z1  & \u_kirsch|r7_add9_15i10|nx45949z6  & VCC # !\u_kirsch|r7_add8_15i9|nx44952z1  & !\u_kirsch|r7_add9_15i10|nx45949z6 ) # !\u_kirsch|g_7_  & 
// (\u_kirsch|r7_add8_15i9|nx44952z1  & !\u_kirsch|r7_add9_15i10|nx45949z6  # !\u_kirsch|r7_add8_15i9|nx44952z1  & (\u_kirsch|r7_add9_15i10|nx45949z6  # GND))
// \u_kirsch|r7_add9_15i10|nx45949z3  = CARRY(\u_kirsch|g_7_  & !\u_kirsch|r7_add8_15i9|nx44952z1  & !\u_kirsch|r7_add9_15i10|nx45949z6  # !\u_kirsch|g_7_  & (!\u_kirsch|r7_add9_15i10|nx45949z6  # !\u_kirsch|r7_add8_15i9|nx44952z1 ))

	.dataa(\u_kirsch|g_7_ ),
	.datab(\u_kirsch|r7_add8_15i9|nx44952z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r7_add9_15i10|nx45949z6 ),
	.combout(\u_kirsch|r7_add9_15i10|nx44952z1 ),
	.cout(\u_kirsch|r7_add9_15i10|nx45949z3 ));
// synopsys translate_off
defparam \u_kirsch|r7_add9_15i10|ix45949z52925 .lut_mask = 16'h9617;
defparam \u_kirsch|r7_add9_15i10|ix45949z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y12_N16
cycloneii_lcell_comb \u_kirsch|r7_add9_15i10|ix45949z52923 (
// Equation(s):
// \u_kirsch|r7_add9_15i10|nx45949z1  = \u_kirsch|r7_add8_15i9|nx23445z1  & (\u_kirsch|r7_add9_15i10|nx45949z3  $ GND) # !\u_kirsch|r7_add8_15i9|nx23445z1  & !\u_kirsch|r7_add9_15i10|nx45949z3  & VCC
// \u_kirsch|r7_add9_15i10|nx23445z2  = CARRY(\u_kirsch|r7_add8_15i9|nx23445z1  & !\u_kirsch|r7_add9_15i10|nx45949z3 )

	.dataa(vcc),
	.datab(\u_kirsch|r7_add8_15i9|nx23445z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r7_add9_15i10|nx45949z3 ),
	.combout(\u_kirsch|r7_add9_15i10|nx45949z1 ),
	.cout(\u_kirsch|r7_add9_15i10|nx23445z2 ));
// synopsys translate_off
defparam \u_kirsch|r7_add9_15i10|ix45949z52923 .lut_mask = 16'hC30C;
defparam \u_kirsch|r7_add9_15i10|ix45949z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y12_N18
cycloneii_lcell_comb \u_kirsch|r7_add9_15i10|ix23445z52923 (
// Equation(s):
// \u_kirsch|r7_add9_15i10|nx23445z1  = \u_kirsch|r7_add9_15i10|nx23445z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r7_add9_15i10|nx23445z2 ),
	.combout(\u_kirsch|r7_add9_15i10|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r7_add9_15i10|ix23445z52923 .lut_mask = 16'hF0F0;
defparam \u_kirsch|r7_add9_15i10|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X61_Y12_N19
cycloneii_lcell_ff \u_kirsch|reg_r7_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r7_add9_15i10|nx23445z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|v_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r7_9_ ));

// atom is at LCCOMB_X62_Y12_N20
cycloneii_lcell_comb \u_kirsch|ix47743z52924 (
// Equation(s):
// \u_kirsch|nx47743z1  = !\u_kirsch|ix47743z6956|nx23445z1  # !\u_kirsch|v_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|v_5_ ),
	.datad(\u_kirsch|ix47743z6956|nx23445z1 ),
	.cin(gnd),
	.combout(\u_kirsch|nx47743z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix47743z52924 .lut_mask = 16'h0FFF;
defparam \u_kirsch|ix47743z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X62_Y12_N23
cycloneii_lcell_ff \u_kirsch|reg_r4_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\~GND~combout ),
	.sdata(\u_kirsch|r7_9_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|v_5_ ),
	.ena(\u_kirsch|nx47743z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r4_9_ ));

// atom is at LCFF_X61_Y12_N17
cycloneii_lcell_ff \u_kirsch|reg_r7_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r7_add9_15i10|nx45949z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|v_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r7_8_ ));

// atom is at LCCOMB_X58_Y11_N18
cycloneii_lcell_comb \u_kirsch|ix20740z52924 (
// Equation(s):
// \u_kirsch|nx20740z1  = \u_kirsch|v_2_  # \u_kirsch|v_1_ 

	.dataa(vcc),
	.datab(\u_kirsch|v_2_ ),
	.datac(\u_kirsch|v_1_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|nx20740z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20740z52924 .lut_mask = 16'hFCFC;
defparam \u_kirsch|ix20740z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y11_N29
cycloneii_lcell_ff \u_kirsch|reg_g_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|g_7_ ));

// atom is at LCCOMB_X59_Y11_N30
cycloneii_lcell_comb \u_kirsch|ix20740z52927 (
// Equation(s):
// \u_kirsch|nx20740z4  = !\u_kirsch|v_1_  & \u_kirsch|v_3_  & \u_kirsch|ix20740z19328|nx23445z1 

	.dataa(\u_kirsch|v_1_ ),
	.datab(\u_kirsch|v_3_ ),
	.datac(vcc),
	.datad(\u_kirsch|ix20740z19328|nx23445z1 ),
	.cin(gnd),
	.combout(\u_kirsch|nx20740z4 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20740z52927 .lut_mask = 16'h4400;
defparam \u_kirsch|ix20740z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y11_N0
cycloneii_lcell_comb \u_kirsch|ix20740z52925 (
// Equation(s):
// \u_kirsch|nx20740z2  = \u_kirsch|nx20740z4  # \u_kirsch|v_2_  & !\u_kirsch|v_1_ 

	.dataa(\u_kirsch|v_2_ ),
	.datab(\u_kirsch|v_1_ ),
	.datac(vcc),
	.datad(\u_kirsch|nx20740z4 ),
	.cin(gnd),
	.combout(\u_kirsch|nx20740z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20740z52925 .lut_mask = 16'hFF22;
defparam \u_kirsch|ix20740z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y11_N28
cycloneii_lcell_comb \u_kirsch|ix20740z52923 (
// Equation(s):
// \u_kirsch|r2_10n1s4f1_7_  = !\u_kirsch|nx20740z2  & (\u_kirsch|nx20740z1  & (\u_kirsch|g_7_ ) # !\u_kirsch|nx20740z1  & \u_kirsch|f_7_ )

	.dataa(\u_kirsch|f_7_ ),
	.datab(\u_kirsch|nx20740z1 ),
	.datac(\u_kirsch|g_7_ ),
	.datad(\u_kirsch|nx20740z2 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_10n1s4f1_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20740z52923 .lut_mask = 16'h00E2;
defparam \u_kirsch|ix20740z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y11_N30
cycloneii_lcell_comb \u_kirsch|r2_add8_10i25|ix44952z52923 (
// Equation(s):
// \u_kirsch|r2_add8_10i25|nx44952z1  = \u_kirsch|r2_10n1s4f1_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_10n1s4f1_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|r2_add8_10i25|nx44952z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r2_add8_10i25|ix44952z52923 .lut_mask = 16'hFF00;
defparam \u_kirsch|r2_add8_10i25|ix44952z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y11_N6
cycloneii_lcell_comb \u_kirsch|ix20740z52930 (
// Equation(s):
// \u_kirsch|r2_10n1s4f1_6_  = !\u_kirsch|nx20740z2  & (\u_kirsch|nx20740z1  & \u_kirsch|g_6_  # !\u_kirsch|nx20740z1  & (\u_kirsch|f_6_ ))

	.dataa(\u_kirsch|g_6_ ),
	.datab(\u_kirsch|nx20740z1 ),
	.datac(\u_kirsch|f_6_ ),
	.datad(\u_kirsch|nx20740z2 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_10n1s4f1_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20740z52930 .lut_mask = 16'h00B8;
defparam \u_kirsch|ix20740z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y12_N24
cycloneii_lcell_comb \u_kirsch|r2_add8_10i25|ix44952z52925 (
// Equation(s):
// \u_kirsch|r2_add8_10i25|nx43955z1  = \u_kirsch|r2_10n1s4f1_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_10n1s4f1_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|r2_add8_10i25|nx43955z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r2_add8_10i25|ix44952z52925 .lut_mask = 16'hFF00;
defparam \u_kirsch|r2_add8_10i25|ix44952z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y11_N26
cycloneii_lcell_comb \u_kirsch|ix20740z52931 (
// Equation(s):
// \u_kirsch|r2_10n1s4f1_5_  = !\u_kirsch|nx20740z2  & (\u_kirsch|nx20740z1  & \u_kirsch|g_5_  # !\u_kirsch|nx20740z1  & (\u_kirsch|f_5_ ))

	.dataa(\u_kirsch|g_5_ ),
	.datab(\u_kirsch|nx20740z1 ),
	.datac(\u_kirsch|f_5_ ),
	.datad(\u_kirsch|nx20740z2 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_10n1s4f1_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20740z52931 .lut_mask = 16'h00B8;
defparam \u_kirsch|ix20740z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y11_N2
cycloneii_lcell_comb \u_kirsch|r2_add8_10i25|ix44952z52926 (
// Equation(s):
// \u_kirsch|r2_add8_10i25|nx42958z1  = \u_kirsch|r2_10n1s4f1_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_10n1s4f1_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|r2_add8_10i25|nx42958z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r2_add8_10i25|ix44952z52926 .lut_mask = 16'hFF00;
defparam \u_kirsch|r2_add8_10i25|ix44952z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y11_N4
cycloneii_lcell_comb \u_kirsch|ix20740z52932 (
// Equation(s):
// \u_kirsch|r2_10n1s4f1_4_  = !\u_kirsch|nx20740z2  & (\u_kirsch|nx20740z1  & \u_kirsch|g_4_  # !\u_kirsch|nx20740z1  & (\u_kirsch|f_4_ ))

	.dataa(\u_kirsch|g_4_ ),
	.datab(\u_kirsch|nx20740z1 ),
	.datac(\u_kirsch|f_4_ ),
	.datad(\u_kirsch|nx20740z2 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_10n1s4f1_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20740z52932 .lut_mask = 16'h00B8;
defparam \u_kirsch|ix20740z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y11_N28
cycloneii_lcell_comb \u_kirsch|r2_add8_10i25|ix44952z52927 (
// Equation(s):
// \u_kirsch|r2_add8_10i25|nx41961z1  = \u_kirsch|r2_10n1s4f1_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_10n1s4f1_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|r2_add8_10i25|nx41961z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r2_add8_10i25|ix44952z52927 .lut_mask = 16'hFF00;
defparam \u_kirsch|r2_add8_10i25|ix44952z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y12_N0
cycloneii_lcell_comb \u_kirsch|ix9650z52927 (
// Equation(s):
// \u_kirsch|r2_10n1s1f1_3_  = !\u_kirsch|v_1_  & \u_kirsch|e_3_  & !\u_kirsch|v_2_  & \u_kirsch|v_3_ 

	.dataa(\u_kirsch|v_1_ ),
	.datab(\u_kirsch|e_3_ ),
	.datac(\u_kirsch|v_2_ ),
	.datad(\u_kirsch|v_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|r2_10n1s1f1_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix9650z52927 .lut_mask = 16'h0400;
defparam \u_kirsch|ix9650z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y12_N0
cycloneii_lcell_comb \u_kirsch|ix20740z52934 (
// Equation(s):
// \u_kirsch|r2_10n1s4f1_2_  = !\u_kirsch|nx20740z2  & (\u_kirsch|nx20740z1  & (\u_kirsch|g_2_ ) # !\u_kirsch|nx20740z1  & \u_kirsch|f_2_ )

	.dataa(\u_kirsch|nx20740z1 ),
	.datab(\u_kirsch|f_2_ ),
	.datac(\u_kirsch|g_2_ ),
	.datad(\u_kirsch|nx20740z2 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_10n1s4f1_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20740z52934 .lut_mask = 16'h00E4;
defparam \u_kirsch|ix20740z52934 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y12_N26
cycloneii_lcell_comb \u_kirsch|r2_add8_10i25|ix44952z52929 (
// Equation(s):
// \u_kirsch|r2_add8_10i25|nx39967z1  = \u_kirsch|r2_10n1s4f1_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_10n1s4f1_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|r2_add8_10i25|nx39967z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r2_add8_10i25|ix44952z52929 .lut_mask = 16'hFF00;
defparam \u_kirsch|r2_add8_10i25|ix44952z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y12_N2
cycloneii_lcell_comb \u_kirsch|ix20740z52935 (
// Equation(s):
// \u_kirsch|r2_10n1s4f1_1_  = !\u_kirsch|nx20740z2  & (\u_kirsch|nx20740z1  & (\u_kirsch|g_1_ ) # !\u_kirsch|nx20740z1  & \u_kirsch|f_1_ )

	.dataa(\u_kirsch|nx20740z1 ),
	.datab(\u_kirsch|f_1_ ),
	.datac(\u_kirsch|g_1_ ),
	.datad(\u_kirsch|nx20740z2 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_10n1s4f1_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20740z52935 .lut_mask = 16'h00E4;
defparam \u_kirsch|ix20740z52935 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y12_N4
cycloneii_lcell_comb \u_kirsch|r2_add8_10i25|ix44952z52930 (
// Equation(s):
// \u_kirsch|r2_add8_10i25|nx38970z1  = \u_kirsch|r2_10n1s4f1_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_10n1s4f1_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|r2_add8_10i25|nx38970z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r2_add8_10i25|ix44952z52930 .lut_mask = 16'hFF00;
defparam \u_kirsch|r2_add8_10i25|ix44952z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y12_N28
cycloneii_lcell_comb \u_kirsch|ix20740z52936 (
// Equation(s):
// \u_kirsch|r2_10n1s4f1_0_  = !\u_kirsch|nx20740z2  & (\u_kirsch|nx20740z1  & (\u_kirsch|g_0_ ) # !\u_kirsch|nx20740z1  & \u_kirsch|f_0_ )

	.dataa(\u_kirsch|nx20740z1 ),
	.datab(\u_kirsch|f_0_ ),
	.datac(\u_kirsch|g_0_ ),
	.datad(\u_kirsch|nx20740z2 ),
	.cin(gnd),
	.combout(\u_kirsch|r2_10n1s4f1_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20740z52936 .lut_mask = 16'h00E4;
defparam \u_kirsch|ix20740z52936 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y12_N30
cycloneii_lcell_comb \u_kirsch|r2_add8_10i25|ix44952z52931 (
// Equation(s):
// \u_kirsch|r2_add8_10i25|nx37973z1  = \u_kirsch|r2_10n1s4f1_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_10n1s4f1_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|r2_add8_10i25|nx37973z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r2_add8_10i25|ix44952z52931 .lut_mask = 16'hFF00;
defparam \u_kirsch|r2_add8_10i25|ix44952z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y12_N8
cycloneii_lcell_comb \u_kirsch|r2_add9_10i26|ix45949z52932 (
// Equation(s):
// \u_kirsch|r2_add9_10i26|nx37973z1  = \u_kirsch|r2_10n1s1f1_0_  & (\u_kirsch|r2_add8_10i25|nx37973z1  $ VCC) # !\u_kirsch|r2_10n1s1f1_0_  & \u_kirsch|r2_add8_10i25|nx37973z1  & VCC
// \u_kirsch|r2_add9_10i26|nx45949z24  = CARRY(\u_kirsch|r2_10n1s1f1_0_  & \u_kirsch|r2_add8_10i25|nx37973z1 )

	.dataa(\u_kirsch|r2_10n1s1f1_0_ ),
	.datab(\u_kirsch|r2_add8_10i25|nx37973z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r2_add9_10i26|nx37973z1 ),
	.cout(\u_kirsch|r2_add9_10i26|nx45949z24 ));
// synopsys translate_off
defparam \u_kirsch|r2_add9_10i26|ix45949z52932 .lut_mask = 16'h6688;
defparam \u_kirsch|r2_add9_10i26|ix45949z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y12_N10
cycloneii_lcell_comb \u_kirsch|r2_add9_10i26|ix45949z52931 (
// Equation(s):
// \u_kirsch|r2_add9_10i26|nx38970z1  = \u_kirsch|r2_10n1s1f1_1_  & (\u_kirsch|r2_add8_10i25|nx38970z1  & \u_kirsch|r2_add9_10i26|nx45949z24  & VCC # !\u_kirsch|r2_add8_10i25|nx38970z1  & !\u_kirsch|r2_add9_10i26|nx45949z24 ) # !\u_kirsch|r2_10n1s1f1_1_  & 
// (\u_kirsch|r2_add8_10i25|nx38970z1  & !\u_kirsch|r2_add9_10i26|nx45949z24  # !\u_kirsch|r2_add8_10i25|nx38970z1  & (\u_kirsch|r2_add9_10i26|nx45949z24  # GND))
// \u_kirsch|r2_add9_10i26|nx45949z21  = CARRY(\u_kirsch|r2_10n1s1f1_1_  & !\u_kirsch|r2_add8_10i25|nx38970z1  & !\u_kirsch|r2_add9_10i26|nx45949z24  # !\u_kirsch|r2_10n1s1f1_1_  & (!\u_kirsch|r2_add9_10i26|nx45949z24  # !\u_kirsch|r2_add8_10i25|nx38970z1 ))

	.dataa(\u_kirsch|r2_10n1s1f1_1_ ),
	.datab(\u_kirsch|r2_add8_10i25|nx38970z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r2_add9_10i26|nx45949z24 ),
	.combout(\u_kirsch|r2_add9_10i26|nx38970z1 ),
	.cout(\u_kirsch|r2_add9_10i26|nx45949z21 ));
// synopsys translate_off
defparam \u_kirsch|r2_add9_10i26|ix45949z52931 .lut_mask = 16'h9617;
defparam \u_kirsch|r2_add9_10i26|ix45949z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y12_N12
cycloneii_lcell_comb \u_kirsch|r2_add9_10i26|ix45949z52930 (
// Equation(s):
// \u_kirsch|r2_add9_10i26|nx39967z1  = (\u_kirsch|r2_10n1s1f1_2_  $ \u_kirsch|r2_add8_10i25|nx39967z1  $ !\u_kirsch|r2_add9_10i26|nx45949z21 ) # GND
// \u_kirsch|r2_add9_10i26|nx45949z18  = CARRY(\u_kirsch|r2_10n1s1f1_2_  & (\u_kirsch|r2_add8_10i25|nx39967z1  # !\u_kirsch|r2_add9_10i26|nx45949z21 ) # !\u_kirsch|r2_10n1s1f1_2_  & \u_kirsch|r2_add8_10i25|nx39967z1  & !\u_kirsch|r2_add9_10i26|nx45949z21 )

	.dataa(\u_kirsch|r2_10n1s1f1_2_ ),
	.datab(\u_kirsch|r2_add8_10i25|nx39967z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r2_add9_10i26|nx45949z21 ),
	.combout(\u_kirsch|r2_add9_10i26|nx39967z1 ),
	.cout(\u_kirsch|r2_add9_10i26|nx45949z18 ));
// synopsys translate_off
defparam \u_kirsch|r2_add9_10i26|ix45949z52930 .lut_mask = 16'h698E;
defparam \u_kirsch|r2_add9_10i26|ix45949z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y12_N14
cycloneii_lcell_comb \u_kirsch|r2_add9_10i26|ix45949z52929 (
// Equation(s):
// \u_kirsch|r2_add9_10i26|nx40964z1  = \u_kirsch|r2_add8_10i25|nx40964z1  & (\u_kirsch|r2_10n1s1f1_3_  & \u_kirsch|r2_add9_10i26|nx45949z18  & VCC # !\u_kirsch|r2_10n1s1f1_3_  & !\u_kirsch|r2_add9_10i26|nx45949z18 ) # !\u_kirsch|r2_add8_10i25|nx40964z1  & 
// (\u_kirsch|r2_10n1s1f1_3_  & !\u_kirsch|r2_add9_10i26|nx45949z18  # !\u_kirsch|r2_10n1s1f1_3_  & (\u_kirsch|r2_add9_10i26|nx45949z18  # GND))
// \u_kirsch|r2_add9_10i26|nx45949z15  = CARRY(\u_kirsch|r2_add8_10i25|nx40964z1  & !\u_kirsch|r2_10n1s1f1_3_  & !\u_kirsch|r2_add9_10i26|nx45949z18  # !\u_kirsch|r2_add8_10i25|nx40964z1  & (!\u_kirsch|r2_add9_10i26|nx45949z18  # !\u_kirsch|r2_10n1s1f1_3_ ))

	.dataa(\u_kirsch|r2_add8_10i25|nx40964z1 ),
	.datab(\u_kirsch|r2_10n1s1f1_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r2_add9_10i26|nx45949z18 ),
	.combout(\u_kirsch|r2_add9_10i26|nx40964z1 ),
	.cout(\u_kirsch|r2_add9_10i26|nx45949z15 ));
// synopsys translate_off
defparam \u_kirsch|r2_add9_10i26|ix45949z52929 .lut_mask = 16'h9617;
defparam \u_kirsch|r2_add9_10i26|ix45949z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y12_N16
cycloneii_lcell_comb \u_kirsch|r2_add9_10i26|ix45949z52928 (
// Equation(s):
// \u_kirsch|r2_add9_10i26|nx41961z1  = (\u_kirsch|r2_10n1s1f1_4_  $ \u_kirsch|r2_add8_10i25|nx41961z1  $ !\u_kirsch|r2_add9_10i26|nx45949z15 ) # GND
// \u_kirsch|r2_add9_10i26|nx45949z12  = CARRY(\u_kirsch|r2_10n1s1f1_4_  & (\u_kirsch|r2_add8_10i25|nx41961z1  # !\u_kirsch|r2_add9_10i26|nx45949z15 ) # !\u_kirsch|r2_10n1s1f1_4_  & \u_kirsch|r2_add8_10i25|nx41961z1  & !\u_kirsch|r2_add9_10i26|nx45949z15 )

	.dataa(\u_kirsch|r2_10n1s1f1_4_ ),
	.datab(\u_kirsch|r2_add8_10i25|nx41961z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r2_add9_10i26|nx45949z15 ),
	.combout(\u_kirsch|r2_add9_10i26|nx41961z1 ),
	.cout(\u_kirsch|r2_add9_10i26|nx45949z12 ));
// synopsys translate_off
defparam \u_kirsch|r2_add9_10i26|ix45949z52928 .lut_mask = 16'h698E;
defparam \u_kirsch|r2_add9_10i26|ix45949z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y12_N18
cycloneii_lcell_comb \u_kirsch|r2_add9_10i26|ix45949z52927 (
// Equation(s):
// \u_kirsch|r2_add9_10i26|nx42958z1  = \u_kirsch|r2_10n1s1f1_5_  & (\u_kirsch|r2_add8_10i25|nx42958z1  & \u_kirsch|r2_add9_10i26|nx45949z12  & VCC # !\u_kirsch|r2_add8_10i25|nx42958z1  & !\u_kirsch|r2_add9_10i26|nx45949z12 ) # !\u_kirsch|r2_10n1s1f1_5_  & 
// (\u_kirsch|r2_add8_10i25|nx42958z1  & !\u_kirsch|r2_add9_10i26|nx45949z12  # !\u_kirsch|r2_add8_10i25|nx42958z1  & (\u_kirsch|r2_add9_10i26|nx45949z12  # GND))
// \u_kirsch|r2_add9_10i26|nx45949z9  = CARRY(\u_kirsch|r2_10n1s1f1_5_  & !\u_kirsch|r2_add8_10i25|nx42958z1  & !\u_kirsch|r2_add9_10i26|nx45949z12  # !\u_kirsch|r2_10n1s1f1_5_  & (!\u_kirsch|r2_add9_10i26|nx45949z12  # !\u_kirsch|r2_add8_10i25|nx42958z1 ))

	.dataa(\u_kirsch|r2_10n1s1f1_5_ ),
	.datab(\u_kirsch|r2_add8_10i25|nx42958z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r2_add9_10i26|nx45949z12 ),
	.combout(\u_kirsch|r2_add9_10i26|nx42958z1 ),
	.cout(\u_kirsch|r2_add9_10i26|nx45949z9 ));
// synopsys translate_off
defparam \u_kirsch|r2_add9_10i26|ix45949z52927 .lut_mask = 16'h9617;
defparam \u_kirsch|r2_add9_10i26|ix45949z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y12_N20
cycloneii_lcell_comb \u_kirsch|r2_add9_10i26|ix45949z52926 (
// Equation(s):
// \u_kirsch|r2_add9_10i26|nx43955z1  = (\u_kirsch|r2_10n1s1f1_6_  $ \u_kirsch|r2_add8_10i25|nx43955z1  $ !\u_kirsch|r2_add9_10i26|nx45949z9 ) # GND
// \u_kirsch|r2_add9_10i26|nx45949z6  = CARRY(\u_kirsch|r2_10n1s1f1_6_  & (\u_kirsch|r2_add8_10i25|nx43955z1  # !\u_kirsch|r2_add9_10i26|nx45949z9 ) # !\u_kirsch|r2_10n1s1f1_6_  & \u_kirsch|r2_add8_10i25|nx43955z1  & !\u_kirsch|r2_add9_10i26|nx45949z9 )

	.dataa(\u_kirsch|r2_10n1s1f1_6_ ),
	.datab(\u_kirsch|r2_add8_10i25|nx43955z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r2_add9_10i26|nx45949z9 ),
	.combout(\u_kirsch|r2_add9_10i26|nx43955z1 ),
	.cout(\u_kirsch|r2_add9_10i26|nx45949z6 ));
// synopsys translate_off
defparam \u_kirsch|r2_add9_10i26|ix45949z52926 .lut_mask = 16'h698E;
defparam \u_kirsch|r2_add9_10i26|ix45949z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X59_Y12_N22
cycloneii_lcell_comb \u_kirsch|r2_add9_10i26|ix45949z52925 (
// Equation(s):
// \u_kirsch|r2_add9_10i26|nx44952z1  = \u_kirsch|r2_10n1s1f1_7_  & (\u_kirsch|r2_add8_10i25|nx44952z1  & \u_kirsch|r2_add9_10i26|nx45949z6  & VCC # !\u_kirsch|r2_add8_10i25|nx44952z1  & !\u_kirsch|r2_add9_10i26|nx45949z6 ) # !\u_kirsch|r2_10n1s1f1_7_  & 
// (\u_kirsch|r2_add8_10i25|nx44952z1  & !\u_kirsch|r2_add9_10i26|nx45949z6  # !\u_kirsch|r2_add8_10i25|nx44952z1  & (\u_kirsch|r2_add9_10i26|nx45949z6  # GND))
// \u_kirsch|r2_add9_10i26|nx45949z3  = CARRY(\u_kirsch|r2_10n1s1f1_7_  & !\u_kirsch|r2_add8_10i25|nx44952z1  & !\u_kirsch|r2_add9_10i26|nx45949z6  # !\u_kirsch|r2_10n1s1f1_7_  & (!\u_kirsch|r2_add9_10i26|nx45949z6  # !\u_kirsch|r2_add8_10i25|nx44952z1 ))

	.dataa(\u_kirsch|r2_10n1s1f1_7_ ),
	.datab(\u_kirsch|r2_add8_10i25|nx44952z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r2_add9_10i26|nx45949z6 ),
	.combout(\u_kirsch|r2_add9_10i26|nx44952z1 ),
	.cout(\u_kirsch|r2_add9_10i26|nx45949z3 ));
// synopsys translate_off
defparam \u_kirsch|r2_add9_10i26|ix45949z52925 .lut_mask = 16'h9617;
defparam \u_kirsch|r2_add9_10i26|ix45949z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X59_Y12_N23
cycloneii_lcell_ff \u_kirsch|reg_r2_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_add9_10i26|nx44952z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx33634z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_7_ ));

// atom is at LCCOMB_X61_Y12_N28
cycloneii_lcell_comb \u_kirsch|r4_7_~feeder (
// Equation(s):
// \u_kirsch|r4_7_~feeder_combout  = \u_kirsch|r2_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|r4_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r4_7_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r4_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y12_N15
cycloneii_lcell_ff \u_kirsch|reg_r7_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r7_add9_15i10|nx44952z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|v_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r7_7_ ));

// atom is at LCFF_X61_Y12_N29
cycloneii_lcell_ff \u_kirsch|reg_r4_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r4_7_~feeder_combout ),
	.sdata(\u_kirsch|r7_7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|v_5_ ),
	.ena(\u_kirsch|nx47743z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r4_7_ ));

// atom is at LCFF_X59_Y12_N21
cycloneii_lcell_ff \u_kirsch|reg_r2_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_add9_10i26|nx43955z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx33634z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_6_ ));

// atom is at LCCOMB_X62_Y12_N28
cycloneii_lcell_comb \u_kirsch|r4_6_~feeder (
// Equation(s):
// \u_kirsch|r4_6_~feeder_combout  = \u_kirsch|r2_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|r4_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r4_6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r4_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y12_N13
cycloneii_lcell_ff \u_kirsch|reg_r7_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r7_add9_15i10|nx43955z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|v_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r7_6_ ));

// atom is at LCFF_X62_Y12_N29
cycloneii_lcell_ff \u_kirsch|reg_r4_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r4_6_~feeder_combout ),
	.sdata(\u_kirsch|r7_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|v_5_ ),
	.ena(\u_kirsch|nx47743z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r4_6_ ));

// atom is at LCFF_X61_Y12_N11
cycloneii_lcell_ff \u_kirsch|reg_r7_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r7_add9_15i10|nx42958z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|v_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r7_5_ ));

// atom is at LCFF_X59_Y12_N17
cycloneii_lcell_ff \u_kirsch|reg_r2_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_add9_10i26|nx41961z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx33634z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_4_ ));

// atom is at LCCOMB_X62_Y12_N26
cycloneii_lcell_comb \u_kirsch|r4_4_~feeder (
// Equation(s):
// \u_kirsch|r4_4_~feeder_combout  = \u_kirsch|r2_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|r4_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r4_4_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r4_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y12_N9
cycloneii_lcell_ff \u_kirsch|reg_r7_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r7_add9_15i10|nx41961z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|v_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r7_4_ ));

// atom is at LCFF_X62_Y12_N27
cycloneii_lcell_ff \u_kirsch|reg_r4_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r4_4_~feeder_combout ),
	.sdata(\u_kirsch|r7_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|v_5_ ),
	.ena(\u_kirsch|nx47743z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r4_4_ ));

// atom is at LCFF_X61_Y12_N7
cycloneii_lcell_ff \u_kirsch|reg_r7_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r7_add9_15i10|nx40964z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|v_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r7_3_ ));

// atom is at LCFF_X59_Y12_N13
cycloneii_lcell_ff \u_kirsch|reg_r2_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_add9_10i26|nx39967z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx33634z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_2_ ));

// atom is at LCCOMB_X61_Y12_N26
cycloneii_lcell_comb \u_kirsch|r4_2_~feeder (
// Equation(s):
// \u_kirsch|r4_2_~feeder_combout  = \u_kirsch|r2_2_ 

	.dataa(vcc),
	.datab(\u_kirsch|r2_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r4_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r4_2_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|r4_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y12_N5
cycloneii_lcell_ff \u_kirsch|reg_r7_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r7_add9_15i10|nx39967z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|v_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r7_2_ ));

// atom is at LCFF_X61_Y12_N27
cycloneii_lcell_ff \u_kirsch|reg_r4_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r4_2_~feeder_combout ),
	.sdata(\u_kirsch|r7_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|v_5_ ),
	.ena(\u_kirsch|nx47743z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r4_2_ ));

// atom is at LCCOMB_X61_Y12_N22
cycloneii_lcell_comb \u_kirsch|r4_1_~feeder (
// Equation(s):
// \u_kirsch|r4_1_~feeder_combout  = \u_kirsch|r2_1_ 

	.dataa(\u_kirsch|r2_1_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r4_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r4_1_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|r4_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y12_N3
cycloneii_lcell_ff \u_kirsch|reg_r7_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r7_add9_15i10|nx38970z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|v_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r7_1_ ));

// atom is at LCFF_X61_Y12_N23
cycloneii_lcell_ff \u_kirsch|reg_r4_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r4_1_~feeder_combout ),
	.sdata(\u_kirsch|r7_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|v_5_ ),
	.ena(\u_kirsch|nx47743z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r4_1_ ));

// atom is at LCFF_X59_Y12_N9
cycloneii_lcell_ff \u_kirsch|reg_r2_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_add9_10i26|nx37973z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx33634z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_0_ ));

// atom is at LCCOMB_X61_Y12_N24
cycloneii_lcell_comb \u_kirsch|r4_0_~feeder (
// Equation(s):
// \u_kirsch|r4_0_~feeder_combout  = \u_kirsch|r2_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r2_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|r4_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r4_0_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r4_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y12_N1
cycloneii_lcell_ff \u_kirsch|reg_r7_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r7_add9_15i10|nx37973z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|v_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r7_0_ ));

// atom is at LCFF_X61_Y12_N25
cycloneii_lcell_ff \u_kirsch|reg_r4_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r4_0_~feeder_combout ),
	.sdata(\u_kirsch|r7_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|v_5_ ),
	.ena(\u_kirsch|nx47743z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r4_0_ ));

// atom is at LCCOMB_X62_Y12_N0
cycloneii_lcell_comb \u_kirsch|ix47743z6956|ix23445z52933 (
// Equation(s):
// \u_kirsch|ix47743z6956|nx23445z28  = CARRY(\u_kirsch|r4_0_  # !\u_kirsch|r7_0_ )

	.dataa(\u_kirsch|r7_0_ ),
	.datab(\u_kirsch|r4_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|ix47743z6956|nx23445z28 ));
// synopsys translate_off
defparam \u_kirsch|ix47743z6956|ix23445z52933 .lut_mask = 16'h00DD;
defparam \u_kirsch|ix47743z6956|ix23445z52933 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X62_Y12_N2
cycloneii_lcell_comb \u_kirsch|ix47743z6956|ix23445z52932 (
// Equation(s):
// \u_kirsch|ix47743z6956|nx23445z25  = CARRY(\u_kirsch|r7_1_  & (!\u_kirsch|ix47743z6956|nx23445z28  # !\u_kirsch|r4_1_ ) # !\u_kirsch|r7_1_  & !\u_kirsch|r4_1_  & !\u_kirsch|ix47743z6956|nx23445z28 )

	.dataa(\u_kirsch|r7_1_ ),
	.datab(\u_kirsch|r4_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix47743z6956|nx23445z28 ),
	.combout(),
	.cout(\u_kirsch|ix47743z6956|nx23445z25 ));
// synopsys translate_off
defparam \u_kirsch|ix47743z6956|ix23445z52932 .lut_mask = 16'h002B;
defparam \u_kirsch|ix47743z6956|ix23445z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X62_Y12_N4
cycloneii_lcell_comb \u_kirsch|ix47743z6956|ix23445z52931 (
// Equation(s):
// \u_kirsch|ix47743z6956|nx23445z22  = CARRY(\u_kirsch|r7_2_  & \u_kirsch|r4_2_  & !\u_kirsch|ix47743z6956|nx23445z25  # !\u_kirsch|r7_2_  & (\u_kirsch|r4_2_  # !\u_kirsch|ix47743z6956|nx23445z25 ))

	.dataa(\u_kirsch|r7_2_ ),
	.datab(\u_kirsch|r4_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix47743z6956|nx23445z25 ),
	.combout(),
	.cout(\u_kirsch|ix47743z6956|nx23445z22 ));
// synopsys translate_off
defparam \u_kirsch|ix47743z6956|ix23445z52931 .lut_mask = 16'h004D;
defparam \u_kirsch|ix47743z6956|ix23445z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X62_Y12_N6
cycloneii_lcell_comb \u_kirsch|ix47743z6956|ix23445z52930 (
// Equation(s):
// \u_kirsch|ix47743z6956|nx23445z19  = CARRY(\u_kirsch|r4_3_  & \u_kirsch|r7_3_  & !\u_kirsch|ix47743z6956|nx23445z22  # !\u_kirsch|r4_3_  & (\u_kirsch|r7_3_  # !\u_kirsch|ix47743z6956|nx23445z22 ))

	.dataa(\u_kirsch|r4_3_ ),
	.datab(\u_kirsch|r7_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix47743z6956|nx23445z22 ),
	.combout(),
	.cout(\u_kirsch|ix47743z6956|nx23445z19 ));
// synopsys translate_off
defparam \u_kirsch|ix47743z6956|ix23445z52930 .lut_mask = 16'h004D;
defparam \u_kirsch|ix47743z6956|ix23445z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X62_Y12_N8
cycloneii_lcell_comb \u_kirsch|ix47743z6956|ix23445z52929 (
// Equation(s):
// \u_kirsch|ix47743z6956|nx23445z16  = CARRY(\u_kirsch|r7_4_  & \u_kirsch|r4_4_  & !\u_kirsch|ix47743z6956|nx23445z19  # !\u_kirsch|r7_4_  & (\u_kirsch|r4_4_  # !\u_kirsch|ix47743z6956|nx23445z19 ))

	.dataa(\u_kirsch|r7_4_ ),
	.datab(\u_kirsch|r4_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix47743z6956|nx23445z19 ),
	.combout(),
	.cout(\u_kirsch|ix47743z6956|nx23445z16 ));
// synopsys translate_off
defparam \u_kirsch|ix47743z6956|ix23445z52929 .lut_mask = 16'h004D;
defparam \u_kirsch|ix47743z6956|ix23445z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X62_Y12_N10
cycloneii_lcell_comb \u_kirsch|ix47743z6956|ix23445z52928 (
// Equation(s):
// \u_kirsch|ix47743z6956|nx23445z13  = CARRY(\u_kirsch|r4_5_  & \u_kirsch|r7_5_  & !\u_kirsch|ix47743z6956|nx23445z16  # !\u_kirsch|r4_5_  & (\u_kirsch|r7_5_  # !\u_kirsch|ix47743z6956|nx23445z16 ))

	.dataa(\u_kirsch|r4_5_ ),
	.datab(\u_kirsch|r7_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix47743z6956|nx23445z16 ),
	.combout(),
	.cout(\u_kirsch|ix47743z6956|nx23445z13 ));
// synopsys translate_off
defparam \u_kirsch|ix47743z6956|ix23445z52928 .lut_mask = 16'h004D;
defparam \u_kirsch|ix47743z6956|ix23445z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X62_Y12_N12
cycloneii_lcell_comb \u_kirsch|ix47743z6956|ix23445z52927 (
// Equation(s):
// \u_kirsch|ix47743z6956|nx23445z10  = CARRY(\u_kirsch|r7_6_  & \u_kirsch|r4_6_  & !\u_kirsch|ix47743z6956|nx23445z13  # !\u_kirsch|r7_6_  & (\u_kirsch|r4_6_  # !\u_kirsch|ix47743z6956|nx23445z13 ))

	.dataa(\u_kirsch|r7_6_ ),
	.datab(\u_kirsch|r4_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix47743z6956|nx23445z13 ),
	.combout(),
	.cout(\u_kirsch|ix47743z6956|nx23445z10 ));
// synopsys translate_off
defparam \u_kirsch|ix47743z6956|ix23445z52927 .lut_mask = 16'h004D;
defparam \u_kirsch|ix47743z6956|ix23445z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X62_Y12_N14
cycloneii_lcell_comb \u_kirsch|ix47743z6956|ix23445z52926 (
// Equation(s):
// \u_kirsch|ix47743z6956|nx23445z7  = CARRY(\u_kirsch|r7_7_  & (!\u_kirsch|ix47743z6956|nx23445z10  # !\u_kirsch|r4_7_ ) # !\u_kirsch|r7_7_  & !\u_kirsch|r4_7_  & !\u_kirsch|ix47743z6956|nx23445z10 )

	.dataa(\u_kirsch|r7_7_ ),
	.datab(\u_kirsch|r4_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix47743z6956|nx23445z10 ),
	.combout(),
	.cout(\u_kirsch|ix47743z6956|nx23445z7 ));
// synopsys translate_off
defparam \u_kirsch|ix47743z6956|ix23445z52926 .lut_mask = 16'h002B;
defparam \u_kirsch|ix47743z6956|ix23445z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X62_Y12_N16
cycloneii_lcell_comb \u_kirsch|ix47743z6956|ix23445z52925 (
// Equation(s):
// \u_kirsch|ix47743z6956|nx23445z4  = CARRY(\u_kirsch|r4_8_  & (!\u_kirsch|ix47743z6956|nx23445z7  # !\u_kirsch|r7_8_ ) # !\u_kirsch|r4_8_  & !\u_kirsch|r7_8_  & !\u_kirsch|ix47743z6956|nx23445z7 )

	.dataa(\u_kirsch|r4_8_ ),
	.datab(\u_kirsch|r7_8_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix47743z6956|nx23445z7 ),
	.combout(),
	.cout(\u_kirsch|ix47743z6956|nx23445z4 ));
// synopsys translate_off
defparam \u_kirsch|ix47743z6956|ix23445z52925 .lut_mask = 16'h002B;
defparam \u_kirsch|ix47743z6956|ix23445z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X62_Y12_N18
cycloneii_lcell_comb \u_kirsch|ix47743z6956|ix23445z52923 (
// Equation(s):
// \u_kirsch|ix47743z6956|nx23445z1  = \u_kirsch|r4_9_  & (\u_kirsch|ix47743z6956|nx23445z4  # !\u_kirsch|r7_9_ ) # !\u_kirsch|r4_9_  & \u_kirsch|ix47743z6956|nx23445z4  & !\u_kirsch|r7_9_ 

	.dataa(vcc),
	.datab(\u_kirsch|r4_9_ ),
	.datac(vcc),
	.datad(\u_kirsch|r7_9_ ),
	.cin(\u_kirsch|ix47743z6956|nx23445z4 ),
	.combout(\u_kirsch|ix47743z6956|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix47743z6956|ix23445z52923 .lut_mask = 16'hC0FC;
defparam \u_kirsch|ix47743z6956|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X62_Y12_N30
cycloneii_lcell_comb \u_kirsch|ix82z52924 (
// Equation(s):
// \u_kirsch|nx82z1  = \u_kirsch|v_5_  & !\u_kirsch|ix47743z6956|nx23445z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|v_5_ ),
	.datad(\u_kirsch|ix47743z6956|nx23445z1 ),
	.cin(gnd),
	.combout(\u_kirsch|nx82z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix82z52924 .lut_mask = 16'h00F0;
defparam \u_kirsch|ix82z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y13_N21
cycloneii_lcell_ff \u_kirsch|reg_r4_dir_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_dir_0_~_wirecell_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|nx82z1 ),
	.sload(gnd),
	.ena(\u_kirsch|nx47743z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|nx43423z1 ));

// atom is at LCCOMB_X61_Y14_N20
cycloneii_lcell_comb \u_kirsch|nx43423z1~_wirecell (
// Equation(s):
// \u_kirsch|nx43423z1~_wirecell_combout  = !\u_kirsch|nx43423z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|nx43423z1 ),
	.cin(gnd),
	.combout(\u_kirsch|nx43423z1~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|nx43423z1~_wirecell .lut_mask = 16'h00FF;
defparam \u_kirsch|nx43423z1~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X61_Y14_N22
cycloneii_lcell_comb \u_kirsch|r5_9_~feeder (
// Equation(s):
// \u_kirsch|r5_9_~feeder_combout  = \u_kirsch|r4_9_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r4_9_ ),
	.cin(gnd),
	.combout(\u_kirsch|r5_9_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r5_9_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r5_9_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X59_Y12_N24
cycloneii_lcell_comb \u_kirsch|r2_add9_10i26|ix45949z52923 (
// Equation(s):
// \u_kirsch|r2_add9_10i26|nx45949z1  = !\u_kirsch|r2_add9_10i26|nx45949z3 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r2_add9_10i26|nx45949z3 ),
	.combout(\u_kirsch|r2_add9_10i26|nx45949z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r2_add9_10i26|ix45949z52923 .lut_mask = 16'h0F0F;
defparam \u_kirsch|r2_add9_10i26|ix45949z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X59_Y12_N25
cycloneii_lcell_ff \u_kirsch|reg_r2_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_add9_10i26|nx45949z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx33634z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_8_ ));

// atom is at LCFF_X59_Y12_N19
cycloneii_lcell_ff \u_kirsch|reg_r2_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_add9_10i26|nx42958z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx33634z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_5_ ));

// atom is at LCCOMB_X61_Y12_N20
cycloneii_lcell_comb \u_kirsch|r4_5_~feeder (
// Equation(s):
// \u_kirsch|r4_5_~feeder_combout  = \u_kirsch|r2_5_ 

	.dataa(vcc),
	.datab(\u_kirsch|r2_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r4_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r4_5_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|r4_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y12_N21
cycloneii_lcell_ff \u_kirsch|reg_r4_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r4_5_~feeder_combout ),
	.sdata(\u_kirsch|r7_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|v_5_ ),
	.ena(\u_kirsch|nx47743z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r4_5_ ));

// atom is at LCFF_X59_Y12_N15
cycloneii_lcell_ff \u_kirsch|reg_r2_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_add9_10i26|nx40964z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx33634z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_3_ ));

// atom is at LCCOMB_X61_Y12_N30
cycloneii_lcell_comb \u_kirsch|r4_3_~feeder (
// Equation(s):
// \u_kirsch|r4_3_~feeder_combout  = \u_kirsch|r2_3_ 

	.dataa(vcc),
	.datab(\u_kirsch|r2_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r4_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r4_3_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|r4_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y12_N31
cycloneii_lcell_ff \u_kirsch|reg_r4_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r4_3_~feeder_combout ),
	.sdata(\u_kirsch|r7_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|v_5_ ),
	.ena(\u_kirsch|nx47743z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r4_3_ ));

// atom is at LCCOMB_X60_Y14_N12
cycloneii_lcell_comb \u_kirsch|ix9374z6956|ix23445z52933 (
// Equation(s):
// \u_kirsch|ix9374z6956|nx23445z28  = CARRY(\u_kirsch|r2_0_  # !\u_kirsch|r4_0_ )

	.dataa(\u_kirsch|r4_0_ ),
	.datab(\u_kirsch|r2_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|ix9374z6956|nx23445z28 ));
// synopsys translate_off
defparam \u_kirsch|ix9374z6956|ix23445z52933 .lut_mask = 16'h00DD;
defparam \u_kirsch|ix9374z6956|ix23445z52933 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y14_N14
cycloneii_lcell_comb \u_kirsch|ix9374z6956|ix23445z52932 (
// Equation(s):
// \u_kirsch|ix9374z6956|nx23445z25  = CARRY(\u_kirsch|r2_1_  & \u_kirsch|r4_1_  & !\u_kirsch|ix9374z6956|nx23445z28  # !\u_kirsch|r2_1_  & (\u_kirsch|r4_1_  # !\u_kirsch|ix9374z6956|nx23445z28 ))

	.dataa(\u_kirsch|r2_1_ ),
	.datab(\u_kirsch|r4_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix9374z6956|nx23445z28 ),
	.combout(),
	.cout(\u_kirsch|ix9374z6956|nx23445z25 ));
// synopsys translate_off
defparam \u_kirsch|ix9374z6956|ix23445z52932 .lut_mask = 16'h004D;
defparam \u_kirsch|ix9374z6956|ix23445z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y14_N16
cycloneii_lcell_comb \u_kirsch|ix9374z6956|ix23445z52931 (
// Equation(s):
// \u_kirsch|ix9374z6956|nx23445z22  = CARRY(\u_kirsch|r4_2_  & \u_kirsch|r2_2_  & !\u_kirsch|ix9374z6956|nx23445z25  # !\u_kirsch|r4_2_  & (\u_kirsch|r2_2_  # !\u_kirsch|ix9374z6956|nx23445z25 ))

	.dataa(\u_kirsch|r4_2_ ),
	.datab(\u_kirsch|r2_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix9374z6956|nx23445z25 ),
	.combout(),
	.cout(\u_kirsch|ix9374z6956|nx23445z22 ));
// synopsys translate_off
defparam \u_kirsch|ix9374z6956|ix23445z52931 .lut_mask = 16'h004D;
defparam \u_kirsch|ix9374z6956|ix23445z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y14_N18
cycloneii_lcell_comb \u_kirsch|ix9374z6956|ix23445z52930 (
// Equation(s):
// \u_kirsch|ix9374z6956|nx23445z19  = CARRY(\u_kirsch|r2_3_  & \u_kirsch|r4_3_  & !\u_kirsch|ix9374z6956|nx23445z22  # !\u_kirsch|r2_3_  & (\u_kirsch|r4_3_  # !\u_kirsch|ix9374z6956|nx23445z22 ))

	.dataa(\u_kirsch|r2_3_ ),
	.datab(\u_kirsch|r4_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix9374z6956|nx23445z22 ),
	.combout(),
	.cout(\u_kirsch|ix9374z6956|nx23445z19 ));
// synopsys translate_off
defparam \u_kirsch|ix9374z6956|ix23445z52930 .lut_mask = 16'h004D;
defparam \u_kirsch|ix9374z6956|ix23445z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y14_N20
cycloneii_lcell_comb \u_kirsch|ix9374z6956|ix23445z52929 (
// Equation(s):
// \u_kirsch|ix9374z6956|nx23445z16  = CARRY(\u_kirsch|r2_4_  & (!\u_kirsch|ix9374z6956|nx23445z19  # !\u_kirsch|r4_4_ ) # !\u_kirsch|r2_4_  & !\u_kirsch|r4_4_  & !\u_kirsch|ix9374z6956|nx23445z19 )

	.dataa(\u_kirsch|r2_4_ ),
	.datab(\u_kirsch|r4_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix9374z6956|nx23445z19 ),
	.combout(),
	.cout(\u_kirsch|ix9374z6956|nx23445z16 ));
// synopsys translate_off
defparam \u_kirsch|ix9374z6956|ix23445z52929 .lut_mask = 16'h002B;
defparam \u_kirsch|ix9374z6956|ix23445z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y14_N22
cycloneii_lcell_comb \u_kirsch|ix9374z6956|ix23445z52928 (
// Equation(s):
// \u_kirsch|ix9374z6956|nx23445z13  = CARRY(\u_kirsch|r2_5_  & \u_kirsch|r4_5_  & !\u_kirsch|ix9374z6956|nx23445z16  # !\u_kirsch|r2_5_  & (\u_kirsch|r4_5_  # !\u_kirsch|ix9374z6956|nx23445z16 ))

	.dataa(\u_kirsch|r2_5_ ),
	.datab(\u_kirsch|r4_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix9374z6956|nx23445z16 ),
	.combout(),
	.cout(\u_kirsch|ix9374z6956|nx23445z13 ));
// synopsys translate_off
defparam \u_kirsch|ix9374z6956|ix23445z52928 .lut_mask = 16'h004D;
defparam \u_kirsch|ix9374z6956|ix23445z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y14_N24
cycloneii_lcell_comb \u_kirsch|ix9374z6956|ix23445z52927 (
// Equation(s):
// \u_kirsch|ix9374z6956|nx23445z10  = CARRY(\u_kirsch|r2_6_  & (!\u_kirsch|ix9374z6956|nx23445z13  # !\u_kirsch|r4_6_ ) # !\u_kirsch|r2_6_  & !\u_kirsch|r4_6_  & !\u_kirsch|ix9374z6956|nx23445z13 )

	.dataa(\u_kirsch|r2_6_ ),
	.datab(\u_kirsch|r4_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix9374z6956|nx23445z13 ),
	.combout(),
	.cout(\u_kirsch|ix9374z6956|nx23445z10 ));
// synopsys translate_off
defparam \u_kirsch|ix9374z6956|ix23445z52927 .lut_mask = 16'h002B;
defparam \u_kirsch|ix9374z6956|ix23445z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y14_N26
cycloneii_lcell_comb \u_kirsch|ix9374z6956|ix23445z52926 (
// Equation(s):
// \u_kirsch|ix9374z6956|nx23445z7  = CARRY(\u_kirsch|r4_7_  & (!\u_kirsch|ix9374z6956|nx23445z10  # !\u_kirsch|r2_7_ ) # !\u_kirsch|r4_7_  & !\u_kirsch|r2_7_  & !\u_kirsch|ix9374z6956|nx23445z10 )

	.dataa(\u_kirsch|r4_7_ ),
	.datab(\u_kirsch|r2_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix9374z6956|nx23445z10 ),
	.combout(),
	.cout(\u_kirsch|ix9374z6956|nx23445z7 ));
// synopsys translate_off
defparam \u_kirsch|ix9374z6956|ix23445z52926 .lut_mask = 16'h002B;
defparam \u_kirsch|ix9374z6956|ix23445z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y14_N28
cycloneii_lcell_comb \u_kirsch|ix9374z6956|ix23445z52925 (
// Equation(s):
// \u_kirsch|ix9374z6956|nx23445z4  = CARRY(\u_kirsch|r4_8_  & \u_kirsch|r2_8_  & !\u_kirsch|ix9374z6956|nx23445z7  # !\u_kirsch|r4_8_  & (\u_kirsch|r2_8_  # !\u_kirsch|ix9374z6956|nx23445z7 ))

	.dataa(\u_kirsch|r4_8_ ),
	.datab(\u_kirsch|r2_8_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix9374z6956|nx23445z7 ),
	.combout(),
	.cout(\u_kirsch|ix9374z6956|nx23445z4 ));
// synopsys translate_off
defparam \u_kirsch|ix9374z6956|ix23445z52925 .lut_mask = 16'h004D;
defparam \u_kirsch|ix9374z6956|ix23445z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y14_N30
cycloneii_lcell_comb \u_kirsch|ix9374z6956|ix23445z52923 (
// Equation(s):
// \u_kirsch|ix9374z6956|nx23445z1  = \u_kirsch|ix9374z6956|nx23445z4  & !\u_kirsch|r4_9_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r4_9_ ),
	.cin(\u_kirsch|ix9374z6956|nx23445z4 ),
	.combout(\u_kirsch|ix9374z6956|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix9374z6956|ix23445z52923 .lut_mask = 16'h00F0;
defparam \u_kirsch|ix9374z6956|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X61_Y14_N23
cycloneii_lcell_ff \u_kirsch|reg_r5_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r5_9_~feeder_combout ),
	.sdata(\~GND~combout ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix9374z6956|nx23445z1 ),
	.ena(\u_kirsch|v_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r5_9_ ));

// atom is at LCCOMB_X62_Y12_N24
cycloneii_lcell_comb \u_kirsch|r4_8_~feeder (
// Equation(s):
// \u_kirsch|r4_8_~feeder_combout  = \u_kirsch|r2_8_ 

	.dataa(\u_kirsch|r2_8_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r4_8_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r4_8_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|r4_8_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X62_Y12_N25
cycloneii_lcell_ff \u_kirsch|reg_r4_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r4_8_~feeder_combout ),
	.sdata(\u_kirsch|r7_8_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|v_5_ ),
	.ena(\u_kirsch|nx47743z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r4_8_ ));

// atom is at LCCOMB_X61_Y14_N28
cycloneii_lcell_comb \u_kirsch|r5_6_~feeder (
// Equation(s):
// \u_kirsch|r5_6_~feeder_combout  = \u_kirsch|r4_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r4_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|r5_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r5_6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r5_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y14_N29
cycloneii_lcell_ff \u_kirsch|reg_r5_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r5_6_~feeder_combout ),
	.sdata(\u_kirsch|r2_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix9374z6956|nx23445z1 ),
	.ena(\u_kirsch|v_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r5_6_ ));

// atom is at LCCOMB_X60_Y14_N4
cycloneii_lcell_comb \u_kirsch|r5_5_~feeder (
// Equation(s):
// \u_kirsch|r5_5_~feeder_combout  = \u_kirsch|r4_5_ 

	.dataa(vcc),
	.datab(\u_kirsch|r4_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r5_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r5_5_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|r5_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y14_N5
cycloneii_lcell_ff \u_kirsch|reg_r5_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r5_5_~feeder_combout ),
	.sdata(\u_kirsch|r2_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix9374z6956|nx23445z1 ),
	.ena(\u_kirsch|v_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r5_5_ ));

// atom is at LCCOMB_X60_Y14_N6
cycloneii_lcell_comb \u_kirsch|r5_4_~feeder (
// Equation(s):
// \u_kirsch|r5_4_~feeder_combout  = \u_kirsch|r4_4_ 

	.dataa(vcc),
	.datab(\u_kirsch|r4_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r5_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r5_4_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|r5_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y14_N7
cycloneii_lcell_ff \u_kirsch|reg_r5_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r5_4_~feeder_combout ),
	.sdata(\u_kirsch|r2_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix9374z6956|nx23445z1 ),
	.ena(\u_kirsch|v_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r5_4_ ));

// atom is at LCCOMB_X60_Y14_N8
cycloneii_lcell_comb \u_kirsch|r5_3_~feeder (
// Equation(s):
// \u_kirsch|r5_3_~feeder_combout  = \u_kirsch|r4_3_ 

	.dataa(vcc),
	.datab(\u_kirsch|r4_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r5_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r5_3_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|r5_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y14_N9
cycloneii_lcell_ff \u_kirsch|reg_r5_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r5_3_~feeder_combout ),
	.sdata(\u_kirsch|r2_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix9374z6956|nx23445z1 ),
	.ena(\u_kirsch|v_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r5_3_ ));

// atom is at LCCOMB_X60_Y14_N2
cycloneii_lcell_comb \u_kirsch|r5_2_~feeder (
// Equation(s):
// \u_kirsch|r5_2_~feeder_combout  = \u_kirsch|r4_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r4_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|r5_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r5_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r5_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y14_N3
cycloneii_lcell_ff \u_kirsch|reg_r5_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r5_2_~feeder_combout ),
	.sdata(\u_kirsch|r2_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix9374z6956|nx23445z1 ),
	.ena(\u_kirsch|v_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r5_2_ ));

// atom is at LCCOMB_X61_Y14_N26
cycloneii_lcell_comb \u_kirsch|r5_0_~feeder (
// Equation(s):
// \u_kirsch|r5_0_~feeder_combout  = \u_kirsch|r4_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r4_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|r5_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r5_0_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r5_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y14_N27
cycloneii_lcell_ff \u_kirsch|reg_r5_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r5_0_~feeder_combout ),
	.sdata(\u_kirsch|r2_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix9374z6956|nx23445z1 ),
	.ena(\u_kirsch|v_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r5_0_ ));

// atom is at LCCOMB_X61_Y14_N0
cycloneii_lcell_comb \u_kirsch|ix15883z6955|ix23445z52933 (
// Equation(s):
// \u_kirsch|ix15883z6955|nx23445z28  = CARRY(\u_kirsch|r4_0_  # !\u_kirsch|r5_0_ )

	.dataa(\u_kirsch|r4_0_ ),
	.datab(\u_kirsch|r5_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|ix15883z6955|nx23445z28 ));
// synopsys translate_off
defparam \u_kirsch|ix15883z6955|ix23445z52933 .lut_mask = 16'h00BB;
defparam \u_kirsch|ix15883z6955|ix23445z52933 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X61_Y14_N2
cycloneii_lcell_comb \u_kirsch|ix15883z6955|ix23445z52932 (
// Equation(s):
// \u_kirsch|ix15883z6955|nx23445z25  = CARRY(\u_kirsch|r5_1_  & (!\u_kirsch|ix15883z6955|nx23445z28  # !\u_kirsch|r4_1_ ) # !\u_kirsch|r5_1_  & !\u_kirsch|r4_1_  & !\u_kirsch|ix15883z6955|nx23445z28 )

	.dataa(\u_kirsch|r5_1_ ),
	.datab(\u_kirsch|r4_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix15883z6955|nx23445z28 ),
	.combout(),
	.cout(\u_kirsch|ix15883z6955|nx23445z25 ));
// synopsys translate_off
defparam \u_kirsch|ix15883z6955|ix23445z52932 .lut_mask = 16'h002B;
defparam \u_kirsch|ix15883z6955|ix23445z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y14_N4
cycloneii_lcell_comb \u_kirsch|ix15883z6955|ix23445z52931 (
// Equation(s):
// \u_kirsch|ix15883z6955|nx23445z22  = CARRY(\u_kirsch|r4_2_  & (!\u_kirsch|ix15883z6955|nx23445z25  # !\u_kirsch|r5_2_ ) # !\u_kirsch|r4_2_  & !\u_kirsch|r5_2_  & !\u_kirsch|ix15883z6955|nx23445z25 )

	.dataa(\u_kirsch|r4_2_ ),
	.datab(\u_kirsch|r5_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix15883z6955|nx23445z25 ),
	.combout(),
	.cout(\u_kirsch|ix15883z6955|nx23445z22 ));
// synopsys translate_off
defparam \u_kirsch|ix15883z6955|ix23445z52931 .lut_mask = 16'h002B;
defparam \u_kirsch|ix15883z6955|ix23445z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y14_N6
cycloneii_lcell_comb \u_kirsch|ix15883z6955|ix23445z52930 (
// Equation(s):
// \u_kirsch|ix15883z6955|nx23445z19  = CARRY(\u_kirsch|r4_3_  & \u_kirsch|r5_3_  & !\u_kirsch|ix15883z6955|nx23445z22  # !\u_kirsch|r4_3_  & (\u_kirsch|r5_3_  # !\u_kirsch|ix15883z6955|nx23445z22 ))

	.dataa(\u_kirsch|r4_3_ ),
	.datab(\u_kirsch|r5_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix15883z6955|nx23445z22 ),
	.combout(),
	.cout(\u_kirsch|ix15883z6955|nx23445z19 ));
// synopsys translate_off
defparam \u_kirsch|ix15883z6955|ix23445z52930 .lut_mask = 16'h004D;
defparam \u_kirsch|ix15883z6955|ix23445z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y14_N8
cycloneii_lcell_comb \u_kirsch|ix15883z6955|ix23445z52929 (
// Equation(s):
// \u_kirsch|ix15883z6955|nx23445z16  = CARRY(\u_kirsch|r4_4_  & (!\u_kirsch|ix15883z6955|nx23445z19  # !\u_kirsch|r5_4_ ) # !\u_kirsch|r4_4_  & !\u_kirsch|r5_4_  & !\u_kirsch|ix15883z6955|nx23445z19 )

	.dataa(\u_kirsch|r4_4_ ),
	.datab(\u_kirsch|r5_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix15883z6955|nx23445z19 ),
	.combout(),
	.cout(\u_kirsch|ix15883z6955|nx23445z16 ));
// synopsys translate_off
defparam \u_kirsch|ix15883z6955|ix23445z52929 .lut_mask = 16'h002B;
defparam \u_kirsch|ix15883z6955|ix23445z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y14_N10
cycloneii_lcell_comb \u_kirsch|ix15883z6955|ix23445z52928 (
// Equation(s):
// \u_kirsch|ix15883z6955|nx23445z13  = CARRY(\u_kirsch|r4_5_  & \u_kirsch|r5_5_  & !\u_kirsch|ix15883z6955|nx23445z16  # !\u_kirsch|r4_5_  & (\u_kirsch|r5_5_  # !\u_kirsch|ix15883z6955|nx23445z16 ))

	.dataa(\u_kirsch|r4_5_ ),
	.datab(\u_kirsch|r5_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix15883z6955|nx23445z16 ),
	.combout(),
	.cout(\u_kirsch|ix15883z6955|nx23445z13 ));
// synopsys translate_off
defparam \u_kirsch|ix15883z6955|ix23445z52928 .lut_mask = 16'h004D;
defparam \u_kirsch|ix15883z6955|ix23445z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y14_N12
cycloneii_lcell_comb \u_kirsch|ix15883z6955|ix23445z52927 (
// Equation(s):
// \u_kirsch|ix15883z6955|nx23445z10  = CARRY(\u_kirsch|r4_6_  & (!\u_kirsch|ix15883z6955|nx23445z13  # !\u_kirsch|r5_6_ ) # !\u_kirsch|r4_6_  & !\u_kirsch|r5_6_  & !\u_kirsch|ix15883z6955|nx23445z13 )

	.dataa(\u_kirsch|r4_6_ ),
	.datab(\u_kirsch|r5_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix15883z6955|nx23445z13 ),
	.combout(),
	.cout(\u_kirsch|ix15883z6955|nx23445z10 ));
// synopsys translate_off
defparam \u_kirsch|ix15883z6955|ix23445z52927 .lut_mask = 16'h002B;
defparam \u_kirsch|ix15883z6955|ix23445z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y14_N14
cycloneii_lcell_comb \u_kirsch|ix15883z6955|ix23445z52926 (
// Equation(s):
// \u_kirsch|ix15883z6955|nx23445z7  = CARRY(\u_kirsch|r5_7_  & (!\u_kirsch|ix15883z6955|nx23445z10  # !\u_kirsch|r4_7_ ) # !\u_kirsch|r5_7_  & !\u_kirsch|r4_7_  & !\u_kirsch|ix15883z6955|nx23445z10 )

	.dataa(\u_kirsch|r5_7_ ),
	.datab(\u_kirsch|r4_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix15883z6955|nx23445z10 ),
	.combout(),
	.cout(\u_kirsch|ix15883z6955|nx23445z7 ));
// synopsys translate_off
defparam \u_kirsch|ix15883z6955|ix23445z52926 .lut_mask = 16'h002B;
defparam \u_kirsch|ix15883z6955|ix23445z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y14_N16
cycloneii_lcell_comb \u_kirsch|ix15883z6955|ix23445z52925 (
// Equation(s):
// \u_kirsch|ix15883z6955|nx23445z4  = CARRY(\u_kirsch|r5_8_  & \u_kirsch|r4_8_  & !\u_kirsch|ix15883z6955|nx23445z7  # !\u_kirsch|r5_8_  & (\u_kirsch|r4_8_  # !\u_kirsch|ix15883z6955|nx23445z7 ))

	.dataa(\u_kirsch|r5_8_ ),
	.datab(\u_kirsch|r4_8_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix15883z6955|nx23445z7 ),
	.combout(),
	.cout(\u_kirsch|ix15883z6955|nx23445z4 ));
// synopsys translate_off
defparam \u_kirsch|ix15883z6955|ix23445z52925 .lut_mask = 16'h004D;
defparam \u_kirsch|ix15883z6955|ix23445z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y14_N18
cycloneii_lcell_comb \u_kirsch|ix15883z6955|ix23445z52923 (
// Equation(s):
// \u_kirsch|ix15883z6955|nx23445z1  = \u_kirsch|r5_9_  & \u_kirsch|ix15883z6955|nx23445z4  & \u_kirsch|r4_9_  # !\u_kirsch|r5_9_  & (\u_kirsch|ix15883z6955|nx23445z4  # \u_kirsch|r4_9_ )

	.dataa(vcc),
	.datab(\u_kirsch|r5_9_ ),
	.datac(vcc),
	.datad(\u_kirsch|r4_9_ ),
	.cin(\u_kirsch|ix15883z6955|nx23445z4 ),
	.combout(\u_kirsch|ix15883z6955|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix15883z6955|ix23445z52923 .lut_mask = 16'hF330;
defparam \u_kirsch|ix15883z6955|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X62_Y13_N29
cycloneii_lcell_ff \u_kirsch|reg_v_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|v_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|v_6_ ));

// atom is at LCFF_X62_Y14_N5
cycloneii_lcell_ff \u_kirsch|reg_r8_dir_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r8_dir_0_~feeder_combout ),
	.sdata(\u_kirsch|nx43423z1~_wirecell_combout ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix15883z6955|nx23445z1 ),
	.ena(\u_kirsch|v_6_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r8_dir_0_ ));

// atom is at LCFF_X59_Y11_N17
cycloneii_lcell_ff \u_kirsch|reg_g_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|g_4_ ));

// atom is at LCFF_X59_Y11_N25
cycloneii_lcell_ff \u_kirsch|reg_f_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|e_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_3_ ));

// atom is at LCFF_X59_Y11_N15
cycloneii_lcell_ff \u_kirsch|reg_g_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|g_3_ ));

// atom is at LCCOMB_X60_Y11_N10
cycloneii_lcell_comb \u_kirsch|r6_add8_14i1|ix44952z52929 (
// Equation(s):
// \u_kirsch|r6_add8_14i1|nx39967z1  = (\u_kirsch|f_2_  $ \u_kirsch|g_2_  $ !\u_kirsch|r6_add8_14i1|nx44952z19 ) # GND
// \u_kirsch|r6_add8_14i1|nx44952z16  = CARRY(\u_kirsch|f_2_  & (\u_kirsch|g_2_  # !\u_kirsch|r6_add8_14i1|nx44952z19 ) # !\u_kirsch|f_2_  & \u_kirsch|g_2_  & !\u_kirsch|r6_add8_14i1|nx44952z19 )

	.dataa(\u_kirsch|f_2_ ),
	.datab(\u_kirsch|g_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r6_add8_14i1|nx44952z19 ),
	.combout(\u_kirsch|r6_add8_14i1|nx39967z1 ),
	.cout(\u_kirsch|r6_add8_14i1|nx44952z16 ));
// synopsys translate_off
defparam \u_kirsch|r6_add8_14i1|ix44952z52929 .lut_mask = 16'h698E;
defparam \u_kirsch|r6_add8_14i1|ix44952z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y11_N12
cycloneii_lcell_comb \u_kirsch|r6_add8_14i1|ix44952z52928 (
// Equation(s):
// \u_kirsch|r6_add8_14i1|nx40964z1  = \u_kirsch|f_3_  & (\u_kirsch|g_3_  & \u_kirsch|r6_add8_14i1|nx44952z16  & VCC # !\u_kirsch|g_3_  & !\u_kirsch|r6_add8_14i1|nx44952z16 ) # !\u_kirsch|f_3_  & (\u_kirsch|g_3_  & !\u_kirsch|r6_add8_14i1|nx44952z16  # 
// !\u_kirsch|g_3_  & (\u_kirsch|r6_add8_14i1|nx44952z16  # GND))
// \u_kirsch|r6_add8_14i1|nx44952z13  = CARRY(\u_kirsch|f_3_  & !\u_kirsch|g_3_  & !\u_kirsch|r6_add8_14i1|nx44952z16  # !\u_kirsch|f_3_  & (!\u_kirsch|r6_add8_14i1|nx44952z16  # !\u_kirsch|g_3_ ))

	.dataa(\u_kirsch|f_3_ ),
	.datab(\u_kirsch|g_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r6_add8_14i1|nx44952z16 ),
	.combout(\u_kirsch|r6_add8_14i1|nx40964z1 ),
	.cout(\u_kirsch|r6_add8_14i1|nx44952z13 ));
// synopsys translate_off
defparam \u_kirsch|r6_add8_14i1|ix44952z52928 .lut_mask = 16'h9617;
defparam \u_kirsch|r6_add8_14i1|ix44952z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X60_Y11_N21
cycloneii_lcell_ff \u_kirsch|reg_r6_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r6_add8_14i1|nx44952z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r6_7_ ));

// atom is at LCCOMB_X58_Y11_N4
cycloneii_lcell_comb \u_kirsch|ix30960z52924 (
// Equation(s):
// \u_kirsch|nx30960z1  = !\u_kirsch|v_2_  & !\u_kirsch|v_1_  & \u_kirsch|e_7_ 

	.dataa(vcc),
	.datab(\u_kirsch|v_2_ ),
	.datac(\u_kirsch|v_1_ ),
	.datad(\u_kirsch|e_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx30960z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix30960z52924 .lut_mask = 16'h0300;
defparam \u_kirsch|ix30960z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y11_N8
cycloneii_lcell_comb \u_kirsch|ix30960z52923 (
// Equation(s):
// \u_kirsch|r1_9n1s1f2_7_  = \u_kirsch|nx30960z1  & (\u_kirsch|v_1_  # !\u_kirsch|v_2_ )

	.dataa(\u_kirsch|v_1_ ),
	.datab(\u_kirsch|v_2_ ),
	.datac(\u_kirsch|nx30960z1 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r1_9n1s1f2_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix30960z52923 .lut_mask = 16'hB0B0;
defparam \u_kirsch|ix30960z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y11_N9
cycloneii_lcell_ff \u_kirsch|reg_r1_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r1_9n1s1f2_7_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx33634z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r1_7_ ));

// atom is at LCCOMB_X61_Y11_N18
cycloneii_lcell_comb \u_kirsch|ix38408z52924 (
// Equation(s):
// \u_kirsch|r3_11n1s1f1_7_  = \u_kirsch|v_5_  & \u_kirsch|r6_7_  # !\u_kirsch|v_5_  & (\u_kirsch|r1_7_ )

	.dataa(vcc),
	.datab(\u_kirsch|v_5_ ),
	.datac(\u_kirsch|r6_7_ ),
	.datad(\u_kirsch|r1_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|r3_11n1s1f1_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix38408z52924 .lut_mask = 16'hF3C0;
defparam \u_kirsch|ix38408z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y11_N6
cycloneii_lcell_comb \u_kirsch|ix30960z52932 (
// Equation(s):
// \u_kirsch|nx30960z5  = !\u_kirsch|v_2_  & !\u_kirsch|v_1_  & \u_kirsch|e_3_ 

	.dataa(vcc),
	.datab(\u_kirsch|v_2_ ),
	.datac(\u_kirsch|v_1_ ),
	.datad(\u_kirsch|e_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx30960z5 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix30960z52932 .lut_mask = 16'h0300;
defparam \u_kirsch|ix30960z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y11_N16
cycloneii_lcell_comb \u_kirsch|ix30960z52931 (
// Equation(s):
// \u_kirsch|r1_9n1s1f2_3_  = \u_kirsch|nx30960z5  & (\u_kirsch|v_1_  # !\u_kirsch|v_2_ )

	.dataa(vcc),
	.datab(\u_kirsch|v_2_ ),
	.datac(\u_kirsch|v_1_ ),
	.datad(\u_kirsch|nx30960z5 ),
	.cin(gnd),
	.combout(\u_kirsch|r1_9n1s1f2_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix30960z52931 .lut_mask = 16'hF300;
defparam \u_kirsch|ix30960z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y11_N17
cycloneii_lcell_ff \u_kirsch|reg_r1_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r1_9n1s1f2_3_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx33634z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r1_3_ ));

// atom is at LCFF_X60_Y11_N13
cycloneii_lcell_ff \u_kirsch|reg_r6_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r6_add8_14i1|nx40964z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r6_3_ ));

// atom is at LCCOMB_X61_Y11_N6
cycloneii_lcell_comb \u_kirsch|ix38408z52928 (
// Equation(s):
// \u_kirsch|r3_11n1s1f1_3_  = \u_kirsch|v_5_  & (\u_kirsch|r6_3_ ) # !\u_kirsch|v_5_  & \u_kirsch|r1_3_ 

	.dataa(vcc),
	.datab(\u_kirsch|r1_3_ ),
	.datac(\u_kirsch|v_5_ ),
	.datad(\u_kirsch|r6_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|r3_11n1s1f1_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix38408z52928 .lut_mask = 16'hFC0C;
defparam \u_kirsch|ix38408z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y12_N2
cycloneii_lcell_comb \u_kirsch|ix30960z52934 (
// Equation(s):
// \u_kirsch|nx30960z6  = !\u_kirsch|v_2_  & \u_kirsch|e_2_  & !\u_kirsch|v_1_ 

	.dataa(vcc),
	.datab(\u_kirsch|v_2_ ),
	.datac(\u_kirsch|e_2_ ),
	.datad(\u_kirsch|v_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx30960z6 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix30960z52934 .lut_mask = 16'h0030;
defparam \u_kirsch|ix30960z52934 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y11_N10
cycloneii_lcell_comb \u_kirsch|ix30960z52933 (
// Equation(s):
// \u_kirsch|r1_9n1s1f2_2_  = \u_kirsch|nx30960z6  & (\u_kirsch|v_1_  # !\u_kirsch|v_2_ )

	.dataa(vcc),
	.datab(\u_kirsch|v_2_ ),
	.datac(\u_kirsch|v_1_ ),
	.datad(\u_kirsch|nx30960z6 ),
	.cin(gnd),
	.combout(\u_kirsch|r1_9n1s1f2_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix30960z52933 .lut_mask = 16'hF300;
defparam \u_kirsch|ix30960z52933 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y11_N11
cycloneii_lcell_ff \u_kirsch|reg_r1_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r1_9n1s1f2_2_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx33634z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r1_2_ ));

// atom is at LCFF_X60_Y11_N11
cycloneii_lcell_ff \u_kirsch|reg_r6_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r6_add8_14i1|nx39967z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r6_2_ ));

// atom is at LCCOMB_X60_Y11_N24
cycloneii_lcell_comb \u_kirsch|ix38408z52929 (
// Equation(s):
// \u_kirsch|r3_11n1s1f1_2_  = \u_kirsch|v_5_  & (\u_kirsch|r6_2_ ) # !\u_kirsch|v_5_  & \u_kirsch|r1_2_ 

	.dataa(vcc),
	.datab(\u_kirsch|v_5_ ),
	.datac(\u_kirsch|r1_2_ ),
	.datad(\u_kirsch|r6_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|r3_11n1s1f1_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix38408z52929 .lut_mask = 16'hFC30;
defparam \u_kirsch|ix38408z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X62_Y11_N6
cycloneii_lcell_comb \u_kirsch|r3_add13_11i1|ix64792z52936 (
// Equation(s):
// \u_kirsch|r3_add13_11i1|nx37973z1  = \u_kirsch|r3_11n1s1f1_0_  & (\u_kirsch|r3_0_  $ VCC) # !\u_kirsch|r3_11n1s1f1_0_  & \u_kirsch|r3_0_  & VCC
// \u_kirsch|r3_add13_11i1|nx64792z33  = CARRY(\u_kirsch|r3_11n1s1f1_0_  & \u_kirsch|r3_0_ )

	.dataa(\u_kirsch|r3_11n1s1f1_0_ ),
	.datab(\u_kirsch|r3_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r3_add13_11i1|nx37973z1 ),
	.cout(\u_kirsch|r3_add13_11i1|nx64792z33 ));
// synopsys translate_off
defparam \u_kirsch|r3_add13_11i1|ix64792z52936 .lut_mask = 16'h6688;
defparam \u_kirsch|r3_add13_11i1|ix64792z52936 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y12_N28
cycloneii_lcell_comb \u_kirsch|ix30960z52938 (
// Equation(s):
// \u_kirsch|nx30960z8  = \u_kirsch|e_0_  & !\u_kirsch|v_2_  & !\u_kirsch|v_1_ 

	.dataa(vcc),
	.datab(\u_kirsch|e_0_ ),
	.datac(\u_kirsch|v_2_ ),
	.datad(\u_kirsch|v_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx30960z8 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix30960z52938 .lut_mask = 16'h000C;
defparam \u_kirsch|ix30960z52938 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y13_N18
cycloneii_lcell_comb \u_kirsch|ix30960z52937 (
// Equation(s):
// \u_kirsch|r1_9n1s1f2_0_  = \u_kirsch|nx30960z8  & (\u_kirsch|v_1_  # !\u_kirsch|v_2_ )

	.dataa(vcc),
	.datab(\u_kirsch|v_2_ ),
	.datac(\u_kirsch|v_1_ ),
	.datad(\u_kirsch|nx30960z8 ),
	.cin(gnd),
	.combout(\u_kirsch|r1_9n1s1f2_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix30960z52937 .lut_mask = 16'hF300;
defparam \u_kirsch|ix30960z52937 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y13_N19
cycloneii_lcell_ff \u_kirsch|reg_r1_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r1_9n1s1f2_0_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx33634z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r1_0_ ));

// atom is at LCFF_X62_Y11_N7
cycloneii_lcell_ff \u_kirsch|reg_r3_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r3_add13_11i1|nx37973z1 ),
	.sdata(\u_kirsch|r1_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|v_2_ ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r3_0_ ));

// atom is at LCCOMB_X62_Y11_N8
cycloneii_lcell_comb \u_kirsch|r3_add13_11i1|ix64792z52935 (
// Equation(s):
// \u_kirsch|r3_add13_11i1|nx38970z1  = \u_kirsch|r3_11n1s1f1_1_  & (\u_kirsch|r3_1_  & \u_kirsch|r3_add13_11i1|nx64792z33  & VCC # !\u_kirsch|r3_1_  & !\u_kirsch|r3_add13_11i1|nx64792z33 ) # !\u_kirsch|r3_11n1s1f1_1_  & (\u_kirsch|r3_1_  & 
// !\u_kirsch|r3_add13_11i1|nx64792z33  # !\u_kirsch|r3_1_  & (\u_kirsch|r3_add13_11i1|nx64792z33  # GND))
// \u_kirsch|r3_add13_11i1|nx64792z30  = CARRY(\u_kirsch|r3_11n1s1f1_1_  & !\u_kirsch|r3_1_  & !\u_kirsch|r3_add13_11i1|nx64792z33  # !\u_kirsch|r3_11n1s1f1_1_  & (!\u_kirsch|r3_add13_11i1|nx64792z33  # !\u_kirsch|r3_1_ ))

	.dataa(\u_kirsch|r3_11n1s1f1_1_ ),
	.datab(\u_kirsch|r3_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r3_add13_11i1|nx64792z33 ),
	.combout(\u_kirsch|r3_add13_11i1|nx38970z1 ),
	.cout(\u_kirsch|r3_add13_11i1|nx64792z30 ));
// synopsys translate_off
defparam \u_kirsch|r3_add13_11i1|ix64792z52935 .lut_mask = 16'h9617;
defparam \u_kirsch|r3_add13_11i1|ix64792z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y13_N30
cycloneii_lcell_comb \u_kirsch|ix30960z52936 (
// Equation(s):
// \u_kirsch|nx30960z7  = !\u_kirsch|v_2_  & !\u_kirsch|v_1_  & \u_kirsch|e_1_ 

	.dataa(vcc),
	.datab(\u_kirsch|v_2_ ),
	.datac(\u_kirsch|v_1_ ),
	.datad(\u_kirsch|e_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx30960z7 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix30960z52936 .lut_mask = 16'h0300;
defparam \u_kirsch|ix30960z52936 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y13_N24
cycloneii_lcell_comb \u_kirsch|ix30960z52935 (
// Equation(s):
// \u_kirsch|r1_9n1s1f2_1_  = \u_kirsch|nx30960z7  & (\u_kirsch|v_1_  # !\u_kirsch|v_2_ )

	.dataa(vcc),
	.datab(\u_kirsch|v_2_ ),
	.datac(\u_kirsch|v_1_ ),
	.datad(\u_kirsch|nx30960z7 ),
	.cin(gnd),
	.combout(\u_kirsch|r1_9n1s1f2_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix30960z52935 .lut_mask = 16'hF300;
defparam \u_kirsch|ix30960z52935 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y13_N25
cycloneii_lcell_ff \u_kirsch|reg_r1_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r1_9n1s1f2_1_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx33634z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r1_1_ ));

// atom is at LCFF_X62_Y11_N9
cycloneii_lcell_ff \u_kirsch|reg_r3_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r3_add13_11i1|nx38970z1 ),
	.sdata(\u_kirsch|r1_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|v_2_ ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r3_1_ ));

// atom is at LCCOMB_X62_Y11_N12
cycloneii_lcell_comb \u_kirsch|r3_add13_11i1|ix64792z52933 (
// Equation(s):
// \u_kirsch|r3_add13_11i1|nx40964z1  = \u_kirsch|r3_3_  & (\u_kirsch|r3_11n1s1f1_3_  & \u_kirsch|r3_add13_11i1|nx64792z27  & VCC # !\u_kirsch|r3_11n1s1f1_3_  & !\u_kirsch|r3_add13_11i1|nx64792z27 ) # !\u_kirsch|r3_3_  & (\u_kirsch|r3_11n1s1f1_3_  & 
// !\u_kirsch|r3_add13_11i1|nx64792z27  # !\u_kirsch|r3_11n1s1f1_3_  & (\u_kirsch|r3_add13_11i1|nx64792z27  # GND))
// \u_kirsch|r3_add13_11i1|nx64792z24  = CARRY(\u_kirsch|r3_3_  & !\u_kirsch|r3_11n1s1f1_3_  & !\u_kirsch|r3_add13_11i1|nx64792z27  # !\u_kirsch|r3_3_  & (!\u_kirsch|r3_add13_11i1|nx64792z27  # !\u_kirsch|r3_11n1s1f1_3_ ))

	.dataa(\u_kirsch|r3_3_ ),
	.datab(\u_kirsch|r3_11n1s1f1_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r3_add13_11i1|nx64792z27 ),
	.combout(\u_kirsch|r3_add13_11i1|nx40964z1 ),
	.cout(\u_kirsch|r3_add13_11i1|nx64792z24 ));
// synopsys translate_off
defparam \u_kirsch|r3_add13_11i1|ix64792z52933 .lut_mask = 16'h9617;
defparam \u_kirsch|r3_add13_11i1|ix64792z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X62_Y11_N14
cycloneii_lcell_comb \u_kirsch|r3_add13_11i1|ix64792z52932 (
// Equation(s):
// \u_kirsch|r3_add13_11i1|nx41961z1  = (\u_kirsch|r3_11n1s1f1_4_  $ \u_kirsch|r3_4_  $ !\u_kirsch|r3_add13_11i1|nx64792z24 ) # GND
// \u_kirsch|r3_add13_11i1|nx64792z21  = CARRY(\u_kirsch|r3_11n1s1f1_4_  & (\u_kirsch|r3_4_  # !\u_kirsch|r3_add13_11i1|nx64792z24 ) # !\u_kirsch|r3_11n1s1f1_4_  & \u_kirsch|r3_4_  & !\u_kirsch|r3_add13_11i1|nx64792z24 )

	.dataa(\u_kirsch|r3_11n1s1f1_4_ ),
	.datab(\u_kirsch|r3_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r3_add13_11i1|nx64792z24 ),
	.combout(\u_kirsch|r3_add13_11i1|nx41961z1 ),
	.cout(\u_kirsch|r3_add13_11i1|nx64792z21 ));
// synopsys translate_off
defparam \u_kirsch|r3_add13_11i1|ix64792z52932 .lut_mask = 16'h698E;
defparam \u_kirsch|r3_add13_11i1|ix64792z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y11_N22
cycloneii_lcell_comb \u_kirsch|ix30960z52929 (
// Equation(s):
// \u_kirsch|r1_9n1s1f2_4_  = \u_kirsch|nx30960z4  & (\u_kirsch|v_1_  # !\u_kirsch|v_2_ )

	.dataa(\u_kirsch|nx30960z4 ),
	.datab(\u_kirsch|v_2_ ),
	.datac(\u_kirsch|v_1_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r1_9n1s1f2_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix30960z52929 .lut_mask = 16'hA2A2;
defparam \u_kirsch|ix30960z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y11_N23
cycloneii_lcell_ff \u_kirsch|reg_r1_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r1_9n1s1f2_4_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx33634z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r1_4_ ));

// atom is at LCFF_X62_Y11_N15
cycloneii_lcell_ff \u_kirsch|reg_r3_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r3_add13_11i1|nx41961z1 ),
	.sdata(\u_kirsch|r1_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|v_2_ ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r3_4_ ));

// atom is at LCCOMB_X62_Y11_N16
cycloneii_lcell_comb \u_kirsch|r3_add13_11i1|ix64792z52931 (
// Equation(s):
// \u_kirsch|r3_add13_11i1|nx42958z1  = \u_kirsch|r3_11n1s1f1_5_  & (\u_kirsch|r3_5_  & \u_kirsch|r3_add13_11i1|nx64792z21  & VCC # !\u_kirsch|r3_5_  & !\u_kirsch|r3_add13_11i1|nx64792z21 ) # !\u_kirsch|r3_11n1s1f1_5_  & (\u_kirsch|r3_5_  & 
// !\u_kirsch|r3_add13_11i1|nx64792z21  # !\u_kirsch|r3_5_  & (\u_kirsch|r3_add13_11i1|nx64792z21  # GND))
// \u_kirsch|r3_add13_11i1|nx64792z18  = CARRY(\u_kirsch|r3_11n1s1f1_5_  & !\u_kirsch|r3_5_  & !\u_kirsch|r3_add13_11i1|nx64792z21  # !\u_kirsch|r3_11n1s1f1_5_  & (!\u_kirsch|r3_add13_11i1|nx64792z21  # !\u_kirsch|r3_5_ ))

	.dataa(\u_kirsch|r3_11n1s1f1_5_ ),
	.datab(\u_kirsch|r3_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r3_add13_11i1|nx64792z21 ),
	.combout(\u_kirsch|r3_add13_11i1|nx42958z1 ),
	.cout(\u_kirsch|r3_add13_11i1|nx64792z18 ));
// synopsys translate_off
defparam \u_kirsch|r3_add13_11i1|ix64792z52931 .lut_mask = 16'h9617;
defparam \u_kirsch|r3_add13_11i1|ix64792z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y11_N26
cycloneii_lcell_comb \u_kirsch|ix30960z52928 (
// Equation(s):
// \u_kirsch|nx30960z3  = !\u_kirsch|v_2_  & !\u_kirsch|v_1_  & \u_kirsch|e_5_ 

	.dataa(vcc),
	.datab(\u_kirsch|v_2_ ),
	.datac(\u_kirsch|v_1_ ),
	.datad(\u_kirsch|e_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx30960z3 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix30960z52928 .lut_mask = 16'h0300;
defparam \u_kirsch|ix30960z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X58_Y11_N12
cycloneii_lcell_comb \u_kirsch|ix30960z52927 (
// Equation(s):
// \u_kirsch|r1_9n1s1f2_5_  = \u_kirsch|nx30960z3  & (\u_kirsch|v_1_  # !\u_kirsch|v_2_ )

	.dataa(vcc),
	.datab(\u_kirsch|v_2_ ),
	.datac(\u_kirsch|v_1_ ),
	.datad(\u_kirsch|nx30960z3 ),
	.cin(gnd),
	.combout(\u_kirsch|r1_9n1s1f2_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix30960z52927 .lut_mask = 16'hF300;
defparam \u_kirsch|ix30960z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y11_N13
cycloneii_lcell_ff \u_kirsch|reg_r1_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r1_9n1s1f2_5_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx33634z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r1_5_ ));

// atom is at LCFF_X62_Y11_N17
cycloneii_lcell_ff \u_kirsch|reg_r3_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r3_add13_11i1|nx42958z1 ),
	.sdata(\u_kirsch|r1_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|v_2_ ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r3_5_ ));

// atom is at LCCOMB_X62_Y11_N18
cycloneii_lcell_comb \u_kirsch|r3_add13_11i1|ix64792z52930 (
// Equation(s):
// \u_kirsch|r3_add13_11i1|nx43955z1  = (\u_kirsch|r3_11n1s1f1_6_  $ \u_kirsch|r3_6_  $ !\u_kirsch|r3_add13_11i1|nx64792z18 ) # GND
// \u_kirsch|r3_add13_11i1|nx64792z15  = CARRY(\u_kirsch|r3_11n1s1f1_6_  & (\u_kirsch|r3_6_  # !\u_kirsch|r3_add13_11i1|nx64792z18 ) # !\u_kirsch|r3_11n1s1f1_6_  & \u_kirsch|r3_6_  & !\u_kirsch|r3_add13_11i1|nx64792z18 )

	.dataa(\u_kirsch|r3_11n1s1f1_6_ ),
	.datab(\u_kirsch|r3_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r3_add13_11i1|nx64792z18 ),
	.combout(\u_kirsch|r3_add13_11i1|nx43955z1 ),
	.cout(\u_kirsch|r3_add13_11i1|nx64792z15 ));
// synopsys translate_off
defparam \u_kirsch|r3_add13_11i1|ix64792z52930 .lut_mask = 16'h698E;
defparam \u_kirsch|r3_add13_11i1|ix64792z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X58_Y11_N2
cycloneii_lcell_comb \u_kirsch|ix30960z52925 (
// Equation(s):
// \u_kirsch|r1_9n1s1f2_6_  = \u_kirsch|nx30960z2  & (\u_kirsch|v_1_  # !\u_kirsch|v_2_ )

	.dataa(\u_kirsch|nx30960z2 ),
	.datab(\u_kirsch|v_2_ ),
	.datac(\u_kirsch|v_1_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r1_9n1s1f2_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix30960z52925 .lut_mask = 16'hA2A2;
defparam \u_kirsch|ix30960z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X58_Y11_N3
cycloneii_lcell_ff \u_kirsch|reg_r1_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r1_9n1s1f2_6_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx33634z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r1_6_ ));

// atom is at LCFF_X62_Y11_N19
cycloneii_lcell_ff \u_kirsch|reg_r3_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r3_add13_11i1|nx43955z1 ),
	.sdata(\u_kirsch|r1_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|v_2_ ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r3_6_ ));

// atom is at LCCOMB_X62_Y11_N22
cycloneii_lcell_comb \u_kirsch|r3_add13_11i1|ix64792z52928 (
// Equation(s):
// \u_kirsch|r3_add13_11i1|nx45949z1  = (\u_kirsch|r3_11n1s1f1_8_  $ \u_kirsch|r3_8_  $ !\u_kirsch|r3_add13_11i1|nx64792z12 ) # GND
// \u_kirsch|r3_add13_11i1|nx64792z9  = CARRY(\u_kirsch|r3_11n1s1f1_8_  & (\u_kirsch|r3_8_  # !\u_kirsch|r3_add13_11i1|nx64792z12 ) # !\u_kirsch|r3_11n1s1f1_8_  & \u_kirsch|r3_8_  & !\u_kirsch|r3_add13_11i1|nx64792z12 )

	.dataa(\u_kirsch|r3_11n1s1f1_8_ ),
	.datab(\u_kirsch|r3_8_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r3_add13_11i1|nx64792z12 ),
	.combout(\u_kirsch|r3_add13_11i1|nx45949z1 ),
	.cout(\u_kirsch|r3_add13_11i1|nx64792z9 ));
// synopsys translate_off
defparam \u_kirsch|r3_add13_11i1|ix64792z52928 .lut_mask = 16'h698E;
defparam \u_kirsch|r3_add13_11i1|ix64792z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X62_Y11_N23
cycloneii_lcell_ff \u_kirsch|reg_r3_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r3_add13_11i1|nx45949z1 ),
	.sdata(\~GND~combout ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|v_2_ ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r3_8_ ));

// atom is at LCCOMB_X62_Y11_N24
cycloneii_lcell_comb \u_kirsch|r3_add13_11i1|ix64792z52927 (
// Equation(s):
// \u_kirsch|r3_add13_11i1|nx46946z1  = \u_kirsch|r3_9_  & !\u_kirsch|r3_add13_11i1|nx64792z9  # !\u_kirsch|r3_9_  & (\u_kirsch|r3_add13_11i1|nx64792z9  # GND)
// \u_kirsch|r3_add13_11i1|nx64792z7  = CARRY(!\u_kirsch|r3_add13_11i1|nx64792z9  # !\u_kirsch|r3_9_ )

	.dataa(vcc),
	.datab(\u_kirsch|r3_9_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r3_add13_11i1|nx64792z9 ),
	.combout(\u_kirsch|r3_add13_11i1|nx46946z1 ),
	.cout(\u_kirsch|r3_add13_11i1|nx64792z7 ));
// synopsys translate_off
defparam \u_kirsch|r3_add13_11i1|ix64792z52927 .lut_mask = 16'h3C3F;
defparam \u_kirsch|r3_add13_11i1|ix64792z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X63_Y11_N25
cycloneii_lcell_ff \u_kirsch|reg_r3_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r3_add13_11i1|nx46946z1 ),
	.aclr(gnd),
	.sclr(\u_kirsch|v_2_ ),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r3_9_ ));

// atom is at LCCOMB_X62_Y11_N26
cycloneii_lcell_comb \u_kirsch|r3_add13_11i1|ix64792z52926 (
// Equation(s):
// \u_kirsch|r3_add13_11i1|nx62798z1  = \u_kirsch|r3_10_  & (\u_kirsch|r3_add13_11i1|nx64792z7  $ GND) # !\u_kirsch|r3_10_  & !\u_kirsch|r3_add13_11i1|nx64792z7  & VCC
// \u_kirsch|r3_add13_11i1|nx64792z5  = CARRY(\u_kirsch|r3_10_  & !\u_kirsch|r3_add13_11i1|nx64792z7 )

	.dataa(\u_kirsch|r3_10_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r3_add13_11i1|nx64792z7 ),
	.combout(\u_kirsch|r3_add13_11i1|nx62798z1 ),
	.cout(\u_kirsch|r3_add13_11i1|nx64792z5 ));
// synopsys translate_off
defparam \u_kirsch|r3_add13_11i1|ix64792z52926 .lut_mask = 16'hA50A;
defparam \u_kirsch|r3_add13_11i1|ix64792z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X63_Y11_N29
cycloneii_lcell_ff \u_kirsch|reg_r3_11_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r3_add13_11i1|nx63795z1 ),
	.aclr(gnd),
	.sclr(\u_kirsch|v_2_ ),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r3_11_ ));

// atom is at LCFF_X63_Y11_N27
cycloneii_lcell_ff \u_kirsch|reg_r3_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r3_add13_11i1|nx62798z1 ),
	.aclr(gnd),
	.sclr(\u_kirsch|v_2_ ),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r3_10_ ));

// atom is at LCFF_X62_Y11_N13
cycloneii_lcell_ff \u_kirsch|reg_r3_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r3_add13_11i1|nx40964z1 ),
	.sdata(\u_kirsch|r1_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|v_2_ ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r3_3_ ));

// atom is at LCCOMB_X63_Y11_N0
cycloneii_lcell_comb \u_kirsch|r9_add12_17i1|ix63795z52935 (
// Equation(s):
// \u_kirsch|r9_add12_17i1|nx37973z1  = \u_kirsch|r3_1_  & (\u_kirsch|r3_0_  $ VCC) # !\u_kirsch|r3_1_  & \u_kirsch|r3_0_  & VCC
// \u_kirsch|r9_add12_17i1|nx63795z24  = CARRY(\u_kirsch|r3_1_  & \u_kirsch|r3_0_ )

	.dataa(\u_kirsch|r3_1_ ),
	.datab(\u_kirsch|r3_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r9_add12_17i1|nx37973z1 ),
	.cout(\u_kirsch|r9_add12_17i1|nx63795z24 ));
// synopsys translate_off
defparam \u_kirsch|r9_add12_17i1|ix63795z52935 .lut_mask = 16'h6688;
defparam \u_kirsch|r9_add12_17i1|ix63795z52935 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X63_Y11_N4
cycloneii_lcell_comb \u_kirsch|r9_add12_17i1|ix63795z52933 (
// Equation(s):
// \u_kirsch|r9_add12_17i1|nx39967z1  = (\u_kirsch|r3_2_  $ \u_kirsch|r3_3_  $ !\u_kirsch|r9_add12_17i1|nx63795z22 ) # GND
// \u_kirsch|r9_add12_17i1|nx63795z20  = CARRY(\u_kirsch|r3_2_  & (\u_kirsch|r3_3_  # !\u_kirsch|r9_add12_17i1|nx63795z22 ) # !\u_kirsch|r3_2_  & \u_kirsch|r3_3_  & !\u_kirsch|r9_add12_17i1|nx63795z22 )

	.dataa(\u_kirsch|r3_2_ ),
	.datab(\u_kirsch|r3_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r9_add12_17i1|nx63795z22 ),
	.combout(\u_kirsch|r9_add12_17i1|nx39967z1 ),
	.cout(\u_kirsch|r9_add12_17i1|nx63795z20 ));
// synopsys translate_off
defparam \u_kirsch|r9_add12_17i1|ix63795z52933 .lut_mask = 16'h698E;
defparam \u_kirsch|r9_add12_17i1|ix63795z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X63_Y11_N8
cycloneii_lcell_comb \u_kirsch|r9_add12_17i1|ix63795z52931 (
// Equation(s):
// \u_kirsch|r9_add12_17i1|nx41961z1  = (\u_kirsch|r3_4_  $ \u_kirsch|r3_5_  $ !\u_kirsch|r9_add12_17i1|nx63795z18 ) # GND
// \u_kirsch|r9_add12_17i1|nx63795z16  = CARRY(\u_kirsch|r3_4_  & (\u_kirsch|r3_5_  # !\u_kirsch|r9_add12_17i1|nx63795z18 ) # !\u_kirsch|r3_4_  & \u_kirsch|r3_5_  & !\u_kirsch|r9_add12_17i1|nx63795z18 )

	.dataa(\u_kirsch|r3_4_ ),
	.datab(\u_kirsch|r3_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r9_add12_17i1|nx63795z18 ),
	.combout(\u_kirsch|r9_add12_17i1|nx41961z1 ),
	.cout(\u_kirsch|r9_add12_17i1|nx63795z16 ));
// synopsys translate_off
defparam \u_kirsch|r9_add12_17i1|ix63795z52931 .lut_mask = 16'h698E;
defparam \u_kirsch|r9_add12_17i1|ix63795z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X63_Y11_N12
cycloneii_lcell_comb \u_kirsch|r9_add12_17i1|ix63795z52929 (
// Equation(s):
// \u_kirsch|r9_add12_17i1|nx43955z1  = (\u_kirsch|r3_7_  $ \u_kirsch|r3_6_  $ !\u_kirsch|r9_add12_17i1|nx63795z14 ) # GND
// \u_kirsch|r9_add12_17i1|nx63795z12  = CARRY(\u_kirsch|r3_7_  & (\u_kirsch|r3_6_  # !\u_kirsch|r9_add12_17i1|nx63795z14 ) # !\u_kirsch|r3_7_  & \u_kirsch|r3_6_  & !\u_kirsch|r9_add12_17i1|nx63795z14 )

	.dataa(\u_kirsch|r3_7_ ),
	.datab(\u_kirsch|r3_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r9_add12_17i1|nx63795z14 ),
	.combout(\u_kirsch|r9_add12_17i1|nx43955z1 ),
	.cout(\u_kirsch|r9_add12_17i1|nx63795z12 ));
// synopsys translate_off
defparam \u_kirsch|r9_add12_17i1|ix63795z52929 .lut_mask = 16'h698E;
defparam \u_kirsch|r9_add12_17i1|ix63795z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X63_Y11_N16
cycloneii_lcell_comb \u_kirsch|r9_add12_17i1|ix63795z52927 (
// Equation(s):
// \u_kirsch|r9_add12_17i1|nx45949z1  = (\u_kirsch|r3_9_  $ \u_kirsch|r3_8_  $ !\u_kirsch|r9_add12_17i1|nx63795z10 ) # GND
// \u_kirsch|r9_add12_17i1|nx63795z8  = CARRY(\u_kirsch|r3_9_  & (\u_kirsch|r3_8_  # !\u_kirsch|r9_add12_17i1|nx63795z10 ) # !\u_kirsch|r3_9_  & \u_kirsch|r3_8_  & !\u_kirsch|r9_add12_17i1|nx63795z10 )

	.dataa(\u_kirsch|r3_9_ ),
	.datab(\u_kirsch|r3_8_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|r9_add12_17i1|nx63795z10 ),
	.combout(\u_kirsch|r9_add12_17i1|nx45949z1 ),
	.cout(\u_kirsch|r9_add12_17i1|nx63795z8 ));
// synopsys translate_off
defparam \u_kirsch|r9_add12_17i1|ix63795z52927 .lut_mask = 16'h698E;
defparam \u_kirsch|r9_add12_17i1|ix63795z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X63_Y11_N21
cycloneii_lcell_ff \u_kirsch|reg_r9_11_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r9_add12_17i1|nx62798z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r9_11_ ));

// atom is at LCCOMB_X60_Y14_N10
cycloneii_lcell_comb \u_kirsch|r5_7_~feeder (
// Equation(s):
// \u_kirsch|r5_7_~feeder_combout  = \u_kirsch|r4_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r4_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|r5_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r5_7_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r5_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y14_N11
cycloneii_lcell_ff \u_kirsch|reg_r5_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r5_7_~feeder_combout ),
	.sdata(\u_kirsch|r2_7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix9374z6956|nx23445z1 ),
	.ena(\u_kirsch|v_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r5_7_ ));

// atom is at LCCOMB_X62_Y14_N22
cycloneii_lcell_comb \u_kirsch|r8_7_~feeder (
// Equation(s):
// \u_kirsch|r8_7_~feeder_combout  = \u_kirsch|r5_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r5_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|r8_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r8_7_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r8_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X62_Y14_N23
cycloneii_lcell_ff \u_kirsch|reg_r8_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r8_7_~feeder_combout ),
	.sdata(\u_kirsch|r4_7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix15883z6955|nx23445z1 ),
	.ena(\u_kirsch|v_6_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r8_7_ ));

// atom is at LCFF_X63_Y11_N17
cycloneii_lcell_ff \u_kirsch|reg_r9_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r9_add12_17i1|nx45949z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r9_9_ ));

// atom is at LCCOMB_X62_Y14_N10
cycloneii_lcell_comb \u_kirsch|r8_5_~feeder (
// Equation(s):
// \u_kirsch|r8_5_~feeder_combout  = \u_kirsch|r5_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r5_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|r8_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r8_5_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r8_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X62_Y14_N11
cycloneii_lcell_ff \u_kirsch|reg_r8_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r8_5_~feeder_combout ),
	.sdata(\u_kirsch|r4_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix15883z6955|nx23445z1 ),
	.ena(\u_kirsch|v_6_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r8_5_ ));

// atom is at LCFF_X63_Y11_N13
cycloneii_lcell_ff \u_kirsch|reg_r9_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r9_add12_17i1|nx43955z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r9_7_ ));

// atom is at LCCOMB_X62_Y14_N14
cycloneii_lcell_comb \u_kirsch|r8_3_~feeder (
// Equation(s):
// \u_kirsch|r8_3_~feeder_combout  = \u_kirsch|r5_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r5_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|r8_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r8_3_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r8_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X62_Y14_N15
cycloneii_lcell_ff \u_kirsch|reg_r8_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r8_3_~feeder_combout ),
	.sdata(\u_kirsch|r4_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix15883z6955|nx23445z1 ),
	.ena(\u_kirsch|v_6_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r8_3_ ));

// atom is at LCFF_X63_Y11_N9
cycloneii_lcell_ff \u_kirsch|reg_r9_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r9_add12_17i1|nx41961z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r9_5_ ));

// atom is at LCCOMB_X61_Y14_N24
cycloneii_lcell_comb \u_kirsch|r5_1_~feeder (
// Equation(s):
// \u_kirsch|r5_1_~feeder_combout  = \u_kirsch|r4_1_ 

	.dataa(vcc),
	.datab(\u_kirsch|r4_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|r5_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r5_1_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|r5_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X59_Y12_N11
cycloneii_lcell_ff \u_kirsch|reg_r2_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r2_add9_10i26|nx38970z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx33634z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_1_ ));

// atom is at LCFF_X61_Y14_N25
cycloneii_lcell_ff \u_kirsch|reg_r5_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r5_1_~feeder_combout ),
	.sdata(\u_kirsch|r2_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix9374z6956|nx23445z1 ),
	.ena(\u_kirsch|v_3_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r5_1_ ));

// atom is at LCCOMB_X62_Y14_N26
cycloneii_lcell_comb \u_kirsch|r8_1_~feeder (
// Equation(s):
// \u_kirsch|r8_1_~feeder_combout  = \u_kirsch|r5_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r5_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|r8_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r8_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r8_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X62_Y14_N27
cycloneii_lcell_ff \u_kirsch|reg_r8_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r8_1_~feeder_combout ),
	.sdata(\u_kirsch|r4_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix15883z6955|nx23445z1 ),
	.ena(\u_kirsch|v_6_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r8_1_ ));

// atom is at LCFF_X63_Y11_N5
cycloneii_lcell_ff \u_kirsch|reg_r9_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r9_add12_17i1|nx39967z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r9_3_ ));

// atom is at LCFF_X63_Y11_N1
cycloneii_lcell_ff \u_kirsch|reg_r9_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r9_add12_17i1|nx37973z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r9_1_ ));

// atom is at LCCOMB_X62_Y13_N2
cycloneii_lcell_comb \u_kirsch|sub_sub13_1|ix63795z52935 (
// Equation(s):
// \u_kirsch|sub_sub13_1|nx63795z11  = CARRY(!\u_kirsch|r9_0_  & !\u_kirsch|r9_1_ )

	.dataa(\u_kirsch|r9_0_ ),
	.datab(\u_kirsch|r9_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|sub_sub13_1|nx63795z11 ));
// synopsys translate_off
defparam \u_kirsch|sub_sub13_1|ix63795z52935 .lut_mask = 16'h0011;
defparam \u_kirsch|sub_sub13_1|ix63795z52935 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X62_Y13_N4
cycloneii_lcell_comb \u_kirsch|sub_sub13_1|ix63795z52934 (
// Equation(s):
// \u_kirsch|sub_sub13_1|nx63795z10  = CARRY(\u_kirsch|r9_2_  # !\u_kirsch|sub_sub13_1|nx63795z11 )

	.dataa(\u_kirsch|r9_2_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|sub_sub13_1|nx63795z11 ),
	.combout(),
	.cout(\u_kirsch|sub_sub13_1|nx63795z10 ));
// synopsys translate_off
defparam \u_kirsch|sub_sub13_1|ix63795z52934 .lut_mask = 16'h00AF;
defparam \u_kirsch|sub_sub13_1|ix63795z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X62_Y13_N6
cycloneii_lcell_comb \u_kirsch|sub_sub13_1|ix63795z52933 (
// Equation(s):
// \u_kirsch|sub_sub13_1|nx63795z9  = CARRY(\u_kirsch|r8_0_  & (!\u_kirsch|sub_sub13_1|nx63795z10  # !\u_kirsch|r9_3_ ) # !\u_kirsch|r8_0_  & !\u_kirsch|r9_3_  & !\u_kirsch|sub_sub13_1|nx63795z10 )

	.dataa(\u_kirsch|r8_0_ ),
	.datab(\u_kirsch|r9_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|sub_sub13_1|nx63795z10 ),
	.combout(),
	.cout(\u_kirsch|sub_sub13_1|nx63795z9 ));
// synopsys translate_off
defparam \u_kirsch|sub_sub13_1|ix63795z52933 .lut_mask = 16'h002B;
defparam \u_kirsch|sub_sub13_1|ix63795z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X62_Y13_N8
cycloneii_lcell_comb \u_kirsch|sub_sub13_1|ix63795z52932 (
// Equation(s):
// \u_kirsch|sub_sub13_1|nx63795z8  = CARRY(\u_kirsch|r9_4_  & (!\u_kirsch|sub_sub13_1|nx63795z9  # !\u_kirsch|r8_1_ ) # !\u_kirsch|r9_4_  & !\u_kirsch|r8_1_  & !\u_kirsch|sub_sub13_1|nx63795z9 )

	.dataa(\u_kirsch|r9_4_ ),
	.datab(\u_kirsch|r8_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|sub_sub13_1|nx63795z9 ),
	.combout(),
	.cout(\u_kirsch|sub_sub13_1|nx63795z8 ));
// synopsys translate_off
defparam \u_kirsch|sub_sub13_1|ix63795z52932 .lut_mask = 16'h002B;
defparam \u_kirsch|sub_sub13_1|ix63795z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X62_Y13_N10
cycloneii_lcell_comb \u_kirsch|sub_sub13_1|ix63795z52931 (
// Equation(s):
// \u_kirsch|sub_sub13_1|nx63795z7  = CARRY(\u_kirsch|r8_2_  & (!\u_kirsch|sub_sub13_1|nx63795z8  # !\u_kirsch|r9_5_ ) # !\u_kirsch|r8_2_  & !\u_kirsch|r9_5_  & !\u_kirsch|sub_sub13_1|nx63795z8 )

	.dataa(\u_kirsch|r8_2_ ),
	.datab(\u_kirsch|r9_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|sub_sub13_1|nx63795z8 ),
	.combout(),
	.cout(\u_kirsch|sub_sub13_1|nx63795z7 ));
// synopsys translate_off
defparam \u_kirsch|sub_sub13_1|ix63795z52931 .lut_mask = 16'h002B;
defparam \u_kirsch|sub_sub13_1|ix63795z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X62_Y13_N12
cycloneii_lcell_comb \u_kirsch|sub_sub13_1|ix63795z52930 (
// Equation(s):
// \u_kirsch|sub_sub13_1|nx63795z6  = CARRY(\u_kirsch|r9_6_  & (!\u_kirsch|sub_sub13_1|nx63795z7  # !\u_kirsch|r8_3_ ) # !\u_kirsch|r9_6_  & !\u_kirsch|r8_3_  & !\u_kirsch|sub_sub13_1|nx63795z7 )

	.dataa(\u_kirsch|r9_6_ ),
	.datab(\u_kirsch|r8_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|sub_sub13_1|nx63795z7 ),
	.combout(),
	.cout(\u_kirsch|sub_sub13_1|nx63795z6 ));
// synopsys translate_off
defparam \u_kirsch|sub_sub13_1|ix63795z52930 .lut_mask = 16'h002B;
defparam \u_kirsch|sub_sub13_1|ix63795z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X62_Y13_N14
cycloneii_lcell_comb \u_kirsch|sub_sub13_1|ix63795z52929 (
// Equation(s):
// \u_kirsch|sub_sub13_1|d_6_  = (\u_kirsch|r8_4_  $ \u_kirsch|r9_7_  $ \u_kirsch|sub_sub13_1|nx63795z6 ) # GND
// \u_kirsch|sub_sub13_1|nx63795z5  = CARRY(\u_kirsch|r8_4_  & (!\u_kirsch|sub_sub13_1|nx63795z6  # !\u_kirsch|r9_7_ ) # !\u_kirsch|r8_4_  & !\u_kirsch|r9_7_  & !\u_kirsch|sub_sub13_1|nx63795z6 )

	.dataa(\u_kirsch|r8_4_ ),
	.datab(\u_kirsch|r9_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|sub_sub13_1|nx63795z6 ),
	.combout(\u_kirsch|sub_sub13_1|d_6_ ),
	.cout(\u_kirsch|sub_sub13_1|nx63795z5 ));
// synopsys translate_off
defparam \u_kirsch|sub_sub13_1|ix63795z52929 .lut_mask = 16'h962B;
defparam \u_kirsch|sub_sub13_1|ix63795z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X62_Y13_N22
cycloneii_lcell_comb \u_kirsch|sub_sub13_1|ix63795z52925 (
// Equation(s):
// \u_kirsch|sub_sub13_1|d_10_  = (\u_kirsch|r8_8_  $ \u_kirsch|r9_11_  $ \u_kirsch|sub_sub13_1|nx63795z2 ) # GND
// \u_kirsch|sub_sub13_1|nx63795z1  = CARRY(\u_kirsch|r8_8_  & (!\u_kirsch|sub_sub13_1|nx63795z2  # !\u_kirsch|r9_11_ ) # !\u_kirsch|r8_8_  & !\u_kirsch|r9_11_  & !\u_kirsch|sub_sub13_1|nx63795z2 )

	.dataa(\u_kirsch|r8_8_ ),
	.datab(\u_kirsch|r9_11_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|sub_sub13_1|nx63795z2 ),
	.combout(\u_kirsch|sub_sub13_1|d_10_ ),
	.cout(\u_kirsch|sub_sub13_1|nx63795z1 ));
// synopsys translate_off
defparam \u_kirsch|sub_sub13_1|ix63795z52925 .lut_mask = 16'h962B;
defparam \u_kirsch|sub_sub13_1|ix63795z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X62_Y13_N1
cycloneii_lcell_ff \u_kirsch|reg_v_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|v_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|v_7_ ));

// atom is at LCCOMB_X62_Y14_N18
cycloneii_lcell_comb \u_kirsch|r8_9_~feeder (
// Equation(s):
// \u_kirsch|r8_9_~feeder_combout  = \u_kirsch|r5_9_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r5_9_ ),
	.cin(gnd),
	.combout(\u_kirsch|r8_9_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|r8_9_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|r8_9_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X62_Y14_N19
cycloneii_lcell_ff \u_kirsch|reg_r8_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|r8_9_~feeder_combout ),
	.sdata(\u_kirsch|r4_9_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\u_kirsch|ix15883z6955|nx23445z1 ),
	.ena(\u_kirsch|v_6_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r8_9_ ));

// atom is at LCCOMB_X62_Y13_N24
cycloneii_lcell_comb \u_kirsch|sub_sub13_1|ix63795z52923 (
// Equation(s):
// \u_kirsch|sub_sub13_1|d_11_  = \u_kirsch|r9_12_  & (\u_kirsch|r8_9_  & !\u_kirsch|sub_sub13_1|nx63795z1  # !\u_kirsch|r8_9_  & (\u_kirsch|sub_sub13_1|nx63795z1  # GND)) # !\u_kirsch|r9_12_  & (\u_kirsch|r8_9_  & \u_kirsch|sub_sub13_1|nx63795z1  & VCC # 
// !\u_kirsch|r8_9_  & !\u_kirsch|sub_sub13_1|nx63795z1 )
// \u_kirsch|sub_sub13_1|nx23445z2  = CARRY(\u_kirsch|r9_12_  & (!\u_kirsch|sub_sub13_1|nx63795z1  # !\u_kirsch|r8_9_ ) # !\u_kirsch|r9_12_  & !\u_kirsch|r8_9_  & !\u_kirsch|sub_sub13_1|nx63795z1 )

	.dataa(\u_kirsch|r9_12_ ),
	.datab(\u_kirsch|r8_9_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|sub_sub13_1|nx63795z1 ),
	.combout(\u_kirsch|sub_sub13_1|d_11_ ),
	.cout(\u_kirsch|sub_sub13_1|nx23445z2 ));
// synopsys translate_off
defparam \u_kirsch|sub_sub13_1|ix63795z52923 .lut_mask = 16'h692B;
defparam \u_kirsch|sub_sub13_1|ix63795z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X62_Y13_N26
cycloneii_lcell_comb \u_kirsch|sub_sub13_1|ix23445z52923 (
// Equation(s):
// \u_kirsch|sub_sub13_1|nx23445z1  = !\u_kirsch|sub_sub13_1|nx23445z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|sub_sub13_1|nx23445z2 ),
	.combout(\u_kirsch|sub_sub13_1|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|sub_sub13_1|ix23445z52923 .lut_mask = 16'h0F0F;
defparam \u_kirsch|sub_sub13_1|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y13_N14
cycloneii_lcell_comb \u_kirsch|ix1448z52924 (
// Equation(s):
// \u_kirsch|nx1448z2  = \u_kirsch|sub_sub13_1|d_11_  # \u_kirsch|sub_sub13_1|d_7_  & \u_kirsch|sub_sub13_1|d_6_  # !\u_kirsch|sub_sub13_1|nx23445z1 

	.dataa(\u_kirsch|sub_sub13_1|d_7_ ),
	.datab(\u_kirsch|sub_sub13_1|d_6_ ),
	.datac(\u_kirsch|sub_sub13_1|nx23445z1 ),
	.datad(\u_kirsch|sub_sub13_1|d_11_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx1448z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix1448z52924 .lut_mask = 16'hFF8F;
defparam \u_kirsch|ix1448z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X62_Y13_N0
cycloneii_lcell_comb \u_kirsch|ix31323z52923 (
// Equation(s):
// \u_kirsch|nx31323z1  = !\u_kirsch|nx31323z2  & !\u_kirsch|sub_sub13_1|d_10_  & \u_kirsch|v_7_  & !\u_kirsch|nx1448z2 

	.dataa(\u_kirsch|nx31323z2 ),
	.datab(\u_kirsch|sub_sub13_1|d_10_ ),
	.datac(\u_kirsch|v_7_ ),
	.datad(\u_kirsch|nx1448z2 ),
	.cin(gnd),
	.combout(\u_kirsch|nx31323z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix31323z52923 .lut_mask = 16'h0010;
defparam \u_kirsch|ix31323z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X63_Y13_N9
cycloneii_lcell_ff \u_kirsch|reg_o_dir_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r8_dir_0_ ),
	.aclr(gnd),
	.sclr(\u_kirsch|nx31323z1 ),
	.sload(vcc),
	.ena(\u_kirsch|v_7_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|p_o_dir_0_ ));

// atom is at LCCOMB_X61_Y13_N28
cycloneii_lcell_comb \u_uw_uart|mdata_1_~feeder (
// Equation(s):
// \u_uw_uart|mdata_1_~feeder_combout  = \u_kirsch|p_o_dir_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|p_o_dir_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|mdata_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|mdata_1_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|mdata_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y12_N26
cycloneii_lcell_comb \u_kirsch|p_o_mode_1_~feeder (
// Equation(s):
// \u_kirsch|p_o_mode_1_~feeder_combout  = VCC

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|p_o_mode_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|p_o_mode_1_~feeder .lut_mask = 16'hFFFF;
defparam \u_kirsch|p_o_mode_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y12_N27
cycloneii_lcell_ff \u_kirsch|reg_o_mode_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|p_o_mode_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|p_o_mode_1_ ));

// atom is at LCCOMB_X56_Y11_N0
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52939 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx51271z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z31  $ VCC
// \u_uw_uart|modgen_counter_waitcount|nx22081z30  = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z31 )

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z31 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx51271z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z30 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52939 .lut_mask = 16'h33CC;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y12_N8
cycloneii_lcell_comb \u_uw_uart|ix33354z52924 (
// Equation(s):
// \u_uw_uart|nx33354z2  = \u_uw_uart|nx39480z2  # !\nrst~combout 

	.dataa(\nrst~combout ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|nx39480z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx33354z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix33354z52924 .lut_mask = 16'hFF55;
defparam \u_uw_uart|ix33354z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y12_N18
cycloneii_lcell_comb \u_uw_uart|ix33354z52923 (
// Equation(s):
// \u_uw_uart|nx33354z1  = \u_uw_uart|ack  # \u_uw_uart|o_pixavail  # !\nrst~combout 

	.dataa(\u_uw_uart|ack ),
	.datab(vcc),
	.datac(\u_uw_uart|o_pixavail ),
	.datad(\nrst~combout ),
	.cin(gnd),
	.combout(\u_uw_uart|nx33354z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix33354z52923 .lut_mask = 16'hFAFF;
defparam \u_uw_uart|ix33354z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y11_N1
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx51271z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z31 ));

// atom is at LCCOMB_X56_Y11_N2
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52938 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx52268z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z29  & !\u_uw_uart|modgen_counter_waitcount|nx22081z30  # !\u_uw_uart|modgen_counter_waitcount|nx22081z29  & (\u_uw_uart|modgen_counter_waitcount|nx22081z30  # 
// GND)
// \u_uw_uart|modgen_counter_waitcount|nx22081z28  = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z30  # !\u_uw_uart|modgen_counter_waitcount|nx22081z29 )

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z29 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z30 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx52268z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z28 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52938 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X56_Y11_N3
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx52268z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z29 ));

// atom is at LCCOMB_X56_Y11_N4
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52937 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx53265z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z27  & (\u_uw_uart|modgen_counter_waitcount|nx22081z28  $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z27  & !\u_uw_uart|modgen_counter_waitcount|nx22081z28 
//  & VCC
// \u_uw_uart|modgen_counter_waitcount|nx22081z26  = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z27  & !\u_uw_uart|modgen_counter_waitcount|nx22081z28 )

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z27 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z28 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx53265z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z26 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52937 .lut_mask = 16'hC30C;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X56_Y11_N5
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx53265z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z27 ));

// atom is at LCCOMB_X56_Y12_N24
cycloneii_lcell_comb \u_uw_uart|ix39480z52926 (
// Equation(s):
// \u_uw_uart|nx39480z4  = !\u_uw_uart|modgen_counter_waitcount|nx22081z25  & !\u_uw_uart|modgen_counter_waitcount|nx22081z31  & \u_uw_uart|modgen_counter_waitcount|nx22081z27  & !\u_uw_uart|modgen_counter_waitcount|nx22081z29 

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z25 ),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z31 ),
	.datac(\u_uw_uart|modgen_counter_waitcount|nx22081z27 ),
	.datad(\u_uw_uart|modgen_counter_waitcount|nx22081z29 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52926 .lut_mask = 16'h0010;
defparam \u_uw_uart|ix39480z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X56_Y11_N8
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52935 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx55259z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z23  & (\u_uw_uart|modgen_counter_waitcount|nx22081z24  $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z23  & !\u_uw_uart|modgen_counter_waitcount|nx22081z24 
//  & VCC
// \u_uw_uart|modgen_counter_waitcount|nx22081z22  = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z23  & !\u_uw_uart|modgen_counter_waitcount|nx22081z24 )

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z23 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z24 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx55259z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z22 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52935 .lut_mask = 16'hC30C;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X56_Y11_N9
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx55259z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z23 ));

// atom is at LCCOMB_X56_Y11_N14
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52932 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx58250z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z17  & !\u_uw_uart|modgen_counter_waitcount|nx22081z18  # !\u_uw_uart|modgen_counter_waitcount|nx22081z17  & (\u_uw_uart|modgen_counter_waitcount|nx22081z18  # 
// GND)
// \u_uw_uart|modgen_counter_waitcount|nx22081z16  = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z18  # !\u_uw_uart|modgen_counter_waitcount|nx22081z17 )

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z17 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z18 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx58250z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z16 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52932 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X56_Y11_N15
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx58250z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z17 ));

// atom is at LCCOMB_X56_Y11_N16
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52931 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx59247z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z15  & (\u_uw_uart|modgen_counter_waitcount|nx22081z16  $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z15  & !\u_uw_uart|modgen_counter_waitcount|nx22081z16 
//  & VCC
// \u_uw_uart|modgen_counter_waitcount|nx22081z14  = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z15  & !\u_uw_uart|modgen_counter_waitcount|nx22081z16 )

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z15 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z16 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx59247z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z14 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52931 .lut_mask = 16'hA50A;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X56_Y11_N17
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx59247z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z15 ));

// atom is at LCCOMB_X56_Y11_N18
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52930 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx60244z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z13  & !\u_uw_uart|modgen_counter_waitcount|nx22081z14  # !\u_uw_uart|modgen_counter_waitcount|nx22081z13  & (\u_uw_uart|modgen_counter_waitcount|nx22081z14  # 
// GND)
// \u_uw_uart|modgen_counter_waitcount|nx22081z12  = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z14  # !\u_uw_uart|modgen_counter_waitcount|nx22081z13 )

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z13 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z14 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx60244z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z12 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52930 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X56_Y11_N19
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx60244z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z13 ));

// atom is at LCCOMB_X56_Y11_N20
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52929 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx17096z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z11  & (\u_uw_uart|modgen_counter_waitcount|nx22081z12  $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z11  & !\u_uw_uart|modgen_counter_waitcount|nx22081z12 
//  & VCC
// \u_uw_uart|modgen_counter_waitcount|nx22081z10  = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z11  & !\u_uw_uart|modgen_counter_waitcount|nx22081z12 )

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z11 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z12 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx17096z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z10 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52929 .lut_mask = 16'hA50A;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y11_N22
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52928 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx18093z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z9  & !\u_uw_uart|modgen_counter_waitcount|nx22081z10  # !\u_uw_uart|modgen_counter_waitcount|nx22081z9  & (\u_uw_uart|modgen_counter_waitcount|nx22081z10  # GND)
// \u_uw_uart|modgen_counter_waitcount|nx22081z8  = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z10  # !\u_uw_uart|modgen_counter_waitcount|nx22081z9 )

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z9 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z10 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx18093z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z8 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52928 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X56_Y11_N23
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_11_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx18093z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z9 ));

// atom is at LCCOMB_X56_Y11_N24
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52927 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx19090z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z7  & (\u_uw_uart|modgen_counter_waitcount|nx22081z8  $ GND) # !\u_uw_uart|modgen_counter_waitcount|nx22081z7  & !\u_uw_uart|modgen_counter_waitcount|nx22081z8  & 
// VCC
// \u_uw_uart|modgen_counter_waitcount|nx22081z6  = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z7  & !\u_uw_uart|modgen_counter_waitcount|nx22081z8 )

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z7 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z8 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx19090z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z6 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52927 .lut_mask = 16'hA50A;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X56_Y11_N26
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52926 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx20087z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z5  & !\u_uw_uart|modgen_counter_waitcount|nx22081z6  # !\u_uw_uart|modgen_counter_waitcount|nx22081z5  & (\u_uw_uart|modgen_counter_waitcount|nx22081z6  # GND)
// \u_uw_uart|modgen_counter_waitcount|nx22081z4  = CARRY(!\u_uw_uart|modgen_counter_waitcount|nx22081z6  # !\u_uw_uart|modgen_counter_waitcount|nx22081z5 )

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z5 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z6 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx20087z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z4 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52926 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X56_Y11_N27
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_13_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx20087z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z5 ));

// atom is at LCFF_X56_Y11_N29
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_14_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx21084z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z3 ));

// atom is at LCFF_X56_Y11_N25
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_12_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx19090z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z7 ));

// atom is at LCCOMB_X57_Y11_N24
cycloneii_lcell_comb \u_uw_uart|ix39480z52928 (
// Equation(s):
// \u_uw_uart|nx39480z6  = !\u_uw_uart|modgen_counter_waitcount|nx64508z1  & !\u_uw_uart|modgen_counter_waitcount|nx22081z3  & !\u_uw_uart|modgen_counter_waitcount|nx22081z5  & !\u_uw_uart|modgen_counter_waitcount|nx22081z7 

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx64508z1 ),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z3 ),
	.datac(\u_uw_uart|modgen_counter_waitcount|nx22081z5 ),
	.datad(\u_uw_uart|modgen_counter_waitcount|nx22081z7 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z6 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52928 .lut_mask = 16'h0001;
defparam \u_uw_uart|ix39480z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X56_Y11_N21
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx17096z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z11 ));

// atom is at LCCOMB_X57_Y11_N2
cycloneii_lcell_comb \u_uw_uart|ix39480z52929 (
// Equation(s):
// \u_uw_uart|nx39480z7  = !\u_uw_uart|modgen_counter_waitcount|nx22081z11  & !\u_uw_uart|modgen_counter_waitcount|nx22081z9 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|modgen_counter_waitcount|nx22081z11 ),
	.datad(\u_uw_uart|modgen_counter_waitcount|nx22081z9 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z7 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52929 .lut_mask = 16'h000F;
defparam \u_uw_uart|ix39480z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y11_N4
cycloneii_lcell_comb \u_uw_uart|ix39480z52927 (
// Equation(s):
// \u_uw_uart|nx39480z5  = !\u_uw_uart|modgen_counter_waitcount|nx22081z13  & !\u_uw_uart|modgen_counter_waitcount|nx22081z15  & \u_uw_uart|nx39480z6  & \u_uw_uart|nx39480z7 

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z13 ),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z15 ),
	.datac(\u_uw_uart|nx39480z6 ),
	.datad(\u_uw_uart|nx39480z7 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z5 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52927 .lut_mask = 16'h1000;
defparam \u_uw_uart|ix39480z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X16_Y16_N0
cycloneii_lcell_comb \u_kirsch|col_i_3_~feeder (
// Equation(s):
// \u_kirsch|col_i_3_~feeder_combout  = \u_kirsch|col_flop_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|col_flop_3_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|col_i_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|col_i_3_~feeder .lut_mask = 16'hF0F0;
defparam \u_kirsch|col_i_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X16_Y16_N1
cycloneii_lcell_ff \u_kirsch|reg_col_i_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|col_i_3_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|col_i_3_ ));

// atom is at LCCOMB_X16_Y16_N8
cycloneii_lcell_comb \u_kirsch|ix39583z59249|ix44952z52931 (
// Equation(s):
// \u_kirsch|ix39583z59249|nx37973z1  = \u_kirsch|col_i_0_  $ VCC
// \u_kirsch|ix39583z59249|nx44952z15  = CARRY(\u_kirsch|col_i_0_ )

	.dataa(vcc),
	.datab(\u_kirsch|col_i_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|ix39583z59249|nx37973z1 ),
	.cout(\u_kirsch|ix39583z59249|nx44952z15 ));
// synopsys translate_off
defparam \u_kirsch|ix39583z59249|ix44952z52931 .lut_mask = 16'h33CC;
defparam \u_kirsch|ix39583z59249|ix44952z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X16_Y16_N9
cycloneii_lcell_ff \u_kirsch|reg_col_flop_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|ix39583z59249|nx37973z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|col_flop_0_ ));

// atom is at LCCOMB_X16_Y16_N30
cycloneii_lcell_comb \u_kirsch|col_i_0_~feeder (
// Equation(s):
// \u_kirsch|col_i_0_~feeder_combout  = \u_kirsch|col_flop_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|col_flop_0_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|col_i_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|col_i_0_~feeder .lut_mask = 16'hF0F0;
defparam \u_kirsch|col_i_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X16_Y16_N31
cycloneii_lcell_ff \u_kirsch|reg_col_i_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|col_i_0_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|col_i_0_ ));

// atom is at LCCOMB_X16_Y16_N10
cycloneii_lcell_comb \u_kirsch|ix39583z59249|ix44952z52930 (
// Equation(s):
// \u_kirsch|ix39583z59249|nx38970z1  = \u_kirsch|col_i_1_  & !\u_kirsch|ix39583z59249|nx44952z15  # !\u_kirsch|col_i_1_  & (\u_kirsch|ix39583z59249|nx44952z15  # GND)
// \u_kirsch|ix39583z59249|nx44952z13  = CARRY(!\u_kirsch|ix39583z59249|nx44952z15  # !\u_kirsch|col_i_1_ )

	.dataa(\u_kirsch|col_i_1_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix39583z59249|nx44952z15 ),
	.combout(\u_kirsch|ix39583z59249|nx38970z1 ),
	.cout(\u_kirsch|ix39583z59249|nx44952z13 ));
// synopsys translate_off
defparam \u_kirsch|ix39583z59249|ix44952z52930 .lut_mask = 16'h5A5F;
defparam \u_kirsch|ix39583z59249|ix44952z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X16_Y16_N12
cycloneii_lcell_comb \u_kirsch|ix39583z59249|ix44952z52929 (
// Equation(s):
// \u_kirsch|ix39583z59249|nx39967z1  = \u_kirsch|col_i_2_  & (\u_kirsch|ix39583z59249|nx44952z13  $ GND) # !\u_kirsch|col_i_2_  & !\u_kirsch|ix39583z59249|nx44952z13  & VCC
// \u_kirsch|ix39583z59249|nx44952z11  = CARRY(\u_kirsch|col_i_2_  & !\u_kirsch|ix39583z59249|nx44952z13 )

	.dataa(\u_kirsch|col_i_2_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix39583z59249|nx44952z13 ),
	.combout(\u_kirsch|ix39583z59249|nx39967z1 ),
	.cout(\u_kirsch|ix39583z59249|nx44952z11 ));
// synopsys translate_off
defparam \u_kirsch|ix39583z59249|ix44952z52929 .lut_mask = 16'hA50A;
defparam \u_kirsch|ix39583z59249|ix44952z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X16_Y16_N14
cycloneii_lcell_comb \u_kirsch|ix39583z59249|ix44952z52928 (
// Equation(s):
// \u_kirsch|ix39583z59249|nx40964z1  = \u_kirsch|col_i_3_  & !\u_kirsch|ix39583z59249|nx44952z11  # !\u_kirsch|col_i_3_  & (\u_kirsch|ix39583z59249|nx44952z11  # GND)
// \u_kirsch|ix39583z59249|nx44952z9  = CARRY(!\u_kirsch|ix39583z59249|nx44952z11  # !\u_kirsch|col_i_3_ )

	.dataa(vcc),
	.datab(\u_kirsch|col_i_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix39583z59249|nx44952z11 ),
	.combout(\u_kirsch|ix39583z59249|nx40964z1 ),
	.cout(\u_kirsch|ix39583z59249|nx44952z9 ));
// synopsys translate_off
defparam \u_kirsch|ix39583z59249|ix44952z52928 .lut_mask = 16'h3C3F;
defparam \u_kirsch|ix39583z59249|ix44952z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X16_Y16_N15
cycloneii_lcell_ff \u_kirsch|reg_col_flop_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|ix39583z59249|nx40964z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|col_flop_3_ ));

// atom is at LCFF_X16_Y16_N13
cycloneii_lcell_ff \u_kirsch|reg_col_flop_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|ix39583z59249|nx39967z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|col_flop_2_ ));

// atom is at LCCOMB_X16_Y16_N28
cycloneii_lcell_comb \u_kirsch|ix60567z52927 (
// Equation(s):
// \u_kirsch|nx60567z5  = \u_kirsch|col_flop_4_  # \u_kirsch|col_flop_3_  # \u_kirsch|col_flop_2_ 

	.dataa(\u_kirsch|col_flop_4_ ),
	.datab(vcc),
	.datac(\u_kirsch|col_flop_3_ ),
	.datad(\u_kirsch|col_flop_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx60567z5 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix60567z52927 .lut_mask = 16'hFFFA;
defparam \u_kirsch|ix60567z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X15_Y16_N6
cycloneii_lcell_comb \u_kirsch|modgen_counter_row_count|ix58250z52931 (
// Equation(s):
// \u_kirsch|modgen_counter_row_count|nx51271z1  = \u_kirsch|modgen_counter_row_count|q_0_  $ VCC
// \u_kirsch|modgen_counter_row_count|nx58250z8  = CARRY(\u_kirsch|modgen_counter_row_count|q_0_ )

	.dataa(\u_kirsch|modgen_counter_row_count|q_0_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|modgen_counter_row_count|nx51271z1 ),
	.cout(\u_kirsch|modgen_counter_row_count|nx58250z8 ));
// synopsys translate_off
defparam \u_kirsch|modgen_counter_row_count|ix58250z52931 .lut_mask = 16'h55AA;
defparam \u_kirsch|modgen_counter_row_count|ix58250z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X15_Y16_N8
cycloneii_lcell_comb \u_kirsch|modgen_counter_row_count|ix58250z52930 (
// Equation(s):
// \u_kirsch|modgen_counter_row_count|nx52268z1  = \u_kirsch|modgen_counter_row_count|q_1_  & !\u_kirsch|modgen_counter_row_count|nx58250z8  # !\u_kirsch|modgen_counter_row_count|q_1_  & (\u_kirsch|modgen_counter_row_count|nx58250z8  # GND)
// \u_kirsch|modgen_counter_row_count|nx58250z7  = CARRY(!\u_kirsch|modgen_counter_row_count|nx58250z8  # !\u_kirsch|modgen_counter_row_count|q_1_ )

	.dataa(vcc),
	.datab(\u_kirsch|modgen_counter_row_count|q_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|modgen_counter_row_count|nx58250z8 ),
	.combout(\u_kirsch|modgen_counter_row_count|nx52268z1 ),
	.cout(\u_kirsch|modgen_counter_row_count|nx58250z7 ));
// synopsys translate_off
defparam \u_kirsch|modgen_counter_row_count|ix58250z52930 .lut_mask = 16'h3C3F;
defparam \u_kirsch|modgen_counter_row_count|ix58250z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X16_Y16_N16
cycloneii_lcell_comb \u_kirsch|ix39583z59249|ix44952z52927 (
// Equation(s):
// \u_kirsch|ix39583z59249|nx41961z1  = \u_kirsch|col_i_4_  & (\u_kirsch|ix39583z59249|nx44952z9  $ GND) # !\u_kirsch|col_i_4_  & !\u_kirsch|ix39583z59249|nx44952z9  & VCC
// \u_kirsch|ix39583z59249|nx44952z7  = CARRY(\u_kirsch|col_i_4_  & !\u_kirsch|ix39583z59249|nx44952z9 )

	.dataa(vcc),
	.datab(\u_kirsch|col_i_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix39583z59249|nx44952z9 ),
	.combout(\u_kirsch|ix39583z59249|nx41961z1 ),
	.cout(\u_kirsch|ix39583z59249|nx44952z7 ));
// synopsys translate_off
defparam \u_kirsch|ix39583z59249|ix44952z52927 .lut_mask = 16'hC30C;
defparam \u_kirsch|ix39583z59249|ix44952z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X16_Y16_N17
cycloneii_lcell_ff \u_kirsch|reg_col_flop_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|ix39583z59249|nx41961z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|col_flop_4_ ));

// atom is at LCCOMB_X16_Y16_N2
cycloneii_lcell_comb \u_kirsch|col_i_4_~feeder (
// Equation(s):
// \u_kirsch|col_i_4_~feeder_combout  = \u_kirsch|col_flop_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|col_flop_4_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|col_i_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|col_i_4_~feeder .lut_mask = 16'hF0F0;
defparam \u_kirsch|col_i_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X16_Y16_N3
cycloneii_lcell_ff \u_kirsch|reg_col_i_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|col_i_4_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|col_i_4_ ));

// atom is at LCCOMB_X16_Y16_N18
cycloneii_lcell_comb \u_kirsch|ix39583z59249|ix44952z52926 (
// Equation(s):
// \u_kirsch|ix39583z59249|nx42958z1  = \u_kirsch|col_i_5_  & !\u_kirsch|ix39583z59249|nx44952z7  # !\u_kirsch|col_i_5_  & (\u_kirsch|ix39583z59249|nx44952z7  # GND)
// \u_kirsch|ix39583z59249|nx44952z5  = CARRY(!\u_kirsch|ix39583z59249|nx44952z7  # !\u_kirsch|col_i_5_ )

	.dataa(vcc),
	.datab(\u_kirsch|col_i_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix39583z59249|nx44952z7 ),
	.combout(\u_kirsch|ix39583z59249|nx42958z1 ),
	.cout(\u_kirsch|ix39583z59249|nx44952z5 ));
// synopsys translate_off
defparam \u_kirsch|ix39583z59249|ix44952z52926 .lut_mask = 16'h3C3F;
defparam \u_kirsch|ix39583z59249|ix44952z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X16_Y16_N19
cycloneii_lcell_ff \u_kirsch|reg_col_flop_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|ix39583z59249|nx42958z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|col_flop_5_ ));

// atom is at LCCOMB_X16_Y16_N4
cycloneii_lcell_comb \u_kirsch|col_i_5_~feeder (
// Equation(s):
// \u_kirsch|col_i_5_~feeder_combout  = \u_kirsch|col_flop_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|col_flop_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|col_i_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|col_i_5_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|col_i_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X16_Y16_N5
cycloneii_lcell_ff \u_kirsch|reg_col_i_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|col_i_5_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|col_i_5_ ));

// atom is at LCCOMB_X16_Y16_N20
cycloneii_lcell_comb \u_kirsch|ix39583z59249|ix44952z52925 (
// Equation(s):
// \u_kirsch|ix39583z59249|nx43955z1  = \u_kirsch|col_i_6_  & (\u_kirsch|ix39583z59249|nx44952z5  $ GND) # !\u_kirsch|col_i_6_  & !\u_kirsch|ix39583z59249|nx44952z5  & VCC
// \u_kirsch|ix39583z59249|nx44952z3  = CARRY(\u_kirsch|col_i_6_  & !\u_kirsch|ix39583z59249|nx44952z5 )

	.dataa(vcc),
	.datab(\u_kirsch|col_i_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|ix39583z59249|nx44952z5 ),
	.combout(\u_kirsch|ix39583z59249|nx43955z1 ),
	.cout(\u_kirsch|ix39583z59249|nx44952z3 ));
// synopsys translate_off
defparam \u_kirsch|ix39583z59249|ix44952z52925 .lut_mask = 16'hC30C;
defparam \u_kirsch|ix39583z59249|ix44952z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X16_Y16_N21
cycloneii_lcell_ff \u_kirsch|reg_col_flop_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|ix39583z59249|nx43955z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|col_flop_6_ ));

// atom is at LCFF_X15_Y16_N29
cycloneii_lcell_ff \u_kirsch|reg_col_i_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|col_flop_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|col_i_6_ ));

// atom is at LCCOMB_X15_Y16_N28
cycloneii_lcell_comb \u_kirsch|ix64436z52924 (
// Equation(s):
// \u_kirsch|nx64436z2  = \u_kirsch|col_i_5_  & \u_kirsch|col_i_3_  & \u_kirsch|col_i_6_  & \u_kirsch|col_i_4_ 

	.dataa(\u_kirsch|col_i_5_ ),
	.datab(\u_kirsch|col_i_3_ ),
	.datac(\u_kirsch|col_i_6_ ),
	.datad(\u_kirsch|col_i_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx64436z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix64436z52924 .lut_mask = 16'h8000;
defparam \u_kirsch|ix64436z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X16_Y16_N22
cycloneii_lcell_comb \u_kirsch|ix39583z59249|ix44952z52923 (
// Equation(s):
// \u_kirsch|ix39583z59249|nx44952z1  = \u_kirsch|ix39583z59249|nx44952z3  $ \u_kirsch|col_i_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|col_i_7_ ),
	.cin(\u_kirsch|ix39583z59249|nx44952z3 ),
	.combout(\u_kirsch|ix39583z59249|nx44952z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix39583z59249|ix44952z52923 .lut_mask = 16'h0FF0;
defparam \u_kirsch|ix39583z59249|ix44952z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X16_Y16_N23
cycloneii_lcell_ff \u_kirsch|reg_col_flop_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|ix39583z59249|nx44952z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|col_flop_7_ ));

// atom is at LCFF_X15_Y16_N27
cycloneii_lcell_ff \u_kirsch|reg_col_i_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|col_flop_7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|col_i_7_ ));

// atom is at LCCOMB_X16_Y16_N24
cycloneii_lcell_comb \u_kirsch|col_i_2_~feeder (
// Equation(s):
// \u_kirsch|col_i_2_~feeder_combout  = \u_kirsch|col_flop_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|col_flop_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|col_i_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|col_i_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|col_i_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X16_Y16_N25
cycloneii_lcell_ff \u_kirsch|reg_col_i_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|col_i_2_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|col_i_2_ ));

// atom is at LCFF_X16_Y16_N11
cycloneii_lcell_ff \u_kirsch|reg_col_flop_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|ix39583z59249|nx38970z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|col_flop_1_ ));

// atom is at LCFF_X15_Y16_N31
cycloneii_lcell_ff \u_kirsch|reg_col_i_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|col_flop_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|col_i_1_ ));

// atom is at LCCOMB_X15_Y16_N30
cycloneii_lcell_comb \u_kirsch|ix64436z52925 (
// Equation(s):
// \u_kirsch|nx64436z3  = \u_kirsch|col_i_0_  & \u_kirsch|col_i_2_  & \u_kirsch|col_i_1_  & \u_uw_uart|o_pixavail 

	.dataa(\u_kirsch|col_i_0_ ),
	.datab(\u_kirsch|col_i_2_ ),
	.datac(\u_kirsch|col_i_1_ ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_kirsch|nx64436z3 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix64436z52925 .lut_mask = 16'h8000;
defparam \u_kirsch|ix64436z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X15_Y16_N26
cycloneii_lcell_comb \u_kirsch|ix64436z52923 (
// Equation(s):
// \u_kirsch|nx64436z1  = \u_kirsch|nx64436z2  & \u_kirsch|col_i_7_  & \u_kirsch|nx64436z3 

	.dataa(vcc),
	.datab(\u_kirsch|nx64436z2 ),
	.datac(\u_kirsch|col_i_7_ ),
	.datad(\u_kirsch|nx64436z3 ),
	.cin(gnd),
	.combout(\u_kirsch|nx64436z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix64436z52923 .lut_mask = 16'hC000;
defparam \u_kirsch|ix64436z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X15_Y16_N9
cycloneii_lcell_ff \u_kirsch|modgen_counter_row_count|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|modgen_counter_row_count|nx52268z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx64436z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|modgen_counter_row_count|q_1_ ));

// atom is at LCCOMB_X15_Y16_N10
cycloneii_lcell_comb \u_kirsch|modgen_counter_row_count|ix58250z52929 (
// Equation(s):
// \u_kirsch|modgen_counter_row_count|nx53265z1  = \u_kirsch|modgen_counter_row_count|q_2_  & (\u_kirsch|modgen_counter_row_count|nx58250z7  $ GND) # !\u_kirsch|modgen_counter_row_count|q_2_  & !\u_kirsch|modgen_counter_row_count|nx58250z7  & VCC
// \u_kirsch|modgen_counter_row_count|nx58250z6  = CARRY(\u_kirsch|modgen_counter_row_count|q_2_  & !\u_kirsch|modgen_counter_row_count|nx58250z7 )

	.dataa(\u_kirsch|modgen_counter_row_count|q_2_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|modgen_counter_row_count|nx58250z7 ),
	.combout(\u_kirsch|modgen_counter_row_count|nx53265z1 ),
	.cout(\u_kirsch|modgen_counter_row_count|nx58250z6 ));
// synopsys translate_off
defparam \u_kirsch|modgen_counter_row_count|ix58250z52929 .lut_mask = 16'hA50A;
defparam \u_kirsch|modgen_counter_row_count|ix58250z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X15_Y16_N12
cycloneii_lcell_comb \u_kirsch|modgen_counter_row_count|ix58250z52928 (
// Equation(s):
// \u_kirsch|modgen_counter_row_count|nx54262z1  = \u_kirsch|modgen_counter_row_count|q_3_  & !\u_kirsch|modgen_counter_row_count|nx58250z6  # !\u_kirsch|modgen_counter_row_count|q_3_  & (\u_kirsch|modgen_counter_row_count|nx58250z6  # GND)
// \u_kirsch|modgen_counter_row_count|nx58250z5  = CARRY(!\u_kirsch|modgen_counter_row_count|nx58250z6  # !\u_kirsch|modgen_counter_row_count|q_3_ )

	.dataa(\u_kirsch|modgen_counter_row_count|q_3_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|modgen_counter_row_count|nx58250z6 ),
	.combout(\u_kirsch|modgen_counter_row_count|nx54262z1 ),
	.cout(\u_kirsch|modgen_counter_row_count|nx58250z5 ));
// synopsys translate_off
defparam \u_kirsch|modgen_counter_row_count|ix58250z52928 .lut_mask = 16'h5A5F;
defparam \u_kirsch|modgen_counter_row_count|ix58250z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X15_Y16_N14
cycloneii_lcell_comb \u_kirsch|modgen_counter_row_count|ix58250z52927 (
// Equation(s):
// \u_kirsch|modgen_counter_row_count|nx55259z1  = \u_kirsch|modgen_counter_row_count|q_4_  & (\u_kirsch|modgen_counter_row_count|nx58250z5  $ GND) # !\u_kirsch|modgen_counter_row_count|q_4_  & !\u_kirsch|modgen_counter_row_count|nx58250z5  & VCC
// \u_kirsch|modgen_counter_row_count|nx58250z4  = CARRY(\u_kirsch|modgen_counter_row_count|q_4_  & !\u_kirsch|modgen_counter_row_count|nx58250z5 )

	.dataa(vcc),
	.datab(\u_kirsch|modgen_counter_row_count|q_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|modgen_counter_row_count|nx58250z5 ),
	.combout(\u_kirsch|modgen_counter_row_count|nx55259z1 ),
	.cout(\u_kirsch|modgen_counter_row_count|nx58250z4 ));
// synopsys translate_off
defparam \u_kirsch|modgen_counter_row_count|ix58250z52927 .lut_mask = 16'hC30C;
defparam \u_kirsch|modgen_counter_row_count|ix58250z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X15_Y16_N15
cycloneii_lcell_ff \u_kirsch|modgen_counter_row_count|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|modgen_counter_row_count|nx55259z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx64436z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|modgen_counter_row_count|q_4_ ));

// atom is at LCCOMB_X15_Y16_N16
cycloneii_lcell_comb \u_kirsch|modgen_counter_row_count|ix58250z52926 (
// Equation(s):
// \u_kirsch|modgen_counter_row_count|nx56256z1  = \u_kirsch|modgen_counter_row_count|q_5_  & !\u_kirsch|modgen_counter_row_count|nx58250z4  # !\u_kirsch|modgen_counter_row_count|q_5_  & (\u_kirsch|modgen_counter_row_count|nx58250z4  # GND)
// \u_kirsch|modgen_counter_row_count|nx58250z3  = CARRY(!\u_kirsch|modgen_counter_row_count|nx58250z4  # !\u_kirsch|modgen_counter_row_count|q_5_ )

	.dataa(\u_kirsch|modgen_counter_row_count|q_5_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|modgen_counter_row_count|nx58250z4 ),
	.combout(\u_kirsch|modgen_counter_row_count|nx56256z1 ),
	.cout(\u_kirsch|modgen_counter_row_count|nx58250z3 ));
// synopsys translate_off
defparam \u_kirsch|modgen_counter_row_count|ix58250z52926 .lut_mask = 16'h5A5F;
defparam \u_kirsch|modgen_counter_row_count|ix58250z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X15_Y16_N18
cycloneii_lcell_comb \u_kirsch|modgen_counter_row_count|ix58250z52925 (
// Equation(s):
// \u_kirsch|modgen_counter_row_count|nx57253z1  = \u_kirsch|modgen_counter_row_count|q_6_  & (\u_kirsch|modgen_counter_row_count|nx58250z3  $ GND) # !\u_kirsch|modgen_counter_row_count|q_6_  & !\u_kirsch|modgen_counter_row_count|nx58250z3  & VCC
// \u_kirsch|modgen_counter_row_count|nx58250z2  = CARRY(\u_kirsch|modgen_counter_row_count|q_6_  & !\u_kirsch|modgen_counter_row_count|nx58250z3 )

	.dataa(vcc),
	.datab(\u_kirsch|modgen_counter_row_count|q_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|modgen_counter_row_count|nx58250z3 ),
	.combout(\u_kirsch|modgen_counter_row_count|nx57253z1 ),
	.cout(\u_kirsch|modgen_counter_row_count|nx58250z2 ));
// synopsys translate_off
defparam \u_kirsch|modgen_counter_row_count|ix58250z52925 .lut_mask = 16'hC30C;
defparam \u_kirsch|modgen_counter_row_count|ix58250z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X15_Y16_N19
cycloneii_lcell_ff \u_kirsch|modgen_counter_row_count|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|modgen_counter_row_count|nx57253z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx64436z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|modgen_counter_row_count|q_6_ ));

// atom is at LCCOMB_X15_Y16_N20
cycloneii_lcell_comb \u_kirsch|modgen_counter_row_count|ix58250z52923 (
// Equation(s):
// \u_kirsch|modgen_counter_row_count|nx58250z1  = \u_kirsch|modgen_counter_row_count|q_7_  $ \u_kirsch|modgen_counter_row_count|nx58250z2 

	.dataa(\u_kirsch|modgen_counter_row_count|q_7_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|modgen_counter_row_count|nx58250z2 ),
	.combout(\u_kirsch|modgen_counter_row_count|nx58250z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|modgen_counter_row_count|ix58250z52923 .lut_mask = 16'h5A5A;
defparam \u_kirsch|modgen_counter_row_count|ix58250z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X15_Y16_N21
cycloneii_lcell_ff \u_kirsch|modgen_counter_row_count|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|modgen_counter_row_count|nx58250z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx64436z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|modgen_counter_row_count|q_7_ ));

// atom is at LCFF_X15_Y16_N17
cycloneii_lcell_ff \u_kirsch|modgen_counter_row_count|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|modgen_counter_row_count|nx56256z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx64436z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|modgen_counter_row_count|q_5_ ));

// atom is at LCFF_X15_Y16_N7
cycloneii_lcell_ff \u_kirsch|modgen_counter_row_count|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|modgen_counter_row_count|nx51271z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx64436z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|modgen_counter_row_count|q_0_ ));

// atom is at LCCOMB_X11_Y16_N4
cycloneii_lcell_comb \u_kirsch|ix60567z52926 (
// Equation(s):
// \u_kirsch|nx60567z4  = \u_kirsch|modgen_counter_row_count|q_6_  # \u_kirsch|modgen_counter_row_count|q_5_  # \u_kirsch|modgen_counter_row_count|q_1_  & \u_kirsch|modgen_counter_row_count|q_0_ 

	.dataa(\u_kirsch|modgen_counter_row_count|q_6_ ),
	.datab(\u_kirsch|modgen_counter_row_count|q_5_ ),
	.datac(\u_kirsch|modgen_counter_row_count|q_1_ ),
	.datad(\u_kirsch|modgen_counter_row_count|q_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx60567z4 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix60567z52926 .lut_mask = 16'hFEEE;
defparam \u_kirsch|ix60567z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X15_Y16_N11
cycloneii_lcell_ff \u_kirsch|modgen_counter_row_count|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|modgen_counter_row_count|nx53265z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx64436z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|modgen_counter_row_count|q_2_ ));

// atom is at LCCOMB_X11_Y16_N22
cycloneii_lcell_comb \u_kirsch|ix60567z52924 (
// Equation(s):
// \u_kirsch|nx60567z2  = \u_kirsch|nx60567z3  # \u_kirsch|modgen_counter_row_count|q_7_  # \u_kirsch|nx60567z4  # \u_kirsch|modgen_counter_row_count|q_2_ 

	.dataa(\u_kirsch|nx60567z3 ),
	.datab(\u_kirsch|modgen_counter_row_count|q_7_ ),
	.datac(\u_kirsch|nx60567z4 ),
	.datad(\u_kirsch|modgen_counter_row_count|q_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx60567z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix60567z52924 .lut_mask = 16'hFFFE;
defparam \u_kirsch|ix60567z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X16_Y16_N26
cycloneii_lcell_comb \u_kirsch|ix60567z52923 (
// Equation(s):
// \u_kirsch|nx60567z1  = \u_kirsch|nx60567z2  & (\u_kirsch|nx60567z6  # \u_kirsch|nx60567z5  # \u_kirsch|col_flop_1_ )

	.dataa(\u_kirsch|nx60567z6 ),
	.datab(\u_kirsch|nx60567z5 ),
	.datac(\u_kirsch|nx60567z2 ),
	.datad(\u_kirsch|col_flop_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx60567z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix60567z52923 .lut_mask = 16'hF0E0;
defparam \u_kirsch|ix60567z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X16_Y16_N27
cycloneii_lcell_ff \u_kirsch|reg_o_valid (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx60567z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\u_kirsch|v_7_ ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|p_o_valid ));

// atom is at LCCOMB_X57_Y12_N0
cycloneii_lcell_comb \u_uw_uart|ix39480z52924 (
// Equation(s):
// \u_uw_uart|nx39480z2  = \u_kirsch|p_o_valid  # \u_uw_uart|nx39480z3  & \u_uw_uart|nx39480z4  & \u_uw_uart|nx39480z5 

	.dataa(\u_uw_uart|nx39480z3 ),
	.datab(\u_uw_uart|nx39480z4 ),
	.datac(\u_uw_uart|nx39480z5 ),
	.datad(\u_kirsch|p_o_valid ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52924 .lut_mask = 16'hFF80;
defparam \u_uw_uart|ix39480z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y12_N10
cycloneii_lcell_comb \u_uw_uart|ix39480z52923 (
// Equation(s):
// \u_uw_uart|nx39480z1  = !\u_uw_uart|nx39480z2  & (\u_uw_uart|o_pixavail  # \u_uw_uart|ack )

	.dataa(vcc),
	.datab(\u_uw_uart|o_pixavail ),
	.datac(\u_uw_uart|ack ),
	.datad(\u_uw_uart|nx39480z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52923 .lut_mask = 16'h00FC;
defparam \u_uw_uart|ix39480z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y12_N11
cycloneii_lcell_ff \u_uw_uart|reg_ack (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx39480z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|ack ));

// atom is at LCCOMB_X57_Y12_N2
cycloneii_lcell_comb \u_uw_uart|ix38742z52924 (
// Equation(s):
// \u_uw_uart|nx38742z1  = \u_kirsch|nx64269z1  & (!\u_uw_uart|o_pixavail  & !\u_uw_uart|ack ) # !\u_kirsch|nx64269z1  & (!\u_uw_uart|o_pixavail  & !\u_uw_uart|ack  # !\u_kirsch|p_o_mode_1_ )

	.dataa(\u_kirsch|nx64269z1 ),
	.datab(\u_kirsch|p_o_mode_1_ ),
	.datac(\u_uw_uart|o_pixavail ),
	.datad(\u_uw_uart|ack ),
	.cin(gnd),
	.combout(\u_uw_uart|nx38742z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix38742z52924 .lut_mask = 16'h111F;
defparam \u_uw_uart|ix38742z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y12_N20
cycloneii_lcell_comb \u_kirsch|ix43221z52925 (
// Equation(s):
// \u_kirsch|nx43221z2  = \u_kirsch|v_1_  # \u_kirsch|v_2_  # \u_uw_uart|o_pixavail  # \u_kirsch|v_3_ 

	.dataa(\u_kirsch|v_1_ ),
	.datab(\u_kirsch|v_2_ ),
	.datac(\u_uw_uart|o_pixavail ),
	.datad(\u_kirsch|v_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx43221z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix43221z52925 .lut_mask = 16'hFFFE;
defparam \u_kirsch|ix43221z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X62_Y13_N28
cycloneii_lcell_comb \u_kirsch|ix43221z52924 (
// Equation(s):
// \u_kirsch|nx43221z1  = \u_kirsch|v_6_  # \u_kirsch|v_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|v_6_ ),
	.datad(\u_kirsch|v_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx43221z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix43221z52924 .lut_mask = 16'hFFF0;
defparam \u_kirsch|ix43221z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y12_N16
cycloneii_lcell_comb \u_kirsch|ix43221z52923 (
// Equation(s):
// \u_kirsch|NOT_rtlc19_PS6_n24  = !\u_kirsch|v_7_  & !\u_kirsch|v_5_  & !\u_kirsch|nx43221z2  & !\u_kirsch|nx43221z1 

	.dataa(\u_kirsch|v_7_ ),
	.datab(\u_kirsch|v_5_ ),
	.datac(\u_kirsch|nx43221z2 ),
	.datad(\u_kirsch|nx43221z1 ),
	.cin(gnd),
	.combout(\u_kirsch|NOT_rtlc19_PS6_n24 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix43221z52923 .lut_mask = 16'h0001;
defparam \u_kirsch|ix43221z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y12_N17
cycloneii_lcell_ff \u_kirsch|reg_o_mode_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|NOT_rtlc19_PS6_n24 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|nx64269z1 ));

// atom is at LCCOMB_X57_Y12_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix15376z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx15376z1  = \u_uw_uart|i_uarts|RxFSM_6_  # !\u_uw_uart|i_uarts|RxRDY  & \u_uw_uart|i_uarts|RxErr 

	.dataa(\u_uw_uart|i_uarts|RxRDY ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|RxErr ),
	.datad(\u_uw_uart|i_uarts|RxFSM_6_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx15376z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix15376z52923 .lut_mask = 16'hFF50;
defparam \u_uw_uart|i_uarts|ix15376z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y12_N25
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxErr (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx15376z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxErr ));

// atom is at LCCOMB_X57_Y12_N28
cycloneii_lcell_comb \u_uw_uart|ix40736z52926 (
// Equation(s):
// \u_uw_uart|nx40736z4  = \u_uw_uart|ack  & (\u_uw_uart|nx39480z2 ) # !\u_uw_uart|ack  & (\u_uw_uart|o_pixavail  & (\u_uw_uart|nx39480z2 ) # !\u_uw_uart|o_pixavail  & \u_uw_uart|i_uarts|RxErr )

	.dataa(\u_uw_uart|ack ),
	.datab(\u_uw_uart|o_pixavail ),
	.datac(\u_uw_uart|i_uarts|RxErr ),
	.datad(\u_uw_uart|nx39480z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx40736z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix40736z52926 .lut_mask = 16'hFE10;
defparam \u_uw_uart|ix40736z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y12_N22
cycloneii_lcell_comb \u_uw_uart|ix40736z52925 (
// Equation(s):
// \u_uw_uart|nx40736z3  = \nrst~combout  & (\u_uw_uart|nx40736z4  # !\u_kirsch|p_o_mode_1_  & !\u_kirsch|nx64269z1 )

	.dataa(\nrst~combout ),
	.datab(\u_kirsch|p_o_mode_1_ ),
	.datac(\u_kirsch|nx64269z1 ),
	.datad(\u_uw_uart|nx40736z4 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx40736z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix40736z52925 .lut_mask = 16'hAA02;
defparam \u_uw_uart|ix40736z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y13_N29
cycloneii_lcell_ff \u_uw_uart|reg_mdata_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|mdata_1_~feeder_combout ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx38742z1 ),
	.sload(!\u_kirsch|p_o_valid ),
	.ena(\u_uw_uart|nx40736z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_1_ ));

// atom is at LCCOMB_X57_Y13_N10
cycloneii_lcell_comb \u_uw_uart|sdout_1_~feeder (
// Equation(s):
// \u_uw_uart|sdout_1_~feeder_combout  = \u_uw_uart|mdata_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|mdata_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_1_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|sdout_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y12_N13
cycloneii_lcell_ff \u_uw_uart|reg_state (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx38868z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|state ));

// atom is at LCCOMB_X57_Y12_N30
cycloneii_lcell_comb \u_uw_uart|ix46385z52924 (
// Equation(s):
// \u_uw_uart|nx46385z2  = !\u_kirsch|nx64269z1  & !\u_kirsch|p_o_mode_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|nx64269z1 ),
	.datad(\u_kirsch|p_o_mode_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|nx46385z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix46385z52924 .lut_mask = 16'h000F;
defparam \u_uw_uart|ix46385z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X57_Y12_N6
cycloneii_lcell_comb \u_uw_uart|ix46385z52923 (
// Equation(s):
// \u_uw_uart|nx46385z1  = \u_uw_uart|nx46385z2  # \u_uw_uart|nx40736z2  & (\u_uw_uart|nx39480z2 ) # !\u_uw_uart|nx40736z2  & \u_uw_uart|i_uarts|RxErr 

	.dataa(\u_uw_uart|nx40736z2 ),
	.datab(\u_uw_uart|nx46385z2 ),
	.datac(\u_uw_uart|i_uarts|RxErr ),
	.datad(\u_uw_uart|nx39480z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx46385z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix46385z52923 .lut_mask = 16'hFEDC;
defparam \u_uw_uart|ix46385z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y12_N7
cycloneii_lcell_ff \u_uw_uart|reg_dsend (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx46385z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|dsend ));

// atom is at LCCOMB_X54_Y12_N12
cycloneii_lcell_comb \u_uw_uart|ix38868z52923 (
// Equation(s):
// \u_uw_uart|nx38868z1  = !\u_uw_uart|state  & \u_uw_uart|dsend 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|state ),
	.datad(\u_uw_uart|dsend ),
	.cin(gnd),
	.combout(\u_uw_uart|nx38868z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix38868z52923 .lut_mask = 16'h0F00;
defparam \u_uw_uart|ix38868z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y13_N11
cycloneii_lcell_ff \u_uw_uart|reg_sdout_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx38868z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_1_ ));

// atom is at LCCOMB_X61_Y13_N24
cycloneii_lcell_comb \u_uw_uart|mdata_2_~feeder (
// Equation(s):
// \u_uw_uart|mdata_2_~feeder_combout  = \u_kirsch|p_o_dir_1_ 

	.dataa(\u_kirsch|p_o_dir_1_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|mdata_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|mdata_2_~feeder .lut_mask = 16'hAAAA;
defparam \u_uw_uart|mdata_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y13_N25
cycloneii_lcell_ff \u_uw_uart|reg_mdata_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|mdata_2_~feeder_combout ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx38742z1 ),
	.sload(!\u_kirsch|p_o_valid ),
	.ena(\u_uw_uart|nx40736z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_2_ ));

// atom is at LCFF_X57_Y13_N21
cycloneii_lcell_ff \u_uw_uart|reg_sdout_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|mdata_2_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|nx38868z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_2_ ));

// atom is at LCCOMB_X57_Y12_N4
cycloneii_lcell_comb \u_uw_uart|ix38742z52923 (
// Equation(s):
// \u_uw_uart|mdata_7n5ss1_4_  = \u_uw_uart|nx38742z1  # !\u_kirsch|p_o_valid 

	.dataa(vcc),
	.datab(\u_uw_uart|nx38742z1 ),
	.datac(\u_kirsch|p_o_valid ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|mdata_7n5ss1_4_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix38742z52923 .lut_mask = 16'hCFCF;
defparam \u_uw_uart|ix38742z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y12_N5
cycloneii_lcell_ff \u_uw_uart|reg_mdata_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|mdata_7n5ss1_4_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx40736z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_5_ ));

// atom is at LCCOMB_X57_Y13_N8
cycloneii_lcell_comb \u_uw_uart|sdout_5_~feeder (
// Equation(s):
// \u_uw_uart|sdout_5_~feeder_combout  = \u_uw_uart|mdata_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|mdata_5_ ),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_5_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|sdout_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y13_N9
cycloneii_lcell_ff \u_uw_uart|reg_sdout_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_5_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx38868z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_5_ ));

// atom is at LCCOMB_X57_Y12_N14
cycloneii_lcell_comb \u_uw_uart|ix40736z52923 (
// Equation(s):
// \u_uw_uart|mdata_7n5ss1_6_  = \u_uw_uart|nx40736z2  & !\u_kirsch|p_o_valid  & (\u_kirsch|nx64269z1  # \u_kirsch|p_o_mode_1_ ) # !\u_uw_uart|nx40736z2  & (\u_kirsch|nx64269z1  # \u_kirsch|p_o_mode_1_ )

	.dataa(\u_uw_uart|nx40736z2 ),
	.datab(\u_kirsch|p_o_valid ),
	.datac(\u_kirsch|nx64269z1 ),
	.datad(\u_kirsch|p_o_mode_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|mdata_7n5ss1_6_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix40736z52923 .lut_mask = 16'h7770;
defparam \u_uw_uart|ix40736z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X57_Y12_N15
cycloneii_lcell_ff \u_uw_uart|reg_mdata_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|mdata_7n5ss1_6_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx40736z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_7_ ));

// atom is at LCFF_X57_Y13_N27
cycloneii_lcell_ff \u_uw_uart|reg_sdout_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|mdata_7_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|nx38868z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_7_ ));

// atom is at LCCOMB_X54_Y12_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix35603z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_  = !\u_uw_uart|i_uarts|TxFSM_1_  & !\u_uw_uart|sdout_7_ 

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datac(vcc),
	.datad(\u_uw_uart|sdout_7_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix35603z52923 .lut_mask = 16'h0033;
defparam \u_uw_uart|i_uarts|ix35603z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X54_Y12_N2
cycloneii_lcell_comb \u_uw_uart|ix18433z52923 (
// Equation(s):
// \u_uw_uart|nx18433z1  = !\u_uw_uart|state  & (\u_uw_uart|ld_sdout  # \u_uw_uart|dsend )

	.dataa(\u_uw_uart|state ),
	.datab(vcc),
	.datac(\u_uw_uart|ld_sdout ),
	.datad(\u_uw_uart|dsend ),
	.cin(gnd),
	.combout(\u_uw_uart|nx18433z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix18433z52923 .lut_mask = 16'h5550;
defparam \u_uw_uart|ix18433z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y12_N3
cycloneii_lcell_ff \u_uw_uart|reg_ld_sdout (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx18433z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|ld_sdout ));

// atom is at LCCOMB_X53_Y12_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix35603z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx35603z1  = !\u_uw_uart|i_uarts|TxFSM_0_  & (\u_uw_uart|i_uarts|TxFSM_1_  & \u_uw_uart|i_uarts|TopTx  # !\u_uw_uart|i_uarts|TxFSM_1_  & (\u_uw_uart|ld_sdout ))

	.dataa(\u_uw_uart|i_uarts|TopTx ),
	.datab(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datac(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datad(\u_uw_uart|ld_sdout ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx35603z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix35603z52924 .lut_mask = 16'h0B08;
defparam \u_uw_uart|i_uarts|ix35603z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y12_N15
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx34606z1 ));

// atom is at LCCOMB_X54_Y12_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34606z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_7_  = \u_uw_uart|i_uarts|TxFSM_1_  & \u_uw_uart|i_uarts|nx34606z1  # !\u_uw_uart|i_uarts|TxFSM_1_  & (!\u_uw_uart|sdout_7_ )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datac(\u_uw_uart|i_uarts|nx34606z1 ),
	.datad(\u_uw_uart|sdout_7_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_7_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34606z52923 .lut_mask = 16'hC0F3;
defparam \u_uw_uart|i_uarts|ix34606z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y12_N29
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_7_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx33609z1 ));

// atom is at LCCOMB_X54_Y12_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix33609z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_6_  = \u_uw_uart|i_uarts|TxFSM_1_  & (\u_uw_uart|i_uarts|nx33609z1 ) # !\u_uw_uart|i_uarts|TxFSM_1_  & !\u_uw_uart|sdout_5_ 

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datac(\u_uw_uart|sdout_5_ ),
	.datad(\u_uw_uart|i_uarts|nx33609z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_6_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix33609z52923 .lut_mask = 16'hCF03;
defparam \u_uw_uart|i_uarts|ix33609z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y12_N19
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_6_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx32612z1 ));

// atom is at LCCOMB_X54_Y12_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32612z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_5_  = \u_uw_uart|i_uarts|TxFSM_1_  & (\u_uw_uart|i_uarts|nx32612z1 ) # !\u_uw_uart|i_uarts|TxFSM_1_  & !\u_uw_uart|sdout_5_ 

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datac(\u_uw_uart|sdout_5_ ),
	.datad(\u_uw_uart|i_uarts|nx32612z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_5_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32612z52923 .lut_mask = 16'hCF03;
defparam \u_uw_uart|i_uarts|ix32612z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y12_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_5_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx31615z1 ));

// atom is at LCCOMB_X61_Y13_N12
cycloneii_lcell_comb \u_uw_uart|mdata_3_~feeder (
// Equation(s):
// \u_uw_uart|mdata_3_~feeder_combout  = \u_kirsch|p_o_dir_2_ 

	.dataa(\u_kirsch|p_o_dir_2_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|mdata_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|mdata_3_~feeder .lut_mask = 16'hAAAA;
defparam \u_uw_uart|mdata_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y13_N13
cycloneii_lcell_ff \u_uw_uart|reg_mdata_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|mdata_3_~feeder_combout ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx38742z1 ),
	.sload(!\u_kirsch|p_o_valid ),
	.ena(\u_uw_uart|nx40736z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_3_ ));

// atom is at LCFF_X57_Y13_N23
cycloneii_lcell_ff \u_uw_uart|reg_sdout_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|mdata_3_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|nx38868z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_3_ ));

// atom is at LCCOMB_X54_Y12_N30
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix31615z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_4_  = \u_uw_uart|i_uarts|TxFSM_1_  & \u_uw_uart|i_uarts|nx31615z1  # !\u_uw_uart|i_uarts|TxFSM_1_  & (!\u_uw_uart|sdout_3_ )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datac(\u_uw_uart|i_uarts|nx31615z1 ),
	.datad(\u_uw_uart|sdout_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_4_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix31615z52923 .lut_mask = 16'hC0F3;
defparam \u_uw_uart|i_uarts|ix31615z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y12_N31
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_4_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx30618z1 ));

// atom is at LCCOMB_X54_Y12_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix30618z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_3_  = \u_uw_uart|i_uarts|TxFSM_1_  & (\u_uw_uart|i_uarts|nx30618z1 ) # !\u_uw_uart|i_uarts|TxFSM_1_  & !\u_uw_uart|sdout_2_ 

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datac(\u_uw_uart|sdout_2_ ),
	.datad(\u_uw_uart|i_uarts|nx30618z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_3_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix30618z52923 .lut_mask = 16'hCF03;
defparam \u_uw_uart|i_uarts|ix30618z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y12_N23
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_3_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx29621z1 ));

// atom is at LCCOMB_X54_Y12_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix29621z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_2_  = \u_uw_uart|i_uarts|TxFSM_1_  & (\u_uw_uart|i_uarts|nx29621z1 ) # !\u_uw_uart|i_uarts|TxFSM_1_  & !\u_uw_uart|sdout_1_ 

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datac(\u_uw_uart|sdout_1_ ),
	.datad(\u_uw_uart|i_uarts|nx29621z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_2_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix29621z52923 .lut_mask = 16'hCF03;
defparam \u_uw_uart|i_uarts|ix29621z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y12_N5
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_2_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx28624z1 ));

// atom is at LCCOMB_X54_Y12_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix28624z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_1_  = \u_uw_uart|i_uarts|TxFSM_1_  & (\u_uw_uart|i_uarts|nx28624z1 ) # !\u_uw_uart|i_uarts|TxFSM_1_  & !\u_uw_uart|sdout_0_ 

	.dataa(\u_uw_uart|sdout_0_ ),
	.datab(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datac(\u_uw_uart|i_uarts|nx28624z1 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_1_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix28624z52923 .lut_mask = 16'hD1D1;
defparam \u_uw_uart|i_uarts|ix28624z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X54_Y12_N1
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_1_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx61140z1 ));

// atom is at LCCOMB_X53_Y12_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix61140z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|Tx_Reg_14n6ss1_0_  = \u_uw_uart|i_uarts|TxFSM_0_  # \u_uw_uart|i_uarts|nx61140z1  & \u_uw_uart|i_uarts|TxFSM_1_ 

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datac(\u_uw_uart|i_uarts|nx61140z1 ),
	.datad(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Tx_Reg_14n6ss1_0_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix61140z52923 .lut_mask = 16'hFCCC;
defparam \u_uw_uart|i_uarts|ix61140z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X53_Y12_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix61812z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx61812z1  = \u_uw_uart|i_uarts|TxFSM_1_  & \u_uw_uart|i_uarts|TopTx  & !\u_uw_uart|i_uarts|TxFSM_0_  # !\u_uw_uart|i_uarts|TxFSM_1_  & (\u_uw_uart|i_uarts|TxFSM_0_  & \u_uw_uart|i_uarts|TopTx  # !\u_uw_uart|i_uarts|TxFSM_0_  & 
// (\u_uw_uart|ld_sdout ))

	.dataa(\u_uw_uart|i_uarts|TopTx ),
	.datab(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datac(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datad(\u_uw_uart|ld_sdout ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx61812z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix61812z52923 .lut_mask = 16'h2B28;
defparam \u_uw_uart|i_uarts|ix61812z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X53_Y12_N17
cycloneii_lcell_ff reg_out_txflex_obuf(
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Tx_Reg_14n6ss1_0_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx61812z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx21351z2));

// atom is at LCCOMB_X11_Y16_N18
cycloneii_lcell_comb \u_kirsch|ix8520z52923 (
// Equation(s):
// \u_kirsch|p_o_row_2_  = \u_kirsch|modgen_counter_row_count|q_1_  $ !\u_kirsch|modgen_counter_row_count|q_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|modgen_counter_row_count|q_1_ ),
	.datad(\u_kirsch|modgen_counter_row_count|q_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|p_o_row_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix8520z52923 .lut_mask = 16'hF00F;
defparam \u_kirsch|ix8520z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X15_Y16_N24
cycloneii_lcell_comb ix57590z52923(
// Equation(s):
// nx57590z1 = \u_kirsch|modgen_counter_row_count|q_0_  & !\u_kirsch|p_o_row_3_  & (\u_kirsch|p_o_row_2_  $ \u_kirsch|modgen_counter_row_count|q_1_ ) # !\u_kirsch|modgen_counter_row_count|q_0_  & \u_kirsch|modgen_counter_row_count|q_1_  & 
// (\u_kirsch|p_o_row_3_  $ !\u_kirsch|p_o_row_2_ )

	.dataa(\u_kirsch|p_o_row_3_ ),
	.datab(\u_kirsch|p_o_row_2_ ),
	.datac(\u_kirsch|modgen_counter_row_count|q_1_ ),
	.datad(\u_kirsch|modgen_counter_row_count|q_0_ ),
	.cin(gnd),
	.combout(nx57590z1),
	.cout());
// synopsys translate_off
defparam ix57590z52923.lut_mask = 16'h1490;
defparam ix57590z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X15_Y16_N25
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_0_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx57590z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx41851z1));

// atom is at LCCOMB_X15_Y16_N2
cycloneii_lcell_comb ix58587z52923(
// Equation(s):
// nx58587z1 = \u_kirsch|p_o_row_2_  & \u_kirsch|modgen_counter_row_count|q_0_  & (\u_kirsch|p_o_row_3_  $ !\u_kirsch|modgen_counter_row_count|q_1_ ) # !\u_kirsch|p_o_row_2_  & !\u_kirsch|p_o_row_3_  & (\u_kirsch|modgen_counter_row_count|q_0_  # 
// !\u_kirsch|modgen_counter_row_count|q_1_ )

	.dataa(\u_kirsch|p_o_row_3_ ),
	.datab(\u_kirsch|p_o_row_2_ ),
	.datac(\u_kirsch|modgen_counter_row_count|q_1_ ),
	.datad(\u_kirsch|modgen_counter_row_count|q_0_ ),
	.cin(gnd),
	.combout(nx58587z1),
	.cout());
// synopsys translate_off
defparam ix58587z52923.lut_mask = 16'h9501;
defparam ix58587z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X15_Y16_N3
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_1_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx58587z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx42848z1));

// atom is at LCCOMB_X15_Y16_N4
cycloneii_lcell_comb ix59584z52923(
// Equation(s):
// nx59584z1 = \u_kirsch|modgen_counter_row_count|q_1_  & (\u_kirsch|p_o_row_2_  & !\u_kirsch|p_o_row_3_  # !\u_kirsch|p_o_row_2_  & (\u_kirsch|modgen_counter_row_count|q_0_ )) # !\u_kirsch|modgen_counter_row_count|q_1_  & !\u_kirsch|p_o_row_3_  & 
// (\u_kirsch|modgen_counter_row_count|q_0_ )

	.dataa(\u_kirsch|p_o_row_3_ ),
	.datab(\u_kirsch|p_o_row_2_ ),
	.datac(\u_kirsch|modgen_counter_row_count|q_1_ ),
	.datad(\u_kirsch|modgen_counter_row_count|q_0_ ),
	.cin(gnd),
	.combout(nx59584z1),
	.cout());
// synopsys translate_off
defparam ix59584z52923.lut_mask = 16'h7540;
defparam ix59584z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X15_Y16_N5
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_2_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx59584z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx43845z1));

// atom is at LCCOMB_X15_Y16_N22
cycloneii_lcell_comb ix60581z52923(
// Equation(s):
// nx60581z1 = \u_kirsch|modgen_counter_row_count|q_0_  & (\u_kirsch|p_o_row_2_  $ \u_kirsch|modgen_counter_row_count|q_1_ ) # !\u_kirsch|modgen_counter_row_count|q_0_  & (\u_kirsch|p_o_row_3_  & !\u_kirsch|p_o_row_2_  & 
// !\u_kirsch|modgen_counter_row_count|q_1_  # !\u_kirsch|p_o_row_3_  & \u_kirsch|p_o_row_2_  & \u_kirsch|modgen_counter_row_count|q_1_ )

	.dataa(\u_kirsch|p_o_row_3_ ),
	.datab(\u_kirsch|p_o_row_2_ ),
	.datac(\u_kirsch|modgen_counter_row_count|q_1_ ),
	.datad(\u_kirsch|modgen_counter_row_count|q_0_ ),
	.cin(gnd),
	.combout(nx60581z1),
	.cout());
// synopsys translate_off
defparam ix60581z52923.lut_mask = 16'h3C42;
defparam ix60581z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X15_Y16_N23
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_3_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx60581z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx44842z1));

// atom is at LCCOMB_X15_Y16_N0
cycloneii_lcell_comb ix61578z52923(
// Equation(s):
// nx61578z1 = \u_kirsch|p_o_row_3_  & \u_kirsch|p_o_row_2_  & (!\u_kirsch|modgen_counter_row_count|q_0_  # !\u_kirsch|modgen_counter_row_count|q_1_ ) # !\u_kirsch|p_o_row_3_  & !\u_kirsch|p_o_row_2_  & !\u_kirsch|modgen_counter_row_count|q_1_  & 
// !\u_kirsch|modgen_counter_row_count|q_0_ 

	.dataa(\u_kirsch|p_o_row_3_ ),
	.datab(\u_kirsch|p_o_row_2_ ),
	.datac(\u_kirsch|modgen_counter_row_count|q_1_ ),
	.datad(\u_kirsch|modgen_counter_row_count|q_0_ ),
	.cin(gnd),
	.combout(nx61578z1),
	.cout());
// synopsys translate_off
defparam ix61578z52923.lut_mask = 16'h0889;
defparam ix61578z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X15_Y16_N1
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_4_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx61578z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx45839z1));

// atom is at LCCOMB_X12_Y16_N0
cycloneii_lcell_comb ix62575z52923(
// Equation(s):
// nx62575z1 = \u_kirsch|p_o_row_3_  & (\u_kirsch|modgen_counter_row_count|q_0_  & (!\u_kirsch|modgen_counter_row_count|q_1_ ) # !\u_kirsch|modgen_counter_row_count|q_0_  & \u_kirsch|p_o_row_2_ ) # !\u_kirsch|p_o_row_3_  & \u_kirsch|p_o_row_2_  & 
// (\u_kirsch|modgen_counter_row_count|q_1_  $ !\u_kirsch|modgen_counter_row_count|q_0_ )

	.dataa(\u_kirsch|p_o_row_3_ ),
	.datab(\u_kirsch|p_o_row_2_ ),
	.datac(\u_kirsch|modgen_counter_row_count|q_1_ ),
	.datad(\u_kirsch|modgen_counter_row_count|q_0_ ),
	.cin(gnd),
	.combout(nx62575z1),
	.cout());
// synopsys translate_off
defparam ix62575z52923.lut_mask = 16'h4A8C;
defparam ix62575z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X12_Y16_N1
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_5_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx62575z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx46836z1));

// atom is at LCCOMB_X12_Y16_N2
cycloneii_lcell_comb ix63572z52923(
// Equation(s):
// nx63572z1 = \u_kirsch|p_o_row_3_  & \u_kirsch|modgen_counter_row_count|q_0_  & (\u_kirsch|p_o_row_2_  $ !\u_kirsch|modgen_counter_row_count|q_1_ ) # !\u_kirsch|p_o_row_3_  & \u_kirsch|modgen_counter_row_count|q_1_  & (\u_kirsch|p_o_row_2_  $ 
// \u_kirsch|modgen_counter_row_count|q_0_ )

	.dataa(\u_kirsch|p_o_row_3_ ),
	.datab(\u_kirsch|p_o_row_2_ ),
	.datac(\u_kirsch|modgen_counter_row_count|q_1_ ),
	.datad(\u_kirsch|modgen_counter_row_count|q_0_ ),
	.cin(gnd),
	.combout(nx63572z1),
	.cout());
// synopsys translate_off
defparam ix63572z52923.lut_mask = 16'h9240;
defparam ix63572z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X12_Y16_N3
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_6_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx63572z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx47833z1));

// atom is at LCCOMB_X11_Y16_N2
cycloneii_lcell_comb \u_kirsch|ix12508z52924 (
// Equation(s):
// \u_kirsch|nx12508z1  = \u_kirsch|modgen_counter_row_count|q_1_  # \u_kirsch|modgen_counter_row_count|q_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|modgen_counter_row_count|q_1_ ),
	.datad(\u_kirsch|modgen_counter_row_count|q_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx12508z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix12508z52924 .lut_mask = 16'hFFF0;
defparam \u_kirsch|ix12508z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X15_Y16_N13
cycloneii_lcell_ff \u_kirsch|modgen_counter_row_count|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|modgen_counter_row_count|nx54262z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|nx64436z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|modgen_counter_row_count|q_3_ ));

// atom is at LCCOMB_X11_Y16_N20
cycloneii_lcell_comb \u_kirsch|ix60567z52925 (
// Equation(s):
// \u_kirsch|nx60567z3  = \u_kirsch|modgen_counter_row_count|q_4_  # \u_kirsch|modgen_counter_row_count|q_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|modgen_counter_row_count|q_4_ ),
	.datad(\u_kirsch|modgen_counter_row_count|q_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx60567z3 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix60567z52925 .lut_mask = 16'hFFF0;
defparam \u_kirsch|ix60567z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X11_Y16_N30
cycloneii_lcell_comb \u_kirsch|ix12508z52923 (
// Equation(s):
// \u_kirsch|p_o_row_6_  = \u_kirsch|modgen_counter_row_count|q_6_  $ (!\u_kirsch|nx12508z1  & !\u_kirsch|nx60567z3  & !\u_kirsch|modgen_counter_row_count|q_5_ )

	.dataa(\u_kirsch|modgen_counter_row_count|q_6_ ),
	.datab(\u_kirsch|nx12508z1 ),
	.datac(\u_kirsch|nx60567z3 ),
	.datad(\u_kirsch|modgen_counter_row_count|q_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|p_o_row_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix12508z52923 .lut_mask = 16'hAAA9;
defparam \u_kirsch|ix12508z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X11_Y16_N16
cycloneii_lcell_comb \u_kirsch|ix11511z52923 (
// Equation(s):
// \u_kirsch|p_o_row_5_  = \u_kirsch|modgen_counter_row_count|q_5_  $ (!\u_kirsch|nx60567z3  & !\u_kirsch|modgen_counter_row_count|q_1_  & !\u_kirsch|modgen_counter_row_count|q_2_ )

	.dataa(\u_kirsch|nx60567z3 ),
	.datab(\u_kirsch|modgen_counter_row_count|q_5_ ),
	.datac(\u_kirsch|modgen_counter_row_count|q_1_ ),
	.datad(\u_kirsch|modgen_counter_row_count|q_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|p_o_row_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix11511z52923 .lut_mask = 16'hCCC9;
defparam \u_kirsch|ix11511z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X11_Y16_N6
cycloneii_lcell_comb \u_kirsch|ix13505z52924 (
// Equation(s):
// \u_kirsch|nx13505z1  = \u_kirsch|modgen_counter_row_count|q_4_  # \u_kirsch|modgen_counter_row_count|q_5_  # \u_kirsch|modgen_counter_row_count|q_6_  # \u_kirsch|modgen_counter_row_count|q_3_ 

	.dataa(\u_kirsch|modgen_counter_row_count|q_4_ ),
	.datab(\u_kirsch|modgen_counter_row_count|q_5_ ),
	.datac(\u_kirsch|modgen_counter_row_count|q_6_ ),
	.datad(\u_kirsch|modgen_counter_row_count|q_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx13505z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix13505z52924 .lut_mask = 16'hFFFE;
defparam \u_kirsch|ix13505z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X11_Y16_N24
cycloneii_lcell_comb \u_kirsch|ix13505z52923 (
// Equation(s):
// \u_kirsch|p_o_row_7_  = \u_kirsch|modgen_counter_row_count|q_7_  $ (!\u_kirsch|modgen_counter_row_count|q_2_  & !\u_kirsch|modgen_counter_row_count|q_1_  & !\u_kirsch|nx13505z1 )

	.dataa(\u_kirsch|modgen_counter_row_count|q_2_ ),
	.datab(\u_kirsch|modgen_counter_row_count|q_7_ ),
	.datac(\u_kirsch|modgen_counter_row_count|q_1_ ),
	.datad(\u_kirsch|nx13505z1 ),
	.cin(gnd),
	.combout(\u_kirsch|p_o_row_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix13505z52923 .lut_mask = 16'hCCC9;
defparam \u_kirsch|ix13505z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X11_Y16_N0
cycloneii_lcell_comb ix30z52923(
// Equation(s):
// nx30z1 = \u_kirsch|p_o_row_4_  & !\u_kirsch|p_o_row_7_  & (\u_kirsch|p_o_row_6_  $ !\u_kirsch|p_o_row_5_ ) # !\u_kirsch|p_o_row_4_  & !\u_kirsch|p_o_row_5_  & (\u_kirsch|p_o_row_6_  $ !\u_kirsch|p_o_row_7_ )

	.dataa(\u_kirsch|p_o_row_4_ ),
	.datab(\u_kirsch|p_o_row_6_ ),
	.datac(\u_kirsch|p_o_row_5_ ),
	.datad(\u_kirsch|p_o_row_7_ ),
	.cin(gnd),
	.combout(nx30z1),
	.cout());
// synopsys translate_off
defparam ix30z52923.lut_mask = 16'h0483;
defparam ix30z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X11_Y16_N1
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_8_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx30z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx49827z1));

// atom is at LCCOMB_X11_Y16_N10
cycloneii_lcell_comb \u_kirsch|ix10514z52923 (
// Equation(s):
// \u_kirsch|p_o_row_4_  = \u_kirsch|modgen_counter_row_count|q_4_  $ (!\u_kirsch|modgen_counter_row_count|q_2_  & !\u_kirsch|modgen_counter_row_count|q_1_  & !\u_kirsch|modgen_counter_row_count|q_3_ )

	.dataa(\u_kirsch|modgen_counter_row_count|q_2_ ),
	.datab(\u_kirsch|modgen_counter_row_count|q_1_ ),
	.datac(\u_kirsch|modgen_counter_row_count|q_4_ ),
	.datad(\u_kirsch|modgen_counter_row_count|q_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|p_o_row_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix10514z52923 .lut_mask = 16'hF0E1;
defparam \u_kirsch|ix10514z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X10_Y16_N24
cycloneii_lcell_comb ix1027z52923(
// Equation(s):
// nx1027z1 = \u_kirsch|p_o_row_5_  & !\u_kirsch|p_o_row_7_  & (\u_kirsch|p_o_row_4_  # !\u_kirsch|p_o_row_6_ ) # !\u_kirsch|p_o_row_5_  & \u_kirsch|p_o_row_4_  & (\u_kirsch|p_o_row_6_  $ !\u_kirsch|p_o_row_7_ )

	.dataa(\u_kirsch|p_o_row_5_ ),
	.datab(\u_kirsch|p_o_row_6_ ),
	.datac(\u_kirsch|p_o_row_4_ ),
	.datad(\u_kirsch|p_o_row_7_ ),
	.cin(gnd),
	.combout(nx1027z1),
	.cout());
// synopsys translate_off
defparam ix1027z52923.lut_mask = 16'h40B2;
defparam ix1027z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X10_Y16_N25
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_9_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx1027z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx50824z1));

// atom is at LCCOMB_X10_Y16_N18
cycloneii_lcell_comb ix25683z52923(
// Equation(s):
// nx25683z1 = \u_kirsch|p_o_row_5_  & (\u_kirsch|p_o_row_4_  & !\u_kirsch|p_o_row_7_ ) # !\u_kirsch|p_o_row_5_  & (\u_kirsch|p_o_row_6_  & (!\u_kirsch|p_o_row_7_ ) # !\u_kirsch|p_o_row_6_  & \u_kirsch|p_o_row_4_ )

	.dataa(\u_kirsch|p_o_row_5_ ),
	.datab(\u_kirsch|p_o_row_6_ ),
	.datac(\u_kirsch|p_o_row_4_ ),
	.datad(\u_kirsch|p_o_row_7_ ),
	.cin(gnd),
	.combout(nx25683z1),
	.cout());
// synopsys translate_off
defparam ix25683z52923.lut_mask = 16'h10F4;
defparam ix25683z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X10_Y16_N19
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_10_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx25683z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx62540z1));

// atom is at LCCOMB_X11_Y16_N26
cycloneii_lcell_comb ix26680z52923(
// Equation(s):
// nx26680z1 = \u_kirsch|p_o_row_4_  & (\u_kirsch|p_o_row_6_  $ !\u_kirsch|p_o_row_5_ ) # !\u_kirsch|p_o_row_4_  & (\u_kirsch|p_o_row_6_  & !\u_kirsch|p_o_row_5_  & !\u_kirsch|p_o_row_7_  # !\u_kirsch|p_o_row_6_  & \u_kirsch|p_o_row_5_  & 
// \u_kirsch|p_o_row_7_ )

	.dataa(\u_kirsch|p_o_row_4_ ),
	.datab(\u_kirsch|p_o_row_6_ ),
	.datac(\u_kirsch|p_o_row_5_ ),
	.datad(\u_kirsch|p_o_row_7_ ),
	.cin(gnd),
	.combout(nx26680z1),
	.cout());
// synopsys translate_off
defparam ix26680z52923.lut_mask = 16'h9286;
defparam ix26680z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X11_Y16_N27
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_11_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx26680z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx63537z1));

// atom is at LCCOMB_X11_Y16_N28
cycloneii_lcell_comb ix27677z52923(
// Equation(s):
// nx27677z1 = \u_kirsch|p_o_row_6_  & \u_kirsch|p_o_row_7_  & (\u_kirsch|p_o_row_5_  # !\u_kirsch|p_o_row_4_ ) # !\u_kirsch|p_o_row_6_  & !\u_kirsch|p_o_row_4_  & \u_kirsch|p_o_row_5_  & !\u_kirsch|p_o_row_7_ 

	.dataa(\u_kirsch|p_o_row_4_ ),
	.datab(\u_kirsch|p_o_row_6_ ),
	.datac(\u_kirsch|p_o_row_5_ ),
	.datad(\u_kirsch|p_o_row_7_ ),
	.cin(gnd),
	.combout(nx27677z1),
	.cout());
// synopsys translate_off
defparam ix27677z52923.lut_mask = 16'hC410;
defparam ix27677z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X11_Y16_N29
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_12_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx27677z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx64534z1));

// atom is at LCCOMB_X11_Y16_N14
cycloneii_lcell_comb ix28674z52923(
// Equation(s):
// nx28674z1 = \u_kirsch|p_o_row_5_  & (\u_kirsch|p_o_row_4_  & (\u_kirsch|p_o_row_7_ ) # !\u_kirsch|p_o_row_4_  & \u_kirsch|p_o_row_6_ ) # !\u_kirsch|p_o_row_5_  & \u_kirsch|p_o_row_6_  & (\u_kirsch|p_o_row_4_  $ \u_kirsch|p_o_row_7_ )

	.dataa(\u_kirsch|p_o_row_4_ ),
	.datab(\u_kirsch|p_o_row_6_ ),
	.datac(\u_kirsch|p_o_row_5_ ),
	.datad(\u_kirsch|p_o_row_7_ ),
	.cin(gnd),
	.combout(nx28674z1),
	.cout());
// synopsys translate_off
defparam ix28674z52923.lut_mask = 16'hE448;
defparam ix28674z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X11_Y16_N15
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_13_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx28674z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx65531z1));

// atom is at LCCOMB_X11_Y16_N8
cycloneii_lcell_comb ix29671z52923(
// Equation(s):
// nx29671z1 = \u_kirsch|p_o_row_6_  & !\u_kirsch|p_o_row_5_  & (\u_kirsch|p_o_row_4_  $ !\u_kirsch|p_o_row_7_ ) # !\u_kirsch|p_o_row_6_  & \u_kirsch|p_o_row_4_  & (\u_kirsch|p_o_row_5_  $ !\u_kirsch|p_o_row_7_ )

	.dataa(\u_kirsch|p_o_row_4_ ),
	.datab(\u_kirsch|p_o_row_6_ ),
	.datac(\u_kirsch|p_o_row_5_ ),
	.datad(\u_kirsch|p_o_row_7_ ),
	.cin(gnd),
	.combout(nx29671z1),
	.cout());
// synopsys translate_off
defparam ix29671z52923.lut_mask = 16'h2806;
defparam ix29671z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X11_Y16_N9
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_14_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx29671z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx992z1));

// atom is at PIN_B25
cycloneii_io ix21351z43919(
	.datain(!nx21351z2),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(txflex));
// synopsys translate_off
defparam ix21351z43919.input_async_reset = "none";
defparam ix21351z43919.input_power_up = "low";
defparam ix21351z43919.input_register_mode = "none";
defparam ix21351z43919.input_sync_reset = "none";
defparam ix21351z43919.oe_async_reset = "none";
defparam ix21351z43919.oe_power_up = "low";
defparam ix21351z43919.oe_register_mode = "none";
defparam ix21351z43919.oe_sync_reset = "none";
defparam ix21351z43919.operation_mode = "output";
defparam ix21351z43919.output_async_reset = "none";
defparam ix21351z43919.output_power_up = "low";
defparam ix21351z43919.output_register_mode = "none";
defparam ix21351z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M4
cycloneii_io ix41851z43919(
	.datain(nx41851z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[0]));
// synopsys translate_off
defparam ix41851z43919.input_async_reset = "none";
defparam ix41851z43919.input_power_up = "low";
defparam ix41851z43919.input_register_mode = "none";
defparam ix41851z43919.input_sync_reset = "none";
defparam ix41851z43919.oe_async_reset = "none";
defparam ix41851z43919.oe_power_up = "low";
defparam ix41851z43919.oe_register_mode = "none";
defparam ix41851z43919.oe_sync_reset = "none";
defparam ix41851z43919.operation_mode = "output";
defparam ix41851z43919.output_async_reset = "none";
defparam ix41851z43919.output_power_up = "low";
defparam ix41851z43919.output_register_mode = "none";
defparam ix41851z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M5
cycloneii_io ix42848z43919(
	.datain(nx42848z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[1]));
// synopsys translate_off
defparam ix42848z43919.input_async_reset = "none";
defparam ix42848z43919.input_power_up = "low";
defparam ix42848z43919.input_register_mode = "none";
defparam ix42848z43919.input_sync_reset = "none";
defparam ix42848z43919.oe_async_reset = "none";
defparam ix42848z43919.oe_power_up = "low";
defparam ix42848z43919.oe_register_mode = "none";
defparam ix42848z43919.oe_sync_reset = "none";
defparam ix42848z43919.operation_mode = "output";
defparam ix42848z43919.output_async_reset = "none";
defparam ix42848z43919.output_power_up = "low";
defparam ix42848z43919.output_register_mode = "none";
defparam ix42848z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M3
cycloneii_io ix43845z43919(
	.datain(nx43845z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[2]));
// synopsys translate_off
defparam ix43845z43919.input_async_reset = "none";
defparam ix43845z43919.input_power_up = "low";
defparam ix43845z43919.input_register_mode = "none";
defparam ix43845z43919.input_sync_reset = "none";
defparam ix43845z43919.oe_async_reset = "none";
defparam ix43845z43919.oe_power_up = "low";
defparam ix43845z43919.oe_register_mode = "none";
defparam ix43845z43919.oe_sync_reset = "none";
defparam ix43845z43919.operation_mode = "output";
defparam ix43845z43919.output_async_reset = "none";
defparam ix43845z43919.output_power_up = "low";
defparam ix43845z43919.output_register_mode = "none";
defparam ix43845z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M2
cycloneii_io ix44842z43919(
	.datain(nx44842z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[3]));
// synopsys translate_off
defparam ix44842z43919.input_async_reset = "none";
defparam ix44842z43919.input_power_up = "low";
defparam ix44842z43919.input_register_mode = "none";
defparam ix44842z43919.input_sync_reset = "none";
defparam ix44842z43919.oe_async_reset = "none";
defparam ix44842z43919.oe_power_up = "low";
defparam ix44842z43919.oe_register_mode = "none";
defparam ix44842z43919.oe_sync_reset = "none";
defparam ix44842z43919.operation_mode = "output";
defparam ix44842z43919.output_async_reset = "none";
defparam ix44842z43919.output_power_up = "low";
defparam ix44842z43919.output_register_mode = "none";
defparam ix44842z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P3
cycloneii_io ix45839z43919(
	.datain(nx45839z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[4]));
// synopsys translate_off
defparam ix45839z43919.input_async_reset = "none";
defparam ix45839z43919.input_power_up = "low";
defparam ix45839z43919.input_register_mode = "none";
defparam ix45839z43919.input_sync_reset = "none";
defparam ix45839z43919.oe_async_reset = "none";
defparam ix45839z43919.oe_power_up = "low";
defparam ix45839z43919.oe_register_mode = "none";
defparam ix45839z43919.oe_sync_reset = "none";
defparam ix45839z43919.operation_mode = "output";
defparam ix45839z43919.output_async_reset = "none";
defparam ix45839z43919.output_power_up = "low";
defparam ix45839z43919.output_register_mode = "none";
defparam ix45839z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P4
cycloneii_io ix46836z43919(
	.datain(nx46836z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[5]));
// synopsys translate_off
defparam ix46836z43919.input_async_reset = "none";
defparam ix46836z43919.input_power_up = "low";
defparam ix46836z43919.input_register_mode = "none";
defparam ix46836z43919.input_sync_reset = "none";
defparam ix46836z43919.oe_async_reset = "none";
defparam ix46836z43919.oe_power_up = "low";
defparam ix46836z43919.oe_register_mode = "none";
defparam ix46836z43919.oe_sync_reset = "none";
defparam ix46836z43919.operation_mode = "output";
defparam ix46836z43919.output_async_reset = "none";
defparam ix46836z43919.output_power_up = "low";
defparam ix46836z43919.output_register_mode = "none";
defparam ix46836z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_R2
cycloneii_io ix47833z43919(
	.datain(nx47833z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[6]));
// synopsys translate_off
defparam ix47833z43919.input_async_reset = "none";
defparam ix47833z43919.input_power_up = "low";
defparam ix47833z43919.input_register_mode = "none";
defparam ix47833z43919.input_sync_reset = "none";
defparam ix47833z43919.oe_async_reset = "none";
defparam ix47833z43919.oe_power_up = "low";
defparam ix47833z43919.oe_register_mode = "none";
defparam ix47833z43919.oe_sync_reset = "none";
defparam ix47833z43919.operation_mode = "output";
defparam ix47833z43919.output_async_reset = "none";
defparam ix47833z43919.output_power_up = "low";
defparam ix47833z43919.output_register_mode = "none";
defparam ix47833z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE4
cycloneii_io o_sevenseg_obuf_7_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[7]));
// synopsys translate_off
defparam o_sevenseg_obuf_7_.input_async_reset = "none";
defparam o_sevenseg_obuf_7_.input_power_up = "low";
defparam o_sevenseg_obuf_7_.input_register_mode = "none";
defparam o_sevenseg_obuf_7_.input_sync_reset = "none";
defparam o_sevenseg_obuf_7_.oe_async_reset = "none";
defparam o_sevenseg_obuf_7_.oe_power_up = "low";
defparam o_sevenseg_obuf_7_.oe_register_mode = "none";
defparam o_sevenseg_obuf_7_.oe_sync_reset = "none";
defparam o_sevenseg_obuf_7_.operation_mode = "output";
defparam o_sevenseg_obuf_7_.output_async_reset = "none";
defparam o_sevenseg_obuf_7_.output_power_up = "low";
defparam o_sevenseg_obuf_7_.output_register_mode = "none";
defparam o_sevenseg_obuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_N9
cycloneii_io ix49827z43919(
	.datain(nx49827z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[8]));
// synopsys translate_off
defparam ix49827z43919.input_async_reset = "none";
defparam ix49827z43919.input_power_up = "low";
defparam ix49827z43919.input_register_mode = "none";
defparam ix49827z43919.input_sync_reset = "none";
defparam ix49827z43919.oe_async_reset = "none";
defparam ix49827z43919.oe_power_up = "low";
defparam ix49827z43919.oe_register_mode = "none";
defparam ix49827z43919.oe_sync_reset = "none";
defparam ix49827z43919.operation_mode = "output";
defparam ix49827z43919.output_async_reset = "none";
defparam ix49827z43919.output_power_up = "low";
defparam ix49827z43919.output_register_mode = "none";
defparam ix49827z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P9
cycloneii_io ix50824z43919(
	.datain(nx50824z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[9]));
// synopsys translate_off
defparam ix50824z43919.input_async_reset = "none";
defparam ix50824z43919.input_power_up = "low";
defparam ix50824z43919.input_register_mode = "none";
defparam ix50824z43919.input_sync_reset = "none";
defparam ix50824z43919.oe_async_reset = "none";
defparam ix50824z43919.oe_power_up = "low";
defparam ix50824z43919.oe_register_mode = "none";
defparam ix50824z43919.oe_sync_reset = "none";
defparam ix50824z43919.operation_mode = "output";
defparam ix50824z43919.output_async_reset = "none";
defparam ix50824z43919.output_power_up = "low";
defparam ix50824z43919.output_register_mode = "none";
defparam ix50824z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L7
cycloneii_io ix62540z43919(
	.datain(nx62540z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[10]));
// synopsys translate_off
defparam ix62540z43919.input_async_reset = "none";
defparam ix62540z43919.input_power_up = "low";
defparam ix62540z43919.input_register_mode = "none";
defparam ix62540z43919.input_sync_reset = "none";
defparam ix62540z43919.oe_async_reset = "none";
defparam ix62540z43919.oe_power_up = "low";
defparam ix62540z43919.oe_register_mode = "none";
defparam ix62540z43919.oe_sync_reset = "none";
defparam ix62540z43919.operation_mode = "output";
defparam ix62540z43919.output_async_reset = "none";
defparam ix62540z43919.output_power_up = "low";
defparam ix62540z43919.output_register_mode = "none";
defparam ix62540z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L6
cycloneii_io ix63537z43919(
	.datain(nx63537z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[11]));
// synopsys translate_off
defparam ix63537z43919.input_async_reset = "none";
defparam ix63537z43919.input_power_up = "low";
defparam ix63537z43919.input_register_mode = "none";
defparam ix63537z43919.input_sync_reset = "none";
defparam ix63537z43919.oe_async_reset = "none";
defparam ix63537z43919.oe_power_up = "low";
defparam ix63537z43919.oe_register_mode = "none";
defparam ix63537z43919.oe_sync_reset = "none";
defparam ix63537z43919.operation_mode = "output";
defparam ix63537z43919.output_async_reset = "none";
defparam ix63537z43919.output_power_up = "low";
defparam ix63537z43919.output_register_mode = "none";
defparam ix63537z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L9
cycloneii_io ix64534z43919(
	.datain(nx64534z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[12]));
// synopsys translate_off
defparam ix64534z43919.input_async_reset = "none";
defparam ix64534z43919.input_power_up = "low";
defparam ix64534z43919.input_register_mode = "none";
defparam ix64534z43919.input_sync_reset = "none";
defparam ix64534z43919.oe_async_reset = "none";
defparam ix64534z43919.oe_power_up = "low";
defparam ix64534z43919.oe_register_mode = "none";
defparam ix64534z43919.oe_sync_reset = "none";
defparam ix64534z43919.operation_mode = "output";
defparam ix64534z43919.output_async_reset = "none";
defparam ix64534z43919.output_power_up = "low";
defparam ix64534z43919.output_register_mode = "none";
defparam ix64534z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L2
cycloneii_io ix65531z43919(
	.datain(nx65531z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[13]));
// synopsys translate_off
defparam ix65531z43919.input_async_reset = "none";
defparam ix65531z43919.input_power_up = "low";
defparam ix65531z43919.input_register_mode = "none";
defparam ix65531z43919.input_sync_reset = "none";
defparam ix65531z43919.oe_async_reset = "none";
defparam ix65531z43919.oe_power_up = "low";
defparam ix65531z43919.oe_register_mode = "none";
defparam ix65531z43919.oe_sync_reset = "none";
defparam ix65531z43919.operation_mode = "output";
defparam ix65531z43919.output_async_reset = "none";
defparam ix65531z43919.output_power_up = "low";
defparam ix65531z43919.output_register_mode = "none";
defparam ix65531z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L3
cycloneii_io ix992z43919(
	.datain(nx992z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[14]));
// synopsys translate_off
defparam ix992z43919.input_async_reset = "none";
defparam ix992z43919.input_power_up = "low";
defparam ix992z43919.input_register_mode = "none";
defparam ix992z43919.input_sync_reset = "none";
defparam ix992z43919.oe_async_reset = "none";
defparam ix992z43919.oe_power_up = "low";
defparam ix992z43919.oe_register_mode = "none";
defparam ix992z43919.oe_sync_reset = "none";
defparam ix992z43919.operation_mode = "output";
defparam ix992z43919.output_async_reset = "none";
defparam ix992z43919.output_power_up = "low";
defparam ix992z43919.output_register_mode = "none";
defparam ix992z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_W16
cycloneii_io o_sevenseg_obuf_15_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[15]));
// synopsys translate_off
defparam o_sevenseg_obuf_15_.input_async_reset = "none";
defparam o_sevenseg_obuf_15_.input_power_up = "low";
defparam o_sevenseg_obuf_15_.input_register_mode = "none";
defparam o_sevenseg_obuf_15_.input_sync_reset = "none";
defparam o_sevenseg_obuf_15_.oe_async_reset = "none";
defparam o_sevenseg_obuf_15_.oe_power_up = "low";
defparam o_sevenseg_obuf_15_.oe_register_mode = "none";
defparam o_sevenseg_obuf_15_.oe_sync_reset = "none";
defparam o_sevenseg_obuf_15_.operation_mode = "output";
defparam o_sevenseg_obuf_15_.output_async_reset = "none";
defparam o_sevenseg_obuf_15_.output_power_up = "low";
defparam o_sevenseg_obuf_15_.output_register_mode = "none";
defparam o_sevenseg_obuf_15_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA20
cycloneii_io o_mode_obuf_0_(
	.datain(!\u_kirsch|nx64269z1 ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_mode[0]));
// synopsys translate_off
defparam o_mode_obuf_0_.input_async_reset = "none";
defparam o_mode_obuf_0_.input_power_up = "low";
defparam o_mode_obuf_0_.input_register_mode = "none";
defparam o_mode_obuf_0_.input_sync_reset = "none";
defparam o_mode_obuf_0_.oe_async_reset = "none";
defparam o_mode_obuf_0_.oe_power_up = "low";
defparam o_mode_obuf_0_.oe_register_mode = "none";
defparam o_mode_obuf_0_.oe_sync_reset = "none";
defparam o_mode_obuf_0_.operation_mode = "output";
defparam o_mode_obuf_0_.output_async_reset = "none";
defparam o_mode_obuf_0_.output_power_up = "low";
defparam o_mode_obuf_0_.output_register_mode = "none";
defparam o_mode_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_Y18
cycloneii_io o_mode_obuf_1_(
	.datain(\u_kirsch|p_o_mode_1_ ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_mode[1]));
// synopsys translate_off
defparam o_mode_obuf_1_.input_async_reset = "none";
defparam o_mode_obuf_1_.input_power_up = "low";
defparam o_mode_obuf_1_.input_register_mode = "none";
defparam o_mode_obuf_1_.input_sync_reset = "none";
defparam o_mode_obuf_1_.oe_async_reset = "none";
defparam o_mode_obuf_1_.oe_power_up = "low";
defparam o_mode_obuf_1_.oe_register_mode = "none";
defparam o_mode_obuf_1_.oe_sync_reset = "none";
defparam o_mode_obuf_1_.operation_mode = "output";
defparam o_mode_obuf_1_.output_async_reset = "none";
defparam o_mode_obuf_1_.output_power_up = "low";
defparam o_mode_obuf_1_.output_register_mode = "none";
defparam o_mode_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD12
cycloneii_io o_nrst_obuf(
	.datain(!\nrst~combout ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_nrst));
// synopsys translate_off
defparam o_nrst_obuf.input_async_reset = "none";
defparam o_nrst_obuf.input_power_up = "low";
defparam o_nrst_obuf.input_register_mode = "none";
defparam o_nrst_obuf.input_sync_reset = "none";
defparam o_nrst_obuf.oe_async_reset = "none";
defparam o_nrst_obuf.oe_power_up = "low";
defparam o_nrst_obuf.oe_register_mode = "none";
defparam o_nrst_obuf.oe_sync_reset = "none";
defparam o_nrst_obuf.operation_mode = "output";
defparam o_nrst_obuf.output_async_reset = "none";
defparam o_nrst_obuf.output_power_up = "low";
defparam o_nrst_obuf.output_register_mode = "none";
defparam o_nrst_obuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE23
cycloneii_io u_kirsch_debug_led_red_triBus3_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[0]));
// synopsys translate_off
defparam u_kirsch_debug_led_red_triBus3_0_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_0_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_0_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_0_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_0_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_0_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_0_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_0_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_0_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_0_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_0_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_0_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AF23
cycloneii_io u_kirsch_debug_led_red_triBus3_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[1]));
// synopsys translate_off
defparam u_kirsch_debug_led_red_triBus3_1_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_1_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_1_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_1_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_1_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_1_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_1_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_1_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_1_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_1_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_1_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_1_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AB21
cycloneii_io u_kirsch_debug_led_red_triBus3_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[2]));
// synopsys translate_off
defparam u_kirsch_debug_led_red_triBus3_2_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_2_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_2_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_2_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_2_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_2_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_2_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_2_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_2_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_2_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_2_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_2_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC22
cycloneii_io u_kirsch_debug_led_red_triBus3_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[3]));
// synopsys translate_off
defparam u_kirsch_debug_led_red_triBus3_3_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_3_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_3_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_3_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_3_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_3_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_3_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_3_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_3_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_3_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_3_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_3_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD22
cycloneii_io u_kirsch_debug_led_red_triBus3_4_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[4]));
// synopsys translate_off
defparam u_kirsch_debug_led_red_triBus3_4_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_4_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_4_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_4_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_4_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_4_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_4_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_4_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_4_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_4_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_4_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_4_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD23
cycloneii_io u_kirsch_debug_led_red_triBus3_5_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[5]));
// synopsys translate_off
defparam u_kirsch_debug_led_red_triBus3_5_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_5_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_5_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_5_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_5_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_5_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_5_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_5_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_5_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_5_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_5_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_5_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD21
cycloneii_io u_kirsch_debug_led_red_triBus3_6_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[6]));
// synopsys translate_off
defparam u_kirsch_debug_led_red_triBus3_6_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_6_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_6_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_6_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_6_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_6_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_6_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_6_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_6_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_6_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_6_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_6_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC21
cycloneii_io u_kirsch_debug_led_red_triBus3_7_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[7]));
// synopsys translate_off
defparam u_kirsch_debug_led_red_triBus3_7_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_7_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_7_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_7_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_7_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_7_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_7_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_7_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_7_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_7_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_7_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_7_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA14
cycloneii_io u_kirsch_debug_led_red_triBus3_8_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[8]));
// synopsys translate_off
defparam u_kirsch_debug_led_red_triBus3_8_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_8_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_8_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_8_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_8_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_8_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_8_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_8_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_8_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_8_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_8_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_8_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_8_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_Y13
cycloneii_io u_kirsch_debug_led_red_triBus3_9_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[9]));
// synopsys translate_off
defparam u_kirsch_debug_led_red_triBus3_9_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_9_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_9_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_9_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_9_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_9_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_9_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_9_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_9_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_9_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_9_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_9_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_9_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA13
cycloneii_io u_kirsch_debug_led_red_triBus3_10_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[10]));
// synopsys translate_off
defparam u_kirsch_debug_led_red_triBus3_10_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_10_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_10_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_10_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_10_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_10_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_10_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_10_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_10_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_10_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_10_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_10_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_10_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC14
cycloneii_io u_kirsch_debug_led_red_triBus3_11_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[11]));
// synopsys translate_off
defparam u_kirsch_debug_led_red_triBus3_11_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_11_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_11_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_11_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_11_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_11_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_11_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_11_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_11_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_11_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_11_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_11_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_11_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD15
cycloneii_io u_kirsch_debug_led_red_triBus3_12_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[12]));
// synopsys translate_off
defparam u_kirsch_debug_led_red_triBus3_12_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_12_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_12_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_12_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_12_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_12_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_12_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_12_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_12_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_12_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_12_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_12_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_12_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE15
cycloneii_io u_kirsch_debug_led_red_triBus3_13_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[13]));
// synopsys translate_off
defparam u_kirsch_debug_led_red_triBus3_13_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_13_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_13_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_13_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_13_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_13_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_13_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_13_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_13_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_13_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_13_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_13_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_13_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AF13
cycloneii_io u_kirsch_debug_led_red_triBus3_14_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[14]));
// synopsys translate_off
defparam u_kirsch_debug_led_red_triBus3_14_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_14_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_14_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_14_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_14_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_14_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_14_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_14_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_14_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_14_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_14_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_14_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_14_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE13
cycloneii_io u_kirsch_debug_led_red_triBus3_15_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[15]));
// synopsys translate_off
defparam u_kirsch_debug_led_red_triBus3_15_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_15_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_15_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_15_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_15_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_15_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_15_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_15_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_15_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_15_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_15_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_15_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_15_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE12
cycloneii_io u_kirsch_debug_led_red_triBus3_16_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[16]));
// synopsys translate_off
defparam u_kirsch_debug_led_red_triBus3_16_.input_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_16_.input_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_16_.input_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_16_.input_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_16_.oe_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_16_.oe_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_16_.oe_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_16_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_16_.operation_mode = "output";
defparam u_kirsch_debug_led_red_triBus3_16_.output_async_reset = "none";
defparam u_kirsch_debug_led_red_triBus3_16_.output_power_up = "low";
defparam u_kirsch_debug_led_red_triBus3_16_.output_register_mode = "none";
defparam u_kirsch_debug_led_red_triBus3_16_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE22
cycloneii_io u_kirsch_debug_led_grn_triBus4_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[0]));
// synopsys translate_off
defparam u_kirsch_debug_led_grn_triBus4_0_.input_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_0_.input_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_0_.input_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_0_.input_sync_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_0_.oe_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_0_.oe_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_0_.oe_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_0_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_0_.operation_mode = "output";
defparam u_kirsch_debug_led_grn_triBus4_0_.output_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_0_.output_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_0_.output_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AF22
cycloneii_io u_kirsch_debug_led_grn_triBus4_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[1]));
// synopsys translate_off
defparam u_kirsch_debug_led_grn_triBus4_1_.input_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_1_.input_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_1_.input_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_1_.input_sync_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_1_.oe_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_1_.oe_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_1_.oe_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_1_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_1_.operation_mode = "output";
defparam u_kirsch_debug_led_grn_triBus4_1_.output_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_1_.output_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_1_.output_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_W19
cycloneii_io u_kirsch_debug_led_grn_triBus4_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[2]));
// synopsys translate_off
defparam u_kirsch_debug_led_grn_triBus4_2_.input_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_2_.input_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_2_.input_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_2_.input_sync_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_2_.oe_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_2_.oe_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_2_.oe_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_2_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_2_.operation_mode = "output";
defparam u_kirsch_debug_led_grn_triBus4_2_.output_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_2_.output_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_2_.output_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V18
cycloneii_io u_kirsch_debug_led_grn_triBus4_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[3]));
// synopsys translate_off
defparam u_kirsch_debug_led_grn_triBus4_3_.input_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_3_.input_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_3_.input_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_3_.input_sync_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_3_.oe_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_3_.oe_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_3_.oe_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_3_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_3_.operation_mode = "output";
defparam u_kirsch_debug_led_grn_triBus4_3_.output_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_3_.output_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_3_.output_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U18
cycloneii_io u_kirsch_debug_led_grn_triBus4_4_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[4]));
// synopsys translate_off
defparam u_kirsch_debug_led_grn_triBus4_4_.input_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_4_.input_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_4_.input_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_4_.input_sync_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_4_.oe_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_4_.oe_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_4_.oe_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_4_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_4_.operation_mode = "output";
defparam u_kirsch_debug_led_grn_triBus4_4_.output_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_4_.output_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_4_.output_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U17
cycloneii_io u_kirsch_debug_led_grn_triBus4_5_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[5]));
// synopsys translate_off
defparam u_kirsch_debug_led_grn_triBus4_5_.input_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_5_.input_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_5_.input_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_5_.input_sync_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_5_.oe_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_5_.oe_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_5_.oe_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_5_.oe_sync_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_5_.operation_mode = "output";
defparam u_kirsch_debug_led_grn_triBus4_5_.output_async_reset = "none";
defparam u_kirsch_debug_led_grn_triBus4_5_.output_power_up = "low";
defparam u_kirsch_debug_led_grn_triBus4_5_.output_register_mode = "none";
defparam u_kirsch_debug_led_grn_triBus4_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V13
cycloneii_io debug_sevenseg_0_obuf_0_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[0]));
// synopsys translate_off
defparam debug_sevenseg_0_obuf_0_.input_async_reset = "none";
defparam debug_sevenseg_0_obuf_0_.input_power_up = "low";
defparam debug_sevenseg_0_obuf_0_.input_register_mode = "none";
defparam debug_sevenseg_0_obuf_0_.input_sync_reset = "none";
defparam debug_sevenseg_0_obuf_0_.oe_async_reset = "none";
defparam debug_sevenseg_0_obuf_0_.oe_power_up = "low";
defparam debug_sevenseg_0_obuf_0_.oe_register_mode = "none";
defparam debug_sevenseg_0_obuf_0_.oe_sync_reset = "none";
defparam debug_sevenseg_0_obuf_0_.operation_mode = "output";
defparam debug_sevenseg_0_obuf_0_.output_async_reset = "none";
defparam debug_sevenseg_0_obuf_0_.output_power_up = "low";
defparam debug_sevenseg_0_obuf_0_.output_register_mode = "none";
defparam debug_sevenseg_0_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V14
cycloneii_io debug_sevenseg_0_obuf_1_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[1]));
// synopsys translate_off
defparam debug_sevenseg_0_obuf_1_.input_async_reset = "none";
defparam debug_sevenseg_0_obuf_1_.input_power_up = "low";
defparam debug_sevenseg_0_obuf_1_.input_register_mode = "none";
defparam debug_sevenseg_0_obuf_1_.input_sync_reset = "none";
defparam debug_sevenseg_0_obuf_1_.oe_async_reset = "none";
defparam debug_sevenseg_0_obuf_1_.oe_power_up = "low";
defparam debug_sevenseg_0_obuf_1_.oe_register_mode = "none";
defparam debug_sevenseg_0_obuf_1_.oe_sync_reset = "none";
defparam debug_sevenseg_0_obuf_1_.operation_mode = "output";
defparam debug_sevenseg_0_obuf_1_.output_async_reset = "none";
defparam debug_sevenseg_0_obuf_1_.output_power_up = "low";
defparam debug_sevenseg_0_obuf_1_.output_register_mode = "none";
defparam debug_sevenseg_0_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE11
cycloneii_io debug_sevenseg_0_obuf_2_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[2]));
// synopsys translate_off
defparam debug_sevenseg_0_obuf_2_.input_async_reset = "none";
defparam debug_sevenseg_0_obuf_2_.input_power_up = "low";
defparam debug_sevenseg_0_obuf_2_.input_register_mode = "none";
defparam debug_sevenseg_0_obuf_2_.input_sync_reset = "none";
defparam debug_sevenseg_0_obuf_2_.oe_async_reset = "none";
defparam debug_sevenseg_0_obuf_2_.oe_power_up = "low";
defparam debug_sevenseg_0_obuf_2_.oe_register_mode = "none";
defparam debug_sevenseg_0_obuf_2_.oe_sync_reset = "none";
defparam debug_sevenseg_0_obuf_2_.operation_mode = "output";
defparam debug_sevenseg_0_obuf_2_.output_async_reset = "none";
defparam debug_sevenseg_0_obuf_2_.output_power_up = "low";
defparam debug_sevenseg_0_obuf_2_.output_register_mode = "none";
defparam debug_sevenseg_0_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD11
cycloneii_io debug_sevenseg_0_obuf_3_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[3]));
// synopsys translate_off
defparam debug_sevenseg_0_obuf_3_.input_async_reset = "none";
defparam debug_sevenseg_0_obuf_3_.input_power_up = "low";
defparam debug_sevenseg_0_obuf_3_.input_register_mode = "none";
defparam debug_sevenseg_0_obuf_3_.input_sync_reset = "none";
defparam debug_sevenseg_0_obuf_3_.oe_async_reset = "none";
defparam debug_sevenseg_0_obuf_3_.oe_power_up = "low";
defparam debug_sevenseg_0_obuf_3_.oe_register_mode = "none";
defparam debug_sevenseg_0_obuf_3_.oe_sync_reset = "none";
defparam debug_sevenseg_0_obuf_3_.operation_mode = "output";
defparam debug_sevenseg_0_obuf_3_.output_async_reset = "none";
defparam debug_sevenseg_0_obuf_3_.output_power_up = "low";
defparam debug_sevenseg_0_obuf_3_.output_register_mode = "none";
defparam debug_sevenseg_0_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC12
cycloneii_io debug_sevenseg_0_obuf_4_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[4]));
// synopsys translate_off
defparam debug_sevenseg_0_obuf_4_.input_async_reset = "none";
defparam debug_sevenseg_0_obuf_4_.input_power_up = "low";
defparam debug_sevenseg_0_obuf_4_.input_register_mode = "none";
defparam debug_sevenseg_0_obuf_4_.input_sync_reset = "none";
defparam debug_sevenseg_0_obuf_4_.oe_async_reset = "none";
defparam debug_sevenseg_0_obuf_4_.oe_power_up = "low";
defparam debug_sevenseg_0_obuf_4_.oe_register_mode = "none";
defparam debug_sevenseg_0_obuf_4_.oe_sync_reset = "none";
defparam debug_sevenseg_0_obuf_4_.operation_mode = "output";
defparam debug_sevenseg_0_obuf_4_.output_async_reset = "none";
defparam debug_sevenseg_0_obuf_4_.output_power_up = "low";
defparam debug_sevenseg_0_obuf_4_.output_register_mode = "none";
defparam debug_sevenseg_0_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AB12
cycloneii_io debug_sevenseg_0_obuf_5_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[5]));
// synopsys translate_off
defparam debug_sevenseg_0_obuf_5_.input_async_reset = "none";
defparam debug_sevenseg_0_obuf_5_.input_power_up = "low";
defparam debug_sevenseg_0_obuf_5_.input_register_mode = "none";
defparam debug_sevenseg_0_obuf_5_.input_sync_reset = "none";
defparam debug_sevenseg_0_obuf_5_.oe_async_reset = "none";
defparam debug_sevenseg_0_obuf_5_.oe_power_up = "low";
defparam debug_sevenseg_0_obuf_5_.oe_register_mode = "none";
defparam debug_sevenseg_0_obuf_5_.oe_sync_reset = "none";
defparam debug_sevenseg_0_obuf_5_.operation_mode = "output";
defparam debug_sevenseg_0_obuf_5_.output_async_reset = "none";
defparam debug_sevenseg_0_obuf_5_.output_power_up = "low";
defparam debug_sevenseg_0_obuf_5_.output_register_mode = "none";
defparam debug_sevenseg_0_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AF10
cycloneii_io debug_sevenseg_0_obuf_6_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[6]));
// synopsys translate_off
defparam debug_sevenseg_0_obuf_6_.input_async_reset = "none";
defparam debug_sevenseg_0_obuf_6_.input_power_up = "low";
defparam debug_sevenseg_0_obuf_6_.input_register_mode = "none";
defparam debug_sevenseg_0_obuf_6_.input_sync_reset = "none";
defparam debug_sevenseg_0_obuf_6_.oe_async_reset = "none";
defparam debug_sevenseg_0_obuf_6_.oe_power_up = "low";
defparam debug_sevenseg_0_obuf_6_.oe_register_mode = "none";
defparam debug_sevenseg_0_obuf_6_.oe_sync_reset = "none";
defparam debug_sevenseg_0_obuf_6_.operation_mode = "output";
defparam debug_sevenseg_0_obuf_6_.output_async_reset = "none";
defparam debug_sevenseg_0_obuf_6_.output_power_up = "low";
defparam debug_sevenseg_0_obuf_6_.output_register_mode = "none";
defparam debug_sevenseg_0_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G10
cycloneii_io debug_sevenseg_0_obuf_7_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[7]));
// synopsys translate_off
defparam debug_sevenseg_0_obuf_7_.input_async_reset = "none";
defparam debug_sevenseg_0_obuf_7_.input_power_up = "low";
defparam debug_sevenseg_0_obuf_7_.input_register_mode = "none";
defparam debug_sevenseg_0_obuf_7_.input_sync_reset = "none";
defparam debug_sevenseg_0_obuf_7_.oe_async_reset = "none";
defparam debug_sevenseg_0_obuf_7_.oe_power_up = "low";
defparam debug_sevenseg_0_obuf_7_.oe_register_mode = "none";
defparam debug_sevenseg_0_obuf_7_.oe_sync_reset = "none";
defparam debug_sevenseg_0_obuf_7_.operation_mode = "output";
defparam debug_sevenseg_0_obuf_7_.output_async_reset = "none";
defparam debug_sevenseg_0_obuf_7_.output_power_up = "low";
defparam debug_sevenseg_0_obuf_7_.output_register_mode = "none";
defparam debug_sevenseg_0_obuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AB24
cycloneii_io debug_sevenseg_1_obuf_0_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[0]));
// synopsys translate_off
defparam debug_sevenseg_1_obuf_0_.input_async_reset = "none";
defparam debug_sevenseg_1_obuf_0_.input_power_up = "low";
defparam debug_sevenseg_1_obuf_0_.input_register_mode = "none";
defparam debug_sevenseg_1_obuf_0_.input_sync_reset = "none";
defparam debug_sevenseg_1_obuf_0_.oe_async_reset = "none";
defparam debug_sevenseg_1_obuf_0_.oe_power_up = "low";
defparam debug_sevenseg_1_obuf_0_.oe_register_mode = "none";
defparam debug_sevenseg_1_obuf_0_.oe_sync_reset = "none";
defparam debug_sevenseg_1_obuf_0_.operation_mode = "output";
defparam debug_sevenseg_1_obuf_0_.output_async_reset = "none";
defparam debug_sevenseg_1_obuf_0_.output_power_up = "low";
defparam debug_sevenseg_1_obuf_0_.output_register_mode = "none";
defparam debug_sevenseg_1_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA23
cycloneii_io debug_sevenseg_1_obuf_1_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[1]));
// synopsys translate_off
defparam debug_sevenseg_1_obuf_1_.input_async_reset = "none";
defparam debug_sevenseg_1_obuf_1_.input_power_up = "low";
defparam debug_sevenseg_1_obuf_1_.input_register_mode = "none";
defparam debug_sevenseg_1_obuf_1_.input_sync_reset = "none";
defparam debug_sevenseg_1_obuf_1_.oe_async_reset = "none";
defparam debug_sevenseg_1_obuf_1_.oe_power_up = "low";
defparam debug_sevenseg_1_obuf_1_.oe_register_mode = "none";
defparam debug_sevenseg_1_obuf_1_.oe_sync_reset = "none";
defparam debug_sevenseg_1_obuf_1_.operation_mode = "output";
defparam debug_sevenseg_1_obuf_1_.output_async_reset = "none";
defparam debug_sevenseg_1_obuf_1_.output_power_up = "low";
defparam debug_sevenseg_1_obuf_1_.output_register_mode = "none";
defparam debug_sevenseg_1_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA24
cycloneii_io debug_sevenseg_1_obuf_2_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[2]));
// synopsys translate_off
defparam debug_sevenseg_1_obuf_2_.input_async_reset = "none";
defparam debug_sevenseg_1_obuf_2_.input_power_up = "low";
defparam debug_sevenseg_1_obuf_2_.input_register_mode = "none";
defparam debug_sevenseg_1_obuf_2_.input_sync_reset = "none";
defparam debug_sevenseg_1_obuf_2_.oe_async_reset = "none";
defparam debug_sevenseg_1_obuf_2_.oe_power_up = "low";
defparam debug_sevenseg_1_obuf_2_.oe_register_mode = "none";
defparam debug_sevenseg_1_obuf_2_.oe_sync_reset = "none";
defparam debug_sevenseg_1_obuf_2_.operation_mode = "output";
defparam debug_sevenseg_1_obuf_2_.output_async_reset = "none";
defparam debug_sevenseg_1_obuf_2_.output_power_up = "low";
defparam debug_sevenseg_1_obuf_2_.output_register_mode = "none";
defparam debug_sevenseg_1_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_Y22
cycloneii_io debug_sevenseg_1_obuf_3_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[3]));
// synopsys translate_off
defparam debug_sevenseg_1_obuf_3_.input_async_reset = "none";
defparam debug_sevenseg_1_obuf_3_.input_power_up = "low";
defparam debug_sevenseg_1_obuf_3_.input_register_mode = "none";
defparam debug_sevenseg_1_obuf_3_.input_sync_reset = "none";
defparam debug_sevenseg_1_obuf_3_.oe_async_reset = "none";
defparam debug_sevenseg_1_obuf_3_.oe_power_up = "low";
defparam debug_sevenseg_1_obuf_3_.oe_register_mode = "none";
defparam debug_sevenseg_1_obuf_3_.oe_sync_reset = "none";
defparam debug_sevenseg_1_obuf_3_.operation_mode = "output";
defparam debug_sevenseg_1_obuf_3_.output_async_reset = "none";
defparam debug_sevenseg_1_obuf_3_.output_power_up = "low";
defparam debug_sevenseg_1_obuf_3_.output_register_mode = "none";
defparam debug_sevenseg_1_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_W21
cycloneii_io debug_sevenseg_1_obuf_4_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[4]));
// synopsys translate_off
defparam debug_sevenseg_1_obuf_4_.input_async_reset = "none";
defparam debug_sevenseg_1_obuf_4_.input_power_up = "low";
defparam debug_sevenseg_1_obuf_4_.input_register_mode = "none";
defparam debug_sevenseg_1_obuf_4_.input_sync_reset = "none";
defparam debug_sevenseg_1_obuf_4_.oe_async_reset = "none";
defparam debug_sevenseg_1_obuf_4_.oe_power_up = "low";
defparam debug_sevenseg_1_obuf_4_.oe_register_mode = "none";
defparam debug_sevenseg_1_obuf_4_.oe_sync_reset = "none";
defparam debug_sevenseg_1_obuf_4_.operation_mode = "output";
defparam debug_sevenseg_1_obuf_4_.output_async_reset = "none";
defparam debug_sevenseg_1_obuf_4_.output_power_up = "low";
defparam debug_sevenseg_1_obuf_4_.output_register_mode = "none";
defparam debug_sevenseg_1_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V21
cycloneii_io debug_sevenseg_1_obuf_5_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[5]));
// synopsys translate_off
defparam debug_sevenseg_1_obuf_5_.input_async_reset = "none";
defparam debug_sevenseg_1_obuf_5_.input_power_up = "low";
defparam debug_sevenseg_1_obuf_5_.input_register_mode = "none";
defparam debug_sevenseg_1_obuf_5_.input_sync_reset = "none";
defparam debug_sevenseg_1_obuf_5_.oe_async_reset = "none";
defparam debug_sevenseg_1_obuf_5_.oe_power_up = "low";
defparam debug_sevenseg_1_obuf_5_.oe_register_mode = "none";
defparam debug_sevenseg_1_obuf_5_.oe_sync_reset = "none";
defparam debug_sevenseg_1_obuf_5_.operation_mode = "output";
defparam debug_sevenseg_1_obuf_5_.output_async_reset = "none";
defparam debug_sevenseg_1_obuf_5_.output_power_up = "low";
defparam debug_sevenseg_1_obuf_5_.output_register_mode = "none";
defparam debug_sevenseg_1_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V20
cycloneii_io debug_sevenseg_1_obuf_6_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[6]));
// synopsys translate_off
defparam debug_sevenseg_1_obuf_6_.input_async_reset = "none";
defparam debug_sevenseg_1_obuf_6_.input_power_up = "low";
defparam debug_sevenseg_1_obuf_6_.input_register_mode = "none";
defparam debug_sevenseg_1_obuf_6_.input_sync_reset = "none";
defparam debug_sevenseg_1_obuf_6_.oe_async_reset = "none";
defparam debug_sevenseg_1_obuf_6_.oe_power_up = "low";
defparam debug_sevenseg_1_obuf_6_.oe_register_mode = "none";
defparam debug_sevenseg_1_obuf_6_.oe_sync_reset = "none";
defparam debug_sevenseg_1_obuf_6_.operation_mode = "output";
defparam debug_sevenseg_1_obuf_6_.output_async_reset = "none";
defparam debug_sevenseg_1_obuf_6_.output_power_up = "low";
defparam debug_sevenseg_1_obuf_6_.output_register_mode = "none";
defparam debug_sevenseg_1_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G16
cycloneii_io debug_sevenseg_1_obuf_7_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[7]));
// synopsys translate_off
defparam debug_sevenseg_1_obuf_7_.input_async_reset = "none";
defparam debug_sevenseg_1_obuf_7_.input_power_up = "low";
defparam debug_sevenseg_1_obuf_7_.input_register_mode = "none";
defparam debug_sevenseg_1_obuf_7_.input_sync_reset = "none";
defparam debug_sevenseg_1_obuf_7_.oe_async_reset = "none";
defparam debug_sevenseg_1_obuf_7_.oe_power_up = "low";
defparam debug_sevenseg_1_obuf_7_.oe_register_mode = "none";
defparam debug_sevenseg_1_obuf_7_.oe_sync_reset = "none";
defparam debug_sevenseg_1_obuf_7_.operation_mode = "output";
defparam debug_sevenseg_1_obuf_7_.output_async_reset = "none";
defparam debug_sevenseg_1_obuf_7_.output_power_up = "low";
defparam debug_sevenseg_1_obuf_7_.output_register_mode = "none";
defparam debug_sevenseg_1_obuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_Y24
cycloneii_io debug_sevenseg_2_obuf_0_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[0]));
// synopsys translate_off
defparam debug_sevenseg_2_obuf_0_.input_async_reset = "none";
defparam debug_sevenseg_2_obuf_0_.input_power_up = "low";
defparam debug_sevenseg_2_obuf_0_.input_register_mode = "none";
defparam debug_sevenseg_2_obuf_0_.input_sync_reset = "none";
defparam debug_sevenseg_2_obuf_0_.oe_async_reset = "none";
defparam debug_sevenseg_2_obuf_0_.oe_power_up = "low";
defparam debug_sevenseg_2_obuf_0_.oe_register_mode = "none";
defparam debug_sevenseg_2_obuf_0_.oe_sync_reset = "none";
defparam debug_sevenseg_2_obuf_0_.operation_mode = "output";
defparam debug_sevenseg_2_obuf_0_.output_async_reset = "none";
defparam debug_sevenseg_2_obuf_0_.output_power_up = "low";
defparam debug_sevenseg_2_obuf_0_.output_register_mode = "none";
defparam debug_sevenseg_2_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AB25
cycloneii_io debug_sevenseg_2_obuf_1_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[1]));
// synopsys translate_off
defparam debug_sevenseg_2_obuf_1_.input_async_reset = "none";
defparam debug_sevenseg_2_obuf_1_.input_power_up = "low";
defparam debug_sevenseg_2_obuf_1_.input_register_mode = "none";
defparam debug_sevenseg_2_obuf_1_.input_sync_reset = "none";
defparam debug_sevenseg_2_obuf_1_.oe_async_reset = "none";
defparam debug_sevenseg_2_obuf_1_.oe_power_up = "low";
defparam debug_sevenseg_2_obuf_1_.oe_register_mode = "none";
defparam debug_sevenseg_2_obuf_1_.oe_sync_reset = "none";
defparam debug_sevenseg_2_obuf_1_.operation_mode = "output";
defparam debug_sevenseg_2_obuf_1_.output_async_reset = "none";
defparam debug_sevenseg_2_obuf_1_.output_power_up = "low";
defparam debug_sevenseg_2_obuf_1_.output_register_mode = "none";
defparam debug_sevenseg_2_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AB26
cycloneii_io debug_sevenseg_2_obuf_2_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[2]));
// synopsys translate_off
defparam debug_sevenseg_2_obuf_2_.input_async_reset = "none";
defparam debug_sevenseg_2_obuf_2_.input_power_up = "low";
defparam debug_sevenseg_2_obuf_2_.input_register_mode = "none";
defparam debug_sevenseg_2_obuf_2_.input_sync_reset = "none";
defparam debug_sevenseg_2_obuf_2_.oe_async_reset = "none";
defparam debug_sevenseg_2_obuf_2_.oe_power_up = "low";
defparam debug_sevenseg_2_obuf_2_.oe_register_mode = "none";
defparam debug_sevenseg_2_obuf_2_.oe_sync_reset = "none";
defparam debug_sevenseg_2_obuf_2_.operation_mode = "output";
defparam debug_sevenseg_2_obuf_2_.output_async_reset = "none";
defparam debug_sevenseg_2_obuf_2_.output_power_up = "low";
defparam debug_sevenseg_2_obuf_2_.output_register_mode = "none";
defparam debug_sevenseg_2_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC26
cycloneii_io debug_sevenseg_2_obuf_3_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[3]));
// synopsys translate_off
defparam debug_sevenseg_2_obuf_3_.input_async_reset = "none";
defparam debug_sevenseg_2_obuf_3_.input_power_up = "low";
defparam debug_sevenseg_2_obuf_3_.input_register_mode = "none";
defparam debug_sevenseg_2_obuf_3_.input_sync_reset = "none";
defparam debug_sevenseg_2_obuf_3_.oe_async_reset = "none";
defparam debug_sevenseg_2_obuf_3_.oe_power_up = "low";
defparam debug_sevenseg_2_obuf_3_.oe_register_mode = "none";
defparam debug_sevenseg_2_obuf_3_.oe_sync_reset = "none";
defparam debug_sevenseg_2_obuf_3_.operation_mode = "output";
defparam debug_sevenseg_2_obuf_3_.output_async_reset = "none";
defparam debug_sevenseg_2_obuf_3_.output_power_up = "low";
defparam debug_sevenseg_2_obuf_3_.output_register_mode = "none";
defparam debug_sevenseg_2_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC25
cycloneii_io debug_sevenseg_2_obuf_4_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[4]));
// synopsys translate_off
defparam debug_sevenseg_2_obuf_4_.input_async_reset = "none";
defparam debug_sevenseg_2_obuf_4_.input_power_up = "low";
defparam debug_sevenseg_2_obuf_4_.input_register_mode = "none";
defparam debug_sevenseg_2_obuf_4_.input_sync_reset = "none";
defparam debug_sevenseg_2_obuf_4_.oe_async_reset = "none";
defparam debug_sevenseg_2_obuf_4_.oe_power_up = "low";
defparam debug_sevenseg_2_obuf_4_.oe_register_mode = "none";
defparam debug_sevenseg_2_obuf_4_.oe_sync_reset = "none";
defparam debug_sevenseg_2_obuf_4_.operation_mode = "output";
defparam debug_sevenseg_2_obuf_4_.output_async_reset = "none";
defparam debug_sevenseg_2_obuf_4_.output_power_up = "low";
defparam debug_sevenseg_2_obuf_4_.output_register_mode = "none";
defparam debug_sevenseg_2_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V22
cycloneii_io debug_sevenseg_2_obuf_5_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[5]));
// synopsys translate_off
defparam debug_sevenseg_2_obuf_5_.input_async_reset = "none";
defparam debug_sevenseg_2_obuf_5_.input_power_up = "low";
defparam debug_sevenseg_2_obuf_5_.input_register_mode = "none";
defparam debug_sevenseg_2_obuf_5_.input_sync_reset = "none";
defparam debug_sevenseg_2_obuf_5_.oe_async_reset = "none";
defparam debug_sevenseg_2_obuf_5_.oe_power_up = "low";
defparam debug_sevenseg_2_obuf_5_.oe_register_mode = "none";
defparam debug_sevenseg_2_obuf_5_.oe_sync_reset = "none";
defparam debug_sevenseg_2_obuf_5_.operation_mode = "output";
defparam debug_sevenseg_2_obuf_5_.output_async_reset = "none";
defparam debug_sevenseg_2_obuf_5_.output_power_up = "low";
defparam debug_sevenseg_2_obuf_5_.output_register_mode = "none";
defparam debug_sevenseg_2_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AB23
cycloneii_io debug_sevenseg_2_obuf_6_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[6]));
// synopsys translate_off
defparam debug_sevenseg_2_obuf_6_.input_async_reset = "none";
defparam debug_sevenseg_2_obuf_6_.input_power_up = "low";
defparam debug_sevenseg_2_obuf_6_.input_register_mode = "none";
defparam debug_sevenseg_2_obuf_6_.input_sync_reset = "none";
defparam debug_sevenseg_2_obuf_6_.oe_async_reset = "none";
defparam debug_sevenseg_2_obuf_6_.oe_power_up = "low";
defparam debug_sevenseg_2_obuf_6_.oe_register_mode = "none";
defparam debug_sevenseg_2_obuf_6_.oe_sync_reset = "none";
defparam debug_sevenseg_2_obuf_6_.operation_mode = "output";
defparam debug_sevenseg_2_obuf_6_.output_async_reset = "none";
defparam debug_sevenseg_2_obuf_6_.output_power_up = "low";
defparam debug_sevenseg_2_obuf_6_.output_register_mode = "none";
defparam debug_sevenseg_2_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_E12
cycloneii_io debug_sevenseg_2_obuf_7_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[7]));
// synopsys translate_off
defparam debug_sevenseg_2_obuf_7_.input_async_reset = "none";
defparam debug_sevenseg_2_obuf_7_.input_power_up = "low";
defparam debug_sevenseg_2_obuf_7_.input_register_mode = "none";
defparam debug_sevenseg_2_obuf_7_.input_sync_reset = "none";
defparam debug_sevenseg_2_obuf_7_.oe_async_reset = "none";
defparam debug_sevenseg_2_obuf_7_.oe_power_up = "low";
defparam debug_sevenseg_2_obuf_7_.oe_register_mode = "none";
defparam debug_sevenseg_2_obuf_7_.oe_sync_reset = "none";
defparam debug_sevenseg_2_obuf_7_.operation_mode = "output";
defparam debug_sevenseg_2_obuf_7_.output_async_reset = "none";
defparam debug_sevenseg_2_obuf_7_.output_power_up = "low";
defparam debug_sevenseg_2_obuf_7_.output_register_mode = "none";
defparam debug_sevenseg_2_obuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_W24
cycloneii_io debug_sevenseg_3_obuf_0_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[0]));
// synopsys translate_off
defparam debug_sevenseg_3_obuf_0_.input_async_reset = "none";
defparam debug_sevenseg_3_obuf_0_.input_power_up = "low";
defparam debug_sevenseg_3_obuf_0_.input_register_mode = "none";
defparam debug_sevenseg_3_obuf_0_.input_sync_reset = "none";
defparam debug_sevenseg_3_obuf_0_.oe_async_reset = "none";
defparam debug_sevenseg_3_obuf_0_.oe_power_up = "low";
defparam debug_sevenseg_3_obuf_0_.oe_register_mode = "none";
defparam debug_sevenseg_3_obuf_0_.oe_sync_reset = "none";
defparam debug_sevenseg_3_obuf_0_.operation_mode = "output";
defparam debug_sevenseg_3_obuf_0_.output_async_reset = "none";
defparam debug_sevenseg_3_obuf_0_.output_power_up = "low";
defparam debug_sevenseg_3_obuf_0_.output_register_mode = "none";
defparam debug_sevenseg_3_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U22
cycloneii_io debug_sevenseg_3_obuf_1_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[1]));
// synopsys translate_off
defparam debug_sevenseg_3_obuf_1_.input_async_reset = "none";
defparam debug_sevenseg_3_obuf_1_.input_power_up = "low";
defparam debug_sevenseg_3_obuf_1_.input_register_mode = "none";
defparam debug_sevenseg_3_obuf_1_.input_sync_reset = "none";
defparam debug_sevenseg_3_obuf_1_.oe_async_reset = "none";
defparam debug_sevenseg_3_obuf_1_.oe_power_up = "low";
defparam debug_sevenseg_3_obuf_1_.oe_register_mode = "none";
defparam debug_sevenseg_3_obuf_1_.oe_sync_reset = "none";
defparam debug_sevenseg_3_obuf_1_.operation_mode = "output";
defparam debug_sevenseg_3_obuf_1_.output_async_reset = "none";
defparam debug_sevenseg_3_obuf_1_.output_power_up = "low";
defparam debug_sevenseg_3_obuf_1_.output_register_mode = "none";
defparam debug_sevenseg_3_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_Y25
cycloneii_io debug_sevenseg_3_obuf_2_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[2]));
// synopsys translate_off
defparam debug_sevenseg_3_obuf_2_.input_async_reset = "none";
defparam debug_sevenseg_3_obuf_2_.input_power_up = "low";
defparam debug_sevenseg_3_obuf_2_.input_register_mode = "none";
defparam debug_sevenseg_3_obuf_2_.input_sync_reset = "none";
defparam debug_sevenseg_3_obuf_2_.oe_async_reset = "none";
defparam debug_sevenseg_3_obuf_2_.oe_power_up = "low";
defparam debug_sevenseg_3_obuf_2_.oe_register_mode = "none";
defparam debug_sevenseg_3_obuf_2_.oe_sync_reset = "none";
defparam debug_sevenseg_3_obuf_2_.operation_mode = "output";
defparam debug_sevenseg_3_obuf_2_.output_async_reset = "none";
defparam debug_sevenseg_3_obuf_2_.output_power_up = "low";
defparam debug_sevenseg_3_obuf_2_.output_register_mode = "none";
defparam debug_sevenseg_3_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_Y26
cycloneii_io debug_sevenseg_3_obuf_3_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[3]));
// synopsys translate_off
defparam debug_sevenseg_3_obuf_3_.input_async_reset = "none";
defparam debug_sevenseg_3_obuf_3_.input_power_up = "low";
defparam debug_sevenseg_3_obuf_3_.input_register_mode = "none";
defparam debug_sevenseg_3_obuf_3_.input_sync_reset = "none";
defparam debug_sevenseg_3_obuf_3_.oe_async_reset = "none";
defparam debug_sevenseg_3_obuf_3_.oe_power_up = "low";
defparam debug_sevenseg_3_obuf_3_.oe_register_mode = "none";
defparam debug_sevenseg_3_obuf_3_.oe_sync_reset = "none";
defparam debug_sevenseg_3_obuf_3_.operation_mode = "output";
defparam debug_sevenseg_3_obuf_3_.output_async_reset = "none";
defparam debug_sevenseg_3_obuf_3_.output_power_up = "low";
defparam debug_sevenseg_3_obuf_3_.output_register_mode = "none";
defparam debug_sevenseg_3_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA26
cycloneii_io debug_sevenseg_3_obuf_4_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[4]));
// synopsys translate_off
defparam debug_sevenseg_3_obuf_4_.input_async_reset = "none";
defparam debug_sevenseg_3_obuf_4_.input_power_up = "low";
defparam debug_sevenseg_3_obuf_4_.input_register_mode = "none";
defparam debug_sevenseg_3_obuf_4_.input_sync_reset = "none";
defparam debug_sevenseg_3_obuf_4_.oe_async_reset = "none";
defparam debug_sevenseg_3_obuf_4_.oe_power_up = "low";
defparam debug_sevenseg_3_obuf_4_.oe_register_mode = "none";
defparam debug_sevenseg_3_obuf_4_.oe_sync_reset = "none";
defparam debug_sevenseg_3_obuf_4_.operation_mode = "output";
defparam debug_sevenseg_3_obuf_4_.output_async_reset = "none";
defparam debug_sevenseg_3_obuf_4_.output_power_up = "low";
defparam debug_sevenseg_3_obuf_4_.output_register_mode = "none";
defparam debug_sevenseg_3_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA25
cycloneii_io debug_sevenseg_3_obuf_5_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[5]));
// synopsys translate_off
defparam debug_sevenseg_3_obuf_5_.input_async_reset = "none";
defparam debug_sevenseg_3_obuf_5_.input_power_up = "low";
defparam debug_sevenseg_3_obuf_5_.input_register_mode = "none";
defparam debug_sevenseg_3_obuf_5_.input_sync_reset = "none";
defparam debug_sevenseg_3_obuf_5_.oe_async_reset = "none";
defparam debug_sevenseg_3_obuf_5_.oe_power_up = "low";
defparam debug_sevenseg_3_obuf_5_.oe_register_mode = "none";
defparam debug_sevenseg_3_obuf_5_.oe_sync_reset = "none";
defparam debug_sevenseg_3_obuf_5_.operation_mode = "output";
defparam debug_sevenseg_3_obuf_5_.output_async_reset = "none";
defparam debug_sevenseg_3_obuf_5_.output_power_up = "low";
defparam debug_sevenseg_3_obuf_5_.output_register_mode = "none";
defparam debug_sevenseg_3_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_Y23
cycloneii_io debug_sevenseg_3_obuf_6_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[6]));
// synopsys translate_off
defparam debug_sevenseg_3_obuf_6_.input_async_reset = "none";
defparam debug_sevenseg_3_obuf_6_.input_power_up = "low";
defparam debug_sevenseg_3_obuf_6_.input_register_mode = "none";
defparam debug_sevenseg_3_obuf_6_.input_sync_reset = "none";
defparam debug_sevenseg_3_obuf_6_.oe_async_reset = "none";
defparam debug_sevenseg_3_obuf_6_.oe_power_up = "low";
defparam debug_sevenseg_3_obuf_6_.oe_register_mode = "none";
defparam debug_sevenseg_3_obuf_6_.oe_sync_reset = "none";
defparam debug_sevenseg_3_obuf_6_.operation_mode = "output";
defparam debug_sevenseg_3_obuf_6_.output_async_reset = "none";
defparam debug_sevenseg_3_obuf_6_.output_power_up = "low";
defparam debug_sevenseg_3_obuf_6_.output_register_mode = "none";
defparam debug_sevenseg_3_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AB20
cycloneii_io debug_sevenseg_3_obuf_7_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[7]));
// synopsys translate_off
defparam debug_sevenseg_3_obuf_7_.input_async_reset = "none";
defparam debug_sevenseg_3_obuf_7_.input_power_up = "low";
defparam debug_sevenseg_3_obuf_7_.input_register_mode = "none";
defparam debug_sevenseg_3_obuf_7_.input_sync_reset = "none";
defparam debug_sevenseg_3_obuf_7_.oe_async_reset = "none";
defparam debug_sevenseg_3_obuf_7_.oe_power_up = "low";
defparam debug_sevenseg_3_obuf_7_.oe_register_mode = "none";
defparam debug_sevenseg_3_obuf_7_.oe_sync_reset = "none";
defparam debug_sevenseg_3_obuf_7_.operation_mode = "output";
defparam debug_sevenseg_3_obuf_7_.output_async_reset = "none";
defparam debug_sevenseg_3_obuf_7_.output_power_up = "low";
defparam debug_sevenseg_3_obuf_7_.output_register_mode = "none";
defparam debug_sevenseg_3_obuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T3
cycloneii_io debug_sevenseg_4_obuf_0_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[0]));
// synopsys translate_off
defparam debug_sevenseg_4_obuf_0_.input_async_reset = "none";
defparam debug_sevenseg_4_obuf_0_.input_power_up = "low";
defparam debug_sevenseg_4_obuf_0_.input_register_mode = "none";
defparam debug_sevenseg_4_obuf_0_.input_sync_reset = "none";
defparam debug_sevenseg_4_obuf_0_.oe_async_reset = "none";
defparam debug_sevenseg_4_obuf_0_.oe_power_up = "low";
defparam debug_sevenseg_4_obuf_0_.oe_register_mode = "none";
defparam debug_sevenseg_4_obuf_0_.oe_sync_reset = "none";
defparam debug_sevenseg_4_obuf_0_.operation_mode = "output";
defparam debug_sevenseg_4_obuf_0_.output_async_reset = "none";
defparam debug_sevenseg_4_obuf_0_.output_power_up = "low";
defparam debug_sevenseg_4_obuf_0_.output_register_mode = "none";
defparam debug_sevenseg_4_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_R6
cycloneii_io debug_sevenseg_4_obuf_1_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[1]));
// synopsys translate_off
defparam debug_sevenseg_4_obuf_1_.input_async_reset = "none";
defparam debug_sevenseg_4_obuf_1_.input_power_up = "low";
defparam debug_sevenseg_4_obuf_1_.input_register_mode = "none";
defparam debug_sevenseg_4_obuf_1_.input_sync_reset = "none";
defparam debug_sevenseg_4_obuf_1_.oe_async_reset = "none";
defparam debug_sevenseg_4_obuf_1_.oe_power_up = "low";
defparam debug_sevenseg_4_obuf_1_.oe_register_mode = "none";
defparam debug_sevenseg_4_obuf_1_.oe_sync_reset = "none";
defparam debug_sevenseg_4_obuf_1_.operation_mode = "output";
defparam debug_sevenseg_4_obuf_1_.output_async_reset = "none";
defparam debug_sevenseg_4_obuf_1_.output_power_up = "low";
defparam debug_sevenseg_4_obuf_1_.output_register_mode = "none";
defparam debug_sevenseg_4_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_R7
cycloneii_io debug_sevenseg_4_obuf_2_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[2]));
// synopsys translate_off
defparam debug_sevenseg_4_obuf_2_.input_async_reset = "none";
defparam debug_sevenseg_4_obuf_2_.input_power_up = "low";
defparam debug_sevenseg_4_obuf_2_.input_register_mode = "none";
defparam debug_sevenseg_4_obuf_2_.input_sync_reset = "none";
defparam debug_sevenseg_4_obuf_2_.oe_async_reset = "none";
defparam debug_sevenseg_4_obuf_2_.oe_power_up = "low";
defparam debug_sevenseg_4_obuf_2_.oe_register_mode = "none";
defparam debug_sevenseg_4_obuf_2_.oe_sync_reset = "none";
defparam debug_sevenseg_4_obuf_2_.operation_mode = "output";
defparam debug_sevenseg_4_obuf_2_.output_async_reset = "none";
defparam debug_sevenseg_4_obuf_2_.output_power_up = "low";
defparam debug_sevenseg_4_obuf_2_.output_register_mode = "none";
defparam debug_sevenseg_4_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T4
cycloneii_io debug_sevenseg_4_obuf_3_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[3]));
// synopsys translate_off
defparam debug_sevenseg_4_obuf_3_.input_async_reset = "none";
defparam debug_sevenseg_4_obuf_3_.input_power_up = "low";
defparam debug_sevenseg_4_obuf_3_.input_register_mode = "none";
defparam debug_sevenseg_4_obuf_3_.input_sync_reset = "none";
defparam debug_sevenseg_4_obuf_3_.oe_async_reset = "none";
defparam debug_sevenseg_4_obuf_3_.oe_power_up = "low";
defparam debug_sevenseg_4_obuf_3_.oe_register_mode = "none";
defparam debug_sevenseg_4_obuf_3_.oe_sync_reset = "none";
defparam debug_sevenseg_4_obuf_3_.operation_mode = "output";
defparam debug_sevenseg_4_obuf_3_.output_async_reset = "none";
defparam debug_sevenseg_4_obuf_3_.output_power_up = "low";
defparam debug_sevenseg_4_obuf_3_.output_register_mode = "none";
defparam debug_sevenseg_4_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U2
cycloneii_io debug_sevenseg_4_obuf_4_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[4]));
// synopsys translate_off
defparam debug_sevenseg_4_obuf_4_.input_async_reset = "none";
defparam debug_sevenseg_4_obuf_4_.input_power_up = "low";
defparam debug_sevenseg_4_obuf_4_.input_register_mode = "none";
defparam debug_sevenseg_4_obuf_4_.input_sync_reset = "none";
defparam debug_sevenseg_4_obuf_4_.oe_async_reset = "none";
defparam debug_sevenseg_4_obuf_4_.oe_power_up = "low";
defparam debug_sevenseg_4_obuf_4_.oe_register_mode = "none";
defparam debug_sevenseg_4_obuf_4_.oe_sync_reset = "none";
defparam debug_sevenseg_4_obuf_4_.operation_mode = "output";
defparam debug_sevenseg_4_obuf_4_.output_async_reset = "none";
defparam debug_sevenseg_4_obuf_4_.output_power_up = "low";
defparam debug_sevenseg_4_obuf_4_.output_register_mode = "none";
defparam debug_sevenseg_4_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U1
cycloneii_io debug_sevenseg_4_obuf_5_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[5]));
// synopsys translate_off
defparam debug_sevenseg_4_obuf_5_.input_async_reset = "none";
defparam debug_sevenseg_4_obuf_5_.input_power_up = "low";
defparam debug_sevenseg_4_obuf_5_.input_register_mode = "none";
defparam debug_sevenseg_4_obuf_5_.input_sync_reset = "none";
defparam debug_sevenseg_4_obuf_5_.oe_async_reset = "none";
defparam debug_sevenseg_4_obuf_5_.oe_power_up = "low";
defparam debug_sevenseg_4_obuf_5_.oe_register_mode = "none";
defparam debug_sevenseg_4_obuf_5_.oe_sync_reset = "none";
defparam debug_sevenseg_4_obuf_5_.operation_mode = "output";
defparam debug_sevenseg_4_obuf_5_.output_async_reset = "none";
defparam debug_sevenseg_4_obuf_5_.output_power_up = "low";
defparam debug_sevenseg_4_obuf_5_.output_register_mode = "none";
defparam debug_sevenseg_4_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U9
cycloneii_io debug_sevenseg_4_obuf_6_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[6]));
// synopsys translate_off
defparam debug_sevenseg_4_obuf_6_.input_async_reset = "none";
defparam debug_sevenseg_4_obuf_6_.input_power_up = "low";
defparam debug_sevenseg_4_obuf_6_.input_register_mode = "none";
defparam debug_sevenseg_4_obuf_6_.input_sync_reset = "none";
defparam debug_sevenseg_4_obuf_6_.oe_async_reset = "none";
defparam debug_sevenseg_4_obuf_6_.oe_power_up = "low";
defparam debug_sevenseg_4_obuf_6_.oe_register_mode = "none";
defparam debug_sevenseg_4_obuf_6_.oe_sync_reset = "none";
defparam debug_sevenseg_4_obuf_6_.operation_mode = "output";
defparam debug_sevenseg_4_obuf_6_.output_async_reset = "none";
defparam debug_sevenseg_4_obuf_6_.output_power_up = "low";
defparam debug_sevenseg_4_obuf_6_.output_register_mode = "none";
defparam debug_sevenseg_4_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_E15
cycloneii_io debug_sevenseg_4_obuf_7_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[7]));
// synopsys translate_off
defparam debug_sevenseg_4_obuf_7_.input_async_reset = "none";
defparam debug_sevenseg_4_obuf_7_.input_power_up = "low";
defparam debug_sevenseg_4_obuf_7_.input_register_mode = "none";
defparam debug_sevenseg_4_obuf_7_.input_sync_reset = "none";
defparam debug_sevenseg_4_obuf_7_.oe_async_reset = "none";
defparam debug_sevenseg_4_obuf_7_.oe_power_up = "low";
defparam debug_sevenseg_4_obuf_7_.oe_register_mode = "none";
defparam debug_sevenseg_4_obuf_7_.oe_sync_reset = "none";
defparam debug_sevenseg_4_obuf_7_.operation_mode = "output";
defparam debug_sevenseg_4_obuf_7_.output_async_reset = "none";
defparam debug_sevenseg_4_obuf_7_.output_power_up = "low";
defparam debug_sevenseg_4_obuf_7_.output_register_mode = "none";
defparam debug_sevenseg_4_obuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_R3
cycloneii_io debug_sevenseg_5_obuf_0_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[0]));
// synopsys translate_off
defparam debug_sevenseg_5_obuf_0_.input_async_reset = "none";
defparam debug_sevenseg_5_obuf_0_.input_power_up = "low";
defparam debug_sevenseg_5_obuf_0_.input_register_mode = "none";
defparam debug_sevenseg_5_obuf_0_.input_sync_reset = "none";
defparam debug_sevenseg_5_obuf_0_.oe_async_reset = "none";
defparam debug_sevenseg_5_obuf_0_.oe_power_up = "low";
defparam debug_sevenseg_5_obuf_0_.oe_register_mode = "none";
defparam debug_sevenseg_5_obuf_0_.oe_sync_reset = "none";
defparam debug_sevenseg_5_obuf_0_.operation_mode = "output";
defparam debug_sevenseg_5_obuf_0_.output_async_reset = "none";
defparam debug_sevenseg_5_obuf_0_.output_power_up = "low";
defparam debug_sevenseg_5_obuf_0_.output_register_mode = "none";
defparam debug_sevenseg_5_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_R4
cycloneii_io debug_sevenseg_5_obuf_1_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[1]));
// synopsys translate_off
defparam debug_sevenseg_5_obuf_1_.input_async_reset = "none";
defparam debug_sevenseg_5_obuf_1_.input_power_up = "low";
defparam debug_sevenseg_5_obuf_1_.input_register_mode = "none";
defparam debug_sevenseg_5_obuf_1_.input_sync_reset = "none";
defparam debug_sevenseg_5_obuf_1_.oe_async_reset = "none";
defparam debug_sevenseg_5_obuf_1_.oe_power_up = "low";
defparam debug_sevenseg_5_obuf_1_.oe_register_mode = "none";
defparam debug_sevenseg_5_obuf_1_.oe_sync_reset = "none";
defparam debug_sevenseg_5_obuf_1_.operation_mode = "output";
defparam debug_sevenseg_5_obuf_1_.output_async_reset = "none";
defparam debug_sevenseg_5_obuf_1_.output_power_up = "low";
defparam debug_sevenseg_5_obuf_1_.output_register_mode = "none";
defparam debug_sevenseg_5_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_R5
cycloneii_io debug_sevenseg_5_obuf_2_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[2]));
// synopsys translate_off
defparam debug_sevenseg_5_obuf_2_.input_async_reset = "none";
defparam debug_sevenseg_5_obuf_2_.input_power_up = "low";
defparam debug_sevenseg_5_obuf_2_.input_register_mode = "none";
defparam debug_sevenseg_5_obuf_2_.input_sync_reset = "none";
defparam debug_sevenseg_5_obuf_2_.oe_async_reset = "none";
defparam debug_sevenseg_5_obuf_2_.oe_power_up = "low";
defparam debug_sevenseg_5_obuf_2_.oe_register_mode = "none";
defparam debug_sevenseg_5_obuf_2_.oe_sync_reset = "none";
defparam debug_sevenseg_5_obuf_2_.operation_mode = "output";
defparam debug_sevenseg_5_obuf_2_.output_async_reset = "none";
defparam debug_sevenseg_5_obuf_2_.output_power_up = "low";
defparam debug_sevenseg_5_obuf_2_.output_register_mode = "none";
defparam debug_sevenseg_5_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T9
cycloneii_io debug_sevenseg_5_obuf_3_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[3]));
// synopsys translate_off
defparam debug_sevenseg_5_obuf_3_.input_async_reset = "none";
defparam debug_sevenseg_5_obuf_3_.input_power_up = "low";
defparam debug_sevenseg_5_obuf_3_.input_register_mode = "none";
defparam debug_sevenseg_5_obuf_3_.input_sync_reset = "none";
defparam debug_sevenseg_5_obuf_3_.oe_async_reset = "none";
defparam debug_sevenseg_5_obuf_3_.oe_power_up = "low";
defparam debug_sevenseg_5_obuf_3_.oe_register_mode = "none";
defparam debug_sevenseg_5_obuf_3_.oe_sync_reset = "none";
defparam debug_sevenseg_5_obuf_3_.operation_mode = "output";
defparam debug_sevenseg_5_obuf_3_.output_async_reset = "none";
defparam debug_sevenseg_5_obuf_3_.output_power_up = "low";
defparam debug_sevenseg_5_obuf_3_.output_register_mode = "none";
defparam debug_sevenseg_5_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P7
cycloneii_io debug_sevenseg_5_obuf_4_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[4]));
// synopsys translate_off
defparam debug_sevenseg_5_obuf_4_.input_async_reset = "none";
defparam debug_sevenseg_5_obuf_4_.input_power_up = "low";
defparam debug_sevenseg_5_obuf_4_.input_register_mode = "none";
defparam debug_sevenseg_5_obuf_4_.input_sync_reset = "none";
defparam debug_sevenseg_5_obuf_4_.oe_async_reset = "none";
defparam debug_sevenseg_5_obuf_4_.oe_power_up = "low";
defparam debug_sevenseg_5_obuf_4_.oe_register_mode = "none";
defparam debug_sevenseg_5_obuf_4_.oe_sync_reset = "none";
defparam debug_sevenseg_5_obuf_4_.operation_mode = "output";
defparam debug_sevenseg_5_obuf_4_.output_async_reset = "none";
defparam debug_sevenseg_5_obuf_4_.output_power_up = "low";
defparam debug_sevenseg_5_obuf_4_.output_register_mode = "none";
defparam debug_sevenseg_5_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P6
cycloneii_io debug_sevenseg_5_obuf_5_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[5]));
// synopsys translate_off
defparam debug_sevenseg_5_obuf_5_.input_async_reset = "none";
defparam debug_sevenseg_5_obuf_5_.input_power_up = "low";
defparam debug_sevenseg_5_obuf_5_.input_register_mode = "none";
defparam debug_sevenseg_5_obuf_5_.input_sync_reset = "none";
defparam debug_sevenseg_5_obuf_5_.oe_async_reset = "none";
defparam debug_sevenseg_5_obuf_5_.oe_power_up = "low";
defparam debug_sevenseg_5_obuf_5_.oe_register_mode = "none";
defparam debug_sevenseg_5_obuf_5_.oe_sync_reset = "none";
defparam debug_sevenseg_5_obuf_5_.operation_mode = "output";
defparam debug_sevenseg_5_obuf_5_.output_async_reset = "none";
defparam debug_sevenseg_5_obuf_5_.output_power_up = "low";
defparam debug_sevenseg_5_obuf_5_.output_register_mode = "none";
defparam debug_sevenseg_5_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T2
cycloneii_io debug_sevenseg_5_obuf_6_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[6]));
// synopsys translate_off
defparam debug_sevenseg_5_obuf_6_.input_async_reset = "none";
defparam debug_sevenseg_5_obuf_6_.input_power_up = "low";
defparam debug_sevenseg_5_obuf_6_.input_register_mode = "none";
defparam debug_sevenseg_5_obuf_6_.input_sync_reset = "none";
defparam debug_sevenseg_5_obuf_6_.oe_async_reset = "none";
defparam debug_sevenseg_5_obuf_6_.oe_power_up = "low";
defparam debug_sevenseg_5_obuf_6_.oe_register_mode = "none";
defparam debug_sevenseg_5_obuf_6_.oe_sync_reset = "none";
defparam debug_sevenseg_5_obuf_6_.operation_mode = "output";
defparam debug_sevenseg_5_obuf_6_.output_async_reset = "none";
defparam debug_sevenseg_5_obuf_6_.output_power_up = "low";
defparam debug_sevenseg_5_obuf_6_.output_register_mode = "none";
defparam debug_sevenseg_5_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B11
cycloneii_io debug_sevenseg_5_obuf_7_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[7]));
// synopsys translate_off
defparam debug_sevenseg_5_obuf_7_.input_async_reset = "none";
defparam debug_sevenseg_5_obuf_7_.input_power_up = "low";
defparam debug_sevenseg_5_obuf_7_.input_register_mode = "none";
defparam debug_sevenseg_5_obuf_7_.input_sync_reset = "none";
defparam debug_sevenseg_5_obuf_7_.oe_async_reset = "none";
defparam debug_sevenseg_5_obuf_7_.oe_power_up = "low";
defparam debug_sevenseg_5_obuf_7_.oe_register_mode = "none";
defparam debug_sevenseg_5_obuf_7_.oe_sync_reset = "none";
defparam debug_sevenseg_5_obuf_7_.operation_mode = "output";
defparam debug_sevenseg_5_obuf_7_.output_async_reset = "none";
defparam debug_sevenseg_5_obuf_7_.output_power_up = "low";
defparam debug_sevenseg_5_obuf_7_.output_register_mode = "none";
defparam debug_sevenseg_5_obuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_N23
cycloneii_io \debug_key[1]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_key[1]));
// synopsys translate_off
defparam \debug_key[1]~I .input_async_reset = "none";
defparam \debug_key[1]~I .input_power_up = "low";
defparam \debug_key[1]~I .input_register_mode = "none";
defparam \debug_key[1]~I .input_sync_reset = "none";
defparam \debug_key[1]~I .oe_async_reset = "none";
defparam \debug_key[1]~I .oe_power_up = "low";
defparam \debug_key[1]~I .oe_register_mode = "none";
defparam \debug_key[1]~I .oe_sync_reset = "none";
defparam \debug_key[1]~I .operation_mode = "input";
defparam \debug_key[1]~I .output_async_reset = "none";
defparam \debug_key[1]~I .output_power_up = "low";
defparam \debug_key[1]~I .output_register_mode = "none";
defparam \debug_key[1]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P23
cycloneii_io \debug_key[2]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_key[2]));
// synopsys translate_off
defparam \debug_key[2]~I .input_async_reset = "none";
defparam \debug_key[2]~I .input_power_up = "low";
defparam \debug_key[2]~I .input_register_mode = "none";
defparam \debug_key[2]~I .input_sync_reset = "none";
defparam \debug_key[2]~I .oe_async_reset = "none";
defparam \debug_key[2]~I .oe_power_up = "low";
defparam \debug_key[2]~I .oe_register_mode = "none";
defparam \debug_key[2]~I .oe_sync_reset = "none";
defparam \debug_key[2]~I .operation_mode = "input";
defparam \debug_key[2]~I .output_async_reset = "none";
defparam \debug_key[2]~I .output_power_up = "low";
defparam \debug_key[2]~I .output_register_mode = "none";
defparam \debug_key[2]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_W26
cycloneii_io \debug_key[3]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_key[3]));
// synopsys translate_off
defparam \debug_key[3]~I .input_async_reset = "none";
defparam \debug_key[3]~I .input_power_up = "low";
defparam \debug_key[3]~I .input_register_mode = "none";
defparam \debug_key[3]~I .input_sync_reset = "none";
defparam \debug_key[3]~I .oe_async_reset = "none";
defparam \debug_key[3]~I .oe_power_up = "low";
defparam \debug_key[3]~I .oe_register_mode = "none";
defparam \debug_key[3]~I .oe_sync_reset = "none";
defparam \debug_key[3]~I .operation_mode = "input";
defparam \debug_key[3]~I .output_async_reset = "none";
defparam \debug_key[3]~I .output_power_up = "low";
defparam \debug_key[3]~I .output_register_mode = "none";
defparam \debug_key[3]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_N25
cycloneii_io \debug_switch[0]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[0]));
// synopsys translate_off
defparam \debug_switch[0]~I .input_async_reset = "none";
defparam \debug_switch[0]~I .input_power_up = "low";
defparam \debug_switch[0]~I .input_register_mode = "none";
defparam \debug_switch[0]~I .input_sync_reset = "none";
defparam \debug_switch[0]~I .oe_async_reset = "none";
defparam \debug_switch[0]~I .oe_power_up = "low";
defparam \debug_switch[0]~I .oe_register_mode = "none";
defparam \debug_switch[0]~I .oe_sync_reset = "none";
defparam \debug_switch[0]~I .operation_mode = "input";
defparam \debug_switch[0]~I .output_async_reset = "none";
defparam \debug_switch[0]~I .output_power_up = "low";
defparam \debug_switch[0]~I .output_register_mode = "none";
defparam \debug_switch[0]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_N26
cycloneii_io \debug_switch[1]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[1]));
// synopsys translate_off
defparam \debug_switch[1]~I .input_async_reset = "none";
defparam \debug_switch[1]~I .input_power_up = "low";
defparam \debug_switch[1]~I .input_register_mode = "none";
defparam \debug_switch[1]~I .input_sync_reset = "none";
defparam \debug_switch[1]~I .oe_async_reset = "none";
defparam \debug_switch[1]~I .oe_power_up = "low";
defparam \debug_switch[1]~I .oe_register_mode = "none";
defparam \debug_switch[1]~I .oe_sync_reset = "none";
defparam \debug_switch[1]~I .operation_mode = "input";
defparam \debug_switch[1]~I .output_async_reset = "none";
defparam \debug_switch[1]~I .output_power_up = "low";
defparam \debug_switch[1]~I .output_register_mode = "none";
defparam \debug_switch[1]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P25
cycloneii_io \debug_switch[2]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[2]));
// synopsys translate_off
defparam \debug_switch[2]~I .input_async_reset = "none";
defparam \debug_switch[2]~I .input_power_up = "low";
defparam \debug_switch[2]~I .input_register_mode = "none";
defparam \debug_switch[2]~I .input_sync_reset = "none";
defparam \debug_switch[2]~I .oe_async_reset = "none";
defparam \debug_switch[2]~I .oe_power_up = "low";
defparam \debug_switch[2]~I .oe_register_mode = "none";
defparam \debug_switch[2]~I .oe_sync_reset = "none";
defparam \debug_switch[2]~I .operation_mode = "input";
defparam \debug_switch[2]~I .output_async_reset = "none";
defparam \debug_switch[2]~I .output_power_up = "low";
defparam \debug_switch[2]~I .output_register_mode = "none";
defparam \debug_switch[2]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE14
cycloneii_io \debug_switch[3]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[3]));
// synopsys translate_off
defparam \debug_switch[3]~I .input_async_reset = "none";
defparam \debug_switch[3]~I .input_power_up = "low";
defparam \debug_switch[3]~I .input_register_mode = "none";
defparam \debug_switch[3]~I .input_sync_reset = "none";
defparam \debug_switch[3]~I .oe_async_reset = "none";
defparam \debug_switch[3]~I .oe_power_up = "low";
defparam \debug_switch[3]~I .oe_register_mode = "none";
defparam \debug_switch[3]~I .oe_sync_reset = "none";
defparam \debug_switch[3]~I .operation_mode = "input";
defparam \debug_switch[3]~I .output_async_reset = "none";
defparam \debug_switch[3]~I .output_power_up = "low";
defparam \debug_switch[3]~I .output_register_mode = "none";
defparam \debug_switch[3]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AF14
cycloneii_io \debug_switch[4]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[4]));
// synopsys translate_off
defparam \debug_switch[4]~I .input_async_reset = "none";
defparam \debug_switch[4]~I .input_power_up = "low";
defparam \debug_switch[4]~I .input_register_mode = "none";
defparam \debug_switch[4]~I .input_sync_reset = "none";
defparam \debug_switch[4]~I .oe_async_reset = "none";
defparam \debug_switch[4]~I .oe_power_up = "low";
defparam \debug_switch[4]~I .oe_register_mode = "none";
defparam \debug_switch[4]~I .oe_sync_reset = "none";
defparam \debug_switch[4]~I .operation_mode = "input";
defparam \debug_switch[4]~I .output_async_reset = "none";
defparam \debug_switch[4]~I .output_power_up = "low";
defparam \debug_switch[4]~I .output_register_mode = "none";
defparam \debug_switch[4]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD13
cycloneii_io \debug_switch[5]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[5]));
// synopsys translate_off
defparam \debug_switch[5]~I .input_async_reset = "none";
defparam \debug_switch[5]~I .input_power_up = "low";
defparam \debug_switch[5]~I .input_register_mode = "none";
defparam \debug_switch[5]~I .input_sync_reset = "none";
defparam \debug_switch[5]~I .oe_async_reset = "none";
defparam \debug_switch[5]~I .oe_power_up = "low";
defparam \debug_switch[5]~I .oe_register_mode = "none";
defparam \debug_switch[5]~I .oe_sync_reset = "none";
defparam \debug_switch[5]~I .operation_mode = "input";
defparam \debug_switch[5]~I .output_async_reset = "none";
defparam \debug_switch[5]~I .output_power_up = "low";
defparam \debug_switch[5]~I .output_register_mode = "none";
defparam \debug_switch[5]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC13
cycloneii_io \debug_switch[6]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[6]));
// synopsys translate_off
defparam \debug_switch[6]~I .input_async_reset = "none";
defparam \debug_switch[6]~I .input_power_up = "low";
defparam \debug_switch[6]~I .input_register_mode = "none";
defparam \debug_switch[6]~I .input_sync_reset = "none";
defparam \debug_switch[6]~I .oe_async_reset = "none";
defparam \debug_switch[6]~I .oe_power_up = "low";
defparam \debug_switch[6]~I .oe_register_mode = "none";
defparam \debug_switch[6]~I .oe_sync_reset = "none";
defparam \debug_switch[6]~I .operation_mode = "input";
defparam \debug_switch[6]~I .output_async_reset = "none";
defparam \debug_switch[6]~I .output_power_up = "low";
defparam \debug_switch[6]~I .output_register_mode = "none";
defparam \debug_switch[6]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C13
cycloneii_io \debug_switch[7]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[7]));
// synopsys translate_off
defparam \debug_switch[7]~I .input_async_reset = "none";
defparam \debug_switch[7]~I .input_power_up = "low";
defparam \debug_switch[7]~I .input_register_mode = "none";
defparam \debug_switch[7]~I .input_sync_reset = "none";
defparam \debug_switch[7]~I .oe_async_reset = "none";
defparam \debug_switch[7]~I .oe_power_up = "low";
defparam \debug_switch[7]~I .oe_register_mode = "none";
defparam \debug_switch[7]~I .oe_sync_reset = "none";
defparam \debug_switch[7]~I .operation_mode = "input";
defparam \debug_switch[7]~I .output_async_reset = "none";
defparam \debug_switch[7]~I .output_power_up = "low";
defparam \debug_switch[7]~I .output_register_mode = "none";
defparam \debug_switch[7]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B13
cycloneii_io \debug_switch[8]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[8]));
// synopsys translate_off
defparam \debug_switch[8]~I .input_async_reset = "none";
defparam \debug_switch[8]~I .input_power_up = "low";
defparam \debug_switch[8]~I .input_register_mode = "none";
defparam \debug_switch[8]~I .input_sync_reset = "none";
defparam \debug_switch[8]~I .oe_async_reset = "none";
defparam \debug_switch[8]~I .oe_power_up = "low";
defparam \debug_switch[8]~I .oe_register_mode = "none";
defparam \debug_switch[8]~I .oe_sync_reset = "none";
defparam \debug_switch[8]~I .operation_mode = "input";
defparam \debug_switch[8]~I .output_async_reset = "none";
defparam \debug_switch[8]~I .output_power_up = "low";
defparam \debug_switch[8]~I .output_register_mode = "none";
defparam \debug_switch[8]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A13
cycloneii_io \debug_switch[9]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[9]));
// synopsys translate_off
defparam \debug_switch[9]~I .input_async_reset = "none";
defparam \debug_switch[9]~I .input_power_up = "low";
defparam \debug_switch[9]~I .input_register_mode = "none";
defparam \debug_switch[9]~I .input_sync_reset = "none";
defparam \debug_switch[9]~I .oe_async_reset = "none";
defparam \debug_switch[9]~I .oe_power_up = "low";
defparam \debug_switch[9]~I .oe_register_mode = "none";
defparam \debug_switch[9]~I .oe_sync_reset = "none";
defparam \debug_switch[9]~I .operation_mode = "input";
defparam \debug_switch[9]~I .output_async_reset = "none";
defparam \debug_switch[9]~I .output_power_up = "low";
defparam \debug_switch[9]~I .output_register_mode = "none";
defparam \debug_switch[9]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_N1
cycloneii_io \debug_switch[10]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[10]));
// synopsys translate_off
defparam \debug_switch[10]~I .input_async_reset = "none";
defparam \debug_switch[10]~I .input_power_up = "low";
defparam \debug_switch[10]~I .input_register_mode = "none";
defparam \debug_switch[10]~I .input_sync_reset = "none";
defparam \debug_switch[10]~I .oe_async_reset = "none";
defparam \debug_switch[10]~I .oe_power_up = "low";
defparam \debug_switch[10]~I .oe_register_mode = "none";
defparam \debug_switch[10]~I .oe_sync_reset = "none";
defparam \debug_switch[10]~I .operation_mode = "input";
defparam \debug_switch[10]~I .output_async_reset = "none";
defparam \debug_switch[10]~I .output_power_up = "low";
defparam \debug_switch[10]~I .output_register_mode = "none";
defparam \debug_switch[10]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P1
cycloneii_io \debug_switch[11]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[11]));
// synopsys translate_off
defparam \debug_switch[11]~I .input_async_reset = "none";
defparam \debug_switch[11]~I .input_power_up = "low";
defparam \debug_switch[11]~I .input_register_mode = "none";
defparam \debug_switch[11]~I .input_sync_reset = "none";
defparam \debug_switch[11]~I .oe_async_reset = "none";
defparam \debug_switch[11]~I .oe_power_up = "low";
defparam \debug_switch[11]~I .oe_register_mode = "none";
defparam \debug_switch[11]~I .oe_sync_reset = "none";
defparam \debug_switch[11]~I .operation_mode = "input";
defparam \debug_switch[11]~I .output_async_reset = "none";
defparam \debug_switch[11]~I .output_power_up = "low";
defparam \debug_switch[11]~I .output_register_mode = "none";
defparam \debug_switch[11]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P2
cycloneii_io \debug_switch[12]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[12]));
// synopsys translate_off
defparam \debug_switch[12]~I .input_async_reset = "none";
defparam \debug_switch[12]~I .input_power_up = "low";
defparam \debug_switch[12]~I .input_register_mode = "none";
defparam \debug_switch[12]~I .input_sync_reset = "none";
defparam \debug_switch[12]~I .oe_async_reset = "none";
defparam \debug_switch[12]~I .oe_power_up = "low";
defparam \debug_switch[12]~I .oe_register_mode = "none";
defparam \debug_switch[12]~I .oe_sync_reset = "none";
defparam \debug_switch[12]~I .operation_mode = "input";
defparam \debug_switch[12]~I .output_async_reset = "none";
defparam \debug_switch[12]~I .output_power_up = "low";
defparam \debug_switch[12]~I .output_register_mode = "none";
defparam \debug_switch[12]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T7
cycloneii_io \debug_switch[13]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[13]));
// synopsys translate_off
defparam \debug_switch[13]~I .input_async_reset = "none";
defparam \debug_switch[13]~I .input_power_up = "low";
defparam \debug_switch[13]~I .input_register_mode = "none";
defparam \debug_switch[13]~I .input_sync_reset = "none";
defparam \debug_switch[13]~I .oe_async_reset = "none";
defparam \debug_switch[13]~I .oe_power_up = "low";
defparam \debug_switch[13]~I .oe_register_mode = "none";
defparam \debug_switch[13]~I .oe_sync_reset = "none";
defparam \debug_switch[13]~I .operation_mode = "input";
defparam \debug_switch[13]~I .output_async_reset = "none";
defparam \debug_switch[13]~I .output_power_up = "low";
defparam \debug_switch[13]~I .output_register_mode = "none";
defparam \debug_switch[13]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U3
cycloneii_io \debug_switch[14]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[14]));
// synopsys translate_off
defparam \debug_switch[14]~I .input_async_reset = "none";
defparam \debug_switch[14]~I .input_power_up = "low";
defparam \debug_switch[14]~I .input_register_mode = "none";
defparam \debug_switch[14]~I .input_sync_reset = "none";
defparam \debug_switch[14]~I .oe_async_reset = "none";
defparam \debug_switch[14]~I .oe_power_up = "low";
defparam \debug_switch[14]~I .oe_register_mode = "none";
defparam \debug_switch[14]~I .oe_sync_reset = "none";
defparam \debug_switch[14]~I .operation_mode = "input";
defparam \debug_switch[14]~I .output_async_reset = "none";
defparam \debug_switch[14]~I .output_power_up = "low";
defparam \debug_switch[14]~I .output_register_mode = "none";
defparam \debug_switch[14]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U4
cycloneii_io \debug_switch[15]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[15]));
// synopsys translate_off
defparam \debug_switch[15]~I .input_async_reset = "none";
defparam \debug_switch[15]~I .input_power_up = "low";
defparam \debug_switch[15]~I .input_register_mode = "none";
defparam \debug_switch[15]~I .input_sync_reset = "none";
defparam \debug_switch[15]~I .oe_async_reset = "none";
defparam \debug_switch[15]~I .oe_power_up = "low";
defparam \debug_switch[15]~I .oe_register_mode = "none";
defparam \debug_switch[15]~I .oe_sync_reset = "none";
defparam \debug_switch[15]~I .operation_mode = "input";
defparam \debug_switch[15]~I .output_async_reset = "none";
defparam \debug_switch[15]~I .output_power_up = "low";
defparam \debug_switch[15]~I .output_register_mode = "none";
defparam \debug_switch[15]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V1
cycloneii_io \debug_switch[16]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[16]));
// synopsys translate_off
defparam \debug_switch[16]~I .input_async_reset = "none";
defparam \debug_switch[16]~I .input_power_up = "low";
defparam \debug_switch[16]~I .input_register_mode = "none";
defparam \debug_switch[16]~I .input_sync_reset = "none";
defparam \debug_switch[16]~I .oe_async_reset = "none";
defparam \debug_switch[16]~I .oe_power_up = "low";
defparam \debug_switch[16]~I .oe_register_mode = "none";
defparam \debug_switch[16]~I .oe_sync_reset = "none";
defparam \debug_switch[16]~I .operation_mode = "input";
defparam \debug_switch[16]~I .output_async_reset = "none";
defparam \debug_switch[16]~I .output_power_up = "low";
defparam \debug_switch[16]~I .output_register_mode = "none";
defparam \debug_switch[16]~I .output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V2
cycloneii_io \debug_switch[17]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[17]));
// synopsys translate_off
defparam \debug_switch[17]~I .input_async_reset = "none";
defparam \debug_switch[17]~I .input_power_up = "low";
defparam \debug_switch[17]~I .input_register_mode = "none";
defparam \debug_switch[17]~I .input_sync_reset = "none";
defparam \debug_switch[17]~I .oe_async_reset = "none";
defparam \debug_switch[17]~I .oe_power_up = "low";
defparam \debug_switch[17]~I .oe_register_mode = "none";
defparam \debug_switch[17]~I .oe_sync_reset = "none";
defparam \debug_switch[17]~I .operation_mode = "input";
defparam \debug_switch[17]~I .output_async_reset = "none";
defparam \debug_switch[17]~I .output_power_up = "low";
defparam \debug_switch[17]~I .output_register_mode = "none";
defparam \debug_switch[17]~I .output_sync_reset = "none";
// synopsys translate_on

endmodule
