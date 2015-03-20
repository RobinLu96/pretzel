// Copyright (C) 1991-2011 Altera Corporation
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
// VERSION "Version 10.1 Build 197 01/19/2011 Service Pack 1 SJ Full Version"

// DATE "03/19/2015 18:07:24"

// 
// Device: Altera EP2C35F672C7 Package FBGA672
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module kirsch_chip (	i_clock,
	i_reset,
	i_valid,
	i_pixel,
	o_valid,
	o_edge,
	o_dir,
	o_mode,
	o_row,
	debug_key,
	debug_switch,
	debug_led_red,
	debug_led_grn,
	debug_num_0,
	debug_num_1,
	debug_num_2,
	debug_num_3,
	debug_num_4,
	debug_num_5);
input 	i_clock;
input 	i_reset;
input 	i_valid;
input 	[7:0] i_pixel;
output 	o_valid;
output 	o_edge;
output 	[2:0] o_dir;
output 	[1:0] o_mode;
output 	[7:0] o_row;
input 	[3:1] debug_key;
input 	[17:0] debug_switch;
output 	[17:0] debug_led_red;
output 	[5:0] debug_led_grn;
output 	[3:0] debug_num_0;
output 	[3:0] debug_num_1;
output 	[3:0] debug_num_2;
output 	[3:0] debug_num_3;
output 	[3:0] debug_num_4;
output 	[3:0] debug_num_5;

// Design Ports Information
// o_valid	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_edge	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_dir[0]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_dir[1]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_dir[2]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_mode[0]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_mode[1]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[0]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[1]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[2]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[3]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[4]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[5]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[6]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[7]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[0]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[1]	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[3]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[4]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[5]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[6]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[7]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[8]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[9]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[10]	=>  Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[11]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[12]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[13]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[14]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[15]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[16]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[17]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[0]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[2]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[3]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[4]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[5]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_0[0]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_0[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_0[2]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_0[3]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_1[0]	=>  Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_1[1]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_1[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_1[3]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_2[0]	=>  Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_2[1]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_2[2]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_2[3]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_3[0]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_3[1]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_3[2]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_3[3]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_4[0]	=>  Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_4[1]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_4[2]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_4[3]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_5[0]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_5[1]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_5[2]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_5[3]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// i_clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_reset	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_valid	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[7]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[6]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[5]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[4]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[3]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[1]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[0]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_key[1]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_key[2]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_key[3]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[0]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[1]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[2]	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[3]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[4]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[5]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[6]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[7]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[8]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[9]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[10]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[11]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[12]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[13]	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[14]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[15]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[16]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[17]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
// synopsys translate_off
initial $sdf_annotate("kirsch_v.sdo");
// synopsys translate_on

wire r14_12_;
wire r15_11_;
wire r15_10_;
wire r14_9_;
wire r14_8_;
wire r15_7_;
wire r15_6_;
wire r14_5_;
wire r15_4_;
wire r14_3_;
wire r15_0_;
wire nx28105z2;
wire nx28105z9;
wire r13_10_;
wire r13_8_;
wire r13_5_;
wire r13_3_;
wire add4_add11_6_anx40964z1;
wire add4_add11_6_anx42958z1;
wire add4_add11_6_anx43955z1;
wire add4_add11_6_anx46946z1;
wire add4_add11_6_anx62798z1;
wire r12_6_;
wire r12_5_;
wire r12_2_;
wire dir4_0_;
wire dir4_2_;
wire dir6_2_;
wire nx44114z2;
wire nx17322z10;
wire nx17322z2;
wire nx17322z3;
wire nx17322z4;
wire nx17322z8;
wire nx17322z7;
wire nx17322z1;
wire r8_10_;
wire r8_9_;
wire r8_8_;
wire r8_7_;
wire r8_1_;
wire r8_0_;
wire add3_add11_0_anx45949z1;
wire add3_add11_0_anx62798z3;
wire add3_add11_0_anx62798z1;
wire r9_6_;
wire r9_5_;
wire r5_7_;
wire r5_3_;
wire r5_2_;
wire r5_0_;
wire r1_7_;
wire r1_3_;
wire r2_2_;
wire r2_0_;
wire nx46679z2;
wire nx44685z1;
wire nx46679z1;
wire dir3_2_;
wire dir5_2_;
wire dir6_23n5ss1_2_;
wire nx35695z1;
wire nx6176z7;
wire r4_7_;
wire r3_6_;
wire r3_5_;
wire r4_4_;
wire r4_3_;
wire r4_2_;
wire r4_1_;
wire r3_0_;
wire max2_6_;
wire max2_5_;
wire g_7_;
wire nx41056z2;
wire nx41056z1;
wire g_5_;
wire nx39062z2;
wire h_4_;
wire nx29646z2;
wire h_3_;
wire g_3_;
wire nx37068z2;
wire nx37068z1;
wire a_3_;
wire h_2_;
wire nx27652z2;
wire nx27652z1;
wire d_2_;
wire nx25658z2;
wire nx25658z1;
wire nx10438z2;
wire nx10438z1;
wire dir1_2_;
wire dir5_23n5ss1_2_;
wire nx49737z2;
wire nx49737z1;
wire nx50734z2;
wire nx42315z2;
wire nx42315z1;
wire nx51731z2;
wire nx43312z2;
wire nx43312z1;
wire nx52728z2;
wire nx52728z1;
wire nx53725z2;
wire nx53725z1;
wire nx45306z2;
wire nx54722z2;
wire nx54722z1;
wire nx46303z2;
wire nx55719z2;
wire nx55719z1;
wire nx48297z2;
wire nx48297z1;
wire i_4_;
wire i_3_;
wire i_2_;
wire nx31640z3;
wire wren_m1;
wire nx19087z14;
wire nx24222z1;
wire nx19087z26;
wire nx19087z27;
wire wren_m3;
wire wren_m2;
wire sub1_sub8_1_anx23445z1_a_wirecell_combout;
wire r14_12__afeeder_combout;
wire r14_9__afeeder_combout;
wire r12_6__afeeder_combout;
wire r14_8__afeeder_combout;
wire r12_5__afeeder_combout;
wire r14_5__afeeder_combout;
wire r12_2__afeeder_combout;
wire r14_3__afeeder_combout;
wire r13_5__afeeder_combout;
wire r13_8__afeeder_combout;
wire r13_10__afeeder_combout;
wire r5_7__afeeder_combout;
wire r5_3__afeeder_combout;
wire r5_2__afeeder_combout;
wire r5_0__afeeder_combout;
wire a_3__afeeder_combout;
wire i_3__afeeder_combout;
wire i_2__afeeder_combout;
wire i_clock_acombout;
wire i_clock_aclkctrl_outclk;
wire i_valid_acombout;
wire i_reset_acombout;
wire v_0_;
wire v_1_;
wire v_2_;
wire v_3_;
wire v_4_;
wire v_5_;
wire v_6_;
wire modgen_counter_o_row_anx51271z1;
wire modgen_counter_x_anx58250z14;
wire modgen_counter_x_anx52268z1;
wire modgen_counter_x_anx57253z3;
wire modgen_counter_x_anx58250z13;
wire modgen_counter_x_anx58250z12;
wire modgen_counter_x_anx58250z10;
wire modgen_counter_x_anx54262z1;
wire modgen_counter_x_anx58250z9;
wire modgen_counter_x_anx53265z1;
wire modgen_counter_x_anx58250z11;
wire nx6176z2;
wire modgen_counter_o_row_anx58250z12;
wire modgen_counter_o_row_anx58250z10;
wire modgen_counter_o_row_anx54262z1;
wire nx17322z16;
wire modgen_counter_x_anx51271z1;
wire modgen_counter_x_anx58250z15;
wire nx17322z6;
wire modgen_counter_x_anx58250z8;
wire modgen_counter_x_anx58250z6;
wire modgen_counter_x_anx56256z1;
wire modgen_counter_x_anx58250z5;
wire modgen_counter_x_anx58250z4;
wire modgen_counter_x_anx58250z2;
wire modgen_counter_x_anx58250z1;
wire modgen_counter_x_anx1041z1;
wire modgen_counter_x_anx57253z1;
wire modgen_counter_x_anx58250z3;
wire nx6176z9;
wire nx17322z15;
wire modgen_counter_o_row_anx57253z3;
wire modgen_counter_o_row_anx58250z9;
wire modgen_counter_o_row_anx53265z1;
wire modgen_counter_o_row_anx58250z11;
wire nx6176z4;
wire modgen_counter_o_row_anx58250z8;
wire modgen_counter_o_row_anx58250z6;
wire modgen_counter_o_row_anx56256z1;
wire modgen_counter_o_row_anx58250z5;
wire modgen_counter_o_row_anx58250z4;
wire modgen_counter_o_row_anx57253z1;
wire modgen_counter_o_row_anx58250z3;
wire modgen_counter_o_row_anx58250z2;
wire modgen_counter_o_row_anx58250z1;
wire modgen_counter_o_row_anx1041z1;
wire nx6176z6;
wire nx6176z5;
wire nx6176z3;
wire nx6176z1;
wire nx6176z10;
wire end_of_img;
wire nx17322z12;
wire modgen_counter_x_anx55259z1;
wire modgen_counter_x_anx58250z7;
wire nx17322z13;
wire nx17322z11;
wire modgen_counter_o_row_anx55259z1;
wire modgen_counter_o_row_anx58250z7;
wire nx17322z14;
wire nx17322z9;
wire modgen_counter_o_row_anx58250z15;
wire modgen_counter_o_row_anx58250z14;
wire modgen_counter_o_row_anx52268z1;
wire modgen_counter_o_row_anx58250z13;
wire nx28105z7;
wire nx28105z6;
wire nx28105z5;
wire nx28105z8;
wire nx28105z4;
wire nx28105z3;
wire nx28105z1;
wire nx51998z1;
wire t_20n2s1_1_;
wire nx6176z8;
wire nx38525z2;
wire nx38525z1;
wire t_1_;
wire t_20n2s1_0_;
wire t_0_;
wire nx19087z4;
wire nx19087z17;
wire nx19087z25;
wire nx19087z24;
wire nx19087z23;
wire addr_x_0_;
wire nx19087z5;
wire nx19087z9;
wire nx19087z22;
wire nx19087z21;
wire nx19087z20;
wire addr_x_1_;
wire nx19087z7;
wire nx19087z19;
wire nx19087z18;
wire addr_x_2_;
wire nx19087z16;
wire nx19087z15;
wire addr_x_3_;
wire nx19087z13;
wire nx19087z12;
wire addr_x_4_;
wire nx19087z11;
wire nx19087z10;
wire addr_x_5_;
wire nx17322z5;
wire nx19087z8;
wire nx19087z6;
wire addr_x_6_;
wire nx19087z2;
wire nx19087z3;
wire nx19087z1;
wire addr_x_7_;
wire nx20492z1;
wire nx20492z2;
wire c_7_;
wire b_7__afeeder_combout;
wire b_7_;
wire a_7__afeeder_combout;
wire a_7_;
wire e_7__afeeder_combout;
wire e_7_;
wire f_7_;
wire nx41318z2;
wire nx41318z1;
wire nx32637z3;
wire r3_7_;
wire nx35628z1;
wire d_6_;
wire nx50734z1;
wire nx21489z1;
wire c_6_;
wire b_6__afeeder_combout;
wire b_6_;
wire r4_6_;
wire nx34631z1;
wire d_5_;
wire nx51731z1;
wire nx22486z1;
wire c_5_;
wire b_5__afeeder_combout;
wire b_5_;
wire r4_5_;
wire e_4__afeeder_combout;
wire e_4_;
wire f_4_;
wire nx23483z1;
wire c_4_;
wire b_4__afeeder_combout;
wire b_4_;
wire a_4__afeeder_combout;
wire a_4_;
wire nx44309z2;
wire nx44309z1;
wire r3_4_;
wire e_3_;
wire nx45306z1;
wire nx24480z1;
wire c_3_;
wire r3_3_;
wire e_2__afeeder_combout;
wire e_2_;
wire nx46303z1;
wire nx25477z1;
wire c_2_;
wire r3_2_;
wire e_1_;
wire f_1_;
wire nx26474z1;
wire c_1_;
wire b_1__afeeder_combout;
wire b_1_;
wire a_1__afeeder_combout;
wire a_1_;
wire nx47300z2;
wire nx47300z1;
wire r3_1_;
wire e_0_;
wire f_0_;
wire g_0_;
wire nx29646z3;
wire d_0_;
wire i_0__afeeder_combout;
wire i_0_;
wire h_0_;
wire nx56716z2;
wire nx56716z1;
wire nx27471z1;
wire c_0_;
wire b_0_;
wire r4_0_;
wire add1_add8_4_anx44952z22;
wire add1_add8_4_anx44952z19;
wire add1_add8_4_anx44952z16;
wire add1_add8_4_anx44952z13;
wire add1_add8_4_anx44952z10;
wire add1_add8_4_anx44952z7;
wire add1_add8_4_anx44952z4;
wire add1_add8_4_anx23445z2;
wire add1_add8_4_anx23445z1;
wire r7_8_;
wire add1_add8_4_anx44952z1;
wire r7_7_;
wire add1_add8_4_anx38970z1;
wire r7_1_;
wire add1_add8_4_anx37973z1;
wire r7_0_;
wire add3_add11_0_anx62798z29;
wire add3_add11_0_anx62798z26;
wire add3_add11_0_anx39967z1;
wire add1_add8_4_anx39967z1;
wire r7_2_;
wire r8_2_;
wire add3_add11_0_anx62798z23;
wire add3_add11_0_anx40964z1;
wire add1_add8_4_anx40964z1;
wire r7_3_;
wire r8_3_;
wire add3_add11_0_anx62798z20;
wire add3_add11_0_anx41961z1;
wire add1_add8_4_anx41961z1;
wire r7_4_;
wire r8_4_;
wire add3_add11_0_anx62798z17;
wire add3_add11_0_anx42958z1;
wire add1_add8_4_anx42958z1;
wire r7_5_;
wire r8_5_;
wire add3_add11_0_anx62798z14;
wire add3_add11_0_anx43955z1;
wire add1_add8_4_anx43955z1;
wire r7_6_;
wire r8_6_;
wire add3_add11_0_anx62798z11;
wire add3_add11_0_anx62798z8;
wire add3_add11_0_anx62798z5;
wire add3_add11_0_anx46946z1;
wire r13_9__afeeder_combout;
wire r13_9_;
wire add3_add11_0_anx44952z1;
wire r13_7__afeeder_combout;
wire r13_7_;
wire r13_6__afeeder_combout;
wire r13_6_;
wire r13_4__afeeder_combout;
wire r13_4_;
wire r13_2__afeeder_combout;
wire r13_2_;
wire add3_add11_0_anx38970z1;
wire r13_1__afeeder_combout;
wire r13_1_;
wire add3_add11_0_anx37973z1;
wire r13_0__afeeder_combout;
wire r13_0_;
wire add4_add11_6_anx62798z21;
wire add4_add11_6_anx62798z19;
wire add4_add11_6_anx62798z17;
wire add4_add11_6_anx62798z15;
wire add4_add11_6_anx62798z13;
wire add4_add11_6_anx62798z11;
wire add4_add11_6_anx62798z9;
wire add4_add11_6_anx62798z7;
wire add4_add11_6_anx62798z5;
wire add4_add11_6_anx62798z3;
wire add4_add11_6_anx23445z2;
wire add4_add11_6_anx23445z1;
wire r15_12_;
wire e_6__afeeder_combout;
wire e_6_;
wire f_6_;
wire i_6_;
wire h_6_;
wire nx31640z2;
wire nx31640z1;
wire r2_6_;
wire r5_6__afeeder_combout;
wire g_6_;
wire nx40059z2;
wire nx40059z1;
wire a_6__afeeder_combout;
wire a_6_;
wire r1_6_;
wire nx36625z1;
wire d_7_;
wire i_7_;
wire h_7_;
wire nx32637z2;
wire nx32637z1;
wire r2_7_;
wire e_5__afeeder_combout;
wire e_5_;
wire f_5_;
wire i_5__afeeder_combout;
wire i_5_;
wire h_5_;
wire nx30643z2;
wire nx30643z1;
wire r2_5_;
wire nx29646z1;
wire nx33634z1;
wire d_4_;
wire r2_4_;
wire b_3_;
wire nx28649z2;
wire f_3_;
wire nx28649z1;
wire nx32637z4;
wire d_3_;
wire r2_3_;
wire f_2_;
wire g_2_;
wire nx36071z2;
wire nx36071z1;
wire b_2__afeeder_combout;
wire b_2_;
wire a_2__afeeder_combout;
wire a_2_;
wire r1_2_;
wire nx30643z3;
wire d_1_;
wire i_1__afeeder_combout;
wire i_1_;
wire h_1_;
wire nx26655z2;
wire nx26655z1;
wire r2_1_;
wire nx34077z2;
wire nx34077z1;
wire a_0__afeeder_combout;
wire a_0_;
wire r1_0_;
wire sub1_sub8_1_anx23445z22;
wire sub1_sub8_1_anx23445z19;
wire sub1_sub8_1_anx23445z16;
wire sub1_sub8_1_anx23445z13;
wire sub1_sub8_1_anx23445z10;
wire sub1_sub8_1_anx23445z7;
wire sub1_sub8_1_anx23445z4;
wire sub1_sub8_1_anx23445z1;
wire r5_6_;
wire r5_5__afeeder_combout;
wire nx39062z1;
wire a_5__afeeder_combout;
wire a_5_;
wire r1_5_;
wire r5_5_;
wire r5_4__afeeder_combout;
wire g_4_;
wire nx38065z2;
wire nx38065z1;
wire r1_4_;
wire r5_4_;
wire r5_1__afeeder_combout;
wire g_1_;
wire nx35074z2;
wire nx35074z1;
wire r1_1_;
wire r5_1_;
wire add2_add9_5_anx45949z24;
wire add2_add9_5_anx45949z21;
wire add2_add9_5_anx45949z18;
wire add2_add9_5_anx45949z15;
wire add2_add9_5_anx45949z12;
wire add2_add9_5_anx45949z9;
wire add2_add9_5_anx45949z6;
wire add2_add9_5_anx45949z3;
wire add2_add9_5_anx45949z1;
wire r11_8_;
wire r12_8__afeeder_combout;
wire add2_add9_5_anx23445z2;
wire add2_add9_5_anx23445z1;
wire r11_9_;
wire max2_9_;
wire nx25299z2;
wire nx25299z1;
wire r9_9_;
wire add2_add9_5_anx44952z1;
wire r11_7_;
wire max2_7_;
wire r9_7_;
wire add2_add9_5_anx43955z1;
wire r11_6_;
wire add2_add9_5_anx42958z1;
wire r11_5_;
wire add2_add9_5_anx41961z1;
wire r11_4_;
wire add2_add9_5_anx40964z1;
wire r11_3_;
wire max2_2_;
wire add2_add9_5_anx39967z1;
wire r9_2_;
wire max2_1_;
wire add2_add9_5_anx38970z1;
wire r9_1_;
wire add2_add9_5_anx37973z1;
wire r11_0_;
wire sub2_sub10_2_anx23445z28;
wire sub2_sub10_2_anx23445z25;
wire sub2_sub10_2_anx23445z22;
wire sub2_sub10_2_anx23445z19;
wire sub2_sub10_2_anx23445z16;
wire sub2_sub10_2_anx23445z13;
wire sub2_sub10_2_anx23445z10;
wire sub2_sub10_2_anx23445z7;
wire sub2_sub10_2_anx23445z4;
wire sub2_sub10_2_anx23445z1;
wire max2_8_;
wire r9_8_;
wire r12_8_;
wire r14_11__afeeder_combout;
wire r12_9__afeeder_combout;
wire r12_9_;
wire r12_7__afeeder_combout;
wire r12_7_;
wire r12_4__afeeder_combout;
wire max2_4_;
wire r9_4_;
wire r12_4_;
wire r12_3__afeeder_combout;
wire max2_3_;
wire r9_3_;
wire r12_3_;
wire r11_2_;
wire r11_1_;
wire r12_1__afeeder_combout;
wire r12_1_;
wire r12_0__afeeder_combout;
wire max2_0_;
wire r9_0_;
wire r12_0_;
wire sub3_sub10_3_anx23445z28;
wire sub3_sub10_3_anx23445z25;
wire sub3_sub10_3_anx23445z22;
wire sub3_sub10_3_anx23445z19;
wire sub3_sub10_3_anx23445z16;
wire sub3_sub10_3_anx23445z13;
wire sub3_sub10_3_anx23445z10;
wire sub3_sub10_3_anx23445z7;
wire sub3_sub10_3_anx23445z4;
wire sub3_sub10_3_anx23445z1;
wire r14_11_;
wire r14_10__afeeder_combout;
wire r14_10_;
wire add4_add11_6_anx45949z1;
wire r15_9_;
wire add4_add11_6_anx44952z1;
wire r15_8_;
wire r14_7__afeeder_combout;
wire r14_7_;
wire r14_6__afeeder_combout;
wire r14_6_;
wire add4_add11_6_anx41961z1;
wire r15_5_;
wire r14_4__afeeder_combout;
wire r14_4_;
wire add4_add11_6_anx39967z1;
wire r15_3_;
wire add4_add11_6_anx38970z1;
wire r15_2_;
wire add4_add11_6_anx37973z1;
wire r15_1_;
wire ix36874z50555_anx63795z11;
wire ix36874z50555_anx63795z10;
wire ix36874z50555_anx63795z9;
wire ix36874z50555_anx63795z8;
wire ix36874z50555_anx63795z7;
wire ix36874z50555_anx63795z6;
wire ix36874z50555_anx63795z5;
wire ix36874z50555_anx63795z4;
wire ix36874z50555_anx63795z3;
wire ix36874z50555_anx63795z2;
wire ix36874z50555_anx63795z1;
wire ix36874z50555_ad_11_;
wire ix36874z50555_ad_6_;
wire ix36874z50555_ad_7_;
wire ix36874z50555_ad_8_;
wire nx36874z7;
wire ix36874z50555_anx23445z2;
wire ix36874z50555_anx23445z1;
wire v_7_;
wire nx36874z2;
wire ix36874z50555_ad_10_;
wire ix36874z50555_ad_9_;
wire nx36874z4;
wire o_edge_dup0;
wire nx2019z1;
wire dir2_2_;
wire nx36266z1;
wire dir5_0_;
wire dir5_0__a_wirecell_combout;
wire nx36692z2;
wire nx36692z1;
wire nx46108z3;
wire nx46108z2;
wire nx46108z1;
wire dir7_0_;
wire nx31609z1;
wire o_dir_dup0_0_;
wire dir5_1_;
wire dir5_1__a_wirecell_combout;
wire nx45111z2;
wire nx45111z1;
wire dir7_1_;
wire o_dir_dup0_1_;
wire nx44114z1;
wire dir7_2_;
wire o_dir_dup0_2_;
wire o_mode_dup0_1__afeeder_combout;
wire o_mode_dup0_1_;
wire nx26373z2;
wire nx26373z1;
wire nx47893z1;
wire nx16335z1;
wire nx17332z1;
wire nx18329z1;
wire nx19326z1;
wire nx20323z1;
wire nx21320z1;
wire nx22317z1;
wire nx23314z1;
wire [7:0] i_pixel_acombout;
wire [7:0] m1_mem_aix64056z29481_aauto_generated_aq_a;
wire [7:0] m3_mem_aix64056z29483_aauto_generated_aq_a;
wire [7:0] m2_mem_aix64056z29482_aauto_generated_aq_a;

wire [7:0] m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus;
wire [7:0] m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus;
wire [7:0] m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus;

assign m2_mem_aix64056z29482_aauto_generated_aq_a[0] = m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign m2_mem_aix64056z29482_aauto_generated_aq_a[1] = m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign m2_mem_aix64056z29482_aauto_generated_aq_a[2] = m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign m2_mem_aix64056z29482_aauto_generated_aq_a[3] = m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign m2_mem_aix64056z29482_aauto_generated_aq_a[4] = m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign m2_mem_aix64056z29482_aauto_generated_aq_a[5] = m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign m2_mem_aix64056z29482_aauto_generated_aq_a[6] = m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign m2_mem_aix64056z29482_aauto_generated_aq_a[7] = m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

assign m3_mem_aix64056z29483_aauto_generated_aq_a[0] = m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign m3_mem_aix64056z29483_aauto_generated_aq_a[1] = m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign m3_mem_aix64056z29483_aauto_generated_aq_a[2] = m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign m3_mem_aix64056z29483_aauto_generated_aq_a[3] = m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign m3_mem_aix64056z29483_aauto_generated_aq_a[4] = m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign m3_mem_aix64056z29483_aauto_generated_aq_a[5] = m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign m3_mem_aix64056z29483_aauto_generated_aq_a[6] = m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign m3_mem_aix64056z29483_aauto_generated_aq_a[7] = m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

assign m1_mem_aix64056z29481_aauto_generated_aq_a[0] = m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign m1_mem_aix64056z29481_aauto_generated_aq_a[1] = m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign m1_mem_aix64056z29481_aauto_generated_aq_a[2] = m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign m1_mem_aix64056z29481_aauto_generated_aq_a[3] = m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign m1_mem_aix64056z29481_aauto_generated_aq_a[4] = m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign m1_mem_aix64056z29481_aauto_generated_aq_a[5] = m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign m1_mem_aix64056z29481_aauto_generated_aq_a[6] = m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign m1_mem_aix64056z29481_aauto_generated_aq_a[7] = m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

// Location: LCFF_X48_Y29_N17
cycloneii_lcell_ff reg_r14_12_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r14_12__afeeder_combout),
	.sdata(r11_9_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub3_sub10_3_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r14_12_));

// Location: LCFF_X44_Y29_N23
cycloneii_lcell_ff reg_r15_11_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add4_add11_6_anx62798z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r15_11_));

// Location: LCFF_X44_Y29_N21
cycloneii_lcell_ff reg_r15_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add4_add11_6_anx46946z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r15_10_));

// Location: LCFF_X48_Y29_N21
cycloneii_lcell_ff reg_r14_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r14_9__afeeder_combout),
	.sdata(r11_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub3_sub10_3_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r14_9_));

// Location: LCFF_X48_Y29_N23
cycloneii_lcell_ff reg_r14_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r14_8__afeeder_combout),
	.sdata(r11_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub3_sub10_3_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r14_8_));

// Location: LCFF_X44_Y29_N15
cycloneii_lcell_ff reg_r15_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add4_add11_6_anx43955z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r15_7_));

// Location: LCFF_X44_Y29_N13
cycloneii_lcell_ff reg_r15_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add4_add11_6_anx42958z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r15_6_));

// Location: LCFF_X47_Y29_N3
cycloneii_lcell_ff reg_r14_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r14_5__afeeder_combout),
	.sdata(r11_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub3_sub10_3_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r14_5_));

// Location: LCFF_X44_Y29_N9
cycloneii_lcell_ff reg_r15_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add4_add11_6_anx40964z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r15_4_));

// Location: LCFF_X48_Y29_N7
cycloneii_lcell_ff reg_r14_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r14_3__afeeder_combout),
	.sdata(r11_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub3_sub10_3_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r14_3_));

// Location: LCFF_X45_Y29_N7
cycloneii_lcell_ff reg_r15_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r13_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r15_0_));

// Location: LCCOMB_X49_Y28_N12
cycloneii_lcell_comb ix28105z52924(
// Equation(s):
// nx28105z2 = (v_6_ & ((modgen_counter_o_row_anx1041z1) # (modgen_counter_o_row_anx58250z3)))

	.dataa(v_6_),
	.datab(vcc),
	.datac(modgen_counter_o_row_anx1041z1),
	.datad(modgen_counter_o_row_anx58250z3),
	.cin(gnd),
	.combout(nx28105z2),
	.cout());
// synopsys translate_off
defparam ix28105z52924.lut_mask = 16'hAAA0;
defparam ix28105z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y28_N16
cycloneii_lcell_comb ix28105z52931(
// Equation(s):
// nx28105z9 = (modgen_counter_o_row_anx58250z13 & (v_6_ & ((modgen_counter_x_anx58250z5) # (modgen_counter_x_anx58250z7))))

	.dataa(modgen_counter_o_row_anx58250z13),
	.datab(modgen_counter_x_anx58250z5),
	.datac(v_6_),
	.datad(modgen_counter_x_anx58250z7),
	.cin(gnd),
	.combout(nx28105z9),
	.cout());
// synopsys translate_off
defparam ix28105z52931.lut_mask = 16'hA080;
defparam ix28105z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y30_N17
cycloneii_lcell_ff reg_r13_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r13_10__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r13_10_));

// Location: LCFF_X45_Y30_N1
cycloneii_lcell_ff reg_r13_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r13_8__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r13_8_));

// Location: LCFF_X44_Y30_N25
cycloneii_lcell_ff reg_r13_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r13_5__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r13_5_));

// Location: LCFF_X44_Y29_N27
cycloneii_lcell_ff reg_r13_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(add3_add11_0_anx40964z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r13_3_));

// Location: LCCOMB_X44_Y29_N8
cycloneii_lcell_comb add4_add11_6_aix62798z52931(
// Equation(s):
// add4_add11_6_anx40964z1 = (r13_3_ & ((r13_4_ & (add4_add11_6_anx62798z17 & VCC)) # (!r13_4_ & (!add4_add11_6_anx62798z17)))) # (!r13_3_ & ((r13_4_ & (!add4_add11_6_anx62798z17)) # (!r13_4_ & ((add4_add11_6_anx62798z17) # (GND)))))
// add4_add11_6_anx62798z15 = CARRY((r13_3_ & (!r13_4_ & !add4_add11_6_anx62798z17)) # (!r13_3_ & ((!add4_add11_6_anx62798z17) # (!r13_4_))))

	.dataa(r13_3_),
	.datab(r13_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(add4_add11_6_anx62798z17),
	.combout(add4_add11_6_anx40964z1),
	.cout(add4_add11_6_anx62798z15));
// synopsys translate_off
defparam add4_add11_6_aix62798z52931.lut_mask = 16'h9617;
defparam add4_add11_6_aix62798z52931.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y29_N12
cycloneii_lcell_comb add4_add11_6_aix62798z52929(
// Equation(s):
// add4_add11_6_anx42958z1 = (r13_5_ & ((r13_6_ & (add4_add11_6_anx62798z13 & VCC)) # (!r13_6_ & (!add4_add11_6_anx62798z13)))) # (!r13_5_ & ((r13_6_ & (!add4_add11_6_anx62798z13)) # (!r13_6_ & ((add4_add11_6_anx62798z13) # (GND)))))
// add4_add11_6_anx62798z11 = CARRY((r13_5_ & (!r13_6_ & !add4_add11_6_anx62798z13)) # (!r13_5_ & ((!add4_add11_6_anx62798z13) # (!r13_6_))))

	.dataa(r13_5_),
	.datab(r13_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(add4_add11_6_anx62798z13),
	.combout(add4_add11_6_anx42958z1),
	.cout(add4_add11_6_anx62798z11));
// synopsys translate_off
defparam add4_add11_6_aix62798z52929.lut_mask = 16'h9617;
defparam add4_add11_6_aix62798z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y29_N14
cycloneii_lcell_comb add4_add11_6_aix62798z52928(
// Equation(s):
// add4_add11_6_anx43955z1 = ((r13_7_ $ (r13_6_ $ (!add4_add11_6_anx62798z11)))) # (GND)
// add4_add11_6_anx62798z9 = CARRY((r13_7_ & ((r13_6_) # (!add4_add11_6_anx62798z11))) # (!r13_7_ & (r13_6_ & !add4_add11_6_anx62798z11)))

	.dataa(r13_7_),
	.datab(r13_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(add4_add11_6_anx62798z11),
	.combout(add4_add11_6_anx43955z1),
	.cout(add4_add11_6_anx62798z9));
// synopsys translate_off
defparam add4_add11_6_aix62798z52928.lut_mask = 16'h698E;
defparam add4_add11_6_aix62798z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y29_N20
cycloneii_lcell_comb add4_add11_6_aix62798z52925(
// Equation(s):
// add4_add11_6_anx46946z1 = (r13_10_ & ((r13_9_ & (add4_add11_6_anx62798z5 & VCC)) # (!r13_9_ & (!add4_add11_6_anx62798z5)))) # (!r13_10_ & ((r13_9_ & (!add4_add11_6_anx62798z5)) # (!r13_9_ & ((add4_add11_6_anx62798z5) # (GND)))))
// add4_add11_6_anx62798z3 = CARRY((r13_10_ & (!r13_9_ & !add4_add11_6_anx62798z5)) # (!r13_10_ & ((!add4_add11_6_anx62798z5) # (!r13_9_))))

	.dataa(r13_10_),
	.datab(r13_9_),
	.datac(vcc),
	.datad(vcc),
	.cin(add4_add11_6_anx62798z5),
	.combout(add4_add11_6_anx46946z1),
	.cout(add4_add11_6_anx62798z3));
// synopsys translate_off
defparam add4_add11_6_aix62798z52925.lut_mask = 16'h9617;
defparam add4_add11_6_aix62798z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y29_N22
cycloneii_lcell_comb add4_add11_6_aix62798z52923(
// Equation(s):
// add4_add11_6_anx62798z1 = (r13_10_ & (add4_add11_6_anx62798z3 $ (GND))) # (!r13_10_ & (!add4_add11_6_anx62798z3 & VCC))
// add4_add11_6_anx23445z2 = CARRY((r13_10_ & !add4_add11_6_anx62798z3))

	.dataa(r13_10_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(add4_add11_6_anx62798z3),
	.combout(add4_add11_6_anx62798z1),
	.cout(add4_add11_6_anx23445z2));
// synopsys translate_off
defparam add4_add11_6_aix62798z52923.lut_mask = 16'hA50A;
defparam add4_add11_6_aix62798z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X48_Y30_N23
cycloneii_lcell_ff reg_r12_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r12_6__afeeder_combout),
	.sdata(r9_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub2_sub10_2_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r12_6_));

// Location: LCFF_X48_Y30_N1
cycloneii_lcell_ff reg_r12_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r12_5__afeeder_combout),
	.sdata(r9_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub2_sub10_2_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r12_5_));

// Location: LCFF_X48_Y30_N7
cycloneii_lcell_ff reg_r12_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r12_2__afeeder_combout),
	.sdata(r9_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub2_sub10_2_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r12_2_));

// Location: LCFF_X46_Y31_N25
cycloneii_lcell_ff reg_dir4_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx44685z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(dir4_0_));

// Location: LCFF_X46_Y31_N11
cycloneii_lcell_ff reg_dir4_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx46679z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(dir4_2_));

// Location: LCFF_X46_Y30_N29
cycloneii_lcell_ff reg_dir6_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx35695z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(dir6_2_));

// Location: LCCOMB_X47_Y29_N10
cycloneii_lcell_comb ix44114z52924(
// Equation(s):
// nx44114z2 = (sub3_sub10_3_anx23445z1 & (((dir4_2_) # (!v_6_)))) # (!sub3_sub10_3_anx23445z1 & (dir6_2_))

	.dataa(dir6_2_),
	.datab(dir4_2_),
	.datac(v_6_),
	.datad(sub3_sub10_3_anx23445z1),
	.cin(gnd),
	.combout(nx44114z2),
	.cout());
// synopsys translate_off
defparam ix44114z52924.lut_mask = 16'hCFAA;
defparam ix44114z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y30_N16
cycloneii_lcell_comb ix17322z52932(
// Equation(s):
// nx17322z10 = (modgen_counter_o_row_anx58250z15 & (modgen_counter_o_row_anx58250z9 & (modgen_counter_o_row_anx58250z13 & modgen_counter_o_row_anx58250z11)))

	.dataa(modgen_counter_o_row_anx58250z15),
	.datab(modgen_counter_o_row_anx58250z9),
	.datac(modgen_counter_o_row_anx58250z13),
	.datad(modgen_counter_o_row_anx58250z11),
	.cin(gnd),
	.combout(nx17322z10),
	.cout());
// synopsys translate_off
defparam ix17322z52932.lut_mask = 16'h8000;
defparam ix17322z52932.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y30_N10
cycloneii_lcell_comb ix17322z52924(
// Equation(s):
// nx17322z2 = (i_reset_acombout) # ((i_valid_acombout & ((!modgen_counter_o_row_anx1041z1) # (!modgen_counter_o_row_anx58250z3))))

	.dataa(i_reset_acombout),
	.datab(i_valid_acombout),
	.datac(modgen_counter_o_row_anx58250z3),
	.datad(modgen_counter_o_row_anx1041z1),
	.cin(gnd),
	.combout(nx17322z2),
	.cout());
// synopsys translate_off
defparam ix17322z52924.lut_mask = 16'hAEEE;
defparam ix17322z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y30_N4
cycloneii_lcell_comb ix17322z52925(
// Equation(s):
// nx17322z3 = (i_valid_acombout & (((!modgen_counter_o_row_anx58250z5) # (!modgen_counter_o_row_anx58250z9)) # (!modgen_counter_o_row_anx58250z7)))

	.dataa(modgen_counter_o_row_anx58250z7),
	.datab(i_valid_acombout),
	.datac(modgen_counter_o_row_anx58250z9),
	.datad(modgen_counter_o_row_anx58250z5),
	.cin(gnd),
	.combout(nx17322z3),
	.cout());
// synopsys translate_off
defparam ix17322z52925.lut_mask = 16'h4CCC;
defparam ix17322z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y29_N30
cycloneii_lcell_comb ix17322z52926(
// Equation(s):
// nx17322z4 = (i_valid_acombout & ((nx17322z6) # ((end_of_img) # (nx17322z5))))

	.dataa(nx17322z6),
	.datab(end_of_img),
	.datac(i_valid_acombout),
	.datad(nx17322z5),
	.cin(gnd),
	.combout(nx17322z4),
	.cout());
// synopsys translate_off
defparam ix17322z52926.lut_mask = 16'hF0E0;
defparam ix17322z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y29_N8
cycloneii_lcell_comb ix17322z52930(
// Equation(s):
// nx17322z8 = (i_valid_acombout & (((!modgen_counter_o_row_anx58250z15) # (!modgen_counter_o_row_anx58250z13)) # (!modgen_counter_o_row_anx58250z11)))

	.dataa(i_valid_acombout),
	.datab(modgen_counter_o_row_anx58250z11),
	.datac(modgen_counter_o_row_anx58250z13),
	.datad(modgen_counter_o_row_anx58250z15),
	.cin(gnd),
	.combout(nx17322z8),
	.cout());
// synopsys translate_off
defparam ix17322z52930.lut_mask = 16'h2AAA;
defparam ix17322z52930.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y29_N10
cycloneii_lcell_comb ix17322z52929(
// Equation(s):
// nx17322z7 = (nx17322z8) # ((i_valid_acombout & ((nx6176z9) # (!modgen_counter_x_anx58250z5))))

	.dataa(i_valid_acombout),
	.datab(nx17322z8),
	.datac(modgen_counter_x_anx58250z5),
	.datad(nx6176z9),
	.cin(gnd),
	.combout(nx17322z7),
	.cout());
// synopsys translate_off
defparam ix17322z52929.lut_mask = 16'hEECE;
defparam ix17322z52929.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y29_N20
cycloneii_lcell_comb ix17322z52923(
// Equation(s):
// nx17322z1 = (nx17322z7) # ((nx17322z4) # ((nx17322z2) # (nx17322z3)))

	.dataa(nx17322z7),
	.datab(nx17322z4),
	.datac(nx17322z2),
	.datad(nx17322z3),
	.cin(gnd),
	.combout(nx17322z1),
	.cout());
// synopsys translate_off
defparam ix17322z52923.lut_mask = 16'hFFFE;
defparam ix17322z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y30_N13
cycloneii_lcell_ff reg_r8_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(add3_add11_0_anx62798z1),
	.aclr(gnd),
	.sclr(v_2_),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r8_10_));

// Location: LCFF_X44_Y30_N15
cycloneii_lcell_ff reg_r8_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(add3_add11_0_anx46946z1),
	.aclr(gnd),
	.sclr(v_2_),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r8_9_));

// Location: LCFF_X45_Y30_N27
cycloneii_lcell_ff reg_r8_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add3_add11_0_anx45949z1),
	.sdata(r7_8_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_2_),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r8_8_));

// Location: LCFF_X45_Y30_N25
cycloneii_lcell_ff reg_r8_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add3_add11_0_anx44952z1),
	.sdata(r7_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_2_),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r8_7_));

// Location: LCFF_X45_Y30_N13
cycloneii_lcell_ff reg_r8_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add3_add11_0_anx38970z1),
	.sdata(r7_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_2_),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r8_1_));

// Location: LCFF_X45_Y30_N11
cycloneii_lcell_ff reg_r8_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add3_add11_0_anx37973z1),
	.sdata(r7_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_2_),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r8_0_));

// Location: LCCOMB_X45_Y30_N26
cycloneii_lcell_comb add3_add11_0_aix62798z52926(
// Equation(s):
// add3_add11_0_anx45949z1 = ((r8_8_ $ (r7_8_ $ (!add3_add11_0_anx62798z8)))) # (GND)
// add3_add11_0_anx62798z5 = CARRY((r8_8_ & ((r7_8_) # (!add3_add11_0_anx62798z8))) # (!r8_8_ & (r7_8_ & !add3_add11_0_anx62798z8)))

	.dataa(r8_8_),
	.datab(r7_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(add3_add11_0_anx62798z8),
	.combout(add3_add11_0_anx45949z1),
	.cout(add3_add11_0_anx62798z5));
// synopsys translate_off
defparam add3_add11_0_aix62798z52926.lut_mask = 16'h698E;
defparam add3_add11_0_aix62798z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y30_N28
cycloneii_lcell_comb add3_add11_0_aix62798z52925(
// Equation(s):
// add3_add11_0_anx46946z1 = (r8_9_ & (!add3_add11_0_anx62798z5)) # (!r8_9_ & ((add3_add11_0_anx62798z5) # (GND)))
// add3_add11_0_anx62798z3 = CARRY((!add3_add11_0_anx62798z5) # (!r8_9_))

	.dataa(r8_9_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(add3_add11_0_anx62798z5),
	.combout(add3_add11_0_anx46946z1),
	.cout(add3_add11_0_anx62798z3));
// synopsys translate_off
defparam add3_add11_0_aix62798z52925.lut_mask = 16'h5A5F;
defparam add3_add11_0_aix62798z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y30_N30
cycloneii_lcell_comb add3_add11_0_aix62798z52923(
// Equation(s):
// add3_add11_0_anx62798z1 = add3_add11_0_anx62798z3 $ (!r8_10_)

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r8_10_),
	.cin(add3_add11_0_anx62798z3),
	.combout(add3_add11_0_anx62798z1),
	.cout());
// synopsys translate_off
defparam add3_add11_0_aix62798z52923.lut_mask = 16'hF00F;
defparam add3_add11_0_aix62798z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X47_Y30_N27
cycloneii_lcell_ff reg_r9_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(max2_6_),
	.sdata(add2_add9_5_anx43955z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_2_),
	.ena(nx25299z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r9_6_));

// Location: LCFF_X47_Y30_N29
cycloneii_lcell_ff reg_r9_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(max2_5_),
	.sdata(add2_add9_5_anx42958z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_2_),
	.ena(nx25299z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r9_5_));

// Location: LCFF_X48_Y28_N25
cycloneii_lcell_ff reg_r5_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_7__afeeder_combout),
	.sdata(r1_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub1_sub8_1_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_7_));

// Location: LCFF_X48_Y28_N1
cycloneii_lcell_ff reg_r5_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_3__afeeder_combout),
	.sdata(r1_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub1_sub8_1_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_3_));

// Location: LCFF_X48_Y28_N3
cycloneii_lcell_ff reg_r5_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_2__afeeder_combout),
	.sdata(r1_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub1_sub8_1_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_2_));

// Location: LCFF_X48_Y28_N23
cycloneii_lcell_ff reg_r5_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_0__afeeder_combout),
	.sdata(r1_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub1_sub8_1_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_0_));

// Location: LCFF_X48_Y31_N27
cycloneii_lcell_ff reg_r1_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx41056z1),
	.sdata(a_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r1_7_));

// Location: LCFF_X48_Y32_N27
cycloneii_lcell_ff reg_r1_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx37068z1),
	.sdata(a_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r1_3_));

// Location: LCFF_X48_Y31_N1
cycloneii_lcell_ff reg_r2_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx27652z1),
	.sdata(d_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_2_));

// Location: LCFF_X49_Y31_N27
cycloneii_lcell_ff reg_r2_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx25658z1),
	.sdata(d_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_0_));

// Location: LCCOMB_X45_Y31_N18
cycloneii_lcell_comb ix46679z52924(
// Equation(s):
// nx46679z2 = (v_4_ & (!v_2_ & (!v_3_ & !v_1_)))

	.dataa(v_4_),
	.datab(v_2_),
	.datac(v_3_),
	.datad(v_1_),
	.cin(gnd),
	.combout(nx46679z2),
	.cout());
// synopsys translate_off
defparam ix46679z52924.lut_mask = 16'h0002;
defparam ix46679z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y31_N24
cycloneii_lcell_comb ix44685z52923(
// Equation(s):
// nx44685z1 = (nx46679z2 & ((sub1_sub8_1_anx23445z1))) # (!nx46679z2 & (dir4_0_))

	.dataa(vcc),
	.datab(nx46679z2),
	.datac(dir4_0_),
	.datad(sub1_sub8_1_anx23445z1),
	.cin(gnd),
	.combout(nx44685z1),
	.cout());
// synopsys translate_off
defparam ix44685z52923.lut_mask = 16'hFC30;
defparam ix44685z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y31_N10
cycloneii_lcell_comb ix46679z52923(
// Equation(s):
// nx46679z1 = (nx46679z2 & ((!sub1_sub8_1_anx23445z1))) # (!nx46679z2 & (dir4_2_))

	.dataa(vcc),
	.datab(nx46679z2),
	.datac(dir4_2_),
	.datad(sub1_sub8_1_anx23445z1),
	.cin(gnd),
	.combout(nx46679z1),
	.cout());
// synopsys translate_off
defparam ix46679z52923.lut_mask = 16'h30FC;
defparam ix46679z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y31_N7
cycloneii_lcell_ff reg_dir3_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx10438z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(dir3_2_));

// Location: LCFF_X46_Y30_N27
cycloneii_lcell_ff reg_dir5_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(dir5_23n5ss1_2_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(v_4_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(dir5_2_));

// Location: LCCOMB_X46_Y30_N20
cycloneii_lcell_comb ix35695z52924(
// Equation(s):
// dir6_23n5ss1_2_ = (sub2_sub10_2_anx23445z1 & ((dir5_2_))) # (!sub2_sub10_2_anx23445z1 & (dir3_2_))

	.dataa(vcc),
	.datab(sub2_sub10_2_anx23445z1),
	.datac(dir3_2_),
	.datad(dir5_2_),
	.cin(gnd),
	.combout(dir6_23n5ss1_2_),
	.cout());
// synopsys translate_off
defparam ix35695z52924.lut_mask = 16'hFC30;
defparam ix35695z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y30_N28
cycloneii_lcell_comb ix35695z52923(
// Equation(s):
// nx35695z1 = (v_4_ & (((dir6_2_)))) # (!v_4_ & ((v_5_ & (dir6_23n5ss1_2_)) # (!v_5_ & ((dir6_2_)))))

	.dataa(dir6_23n5ss1_2_),
	.datab(v_4_),
	.datac(dir6_2_),
	.datad(v_5_),
	.cin(gnd),
	.combout(nx35695z1),
	.cout());
// synopsys translate_off
defparam ix35695z52923.lut_mask = 16'hE2F0;
defparam ix35695z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y29_N18
cycloneii_lcell_comb ix6176z52929(
// Equation(s):
// nx6176z7 = (!modgen_counter_o_row_anx58250z7) # (!modgen_counter_o_row_anx58250z5)

	.dataa(vcc),
	.datab(vcc),
	.datac(modgen_counter_o_row_anx58250z5),
	.datad(modgen_counter_o_row_anx58250z7),
	.cin(gnd),
	.combout(nx6176z7),
	.cout());
// synopsys translate_off
defparam ix6176z52929.lut_mask = 16'h0FFF;
defparam ix6176z52929.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y31_N13
cycloneii_lcell_ff reg_r4_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx49737z1),
	.sdata(b_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4_7_));

// Location: LCFF_X48_Y31_N17
cycloneii_lcell_ff reg_r3_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx42315z1),
	.sdata(c_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_6_));

// Location: LCFF_X49_Y31_N7
cycloneii_lcell_ff reg_r3_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx43312z1),
	.sdata(c_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_5_));

// Location: LCFF_X49_Y31_N17
cycloneii_lcell_ff reg_r4_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx52728z1),
	.sdata(b_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4_4_));

// Location: LCFF_X48_Y32_N19
cycloneii_lcell_ff reg_r4_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx53725z1),
	.sdata(b_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4_3_));

// Location: LCFF_X48_Y31_N19
cycloneii_lcell_ff reg_r4_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx54722z1),
	.sdata(b_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4_2_));

// Location: LCFF_X49_Y30_N11
cycloneii_lcell_ff reg_r4_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx55719z1),
	.sdata(b_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4_1_));

// Location: LCFF_X49_Y30_N7
cycloneii_lcell_ff reg_r3_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx48297z1),
	.sdata(c_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_0_));

// Location: LCCOMB_X47_Y30_N26
cycloneii_lcell_comb ix27293z52923(
// Equation(s):
// max2_6_ = (sub2_sub10_2_anx23445z1 & ((r9_6_))) # (!sub2_sub10_2_anx23445z1 & (r11_6_))

	.dataa(r11_6_),
	.datab(vcc),
	.datac(r9_6_),
	.datad(sub2_sub10_2_anx23445z1),
	.cin(gnd),
	.combout(max2_6_),
	.cout());
// synopsys translate_off
defparam ix27293z52923.lut_mask = 16'hF0AA;
defparam ix27293z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y30_N28
cycloneii_lcell_comb ix28290z52923(
// Equation(s):
// max2_5_ = (sub2_sub10_2_anx23445z1 & ((r9_5_))) # (!sub2_sub10_2_anx23445z1 & (r11_5_))

	.dataa(r11_5_),
	.datab(vcc),
	.datac(r9_5_),
	.datad(sub2_sub10_2_anx23445z1),
	.cin(gnd),
	.combout(max2_5_),
	.cout());
// synopsys translate_off
defparam ix28290z52923.lut_mask = 16'hF0AA;
defparam ix28290z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y31_N31
cycloneii_lcell_ff reg_g_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(f_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(g_7_));

// Location: LCCOMB_X47_Y31_N30
cycloneii_lcell_comb ix41056z52924(
// Equation(s):
// nx41056z2 = (v_1_) # ((v_2_ & (e_7_)) # (!v_2_ & ((g_7_))))

	.dataa(v_1_),
	.datab(e_7_),
	.datac(g_7_),
	.datad(v_2_),
	.cin(gnd),
	.combout(nx41056z2),
	.cout());
// synopsys translate_off
defparam ix41056z52924.lut_mask = 16'hEEFA;
defparam ix41056z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y31_N26
cycloneii_lcell_comb ix41056z52923(
// Equation(s):
// nx41056z1 = (nx41056z2 & ((c_7_) # (!v_1_)))

	.dataa(nx41056z2),
	.datab(c_7_),
	.datac(vcc),
	.datad(v_1_),
	.cin(gnd),
	.combout(nx41056z1),
	.cout());
// synopsys translate_off
defparam ix41056z52923.lut_mask = 16'h88AA;
defparam ix41056z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y31_N1
cycloneii_lcell_ff reg_g_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(f_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(g_5_));

// Location: LCCOMB_X47_Y31_N0
cycloneii_lcell_comb ix39062z52924(
// Equation(s):
// nx39062z2 = (v_1_) # ((v_2_ & (e_5_)) # (!v_2_ & ((g_5_))))

	.dataa(v_1_),
	.datab(e_5_),
	.datac(g_5_),
	.datad(v_2_),
	.cin(gnd),
	.combout(nx39062z2),
	.cout());
// synopsys translate_off
defparam ix39062z52924.lut_mask = 16'hEEFA;
defparam ix39062z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y31_N9
cycloneii_lcell_ff reg_h_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(h_4_));

// Location: LCCOMB_X47_Y31_N8
cycloneii_lcell_comb ix29646z52924(
// Equation(s):
// nx29646z2 = (v_1_) # ((v_2_ & ((h_4_))) # (!v_2_ & (b_4_)))

	.dataa(b_4_),
	.datab(v_1_),
	.datac(h_4_),
	.datad(v_2_),
	.cin(gnd),
	.combout(nx29646z2),
	.cout());
// synopsys translate_off
defparam ix29646z52924.lut_mask = 16'hFCEE;
defparam ix29646z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y32_N25
cycloneii_lcell_ff reg_h_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(h_3_));

// Location: LCFF_X49_Y32_N15
cycloneii_lcell_ff reg_g_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(f_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(g_3_));

// Location: LCCOMB_X49_Y32_N14
cycloneii_lcell_comb ix37068z52924(
// Equation(s):
// nx37068z2 = (v_1_) # ((v_2_ & (e_3_)) # (!v_2_ & ((g_3_))))

	.dataa(e_3_),
	.datab(v_1_),
	.datac(g_3_),
	.datad(v_2_),
	.cin(gnd),
	.combout(nx37068z2),
	.cout());
// synopsys translate_off
defparam ix37068z52924.lut_mask = 16'hEEFC;
defparam ix37068z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y32_N26
cycloneii_lcell_comb ix37068z52923(
// Equation(s):
// nx37068z1 = (nx37068z2 & ((c_3_) # (!v_1_)))

	.dataa(nx37068z2),
	.datab(c_3_),
	.datac(vcc),
	.datad(v_1_),
	.cin(gnd),
	.combout(nx37068z1),
	.cout());
// synopsys translate_off
defparam ix37068z52923.lut_mask = 16'h88AA;
defparam ix37068z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y31_N27
cycloneii_lcell_ff reg_a_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(a_3__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(a_3_));

// Location: LCFF_X49_Y32_N23
cycloneii_lcell_ff reg_h_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(h_2_));

// Location: LCCOMB_X49_Y32_N22
cycloneii_lcell_comb ix27652z52924(
// Equation(s):
// nx27652z2 = (v_1_) # ((v_2_ & (h_2_)) # (!v_2_ & ((b_2_))))

	.dataa(v_2_),
	.datab(v_1_),
	.datac(h_2_),
	.datad(b_2_),
	.cin(gnd),
	.combout(nx27652z2),
	.cout());
// synopsys translate_off
defparam ix27652z52924.lut_mask = 16'hFDEC;
defparam ix27652z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y31_N0
cycloneii_lcell_comb ix27652z52923(
// Equation(s):
// nx27652z1 = (nx27652z2 & ((f_2_) # (!v_1_)))

	.dataa(v_1_),
	.datab(f_2_),
	.datac(vcc),
	.datad(nx27652z2),
	.cin(gnd),
	.combout(nx27652z1),
	.cout());
// synopsys translate_off
defparam ix27652z52923.lut_mask = 16'hDD00;
defparam ix27652z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y30_N21
cycloneii_lcell_ff reg_d_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx31640z3),
	.sdata(m2_mem_aix64056z29482_aauto_generated_aq_a[2]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(t_1_),
	.ena(nx20492z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(d_2_));

// Location: LCCOMB_X50_Y31_N18
cycloneii_lcell_comb ix25658z52924(
// Equation(s):
// nx25658z2 = (v_1_) # ((v_2_ & ((h_0_))) # (!v_2_ & (b_0_)))

	.dataa(v_2_),
	.datab(v_1_),
	.datac(b_0_),
	.datad(h_0_),
	.cin(gnd),
	.combout(nx25658z2),
	.cout());
// synopsys translate_off
defparam ix25658z52924.lut_mask = 16'hFEDC;
defparam ix25658z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y31_N26
cycloneii_lcell_comb ix25658z52923(
// Equation(s):
// nx25658z1 = (nx25658z2 & ((f_0_) # (!v_1_)))

	.dataa(v_1_),
	.datab(f_0_),
	.datac(vcc),
	.datad(nx25658z2),
	.cin(gnd),
	.combout(nx25658z1),
	.cout());
// synopsys translate_off
defparam ix25658z52923.lut_mask = 16'hDD00;
defparam ix25658z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y31_N30
cycloneii_lcell_comb ix10438z52924(
// Equation(s):
// nx10438z2 = (!v_2_ & (!v_1_ & v_3_))

	.dataa(vcc),
	.datab(v_2_),
	.datac(v_1_),
	.datad(v_3_),
	.cin(gnd),
	.combout(nx10438z2),
	.cout());
// synopsys translate_off
defparam ix10438z52924.lut_mask = 16'h0300;
defparam ix10438z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y31_N6
cycloneii_lcell_comb ix10438z52923(
// Equation(s):
// nx10438z1 = (nx10438z2 & ((!sub1_sub8_1_anx23445z1))) # (!nx10438z2 & (dir3_2_))

	.dataa(nx10438z2),
	.datab(vcc),
	.datac(dir3_2_),
	.datad(sub1_sub8_1_anx23445z1),
	.cin(gnd),
	.combout(nx10438z1),
	.cout());
// synopsys translate_off
defparam ix10438z52923.lut_mask = 16'h50FA;
defparam ix10438z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y31_N9
cycloneii_lcell_ff reg_dir1_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(sub1_sub8_1_anx23445z1_a_wirecell_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(v_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(dir1_2_));

// Location: LCCOMB_X46_Y30_N26
cycloneii_lcell_comb ix38260z52923(
// Equation(s):
// dir5_23n5ss1_2_ = (sub2_sub10_2_anx23445z1 & ((dir1_2_))) # (!sub2_sub10_2_anx23445z1 & (dir2_2_))

	.dataa(vcc),
	.datab(sub2_sub10_2_anx23445z1),
	.datac(dir2_2_),
	.datad(dir1_2_),
	.cin(gnd),
	.combout(dir5_23n5ss1_2_),
	.cout());
// synopsys translate_off
defparam ix38260z52923.lut_mask = 16'hFC30;
defparam ix38260z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y31_N22
cycloneii_lcell_comb ix49737z52924(
// Equation(s):
// nx49737z2 = (v_1_) # ((v_2_ & ((g_7_))) # (!v_2_ & (h_7_)))

	.dataa(v_2_),
	.datab(h_7_),
	.datac(v_1_),
	.datad(g_7_),
	.cin(gnd),
	.combout(nx49737z2),
	.cout());
// synopsys translate_off
defparam ix49737z52924.lut_mask = 16'hFEF4;
defparam ix49737z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y31_N12
cycloneii_lcell_comb ix49737z52923(
// Equation(s):
// nx49737z1 = (nx49737z2 & ((d_7_) # (!v_1_)))

	.dataa(v_1_),
	.datab(d_7_),
	.datac(vcc),
	.datad(nx49737z2),
	.cin(gnd),
	.combout(nx49737z1),
	.cout());
// synopsys translate_off
defparam ix49737z52923.lut_mask = 16'hDD00;
defparam ix49737z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y31_N0
cycloneii_lcell_comb ix50734z52924(
// Equation(s):
// nx50734z2 = (v_1_) # ((v_2_ & (g_6_)) # (!v_2_ & ((h_6_))))

	.dataa(v_2_),
	.datab(g_6_),
	.datac(v_1_),
	.datad(h_6_),
	.cin(gnd),
	.combout(nx50734z2),
	.cout());
// synopsys translate_off
defparam ix50734z52924.lut_mask = 16'hFDF8;
defparam ix50734z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y31_N18
cycloneii_lcell_comb ix42315z52924(
// Equation(s):
// nx42315z2 = (v_1_) # ((v_2_ & ((f_6_))) # (!v_2_ & (a_6_)))

	.dataa(v_1_),
	.datab(a_6_),
	.datac(f_6_),
	.datad(v_2_),
	.cin(gnd),
	.combout(nx42315z2),
	.cout());
// synopsys translate_off
defparam ix42315z52924.lut_mask = 16'hFAEE;
defparam ix42315z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y31_N16
cycloneii_lcell_comb ix42315z52923(
// Equation(s):
// nx42315z1 = (nx42315z2 & ((e_6_) # (!v_1_)))

	.dataa(v_1_),
	.datab(nx42315z2),
	.datac(vcc),
	.datad(e_6_),
	.cin(gnd),
	.combout(nx42315z1),
	.cout());
// synopsys translate_off
defparam ix42315z52923.lut_mask = 16'hCC44;
defparam ix42315z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y31_N26
cycloneii_lcell_comb ix51731z52924(
// Equation(s):
// nx51731z2 = (v_1_) # ((v_2_ & ((g_5_))) # (!v_2_ & (h_5_)))

	.dataa(v_1_),
	.datab(h_5_),
	.datac(g_5_),
	.datad(v_2_),
	.cin(gnd),
	.combout(nx51731z2),
	.cout());
// synopsys translate_off
defparam ix51731z52924.lut_mask = 16'hFAEE;
defparam ix51731z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y31_N24
cycloneii_lcell_comb ix43312z52924(
// Equation(s):
// nx43312z2 = (v_1_) # ((v_2_ & ((f_5_))) # (!v_2_ & (a_5_)))

	.dataa(v_1_),
	.datab(a_5_),
	.datac(f_5_),
	.datad(v_2_),
	.cin(gnd),
	.combout(nx43312z2),
	.cout());
// synopsys translate_off
defparam ix43312z52924.lut_mask = 16'hFAEE;
defparam ix43312z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y31_N6
cycloneii_lcell_comb ix43312z52923(
// Equation(s):
// nx43312z1 = (nx43312z2 & ((e_5_) # (!v_1_)))

	.dataa(v_1_),
	.datab(nx43312z2),
	.datac(vcc),
	.datad(e_5_),
	.cin(gnd),
	.combout(nx43312z1),
	.cout());
// synopsys translate_off
defparam ix43312z52923.lut_mask = 16'hCC44;
defparam ix43312z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y31_N28
cycloneii_lcell_comb ix52728z52924(
// Equation(s):
// nx52728z2 = (v_1_) # ((v_2_ & (g_4_)) # (!v_2_ & ((h_4_))))

	.dataa(v_1_),
	.datab(g_4_),
	.datac(h_4_),
	.datad(v_2_),
	.cin(gnd),
	.combout(nx52728z2),
	.cout());
// synopsys translate_off
defparam ix52728z52924.lut_mask = 16'hEEFA;
defparam ix52728z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y31_N16
cycloneii_lcell_comb ix52728z52923(
// Equation(s):
// nx52728z1 = (nx52728z2 & ((d_4_) # (!v_1_)))

	.dataa(nx52728z2),
	.datab(d_4_),
	.datac(vcc),
	.datad(v_1_),
	.cin(gnd),
	.combout(nx52728z1),
	.cout());
// synopsys translate_off
defparam ix52728z52923.lut_mask = 16'h88AA;
defparam ix52728z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y32_N24
cycloneii_lcell_comb ix53725z52924(
// Equation(s):
// nx53725z2 = (v_1_) # ((v_2_ & (g_3_)) # (!v_2_ & ((h_3_))))

	.dataa(g_3_),
	.datab(v_1_),
	.datac(h_3_),
	.datad(v_2_),
	.cin(gnd),
	.combout(nx53725z2),
	.cout());
// synopsys translate_off
defparam ix53725z52924.lut_mask = 16'hEEFC;
defparam ix53725z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y32_N18
cycloneii_lcell_comb ix53725z52923(
// Equation(s):
// nx53725z1 = (nx53725z2 & ((d_3_) # (!v_1_)))

	.dataa(v_1_),
	.datab(d_3_),
	.datac(vcc),
	.datad(nx53725z2),
	.cin(gnd),
	.combout(nx53725z1),
	.cout());
// synopsys translate_off
defparam ix53725z52923.lut_mask = 16'hDD00;
defparam ix53725z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y32_N26
cycloneii_lcell_comb ix45306z52924(
// Equation(s):
// nx45306z2 = (v_1_) # ((v_2_ & ((f_3_))) # (!v_2_ & (a_3_)))

	.dataa(a_3_),
	.datab(v_1_),
	.datac(f_3_),
	.datad(v_2_),
	.cin(gnd),
	.combout(nx45306z2),
	.cout());
// synopsys translate_off
defparam ix45306z52924.lut_mask = 16'hFCEE;
defparam ix45306z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y31_N30
cycloneii_lcell_comb ix54722z52924(
// Equation(s):
// nx54722z2 = (v_1_) # ((v_2_ & ((g_2_))) # (!v_2_ & (h_2_)))

	.dataa(v_1_),
	.datab(v_2_),
	.datac(h_2_),
	.datad(g_2_),
	.cin(gnd),
	.combout(nx54722z2),
	.cout());
// synopsys translate_off
defparam ix54722z52924.lut_mask = 16'hFEBA;
defparam ix54722z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y31_N18
cycloneii_lcell_comb ix54722z52923(
// Equation(s):
// nx54722z1 = (nx54722z2 & ((d_2_) # (!v_1_)))

	.dataa(v_1_),
	.datab(d_2_),
	.datac(vcc),
	.datad(nx54722z2),
	.cin(gnd),
	.combout(nx54722z1),
	.cout());
// synopsys translate_off
defparam ix54722z52923.lut_mask = 16'hDD00;
defparam ix54722z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y32_N0
cycloneii_lcell_comb ix46303z52924(
// Equation(s):
// nx46303z2 = (v_1_) # ((v_2_ & (f_2_)) # (!v_2_ & ((a_2_))))

	.dataa(v_2_),
	.datab(v_1_),
	.datac(f_2_),
	.datad(a_2_),
	.cin(gnd),
	.combout(nx46303z2),
	.cout());
// synopsys translate_off
defparam ix46303z52924.lut_mask = 16'hFDEC;
defparam ix46303z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y31_N4
cycloneii_lcell_comb ix55719z52924(
// Equation(s):
// nx55719z2 = (v_1_) # ((v_2_ & (g_1_)) # (!v_2_ & ((h_1_))))

	.dataa(v_1_),
	.datab(g_1_),
	.datac(v_2_),
	.datad(h_1_),
	.cin(gnd),
	.combout(nx55719z2),
	.cout());
// synopsys translate_off
defparam ix55719z52924.lut_mask = 16'hEFEA;
defparam ix55719z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y30_N10
cycloneii_lcell_comb ix55719z52923(
// Equation(s):
// nx55719z1 = (nx55719z2 & ((d_1_) # (!v_1_)))

	.dataa(d_1_),
	.datab(v_1_),
	.datac(vcc),
	.datad(nx55719z2),
	.cin(gnd),
	.combout(nx55719z1),
	.cout());
// synopsys translate_off
defparam ix55719z52923.lut_mask = 16'hBB00;
defparam ix55719z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y31_N16
cycloneii_lcell_comb ix48297z52924(
// Equation(s):
// nx48297z2 = (v_1_) # ((v_2_ & (f_0_)) # (!v_2_ & ((a_0_))))

	.dataa(v_2_),
	.datab(v_1_),
	.datac(f_0_),
	.datad(a_0_),
	.cin(gnd),
	.combout(nx48297z2),
	.cout());
// synopsys translate_off
defparam ix48297z52924.lut_mask = 16'hFDEC;
defparam ix48297z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y30_N6
cycloneii_lcell_comb ix48297z52923(
// Equation(s):
// nx48297z1 = (nx48297z2 & ((e_0_) # (!v_1_)))

	.dataa(nx48297z2),
	.datab(v_1_),
	.datac(vcc),
	.datad(e_0_),
	.cin(gnd),
	.combout(nx48297z1),
	.cout());
// synopsys translate_off
defparam ix48297z52923.lut_mask = 16'hAA22;
defparam ix48297z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y31_N21
cycloneii_lcell_ff reg_i_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(d_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_4_));

// Location: LCFF_X49_Y32_N31
cycloneii_lcell_ff reg_i_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(i_3__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_3_));

// Location: LCFF_X49_Y32_N21
cycloneii_lcell_ff reg_i_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(i_2__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_2_));

// Location: LCCOMB_X51_Y30_N20
cycloneii_lcell_comb ix31640z52926(
// Equation(s):
// nx31640z3 = (t_0_ & (m1_mem_aix64056z29481_aauto_generated_aq_a[2])) # (!t_0_ & ((m3_mem_aix64056z29483_aauto_generated_aq_a[2])))

	.dataa(m1_mem_aix64056z29481_aauto_generated_aq_a[2]),
	.datab(t_0_),
	.datac(vcc),
	.datad(m3_mem_aix64056z29483_aauto_generated_aq_a[2]),
	.cin(gnd),
	.combout(nx31640z3),
	.cout());
// synopsys translate_off
defparam ix31640z52926.lut_mask = 16'hBB88;
defparam ix31640z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: M4K_X52_Y30
cycloneii_ram_block m3_mem_aix64056z29483_aauto_generated_aram_block1a0(
	.portawe(wren_m3),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(i_clock_aclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({i_pixel_acombout[7],i_pixel_acombout[6],i_pixel_acombout[5],i_pixel_acombout[4],i_pixel_acombout[3],i_pixel_acombout[2],i_pixel_acombout[1],i_pixel_acombout[0]}),
	.portaaddr({addr_x_7_,addr_x_6_,addr_x_5_,addr_x_4_,addr_x_3_,addr_x_2_,addr_x_1_,addr_x_0_}),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam m3_mem_aix64056z29483_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam m3_mem_aix64056z29483_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam m3_mem_aix64056z29483_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_2:m3_mem|altsyncram:ix64056z29483|altsyncram_jpg2:auto_generated|ALTSYNCRAM";
defparam m3_mem_aix64056z29483_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam m3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam m3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam m3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_byte_enable_clear = "none";
defparam m3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam m3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_in_clear = "none";
defparam m3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam m3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam m3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_data_width = 8;
defparam m3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam m3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam m3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam m3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam m3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam m3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_a_write_enable_clear = "none";
defparam m3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam m3_mem_aix64056z29483_aauto_generated_aram_block1a0.port_b_data_width = 8;
defparam m3_mem_aix64056z29483_aauto_generated_aram_block1a0.ram_block_type = "M4K";
defparam m3_mem_aix64056z29483_aauto_generated_aram_block1a0.safe_write = "err_on_2clk";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N2
cycloneii_lcell_comb ix13952z52923(
// Equation(s):
// wren_m1 = (i_valid_acombout & ((t_20n2s1_0_) # ((nx6176z3 & nx17322z15))))

	.dataa(t_20n2s1_0_),
	.datab(i_valid_acombout),
	.datac(nx6176z3),
	.datad(nx17322z15),
	.cin(gnd),
	.combout(wren_m1),
	.cout());
// synopsys translate_off
defparam ix13952z52923.lut_mask = 16'hC888;
defparam ix13952z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N6
cycloneii_lcell_comb ix19087z52947(
// Equation(s):
// nx19087z14 = (modgen_counter_x_anx58250z7 & (((!modgen_counter_x_anx58250z9) # (!modgen_counter_x_anx58250z11)) # (!modgen_counter_x_anx58250z5)))

	.dataa(modgen_counter_x_anx58250z7),
	.datab(modgen_counter_x_anx58250z5),
	.datac(modgen_counter_x_anx58250z11),
	.datad(modgen_counter_x_anx58250z9),
	.cin(gnd),
	.combout(nx19087z14),
	.cout());
// synopsys translate_off
defparam ix19087z52947.lut_mask = 16'h2AAA;
defparam ix19087z52947.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y30_N24
cycloneii_lcell_comb ix24222z52924(
// Equation(s):
// nx24222z1 = (!t_0_ & t_1_)

	.dataa(t_0_),
	.datab(vcc),
	.datac(vcc),
	.datad(t_1_),
	.cin(gnd),
	.combout(nx24222z1),
	.cout());
// synopsys translate_off
defparam ix24222z52924.lut_mask = 16'h5500;
defparam ix24222z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y30_N2
cycloneii_lcell_comb ix19087z52964(
// Equation(s):
// nx19087z26 = (nx6176z7) # (((!nx6176z5) # (!nx6176z6)) # (!nx6176z4))

	.dataa(nx6176z7),
	.datab(nx6176z4),
	.datac(nx6176z6),
	.datad(nx6176z5),
	.cin(gnd),
	.combout(nx19087z26),
	.cout());
// synopsys translate_off
defparam ix19087z52964.lut_mask = 16'hBFFF;
defparam ix19087z52964.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N30
cycloneii_lcell_comb ix19087z52965(
// Equation(s):
// nx19087z27 = (nx6176z8) # (((nx17322z6) # (nx6176z9)) # (!nx17322z16))

	.dataa(nx6176z8),
	.datab(nx17322z16),
	.datac(nx17322z6),
	.datad(nx6176z9),
	.cin(gnd),
	.combout(nx19087z27),
	.cout());
// synopsys translate_off
defparam ix19087z52965.lut_mask = 16'hFFFB;
defparam ix19087z52965.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y30_N12
cycloneii_lcell_comb ix24222z52923(
// Equation(s):
// wren_m3 = (nx24222z1 & (i_valid_acombout & ((nx19087z26) # (nx19087z27))))

	.dataa(nx24222z1),
	.datab(nx19087z26),
	.datac(nx19087z27),
	.datad(i_valid_acombout),
	.cin(gnd),
	.combout(wren_m3),
	.cout());
// synopsys translate_off
defparam ix24222z52923.lut_mask = 16'hA800;
defparam ix24222z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y30_N30
cycloneii_lcell_comb ix19087z52963(
// Equation(s):
// wren_m2 = (i_valid_acombout & (t_20n2s1_1_ & ((nx19087z27) # (nx19087z26))))

	.dataa(i_valid_acombout),
	.datab(t_20n2s1_1_),
	.datac(nx19087z27),
	.datad(nx19087z26),
	.cin(gnd),
	.combout(wren_m2),
	.cout());
// synopsys translate_off
defparam ix19087z52963.lut_mask = 16'h8880;
defparam ix19087z52963.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y31_N8
cycloneii_lcell_comb sub1_sub8_1_anx23445z1_a_wirecell(
// Equation(s):
// sub1_sub8_1_anx23445z1_a_wirecell_combout = !sub1_sub8_1_anx23445z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(sub1_sub8_1_anx23445z1),
	.cin(gnd),
	.combout(sub1_sub8_1_anx23445z1_a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam sub1_sub8_1_anx23445z1_a_wirecell.lut_mask = 16'h00FF;
defparam sub1_sub8_1_anx23445z1_a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y29_N16
cycloneii_lcell_comb r14_12__afeeder(
// Equation(s):
// r14_12__afeeder_combout = r12_9_

	.dataa(r12_9_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r14_12__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r14_12__afeeder.lut_mask = 16'hAAAA;
defparam r14_12__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y29_N20
cycloneii_lcell_comb r14_9__afeeder(
// Equation(s):
// r14_9__afeeder_combout = r12_6_

	.dataa(vcc),
	.datab(r12_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r14_9__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r14_9__afeeder.lut_mask = 16'hCCCC;
defparam r14_9__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y30_N22
cycloneii_lcell_comb r12_6__afeeder(
// Equation(s):
// r12_6__afeeder_combout = r11_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r11_6_),
	.cin(gnd),
	.combout(r12_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r12_6__afeeder.lut_mask = 16'hFF00;
defparam r12_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y29_N22
cycloneii_lcell_comb r14_8__afeeder(
// Equation(s):
// r14_8__afeeder_combout = r12_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r12_5_),
	.cin(gnd),
	.combout(r14_8__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r14_8__afeeder.lut_mask = 16'hFF00;
defparam r14_8__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y30_N0
cycloneii_lcell_comb r12_5__afeeder(
// Equation(s):
// r12_5__afeeder_combout = r11_5_

	.dataa(vcc),
	.datab(r11_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r12_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r12_5__afeeder.lut_mask = 16'hCCCC;
defparam r12_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y29_N2
cycloneii_lcell_comb r14_5__afeeder(
// Equation(s):
// r14_5__afeeder_combout = r12_2_

	.dataa(r12_2_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r14_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r14_5__afeeder.lut_mask = 16'hAAAA;
defparam r14_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y30_N6
cycloneii_lcell_comb r12_2__afeeder(
// Equation(s):
// r12_2__afeeder_combout = r11_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r11_2_),
	.cin(gnd),
	.combout(r12_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r12_2__afeeder.lut_mask = 16'hFF00;
defparam r12_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y29_N6
cycloneii_lcell_comb r14_3__afeeder(
// Equation(s):
// r14_3__afeeder_combout = r12_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r12_0_),
	.cin(gnd),
	.combout(r14_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r14_3__afeeder.lut_mask = 16'hFF00;
defparam r14_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y30_N24
cycloneii_lcell_comb r13_5__afeeder(
// Equation(s):
// r13_5__afeeder_combout = add3_add11_0_anx42958z1

	.dataa(vcc),
	.datab(vcc),
	.datac(add3_add11_0_anx42958z1),
	.datad(vcc),
	.cin(gnd),
	.combout(r13_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r13_5__afeeder.lut_mask = 16'hF0F0;
defparam r13_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y30_N0
cycloneii_lcell_comb r13_8__afeeder(
// Equation(s):
// r13_8__afeeder_combout = add3_add11_0_anx45949z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(add3_add11_0_anx45949z1),
	.cin(gnd),
	.combout(r13_8__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r13_8__afeeder.lut_mask = 16'hFF00;
defparam r13_8__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y30_N16
cycloneii_lcell_comb r13_10__afeeder(
// Equation(s):
// r13_10__afeeder_combout = add3_add11_0_anx62798z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(add3_add11_0_anx62798z1),
	.cin(gnd),
	.combout(r13_10__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r13_10__afeeder.lut_mask = 16'hFF00;
defparam r13_10__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y28_N24
cycloneii_lcell_comb r5_7__afeeder(
// Equation(s):
// r5_7__afeeder_combout = r2_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_7_),
	.cin(gnd),
	.combout(r5_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_7__afeeder.lut_mask = 16'hFF00;
defparam r5_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y28_N0
cycloneii_lcell_comb r5_3__afeeder(
// Equation(s):
// r5_3__afeeder_combout = r2_3_

	.dataa(r2_3_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r5_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_3__afeeder.lut_mask = 16'hAAAA;
defparam r5_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y28_N2
cycloneii_lcell_comb r5_2__afeeder(
// Equation(s):
// r5_2__afeeder_combout = r2_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_2_),
	.cin(gnd),
	.combout(r5_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_2__afeeder.lut_mask = 16'hFF00;
defparam r5_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y28_N22
cycloneii_lcell_comb r5_0__afeeder(
// Equation(s):
// r5_0__afeeder_combout = r2_0_

	.dataa(r2_0_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r5_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_0__afeeder.lut_mask = 16'hAAAA;
defparam r5_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y31_N26
cycloneii_lcell_comb a_3__afeeder(
// Equation(s):
// a_3__afeeder_combout = b_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(b_3_),
	.cin(gnd),
	.combout(a_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam a_3__afeeder.lut_mask = 16'hFF00;
defparam a_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y32_N30
cycloneii_lcell_comb i_3__afeeder(
// Equation(s):
// i_3__afeeder_combout = d_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(d_3_),
	.cin(gnd),
	.combout(i_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam i_3__afeeder.lut_mask = 16'hFF00;
defparam i_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y32_N20
cycloneii_lcell_comb i_2__afeeder(
// Equation(s):
// i_2__afeeder_combout = d_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(d_2_),
	.cin(gnd),
	.combout(i_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam i_2__afeeder.lut_mask = 16'hFF00;
defparam i_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_clock_ibuf(
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
	.combout(i_clock_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_clock));
// synopsys translate_off
defparam i_clock_ibuf.input_async_reset = "none";
defparam i_clock_ibuf.input_power_up = "low";
defparam i_clock_ibuf.input_register_mode = "none";
defparam i_clock_ibuf.input_sync_reset = "none";
defparam i_clock_ibuf.oe_async_reset = "none";
defparam i_clock_ibuf.oe_power_up = "low";
defparam i_clock_ibuf.oe_register_mode = "none";
defparam i_clock_ibuf.oe_sync_reset = "none";
defparam i_clock_ibuf.operation_mode = "input";
defparam i_clock_ibuf.output_async_reset = "none";
defparam i_clock_ibuf.output_power_up = "low";
defparam i_clock_ibuf.output_register_mode = "none";
defparam i_clock_ibuf.output_sync_reset = "none";
// synopsys translate_on

// Location: CLKCTRL_G3
cycloneii_clkctrl i_clock_aclkctrl(
	.ena(vcc),
	.inclk({gnd,gnd,gnd,i_clock_acombout}),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(i_clock_aclkctrl_outclk));
// synopsys translate_off
defparam i_clock_aclkctrl.clock_type = "global clock";
defparam i_clock_aclkctrl.ena_register_mode = "none";
// synopsys translate_on

// Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_valid_ibuf(
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
	.combout(i_valid_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_valid));
// synopsys translate_off
defparam i_valid_ibuf.input_async_reset = "none";
defparam i_valid_ibuf.input_power_up = "low";
defparam i_valid_ibuf.input_register_mode = "none";
defparam i_valid_ibuf.input_sync_reset = "none";
defparam i_valid_ibuf.oe_async_reset = "none";
defparam i_valid_ibuf.oe_power_up = "low";
defparam i_valid_ibuf.oe_register_mode = "none";
defparam i_valid_ibuf.oe_sync_reset = "none";
defparam i_valid_ibuf.operation_mode = "input";
defparam i_valid_ibuf.output_async_reset = "none";
defparam i_valid_ibuf.output_power_up = "low";
defparam i_valid_ibuf.output_register_mode = "none";
defparam i_valid_ibuf.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_reset_ibuf(
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
	.combout(i_reset_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_reset));
// synopsys translate_off
defparam i_reset_ibuf.input_async_reset = "none";
defparam i_reset_ibuf.input_power_up = "low";
defparam i_reset_ibuf.input_register_mode = "none";
defparam i_reset_ibuf.input_sync_reset = "none";
defparam i_reset_ibuf.oe_async_reset = "none";
defparam i_reset_ibuf.oe_power_up = "low";
defparam i_reset_ibuf.oe_register_mode = "none";
defparam i_reset_ibuf.oe_sync_reset = "none";
defparam i_reset_ibuf.operation_mode = "input";
defparam i_reset_ibuf.output_async_reset = "none";
defparam i_reset_ibuf.output_power_up = "low";
defparam i_reset_ibuf.output_register_mode = "none";
defparam i_reset_ibuf.output_sync_reset = "none";
// synopsys translate_on

// Location: LCFF_X51_Y31_N9
cycloneii_lcell_ff reg_v_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_valid_acombout),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(v_0_));

// Location: LCFF_X45_Y31_N31
cycloneii_lcell_ff reg_v_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(v_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(v_1_));

// Location: LCFF_X45_Y31_N5
cycloneii_lcell_ff reg_v_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(v_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(v_2_));

// Location: LCFF_X45_Y31_N19
cycloneii_lcell_ff reg_v_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(v_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(v_3_));

// Location: LCFF_X45_Y31_N25
cycloneii_lcell_ff reg_v_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(v_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(v_4_));

// Location: LCFF_X46_Y30_N23
cycloneii_lcell_ff reg_v_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(v_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(v_5_));

// Location: LCFF_X49_Y28_N19
cycloneii_lcell_ff reg_v_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(v_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(v_6_));

// Location: LCCOMB_X51_Y29_N2
cycloneii_lcell_comb modgen_counter_o_row_aix58250z52931(
// Equation(s):
// modgen_counter_o_row_anx51271z1 = modgen_counter_o_row_anx58250z15 $ (VCC)
// modgen_counter_o_row_anx58250z14 = CARRY(modgen_counter_o_row_anx58250z15)

	.dataa(vcc),
	.datab(modgen_counter_o_row_anx58250z15),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(modgen_counter_o_row_anx51271z1),
	.cout(modgen_counter_o_row_anx58250z14));
// synopsys translate_off
defparam modgen_counter_o_row_aix58250z52931.lut_mask = 16'h33CC;
defparam modgen_counter_o_row_aix58250z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N12
cycloneii_lcell_comb modgen_counter_x_aix58250z52931(
// Equation(s):
// modgen_counter_x_anx51271z1 = modgen_counter_x_anx58250z15 $ (VCC)
// modgen_counter_x_anx58250z14 = CARRY(modgen_counter_x_anx58250z15)

	.dataa(modgen_counter_x_anx58250z15),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(modgen_counter_x_anx51271z1),
	.cout(modgen_counter_x_anx58250z14));
// synopsys translate_off
defparam modgen_counter_x_aix58250z52931.lut_mask = 16'h55AA;
defparam modgen_counter_x_aix58250z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N14
cycloneii_lcell_comb modgen_counter_x_aix58250z52930(
// Equation(s):
// modgen_counter_x_anx52268z1 = (modgen_counter_x_anx58250z13 & (!modgen_counter_x_anx58250z14)) # (!modgen_counter_x_anx58250z13 & ((modgen_counter_x_anx58250z14) # (GND)))
// modgen_counter_x_anx58250z12 = CARRY((!modgen_counter_x_anx58250z14) # (!modgen_counter_x_anx58250z13))

	.dataa(vcc),
	.datab(modgen_counter_x_anx58250z13),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_x_anx58250z14),
	.combout(modgen_counter_x_anx52268z1),
	.cout(modgen_counter_x_anx58250z12));
// synopsys translate_off
defparam modgen_counter_x_aix58250z52930.lut_mask = 16'h3C3F;
defparam modgen_counter_x_aix58250z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X50_Y30_N14
cycloneii_lcell_comb modgen_counter_x_aix57253z52923(
// Equation(s):
// modgen_counter_x_anx57253z3 = (i_reset_acombout) # (i_valid_acombout)

	.dataa(i_reset_acombout),
	.datab(vcc),
	.datac(i_valid_acombout),
	.datad(vcc),
	.cin(gnd),
	.combout(modgen_counter_x_anx57253z3),
	.cout());
// synopsys translate_off
defparam modgen_counter_x_aix57253z52923.lut_mask = 16'hFAFA;
defparam modgen_counter_x_aix57253z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y28_N15
cycloneii_lcell_ff modgen_counter_x_areg_q_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_x_anx52268z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_x_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_x_anx58250z13));

// Location: LCCOMB_X50_Y28_N16
cycloneii_lcell_comb modgen_counter_x_aix58250z52929(
// Equation(s):
// modgen_counter_x_anx53265z1 = (modgen_counter_x_anx58250z11 & (modgen_counter_x_anx58250z12 $ (GND))) # (!modgen_counter_x_anx58250z11 & (!modgen_counter_x_anx58250z12 & VCC))
// modgen_counter_x_anx58250z10 = CARRY((modgen_counter_x_anx58250z11 & !modgen_counter_x_anx58250z12))

	.dataa(modgen_counter_x_anx58250z11),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_x_anx58250z12),
	.combout(modgen_counter_x_anx53265z1),
	.cout(modgen_counter_x_anx58250z10));
// synopsys translate_off
defparam modgen_counter_x_aix58250z52929.lut_mask = 16'hA50A;
defparam modgen_counter_x_aix58250z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N18
cycloneii_lcell_comb modgen_counter_x_aix58250z52928(
// Equation(s):
// modgen_counter_x_anx54262z1 = (modgen_counter_x_anx58250z9 & (!modgen_counter_x_anx58250z10)) # (!modgen_counter_x_anx58250z9 & ((modgen_counter_x_anx58250z10) # (GND)))
// modgen_counter_x_anx58250z8 = CARRY((!modgen_counter_x_anx58250z10) # (!modgen_counter_x_anx58250z9))

	.dataa(vcc),
	.datab(modgen_counter_x_anx58250z9),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_x_anx58250z10),
	.combout(modgen_counter_x_anx54262z1),
	.cout(modgen_counter_x_anx58250z8));
// synopsys translate_off
defparam modgen_counter_x_aix58250z52928.lut_mask = 16'h3C3F;
defparam modgen_counter_x_aix58250z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X50_Y28_N19
cycloneii_lcell_ff modgen_counter_x_areg_q_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_x_anx54262z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_x_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_x_anx58250z9));

// Location: LCFF_X50_Y28_N17
cycloneii_lcell_ff modgen_counter_x_areg_q_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_x_anx53265z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_x_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_x_anx58250z11));

// Location: LCCOMB_X51_Y31_N10
cycloneii_lcell_comb ix6176z52924(
// Equation(s):
// nx6176z2 = (modgen_counter_x_anx58250z15 & (modgen_counter_x_anx58250z9 & (modgen_counter_x_anx58250z11 & modgen_counter_x_anx58250z13)))

	.dataa(modgen_counter_x_anx58250z15),
	.datab(modgen_counter_x_anx58250z9),
	.datac(modgen_counter_x_anx58250z11),
	.datad(modgen_counter_x_anx58250z13),
	.cin(gnd),
	.combout(nx6176z2),
	.cout());
// synopsys translate_off
defparam ix6176z52924.lut_mask = 16'h8000;
defparam ix6176z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y29_N4
cycloneii_lcell_comb modgen_counter_o_row_aix58250z52930(
// Equation(s):
// modgen_counter_o_row_anx52268z1 = (modgen_counter_o_row_anx58250z13 & (!modgen_counter_o_row_anx58250z14)) # (!modgen_counter_o_row_anx58250z13 & ((modgen_counter_o_row_anx58250z14) # (GND)))
// modgen_counter_o_row_anx58250z12 = CARRY((!modgen_counter_o_row_anx58250z14) # (!modgen_counter_o_row_anx58250z13))

	.dataa(vcc),
	.datab(modgen_counter_o_row_anx58250z13),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_row_anx58250z14),
	.combout(modgen_counter_o_row_anx52268z1),
	.cout(modgen_counter_o_row_anx58250z12));
// synopsys translate_off
defparam modgen_counter_o_row_aix58250z52930.lut_mask = 16'h3C3F;
defparam modgen_counter_o_row_aix58250z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X51_Y29_N6
cycloneii_lcell_comb modgen_counter_o_row_aix58250z52929(
// Equation(s):
// modgen_counter_o_row_anx53265z1 = (modgen_counter_o_row_anx58250z11 & (modgen_counter_o_row_anx58250z12 $ (GND))) # (!modgen_counter_o_row_anx58250z11 & (!modgen_counter_o_row_anx58250z12 & VCC))
// modgen_counter_o_row_anx58250z10 = CARRY((modgen_counter_o_row_anx58250z11 & !modgen_counter_o_row_anx58250z12))

	.dataa(modgen_counter_o_row_anx58250z11),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_row_anx58250z12),
	.combout(modgen_counter_o_row_anx53265z1),
	.cout(modgen_counter_o_row_anx58250z10));
// synopsys translate_off
defparam modgen_counter_o_row_aix58250z52929.lut_mask = 16'hA50A;
defparam modgen_counter_o_row_aix58250z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X51_Y29_N8
cycloneii_lcell_comb modgen_counter_o_row_aix58250z52928(
// Equation(s):
// modgen_counter_o_row_anx54262z1 = (modgen_counter_o_row_anx58250z9 & (!modgen_counter_o_row_anx58250z10)) # (!modgen_counter_o_row_anx58250z9 & ((modgen_counter_o_row_anx58250z10) # (GND)))
// modgen_counter_o_row_anx58250z8 = CARRY((!modgen_counter_o_row_anx58250z10) # (!modgen_counter_o_row_anx58250z9))

	.dataa(vcc),
	.datab(modgen_counter_o_row_anx58250z9),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_row_anx58250z10),
	.combout(modgen_counter_o_row_anx54262z1),
	.cout(modgen_counter_o_row_anx58250z8));
// synopsys translate_off
defparam modgen_counter_o_row_aix58250z52928.lut_mask = 16'h3C3F;
defparam modgen_counter_o_row_aix58250z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N26
cycloneii_lcell_comb ix17322z52938(
// Equation(s):
// nx17322z16 = (modgen_counter_x_anx58250z11 & modgen_counter_x_anx58250z9)

	.dataa(vcc),
	.datab(vcc),
	.datac(modgen_counter_x_anx58250z11),
	.datad(modgen_counter_x_anx58250z9),
	.cin(gnd),
	.combout(nx17322z16),
	.cout());
// synopsys translate_off
defparam ix17322z52938.lut_mask = 16'hF000;
defparam ix17322z52938.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y28_N13
cycloneii_lcell_ff modgen_counter_x_areg_q_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_x_anx51271z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_x_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_x_anx58250z15));

// Location: LCCOMB_X50_Y29_N12
cycloneii_lcell_comb ix17322z52928(
// Equation(s):
// nx17322z6 = (!modgen_counter_x_anx58250z13) # (!modgen_counter_x_anx58250z15)

	.dataa(vcc),
	.datab(vcc),
	.datac(modgen_counter_x_anx58250z15),
	.datad(modgen_counter_x_anx58250z13),
	.cin(gnd),
	.combout(nx17322z6),
	.cout());
// synopsys translate_off
defparam ix17322z52928.lut_mask = 16'h0FFF;
defparam ix17322z52928.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N20
cycloneii_lcell_comb modgen_counter_x_aix58250z52927(
// Equation(s):
// modgen_counter_x_anx55259z1 = (modgen_counter_x_anx58250z7 & (modgen_counter_x_anx58250z8 $ (GND))) # (!modgen_counter_x_anx58250z7 & (!modgen_counter_x_anx58250z8 & VCC))
// modgen_counter_x_anx58250z6 = CARRY((modgen_counter_x_anx58250z7 & !modgen_counter_x_anx58250z8))

	.dataa(modgen_counter_x_anx58250z7),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_x_anx58250z8),
	.combout(modgen_counter_x_anx55259z1),
	.cout(modgen_counter_x_anx58250z6));
// synopsys translate_off
defparam modgen_counter_x_aix58250z52927.lut_mask = 16'hA50A;
defparam modgen_counter_x_aix58250z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N22
cycloneii_lcell_comb modgen_counter_x_aix58250z52926(
// Equation(s):
// modgen_counter_x_anx56256z1 = (modgen_counter_x_anx58250z5 & (!modgen_counter_x_anx58250z6)) # (!modgen_counter_x_anx58250z5 & ((modgen_counter_x_anx58250z6) # (GND)))
// modgen_counter_x_anx58250z4 = CARRY((!modgen_counter_x_anx58250z6) # (!modgen_counter_x_anx58250z5))

	.dataa(vcc),
	.datab(modgen_counter_x_anx58250z5),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_x_anx58250z6),
	.combout(modgen_counter_x_anx56256z1),
	.cout(modgen_counter_x_anx58250z4));
// synopsys translate_off
defparam modgen_counter_x_aix58250z52926.lut_mask = 16'h3C3F;
defparam modgen_counter_x_aix58250z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X50_Y28_N23
cycloneii_lcell_ff modgen_counter_x_areg_q_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_x_anx56256z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_x_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_x_anx58250z5));

// Location: LCCOMB_X50_Y28_N24
cycloneii_lcell_comb modgen_counter_x_aix58250z52925(
// Equation(s):
// modgen_counter_x_anx57253z1 = (modgen_counter_x_anx58250z3 & (modgen_counter_x_anx58250z4 $ (GND))) # (!modgen_counter_x_anx58250z3 & (!modgen_counter_x_anx58250z4 & VCC))
// modgen_counter_x_anx58250z2 = CARRY((modgen_counter_x_anx58250z3 & !modgen_counter_x_anx58250z4))

	.dataa(modgen_counter_x_anx58250z3),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_x_anx58250z4),
	.combout(modgen_counter_x_anx57253z1),
	.cout(modgen_counter_x_anx58250z2));
// synopsys translate_off
defparam modgen_counter_x_aix58250z52925.lut_mask = 16'hA50A;
defparam modgen_counter_x_aix58250z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N26
cycloneii_lcell_comb modgen_counter_x_aix58250z52923(
// Equation(s):
// modgen_counter_x_anx58250z1 = modgen_counter_x_anx58250z2 $ (modgen_counter_x_anx1041z1)

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(modgen_counter_x_anx1041z1),
	.cin(modgen_counter_x_anx58250z2),
	.combout(modgen_counter_x_anx58250z1),
	.cout());
// synopsys translate_off
defparam modgen_counter_x_aix58250z52923.lut_mask = 16'h0FF0;
defparam modgen_counter_x_aix58250z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X50_Y28_N27
cycloneii_lcell_ff modgen_counter_x_areg_q_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_x_anx58250z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_x_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_x_anx1041z1));

// Location: LCFF_X50_Y28_N25
cycloneii_lcell_ff modgen_counter_x_areg_q_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_x_anx57253z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_x_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_x_anx58250z3));

// Location: LCCOMB_X50_Y29_N6
cycloneii_lcell_comb ix6176z52931(
// Equation(s):
// nx6176z9 = (!modgen_counter_x_anx58250z3) # (!modgen_counter_x_anx1041z1)

	.dataa(vcc),
	.datab(vcc),
	.datac(modgen_counter_x_anx1041z1),
	.datad(modgen_counter_x_anx58250z3),
	.cin(gnd),
	.combout(nx6176z9),
	.cout());
// synopsys translate_off
defparam ix6176z52931.lut_mask = 16'h0FFF;
defparam ix6176z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N4
cycloneii_lcell_comb ix17322z52937(
// Equation(s):
// nx17322z15 = (!nx6176z8 & (nx17322z16 & (!nx17322z6 & !nx6176z9)))

	.dataa(nx6176z8),
	.datab(nx17322z16),
	.datac(nx17322z6),
	.datad(nx6176z9),
	.cin(gnd),
	.combout(nx17322z15),
	.cout());
// synopsys translate_off
defparam ix17322z52937.lut_mask = 16'h0004;
defparam ix17322z52937.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y29_N14
cycloneii_lcell_comb modgen_counter_o_row_aix57253z52923(
// Equation(s):
// modgen_counter_o_row_anx57253z3 = (nx17322z1 & ((nx17322z15) # (nx17322z9)))

	.dataa(nx17322z1),
	.datab(vcc),
	.datac(nx17322z15),
	.datad(nx17322z9),
	.cin(gnd),
	.combout(modgen_counter_o_row_anx57253z3),
	.cout());
// synopsys translate_off
defparam modgen_counter_o_row_aix57253z52923.lut_mask = 16'hAAA0;
defparam modgen_counter_o_row_aix57253z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y29_N9
cycloneii_lcell_ff modgen_counter_o_row_areg_q_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx54262z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z9),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_row_anx58250z9));

// Location: LCFF_X51_Y29_N7
cycloneii_lcell_ff modgen_counter_o_row_areg_q_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx53265z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z9),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_row_anx58250z11));

// Location: LCCOMB_X50_Y30_N8
cycloneii_lcell_comb ix6176z52926(
// Equation(s):
// nx6176z4 = (modgen_counter_o_row_anx58250z9 & modgen_counter_o_row_anx58250z11)

	.dataa(vcc),
	.datab(vcc),
	.datac(modgen_counter_o_row_anx58250z9),
	.datad(modgen_counter_o_row_anx58250z11),
	.cin(gnd),
	.combout(nx6176z4),
	.cout());
// synopsys translate_off
defparam ix6176z52926.lut_mask = 16'hF000;
defparam ix6176z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y29_N10
cycloneii_lcell_comb modgen_counter_o_row_aix58250z52927(
// Equation(s):
// modgen_counter_o_row_anx55259z1 = (modgen_counter_o_row_anx58250z7 & (modgen_counter_o_row_anx58250z8 $ (GND))) # (!modgen_counter_o_row_anx58250z7 & (!modgen_counter_o_row_anx58250z8 & VCC))
// modgen_counter_o_row_anx58250z6 = CARRY((modgen_counter_o_row_anx58250z7 & !modgen_counter_o_row_anx58250z8))

	.dataa(modgen_counter_o_row_anx58250z7),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_row_anx58250z8),
	.combout(modgen_counter_o_row_anx55259z1),
	.cout(modgen_counter_o_row_anx58250z6));
// synopsys translate_off
defparam modgen_counter_o_row_aix58250z52927.lut_mask = 16'hA50A;
defparam modgen_counter_o_row_aix58250z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X51_Y29_N12
cycloneii_lcell_comb modgen_counter_o_row_aix58250z52926(
// Equation(s):
// modgen_counter_o_row_anx56256z1 = (modgen_counter_o_row_anx58250z5 & (!modgen_counter_o_row_anx58250z6)) # (!modgen_counter_o_row_anx58250z5 & ((modgen_counter_o_row_anx58250z6) # (GND)))
// modgen_counter_o_row_anx58250z4 = CARRY((!modgen_counter_o_row_anx58250z6) # (!modgen_counter_o_row_anx58250z5))

	.dataa(vcc),
	.datab(modgen_counter_o_row_anx58250z5),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_row_anx58250z6),
	.combout(modgen_counter_o_row_anx56256z1),
	.cout(modgen_counter_o_row_anx58250z4));
// synopsys translate_off
defparam modgen_counter_o_row_aix58250z52926.lut_mask = 16'h3C3F;
defparam modgen_counter_o_row_aix58250z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X49_Y29_N19
cycloneii_lcell_ff modgen_counter_o_row_areg_q_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(modgen_counter_o_row_anx56256z1),
	.aclr(gnd),
	.sclr(nx17322z9),
	.sload(vcc),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_row_anx58250z5));

// Location: LCCOMB_X51_Y29_N14
cycloneii_lcell_comb modgen_counter_o_row_aix58250z52925(
// Equation(s):
// modgen_counter_o_row_anx57253z1 = (modgen_counter_o_row_anx58250z3 & (modgen_counter_o_row_anx58250z4 $ (GND))) # (!modgen_counter_o_row_anx58250z3 & (!modgen_counter_o_row_anx58250z4 & VCC))
// modgen_counter_o_row_anx58250z2 = CARRY((modgen_counter_o_row_anx58250z3 & !modgen_counter_o_row_anx58250z4))

	.dataa(vcc),
	.datab(modgen_counter_o_row_anx58250z3),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_row_anx58250z4),
	.combout(modgen_counter_o_row_anx57253z1),
	.cout(modgen_counter_o_row_anx58250z2));
// synopsys translate_off
defparam modgen_counter_o_row_aix58250z52925.lut_mask = 16'hC30C;
defparam modgen_counter_o_row_aix58250z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X50_Y29_N25
cycloneii_lcell_ff modgen_counter_o_row_areg_q_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(modgen_counter_o_row_anx57253z1),
	.aclr(gnd),
	.sclr(nx17322z9),
	.sload(vcc),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_row_anx58250z3));

// Location: LCCOMB_X51_Y29_N16
cycloneii_lcell_comb modgen_counter_o_row_aix58250z52923(
// Equation(s):
// modgen_counter_o_row_anx58250z1 = modgen_counter_o_row_anx1041z1 $ (modgen_counter_o_row_anx58250z2)

	.dataa(modgen_counter_o_row_anx1041z1),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_row_anx58250z2),
	.combout(modgen_counter_o_row_anx58250z1),
	.cout());
// synopsys translate_off
defparam modgen_counter_o_row_aix58250z52923.lut_mask = 16'h5A5A;
defparam modgen_counter_o_row_aix58250z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X51_Y29_N17
cycloneii_lcell_ff modgen_counter_o_row_areg_q_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx58250z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z9),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_row_anx1041z1));

// Location: LCCOMB_X50_Y29_N24
cycloneii_lcell_comb ix6176z52928(
// Equation(s):
// nx6176z6 = (modgen_counter_o_row_anx58250z3 & modgen_counter_o_row_anx1041z1)

	.dataa(vcc),
	.datab(vcc),
	.datac(modgen_counter_o_row_anx58250z3),
	.datad(modgen_counter_o_row_anx1041z1),
	.cin(gnd),
	.combout(nx6176z6),
	.cout());
// synopsys translate_off
defparam ix6176z52928.lut_mask = 16'hF000;
defparam ix6176z52928.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y28_N24
cycloneii_lcell_comb ix6176z52927(
// Equation(s):
// nx6176z5 = (modgen_counter_o_row_anx58250z15 & modgen_counter_o_row_anx58250z13)

	.dataa(vcc),
	.datab(vcc),
	.datac(modgen_counter_o_row_anx58250z15),
	.datad(modgen_counter_o_row_anx58250z13),
	.cin(gnd),
	.combout(nx6176z5),
	.cout());
// synopsys translate_off
defparam ix6176z52927.lut_mask = 16'hF000;
defparam ix6176z52927.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N14
cycloneii_lcell_comb ix6176z52925(
// Equation(s):
// nx6176z3 = (!nx6176z7 & (nx6176z4 & (nx6176z6 & nx6176z5)))

	.dataa(nx6176z7),
	.datab(nx6176z4),
	.datac(nx6176z6),
	.datad(nx6176z5),
	.cin(gnd),
	.combout(nx6176z3),
	.cout());
// synopsys translate_off
defparam ix6176z52925.lut_mask = 16'h4000;
defparam ix6176z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N0
cycloneii_lcell_comb ix6176z52923(
// Equation(s):
// nx6176z1 = (!nx6176z8 & (nx6176z2 & (nx6176z3 & !nx6176z9)))

	.dataa(nx6176z8),
	.datab(nx6176z2),
	.datac(nx6176z3),
	.datad(nx6176z9),
	.cin(gnd),
	.combout(nx6176z1),
	.cout());
// synopsys translate_off
defparam ix6176z52923.lut_mask = 16'h0040;
defparam ix6176z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N24
cycloneii_lcell_comb ix6176z52932(
// Equation(s):
// nx6176z10 = (i_reset_acombout) # ((i_valid_acombout & ((end_of_img) # (nx6176z1))))

	.dataa(i_reset_acombout),
	.datab(i_valid_acombout),
	.datac(end_of_img),
	.datad(nx6176z1),
	.cin(gnd),
	.combout(nx6176z10),
	.cout());
// synopsys translate_off
defparam ix6176z52932.lut_mask = 16'hEEEA;
defparam ix6176z52932.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y28_N1
cycloneii_lcell_ff reg_end_of_img(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx6176z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx6176z10),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(end_of_img));

// Location: LCCOMB_X50_Y29_N4
cycloneii_lcell_comb ix17322z52934(
// Equation(s):
// nx17322z12 = (end_of_img & (((!modgen_counter_x_anx58250z15) # (!modgen_counter_x_anx58250z11)) # (!modgen_counter_x_anx58250z13)))

	.dataa(modgen_counter_x_anx58250z13),
	.datab(modgen_counter_x_anx58250z11),
	.datac(modgen_counter_x_anx58250z15),
	.datad(end_of_img),
	.cin(gnd),
	.combout(nx17322z12),
	.cout());
// synopsys translate_off
defparam ix17322z52934.lut_mask = 16'h7F00;
defparam ix17322z52934.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y28_N21
cycloneii_lcell_ff modgen_counter_x_areg_q_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_x_anx55259z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(modgen_counter_x_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_x_anx58250z7));

// Location: LCCOMB_X51_Y29_N24
cycloneii_lcell_comb ix17322z52935(
// Equation(s):
// nx17322z13 = ((!modgen_counter_x_anx58250z5) # (!modgen_counter_x_anx58250z7)) # (!modgen_counter_x_anx58250z9)

	.dataa(vcc),
	.datab(modgen_counter_x_anx58250z9),
	.datac(modgen_counter_x_anx58250z7),
	.datad(modgen_counter_x_anx58250z5),
	.cin(gnd),
	.combout(nx17322z13),
	.cout());
// synopsys translate_off
defparam ix17322z52935.lut_mask = 16'h3FFF;
defparam ix17322z52935.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y29_N16
cycloneii_lcell_comb ix17322z52933(
// Equation(s):
// nx17322z11 = (nx17322z12) # ((end_of_img & ((nx6176z9) # (nx17322z13))))

	.dataa(nx6176z9),
	.datab(end_of_img),
	.datac(nx17322z12),
	.datad(nx17322z13),
	.cin(gnd),
	.combout(nx17322z11),
	.cout());
// synopsys translate_off
defparam ix17322z52933.lut_mask = 16'hFCF8;
defparam ix17322z52933.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y29_N19
cycloneii_lcell_ff modgen_counter_o_row_areg_q_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(modgen_counter_o_row_anx55259z1),
	.aclr(gnd),
	.sclr(nx17322z9),
	.sload(vcc),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_row_anx58250z7));

// Location: LCCOMB_X50_Y29_N18
cycloneii_lcell_comb ix17322z52936(
// Equation(s):
// nx17322z14 = (nx6176z6 & (modgen_counter_o_row_anx58250z5 & (modgen_counter_o_row_anx58250z7 & end_of_img)))

	.dataa(nx6176z6),
	.datab(modgen_counter_o_row_anx58250z5),
	.datac(modgen_counter_o_row_anx58250z7),
	.datad(end_of_img),
	.cin(gnd),
	.combout(nx17322z14),
	.cout());
// synopsys translate_off
defparam ix17322z52936.lut_mask = 16'h8000;
defparam ix17322z52936.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y29_N26
cycloneii_lcell_comb ix17322z52931(
// Equation(s):
// nx17322z9 = (i_reset_acombout) # ((nx17322z11) # ((nx17322z10 & nx17322z14)))

	.dataa(nx17322z10),
	.datab(i_reset_acombout),
	.datac(nx17322z11),
	.datad(nx17322z14),
	.cin(gnd),
	.combout(nx17322z9),
	.cout());
// synopsys translate_off
defparam ix17322z52931.lut_mask = 16'hFEFC;
defparam ix17322z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y29_N3
cycloneii_lcell_ff modgen_counter_o_row_areg_q_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx51271z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z9),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_row_anx58250z15));

// Location: LCFF_X51_Y29_N5
cycloneii_lcell_ff modgen_counter_o_row_areg_q_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx52268z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z9),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_row_anx58250z13));

// Location: LCCOMB_X49_Y28_N18
cycloneii_lcell_comb ix28105z52929(
// Equation(s):
// nx28105z7 = (v_6_ & modgen_counter_o_row_anx58250z13)

	.dataa(vcc),
	.datab(vcc),
	.datac(v_6_),
	.datad(modgen_counter_o_row_anx58250z13),
	.cin(gnd),
	.combout(nx28105z7),
	.cout());
// synopsys translate_off
defparam ix28105z52929.lut_mask = 16'hF000;
defparam ix28105z52929.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y28_N20
cycloneii_lcell_comb ix28105z52928(
// Equation(s):
// nx28105z6 = (modgen_counter_x_anx58250z15 & (modgen_counter_x_anx58250z13 & (v_6_ & modgen_counter_o_row_anx58250z13)))

	.dataa(modgen_counter_x_anx58250z15),
	.datab(modgen_counter_x_anx58250z13),
	.datac(v_6_),
	.datad(modgen_counter_o_row_anx58250z13),
	.cin(gnd),
	.combout(nx28105z6),
	.cout());
// synopsys translate_off
defparam ix28105z52928.lut_mask = 16'h8000;
defparam ix28105z52928.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y28_N14
cycloneii_lcell_comb ix28105z52927(
// Equation(s):
// nx28105z5 = (nx28105z6) # ((nx28105z7 & ((modgen_counter_x_anx58250z11) # (modgen_counter_x_anx58250z9))))

	.dataa(modgen_counter_x_anx58250z11),
	.datab(nx28105z7),
	.datac(nx28105z6),
	.datad(modgen_counter_x_anx58250z9),
	.cin(gnd),
	.combout(nx28105z5),
	.cout());
// synopsys translate_off
defparam ix28105z52927.lut_mask = 16'hFCF8;
defparam ix28105z52927.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y28_N10
cycloneii_lcell_comb ix28105z52930(
// Equation(s):
// nx28105z8 = (nx28105z9) # ((nx28105z7 & ((modgen_counter_x_anx58250z3) # (modgen_counter_x_anx1041z1))))

	.dataa(nx28105z9),
	.datab(modgen_counter_x_anx58250z3),
	.datac(modgen_counter_x_anx1041z1),
	.datad(nx28105z7),
	.cin(gnd),
	.combout(nx28105z8),
	.cout());
// synopsys translate_off
defparam ix28105z52930.lut_mask = 16'hFEAA;
defparam ix28105z52930.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y28_N30
cycloneii_lcell_comb ix28105z52926(
// Equation(s):
// nx28105z4 = (v_6_ & ((modgen_counter_o_row_anx58250z7) # ((modgen_counter_o_row_anx58250z5) # (modgen_counter_o_row_anx58250z9))))

	.dataa(modgen_counter_o_row_anx58250z7),
	.datab(modgen_counter_o_row_anx58250z5),
	.datac(v_6_),
	.datad(modgen_counter_o_row_anx58250z9),
	.cin(gnd),
	.combout(nx28105z4),
	.cout());
// synopsys translate_off
defparam ix28105z52926.lut_mask = 16'hF0E0;
defparam ix28105z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y28_N26
cycloneii_lcell_comb ix28105z52925(
// Equation(s):
// nx28105z3 = (nx28105z4) # ((v_6_ & ((modgen_counter_o_row_anx58250z11) # (nx6176z5))))

	.dataa(v_6_),
	.datab(modgen_counter_o_row_anx58250z11),
	.datac(nx6176z5),
	.datad(nx28105z4),
	.cin(gnd),
	.combout(nx28105z3),
	.cout());
// synopsys translate_off
defparam ix28105z52925.lut_mask = 16'hFFA8;
defparam ix28105z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y28_N8
cycloneii_lcell_comb ix28105z52923(
// Equation(s):
// nx28105z1 = (nx28105z2) # ((nx28105z5) # ((nx28105z8) # (nx28105z3)))

	.dataa(nx28105z2),
	.datab(nx28105z5),
	.datac(nx28105z8),
	.datad(nx28105z3),
	.cin(gnd),
	.combout(nx28105z1),
	.cout());
// synopsys translate_off
defparam ix28105z52923.lut_mask = 16'hFFFE;
defparam ix28105z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y28_N9
cycloneii_lcell_ff reg_out_o_valid_obuf(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx28105z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx51998z1));

// Location: LCCOMB_X51_Y32_N22
cycloneii_lcell_comb ix38525z52923(
// Equation(s):
// t_20n2s1_1_ = (!t_1_ & t_0_)

	.dataa(vcc),
	.datab(vcc),
	.datac(t_1_),
	.datad(t_0_),
	.cin(gnd),
	.combout(t_20n2s1_1_),
	.cout());
// synopsys translate_off
defparam ix38525z52923.lut_mask = 16'h0F00;
defparam ix38525z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N2
cycloneii_lcell_comb ix6176z52930(
// Equation(s):
// nx6176z8 = (!modgen_counter_x_anx58250z5) # (!modgen_counter_x_anx58250z7)

	.dataa(vcc),
	.datab(vcc),
	.datac(modgen_counter_x_anx58250z7),
	.datad(modgen_counter_x_anx58250z5),
	.cin(gnd),
	.combout(nx6176z8),
	.cout());
// synopsys translate_off
defparam ix6176z52930.lut_mask = 16'h0FFF;
defparam ix6176z52930.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y28_N4
cycloneii_lcell_comb ix38525z52925(
// Equation(s):
// nx38525z2 = (modgen_counter_x_anx1041z1 & (i_valid_acombout & (modgen_counter_x_anx58250z3 & !nx6176z8)))

	.dataa(modgen_counter_x_anx1041z1),
	.datab(i_valid_acombout),
	.datac(modgen_counter_x_anx58250z3),
	.datad(nx6176z8),
	.cin(gnd),
	.combout(nx38525z2),
	.cout());
// synopsys translate_off
defparam ix38525z52925.lut_mask = 16'h0080;
defparam ix38525z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y28_N22
cycloneii_lcell_comb ix38525z52924(
// Equation(s):
// nx38525z1 = (i_reset_acombout) # ((nx38525z2 & (nx17322z16 & !nx17322z6)))

	.dataa(i_reset_acombout),
	.datab(nx38525z2),
	.datac(nx17322z16),
	.datad(nx17322z6),
	.cin(gnd),
	.combout(nx38525z1),
	.cout());
// synopsys translate_off
defparam ix38525z52924.lut_mask = 16'hAAEA;
defparam ix38525z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y32_N23
cycloneii_lcell_ff reg_t_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(t_20n2s1_1_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx38525z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(t_1_));

// Location: LCCOMB_X51_Y32_N28
cycloneii_lcell_comb ix39522z52923(
// Equation(s):
// t_20n2s1_0_ = (!t_0_ & !t_1_)

	.dataa(vcc),
	.datab(vcc),
	.datac(t_0_),
	.datad(t_1_),
	.cin(gnd),
	.combout(t_20n2s1_0_),
	.cout());
// synopsys translate_off
defparam ix39522z52923.lut_mask = 16'h000F;
defparam ix39522z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y32_N29
cycloneii_lcell_ff reg_t_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(t_20n2s1_0_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx38525z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(t_0_));

// Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io ix19087z43925(
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
	.combout(i_pixel_acombout[0]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[0]));
// synopsys translate_off
defparam ix19087z43925.input_async_reset = "none";
defparam ix19087z43925.input_power_up = "low";
defparam ix19087z43925.input_register_mode = "none";
defparam ix19087z43925.input_sync_reset = "none";
defparam ix19087z43925.oe_async_reset = "none";
defparam ix19087z43925.oe_power_up = "low";
defparam ix19087z43925.oe_register_mode = "none";
defparam ix19087z43925.oe_sync_reset = "none";
defparam ix19087z43925.operation_mode = "input";
defparam ix19087z43925.output_async_reset = "none";
defparam ix19087z43925.output_power_up = "low";
defparam ix19087z43925.output_register_mode = "none";
defparam ix19087z43925.output_sync_reset = "none";
// synopsys translate_on

// Location: LCCOMB_X50_Y30_N20
cycloneii_lcell_comb ix19087z52934(
// Equation(s):
// nx19087z4 = ((!modgen_counter_o_row_anx58250z3) # (!modgen_counter_o_row_anx58250z5)) # (!modgen_counter_o_row_anx58250z7)

	.dataa(modgen_counter_o_row_anx58250z7),
	.datab(modgen_counter_o_row_anx58250z5),
	.datac(modgen_counter_o_row_anx58250z3),
	.datad(vcc),
	.cin(gnd),
	.combout(nx19087z4),
	.cout());
// synopsys translate_off
defparam ix19087z52934.lut_mask = 16'h7F7F;
defparam ix19087z52934.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N4
cycloneii_lcell_comb ix19087z52951(
// Equation(s):
// nx19087z17 = ((!modgen_counter_o_row_anx58250z15) # (!modgen_counter_x_anx1041z1)) # (!modgen_counter_x_anx58250z3)

	.dataa(modgen_counter_x_anx58250z3),
	.datab(modgen_counter_x_anx1041z1),
	.datac(vcc),
	.datad(modgen_counter_o_row_anx58250z15),
	.cin(gnd),
	.combout(nx19087z17),
	.cout());
// synopsys translate_off
defparam ix19087z52951.lut_mask = 16'h77FF;
defparam ix19087z52951.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y29_N0
cycloneii_lcell_comb ix19087z52962(
// Equation(s):
// nx19087z25 = (!modgen_counter_x_anx58250z11) # (!modgen_counter_x_anx58250z13)

	.dataa(modgen_counter_x_anx58250z13),
	.datab(vcc),
	.datac(vcc),
	.datad(modgen_counter_x_anx58250z11),
	.cin(gnd),
	.combout(nx19087z25),
	.cout());
// synopsys translate_off
defparam ix19087z52962.lut_mask = 16'h55FF;
defparam ix19087z52962.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y29_N2
cycloneii_lcell_comb ix19087z52961(
// Equation(s):
// nx19087z24 = (modgen_counter_x_anx58250z15 & (((nx19087z25) # (!modgen_counter_o_row_anx1041z1)) # (!i_valid_acombout)))

	.dataa(i_valid_acombout),
	.datab(modgen_counter_o_row_anx1041z1),
	.datac(modgen_counter_x_anx58250z15),
	.datad(nx19087z25),
	.cin(gnd),
	.combout(nx19087z24),
	.cout());
// synopsys translate_off
defparam ix19087z52961.lut_mask = 16'hF070;
defparam ix19087z52961.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y29_N28
cycloneii_lcell_comb ix19087z52960(
// Equation(s):
// nx19087z23 = (nx19087z24) # ((modgen_counter_x_anx58250z15 & ((nx17322z13) # (nx19087z17))))

	.dataa(modgen_counter_x_anx58250z15),
	.datab(nx17322z13),
	.datac(nx19087z17),
	.datad(nx19087z24),
	.cin(gnd),
	.combout(nx19087z23),
	.cout());
// synopsys translate_off
defparam ix19087z52960.lut_mask = 16'hFFA8;
defparam ix19087z52960.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y29_N22
cycloneii_lcell_comb ix19087z52959(
// Equation(s):
// addr_x_0_ = (nx19087z23) # ((modgen_counter_x_anx58250z15 & ((nx19087z5) # (nx19087z4))))

	.dataa(nx19087z5),
	.datab(nx19087z4),
	.datac(modgen_counter_x_anx58250z15),
	.datad(nx19087z23),
	.cin(gnd),
	.combout(addr_x_0_),
	.cout());
// synopsys translate_off
defparam ix19087z52959.lut_mask = 16'hFFE0;
defparam ix19087z52959.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y30_N6
cycloneii_lcell_comb ix19087z52935(
// Equation(s):
// nx19087z5 = ((!modgen_counter_o_row_anx58250z11) # (!modgen_counter_o_row_anx58250z13)) # (!modgen_counter_o_row_anx58250z9)

	.dataa(vcc),
	.datab(modgen_counter_o_row_anx58250z9),
	.datac(modgen_counter_o_row_anx58250z13),
	.datad(modgen_counter_o_row_anx58250z11),
	.cin(gnd),
	.combout(nx19087z5),
	.cout());
// synopsys translate_off
defparam ix19087z52935.lut_mask = 16'h3FFF;
defparam ix19087z52935.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y29_N26
cycloneii_lcell_comb ix19087z52940(
// Equation(s):
// nx19087z9 = (!modgen_counter_x_anx1041z1) # (!modgen_counter_o_row_anx58250z15)

	.dataa(vcc),
	.datab(modgen_counter_o_row_anx58250z15),
	.datac(vcc),
	.datad(modgen_counter_x_anx1041z1),
	.cin(gnd),
	.combout(nx19087z9),
	.cout());
// synopsys translate_off
defparam ix19087z52940.lut_mask = 16'h33FF;
defparam ix19087z52940.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y29_N28
cycloneii_lcell_comb ix19087z52958(
// Equation(s):
// nx19087z22 = (modgen_counter_x_anx58250z13 & (((nx17322z13) # (nx19087z9)) # (!modgen_counter_x_anx58250z3)))

	.dataa(modgen_counter_x_anx58250z13),
	.datab(modgen_counter_x_anx58250z3),
	.datac(nx17322z13),
	.datad(nx19087z9),
	.cin(gnd),
	.combout(nx19087z22),
	.cout());
// synopsys translate_off
defparam ix19087z52958.lut_mask = 16'hAAA2;
defparam ix19087z52958.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y31_N6
cycloneii_lcell_comb ix19087z52957(
// Equation(s):
// nx19087z21 = ((!modgen_counter_x_anx58250z11) # (!i_valid_acombout)) # (!modgen_counter_x_anx58250z15)

	.dataa(modgen_counter_x_anx58250z15),
	.datab(vcc),
	.datac(i_valid_acombout),
	.datad(modgen_counter_x_anx58250z11),
	.cin(gnd),
	.combout(nx19087z21),
	.cout());
// synopsys translate_off
defparam ix19087z52957.lut_mask = 16'h5FFF;
defparam ix19087z52957.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y29_N30
cycloneii_lcell_comb ix19087z52956(
// Equation(s):
// nx19087z20 = (nx19087z22) # ((modgen_counter_x_anx58250z13 & ((nx19087z21) # (!modgen_counter_o_row_anx1041z1))))

	.dataa(modgen_counter_o_row_anx1041z1),
	.datab(nx19087z22),
	.datac(nx19087z21),
	.datad(modgen_counter_x_anx58250z13),
	.cin(gnd),
	.combout(nx19087z20),
	.cout());
// synopsys translate_off
defparam ix19087z52956.lut_mask = 16'hFDCC;
defparam ix19087z52956.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y29_N0
cycloneii_lcell_comb ix19087z52955(
// Equation(s):
// addr_x_1_ = (nx19087z20) # ((modgen_counter_x_anx58250z13 & ((nx19087z5) # (nx19087z4))))

	.dataa(modgen_counter_x_anx58250z13),
	.datab(nx19087z5),
	.datac(nx19087z4),
	.datad(nx19087z20),
	.cin(gnd),
	.combout(addr_x_1_),
	.cout());
// synopsys translate_off
defparam ix19087z52955.lut_mask = 16'hFFA8;
defparam ix19087z52955.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N28
cycloneii_lcell_comb ix19087z52938(
// Equation(s):
// nx19087z7 = ((!modgen_counter_x_anx58250z13) # (!modgen_counter_x_anx58250z15)) # (!i_valid_acombout)

	.dataa(vcc),
	.datab(i_valid_acombout),
	.datac(modgen_counter_x_anx58250z15),
	.datad(modgen_counter_x_anx58250z13),
	.cin(gnd),
	.combout(nx19087z7),
	.cout());
// synopsys translate_off
defparam ix19087z52938.lut_mask = 16'h3FFF;
defparam ix19087z52938.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y29_N18
cycloneii_lcell_comb ix19087z52954(
// Equation(s):
// nx19087z19 = (modgen_counter_x_anx58250z11 & (((nx19087z9) # (nx17322z13)) # (!modgen_counter_x_anx58250z3)))

	.dataa(modgen_counter_x_anx58250z3),
	.datab(nx19087z9),
	.datac(nx17322z13),
	.datad(modgen_counter_x_anx58250z11),
	.cin(gnd),
	.combout(nx19087z19),
	.cout());
// synopsys translate_off
defparam ix19087z52954.lut_mask = 16'hFD00;
defparam ix19087z52954.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y29_N20
cycloneii_lcell_comb ix19087z52953(
// Equation(s):
// nx19087z18 = (nx19087z19) # ((modgen_counter_x_anx58250z11 & ((nx19087z7) # (!modgen_counter_o_row_anx1041z1))))

	.dataa(modgen_counter_o_row_anx1041z1),
	.datab(modgen_counter_x_anx58250z11),
	.datac(nx19087z7),
	.datad(nx19087z19),
	.cin(gnd),
	.combout(nx19087z18),
	.cout());
// synopsys translate_off
defparam ix19087z52953.lut_mask = 16'hFFC4;
defparam ix19087z52953.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y29_N22
cycloneii_lcell_comb ix19087z52952(
// Equation(s):
// addr_x_2_ = (nx19087z18) # ((modgen_counter_x_anx58250z11 & ((nx19087z4) # (nx19087z5))))

	.dataa(nx19087z4),
	.datab(modgen_counter_x_anx58250z11),
	.datac(nx19087z18),
	.datad(nx19087z5),
	.cin(gnd),
	.combout(addr_x_2_),
	.cout());
// synopsys translate_off
defparam ix19087z52952.lut_mask = 16'hFCF8;
defparam ix19087z52952.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N30
cycloneii_lcell_comb ix19087z52950(
// Equation(s):
// nx19087z16 = (modgen_counter_x_anx58250z9 & (((nx19087z17) # (nx6176z8)) # (!modgen_counter_x_anx58250z11)))

	.dataa(modgen_counter_x_anx58250z11),
	.datab(modgen_counter_x_anx58250z9),
	.datac(nx19087z17),
	.datad(nx6176z8),
	.cin(gnd),
	.combout(nx19087z16),
	.cout());
// synopsys translate_off
defparam ix19087z52950.lut_mask = 16'hCCC4;
defparam ix19087z52950.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N0
cycloneii_lcell_comb ix19087z52949(
// Equation(s):
// nx19087z15 = (nx19087z16) # ((modgen_counter_x_anx58250z9 & ((nx19087z7) # (!modgen_counter_o_row_anx1041z1))))

	.dataa(nx19087z7),
	.datab(modgen_counter_x_anx58250z9),
	.datac(modgen_counter_o_row_anx1041z1),
	.datad(nx19087z16),
	.cin(gnd),
	.combout(nx19087z15),
	.cout());
// synopsys translate_off
defparam ix19087z52949.lut_mask = 16'hFF8C;
defparam ix19087z52949.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N10
cycloneii_lcell_comb ix19087z52948(
// Equation(s):
// addr_x_3_ = (nx19087z15) # ((modgen_counter_x_anx58250z9 & ((nx19087z4) # (nx19087z5))))

	.dataa(nx19087z4),
	.datab(modgen_counter_x_anx58250z9),
	.datac(nx19087z5),
	.datad(nx19087z15),
	.cin(gnd),
	.combout(addr_x_3_),
	.cout());
// synopsys translate_off
defparam ix19087z52948.lut_mask = 16'hFFC8;
defparam ix19087z52948.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N8
cycloneii_lcell_comb ix19087z52946(
// Equation(s):
// nx19087z13 = (nx19087z14) # ((modgen_counter_x_anx58250z7 & ((nx19087z9) # (!modgen_counter_x_anx58250z3))))

	.dataa(nx19087z14),
	.datab(modgen_counter_x_anx58250z3),
	.datac(modgen_counter_x_anx58250z7),
	.datad(nx19087z9),
	.cin(gnd),
	.combout(nx19087z13),
	.cout());
// synopsys translate_off
defparam ix19087z52946.lut_mask = 16'hFABA;
defparam ix19087z52946.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N10
cycloneii_lcell_comb ix19087z52945(
// Equation(s):
// nx19087z12 = (nx19087z13) # ((modgen_counter_x_anx58250z7 & ((nx19087z7) # (!modgen_counter_o_row_anx1041z1))))

	.dataa(modgen_counter_x_anx58250z7),
	.datab(modgen_counter_o_row_anx1041z1),
	.datac(nx19087z13),
	.datad(nx19087z7),
	.cin(gnd),
	.combout(nx19087z12),
	.cout());
// synopsys translate_off
defparam ix19087z52945.lut_mask = 16'hFAF2;
defparam ix19087z52945.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N12
cycloneii_lcell_comb ix19087z52944(
// Equation(s):
// addr_x_4_ = (nx19087z12) # ((modgen_counter_x_anx58250z7 & ((nx19087z4) # (nx19087z5))))

	.dataa(modgen_counter_x_anx58250z7),
	.datab(nx19087z4),
	.datac(nx19087z5),
	.datad(nx19087z12),
	.cin(gnd),
	.combout(addr_x_4_),
	.cout());
// synopsys translate_off
defparam ix19087z52944.lut_mask = 16'hFFA8;
defparam ix19087z52944.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N22
cycloneii_lcell_comb ix19087z52943(
// Equation(s):
// nx19087z11 = (modgen_counter_x_anx58250z5 & ((nx17322z5) # ((nx19087z9) # (!modgen_counter_x_anx58250z3))))

	.dataa(nx17322z5),
	.datab(modgen_counter_x_anx58250z3),
	.datac(modgen_counter_x_anx58250z5),
	.datad(nx19087z9),
	.cin(gnd),
	.combout(nx19087z11),
	.cout());
// synopsys translate_off
defparam ix19087z52943.lut_mask = 16'hF0B0;
defparam ix19087z52943.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N16
cycloneii_lcell_comb ix19087z52942(
// Equation(s):
// nx19087z10 = (nx19087z11) # ((modgen_counter_x_anx58250z5 & ((nx19087z7) # (!modgen_counter_o_row_anx1041z1))))

	.dataa(modgen_counter_x_anx58250z5),
	.datab(nx19087z7),
	.datac(modgen_counter_o_row_anx1041z1),
	.datad(nx19087z11),
	.cin(gnd),
	.combout(nx19087z10),
	.cout());
// synopsys translate_off
defparam ix19087z52942.lut_mask = 16'hFF8A;
defparam ix19087z52942.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N18
cycloneii_lcell_comb ix19087z52941(
// Equation(s):
// addr_x_5_ = (nx19087z10) # ((modgen_counter_x_anx58250z5 & ((nx19087z5) # (nx19087z4))))

	.dataa(nx19087z5),
	.datab(modgen_counter_x_anx58250z5),
	.datac(nx19087z10),
	.datad(nx19087z4),
	.cin(gnd),
	.combout(addr_x_5_),
	.cout());
// synopsys translate_off
defparam ix19087z52941.lut_mask = 16'hFCF8;
defparam ix19087z52941.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N8
cycloneii_lcell_comb ix17322z52927(
// Equation(s):
// nx17322z5 = ((!modgen_counter_x_anx58250z9) # (!modgen_counter_x_anx58250z7)) # (!modgen_counter_x_anx58250z11)

	.dataa(modgen_counter_x_anx58250z11),
	.datab(vcc),
	.datac(modgen_counter_x_anx58250z7),
	.datad(modgen_counter_x_anx58250z9),
	.cin(gnd),
	.combout(nx17322z5),
	.cout());
// synopsys translate_off
defparam ix17322z52927.lut_mask = 16'h5FFF;
defparam ix17322z52927.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N28
cycloneii_lcell_comb ix19087z52939(
// Equation(s):
// nx19087z8 = (modgen_counter_x_anx58250z3 & (((nx17322z5) # (nx19087z9)) # (!modgen_counter_x_anx58250z5)))

	.dataa(modgen_counter_x_anx58250z3),
	.datab(modgen_counter_x_anx58250z5),
	.datac(nx17322z5),
	.datad(nx19087z9),
	.cin(gnd),
	.combout(nx19087z8),
	.cout());
// synopsys translate_off
defparam ix19087z52939.lut_mask = 16'hAAA2;
defparam ix19087z52939.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N6
cycloneii_lcell_comb ix19087z52937(
// Equation(s):
// nx19087z6 = (nx19087z8) # ((modgen_counter_x_anx58250z3 & ((nx19087z7) # (!modgen_counter_o_row_anx1041z1))))

	.dataa(modgen_counter_x_anx58250z3),
	.datab(nx19087z7),
	.datac(modgen_counter_o_row_anx1041z1),
	.datad(nx19087z8),
	.cin(gnd),
	.combout(nx19087z6),
	.cout());
// synopsys translate_off
defparam ix19087z52937.lut_mask = 16'hFF8A;
defparam ix19087z52937.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N20
cycloneii_lcell_comb ix19087z52936(
// Equation(s):
// addr_x_6_ = (nx19087z6) # ((modgen_counter_x_anx58250z3 & ((nx19087z4) # (nx19087z5))))

	.dataa(nx19087z4),
	.datab(modgen_counter_x_anx58250z3),
	.datac(nx19087z6),
	.datad(nx19087z5),
	.cin(gnd),
	.combout(addr_x_6_),
	.cout());
// synopsys translate_off
defparam ix19087z52936.lut_mask = 16'hFCF8;
defparam ix19087z52936.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y28_N0
cycloneii_lcell_comb ix19087z52932(
// Equation(s):
// nx19087z2 = (modgen_counter_x_anx1041z1 & (((!modgen_counter_o_row_anx58250z15) # (!modgen_counter_x_anx58250z5)) # (!modgen_counter_x_anx58250z3)))

	.dataa(modgen_counter_x_anx58250z3),
	.datab(modgen_counter_x_anx58250z5),
	.datac(modgen_counter_x_anx1041z1),
	.datad(modgen_counter_o_row_anx58250z15),
	.cin(gnd),
	.combout(nx19087z2),
	.cout());
// synopsys translate_off
defparam ix19087z52932.lut_mask = 16'h70F0;
defparam ix19087z52932.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y28_N2
cycloneii_lcell_comb ix19087z52933(
// Equation(s):
// nx19087z3 = (modgen_counter_x_anx1041z1 & (((nx17322z6) # (!modgen_counter_o_row_anx1041z1)) # (!i_valid_acombout)))

	.dataa(modgen_counter_x_anx1041z1),
	.datab(i_valid_acombout),
	.datac(modgen_counter_o_row_anx1041z1),
	.datad(nx17322z6),
	.cin(gnd),
	.combout(nx19087z3),
	.cout());
// synopsys translate_off
defparam ix19087z52933.lut_mask = 16'hAA2A;
defparam ix19087z52933.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y28_N28
cycloneii_lcell_comb ix19087z52931(
// Equation(s):
// nx19087z1 = (nx19087z2) # ((nx19087z3) # ((modgen_counter_x_anx1041z1 & nx17322z5)))

	.dataa(modgen_counter_x_anx1041z1),
	.datab(nx19087z2),
	.datac(nx17322z5),
	.datad(nx19087z3),
	.cin(gnd),
	.combout(nx19087z1),
	.cout());
// synopsys translate_off
defparam ix19087z52931.lut_mask = 16'hFFEC;
defparam ix19087z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y28_N6
cycloneii_lcell_comb ix19087z52930(
// Equation(s):
// addr_x_7_ = (nx19087z1) # ((modgen_counter_x_anx1041z1 & ((nx19087z4) # (nx19087z5))))

	.dataa(nx19087z4),
	.datab(nx19087z5),
	.datac(modgen_counter_x_anx1041z1),
	.datad(nx19087z1),
	.cin(gnd),
	.combout(addr_x_7_),
	.cout());
// synopsys translate_off
defparam ix19087z52930.lut_mask = 16'hFFE0;
defparam ix19087z52930.sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io ix19087z43924(
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
	.combout(i_pixel_acombout[1]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[1]));
// synopsys translate_off
defparam ix19087z43924.input_async_reset = "none";
defparam ix19087z43924.input_power_up = "low";
defparam ix19087z43924.input_register_mode = "none";
defparam ix19087z43924.input_sync_reset = "none";
defparam ix19087z43924.oe_async_reset = "none";
defparam ix19087z43924.oe_power_up = "low";
defparam ix19087z43924.oe_register_mode = "none";
defparam ix19087z43924.oe_sync_reset = "none";
defparam ix19087z43924.operation_mode = "input";
defparam ix19087z43924.output_async_reset = "none";
defparam ix19087z43924.output_power_up = "low";
defparam ix19087z43924.output_register_mode = "none";
defparam ix19087z43924.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io ix19087z43923(
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
	.combout(i_pixel_acombout[2]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[2]));
// synopsys translate_off
defparam ix19087z43923.input_async_reset = "none";
defparam ix19087z43923.input_power_up = "low";
defparam ix19087z43923.input_register_mode = "none";
defparam ix19087z43923.input_sync_reset = "none";
defparam ix19087z43923.oe_async_reset = "none";
defparam ix19087z43923.oe_power_up = "low";
defparam ix19087z43923.oe_register_mode = "none";
defparam ix19087z43923.oe_sync_reset = "none";
defparam ix19087z43923.operation_mode = "input";
defparam ix19087z43923.output_async_reset = "none";
defparam ix19087z43923.output_power_up = "low";
defparam ix19087z43923.output_register_mode = "none";
defparam ix19087z43923.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io ix19087z43922(
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
	.combout(i_pixel_acombout[3]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[3]));
// synopsys translate_off
defparam ix19087z43922.input_async_reset = "none";
defparam ix19087z43922.input_power_up = "low";
defparam ix19087z43922.input_register_mode = "none";
defparam ix19087z43922.input_sync_reset = "none";
defparam ix19087z43922.oe_async_reset = "none";
defparam ix19087z43922.oe_power_up = "low";
defparam ix19087z43922.oe_register_mode = "none";
defparam ix19087z43922.oe_sync_reset = "none";
defparam ix19087z43922.operation_mode = "input";
defparam ix19087z43922.output_async_reset = "none";
defparam ix19087z43922.output_power_up = "low";
defparam ix19087z43922.output_register_mode = "none";
defparam ix19087z43922.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io ix19087z43921(
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
	.combout(i_pixel_acombout[4]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[4]));
// synopsys translate_off
defparam ix19087z43921.input_async_reset = "none";
defparam ix19087z43921.input_power_up = "low";
defparam ix19087z43921.input_register_mode = "none";
defparam ix19087z43921.input_sync_reset = "none";
defparam ix19087z43921.oe_async_reset = "none";
defparam ix19087z43921.oe_power_up = "low";
defparam ix19087z43921.oe_register_mode = "none";
defparam ix19087z43921.oe_sync_reset = "none";
defparam ix19087z43921.operation_mode = "input";
defparam ix19087z43921.output_async_reset = "none";
defparam ix19087z43921.output_power_up = "low";
defparam ix19087z43921.output_register_mode = "none";
defparam ix19087z43921.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io ix19087z43920(
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
	.combout(i_pixel_acombout[5]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[5]));
// synopsys translate_off
defparam ix19087z43920.input_async_reset = "none";
defparam ix19087z43920.input_power_up = "low";
defparam ix19087z43920.input_register_mode = "none";
defparam ix19087z43920.input_sync_reset = "none";
defparam ix19087z43920.oe_async_reset = "none";
defparam ix19087z43920.oe_power_up = "low";
defparam ix19087z43920.oe_register_mode = "none";
defparam ix19087z43920.oe_sync_reset = "none";
defparam ix19087z43920.operation_mode = "input";
defparam ix19087z43920.output_async_reset = "none";
defparam ix19087z43920.output_power_up = "low";
defparam ix19087z43920.output_register_mode = "none";
defparam ix19087z43920.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io ix19087z43919(
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
	.combout(i_pixel_acombout[6]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[6]));
// synopsys translate_off
defparam ix19087z43919.input_async_reset = "none";
defparam ix19087z43919.input_power_up = "low";
defparam ix19087z43919.input_register_mode = "none";
defparam ix19087z43919.input_sync_reset = "none";
defparam ix19087z43919.oe_async_reset = "none";
defparam ix19087z43919.oe_power_up = "low";
defparam ix19087z43919.oe_register_mode = "none";
defparam ix19087z43919.oe_sync_reset = "none";
defparam ix19087z43919.operation_mode = "input";
defparam ix19087z43919.output_async_reset = "none";
defparam ix19087z43919.output_power_up = "low";
defparam ix19087z43919.output_register_mode = "none";
defparam ix19087z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io ix37378z43919(
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
	.combout(i_pixel_acombout[7]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[7]));
// synopsys translate_off
defparam ix37378z43919.input_async_reset = "none";
defparam ix37378z43919.input_power_up = "low";
defparam ix37378z43919.input_register_mode = "none";
defparam ix37378z43919.input_sync_reset = "none";
defparam ix37378z43919.oe_async_reset = "none";
defparam ix37378z43919.oe_power_up = "low";
defparam ix37378z43919.oe_register_mode = "none";
defparam ix37378z43919.oe_sync_reset = "none";
defparam ix37378z43919.operation_mode = "input";
defparam ix37378z43919.output_async_reset = "none";
defparam ix37378z43919.output_power_up = "low";
defparam ix37378z43919.output_register_mode = "none";
defparam ix37378z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: M4K_X52_Y29
cycloneii_ram_block m2_mem_aix64056z29482_aauto_generated_aram_block1a0(
	.portawe(wren_m2),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(i_clock_aclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({i_pixel_acombout[7],i_pixel_acombout[6],i_pixel_acombout[5],i_pixel_acombout[4],i_pixel_acombout[3],i_pixel_acombout[2],i_pixel_acombout[1],i_pixel_acombout[0]}),
	.portaaddr({addr_x_7_,addr_x_6_,addr_x_5_,addr_x_4_,addr_x_3_,addr_x_2_,addr_x_1_,addr_x_0_}),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam m2_mem_aix64056z29482_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam m2_mem_aix64056z29482_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam m2_mem_aix64056z29482_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_1:m2_mem|altsyncram:ix64056z29482|altsyncram_jpg2:auto_generated|ALTSYNCRAM";
defparam m2_mem_aix64056z29482_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam m2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam m2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam m2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_byte_enable_clear = "none";
defparam m2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam m2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_in_clear = "none";
defparam m2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam m2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam m2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_width = 8;
defparam m2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam m2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam m2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam m2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam m2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam m2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_a_write_enable_clear = "none";
defparam m2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam m2_mem_aix64056z29482_aauto_generated_aram_block1a0.port_b_data_width = 8;
defparam m2_mem_aix64056z29482_aauto_generated_aram_block1a0.ram_block_type = "M4K";
defparam m2_mem_aix64056z29482_aauto_generated_aram_block1a0.safe_write = "err_on_2clk";
// synopsys translate_on

// Location: LCCOMB_X51_Y30_N18
cycloneii_lcell_comb ix20492z52923(
// Equation(s):
// nx20492z1 = (t_0_ & (m3_mem_aix64056z29483_aauto_generated_aq_a[7])) # (!t_0_ & ((m2_mem_aix64056z29482_aauto_generated_aq_a[7])))

	.dataa(m3_mem_aix64056z29483_aauto_generated_aq_a[7]),
	.datab(t_0_),
	.datac(vcc),
	.datad(m2_mem_aix64056z29482_aauto_generated_aq_a[7]),
	.cin(gnd),
	.combout(nx20492z1),
	.cout());
// synopsys translate_off
defparam ix20492z52923.lut_mask = 16'hBB88;
defparam ix20492z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: M4K_X52_Y28
cycloneii_ram_block m1_mem_aix64056z29481_aauto_generated_aram_block1a0(
	.portawe(wren_m1),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(i_clock_aclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({i_pixel_acombout[7],i_pixel_acombout[6],i_pixel_acombout[5],i_pixel_acombout[4],i_pixel_acombout[3],i_pixel_acombout[2],i_pixel_acombout[1],i_pixel_acombout[0]}),
	.portaaddr({addr_x_7_,addr_x_6_,addr_x_5_,addr_x_4_,addr_x_3_,addr_x_2_,addr_x_1_,addr_x_0_}),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam m1_mem_aix64056z29481_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam m1_mem_aix64056z29481_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam m1_mem_aix64056z29481_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_0:m1_mem|altsyncram:ix64056z29481|altsyncram_jpg2:auto_generated|ALTSYNCRAM";
defparam m1_mem_aix64056z29481_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam m1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam m1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam m1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_byte_enable_clear = "none";
defparam m1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam m1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_in_clear = "none";
defparam m1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam m1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam m1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_width = 8;
defparam m1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam m1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam m1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam m1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam m1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam m1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_write_enable_clear = "none";
defparam m1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam m1_mem_aix64056z29481_aauto_generated_aram_block1a0.port_b_data_width = 8;
defparam m1_mem_aix64056z29481_aauto_generated_aram_block1a0.ram_block_type = "M4K";
defparam m1_mem_aix64056z29481_aauto_generated_aram_block1a0.safe_write = "err_on_2clk";
// synopsys translate_on

// Location: LCCOMB_X51_Y30_N30
cycloneii_lcell_comb ix20492z52924(
// Equation(s):
// nx20492z2 = (i_valid_acombout & ((!t_0_) # (!t_1_)))

	.dataa(i_valid_acombout),
	.datab(vcc),
	.datac(t_1_),
	.datad(t_0_),
	.cin(gnd),
	.combout(nx20492z2),
	.cout());
// synopsys translate_off
defparam ix20492z52924.lut_mask = 16'h0AAA;
defparam ix20492z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y30_N19
cycloneii_lcell_ff reg_c_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx20492z1),
	.sdata(m1_mem_aix64056z29481_aauto_generated_aq_a[7]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(t_1_),
	.ena(nx20492z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(c_7_));

// Location: LCCOMB_X50_Y30_N18
cycloneii_lcell_comb b_7__afeeder(
// Equation(s):
// b_7__afeeder_combout = c_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(c_7_),
	.datad(vcc),
	.cin(gnd),
	.combout(b_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam b_7__afeeder.lut_mask = 16'hF0F0;
defparam b_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y30_N19
cycloneii_lcell_ff reg_b_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(b_7__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_7_));

// Location: LCCOMB_X50_Y30_N22
cycloneii_lcell_comb a_7__afeeder(
// Equation(s):
// a_7__afeeder_combout = b_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(b_7_),
	.cin(gnd),
	.combout(a_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam a_7__afeeder.lut_mask = 16'hFF00;
defparam a_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y30_N23
cycloneii_lcell_ff reg_a_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(a_7__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(a_7_));

// Location: LCCOMB_X50_Y30_N28
cycloneii_lcell_comb e_7__afeeder(
// Equation(s):
// e_7__afeeder_combout = i_pixel_acombout[7]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(i_pixel_acombout[7]),
	.cin(gnd),
	.combout(e_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam e_7__afeeder.lut_mask = 16'hFF00;
defparam e_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y30_N29
cycloneii_lcell_ff reg_in_i_pixel_ibuf_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(e_7__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(e_7_));

// Location: LCFF_X47_Y31_N7
cycloneii_lcell_ff reg_f_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(e_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_7_));

// Location: LCCOMB_X47_Y31_N6
cycloneii_lcell_comb ix41318z52924(
// Equation(s):
// nx41318z2 = (v_1_) # ((v_2_ & ((f_7_))) # (!v_2_ & (a_7_)))

	.dataa(v_1_),
	.datab(a_7_),
	.datac(f_7_),
	.datad(v_2_),
	.cin(gnd),
	.combout(nx41318z2),
	.cout());
// synopsys translate_off
defparam ix41318z52924.lut_mask = 16'hFAEE;
defparam ix41318z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y31_N6
cycloneii_lcell_comb ix41318z52923(
// Equation(s):
// nx41318z1 = (nx41318z2 & ((e_7_) # (!v_1_)))

	.dataa(v_1_),
	.datab(nx41318z2),
	.datac(vcc),
	.datad(e_7_),
	.cin(gnd),
	.combout(nx41318z1),
	.cout());
// synopsys translate_off
defparam ix41318z52923.lut_mask = 16'hCC44;
defparam ix41318z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y31_N18
cycloneii_lcell_comb ix32637z52925(
// Equation(s):
// nx32637z3 = (v_3_) # ((v_2_) # ((v_1_) # (v_0_)))

	.dataa(v_3_),
	.datab(v_2_),
	.datac(v_1_),
	.datad(v_0_),
	.cin(gnd),
	.combout(nx32637z3),
	.cout());
// synopsys translate_off
defparam ix32637z52925.lut_mask = 16'hFFFE;
defparam ix32637z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y31_N7
cycloneii_lcell_ff reg_r3_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx41318z1),
	.sdata(c_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_7_));

// Location: LCCOMB_X51_Y30_N28
cycloneii_lcell_comb ix35628z52923(
// Equation(s):
// nx35628z1 = (t_0_ & ((m1_mem_aix64056z29481_aauto_generated_aq_a[6]))) # (!t_0_ & (m3_mem_aix64056z29483_aauto_generated_aq_a[6]))

	.dataa(m3_mem_aix64056z29483_aauto_generated_aq_a[6]),
	.datab(t_0_),
	.datac(vcc),
	.datad(m1_mem_aix64056z29481_aauto_generated_aq_a[6]),
	.cin(gnd),
	.combout(nx35628z1),
	.cout());
// synopsys translate_off
defparam ix35628z52923.lut_mask = 16'hEE22;
defparam ix35628z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y30_N29
cycloneii_lcell_ff reg_d_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx35628z1),
	.sdata(m2_mem_aix64056z29482_aauto_generated_aq_a[6]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(t_1_),
	.ena(nx20492z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(d_6_));

// Location: LCCOMB_X48_Y32_N0
cycloneii_lcell_comb ix50734z52923(
// Equation(s):
// nx50734z1 = (nx50734z2 & ((d_6_) # (!v_1_)))

	.dataa(nx50734z2),
	.datab(v_1_),
	.datac(vcc),
	.datad(d_6_),
	.cin(gnd),
	.combout(nx50734z1),
	.cout());
// synopsys translate_off
defparam ix50734z52923.lut_mask = 16'hAA22;
defparam ix50734z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y30_N6
cycloneii_lcell_comb ix21489z52923(
// Equation(s):
// nx21489z1 = (t_0_ & (m3_mem_aix64056z29483_aauto_generated_aq_a[6])) # (!t_0_ & ((m2_mem_aix64056z29482_aauto_generated_aq_a[6])))

	.dataa(m3_mem_aix64056z29483_aauto_generated_aq_a[6]),
	.datab(t_0_),
	.datac(vcc),
	.datad(m2_mem_aix64056z29482_aauto_generated_aq_a[6]),
	.cin(gnd),
	.combout(nx21489z1),
	.cout());
// synopsys translate_off
defparam ix21489z52923.lut_mask = 16'hBB88;
defparam ix21489z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y30_N7
cycloneii_lcell_ff reg_c_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx21489z1),
	.sdata(m1_mem_aix64056z29481_aauto_generated_aq_a[6]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(t_1_),
	.ena(nx20492z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(c_6_));

// Location: LCCOMB_X51_Y31_N28
cycloneii_lcell_comb b_6__afeeder(
// Equation(s):
// b_6__afeeder_combout = c_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(c_6_),
	.cin(gnd),
	.combout(b_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam b_6__afeeder.lut_mask = 16'hFF00;
defparam b_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y31_N29
cycloneii_lcell_ff reg_b_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(b_6__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_6_));

// Location: LCFF_X48_Y32_N1
cycloneii_lcell_ff reg_r4_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx50734z1),
	.sdata(b_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4_6_));

// Location: LCCOMB_X51_Y30_N24
cycloneii_lcell_comb ix34631z52923(
// Equation(s):
// nx34631z1 = (t_0_ & (m1_mem_aix64056z29481_aauto_generated_aq_a[5])) # (!t_0_ & ((m3_mem_aix64056z29483_aauto_generated_aq_a[5])))

	.dataa(t_0_),
	.datab(m1_mem_aix64056z29481_aauto_generated_aq_a[5]),
	.datac(vcc),
	.datad(m3_mem_aix64056z29483_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(nx34631z1),
	.cout());
// synopsys translate_off
defparam ix34631z52923.lut_mask = 16'hDD88;
defparam ix34631z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y30_N25
cycloneii_lcell_ff reg_d_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx34631z1),
	.sdata(m2_mem_aix64056z29482_aauto_generated_aq_a[5]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(t_1_),
	.ena(nx20492z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(d_5_));

// Location: LCCOMB_X49_Y31_N4
cycloneii_lcell_comb ix51731z52923(
// Equation(s):
// nx51731z1 = (nx51731z2 & ((d_5_) # (!v_1_)))

	.dataa(nx51731z2),
	.datab(d_5_),
	.datac(vcc),
	.datad(v_1_),
	.cin(gnd),
	.combout(nx51731z1),
	.cout());
// synopsys translate_off
defparam ix51731z52923.lut_mask = 16'h88AA;
defparam ix51731z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y30_N2
cycloneii_lcell_comb ix22486z52923(
// Equation(s):
// nx22486z1 = (t_0_ & (m3_mem_aix64056z29483_aauto_generated_aq_a[5])) # (!t_0_ & ((m2_mem_aix64056z29482_aauto_generated_aq_a[5])))

	.dataa(t_0_),
	.datab(m3_mem_aix64056z29483_aauto_generated_aq_a[5]),
	.datac(vcc),
	.datad(m2_mem_aix64056z29482_aauto_generated_aq_a[5]),
	.cin(gnd),
	.combout(nx22486z1),
	.cout());
// synopsys translate_off
defparam ix22486z52923.lut_mask = 16'hDD88;
defparam ix22486z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y30_N3
cycloneii_lcell_ff reg_c_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx22486z1),
	.sdata(m1_mem_aix64056z29481_aauto_generated_aq_a[5]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(t_1_),
	.ena(nx20492z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(c_5_));

// Location: LCCOMB_X51_Y31_N18
cycloneii_lcell_comb b_5__afeeder(
// Equation(s):
// b_5__afeeder_combout = c_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(c_5_),
	.cin(gnd),
	.combout(b_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam b_5__afeeder.lut_mask = 16'hFF00;
defparam b_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y31_N19
cycloneii_lcell_ff reg_b_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(b_5__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_5_));

// Location: LCFF_X49_Y31_N5
cycloneii_lcell_ff reg_r4_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx51731z1),
	.sdata(b_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4_5_));

// Location: LCCOMB_X50_Y31_N26
cycloneii_lcell_comb e_4__afeeder(
// Equation(s):
// e_4__afeeder_combout = i_pixel_acombout[4]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(i_pixel_acombout[4]),
	.cin(gnd),
	.combout(e_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam e_4__afeeder.lut_mask = 16'hFF00;
defparam e_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y31_N27
cycloneii_lcell_ff reg_in_i_pixel_ibuf_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(e_4__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(e_4_));

// Location: LCFF_X50_Y31_N9
cycloneii_lcell_ff reg_f_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(e_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_4_));

// Location: LCCOMB_X51_Y30_N14
cycloneii_lcell_comb ix23483z52923(
// Equation(s):
// nx23483z1 = (t_0_ & (m3_mem_aix64056z29483_aauto_generated_aq_a[4])) # (!t_0_ & ((m2_mem_aix64056z29482_aauto_generated_aq_a[4])))

	.dataa(m3_mem_aix64056z29483_aauto_generated_aq_a[4]),
	.datab(t_0_),
	.datac(vcc),
	.datad(m2_mem_aix64056z29482_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(nx23483z1),
	.cout());
// synopsys translate_off
defparam ix23483z52923.lut_mask = 16'hBB88;
defparam ix23483z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y30_N15
cycloneii_lcell_ff reg_c_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx23483z1),
	.sdata(m1_mem_aix64056z29481_aauto_generated_aq_a[4]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(t_1_),
	.ena(nx20492z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(c_4_));

// Location: LCCOMB_X51_Y31_N22
cycloneii_lcell_comb b_4__afeeder(
// Equation(s):
// b_4__afeeder_combout = c_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(c_4_),
	.datad(vcc),
	.cin(gnd),
	.combout(b_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam b_4__afeeder.lut_mask = 16'hF0F0;
defparam b_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y31_N23
cycloneii_lcell_ff reg_b_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(b_4__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_4_));

// Location: LCCOMB_X51_Y31_N24
cycloneii_lcell_comb a_4__afeeder(
// Equation(s):
// a_4__afeeder_combout = b_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(b_4_),
	.cin(gnd),
	.combout(a_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam a_4__afeeder.lut_mask = 16'hFF00;
defparam a_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y31_N25
cycloneii_lcell_ff reg_a_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(a_4__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(a_4_));

// Location: LCCOMB_X50_Y31_N8
cycloneii_lcell_comb ix44309z52924(
// Equation(s):
// nx44309z2 = (v_1_) # ((v_2_ & (f_4_)) # (!v_2_ & ((a_4_))))

	.dataa(v_2_),
	.datab(v_1_),
	.datac(f_4_),
	.datad(a_4_),
	.cin(gnd),
	.combout(nx44309z2),
	.cout());
// synopsys translate_off
defparam ix44309z52924.lut_mask = 16'hFDEC;
defparam ix44309z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y31_N18
cycloneii_lcell_comb ix44309z52923(
// Equation(s):
// nx44309z1 = (nx44309z2 & ((e_4_) # (!v_1_)))

	.dataa(v_1_),
	.datab(nx44309z2),
	.datac(vcc),
	.datad(e_4_),
	.cin(gnd),
	.combout(nx44309z1),
	.cout());
// synopsys translate_off
defparam ix44309z52923.lut_mask = 16'hCC44;
defparam ix44309z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y31_N19
cycloneii_lcell_ff reg_r3_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx44309z1),
	.sdata(c_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_4_));

// Location: LCFF_X49_Y32_N7
cycloneii_lcell_ff reg_in_i_pixel_ibuf_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[3]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(e_3_));

// Location: LCCOMB_X48_Y32_N12
cycloneii_lcell_comb ix45306z52923(
// Equation(s):
// nx45306z1 = (nx45306z2 & ((e_3_) # (!v_1_)))

	.dataa(nx45306z2),
	.datab(v_1_),
	.datac(vcc),
	.datad(e_3_),
	.cin(gnd),
	.combout(nx45306z1),
	.cout());
// synopsys translate_off
defparam ix45306z52923.lut_mask = 16'hAA22;
defparam ix45306z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y30_N10
cycloneii_lcell_comb ix24480z52923(
// Equation(s):
// nx24480z1 = (t_0_ & (m3_mem_aix64056z29483_aauto_generated_aq_a[3])) # (!t_0_ & ((m2_mem_aix64056z29482_aauto_generated_aq_a[3])))

	.dataa(m3_mem_aix64056z29483_aauto_generated_aq_a[3]),
	.datab(m2_mem_aix64056z29482_aauto_generated_aq_a[3]),
	.datac(vcc),
	.datad(t_0_),
	.cin(gnd),
	.combout(nx24480z1),
	.cout());
// synopsys translate_off
defparam ix24480z52923.lut_mask = 16'hAACC;
defparam ix24480z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y30_N11
cycloneii_lcell_ff reg_c_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx24480z1),
	.sdata(m1_mem_aix64056z29481_aauto_generated_aq_a[3]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(t_1_),
	.ena(nx20492z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(c_3_));

// Location: LCFF_X48_Y32_N13
cycloneii_lcell_ff reg_r3_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx45306z1),
	.sdata(c_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_3_));

// Location: LCCOMB_X49_Y32_N12
cycloneii_lcell_comb e_2__afeeder(
// Equation(s):
// e_2__afeeder_combout = i_pixel_acombout[2]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(i_pixel_acombout[2]),
	.cin(gnd),
	.combout(e_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam e_2__afeeder.lut_mask = 16'hFF00;
defparam e_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y32_N13
cycloneii_lcell_ff reg_in_i_pixel_ibuf_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(e_2__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(e_2_));

// Location: LCCOMB_X49_Y30_N0
cycloneii_lcell_comb ix46303z52923(
// Equation(s):
// nx46303z1 = (nx46303z2 & ((e_2_) # (!v_1_)))

	.dataa(nx46303z2),
	.datab(v_1_),
	.datac(vcc),
	.datad(e_2_),
	.cin(gnd),
	.combout(nx46303z1),
	.cout());
// synopsys translate_off
defparam ix46303z52923.lut_mask = 16'hAA22;
defparam ix46303z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y30_N22
cycloneii_lcell_comb ix25477z52923(
// Equation(s):
// nx25477z1 = (t_0_ & (m3_mem_aix64056z29483_aauto_generated_aq_a[2])) # (!t_0_ & ((m2_mem_aix64056z29482_aauto_generated_aq_a[2])))

	.dataa(m3_mem_aix64056z29483_aauto_generated_aq_a[2]),
	.datab(t_0_),
	.datac(vcc),
	.datad(m2_mem_aix64056z29482_aauto_generated_aq_a[2]),
	.cin(gnd),
	.combout(nx25477z1),
	.cout());
// synopsys translate_off
defparam ix25477z52923.lut_mask = 16'hBB88;
defparam ix25477z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y30_N23
cycloneii_lcell_ff reg_c_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx25477z1),
	.sdata(m1_mem_aix64056z29481_aauto_generated_aq_a[2]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(t_1_),
	.ena(nx20492z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(c_2_));

// Location: LCFF_X49_Y30_N1
cycloneii_lcell_ff reg_r3_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx46303z1),
	.sdata(c_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_2_));

// Location: LCFF_X49_Y32_N3
cycloneii_lcell_ff reg_in_i_pixel_ibuf_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[1]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(e_1_));

// Location: LCFF_X49_Y32_N5
cycloneii_lcell_ff reg_f_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(e_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_1_));

// Location: LCCOMB_X51_Y30_N26
cycloneii_lcell_comb ix26474z52923(
// Equation(s):
// nx26474z1 = (t_0_ & (m3_mem_aix64056z29483_aauto_generated_aq_a[1])) # (!t_0_ & ((m2_mem_aix64056z29482_aauto_generated_aq_a[1])))

	.dataa(t_0_),
	.datab(m3_mem_aix64056z29483_aauto_generated_aq_a[1]),
	.datac(vcc),
	.datad(m2_mem_aix64056z29482_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(nx26474z1),
	.cout());
// synopsys translate_off
defparam ix26474z52923.lut_mask = 16'hDD88;
defparam ix26474z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y30_N27
cycloneii_lcell_ff reg_c_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx26474z1),
	.sdata(m1_mem_aix64056z29481_aauto_generated_aq_a[1]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(t_1_),
	.ena(nx20492z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(c_1_));

// Location: LCCOMB_X51_Y31_N0
cycloneii_lcell_comb b_1__afeeder(
// Equation(s):
// b_1__afeeder_combout = c_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(c_1_),
	.datad(vcc),
	.cin(gnd),
	.combout(b_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam b_1__afeeder.lut_mask = 16'hF0F0;
defparam b_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y31_N1
cycloneii_lcell_ff reg_b_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(b_1__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_1_));

// Location: LCCOMB_X51_Y31_N2
cycloneii_lcell_comb a_1__afeeder(
// Equation(s):
// a_1__afeeder_combout = b_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(b_1_),
	.cin(gnd),
	.combout(a_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam a_1__afeeder.lut_mask = 16'hFF00;
defparam a_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y31_N3
cycloneii_lcell_ff reg_a_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(a_1__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(a_1_));

// Location: LCCOMB_X49_Y32_N4
cycloneii_lcell_comb ix47300z52924(
// Equation(s):
// nx47300z2 = (v_1_) # ((v_2_ & (f_1_)) # (!v_2_ & ((a_1_))))

	.dataa(v_2_),
	.datab(v_1_),
	.datac(f_1_),
	.datad(a_1_),
	.cin(gnd),
	.combout(nx47300z2),
	.cout());
// synopsys translate_off
defparam ix47300z52924.lut_mask = 16'hFDEC;
defparam ix47300z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y30_N4
cycloneii_lcell_comb ix47300z52923(
// Equation(s):
// nx47300z1 = (nx47300z2 & ((e_1_) # (!v_1_)))

	.dataa(e_1_),
	.datab(v_1_),
	.datac(vcc),
	.datad(nx47300z2),
	.cin(gnd),
	.combout(nx47300z1),
	.cout());
// synopsys translate_off
defparam ix47300z52923.lut_mask = 16'hBB00;
defparam ix47300z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y30_N5
cycloneii_lcell_ff reg_r3_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx47300z1),
	.sdata(c_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_1_));

// Location: LCFF_X50_Y31_N5
cycloneii_lcell_ff reg_in_i_pixel_ibuf_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[0]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(e_0_));

// Location: LCFF_X50_Y31_N17
cycloneii_lcell_ff reg_f_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(e_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_0_));

// Location: LCFF_X50_Y31_N31
cycloneii_lcell_ff reg_g_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(f_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(g_0_));

// Location: LCCOMB_X50_Y30_N0
cycloneii_lcell_comb ix29646z52926(
// Equation(s):
// nx29646z3 = (t_0_ & ((m1_mem_aix64056z29481_aauto_generated_aq_a[0]))) # (!t_0_ & (m3_mem_aix64056z29483_aauto_generated_aq_a[0]))

	.dataa(t_0_),
	.datab(m3_mem_aix64056z29483_aauto_generated_aq_a[0]),
	.datac(vcc),
	.datad(m1_mem_aix64056z29481_aauto_generated_aq_a[0]),
	.cin(gnd),
	.combout(nx29646z3),
	.cout());
// synopsys translate_off
defparam ix29646z52926.lut_mask = 16'hEE44;
defparam ix29646z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y30_N1
cycloneii_lcell_ff reg_d_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx29646z3),
	.sdata(m2_mem_aix64056z29482_aauto_generated_aq_a[0]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(t_1_),
	.ena(nx20492z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(d_0_));

// Location: LCCOMB_X50_Y30_N26
cycloneii_lcell_comb i_0__afeeder(
// Equation(s):
// i_0__afeeder_combout = d_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(d_0_),
	.cin(gnd),
	.combout(i_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam i_0__afeeder.lut_mask = 16'hFF00;
defparam i_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y30_N27
cycloneii_lcell_ff reg_i_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(i_0__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_0_));

// Location: LCFF_X50_Y31_N13
cycloneii_lcell_ff reg_h_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(h_0_));

// Location: LCCOMB_X50_Y31_N12
cycloneii_lcell_comb ix56716z52924(
// Equation(s):
// nx56716z2 = (v_1_) # ((v_2_ & (g_0_)) # (!v_2_ & ((h_0_))))

	.dataa(v_2_),
	.datab(g_0_),
	.datac(h_0_),
	.datad(v_1_),
	.cin(gnd),
	.combout(nx56716z2),
	.cout());
// synopsys translate_off
defparam ix56716z52924.lut_mask = 16'hFFD8;
defparam ix56716z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y30_N8
cycloneii_lcell_comb ix56716z52923(
// Equation(s):
// nx56716z1 = (nx56716z2 & ((d_0_) # (!v_1_)))

	.dataa(d_0_),
	.datab(v_1_),
	.datac(vcc),
	.datad(nx56716z2),
	.cin(gnd),
	.combout(nx56716z1),
	.cout());
// synopsys translate_off
defparam ix56716z52923.lut_mask = 16'hBB00;
defparam ix56716z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y30_N12
cycloneii_lcell_comb ix27471z52923(
// Equation(s):
// nx27471z1 = (t_0_ & (m3_mem_aix64056z29483_aauto_generated_aq_a[0])) # (!t_0_ & ((m2_mem_aix64056z29482_aauto_generated_aq_a[0])))

	.dataa(m3_mem_aix64056z29483_aauto_generated_aq_a[0]),
	.datab(t_0_),
	.datac(vcc),
	.datad(m2_mem_aix64056z29482_aauto_generated_aq_a[0]),
	.cin(gnd),
	.combout(nx27471z1),
	.cout());
// synopsys translate_off
defparam ix27471z52923.lut_mask = 16'hBB88;
defparam ix27471z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y30_N13
cycloneii_lcell_ff reg_c_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx27471z1),
	.sdata(m1_mem_aix64056z29481_aauto_generated_aq_a[0]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(t_1_),
	.ena(nx20492z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(c_0_));

// Location: LCFF_X50_Y31_N19
cycloneii_lcell_ff reg_b_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(c_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_0_));

// Location: LCFF_X49_Y30_N9
cycloneii_lcell_ff reg_r4_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx56716z1),
	.sdata(b_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4_0_));

// Location: LCCOMB_X49_Y30_N12
cycloneii_lcell_comb add1_add8_4_aix44952z52931(
// Equation(s):
// add1_add8_4_anx37973z1 = (r3_0_ & (r4_0_ $ (VCC))) # (!r3_0_ & (r4_0_ & VCC))
// add1_add8_4_anx44952z22 = CARRY((r3_0_ & r4_0_))

	.dataa(r3_0_),
	.datab(r4_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(add1_add8_4_anx37973z1),
	.cout(add1_add8_4_anx44952z22));
// synopsys translate_off
defparam add1_add8_4_aix44952z52931.lut_mask = 16'h6688;
defparam add1_add8_4_aix44952z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y30_N14
cycloneii_lcell_comb add1_add8_4_aix44952z52930(
// Equation(s):
// add1_add8_4_anx38970z1 = (r4_1_ & ((r3_1_ & (add1_add8_4_anx44952z22 & VCC)) # (!r3_1_ & (!add1_add8_4_anx44952z22)))) # (!r4_1_ & ((r3_1_ & (!add1_add8_4_anx44952z22)) # (!r3_1_ & ((add1_add8_4_anx44952z22) # (GND)))))
// add1_add8_4_anx44952z19 = CARRY((r4_1_ & (!r3_1_ & !add1_add8_4_anx44952z22)) # (!r4_1_ & ((!add1_add8_4_anx44952z22) # (!r3_1_))))

	.dataa(r4_1_),
	.datab(r3_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(add1_add8_4_anx44952z22),
	.combout(add1_add8_4_anx38970z1),
	.cout(add1_add8_4_anx44952z19));
// synopsys translate_off
defparam add1_add8_4_aix44952z52930.lut_mask = 16'h9617;
defparam add1_add8_4_aix44952z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X49_Y30_N16
cycloneii_lcell_comb add1_add8_4_aix44952z52929(
// Equation(s):
// add1_add8_4_anx39967z1 = ((r4_2_ $ (r3_2_ $ (!add1_add8_4_anx44952z19)))) # (GND)
// add1_add8_4_anx44952z16 = CARRY((r4_2_ & ((r3_2_) # (!add1_add8_4_anx44952z19))) # (!r4_2_ & (r3_2_ & !add1_add8_4_anx44952z19)))

	.dataa(r4_2_),
	.datab(r3_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(add1_add8_4_anx44952z19),
	.combout(add1_add8_4_anx39967z1),
	.cout(add1_add8_4_anx44952z16));
// synopsys translate_off
defparam add1_add8_4_aix44952z52929.lut_mask = 16'h698E;
defparam add1_add8_4_aix44952z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X49_Y30_N18
cycloneii_lcell_comb add1_add8_4_aix44952z52928(
// Equation(s):
// add1_add8_4_anx40964z1 = (r4_3_ & ((r3_3_ & (add1_add8_4_anx44952z16 & VCC)) # (!r3_3_ & (!add1_add8_4_anx44952z16)))) # (!r4_3_ & ((r3_3_ & (!add1_add8_4_anx44952z16)) # (!r3_3_ & ((add1_add8_4_anx44952z16) # (GND)))))
// add1_add8_4_anx44952z13 = CARRY((r4_3_ & (!r3_3_ & !add1_add8_4_anx44952z16)) # (!r4_3_ & ((!add1_add8_4_anx44952z16) # (!r3_3_))))

	.dataa(r4_3_),
	.datab(r3_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(add1_add8_4_anx44952z16),
	.combout(add1_add8_4_anx40964z1),
	.cout(add1_add8_4_anx44952z13));
// synopsys translate_off
defparam add1_add8_4_aix44952z52928.lut_mask = 16'h9617;
defparam add1_add8_4_aix44952z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X49_Y30_N20
cycloneii_lcell_comb add1_add8_4_aix44952z52927(
// Equation(s):
// add1_add8_4_anx41961z1 = ((r4_4_ $ (r3_4_ $ (!add1_add8_4_anx44952z13)))) # (GND)
// add1_add8_4_anx44952z10 = CARRY((r4_4_ & ((r3_4_) # (!add1_add8_4_anx44952z13))) # (!r4_4_ & (r3_4_ & !add1_add8_4_anx44952z13)))

	.dataa(r4_4_),
	.datab(r3_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(add1_add8_4_anx44952z13),
	.combout(add1_add8_4_anx41961z1),
	.cout(add1_add8_4_anx44952z10));
// synopsys translate_off
defparam add1_add8_4_aix44952z52927.lut_mask = 16'h698E;
defparam add1_add8_4_aix44952z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X49_Y30_N22
cycloneii_lcell_comb add1_add8_4_aix44952z52926(
// Equation(s):
// add1_add8_4_anx42958z1 = (r3_5_ & ((r4_5_ & (add1_add8_4_anx44952z10 & VCC)) # (!r4_5_ & (!add1_add8_4_anx44952z10)))) # (!r3_5_ & ((r4_5_ & (!add1_add8_4_anx44952z10)) # (!r4_5_ & ((add1_add8_4_anx44952z10) # (GND)))))
// add1_add8_4_anx44952z7 = CARRY((r3_5_ & (!r4_5_ & !add1_add8_4_anx44952z10)) # (!r3_5_ & ((!add1_add8_4_anx44952z10) # (!r4_5_))))

	.dataa(r3_5_),
	.datab(r4_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(add1_add8_4_anx44952z10),
	.combout(add1_add8_4_anx42958z1),
	.cout(add1_add8_4_anx44952z7));
// synopsys translate_off
defparam add1_add8_4_aix44952z52926.lut_mask = 16'h9617;
defparam add1_add8_4_aix44952z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X49_Y30_N24
cycloneii_lcell_comb add1_add8_4_aix44952z52925(
// Equation(s):
// add1_add8_4_anx43955z1 = ((r3_6_ $ (r4_6_ $ (!add1_add8_4_anx44952z7)))) # (GND)
// add1_add8_4_anx44952z4 = CARRY((r3_6_ & ((r4_6_) # (!add1_add8_4_anx44952z7))) # (!r3_6_ & (r4_6_ & !add1_add8_4_anx44952z7)))

	.dataa(r3_6_),
	.datab(r4_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(add1_add8_4_anx44952z7),
	.combout(add1_add8_4_anx43955z1),
	.cout(add1_add8_4_anx44952z4));
// synopsys translate_off
defparam add1_add8_4_aix44952z52925.lut_mask = 16'h698E;
defparam add1_add8_4_aix44952z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X49_Y30_N26
cycloneii_lcell_comb add1_add8_4_aix44952z52923(
// Equation(s):
// add1_add8_4_anx44952z1 = (r4_7_ & ((r3_7_ & (add1_add8_4_anx44952z4 & VCC)) # (!r3_7_ & (!add1_add8_4_anx44952z4)))) # (!r4_7_ & ((r3_7_ & (!add1_add8_4_anx44952z4)) # (!r3_7_ & ((add1_add8_4_anx44952z4) # (GND)))))
// add1_add8_4_anx23445z2 = CARRY((r4_7_ & (!r3_7_ & !add1_add8_4_anx44952z4)) # (!r4_7_ & ((!add1_add8_4_anx44952z4) # (!r3_7_))))

	.dataa(r4_7_),
	.datab(r3_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(add1_add8_4_anx44952z4),
	.combout(add1_add8_4_anx44952z1),
	.cout(add1_add8_4_anx23445z2));
// synopsys translate_off
defparam add1_add8_4_aix44952z52923.lut_mask = 16'h9617;
defparam add1_add8_4_aix44952z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X49_Y30_N28
cycloneii_lcell_comb add1_add8_4_aix23445z52923(
// Equation(s):
// add1_add8_4_anx23445z1 = !add1_add8_4_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(add1_add8_4_anx23445z2),
	.combout(add1_add8_4_anx23445z1),
	.cout());
// synopsys translate_off
defparam add1_add8_4_aix23445z52923.lut_mask = 16'h0F0F;
defparam add1_add8_4_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X49_Y30_N29
cycloneii_lcell_ff reg_r7_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add1_add8_4_anx23445z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r7_8_));

// Location: LCFF_X49_Y30_N27
cycloneii_lcell_ff reg_r7_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add1_add8_4_anx44952z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r7_7_));

// Location: LCFF_X49_Y30_N15
cycloneii_lcell_ff reg_r7_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add1_add8_4_anx38970z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r7_1_));

// Location: LCFF_X49_Y30_N13
cycloneii_lcell_ff reg_r7_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add1_add8_4_anx37973z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r7_0_));

// Location: LCCOMB_X45_Y30_N10
cycloneii_lcell_comb add3_add11_0_aix62798z52934(
// Equation(s):
// add3_add11_0_anx37973z1 = (r8_0_ & (r7_0_ $ (VCC))) # (!r8_0_ & (r7_0_ & VCC))
// add3_add11_0_anx62798z29 = CARRY((r8_0_ & r7_0_))

	.dataa(r8_0_),
	.datab(r7_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(add3_add11_0_anx37973z1),
	.cout(add3_add11_0_anx62798z29));
// synopsys translate_off
defparam add3_add11_0_aix62798z52934.lut_mask = 16'h6688;
defparam add3_add11_0_aix62798z52934.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y30_N12
cycloneii_lcell_comb add3_add11_0_aix62798z52933(
// Equation(s):
// add3_add11_0_anx38970z1 = (r8_1_ & ((r7_1_ & (add3_add11_0_anx62798z29 & VCC)) # (!r7_1_ & (!add3_add11_0_anx62798z29)))) # (!r8_1_ & ((r7_1_ & (!add3_add11_0_anx62798z29)) # (!r7_1_ & ((add3_add11_0_anx62798z29) # (GND)))))
// add3_add11_0_anx62798z26 = CARRY((r8_1_ & (!r7_1_ & !add3_add11_0_anx62798z29)) # (!r8_1_ & ((!add3_add11_0_anx62798z29) # (!r7_1_))))

	.dataa(r8_1_),
	.datab(r7_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(add3_add11_0_anx62798z29),
	.combout(add3_add11_0_anx38970z1),
	.cout(add3_add11_0_anx62798z26));
// synopsys translate_off
defparam add3_add11_0_aix62798z52933.lut_mask = 16'h9617;
defparam add3_add11_0_aix62798z52933.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y30_N14
cycloneii_lcell_comb add3_add11_0_aix62798z52932(
// Equation(s):
// add3_add11_0_anx39967z1 = ((r7_2_ $ (r8_2_ $ (!add3_add11_0_anx62798z26)))) # (GND)
// add3_add11_0_anx62798z23 = CARRY((r7_2_ & ((r8_2_) # (!add3_add11_0_anx62798z26))) # (!r7_2_ & (r8_2_ & !add3_add11_0_anx62798z26)))

	.dataa(r7_2_),
	.datab(r8_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(add3_add11_0_anx62798z26),
	.combout(add3_add11_0_anx39967z1),
	.cout(add3_add11_0_anx62798z23));
// synopsys translate_off
defparam add3_add11_0_aix62798z52932.lut_mask = 16'h698E;
defparam add3_add11_0_aix62798z52932.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X49_Y30_N17
cycloneii_lcell_ff reg_r7_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add1_add8_4_anx39967z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r7_2_));

// Location: LCFF_X45_Y30_N15
cycloneii_lcell_ff reg_r8_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add3_add11_0_anx39967z1),
	.sdata(r7_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_2_),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r8_2_));

// Location: LCCOMB_X45_Y30_N16
cycloneii_lcell_comb add3_add11_0_aix62798z52931(
// Equation(s):
// add3_add11_0_anx40964z1 = (r7_3_ & ((r8_3_ & (add3_add11_0_anx62798z23 & VCC)) # (!r8_3_ & (!add3_add11_0_anx62798z23)))) # (!r7_3_ & ((r8_3_ & (!add3_add11_0_anx62798z23)) # (!r8_3_ & ((add3_add11_0_anx62798z23) # (GND)))))
// add3_add11_0_anx62798z20 = CARRY((r7_3_ & (!r8_3_ & !add3_add11_0_anx62798z23)) # (!r7_3_ & ((!add3_add11_0_anx62798z23) # (!r8_3_))))

	.dataa(r7_3_),
	.datab(r8_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(add3_add11_0_anx62798z23),
	.combout(add3_add11_0_anx40964z1),
	.cout(add3_add11_0_anx62798z20));
// synopsys translate_off
defparam add3_add11_0_aix62798z52931.lut_mask = 16'h9617;
defparam add3_add11_0_aix62798z52931.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X49_Y30_N19
cycloneii_lcell_ff reg_r7_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add1_add8_4_anx40964z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r7_3_));

// Location: LCFF_X45_Y30_N17
cycloneii_lcell_ff reg_r8_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add3_add11_0_anx40964z1),
	.sdata(r7_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_2_),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r8_3_));

// Location: LCCOMB_X45_Y30_N18
cycloneii_lcell_comb add3_add11_0_aix62798z52930(
// Equation(s):
// add3_add11_0_anx41961z1 = ((r7_4_ $ (r8_4_ $ (!add3_add11_0_anx62798z20)))) # (GND)
// add3_add11_0_anx62798z17 = CARRY((r7_4_ & ((r8_4_) # (!add3_add11_0_anx62798z20))) # (!r7_4_ & (r8_4_ & !add3_add11_0_anx62798z20)))

	.dataa(r7_4_),
	.datab(r8_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(add3_add11_0_anx62798z20),
	.combout(add3_add11_0_anx41961z1),
	.cout(add3_add11_0_anx62798z17));
// synopsys translate_off
defparam add3_add11_0_aix62798z52930.lut_mask = 16'h698E;
defparam add3_add11_0_aix62798z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X49_Y30_N21
cycloneii_lcell_ff reg_r7_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add1_add8_4_anx41961z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r7_4_));

// Location: LCFF_X45_Y30_N19
cycloneii_lcell_ff reg_r8_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add3_add11_0_anx41961z1),
	.sdata(r7_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_2_),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r8_4_));

// Location: LCCOMB_X45_Y30_N20
cycloneii_lcell_comb add3_add11_0_aix62798z52929(
// Equation(s):
// add3_add11_0_anx42958z1 = (r7_5_ & ((r8_5_ & (add3_add11_0_anx62798z17 & VCC)) # (!r8_5_ & (!add3_add11_0_anx62798z17)))) # (!r7_5_ & ((r8_5_ & (!add3_add11_0_anx62798z17)) # (!r8_5_ & ((add3_add11_0_anx62798z17) # (GND)))))
// add3_add11_0_anx62798z14 = CARRY((r7_5_ & (!r8_5_ & !add3_add11_0_anx62798z17)) # (!r7_5_ & ((!add3_add11_0_anx62798z17) # (!r8_5_))))

	.dataa(r7_5_),
	.datab(r8_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(add3_add11_0_anx62798z17),
	.combout(add3_add11_0_anx42958z1),
	.cout(add3_add11_0_anx62798z14));
// synopsys translate_off
defparam add3_add11_0_aix62798z52929.lut_mask = 16'h9617;
defparam add3_add11_0_aix62798z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X49_Y30_N23
cycloneii_lcell_ff reg_r7_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add1_add8_4_anx42958z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r7_5_));

// Location: LCFF_X45_Y30_N21
cycloneii_lcell_ff reg_r8_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add3_add11_0_anx42958z1),
	.sdata(r7_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_2_),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r8_5_));

// Location: LCCOMB_X45_Y30_N22
cycloneii_lcell_comb add3_add11_0_aix62798z52928(
// Equation(s):
// add3_add11_0_anx43955z1 = ((r7_6_ $ (r8_6_ $ (!add3_add11_0_anx62798z14)))) # (GND)
// add3_add11_0_anx62798z11 = CARRY((r7_6_ & ((r8_6_) # (!add3_add11_0_anx62798z14))) # (!r7_6_ & (r8_6_ & !add3_add11_0_anx62798z14)))

	.dataa(r7_6_),
	.datab(r8_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(add3_add11_0_anx62798z14),
	.combout(add3_add11_0_anx43955z1),
	.cout(add3_add11_0_anx62798z11));
// synopsys translate_off
defparam add3_add11_0_aix62798z52928.lut_mask = 16'h698E;
defparam add3_add11_0_aix62798z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X49_Y30_N25
cycloneii_lcell_ff reg_r7_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add1_add8_4_anx43955z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r7_6_));

// Location: LCFF_X45_Y30_N23
cycloneii_lcell_ff reg_r8_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add3_add11_0_anx43955z1),
	.sdata(r7_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_2_),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r8_6_));

// Location: LCCOMB_X45_Y30_N24
cycloneii_lcell_comb add3_add11_0_aix62798z52927(
// Equation(s):
// add3_add11_0_anx44952z1 = (r8_7_ & ((r7_7_ & (add3_add11_0_anx62798z11 & VCC)) # (!r7_7_ & (!add3_add11_0_anx62798z11)))) # (!r8_7_ & ((r7_7_ & (!add3_add11_0_anx62798z11)) # (!r7_7_ & ((add3_add11_0_anx62798z11) # (GND)))))
// add3_add11_0_anx62798z8 = CARRY((r8_7_ & (!r7_7_ & !add3_add11_0_anx62798z11)) # (!r8_7_ & ((!add3_add11_0_anx62798z11) # (!r7_7_))))

	.dataa(r8_7_),
	.datab(r7_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(add3_add11_0_anx62798z11),
	.combout(add3_add11_0_anx44952z1),
	.cout(add3_add11_0_anx62798z8));
// synopsys translate_off
defparam add3_add11_0_aix62798z52927.lut_mask = 16'h9617;
defparam add3_add11_0_aix62798z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y30_N10
cycloneii_lcell_comb r13_9__afeeder(
// Equation(s):
// r13_9__afeeder_combout = add3_add11_0_anx46946z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(add3_add11_0_anx46946z1),
	.cin(gnd),
	.combout(r13_9__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r13_9__afeeder.lut_mask = 16'hFF00;
defparam r13_9__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y30_N11
cycloneii_lcell_ff reg_r13_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r13_9__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r13_9_));

// Location: LCCOMB_X44_Y30_N20
cycloneii_lcell_comb r13_7__afeeder(
// Equation(s):
// r13_7__afeeder_combout = add3_add11_0_anx44952z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(add3_add11_0_anx44952z1),
	.cin(gnd),
	.combout(r13_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r13_7__afeeder.lut_mask = 16'hFF00;
defparam r13_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y30_N21
cycloneii_lcell_ff reg_r13_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r13_7__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r13_7_));

// Location: LCCOMB_X44_Y30_N22
cycloneii_lcell_comb r13_6__afeeder(
// Equation(s):
// r13_6__afeeder_combout = add3_add11_0_anx43955z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(add3_add11_0_anx43955z1),
	.cin(gnd),
	.combout(r13_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r13_6__afeeder.lut_mask = 16'hFF00;
defparam r13_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y30_N23
cycloneii_lcell_ff reg_r13_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r13_6__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r13_6_));

// Location: LCCOMB_X44_Y29_N0
cycloneii_lcell_comb r13_4__afeeder(
// Equation(s):
// r13_4__afeeder_combout = add3_add11_0_anx41961z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(add3_add11_0_anx41961z1),
	.cin(gnd),
	.combout(r13_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r13_4__afeeder.lut_mask = 16'hFF00;
defparam r13_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y29_N1
cycloneii_lcell_ff reg_r13_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r13_4__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r13_4_));

// Location: LCCOMB_X44_Y29_N28
cycloneii_lcell_comb r13_2__afeeder(
// Equation(s):
// r13_2__afeeder_combout = add3_add11_0_anx39967z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(add3_add11_0_anx39967z1),
	.cin(gnd),
	.combout(r13_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r13_2__afeeder.lut_mask = 16'hFF00;
defparam r13_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y29_N29
cycloneii_lcell_ff reg_r13_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r13_2__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r13_2_));

// Location: LCCOMB_X44_Y29_N30
cycloneii_lcell_comb r13_1__afeeder(
// Equation(s):
// r13_1__afeeder_combout = add3_add11_0_anx38970z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(add3_add11_0_anx38970z1),
	.cin(gnd),
	.combout(r13_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r13_1__afeeder.lut_mask = 16'hFF00;
defparam r13_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y29_N31
cycloneii_lcell_ff reg_r13_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r13_1__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r13_1_));

// Location: LCCOMB_X44_Y30_N26
cycloneii_lcell_comb r13_0__afeeder(
// Equation(s):
// r13_0__afeeder_combout = add3_add11_0_anx37973z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(add3_add11_0_anx37973z1),
	.cin(gnd),
	.combout(r13_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r13_0__afeeder.lut_mask = 16'hFF00;
defparam r13_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y30_N27
cycloneii_lcell_ff reg_r13_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r13_0__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r13_0_));

// Location: LCCOMB_X44_Y29_N2
cycloneii_lcell_comb add4_add11_6_aix62798z52934(
// Equation(s):
// add4_add11_6_anx37973z1 = (r13_1_ & (r13_0_ $ (VCC))) # (!r13_1_ & (r13_0_ & VCC))
// add4_add11_6_anx62798z21 = CARRY((r13_1_ & r13_0_))

	.dataa(r13_1_),
	.datab(r13_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(add4_add11_6_anx37973z1),
	.cout(add4_add11_6_anx62798z21));
// synopsys translate_off
defparam add4_add11_6_aix62798z52934.lut_mask = 16'h6688;
defparam add4_add11_6_aix62798z52934.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y29_N4
cycloneii_lcell_comb add4_add11_6_aix62798z52933(
// Equation(s):
// add4_add11_6_anx38970z1 = (r13_2_ & ((r13_1_ & (add4_add11_6_anx62798z21 & VCC)) # (!r13_1_ & (!add4_add11_6_anx62798z21)))) # (!r13_2_ & ((r13_1_ & (!add4_add11_6_anx62798z21)) # (!r13_1_ & ((add4_add11_6_anx62798z21) # (GND)))))
// add4_add11_6_anx62798z19 = CARRY((r13_2_ & (!r13_1_ & !add4_add11_6_anx62798z21)) # (!r13_2_ & ((!add4_add11_6_anx62798z21) # (!r13_1_))))

	.dataa(r13_2_),
	.datab(r13_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(add4_add11_6_anx62798z21),
	.combout(add4_add11_6_anx38970z1),
	.cout(add4_add11_6_anx62798z19));
// synopsys translate_off
defparam add4_add11_6_aix62798z52933.lut_mask = 16'h9617;
defparam add4_add11_6_aix62798z52933.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y29_N6
cycloneii_lcell_comb add4_add11_6_aix62798z52932(
// Equation(s):
// add4_add11_6_anx39967z1 = ((r13_3_ $ (r13_2_ $ (!add4_add11_6_anx62798z19)))) # (GND)
// add4_add11_6_anx62798z17 = CARRY((r13_3_ & ((r13_2_) # (!add4_add11_6_anx62798z19))) # (!r13_3_ & (r13_2_ & !add4_add11_6_anx62798z19)))

	.dataa(r13_3_),
	.datab(r13_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(add4_add11_6_anx62798z19),
	.combout(add4_add11_6_anx39967z1),
	.cout(add4_add11_6_anx62798z17));
// synopsys translate_off
defparam add4_add11_6_aix62798z52932.lut_mask = 16'h698E;
defparam add4_add11_6_aix62798z52932.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y29_N10
cycloneii_lcell_comb add4_add11_6_aix62798z52930(
// Equation(s):
// add4_add11_6_anx41961z1 = ((r13_5_ $ (r13_4_ $ (!add4_add11_6_anx62798z15)))) # (GND)
// add4_add11_6_anx62798z13 = CARRY((r13_5_ & ((r13_4_) # (!add4_add11_6_anx62798z15))) # (!r13_5_ & (r13_4_ & !add4_add11_6_anx62798z15)))

	.dataa(r13_5_),
	.datab(r13_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(add4_add11_6_anx62798z15),
	.combout(add4_add11_6_anx41961z1),
	.cout(add4_add11_6_anx62798z13));
// synopsys translate_off
defparam add4_add11_6_aix62798z52930.lut_mask = 16'h698E;
defparam add4_add11_6_aix62798z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y29_N16
cycloneii_lcell_comb add4_add11_6_aix62798z52927(
// Equation(s):
// add4_add11_6_anx44952z1 = (r13_8_ & ((r13_7_ & (add4_add11_6_anx62798z9 & VCC)) # (!r13_7_ & (!add4_add11_6_anx62798z9)))) # (!r13_8_ & ((r13_7_ & (!add4_add11_6_anx62798z9)) # (!r13_7_ & ((add4_add11_6_anx62798z9) # (GND)))))
// add4_add11_6_anx62798z7 = CARRY((r13_8_ & (!r13_7_ & !add4_add11_6_anx62798z9)) # (!r13_8_ & ((!add4_add11_6_anx62798z9) # (!r13_7_))))

	.dataa(r13_8_),
	.datab(r13_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(add4_add11_6_anx62798z9),
	.combout(add4_add11_6_anx44952z1),
	.cout(add4_add11_6_anx62798z7));
// synopsys translate_off
defparam add4_add11_6_aix62798z52927.lut_mask = 16'h9617;
defparam add4_add11_6_aix62798z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y29_N18
cycloneii_lcell_comb add4_add11_6_aix62798z52926(
// Equation(s):
// add4_add11_6_anx45949z1 = ((r13_8_ $ (r13_9_ $ (!add4_add11_6_anx62798z7)))) # (GND)
// add4_add11_6_anx62798z5 = CARRY((r13_8_ & ((r13_9_) # (!add4_add11_6_anx62798z7))) # (!r13_8_ & (r13_9_ & !add4_add11_6_anx62798z7)))

	.dataa(r13_8_),
	.datab(r13_9_),
	.datac(vcc),
	.datad(vcc),
	.cin(add4_add11_6_anx62798z7),
	.combout(add4_add11_6_anx45949z1),
	.cout(add4_add11_6_anx62798z5));
// synopsys translate_off
defparam add4_add11_6_aix62798z52926.lut_mask = 16'h698E;
defparam add4_add11_6_aix62798z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y29_N24
cycloneii_lcell_comb add4_add11_6_aix23445z52923(
// Equation(s):
// add4_add11_6_anx23445z1 = add4_add11_6_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(add4_add11_6_anx23445z2),
	.combout(add4_add11_6_anx23445z1),
	.cout());
// synopsys translate_off
defparam add4_add11_6_aix23445z52923.lut_mask = 16'hF0F0;
defparam add4_add11_6_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X44_Y29_N25
cycloneii_lcell_ff reg_r15_12_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add4_add11_6_anx23445z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r15_12_));

// Location: LCCOMB_X51_Y31_N30
cycloneii_lcell_comb e_6__afeeder(
// Equation(s):
// e_6__afeeder_combout = i_pixel_acombout[6]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(i_pixel_acombout[6]),
	.cin(gnd),
	.combout(e_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam e_6__afeeder.lut_mask = 16'hFF00;
defparam e_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y31_N31
cycloneii_lcell_ff reg_in_i_pixel_ibuf_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(e_6__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(e_6_));

// Location: LCFF_X47_Y31_N19
cycloneii_lcell_ff reg_f_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(e_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_6_));

// Location: LCFF_X47_Y31_N17
cycloneii_lcell_ff reg_i_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(d_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_6_));

// Location: LCFF_X47_Y31_N13
cycloneii_lcell_ff reg_h_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(h_6_));

// Location: LCCOMB_X47_Y31_N12
cycloneii_lcell_comb ix31640z52924(
// Equation(s):
// nx31640z2 = (v_1_) # ((v_2_ & ((h_6_))) # (!v_2_ & (b_6_)))

	.dataa(v_1_),
	.datab(b_6_),
	.datac(h_6_),
	.datad(v_2_),
	.cin(gnd),
	.combout(nx31640z2),
	.cout());
// synopsys translate_off
defparam ix31640z52924.lut_mask = 16'hFAEE;
defparam ix31640z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y31_N28
cycloneii_lcell_comb ix31640z52923(
// Equation(s):
// nx31640z1 = (nx31640z2 & ((f_6_) # (!v_1_)))

	.dataa(v_1_),
	.datab(f_6_),
	.datac(vcc),
	.datad(nx31640z2),
	.cin(gnd),
	.combout(nx31640z1),
	.cout());
// synopsys translate_off
defparam ix31640z52923.lut_mask = 16'hDD00;
defparam ix31640z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y31_N29
cycloneii_lcell_ff reg_r2_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx31640z1),
	.sdata(d_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_6_));

// Location: LCCOMB_X48_Y28_N26
cycloneii_lcell_comb r5_6__afeeder(
// Equation(s):
// r5_6__afeeder_combout = r2_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_6_),
	.cin(gnd),
	.combout(r5_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_6__afeeder.lut_mask = 16'hFF00;
defparam r5_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y31_N11
cycloneii_lcell_ff reg_g_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(f_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(g_6_));

// Location: LCCOMB_X47_Y31_N10
cycloneii_lcell_comb ix40059z52924(
// Equation(s):
// nx40059z2 = (v_1_) # ((v_2_ & (e_6_)) # (!v_2_ & ((g_6_))))

	.dataa(v_1_),
	.datab(e_6_),
	.datac(g_6_),
	.datad(v_2_),
	.cin(gnd),
	.combout(nx40059z2),
	.cout());
// synopsys translate_off
defparam ix40059z52924.lut_mask = 16'hEEFA;
defparam ix40059z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y31_N22
cycloneii_lcell_comb ix40059z52923(
// Equation(s):
// nx40059z1 = (nx40059z2 & ((c_6_) # (!v_1_)))

	.dataa(v_1_),
	.datab(c_6_),
	.datac(vcc),
	.datad(nx40059z2),
	.cin(gnd),
	.combout(nx40059z1),
	.cout());
// synopsys translate_off
defparam ix40059z52923.lut_mask = 16'hDD00;
defparam ix40059z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y31_N16
cycloneii_lcell_comb a_6__afeeder(
// Equation(s):
// a_6__afeeder_combout = b_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(b_6_),
	.cin(gnd),
	.combout(a_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam a_6__afeeder.lut_mask = 16'hFF00;
defparam a_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y31_N17
cycloneii_lcell_ff reg_a_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(a_6__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(a_6_));

// Location: LCFF_X48_Y31_N23
cycloneii_lcell_ff reg_r1_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx40059z1),
	.sdata(a_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r1_6_));

// Location: LCCOMB_X51_Y30_N16
cycloneii_lcell_comb ix36625z52923(
// Equation(s):
// nx36625z1 = (t_0_ & ((m1_mem_aix64056z29481_aauto_generated_aq_a[7]))) # (!t_0_ & (m3_mem_aix64056z29483_aauto_generated_aq_a[7]))

	.dataa(m3_mem_aix64056z29483_aauto_generated_aq_a[7]),
	.datab(t_0_),
	.datac(vcc),
	.datad(m1_mem_aix64056z29481_aauto_generated_aq_a[7]),
	.cin(gnd),
	.combout(nx36625z1),
	.cout());
// synopsys translate_off
defparam ix36625z52923.lut_mask = 16'hEE22;
defparam ix36625z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y30_N17
cycloneii_lcell_ff reg_d_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx36625z1),
	.sdata(m2_mem_aix64056z29482_aauto_generated_aq_a[7]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(t_1_),
	.ena(nx20492z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(d_7_));

// Location: LCFF_X47_Y31_N29
cycloneii_lcell_ff reg_i_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(d_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_7_));

// Location: LCFF_X47_Y31_N3
cycloneii_lcell_ff reg_h_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(h_7_));

// Location: LCCOMB_X47_Y31_N2
cycloneii_lcell_comb ix32637z52924(
// Equation(s):
// nx32637z2 = (v_1_) # ((v_2_ & ((h_7_))) # (!v_2_ & (b_7_)))

	.dataa(v_1_),
	.datab(b_7_),
	.datac(h_7_),
	.datad(v_2_),
	.cin(gnd),
	.combout(nx32637z2),
	.cout());
// synopsys translate_off
defparam ix32637z52924.lut_mask = 16'hFAEE;
defparam ix32637z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y31_N24
cycloneii_lcell_comb ix32637z52923(
// Equation(s):
// nx32637z1 = (nx32637z2 & ((f_7_) # (!v_1_)))

	.dataa(v_1_),
	.datab(f_7_),
	.datac(vcc),
	.datad(nx32637z2),
	.cin(gnd),
	.combout(nx32637z1),
	.cout());
// synopsys translate_off
defparam ix32637z52923.lut_mask = 16'hDD00;
defparam ix32637z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y31_N25
cycloneii_lcell_ff reg_r2_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx32637z1),
	.sdata(d_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_7_));

// Location: LCCOMB_X47_Y31_N22
cycloneii_lcell_comb e_5__afeeder(
// Equation(s):
// e_5__afeeder_combout = i_pixel_acombout[5]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(i_pixel_acombout[5]),
	.cin(gnd),
	.combout(e_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam e_5__afeeder.lut_mask = 16'hFF00;
defparam e_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y31_N23
cycloneii_lcell_ff reg_in_i_pixel_ibuf_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(e_5__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(e_5_));

// Location: LCFF_X47_Y31_N25
cycloneii_lcell_ff reg_f_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(e_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_5_));

// Location: LCCOMB_X47_Y31_N4
cycloneii_lcell_comb i_5__afeeder(
// Equation(s):
// i_5__afeeder_combout = d_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(d_5_),
	.cin(gnd),
	.combout(i_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam i_5__afeeder.lut_mask = 16'hFF00;
defparam i_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y31_N5
cycloneii_lcell_ff reg_i_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(i_5__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_5_));

// Location: LCFF_X47_Y31_N15
cycloneii_lcell_ff reg_h_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(h_5_));

// Location: LCCOMB_X47_Y31_N14
cycloneii_lcell_comb ix30643z52924(
// Equation(s):
// nx30643z2 = (v_1_) # ((v_2_ & ((h_5_))) # (!v_2_ & (b_5_)))

	.dataa(v_1_),
	.datab(b_5_),
	.datac(h_5_),
	.datad(v_2_),
	.cin(gnd),
	.combout(nx30643z2),
	.cout());
// synopsys translate_off
defparam ix30643z52924.lut_mask = 16'hFAEE;
defparam ix30643z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y31_N24
cycloneii_lcell_comb ix30643z52923(
// Equation(s):
// nx30643z1 = (nx30643z2 & ((f_5_) # (!v_1_)))

	.dataa(v_1_),
	.datab(f_5_),
	.datac(vcc),
	.datad(nx30643z2),
	.cin(gnd),
	.combout(nx30643z1),
	.cout());
// synopsys translate_off
defparam ix30643z52923.lut_mask = 16'hDD00;
defparam ix30643z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y31_N25
cycloneii_lcell_ff reg_r2_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx30643z1),
	.sdata(d_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_5_));

// Location: LCCOMB_X49_Y31_N28
cycloneii_lcell_comb ix29646z52923(
// Equation(s):
// nx29646z1 = (nx29646z2 & ((f_4_) # (!v_1_)))

	.dataa(nx29646z2),
	.datab(f_4_),
	.datac(vcc),
	.datad(v_1_),
	.cin(gnd),
	.combout(nx29646z1),
	.cout());
// synopsys translate_off
defparam ix29646z52923.lut_mask = 16'h88AA;
defparam ix29646z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y30_N4
cycloneii_lcell_comb ix33634z52923(
// Equation(s):
// nx33634z1 = (t_0_ & ((m1_mem_aix64056z29481_aauto_generated_aq_a[4]))) # (!t_0_ & (m3_mem_aix64056z29483_aauto_generated_aq_a[4]))

	.dataa(m3_mem_aix64056z29483_aauto_generated_aq_a[4]),
	.datab(m1_mem_aix64056z29481_aauto_generated_aq_a[4]),
	.datac(vcc),
	.datad(t_0_),
	.cin(gnd),
	.combout(nx33634z1),
	.cout());
// synopsys translate_off
defparam ix33634z52923.lut_mask = 16'hCCAA;
defparam ix33634z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y30_N5
cycloneii_lcell_ff reg_d_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx33634z1),
	.sdata(m2_mem_aix64056z29482_aauto_generated_aq_a[4]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(t_1_),
	.ena(nx20492z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(d_4_));

// Location: LCFF_X49_Y31_N29
cycloneii_lcell_ff reg_r2_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx29646z1),
	.sdata(d_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_4_));

// Location: LCFF_X49_Y32_N9
cycloneii_lcell_ff reg_b_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(c_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_3_));

// Location: LCCOMB_X49_Y32_N8
cycloneii_lcell_comb ix28649z52924(
// Equation(s):
// nx28649z2 = (v_1_) # ((v_2_ & (h_3_)) # (!v_2_ & ((b_3_))))

	.dataa(h_3_),
	.datab(v_1_),
	.datac(b_3_),
	.datad(v_2_),
	.cin(gnd),
	.combout(nx28649z2),
	.cout());
// synopsys translate_off
defparam ix28649z52924.lut_mask = 16'hEEFC;
defparam ix28649z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y32_N27
cycloneii_lcell_ff reg_f_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(e_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_3_));

// Location: LCCOMB_X48_Y32_N24
cycloneii_lcell_comb ix28649z52923(
// Equation(s):
// nx28649z1 = (nx28649z2 & ((f_3_) # (!v_1_)))

	.dataa(v_1_),
	.datab(nx28649z2),
	.datac(vcc),
	.datad(f_3_),
	.cin(gnd),
	.combout(nx28649z1),
	.cout());
// synopsys translate_off
defparam ix28649z52923.lut_mask = 16'hCC44;
defparam ix28649z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y30_N8
cycloneii_lcell_comb ix32637z52926(
// Equation(s):
// nx32637z4 = (t_0_ & ((m1_mem_aix64056z29481_aauto_generated_aq_a[3]))) # (!t_0_ & (m3_mem_aix64056z29483_aauto_generated_aq_a[3]))

	.dataa(m3_mem_aix64056z29483_aauto_generated_aq_a[3]),
	.datab(t_0_),
	.datac(vcc),
	.datad(m1_mem_aix64056z29481_aauto_generated_aq_a[3]),
	.cin(gnd),
	.combout(nx32637z4),
	.cout());
// synopsys translate_off
defparam ix32637z52926.lut_mask = 16'hEE22;
defparam ix32637z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y30_N9
cycloneii_lcell_ff reg_d_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx32637z4),
	.sdata(m2_mem_aix64056z29482_aauto_generated_aq_a[3]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(t_1_),
	.ena(nx20492z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(d_3_));

// Location: LCFF_X48_Y32_N25
cycloneii_lcell_ff reg_r2_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx28649z1),
	.sdata(d_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_3_));

// Location: LCFF_X49_Y32_N1
cycloneii_lcell_ff reg_f_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(e_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_2_));

// Location: LCFF_X49_Y32_N11
cycloneii_lcell_ff reg_g_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(f_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(g_2_));

// Location: LCCOMB_X49_Y32_N10
cycloneii_lcell_comb ix36071z52924(
// Equation(s):
// nx36071z2 = (v_1_) # ((v_2_ & (e_2_)) # (!v_2_ & ((g_2_))))

	.dataa(e_2_),
	.datab(v_1_),
	.datac(g_2_),
	.datad(v_2_),
	.cin(gnd),
	.combout(nx36071z2),
	.cout());
// synopsys translate_off
defparam ix36071z52924.lut_mask = 16'hEEFC;
defparam ix36071z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y31_N2
cycloneii_lcell_comb ix36071z52923(
// Equation(s):
// nx36071z1 = (nx36071z2 & ((c_2_) # (!v_1_)))

	.dataa(v_1_),
	.datab(c_2_),
	.datac(vcc),
	.datad(nx36071z2),
	.cin(gnd),
	.combout(nx36071z1),
	.cout());
// synopsys translate_off
defparam ix36071z52923.lut_mask = 16'hDD00;
defparam ix36071z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y31_N12
cycloneii_lcell_comb b_2__afeeder(
// Equation(s):
// b_2__afeeder_combout = c_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(c_2_),
	.datad(vcc),
	.cin(gnd),
	.combout(b_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam b_2__afeeder.lut_mask = 16'hF0F0;
defparam b_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y31_N13
cycloneii_lcell_ff reg_b_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(b_2__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_2_));

// Location: LCCOMB_X51_Y31_N14
cycloneii_lcell_comb a_2__afeeder(
// Equation(s):
// a_2__afeeder_combout = b_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(b_2_),
	.cin(gnd),
	.combout(a_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam a_2__afeeder.lut_mask = 16'hFF00;
defparam a_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y31_N15
cycloneii_lcell_ff reg_a_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(a_2__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(a_2_));

// Location: LCFF_X48_Y31_N3
cycloneii_lcell_ff reg_r1_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx36071z1),
	.sdata(a_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r1_2_));

// Location: LCCOMB_X51_Y30_N0
cycloneii_lcell_comb ix30643z52926(
// Equation(s):
// nx30643z3 = (t_0_ & (m1_mem_aix64056z29481_aauto_generated_aq_a[1])) # (!t_0_ & ((m3_mem_aix64056z29483_aauto_generated_aq_a[1])))

	.dataa(t_0_),
	.datab(m1_mem_aix64056z29481_aauto_generated_aq_a[1]),
	.datac(vcc),
	.datad(m3_mem_aix64056z29483_aauto_generated_aq_a[1]),
	.cin(gnd),
	.combout(nx30643z3),
	.cout());
// synopsys translate_off
defparam ix30643z52926.lut_mask = 16'hDD88;
defparam ix30643z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y30_N1
cycloneii_lcell_ff reg_d_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx30643z3),
	.sdata(m2_mem_aix64056z29482_aauto_generated_aq_a[1]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(t_1_),
	.ena(nx20492z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(d_1_));

// Location: LCCOMB_X49_Y32_N16
cycloneii_lcell_comb i_1__afeeder(
// Equation(s):
// i_1__afeeder_combout = d_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(d_1_),
	.cin(gnd),
	.combout(i_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam i_1__afeeder.lut_mask = 16'hFF00;
defparam i_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y32_N17
cycloneii_lcell_ff reg_i_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(i_1__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_1_));

// Location: LCFF_X49_Y32_N29
cycloneii_lcell_ff reg_h_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(h_1_));

// Location: LCCOMB_X49_Y32_N28
cycloneii_lcell_comb ix26655z52924(
// Equation(s):
// nx26655z2 = (v_1_) # ((v_2_ & ((h_1_))) # (!v_2_ & (b_1_)))

	.dataa(b_1_),
	.datab(v_1_),
	.datac(h_1_),
	.datad(v_2_),
	.cin(gnd),
	.combout(nx26655z2),
	.cout());
// synopsys translate_off
defparam ix26655z52924.lut_mask = 16'hFCEE;
defparam ix26655z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y32_N4
cycloneii_lcell_comb ix26655z52923(
// Equation(s):
// nx26655z1 = (nx26655z2 & ((f_1_) # (!v_1_)))

	.dataa(v_1_),
	.datab(f_1_),
	.datac(vcc),
	.datad(nx26655z2),
	.cin(gnd),
	.combout(nx26655z1),
	.cout());
// synopsys translate_off
defparam ix26655z52923.lut_mask = 16'hDD00;
defparam ix26655z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y32_N5
cycloneii_lcell_ff reg_r2_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx26655z1),
	.sdata(d_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_1_));

// Location: LCCOMB_X50_Y31_N30
cycloneii_lcell_comb ix34077z52924(
// Equation(s):
// nx34077z2 = (v_1_) # ((v_2_ & (e_0_)) # (!v_2_ & ((g_0_))))

	.dataa(v_1_),
	.datab(e_0_),
	.datac(g_0_),
	.datad(v_2_),
	.cin(gnd),
	.combout(nx34077z2),
	.cout());
// synopsys translate_off
defparam ix34077z52924.lut_mask = 16'hEEFA;
defparam ix34077z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y31_N8
cycloneii_lcell_comb ix34077z52923(
// Equation(s):
// nx34077z1 = (nx34077z2 & ((c_0_) # (!v_1_)))

	.dataa(v_1_),
	.datab(c_0_),
	.datac(vcc),
	.datad(nx34077z2),
	.cin(gnd),
	.combout(nx34077z1),
	.cout());
// synopsys translate_off
defparam ix34077z52923.lut_mask = 16'hDD00;
defparam ix34077z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y31_N4
cycloneii_lcell_comb a_0__afeeder(
// Equation(s):
// a_0__afeeder_combout = b_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(b_0_),
	.cin(gnd),
	.combout(a_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam a_0__afeeder.lut_mask = 16'hFF00;
defparam a_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y31_N5
cycloneii_lcell_ff reg_a_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(a_0__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(a_0_));

// Location: LCFF_X49_Y31_N9
cycloneii_lcell_ff reg_r1_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx34077z1),
	.sdata(a_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r1_0_));

// Location: LCCOMB_X48_Y28_N6
cycloneii_lcell_comb sub1_sub8_1_aix23445z52931(
// Equation(s):
// sub1_sub8_1_anx23445z22 = CARRY((r1_0_) # (!r2_0_))

	.dataa(r2_0_),
	.datab(r1_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(sub1_sub8_1_anx23445z22));
// synopsys translate_off
defparam sub1_sub8_1_aix23445z52931.lut_mask = 16'h00DD;
defparam sub1_sub8_1_aix23445z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y28_N8
cycloneii_lcell_comb sub1_sub8_1_aix23445z52930(
// Equation(s):
// sub1_sub8_1_anx23445z19 = CARRY((r1_1_ & (r2_1_ & !sub1_sub8_1_anx23445z22)) # (!r1_1_ & ((r2_1_) # (!sub1_sub8_1_anx23445z22))))

	.dataa(r1_1_),
	.datab(r2_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(sub1_sub8_1_anx23445z22),
	.combout(),
	.cout(sub1_sub8_1_anx23445z19));
// synopsys translate_off
defparam sub1_sub8_1_aix23445z52930.lut_mask = 16'h004D;
defparam sub1_sub8_1_aix23445z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y28_N10
cycloneii_lcell_comb sub1_sub8_1_aix23445z52929(
// Equation(s):
// sub1_sub8_1_anx23445z16 = CARRY((r2_2_ & (r1_2_ & !sub1_sub8_1_anx23445z19)) # (!r2_2_ & ((r1_2_) # (!sub1_sub8_1_anx23445z19))))

	.dataa(r2_2_),
	.datab(r1_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(sub1_sub8_1_anx23445z19),
	.combout(),
	.cout(sub1_sub8_1_anx23445z16));
// synopsys translate_off
defparam sub1_sub8_1_aix23445z52929.lut_mask = 16'h004D;
defparam sub1_sub8_1_aix23445z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y28_N12
cycloneii_lcell_comb sub1_sub8_1_aix23445z52928(
// Equation(s):
// sub1_sub8_1_anx23445z13 = CARRY((r1_3_ & (r2_3_ & !sub1_sub8_1_anx23445z16)) # (!r1_3_ & ((r2_3_) # (!sub1_sub8_1_anx23445z16))))

	.dataa(r1_3_),
	.datab(r2_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(sub1_sub8_1_anx23445z16),
	.combout(),
	.cout(sub1_sub8_1_anx23445z13));
// synopsys translate_off
defparam sub1_sub8_1_aix23445z52928.lut_mask = 16'h004D;
defparam sub1_sub8_1_aix23445z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y28_N14
cycloneii_lcell_comb sub1_sub8_1_aix23445z52927(
// Equation(s):
// sub1_sub8_1_anx23445z10 = CARRY((r1_4_ & ((!sub1_sub8_1_anx23445z13) # (!r2_4_))) # (!r1_4_ & (!r2_4_ & !sub1_sub8_1_anx23445z13)))

	.dataa(r1_4_),
	.datab(r2_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(sub1_sub8_1_anx23445z13),
	.combout(),
	.cout(sub1_sub8_1_anx23445z10));
// synopsys translate_off
defparam sub1_sub8_1_aix23445z52927.lut_mask = 16'h002B;
defparam sub1_sub8_1_aix23445z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y28_N16
cycloneii_lcell_comb sub1_sub8_1_aix23445z52926(
// Equation(s):
// sub1_sub8_1_anx23445z7 = CARRY((r1_5_ & (r2_5_ & !sub1_sub8_1_anx23445z10)) # (!r1_5_ & ((r2_5_) # (!sub1_sub8_1_anx23445z10))))

	.dataa(r1_5_),
	.datab(r2_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(sub1_sub8_1_anx23445z10),
	.combout(),
	.cout(sub1_sub8_1_anx23445z7));
// synopsys translate_off
defparam sub1_sub8_1_aix23445z52926.lut_mask = 16'h004D;
defparam sub1_sub8_1_aix23445z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y28_N18
cycloneii_lcell_comb sub1_sub8_1_aix23445z52925(
// Equation(s):
// sub1_sub8_1_anx23445z4 = CARRY((r1_6_ & ((!sub1_sub8_1_anx23445z7) # (!r2_6_))) # (!r1_6_ & (!r2_6_ & !sub1_sub8_1_anx23445z7)))

	.dataa(r1_6_),
	.datab(r2_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(sub1_sub8_1_anx23445z7),
	.combout(),
	.cout(sub1_sub8_1_anx23445z4));
// synopsys translate_off
defparam sub1_sub8_1_aix23445z52925.lut_mask = 16'h002B;
defparam sub1_sub8_1_aix23445z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y28_N20
cycloneii_lcell_comb sub1_sub8_1_aix23445z52923(
// Equation(s):
// sub1_sub8_1_anx23445z1 = (r1_7_ & ((sub1_sub8_1_anx23445z4) # (!r2_7_))) # (!r1_7_ & (sub1_sub8_1_anx23445z4 & !r2_7_))

	.dataa(r1_7_),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_7_),
	.cin(sub1_sub8_1_anx23445z4),
	.combout(sub1_sub8_1_anx23445z1),
	.cout());
// synopsys translate_off
defparam sub1_sub8_1_aix23445z52923.lut_mask = 16'hA0FA;
defparam sub1_sub8_1_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X48_Y28_N27
cycloneii_lcell_ff reg_r5_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_6__afeeder_combout),
	.sdata(r1_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub1_sub8_1_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_6_));

// Location: LCCOMB_X48_Y28_N28
cycloneii_lcell_comb r5_5__afeeder(
// Equation(s):
// r5_5__afeeder_combout = r2_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_5_),
	.cin(gnd),
	.combout(r5_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_5__afeeder.lut_mask = 16'hFF00;
defparam r5_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y31_N10
cycloneii_lcell_comb ix39062z52923(
// Equation(s):
// nx39062z1 = (nx39062z2 & ((c_5_) # (!v_1_)))

	.dataa(nx39062z2),
	.datab(c_5_),
	.datac(vcc),
	.datad(v_1_),
	.cin(gnd),
	.combout(nx39062z1),
	.cout());
// synopsys translate_off
defparam ix39062z52923.lut_mask = 16'h88AA;
defparam ix39062z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y31_N20
cycloneii_lcell_comb a_5__afeeder(
// Equation(s):
// a_5__afeeder_combout = b_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(b_5_),
	.cin(gnd),
	.combout(a_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam a_5__afeeder.lut_mask = 16'hFF00;
defparam a_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y31_N21
cycloneii_lcell_ff reg_a_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(a_5__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(a_5_));

// Location: LCFF_X49_Y31_N11
cycloneii_lcell_ff reg_r1_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx39062z1),
	.sdata(a_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r1_5_));

// Location: LCFF_X48_Y28_N29
cycloneii_lcell_ff reg_r5_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_5__afeeder_combout),
	.sdata(r1_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub1_sub8_1_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_5_));

// Location: LCCOMB_X48_Y28_N30
cycloneii_lcell_comb r5_4__afeeder(
// Equation(s):
// r5_4__afeeder_combout = r2_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r2_4_),
	.cin(gnd),
	.combout(r5_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_4__afeeder.lut_mask = 16'hFF00;
defparam r5_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y31_N27
cycloneii_lcell_ff reg_g_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(f_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(g_4_));

// Location: LCCOMB_X47_Y31_N26
cycloneii_lcell_comb ix38065z52924(
// Equation(s):
// nx38065z2 = (v_1_) # ((v_2_ & (e_4_)) # (!v_2_ & ((g_4_))))

	.dataa(v_1_),
	.datab(e_4_),
	.datac(g_4_),
	.datad(v_2_),
	.cin(gnd),
	.combout(nx38065z2),
	.cout());
// synopsys translate_off
defparam ix38065z52924.lut_mask = 16'hEEFA;
defparam ix38065z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y31_N14
cycloneii_lcell_comb ix38065z52923(
// Equation(s):
// nx38065z1 = (nx38065z2 & ((c_4_) # (!v_1_)))

	.dataa(c_4_),
	.datab(nx38065z2),
	.datac(vcc),
	.datad(v_1_),
	.cin(gnd),
	.combout(nx38065z1),
	.cout());
// synopsys translate_off
defparam ix38065z52923.lut_mask = 16'h88CC;
defparam ix38065z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y31_N15
cycloneii_lcell_ff reg_r1_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx38065z1),
	.sdata(a_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r1_4_));

// Location: LCFF_X48_Y28_N31
cycloneii_lcell_ff reg_r5_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_4__afeeder_combout),
	.sdata(r1_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub1_sub8_1_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_4_));

// Location: LCCOMB_X48_Y28_N4
cycloneii_lcell_comb r5_1__afeeder(
// Equation(s):
// r5_1__afeeder_combout = r2_1_

	.dataa(vcc),
	.datab(r2_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r5_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r5_1__afeeder.lut_mask = 16'hCCCC;
defparam r5_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y32_N19
cycloneii_lcell_ff reg_g_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(f_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(g_1_));

// Location: LCCOMB_X49_Y32_N18
cycloneii_lcell_comb ix35074z52924(
// Equation(s):
// nx35074z2 = (v_1_) # ((v_2_ & ((e_1_))) # (!v_2_ & (g_1_)))

	.dataa(v_2_),
	.datab(v_1_),
	.datac(g_1_),
	.datad(e_1_),
	.cin(gnd),
	.combout(nx35074z2),
	.cout());
// synopsys translate_off
defparam ix35074z52924.lut_mask = 16'hFEDC;
defparam ix35074z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y32_N22
cycloneii_lcell_comb ix35074z52923(
// Equation(s):
// nx35074z1 = (nx35074z2 & ((c_1_) # (!v_1_)))

	.dataa(v_1_),
	.datab(nx35074z2),
	.datac(vcc),
	.datad(c_1_),
	.cin(gnd),
	.combout(nx35074z1),
	.cout());
// synopsys translate_off
defparam ix35074z52923.lut_mask = 16'hCC44;
defparam ix35074z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y32_N23
cycloneii_lcell_ff reg_r1_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx35074z1),
	.sdata(a_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_0_),
	.ena(nx32637z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r1_1_));

// Location: LCFF_X48_Y28_N5
cycloneii_lcell_ff reg_r5_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r5_1__afeeder_combout),
	.sdata(r1_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub1_sub8_1_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_1_));

// Location: LCCOMB_X47_Y30_N2
cycloneii_lcell_comb add2_add9_5_aix45949z52932(
// Equation(s):
// add2_add9_5_anx37973z1 = (r5_0_ & (r7_0_ $ (VCC))) # (!r5_0_ & (r7_0_ & VCC))
// add2_add9_5_anx45949z24 = CARRY((r5_0_ & r7_0_))

	.dataa(r5_0_),
	.datab(r7_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(add2_add9_5_anx37973z1),
	.cout(add2_add9_5_anx45949z24));
// synopsys translate_off
defparam add2_add9_5_aix45949z52932.lut_mask = 16'h6688;
defparam add2_add9_5_aix45949z52932.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y30_N4
cycloneii_lcell_comb add2_add9_5_aix45949z52931(
// Equation(s):
// add2_add9_5_anx38970z1 = (r7_1_ & ((r5_1_ & (add2_add9_5_anx45949z24 & VCC)) # (!r5_1_ & (!add2_add9_5_anx45949z24)))) # (!r7_1_ & ((r5_1_ & (!add2_add9_5_anx45949z24)) # (!r5_1_ & ((add2_add9_5_anx45949z24) # (GND)))))
// add2_add9_5_anx45949z21 = CARRY((r7_1_ & (!r5_1_ & !add2_add9_5_anx45949z24)) # (!r7_1_ & ((!add2_add9_5_anx45949z24) # (!r5_1_))))

	.dataa(r7_1_),
	.datab(r5_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(add2_add9_5_anx45949z24),
	.combout(add2_add9_5_anx38970z1),
	.cout(add2_add9_5_anx45949z21));
// synopsys translate_off
defparam add2_add9_5_aix45949z52931.lut_mask = 16'h9617;
defparam add2_add9_5_aix45949z52931.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y30_N6
cycloneii_lcell_comb add2_add9_5_aix45949z52930(
// Equation(s):
// add2_add9_5_anx39967z1 = ((r5_2_ $ (r7_2_ $ (!add2_add9_5_anx45949z21)))) # (GND)
// add2_add9_5_anx45949z18 = CARRY((r5_2_ & ((r7_2_) # (!add2_add9_5_anx45949z21))) # (!r5_2_ & (r7_2_ & !add2_add9_5_anx45949z21)))

	.dataa(r5_2_),
	.datab(r7_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(add2_add9_5_anx45949z21),
	.combout(add2_add9_5_anx39967z1),
	.cout(add2_add9_5_anx45949z18));
// synopsys translate_off
defparam add2_add9_5_aix45949z52930.lut_mask = 16'h698E;
defparam add2_add9_5_aix45949z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y30_N8
cycloneii_lcell_comb add2_add9_5_aix45949z52929(
// Equation(s):
// add2_add9_5_anx40964z1 = (r5_3_ & ((r7_3_ & (add2_add9_5_anx45949z18 & VCC)) # (!r7_3_ & (!add2_add9_5_anx45949z18)))) # (!r5_3_ & ((r7_3_ & (!add2_add9_5_anx45949z18)) # (!r7_3_ & ((add2_add9_5_anx45949z18) # (GND)))))
// add2_add9_5_anx45949z15 = CARRY((r5_3_ & (!r7_3_ & !add2_add9_5_anx45949z18)) # (!r5_3_ & ((!add2_add9_5_anx45949z18) # (!r7_3_))))

	.dataa(r5_3_),
	.datab(r7_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(add2_add9_5_anx45949z18),
	.combout(add2_add9_5_anx40964z1),
	.cout(add2_add9_5_anx45949z15));
// synopsys translate_off
defparam add2_add9_5_aix45949z52929.lut_mask = 16'h9617;
defparam add2_add9_5_aix45949z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y30_N10
cycloneii_lcell_comb add2_add9_5_aix45949z52928(
// Equation(s):
// add2_add9_5_anx41961z1 = ((r7_4_ $ (r5_4_ $ (!add2_add9_5_anx45949z15)))) # (GND)
// add2_add9_5_anx45949z12 = CARRY((r7_4_ & ((r5_4_) # (!add2_add9_5_anx45949z15))) # (!r7_4_ & (r5_4_ & !add2_add9_5_anx45949z15)))

	.dataa(r7_4_),
	.datab(r5_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(add2_add9_5_anx45949z15),
	.combout(add2_add9_5_anx41961z1),
	.cout(add2_add9_5_anx45949z12));
// synopsys translate_off
defparam add2_add9_5_aix45949z52928.lut_mask = 16'h698E;
defparam add2_add9_5_aix45949z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y30_N12
cycloneii_lcell_comb add2_add9_5_aix45949z52927(
// Equation(s):
// add2_add9_5_anx42958z1 = (r7_5_ & ((r5_5_ & (add2_add9_5_anx45949z12 & VCC)) # (!r5_5_ & (!add2_add9_5_anx45949z12)))) # (!r7_5_ & ((r5_5_ & (!add2_add9_5_anx45949z12)) # (!r5_5_ & ((add2_add9_5_anx45949z12) # (GND)))))
// add2_add9_5_anx45949z9 = CARRY((r7_5_ & (!r5_5_ & !add2_add9_5_anx45949z12)) # (!r7_5_ & ((!add2_add9_5_anx45949z12) # (!r5_5_))))

	.dataa(r7_5_),
	.datab(r5_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(add2_add9_5_anx45949z12),
	.combout(add2_add9_5_anx42958z1),
	.cout(add2_add9_5_anx45949z9));
// synopsys translate_off
defparam add2_add9_5_aix45949z52927.lut_mask = 16'h9617;
defparam add2_add9_5_aix45949z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y30_N14
cycloneii_lcell_comb add2_add9_5_aix45949z52926(
// Equation(s):
// add2_add9_5_anx43955z1 = ((r7_6_ $ (r5_6_ $ (!add2_add9_5_anx45949z9)))) # (GND)
// add2_add9_5_anx45949z6 = CARRY((r7_6_ & ((r5_6_) # (!add2_add9_5_anx45949z9))) # (!r7_6_ & (r5_6_ & !add2_add9_5_anx45949z9)))

	.dataa(r7_6_),
	.datab(r5_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(add2_add9_5_anx45949z9),
	.combout(add2_add9_5_anx43955z1),
	.cout(add2_add9_5_anx45949z6));
// synopsys translate_off
defparam add2_add9_5_aix45949z52926.lut_mask = 16'h698E;
defparam add2_add9_5_aix45949z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y30_N16
cycloneii_lcell_comb add2_add9_5_aix45949z52925(
// Equation(s):
// add2_add9_5_anx44952z1 = (r5_7_ & ((r7_7_ & (add2_add9_5_anx45949z6 & VCC)) # (!r7_7_ & (!add2_add9_5_anx45949z6)))) # (!r5_7_ & ((r7_7_ & (!add2_add9_5_anx45949z6)) # (!r7_7_ & ((add2_add9_5_anx45949z6) # (GND)))))
// add2_add9_5_anx45949z3 = CARRY((r5_7_ & (!r7_7_ & !add2_add9_5_anx45949z6)) # (!r5_7_ & ((!add2_add9_5_anx45949z6) # (!r7_7_))))

	.dataa(r5_7_),
	.datab(r7_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(add2_add9_5_anx45949z6),
	.combout(add2_add9_5_anx44952z1),
	.cout(add2_add9_5_anx45949z3));
// synopsys translate_off
defparam add2_add9_5_aix45949z52925.lut_mask = 16'h9617;
defparam add2_add9_5_aix45949z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y30_N18
cycloneii_lcell_comb add2_add9_5_aix45949z52923(
// Equation(s):
// add2_add9_5_anx45949z1 = (r7_8_ & (add2_add9_5_anx45949z3 $ (GND))) # (!r7_8_ & (!add2_add9_5_anx45949z3 & VCC))
// add2_add9_5_anx23445z2 = CARRY((r7_8_ & !add2_add9_5_anx45949z3))

	.dataa(vcc),
	.datab(r7_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(add2_add9_5_anx45949z3),
	.combout(add2_add9_5_anx45949z1),
	.cout(add2_add9_5_anx23445z2));
// synopsys translate_off
defparam add2_add9_5_aix45949z52923.lut_mask = 16'hC30C;
defparam add2_add9_5_aix45949z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X47_Y30_N19
cycloneii_lcell_ff reg_r11_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add2_add9_5_anx45949z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r11_8_));

// Location: LCCOMB_X48_Y30_N18
cycloneii_lcell_comb r12_8__afeeder(
// Equation(s):
// r12_8__afeeder_combout = r11_8_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r11_8_),
	.cin(gnd),
	.combout(r12_8__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r12_8__afeeder.lut_mask = 16'hFF00;
defparam r12_8__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y30_N20
cycloneii_lcell_comb add2_add9_5_aix23445z52923(
// Equation(s):
// add2_add9_5_anx23445z1 = add2_add9_5_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(add2_add9_5_anx23445z2),
	.combout(add2_add9_5_anx23445z1),
	.cout());
// synopsys translate_off
defparam add2_add9_5_aix23445z52923.lut_mask = 16'hF0F0;
defparam add2_add9_5_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X47_Y30_N21
cycloneii_lcell_ff reg_r11_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add2_add9_5_anx23445z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r11_9_));

// Location: LCCOMB_X47_Y30_N24
cycloneii_lcell_comb ix24302z52923(
// Equation(s):
// max2_9_ = (sub2_sub10_2_anx23445z1 & ((r9_9_))) # (!sub2_sub10_2_anx23445z1 & (r11_9_))

	.dataa(vcc),
	.datab(r11_9_),
	.datac(r9_9_),
	.datad(sub2_sub10_2_anx23445z1),
	.cin(gnd),
	.combout(max2_9_),
	.cout());
// synopsys translate_off
defparam ix24302z52923.lut_mask = 16'hF0CC;
defparam ix24302z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y31_N24
cycloneii_lcell_comb ix25299z52925(
// Equation(s):
// nx25299z2 = (v_4_ & !v_3_)

	.dataa(vcc),
	.datab(vcc),
	.datac(v_4_),
	.datad(v_3_),
	.cin(gnd),
	.combout(nx25299z2),
	.cout());
// synopsys translate_off
defparam ix25299z52925.lut_mask = 16'h00F0;
defparam ix25299z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y31_N16
cycloneii_lcell_comb ix25299z52924(
// Equation(s):
// nx25299z1 = (!v_1_ & (!v_0_ & ((v_2_) # (nx25299z2))))

	.dataa(v_2_),
	.datab(nx25299z2),
	.datac(v_1_),
	.datad(v_0_),
	.cin(gnd),
	.combout(nx25299z1),
	.cout());
// synopsys translate_off
defparam ix25299z52924.lut_mask = 16'h000E;
defparam ix25299z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y30_N25
cycloneii_lcell_ff reg_r9_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(max2_9_),
	.sdata(add2_add9_5_anx23445z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_2_),
	.ena(nx25299z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r9_9_));

// Location: LCFF_X47_Y30_N17
cycloneii_lcell_ff reg_r11_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add2_add9_5_anx44952z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r11_7_));

// Location: LCCOMB_X47_Y30_N0
cycloneii_lcell_comb ix26296z52923(
// Equation(s):
// max2_7_ = (sub2_sub10_2_anx23445z1 & ((r9_7_))) # (!sub2_sub10_2_anx23445z1 & (r11_7_))

	.dataa(vcc),
	.datab(r11_7_),
	.datac(r9_7_),
	.datad(sub2_sub10_2_anx23445z1),
	.cin(gnd),
	.combout(max2_7_),
	.cout());
// synopsys translate_off
defparam ix26296z52923.lut_mask = 16'hF0CC;
defparam ix26296z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y30_N1
cycloneii_lcell_ff reg_r9_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(max2_7_),
	.sdata(add2_add9_5_anx44952z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_2_),
	.ena(nx25299z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r9_7_));

// Location: LCFF_X47_Y30_N15
cycloneii_lcell_ff reg_r11_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add2_add9_5_anx43955z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r11_6_));

// Location: LCFF_X47_Y30_N13
cycloneii_lcell_ff reg_r11_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add2_add9_5_anx42958z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r11_5_));

// Location: LCFF_X47_Y30_N11
cycloneii_lcell_ff reg_r11_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add2_add9_5_anx41961z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r11_4_));

// Location: LCFF_X47_Y30_N9
cycloneii_lcell_ff reg_r11_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add2_add9_5_anx40964z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r11_3_));

// Location: LCCOMB_X45_Y30_N4
cycloneii_lcell_comb ix31281z52923(
// Equation(s):
// max2_2_ = (sub2_sub10_2_anx23445z1 & ((r9_2_))) # (!sub2_sub10_2_anx23445z1 & (r11_2_))

	.dataa(r11_2_),
	.datab(vcc),
	.datac(r9_2_),
	.datad(sub2_sub10_2_anx23445z1),
	.cin(gnd),
	.combout(max2_2_),
	.cout());
// synopsys translate_off
defparam ix31281z52923.lut_mask = 16'hF0AA;
defparam ix31281z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y30_N5
cycloneii_lcell_ff reg_r9_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(max2_2_),
	.sdata(add2_add9_5_anx39967z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_2_),
	.ena(nx25299z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r9_2_));

// Location: LCCOMB_X45_Y30_N6
cycloneii_lcell_comb ix32278z52923(
// Equation(s):
// max2_1_ = (sub2_sub10_2_anx23445z1 & ((r9_1_))) # (!sub2_sub10_2_anx23445z1 & (r11_1_))

	.dataa(r11_1_),
	.datab(vcc),
	.datac(r9_1_),
	.datad(sub2_sub10_2_anx23445z1),
	.cin(gnd),
	.combout(max2_1_),
	.cout());
// synopsys translate_off
defparam ix32278z52923.lut_mask = 16'hF0AA;
defparam ix32278z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y30_N7
cycloneii_lcell_ff reg_r9_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(max2_1_),
	.sdata(add2_add9_5_anx38970z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_2_),
	.ena(nx25299z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r9_1_));

// Location: LCFF_X47_Y30_N3
cycloneii_lcell_ff reg_r11_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add2_add9_5_anx37973z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r11_0_));

// Location: LCCOMB_X46_Y30_N0
cycloneii_lcell_comb sub2_sub10_2_aix23445z52933(
// Equation(s):
// sub2_sub10_2_anx23445z28 = CARRY((r9_0_) # (!r11_0_))

	.dataa(r9_0_),
	.datab(r11_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(sub2_sub10_2_anx23445z28));
// synopsys translate_off
defparam sub2_sub10_2_aix23445z52933.lut_mask = 16'h00BB;
defparam sub2_sub10_2_aix23445z52933.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y30_N2
cycloneii_lcell_comb sub2_sub10_2_aix23445z52932(
// Equation(s):
// sub2_sub10_2_anx23445z25 = CARRY((r11_1_ & ((!sub2_sub10_2_anx23445z28) # (!r9_1_))) # (!r11_1_ & (!r9_1_ & !sub2_sub10_2_anx23445z28)))

	.dataa(r11_1_),
	.datab(r9_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(sub2_sub10_2_anx23445z28),
	.combout(),
	.cout(sub2_sub10_2_anx23445z25));
// synopsys translate_off
defparam sub2_sub10_2_aix23445z52932.lut_mask = 16'h002B;
defparam sub2_sub10_2_aix23445z52932.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y30_N4
cycloneii_lcell_comb sub2_sub10_2_aix23445z52931(
// Equation(s):
// sub2_sub10_2_anx23445z22 = CARRY((r11_2_ & (r9_2_ & !sub2_sub10_2_anx23445z25)) # (!r11_2_ & ((r9_2_) # (!sub2_sub10_2_anx23445z25))))

	.dataa(r11_2_),
	.datab(r9_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(sub2_sub10_2_anx23445z25),
	.combout(),
	.cout(sub2_sub10_2_anx23445z22));
// synopsys translate_off
defparam sub2_sub10_2_aix23445z52931.lut_mask = 16'h004D;
defparam sub2_sub10_2_aix23445z52931.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y30_N6
cycloneii_lcell_comb sub2_sub10_2_aix23445z52930(
// Equation(s):
// sub2_sub10_2_anx23445z19 = CARRY((r9_3_ & (r11_3_ & !sub2_sub10_2_anx23445z22)) # (!r9_3_ & ((r11_3_) # (!sub2_sub10_2_anx23445z22))))

	.dataa(r9_3_),
	.datab(r11_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(sub2_sub10_2_anx23445z22),
	.combout(),
	.cout(sub2_sub10_2_anx23445z19));
// synopsys translate_off
defparam sub2_sub10_2_aix23445z52930.lut_mask = 16'h004D;
defparam sub2_sub10_2_aix23445z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y30_N8
cycloneii_lcell_comb sub2_sub10_2_aix23445z52929(
// Equation(s):
// sub2_sub10_2_anx23445z16 = CARRY((r9_4_ & ((!sub2_sub10_2_anx23445z19) # (!r11_4_))) # (!r9_4_ & (!r11_4_ & !sub2_sub10_2_anx23445z19)))

	.dataa(r9_4_),
	.datab(r11_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(sub2_sub10_2_anx23445z19),
	.combout(),
	.cout(sub2_sub10_2_anx23445z16));
// synopsys translate_off
defparam sub2_sub10_2_aix23445z52929.lut_mask = 16'h002B;
defparam sub2_sub10_2_aix23445z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y30_N10
cycloneii_lcell_comb sub2_sub10_2_aix23445z52928(
// Equation(s):
// sub2_sub10_2_anx23445z13 = CARRY((r9_5_ & (r11_5_ & !sub2_sub10_2_anx23445z16)) # (!r9_5_ & ((r11_5_) # (!sub2_sub10_2_anx23445z16))))

	.dataa(r9_5_),
	.datab(r11_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(sub2_sub10_2_anx23445z16),
	.combout(),
	.cout(sub2_sub10_2_anx23445z13));
// synopsys translate_off
defparam sub2_sub10_2_aix23445z52928.lut_mask = 16'h004D;
defparam sub2_sub10_2_aix23445z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y30_N12
cycloneii_lcell_comb sub2_sub10_2_aix23445z52927(
// Equation(s):
// sub2_sub10_2_anx23445z10 = CARRY((r9_6_ & ((!sub2_sub10_2_anx23445z13) # (!r11_6_))) # (!r9_6_ & (!r11_6_ & !sub2_sub10_2_anx23445z13)))

	.dataa(r9_6_),
	.datab(r11_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(sub2_sub10_2_anx23445z13),
	.combout(),
	.cout(sub2_sub10_2_anx23445z10));
// synopsys translate_off
defparam sub2_sub10_2_aix23445z52927.lut_mask = 16'h002B;
defparam sub2_sub10_2_aix23445z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y30_N14
cycloneii_lcell_comb sub2_sub10_2_aix23445z52926(
// Equation(s):
// sub2_sub10_2_anx23445z7 = CARRY((r11_7_ & ((!sub2_sub10_2_anx23445z10) # (!r9_7_))) # (!r11_7_ & (!r9_7_ & !sub2_sub10_2_anx23445z10)))

	.dataa(r11_7_),
	.datab(r9_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(sub2_sub10_2_anx23445z10),
	.combout(),
	.cout(sub2_sub10_2_anx23445z7));
// synopsys translate_off
defparam sub2_sub10_2_aix23445z52926.lut_mask = 16'h002B;
defparam sub2_sub10_2_aix23445z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y30_N16
cycloneii_lcell_comb sub2_sub10_2_aix23445z52925(
// Equation(s):
// sub2_sub10_2_anx23445z4 = CARRY((r9_8_ & ((!sub2_sub10_2_anx23445z7) # (!r11_8_))) # (!r9_8_ & (!r11_8_ & !sub2_sub10_2_anx23445z7)))

	.dataa(r9_8_),
	.datab(r11_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(sub2_sub10_2_anx23445z7),
	.combout(),
	.cout(sub2_sub10_2_anx23445z4));
// synopsys translate_off
defparam sub2_sub10_2_aix23445z52925.lut_mask = 16'h002B;
defparam sub2_sub10_2_aix23445z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y30_N18
cycloneii_lcell_comb sub2_sub10_2_aix23445z52923(
// Equation(s):
// sub2_sub10_2_anx23445z1 = (r9_9_ & ((sub2_sub10_2_anx23445z4) # (!r11_9_))) # (!r9_9_ & (sub2_sub10_2_anx23445z4 & !r11_9_))

	.dataa(vcc),
	.datab(r9_9_),
	.datac(vcc),
	.datad(r11_9_),
	.cin(sub2_sub10_2_anx23445z4),
	.combout(sub2_sub10_2_anx23445z1),
	.cout());
// synopsys translate_off
defparam sub2_sub10_2_aix23445z52923.lut_mask = 16'hC0FC;
defparam sub2_sub10_2_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y30_N22
cycloneii_lcell_comb ix25299z52923(
// Equation(s):
// max2_8_ = (sub2_sub10_2_anx23445z1 & ((r9_8_))) # (!sub2_sub10_2_anx23445z1 & (r11_8_))

	.dataa(vcc),
	.datab(r11_8_),
	.datac(r9_8_),
	.datad(sub2_sub10_2_anx23445z1),
	.cin(gnd),
	.combout(max2_8_),
	.cout());
// synopsys translate_off
defparam ix25299z52923.lut_mask = 16'hF0CC;
defparam ix25299z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y30_N23
cycloneii_lcell_ff reg_r9_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(max2_8_),
	.sdata(add2_add9_5_anx45949z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_2_),
	.ena(nx25299z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r9_8_));

// Location: LCFF_X48_Y30_N19
cycloneii_lcell_ff reg_r12_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r12_8__afeeder_combout),
	.sdata(r9_8_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub2_sub10_2_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r12_8_));

// Location: LCCOMB_X48_Y29_N18
cycloneii_lcell_comb r14_11__afeeder(
// Equation(s):
// r14_11__afeeder_combout = r12_8_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r12_8_),
	.cin(gnd),
	.combout(r14_11__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r14_11__afeeder.lut_mask = 16'hFF00;
defparam r14_11__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y30_N16
cycloneii_lcell_comb r12_9__afeeder(
// Equation(s):
// r12_9__afeeder_combout = r11_9_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r11_9_),
	.cin(gnd),
	.combout(r12_9__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r12_9__afeeder.lut_mask = 16'hFF00;
defparam r12_9__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y30_N17
cycloneii_lcell_ff reg_r12_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r12_9__afeeder_combout),
	.sdata(r9_9_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub2_sub10_2_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r12_9_));

// Location: LCCOMB_X48_Y30_N4
cycloneii_lcell_comb r12_7__afeeder(
// Equation(s):
// r12_7__afeeder_combout = r11_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r11_7_),
	.cin(gnd),
	.combout(r12_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r12_7__afeeder.lut_mask = 16'hFF00;
defparam r12_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y30_N5
cycloneii_lcell_ff reg_r12_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r12_7__afeeder_combout),
	.sdata(r9_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub2_sub10_2_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r12_7_));

// Location: LCCOMB_X48_Y30_N26
cycloneii_lcell_comb r12_4__afeeder(
// Equation(s):
// r12_4__afeeder_combout = r11_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r11_4_),
	.cin(gnd),
	.combout(r12_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r12_4__afeeder.lut_mask = 16'hFF00;
defparam r12_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y30_N30
cycloneii_lcell_comb ix29287z52923(
// Equation(s):
// max2_4_ = (sub2_sub10_2_anx23445z1 & ((r9_4_))) # (!sub2_sub10_2_anx23445z1 & (r11_4_))

	.dataa(r11_4_),
	.datab(vcc),
	.datac(r9_4_),
	.datad(sub2_sub10_2_anx23445z1),
	.cin(gnd),
	.combout(max2_4_),
	.cout());
// synopsys translate_off
defparam ix29287z52923.lut_mask = 16'hF0AA;
defparam ix29287z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y30_N31
cycloneii_lcell_ff reg_r9_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(max2_4_),
	.sdata(add2_add9_5_anx41961z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_2_),
	.ena(nx25299z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r9_4_));

// Location: LCFF_X48_Y30_N27
cycloneii_lcell_ff reg_r12_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r12_4__afeeder_combout),
	.sdata(r9_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub2_sub10_2_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r12_4_));

// Location: LCCOMB_X48_Y30_N12
cycloneii_lcell_comb r12_3__afeeder(
// Equation(s):
// r12_3__afeeder_combout = r11_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r11_3_),
	.cin(gnd),
	.combout(r12_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r12_3__afeeder.lut_mask = 16'hFF00;
defparam r12_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y30_N2
cycloneii_lcell_comb ix30284z52923(
// Equation(s):
// max2_3_ = (sub2_sub10_2_anx23445z1 & ((r9_3_))) # (!sub2_sub10_2_anx23445z1 & (r11_3_))

	.dataa(r11_3_),
	.datab(vcc),
	.datac(r9_3_),
	.datad(sub2_sub10_2_anx23445z1),
	.cin(gnd),
	.combout(max2_3_),
	.cout());
// synopsys translate_off
defparam ix30284z52923.lut_mask = 16'hF0AA;
defparam ix30284z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y30_N3
cycloneii_lcell_ff reg_r9_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(max2_3_),
	.sdata(add2_add9_5_anx40964z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_2_),
	.ena(nx25299z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r9_3_));

// Location: LCFF_X48_Y30_N13
cycloneii_lcell_ff reg_r12_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r12_3__afeeder_combout),
	.sdata(r9_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub2_sub10_2_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r12_3_));

// Location: LCFF_X47_Y30_N7
cycloneii_lcell_ff reg_r11_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add2_add9_5_anx39967z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r11_2_));

// Location: LCFF_X47_Y30_N5
cycloneii_lcell_ff reg_r11_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add2_add9_5_anx38970z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r11_1_));

// Location: LCCOMB_X48_Y30_N24
cycloneii_lcell_comb r12_1__afeeder(
// Equation(s):
// r12_1__afeeder_combout = r11_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r11_1_),
	.cin(gnd),
	.combout(r12_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r12_1__afeeder.lut_mask = 16'hFF00;
defparam r12_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y30_N25
cycloneii_lcell_ff reg_r12_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r12_1__afeeder_combout),
	.sdata(r9_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub2_sub10_2_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r12_1_));

// Location: LCCOMB_X48_Y30_N10
cycloneii_lcell_comb r12_0__afeeder(
// Equation(s):
// r12_0__afeeder_combout = r11_0_

	.dataa(vcc),
	.datab(r11_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r12_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r12_0__afeeder.lut_mask = 16'hCCCC;
defparam r12_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y30_N8
cycloneii_lcell_comb ix33275z52923(
// Equation(s):
// max2_0_ = (sub2_sub10_2_anx23445z1 & ((r9_0_))) # (!sub2_sub10_2_anx23445z1 & (r11_0_))

	.dataa(vcc),
	.datab(r11_0_),
	.datac(r9_0_),
	.datad(sub2_sub10_2_anx23445z1),
	.cin(gnd),
	.combout(max2_0_),
	.cout());
// synopsys translate_off
defparam ix33275z52923.lut_mask = 16'hF0CC;
defparam ix33275z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y30_N9
cycloneii_lcell_ff reg_r9_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(max2_0_),
	.sdata(add2_add9_5_anx37973z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(v_2_),
	.ena(nx25299z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r9_0_));

// Location: LCFF_X48_Y30_N11
cycloneii_lcell_ff reg_r12_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r12_0__afeeder_combout),
	.sdata(r9_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub2_sub10_2_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r12_0_));

// Location: LCCOMB_X47_Y29_N12
cycloneii_lcell_comb sub3_sub10_3_aix23445z52933(
// Equation(s):
// sub3_sub10_3_anx23445z28 = CARRY((r11_0_) # (!r12_0_))

	.dataa(r11_0_),
	.datab(r12_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(sub3_sub10_3_anx23445z28));
// synopsys translate_off
defparam sub3_sub10_3_aix23445z52933.lut_mask = 16'h00BB;
defparam sub3_sub10_3_aix23445z52933.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y29_N14
cycloneii_lcell_comb sub3_sub10_3_aix23445z52932(
// Equation(s):
// sub3_sub10_3_anx23445z25 = CARRY((r11_1_ & (r12_1_ & !sub3_sub10_3_anx23445z28)) # (!r11_1_ & ((r12_1_) # (!sub3_sub10_3_anx23445z28))))

	.dataa(r11_1_),
	.datab(r12_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(sub3_sub10_3_anx23445z28),
	.combout(),
	.cout(sub3_sub10_3_anx23445z25));
// synopsys translate_off
defparam sub3_sub10_3_aix23445z52932.lut_mask = 16'h004D;
defparam sub3_sub10_3_aix23445z52932.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y29_N16
cycloneii_lcell_comb sub3_sub10_3_aix23445z52931(
// Equation(s):
// sub3_sub10_3_anx23445z22 = CARRY((r12_2_ & (r11_2_ & !sub3_sub10_3_anx23445z25)) # (!r12_2_ & ((r11_2_) # (!sub3_sub10_3_anx23445z25))))

	.dataa(r12_2_),
	.datab(r11_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(sub3_sub10_3_anx23445z25),
	.combout(),
	.cout(sub3_sub10_3_anx23445z22));
// synopsys translate_off
defparam sub3_sub10_3_aix23445z52931.lut_mask = 16'h004D;
defparam sub3_sub10_3_aix23445z52931.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y29_N18
cycloneii_lcell_comb sub3_sub10_3_aix23445z52930(
// Equation(s):
// sub3_sub10_3_anx23445z19 = CARRY((r11_3_ & (r12_3_ & !sub3_sub10_3_anx23445z22)) # (!r11_3_ & ((r12_3_) # (!sub3_sub10_3_anx23445z22))))

	.dataa(r11_3_),
	.datab(r12_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(sub3_sub10_3_anx23445z22),
	.combout(),
	.cout(sub3_sub10_3_anx23445z19));
// synopsys translate_off
defparam sub3_sub10_3_aix23445z52930.lut_mask = 16'h004D;
defparam sub3_sub10_3_aix23445z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y29_N20
cycloneii_lcell_comb sub3_sub10_3_aix23445z52929(
// Equation(s):
// sub3_sub10_3_anx23445z16 = CARRY((r11_4_ & ((!sub3_sub10_3_anx23445z19) # (!r12_4_))) # (!r11_4_ & (!r12_4_ & !sub3_sub10_3_anx23445z19)))

	.dataa(r11_4_),
	.datab(r12_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(sub3_sub10_3_anx23445z19),
	.combout(),
	.cout(sub3_sub10_3_anx23445z16));
// synopsys translate_off
defparam sub3_sub10_3_aix23445z52929.lut_mask = 16'h002B;
defparam sub3_sub10_3_aix23445z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y29_N22
cycloneii_lcell_comb sub3_sub10_3_aix23445z52928(
// Equation(s):
// sub3_sub10_3_anx23445z13 = CARRY((r12_5_ & ((!sub3_sub10_3_anx23445z16) # (!r11_5_))) # (!r12_5_ & (!r11_5_ & !sub3_sub10_3_anx23445z16)))

	.dataa(r12_5_),
	.datab(r11_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(sub3_sub10_3_anx23445z16),
	.combout(),
	.cout(sub3_sub10_3_anx23445z13));
// synopsys translate_off
defparam sub3_sub10_3_aix23445z52928.lut_mask = 16'h002B;
defparam sub3_sub10_3_aix23445z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y29_N24
cycloneii_lcell_comb sub3_sub10_3_aix23445z52927(
// Equation(s):
// sub3_sub10_3_anx23445z10 = CARRY((r12_6_ & (r11_6_ & !sub3_sub10_3_anx23445z13)) # (!r12_6_ & ((r11_6_) # (!sub3_sub10_3_anx23445z13))))

	.dataa(r12_6_),
	.datab(r11_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(sub3_sub10_3_anx23445z13),
	.combout(),
	.cout(sub3_sub10_3_anx23445z10));
// synopsys translate_off
defparam sub3_sub10_3_aix23445z52927.lut_mask = 16'h004D;
defparam sub3_sub10_3_aix23445z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y29_N26
cycloneii_lcell_comb sub3_sub10_3_aix23445z52926(
// Equation(s):
// sub3_sub10_3_anx23445z7 = CARRY((r11_7_ & (r12_7_ & !sub3_sub10_3_anx23445z10)) # (!r11_7_ & ((r12_7_) # (!sub3_sub10_3_anx23445z10))))

	.dataa(r11_7_),
	.datab(r12_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(sub3_sub10_3_anx23445z10),
	.combout(),
	.cout(sub3_sub10_3_anx23445z7));
// synopsys translate_off
defparam sub3_sub10_3_aix23445z52926.lut_mask = 16'h004D;
defparam sub3_sub10_3_aix23445z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y29_N28
cycloneii_lcell_comb sub3_sub10_3_aix23445z52925(
// Equation(s):
// sub3_sub10_3_anx23445z4 = CARRY((r11_8_ & ((!sub3_sub10_3_anx23445z7) # (!r12_8_))) # (!r11_8_ & (!r12_8_ & !sub3_sub10_3_anx23445z7)))

	.dataa(r11_8_),
	.datab(r12_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(sub3_sub10_3_anx23445z7),
	.combout(),
	.cout(sub3_sub10_3_anx23445z4));
// synopsys translate_off
defparam sub3_sub10_3_aix23445z52925.lut_mask = 16'h002B;
defparam sub3_sub10_3_aix23445z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y29_N30
cycloneii_lcell_comb sub3_sub10_3_aix23445z52923(
// Equation(s):
// sub3_sub10_3_anx23445z1 = (r11_9_ & ((sub3_sub10_3_anx23445z4) # (!r12_9_))) # (!r11_9_ & (sub3_sub10_3_anx23445z4 & !r12_9_))

	.dataa(vcc),
	.datab(r11_9_),
	.datac(vcc),
	.datad(r12_9_),
	.cin(sub3_sub10_3_anx23445z4),
	.combout(sub3_sub10_3_anx23445z1),
	.cout());
// synopsys translate_off
defparam sub3_sub10_3_aix23445z52923.lut_mask = 16'hC0FC;
defparam sub3_sub10_3_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X48_Y29_N19
cycloneii_lcell_ff reg_r14_11_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r14_11__afeeder_combout),
	.sdata(r11_8_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub3_sub10_3_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r14_11_));

// Location: LCCOMB_X47_Y29_N8
cycloneii_lcell_comb r14_10__afeeder(
// Equation(s):
// r14_10__afeeder_combout = r12_7_

	.dataa(vcc),
	.datab(r12_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r14_10__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r14_10__afeeder.lut_mask = 16'hCCCC;
defparam r14_10__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y29_N9
cycloneii_lcell_ff reg_r14_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r14_10__afeeder_combout),
	.sdata(r11_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub3_sub10_3_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r14_10_));

// Location: LCFF_X44_Y29_N19
cycloneii_lcell_ff reg_r15_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add4_add11_6_anx45949z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r15_9_));

// Location: LCFF_X44_Y29_N17
cycloneii_lcell_ff reg_r15_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add4_add11_6_anx44952z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r15_8_));

// Location: LCCOMB_X48_Y29_N8
cycloneii_lcell_comb r14_7__afeeder(
// Equation(s):
// r14_7__afeeder_combout = r12_4_

	.dataa(vcc),
	.datab(r12_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(r14_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r14_7__afeeder.lut_mask = 16'hCCCC;
defparam r14_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y29_N9
cycloneii_lcell_ff reg_r14_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r14_7__afeeder_combout),
	.sdata(r11_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub3_sub10_3_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r14_7_));

// Location: LCCOMB_X48_Y29_N10
cycloneii_lcell_comb r14_6__afeeder(
// Equation(s):
// r14_6__afeeder_combout = r12_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r12_3_),
	.cin(gnd),
	.combout(r14_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r14_6__afeeder.lut_mask = 16'hFF00;
defparam r14_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y29_N11
cycloneii_lcell_ff reg_r14_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r14_6__afeeder_combout),
	.sdata(r11_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub3_sub10_3_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r14_6_));

// Location: LCFF_X44_Y29_N11
cycloneii_lcell_ff reg_r15_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add4_add11_6_anx41961z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r15_5_));

// Location: LCCOMB_X48_Y29_N4
cycloneii_lcell_comb r14_4__afeeder(
// Equation(s):
// r14_4__afeeder_combout = r12_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(r12_1_),
	.cin(gnd),
	.combout(r14_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam r14_4__afeeder.lut_mask = 16'hFF00;
defparam r14_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y29_N5
cycloneii_lcell_ff reg_r14_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(r14_4__afeeder_combout),
	.sdata(r11_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(sub3_sub10_3_anx23445z1),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r14_4_));

// Location: LCFF_X44_Y29_N7
cycloneii_lcell_ff reg_r15_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add4_add11_6_anx39967z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r15_3_));

// Location: LCFF_X44_Y29_N5
cycloneii_lcell_ff reg_r15_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add4_add11_6_anx38970z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r15_2_));

// Location: LCFF_X44_Y29_N3
cycloneii_lcell_ff reg_r15_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(add4_add11_6_anx37973z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r15_1_));

// Location: LCCOMB_X45_Y29_N6
cycloneii_lcell_comb ix36874z50555_aix63795z52935(
// Equation(s):
// ix36874z50555_anx63795z11 = CARRY((!r15_0_ & !r15_1_))

	.dataa(r15_0_),
	.datab(r15_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(ix36874z50555_anx63795z11));
// synopsys translate_off
defparam ix36874z50555_aix63795z52935.lut_mask = 16'h0011;
defparam ix36874z50555_aix63795z52935.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y29_N8
cycloneii_lcell_comb ix36874z50555_aix63795z52934(
// Equation(s):
// ix36874z50555_anx63795z10 = CARRY((r15_2_) # (!ix36874z50555_anx63795z11))

	.dataa(vcc),
	.datab(r15_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix36874z50555_anx63795z11),
	.combout(),
	.cout(ix36874z50555_anx63795z10));
// synopsys translate_off
defparam ix36874z50555_aix63795z52934.lut_mask = 16'h00CF;
defparam ix36874z50555_aix63795z52934.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y29_N10
cycloneii_lcell_comb ix36874z50555_aix63795z52933(
// Equation(s):
// ix36874z50555_anx63795z9 = CARRY((r14_3_ & ((!ix36874z50555_anx63795z10) # (!r15_3_))) # (!r14_3_ & (!r15_3_ & !ix36874z50555_anx63795z10)))

	.dataa(r14_3_),
	.datab(r15_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix36874z50555_anx63795z10),
	.combout(),
	.cout(ix36874z50555_anx63795z9));
// synopsys translate_off
defparam ix36874z50555_aix63795z52933.lut_mask = 16'h002B;
defparam ix36874z50555_aix63795z52933.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y29_N12
cycloneii_lcell_comb ix36874z50555_aix63795z52932(
// Equation(s):
// ix36874z50555_anx63795z8 = CARRY((r15_4_ & ((!ix36874z50555_anx63795z9) # (!r14_4_))) # (!r15_4_ & (!r14_4_ & !ix36874z50555_anx63795z9)))

	.dataa(r15_4_),
	.datab(r14_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix36874z50555_anx63795z9),
	.combout(),
	.cout(ix36874z50555_anx63795z8));
// synopsys translate_off
defparam ix36874z50555_aix63795z52932.lut_mask = 16'h002B;
defparam ix36874z50555_aix63795z52932.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y29_N14
cycloneii_lcell_comb ix36874z50555_aix63795z52931(
// Equation(s):
// ix36874z50555_anx63795z7 = CARRY((r14_5_ & ((!ix36874z50555_anx63795z8) # (!r15_5_))) # (!r14_5_ & (!r15_5_ & !ix36874z50555_anx63795z8)))

	.dataa(r14_5_),
	.datab(r15_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix36874z50555_anx63795z8),
	.combout(),
	.cout(ix36874z50555_anx63795z7));
// synopsys translate_off
defparam ix36874z50555_aix63795z52931.lut_mask = 16'h002B;
defparam ix36874z50555_aix63795z52931.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y29_N16
cycloneii_lcell_comb ix36874z50555_aix63795z52930(
// Equation(s):
// ix36874z50555_anx63795z6 = CARRY((r15_6_ & ((!ix36874z50555_anx63795z7) # (!r14_6_))) # (!r15_6_ & (!r14_6_ & !ix36874z50555_anx63795z7)))

	.dataa(r15_6_),
	.datab(r14_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix36874z50555_anx63795z7),
	.combout(),
	.cout(ix36874z50555_anx63795z6));
// synopsys translate_off
defparam ix36874z50555_aix63795z52930.lut_mask = 16'h002B;
defparam ix36874z50555_aix63795z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y29_N18
cycloneii_lcell_comb ix36874z50555_aix63795z52929(
// Equation(s):
// ix36874z50555_ad_6_ = ((r15_7_ $ (r14_7_ $ (ix36874z50555_anx63795z6)))) # (GND)
// ix36874z50555_anx63795z5 = CARRY((r15_7_ & (r14_7_ & !ix36874z50555_anx63795z6)) # (!r15_7_ & ((r14_7_) # (!ix36874z50555_anx63795z6))))

	.dataa(r15_7_),
	.datab(r14_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix36874z50555_anx63795z6),
	.combout(ix36874z50555_ad_6_),
	.cout(ix36874z50555_anx63795z5));
// synopsys translate_off
defparam ix36874z50555_aix63795z52929.lut_mask = 16'h964D;
defparam ix36874z50555_aix63795z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y29_N20
cycloneii_lcell_comb ix36874z50555_aix63795z52928(
// Equation(s):
// ix36874z50555_ad_7_ = (r14_8_ & ((r15_8_ & (!ix36874z50555_anx63795z5)) # (!r15_8_ & (ix36874z50555_anx63795z5 & VCC)))) # (!r14_8_ & ((r15_8_ & ((ix36874z50555_anx63795z5) # (GND))) # (!r15_8_ & (!ix36874z50555_anx63795z5))))
// ix36874z50555_anx63795z4 = CARRY((r14_8_ & (r15_8_ & !ix36874z50555_anx63795z5)) # (!r14_8_ & ((r15_8_) # (!ix36874z50555_anx63795z5))))

	.dataa(r14_8_),
	.datab(r15_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix36874z50555_anx63795z5),
	.combout(ix36874z50555_ad_7_),
	.cout(ix36874z50555_anx63795z4));
// synopsys translate_off
defparam ix36874z50555_aix63795z52928.lut_mask = 16'h694D;
defparam ix36874z50555_aix63795z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y29_N22
cycloneii_lcell_comb ix36874z50555_aix63795z52927(
// Equation(s):
// ix36874z50555_ad_8_ = ((r14_9_ $ (r15_9_ $ (ix36874z50555_anx63795z4)))) # (GND)
// ix36874z50555_anx63795z3 = CARRY((r14_9_ & ((!ix36874z50555_anx63795z4) # (!r15_9_))) # (!r14_9_ & (!r15_9_ & !ix36874z50555_anx63795z4)))

	.dataa(r14_9_),
	.datab(r15_9_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix36874z50555_anx63795z4),
	.combout(ix36874z50555_ad_8_),
	.cout(ix36874z50555_anx63795z3));
// synopsys translate_off
defparam ix36874z50555_aix63795z52927.lut_mask = 16'h962B;
defparam ix36874z50555_aix63795z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y29_N24
cycloneii_lcell_comb ix36874z50555_aix63795z52926(
// Equation(s):
// ix36874z50555_ad_9_ = (r15_10_ & ((r14_10_ & (!ix36874z50555_anx63795z3)) # (!r14_10_ & ((ix36874z50555_anx63795z3) # (GND))))) # (!r15_10_ & ((r14_10_ & (ix36874z50555_anx63795z3 & VCC)) # (!r14_10_ & (!ix36874z50555_anx63795z3))))
// ix36874z50555_anx63795z2 = CARRY((r15_10_ & ((!ix36874z50555_anx63795z3) # (!r14_10_))) # (!r15_10_ & (!r14_10_ & !ix36874z50555_anx63795z3)))

	.dataa(r15_10_),
	.datab(r14_10_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix36874z50555_anx63795z3),
	.combout(ix36874z50555_ad_9_),
	.cout(ix36874z50555_anx63795z2));
// synopsys translate_off
defparam ix36874z50555_aix63795z52926.lut_mask = 16'h692B;
defparam ix36874z50555_aix63795z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y29_N26
cycloneii_lcell_comb ix36874z50555_aix63795z52925(
// Equation(s):
// ix36874z50555_ad_10_ = ((r15_11_ $ (r14_11_ $ (ix36874z50555_anx63795z2)))) # (GND)
// ix36874z50555_anx63795z1 = CARRY((r15_11_ & (r14_11_ & !ix36874z50555_anx63795z2)) # (!r15_11_ & ((r14_11_) # (!ix36874z50555_anx63795z2))))

	.dataa(r15_11_),
	.datab(r14_11_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix36874z50555_anx63795z2),
	.combout(ix36874z50555_ad_10_),
	.cout(ix36874z50555_anx63795z1));
// synopsys translate_off
defparam ix36874z50555_aix63795z52925.lut_mask = 16'h964D;
defparam ix36874z50555_aix63795z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y29_N28
cycloneii_lcell_comb ix36874z50555_aix63795z52923(
// Equation(s):
// ix36874z50555_ad_11_ = (r14_12_ & ((r15_12_ & (!ix36874z50555_anx63795z1)) # (!r15_12_ & (ix36874z50555_anx63795z1 & VCC)))) # (!r14_12_ & ((r15_12_ & ((ix36874z50555_anx63795z1) # (GND))) # (!r15_12_ & (!ix36874z50555_anx63795z1))))
// ix36874z50555_anx23445z2 = CARRY((r14_12_ & (r15_12_ & !ix36874z50555_anx63795z1)) # (!r14_12_ & ((r15_12_) # (!ix36874z50555_anx63795z1))))

	.dataa(r14_12_),
	.datab(r15_12_),
	.datac(vcc),
	.datad(vcc),
	.cin(ix36874z50555_anx63795z1),
	.combout(ix36874z50555_ad_11_),
	.cout(ix36874z50555_anx23445z2));
// synopsys translate_off
defparam ix36874z50555_aix63795z52923.lut_mask = 16'h694D;
defparam ix36874z50555_aix63795z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y29_N28
cycloneii_lcell_comb ix36874z52927(
// Equation(s):
// nx36874z7 = (ix36874z50555_ad_8_) # ((ix36874z50555_ad_6_ & ix36874z50555_ad_7_))

	.dataa(vcc),
	.datab(ix36874z50555_ad_6_),
	.datac(ix36874z50555_ad_7_),
	.datad(ix36874z50555_ad_8_),
	.cin(gnd),
	.combout(nx36874z7),
	.cout());
// synopsys translate_off
defparam ix36874z52927.lut_mask = 16'hFFC0;
defparam ix36874z52927.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y29_N30
cycloneii_lcell_comb ix36874z50555_aix23445z52923(
// Equation(s):
// ix36874z50555_anx23445z1 = !ix36874z50555_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(ix36874z50555_anx23445z2),
	.combout(ix36874z50555_anx23445z1),
	.cout());
// synopsys translate_off
defparam ix36874z50555_aix23445z52923.lut_mask = 16'h0F0F;
defparam ix36874z50555_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y29_N1
cycloneii_lcell_ff reg_v_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(v_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(v_7_));

// Location: LCCOMB_X46_Y29_N8
cycloneii_lcell_comb ix36874z52925(
// Equation(s):
// nx36874z2 = (ix36874z50555_anx23445z1 & v_7_)

	.dataa(vcc),
	.datab(vcc),
	.datac(ix36874z50555_anx23445z1),
	.datad(v_7_),
	.cin(gnd),
	.combout(nx36874z2),
	.cout());
// synopsys translate_off
defparam ix36874z52925.lut_mask = 16'hF000;
defparam ix36874z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y29_N2
cycloneii_lcell_comb ix36874z52926(
// Equation(s):
// nx36874z4 = (ix36874z50555_ad_10_) # (ix36874z50555_ad_9_)

	.dataa(vcc),
	.datab(ix36874z50555_ad_10_),
	.datac(vcc),
	.datad(ix36874z50555_ad_9_),
	.cin(gnd),
	.combout(nx36874z4),
	.cout());
// synopsys translate_off
defparam ix36874z52926.lut_mask = 16'hFFCC;
defparam ix36874z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y29_N6
cycloneii_lcell_comb ix36874z52923(
// Equation(s):
// o_edge_dup0 = (nx36874z2 & ((ix36874z50555_ad_11_) # ((nx36874z7) # (nx36874z4))))

	.dataa(ix36874z50555_ad_11_),
	.datab(nx36874z7),
	.datac(nx36874z2),
	.datad(nx36874z4),
	.cin(gnd),
	.combout(o_edge_dup0),
	.cout());
// synopsys translate_off
defparam ix36874z52923.lut_mask = 16'hF0E0;
defparam ix36874z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y31_N20
cycloneii_lcell_comb ix2019z52923(
// Equation(s):
// nx2019z1 = (v_1_ & (((dir2_2_)))) # (!v_1_ & ((v_2_ & ((!sub1_sub8_1_anx23445z1))) # (!v_2_ & (dir2_2_))))

	.dataa(v_1_),
	.datab(v_2_),
	.datac(dir2_2_),
	.datad(sub1_sub8_1_anx23445z1),
	.cin(gnd),
	.combout(nx2019z1),
	.cout());
// synopsys translate_off
defparam ix2019z52923.lut_mask = 16'hB0F4;
defparam ix2019z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y31_N21
cycloneii_lcell_ff reg_dir2_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx2019z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(dir2_2_));

// Location: LCCOMB_X46_Y30_N30
cycloneii_lcell_comb ix36266z52923(
// Equation(s):
// nx36266z1 = (v_4_ & sub2_sub10_2_anx23445z1)

	.dataa(vcc),
	.datab(vcc),
	.datac(v_4_),
	.datad(sub2_sub10_2_anx23445z1),
	.cin(gnd),
	.combout(nx36266z1),
	.cout());
// synopsys translate_off
defparam ix36266z52923.lut_mask = 16'hF000;
defparam ix36266z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y31_N5
cycloneii_lcell_ff reg_dir5_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(dir2_2_),
	.aclr(gnd),
	.sclr(nx36266z1),
	.sload(vcc),
	.ena(v_4_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(dir5_0_));

// Location: LCCOMB_X46_Y29_N16
cycloneii_lcell_comb dir5_0__a_wirecell(
// Equation(s):
// dir5_0__a_wirecell_combout = !dir5_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(dir5_0_),
	.cin(gnd),
	.combout(dir5_0__a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam dir5_0__a_wirecell.lut_mask = 16'h00FF;
defparam dir5_0__a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y30_N24
cycloneii_lcell_comb ix36692z52925(
// Equation(s):
// nx36692z2 = (v_5_ & (!v_4_ & !sub2_sub10_2_anx23445z1))

	.dataa(vcc),
	.datab(v_5_),
	.datac(v_4_),
	.datad(sub2_sub10_2_anx23445z1),
	.cin(gnd),
	.combout(nx36692z2),
	.cout());
// synopsys translate_off
defparam ix36692z52925.lut_mask = 16'h000C;
defparam ix36692z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y30_N22
cycloneii_lcell_comb ix36692z52924(
// Equation(s):
// nx36692z1 = (!v_4_ & v_5_)

	.dataa(v_4_),
	.datab(vcc),
	.datac(v_5_),
	.datad(vcc),
	.cin(gnd),
	.combout(nx36692z1),
	.cout());
// synopsys translate_off
defparam ix36692z52924.lut_mask = 16'h5050;
defparam ix36692z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y29_N17
cycloneii_lcell_ff reg_dir6_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(dir5_0__a_wirecell_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx36692z2),
	.sload(gnd),
	.ena(nx36692z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx46108z3));

// Location: LCCOMB_X47_Y29_N0
cycloneii_lcell_comb ix46108z52924(
// Equation(s):
// nx46108z2 = (sub3_sub10_3_anx23445z1 & ((dir4_0_) # ((!v_6_)))) # (!sub3_sub10_3_anx23445z1 & (((!nx46108z3))))

	.dataa(dir4_0_),
	.datab(nx46108z3),
	.datac(v_6_),
	.datad(sub3_sub10_3_anx23445z1),
	.cin(gnd),
	.combout(nx46108z2),
	.cout());
// synopsys translate_off
defparam ix46108z52924.lut_mask = 16'hAF33;
defparam ix46108z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y29_N4
cycloneii_lcell_comb ix46108z52923(
// Equation(s):
// nx46108z1 = (nx46108z2 & ((v_6_) # ((dir7_0_) # (!sub3_sub10_3_anx23445z1))))

	.dataa(v_6_),
	.datab(nx46108z2),
	.datac(dir7_0_),
	.datad(sub3_sub10_3_anx23445z1),
	.cin(gnd),
	.combout(nx46108z1),
	.cout());
// synopsys translate_off
defparam ix46108z52923.lut_mask = 16'hC8CC;
defparam ix46108z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y29_N5
cycloneii_lcell_ff reg_dir7_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx46108z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(dir7_0_));

// Location: LCCOMB_X46_Y29_N24
cycloneii_lcell_comb ix31609z52924(
// Equation(s):
// nx31609z1 = (ix36874z50555_ad_9_) # ((ix36874z50555_ad_10_) # ((ix36874z50555_ad_11_) # (nx36874z7)))

	.dataa(ix36874z50555_ad_9_),
	.datab(ix36874z50555_ad_10_),
	.datac(ix36874z50555_ad_11_),
	.datad(nx36874z7),
	.cin(gnd),
	.combout(nx31609z1),
	.cout());
// synopsys translate_off
defparam ix31609z52924.lut_mask = 16'hFFFE;
defparam ix31609z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y29_N0
cycloneii_lcell_comb ix33603z52923(
// Equation(s):
// o_dir_dup0_0_ = (dir7_0_ & (ix36874z50555_anx23445z1 & (v_7_ & nx31609z1)))

	.dataa(dir7_0_),
	.datab(ix36874z50555_anx23445z1),
	.datac(v_7_),
	.datad(nx31609z1),
	.cin(gnd),
	.combout(o_dir_dup0_0_),
	.cout());
// synopsys translate_off
defparam ix33603z52923.lut_mask = 16'h8000;
defparam ix33603z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y30_N19
cycloneii_lcell_ff reg_dir5_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(sub2_sub10_2_anx23445z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(v_4_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(dir5_1_));

// Location: LCCOMB_X46_Y29_N26
cycloneii_lcell_comb dir5_1__a_wirecell(
// Equation(s):
// dir5_1__a_wirecell_combout = !dir5_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(dir5_1_),
	.datad(vcc),
	.cin(gnd),
	.combout(dir5_1__a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam dir5_1__a_wirecell.lut_mask = 16'h0F0F;
defparam dir5_1__a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y29_N27
cycloneii_lcell_ff reg_dir6_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(dir5_1__a_wirecell_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx36692z2),
	.sload(gnd),
	.ena(nx36692z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx45111z2));

// Location: LCCOMB_X46_Y29_N18
cycloneii_lcell_comb ix45111z52923(
// Equation(s):
// nx45111z1 = (sub3_sub10_3_anx23445z1 & (!v_6_ & ((dir7_1_)))) # (!sub3_sub10_3_anx23445z1 & (((!nx45111z2))))

	.dataa(v_6_),
	.datab(nx45111z2),
	.datac(dir7_1_),
	.datad(sub3_sub10_3_anx23445z1),
	.cin(gnd),
	.combout(nx45111z1),
	.cout());
// synopsys translate_off
defparam ix45111z52923.lut_mask = 16'h5033;
defparam ix45111z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y29_N19
cycloneii_lcell_ff reg_dir7_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx45111z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(dir7_1_));

// Location: LCCOMB_X46_Y29_N12
cycloneii_lcell_comb ix32606z52923(
// Equation(s):
// o_dir_dup0_1_ = (nx31609z1 & (dir7_1_ & (ix36874z50555_anx23445z1 & v_7_)))

	.dataa(nx31609z1),
	.datab(dir7_1_),
	.datac(ix36874z50555_anx23445z1),
	.datad(v_7_),
	.cin(gnd),
	.combout(o_dir_dup0_1_),
	.cout());
// synopsys translate_off
defparam ix32606z52923.lut_mask = 16'h8000;
defparam ix32606z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y29_N6
cycloneii_lcell_comb ix44114z52923(
// Equation(s):
// nx44114z1 = (nx44114z2 & ((v_6_) # ((dir7_2_) # (!sub3_sub10_3_anx23445z1))))

	.dataa(nx44114z2),
	.datab(v_6_),
	.datac(dir7_2_),
	.datad(sub3_sub10_3_anx23445z1),
	.cin(gnd),
	.combout(nx44114z1),
	.cout());
// synopsys translate_off
defparam ix44114z52923.lut_mask = 16'hA8AA;
defparam ix44114z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y29_N7
cycloneii_lcell_ff reg_dir7_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx44114z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(dir7_2_));

// Location: LCCOMB_X46_Y29_N22
cycloneii_lcell_comb ix31609z52923(
// Equation(s):
// o_dir_dup0_2_ = (v_7_ & (ix36874z50555_anx23445z1 & (nx31609z1 & dir7_2_)))

	.dataa(v_7_),
	.datab(ix36874z50555_anx23445z1),
	.datac(nx31609z1),
	.datad(dir7_2_),
	.cin(gnd),
	.combout(o_dir_dup0_2_),
	.cout());
// synopsys translate_off
defparam ix31609z52923.lut_mask = 16'h8000;
defparam ix31609z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y32_N18
cycloneii_lcell_comb o_mode_dup0_1__afeeder(
// Equation(s):
// o_mode_dup0_1__afeeder_combout = VCC

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(o_mode_dup0_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam o_mode_dup0_1__afeeder.lut_mask = 16'hFFFF;
defparam o_mode_dup0_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y32_N19
cycloneii_lcell_ff reg_mode_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(o_mode_dup0_1__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_mode_dup0_1_));

// Location: LCCOMB_X51_Y31_N8
cycloneii_lcell_comb ix26373z52924(
// Equation(s):
// nx26373z2 = (!end_of_img & ((o_mode_dup0_1_ & ((v_0_))) # (!o_mode_dup0_1_ & (i_reset_acombout))))

	.dataa(end_of_img),
	.datab(i_reset_acombout),
	.datac(v_0_),
	.datad(o_mode_dup0_1_),
	.cin(gnd),
	.combout(nx26373z2),
	.cout());
// synopsys translate_off
defparam ix26373z52924.lut_mask = 16'h5044;
defparam ix26373z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y32_N24
cycloneii_lcell_comb ix26373z52923(
// Equation(s):
// nx26373z1 = (!nx26373z2 & ((end_of_img) # (nx47893z1 $ (!o_mode_dup0_1_))))

	.dataa(end_of_img),
	.datab(nx26373z2),
	.datac(nx47893z1),
	.datad(o_mode_dup0_1_),
	.cin(gnd),
	.combout(nx26373z1),
	.cout());
// synopsys translate_off
defparam ix26373z52923.lut_mask = 16'h3223;
defparam ix26373z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y32_N25
cycloneii_lcell_ff reg_mode_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx26373z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx47893z1));

// Location: LCFF_X49_Y29_N17
cycloneii_lcell_ff reg_out_o_row_obuf_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(modgen_counter_o_row_anx51271z1),
	.aclr(gnd),
	.sclr(nx17322z9),
	.sload(vcc),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx16335z1));

// Location: LCFF_X49_Y29_N11
cycloneii_lcell_ff reg_out_o_row_obuf_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(modgen_counter_o_row_anx52268z1),
	.aclr(gnd),
	.sclr(nx17322z9),
	.sload(vcc),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx17332z1));

// Location: LCFF_X49_Y29_N5
cycloneii_lcell_ff reg_out_o_row_obuf_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(modgen_counter_o_row_anx53265z1),
	.aclr(gnd),
	.sclr(nx17322z9),
	.sload(vcc),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx18329z1));

// Location: LCFF_X49_Y29_N23
cycloneii_lcell_ff reg_out_o_row_obuf_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(modgen_counter_o_row_anx54262z1),
	.aclr(gnd),
	.sclr(nx17322z9),
	.sload(vcc),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx19326z1));

// Location: LCFF_X51_Y29_N11
cycloneii_lcell_ff reg_out_o_row_obuf_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx55259z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z9),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx20323z1));

// Location: LCFF_X51_Y29_N13
cycloneii_lcell_ff reg_out_o_row_obuf_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx56256z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z9),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx21320z1));

// Location: LCFF_X51_Y29_N15
cycloneii_lcell_ff reg_out_o_row_obuf_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx57253z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z9),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx22317z1));

// Location: LCFF_X49_Y29_N25
cycloneii_lcell_ff reg_out_o_row_obuf_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(modgen_counter_o_row_anx58250z1),
	.aclr(gnd),
	.sclr(nx17322z9),
	.sload(vcc),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx23314z1));

// Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix51998z43919(
	.datain(nx51998z1),
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
	.padio(o_valid));
// synopsys translate_off
defparam ix51998z43919.input_async_reset = "none";
defparam ix51998z43919.input_power_up = "low";
defparam ix51998z43919.input_register_mode = "none";
defparam ix51998z43919.input_sync_reset = "none";
defparam ix51998z43919.oe_async_reset = "none";
defparam ix51998z43919.oe_power_up = "low";
defparam ix51998z43919.oe_register_mode = "none";
defparam ix51998z43919.oe_sync_reset = "none";
defparam ix51998z43919.operation_mode = "output";
defparam ix51998z43919.output_async_reset = "none";
defparam ix51998z43919.output_power_up = "low";
defparam ix51998z43919.output_register_mode = "none";
defparam ix51998z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_edge_obuf(
	.datain(o_edge_dup0),
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
	.padio(o_edge));
// synopsys translate_off
defparam o_edge_obuf.input_async_reset = "none";
defparam o_edge_obuf.input_power_up = "low";
defparam o_edge_obuf.input_register_mode = "none";
defparam o_edge_obuf.input_sync_reset = "none";
defparam o_edge_obuf.oe_async_reset = "none";
defparam o_edge_obuf.oe_power_up = "low";
defparam o_edge_obuf.oe_register_mode = "none";
defparam o_edge_obuf.oe_sync_reset = "none";
defparam o_edge_obuf.operation_mode = "output";
defparam o_edge_obuf.output_async_reset = "none";
defparam o_edge_obuf.output_power_up = "low";
defparam o_edge_obuf.output_register_mode = "none";
defparam o_edge_obuf.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_dir_obuf_0_(
	.datain(o_dir_dup0_0_),
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
	.padio(o_dir[0]));
// synopsys translate_off
defparam o_dir_obuf_0_.input_async_reset = "none";
defparam o_dir_obuf_0_.input_power_up = "low";
defparam o_dir_obuf_0_.input_register_mode = "none";
defparam o_dir_obuf_0_.input_sync_reset = "none";
defparam o_dir_obuf_0_.oe_async_reset = "none";
defparam o_dir_obuf_0_.oe_power_up = "low";
defparam o_dir_obuf_0_.oe_register_mode = "none";
defparam o_dir_obuf_0_.oe_sync_reset = "none";
defparam o_dir_obuf_0_.operation_mode = "output";
defparam o_dir_obuf_0_.output_async_reset = "none";
defparam o_dir_obuf_0_.output_power_up = "low";
defparam o_dir_obuf_0_.output_register_mode = "none";
defparam o_dir_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_dir_obuf_1_(
	.datain(o_dir_dup0_1_),
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
	.padio(o_dir[1]));
// synopsys translate_off
defparam o_dir_obuf_1_.input_async_reset = "none";
defparam o_dir_obuf_1_.input_power_up = "low";
defparam o_dir_obuf_1_.input_register_mode = "none";
defparam o_dir_obuf_1_.input_sync_reset = "none";
defparam o_dir_obuf_1_.oe_async_reset = "none";
defparam o_dir_obuf_1_.oe_power_up = "low";
defparam o_dir_obuf_1_.oe_register_mode = "none";
defparam o_dir_obuf_1_.oe_sync_reset = "none";
defparam o_dir_obuf_1_.operation_mode = "output";
defparam o_dir_obuf_1_.output_async_reset = "none";
defparam o_dir_obuf_1_.output_power_up = "low";
defparam o_dir_obuf_1_.output_register_mode = "none";
defparam o_dir_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_dir_obuf_2_(
	.datain(o_dir_dup0_2_),
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
	.padio(o_dir[2]));
// synopsys translate_off
defparam o_dir_obuf_2_.input_async_reset = "none";
defparam o_dir_obuf_2_.input_power_up = "low";
defparam o_dir_obuf_2_.input_register_mode = "none";
defparam o_dir_obuf_2_.input_sync_reset = "none";
defparam o_dir_obuf_2_.oe_async_reset = "none";
defparam o_dir_obuf_2_.oe_power_up = "low";
defparam o_dir_obuf_2_.oe_register_mode = "none";
defparam o_dir_obuf_2_.oe_sync_reset = "none";
defparam o_dir_obuf_2_.operation_mode = "output";
defparam o_dir_obuf_2_.output_async_reset = "none";
defparam o_dir_obuf_2_.output_power_up = "low";
defparam o_dir_obuf_2_.output_register_mode = "none";
defparam o_dir_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_mode_obuf_0_(
	.datain(!nx47893z1),
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

// Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_mode_obuf_1_(
	.datain(o_mode_dup0_1_),
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

// Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix16335z43919(
	.datain(nx16335z1),
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
	.padio(o_row[0]));
// synopsys translate_off
defparam ix16335z43919.input_async_reset = "none";
defparam ix16335z43919.input_power_up = "low";
defparam ix16335z43919.input_register_mode = "none";
defparam ix16335z43919.input_sync_reset = "none";
defparam ix16335z43919.oe_async_reset = "none";
defparam ix16335z43919.oe_power_up = "low";
defparam ix16335z43919.oe_register_mode = "none";
defparam ix16335z43919.oe_sync_reset = "none";
defparam ix16335z43919.operation_mode = "output";
defparam ix16335z43919.output_async_reset = "none";
defparam ix16335z43919.output_power_up = "low";
defparam ix16335z43919.output_register_mode = "none";
defparam ix16335z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix17332z43919(
	.datain(nx17332z1),
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
	.padio(o_row[1]));
// synopsys translate_off
defparam ix17332z43919.input_async_reset = "none";
defparam ix17332z43919.input_power_up = "low";
defparam ix17332z43919.input_register_mode = "none";
defparam ix17332z43919.input_sync_reset = "none";
defparam ix17332z43919.oe_async_reset = "none";
defparam ix17332z43919.oe_power_up = "low";
defparam ix17332z43919.oe_register_mode = "none";
defparam ix17332z43919.oe_sync_reset = "none";
defparam ix17332z43919.operation_mode = "output";
defparam ix17332z43919.output_async_reset = "none";
defparam ix17332z43919.output_power_up = "low";
defparam ix17332z43919.output_register_mode = "none";
defparam ix17332z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix18329z43919(
	.datain(nx18329z1),
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
	.padio(o_row[2]));
// synopsys translate_off
defparam ix18329z43919.input_async_reset = "none";
defparam ix18329z43919.input_power_up = "low";
defparam ix18329z43919.input_register_mode = "none";
defparam ix18329z43919.input_sync_reset = "none";
defparam ix18329z43919.oe_async_reset = "none";
defparam ix18329z43919.oe_power_up = "low";
defparam ix18329z43919.oe_register_mode = "none";
defparam ix18329z43919.oe_sync_reset = "none";
defparam ix18329z43919.operation_mode = "output";
defparam ix18329z43919.output_async_reset = "none";
defparam ix18329z43919.output_power_up = "low";
defparam ix18329z43919.output_register_mode = "none";
defparam ix18329z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix19326z43919(
	.datain(nx19326z1),
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
	.padio(o_row[3]));
// synopsys translate_off
defparam ix19326z43919.input_async_reset = "none";
defparam ix19326z43919.input_power_up = "low";
defparam ix19326z43919.input_register_mode = "none";
defparam ix19326z43919.input_sync_reset = "none";
defparam ix19326z43919.oe_async_reset = "none";
defparam ix19326z43919.oe_power_up = "low";
defparam ix19326z43919.oe_register_mode = "none";
defparam ix19326z43919.oe_sync_reset = "none";
defparam ix19326z43919.operation_mode = "output";
defparam ix19326z43919.output_async_reset = "none";
defparam ix19326z43919.output_power_up = "low";
defparam ix19326z43919.output_register_mode = "none";
defparam ix19326z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix20323z43919(
	.datain(nx20323z1),
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
	.padio(o_row[4]));
// synopsys translate_off
defparam ix20323z43919.input_async_reset = "none";
defparam ix20323z43919.input_power_up = "low";
defparam ix20323z43919.input_register_mode = "none";
defparam ix20323z43919.input_sync_reset = "none";
defparam ix20323z43919.oe_async_reset = "none";
defparam ix20323z43919.oe_power_up = "low";
defparam ix20323z43919.oe_register_mode = "none";
defparam ix20323z43919.oe_sync_reset = "none";
defparam ix20323z43919.operation_mode = "output";
defparam ix20323z43919.output_async_reset = "none";
defparam ix20323z43919.output_power_up = "low";
defparam ix20323z43919.output_register_mode = "none";
defparam ix20323z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix21320z43919(
	.datain(nx21320z1),
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
	.padio(o_row[5]));
// synopsys translate_off
defparam ix21320z43919.input_async_reset = "none";
defparam ix21320z43919.input_power_up = "low";
defparam ix21320z43919.input_register_mode = "none";
defparam ix21320z43919.input_sync_reset = "none";
defparam ix21320z43919.oe_async_reset = "none";
defparam ix21320z43919.oe_power_up = "low";
defparam ix21320z43919.oe_register_mode = "none";
defparam ix21320z43919.oe_sync_reset = "none";
defparam ix21320z43919.operation_mode = "output";
defparam ix21320z43919.output_async_reset = "none";
defparam ix21320z43919.output_power_up = "low";
defparam ix21320z43919.output_register_mode = "none";
defparam ix21320z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix22317z43919(
	.datain(nx22317z1),
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
	.padio(o_row[6]));
// synopsys translate_off
defparam ix22317z43919.input_async_reset = "none";
defparam ix22317z43919.input_power_up = "low";
defparam ix22317z43919.input_register_mode = "none";
defparam ix22317z43919.input_sync_reset = "none";
defparam ix22317z43919.oe_async_reset = "none";
defparam ix22317z43919.oe_power_up = "low";
defparam ix22317z43919.oe_register_mode = "none";
defparam ix22317z43919.oe_sync_reset = "none";
defparam ix22317z43919.operation_mode = "output";
defparam ix22317z43919.output_async_reset = "none";
defparam ix22317z43919.output_power_up = "low";
defparam ix22317z43919.output_register_mode = "none";
defparam ix22317z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix23314z43919(
	.datain(nx23314z1),
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
	.padio(o_row[7]));
// synopsys translate_off
defparam ix23314z43919.input_async_reset = "none";
defparam ix23314z43919.input_power_up = "low";
defparam ix23314z43919.input_register_mode = "none";
defparam ix23314z43919.input_sync_reset = "none";
defparam ix23314z43919.oe_async_reset = "none";
defparam ix23314z43919.oe_power_up = "low";
defparam ix23314z43919.oe_register_mode = "none";
defparam ix23314z43919.oe_sync_reset = "none";
defparam ix23314z43919.operation_mode = "output";
defparam ix23314z43919.output_async_reset = "none";
defparam ix23314z43919.output_power_up = "low";
defparam ix23314z43919.output_register_mode = "none";
defparam ix23314z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_obuf_0_(
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
	.padio(debug_led_red[0]));
// synopsys translate_off
defparam debug_led_red_obuf_0_.input_async_reset = "none";
defparam debug_led_red_obuf_0_.input_power_up = "low";
defparam debug_led_red_obuf_0_.input_register_mode = "none";
defparam debug_led_red_obuf_0_.input_sync_reset = "none";
defparam debug_led_red_obuf_0_.oe_async_reset = "none";
defparam debug_led_red_obuf_0_.oe_power_up = "low";
defparam debug_led_red_obuf_0_.oe_register_mode = "none";
defparam debug_led_red_obuf_0_.oe_sync_reset = "none";
defparam debug_led_red_obuf_0_.operation_mode = "output";
defparam debug_led_red_obuf_0_.output_async_reset = "none";
defparam debug_led_red_obuf_0_.output_power_up = "low";
defparam debug_led_red_obuf_0_.output_register_mode = "none";
defparam debug_led_red_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_obuf_1_(
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
	.padio(debug_led_red[1]));
// synopsys translate_off
defparam debug_led_red_obuf_1_.input_async_reset = "none";
defparam debug_led_red_obuf_1_.input_power_up = "low";
defparam debug_led_red_obuf_1_.input_register_mode = "none";
defparam debug_led_red_obuf_1_.input_sync_reset = "none";
defparam debug_led_red_obuf_1_.oe_async_reset = "none";
defparam debug_led_red_obuf_1_.oe_power_up = "low";
defparam debug_led_red_obuf_1_.oe_register_mode = "none";
defparam debug_led_red_obuf_1_.oe_sync_reset = "none";
defparam debug_led_red_obuf_1_.operation_mode = "output";
defparam debug_led_red_obuf_1_.output_async_reset = "none";
defparam debug_led_red_obuf_1_.output_power_up = "low";
defparam debug_led_red_obuf_1_.output_register_mode = "none";
defparam debug_led_red_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_obuf_2_(
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
	.padio(debug_led_red[2]));
// synopsys translate_off
defparam debug_led_red_obuf_2_.input_async_reset = "none";
defparam debug_led_red_obuf_2_.input_power_up = "low";
defparam debug_led_red_obuf_2_.input_register_mode = "none";
defparam debug_led_red_obuf_2_.input_sync_reset = "none";
defparam debug_led_red_obuf_2_.oe_async_reset = "none";
defparam debug_led_red_obuf_2_.oe_power_up = "low";
defparam debug_led_red_obuf_2_.oe_register_mode = "none";
defparam debug_led_red_obuf_2_.oe_sync_reset = "none";
defparam debug_led_red_obuf_2_.operation_mode = "output";
defparam debug_led_red_obuf_2_.output_async_reset = "none";
defparam debug_led_red_obuf_2_.output_power_up = "low";
defparam debug_led_red_obuf_2_.output_register_mode = "none";
defparam debug_led_red_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_obuf_3_(
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
	.padio(debug_led_red[3]));
// synopsys translate_off
defparam debug_led_red_obuf_3_.input_async_reset = "none";
defparam debug_led_red_obuf_3_.input_power_up = "low";
defparam debug_led_red_obuf_3_.input_register_mode = "none";
defparam debug_led_red_obuf_3_.input_sync_reset = "none";
defparam debug_led_red_obuf_3_.oe_async_reset = "none";
defparam debug_led_red_obuf_3_.oe_power_up = "low";
defparam debug_led_red_obuf_3_.oe_register_mode = "none";
defparam debug_led_red_obuf_3_.oe_sync_reset = "none";
defparam debug_led_red_obuf_3_.operation_mode = "output";
defparam debug_led_red_obuf_3_.output_async_reset = "none";
defparam debug_led_red_obuf_3_.output_power_up = "low";
defparam debug_led_red_obuf_3_.output_register_mode = "none";
defparam debug_led_red_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_obuf_4_(
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
	.padio(debug_led_red[4]));
// synopsys translate_off
defparam debug_led_red_obuf_4_.input_async_reset = "none";
defparam debug_led_red_obuf_4_.input_power_up = "low";
defparam debug_led_red_obuf_4_.input_register_mode = "none";
defparam debug_led_red_obuf_4_.input_sync_reset = "none";
defparam debug_led_red_obuf_4_.oe_async_reset = "none";
defparam debug_led_red_obuf_4_.oe_power_up = "low";
defparam debug_led_red_obuf_4_.oe_register_mode = "none";
defparam debug_led_red_obuf_4_.oe_sync_reset = "none";
defparam debug_led_red_obuf_4_.operation_mode = "output";
defparam debug_led_red_obuf_4_.output_async_reset = "none";
defparam debug_led_red_obuf_4_.output_power_up = "low";
defparam debug_led_red_obuf_4_.output_register_mode = "none";
defparam debug_led_red_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_obuf_5_(
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
	.padio(debug_led_red[5]));
// synopsys translate_off
defparam debug_led_red_obuf_5_.input_async_reset = "none";
defparam debug_led_red_obuf_5_.input_power_up = "low";
defparam debug_led_red_obuf_5_.input_register_mode = "none";
defparam debug_led_red_obuf_5_.input_sync_reset = "none";
defparam debug_led_red_obuf_5_.oe_async_reset = "none";
defparam debug_led_red_obuf_5_.oe_power_up = "low";
defparam debug_led_red_obuf_5_.oe_register_mode = "none";
defparam debug_led_red_obuf_5_.oe_sync_reset = "none";
defparam debug_led_red_obuf_5_.operation_mode = "output";
defparam debug_led_red_obuf_5_.output_async_reset = "none";
defparam debug_led_red_obuf_5_.output_power_up = "low";
defparam debug_led_red_obuf_5_.output_register_mode = "none";
defparam debug_led_red_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_obuf_6_(
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
	.padio(debug_led_red[6]));
// synopsys translate_off
defparam debug_led_red_obuf_6_.input_async_reset = "none";
defparam debug_led_red_obuf_6_.input_power_up = "low";
defparam debug_led_red_obuf_6_.input_register_mode = "none";
defparam debug_led_red_obuf_6_.input_sync_reset = "none";
defparam debug_led_red_obuf_6_.oe_async_reset = "none";
defparam debug_led_red_obuf_6_.oe_power_up = "low";
defparam debug_led_red_obuf_6_.oe_register_mode = "none";
defparam debug_led_red_obuf_6_.oe_sync_reset = "none";
defparam debug_led_red_obuf_6_.operation_mode = "output";
defparam debug_led_red_obuf_6_.output_async_reset = "none";
defparam debug_led_red_obuf_6_.output_power_up = "low";
defparam debug_led_red_obuf_6_.output_register_mode = "none";
defparam debug_led_red_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_obuf_7_(
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
	.padio(debug_led_red[7]));
// synopsys translate_off
defparam debug_led_red_obuf_7_.input_async_reset = "none";
defparam debug_led_red_obuf_7_.input_power_up = "low";
defparam debug_led_red_obuf_7_.input_register_mode = "none";
defparam debug_led_red_obuf_7_.input_sync_reset = "none";
defparam debug_led_red_obuf_7_.oe_async_reset = "none";
defparam debug_led_red_obuf_7_.oe_power_up = "low";
defparam debug_led_red_obuf_7_.oe_register_mode = "none";
defparam debug_led_red_obuf_7_.oe_sync_reset = "none";
defparam debug_led_red_obuf_7_.operation_mode = "output";
defparam debug_led_red_obuf_7_.output_async_reset = "none";
defparam debug_led_red_obuf_7_.output_power_up = "low";
defparam debug_led_red_obuf_7_.output_register_mode = "none";
defparam debug_led_red_obuf_7_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_obuf_8_(
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
	.padio(debug_led_red[8]));
// synopsys translate_off
defparam debug_led_red_obuf_8_.input_async_reset = "none";
defparam debug_led_red_obuf_8_.input_power_up = "low";
defparam debug_led_red_obuf_8_.input_register_mode = "none";
defparam debug_led_red_obuf_8_.input_sync_reset = "none";
defparam debug_led_red_obuf_8_.oe_async_reset = "none";
defparam debug_led_red_obuf_8_.oe_power_up = "low";
defparam debug_led_red_obuf_8_.oe_register_mode = "none";
defparam debug_led_red_obuf_8_.oe_sync_reset = "none";
defparam debug_led_red_obuf_8_.operation_mode = "output";
defparam debug_led_red_obuf_8_.output_async_reset = "none";
defparam debug_led_red_obuf_8_.output_power_up = "low";
defparam debug_led_red_obuf_8_.output_register_mode = "none";
defparam debug_led_red_obuf_8_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_obuf_9_(
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
	.padio(debug_led_red[9]));
// synopsys translate_off
defparam debug_led_red_obuf_9_.input_async_reset = "none";
defparam debug_led_red_obuf_9_.input_power_up = "low";
defparam debug_led_red_obuf_9_.input_register_mode = "none";
defparam debug_led_red_obuf_9_.input_sync_reset = "none";
defparam debug_led_red_obuf_9_.oe_async_reset = "none";
defparam debug_led_red_obuf_9_.oe_power_up = "low";
defparam debug_led_red_obuf_9_.oe_register_mode = "none";
defparam debug_led_red_obuf_9_.oe_sync_reset = "none";
defparam debug_led_red_obuf_9_.operation_mode = "output";
defparam debug_led_red_obuf_9_.output_async_reset = "none";
defparam debug_led_red_obuf_9_.output_power_up = "low";
defparam debug_led_red_obuf_9_.output_register_mode = "none";
defparam debug_led_red_obuf_9_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_obuf_10_(
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
	.padio(debug_led_red[10]));
// synopsys translate_off
defparam debug_led_red_obuf_10_.input_async_reset = "none";
defparam debug_led_red_obuf_10_.input_power_up = "low";
defparam debug_led_red_obuf_10_.input_register_mode = "none";
defparam debug_led_red_obuf_10_.input_sync_reset = "none";
defparam debug_led_red_obuf_10_.oe_async_reset = "none";
defparam debug_led_red_obuf_10_.oe_power_up = "low";
defparam debug_led_red_obuf_10_.oe_register_mode = "none";
defparam debug_led_red_obuf_10_.oe_sync_reset = "none";
defparam debug_led_red_obuf_10_.operation_mode = "output";
defparam debug_led_red_obuf_10_.output_async_reset = "none";
defparam debug_led_red_obuf_10_.output_power_up = "low";
defparam debug_led_red_obuf_10_.output_register_mode = "none";
defparam debug_led_red_obuf_10_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_obuf_11_(
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
	.padio(debug_led_red[11]));
// synopsys translate_off
defparam debug_led_red_obuf_11_.input_async_reset = "none";
defparam debug_led_red_obuf_11_.input_power_up = "low";
defparam debug_led_red_obuf_11_.input_register_mode = "none";
defparam debug_led_red_obuf_11_.input_sync_reset = "none";
defparam debug_led_red_obuf_11_.oe_async_reset = "none";
defparam debug_led_red_obuf_11_.oe_power_up = "low";
defparam debug_led_red_obuf_11_.oe_register_mode = "none";
defparam debug_led_red_obuf_11_.oe_sync_reset = "none";
defparam debug_led_red_obuf_11_.operation_mode = "output";
defparam debug_led_red_obuf_11_.output_async_reset = "none";
defparam debug_led_red_obuf_11_.output_power_up = "low";
defparam debug_led_red_obuf_11_.output_register_mode = "none";
defparam debug_led_red_obuf_11_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_obuf_12_(
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
	.padio(debug_led_red[12]));
// synopsys translate_off
defparam debug_led_red_obuf_12_.input_async_reset = "none";
defparam debug_led_red_obuf_12_.input_power_up = "low";
defparam debug_led_red_obuf_12_.input_register_mode = "none";
defparam debug_led_red_obuf_12_.input_sync_reset = "none";
defparam debug_led_red_obuf_12_.oe_async_reset = "none";
defparam debug_led_red_obuf_12_.oe_power_up = "low";
defparam debug_led_red_obuf_12_.oe_register_mode = "none";
defparam debug_led_red_obuf_12_.oe_sync_reset = "none";
defparam debug_led_red_obuf_12_.operation_mode = "output";
defparam debug_led_red_obuf_12_.output_async_reset = "none";
defparam debug_led_red_obuf_12_.output_power_up = "low";
defparam debug_led_red_obuf_12_.output_register_mode = "none";
defparam debug_led_red_obuf_12_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_obuf_13_(
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
	.padio(debug_led_red[13]));
// synopsys translate_off
defparam debug_led_red_obuf_13_.input_async_reset = "none";
defparam debug_led_red_obuf_13_.input_power_up = "low";
defparam debug_led_red_obuf_13_.input_register_mode = "none";
defparam debug_led_red_obuf_13_.input_sync_reset = "none";
defparam debug_led_red_obuf_13_.oe_async_reset = "none";
defparam debug_led_red_obuf_13_.oe_power_up = "low";
defparam debug_led_red_obuf_13_.oe_register_mode = "none";
defparam debug_led_red_obuf_13_.oe_sync_reset = "none";
defparam debug_led_red_obuf_13_.operation_mode = "output";
defparam debug_led_red_obuf_13_.output_async_reset = "none";
defparam debug_led_red_obuf_13_.output_power_up = "low";
defparam debug_led_red_obuf_13_.output_register_mode = "none";
defparam debug_led_red_obuf_13_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_obuf_14_(
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
	.padio(debug_led_red[14]));
// synopsys translate_off
defparam debug_led_red_obuf_14_.input_async_reset = "none";
defparam debug_led_red_obuf_14_.input_power_up = "low";
defparam debug_led_red_obuf_14_.input_register_mode = "none";
defparam debug_led_red_obuf_14_.input_sync_reset = "none";
defparam debug_led_red_obuf_14_.oe_async_reset = "none";
defparam debug_led_red_obuf_14_.oe_power_up = "low";
defparam debug_led_red_obuf_14_.oe_register_mode = "none";
defparam debug_led_red_obuf_14_.oe_sync_reset = "none";
defparam debug_led_red_obuf_14_.operation_mode = "output";
defparam debug_led_red_obuf_14_.output_async_reset = "none";
defparam debug_led_red_obuf_14_.output_power_up = "low";
defparam debug_led_red_obuf_14_.output_register_mode = "none";
defparam debug_led_red_obuf_14_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_obuf_15_(
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
	.padio(debug_led_red[15]));
// synopsys translate_off
defparam debug_led_red_obuf_15_.input_async_reset = "none";
defparam debug_led_red_obuf_15_.input_power_up = "low";
defparam debug_led_red_obuf_15_.input_register_mode = "none";
defparam debug_led_red_obuf_15_.input_sync_reset = "none";
defparam debug_led_red_obuf_15_.oe_async_reset = "none";
defparam debug_led_red_obuf_15_.oe_power_up = "low";
defparam debug_led_red_obuf_15_.oe_register_mode = "none";
defparam debug_led_red_obuf_15_.oe_sync_reset = "none";
defparam debug_led_red_obuf_15_.operation_mode = "output";
defparam debug_led_red_obuf_15_.output_async_reset = "none";
defparam debug_led_red_obuf_15_.output_power_up = "low";
defparam debug_led_red_obuf_15_.output_register_mode = "none";
defparam debug_led_red_obuf_15_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_obuf_16_(
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
	.padio(debug_led_red[16]));
// synopsys translate_off
defparam debug_led_red_obuf_16_.input_async_reset = "none";
defparam debug_led_red_obuf_16_.input_power_up = "low";
defparam debug_led_red_obuf_16_.input_register_mode = "none";
defparam debug_led_red_obuf_16_.input_sync_reset = "none";
defparam debug_led_red_obuf_16_.oe_async_reset = "none";
defparam debug_led_red_obuf_16_.oe_power_up = "low";
defparam debug_led_red_obuf_16_.oe_register_mode = "none";
defparam debug_led_red_obuf_16_.oe_sync_reset = "none";
defparam debug_led_red_obuf_16_.operation_mode = "output";
defparam debug_led_red_obuf_16_.output_async_reset = "none";
defparam debug_led_red_obuf_16_.output_power_up = "low";
defparam debug_led_red_obuf_16_.output_register_mode = "none";
defparam debug_led_red_obuf_16_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_obuf_17_(
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
	.padio(debug_led_red[17]));
// synopsys translate_off
defparam debug_led_red_obuf_17_.input_async_reset = "none";
defparam debug_led_red_obuf_17_.input_power_up = "low";
defparam debug_led_red_obuf_17_.input_register_mode = "none";
defparam debug_led_red_obuf_17_.input_sync_reset = "none";
defparam debug_led_red_obuf_17_.oe_async_reset = "none";
defparam debug_led_red_obuf_17_.oe_power_up = "low";
defparam debug_led_red_obuf_17_.oe_register_mode = "none";
defparam debug_led_red_obuf_17_.oe_sync_reset = "none";
defparam debug_led_red_obuf_17_.operation_mode = "output";
defparam debug_led_red_obuf_17_.output_async_reset = "none";
defparam debug_led_red_obuf_17_.output_power_up = "low";
defparam debug_led_red_obuf_17_.output_register_mode = "none";
defparam debug_led_red_obuf_17_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_grn_obuf_0_(
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
	.padio(debug_led_grn[0]));
// synopsys translate_off
defparam debug_led_grn_obuf_0_.input_async_reset = "none";
defparam debug_led_grn_obuf_0_.input_power_up = "low";
defparam debug_led_grn_obuf_0_.input_register_mode = "none";
defparam debug_led_grn_obuf_0_.input_sync_reset = "none";
defparam debug_led_grn_obuf_0_.oe_async_reset = "none";
defparam debug_led_grn_obuf_0_.oe_power_up = "low";
defparam debug_led_grn_obuf_0_.oe_register_mode = "none";
defparam debug_led_grn_obuf_0_.oe_sync_reset = "none";
defparam debug_led_grn_obuf_0_.operation_mode = "output";
defparam debug_led_grn_obuf_0_.output_async_reset = "none";
defparam debug_led_grn_obuf_0_.output_power_up = "low";
defparam debug_led_grn_obuf_0_.output_register_mode = "none";
defparam debug_led_grn_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_grn_obuf_1_(
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
	.padio(debug_led_grn[1]));
// synopsys translate_off
defparam debug_led_grn_obuf_1_.input_async_reset = "none";
defparam debug_led_grn_obuf_1_.input_power_up = "low";
defparam debug_led_grn_obuf_1_.input_register_mode = "none";
defparam debug_led_grn_obuf_1_.input_sync_reset = "none";
defparam debug_led_grn_obuf_1_.oe_async_reset = "none";
defparam debug_led_grn_obuf_1_.oe_power_up = "low";
defparam debug_led_grn_obuf_1_.oe_register_mode = "none";
defparam debug_led_grn_obuf_1_.oe_sync_reset = "none";
defparam debug_led_grn_obuf_1_.operation_mode = "output";
defparam debug_led_grn_obuf_1_.output_async_reset = "none";
defparam debug_led_grn_obuf_1_.output_power_up = "low";
defparam debug_led_grn_obuf_1_.output_register_mode = "none";
defparam debug_led_grn_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_grn_obuf_2_(
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
	.padio(debug_led_grn[2]));
// synopsys translate_off
defparam debug_led_grn_obuf_2_.input_async_reset = "none";
defparam debug_led_grn_obuf_2_.input_power_up = "low";
defparam debug_led_grn_obuf_2_.input_register_mode = "none";
defparam debug_led_grn_obuf_2_.input_sync_reset = "none";
defparam debug_led_grn_obuf_2_.oe_async_reset = "none";
defparam debug_led_grn_obuf_2_.oe_power_up = "low";
defparam debug_led_grn_obuf_2_.oe_register_mode = "none";
defparam debug_led_grn_obuf_2_.oe_sync_reset = "none";
defparam debug_led_grn_obuf_2_.operation_mode = "output";
defparam debug_led_grn_obuf_2_.output_async_reset = "none";
defparam debug_led_grn_obuf_2_.output_power_up = "low";
defparam debug_led_grn_obuf_2_.output_register_mode = "none";
defparam debug_led_grn_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_grn_obuf_3_(
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
	.padio(debug_led_grn[3]));
// synopsys translate_off
defparam debug_led_grn_obuf_3_.input_async_reset = "none";
defparam debug_led_grn_obuf_3_.input_power_up = "low";
defparam debug_led_grn_obuf_3_.input_register_mode = "none";
defparam debug_led_grn_obuf_3_.input_sync_reset = "none";
defparam debug_led_grn_obuf_3_.oe_async_reset = "none";
defparam debug_led_grn_obuf_3_.oe_power_up = "low";
defparam debug_led_grn_obuf_3_.oe_register_mode = "none";
defparam debug_led_grn_obuf_3_.oe_sync_reset = "none";
defparam debug_led_grn_obuf_3_.operation_mode = "output";
defparam debug_led_grn_obuf_3_.output_async_reset = "none";
defparam debug_led_grn_obuf_3_.output_power_up = "low";
defparam debug_led_grn_obuf_3_.output_register_mode = "none";
defparam debug_led_grn_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_grn_obuf_4_(
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
	.padio(debug_led_grn[4]));
// synopsys translate_off
defparam debug_led_grn_obuf_4_.input_async_reset = "none";
defparam debug_led_grn_obuf_4_.input_power_up = "low";
defparam debug_led_grn_obuf_4_.input_register_mode = "none";
defparam debug_led_grn_obuf_4_.input_sync_reset = "none";
defparam debug_led_grn_obuf_4_.oe_async_reset = "none";
defparam debug_led_grn_obuf_4_.oe_power_up = "low";
defparam debug_led_grn_obuf_4_.oe_register_mode = "none";
defparam debug_led_grn_obuf_4_.oe_sync_reset = "none";
defparam debug_led_grn_obuf_4_.operation_mode = "output";
defparam debug_led_grn_obuf_4_.output_async_reset = "none";
defparam debug_led_grn_obuf_4_.output_power_up = "low";
defparam debug_led_grn_obuf_4_.output_register_mode = "none";
defparam debug_led_grn_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_grn_obuf_5_(
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
	.padio(debug_led_grn[5]));
// synopsys translate_off
defparam debug_led_grn_obuf_5_.input_async_reset = "none";
defparam debug_led_grn_obuf_5_.input_power_up = "low";
defparam debug_led_grn_obuf_5_.input_register_mode = "none";
defparam debug_led_grn_obuf_5_.input_sync_reset = "none";
defparam debug_led_grn_obuf_5_.oe_async_reset = "none";
defparam debug_led_grn_obuf_5_.oe_power_up = "low";
defparam debug_led_grn_obuf_5_.oe_register_mode = "none";
defparam debug_led_grn_obuf_5_.oe_sync_reset = "none";
defparam debug_led_grn_obuf_5_.operation_mode = "output";
defparam debug_led_grn_obuf_5_.output_async_reset = "none";
defparam debug_led_grn_obuf_5_.output_power_up = "low";
defparam debug_led_grn_obuf_5_.output_register_mode = "none";
defparam debug_led_grn_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_0_obuf_0_(
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
	.padio(debug_num_0[0]));
// synopsys translate_off
defparam debug_num_0_obuf_0_.input_async_reset = "none";
defparam debug_num_0_obuf_0_.input_power_up = "low";
defparam debug_num_0_obuf_0_.input_register_mode = "none";
defparam debug_num_0_obuf_0_.input_sync_reset = "none";
defparam debug_num_0_obuf_0_.oe_async_reset = "none";
defparam debug_num_0_obuf_0_.oe_power_up = "low";
defparam debug_num_0_obuf_0_.oe_register_mode = "none";
defparam debug_num_0_obuf_0_.oe_sync_reset = "none";
defparam debug_num_0_obuf_0_.operation_mode = "output";
defparam debug_num_0_obuf_0_.output_async_reset = "none";
defparam debug_num_0_obuf_0_.output_power_up = "low";
defparam debug_num_0_obuf_0_.output_register_mode = "none";
defparam debug_num_0_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_0_obuf_1_(
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
	.padio(debug_num_0[1]));
// synopsys translate_off
defparam debug_num_0_obuf_1_.input_async_reset = "none";
defparam debug_num_0_obuf_1_.input_power_up = "low";
defparam debug_num_0_obuf_1_.input_register_mode = "none";
defparam debug_num_0_obuf_1_.input_sync_reset = "none";
defparam debug_num_0_obuf_1_.oe_async_reset = "none";
defparam debug_num_0_obuf_1_.oe_power_up = "low";
defparam debug_num_0_obuf_1_.oe_register_mode = "none";
defparam debug_num_0_obuf_1_.oe_sync_reset = "none";
defparam debug_num_0_obuf_1_.operation_mode = "output";
defparam debug_num_0_obuf_1_.output_async_reset = "none";
defparam debug_num_0_obuf_1_.output_power_up = "low";
defparam debug_num_0_obuf_1_.output_register_mode = "none";
defparam debug_num_0_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_0_obuf_2_(
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
	.padio(debug_num_0[2]));
// synopsys translate_off
defparam debug_num_0_obuf_2_.input_async_reset = "none";
defparam debug_num_0_obuf_2_.input_power_up = "low";
defparam debug_num_0_obuf_2_.input_register_mode = "none";
defparam debug_num_0_obuf_2_.input_sync_reset = "none";
defparam debug_num_0_obuf_2_.oe_async_reset = "none";
defparam debug_num_0_obuf_2_.oe_power_up = "low";
defparam debug_num_0_obuf_2_.oe_register_mode = "none";
defparam debug_num_0_obuf_2_.oe_sync_reset = "none";
defparam debug_num_0_obuf_2_.operation_mode = "output";
defparam debug_num_0_obuf_2_.output_async_reset = "none";
defparam debug_num_0_obuf_2_.output_power_up = "low";
defparam debug_num_0_obuf_2_.output_register_mode = "none";
defparam debug_num_0_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_0_obuf_3_(
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
	.padio(debug_num_0[3]));
// synopsys translate_off
defparam debug_num_0_obuf_3_.input_async_reset = "none";
defparam debug_num_0_obuf_3_.input_power_up = "low";
defparam debug_num_0_obuf_3_.input_register_mode = "none";
defparam debug_num_0_obuf_3_.input_sync_reset = "none";
defparam debug_num_0_obuf_3_.oe_async_reset = "none";
defparam debug_num_0_obuf_3_.oe_power_up = "low";
defparam debug_num_0_obuf_3_.oe_register_mode = "none";
defparam debug_num_0_obuf_3_.oe_sync_reset = "none";
defparam debug_num_0_obuf_3_.operation_mode = "output";
defparam debug_num_0_obuf_3_.output_async_reset = "none";
defparam debug_num_0_obuf_3_.output_power_up = "low";
defparam debug_num_0_obuf_3_.output_register_mode = "none";
defparam debug_num_0_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_1_obuf_0_(
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
	.padio(debug_num_1[0]));
// synopsys translate_off
defparam debug_num_1_obuf_0_.input_async_reset = "none";
defparam debug_num_1_obuf_0_.input_power_up = "low";
defparam debug_num_1_obuf_0_.input_register_mode = "none";
defparam debug_num_1_obuf_0_.input_sync_reset = "none";
defparam debug_num_1_obuf_0_.oe_async_reset = "none";
defparam debug_num_1_obuf_0_.oe_power_up = "low";
defparam debug_num_1_obuf_0_.oe_register_mode = "none";
defparam debug_num_1_obuf_0_.oe_sync_reset = "none";
defparam debug_num_1_obuf_0_.operation_mode = "output";
defparam debug_num_1_obuf_0_.output_async_reset = "none";
defparam debug_num_1_obuf_0_.output_power_up = "low";
defparam debug_num_1_obuf_0_.output_register_mode = "none";
defparam debug_num_1_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_1_obuf_1_(
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
	.padio(debug_num_1[1]));
// synopsys translate_off
defparam debug_num_1_obuf_1_.input_async_reset = "none";
defparam debug_num_1_obuf_1_.input_power_up = "low";
defparam debug_num_1_obuf_1_.input_register_mode = "none";
defparam debug_num_1_obuf_1_.input_sync_reset = "none";
defparam debug_num_1_obuf_1_.oe_async_reset = "none";
defparam debug_num_1_obuf_1_.oe_power_up = "low";
defparam debug_num_1_obuf_1_.oe_register_mode = "none";
defparam debug_num_1_obuf_1_.oe_sync_reset = "none";
defparam debug_num_1_obuf_1_.operation_mode = "output";
defparam debug_num_1_obuf_1_.output_async_reset = "none";
defparam debug_num_1_obuf_1_.output_power_up = "low";
defparam debug_num_1_obuf_1_.output_register_mode = "none";
defparam debug_num_1_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_1_obuf_2_(
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
	.padio(debug_num_1[2]));
// synopsys translate_off
defparam debug_num_1_obuf_2_.input_async_reset = "none";
defparam debug_num_1_obuf_2_.input_power_up = "low";
defparam debug_num_1_obuf_2_.input_register_mode = "none";
defparam debug_num_1_obuf_2_.input_sync_reset = "none";
defparam debug_num_1_obuf_2_.oe_async_reset = "none";
defparam debug_num_1_obuf_2_.oe_power_up = "low";
defparam debug_num_1_obuf_2_.oe_register_mode = "none";
defparam debug_num_1_obuf_2_.oe_sync_reset = "none";
defparam debug_num_1_obuf_2_.operation_mode = "output";
defparam debug_num_1_obuf_2_.output_async_reset = "none";
defparam debug_num_1_obuf_2_.output_power_up = "low";
defparam debug_num_1_obuf_2_.output_register_mode = "none";
defparam debug_num_1_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_1_obuf_3_(
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
	.padio(debug_num_1[3]));
// synopsys translate_off
defparam debug_num_1_obuf_3_.input_async_reset = "none";
defparam debug_num_1_obuf_3_.input_power_up = "low";
defparam debug_num_1_obuf_3_.input_register_mode = "none";
defparam debug_num_1_obuf_3_.input_sync_reset = "none";
defparam debug_num_1_obuf_3_.oe_async_reset = "none";
defparam debug_num_1_obuf_3_.oe_power_up = "low";
defparam debug_num_1_obuf_3_.oe_register_mode = "none";
defparam debug_num_1_obuf_3_.oe_sync_reset = "none";
defparam debug_num_1_obuf_3_.operation_mode = "output";
defparam debug_num_1_obuf_3_.output_async_reset = "none";
defparam debug_num_1_obuf_3_.output_power_up = "low";
defparam debug_num_1_obuf_3_.output_register_mode = "none";
defparam debug_num_1_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_2_obuf_0_(
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
	.padio(debug_num_2[0]));
// synopsys translate_off
defparam debug_num_2_obuf_0_.input_async_reset = "none";
defparam debug_num_2_obuf_0_.input_power_up = "low";
defparam debug_num_2_obuf_0_.input_register_mode = "none";
defparam debug_num_2_obuf_0_.input_sync_reset = "none";
defparam debug_num_2_obuf_0_.oe_async_reset = "none";
defparam debug_num_2_obuf_0_.oe_power_up = "low";
defparam debug_num_2_obuf_0_.oe_register_mode = "none";
defparam debug_num_2_obuf_0_.oe_sync_reset = "none";
defparam debug_num_2_obuf_0_.operation_mode = "output";
defparam debug_num_2_obuf_0_.output_async_reset = "none";
defparam debug_num_2_obuf_0_.output_power_up = "low";
defparam debug_num_2_obuf_0_.output_register_mode = "none";
defparam debug_num_2_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_2_obuf_1_(
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
	.padio(debug_num_2[1]));
// synopsys translate_off
defparam debug_num_2_obuf_1_.input_async_reset = "none";
defparam debug_num_2_obuf_1_.input_power_up = "low";
defparam debug_num_2_obuf_1_.input_register_mode = "none";
defparam debug_num_2_obuf_1_.input_sync_reset = "none";
defparam debug_num_2_obuf_1_.oe_async_reset = "none";
defparam debug_num_2_obuf_1_.oe_power_up = "low";
defparam debug_num_2_obuf_1_.oe_register_mode = "none";
defparam debug_num_2_obuf_1_.oe_sync_reset = "none";
defparam debug_num_2_obuf_1_.operation_mode = "output";
defparam debug_num_2_obuf_1_.output_async_reset = "none";
defparam debug_num_2_obuf_1_.output_power_up = "low";
defparam debug_num_2_obuf_1_.output_register_mode = "none";
defparam debug_num_2_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_2_obuf_2_(
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
	.padio(debug_num_2[2]));
// synopsys translate_off
defparam debug_num_2_obuf_2_.input_async_reset = "none";
defparam debug_num_2_obuf_2_.input_power_up = "low";
defparam debug_num_2_obuf_2_.input_register_mode = "none";
defparam debug_num_2_obuf_2_.input_sync_reset = "none";
defparam debug_num_2_obuf_2_.oe_async_reset = "none";
defparam debug_num_2_obuf_2_.oe_power_up = "low";
defparam debug_num_2_obuf_2_.oe_register_mode = "none";
defparam debug_num_2_obuf_2_.oe_sync_reset = "none";
defparam debug_num_2_obuf_2_.operation_mode = "output";
defparam debug_num_2_obuf_2_.output_async_reset = "none";
defparam debug_num_2_obuf_2_.output_power_up = "low";
defparam debug_num_2_obuf_2_.output_register_mode = "none";
defparam debug_num_2_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_2_obuf_3_(
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
	.padio(debug_num_2[3]));
// synopsys translate_off
defparam debug_num_2_obuf_3_.input_async_reset = "none";
defparam debug_num_2_obuf_3_.input_power_up = "low";
defparam debug_num_2_obuf_3_.input_register_mode = "none";
defparam debug_num_2_obuf_3_.input_sync_reset = "none";
defparam debug_num_2_obuf_3_.oe_async_reset = "none";
defparam debug_num_2_obuf_3_.oe_power_up = "low";
defparam debug_num_2_obuf_3_.oe_register_mode = "none";
defparam debug_num_2_obuf_3_.oe_sync_reset = "none";
defparam debug_num_2_obuf_3_.operation_mode = "output";
defparam debug_num_2_obuf_3_.output_async_reset = "none";
defparam debug_num_2_obuf_3_.output_power_up = "low";
defparam debug_num_2_obuf_3_.output_register_mode = "none";
defparam debug_num_2_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_3_obuf_0_(
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
	.padio(debug_num_3[0]));
// synopsys translate_off
defparam debug_num_3_obuf_0_.input_async_reset = "none";
defparam debug_num_3_obuf_0_.input_power_up = "low";
defparam debug_num_3_obuf_0_.input_register_mode = "none";
defparam debug_num_3_obuf_0_.input_sync_reset = "none";
defparam debug_num_3_obuf_0_.oe_async_reset = "none";
defparam debug_num_3_obuf_0_.oe_power_up = "low";
defparam debug_num_3_obuf_0_.oe_register_mode = "none";
defparam debug_num_3_obuf_0_.oe_sync_reset = "none";
defparam debug_num_3_obuf_0_.operation_mode = "output";
defparam debug_num_3_obuf_0_.output_async_reset = "none";
defparam debug_num_3_obuf_0_.output_power_up = "low";
defparam debug_num_3_obuf_0_.output_register_mode = "none";
defparam debug_num_3_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_3_obuf_1_(
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
	.padio(debug_num_3[1]));
// synopsys translate_off
defparam debug_num_3_obuf_1_.input_async_reset = "none";
defparam debug_num_3_obuf_1_.input_power_up = "low";
defparam debug_num_3_obuf_1_.input_register_mode = "none";
defparam debug_num_3_obuf_1_.input_sync_reset = "none";
defparam debug_num_3_obuf_1_.oe_async_reset = "none";
defparam debug_num_3_obuf_1_.oe_power_up = "low";
defparam debug_num_3_obuf_1_.oe_register_mode = "none";
defparam debug_num_3_obuf_1_.oe_sync_reset = "none";
defparam debug_num_3_obuf_1_.operation_mode = "output";
defparam debug_num_3_obuf_1_.output_async_reset = "none";
defparam debug_num_3_obuf_1_.output_power_up = "low";
defparam debug_num_3_obuf_1_.output_register_mode = "none";
defparam debug_num_3_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_3_obuf_2_(
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
	.padio(debug_num_3[2]));
// synopsys translate_off
defparam debug_num_3_obuf_2_.input_async_reset = "none";
defparam debug_num_3_obuf_2_.input_power_up = "low";
defparam debug_num_3_obuf_2_.input_register_mode = "none";
defparam debug_num_3_obuf_2_.input_sync_reset = "none";
defparam debug_num_3_obuf_2_.oe_async_reset = "none";
defparam debug_num_3_obuf_2_.oe_power_up = "low";
defparam debug_num_3_obuf_2_.oe_register_mode = "none";
defparam debug_num_3_obuf_2_.oe_sync_reset = "none";
defparam debug_num_3_obuf_2_.operation_mode = "output";
defparam debug_num_3_obuf_2_.output_async_reset = "none";
defparam debug_num_3_obuf_2_.output_power_up = "low";
defparam debug_num_3_obuf_2_.output_register_mode = "none";
defparam debug_num_3_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_3_obuf_3_(
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
	.padio(debug_num_3[3]));
// synopsys translate_off
defparam debug_num_3_obuf_3_.input_async_reset = "none";
defparam debug_num_3_obuf_3_.input_power_up = "low";
defparam debug_num_3_obuf_3_.input_register_mode = "none";
defparam debug_num_3_obuf_3_.input_sync_reset = "none";
defparam debug_num_3_obuf_3_.oe_async_reset = "none";
defparam debug_num_3_obuf_3_.oe_power_up = "low";
defparam debug_num_3_obuf_3_.oe_register_mode = "none";
defparam debug_num_3_obuf_3_.oe_sync_reset = "none";
defparam debug_num_3_obuf_3_.operation_mode = "output";
defparam debug_num_3_obuf_3_.output_async_reset = "none";
defparam debug_num_3_obuf_3_.output_power_up = "low";
defparam debug_num_3_obuf_3_.output_register_mode = "none";
defparam debug_num_3_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_4_obuf_0_(
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
	.padio(debug_num_4[0]));
// synopsys translate_off
defparam debug_num_4_obuf_0_.input_async_reset = "none";
defparam debug_num_4_obuf_0_.input_power_up = "low";
defparam debug_num_4_obuf_0_.input_register_mode = "none";
defparam debug_num_4_obuf_0_.input_sync_reset = "none";
defparam debug_num_4_obuf_0_.oe_async_reset = "none";
defparam debug_num_4_obuf_0_.oe_power_up = "low";
defparam debug_num_4_obuf_0_.oe_register_mode = "none";
defparam debug_num_4_obuf_0_.oe_sync_reset = "none";
defparam debug_num_4_obuf_0_.operation_mode = "output";
defparam debug_num_4_obuf_0_.output_async_reset = "none";
defparam debug_num_4_obuf_0_.output_power_up = "low";
defparam debug_num_4_obuf_0_.output_register_mode = "none";
defparam debug_num_4_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_4_obuf_1_(
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
	.padio(debug_num_4[1]));
// synopsys translate_off
defparam debug_num_4_obuf_1_.input_async_reset = "none";
defparam debug_num_4_obuf_1_.input_power_up = "low";
defparam debug_num_4_obuf_1_.input_register_mode = "none";
defparam debug_num_4_obuf_1_.input_sync_reset = "none";
defparam debug_num_4_obuf_1_.oe_async_reset = "none";
defparam debug_num_4_obuf_1_.oe_power_up = "low";
defparam debug_num_4_obuf_1_.oe_register_mode = "none";
defparam debug_num_4_obuf_1_.oe_sync_reset = "none";
defparam debug_num_4_obuf_1_.operation_mode = "output";
defparam debug_num_4_obuf_1_.output_async_reset = "none";
defparam debug_num_4_obuf_1_.output_power_up = "low";
defparam debug_num_4_obuf_1_.output_register_mode = "none";
defparam debug_num_4_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_4_obuf_2_(
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
	.padio(debug_num_4[2]));
// synopsys translate_off
defparam debug_num_4_obuf_2_.input_async_reset = "none";
defparam debug_num_4_obuf_2_.input_power_up = "low";
defparam debug_num_4_obuf_2_.input_register_mode = "none";
defparam debug_num_4_obuf_2_.input_sync_reset = "none";
defparam debug_num_4_obuf_2_.oe_async_reset = "none";
defparam debug_num_4_obuf_2_.oe_power_up = "low";
defparam debug_num_4_obuf_2_.oe_register_mode = "none";
defparam debug_num_4_obuf_2_.oe_sync_reset = "none";
defparam debug_num_4_obuf_2_.operation_mode = "output";
defparam debug_num_4_obuf_2_.output_async_reset = "none";
defparam debug_num_4_obuf_2_.output_power_up = "low";
defparam debug_num_4_obuf_2_.output_register_mode = "none";
defparam debug_num_4_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_4_obuf_3_(
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
	.padio(debug_num_4[3]));
// synopsys translate_off
defparam debug_num_4_obuf_3_.input_async_reset = "none";
defparam debug_num_4_obuf_3_.input_power_up = "low";
defparam debug_num_4_obuf_3_.input_register_mode = "none";
defparam debug_num_4_obuf_3_.input_sync_reset = "none";
defparam debug_num_4_obuf_3_.oe_async_reset = "none";
defparam debug_num_4_obuf_3_.oe_power_up = "low";
defparam debug_num_4_obuf_3_.oe_register_mode = "none";
defparam debug_num_4_obuf_3_.oe_sync_reset = "none";
defparam debug_num_4_obuf_3_.operation_mode = "output";
defparam debug_num_4_obuf_3_.output_async_reset = "none";
defparam debug_num_4_obuf_3_.output_power_up = "low";
defparam debug_num_4_obuf_3_.output_register_mode = "none";
defparam debug_num_4_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_5_obuf_0_(
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
	.padio(debug_num_5[0]));
// synopsys translate_off
defparam debug_num_5_obuf_0_.input_async_reset = "none";
defparam debug_num_5_obuf_0_.input_power_up = "low";
defparam debug_num_5_obuf_0_.input_register_mode = "none";
defparam debug_num_5_obuf_0_.input_sync_reset = "none";
defparam debug_num_5_obuf_0_.oe_async_reset = "none";
defparam debug_num_5_obuf_0_.oe_power_up = "low";
defparam debug_num_5_obuf_0_.oe_register_mode = "none";
defparam debug_num_5_obuf_0_.oe_sync_reset = "none";
defparam debug_num_5_obuf_0_.operation_mode = "output";
defparam debug_num_5_obuf_0_.output_async_reset = "none";
defparam debug_num_5_obuf_0_.output_power_up = "low";
defparam debug_num_5_obuf_0_.output_register_mode = "none";
defparam debug_num_5_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_5_obuf_1_(
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
	.padio(debug_num_5[1]));
// synopsys translate_off
defparam debug_num_5_obuf_1_.input_async_reset = "none";
defparam debug_num_5_obuf_1_.input_power_up = "low";
defparam debug_num_5_obuf_1_.input_register_mode = "none";
defparam debug_num_5_obuf_1_.input_sync_reset = "none";
defparam debug_num_5_obuf_1_.oe_async_reset = "none";
defparam debug_num_5_obuf_1_.oe_power_up = "low";
defparam debug_num_5_obuf_1_.oe_register_mode = "none";
defparam debug_num_5_obuf_1_.oe_sync_reset = "none";
defparam debug_num_5_obuf_1_.operation_mode = "output";
defparam debug_num_5_obuf_1_.output_async_reset = "none";
defparam debug_num_5_obuf_1_.output_power_up = "low";
defparam debug_num_5_obuf_1_.output_register_mode = "none";
defparam debug_num_5_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_5_obuf_2_(
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
	.padio(debug_num_5[2]));
// synopsys translate_off
defparam debug_num_5_obuf_2_.input_async_reset = "none";
defparam debug_num_5_obuf_2_.input_power_up = "low";
defparam debug_num_5_obuf_2_.input_register_mode = "none";
defparam debug_num_5_obuf_2_.input_sync_reset = "none";
defparam debug_num_5_obuf_2_.oe_async_reset = "none";
defparam debug_num_5_obuf_2_.oe_power_up = "low";
defparam debug_num_5_obuf_2_.oe_register_mode = "none";
defparam debug_num_5_obuf_2_.oe_sync_reset = "none";
defparam debug_num_5_obuf_2_.operation_mode = "output";
defparam debug_num_5_obuf_2_.output_async_reset = "none";
defparam debug_num_5_obuf_2_.output_power_up = "low";
defparam debug_num_5_obuf_2_.output_register_mode = "none";
defparam debug_num_5_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_5_obuf_3_(
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
	.padio(debug_num_5[3]));
// synopsys translate_off
defparam debug_num_5_obuf_3_.input_async_reset = "none";
defparam debug_num_5_obuf_3_.input_power_up = "low";
defparam debug_num_5_obuf_3_.input_register_mode = "none";
defparam debug_num_5_obuf_3_.input_sync_reset = "none";
defparam debug_num_5_obuf_3_.oe_async_reset = "none";
defparam debug_num_5_obuf_3_.oe_power_up = "low";
defparam debug_num_5_obuf_3_.oe_register_mode = "none";
defparam debug_num_5_obuf_3_.oe_sync_reset = "none";
defparam debug_num_5_obuf_3_.operation_mode = "output";
defparam debug_num_5_obuf_3_.output_async_reset = "none";
defparam debug_num_5_obuf_3_.output_power_up = "low";
defparam debug_num_5_obuf_3_.output_register_mode = "none";
defparam debug_num_5_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_key_a1_a_aI(
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
defparam debug_key_a1_a_aI.input_async_reset = "none";
defparam debug_key_a1_a_aI.input_power_up = "low";
defparam debug_key_a1_a_aI.input_register_mode = "none";
defparam debug_key_a1_a_aI.input_sync_reset = "none";
defparam debug_key_a1_a_aI.oe_async_reset = "none";
defparam debug_key_a1_a_aI.oe_power_up = "low";
defparam debug_key_a1_a_aI.oe_register_mode = "none";
defparam debug_key_a1_a_aI.oe_sync_reset = "none";
defparam debug_key_a1_a_aI.operation_mode = "input";
defparam debug_key_a1_a_aI.output_async_reset = "none";
defparam debug_key_a1_a_aI.output_power_up = "low";
defparam debug_key_a1_a_aI.output_register_mode = "none";
defparam debug_key_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_key_a2_a_aI(
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
defparam debug_key_a2_a_aI.input_async_reset = "none";
defparam debug_key_a2_a_aI.input_power_up = "low";
defparam debug_key_a2_a_aI.input_register_mode = "none";
defparam debug_key_a2_a_aI.input_sync_reset = "none";
defparam debug_key_a2_a_aI.oe_async_reset = "none";
defparam debug_key_a2_a_aI.oe_power_up = "low";
defparam debug_key_a2_a_aI.oe_register_mode = "none";
defparam debug_key_a2_a_aI.oe_sync_reset = "none";
defparam debug_key_a2_a_aI.operation_mode = "input";
defparam debug_key_a2_a_aI.output_async_reset = "none";
defparam debug_key_a2_a_aI.output_power_up = "low";
defparam debug_key_a2_a_aI.output_register_mode = "none";
defparam debug_key_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_key_a3_a_aI(
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
defparam debug_key_a3_a_aI.input_async_reset = "none";
defparam debug_key_a3_a_aI.input_power_up = "low";
defparam debug_key_a3_a_aI.input_register_mode = "none";
defparam debug_key_a3_a_aI.input_sync_reset = "none";
defparam debug_key_a3_a_aI.oe_async_reset = "none";
defparam debug_key_a3_a_aI.oe_power_up = "low";
defparam debug_key_a3_a_aI.oe_register_mode = "none";
defparam debug_key_a3_a_aI.oe_sync_reset = "none";
defparam debug_key_a3_a_aI.operation_mode = "input";
defparam debug_key_a3_a_aI.output_async_reset = "none";
defparam debug_key_a3_a_aI.output_power_up = "low";
defparam debug_key_a3_a_aI.output_register_mode = "none";
defparam debug_key_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a0_a_aI(
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
defparam debug_switch_a0_a_aI.input_async_reset = "none";
defparam debug_switch_a0_a_aI.input_power_up = "low";
defparam debug_switch_a0_a_aI.input_register_mode = "none";
defparam debug_switch_a0_a_aI.input_sync_reset = "none";
defparam debug_switch_a0_a_aI.oe_async_reset = "none";
defparam debug_switch_a0_a_aI.oe_power_up = "low";
defparam debug_switch_a0_a_aI.oe_register_mode = "none";
defparam debug_switch_a0_a_aI.oe_sync_reset = "none";
defparam debug_switch_a0_a_aI.operation_mode = "input";
defparam debug_switch_a0_a_aI.output_async_reset = "none";
defparam debug_switch_a0_a_aI.output_power_up = "low";
defparam debug_switch_a0_a_aI.output_register_mode = "none";
defparam debug_switch_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a1_a_aI(
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
defparam debug_switch_a1_a_aI.input_async_reset = "none";
defparam debug_switch_a1_a_aI.input_power_up = "low";
defparam debug_switch_a1_a_aI.input_register_mode = "none";
defparam debug_switch_a1_a_aI.input_sync_reset = "none";
defparam debug_switch_a1_a_aI.oe_async_reset = "none";
defparam debug_switch_a1_a_aI.oe_power_up = "low";
defparam debug_switch_a1_a_aI.oe_register_mode = "none";
defparam debug_switch_a1_a_aI.oe_sync_reset = "none";
defparam debug_switch_a1_a_aI.operation_mode = "input";
defparam debug_switch_a1_a_aI.output_async_reset = "none";
defparam debug_switch_a1_a_aI.output_power_up = "low";
defparam debug_switch_a1_a_aI.output_register_mode = "none";
defparam debug_switch_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a2_a_aI(
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
defparam debug_switch_a2_a_aI.input_async_reset = "none";
defparam debug_switch_a2_a_aI.input_power_up = "low";
defparam debug_switch_a2_a_aI.input_register_mode = "none";
defparam debug_switch_a2_a_aI.input_sync_reset = "none";
defparam debug_switch_a2_a_aI.oe_async_reset = "none";
defparam debug_switch_a2_a_aI.oe_power_up = "low";
defparam debug_switch_a2_a_aI.oe_register_mode = "none";
defparam debug_switch_a2_a_aI.oe_sync_reset = "none";
defparam debug_switch_a2_a_aI.operation_mode = "input";
defparam debug_switch_a2_a_aI.output_async_reset = "none";
defparam debug_switch_a2_a_aI.output_power_up = "low";
defparam debug_switch_a2_a_aI.output_register_mode = "none";
defparam debug_switch_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a3_a_aI(
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
defparam debug_switch_a3_a_aI.input_async_reset = "none";
defparam debug_switch_a3_a_aI.input_power_up = "low";
defparam debug_switch_a3_a_aI.input_register_mode = "none";
defparam debug_switch_a3_a_aI.input_sync_reset = "none";
defparam debug_switch_a3_a_aI.oe_async_reset = "none";
defparam debug_switch_a3_a_aI.oe_power_up = "low";
defparam debug_switch_a3_a_aI.oe_register_mode = "none";
defparam debug_switch_a3_a_aI.oe_sync_reset = "none";
defparam debug_switch_a3_a_aI.operation_mode = "input";
defparam debug_switch_a3_a_aI.output_async_reset = "none";
defparam debug_switch_a3_a_aI.output_power_up = "low";
defparam debug_switch_a3_a_aI.output_register_mode = "none";
defparam debug_switch_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a4_a_aI(
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
defparam debug_switch_a4_a_aI.input_async_reset = "none";
defparam debug_switch_a4_a_aI.input_power_up = "low";
defparam debug_switch_a4_a_aI.input_register_mode = "none";
defparam debug_switch_a4_a_aI.input_sync_reset = "none";
defparam debug_switch_a4_a_aI.oe_async_reset = "none";
defparam debug_switch_a4_a_aI.oe_power_up = "low";
defparam debug_switch_a4_a_aI.oe_register_mode = "none";
defparam debug_switch_a4_a_aI.oe_sync_reset = "none";
defparam debug_switch_a4_a_aI.operation_mode = "input";
defparam debug_switch_a4_a_aI.output_async_reset = "none";
defparam debug_switch_a4_a_aI.output_power_up = "low";
defparam debug_switch_a4_a_aI.output_register_mode = "none";
defparam debug_switch_a4_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a5_a_aI(
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
defparam debug_switch_a5_a_aI.input_async_reset = "none";
defparam debug_switch_a5_a_aI.input_power_up = "low";
defparam debug_switch_a5_a_aI.input_register_mode = "none";
defparam debug_switch_a5_a_aI.input_sync_reset = "none";
defparam debug_switch_a5_a_aI.oe_async_reset = "none";
defparam debug_switch_a5_a_aI.oe_power_up = "low";
defparam debug_switch_a5_a_aI.oe_register_mode = "none";
defparam debug_switch_a5_a_aI.oe_sync_reset = "none";
defparam debug_switch_a5_a_aI.operation_mode = "input";
defparam debug_switch_a5_a_aI.output_async_reset = "none";
defparam debug_switch_a5_a_aI.output_power_up = "low";
defparam debug_switch_a5_a_aI.output_register_mode = "none";
defparam debug_switch_a5_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a6_a_aI(
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
defparam debug_switch_a6_a_aI.input_async_reset = "none";
defparam debug_switch_a6_a_aI.input_power_up = "low";
defparam debug_switch_a6_a_aI.input_register_mode = "none";
defparam debug_switch_a6_a_aI.input_sync_reset = "none";
defparam debug_switch_a6_a_aI.oe_async_reset = "none";
defparam debug_switch_a6_a_aI.oe_power_up = "low";
defparam debug_switch_a6_a_aI.oe_register_mode = "none";
defparam debug_switch_a6_a_aI.oe_sync_reset = "none";
defparam debug_switch_a6_a_aI.operation_mode = "input";
defparam debug_switch_a6_a_aI.output_async_reset = "none";
defparam debug_switch_a6_a_aI.output_power_up = "low";
defparam debug_switch_a6_a_aI.output_register_mode = "none";
defparam debug_switch_a6_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a7_a_aI(
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
defparam debug_switch_a7_a_aI.input_async_reset = "none";
defparam debug_switch_a7_a_aI.input_power_up = "low";
defparam debug_switch_a7_a_aI.input_register_mode = "none";
defparam debug_switch_a7_a_aI.input_sync_reset = "none";
defparam debug_switch_a7_a_aI.oe_async_reset = "none";
defparam debug_switch_a7_a_aI.oe_power_up = "low";
defparam debug_switch_a7_a_aI.oe_register_mode = "none";
defparam debug_switch_a7_a_aI.oe_sync_reset = "none";
defparam debug_switch_a7_a_aI.operation_mode = "input";
defparam debug_switch_a7_a_aI.output_async_reset = "none";
defparam debug_switch_a7_a_aI.output_power_up = "low";
defparam debug_switch_a7_a_aI.output_register_mode = "none";
defparam debug_switch_a7_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a8_a_aI(
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
defparam debug_switch_a8_a_aI.input_async_reset = "none";
defparam debug_switch_a8_a_aI.input_power_up = "low";
defparam debug_switch_a8_a_aI.input_register_mode = "none";
defparam debug_switch_a8_a_aI.input_sync_reset = "none";
defparam debug_switch_a8_a_aI.oe_async_reset = "none";
defparam debug_switch_a8_a_aI.oe_power_up = "low";
defparam debug_switch_a8_a_aI.oe_register_mode = "none";
defparam debug_switch_a8_a_aI.oe_sync_reset = "none";
defparam debug_switch_a8_a_aI.operation_mode = "input";
defparam debug_switch_a8_a_aI.output_async_reset = "none";
defparam debug_switch_a8_a_aI.output_power_up = "low";
defparam debug_switch_a8_a_aI.output_register_mode = "none";
defparam debug_switch_a8_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a9_a_aI(
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
defparam debug_switch_a9_a_aI.input_async_reset = "none";
defparam debug_switch_a9_a_aI.input_power_up = "low";
defparam debug_switch_a9_a_aI.input_register_mode = "none";
defparam debug_switch_a9_a_aI.input_sync_reset = "none";
defparam debug_switch_a9_a_aI.oe_async_reset = "none";
defparam debug_switch_a9_a_aI.oe_power_up = "low";
defparam debug_switch_a9_a_aI.oe_register_mode = "none";
defparam debug_switch_a9_a_aI.oe_sync_reset = "none";
defparam debug_switch_a9_a_aI.operation_mode = "input";
defparam debug_switch_a9_a_aI.output_async_reset = "none";
defparam debug_switch_a9_a_aI.output_power_up = "low";
defparam debug_switch_a9_a_aI.output_register_mode = "none";
defparam debug_switch_a9_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a10_a_aI(
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
defparam debug_switch_a10_a_aI.input_async_reset = "none";
defparam debug_switch_a10_a_aI.input_power_up = "low";
defparam debug_switch_a10_a_aI.input_register_mode = "none";
defparam debug_switch_a10_a_aI.input_sync_reset = "none";
defparam debug_switch_a10_a_aI.oe_async_reset = "none";
defparam debug_switch_a10_a_aI.oe_power_up = "low";
defparam debug_switch_a10_a_aI.oe_register_mode = "none";
defparam debug_switch_a10_a_aI.oe_sync_reset = "none";
defparam debug_switch_a10_a_aI.operation_mode = "input";
defparam debug_switch_a10_a_aI.output_async_reset = "none";
defparam debug_switch_a10_a_aI.output_power_up = "low";
defparam debug_switch_a10_a_aI.output_register_mode = "none";
defparam debug_switch_a10_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a11_a_aI(
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
defparam debug_switch_a11_a_aI.input_async_reset = "none";
defparam debug_switch_a11_a_aI.input_power_up = "low";
defparam debug_switch_a11_a_aI.input_register_mode = "none";
defparam debug_switch_a11_a_aI.input_sync_reset = "none";
defparam debug_switch_a11_a_aI.oe_async_reset = "none";
defparam debug_switch_a11_a_aI.oe_power_up = "low";
defparam debug_switch_a11_a_aI.oe_register_mode = "none";
defparam debug_switch_a11_a_aI.oe_sync_reset = "none";
defparam debug_switch_a11_a_aI.operation_mode = "input";
defparam debug_switch_a11_a_aI.output_async_reset = "none";
defparam debug_switch_a11_a_aI.output_power_up = "low";
defparam debug_switch_a11_a_aI.output_register_mode = "none";
defparam debug_switch_a11_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a12_a_aI(
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
defparam debug_switch_a12_a_aI.input_async_reset = "none";
defparam debug_switch_a12_a_aI.input_power_up = "low";
defparam debug_switch_a12_a_aI.input_register_mode = "none";
defparam debug_switch_a12_a_aI.input_sync_reset = "none";
defparam debug_switch_a12_a_aI.oe_async_reset = "none";
defparam debug_switch_a12_a_aI.oe_power_up = "low";
defparam debug_switch_a12_a_aI.oe_register_mode = "none";
defparam debug_switch_a12_a_aI.oe_sync_reset = "none";
defparam debug_switch_a12_a_aI.operation_mode = "input";
defparam debug_switch_a12_a_aI.output_async_reset = "none";
defparam debug_switch_a12_a_aI.output_power_up = "low";
defparam debug_switch_a12_a_aI.output_register_mode = "none";
defparam debug_switch_a12_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a13_a_aI(
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
defparam debug_switch_a13_a_aI.input_async_reset = "none";
defparam debug_switch_a13_a_aI.input_power_up = "low";
defparam debug_switch_a13_a_aI.input_register_mode = "none";
defparam debug_switch_a13_a_aI.input_sync_reset = "none";
defparam debug_switch_a13_a_aI.oe_async_reset = "none";
defparam debug_switch_a13_a_aI.oe_power_up = "low";
defparam debug_switch_a13_a_aI.oe_register_mode = "none";
defparam debug_switch_a13_a_aI.oe_sync_reset = "none";
defparam debug_switch_a13_a_aI.operation_mode = "input";
defparam debug_switch_a13_a_aI.output_async_reset = "none";
defparam debug_switch_a13_a_aI.output_power_up = "low";
defparam debug_switch_a13_a_aI.output_register_mode = "none";
defparam debug_switch_a13_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a14_a_aI(
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
defparam debug_switch_a14_a_aI.input_async_reset = "none";
defparam debug_switch_a14_a_aI.input_power_up = "low";
defparam debug_switch_a14_a_aI.input_register_mode = "none";
defparam debug_switch_a14_a_aI.input_sync_reset = "none";
defparam debug_switch_a14_a_aI.oe_async_reset = "none";
defparam debug_switch_a14_a_aI.oe_power_up = "low";
defparam debug_switch_a14_a_aI.oe_register_mode = "none";
defparam debug_switch_a14_a_aI.oe_sync_reset = "none";
defparam debug_switch_a14_a_aI.operation_mode = "input";
defparam debug_switch_a14_a_aI.output_async_reset = "none";
defparam debug_switch_a14_a_aI.output_power_up = "low";
defparam debug_switch_a14_a_aI.output_register_mode = "none";
defparam debug_switch_a14_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a15_a_aI(
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
defparam debug_switch_a15_a_aI.input_async_reset = "none";
defparam debug_switch_a15_a_aI.input_power_up = "low";
defparam debug_switch_a15_a_aI.input_register_mode = "none";
defparam debug_switch_a15_a_aI.input_sync_reset = "none";
defparam debug_switch_a15_a_aI.oe_async_reset = "none";
defparam debug_switch_a15_a_aI.oe_power_up = "low";
defparam debug_switch_a15_a_aI.oe_register_mode = "none";
defparam debug_switch_a15_a_aI.oe_sync_reset = "none";
defparam debug_switch_a15_a_aI.operation_mode = "input";
defparam debug_switch_a15_a_aI.output_async_reset = "none";
defparam debug_switch_a15_a_aI.output_power_up = "low";
defparam debug_switch_a15_a_aI.output_register_mode = "none";
defparam debug_switch_a15_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a16_a_aI(
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
defparam debug_switch_a16_a_aI.input_async_reset = "none";
defparam debug_switch_a16_a_aI.input_power_up = "low";
defparam debug_switch_a16_a_aI.input_register_mode = "none";
defparam debug_switch_a16_a_aI.input_sync_reset = "none";
defparam debug_switch_a16_a_aI.oe_async_reset = "none";
defparam debug_switch_a16_a_aI.oe_power_up = "low";
defparam debug_switch_a16_a_aI.oe_register_mode = "none";
defparam debug_switch_a16_a_aI.oe_sync_reset = "none";
defparam debug_switch_a16_a_aI.operation_mode = "input";
defparam debug_switch_a16_a_aI.output_async_reset = "none";
defparam debug_switch_a16_a_aI.output_power_up = "low";
defparam debug_switch_a16_a_aI.output_register_mode = "none";
defparam debug_switch_a16_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a17_a_aI(
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
defparam debug_switch_a17_a_aI.input_async_reset = "none";
defparam debug_switch_a17_a_aI.input_power_up = "low";
defparam debug_switch_a17_a_aI.input_register_mode = "none";
defparam debug_switch_a17_a_aI.input_sync_reset = "none";
defparam debug_switch_a17_a_aI.oe_async_reset = "none";
defparam debug_switch_a17_a_aI.oe_power_up = "low";
defparam debug_switch_a17_a_aI.oe_register_mode = "none";
defparam debug_switch_a17_a_aI.oe_sync_reset = "none";
defparam debug_switch_a17_a_aI.operation_mode = "input";
defparam debug_switch_a17_a_aI.output_async_reset = "none";
defparam debug_switch_a17_a_aI.output_power_up = "low";
defparam debug_switch_a17_a_aI.output_register_mode = "none";
defparam debug_switch_a17_a_aI.output_sync_reset = "none";
// synopsys translate_on

endmodule
