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

// DATE "03/28/2013 15:00:38"

// 
// Device: Altera EP2C35F672C7 Package FBGA672
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module kirsch_chip (
	i_clock,
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

wire gnd = 1'b0;
wire vcc = 1'b1;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
// synopsys translate_off
initial $sdf_annotate("kirsch_v.sdo");
// synopsys translate_on

wire i_reset_acombout;
wire modgen_counter_o_row_anx58250z9;
wire nx17322z4;
wire modgen_counter_x_anx58250z13;
wire modgen_counter_x_anx52268z1;
wire modgen_counter_o_row_anx58250z9_afeeder_combout;
wire i_clock_acombout;
wire i_clock_aclkctrl_outclk;
wire modgen_counter_o_row_anx58250z15_afeeder_combout;
wire i_valid_acombout;
wire modgen_counter_o_row_anx58250z14;
wire modgen_counter_o_row_anx52268z1;
wire modgen_counter_o_row_anx58250z13_afeeder_combout;
wire nx43909z1;
wire nx42912z1_afeeder_combout;
wire nx42912z1;
wire nx41915z1_afeeder_combout;
wire nx41915z1;
wire nx40918z1;
wire nx39921z1_afeeder_combout;
wire nx39921z1;
wire nx38924z1;
wire v_7__afeeder_combout;
wire v_7_;
wire modgen_counter_x_anx51271z1;
wire nx10536z1;
wire modgen_counter_x_anx58250z15;
wire modgen_counter_x_anx58250z14;
wire modgen_counter_x_anx58250z12;
wire modgen_counter_x_anx58250z10;
wire modgen_counter_x_anx54262z1;
wire modgen_counter_x_anx58250z9;
wire modgen_counter_x_anx53265z1;
wire modgen_counter_x_anx58250z11;
wire nx17322z7;
wire modgen_counter_x_anx58250z8;
wire modgen_counter_x_anx55259z1;
wire modgen_counter_x_anx58250z7;
wire modgen_counter_x_anx58250z6;
wire modgen_counter_x_anx56256z1;
wire modgen_counter_x_anx58250z5;
wire modgen_counter_x_anx58250z4;
wire modgen_counter_x_anx57253z1;
wire modgen_counter_x_anx58250z3;
wire modgen_counter_x_anx58250z2;
wire modgen_counter_x_anx58250z1;
wire modgen_counter_x_anx1041z1;
wire nx17322z6;
wire nx17322z5;
wire nx17322z8;
wire modgen_counter_o_row_anx57253z3;
wire modgen_counter_o_row_anx58250z13;
wire modgen_counter_o_row_anx58250z12;
wire modgen_counter_o_row_anx53265z1;
wire modgen_counter_o_row_anx58250z11_afeeder_combout;
wire modgen_counter_o_row_anx58250z11;
wire modgen_counter_o_row_anx58250z10;
wire modgen_counter_o_row_anx58250z8;
wire modgen_counter_o_row_anx55259z1;
wire modgen_counter_o_row_anx58250z7;
wire modgen_counter_o_row_anx58250z6;
wire modgen_counter_o_row_anx56256z1;
wire modgen_counter_o_row_anx58250z5_afeeder_combout;
wire modgen_counter_o_row_anx58250z5;
wire modgen_counter_o_row_anx58250z4;
wire modgen_counter_o_row_anx57253z1;
wire modgen_counter_o_row_anx58250z3_afeeder_combout;
wire modgen_counter_o_row_anx58250z3;
wire modgen_counter_o_row_anx58250z2;
wire modgen_counter_o_row_anx58250z1;
wire modgen_counter_o_row_anx1041z1_afeeder_combout;
wire modgen_counter_o_row_anx1041z1;
wire nx17322z3;
wire nx17322z2;
wire nx17322z1;
wire modgen_counter_o_row_anx58250z15;
wire modgen_counter_o_row_anx51271z1;
wire nx16335z1_afeeder_combout;
wire nx16335z1;
wire nx17332z1;
wire nx18329z1;
wire modgen_counter_o_row_anx54262z1;
wire nx19326z1;
wire nx20323z1;
wire nx21320z1;
wire nx22317z1;
wire nx23314z1;


// atom is at PIN_C13
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

// atom is at LCFF_X61_Y35_N25
cycloneii_lcell_ff modgen_counter_o_row_areg_q_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx58250z9_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z1),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_row_anx58250z9));

// atom is at LCCOMB_X61_Y35_N30
cycloneii_lcell_comb ix17322z52926(
// Equation(s):
// nx17322z4 = modgen_counter_o_row_anx58250z9 & modgen_counter_o_row_anx58250z13 & modgen_counter_o_row_anx58250z11 & modgen_counter_o_row_anx58250z15

	.dataa(modgen_counter_o_row_anx58250z9),
	.datab(modgen_counter_o_row_anx58250z13),
	.datac(modgen_counter_o_row_anx58250z11),
	.datad(modgen_counter_o_row_anx58250z15),
	.cin(gnd),
	.combout(nx17322z4),
	.cout());
// synopsys translate_off
defparam ix17322z52926.lut_mask = 16'h8000;
defparam ix17322z52926.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X62_Y35_N5
cycloneii_lcell_ff modgen_counter_x_areg_q_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_x_anx52268z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z1),
	.sload(gnd),
	.ena(nx10536z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_x_anx58250z13));

// atom is at LCCOMB_X62_Y35_N4
cycloneii_lcell_comb modgen_counter_x_aix58250z52930(
// Equation(s):
// modgen_counter_x_anx52268z1 = modgen_counter_x_anx58250z13 & !modgen_counter_x_anx58250z14 # !modgen_counter_x_anx58250z13 & (modgen_counter_x_anx58250z14 # GND)
// modgen_counter_x_anx58250z12 = CARRY(!modgen_counter_x_anx58250z14 # !modgen_counter_x_anx58250z13)

	.dataa(modgen_counter_x_anx58250z13),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_x_anx58250z14),
	.combout(modgen_counter_x_anx52268z1),
	.cout(modgen_counter_x_anx58250z12));
// synopsys translate_off
defparam modgen_counter_x_aix58250z52930.lut_mask = 16'h5A5F;
defparam modgen_counter_x_aix58250z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y35_N24
cycloneii_lcell_comb modgen_counter_o_row_anx58250z9_afeeder(
// Equation(s):
// modgen_counter_o_row_anx58250z9_afeeder_combout = modgen_counter_o_row_anx54262z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(modgen_counter_o_row_anx54262z1),
	.cin(gnd),
	.combout(modgen_counter_o_row_anx58250z9_afeeder_combout),
	.cout());
// synopsys translate_off
defparam modgen_counter_o_row_anx58250z9_afeeder.lut_mask = 16'hFF00;
defparam modgen_counter_o_row_anx58250z9_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_P2
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

// atom is at CLKCTRL_G3
cycloneii_clkctrl i_clock_aclkctrl(
	.ena(vcc),
	.inclk({gnd,gnd,gnd,i_clock_acombout}),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(i_clock_aclkctrl_outclk));
// synopsys translate_off
defparam i_clock_aclkctrl.clock_type = "global clock";
defparam i_clock_aclkctrl.ena_register_mode = "falling edge";
// synopsys translate_on

// atom is at LCCOMB_X61_Y35_N0
cycloneii_lcell_comb modgen_counter_o_row_anx58250z15_afeeder(
// Equation(s):
// modgen_counter_o_row_anx58250z15_afeeder_combout = modgen_counter_o_row_anx51271z1

	.dataa(vcc),
	.datab(vcc),
	.datac(modgen_counter_o_row_anx51271z1),
	.datad(vcc),
	.cin(gnd),
	.combout(modgen_counter_o_row_anx58250z15_afeeder_combout),
	.cout());
// synopsys translate_off
defparam modgen_counter_o_row_anx58250z15_afeeder.lut_mask = 16'hF0F0;
defparam modgen_counter_o_row_anx58250z15_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_C22
cycloneii_io i_valid_ibuf(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(i_clock_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_valid_acombout),
	.regout(nx43909z1),
	.differentialout(),
	.linkout(),
	.padio(i_valid));
// synopsys translate_off
defparam i_valid_ibuf.input_async_reset = "none";
defparam i_valid_ibuf.input_power_up = "low";
defparam i_valid_ibuf.input_register_mode = "register";
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

// atom is at LCCOMB_X61_Y35_N4
cycloneii_lcell_comb modgen_counter_o_row_aix58250z52931(
// Equation(s):
// modgen_counter_o_row_anx51271z1 = modgen_counter_o_row_anx58250z15 $ VCC
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

// atom is at LCCOMB_X61_Y35_N6
cycloneii_lcell_comb modgen_counter_o_row_aix58250z52930(
// Equation(s):
// modgen_counter_o_row_anx52268z1 = modgen_counter_o_row_anx58250z13 & !modgen_counter_o_row_anx58250z14 # !modgen_counter_o_row_anx58250z13 & (modgen_counter_o_row_anx58250z14 # GND)
// modgen_counter_o_row_anx58250z12 = CARRY(!modgen_counter_o_row_anx58250z14 # !modgen_counter_o_row_anx58250z13)

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

// atom is at LCCOMB_X61_Y35_N28
cycloneii_lcell_comb modgen_counter_o_row_anx58250z13_afeeder(
// Equation(s):
// modgen_counter_o_row_anx58250z13_afeeder_combout = modgen_counter_o_row_anx52268z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(modgen_counter_o_row_anx52268z1),
	.cin(gnd),
	.combout(modgen_counter_o_row_anx58250z13_afeeder_combout),
	.cout());
// synopsys translate_off
defparam modgen_counter_o_row_anx58250z13_afeeder.lut_mask = 16'hFF00;
defparam modgen_counter_o_row_anx58250z13_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X63_Y35_N2
cycloneii_lcell_comb nx42912z1_afeeder(
// Equation(s):
// nx42912z1_afeeder_combout = nx43909z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx43909z1),
	.cin(gnd),
	.combout(nx42912z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx42912z1_afeeder.lut_mask = 16'hFF00;
defparam nx42912z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X63_Y35_N3
cycloneii_lcell_ff ix9_reg_v_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx42912z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx42912z1));

// atom is at LCCOMB_X63_Y35_N8
cycloneii_lcell_comb nx41915z1_afeeder(
// Equation(s):
// nx41915z1_afeeder_combout = nx42912z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx42912z1),
	.cin(gnd),
	.combout(nx41915z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx41915z1_afeeder.lut_mask = 16'hFF00;
defparam nx41915z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X63_Y35_N9
cycloneii_lcell_ff ix9_reg_v_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx41915z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx41915z1));

// atom is at LCFF_X63_Y35_N7
cycloneii_lcell_ff ix9_reg_v_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(nx41915z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx40918z1));

// atom is at LCCOMB_X63_Y35_N20
cycloneii_lcell_comb nx39921z1_afeeder(
// Equation(s):
// nx39921z1_afeeder_combout = nx40918z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx40918z1),
	.cin(gnd),
	.combout(nx39921z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx39921z1_afeeder.lut_mask = 16'hFF00;
defparam nx39921z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X63_Y35_N21
cycloneii_lcell_ff ix9_reg_v_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx39921z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx39921z1));

// atom is at LCFF_X63_Y35_N19
cycloneii_lcell_ff ix9_reg_v_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(nx39921z1),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx38924z1));

// atom is at LCCOMB_X63_Y35_N0
cycloneii_lcell_comb v_7__afeeder(
// Equation(s):
// v_7__afeeder_combout = nx38924z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(nx38924z1),
	.cin(gnd),
	.combout(v_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam v_7__afeeder.lut_mask = 16'hFF00;
defparam v_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X63_Y35_N1
cycloneii_lcell_ff ix9_reg_v_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(v_7__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(v_7_));

// atom is at LCCOMB_X62_Y35_N2
cycloneii_lcell_comb modgen_counter_x_aix58250z52931(
// Equation(s):
// modgen_counter_x_anx51271z1 = modgen_counter_x_anx58250z15 $ VCC
// modgen_counter_x_anx58250z14 = CARRY(modgen_counter_x_anx58250z15)

	.dataa(vcc),
	.datab(modgen_counter_x_anx58250z15),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(modgen_counter_x_anx51271z1),
	.cout(modgen_counter_x_anx58250z14));
// synopsys translate_off
defparam modgen_counter_x_aix58250z52931.lut_mask = 16'h33CC;
defparam modgen_counter_x_aix58250z52931.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X62_Y35_N30
cycloneii_lcell_comb ix10536z52923(
// Equation(s):
// nx10536z1 = i_reset_acombout # nx17322z2 # !i_valid_acombout & v_7_

	.dataa(i_reset_acombout),
	.datab(i_valid_acombout),
	.datac(v_7_),
	.datad(nx17322z2),
	.cin(gnd),
	.combout(nx10536z1),
	.cout());
// synopsys translate_off
defparam ix10536z52923.lut_mask = 16'hFFBA;
defparam ix10536z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X62_Y35_N3
cycloneii_lcell_ff modgen_counter_x_areg_q_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_x_anx51271z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z1),
	.sload(gnd),
	.ena(nx10536z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_x_anx58250z15));

// atom is at LCCOMB_X62_Y35_N6
cycloneii_lcell_comb modgen_counter_x_aix58250z52929(
// Equation(s):
// modgen_counter_x_anx53265z1 = modgen_counter_x_anx58250z11 & (modgen_counter_x_anx58250z12 $ GND) # !modgen_counter_x_anx58250z11 & !modgen_counter_x_anx58250z12 & VCC
// modgen_counter_x_anx58250z10 = CARRY(modgen_counter_x_anx58250z11 & !modgen_counter_x_anx58250z12)

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

// atom is at LCCOMB_X62_Y35_N8
cycloneii_lcell_comb modgen_counter_x_aix58250z52928(
// Equation(s):
// modgen_counter_x_anx54262z1 = modgen_counter_x_anx58250z9 & !modgen_counter_x_anx58250z10 # !modgen_counter_x_anx58250z9 & (modgen_counter_x_anx58250z10 # GND)
// modgen_counter_x_anx58250z8 = CARRY(!modgen_counter_x_anx58250z10 # !modgen_counter_x_anx58250z9)

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

// atom is at LCFF_X62_Y35_N9
cycloneii_lcell_ff modgen_counter_x_areg_q_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_x_anx54262z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z1),
	.sload(gnd),
	.ena(nx10536z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_x_anx58250z9));

// atom is at LCFF_X62_Y35_N7
cycloneii_lcell_ff modgen_counter_x_areg_q_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_x_anx53265z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z1),
	.sload(gnd),
	.ena(nx10536z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_x_anx58250z11));

// atom is at LCCOMB_X62_Y35_N20
cycloneii_lcell_comb ix17322z52929(
// Equation(s):
// nx17322z7 = modgen_counter_x_anx58250z9 & modgen_counter_x_anx58250z11

	.dataa(vcc),
	.datab(vcc),
	.datac(modgen_counter_x_anx58250z9),
	.datad(modgen_counter_x_anx58250z11),
	.cin(gnd),
	.combout(nx17322z7),
	.cout());
// synopsys translate_off
defparam ix17322z52929.lut_mask = 16'hF000;
defparam ix17322z52929.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X62_Y35_N10
cycloneii_lcell_comb modgen_counter_x_aix58250z52927(
// Equation(s):
// modgen_counter_x_anx55259z1 = modgen_counter_x_anx58250z7 & (modgen_counter_x_anx58250z8 $ GND) # !modgen_counter_x_anx58250z7 & !modgen_counter_x_anx58250z8 & VCC
// modgen_counter_x_anx58250z6 = CARRY(modgen_counter_x_anx58250z7 & !modgen_counter_x_anx58250z8)

	.dataa(vcc),
	.datab(modgen_counter_x_anx58250z7),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_x_anx58250z8),
	.combout(modgen_counter_x_anx55259z1),
	.cout(modgen_counter_x_anx58250z6));
// synopsys translate_off
defparam modgen_counter_x_aix58250z52927.lut_mask = 16'hC30C;
defparam modgen_counter_x_aix58250z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X62_Y35_N11
cycloneii_lcell_ff modgen_counter_x_areg_q_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_x_anx55259z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z1),
	.sload(gnd),
	.ena(nx10536z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_x_anx58250z7));

// atom is at LCCOMB_X62_Y35_N12
cycloneii_lcell_comb modgen_counter_x_aix58250z52926(
// Equation(s):
// modgen_counter_x_anx56256z1 = modgen_counter_x_anx58250z5 & !modgen_counter_x_anx58250z6 # !modgen_counter_x_anx58250z5 & (modgen_counter_x_anx58250z6 # GND)
// modgen_counter_x_anx58250z4 = CARRY(!modgen_counter_x_anx58250z6 # !modgen_counter_x_anx58250z5)

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

// atom is at LCFF_X62_Y35_N13
cycloneii_lcell_ff modgen_counter_x_areg_q_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_x_anx56256z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z1),
	.sload(gnd),
	.ena(nx10536z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_x_anx58250z5));

// atom is at LCCOMB_X62_Y35_N14
cycloneii_lcell_comb modgen_counter_x_aix58250z52925(
// Equation(s):
// modgen_counter_x_anx57253z1 = modgen_counter_x_anx58250z3 & (modgen_counter_x_anx58250z4 $ GND) # !modgen_counter_x_anx58250z3 & !modgen_counter_x_anx58250z4 & VCC
// modgen_counter_x_anx58250z2 = CARRY(modgen_counter_x_anx58250z3 & !modgen_counter_x_anx58250z4)

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

// atom is at LCFF_X62_Y35_N15
cycloneii_lcell_ff modgen_counter_x_areg_q_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_x_anx57253z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z1),
	.sload(gnd),
	.ena(nx10536z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_x_anx58250z3));

// atom is at LCCOMB_X62_Y35_N16
cycloneii_lcell_comb modgen_counter_x_aix58250z52923(
// Equation(s):
// modgen_counter_x_anx58250z1 = modgen_counter_x_anx58250z2 $ modgen_counter_x_anx1041z1

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

// atom is at LCFF_X62_Y35_N17
cycloneii_lcell_ff modgen_counter_x_areg_q_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_x_anx58250z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z1),
	.sload(gnd),
	.ena(nx10536z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_x_anx1041z1));

// atom is at LCCOMB_X62_Y35_N18
cycloneii_lcell_comb ix17322z52928(
// Equation(s):
// nx17322z6 = modgen_counter_x_anx58250z7 & modgen_counter_x_anx58250z3 & modgen_counter_x_anx1041z1 & modgen_counter_x_anx58250z5

	.dataa(modgen_counter_x_anx58250z7),
	.datab(modgen_counter_x_anx58250z3),
	.datac(modgen_counter_x_anx1041z1),
	.datad(modgen_counter_x_anx58250z5),
	.cin(gnd),
	.combout(nx17322z6),
	.cout());
// synopsys translate_off
defparam ix17322z52928.lut_mask = 16'h8000;
defparam ix17322z52928.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X62_Y35_N22
cycloneii_lcell_comb ix17322z52927(
// Equation(s):
// nx17322z5 = modgen_counter_x_anx58250z13 & modgen_counter_x_anx58250z15 & nx17322z7 & nx17322z6

	.dataa(modgen_counter_x_anx58250z13),
	.datab(modgen_counter_x_anx58250z15),
	.datac(nx17322z7),
	.datad(nx17322z6),
	.cin(gnd),
	.combout(nx17322z5),
	.cout());
// synopsys translate_off
defparam ix17322z52927.lut_mask = 16'h8000;
defparam ix17322z52927.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X63_Y35_N18
cycloneii_lcell_comb ix17322z52930(
// Equation(s):
// nx17322z8 = !i_valid_acombout & v_7_ & nx17322z5

	.dataa(i_valid_acombout),
	.datab(v_7_),
	.datac(vcc),
	.datad(nx17322z5),
	.cin(gnd),
	.combout(nx17322z8),
	.cout());
// synopsys translate_off
defparam ix17322z52930.lut_mask = 16'h4400;
defparam ix17322z52930.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X62_Y35_N28
cycloneii_lcell_comb modgen_counter_o_row_aix57253z52923(
// Equation(s):
// modgen_counter_o_row_anx57253z3 = i_reset_acombout # nx17322z2 # nx17322z8

	.dataa(i_reset_acombout),
	.datab(vcc),
	.datac(nx17322z2),
	.datad(nx17322z8),
	.cin(gnd),
	.combout(modgen_counter_o_row_anx57253z3),
	.cout());
// synopsys translate_off
defparam modgen_counter_o_row_aix57253z52923.lut_mask = 16'hFFFA;
defparam modgen_counter_o_row_aix57253z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y35_N29
cycloneii_lcell_ff modgen_counter_o_row_areg_q_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx58250z13_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z1),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_row_anx58250z13));

// atom is at LCCOMB_X61_Y35_N8
cycloneii_lcell_comb modgen_counter_o_row_aix58250z52929(
// Equation(s):
// modgen_counter_o_row_anx53265z1 = modgen_counter_o_row_anx58250z11 & (modgen_counter_o_row_anx58250z12 $ GND) # !modgen_counter_o_row_anx58250z11 & !modgen_counter_o_row_anx58250z12 & VCC
// modgen_counter_o_row_anx58250z10 = CARRY(modgen_counter_o_row_anx58250z11 & !modgen_counter_o_row_anx58250z12)

	.dataa(vcc),
	.datab(modgen_counter_o_row_anx58250z11),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_row_anx58250z12),
	.combout(modgen_counter_o_row_anx53265z1),
	.cout(modgen_counter_o_row_anx58250z10));
// synopsys translate_off
defparam modgen_counter_o_row_aix58250z52929.lut_mask = 16'hC30C;
defparam modgen_counter_o_row_aix58250z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y35_N26
cycloneii_lcell_comb modgen_counter_o_row_anx58250z11_afeeder(
// Equation(s):
// modgen_counter_o_row_anx58250z11_afeeder_combout = modgen_counter_o_row_anx53265z1

	.dataa(vcc),
	.datab(vcc),
	.datac(modgen_counter_o_row_anx53265z1),
	.datad(vcc),
	.cin(gnd),
	.combout(modgen_counter_o_row_anx58250z11_afeeder_combout),
	.cout());
// synopsys translate_off
defparam modgen_counter_o_row_anx58250z11_afeeder.lut_mask = 16'hF0F0;
defparam modgen_counter_o_row_anx58250z11_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y35_N27
cycloneii_lcell_ff modgen_counter_o_row_areg_q_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx58250z11_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z1),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_row_anx58250z11));

// atom is at LCCOMB_X61_Y35_N10
cycloneii_lcell_comb modgen_counter_o_row_aix58250z52928(
// Equation(s):
// modgen_counter_o_row_anx54262z1 = modgen_counter_o_row_anx58250z9 & !modgen_counter_o_row_anx58250z10 # !modgen_counter_o_row_anx58250z9 & (modgen_counter_o_row_anx58250z10 # GND)
// modgen_counter_o_row_anx58250z8 = CARRY(!modgen_counter_o_row_anx58250z10 # !modgen_counter_o_row_anx58250z9)

	.dataa(modgen_counter_o_row_anx58250z9),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_row_anx58250z10),
	.combout(modgen_counter_o_row_anx54262z1),
	.cout(modgen_counter_o_row_anx58250z8));
// synopsys translate_off
defparam modgen_counter_o_row_aix58250z52928.lut_mask = 16'h5A5F;
defparam modgen_counter_o_row_aix58250z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y35_N12
cycloneii_lcell_comb modgen_counter_o_row_aix58250z52927(
// Equation(s):
// modgen_counter_o_row_anx55259z1 = modgen_counter_o_row_anx58250z7 & (modgen_counter_o_row_anx58250z8 $ GND) # !modgen_counter_o_row_anx58250z7 & !modgen_counter_o_row_anx58250z8 & VCC
// modgen_counter_o_row_anx58250z6 = CARRY(modgen_counter_o_row_anx58250z7 & !modgen_counter_o_row_anx58250z8)

	.dataa(vcc),
	.datab(modgen_counter_o_row_anx58250z7),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_row_anx58250z8),
	.combout(modgen_counter_o_row_anx55259z1),
	.cout(modgen_counter_o_row_anx58250z6));
// synopsys translate_off
defparam modgen_counter_o_row_aix58250z52927.lut_mask = 16'hC30C;
defparam modgen_counter_o_row_aix58250z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCFF_X60_Y35_N17
cycloneii_lcell_ff modgen_counter_o_row_areg_q_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(modgen_counter_o_row_anx55259z1),
	.aclr(gnd),
	.sclr(nx17322z1),
	.sload(vcc),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_row_anx58250z7));

// atom is at LCCOMB_X61_Y35_N14
cycloneii_lcell_comb modgen_counter_o_row_aix58250z52926(
// Equation(s):
// modgen_counter_o_row_anx56256z1 = modgen_counter_o_row_anx58250z5 & !modgen_counter_o_row_anx58250z6 # !modgen_counter_o_row_anx58250z5 & (modgen_counter_o_row_anx58250z6 # GND)
// modgen_counter_o_row_anx58250z4 = CARRY(!modgen_counter_o_row_anx58250z6 # !modgen_counter_o_row_anx58250z5)

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

// atom is at LCCOMB_X61_Y35_N22
cycloneii_lcell_comb modgen_counter_o_row_anx58250z5_afeeder(
// Equation(s):
// modgen_counter_o_row_anx58250z5_afeeder_combout = modgen_counter_o_row_anx56256z1

	.dataa(vcc),
	.datab(vcc),
	.datac(modgen_counter_o_row_anx56256z1),
	.datad(vcc),
	.cin(gnd),
	.combout(modgen_counter_o_row_anx58250z5_afeeder_combout),
	.cout());
// synopsys translate_off
defparam modgen_counter_o_row_anx58250z5_afeeder.lut_mask = 16'hF0F0;
defparam modgen_counter_o_row_anx58250z5_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y35_N23
cycloneii_lcell_ff modgen_counter_o_row_areg_q_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx58250z5_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z1),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_row_anx58250z5));

// atom is at LCCOMB_X61_Y35_N16
cycloneii_lcell_comb modgen_counter_o_row_aix58250z52925(
// Equation(s):
// modgen_counter_o_row_anx57253z1 = modgen_counter_o_row_anx58250z3 & (modgen_counter_o_row_anx58250z4 $ GND) # !modgen_counter_o_row_anx58250z3 & !modgen_counter_o_row_anx58250z4 & VCC
// modgen_counter_o_row_anx58250z2 = CARRY(modgen_counter_o_row_anx58250z3 & !modgen_counter_o_row_anx58250z4)

	.dataa(modgen_counter_o_row_anx58250z3),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_row_anx58250z4),
	.combout(modgen_counter_o_row_anx57253z1),
	.cout(modgen_counter_o_row_anx58250z2));
// synopsys translate_off
defparam modgen_counter_o_row_aix58250z52925.lut_mask = 16'hA50A;
defparam modgen_counter_o_row_aix58250z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y35_N20
cycloneii_lcell_comb modgen_counter_o_row_anx58250z3_afeeder(
// Equation(s):
// modgen_counter_o_row_anx58250z3_afeeder_combout = modgen_counter_o_row_anx57253z1

	.dataa(vcc),
	.datab(vcc),
	.datac(modgen_counter_o_row_anx57253z1),
	.datad(vcc),
	.cin(gnd),
	.combout(modgen_counter_o_row_anx58250z3_afeeder_combout),
	.cout());
// synopsys translate_off
defparam modgen_counter_o_row_anx58250z3_afeeder.lut_mask = 16'hF0F0;
defparam modgen_counter_o_row_anx58250z3_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y35_N21
cycloneii_lcell_ff modgen_counter_o_row_areg_q_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx58250z3_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z1),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_row_anx58250z3));

// atom is at LCCOMB_X61_Y35_N18
cycloneii_lcell_comb modgen_counter_o_row_aix58250z52923(
// Equation(s):
// modgen_counter_o_row_anx58250z1 = modgen_counter_o_row_anx58250z2 $ modgen_counter_o_row_anx1041z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(modgen_counter_o_row_anx1041z1),
	.cin(modgen_counter_o_row_anx58250z2),
	.combout(modgen_counter_o_row_anx58250z1),
	.cout());
// synopsys translate_off
defparam modgen_counter_o_row_aix58250z52923.lut_mask = 16'h0FF0;
defparam modgen_counter_o_row_aix58250z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y35_N2
cycloneii_lcell_comb modgen_counter_o_row_anx1041z1_afeeder(
// Equation(s):
// modgen_counter_o_row_anx1041z1_afeeder_combout = modgen_counter_o_row_anx58250z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(modgen_counter_o_row_anx58250z1),
	.cin(gnd),
	.combout(modgen_counter_o_row_anx1041z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam modgen_counter_o_row_anx1041z1_afeeder.lut_mask = 16'hFF00;
defparam modgen_counter_o_row_anx1041z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y35_N3
cycloneii_lcell_ff modgen_counter_o_row_areg_q_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx1041z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z1),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_row_anx1041z1));

// atom is at LCCOMB_X60_Y35_N2
cycloneii_lcell_comb ix17322z52925(
// Equation(s):
// nx17322z3 = modgen_counter_o_row_anx58250z7 & modgen_counter_o_row_anx58250z5 & modgen_counter_o_row_anx58250z3 & modgen_counter_o_row_anx1041z1

	.dataa(modgen_counter_o_row_anx58250z7),
	.datab(modgen_counter_o_row_anx58250z5),
	.datac(modgen_counter_o_row_anx58250z3),
	.datad(modgen_counter_o_row_anx1041z1),
	.cin(gnd),
	.combout(nx17322z3),
	.cout());
// synopsys translate_off
defparam ix17322z52925.lut_mask = 16'h8000;
defparam ix17322z52925.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X62_Y35_N24
cycloneii_lcell_comb ix17322z52924(
// Equation(s):
// nx17322z2 = nx17322z4 & i_valid_acombout & nx17322z3 & nx17322z5

	.dataa(nx17322z4),
	.datab(i_valid_acombout),
	.datac(nx17322z3),
	.datad(nx17322z5),
	.cin(gnd),
	.combout(nx17322z2),
	.cout());
// synopsys translate_off
defparam ix17322z52924.lut_mask = 16'h8000;
defparam ix17322z52924.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X62_Y35_N26
cycloneii_lcell_comb ix17322z52923(
// Equation(s):
// nx17322z1 = i_reset_acombout # nx17322z2

	.dataa(i_reset_acombout),
	.datab(vcc),
	.datac(nx17322z2),
	.datad(vcc),
	.cin(gnd),
	.combout(nx17322z1),
	.cout());
// synopsys translate_off
defparam ix17322z52923.lut_mask = 16'hFAFA;
defparam ix17322z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y35_N1
cycloneii_lcell_ff modgen_counter_o_row_areg_q_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx58250z15_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z1),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_row_anx58250z15));

// atom is at LCCOMB_X62_Y35_N0
cycloneii_lcell_comb nx16335z1_afeeder(
// Equation(s):
// nx16335z1_afeeder_combout = modgen_counter_o_row_anx51271z1

	.dataa(vcc),
	.datab(vcc),
	.datac(modgen_counter_o_row_anx51271z1),
	.datad(vcc),
	.cin(gnd),
	.combout(nx16335z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx16335z1_afeeder.lut_mask = 16'hF0F0;
defparam nx16335z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X62_Y35_N1
cycloneii_lcell_ff reg_out_o_row_obuf_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx16335z1_afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z1),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx16335z1));

// atom is at LCFF_X61_Y35_N7
cycloneii_lcell_ff reg_out_o_row_obuf_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx52268z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z1),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx17332z1));

// atom is at LCFF_X61_Y35_N9
cycloneii_lcell_ff reg_out_o_row_obuf_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx53265z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z1),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx18329z1));

// atom is at LCFF_X61_Y35_N11
cycloneii_lcell_ff reg_out_o_row_obuf_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx54262z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z1),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx19326z1));

// atom is at LCFF_X61_Y35_N13
cycloneii_lcell_ff reg_out_o_row_obuf_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx55259z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z1),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx20323z1));

// atom is at LCFF_X61_Y35_N15
cycloneii_lcell_ff reg_out_o_row_obuf_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx56256z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z1),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx21320z1));

// atom is at LCFF_X61_Y35_N17
cycloneii_lcell_ff reg_out_o_row_obuf_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx57253z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z1),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx22317z1));

// atom is at LCFF_X61_Y35_N19
cycloneii_lcell_ff reg_out_o_row_obuf_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_row_anx58250z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx17322z1),
	.sload(gnd),
	.ena(modgen_counter_o_row_anx57253z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx23314z1));

// atom is at PIN_AA5
cycloneii_io o_valid_obuf(
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
	.padio(o_valid));
// synopsys translate_off
defparam o_valid_obuf.input_async_reset = "none";
defparam o_valid_obuf.input_power_up = "low";
defparam o_valid_obuf.input_register_mode = "none";
defparam o_valid_obuf.input_sync_reset = "none";
defparam o_valid_obuf.oe_async_reset = "none";
defparam o_valid_obuf.oe_power_up = "low";
defparam o_valid_obuf.oe_register_mode = "none";
defparam o_valid_obuf.oe_sync_reset = "none";
defparam o_valid_obuf.operation_mode = "output";
defparam o_valid_obuf.output_async_reset = "none";
defparam o_valid_obuf.output_power_up = "low";
defparam o_valid_obuf.output_register_mode = "none";
defparam o_valid_obuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_J21
cycloneii_io o_edge_obuf(
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

// atom is at PIN_R4
cycloneii_io o_dir_obuf_0_(
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

// atom is at PIN_V2
cycloneii_io o_dir_obuf_1_(
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

// atom is at PIN_AB8
cycloneii_io o_dir_obuf_2_(
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

// atom is at PIN_U22
cycloneii_io o_mode_obuf_0_(
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

// atom is at PIN_F14
cycloneii_io o_mode_obuf_1_(
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

// atom is at PIN_E22
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

// atom is at PIN_A22
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

// atom is at PIN_A21
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

// atom is at PIN_H12
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

// atom is at PIN_D23
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

// atom is at PIN_F20
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

// atom is at PIN_F21
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

// atom is at PIN_B21
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

// atom is at PIN_D5
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

// atom is at PIN_G10
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

// atom is at PIN_V13
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

// atom is at PIN_W4
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

// atom is at PIN_Y13
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

// atom is at PIN_K21
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

// atom is at PIN_E24
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

// atom is at PIN_AE22
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

// atom is at PIN_U23
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

// atom is at PIN_C16
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

// atom is at PIN_A6
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

// atom is at PIN_H8
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

// atom is at PIN_AB21
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

// atom is at PIN_H2
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

// atom is at PIN_A8
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

// atom is at PIN_AE11
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

// atom is at PIN_AD25
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

// atom is at PIN_Y15
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

// atom is at PIN_C5
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

// atom is at PIN_J5
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

// atom is at PIN_K25
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

// atom is at PIN_AB18
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

// atom is at PIN_B7
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

// atom is at PIN_AB10
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

// atom is at PIN_V1
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

// atom is at PIN_AA4
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

// atom is at PIN_E8
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

// atom is at PIN_E18
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

// atom is at PIN_AD10
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

// atom is at PIN_AA12
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

// atom is at PIN_V4
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

// atom is at PIN_F10
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

// atom is at PIN_W12
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

// atom is at PIN_AF17
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

// atom is at PIN_C3
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

// atom is at PIN_AE6
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

// atom is at PIN_P23
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

// atom is at PIN_AD2
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

// atom is at PIN_AD8
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

// atom is at PIN_V17
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

// atom is at PIN_U10
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

// atom is at PIN_G16
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

// atom is at PIN_J13
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

// atom is at PIN_AD5
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

// atom is at PIN_Y1
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

// atom is at PIN_M19
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

// atom is at PIN_D8
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

// atom is at PIN_W16
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

// atom is at PIN_D13
cycloneii_io i_pixel_a0_a_aI(
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
	.padio(i_pixel[0]));
// synopsys translate_off
defparam i_pixel_a0_a_aI.input_async_reset = "none";
defparam i_pixel_a0_a_aI.input_power_up = "low";
defparam i_pixel_a0_a_aI.input_register_mode = "none";
defparam i_pixel_a0_a_aI.input_sync_reset = "none";
defparam i_pixel_a0_a_aI.oe_async_reset = "none";
defparam i_pixel_a0_a_aI.oe_power_up = "low";
defparam i_pixel_a0_a_aI.oe_register_mode = "none";
defparam i_pixel_a0_a_aI.oe_sync_reset = "none";
defparam i_pixel_a0_a_aI.operation_mode = "input";
defparam i_pixel_a0_a_aI.output_async_reset = "none";
defparam i_pixel_a0_a_aI.output_power_up = "low";
defparam i_pixel_a0_a_aI.output_register_mode = "none";
defparam i_pixel_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C21
cycloneii_io i_pixel_a1_a_aI(
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
	.padio(i_pixel[1]));
// synopsys translate_off
defparam i_pixel_a1_a_aI.input_async_reset = "none";
defparam i_pixel_a1_a_aI.input_power_up = "low";
defparam i_pixel_a1_a_aI.input_register_mode = "none";
defparam i_pixel_a1_a_aI.input_sync_reset = "none";
defparam i_pixel_a1_a_aI.oe_async_reset = "none";
defparam i_pixel_a1_a_aI.oe_power_up = "low";
defparam i_pixel_a1_a_aI.oe_register_mode = "none";
defparam i_pixel_a1_a_aI.oe_sync_reset = "none";
defparam i_pixel_a1_a_aI.operation_mode = "input";
defparam i_pixel_a1_a_aI.output_async_reset = "none";
defparam i_pixel_a1_a_aI.output_power_up = "low";
defparam i_pixel_a1_a_aI.output_register_mode = "none";
defparam i_pixel_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC8
cycloneii_io i_pixel_a2_a_aI(
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
	.padio(i_pixel[2]));
// synopsys translate_off
defparam i_pixel_a2_a_aI.input_async_reset = "none";
defparam i_pixel_a2_a_aI.input_power_up = "low";
defparam i_pixel_a2_a_aI.input_register_mode = "none";
defparam i_pixel_a2_a_aI.input_sync_reset = "none";
defparam i_pixel_a2_a_aI.oe_async_reset = "none";
defparam i_pixel_a2_a_aI.oe_power_up = "low";
defparam i_pixel_a2_a_aI.oe_register_mode = "none";
defparam i_pixel_a2_a_aI.oe_sync_reset = "none";
defparam i_pixel_a2_a_aI.operation_mode = "input";
defparam i_pixel_a2_a_aI.output_async_reset = "none";
defparam i_pixel_a2_a_aI.output_power_up = "low";
defparam i_pixel_a2_a_aI.output_register_mode = "none";
defparam i_pixel_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B19
cycloneii_io i_pixel_a3_a_aI(
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
	.padio(i_pixel[3]));
// synopsys translate_off
defparam i_pixel_a3_a_aI.input_async_reset = "none";
defparam i_pixel_a3_a_aI.input_power_up = "low";
defparam i_pixel_a3_a_aI.input_register_mode = "none";
defparam i_pixel_a3_a_aI.input_sync_reset = "none";
defparam i_pixel_a3_a_aI.oe_async_reset = "none";
defparam i_pixel_a3_a_aI.oe_power_up = "low";
defparam i_pixel_a3_a_aI.oe_register_mode = "none";
defparam i_pixel_a3_a_aI.oe_sync_reset = "none";
defparam i_pixel_a3_a_aI.operation_mode = "input";
defparam i_pixel_a3_a_aI.output_async_reset = "none";
defparam i_pixel_a3_a_aI.output_power_up = "low";
defparam i_pixel_a3_a_aI.output_register_mode = "none";
defparam i_pixel_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE4
cycloneii_io i_pixel_a4_a_aI(
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
	.padio(i_pixel[4]));
// synopsys translate_off
defparam i_pixel_a4_a_aI.input_async_reset = "none";
defparam i_pixel_a4_a_aI.input_power_up = "low";
defparam i_pixel_a4_a_aI.input_register_mode = "none";
defparam i_pixel_a4_a_aI.input_sync_reset = "none";
defparam i_pixel_a4_a_aI.oe_async_reset = "none";
defparam i_pixel_a4_a_aI.oe_power_up = "low";
defparam i_pixel_a4_a_aI.oe_register_mode = "none";
defparam i_pixel_a4_a_aI.oe_sync_reset = "none";
defparam i_pixel_a4_a_aI.operation_mode = "input";
defparam i_pixel_a4_a_aI.output_async_reset = "none";
defparam i_pixel_a4_a_aI.output_power_up = "low";
defparam i_pixel_a4_a_aI.output_register_mode = "none";
defparam i_pixel_a4_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B23
cycloneii_io i_pixel_a5_a_aI(
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
	.padio(i_pixel[5]));
// synopsys translate_off
defparam i_pixel_a5_a_aI.input_async_reset = "none";
defparam i_pixel_a5_a_aI.input_power_up = "low";
defparam i_pixel_a5_a_aI.input_register_mode = "none";
defparam i_pixel_a5_a_aI.input_sync_reset = "none";
defparam i_pixel_a5_a_aI.oe_async_reset = "none";
defparam i_pixel_a5_a_aI.oe_power_up = "low";
defparam i_pixel_a5_a_aI.oe_register_mode = "none";
defparam i_pixel_a5_a_aI.oe_sync_reset = "none";
defparam i_pixel_a5_a_aI.operation_mode = "input";
defparam i_pixel_a5_a_aI.output_async_reset = "none";
defparam i_pixel_a5_a_aI.output_power_up = "low";
defparam i_pixel_a5_a_aI.output_register_mode = "none";
defparam i_pixel_a5_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD17
cycloneii_io i_pixel_a6_a_aI(
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
	.padio(i_pixel[6]));
// synopsys translate_off
defparam i_pixel_a6_a_aI.input_async_reset = "none";
defparam i_pixel_a6_a_aI.input_power_up = "low";
defparam i_pixel_a6_a_aI.input_register_mode = "none";
defparam i_pixel_a6_a_aI.input_sync_reset = "none";
defparam i_pixel_a6_a_aI.oe_async_reset = "none";
defparam i_pixel_a6_a_aI.oe_power_up = "low";
defparam i_pixel_a6_a_aI.oe_register_mode = "none";
defparam i_pixel_a6_a_aI.oe_sync_reset = "none";
defparam i_pixel_a6_a_aI.operation_mode = "input";
defparam i_pixel_a6_a_aI.output_async_reset = "none";
defparam i_pixel_a6_a_aI.output_power_up = "low";
defparam i_pixel_a6_a_aI.output_register_mode = "none";
defparam i_pixel_a6_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA11
cycloneii_io i_pixel_a7_a_aI(
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
	.padio(i_pixel[7]));
// synopsys translate_off
defparam i_pixel_a7_a_aI.input_async_reset = "none";
defparam i_pixel_a7_a_aI.input_power_up = "low";
defparam i_pixel_a7_a_aI.input_register_mode = "none";
defparam i_pixel_a7_a_aI.input_sync_reset = "none";
defparam i_pixel_a7_a_aI.oe_async_reset = "none";
defparam i_pixel_a7_a_aI.oe_power_up = "low";
defparam i_pixel_a7_a_aI.oe_register_mode = "none";
defparam i_pixel_a7_a_aI.oe_sync_reset = "none";
defparam i_pixel_a7_a_aI.operation_mode = "input";
defparam i_pixel_a7_a_aI.output_async_reset = "none";
defparam i_pixel_a7_a_aI.output_power_up = "low";
defparam i_pixel_a7_a_aI.output_register_mode = "none";
defparam i_pixel_a7_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M25
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

// atom is at PIN_M22
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

// atom is at PIN_AC22
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

// atom is at PIN_Y4
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

// atom is at PIN_AA15
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

// atom is at PIN_AD11
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

// atom is at PIN_V21
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

// atom is at PIN_B9
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

// atom is at PIN_A5
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

// atom is at PIN_AE15
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

// atom is at PIN_AE25
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

// atom is at PIN_D6
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

// atom is at PIN_AE7
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

// atom is at PIN_AF13
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

// atom is at PIN_T17
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

// atom is at PIN_F18
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

// atom is at PIN_K6
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

// atom is at PIN_R17
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

// atom is at PIN_C19
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

// atom is at PIN_C23
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

// atom is at PIN_B6
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
