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

-- DATE "03/19/2015 18:07:20"

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

ENTITY 	kirsch_chip IS
    PORT (
	i_clock : IN std_logic;
	i_reset : IN std_logic;
	i_valid : IN std_logic;
	i_pixel : IN std_logic_vector(7 DOWNTO 0);
	o_valid : OUT std_logic;
	o_edge : OUT std_logic;
	o_dir : OUT std_logic_vector(2 DOWNTO 0);
	o_mode : OUT std_logic_vector(1 DOWNTO 0);
	o_row : OUT std_logic_vector(7 DOWNTO 0);
	debug_key : IN std_logic_vector(3 DOWNTO 1);
	debug_switch : IN std_logic_vector(17 DOWNTO 0);
	debug_led_red : OUT std_logic_vector(17 DOWNTO 0);
	debug_led_grn : OUT std_logic_vector(5 DOWNTO 0);
	debug_num_0 : OUT std_logic_vector(3 DOWNTO 0);
	debug_num_1 : OUT std_logic_vector(3 DOWNTO 0);
	debug_num_2 : OUT std_logic_vector(3 DOWNTO 0);
	debug_num_3 : OUT std_logic_vector(3 DOWNTO 0);
	debug_num_4 : OUT std_logic_vector(3 DOWNTO 0);
	debug_num_5 : OUT std_logic_vector(3 DOWNTO 0)
	);
END kirsch_chip;

-- Design Ports Information
-- o_valid	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_edge	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_dir[0]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_dir[1]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_dir[2]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_mode[0]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_mode[1]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[0]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[1]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[2]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[3]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[4]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[5]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[6]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[7]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[0]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[1]	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[3]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[4]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[5]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[6]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[7]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[8]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[9]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[10]	=>  Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[11]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[12]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[13]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[14]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[15]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[16]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[17]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[0]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[2]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[3]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[4]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[5]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_0[0]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_0[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_0[2]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_0[3]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_1[0]	=>  Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_1[1]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_1[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_1[3]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_2[0]	=>  Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_2[1]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_2[2]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_2[3]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_3[0]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_3[1]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_3[2]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_3[3]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_4[0]	=>  Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_4[1]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_4[2]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_4[3]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_5[0]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_5[1]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_5[2]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_5[3]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- i_clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_reset	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_valid	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[7]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[6]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[5]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[4]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[3]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[1]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[0]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_key[1]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_key[2]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_key[3]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[0]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[1]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[2]	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[3]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[4]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[5]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[6]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[7]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[8]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[9]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[10]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[11]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[12]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[13]	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[14]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[15]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[16]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[17]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF kirsch_chip IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clock : std_logic;
SIGNAL ww_i_reset : std_logic;
SIGNAL ww_i_valid : std_logic;
SIGNAL ww_i_pixel : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_valid : std_logic;
SIGNAL ww_o_edge : std_logic;
SIGNAL ww_o_dir : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_o_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_o_row : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_key : std_logic_vector(3 DOWNTO 1);
SIGNAL ww_debug_switch : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_debug_led_red : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_debug_led_grn : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_debug_num_0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_num_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_num_2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_num_3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_num_4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_num_5 : std_logic_vector(3 DOWNTO 0);
SIGNAL m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL i_clock_aclkctrl_INCLK_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL r14_12_a : std_logic;
SIGNAL r15_11_a : std_logic;
SIGNAL r15_10_a : std_logic;
SIGNAL r14_9_a : std_logic;
SIGNAL r14_8_a : std_logic;
SIGNAL r15_7_a : std_logic;
SIGNAL r15_6_a : std_logic;
SIGNAL r14_5_a : std_logic;
SIGNAL r15_4_a : std_logic;
SIGNAL r14_3_a : std_logic;
SIGNAL r15_0_a : std_logic;
SIGNAL nx28105z2 : std_logic;
SIGNAL nx28105z9 : std_logic;
SIGNAL r13_10_a : std_logic;
SIGNAL r13_8_a : std_logic;
SIGNAL r13_5_a : std_logic;
SIGNAL r13_3_a : std_logic;
SIGNAL add4_add11_6_anx40964z1 : std_logic;
SIGNAL add4_add11_6_anx42958z1 : std_logic;
SIGNAL add4_add11_6_anx43955z1 : std_logic;
SIGNAL add4_add11_6_anx46946z1 : std_logic;
SIGNAL add4_add11_6_anx62798z1 : std_logic;
SIGNAL r12_6_a : std_logic;
SIGNAL r12_5_a : std_logic;
SIGNAL r12_2_a : std_logic;
SIGNAL dir4_0_a : std_logic;
SIGNAL dir4_2_a : std_logic;
SIGNAL dir6_2_a : std_logic;
SIGNAL nx44114z2 : std_logic;
SIGNAL nx17322z10 : std_logic;
SIGNAL nx17322z2 : std_logic;
SIGNAL nx17322z3 : std_logic;
SIGNAL nx17322z4 : std_logic;
SIGNAL nx17322z8 : std_logic;
SIGNAL nx17322z7 : std_logic;
SIGNAL nx17322z1 : std_logic;
SIGNAL r8_10_a : std_logic;
SIGNAL r8_9_a : std_logic;
SIGNAL r8_8_a : std_logic;
SIGNAL r8_7_a : std_logic;
SIGNAL r8_1_a : std_logic;
SIGNAL r8_0_a : std_logic;
SIGNAL add3_add11_0_anx45949z1 : std_logic;
SIGNAL add3_add11_0_anx62798z3 : std_logic;
SIGNAL add3_add11_0_anx62798z1 : std_logic;
SIGNAL r9_6_a : std_logic;
SIGNAL r9_5_a : std_logic;
SIGNAL r5_7_a : std_logic;
SIGNAL r5_3_a : std_logic;
SIGNAL r5_2_a : std_logic;
SIGNAL r5_0_a : std_logic;
SIGNAL r1_7_a : std_logic;
SIGNAL r1_3_a : std_logic;
SIGNAL r2_2_a : std_logic;
SIGNAL r2_0_a : std_logic;
SIGNAL nx46679z2 : std_logic;
SIGNAL nx44685z1 : std_logic;
SIGNAL nx46679z1 : std_logic;
SIGNAL dir3_2_a : std_logic;
SIGNAL dir5_2_a : std_logic;
SIGNAL dir6_23n5ss1_2_a : std_logic;
SIGNAL nx35695z1 : std_logic;
SIGNAL nx6176z7 : std_logic;
SIGNAL r4_7_a : std_logic;
SIGNAL r3_6_a : std_logic;
SIGNAL r3_5_a : std_logic;
SIGNAL r4_4_a : std_logic;
SIGNAL r4_3_a : std_logic;
SIGNAL r4_2_a : std_logic;
SIGNAL r4_1_a : std_logic;
SIGNAL r3_0_a : std_logic;
SIGNAL max2_6_a : std_logic;
SIGNAL max2_5_a : std_logic;
SIGNAL g_7_a : std_logic;
SIGNAL nx41056z2 : std_logic;
SIGNAL nx41056z1 : std_logic;
SIGNAL g_5_a : std_logic;
SIGNAL nx39062z2 : std_logic;
SIGNAL h_4_a : std_logic;
SIGNAL nx29646z2 : std_logic;
SIGNAL h_3_a : std_logic;
SIGNAL g_3_a : std_logic;
SIGNAL nx37068z2 : std_logic;
SIGNAL nx37068z1 : std_logic;
SIGNAL a_3_a : std_logic;
SIGNAL h_2_a : std_logic;
SIGNAL nx27652z2 : std_logic;
SIGNAL nx27652z1 : std_logic;
SIGNAL d_2_a : std_logic;
SIGNAL nx25658z2 : std_logic;
SIGNAL nx25658z1 : std_logic;
SIGNAL nx10438z2 : std_logic;
SIGNAL nx10438z1 : std_logic;
SIGNAL dir1_2_a : std_logic;
SIGNAL dir5_23n5ss1_2_a : std_logic;
SIGNAL nx49737z2 : std_logic;
SIGNAL nx49737z1 : std_logic;
SIGNAL nx50734z2 : std_logic;
SIGNAL nx42315z2 : std_logic;
SIGNAL nx42315z1 : std_logic;
SIGNAL nx51731z2 : std_logic;
SIGNAL nx43312z2 : std_logic;
SIGNAL nx43312z1 : std_logic;
SIGNAL nx52728z2 : std_logic;
SIGNAL nx52728z1 : std_logic;
SIGNAL nx53725z2 : std_logic;
SIGNAL nx53725z1 : std_logic;
SIGNAL nx45306z2 : std_logic;
SIGNAL nx54722z2 : std_logic;
SIGNAL nx54722z1 : std_logic;
SIGNAL nx46303z2 : std_logic;
SIGNAL nx55719z2 : std_logic;
SIGNAL nx55719z1 : std_logic;
SIGNAL nx48297z2 : std_logic;
SIGNAL nx48297z1 : std_logic;
SIGNAL i_4_a : std_logic;
SIGNAL i_3_a : std_logic;
SIGNAL i_2_a : std_logic;
SIGNAL nx31640z3 : std_logic;
SIGNAL wren_m1 : std_logic;
SIGNAL nx19087z14 : std_logic;
SIGNAL nx24222z1 : std_logic;
SIGNAL nx19087z26 : std_logic;
SIGNAL nx19087z27 : std_logic;
SIGNAL wren_m3 : std_logic;
SIGNAL wren_m2 : std_logic;
SIGNAL sub1_sub8_1_anx23445z1_a_wirecell_combout : std_logic;
SIGNAL r14_12_afeeder_combout : std_logic;
SIGNAL r14_9_afeeder_combout : std_logic;
SIGNAL r12_6_afeeder_combout : std_logic;
SIGNAL r14_8_afeeder_combout : std_logic;
SIGNAL r12_5_afeeder_combout : std_logic;
SIGNAL r14_5_afeeder_combout : std_logic;
SIGNAL r12_2_afeeder_combout : std_logic;
SIGNAL r14_3_afeeder_combout : std_logic;
SIGNAL r13_5_afeeder_combout : std_logic;
SIGNAL r13_8_afeeder_combout : std_logic;
SIGNAL r13_10_afeeder_combout : std_logic;
SIGNAL r5_7_afeeder_combout : std_logic;
SIGNAL r5_3_afeeder_combout : std_logic;
SIGNAL r5_2_afeeder_combout : std_logic;
SIGNAL r5_0_afeeder_combout : std_logic;
SIGNAL a_3_afeeder_combout : std_logic;
SIGNAL i_3_afeeder_combout : std_logic;
SIGNAL i_2_afeeder_combout : std_logic;
SIGNAL i_clock_acombout : std_logic;
SIGNAL i_clock_aclkctrl_outclk : std_logic;
SIGNAL i_valid_acombout : std_logic;
SIGNAL i_reset_acombout : std_logic;
SIGNAL v_0_a : std_logic;
SIGNAL v_1_a : std_logic;
SIGNAL v_2_a : std_logic;
SIGNAL v_3_a : std_logic;
SIGNAL v_4_a : std_logic;
SIGNAL v_5_a : std_logic;
SIGNAL v_6_a : std_logic;
SIGNAL modgen_counter_o_row_anx51271z1 : std_logic;
SIGNAL modgen_counter_x_anx58250z14 : std_logic;
SIGNAL modgen_counter_x_anx52268z1 : std_logic;
SIGNAL modgen_counter_x_anx57253z3 : std_logic;
SIGNAL modgen_counter_x_anx58250z13 : std_logic;
SIGNAL modgen_counter_x_anx58250z12 : std_logic;
SIGNAL modgen_counter_x_anx58250z10 : std_logic;
SIGNAL modgen_counter_x_anx54262z1 : std_logic;
SIGNAL modgen_counter_x_anx58250z9 : std_logic;
SIGNAL modgen_counter_x_anx53265z1 : std_logic;
SIGNAL modgen_counter_x_anx58250z11 : std_logic;
SIGNAL nx6176z2 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z12 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z10 : std_logic;
SIGNAL modgen_counter_o_row_anx54262z1 : std_logic;
SIGNAL nx17322z16 : std_logic;
SIGNAL modgen_counter_x_anx51271z1 : std_logic;
SIGNAL modgen_counter_x_anx58250z15 : std_logic;
SIGNAL nx17322z6 : std_logic;
SIGNAL modgen_counter_x_anx58250z8 : std_logic;
SIGNAL modgen_counter_x_anx58250z6 : std_logic;
SIGNAL modgen_counter_x_anx56256z1 : std_logic;
SIGNAL modgen_counter_x_anx58250z5 : std_logic;
SIGNAL modgen_counter_x_anx58250z4 : std_logic;
SIGNAL modgen_counter_x_anx58250z2 : std_logic;
SIGNAL modgen_counter_x_anx58250z1 : std_logic;
SIGNAL modgen_counter_x_anx1041z1 : std_logic;
SIGNAL modgen_counter_x_anx57253z1 : std_logic;
SIGNAL modgen_counter_x_anx58250z3 : std_logic;
SIGNAL nx6176z9 : std_logic;
SIGNAL nx17322z15 : std_logic;
SIGNAL modgen_counter_o_row_anx57253z3 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z9 : std_logic;
SIGNAL modgen_counter_o_row_anx53265z1 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z11 : std_logic;
SIGNAL nx6176z4 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z8 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z6 : std_logic;
SIGNAL modgen_counter_o_row_anx56256z1 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z5 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z4 : std_logic;
SIGNAL modgen_counter_o_row_anx57253z1 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z3 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z2 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z1 : std_logic;
SIGNAL modgen_counter_o_row_anx1041z1 : std_logic;
SIGNAL nx6176z6 : std_logic;
SIGNAL nx6176z5 : std_logic;
SIGNAL nx6176z3 : std_logic;
SIGNAL nx6176z1 : std_logic;
SIGNAL nx6176z10 : std_logic;
SIGNAL end_of_img : std_logic;
SIGNAL nx17322z12 : std_logic;
SIGNAL modgen_counter_x_anx55259z1 : std_logic;
SIGNAL modgen_counter_x_anx58250z7 : std_logic;
SIGNAL nx17322z13 : std_logic;
SIGNAL nx17322z11 : std_logic;
SIGNAL modgen_counter_o_row_anx55259z1 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z7 : std_logic;
SIGNAL nx17322z14 : std_logic;
SIGNAL nx17322z9 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z15 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z14 : std_logic;
SIGNAL modgen_counter_o_row_anx52268z1 : std_logic;
SIGNAL modgen_counter_o_row_anx58250z13 : std_logic;
SIGNAL nx28105z7 : std_logic;
SIGNAL nx28105z6 : std_logic;
SIGNAL nx28105z5 : std_logic;
SIGNAL nx28105z8 : std_logic;
SIGNAL nx28105z4 : std_logic;
SIGNAL nx28105z3 : std_logic;
SIGNAL nx28105z1 : std_logic;
SIGNAL nx51998z1 : std_logic;
SIGNAL t_20n2s1_1_a : std_logic;
SIGNAL nx6176z8 : std_logic;
SIGNAL nx38525z2 : std_logic;
SIGNAL nx38525z1 : std_logic;
SIGNAL t_1_a : std_logic;
SIGNAL t_20n2s1_0_a : std_logic;
SIGNAL t_0_a : std_logic;
SIGNAL nx19087z4 : std_logic;
SIGNAL nx19087z17 : std_logic;
SIGNAL nx19087z25 : std_logic;
SIGNAL nx19087z24 : std_logic;
SIGNAL nx19087z23 : std_logic;
SIGNAL addr_x_0_a : std_logic;
SIGNAL nx19087z5 : std_logic;
SIGNAL nx19087z9 : std_logic;
SIGNAL nx19087z22 : std_logic;
SIGNAL nx19087z21 : std_logic;
SIGNAL nx19087z20 : std_logic;
SIGNAL addr_x_1_a : std_logic;
SIGNAL nx19087z7 : std_logic;
SIGNAL nx19087z19 : std_logic;
SIGNAL nx19087z18 : std_logic;
SIGNAL addr_x_2_a : std_logic;
SIGNAL nx19087z16 : std_logic;
SIGNAL nx19087z15 : std_logic;
SIGNAL addr_x_3_a : std_logic;
SIGNAL nx19087z13 : std_logic;
SIGNAL nx19087z12 : std_logic;
SIGNAL addr_x_4_a : std_logic;
SIGNAL nx19087z11 : std_logic;
SIGNAL nx19087z10 : std_logic;
SIGNAL addr_x_5_a : std_logic;
SIGNAL nx17322z5 : std_logic;
SIGNAL nx19087z8 : std_logic;
SIGNAL nx19087z6 : std_logic;
SIGNAL addr_x_6_a : std_logic;
SIGNAL nx19087z2 : std_logic;
SIGNAL nx19087z3 : std_logic;
SIGNAL nx19087z1 : std_logic;
SIGNAL addr_x_7_a : std_logic;
SIGNAL nx20492z1 : std_logic;
SIGNAL nx20492z2 : std_logic;
SIGNAL c_7_a : std_logic;
SIGNAL b_7_afeeder_combout : std_logic;
SIGNAL b_7_a : std_logic;
SIGNAL a_7_afeeder_combout : std_logic;
SIGNAL a_7_a : std_logic;
SIGNAL e_7_afeeder_combout : std_logic;
SIGNAL e_7_a : std_logic;
SIGNAL f_7_a : std_logic;
SIGNAL nx41318z2 : std_logic;
SIGNAL nx41318z1 : std_logic;
SIGNAL nx32637z3 : std_logic;
SIGNAL r3_7_a : std_logic;
SIGNAL nx35628z1 : std_logic;
SIGNAL d_6_a : std_logic;
SIGNAL nx50734z1 : std_logic;
SIGNAL nx21489z1 : std_logic;
SIGNAL c_6_a : std_logic;
SIGNAL b_6_afeeder_combout : std_logic;
SIGNAL b_6_a : std_logic;
SIGNAL r4_6_a : std_logic;
SIGNAL nx34631z1 : std_logic;
SIGNAL d_5_a : std_logic;
SIGNAL nx51731z1 : std_logic;
SIGNAL nx22486z1 : std_logic;
SIGNAL c_5_a : std_logic;
SIGNAL b_5_afeeder_combout : std_logic;
SIGNAL b_5_a : std_logic;
SIGNAL r4_5_a : std_logic;
SIGNAL e_4_afeeder_combout : std_logic;
SIGNAL e_4_a : std_logic;
SIGNAL f_4_a : std_logic;
SIGNAL nx23483z1 : std_logic;
SIGNAL c_4_a : std_logic;
SIGNAL b_4_afeeder_combout : std_logic;
SIGNAL b_4_a : std_logic;
SIGNAL a_4_afeeder_combout : std_logic;
SIGNAL a_4_a : std_logic;
SIGNAL nx44309z2 : std_logic;
SIGNAL nx44309z1 : std_logic;
SIGNAL r3_4_a : std_logic;
SIGNAL e_3_a : std_logic;
SIGNAL nx45306z1 : std_logic;
SIGNAL nx24480z1 : std_logic;
SIGNAL c_3_a : std_logic;
SIGNAL r3_3_a : std_logic;
SIGNAL e_2_afeeder_combout : std_logic;
SIGNAL e_2_a : std_logic;
SIGNAL nx46303z1 : std_logic;
SIGNAL nx25477z1 : std_logic;
SIGNAL c_2_a : std_logic;
SIGNAL r3_2_a : std_logic;
SIGNAL e_1_a : std_logic;
SIGNAL f_1_a : std_logic;
SIGNAL nx26474z1 : std_logic;
SIGNAL c_1_a : std_logic;
SIGNAL b_1_afeeder_combout : std_logic;
SIGNAL b_1_a : std_logic;
SIGNAL a_1_afeeder_combout : std_logic;
SIGNAL a_1_a : std_logic;
SIGNAL nx47300z2 : std_logic;
SIGNAL nx47300z1 : std_logic;
SIGNAL r3_1_a : std_logic;
SIGNAL e_0_a : std_logic;
SIGNAL f_0_a : std_logic;
SIGNAL g_0_a : std_logic;
SIGNAL nx29646z3 : std_logic;
SIGNAL d_0_a : std_logic;
SIGNAL i_0_afeeder_combout : std_logic;
SIGNAL i_0_a : std_logic;
SIGNAL h_0_a : std_logic;
SIGNAL nx56716z2 : std_logic;
SIGNAL nx56716z1 : std_logic;
SIGNAL nx27471z1 : std_logic;
SIGNAL c_0_a : std_logic;
SIGNAL b_0_a : std_logic;
SIGNAL r4_0_a : std_logic;
SIGNAL add1_add8_4_anx44952z22 : std_logic;
SIGNAL add1_add8_4_anx44952z19 : std_logic;
SIGNAL add1_add8_4_anx44952z16 : std_logic;
SIGNAL add1_add8_4_anx44952z13 : std_logic;
SIGNAL add1_add8_4_anx44952z10 : std_logic;
SIGNAL add1_add8_4_anx44952z7 : std_logic;
SIGNAL add1_add8_4_anx44952z4 : std_logic;
SIGNAL add1_add8_4_anx23445z2 : std_logic;
SIGNAL add1_add8_4_anx23445z1 : std_logic;
SIGNAL r7_8_a : std_logic;
SIGNAL add1_add8_4_anx44952z1 : std_logic;
SIGNAL r7_7_a : std_logic;
SIGNAL add1_add8_4_anx38970z1 : std_logic;
SIGNAL r7_1_a : std_logic;
SIGNAL add1_add8_4_anx37973z1 : std_logic;
SIGNAL r7_0_a : std_logic;
SIGNAL add3_add11_0_anx62798z29 : std_logic;
SIGNAL add3_add11_0_anx62798z26 : std_logic;
SIGNAL add3_add11_0_anx39967z1 : std_logic;
SIGNAL add1_add8_4_anx39967z1 : std_logic;
SIGNAL r7_2_a : std_logic;
SIGNAL r8_2_a : std_logic;
SIGNAL add3_add11_0_anx62798z23 : std_logic;
SIGNAL add3_add11_0_anx40964z1 : std_logic;
SIGNAL add1_add8_4_anx40964z1 : std_logic;
SIGNAL r7_3_a : std_logic;
SIGNAL r8_3_a : std_logic;
SIGNAL add3_add11_0_anx62798z20 : std_logic;
SIGNAL add3_add11_0_anx41961z1 : std_logic;
SIGNAL add1_add8_4_anx41961z1 : std_logic;
SIGNAL r7_4_a : std_logic;
SIGNAL r8_4_a : std_logic;
SIGNAL add3_add11_0_anx62798z17 : std_logic;
SIGNAL add3_add11_0_anx42958z1 : std_logic;
SIGNAL add1_add8_4_anx42958z1 : std_logic;
SIGNAL r7_5_a : std_logic;
SIGNAL r8_5_a : std_logic;
SIGNAL add3_add11_0_anx62798z14 : std_logic;
SIGNAL add3_add11_0_anx43955z1 : std_logic;
SIGNAL add1_add8_4_anx43955z1 : std_logic;
SIGNAL r7_6_a : std_logic;
SIGNAL r8_6_a : std_logic;
SIGNAL add3_add11_0_anx62798z11 : std_logic;
SIGNAL add3_add11_0_anx62798z8 : std_logic;
SIGNAL add3_add11_0_anx62798z5 : std_logic;
SIGNAL add3_add11_0_anx46946z1 : std_logic;
SIGNAL r13_9_afeeder_combout : std_logic;
SIGNAL r13_9_a : std_logic;
SIGNAL add3_add11_0_anx44952z1 : std_logic;
SIGNAL r13_7_afeeder_combout : std_logic;
SIGNAL r13_7_a : std_logic;
SIGNAL r13_6_afeeder_combout : std_logic;
SIGNAL r13_6_a : std_logic;
SIGNAL r13_4_afeeder_combout : std_logic;
SIGNAL r13_4_a : std_logic;
SIGNAL r13_2_afeeder_combout : std_logic;
SIGNAL r13_2_a : std_logic;
SIGNAL add3_add11_0_anx38970z1 : std_logic;
SIGNAL r13_1_afeeder_combout : std_logic;
SIGNAL r13_1_a : std_logic;
SIGNAL add3_add11_0_anx37973z1 : std_logic;
SIGNAL r13_0_afeeder_combout : std_logic;
SIGNAL r13_0_a : std_logic;
SIGNAL add4_add11_6_anx62798z21 : std_logic;
SIGNAL add4_add11_6_anx62798z19 : std_logic;
SIGNAL add4_add11_6_anx62798z17 : std_logic;
SIGNAL add4_add11_6_anx62798z15 : std_logic;
SIGNAL add4_add11_6_anx62798z13 : std_logic;
SIGNAL add4_add11_6_anx62798z11 : std_logic;
SIGNAL add4_add11_6_anx62798z9 : std_logic;
SIGNAL add4_add11_6_anx62798z7 : std_logic;
SIGNAL add4_add11_6_anx62798z5 : std_logic;
SIGNAL add4_add11_6_anx62798z3 : std_logic;
SIGNAL add4_add11_6_anx23445z2 : std_logic;
SIGNAL add4_add11_6_anx23445z1 : std_logic;
SIGNAL r15_12_a : std_logic;
SIGNAL e_6_afeeder_combout : std_logic;
SIGNAL e_6_a : std_logic;
SIGNAL f_6_a : std_logic;
SIGNAL i_6_a : std_logic;
SIGNAL h_6_a : std_logic;
SIGNAL nx31640z2 : std_logic;
SIGNAL nx31640z1 : std_logic;
SIGNAL r2_6_a : std_logic;
SIGNAL r5_6_afeeder_combout : std_logic;
SIGNAL g_6_a : std_logic;
SIGNAL nx40059z2 : std_logic;
SIGNAL nx40059z1 : std_logic;
SIGNAL a_6_afeeder_combout : std_logic;
SIGNAL a_6_a : std_logic;
SIGNAL r1_6_a : std_logic;
SIGNAL nx36625z1 : std_logic;
SIGNAL d_7_a : std_logic;
SIGNAL i_7_a : std_logic;
SIGNAL h_7_a : std_logic;
SIGNAL nx32637z2 : std_logic;
SIGNAL nx32637z1 : std_logic;
SIGNAL r2_7_a : std_logic;
SIGNAL e_5_afeeder_combout : std_logic;
SIGNAL e_5_a : std_logic;
SIGNAL f_5_a : std_logic;
SIGNAL i_5_afeeder_combout : std_logic;
SIGNAL i_5_a : std_logic;
SIGNAL h_5_a : std_logic;
SIGNAL nx30643z2 : std_logic;
SIGNAL nx30643z1 : std_logic;
SIGNAL r2_5_a : std_logic;
SIGNAL nx29646z1 : std_logic;
SIGNAL nx33634z1 : std_logic;
SIGNAL d_4_a : std_logic;
SIGNAL r2_4_a : std_logic;
SIGNAL b_3_a : std_logic;
SIGNAL nx28649z2 : std_logic;
SIGNAL f_3_a : std_logic;
SIGNAL nx28649z1 : std_logic;
SIGNAL nx32637z4 : std_logic;
SIGNAL d_3_a : std_logic;
SIGNAL r2_3_a : std_logic;
SIGNAL f_2_a : std_logic;
SIGNAL g_2_a : std_logic;
SIGNAL nx36071z2 : std_logic;
SIGNAL nx36071z1 : std_logic;
SIGNAL b_2_afeeder_combout : std_logic;
SIGNAL b_2_a : std_logic;
SIGNAL a_2_afeeder_combout : std_logic;
SIGNAL a_2_a : std_logic;
SIGNAL r1_2_a : std_logic;
SIGNAL nx30643z3 : std_logic;
SIGNAL d_1_a : std_logic;
SIGNAL i_1_afeeder_combout : std_logic;
SIGNAL i_1_a : std_logic;
SIGNAL h_1_a : std_logic;
SIGNAL nx26655z2 : std_logic;
SIGNAL nx26655z1 : std_logic;
SIGNAL r2_1_a : std_logic;
SIGNAL nx34077z2 : std_logic;
SIGNAL nx34077z1 : std_logic;
SIGNAL a_0_afeeder_combout : std_logic;
SIGNAL a_0_a : std_logic;
SIGNAL r1_0_a : std_logic;
SIGNAL sub1_sub8_1_anx23445z22 : std_logic;
SIGNAL sub1_sub8_1_anx23445z19 : std_logic;
SIGNAL sub1_sub8_1_anx23445z16 : std_logic;
SIGNAL sub1_sub8_1_anx23445z13 : std_logic;
SIGNAL sub1_sub8_1_anx23445z10 : std_logic;
SIGNAL sub1_sub8_1_anx23445z7 : std_logic;
SIGNAL sub1_sub8_1_anx23445z4 : std_logic;
SIGNAL sub1_sub8_1_anx23445z1 : std_logic;
SIGNAL r5_6_a : std_logic;
SIGNAL r5_5_afeeder_combout : std_logic;
SIGNAL nx39062z1 : std_logic;
SIGNAL a_5_afeeder_combout : std_logic;
SIGNAL a_5_a : std_logic;
SIGNAL r1_5_a : std_logic;
SIGNAL r5_5_a : std_logic;
SIGNAL r5_4_afeeder_combout : std_logic;
SIGNAL g_4_a : std_logic;
SIGNAL nx38065z2 : std_logic;
SIGNAL nx38065z1 : std_logic;
SIGNAL r1_4_a : std_logic;
SIGNAL r5_4_a : std_logic;
SIGNAL r5_1_afeeder_combout : std_logic;
SIGNAL g_1_a : std_logic;
SIGNAL nx35074z2 : std_logic;
SIGNAL nx35074z1 : std_logic;
SIGNAL r1_1_a : std_logic;
SIGNAL r5_1_a : std_logic;
SIGNAL add2_add9_5_anx45949z24 : std_logic;
SIGNAL add2_add9_5_anx45949z21 : std_logic;
SIGNAL add2_add9_5_anx45949z18 : std_logic;
SIGNAL add2_add9_5_anx45949z15 : std_logic;
SIGNAL add2_add9_5_anx45949z12 : std_logic;
SIGNAL add2_add9_5_anx45949z9 : std_logic;
SIGNAL add2_add9_5_anx45949z6 : std_logic;
SIGNAL add2_add9_5_anx45949z3 : std_logic;
SIGNAL add2_add9_5_anx45949z1 : std_logic;
SIGNAL r11_8_a : std_logic;
SIGNAL r12_8_afeeder_combout : std_logic;
SIGNAL add2_add9_5_anx23445z2 : std_logic;
SIGNAL add2_add9_5_anx23445z1 : std_logic;
SIGNAL r11_9_a : std_logic;
SIGNAL max2_9_a : std_logic;
SIGNAL nx25299z2 : std_logic;
SIGNAL nx25299z1 : std_logic;
SIGNAL r9_9_a : std_logic;
SIGNAL add2_add9_5_anx44952z1 : std_logic;
SIGNAL r11_7_a : std_logic;
SIGNAL max2_7_a : std_logic;
SIGNAL r9_7_a : std_logic;
SIGNAL add2_add9_5_anx43955z1 : std_logic;
SIGNAL r11_6_a : std_logic;
SIGNAL add2_add9_5_anx42958z1 : std_logic;
SIGNAL r11_5_a : std_logic;
SIGNAL add2_add9_5_anx41961z1 : std_logic;
SIGNAL r11_4_a : std_logic;
SIGNAL add2_add9_5_anx40964z1 : std_logic;
SIGNAL r11_3_a : std_logic;
SIGNAL max2_2_a : std_logic;
SIGNAL add2_add9_5_anx39967z1 : std_logic;
SIGNAL r9_2_a : std_logic;
SIGNAL max2_1_a : std_logic;
SIGNAL add2_add9_5_anx38970z1 : std_logic;
SIGNAL r9_1_a : std_logic;
SIGNAL add2_add9_5_anx37973z1 : std_logic;
SIGNAL r11_0_a : std_logic;
SIGNAL sub2_sub10_2_anx23445z28 : std_logic;
SIGNAL sub2_sub10_2_anx23445z25 : std_logic;
SIGNAL sub2_sub10_2_anx23445z22 : std_logic;
SIGNAL sub2_sub10_2_anx23445z19 : std_logic;
SIGNAL sub2_sub10_2_anx23445z16 : std_logic;
SIGNAL sub2_sub10_2_anx23445z13 : std_logic;
SIGNAL sub2_sub10_2_anx23445z10 : std_logic;
SIGNAL sub2_sub10_2_anx23445z7 : std_logic;
SIGNAL sub2_sub10_2_anx23445z4 : std_logic;
SIGNAL sub2_sub10_2_anx23445z1 : std_logic;
SIGNAL max2_8_a : std_logic;
SIGNAL r9_8_a : std_logic;
SIGNAL r12_8_a : std_logic;
SIGNAL r14_11_afeeder_combout : std_logic;
SIGNAL r12_9_afeeder_combout : std_logic;
SIGNAL r12_9_a : std_logic;
SIGNAL r12_7_afeeder_combout : std_logic;
SIGNAL r12_7_a : std_logic;
SIGNAL r12_4_afeeder_combout : std_logic;
SIGNAL max2_4_a : std_logic;
SIGNAL r9_4_a : std_logic;
SIGNAL r12_4_a : std_logic;
SIGNAL r12_3_afeeder_combout : std_logic;
SIGNAL max2_3_a : std_logic;
SIGNAL r9_3_a : std_logic;
SIGNAL r12_3_a : std_logic;
SIGNAL r11_2_a : std_logic;
SIGNAL r11_1_a : std_logic;
SIGNAL r12_1_afeeder_combout : std_logic;
SIGNAL r12_1_a : std_logic;
SIGNAL r12_0_afeeder_combout : std_logic;
SIGNAL max2_0_a : std_logic;
SIGNAL r9_0_a : std_logic;
SIGNAL r12_0_a : std_logic;
SIGNAL sub3_sub10_3_anx23445z28 : std_logic;
SIGNAL sub3_sub10_3_anx23445z25 : std_logic;
SIGNAL sub3_sub10_3_anx23445z22 : std_logic;
SIGNAL sub3_sub10_3_anx23445z19 : std_logic;
SIGNAL sub3_sub10_3_anx23445z16 : std_logic;
SIGNAL sub3_sub10_3_anx23445z13 : std_logic;
SIGNAL sub3_sub10_3_anx23445z10 : std_logic;
SIGNAL sub3_sub10_3_anx23445z7 : std_logic;
SIGNAL sub3_sub10_3_anx23445z4 : std_logic;
SIGNAL sub3_sub10_3_anx23445z1 : std_logic;
SIGNAL r14_11_a : std_logic;
SIGNAL r14_10_afeeder_combout : std_logic;
SIGNAL r14_10_a : std_logic;
SIGNAL add4_add11_6_anx45949z1 : std_logic;
SIGNAL r15_9_a : std_logic;
SIGNAL add4_add11_6_anx44952z1 : std_logic;
SIGNAL r15_8_a : std_logic;
SIGNAL r14_7_afeeder_combout : std_logic;
SIGNAL r14_7_a : std_logic;
SIGNAL r14_6_afeeder_combout : std_logic;
SIGNAL r14_6_a : std_logic;
SIGNAL add4_add11_6_anx41961z1 : std_logic;
SIGNAL r15_5_a : std_logic;
SIGNAL r14_4_afeeder_combout : std_logic;
SIGNAL r14_4_a : std_logic;
SIGNAL add4_add11_6_anx39967z1 : std_logic;
SIGNAL r15_3_a : std_logic;
SIGNAL add4_add11_6_anx38970z1 : std_logic;
SIGNAL r15_2_a : std_logic;
SIGNAL add4_add11_6_anx37973z1 : std_logic;
SIGNAL r15_1_a : std_logic;
SIGNAL ix36874z50555_anx63795z11 : std_logic;
SIGNAL ix36874z50555_anx63795z10 : std_logic;
SIGNAL ix36874z50555_anx63795z9 : std_logic;
SIGNAL ix36874z50555_anx63795z8 : std_logic;
SIGNAL ix36874z50555_anx63795z7 : std_logic;
SIGNAL ix36874z50555_anx63795z6 : std_logic;
SIGNAL ix36874z50555_anx63795z5 : std_logic;
SIGNAL ix36874z50555_anx63795z4 : std_logic;
SIGNAL ix36874z50555_anx63795z3 : std_logic;
SIGNAL ix36874z50555_anx63795z2 : std_logic;
SIGNAL ix36874z50555_anx63795z1 : std_logic;
SIGNAL ix36874z50555_ad_11_a : std_logic;
SIGNAL ix36874z50555_ad_6_a : std_logic;
SIGNAL ix36874z50555_ad_7_a : std_logic;
SIGNAL ix36874z50555_ad_8_a : std_logic;
SIGNAL nx36874z7 : std_logic;
SIGNAL ix36874z50555_anx23445z2 : std_logic;
SIGNAL ix36874z50555_anx23445z1 : std_logic;
SIGNAL v_7_a : std_logic;
SIGNAL nx36874z2 : std_logic;
SIGNAL ix36874z50555_ad_10_a : std_logic;
SIGNAL ix36874z50555_ad_9_a : std_logic;
SIGNAL nx36874z4 : std_logic;
SIGNAL o_edge_dup0 : std_logic;
SIGNAL nx2019z1 : std_logic;
SIGNAL dir2_2_a : std_logic;
SIGNAL nx36266z1 : std_logic;
SIGNAL dir5_0_a : std_logic;
SIGNAL dir5_0_a_wirecell_combout : std_logic;
SIGNAL nx36692z2 : std_logic;
SIGNAL nx36692z1 : std_logic;
SIGNAL nx46108z3 : std_logic;
SIGNAL nx46108z2 : std_logic;
SIGNAL nx46108z1 : std_logic;
SIGNAL dir7_0_a : std_logic;
SIGNAL nx31609z1 : std_logic;
SIGNAL o_dir_dup0_0_a : std_logic;
SIGNAL dir5_1_a : std_logic;
SIGNAL dir5_1_a_wirecell_combout : std_logic;
SIGNAL nx45111z2 : std_logic;
SIGNAL nx45111z1 : std_logic;
SIGNAL dir7_1_a : std_logic;
SIGNAL o_dir_dup0_1_a : std_logic;
SIGNAL nx44114z1 : std_logic;
SIGNAL dir7_2_a : std_logic;
SIGNAL o_dir_dup0_2_a : std_logic;
SIGNAL o_mode_dup0_1_afeeder_combout : std_logic;
SIGNAL o_mode_dup0_1_a : std_logic;
SIGNAL nx26373z2 : std_logic;
SIGNAL nx26373z1 : std_logic;
SIGNAL nx47893z1 : std_logic;
SIGNAL nx16335z1 : std_logic;
SIGNAL nx17332z1 : std_logic;
SIGNAL nx18329z1 : std_logic;
SIGNAL nx19326z1 : std_logic;
SIGNAL nx20323z1 : std_logic;
SIGNAL nx21320z1 : std_logic;
SIGNAL nx22317z1 : std_logic;
SIGNAL nx23314z1 : std_logic;
SIGNAL i_pixel_acombout : std_logic_vector(7 DOWNTO 0);
SIGNAL m1_mem_aix64056z29481_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL m3_mem_aix64056z29483_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL m2_mem_aix64056z29482_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_nx47893z1 : std_logic;

BEGIN

ww_i_clock <= i_clock;
ww_i_reset <= i_reset;
ww_i_valid <= i_valid;
ww_i_pixel <= i_pixel;
o_valid <= ww_o_valid;
o_edge <= ww_o_edge;
o_dir <= ww_o_dir;
o_mode <= ww_o_mode;
o_row <= ww_o_row;
ww_debug_key <= debug_key;
ww_debug_switch <= debug_switch;
debug_led_red <= ww_debug_led_red;
debug_led_grn <= ww_debug_led_grn;
debug_num_0 <= ww_debug_num_0;
debug_num_1 <= ww_debug_num_1;
debug_num_2 <= ww_debug_num_2;
debug_num_3 <= ww_debug_num_3;
debug_num_4 <= ww_debug_num_4;
debug_num_5 <= ww_debug_num_5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (i_pixel_acombout(7) & i_pixel_acombout(6) & i_pixel_acombout(5) & i_pixel_acombout(4) & i_pixel_acombout(3) & i_pixel_acombout(2) & i_pixel_acombout(1) & 
i_pixel_acombout(0));

m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTAADDR_bus <= (addr_x_7_a & addr_x_6_a & addr_x_5_a & addr_x_4_a & addr_x_3_a & addr_x_2_a & addr_x_1_a & addr_x_0_a);

m2_mem_aix64056z29482_aauto_generated_aq_a(0) <= m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
m2_mem_aix64056z29482_aauto_generated_aq_a(1) <= m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
m2_mem_aix64056z29482_aauto_generated_aq_a(2) <= m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
m2_mem_aix64056z29482_aauto_generated_aq_a(3) <= m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
m2_mem_aix64056z29482_aauto_generated_aq_a(4) <= m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
m2_mem_aix64056z29482_aauto_generated_aq_a(5) <= m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
m2_mem_aix64056z29482_aauto_generated_aq_a(6) <= m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
m2_mem_aix64056z29482_aauto_generated_aq_a(7) <= m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (i_pixel_acombout(7) & i_pixel_acombout(6) & i_pixel_acombout(5) & i_pixel_acombout(4) & i_pixel_acombout(3) & i_pixel_acombout(2) & i_pixel_acombout(1) & 
i_pixel_acombout(0));

m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTAADDR_bus <= (addr_x_7_a & addr_x_6_a & addr_x_5_a & addr_x_4_a & addr_x_3_a & addr_x_2_a & addr_x_1_a & addr_x_0_a);

m3_mem_aix64056z29483_aauto_generated_aq_a(0) <= m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
m3_mem_aix64056z29483_aauto_generated_aq_a(1) <= m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
m3_mem_aix64056z29483_aauto_generated_aq_a(2) <= m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
m3_mem_aix64056z29483_aauto_generated_aq_a(3) <= m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
m3_mem_aix64056z29483_aauto_generated_aq_a(4) <= m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
m3_mem_aix64056z29483_aauto_generated_aq_a(5) <= m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
m3_mem_aix64056z29483_aauto_generated_aq_a(6) <= m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
m3_mem_aix64056z29483_aauto_generated_aq_a(7) <= m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (i_pixel_acombout(7) & i_pixel_acombout(6) & i_pixel_acombout(5) & i_pixel_acombout(4) & i_pixel_acombout(3) & i_pixel_acombout(2) & i_pixel_acombout(1) & 
i_pixel_acombout(0));

m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTAADDR_bus <= (addr_x_7_a & addr_x_6_a & addr_x_5_a & addr_x_4_a & addr_x_3_a & addr_x_2_a & addr_x_1_a & addr_x_0_a);

m1_mem_aix64056z29481_aauto_generated_aq_a(0) <= m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
m1_mem_aix64056z29481_aauto_generated_aq_a(1) <= m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
m1_mem_aix64056z29481_aauto_generated_aq_a(2) <= m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
m1_mem_aix64056z29481_aauto_generated_aq_a(3) <= m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
m1_mem_aix64056z29481_aauto_generated_aq_a(4) <= m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
m1_mem_aix64056z29481_aauto_generated_aq_a(5) <= m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
m1_mem_aix64056z29481_aauto_generated_aq_a(6) <= m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
m1_mem_aix64056z29481_aauto_generated_aq_a(7) <= m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

i_clock_aclkctrl_INCLK_bus <= (gnd & gnd & gnd & i_clock_acombout);
ALT_INV_nx47893z1 <= NOT nx47893z1;

-- Location: LCFF_X48_Y29_N17
reg_r14_12_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r14_12_afeeder_combout,
	sdata => r11_9_a,
	sload => sub3_sub10_3_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r14_12_a);

-- Location: LCFF_X44_Y29_N23
reg_r15_11_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add4_add11_6_anx62798z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r15_11_a);

-- Location: LCFF_X44_Y29_N21
reg_r15_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add4_add11_6_anx46946z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r15_10_a);

-- Location: LCFF_X48_Y29_N21
reg_r14_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r14_9_afeeder_combout,
	sdata => r11_6_a,
	sload => sub3_sub10_3_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r14_9_a);

-- Location: LCFF_X48_Y29_N23
reg_r14_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r14_8_afeeder_combout,
	sdata => r11_5_a,
	sload => sub3_sub10_3_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r14_8_a);

-- Location: LCFF_X44_Y29_N15
reg_r15_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add4_add11_6_anx43955z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r15_7_a);

-- Location: LCFF_X44_Y29_N13
reg_r15_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add4_add11_6_anx42958z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r15_6_a);

-- Location: LCFF_X47_Y29_N3
reg_r14_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r14_5_afeeder_combout,
	sdata => r11_2_a,
	sload => sub3_sub10_3_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r14_5_a);

-- Location: LCFF_X44_Y29_N9
reg_r15_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add4_add11_6_anx40964z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r15_4_a);

-- Location: LCFF_X48_Y29_N7
reg_r14_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r14_3_afeeder_combout,
	sdata => r11_0_a,
	sload => sub3_sub10_3_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r14_3_a);

-- Location: LCFF_X45_Y29_N7
reg_r15_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r13_0_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r15_0_a);

-- Location: LCCOMB_X49_Y28_N12
ix28105z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx28105z2 = (v_6_a & ((modgen_counter_o_row_anx1041z1) # (modgen_counter_o_row_anx58250z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_6_a,
	datac => modgen_counter_o_row_anx1041z1,
	datad => modgen_counter_o_row_anx58250z3,
	combout => nx28105z2);

-- Location: LCCOMB_X49_Y28_N16
ix28105z52931 : cycloneii_lcell_comb
-- Equation(s):
-- nx28105z9 = (modgen_counter_o_row_anx58250z13 & (v_6_a & ((modgen_counter_x_anx58250z5) # (modgen_counter_x_anx58250z7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_o_row_anx58250z13,
	datab => modgen_counter_x_anx58250z5,
	datac => v_6_a,
	datad => modgen_counter_x_anx58250z7,
	combout => nx28105z9);

-- Location: LCFF_X44_Y30_N17
reg_r13_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r13_10_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r13_10_a);

-- Location: LCFF_X45_Y30_N1
reg_r13_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r13_8_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r13_8_a);

-- Location: LCFF_X44_Y30_N25
reg_r13_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r13_5_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r13_5_a);

-- Location: LCFF_X44_Y29_N27
reg_r13_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => add3_add11_0_anx40964z1,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r13_3_a);

-- Location: LCCOMB_X44_Y29_N8
add4_add11_6_aix62798z52931 : cycloneii_lcell_comb
-- Equation(s):
-- add4_add11_6_anx40964z1 = (r13_3_a & ((r13_4_a & (add4_add11_6_anx62798z17 & VCC)) # (!r13_4_a & (!add4_add11_6_anx62798z17)))) # (!r13_3_a & ((r13_4_a & (!add4_add11_6_anx62798z17)) # (!r13_4_a & ((add4_add11_6_anx62798z17) # (GND)))))
-- add4_add11_6_anx62798z15 = CARRY((r13_3_a & (!r13_4_a & !add4_add11_6_anx62798z17)) # (!r13_3_a & ((!add4_add11_6_anx62798z17) # (!r13_4_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r13_3_a,
	datab => r13_4_a,
	datad => VCC,
	cin => add4_add11_6_anx62798z17,
	combout => add4_add11_6_anx40964z1,
	cout => add4_add11_6_anx62798z15);

-- Location: LCCOMB_X44_Y29_N12
add4_add11_6_aix62798z52929 : cycloneii_lcell_comb
-- Equation(s):
-- add4_add11_6_anx42958z1 = (r13_5_a & ((r13_6_a & (add4_add11_6_anx62798z13 & VCC)) # (!r13_6_a & (!add4_add11_6_anx62798z13)))) # (!r13_5_a & ((r13_6_a & (!add4_add11_6_anx62798z13)) # (!r13_6_a & ((add4_add11_6_anx62798z13) # (GND)))))
-- add4_add11_6_anx62798z11 = CARRY((r13_5_a & (!r13_6_a & !add4_add11_6_anx62798z13)) # (!r13_5_a & ((!add4_add11_6_anx62798z13) # (!r13_6_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r13_5_a,
	datab => r13_6_a,
	datad => VCC,
	cin => add4_add11_6_anx62798z13,
	combout => add4_add11_6_anx42958z1,
	cout => add4_add11_6_anx62798z11);

-- Location: LCCOMB_X44_Y29_N14
add4_add11_6_aix62798z52928 : cycloneii_lcell_comb
-- Equation(s):
-- add4_add11_6_anx43955z1 = ((r13_7_a $ (r13_6_a $ (!add4_add11_6_anx62798z11)))) # (GND)
-- add4_add11_6_anx62798z9 = CARRY((r13_7_a & ((r13_6_a) # (!add4_add11_6_anx62798z11))) # (!r13_7_a & (r13_6_a & !add4_add11_6_anx62798z11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r13_7_a,
	datab => r13_6_a,
	datad => VCC,
	cin => add4_add11_6_anx62798z11,
	combout => add4_add11_6_anx43955z1,
	cout => add4_add11_6_anx62798z9);

-- Location: LCCOMB_X44_Y29_N20
add4_add11_6_aix62798z52925 : cycloneii_lcell_comb
-- Equation(s):
-- add4_add11_6_anx46946z1 = (r13_10_a & ((r13_9_a & (add4_add11_6_anx62798z5 & VCC)) # (!r13_9_a & (!add4_add11_6_anx62798z5)))) # (!r13_10_a & ((r13_9_a & (!add4_add11_6_anx62798z5)) # (!r13_9_a & ((add4_add11_6_anx62798z5) # (GND)))))
-- add4_add11_6_anx62798z3 = CARRY((r13_10_a & (!r13_9_a & !add4_add11_6_anx62798z5)) # (!r13_10_a & ((!add4_add11_6_anx62798z5) # (!r13_9_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r13_10_a,
	datab => r13_9_a,
	datad => VCC,
	cin => add4_add11_6_anx62798z5,
	combout => add4_add11_6_anx46946z1,
	cout => add4_add11_6_anx62798z3);

-- Location: LCCOMB_X44_Y29_N22
add4_add11_6_aix62798z52923 : cycloneii_lcell_comb
-- Equation(s):
-- add4_add11_6_anx62798z1 = (r13_10_a & (add4_add11_6_anx62798z3 $ (GND))) # (!r13_10_a & (!add4_add11_6_anx62798z3 & VCC))
-- add4_add11_6_anx23445z2 = CARRY((r13_10_a & !add4_add11_6_anx62798z3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r13_10_a,
	datad => VCC,
	cin => add4_add11_6_anx62798z3,
	combout => add4_add11_6_anx62798z1,
	cout => add4_add11_6_anx23445z2);

-- Location: LCFF_X48_Y30_N23
reg_r12_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r12_6_afeeder_combout,
	sdata => r9_6_a,
	sload => sub2_sub10_2_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r12_6_a);

-- Location: LCFF_X48_Y30_N1
reg_r12_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r12_5_afeeder_combout,
	sdata => r9_5_a,
	sload => sub2_sub10_2_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r12_5_a);

-- Location: LCFF_X48_Y30_N7
reg_r12_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r12_2_afeeder_combout,
	sdata => r9_2_a,
	sload => sub2_sub10_2_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r12_2_a);

-- Location: LCFF_X46_Y31_N25
reg_dir4_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx44685z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dir4_0_a);

-- Location: LCFF_X46_Y31_N11
reg_dir4_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx46679z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dir4_2_a);

-- Location: LCFF_X46_Y30_N29
reg_dir6_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx35695z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dir6_2_a);

-- Location: LCCOMB_X47_Y29_N10
ix44114z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx44114z2 = (sub3_sub10_3_anx23445z1 & (((dir4_2_a) # (!v_6_a)))) # (!sub3_sub10_3_anx23445z1 & (dir6_2_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dir6_2_a,
	datab => dir4_2_a,
	datac => v_6_a,
	datad => sub3_sub10_3_anx23445z1,
	combout => nx44114z2);

-- Location: LCCOMB_X50_Y30_N16
ix17322z52932 : cycloneii_lcell_comb
-- Equation(s):
-- nx17322z10 = (modgen_counter_o_row_anx58250z15 & (modgen_counter_o_row_anx58250z9 & (modgen_counter_o_row_anx58250z13 & modgen_counter_o_row_anx58250z11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_o_row_anx58250z15,
	datab => modgen_counter_o_row_anx58250z9,
	datac => modgen_counter_o_row_anx58250z13,
	datad => modgen_counter_o_row_anx58250z11,
	combout => nx17322z10);

-- Location: LCCOMB_X50_Y30_N10
ix17322z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx17322z2 = (i_reset_acombout) # ((i_valid_acombout & ((!modgen_counter_o_row_anx1041z1) # (!modgen_counter_o_row_anx58250z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_reset_acombout,
	datab => i_valid_acombout,
	datac => modgen_counter_o_row_anx58250z3,
	datad => modgen_counter_o_row_anx1041z1,
	combout => nx17322z2);

-- Location: LCCOMB_X50_Y30_N4
ix17322z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx17322z3 = (i_valid_acombout & (((!modgen_counter_o_row_anx58250z5) # (!modgen_counter_o_row_anx58250z9)) # (!modgen_counter_o_row_anx58250z7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_o_row_anx58250z7,
	datab => i_valid_acombout,
	datac => modgen_counter_o_row_anx58250z9,
	datad => modgen_counter_o_row_anx58250z5,
	combout => nx17322z3);

-- Location: LCCOMB_X50_Y29_N30
ix17322z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx17322z4 = (i_valid_acombout & ((nx17322z6) # ((end_of_img) # (nx17322z5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx17322z6,
	datab => end_of_img,
	datac => i_valid_acombout,
	datad => nx17322z5,
	combout => nx17322z4);

-- Location: LCCOMB_X50_Y29_N8
ix17322z52930 : cycloneii_lcell_comb
-- Equation(s):
-- nx17322z8 = (i_valid_acombout & (((!modgen_counter_o_row_anx58250z15) # (!modgen_counter_o_row_anx58250z13)) # (!modgen_counter_o_row_anx58250z11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_valid_acombout,
	datab => modgen_counter_o_row_anx58250z11,
	datac => modgen_counter_o_row_anx58250z13,
	datad => modgen_counter_o_row_anx58250z15,
	combout => nx17322z8);

-- Location: LCCOMB_X50_Y29_N10
ix17322z52929 : cycloneii_lcell_comb
-- Equation(s):
-- nx17322z7 = (nx17322z8) # ((i_valid_acombout & ((nx6176z9) # (!modgen_counter_x_anx58250z5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_valid_acombout,
	datab => nx17322z8,
	datac => modgen_counter_x_anx58250z5,
	datad => nx6176z9,
	combout => nx17322z7);

-- Location: LCCOMB_X50_Y29_N20
ix17322z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx17322z1 = (nx17322z7) # ((nx17322z4) # ((nx17322z2) # (nx17322z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx17322z7,
	datab => nx17322z4,
	datac => nx17322z2,
	datad => nx17322z3,
	combout => nx17322z1);

-- Location: LCFF_X44_Y30_N13
reg_r8_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => add3_add11_0_anx62798z1,
	sclr => v_2_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r8_10_a);

-- Location: LCFF_X44_Y30_N15
reg_r8_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => add3_add11_0_anx46946z1,
	sclr => v_2_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r8_9_a);

-- Location: LCFF_X45_Y30_N27
reg_r8_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add3_add11_0_anx45949z1,
	sdata => r7_8_a,
	sload => v_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r8_8_a);

-- Location: LCFF_X45_Y30_N25
reg_r8_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add3_add11_0_anx44952z1,
	sdata => r7_7_a,
	sload => v_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r8_7_a);

-- Location: LCFF_X45_Y30_N13
reg_r8_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add3_add11_0_anx38970z1,
	sdata => r7_1_a,
	sload => v_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r8_1_a);

-- Location: LCFF_X45_Y30_N11
reg_r8_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add3_add11_0_anx37973z1,
	sdata => r7_0_a,
	sload => v_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r8_0_a);

-- Location: LCCOMB_X45_Y30_N26
add3_add11_0_aix62798z52926 : cycloneii_lcell_comb
-- Equation(s):
-- add3_add11_0_anx45949z1 = ((r8_8_a $ (r7_8_a $ (!add3_add11_0_anx62798z8)))) # (GND)
-- add3_add11_0_anx62798z5 = CARRY((r8_8_a & ((r7_8_a) # (!add3_add11_0_anx62798z8))) # (!r8_8_a & (r7_8_a & !add3_add11_0_anx62798z8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r8_8_a,
	datab => r7_8_a,
	datad => VCC,
	cin => add3_add11_0_anx62798z8,
	combout => add3_add11_0_anx45949z1,
	cout => add3_add11_0_anx62798z5);

-- Location: LCCOMB_X45_Y30_N28
add3_add11_0_aix62798z52925 : cycloneii_lcell_comb
-- Equation(s):
-- add3_add11_0_anx46946z1 = (r8_9_a & (!add3_add11_0_anx62798z5)) # (!r8_9_a & ((add3_add11_0_anx62798z5) # (GND)))
-- add3_add11_0_anx62798z3 = CARRY((!add3_add11_0_anx62798z5) # (!r8_9_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r8_9_a,
	datad => VCC,
	cin => add3_add11_0_anx62798z5,
	combout => add3_add11_0_anx46946z1,
	cout => add3_add11_0_anx62798z3);

-- Location: LCCOMB_X45_Y30_N30
add3_add11_0_aix62798z52923 : cycloneii_lcell_comb
-- Equation(s):
-- add3_add11_0_anx62798z1 = add3_add11_0_anx62798z3 $ (!r8_10_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => r8_10_a,
	cin => add3_add11_0_anx62798z3,
	combout => add3_add11_0_anx62798z1);

-- Location: LCFF_X47_Y30_N27
reg_r9_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => max2_6_a,
	sdata => add2_add9_5_anx43955z1,
	sload => v_2_a,
	ena => nx25299z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r9_6_a);

-- Location: LCFF_X47_Y30_N29
reg_r9_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => max2_5_a,
	sdata => add2_add9_5_anx42958z1,
	sload => v_2_a,
	ena => nx25299z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r9_5_a);

-- Location: LCFF_X48_Y28_N25
reg_r5_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_7_afeeder_combout,
	sdata => r1_7_a,
	sload => sub1_sub8_1_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_7_a);

-- Location: LCFF_X48_Y28_N1
reg_r5_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_3_afeeder_combout,
	sdata => r1_3_a,
	sload => sub1_sub8_1_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_3_a);

-- Location: LCFF_X48_Y28_N3
reg_r5_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_2_afeeder_combout,
	sdata => r1_2_a,
	sload => sub1_sub8_1_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_2_a);

-- Location: LCFF_X48_Y28_N23
reg_r5_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_0_afeeder_combout,
	sdata => r1_0_a,
	sload => sub1_sub8_1_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_0_a);

-- Location: LCFF_X48_Y31_N27
reg_r1_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx41056z1,
	sdata => a_7_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r1_7_a);

-- Location: LCFF_X48_Y32_N27
reg_r1_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx37068z1,
	sdata => a_3_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r1_3_a);

-- Location: LCFF_X48_Y31_N1
reg_r2_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx27652z1,
	sdata => d_2_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_2_a);

-- Location: LCFF_X49_Y31_N27
reg_r2_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx25658z1,
	sdata => d_0_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_0_a);

-- Location: LCCOMB_X45_Y31_N18
ix46679z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx46679z2 = (v_4_a & (!v_2_a & (!v_3_a & !v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_4_a,
	datab => v_2_a,
	datac => v_3_a,
	datad => v_1_a,
	combout => nx46679z2);

-- Location: LCCOMB_X46_Y31_N24
ix44685z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx44685z1 = (nx46679z2 & ((sub1_sub8_1_anx23445z1))) # (!nx46679z2 & (dir4_0_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx46679z2,
	datac => dir4_0_a,
	datad => sub1_sub8_1_anx23445z1,
	combout => nx44685z1);

-- Location: LCCOMB_X46_Y31_N10
ix46679z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx46679z1 = (nx46679z2 & ((!sub1_sub8_1_anx23445z1))) # (!nx46679z2 & (dir4_2_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx46679z2,
	datac => dir4_2_a,
	datad => sub1_sub8_1_anx23445z1,
	combout => nx46679z1);

-- Location: LCFF_X46_Y31_N7
reg_dir3_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx10438z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dir3_2_a);

-- Location: LCFF_X46_Y30_N27
reg_dir5_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => dir5_23n5ss1_2_a,
	ena => v_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dir5_2_a);

-- Location: LCCOMB_X46_Y30_N20
ix35695z52924 : cycloneii_lcell_comb
-- Equation(s):
-- dir6_23n5ss1_2_a = (sub2_sub10_2_anx23445z1 & ((dir5_2_a))) # (!sub2_sub10_2_anx23445z1 & (dir3_2_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sub2_sub10_2_anx23445z1,
	datac => dir3_2_a,
	datad => dir5_2_a,
	combout => dir6_23n5ss1_2_a);

-- Location: LCCOMB_X46_Y30_N28
ix35695z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx35695z1 = (v_4_a & (((dir6_2_a)))) # (!v_4_a & ((v_5_a & (dir6_23n5ss1_2_a)) # (!v_5_a & ((dir6_2_a)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dir6_23n5ss1_2_a,
	datab => v_4_a,
	datac => dir6_2_a,
	datad => v_5_a,
	combout => nx35695z1);

-- Location: LCCOMB_X49_Y29_N18
ix6176z52929 : cycloneii_lcell_comb
-- Equation(s):
-- nx6176z7 = (!modgen_counter_o_row_anx58250z7) # (!modgen_counter_o_row_anx58250z5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => modgen_counter_o_row_anx58250z5,
	datad => modgen_counter_o_row_anx58250z7,
	combout => nx6176z7);

-- Location: LCFF_X48_Y31_N13
reg_r4_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx49737z1,
	sdata => b_7_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4_7_a);

-- Location: LCFF_X48_Y31_N17
reg_r3_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx42315z1,
	sdata => c_6_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_6_a);

-- Location: LCFF_X49_Y31_N7
reg_r3_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx43312z1,
	sdata => c_5_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_5_a);

-- Location: LCFF_X49_Y31_N17
reg_r4_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx52728z1,
	sdata => b_4_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4_4_a);

-- Location: LCFF_X48_Y32_N19
reg_r4_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx53725z1,
	sdata => b_3_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4_3_a);

-- Location: LCFF_X48_Y31_N19
reg_r4_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx54722z1,
	sdata => b_2_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4_2_a);

-- Location: LCFF_X49_Y30_N11
reg_r4_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx55719z1,
	sdata => b_1_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4_1_a);

-- Location: LCFF_X49_Y30_N7
reg_r3_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx48297z1,
	sdata => c_0_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_0_a);

-- Location: LCCOMB_X47_Y30_N26
ix27293z52923 : cycloneii_lcell_comb
-- Equation(s):
-- max2_6_a = (sub2_sub10_2_anx23445z1 & ((r9_6_a))) # (!sub2_sub10_2_anx23445z1 & (r11_6_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r11_6_a,
	datac => r9_6_a,
	datad => sub2_sub10_2_anx23445z1,
	combout => max2_6_a);

-- Location: LCCOMB_X47_Y30_N28
ix28290z52923 : cycloneii_lcell_comb
-- Equation(s):
-- max2_5_a = (sub2_sub10_2_anx23445z1 & ((r9_5_a))) # (!sub2_sub10_2_anx23445z1 & (r11_5_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r11_5_a,
	datac => r9_5_a,
	datad => sub2_sub10_2_anx23445z1,
	combout => max2_5_a);

-- Location: LCFF_X47_Y31_N31
reg_g_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => f_7_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => g_7_a);

-- Location: LCCOMB_X47_Y31_N30
ix41056z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx41056z2 = (v_1_a) # ((v_2_a & (e_7_a)) # (!v_2_a & ((g_7_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => e_7_a,
	datac => g_7_a,
	datad => v_2_a,
	combout => nx41056z2);

-- Location: LCCOMB_X48_Y31_N26
ix41056z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx41056z1 = (nx41056z2 & ((c_7_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41056z2,
	datab => c_7_a,
	datad => v_1_a,
	combout => nx41056z1);

-- Location: LCFF_X47_Y31_N1
reg_g_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => f_5_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => g_5_a);

-- Location: LCCOMB_X47_Y31_N0
ix39062z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx39062z2 = (v_1_a) # ((v_2_a & (e_5_a)) # (!v_2_a & ((g_5_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => e_5_a,
	datac => g_5_a,
	datad => v_2_a,
	combout => nx39062z2);

-- Location: LCFF_X47_Y31_N9
reg_h_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_4_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h_4_a);

-- Location: LCCOMB_X47_Y31_N8
ix29646z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx29646z2 = (v_1_a) # ((v_2_a & ((h_4_a))) # (!v_2_a & (b_4_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_4_a,
	datab => v_1_a,
	datac => h_4_a,
	datad => v_2_a,
	combout => nx29646z2);

-- Location: LCFF_X49_Y32_N25
reg_h_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_3_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h_3_a);

-- Location: LCFF_X49_Y32_N15
reg_g_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => f_3_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => g_3_a);

-- Location: LCCOMB_X49_Y32_N14
ix37068z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx37068z2 = (v_1_a) # ((v_2_a & (e_3_a)) # (!v_2_a & ((g_3_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => e_3_a,
	datab => v_1_a,
	datac => g_3_a,
	datad => v_2_a,
	combout => nx37068z2);

-- Location: LCCOMB_X48_Y32_N26
ix37068z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx37068z1 = (nx37068z2 & ((c_3_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx37068z2,
	datab => c_3_a,
	datad => v_1_a,
	combout => nx37068z1);

-- Location: LCFF_X51_Y31_N27
reg_a_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => a_3_afeeder_combout,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_3_a);

-- Location: LCFF_X49_Y32_N23
reg_h_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_2_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h_2_a);

-- Location: LCCOMB_X49_Y32_N22
ix27652z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx27652z2 = (v_1_a) # ((v_2_a & (h_2_a)) # (!v_2_a & ((b_2_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_2_a,
	datab => v_1_a,
	datac => h_2_a,
	datad => b_2_a,
	combout => nx27652z2);

-- Location: LCCOMB_X48_Y31_N0
ix27652z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx27652z1 = (nx27652z2 & ((f_2_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => f_2_a,
	datad => nx27652z2,
	combout => nx27652z1);

-- Location: LCFF_X51_Y30_N21
reg_d_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx31640z3,
	sdata => m2_mem_aix64056z29482_aauto_generated_aq_a(2),
	sload => t_1_a,
	ena => nx20492z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_2_a);

-- Location: LCCOMB_X50_Y31_N18
ix25658z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx25658z2 = (v_1_a) # ((v_2_a & ((h_0_a))) # (!v_2_a & (b_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_2_a,
	datab => v_1_a,
	datac => b_0_a,
	datad => h_0_a,
	combout => nx25658z2);

-- Location: LCCOMB_X49_Y31_N26
ix25658z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx25658z1 = (nx25658z2 & ((f_0_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => f_0_a,
	datad => nx25658z2,
	combout => nx25658z1);

-- Location: LCCOMB_X45_Y31_N30
ix10438z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx10438z2 = (!v_2_a & (!v_1_a & v_3_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => v_2_a,
	datac => v_1_a,
	datad => v_3_a,
	combout => nx10438z2);

-- Location: LCCOMB_X46_Y31_N6
ix10438z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx10438z1 = (nx10438z2 & ((!sub1_sub8_1_anx23445z1))) # (!nx10438z2 & (dir3_2_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx10438z2,
	datac => dir3_2_a,
	datad => sub1_sub8_1_anx23445z1,
	combout => nx10438z1);

-- Location: LCFF_X45_Y31_N9
reg_dir1_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => sub1_sub8_1_anx23445z1_a_wirecell_combout,
	ena => v_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dir1_2_a);

-- Location: LCCOMB_X46_Y30_N26
ix38260z52923 : cycloneii_lcell_comb
-- Equation(s):
-- dir5_23n5ss1_2_a = (sub2_sub10_2_anx23445z1 & ((dir1_2_a))) # (!sub2_sub10_2_anx23445z1 & (dir2_2_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sub2_sub10_2_anx23445z1,
	datac => dir2_2_a,
	datad => dir1_2_a,
	combout => dir5_23n5ss1_2_a);

-- Location: LCCOMB_X46_Y31_N22
ix49737z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx49737z2 = (v_1_a) # ((v_2_a & ((g_7_a))) # (!v_2_a & (h_7_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_2_a,
	datab => h_7_a,
	datac => v_1_a,
	datad => g_7_a,
	combout => nx49737z2);

-- Location: LCCOMB_X48_Y31_N12
ix49737z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx49737z1 = (nx49737z2 & ((d_7_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => d_7_a,
	datad => nx49737z2,
	combout => nx49737z1);

-- Location: LCCOMB_X46_Y31_N0
ix50734z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx50734z2 = (v_1_a) # ((v_2_a & (g_6_a)) # (!v_2_a & ((h_6_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_2_a,
	datab => g_6_a,
	datac => v_1_a,
	datad => h_6_a,
	combout => nx50734z2);

-- Location: LCCOMB_X47_Y31_N18
ix42315z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx42315z2 = (v_1_a) # ((v_2_a & ((f_6_a))) # (!v_2_a & (a_6_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => a_6_a,
	datac => f_6_a,
	datad => v_2_a,
	combout => nx42315z2);

-- Location: LCCOMB_X48_Y31_N16
ix42315z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx42315z1 = (nx42315z2 & ((e_6_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => nx42315z2,
	datad => e_6_a,
	combout => nx42315z1);

-- Location: LCCOMB_X46_Y31_N26
ix51731z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx51731z2 = (v_1_a) # ((v_2_a & ((g_5_a))) # (!v_2_a & (h_5_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => h_5_a,
	datac => g_5_a,
	datad => v_2_a,
	combout => nx51731z2);

-- Location: LCCOMB_X47_Y31_N24
ix43312z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx43312z2 = (v_1_a) # ((v_2_a & ((f_5_a))) # (!v_2_a & (a_5_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => a_5_a,
	datac => f_5_a,
	datad => v_2_a,
	combout => nx43312z2);

-- Location: LCCOMB_X49_Y31_N6
ix43312z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx43312z1 = (nx43312z2 & ((e_5_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => nx43312z2,
	datad => e_5_a,
	combout => nx43312z1);

-- Location: LCCOMB_X46_Y31_N28
ix52728z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx52728z2 = (v_1_a) # ((v_2_a & (g_4_a)) # (!v_2_a & ((h_4_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => g_4_a,
	datac => h_4_a,
	datad => v_2_a,
	combout => nx52728z2);

-- Location: LCCOMB_X49_Y31_N16
ix52728z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx52728z1 = (nx52728z2 & ((d_4_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx52728z2,
	datab => d_4_a,
	datad => v_1_a,
	combout => nx52728z1);

-- Location: LCCOMB_X49_Y32_N24
ix53725z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx53725z2 = (v_1_a) # ((v_2_a & (g_3_a)) # (!v_2_a & ((h_3_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => g_3_a,
	datab => v_1_a,
	datac => h_3_a,
	datad => v_2_a,
	combout => nx53725z2);

-- Location: LCCOMB_X48_Y32_N18
ix53725z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx53725z1 = (nx53725z2 & ((d_3_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => d_3_a,
	datad => nx53725z2,
	combout => nx53725z1);

-- Location: LCCOMB_X49_Y32_N26
ix45306z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx45306z2 = (v_1_a) # ((v_2_a & ((f_3_a))) # (!v_2_a & (a_3_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_3_a,
	datab => v_1_a,
	datac => f_3_a,
	datad => v_2_a,
	combout => nx45306z2);

-- Location: LCCOMB_X46_Y31_N30
ix54722z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx54722z2 = (v_1_a) # ((v_2_a & ((g_2_a))) # (!v_2_a & (h_2_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => v_2_a,
	datac => h_2_a,
	datad => g_2_a,
	combout => nx54722z2);

-- Location: LCCOMB_X48_Y31_N18
ix54722z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx54722z1 = (nx54722z2 & ((d_2_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => d_2_a,
	datad => nx54722z2,
	combout => nx54722z1);

-- Location: LCCOMB_X49_Y32_N0
ix46303z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx46303z2 = (v_1_a) # ((v_2_a & (f_2_a)) # (!v_2_a & ((a_2_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_2_a,
	datab => v_1_a,
	datac => f_2_a,
	datad => a_2_a,
	combout => nx46303z2);

-- Location: LCCOMB_X45_Y31_N4
ix55719z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx55719z2 = (v_1_a) # ((v_2_a & (g_1_a)) # (!v_2_a & ((h_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => g_1_a,
	datac => v_2_a,
	datad => h_1_a,
	combout => nx55719z2);

-- Location: LCCOMB_X49_Y30_N10
ix55719z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx55719z1 = (nx55719z2 & ((d_1_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_1_a,
	datab => v_1_a,
	datad => nx55719z2,
	combout => nx55719z1);

-- Location: LCCOMB_X50_Y31_N16
ix48297z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx48297z2 = (v_1_a) # ((v_2_a & (f_0_a)) # (!v_2_a & ((a_0_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_2_a,
	datab => v_1_a,
	datac => f_0_a,
	datad => a_0_a,
	combout => nx48297z2);

-- Location: LCCOMB_X49_Y30_N6
ix48297z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx48297z1 = (nx48297z2 & ((e_0_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx48297z2,
	datab => v_1_a,
	datad => e_0_a,
	combout => nx48297z1);

-- Location: LCFF_X47_Y31_N21
reg_i_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => d_4_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_4_a);

-- Location: LCFF_X49_Y32_N31
reg_i_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => i_3_afeeder_combout,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_3_a);

-- Location: LCFF_X49_Y32_N21
reg_i_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => i_2_afeeder_combout,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_2_a);

-- Location: LCCOMB_X51_Y30_N20
ix31640z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx31640z3 = (t_0_a & (m1_mem_aix64056z29481_aauto_generated_aq_a(2))) # (!t_0_a & ((m3_mem_aix64056z29483_aauto_generated_aq_a(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m1_mem_aix64056z29481_aauto_generated_aq_a(2),
	datab => t_0_a,
	datad => m3_mem_aix64056z29483_aauto_generated_aq_a(2),
	combout => nx31640z3);

-- Location: M4K_X52_Y30
m3_mem_aix64056z29483_aauto_generated_aram_block1a0 : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_2:m3_mem|altsyncram:ix64056z29483|altsyncram_jpg2:auto_generated|ALTSYNCRAM",
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
	portawe => wren_m3,
	clk0 => i_clock_aclkctrl_outclk,
	portadatain => m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => m3_mem_aix64056z29483_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

-- Location: LCCOMB_X51_Y28_N2
ix13952z52923 : cycloneii_lcell_comb
-- Equation(s):
-- wren_m1 = (i_valid_acombout & ((t_20n2s1_0_a) # ((nx6176z3 & nx17322z15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t_20n2s1_0_a,
	datab => i_valid_acombout,
	datac => nx6176z3,
	datad => nx17322z15,
	combout => wren_m1);

-- Location: LCCOMB_X51_Y28_N6
ix19087z52947 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z14 = (modgen_counter_x_anx58250z7 & (((!modgen_counter_x_anx58250z9) # (!modgen_counter_x_anx58250z11)) # (!modgen_counter_x_anx58250z5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx58250z7,
	datab => modgen_counter_x_anx58250z5,
	datac => modgen_counter_x_anx58250z11,
	datad => modgen_counter_x_anx58250z9,
	combout => nx19087z14);

-- Location: LCCOMB_X50_Y30_N24
ix24222z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx24222z1 = (!t_0_a & t_1_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t_0_a,
	datad => t_1_a,
	combout => nx24222z1);

-- Location: LCCOMB_X50_Y30_N2
ix19087z52964 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z26 = (nx6176z7) # (((!nx6176z5) # (!nx6176z6)) # (!nx6176z4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx6176z7,
	datab => nx6176z4,
	datac => nx6176z6,
	datad => nx6176z5,
	combout => nx19087z26);

-- Location: LCCOMB_X51_Y28_N30
ix19087z52965 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z27 = (nx6176z8) # (((nx17322z6) # (nx6176z9)) # (!nx17322z16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx6176z8,
	datab => nx17322z16,
	datac => nx17322z6,
	datad => nx6176z9,
	combout => nx19087z27);

-- Location: LCCOMB_X50_Y30_N12
ix24222z52923 : cycloneii_lcell_comb
-- Equation(s):
-- wren_m3 = (nx24222z1 & (i_valid_acombout & ((nx19087z26) # (nx19087z27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx24222z1,
	datab => nx19087z26,
	datac => nx19087z27,
	datad => i_valid_acombout,
	combout => wren_m3);

-- Location: LCCOMB_X50_Y30_N30
ix19087z52963 : cycloneii_lcell_comb
-- Equation(s):
-- wren_m2 = (i_valid_acombout & (t_20n2s1_1_a & ((nx19087z27) # (nx19087z26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_valid_acombout,
	datab => t_20n2s1_1_a,
	datac => nx19087z27,
	datad => nx19087z26,
	combout => wren_m2);

-- Location: LCCOMB_X45_Y31_N8
sub1_sub8_1_anx23445z1_a_wirecell : cycloneii_lcell_comb
-- Equation(s):
-- sub1_sub8_1_anx23445z1_a_wirecell_combout = !sub1_sub8_1_anx23445z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sub1_sub8_1_anx23445z1,
	combout => sub1_sub8_1_anx23445z1_a_wirecell_combout);

-- Location: LCCOMB_X48_Y29_N16
r14_12_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r14_12_afeeder_combout = r12_9_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r12_9_a,
	combout => r14_12_afeeder_combout);

-- Location: LCCOMB_X48_Y29_N20
r14_9_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r14_9_afeeder_combout = r12_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r12_6_a,
	combout => r14_9_afeeder_combout);

-- Location: LCCOMB_X48_Y30_N22
r12_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r12_6_afeeder_combout = r11_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r11_6_a,
	combout => r12_6_afeeder_combout);

-- Location: LCCOMB_X48_Y29_N22
r14_8_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r14_8_afeeder_combout = r12_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r12_5_a,
	combout => r14_8_afeeder_combout);

-- Location: LCCOMB_X48_Y30_N0
r12_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r12_5_afeeder_combout = r11_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r11_5_a,
	combout => r12_5_afeeder_combout);

-- Location: LCCOMB_X47_Y29_N2
r14_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r14_5_afeeder_combout = r12_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r12_2_a,
	combout => r14_5_afeeder_combout);

-- Location: LCCOMB_X48_Y30_N6
r12_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r12_2_afeeder_combout = r11_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r11_2_a,
	combout => r12_2_afeeder_combout);

-- Location: LCCOMB_X48_Y29_N6
r14_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r14_3_afeeder_combout = r12_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r12_0_a,
	combout => r14_3_afeeder_combout);

-- Location: LCCOMB_X44_Y30_N24
r13_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r13_5_afeeder_combout = add3_add11_0_anx42958z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => add3_add11_0_anx42958z1,
	combout => r13_5_afeeder_combout);

-- Location: LCCOMB_X45_Y30_N0
r13_8_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r13_8_afeeder_combout = add3_add11_0_anx45949z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => add3_add11_0_anx45949z1,
	combout => r13_8_afeeder_combout);

-- Location: LCCOMB_X44_Y30_N16
r13_10_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r13_10_afeeder_combout = add3_add11_0_anx62798z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => add3_add11_0_anx62798z1,
	combout => r13_10_afeeder_combout);

-- Location: LCCOMB_X48_Y28_N24
r5_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_7_afeeder_combout = r2_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_7_a,
	combout => r5_7_afeeder_combout);

-- Location: LCCOMB_X48_Y28_N0
r5_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_3_afeeder_combout = r2_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r2_3_a,
	combout => r5_3_afeeder_combout);

-- Location: LCCOMB_X48_Y28_N2
r5_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_2_afeeder_combout = r2_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_2_a,
	combout => r5_2_afeeder_combout);

-- Location: LCCOMB_X48_Y28_N22
r5_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_0_afeeder_combout = r2_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r2_0_a,
	combout => r5_0_afeeder_combout);

-- Location: LCCOMB_X51_Y31_N26
a_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- a_3_afeeder_combout = b_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => b_3_a,
	combout => a_3_afeeder_combout);

-- Location: LCCOMB_X49_Y32_N30
i_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- i_3_afeeder_combout = d_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d_3_a,
	combout => i_3_afeeder_combout);

-- Location: LCCOMB_X49_Y32_N20
i_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- i_2_afeeder_combout = d_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d_2_a,
	combout => i_2_afeeder_combout);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_clock_ibuf : cycloneii_io
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
	padio => ww_i_clock,
	combout => i_clock_acombout);

-- Location: CLKCTRL_G3
i_clock_aclkctrl : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => i_clock_aclkctrl_INCLK_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => i_clock_aclkctrl_outclk);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_valid_ibuf : cycloneii_io
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
	padio => ww_i_valid,
	combout => i_valid_acombout);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_reset_ibuf : cycloneii_io
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
	padio => ww_i_reset,
	combout => i_reset_acombout);

-- Location: LCFF_X51_Y31_N9
reg_v_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_valid_acombout,
	sclr => i_reset_acombout,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => v_0_a);

-- Location: LCFF_X45_Y31_N31
reg_v_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => v_0_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => v_1_a);

-- Location: LCFF_X45_Y31_N5
reg_v_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => v_1_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => v_2_a);

-- Location: LCFF_X45_Y31_N19
reg_v_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => v_2_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => v_3_a);

-- Location: LCFF_X45_Y31_N25
reg_v_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => v_3_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => v_4_a);

-- Location: LCFF_X46_Y30_N23
reg_v_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => v_4_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => v_5_a);

-- Location: LCFF_X49_Y28_N19
reg_v_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => v_5_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => v_6_a);

-- Location: LCCOMB_X51_Y29_N2
modgen_counter_o_row_aix58250z52931 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_row_anx51271z1 = modgen_counter_o_row_anx58250z15 $ (VCC)
-- modgen_counter_o_row_anx58250z14 = CARRY(modgen_counter_o_row_anx58250z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_o_row_anx58250z15,
	datad => VCC,
	combout => modgen_counter_o_row_anx51271z1,
	cout => modgen_counter_o_row_anx58250z14);

-- Location: LCCOMB_X50_Y28_N12
modgen_counter_x_aix58250z52931 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_x_anx51271z1 = modgen_counter_x_anx58250z15 $ (VCC)
-- modgen_counter_x_anx58250z14 = CARRY(modgen_counter_x_anx58250z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx58250z15,
	datad => VCC,
	combout => modgen_counter_x_anx51271z1,
	cout => modgen_counter_x_anx58250z14);

-- Location: LCCOMB_X50_Y28_N14
modgen_counter_x_aix58250z52930 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_x_anx52268z1 = (modgen_counter_x_anx58250z13 & (!modgen_counter_x_anx58250z14)) # (!modgen_counter_x_anx58250z13 & ((modgen_counter_x_anx58250z14) # (GND)))
-- modgen_counter_x_anx58250z12 = CARRY((!modgen_counter_x_anx58250z14) # (!modgen_counter_x_anx58250z13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_x_anx58250z13,
	datad => VCC,
	cin => modgen_counter_x_anx58250z14,
	combout => modgen_counter_x_anx52268z1,
	cout => modgen_counter_x_anx58250z12);

-- Location: LCCOMB_X50_Y30_N14
modgen_counter_x_aix57253z52923 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_x_anx57253z3 = (i_reset_acombout) # (i_valid_acombout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_reset_acombout,
	datac => i_valid_acombout,
	combout => modgen_counter_x_anx57253z3);

-- Location: LCFF_X50_Y28_N15
modgen_counter_x_areg_q_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_x_anx52268z1,
	sclr => i_reset_acombout,
	ena => modgen_counter_x_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_x_anx58250z13);

-- Location: LCCOMB_X50_Y28_N16
modgen_counter_x_aix58250z52929 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_x_anx53265z1 = (modgen_counter_x_anx58250z11 & (modgen_counter_x_anx58250z12 $ (GND))) # (!modgen_counter_x_anx58250z11 & (!modgen_counter_x_anx58250z12 & VCC))
-- modgen_counter_x_anx58250z10 = CARRY((modgen_counter_x_anx58250z11 & !modgen_counter_x_anx58250z12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx58250z11,
	datad => VCC,
	cin => modgen_counter_x_anx58250z12,
	combout => modgen_counter_x_anx53265z1,
	cout => modgen_counter_x_anx58250z10);

-- Location: LCCOMB_X50_Y28_N18
modgen_counter_x_aix58250z52928 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_x_anx54262z1 = (modgen_counter_x_anx58250z9 & (!modgen_counter_x_anx58250z10)) # (!modgen_counter_x_anx58250z9 & ((modgen_counter_x_anx58250z10) # (GND)))
-- modgen_counter_x_anx58250z8 = CARRY((!modgen_counter_x_anx58250z10) # (!modgen_counter_x_anx58250z9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_x_anx58250z9,
	datad => VCC,
	cin => modgen_counter_x_anx58250z10,
	combout => modgen_counter_x_anx54262z1,
	cout => modgen_counter_x_anx58250z8);

-- Location: LCFF_X50_Y28_N19
modgen_counter_x_areg_q_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_x_anx54262z1,
	sclr => i_reset_acombout,
	ena => modgen_counter_x_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_x_anx58250z9);

-- Location: LCFF_X50_Y28_N17
modgen_counter_x_areg_q_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_x_anx53265z1,
	sclr => i_reset_acombout,
	ena => modgen_counter_x_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_x_anx58250z11);

-- Location: LCCOMB_X51_Y31_N10
ix6176z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx6176z2 = (modgen_counter_x_anx58250z15 & (modgen_counter_x_anx58250z9 & (modgen_counter_x_anx58250z11 & modgen_counter_x_anx58250z13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx58250z15,
	datab => modgen_counter_x_anx58250z9,
	datac => modgen_counter_x_anx58250z11,
	datad => modgen_counter_x_anx58250z13,
	combout => nx6176z2);

-- Location: LCCOMB_X51_Y29_N4
modgen_counter_o_row_aix58250z52930 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_row_anx52268z1 = (modgen_counter_o_row_anx58250z13 & (!modgen_counter_o_row_anx58250z14)) # (!modgen_counter_o_row_anx58250z13 & ((modgen_counter_o_row_anx58250z14) # (GND)))
-- modgen_counter_o_row_anx58250z12 = CARRY((!modgen_counter_o_row_anx58250z14) # (!modgen_counter_o_row_anx58250z13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_o_row_anx58250z13,
	datad => VCC,
	cin => modgen_counter_o_row_anx58250z14,
	combout => modgen_counter_o_row_anx52268z1,
	cout => modgen_counter_o_row_anx58250z12);

-- Location: LCCOMB_X51_Y29_N6
modgen_counter_o_row_aix58250z52929 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_row_anx53265z1 = (modgen_counter_o_row_anx58250z11 & (modgen_counter_o_row_anx58250z12 $ (GND))) # (!modgen_counter_o_row_anx58250z11 & (!modgen_counter_o_row_anx58250z12 & VCC))
-- modgen_counter_o_row_anx58250z10 = CARRY((modgen_counter_o_row_anx58250z11 & !modgen_counter_o_row_anx58250z12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_o_row_anx58250z11,
	datad => VCC,
	cin => modgen_counter_o_row_anx58250z12,
	combout => modgen_counter_o_row_anx53265z1,
	cout => modgen_counter_o_row_anx58250z10);

-- Location: LCCOMB_X51_Y29_N8
modgen_counter_o_row_aix58250z52928 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_row_anx54262z1 = (modgen_counter_o_row_anx58250z9 & (!modgen_counter_o_row_anx58250z10)) # (!modgen_counter_o_row_anx58250z9 & ((modgen_counter_o_row_anx58250z10) # (GND)))
-- modgen_counter_o_row_anx58250z8 = CARRY((!modgen_counter_o_row_anx58250z10) # (!modgen_counter_o_row_anx58250z9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_o_row_anx58250z9,
	datad => VCC,
	cin => modgen_counter_o_row_anx58250z10,
	combout => modgen_counter_o_row_anx54262z1,
	cout => modgen_counter_o_row_anx58250z8);

-- Location: LCCOMB_X51_Y28_N26
ix17322z52938 : cycloneii_lcell_comb
-- Equation(s):
-- nx17322z16 = (modgen_counter_x_anx58250z11 & modgen_counter_x_anx58250z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => modgen_counter_x_anx58250z11,
	datad => modgen_counter_x_anx58250z9,
	combout => nx17322z16);

-- Location: LCFF_X50_Y28_N13
modgen_counter_x_areg_q_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_x_anx51271z1,
	sclr => i_reset_acombout,
	ena => modgen_counter_x_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_x_anx58250z15);

-- Location: LCCOMB_X50_Y29_N12
ix17322z52928 : cycloneii_lcell_comb
-- Equation(s):
-- nx17322z6 = (!modgen_counter_x_anx58250z13) # (!modgen_counter_x_anx58250z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => modgen_counter_x_anx58250z15,
	datad => modgen_counter_x_anx58250z13,
	combout => nx17322z6);

-- Location: LCCOMB_X50_Y28_N20
modgen_counter_x_aix58250z52927 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_x_anx55259z1 = (modgen_counter_x_anx58250z7 & (modgen_counter_x_anx58250z8 $ (GND))) # (!modgen_counter_x_anx58250z7 & (!modgen_counter_x_anx58250z8 & VCC))
-- modgen_counter_x_anx58250z6 = CARRY((modgen_counter_x_anx58250z7 & !modgen_counter_x_anx58250z8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx58250z7,
	datad => VCC,
	cin => modgen_counter_x_anx58250z8,
	combout => modgen_counter_x_anx55259z1,
	cout => modgen_counter_x_anx58250z6);

-- Location: LCCOMB_X50_Y28_N22
modgen_counter_x_aix58250z52926 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_x_anx56256z1 = (modgen_counter_x_anx58250z5 & (!modgen_counter_x_anx58250z6)) # (!modgen_counter_x_anx58250z5 & ((modgen_counter_x_anx58250z6) # (GND)))
-- modgen_counter_x_anx58250z4 = CARRY((!modgen_counter_x_anx58250z6) # (!modgen_counter_x_anx58250z5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_x_anx58250z5,
	datad => VCC,
	cin => modgen_counter_x_anx58250z6,
	combout => modgen_counter_x_anx56256z1,
	cout => modgen_counter_x_anx58250z4);

-- Location: LCFF_X50_Y28_N23
modgen_counter_x_areg_q_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_x_anx56256z1,
	sclr => i_reset_acombout,
	ena => modgen_counter_x_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_x_anx58250z5);

-- Location: LCCOMB_X50_Y28_N24
modgen_counter_x_aix58250z52925 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_x_anx57253z1 = (modgen_counter_x_anx58250z3 & (modgen_counter_x_anx58250z4 $ (GND))) # (!modgen_counter_x_anx58250z3 & (!modgen_counter_x_anx58250z4 & VCC))
-- modgen_counter_x_anx58250z2 = CARRY((modgen_counter_x_anx58250z3 & !modgen_counter_x_anx58250z4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx58250z3,
	datad => VCC,
	cin => modgen_counter_x_anx58250z4,
	combout => modgen_counter_x_anx57253z1,
	cout => modgen_counter_x_anx58250z2);

-- Location: LCCOMB_X50_Y28_N26
modgen_counter_x_aix58250z52923 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_x_anx58250z1 = modgen_counter_x_anx58250z2 $ (modgen_counter_x_anx1041z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => modgen_counter_x_anx1041z1,
	cin => modgen_counter_x_anx58250z2,
	combout => modgen_counter_x_anx58250z1);

-- Location: LCFF_X50_Y28_N27
modgen_counter_x_areg_q_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_x_anx58250z1,
	sclr => i_reset_acombout,
	ena => modgen_counter_x_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_x_anx1041z1);

-- Location: LCFF_X50_Y28_N25
modgen_counter_x_areg_q_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_x_anx57253z1,
	sclr => i_reset_acombout,
	ena => modgen_counter_x_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_x_anx58250z3);

-- Location: LCCOMB_X50_Y29_N6
ix6176z52931 : cycloneii_lcell_comb
-- Equation(s):
-- nx6176z9 = (!modgen_counter_x_anx58250z3) # (!modgen_counter_x_anx1041z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => modgen_counter_x_anx1041z1,
	datad => modgen_counter_x_anx58250z3,
	combout => nx6176z9);

-- Location: LCCOMB_X51_Y28_N4
ix17322z52937 : cycloneii_lcell_comb
-- Equation(s):
-- nx17322z15 = (!nx6176z8 & (nx17322z16 & (!nx17322z6 & !nx6176z9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx6176z8,
	datab => nx17322z16,
	datac => nx17322z6,
	datad => nx6176z9,
	combout => nx17322z15);

-- Location: LCCOMB_X50_Y29_N14
modgen_counter_o_row_aix57253z52923 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_row_anx57253z3 = (nx17322z1 & ((nx17322z15) # (nx17322z9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx17322z1,
	datac => nx17322z15,
	datad => nx17322z9,
	combout => modgen_counter_o_row_anx57253z3);

-- Location: LCFF_X51_Y29_N9
modgen_counter_o_row_areg_q_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_o_row_anx54262z1,
	sclr => nx17322z9,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_row_anx58250z9);

-- Location: LCFF_X51_Y29_N7
modgen_counter_o_row_areg_q_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_o_row_anx53265z1,
	sclr => nx17322z9,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_row_anx58250z11);

-- Location: LCCOMB_X50_Y30_N8
ix6176z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx6176z4 = (modgen_counter_o_row_anx58250z9 & modgen_counter_o_row_anx58250z11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => modgen_counter_o_row_anx58250z9,
	datad => modgen_counter_o_row_anx58250z11,
	combout => nx6176z4);

-- Location: LCCOMB_X51_Y29_N10
modgen_counter_o_row_aix58250z52927 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_row_anx55259z1 = (modgen_counter_o_row_anx58250z7 & (modgen_counter_o_row_anx58250z8 $ (GND))) # (!modgen_counter_o_row_anx58250z7 & (!modgen_counter_o_row_anx58250z8 & VCC))
-- modgen_counter_o_row_anx58250z6 = CARRY((modgen_counter_o_row_anx58250z7 & !modgen_counter_o_row_anx58250z8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_o_row_anx58250z7,
	datad => VCC,
	cin => modgen_counter_o_row_anx58250z8,
	combout => modgen_counter_o_row_anx55259z1,
	cout => modgen_counter_o_row_anx58250z6);

-- Location: LCCOMB_X51_Y29_N12
modgen_counter_o_row_aix58250z52926 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_row_anx56256z1 = (modgen_counter_o_row_anx58250z5 & (!modgen_counter_o_row_anx58250z6)) # (!modgen_counter_o_row_anx58250z5 & ((modgen_counter_o_row_anx58250z6) # (GND)))
-- modgen_counter_o_row_anx58250z4 = CARRY((!modgen_counter_o_row_anx58250z6) # (!modgen_counter_o_row_anx58250z5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_o_row_anx58250z5,
	datad => VCC,
	cin => modgen_counter_o_row_anx58250z6,
	combout => modgen_counter_o_row_anx56256z1,
	cout => modgen_counter_o_row_anx58250z4);

-- Location: LCFF_X49_Y29_N19
modgen_counter_o_row_areg_q_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => modgen_counter_o_row_anx56256z1,
	sclr => nx17322z9,
	sload => VCC,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_row_anx58250z5);

-- Location: LCCOMB_X51_Y29_N14
modgen_counter_o_row_aix58250z52925 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_row_anx57253z1 = (modgen_counter_o_row_anx58250z3 & (modgen_counter_o_row_anx58250z4 $ (GND))) # (!modgen_counter_o_row_anx58250z3 & (!modgen_counter_o_row_anx58250z4 & VCC))
-- modgen_counter_o_row_anx58250z2 = CARRY((modgen_counter_o_row_anx58250z3 & !modgen_counter_o_row_anx58250z4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_o_row_anx58250z3,
	datad => VCC,
	cin => modgen_counter_o_row_anx58250z4,
	combout => modgen_counter_o_row_anx57253z1,
	cout => modgen_counter_o_row_anx58250z2);

-- Location: LCFF_X50_Y29_N25
modgen_counter_o_row_areg_q_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => modgen_counter_o_row_anx57253z1,
	sclr => nx17322z9,
	sload => VCC,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_row_anx58250z3);

-- Location: LCCOMB_X51_Y29_N16
modgen_counter_o_row_aix58250z52923 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_row_anx58250z1 = modgen_counter_o_row_anx1041z1 $ (modgen_counter_o_row_anx58250z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_o_row_anx1041z1,
	cin => modgen_counter_o_row_anx58250z2,
	combout => modgen_counter_o_row_anx58250z1);

-- Location: LCFF_X51_Y29_N17
modgen_counter_o_row_areg_q_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_o_row_anx58250z1,
	sclr => nx17322z9,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_row_anx1041z1);

-- Location: LCCOMB_X50_Y29_N24
ix6176z52928 : cycloneii_lcell_comb
-- Equation(s):
-- nx6176z6 = (modgen_counter_o_row_anx58250z3 & modgen_counter_o_row_anx1041z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => modgen_counter_o_row_anx58250z3,
	datad => modgen_counter_o_row_anx1041z1,
	combout => nx6176z6);

-- Location: LCCOMB_X49_Y28_N24
ix6176z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx6176z5 = (modgen_counter_o_row_anx58250z15 & modgen_counter_o_row_anx58250z13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => modgen_counter_o_row_anx58250z15,
	datad => modgen_counter_o_row_anx58250z13,
	combout => nx6176z5);

-- Location: LCCOMB_X51_Y28_N14
ix6176z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx6176z3 = (!nx6176z7 & (nx6176z4 & (nx6176z6 & nx6176z5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx6176z7,
	datab => nx6176z4,
	datac => nx6176z6,
	datad => nx6176z5,
	combout => nx6176z3);

-- Location: LCCOMB_X51_Y28_N0
ix6176z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx6176z1 = (!nx6176z8 & (nx6176z2 & (nx6176z3 & !nx6176z9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx6176z8,
	datab => nx6176z2,
	datac => nx6176z3,
	datad => nx6176z9,
	combout => nx6176z1);

-- Location: LCCOMB_X51_Y28_N24
ix6176z52932 : cycloneii_lcell_comb
-- Equation(s):
-- nx6176z10 = (i_reset_acombout) # ((i_valid_acombout & ((end_of_img) # (nx6176z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_reset_acombout,
	datab => i_valid_acombout,
	datac => end_of_img,
	datad => nx6176z1,
	combout => nx6176z10);

-- Location: LCFF_X51_Y28_N1
reg_end_of_img : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx6176z1,
	sclr => i_reset_acombout,
	ena => nx6176z10,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => end_of_img);

-- Location: LCCOMB_X50_Y29_N4
ix17322z52934 : cycloneii_lcell_comb
-- Equation(s):
-- nx17322z12 = (end_of_img & (((!modgen_counter_x_anx58250z15) # (!modgen_counter_x_anx58250z11)) # (!modgen_counter_x_anx58250z13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx58250z13,
	datab => modgen_counter_x_anx58250z11,
	datac => modgen_counter_x_anx58250z15,
	datad => end_of_img,
	combout => nx17322z12);

-- Location: LCFF_X50_Y28_N21
modgen_counter_x_areg_q_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_x_anx55259z1,
	sclr => i_reset_acombout,
	ena => modgen_counter_x_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_x_anx58250z7);

-- Location: LCCOMB_X51_Y29_N24
ix17322z52935 : cycloneii_lcell_comb
-- Equation(s):
-- nx17322z13 = ((!modgen_counter_x_anx58250z5) # (!modgen_counter_x_anx58250z7)) # (!modgen_counter_x_anx58250z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_x_anx58250z9,
	datac => modgen_counter_x_anx58250z7,
	datad => modgen_counter_x_anx58250z5,
	combout => nx17322z13);

-- Location: LCCOMB_X50_Y29_N16
ix17322z52933 : cycloneii_lcell_comb
-- Equation(s):
-- nx17322z11 = (nx17322z12) # ((end_of_img & ((nx6176z9) # (nx17322z13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx6176z9,
	datab => end_of_img,
	datac => nx17322z12,
	datad => nx17322z13,
	combout => nx17322z11);

-- Location: LCFF_X50_Y29_N19
modgen_counter_o_row_areg_q_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => modgen_counter_o_row_anx55259z1,
	sclr => nx17322z9,
	sload => VCC,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_row_anx58250z7);

-- Location: LCCOMB_X50_Y29_N18
ix17322z52936 : cycloneii_lcell_comb
-- Equation(s):
-- nx17322z14 = (nx6176z6 & (modgen_counter_o_row_anx58250z5 & (modgen_counter_o_row_anx58250z7 & end_of_img)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx6176z6,
	datab => modgen_counter_o_row_anx58250z5,
	datac => modgen_counter_o_row_anx58250z7,
	datad => end_of_img,
	combout => nx17322z14);

-- Location: LCCOMB_X50_Y29_N26
ix17322z52931 : cycloneii_lcell_comb
-- Equation(s):
-- nx17322z9 = (i_reset_acombout) # ((nx17322z11) # ((nx17322z10 & nx17322z14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx17322z10,
	datab => i_reset_acombout,
	datac => nx17322z11,
	datad => nx17322z14,
	combout => nx17322z9);

-- Location: LCFF_X51_Y29_N3
modgen_counter_o_row_areg_q_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_o_row_anx51271z1,
	sclr => nx17322z9,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_row_anx58250z15);

-- Location: LCFF_X51_Y29_N5
modgen_counter_o_row_areg_q_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_o_row_anx52268z1,
	sclr => nx17322z9,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_row_anx58250z13);

-- Location: LCCOMB_X49_Y28_N18
ix28105z52929 : cycloneii_lcell_comb
-- Equation(s):
-- nx28105z7 = (v_6_a & modgen_counter_o_row_anx58250z13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => v_6_a,
	datad => modgen_counter_o_row_anx58250z13,
	combout => nx28105z7);

-- Location: LCCOMB_X49_Y28_N20
ix28105z52928 : cycloneii_lcell_comb
-- Equation(s):
-- nx28105z6 = (modgen_counter_x_anx58250z15 & (modgen_counter_x_anx58250z13 & (v_6_a & modgen_counter_o_row_anx58250z13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx58250z15,
	datab => modgen_counter_x_anx58250z13,
	datac => v_6_a,
	datad => modgen_counter_o_row_anx58250z13,
	combout => nx28105z6);

-- Location: LCCOMB_X49_Y28_N14
ix28105z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx28105z5 = (nx28105z6) # ((nx28105z7 & ((modgen_counter_x_anx58250z11) # (modgen_counter_x_anx58250z9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx58250z11,
	datab => nx28105z7,
	datac => nx28105z6,
	datad => modgen_counter_x_anx58250z9,
	combout => nx28105z5);

-- Location: LCCOMB_X49_Y28_N10
ix28105z52930 : cycloneii_lcell_comb
-- Equation(s):
-- nx28105z8 = (nx28105z9) # ((nx28105z7 & ((modgen_counter_x_anx58250z3) # (modgen_counter_x_anx1041z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28105z9,
	datab => modgen_counter_x_anx58250z3,
	datac => modgen_counter_x_anx1041z1,
	datad => nx28105z7,
	combout => nx28105z8);

-- Location: LCCOMB_X49_Y28_N30
ix28105z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx28105z4 = (v_6_a & ((modgen_counter_o_row_anx58250z7) # ((modgen_counter_o_row_anx58250z5) # (modgen_counter_o_row_anx58250z9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_o_row_anx58250z7,
	datab => modgen_counter_o_row_anx58250z5,
	datac => v_6_a,
	datad => modgen_counter_o_row_anx58250z9,
	combout => nx28105z4);

-- Location: LCCOMB_X49_Y28_N26
ix28105z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx28105z3 = (nx28105z4) # ((v_6_a & ((modgen_counter_o_row_anx58250z11) # (nx6176z5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_6_a,
	datab => modgen_counter_o_row_anx58250z11,
	datac => nx6176z5,
	datad => nx28105z4,
	combout => nx28105z3);

-- Location: LCCOMB_X49_Y28_N8
ix28105z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx28105z1 = (nx28105z2) # ((nx28105z5) # ((nx28105z8) # (nx28105z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28105z2,
	datab => nx28105z5,
	datac => nx28105z8,
	datad => nx28105z3,
	combout => nx28105z1);

-- Location: LCFF_X49_Y28_N9
reg_out_o_valid_obuf : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx28105z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx51998z1);

-- Location: LCCOMB_X51_Y32_N22
ix38525z52923 : cycloneii_lcell_comb
-- Equation(s):
-- t_20n2s1_1_a = (!t_1_a & t_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => t_1_a,
	datad => t_0_a,
	combout => t_20n2s1_1_a);

-- Location: LCCOMB_X50_Y28_N2
ix6176z52930 : cycloneii_lcell_comb
-- Equation(s):
-- nx6176z8 = (!modgen_counter_x_anx58250z5) # (!modgen_counter_x_anx58250z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => modgen_counter_x_anx58250z7,
	datad => modgen_counter_x_anx58250z5,
	combout => nx6176z8);

-- Location: LCCOMB_X49_Y28_N4
ix38525z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx38525z2 = (modgen_counter_x_anx1041z1 & (i_valid_acombout & (modgen_counter_x_anx58250z3 & !nx6176z8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx1041z1,
	datab => i_valid_acombout,
	datac => modgen_counter_x_anx58250z3,
	datad => nx6176z8,
	combout => nx38525z2);

-- Location: LCCOMB_X49_Y28_N22
ix38525z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx38525z1 = (i_reset_acombout) # ((nx38525z2 & (nx17322z16 & !nx17322z6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_reset_acombout,
	datab => nx38525z2,
	datac => nx17322z16,
	datad => nx17322z6,
	combout => nx38525z1);

-- Location: LCFF_X51_Y32_N23
reg_t_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => t_20n2s1_1_a,
	sclr => i_reset_acombout,
	ena => nx38525z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_1_a);

-- Location: LCCOMB_X51_Y32_N28
ix39522z52923 : cycloneii_lcell_comb
-- Equation(s):
-- t_20n2s1_0_a = (!t_0_a & !t_1_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => t_0_a,
	datad => t_1_a,
	combout => t_20n2s1_0_a);

-- Location: LCFF_X51_Y32_N29
reg_t_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => t_20n2s1_0_a,
	sclr => i_reset_acombout,
	ena => nx38525z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t_0_a);

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
ix19087z43925 : cycloneii_io
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
	padio => ww_i_pixel(0),
	combout => i_pixel_acombout(0));

-- Location: LCCOMB_X50_Y30_N20
ix19087z52934 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z4 = ((!modgen_counter_o_row_anx58250z3) # (!modgen_counter_o_row_anx58250z5)) # (!modgen_counter_o_row_anx58250z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_o_row_anx58250z7,
	datab => modgen_counter_o_row_anx58250z5,
	datac => modgen_counter_o_row_anx58250z3,
	combout => nx19087z4);

-- Location: LCCOMB_X50_Y28_N4
ix19087z52951 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z17 = ((!modgen_counter_o_row_anx58250z15) # (!modgen_counter_x_anx1041z1)) # (!modgen_counter_x_anx58250z3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx58250z3,
	datab => modgen_counter_x_anx1041z1,
	datad => modgen_counter_o_row_anx58250z15,
	combout => nx19087z17);

-- Location: LCCOMB_X50_Y29_N0
ix19087z52962 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z25 = (!modgen_counter_x_anx58250z11) # (!modgen_counter_x_anx58250z13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx58250z13,
	datad => modgen_counter_x_anx58250z11,
	combout => nx19087z25);

-- Location: LCCOMB_X50_Y29_N2
ix19087z52961 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z24 = (modgen_counter_x_anx58250z15 & (((nx19087z25) # (!modgen_counter_o_row_anx1041z1)) # (!i_valid_acombout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_valid_acombout,
	datab => modgen_counter_o_row_anx1041z1,
	datac => modgen_counter_x_anx58250z15,
	datad => nx19087z25,
	combout => nx19087z24);

-- Location: LCCOMB_X50_Y29_N28
ix19087z52960 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z23 = (nx19087z24) # ((modgen_counter_x_anx58250z15 & ((nx17322z13) # (nx19087z17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx58250z15,
	datab => nx17322z13,
	datac => nx19087z17,
	datad => nx19087z24,
	combout => nx19087z23);

-- Location: LCCOMB_X50_Y29_N22
ix19087z52959 : cycloneii_lcell_comb
-- Equation(s):
-- addr_x_0_a = (nx19087z23) # ((modgen_counter_x_anx58250z15 & ((nx19087z5) # (nx19087z4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx19087z5,
	datab => nx19087z4,
	datac => modgen_counter_x_anx58250z15,
	datad => nx19087z23,
	combout => addr_x_0_a);

-- Location: LCCOMB_X50_Y30_N6
ix19087z52935 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z5 = ((!modgen_counter_o_row_anx58250z11) # (!modgen_counter_o_row_anx58250z13)) # (!modgen_counter_o_row_anx58250z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_o_row_anx58250z9,
	datac => modgen_counter_o_row_anx58250z13,
	datad => modgen_counter_o_row_anx58250z11,
	combout => nx19087z5);

-- Location: LCCOMB_X51_Y29_N26
ix19087z52940 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z9 = (!modgen_counter_x_anx1041z1) # (!modgen_counter_o_row_anx58250z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_o_row_anx58250z15,
	datad => modgen_counter_x_anx1041z1,
	combout => nx19087z9);

-- Location: LCCOMB_X51_Y29_N28
ix19087z52958 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z22 = (modgen_counter_x_anx58250z13 & (((nx17322z13) # (nx19087z9)) # (!modgen_counter_x_anx58250z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx58250z13,
	datab => modgen_counter_x_anx58250z3,
	datac => nx17322z13,
	datad => nx19087z9,
	combout => nx19087z22);

-- Location: LCCOMB_X51_Y31_N6
ix19087z52957 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z21 = ((!modgen_counter_x_anx58250z11) # (!i_valid_acombout)) # (!modgen_counter_x_anx58250z15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx58250z15,
	datac => i_valid_acombout,
	datad => modgen_counter_x_anx58250z11,
	combout => nx19087z21);

-- Location: LCCOMB_X51_Y29_N30
ix19087z52956 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z20 = (nx19087z22) # ((modgen_counter_x_anx58250z13 & ((nx19087z21) # (!modgen_counter_o_row_anx1041z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_o_row_anx1041z1,
	datab => nx19087z22,
	datac => nx19087z21,
	datad => modgen_counter_x_anx58250z13,
	combout => nx19087z20);

-- Location: LCCOMB_X51_Y29_N0
ix19087z52955 : cycloneii_lcell_comb
-- Equation(s):
-- addr_x_1_a = (nx19087z20) # ((modgen_counter_x_anx58250z13 & ((nx19087z5) # (nx19087z4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx58250z13,
	datab => nx19087z5,
	datac => nx19087z4,
	datad => nx19087z20,
	combout => addr_x_1_a);

-- Location: LCCOMB_X51_Y28_N28
ix19087z52938 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z7 = ((!modgen_counter_x_anx58250z13) # (!modgen_counter_x_anx58250z15)) # (!i_valid_acombout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_valid_acombout,
	datac => modgen_counter_x_anx58250z15,
	datad => modgen_counter_x_anx58250z13,
	combout => nx19087z7);

-- Location: LCCOMB_X51_Y29_N18
ix19087z52954 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z19 = (modgen_counter_x_anx58250z11 & (((nx19087z9) # (nx17322z13)) # (!modgen_counter_x_anx58250z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx58250z3,
	datab => nx19087z9,
	datac => nx17322z13,
	datad => modgen_counter_x_anx58250z11,
	combout => nx19087z19);

-- Location: LCCOMB_X51_Y29_N20
ix19087z52953 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z18 = (nx19087z19) # ((modgen_counter_x_anx58250z11 & ((nx19087z7) # (!modgen_counter_o_row_anx1041z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_o_row_anx1041z1,
	datab => modgen_counter_x_anx58250z11,
	datac => nx19087z7,
	datad => nx19087z19,
	combout => nx19087z18);

-- Location: LCCOMB_X51_Y29_N22
ix19087z52952 : cycloneii_lcell_comb
-- Equation(s):
-- addr_x_2_a = (nx19087z18) # ((modgen_counter_x_anx58250z11 & ((nx19087z4) # (nx19087z5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx19087z4,
	datab => modgen_counter_x_anx58250z11,
	datac => nx19087z18,
	datad => nx19087z5,
	combout => addr_x_2_a);

-- Location: LCCOMB_X50_Y28_N30
ix19087z52950 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z16 = (modgen_counter_x_anx58250z9 & (((nx19087z17) # (nx6176z8)) # (!modgen_counter_x_anx58250z11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx58250z11,
	datab => modgen_counter_x_anx58250z9,
	datac => nx19087z17,
	datad => nx6176z8,
	combout => nx19087z16);

-- Location: LCCOMB_X50_Y28_N0
ix19087z52949 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z15 = (nx19087z16) # ((modgen_counter_x_anx58250z9 & ((nx19087z7) # (!modgen_counter_o_row_anx1041z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx19087z7,
	datab => modgen_counter_x_anx58250z9,
	datac => modgen_counter_o_row_anx1041z1,
	datad => nx19087z16,
	combout => nx19087z15);

-- Location: LCCOMB_X50_Y28_N10
ix19087z52948 : cycloneii_lcell_comb
-- Equation(s):
-- addr_x_3_a = (nx19087z15) # ((modgen_counter_x_anx58250z9 & ((nx19087z4) # (nx19087z5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx19087z4,
	datab => modgen_counter_x_anx58250z9,
	datac => nx19087z5,
	datad => nx19087z15,
	combout => addr_x_3_a);

-- Location: LCCOMB_X51_Y28_N8
ix19087z52946 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z13 = (nx19087z14) # ((modgen_counter_x_anx58250z7 & ((nx19087z9) # (!modgen_counter_x_anx58250z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx19087z14,
	datab => modgen_counter_x_anx58250z3,
	datac => modgen_counter_x_anx58250z7,
	datad => nx19087z9,
	combout => nx19087z13);

-- Location: LCCOMB_X51_Y28_N10
ix19087z52945 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z12 = (nx19087z13) # ((modgen_counter_x_anx58250z7 & ((nx19087z7) # (!modgen_counter_o_row_anx1041z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx58250z7,
	datab => modgen_counter_o_row_anx1041z1,
	datac => nx19087z13,
	datad => nx19087z7,
	combout => nx19087z12);

-- Location: LCCOMB_X51_Y28_N12
ix19087z52944 : cycloneii_lcell_comb
-- Equation(s):
-- addr_x_4_a = (nx19087z12) # ((modgen_counter_x_anx58250z7 & ((nx19087z4) # (nx19087z5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx58250z7,
	datab => nx19087z4,
	datac => nx19087z5,
	datad => nx19087z12,
	combout => addr_x_4_a);

-- Location: LCCOMB_X51_Y28_N22
ix19087z52943 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z11 = (modgen_counter_x_anx58250z5 & ((nx17322z5) # ((nx19087z9) # (!modgen_counter_x_anx58250z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx17322z5,
	datab => modgen_counter_x_anx58250z3,
	datac => modgen_counter_x_anx58250z5,
	datad => nx19087z9,
	combout => nx19087z11);

-- Location: LCCOMB_X51_Y28_N16
ix19087z52942 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z10 = (nx19087z11) # ((modgen_counter_x_anx58250z5 & ((nx19087z7) # (!modgen_counter_o_row_anx1041z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx58250z5,
	datab => nx19087z7,
	datac => modgen_counter_o_row_anx1041z1,
	datad => nx19087z11,
	combout => nx19087z10);

-- Location: LCCOMB_X51_Y28_N18
ix19087z52941 : cycloneii_lcell_comb
-- Equation(s):
-- addr_x_5_a = (nx19087z10) # ((modgen_counter_x_anx58250z5 & ((nx19087z5) # (nx19087z4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx19087z5,
	datab => modgen_counter_x_anx58250z5,
	datac => nx19087z10,
	datad => nx19087z4,
	combout => addr_x_5_a);

-- Location: LCCOMB_X50_Y28_N8
ix17322z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx17322z5 = ((!modgen_counter_x_anx58250z9) # (!modgen_counter_x_anx58250z7)) # (!modgen_counter_x_anx58250z11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx58250z11,
	datac => modgen_counter_x_anx58250z7,
	datad => modgen_counter_x_anx58250z9,
	combout => nx17322z5);

-- Location: LCCOMB_X50_Y28_N28
ix19087z52939 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z8 = (modgen_counter_x_anx58250z3 & (((nx17322z5) # (nx19087z9)) # (!modgen_counter_x_anx58250z5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx58250z3,
	datab => modgen_counter_x_anx58250z5,
	datac => nx17322z5,
	datad => nx19087z9,
	combout => nx19087z8);

-- Location: LCCOMB_X50_Y28_N6
ix19087z52937 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z6 = (nx19087z8) # ((modgen_counter_x_anx58250z3 & ((nx19087z7) # (!modgen_counter_o_row_anx1041z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx58250z3,
	datab => nx19087z7,
	datac => modgen_counter_o_row_anx1041z1,
	datad => nx19087z8,
	combout => nx19087z6);

-- Location: LCCOMB_X51_Y28_N20
ix19087z52936 : cycloneii_lcell_comb
-- Equation(s):
-- addr_x_6_a = (nx19087z6) # ((modgen_counter_x_anx58250z3 & ((nx19087z4) # (nx19087z5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx19087z4,
	datab => modgen_counter_x_anx58250z3,
	datac => nx19087z6,
	datad => nx19087z5,
	combout => addr_x_6_a);

-- Location: LCCOMB_X49_Y28_N0
ix19087z52932 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z2 = (modgen_counter_x_anx1041z1 & (((!modgen_counter_o_row_anx58250z15) # (!modgen_counter_x_anx58250z5)) # (!modgen_counter_x_anx58250z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx58250z3,
	datab => modgen_counter_x_anx58250z5,
	datac => modgen_counter_x_anx1041z1,
	datad => modgen_counter_o_row_anx58250z15,
	combout => nx19087z2);

-- Location: LCCOMB_X49_Y28_N2
ix19087z52933 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z3 = (modgen_counter_x_anx1041z1 & (((nx17322z6) # (!modgen_counter_o_row_anx1041z1)) # (!i_valid_acombout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx1041z1,
	datab => i_valid_acombout,
	datac => modgen_counter_o_row_anx1041z1,
	datad => nx17322z6,
	combout => nx19087z3);

-- Location: LCCOMB_X49_Y28_N28
ix19087z52931 : cycloneii_lcell_comb
-- Equation(s):
-- nx19087z1 = (nx19087z2) # ((nx19087z3) # ((modgen_counter_x_anx1041z1 & nx17322z5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_x_anx1041z1,
	datab => nx19087z2,
	datac => nx17322z5,
	datad => nx19087z3,
	combout => nx19087z1);

-- Location: LCCOMB_X49_Y28_N6
ix19087z52930 : cycloneii_lcell_comb
-- Equation(s):
-- addr_x_7_a = (nx19087z1) # ((modgen_counter_x_anx1041z1 & ((nx19087z4) # (nx19087z5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx19087z4,
	datab => nx19087z5,
	datac => modgen_counter_x_anx1041z1,
	datad => nx19087z1,
	combout => addr_x_7_a);

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
ix19087z43924 : cycloneii_io
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
	padio => ww_i_pixel(1),
	combout => i_pixel_acombout(1));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
ix19087z43923 : cycloneii_io
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
	padio => ww_i_pixel(2),
	combout => i_pixel_acombout(2));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
ix19087z43922 : cycloneii_io
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
	padio => ww_i_pixel(3),
	combout => i_pixel_acombout(3));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
ix19087z43921 : cycloneii_io
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
	padio => ww_i_pixel(4),
	combout => i_pixel_acombout(4));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
ix19087z43920 : cycloneii_io
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
	padio => ww_i_pixel(5),
	combout => i_pixel_acombout(5));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
ix19087z43919 : cycloneii_io
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
	padio => ww_i_pixel(6),
	combout => i_pixel_acombout(6));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
ix37378z43919 : cycloneii_io
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
	padio => ww_i_pixel(7),
	combout => i_pixel_acombout(7));

-- Location: M4K_X52_Y29
m2_mem_aix64056z29482_aauto_generated_aram_block1a0 : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_1:m2_mem|altsyncram:ix64056z29482|altsyncram_jpg2:auto_generated|ALTSYNCRAM",
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
	portawe => wren_m2,
	clk0 => i_clock_aclkctrl_outclk,
	portadatain => m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => m2_mem_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

-- Location: LCCOMB_X51_Y30_N18
ix20492z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx20492z1 = (t_0_a & (m3_mem_aix64056z29483_aauto_generated_aq_a(7))) # (!t_0_a & ((m2_mem_aix64056z29482_aauto_generated_aq_a(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m3_mem_aix64056z29483_aauto_generated_aq_a(7),
	datab => t_0_a,
	datad => m2_mem_aix64056z29482_aauto_generated_aq_a(7),
	combout => nx20492z1);

-- Location: M4K_X52_Y28
m1_mem_aix64056z29481_aauto_generated_aram_block1a0 : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_0:m1_mem|altsyncram:ix64056z29481|altsyncram_jpg2:auto_generated|ALTSYNCRAM",
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
	portawe => wren_m1,
	clk0 => i_clock_aclkctrl_outclk,
	portadatain => m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => m1_mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

-- Location: LCCOMB_X51_Y30_N30
ix20492z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx20492z2 = (i_valid_acombout & ((!t_0_a) # (!t_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_valid_acombout,
	datac => t_1_a,
	datad => t_0_a,
	combout => nx20492z2);

-- Location: LCFF_X51_Y30_N19
reg_c_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx20492z1,
	sdata => m1_mem_aix64056z29481_aauto_generated_aq_a(7),
	sload => t_1_a,
	ena => nx20492z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c_7_a);

-- Location: LCCOMB_X50_Y30_N18
b_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- b_7_afeeder_combout = c_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => c_7_a,
	combout => b_7_afeeder_combout);

-- Location: LCFF_X50_Y30_N19
reg_b_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => b_7_afeeder_combout,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_7_a);

-- Location: LCCOMB_X50_Y30_N22
a_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- a_7_afeeder_combout = b_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => b_7_a,
	combout => a_7_afeeder_combout);

-- Location: LCFF_X50_Y30_N23
reg_a_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => a_7_afeeder_combout,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_7_a);

-- Location: LCCOMB_X50_Y30_N28
e_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- e_7_afeeder_combout = i_pixel_acombout(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => i_pixel_acombout(7),
	combout => e_7_afeeder_combout);

-- Location: LCFF_X50_Y30_N29
reg_in_i_pixel_ibuf_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => e_7_afeeder_combout,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e_7_a);

-- Location: LCFF_X47_Y31_N7
reg_f_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => e_7_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_7_a);

-- Location: LCCOMB_X47_Y31_N6
ix41318z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx41318z2 = (v_1_a) # ((v_2_a & ((f_7_a))) # (!v_2_a & (a_7_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => a_7_a,
	datac => f_7_a,
	datad => v_2_a,
	combout => nx41318z2);

-- Location: LCCOMB_X48_Y31_N6
ix41318z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx41318z1 = (nx41318z2 & ((e_7_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => nx41318z2,
	datad => e_7_a,
	combout => nx41318z1);

-- Location: LCCOMB_X46_Y31_N18
ix32637z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx32637z3 = (v_3_a) # ((v_2_a) # ((v_1_a) # (v_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_3_a,
	datab => v_2_a,
	datac => v_1_a,
	datad => v_0_a,
	combout => nx32637z3);

-- Location: LCFF_X48_Y31_N7
reg_r3_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx41318z1,
	sdata => c_7_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_7_a);

-- Location: LCCOMB_X51_Y30_N28
ix35628z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx35628z1 = (t_0_a & ((m1_mem_aix64056z29481_aauto_generated_aq_a(6)))) # (!t_0_a & (m3_mem_aix64056z29483_aauto_generated_aq_a(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m3_mem_aix64056z29483_aauto_generated_aq_a(6),
	datab => t_0_a,
	datad => m1_mem_aix64056z29481_aauto_generated_aq_a(6),
	combout => nx35628z1);

-- Location: LCFF_X51_Y30_N29
reg_d_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx35628z1,
	sdata => m2_mem_aix64056z29482_aauto_generated_aq_a(6),
	sload => t_1_a,
	ena => nx20492z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_6_a);

-- Location: LCCOMB_X48_Y32_N0
ix50734z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx50734z1 = (nx50734z2 & ((d_6_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx50734z2,
	datab => v_1_a,
	datad => d_6_a,
	combout => nx50734z1);

-- Location: LCCOMB_X51_Y30_N6
ix21489z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx21489z1 = (t_0_a & (m3_mem_aix64056z29483_aauto_generated_aq_a(6))) # (!t_0_a & ((m2_mem_aix64056z29482_aauto_generated_aq_a(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m3_mem_aix64056z29483_aauto_generated_aq_a(6),
	datab => t_0_a,
	datad => m2_mem_aix64056z29482_aauto_generated_aq_a(6),
	combout => nx21489z1);

-- Location: LCFF_X51_Y30_N7
reg_c_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx21489z1,
	sdata => m1_mem_aix64056z29481_aauto_generated_aq_a(6),
	sload => t_1_a,
	ena => nx20492z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c_6_a);

-- Location: LCCOMB_X51_Y31_N28
b_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- b_6_afeeder_combout = c_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => c_6_a,
	combout => b_6_afeeder_combout);

-- Location: LCFF_X51_Y31_N29
reg_b_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => b_6_afeeder_combout,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_6_a);

-- Location: LCFF_X48_Y32_N1
reg_r4_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx50734z1,
	sdata => b_6_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4_6_a);

-- Location: LCCOMB_X51_Y30_N24
ix34631z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx34631z1 = (t_0_a & (m1_mem_aix64056z29481_aauto_generated_aq_a(5))) # (!t_0_a & ((m3_mem_aix64056z29483_aauto_generated_aq_a(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t_0_a,
	datab => m1_mem_aix64056z29481_aauto_generated_aq_a(5),
	datad => m3_mem_aix64056z29483_aauto_generated_aq_a(5),
	combout => nx34631z1);

-- Location: LCFF_X51_Y30_N25
reg_d_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx34631z1,
	sdata => m2_mem_aix64056z29482_aauto_generated_aq_a(5),
	sload => t_1_a,
	ena => nx20492z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_5_a);

-- Location: LCCOMB_X49_Y31_N4
ix51731z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx51731z1 = (nx51731z2 & ((d_5_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51731z2,
	datab => d_5_a,
	datad => v_1_a,
	combout => nx51731z1);

-- Location: LCCOMB_X51_Y30_N2
ix22486z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx22486z1 = (t_0_a & (m3_mem_aix64056z29483_aauto_generated_aq_a(5))) # (!t_0_a & ((m2_mem_aix64056z29482_aauto_generated_aq_a(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t_0_a,
	datab => m3_mem_aix64056z29483_aauto_generated_aq_a(5),
	datad => m2_mem_aix64056z29482_aauto_generated_aq_a(5),
	combout => nx22486z1);

-- Location: LCFF_X51_Y30_N3
reg_c_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx22486z1,
	sdata => m1_mem_aix64056z29481_aauto_generated_aq_a(5),
	sload => t_1_a,
	ena => nx20492z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c_5_a);

-- Location: LCCOMB_X51_Y31_N18
b_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- b_5_afeeder_combout = c_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => c_5_a,
	combout => b_5_afeeder_combout);

-- Location: LCFF_X51_Y31_N19
reg_b_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => b_5_afeeder_combout,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_5_a);

-- Location: LCFF_X49_Y31_N5
reg_r4_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx51731z1,
	sdata => b_5_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4_5_a);

-- Location: LCCOMB_X50_Y31_N26
e_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- e_4_afeeder_combout = i_pixel_acombout(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => i_pixel_acombout(4),
	combout => e_4_afeeder_combout);

-- Location: LCFF_X50_Y31_N27
reg_in_i_pixel_ibuf_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => e_4_afeeder_combout,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e_4_a);

-- Location: LCFF_X50_Y31_N9
reg_f_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => e_4_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_4_a);

-- Location: LCCOMB_X51_Y30_N14
ix23483z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx23483z1 = (t_0_a & (m3_mem_aix64056z29483_aauto_generated_aq_a(4))) # (!t_0_a & ((m2_mem_aix64056z29482_aauto_generated_aq_a(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m3_mem_aix64056z29483_aauto_generated_aq_a(4),
	datab => t_0_a,
	datad => m2_mem_aix64056z29482_aauto_generated_aq_a(4),
	combout => nx23483z1);

-- Location: LCFF_X51_Y30_N15
reg_c_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx23483z1,
	sdata => m1_mem_aix64056z29481_aauto_generated_aq_a(4),
	sload => t_1_a,
	ena => nx20492z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c_4_a);

-- Location: LCCOMB_X51_Y31_N22
b_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- b_4_afeeder_combout = c_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => c_4_a,
	combout => b_4_afeeder_combout);

-- Location: LCFF_X51_Y31_N23
reg_b_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => b_4_afeeder_combout,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_4_a);

-- Location: LCCOMB_X51_Y31_N24
a_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- a_4_afeeder_combout = b_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => b_4_a,
	combout => a_4_afeeder_combout);

-- Location: LCFF_X51_Y31_N25
reg_a_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => a_4_afeeder_combout,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_4_a);

-- Location: LCCOMB_X50_Y31_N8
ix44309z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx44309z2 = (v_1_a) # ((v_2_a & (f_4_a)) # (!v_2_a & ((a_4_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_2_a,
	datab => v_1_a,
	datac => f_4_a,
	datad => a_4_a,
	combout => nx44309z2);

-- Location: LCCOMB_X49_Y31_N18
ix44309z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx44309z1 = (nx44309z2 & ((e_4_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => nx44309z2,
	datad => e_4_a,
	combout => nx44309z1);

-- Location: LCFF_X49_Y31_N19
reg_r3_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx44309z1,
	sdata => c_4_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_4_a);

-- Location: LCFF_X49_Y32_N7
reg_in_i_pixel_ibuf_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(3),
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e_3_a);

-- Location: LCCOMB_X48_Y32_N12
ix45306z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx45306z1 = (nx45306z2 & ((e_3_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx45306z2,
	datab => v_1_a,
	datad => e_3_a,
	combout => nx45306z1);

-- Location: LCCOMB_X51_Y30_N10
ix24480z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx24480z1 = (t_0_a & (m3_mem_aix64056z29483_aauto_generated_aq_a(3))) # (!t_0_a & ((m2_mem_aix64056z29482_aauto_generated_aq_a(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m3_mem_aix64056z29483_aauto_generated_aq_a(3),
	datab => m2_mem_aix64056z29482_aauto_generated_aq_a(3),
	datad => t_0_a,
	combout => nx24480z1);

-- Location: LCFF_X51_Y30_N11
reg_c_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx24480z1,
	sdata => m1_mem_aix64056z29481_aauto_generated_aq_a(3),
	sload => t_1_a,
	ena => nx20492z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c_3_a);

-- Location: LCFF_X48_Y32_N13
reg_r3_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx45306z1,
	sdata => c_3_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_3_a);

-- Location: LCCOMB_X49_Y32_N12
e_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- e_2_afeeder_combout = i_pixel_acombout(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => i_pixel_acombout(2),
	combout => e_2_afeeder_combout);

-- Location: LCFF_X49_Y32_N13
reg_in_i_pixel_ibuf_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => e_2_afeeder_combout,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e_2_a);

-- Location: LCCOMB_X49_Y30_N0
ix46303z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx46303z1 = (nx46303z2 & ((e_2_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx46303z2,
	datab => v_1_a,
	datad => e_2_a,
	combout => nx46303z1);

-- Location: LCCOMB_X51_Y30_N22
ix25477z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx25477z1 = (t_0_a & (m3_mem_aix64056z29483_aauto_generated_aq_a(2))) # (!t_0_a & ((m2_mem_aix64056z29482_aauto_generated_aq_a(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m3_mem_aix64056z29483_aauto_generated_aq_a(2),
	datab => t_0_a,
	datad => m2_mem_aix64056z29482_aauto_generated_aq_a(2),
	combout => nx25477z1);

-- Location: LCFF_X51_Y30_N23
reg_c_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx25477z1,
	sdata => m1_mem_aix64056z29481_aauto_generated_aq_a(2),
	sload => t_1_a,
	ena => nx20492z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c_2_a);

-- Location: LCFF_X49_Y30_N1
reg_r3_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx46303z1,
	sdata => c_2_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_2_a);

-- Location: LCFF_X49_Y32_N3
reg_in_i_pixel_ibuf_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(1),
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e_1_a);

-- Location: LCFF_X49_Y32_N5
reg_f_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => e_1_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_1_a);

-- Location: LCCOMB_X51_Y30_N26
ix26474z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx26474z1 = (t_0_a & (m3_mem_aix64056z29483_aauto_generated_aq_a(1))) # (!t_0_a & ((m2_mem_aix64056z29482_aauto_generated_aq_a(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t_0_a,
	datab => m3_mem_aix64056z29483_aauto_generated_aq_a(1),
	datad => m2_mem_aix64056z29482_aauto_generated_aq_a(1),
	combout => nx26474z1);

-- Location: LCFF_X51_Y30_N27
reg_c_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx26474z1,
	sdata => m1_mem_aix64056z29481_aauto_generated_aq_a(1),
	sload => t_1_a,
	ena => nx20492z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c_1_a);

-- Location: LCCOMB_X51_Y31_N0
b_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- b_1_afeeder_combout = c_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => c_1_a,
	combout => b_1_afeeder_combout);

-- Location: LCFF_X51_Y31_N1
reg_b_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => b_1_afeeder_combout,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_1_a);

-- Location: LCCOMB_X51_Y31_N2
a_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- a_1_afeeder_combout = b_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => b_1_a,
	combout => a_1_afeeder_combout);

-- Location: LCFF_X51_Y31_N3
reg_a_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => a_1_afeeder_combout,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_1_a);

-- Location: LCCOMB_X49_Y32_N4
ix47300z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx47300z2 = (v_1_a) # ((v_2_a & (f_1_a)) # (!v_2_a & ((a_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_2_a,
	datab => v_1_a,
	datac => f_1_a,
	datad => a_1_a,
	combout => nx47300z2);

-- Location: LCCOMB_X49_Y30_N4
ix47300z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx47300z1 = (nx47300z2 & ((e_1_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => e_1_a,
	datab => v_1_a,
	datad => nx47300z2,
	combout => nx47300z1);

-- Location: LCFF_X49_Y30_N5
reg_r3_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx47300z1,
	sdata => c_1_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_1_a);

-- Location: LCFF_X50_Y31_N5
reg_in_i_pixel_ibuf_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(0),
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e_0_a);

-- Location: LCFF_X50_Y31_N17
reg_f_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => e_0_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_0_a);

-- Location: LCFF_X50_Y31_N31
reg_g_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => f_0_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => g_0_a);

-- Location: LCCOMB_X50_Y30_N0
ix29646z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx29646z3 = (t_0_a & ((m1_mem_aix64056z29481_aauto_generated_aq_a(0)))) # (!t_0_a & (m3_mem_aix64056z29483_aauto_generated_aq_a(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t_0_a,
	datab => m3_mem_aix64056z29483_aauto_generated_aq_a(0),
	datad => m1_mem_aix64056z29481_aauto_generated_aq_a(0),
	combout => nx29646z3);

-- Location: LCFF_X50_Y30_N1
reg_d_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx29646z3,
	sdata => m2_mem_aix64056z29482_aauto_generated_aq_a(0),
	sload => t_1_a,
	ena => nx20492z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_0_a);

-- Location: LCCOMB_X50_Y30_N26
i_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- i_0_afeeder_combout = d_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d_0_a,
	combout => i_0_afeeder_combout);

-- Location: LCFF_X50_Y30_N27
reg_i_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => i_0_afeeder_combout,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_0_a);

-- Location: LCFF_X50_Y31_N13
reg_h_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_0_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h_0_a);

-- Location: LCCOMB_X50_Y31_N12
ix56716z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx56716z2 = (v_1_a) # ((v_2_a & (g_0_a)) # (!v_2_a & ((h_0_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_2_a,
	datab => g_0_a,
	datac => h_0_a,
	datad => v_1_a,
	combout => nx56716z2);

-- Location: LCCOMB_X49_Y30_N8
ix56716z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx56716z1 = (nx56716z2 & ((d_0_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_0_a,
	datab => v_1_a,
	datad => nx56716z2,
	combout => nx56716z1);

-- Location: LCCOMB_X51_Y30_N12
ix27471z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx27471z1 = (t_0_a & (m3_mem_aix64056z29483_aauto_generated_aq_a(0))) # (!t_0_a & ((m2_mem_aix64056z29482_aauto_generated_aq_a(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m3_mem_aix64056z29483_aauto_generated_aq_a(0),
	datab => t_0_a,
	datad => m2_mem_aix64056z29482_aauto_generated_aq_a(0),
	combout => nx27471z1);

-- Location: LCFF_X51_Y30_N13
reg_c_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx27471z1,
	sdata => m1_mem_aix64056z29481_aauto_generated_aq_a(0),
	sload => t_1_a,
	ena => nx20492z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c_0_a);

-- Location: LCFF_X50_Y31_N19
reg_b_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => c_0_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_0_a);

-- Location: LCFF_X49_Y30_N9
reg_r4_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx56716z1,
	sdata => b_0_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4_0_a);

-- Location: LCCOMB_X49_Y30_N12
add1_add8_4_aix44952z52931 : cycloneii_lcell_comb
-- Equation(s):
-- add1_add8_4_anx37973z1 = (r3_0_a & (r4_0_a $ (VCC))) # (!r3_0_a & (r4_0_a & VCC))
-- add1_add8_4_anx44952z22 = CARRY((r3_0_a & r4_0_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r3_0_a,
	datab => r4_0_a,
	datad => VCC,
	combout => add1_add8_4_anx37973z1,
	cout => add1_add8_4_anx44952z22);

-- Location: LCCOMB_X49_Y30_N14
add1_add8_4_aix44952z52930 : cycloneii_lcell_comb
-- Equation(s):
-- add1_add8_4_anx38970z1 = (r4_1_a & ((r3_1_a & (add1_add8_4_anx44952z22 & VCC)) # (!r3_1_a & (!add1_add8_4_anx44952z22)))) # (!r4_1_a & ((r3_1_a & (!add1_add8_4_anx44952z22)) # (!r3_1_a & ((add1_add8_4_anx44952z22) # (GND)))))
-- add1_add8_4_anx44952z19 = CARRY((r4_1_a & (!r3_1_a & !add1_add8_4_anx44952z22)) # (!r4_1_a & ((!add1_add8_4_anx44952z22) # (!r3_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r4_1_a,
	datab => r3_1_a,
	datad => VCC,
	cin => add1_add8_4_anx44952z22,
	combout => add1_add8_4_anx38970z1,
	cout => add1_add8_4_anx44952z19);

-- Location: LCCOMB_X49_Y30_N16
add1_add8_4_aix44952z52929 : cycloneii_lcell_comb
-- Equation(s):
-- add1_add8_4_anx39967z1 = ((r4_2_a $ (r3_2_a $ (!add1_add8_4_anx44952z19)))) # (GND)
-- add1_add8_4_anx44952z16 = CARRY((r4_2_a & ((r3_2_a) # (!add1_add8_4_anx44952z19))) # (!r4_2_a & (r3_2_a & !add1_add8_4_anx44952z19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r4_2_a,
	datab => r3_2_a,
	datad => VCC,
	cin => add1_add8_4_anx44952z19,
	combout => add1_add8_4_anx39967z1,
	cout => add1_add8_4_anx44952z16);

-- Location: LCCOMB_X49_Y30_N18
add1_add8_4_aix44952z52928 : cycloneii_lcell_comb
-- Equation(s):
-- add1_add8_4_anx40964z1 = (r4_3_a & ((r3_3_a & (add1_add8_4_anx44952z16 & VCC)) # (!r3_3_a & (!add1_add8_4_anx44952z16)))) # (!r4_3_a & ((r3_3_a & (!add1_add8_4_anx44952z16)) # (!r3_3_a & ((add1_add8_4_anx44952z16) # (GND)))))
-- add1_add8_4_anx44952z13 = CARRY((r4_3_a & (!r3_3_a & !add1_add8_4_anx44952z16)) # (!r4_3_a & ((!add1_add8_4_anx44952z16) # (!r3_3_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r4_3_a,
	datab => r3_3_a,
	datad => VCC,
	cin => add1_add8_4_anx44952z16,
	combout => add1_add8_4_anx40964z1,
	cout => add1_add8_4_anx44952z13);

-- Location: LCCOMB_X49_Y30_N20
add1_add8_4_aix44952z52927 : cycloneii_lcell_comb
-- Equation(s):
-- add1_add8_4_anx41961z1 = ((r4_4_a $ (r3_4_a $ (!add1_add8_4_anx44952z13)))) # (GND)
-- add1_add8_4_anx44952z10 = CARRY((r4_4_a & ((r3_4_a) # (!add1_add8_4_anx44952z13))) # (!r4_4_a & (r3_4_a & !add1_add8_4_anx44952z13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r4_4_a,
	datab => r3_4_a,
	datad => VCC,
	cin => add1_add8_4_anx44952z13,
	combout => add1_add8_4_anx41961z1,
	cout => add1_add8_4_anx44952z10);

-- Location: LCCOMB_X49_Y30_N22
add1_add8_4_aix44952z52926 : cycloneii_lcell_comb
-- Equation(s):
-- add1_add8_4_anx42958z1 = (r3_5_a & ((r4_5_a & (add1_add8_4_anx44952z10 & VCC)) # (!r4_5_a & (!add1_add8_4_anx44952z10)))) # (!r3_5_a & ((r4_5_a & (!add1_add8_4_anx44952z10)) # (!r4_5_a & ((add1_add8_4_anx44952z10) # (GND)))))
-- add1_add8_4_anx44952z7 = CARRY((r3_5_a & (!r4_5_a & !add1_add8_4_anx44952z10)) # (!r3_5_a & ((!add1_add8_4_anx44952z10) # (!r4_5_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r3_5_a,
	datab => r4_5_a,
	datad => VCC,
	cin => add1_add8_4_anx44952z10,
	combout => add1_add8_4_anx42958z1,
	cout => add1_add8_4_anx44952z7);

-- Location: LCCOMB_X49_Y30_N24
add1_add8_4_aix44952z52925 : cycloneii_lcell_comb
-- Equation(s):
-- add1_add8_4_anx43955z1 = ((r3_6_a $ (r4_6_a $ (!add1_add8_4_anx44952z7)))) # (GND)
-- add1_add8_4_anx44952z4 = CARRY((r3_6_a & ((r4_6_a) # (!add1_add8_4_anx44952z7))) # (!r3_6_a & (r4_6_a & !add1_add8_4_anx44952z7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r3_6_a,
	datab => r4_6_a,
	datad => VCC,
	cin => add1_add8_4_anx44952z7,
	combout => add1_add8_4_anx43955z1,
	cout => add1_add8_4_anx44952z4);

-- Location: LCCOMB_X49_Y30_N26
add1_add8_4_aix44952z52923 : cycloneii_lcell_comb
-- Equation(s):
-- add1_add8_4_anx44952z1 = (r4_7_a & ((r3_7_a & (add1_add8_4_anx44952z4 & VCC)) # (!r3_7_a & (!add1_add8_4_anx44952z4)))) # (!r4_7_a & ((r3_7_a & (!add1_add8_4_anx44952z4)) # (!r3_7_a & ((add1_add8_4_anx44952z4) # (GND)))))
-- add1_add8_4_anx23445z2 = CARRY((r4_7_a & (!r3_7_a & !add1_add8_4_anx44952z4)) # (!r4_7_a & ((!add1_add8_4_anx44952z4) # (!r3_7_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r4_7_a,
	datab => r3_7_a,
	datad => VCC,
	cin => add1_add8_4_anx44952z4,
	combout => add1_add8_4_anx44952z1,
	cout => add1_add8_4_anx23445z2);

-- Location: LCCOMB_X49_Y30_N28
add1_add8_4_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- add1_add8_4_anx23445z1 = !add1_add8_4_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => add1_add8_4_anx23445z2,
	combout => add1_add8_4_anx23445z1);

-- Location: LCFF_X49_Y30_N29
reg_r7_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add1_add8_4_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r7_8_a);

-- Location: LCFF_X49_Y30_N27
reg_r7_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add1_add8_4_anx44952z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r7_7_a);

-- Location: LCFF_X49_Y30_N15
reg_r7_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add1_add8_4_anx38970z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r7_1_a);

-- Location: LCFF_X49_Y30_N13
reg_r7_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add1_add8_4_anx37973z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r7_0_a);

-- Location: LCCOMB_X45_Y30_N10
add3_add11_0_aix62798z52934 : cycloneii_lcell_comb
-- Equation(s):
-- add3_add11_0_anx37973z1 = (r8_0_a & (r7_0_a $ (VCC))) # (!r8_0_a & (r7_0_a & VCC))
-- add3_add11_0_anx62798z29 = CARRY((r8_0_a & r7_0_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r8_0_a,
	datab => r7_0_a,
	datad => VCC,
	combout => add3_add11_0_anx37973z1,
	cout => add3_add11_0_anx62798z29);

-- Location: LCCOMB_X45_Y30_N12
add3_add11_0_aix62798z52933 : cycloneii_lcell_comb
-- Equation(s):
-- add3_add11_0_anx38970z1 = (r8_1_a & ((r7_1_a & (add3_add11_0_anx62798z29 & VCC)) # (!r7_1_a & (!add3_add11_0_anx62798z29)))) # (!r8_1_a & ((r7_1_a & (!add3_add11_0_anx62798z29)) # (!r7_1_a & ((add3_add11_0_anx62798z29) # (GND)))))
-- add3_add11_0_anx62798z26 = CARRY((r8_1_a & (!r7_1_a & !add3_add11_0_anx62798z29)) # (!r8_1_a & ((!add3_add11_0_anx62798z29) # (!r7_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r8_1_a,
	datab => r7_1_a,
	datad => VCC,
	cin => add3_add11_0_anx62798z29,
	combout => add3_add11_0_anx38970z1,
	cout => add3_add11_0_anx62798z26);

-- Location: LCCOMB_X45_Y30_N14
add3_add11_0_aix62798z52932 : cycloneii_lcell_comb
-- Equation(s):
-- add3_add11_0_anx39967z1 = ((r7_2_a $ (r8_2_a $ (!add3_add11_0_anx62798z26)))) # (GND)
-- add3_add11_0_anx62798z23 = CARRY((r7_2_a & ((r8_2_a) # (!add3_add11_0_anx62798z26))) # (!r7_2_a & (r8_2_a & !add3_add11_0_anx62798z26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r7_2_a,
	datab => r8_2_a,
	datad => VCC,
	cin => add3_add11_0_anx62798z26,
	combout => add3_add11_0_anx39967z1,
	cout => add3_add11_0_anx62798z23);

-- Location: LCFF_X49_Y30_N17
reg_r7_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add1_add8_4_anx39967z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r7_2_a);

-- Location: LCFF_X45_Y30_N15
reg_r8_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add3_add11_0_anx39967z1,
	sdata => r7_2_a,
	sload => v_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r8_2_a);

-- Location: LCCOMB_X45_Y30_N16
add3_add11_0_aix62798z52931 : cycloneii_lcell_comb
-- Equation(s):
-- add3_add11_0_anx40964z1 = (r7_3_a & ((r8_3_a & (add3_add11_0_anx62798z23 & VCC)) # (!r8_3_a & (!add3_add11_0_anx62798z23)))) # (!r7_3_a & ((r8_3_a & (!add3_add11_0_anx62798z23)) # (!r8_3_a & ((add3_add11_0_anx62798z23) # (GND)))))
-- add3_add11_0_anx62798z20 = CARRY((r7_3_a & (!r8_3_a & !add3_add11_0_anx62798z23)) # (!r7_3_a & ((!add3_add11_0_anx62798z23) # (!r8_3_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r7_3_a,
	datab => r8_3_a,
	datad => VCC,
	cin => add3_add11_0_anx62798z23,
	combout => add3_add11_0_anx40964z1,
	cout => add3_add11_0_anx62798z20);

-- Location: LCFF_X49_Y30_N19
reg_r7_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add1_add8_4_anx40964z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r7_3_a);

-- Location: LCFF_X45_Y30_N17
reg_r8_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add3_add11_0_anx40964z1,
	sdata => r7_3_a,
	sload => v_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r8_3_a);

-- Location: LCCOMB_X45_Y30_N18
add3_add11_0_aix62798z52930 : cycloneii_lcell_comb
-- Equation(s):
-- add3_add11_0_anx41961z1 = ((r7_4_a $ (r8_4_a $ (!add3_add11_0_anx62798z20)))) # (GND)
-- add3_add11_0_anx62798z17 = CARRY((r7_4_a & ((r8_4_a) # (!add3_add11_0_anx62798z20))) # (!r7_4_a & (r8_4_a & !add3_add11_0_anx62798z20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r7_4_a,
	datab => r8_4_a,
	datad => VCC,
	cin => add3_add11_0_anx62798z20,
	combout => add3_add11_0_anx41961z1,
	cout => add3_add11_0_anx62798z17);

-- Location: LCFF_X49_Y30_N21
reg_r7_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add1_add8_4_anx41961z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r7_4_a);

-- Location: LCFF_X45_Y30_N19
reg_r8_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add3_add11_0_anx41961z1,
	sdata => r7_4_a,
	sload => v_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r8_4_a);

-- Location: LCCOMB_X45_Y30_N20
add3_add11_0_aix62798z52929 : cycloneii_lcell_comb
-- Equation(s):
-- add3_add11_0_anx42958z1 = (r7_5_a & ((r8_5_a & (add3_add11_0_anx62798z17 & VCC)) # (!r8_5_a & (!add3_add11_0_anx62798z17)))) # (!r7_5_a & ((r8_5_a & (!add3_add11_0_anx62798z17)) # (!r8_5_a & ((add3_add11_0_anx62798z17) # (GND)))))
-- add3_add11_0_anx62798z14 = CARRY((r7_5_a & (!r8_5_a & !add3_add11_0_anx62798z17)) # (!r7_5_a & ((!add3_add11_0_anx62798z17) # (!r8_5_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r7_5_a,
	datab => r8_5_a,
	datad => VCC,
	cin => add3_add11_0_anx62798z17,
	combout => add3_add11_0_anx42958z1,
	cout => add3_add11_0_anx62798z14);

-- Location: LCFF_X49_Y30_N23
reg_r7_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add1_add8_4_anx42958z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r7_5_a);

-- Location: LCFF_X45_Y30_N21
reg_r8_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add3_add11_0_anx42958z1,
	sdata => r7_5_a,
	sload => v_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r8_5_a);

-- Location: LCCOMB_X45_Y30_N22
add3_add11_0_aix62798z52928 : cycloneii_lcell_comb
-- Equation(s):
-- add3_add11_0_anx43955z1 = ((r7_6_a $ (r8_6_a $ (!add3_add11_0_anx62798z14)))) # (GND)
-- add3_add11_0_anx62798z11 = CARRY((r7_6_a & ((r8_6_a) # (!add3_add11_0_anx62798z14))) # (!r7_6_a & (r8_6_a & !add3_add11_0_anx62798z14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r7_6_a,
	datab => r8_6_a,
	datad => VCC,
	cin => add3_add11_0_anx62798z14,
	combout => add3_add11_0_anx43955z1,
	cout => add3_add11_0_anx62798z11);

-- Location: LCFF_X49_Y30_N25
reg_r7_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add1_add8_4_anx43955z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r7_6_a);

-- Location: LCFF_X45_Y30_N23
reg_r8_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add3_add11_0_anx43955z1,
	sdata => r7_6_a,
	sload => v_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r8_6_a);

-- Location: LCCOMB_X45_Y30_N24
add3_add11_0_aix62798z52927 : cycloneii_lcell_comb
-- Equation(s):
-- add3_add11_0_anx44952z1 = (r8_7_a & ((r7_7_a & (add3_add11_0_anx62798z11 & VCC)) # (!r7_7_a & (!add3_add11_0_anx62798z11)))) # (!r8_7_a & ((r7_7_a & (!add3_add11_0_anx62798z11)) # (!r7_7_a & ((add3_add11_0_anx62798z11) # (GND)))))
-- add3_add11_0_anx62798z8 = CARRY((r8_7_a & (!r7_7_a & !add3_add11_0_anx62798z11)) # (!r8_7_a & ((!add3_add11_0_anx62798z11) # (!r7_7_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r8_7_a,
	datab => r7_7_a,
	datad => VCC,
	cin => add3_add11_0_anx62798z11,
	combout => add3_add11_0_anx44952z1,
	cout => add3_add11_0_anx62798z8);

-- Location: LCCOMB_X44_Y30_N10
r13_9_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r13_9_afeeder_combout = add3_add11_0_anx46946z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => add3_add11_0_anx46946z1,
	combout => r13_9_afeeder_combout);

-- Location: LCFF_X44_Y30_N11
reg_r13_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r13_9_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r13_9_a);

-- Location: LCCOMB_X44_Y30_N20
r13_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r13_7_afeeder_combout = add3_add11_0_anx44952z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => add3_add11_0_anx44952z1,
	combout => r13_7_afeeder_combout);

-- Location: LCFF_X44_Y30_N21
reg_r13_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r13_7_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r13_7_a);

-- Location: LCCOMB_X44_Y30_N22
r13_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r13_6_afeeder_combout = add3_add11_0_anx43955z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => add3_add11_0_anx43955z1,
	combout => r13_6_afeeder_combout);

-- Location: LCFF_X44_Y30_N23
reg_r13_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r13_6_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r13_6_a);

-- Location: LCCOMB_X44_Y29_N0
r13_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r13_4_afeeder_combout = add3_add11_0_anx41961z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => add3_add11_0_anx41961z1,
	combout => r13_4_afeeder_combout);

-- Location: LCFF_X44_Y29_N1
reg_r13_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r13_4_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r13_4_a);

-- Location: LCCOMB_X44_Y29_N28
r13_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r13_2_afeeder_combout = add3_add11_0_anx39967z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => add3_add11_0_anx39967z1,
	combout => r13_2_afeeder_combout);

-- Location: LCFF_X44_Y29_N29
reg_r13_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r13_2_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r13_2_a);

-- Location: LCCOMB_X44_Y29_N30
r13_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r13_1_afeeder_combout = add3_add11_0_anx38970z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => add3_add11_0_anx38970z1,
	combout => r13_1_afeeder_combout);

-- Location: LCFF_X44_Y29_N31
reg_r13_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r13_1_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r13_1_a);

-- Location: LCCOMB_X44_Y30_N26
r13_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r13_0_afeeder_combout = add3_add11_0_anx37973z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => add3_add11_0_anx37973z1,
	combout => r13_0_afeeder_combout);

-- Location: LCFF_X44_Y30_N27
reg_r13_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r13_0_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r13_0_a);

-- Location: LCCOMB_X44_Y29_N2
add4_add11_6_aix62798z52934 : cycloneii_lcell_comb
-- Equation(s):
-- add4_add11_6_anx37973z1 = (r13_1_a & (r13_0_a $ (VCC))) # (!r13_1_a & (r13_0_a & VCC))
-- add4_add11_6_anx62798z21 = CARRY((r13_1_a & r13_0_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r13_1_a,
	datab => r13_0_a,
	datad => VCC,
	combout => add4_add11_6_anx37973z1,
	cout => add4_add11_6_anx62798z21);

-- Location: LCCOMB_X44_Y29_N4
add4_add11_6_aix62798z52933 : cycloneii_lcell_comb
-- Equation(s):
-- add4_add11_6_anx38970z1 = (r13_2_a & ((r13_1_a & (add4_add11_6_anx62798z21 & VCC)) # (!r13_1_a & (!add4_add11_6_anx62798z21)))) # (!r13_2_a & ((r13_1_a & (!add4_add11_6_anx62798z21)) # (!r13_1_a & ((add4_add11_6_anx62798z21) # (GND)))))
-- add4_add11_6_anx62798z19 = CARRY((r13_2_a & (!r13_1_a & !add4_add11_6_anx62798z21)) # (!r13_2_a & ((!add4_add11_6_anx62798z21) # (!r13_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r13_2_a,
	datab => r13_1_a,
	datad => VCC,
	cin => add4_add11_6_anx62798z21,
	combout => add4_add11_6_anx38970z1,
	cout => add4_add11_6_anx62798z19);

-- Location: LCCOMB_X44_Y29_N6
add4_add11_6_aix62798z52932 : cycloneii_lcell_comb
-- Equation(s):
-- add4_add11_6_anx39967z1 = ((r13_3_a $ (r13_2_a $ (!add4_add11_6_anx62798z19)))) # (GND)
-- add4_add11_6_anx62798z17 = CARRY((r13_3_a & ((r13_2_a) # (!add4_add11_6_anx62798z19))) # (!r13_3_a & (r13_2_a & !add4_add11_6_anx62798z19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r13_3_a,
	datab => r13_2_a,
	datad => VCC,
	cin => add4_add11_6_anx62798z19,
	combout => add4_add11_6_anx39967z1,
	cout => add4_add11_6_anx62798z17);

-- Location: LCCOMB_X44_Y29_N10
add4_add11_6_aix62798z52930 : cycloneii_lcell_comb
-- Equation(s):
-- add4_add11_6_anx41961z1 = ((r13_5_a $ (r13_4_a $ (!add4_add11_6_anx62798z15)))) # (GND)
-- add4_add11_6_anx62798z13 = CARRY((r13_5_a & ((r13_4_a) # (!add4_add11_6_anx62798z15))) # (!r13_5_a & (r13_4_a & !add4_add11_6_anx62798z15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r13_5_a,
	datab => r13_4_a,
	datad => VCC,
	cin => add4_add11_6_anx62798z15,
	combout => add4_add11_6_anx41961z1,
	cout => add4_add11_6_anx62798z13);

-- Location: LCCOMB_X44_Y29_N16
add4_add11_6_aix62798z52927 : cycloneii_lcell_comb
-- Equation(s):
-- add4_add11_6_anx44952z1 = (r13_8_a & ((r13_7_a & (add4_add11_6_anx62798z9 & VCC)) # (!r13_7_a & (!add4_add11_6_anx62798z9)))) # (!r13_8_a & ((r13_7_a & (!add4_add11_6_anx62798z9)) # (!r13_7_a & ((add4_add11_6_anx62798z9) # (GND)))))
-- add4_add11_6_anx62798z7 = CARRY((r13_8_a & (!r13_7_a & !add4_add11_6_anx62798z9)) # (!r13_8_a & ((!add4_add11_6_anx62798z9) # (!r13_7_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r13_8_a,
	datab => r13_7_a,
	datad => VCC,
	cin => add4_add11_6_anx62798z9,
	combout => add4_add11_6_anx44952z1,
	cout => add4_add11_6_anx62798z7);

-- Location: LCCOMB_X44_Y29_N18
add4_add11_6_aix62798z52926 : cycloneii_lcell_comb
-- Equation(s):
-- add4_add11_6_anx45949z1 = ((r13_8_a $ (r13_9_a $ (!add4_add11_6_anx62798z7)))) # (GND)
-- add4_add11_6_anx62798z5 = CARRY((r13_8_a & ((r13_9_a) # (!add4_add11_6_anx62798z7))) # (!r13_8_a & (r13_9_a & !add4_add11_6_anx62798z7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r13_8_a,
	datab => r13_9_a,
	datad => VCC,
	cin => add4_add11_6_anx62798z7,
	combout => add4_add11_6_anx45949z1,
	cout => add4_add11_6_anx62798z5);

-- Location: LCCOMB_X44_Y29_N24
add4_add11_6_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- add4_add11_6_anx23445z1 = add4_add11_6_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => add4_add11_6_anx23445z2,
	combout => add4_add11_6_anx23445z1);

-- Location: LCFF_X44_Y29_N25
reg_r15_12_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add4_add11_6_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r15_12_a);

-- Location: LCCOMB_X51_Y31_N30
e_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- e_6_afeeder_combout = i_pixel_acombout(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => i_pixel_acombout(6),
	combout => e_6_afeeder_combout);

-- Location: LCFF_X51_Y31_N31
reg_in_i_pixel_ibuf_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => e_6_afeeder_combout,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e_6_a);

-- Location: LCFF_X47_Y31_N19
reg_f_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => e_6_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_6_a);

-- Location: LCFF_X47_Y31_N17
reg_i_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => d_6_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_6_a);

-- Location: LCFF_X47_Y31_N13
reg_h_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_6_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h_6_a);

-- Location: LCCOMB_X47_Y31_N12
ix31640z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx31640z2 = (v_1_a) # ((v_2_a & ((h_6_a))) # (!v_2_a & (b_6_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => b_6_a,
	datac => h_6_a,
	datad => v_2_a,
	combout => nx31640z2);

-- Location: LCCOMB_X48_Y31_N28
ix31640z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx31640z1 = (nx31640z2 & ((f_6_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => f_6_a,
	datad => nx31640z2,
	combout => nx31640z1);

-- Location: LCFF_X48_Y31_N29
reg_r2_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx31640z1,
	sdata => d_6_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_6_a);

-- Location: LCCOMB_X48_Y28_N26
r5_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_6_afeeder_combout = r2_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_6_a,
	combout => r5_6_afeeder_combout);

-- Location: LCFF_X47_Y31_N11
reg_g_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => f_6_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => g_6_a);

-- Location: LCCOMB_X47_Y31_N10
ix40059z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx40059z2 = (v_1_a) # ((v_2_a & (e_6_a)) # (!v_2_a & ((g_6_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => e_6_a,
	datac => g_6_a,
	datad => v_2_a,
	combout => nx40059z2);

-- Location: LCCOMB_X48_Y31_N22
ix40059z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx40059z1 = (nx40059z2 & ((c_6_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => c_6_a,
	datad => nx40059z2,
	combout => nx40059z1);

-- Location: LCCOMB_X51_Y31_N16
a_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- a_6_afeeder_combout = b_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => b_6_a,
	combout => a_6_afeeder_combout);

-- Location: LCFF_X51_Y31_N17
reg_a_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => a_6_afeeder_combout,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_6_a);

-- Location: LCFF_X48_Y31_N23
reg_r1_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx40059z1,
	sdata => a_6_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r1_6_a);

-- Location: LCCOMB_X51_Y30_N16
ix36625z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx36625z1 = (t_0_a & ((m1_mem_aix64056z29481_aauto_generated_aq_a(7)))) # (!t_0_a & (m3_mem_aix64056z29483_aauto_generated_aq_a(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m3_mem_aix64056z29483_aauto_generated_aq_a(7),
	datab => t_0_a,
	datad => m1_mem_aix64056z29481_aauto_generated_aq_a(7),
	combout => nx36625z1);

-- Location: LCFF_X51_Y30_N17
reg_d_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx36625z1,
	sdata => m2_mem_aix64056z29482_aauto_generated_aq_a(7),
	sload => t_1_a,
	ena => nx20492z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_7_a);

-- Location: LCFF_X47_Y31_N29
reg_i_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => d_7_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_7_a);

-- Location: LCFF_X47_Y31_N3
reg_h_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_7_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h_7_a);

-- Location: LCCOMB_X47_Y31_N2
ix32637z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx32637z2 = (v_1_a) # ((v_2_a & ((h_7_a))) # (!v_2_a & (b_7_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => b_7_a,
	datac => h_7_a,
	datad => v_2_a,
	combout => nx32637z2);

-- Location: LCCOMB_X48_Y31_N24
ix32637z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx32637z1 = (nx32637z2 & ((f_7_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => f_7_a,
	datad => nx32637z2,
	combout => nx32637z1);

-- Location: LCFF_X48_Y31_N25
reg_r2_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx32637z1,
	sdata => d_7_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_7_a);

-- Location: LCCOMB_X47_Y31_N22
e_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- e_5_afeeder_combout = i_pixel_acombout(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => i_pixel_acombout(5),
	combout => e_5_afeeder_combout);

-- Location: LCFF_X47_Y31_N23
reg_in_i_pixel_ibuf_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => e_5_afeeder_combout,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e_5_a);

-- Location: LCFF_X47_Y31_N25
reg_f_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => e_5_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_5_a);

-- Location: LCCOMB_X47_Y31_N4
i_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- i_5_afeeder_combout = d_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d_5_a,
	combout => i_5_afeeder_combout);

-- Location: LCFF_X47_Y31_N5
reg_i_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => i_5_afeeder_combout,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_5_a);

-- Location: LCFF_X47_Y31_N15
reg_h_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_5_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h_5_a);

-- Location: LCCOMB_X47_Y31_N14
ix30643z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx30643z2 = (v_1_a) # ((v_2_a & ((h_5_a))) # (!v_2_a & (b_5_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => b_5_a,
	datac => h_5_a,
	datad => v_2_a,
	combout => nx30643z2);

-- Location: LCCOMB_X49_Y31_N24
ix30643z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx30643z1 = (nx30643z2 & ((f_5_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => f_5_a,
	datad => nx30643z2,
	combout => nx30643z1);

-- Location: LCFF_X49_Y31_N25
reg_r2_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx30643z1,
	sdata => d_5_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_5_a);

-- Location: LCCOMB_X49_Y31_N28
ix29646z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx29646z1 = (nx29646z2 & ((f_4_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx29646z2,
	datab => f_4_a,
	datad => v_1_a,
	combout => nx29646z1);

-- Location: LCCOMB_X51_Y30_N4
ix33634z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx33634z1 = (t_0_a & ((m1_mem_aix64056z29481_aauto_generated_aq_a(4)))) # (!t_0_a & (m3_mem_aix64056z29483_aauto_generated_aq_a(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m3_mem_aix64056z29483_aauto_generated_aq_a(4),
	datab => m1_mem_aix64056z29481_aauto_generated_aq_a(4),
	datad => t_0_a,
	combout => nx33634z1);

-- Location: LCFF_X51_Y30_N5
reg_d_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx33634z1,
	sdata => m2_mem_aix64056z29482_aauto_generated_aq_a(4),
	sload => t_1_a,
	ena => nx20492z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_4_a);

-- Location: LCFF_X49_Y31_N29
reg_r2_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx29646z1,
	sdata => d_4_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_4_a);

-- Location: LCFF_X49_Y32_N9
reg_b_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => c_3_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_3_a);

-- Location: LCCOMB_X49_Y32_N8
ix28649z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx28649z2 = (v_1_a) # ((v_2_a & (h_3_a)) # (!v_2_a & ((b_3_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_3_a,
	datab => v_1_a,
	datac => b_3_a,
	datad => v_2_a,
	combout => nx28649z2);

-- Location: LCFF_X49_Y32_N27
reg_f_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => e_3_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_3_a);

-- Location: LCCOMB_X48_Y32_N24
ix28649z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx28649z1 = (nx28649z2 & ((f_3_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => nx28649z2,
	datad => f_3_a,
	combout => nx28649z1);

-- Location: LCCOMB_X51_Y30_N8
ix32637z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx32637z4 = (t_0_a & ((m1_mem_aix64056z29481_aauto_generated_aq_a(3)))) # (!t_0_a & (m3_mem_aix64056z29483_aauto_generated_aq_a(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m3_mem_aix64056z29483_aauto_generated_aq_a(3),
	datab => t_0_a,
	datad => m1_mem_aix64056z29481_aauto_generated_aq_a(3),
	combout => nx32637z4);

-- Location: LCFF_X51_Y30_N9
reg_d_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx32637z4,
	sdata => m2_mem_aix64056z29482_aauto_generated_aq_a(3),
	sload => t_1_a,
	ena => nx20492z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_3_a);

-- Location: LCFF_X48_Y32_N25
reg_r2_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx28649z1,
	sdata => d_3_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_3_a);

-- Location: LCFF_X49_Y32_N1
reg_f_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => e_2_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_2_a);

-- Location: LCFF_X49_Y32_N11
reg_g_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => f_2_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => g_2_a);

-- Location: LCCOMB_X49_Y32_N10
ix36071z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx36071z2 = (v_1_a) # ((v_2_a & (e_2_a)) # (!v_2_a & ((g_2_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => e_2_a,
	datab => v_1_a,
	datac => g_2_a,
	datad => v_2_a,
	combout => nx36071z2);

-- Location: LCCOMB_X48_Y31_N2
ix36071z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx36071z1 = (nx36071z2 & ((c_2_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => c_2_a,
	datad => nx36071z2,
	combout => nx36071z1);

-- Location: LCCOMB_X51_Y31_N12
b_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- b_2_afeeder_combout = c_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => c_2_a,
	combout => b_2_afeeder_combout);

-- Location: LCFF_X51_Y31_N13
reg_b_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => b_2_afeeder_combout,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_2_a);

-- Location: LCCOMB_X51_Y31_N14
a_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- a_2_afeeder_combout = b_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => b_2_a,
	combout => a_2_afeeder_combout);

-- Location: LCFF_X51_Y31_N15
reg_a_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => a_2_afeeder_combout,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_2_a);

-- Location: LCFF_X48_Y31_N3
reg_r1_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx36071z1,
	sdata => a_2_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r1_2_a);

-- Location: LCCOMB_X51_Y30_N0
ix30643z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx30643z3 = (t_0_a & (m1_mem_aix64056z29481_aauto_generated_aq_a(1))) # (!t_0_a & ((m3_mem_aix64056z29483_aauto_generated_aq_a(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t_0_a,
	datab => m1_mem_aix64056z29481_aauto_generated_aq_a(1),
	datad => m3_mem_aix64056z29483_aauto_generated_aq_a(1),
	combout => nx30643z3);

-- Location: LCFF_X51_Y30_N1
reg_d_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx30643z3,
	sdata => m2_mem_aix64056z29482_aauto_generated_aq_a(1),
	sload => t_1_a,
	ena => nx20492z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_1_a);

-- Location: LCCOMB_X49_Y32_N16
i_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- i_1_afeeder_combout = d_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d_1_a,
	combout => i_1_afeeder_combout);

-- Location: LCFF_X49_Y32_N17
reg_i_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => i_1_afeeder_combout,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_1_a);

-- Location: LCFF_X49_Y32_N29
reg_h_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_1_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h_1_a);

-- Location: LCCOMB_X49_Y32_N28
ix26655z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx26655z2 = (v_1_a) # ((v_2_a & ((h_1_a))) # (!v_2_a & (b_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_1_a,
	datab => v_1_a,
	datac => h_1_a,
	datad => v_2_a,
	combout => nx26655z2);

-- Location: LCCOMB_X48_Y32_N4
ix26655z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx26655z1 = (nx26655z2 & ((f_1_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => f_1_a,
	datad => nx26655z2,
	combout => nx26655z1);

-- Location: LCFF_X48_Y32_N5
reg_r2_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx26655z1,
	sdata => d_1_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_1_a);

-- Location: LCCOMB_X50_Y31_N30
ix34077z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx34077z2 = (v_1_a) # ((v_2_a & (e_0_a)) # (!v_2_a & ((g_0_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => e_0_a,
	datac => g_0_a,
	datad => v_2_a,
	combout => nx34077z2);

-- Location: LCCOMB_X49_Y31_N8
ix34077z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx34077z1 = (nx34077z2 & ((c_0_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => c_0_a,
	datad => nx34077z2,
	combout => nx34077z1);

-- Location: LCCOMB_X51_Y31_N4
a_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- a_0_afeeder_combout = b_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => b_0_a,
	combout => a_0_afeeder_combout);

-- Location: LCFF_X51_Y31_N5
reg_a_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => a_0_afeeder_combout,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_0_a);

-- Location: LCFF_X49_Y31_N9
reg_r1_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx34077z1,
	sdata => a_0_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r1_0_a);

-- Location: LCCOMB_X48_Y28_N6
sub1_sub8_1_aix23445z52931 : cycloneii_lcell_comb
-- Equation(s):
-- sub1_sub8_1_anx23445z22 = CARRY((r1_0_a) # (!r2_0_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r2_0_a,
	datab => r1_0_a,
	datad => VCC,
	cout => sub1_sub8_1_anx23445z22);

-- Location: LCCOMB_X48_Y28_N8
sub1_sub8_1_aix23445z52930 : cycloneii_lcell_comb
-- Equation(s):
-- sub1_sub8_1_anx23445z19 = CARRY((r1_1_a & (r2_1_a & !sub1_sub8_1_anx23445z22)) # (!r1_1_a & ((r2_1_a) # (!sub1_sub8_1_anx23445z22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r1_1_a,
	datab => r2_1_a,
	datad => VCC,
	cin => sub1_sub8_1_anx23445z22,
	cout => sub1_sub8_1_anx23445z19);

-- Location: LCCOMB_X48_Y28_N10
sub1_sub8_1_aix23445z52929 : cycloneii_lcell_comb
-- Equation(s):
-- sub1_sub8_1_anx23445z16 = CARRY((r2_2_a & (r1_2_a & !sub1_sub8_1_anx23445z19)) # (!r2_2_a & ((r1_2_a) # (!sub1_sub8_1_anx23445z19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r2_2_a,
	datab => r1_2_a,
	datad => VCC,
	cin => sub1_sub8_1_anx23445z19,
	cout => sub1_sub8_1_anx23445z16);

-- Location: LCCOMB_X48_Y28_N12
sub1_sub8_1_aix23445z52928 : cycloneii_lcell_comb
-- Equation(s):
-- sub1_sub8_1_anx23445z13 = CARRY((r1_3_a & (r2_3_a & !sub1_sub8_1_anx23445z16)) # (!r1_3_a & ((r2_3_a) # (!sub1_sub8_1_anx23445z16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r1_3_a,
	datab => r2_3_a,
	datad => VCC,
	cin => sub1_sub8_1_anx23445z16,
	cout => sub1_sub8_1_anx23445z13);

-- Location: LCCOMB_X48_Y28_N14
sub1_sub8_1_aix23445z52927 : cycloneii_lcell_comb
-- Equation(s):
-- sub1_sub8_1_anx23445z10 = CARRY((r1_4_a & ((!sub1_sub8_1_anx23445z13) # (!r2_4_a))) # (!r1_4_a & (!r2_4_a & !sub1_sub8_1_anx23445z13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r1_4_a,
	datab => r2_4_a,
	datad => VCC,
	cin => sub1_sub8_1_anx23445z13,
	cout => sub1_sub8_1_anx23445z10);

-- Location: LCCOMB_X48_Y28_N16
sub1_sub8_1_aix23445z52926 : cycloneii_lcell_comb
-- Equation(s):
-- sub1_sub8_1_anx23445z7 = CARRY((r1_5_a & (r2_5_a & !sub1_sub8_1_anx23445z10)) # (!r1_5_a & ((r2_5_a) # (!sub1_sub8_1_anx23445z10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r1_5_a,
	datab => r2_5_a,
	datad => VCC,
	cin => sub1_sub8_1_anx23445z10,
	cout => sub1_sub8_1_anx23445z7);

-- Location: LCCOMB_X48_Y28_N18
sub1_sub8_1_aix23445z52925 : cycloneii_lcell_comb
-- Equation(s):
-- sub1_sub8_1_anx23445z4 = CARRY((r1_6_a & ((!sub1_sub8_1_anx23445z7) # (!r2_6_a))) # (!r1_6_a & (!r2_6_a & !sub1_sub8_1_anx23445z7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r1_6_a,
	datab => r2_6_a,
	datad => VCC,
	cin => sub1_sub8_1_anx23445z7,
	cout => sub1_sub8_1_anx23445z4);

-- Location: LCCOMB_X48_Y28_N20
sub1_sub8_1_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- sub1_sub8_1_anx23445z1 = (r1_7_a & ((sub1_sub8_1_anx23445z4) # (!r2_7_a))) # (!r1_7_a & (sub1_sub8_1_anx23445z4 & !r2_7_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r1_7_a,
	datad => r2_7_a,
	cin => sub1_sub8_1_anx23445z4,
	combout => sub1_sub8_1_anx23445z1);

-- Location: LCFF_X48_Y28_N27
reg_r5_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_6_afeeder_combout,
	sdata => r1_6_a,
	sload => sub1_sub8_1_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_6_a);

-- Location: LCCOMB_X48_Y28_N28
r5_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_5_afeeder_combout = r2_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_5_a,
	combout => r5_5_afeeder_combout);

-- Location: LCCOMB_X49_Y31_N10
ix39062z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx39062z1 = (nx39062z2 & ((c_5_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx39062z2,
	datab => c_5_a,
	datad => v_1_a,
	combout => nx39062z1);

-- Location: LCCOMB_X51_Y31_N20
a_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- a_5_afeeder_combout = b_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => b_5_a,
	combout => a_5_afeeder_combout);

-- Location: LCFF_X51_Y31_N21
reg_a_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => a_5_afeeder_combout,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_5_a);

-- Location: LCFF_X49_Y31_N11
reg_r1_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx39062z1,
	sdata => a_5_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r1_5_a);

-- Location: LCFF_X48_Y28_N29
reg_r5_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_5_afeeder_combout,
	sdata => r1_5_a,
	sload => sub1_sub8_1_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_5_a);

-- Location: LCCOMB_X48_Y28_N30
r5_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_4_afeeder_combout = r2_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2_4_a,
	combout => r5_4_afeeder_combout);

-- Location: LCFF_X47_Y31_N27
reg_g_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => f_4_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => g_4_a);

-- Location: LCCOMB_X47_Y31_N26
ix38065z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx38065z2 = (v_1_a) # ((v_2_a & (e_4_a)) # (!v_2_a & ((g_4_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => e_4_a,
	datac => g_4_a,
	datad => v_2_a,
	combout => nx38065z2);

-- Location: LCCOMB_X49_Y31_N14
ix38065z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx38065z1 = (nx38065z2 & ((c_4_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c_4_a,
	datab => nx38065z2,
	datad => v_1_a,
	combout => nx38065z1);

-- Location: LCFF_X49_Y31_N15
reg_r1_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx38065z1,
	sdata => a_4_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r1_4_a);

-- Location: LCFF_X48_Y28_N31
reg_r5_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_4_afeeder_combout,
	sdata => r1_4_a,
	sload => sub1_sub8_1_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_4_a);

-- Location: LCCOMB_X48_Y28_N4
r5_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r5_1_afeeder_combout = r2_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r2_1_a,
	combout => r5_1_afeeder_combout);

-- Location: LCFF_X49_Y32_N19
reg_g_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => f_1_a,
	sload => VCC,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => g_1_a);

-- Location: LCCOMB_X49_Y32_N18
ix35074z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx35074z2 = (v_1_a) # ((v_2_a & ((e_1_a))) # (!v_2_a & (g_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_2_a,
	datab => v_1_a,
	datac => g_1_a,
	datad => e_1_a,
	combout => nx35074z2);

-- Location: LCCOMB_X48_Y32_N22
ix35074z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx35074z1 = (nx35074z2 & ((c_1_a) # (!v_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => nx35074z2,
	datad => c_1_a,
	combout => nx35074z1);

-- Location: LCFF_X48_Y32_N23
reg_r1_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx35074z1,
	sdata => a_1_a,
	sload => v_0_a,
	ena => nx32637z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r1_1_a);

-- Location: LCFF_X48_Y28_N5
reg_r5_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r5_1_afeeder_combout,
	sdata => r1_1_a,
	sload => sub1_sub8_1_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_1_a);

-- Location: LCCOMB_X47_Y30_N2
add2_add9_5_aix45949z52932 : cycloneii_lcell_comb
-- Equation(s):
-- add2_add9_5_anx37973z1 = (r5_0_a & (r7_0_a $ (VCC))) # (!r5_0_a & (r7_0_a & VCC))
-- add2_add9_5_anx45949z24 = CARRY((r5_0_a & r7_0_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r5_0_a,
	datab => r7_0_a,
	datad => VCC,
	combout => add2_add9_5_anx37973z1,
	cout => add2_add9_5_anx45949z24);

-- Location: LCCOMB_X47_Y30_N4
add2_add9_5_aix45949z52931 : cycloneii_lcell_comb
-- Equation(s):
-- add2_add9_5_anx38970z1 = (r7_1_a & ((r5_1_a & (add2_add9_5_anx45949z24 & VCC)) # (!r5_1_a & (!add2_add9_5_anx45949z24)))) # (!r7_1_a & ((r5_1_a & (!add2_add9_5_anx45949z24)) # (!r5_1_a & ((add2_add9_5_anx45949z24) # (GND)))))
-- add2_add9_5_anx45949z21 = CARRY((r7_1_a & (!r5_1_a & !add2_add9_5_anx45949z24)) # (!r7_1_a & ((!add2_add9_5_anx45949z24) # (!r5_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r7_1_a,
	datab => r5_1_a,
	datad => VCC,
	cin => add2_add9_5_anx45949z24,
	combout => add2_add9_5_anx38970z1,
	cout => add2_add9_5_anx45949z21);

-- Location: LCCOMB_X47_Y30_N6
add2_add9_5_aix45949z52930 : cycloneii_lcell_comb
-- Equation(s):
-- add2_add9_5_anx39967z1 = ((r5_2_a $ (r7_2_a $ (!add2_add9_5_anx45949z21)))) # (GND)
-- add2_add9_5_anx45949z18 = CARRY((r5_2_a & ((r7_2_a) # (!add2_add9_5_anx45949z21))) # (!r5_2_a & (r7_2_a & !add2_add9_5_anx45949z21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r5_2_a,
	datab => r7_2_a,
	datad => VCC,
	cin => add2_add9_5_anx45949z21,
	combout => add2_add9_5_anx39967z1,
	cout => add2_add9_5_anx45949z18);

-- Location: LCCOMB_X47_Y30_N8
add2_add9_5_aix45949z52929 : cycloneii_lcell_comb
-- Equation(s):
-- add2_add9_5_anx40964z1 = (r5_3_a & ((r7_3_a & (add2_add9_5_anx45949z18 & VCC)) # (!r7_3_a & (!add2_add9_5_anx45949z18)))) # (!r5_3_a & ((r7_3_a & (!add2_add9_5_anx45949z18)) # (!r7_3_a & ((add2_add9_5_anx45949z18) # (GND)))))
-- add2_add9_5_anx45949z15 = CARRY((r5_3_a & (!r7_3_a & !add2_add9_5_anx45949z18)) # (!r5_3_a & ((!add2_add9_5_anx45949z18) # (!r7_3_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r5_3_a,
	datab => r7_3_a,
	datad => VCC,
	cin => add2_add9_5_anx45949z18,
	combout => add2_add9_5_anx40964z1,
	cout => add2_add9_5_anx45949z15);

-- Location: LCCOMB_X47_Y30_N10
add2_add9_5_aix45949z52928 : cycloneii_lcell_comb
-- Equation(s):
-- add2_add9_5_anx41961z1 = ((r7_4_a $ (r5_4_a $ (!add2_add9_5_anx45949z15)))) # (GND)
-- add2_add9_5_anx45949z12 = CARRY((r7_4_a & ((r5_4_a) # (!add2_add9_5_anx45949z15))) # (!r7_4_a & (r5_4_a & !add2_add9_5_anx45949z15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r7_4_a,
	datab => r5_4_a,
	datad => VCC,
	cin => add2_add9_5_anx45949z15,
	combout => add2_add9_5_anx41961z1,
	cout => add2_add9_5_anx45949z12);

-- Location: LCCOMB_X47_Y30_N12
add2_add9_5_aix45949z52927 : cycloneii_lcell_comb
-- Equation(s):
-- add2_add9_5_anx42958z1 = (r7_5_a & ((r5_5_a & (add2_add9_5_anx45949z12 & VCC)) # (!r5_5_a & (!add2_add9_5_anx45949z12)))) # (!r7_5_a & ((r5_5_a & (!add2_add9_5_anx45949z12)) # (!r5_5_a & ((add2_add9_5_anx45949z12) # (GND)))))
-- add2_add9_5_anx45949z9 = CARRY((r7_5_a & (!r5_5_a & !add2_add9_5_anx45949z12)) # (!r7_5_a & ((!add2_add9_5_anx45949z12) # (!r5_5_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r7_5_a,
	datab => r5_5_a,
	datad => VCC,
	cin => add2_add9_5_anx45949z12,
	combout => add2_add9_5_anx42958z1,
	cout => add2_add9_5_anx45949z9);

-- Location: LCCOMB_X47_Y30_N14
add2_add9_5_aix45949z52926 : cycloneii_lcell_comb
-- Equation(s):
-- add2_add9_5_anx43955z1 = ((r7_6_a $ (r5_6_a $ (!add2_add9_5_anx45949z9)))) # (GND)
-- add2_add9_5_anx45949z6 = CARRY((r7_6_a & ((r5_6_a) # (!add2_add9_5_anx45949z9))) # (!r7_6_a & (r5_6_a & !add2_add9_5_anx45949z9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r7_6_a,
	datab => r5_6_a,
	datad => VCC,
	cin => add2_add9_5_anx45949z9,
	combout => add2_add9_5_anx43955z1,
	cout => add2_add9_5_anx45949z6);

-- Location: LCCOMB_X47_Y30_N16
add2_add9_5_aix45949z52925 : cycloneii_lcell_comb
-- Equation(s):
-- add2_add9_5_anx44952z1 = (r5_7_a & ((r7_7_a & (add2_add9_5_anx45949z6 & VCC)) # (!r7_7_a & (!add2_add9_5_anx45949z6)))) # (!r5_7_a & ((r7_7_a & (!add2_add9_5_anx45949z6)) # (!r7_7_a & ((add2_add9_5_anx45949z6) # (GND)))))
-- add2_add9_5_anx45949z3 = CARRY((r5_7_a & (!r7_7_a & !add2_add9_5_anx45949z6)) # (!r5_7_a & ((!add2_add9_5_anx45949z6) # (!r7_7_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r5_7_a,
	datab => r7_7_a,
	datad => VCC,
	cin => add2_add9_5_anx45949z6,
	combout => add2_add9_5_anx44952z1,
	cout => add2_add9_5_anx45949z3);

-- Location: LCCOMB_X47_Y30_N18
add2_add9_5_aix45949z52923 : cycloneii_lcell_comb
-- Equation(s):
-- add2_add9_5_anx45949z1 = (r7_8_a & (add2_add9_5_anx45949z3 $ (GND))) # (!r7_8_a & (!add2_add9_5_anx45949z3 & VCC))
-- add2_add9_5_anx23445z2 = CARRY((r7_8_a & !add2_add9_5_anx45949z3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r7_8_a,
	datad => VCC,
	cin => add2_add9_5_anx45949z3,
	combout => add2_add9_5_anx45949z1,
	cout => add2_add9_5_anx23445z2);

-- Location: LCFF_X47_Y30_N19
reg_r11_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add2_add9_5_anx45949z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r11_8_a);

-- Location: LCCOMB_X48_Y30_N18
r12_8_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r12_8_afeeder_combout = r11_8_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r11_8_a,
	combout => r12_8_afeeder_combout);

-- Location: LCCOMB_X47_Y30_N20
add2_add9_5_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- add2_add9_5_anx23445z1 = add2_add9_5_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => add2_add9_5_anx23445z2,
	combout => add2_add9_5_anx23445z1);

-- Location: LCFF_X47_Y30_N21
reg_r11_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add2_add9_5_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r11_9_a);

-- Location: LCCOMB_X47_Y30_N24
ix24302z52923 : cycloneii_lcell_comb
-- Equation(s):
-- max2_9_a = (sub2_sub10_2_anx23445z1 & ((r9_9_a))) # (!sub2_sub10_2_anx23445z1 & (r11_9_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r11_9_a,
	datac => r9_9_a,
	datad => sub2_sub10_2_anx23445z1,
	combout => max2_9_a);

-- Location: LCCOMB_X45_Y31_N24
ix25299z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx25299z2 = (v_4_a & !v_3_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => v_4_a,
	datad => v_3_a,
	combout => nx25299z2);

-- Location: LCCOMB_X46_Y31_N16
ix25299z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx25299z1 = (!v_1_a & (!v_0_a & ((v_2_a) # (nx25299z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_2_a,
	datab => nx25299z2,
	datac => v_1_a,
	datad => v_0_a,
	combout => nx25299z1);

-- Location: LCFF_X47_Y30_N25
reg_r9_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => max2_9_a,
	sdata => add2_add9_5_anx23445z1,
	sload => v_2_a,
	ena => nx25299z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r9_9_a);

-- Location: LCFF_X47_Y30_N17
reg_r11_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add2_add9_5_anx44952z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r11_7_a);

-- Location: LCCOMB_X47_Y30_N0
ix26296z52923 : cycloneii_lcell_comb
-- Equation(s):
-- max2_7_a = (sub2_sub10_2_anx23445z1 & ((r9_7_a))) # (!sub2_sub10_2_anx23445z1 & (r11_7_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r11_7_a,
	datac => r9_7_a,
	datad => sub2_sub10_2_anx23445z1,
	combout => max2_7_a);

-- Location: LCFF_X47_Y30_N1
reg_r9_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => max2_7_a,
	sdata => add2_add9_5_anx44952z1,
	sload => v_2_a,
	ena => nx25299z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r9_7_a);

-- Location: LCFF_X47_Y30_N15
reg_r11_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add2_add9_5_anx43955z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r11_6_a);

-- Location: LCFF_X47_Y30_N13
reg_r11_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add2_add9_5_anx42958z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r11_5_a);

-- Location: LCFF_X47_Y30_N11
reg_r11_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add2_add9_5_anx41961z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r11_4_a);

-- Location: LCFF_X47_Y30_N9
reg_r11_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add2_add9_5_anx40964z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r11_3_a);

-- Location: LCCOMB_X45_Y30_N4
ix31281z52923 : cycloneii_lcell_comb
-- Equation(s):
-- max2_2_a = (sub2_sub10_2_anx23445z1 & ((r9_2_a))) # (!sub2_sub10_2_anx23445z1 & (r11_2_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r11_2_a,
	datac => r9_2_a,
	datad => sub2_sub10_2_anx23445z1,
	combout => max2_2_a);

-- Location: LCFF_X45_Y30_N5
reg_r9_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => max2_2_a,
	sdata => add2_add9_5_anx39967z1,
	sload => v_2_a,
	ena => nx25299z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r9_2_a);

-- Location: LCCOMB_X45_Y30_N6
ix32278z52923 : cycloneii_lcell_comb
-- Equation(s):
-- max2_1_a = (sub2_sub10_2_anx23445z1 & ((r9_1_a))) # (!sub2_sub10_2_anx23445z1 & (r11_1_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r11_1_a,
	datac => r9_1_a,
	datad => sub2_sub10_2_anx23445z1,
	combout => max2_1_a);

-- Location: LCFF_X45_Y30_N7
reg_r9_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => max2_1_a,
	sdata => add2_add9_5_anx38970z1,
	sload => v_2_a,
	ena => nx25299z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r9_1_a);

-- Location: LCFF_X47_Y30_N3
reg_r11_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add2_add9_5_anx37973z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r11_0_a);

-- Location: LCCOMB_X46_Y30_N0
sub2_sub10_2_aix23445z52933 : cycloneii_lcell_comb
-- Equation(s):
-- sub2_sub10_2_anx23445z28 = CARRY((r9_0_a) # (!r11_0_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r9_0_a,
	datab => r11_0_a,
	datad => VCC,
	cout => sub2_sub10_2_anx23445z28);

-- Location: LCCOMB_X46_Y30_N2
sub2_sub10_2_aix23445z52932 : cycloneii_lcell_comb
-- Equation(s):
-- sub2_sub10_2_anx23445z25 = CARRY((r11_1_a & ((!sub2_sub10_2_anx23445z28) # (!r9_1_a))) # (!r11_1_a & (!r9_1_a & !sub2_sub10_2_anx23445z28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r11_1_a,
	datab => r9_1_a,
	datad => VCC,
	cin => sub2_sub10_2_anx23445z28,
	cout => sub2_sub10_2_anx23445z25);

-- Location: LCCOMB_X46_Y30_N4
sub2_sub10_2_aix23445z52931 : cycloneii_lcell_comb
-- Equation(s):
-- sub2_sub10_2_anx23445z22 = CARRY((r11_2_a & (r9_2_a & !sub2_sub10_2_anx23445z25)) # (!r11_2_a & ((r9_2_a) # (!sub2_sub10_2_anx23445z25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r11_2_a,
	datab => r9_2_a,
	datad => VCC,
	cin => sub2_sub10_2_anx23445z25,
	cout => sub2_sub10_2_anx23445z22);

-- Location: LCCOMB_X46_Y30_N6
sub2_sub10_2_aix23445z52930 : cycloneii_lcell_comb
-- Equation(s):
-- sub2_sub10_2_anx23445z19 = CARRY((r9_3_a & (r11_3_a & !sub2_sub10_2_anx23445z22)) # (!r9_3_a & ((r11_3_a) # (!sub2_sub10_2_anx23445z22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r9_3_a,
	datab => r11_3_a,
	datad => VCC,
	cin => sub2_sub10_2_anx23445z22,
	cout => sub2_sub10_2_anx23445z19);

-- Location: LCCOMB_X46_Y30_N8
sub2_sub10_2_aix23445z52929 : cycloneii_lcell_comb
-- Equation(s):
-- sub2_sub10_2_anx23445z16 = CARRY((r9_4_a & ((!sub2_sub10_2_anx23445z19) # (!r11_4_a))) # (!r9_4_a & (!r11_4_a & !sub2_sub10_2_anx23445z19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r9_4_a,
	datab => r11_4_a,
	datad => VCC,
	cin => sub2_sub10_2_anx23445z19,
	cout => sub2_sub10_2_anx23445z16);

-- Location: LCCOMB_X46_Y30_N10
sub2_sub10_2_aix23445z52928 : cycloneii_lcell_comb
-- Equation(s):
-- sub2_sub10_2_anx23445z13 = CARRY((r9_5_a & (r11_5_a & !sub2_sub10_2_anx23445z16)) # (!r9_5_a & ((r11_5_a) # (!sub2_sub10_2_anx23445z16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r9_5_a,
	datab => r11_5_a,
	datad => VCC,
	cin => sub2_sub10_2_anx23445z16,
	cout => sub2_sub10_2_anx23445z13);

-- Location: LCCOMB_X46_Y30_N12
sub2_sub10_2_aix23445z52927 : cycloneii_lcell_comb
-- Equation(s):
-- sub2_sub10_2_anx23445z10 = CARRY((r9_6_a & ((!sub2_sub10_2_anx23445z13) # (!r11_6_a))) # (!r9_6_a & (!r11_6_a & !sub2_sub10_2_anx23445z13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r9_6_a,
	datab => r11_6_a,
	datad => VCC,
	cin => sub2_sub10_2_anx23445z13,
	cout => sub2_sub10_2_anx23445z10);

-- Location: LCCOMB_X46_Y30_N14
sub2_sub10_2_aix23445z52926 : cycloneii_lcell_comb
-- Equation(s):
-- sub2_sub10_2_anx23445z7 = CARRY((r11_7_a & ((!sub2_sub10_2_anx23445z10) # (!r9_7_a))) # (!r11_7_a & (!r9_7_a & !sub2_sub10_2_anx23445z10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r11_7_a,
	datab => r9_7_a,
	datad => VCC,
	cin => sub2_sub10_2_anx23445z10,
	cout => sub2_sub10_2_anx23445z7);

-- Location: LCCOMB_X46_Y30_N16
sub2_sub10_2_aix23445z52925 : cycloneii_lcell_comb
-- Equation(s):
-- sub2_sub10_2_anx23445z4 = CARRY((r9_8_a & ((!sub2_sub10_2_anx23445z7) # (!r11_8_a))) # (!r9_8_a & (!r11_8_a & !sub2_sub10_2_anx23445z7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r9_8_a,
	datab => r11_8_a,
	datad => VCC,
	cin => sub2_sub10_2_anx23445z7,
	cout => sub2_sub10_2_anx23445z4);

-- Location: LCCOMB_X46_Y30_N18
sub2_sub10_2_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- sub2_sub10_2_anx23445z1 = (r9_9_a & ((sub2_sub10_2_anx23445z4) # (!r11_9_a))) # (!r9_9_a & (sub2_sub10_2_anx23445z4 & !r11_9_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r9_9_a,
	datad => r11_9_a,
	cin => sub2_sub10_2_anx23445z4,
	combout => sub2_sub10_2_anx23445z1);

-- Location: LCCOMB_X47_Y30_N22
ix25299z52923 : cycloneii_lcell_comb
-- Equation(s):
-- max2_8_a = (sub2_sub10_2_anx23445z1 & ((r9_8_a))) # (!sub2_sub10_2_anx23445z1 & (r11_8_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r11_8_a,
	datac => r9_8_a,
	datad => sub2_sub10_2_anx23445z1,
	combout => max2_8_a);

-- Location: LCFF_X47_Y30_N23
reg_r9_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => max2_8_a,
	sdata => add2_add9_5_anx45949z1,
	sload => v_2_a,
	ena => nx25299z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r9_8_a);

-- Location: LCFF_X48_Y30_N19
reg_r12_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r12_8_afeeder_combout,
	sdata => r9_8_a,
	sload => sub2_sub10_2_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r12_8_a);

-- Location: LCCOMB_X48_Y29_N18
r14_11_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r14_11_afeeder_combout = r12_8_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r12_8_a,
	combout => r14_11_afeeder_combout);

-- Location: LCCOMB_X48_Y30_N16
r12_9_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r12_9_afeeder_combout = r11_9_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r11_9_a,
	combout => r12_9_afeeder_combout);

-- Location: LCFF_X48_Y30_N17
reg_r12_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r12_9_afeeder_combout,
	sdata => r9_9_a,
	sload => sub2_sub10_2_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r12_9_a);

-- Location: LCCOMB_X48_Y30_N4
r12_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r12_7_afeeder_combout = r11_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r11_7_a,
	combout => r12_7_afeeder_combout);

-- Location: LCFF_X48_Y30_N5
reg_r12_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r12_7_afeeder_combout,
	sdata => r9_7_a,
	sload => sub2_sub10_2_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r12_7_a);

-- Location: LCCOMB_X48_Y30_N26
r12_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r12_4_afeeder_combout = r11_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r11_4_a,
	combout => r12_4_afeeder_combout);

-- Location: LCCOMB_X47_Y30_N30
ix29287z52923 : cycloneii_lcell_comb
-- Equation(s):
-- max2_4_a = (sub2_sub10_2_anx23445z1 & ((r9_4_a))) # (!sub2_sub10_2_anx23445z1 & (r11_4_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r11_4_a,
	datac => r9_4_a,
	datad => sub2_sub10_2_anx23445z1,
	combout => max2_4_a);

-- Location: LCFF_X47_Y30_N31
reg_r9_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => max2_4_a,
	sdata => add2_add9_5_anx41961z1,
	sload => v_2_a,
	ena => nx25299z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r9_4_a);

-- Location: LCFF_X48_Y30_N27
reg_r12_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r12_4_afeeder_combout,
	sdata => r9_4_a,
	sload => sub2_sub10_2_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r12_4_a);

-- Location: LCCOMB_X48_Y30_N12
r12_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r12_3_afeeder_combout = r11_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r11_3_a,
	combout => r12_3_afeeder_combout);

-- Location: LCCOMB_X45_Y30_N2
ix30284z52923 : cycloneii_lcell_comb
-- Equation(s):
-- max2_3_a = (sub2_sub10_2_anx23445z1 & ((r9_3_a))) # (!sub2_sub10_2_anx23445z1 & (r11_3_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r11_3_a,
	datac => r9_3_a,
	datad => sub2_sub10_2_anx23445z1,
	combout => max2_3_a);

-- Location: LCFF_X45_Y30_N3
reg_r9_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => max2_3_a,
	sdata => add2_add9_5_anx40964z1,
	sload => v_2_a,
	ena => nx25299z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r9_3_a);

-- Location: LCFF_X48_Y30_N13
reg_r12_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r12_3_afeeder_combout,
	sdata => r9_3_a,
	sload => sub2_sub10_2_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r12_3_a);

-- Location: LCFF_X47_Y30_N7
reg_r11_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add2_add9_5_anx39967z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r11_2_a);

-- Location: LCFF_X47_Y30_N5
reg_r11_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add2_add9_5_anx38970z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r11_1_a);

-- Location: LCCOMB_X48_Y30_N24
r12_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r12_1_afeeder_combout = r11_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r11_1_a,
	combout => r12_1_afeeder_combout);

-- Location: LCFF_X48_Y30_N25
reg_r12_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r12_1_afeeder_combout,
	sdata => r9_1_a,
	sload => sub2_sub10_2_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r12_1_a);

-- Location: LCCOMB_X48_Y30_N10
r12_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r12_0_afeeder_combout = r11_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r11_0_a,
	combout => r12_0_afeeder_combout);

-- Location: LCCOMB_X45_Y30_N8
ix33275z52923 : cycloneii_lcell_comb
-- Equation(s):
-- max2_0_a = (sub2_sub10_2_anx23445z1 & ((r9_0_a))) # (!sub2_sub10_2_anx23445z1 & (r11_0_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r11_0_a,
	datac => r9_0_a,
	datad => sub2_sub10_2_anx23445z1,
	combout => max2_0_a);

-- Location: LCFF_X45_Y30_N9
reg_r9_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => max2_0_a,
	sdata => add2_add9_5_anx37973z1,
	sload => v_2_a,
	ena => nx25299z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r9_0_a);

-- Location: LCFF_X48_Y30_N11
reg_r12_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r12_0_afeeder_combout,
	sdata => r9_0_a,
	sload => sub2_sub10_2_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r12_0_a);

-- Location: LCCOMB_X47_Y29_N12
sub3_sub10_3_aix23445z52933 : cycloneii_lcell_comb
-- Equation(s):
-- sub3_sub10_3_anx23445z28 = CARRY((r11_0_a) # (!r12_0_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r11_0_a,
	datab => r12_0_a,
	datad => VCC,
	cout => sub3_sub10_3_anx23445z28);

-- Location: LCCOMB_X47_Y29_N14
sub3_sub10_3_aix23445z52932 : cycloneii_lcell_comb
-- Equation(s):
-- sub3_sub10_3_anx23445z25 = CARRY((r11_1_a & (r12_1_a & !sub3_sub10_3_anx23445z28)) # (!r11_1_a & ((r12_1_a) # (!sub3_sub10_3_anx23445z28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r11_1_a,
	datab => r12_1_a,
	datad => VCC,
	cin => sub3_sub10_3_anx23445z28,
	cout => sub3_sub10_3_anx23445z25);

-- Location: LCCOMB_X47_Y29_N16
sub3_sub10_3_aix23445z52931 : cycloneii_lcell_comb
-- Equation(s):
-- sub3_sub10_3_anx23445z22 = CARRY((r12_2_a & (r11_2_a & !sub3_sub10_3_anx23445z25)) # (!r12_2_a & ((r11_2_a) # (!sub3_sub10_3_anx23445z25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r12_2_a,
	datab => r11_2_a,
	datad => VCC,
	cin => sub3_sub10_3_anx23445z25,
	cout => sub3_sub10_3_anx23445z22);

-- Location: LCCOMB_X47_Y29_N18
sub3_sub10_3_aix23445z52930 : cycloneii_lcell_comb
-- Equation(s):
-- sub3_sub10_3_anx23445z19 = CARRY((r11_3_a & (r12_3_a & !sub3_sub10_3_anx23445z22)) # (!r11_3_a & ((r12_3_a) # (!sub3_sub10_3_anx23445z22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r11_3_a,
	datab => r12_3_a,
	datad => VCC,
	cin => sub3_sub10_3_anx23445z22,
	cout => sub3_sub10_3_anx23445z19);

-- Location: LCCOMB_X47_Y29_N20
sub3_sub10_3_aix23445z52929 : cycloneii_lcell_comb
-- Equation(s):
-- sub3_sub10_3_anx23445z16 = CARRY((r11_4_a & ((!sub3_sub10_3_anx23445z19) # (!r12_4_a))) # (!r11_4_a & (!r12_4_a & !sub3_sub10_3_anx23445z19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r11_4_a,
	datab => r12_4_a,
	datad => VCC,
	cin => sub3_sub10_3_anx23445z19,
	cout => sub3_sub10_3_anx23445z16);

-- Location: LCCOMB_X47_Y29_N22
sub3_sub10_3_aix23445z52928 : cycloneii_lcell_comb
-- Equation(s):
-- sub3_sub10_3_anx23445z13 = CARRY((r12_5_a & ((!sub3_sub10_3_anx23445z16) # (!r11_5_a))) # (!r12_5_a & (!r11_5_a & !sub3_sub10_3_anx23445z16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r12_5_a,
	datab => r11_5_a,
	datad => VCC,
	cin => sub3_sub10_3_anx23445z16,
	cout => sub3_sub10_3_anx23445z13);

-- Location: LCCOMB_X47_Y29_N24
sub3_sub10_3_aix23445z52927 : cycloneii_lcell_comb
-- Equation(s):
-- sub3_sub10_3_anx23445z10 = CARRY((r12_6_a & (r11_6_a & !sub3_sub10_3_anx23445z13)) # (!r12_6_a & ((r11_6_a) # (!sub3_sub10_3_anx23445z13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r12_6_a,
	datab => r11_6_a,
	datad => VCC,
	cin => sub3_sub10_3_anx23445z13,
	cout => sub3_sub10_3_anx23445z10);

-- Location: LCCOMB_X47_Y29_N26
sub3_sub10_3_aix23445z52926 : cycloneii_lcell_comb
-- Equation(s):
-- sub3_sub10_3_anx23445z7 = CARRY((r11_7_a & (r12_7_a & !sub3_sub10_3_anx23445z10)) # (!r11_7_a & ((r12_7_a) # (!sub3_sub10_3_anx23445z10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r11_7_a,
	datab => r12_7_a,
	datad => VCC,
	cin => sub3_sub10_3_anx23445z10,
	cout => sub3_sub10_3_anx23445z7);

-- Location: LCCOMB_X47_Y29_N28
sub3_sub10_3_aix23445z52925 : cycloneii_lcell_comb
-- Equation(s):
-- sub3_sub10_3_anx23445z4 = CARRY((r11_8_a & ((!sub3_sub10_3_anx23445z7) # (!r12_8_a))) # (!r11_8_a & (!r12_8_a & !sub3_sub10_3_anx23445z7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r11_8_a,
	datab => r12_8_a,
	datad => VCC,
	cin => sub3_sub10_3_anx23445z7,
	cout => sub3_sub10_3_anx23445z4);

-- Location: LCCOMB_X47_Y29_N30
sub3_sub10_3_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- sub3_sub10_3_anx23445z1 = (r11_9_a & ((sub3_sub10_3_anx23445z4) # (!r12_9_a))) # (!r11_9_a & (sub3_sub10_3_anx23445z4 & !r12_9_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r11_9_a,
	datad => r12_9_a,
	cin => sub3_sub10_3_anx23445z4,
	combout => sub3_sub10_3_anx23445z1);

-- Location: LCFF_X48_Y29_N19
reg_r14_11_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r14_11_afeeder_combout,
	sdata => r11_8_a,
	sload => sub3_sub10_3_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r14_11_a);

-- Location: LCCOMB_X47_Y29_N8
r14_10_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r14_10_afeeder_combout = r12_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r12_7_a,
	combout => r14_10_afeeder_combout);

-- Location: LCFF_X47_Y29_N9
reg_r14_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r14_10_afeeder_combout,
	sdata => r11_7_a,
	sload => sub3_sub10_3_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r14_10_a);

-- Location: LCFF_X44_Y29_N19
reg_r15_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add4_add11_6_anx45949z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r15_9_a);

-- Location: LCFF_X44_Y29_N17
reg_r15_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add4_add11_6_anx44952z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r15_8_a);

-- Location: LCCOMB_X48_Y29_N8
r14_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r14_7_afeeder_combout = r12_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r12_4_a,
	combout => r14_7_afeeder_combout);

-- Location: LCFF_X48_Y29_N9
reg_r14_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r14_7_afeeder_combout,
	sdata => r11_4_a,
	sload => sub3_sub10_3_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r14_7_a);

-- Location: LCCOMB_X48_Y29_N10
r14_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r14_6_afeeder_combout = r12_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r12_3_a,
	combout => r14_6_afeeder_combout);

-- Location: LCFF_X48_Y29_N11
reg_r14_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r14_6_afeeder_combout,
	sdata => r11_3_a,
	sload => sub3_sub10_3_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r14_6_a);

-- Location: LCFF_X44_Y29_N11
reg_r15_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add4_add11_6_anx41961z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r15_5_a);

-- Location: LCCOMB_X48_Y29_N4
r14_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- r14_4_afeeder_combout = r12_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r12_1_a,
	combout => r14_4_afeeder_combout);

-- Location: LCFF_X48_Y29_N5
reg_r14_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => r14_4_afeeder_combout,
	sdata => r11_1_a,
	sload => sub3_sub10_3_anx23445z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r14_4_a);

-- Location: LCFF_X44_Y29_N7
reg_r15_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add4_add11_6_anx39967z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r15_3_a);

-- Location: LCFF_X44_Y29_N5
reg_r15_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add4_add11_6_anx38970z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r15_2_a);

-- Location: LCFF_X44_Y29_N3
reg_r15_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => add4_add11_6_anx37973z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r15_1_a);

-- Location: LCCOMB_X45_Y29_N6
ix36874z50555_aix63795z52935 : cycloneii_lcell_comb
-- Equation(s):
-- ix36874z50555_anx63795z11 = CARRY((!r15_0_a & !r15_1_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r15_0_a,
	datab => r15_1_a,
	datad => VCC,
	cout => ix36874z50555_anx63795z11);

-- Location: LCCOMB_X45_Y29_N8
ix36874z50555_aix63795z52934 : cycloneii_lcell_comb
-- Equation(s):
-- ix36874z50555_anx63795z10 = CARRY((r15_2_a) # (!ix36874z50555_anx63795z11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r15_2_a,
	datad => VCC,
	cin => ix36874z50555_anx63795z11,
	cout => ix36874z50555_anx63795z10);

-- Location: LCCOMB_X45_Y29_N10
ix36874z50555_aix63795z52933 : cycloneii_lcell_comb
-- Equation(s):
-- ix36874z50555_anx63795z9 = CARRY((r14_3_a & ((!ix36874z50555_anx63795z10) # (!r15_3_a))) # (!r14_3_a & (!r15_3_a & !ix36874z50555_anx63795z10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r14_3_a,
	datab => r15_3_a,
	datad => VCC,
	cin => ix36874z50555_anx63795z10,
	cout => ix36874z50555_anx63795z9);

-- Location: LCCOMB_X45_Y29_N12
ix36874z50555_aix63795z52932 : cycloneii_lcell_comb
-- Equation(s):
-- ix36874z50555_anx63795z8 = CARRY((r15_4_a & ((!ix36874z50555_anx63795z9) # (!r14_4_a))) # (!r15_4_a & (!r14_4_a & !ix36874z50555_anx63795z9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r15_4_a,
	datab => r14_4_a,
	datad => VCC,
	cin => ix36874z50555_anx63795z9,
	cout => ix36874z50555_anx63795z8);

-- Location: LCCOMB_X45_Y29_N14
ix36874z50555_aix63795z52931 : cycloneii_lcell_comb
-- Equation(s):
-- ix36874z50555_anx63795z7 = CARRY((r14_5_a & ((!ix36874z50555_anx63795z8) # (!r15_5_a))) # (!r14_5_a & (!r15_5_a & !ix36874z50555_anx63795z8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r14_5_a,
	datab => r15_5_a,
	datad => VCC,
	cin => ix36874z50555_anx63795z8,
	cout => ix36874z50555_anx63795z7);

-- Location: LCCOMB_X45_Y29_N16
ix36874z50555_aix63795z52930 : cycloneii_lcell_comb
-- Equation(s):
-- ix36874z50555_anx63795z6 = CARRY((r15_6_a & ((!ix36874z50555_anx63795z7) # (!r14_6_a))) # (!r15_6_a & (!r14_6_a & !ix36874z50555_anx63795z7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r15_6_a,
	datab => r14_6_a,
	datad => VCC,
	cin => ix36874z50555_anx63795z7,
	cout => ix36874z50555_anx63795z6);

-- Location: LCCOMB_X45_Y29_N18
ix36874z50555_aix63795z52929 : cycloneii_lcell_comb
-- Equation(s):
-- ix36874z50555_ad_6_a = ((r15_7_a $ (r14_7_a $ (ix36874z50555_anx63795z6)))) # (GND)
-- ix36874z50555_anx63795z5 = CARRY((r15_7_a & (r14_7_a & !ix36874z50555_anx63795z6)) # (!r15_7_a & ((r14_7_a) # (!ix36874z50555_anx63795z6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r15_7_a,
	datab => r14_7_a,
	datad => VCC,
	cin => ix36874z50555_anx63795z6,
	combout => ix36874z50555_ad_6_a,
	cout => ix36874z50555_anx63795z5);

-- Location: LCCOMB_X45_Y29_N20
ix36874z50555_aix63795z52928 : cycloneii_lcell_comb
-- Equation(s):
-- ix36874z50555_ad_7_a = (r14_8_a & ((r15_8_a & (!ix36874z50555_anx63795z5)) # (!r15_8_a & (ix36874z50555_anx63795z5 & VCC)))) # (!r14_8_a & ((r15_8_a & ((ix36874z50555_anx63795z5) # (GND))) # (!r15_8_a & (!ix36874z50555_anx63795z5))))
-- ix36874z50555_anx63795z4 = CARRY((r14_8_a & (r15_8_a & !ix36874z50555_anx63795z5)) # (!r14_8_a & ((r15_8_a) # (!ix36874z50555_anx63795z5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r14_8_a,
	datab => r15_8_a,
	datad => VCC,
	cin => ix36874z50555_anx63795z5,
	combout => ix36874z50555_ad_7_a,
	cout => ix36874z50555_anx63795z4);

-- Location: LCCOMB_X45_Y29_N22
ix36874z50555_aix63795z52927 : cycloneii_lcell_comb
-- Equation(s):
-- ix36874z50555_ad_8_a = ((r14_9_a $ (r15_9_a $ (ix36874z50555_anx63795z4)))) # (GND)
-- ix36874z50555_anx63795z3 = CARRY((r14_9_a & ((!ix36874z50555_anx63795z4) # (!r15_9_a))) # (!r14_9_a & (!r15_9_a & !ix36874z50555_anx63795z4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r14_9_a,
	datab => r15_9_a,
	datad => VCC,
	cin => ix36874z50555_anx63795z4,
	combout => ix36874z50555_ad_8_a,
	cout => ix36874z50555_anx63795z3);

-- Location: LCCOMB_X45_Y29_N24
ix36874z50555_aix63795z52926 : cycloneii_lcell_comb
-- Equation(s):
-- ix36874z50555_ad_9_a = (r15_10_a & ((r14_10_a & (!ix36874z50555_anx63795z3)) # (!r14_10_a & ((ix36874z50555_anx63795z3) # (GND))))) # (!r15_10_a & ((r14_10_a & (ix36874z50555_anx63795z3 & VCC)) # (!r14_10_a & (!ix36874z50555_anx63795z3))))
-- ix36874z50555_anx63795z2 = CARRY((r15_10_a & ((!ix36874z50555_anx63795z3) # (!r14_10_a))) # (!r15_10_a & (!r14_10_a & !ix36874z50555_anx63795z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r15_10_a,
	datab => r14_10_a,
	datad => VCC,
	cin => ix36874z50555_anx63795z3,
	combout => ix36874z50555_ad_9_a,
	cout => ix36874z50555_anx63795z2);

-- Location: LCCOMB_X45_Y29_N26
ix36874z50555_aix63795z52925 : cycloneii_lcell_comb
-- Equation(s):
-- ix36874z50555_ad_10_a = ((r15_11_a $ (r14_11_a $ (ix36874z50555_anx63795z2)))) # (GND)
-- ix36874z50555_anx63795z1 = CARRY((r15_11_a & (r14_11_a & !ix36874z50555_anx63795z2)) # (!r15_11_a & ((r14_11_a) # (!ix36874z50555_anx63795z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r15_11_a,
	datab => r14_11_a,
	datad => VCC,
	cin => ix36874z50555_anx63795z2,
	combout => ix36874z50555_ad_10_a,
	cout => ix36874z50555_anx63795z1);

-- Location: LCCOMB_X45_Y29_N28
ix36874z50555_aix63795z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix36874z50555_ad_11_a = (r14_12_a & ((r15_12_a & (!ix36874z50555_anx63795z1)) # (!r15_12_a & (ix36874z50555_anx63795z1 & VCC)))) # (!r14_12_a & ((r15_12_a & ((ix36874z50555_anx63795z1) # (GND))) # (!r15_12_a & (!ix36874z50555_anx63795z1))))
-- ix36874z50555_anx23445z2 = CARRY((r14_12_a & (r15_12_a & !ix36874z50555_anx63795z1)) # (!r14_12_a & ((r15_12_a) # (!ix36874z50555_anx63795z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r14_12_a,
	datab => r15_12_a,
	datad => VCC,
	cin => ix36874z50555_anx63795z1,
	combout => ix36874z50555_ad_11_a,
	cout => ix36874z50555_anx23445z2);

-- Location: LCCOMB_X46_Y29_N28
ix36874z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx36874z7 = (ix36874z50555_ad_8_a) # ((ix36874z50555_ad_6_a & ix36874z50555_ad_7_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ix36874z50555_ad_6_a,
	datac => ix36874z50555_ad_7_a,
	datad => ix36874z50555_ad_8_a,
	combout => nx36874z7);

-- Location: LCCOMB_X45_Y29_N30
ix36874z50555_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix36874z50555_anx23445z1 = !ix36874z50555_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => ix36874z50555_anx23445z2,
	combout => ix36874z50555_anx23445z1);

-- Location: LCFF_X45_Y29_N1
reg_v_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => v_6_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => v_7_a);

-- Location: LCCOMB_X46_Y29_N8
ix36874z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx36874z2 = (ix36874z50555_anx23445z1 & v_7_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ix36874z50555_anx23445z1,
	datad => v_7_a,
	combout => nx36874z2);

-- Location: LCCOMB_X46_Y29_N2
ix36874z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx36874z4 = (ix36874z50555_ad_10_a) # (ix36874z50555_ad_9_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ix36874z50555_ad_10_a,
	datad => ix36874z50555_ad_9_a,
	combout => nx36874z4);

-- Location: LCCOMB_X46_Y29_N6
ix36874z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_edge_dup0 = (nx36874z2 & ((ix36874z50555_ad_11_a) # ((nx36874z7) # (nx36874z4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ix36874z50555_ad_11_a,
	datab => nx36874z7,
	datac => nx36874z2,
	datad => nx36874z4,
	combout => o_edge_dup0);

-- Location: LCCOMB_X46_Y31_N20
ix2019z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx2019z1 = (v_1_a & (((dir2_2_a)))) # (!v_1_a & ((v_2_a & ((!sub1_sub8_1_anx23445z1))) # (!v_2_a & (dir2_2_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_1_a,
	datab => v_2_a,
	datac => dir2_2_a,
	datad => sub1_sub8_1_anx23445z1,
	combout => nx2019z1);

-- Location: LCFF_X46_Y31_N21
reg_dir2_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx2019z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dir2_2_a);

-- Location: LCCOMB_X46_Y30_N30
ix36266z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx36266z1 = (v_4_a & sub2_sub10_2_anx23445z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => v_4_a,
	datad => sub2_sub10_2_anx23445z1,
	combout => nx36266z1);

-- Location: LCFF_X46_Y31_N5
reg_dir5_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => dir2_2_a,
	sclr => nx36266z1,
	sload => VCC,
	ena => v_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dir5_0_a);

-- Location: LCCOMB_X46_Y29_N16
dir5_0_a_wirecell : cycloneii_lcell_comb
-- Equation(s):
-- dir5_0_a_wirecell_combout = !dir5_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dir5_0_a,
	combout => dir5_0_a_wirecell_combout);

-- Location: LCCOMB_X46_Y30_N24
ix36692z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx36692z2 = (v_5_a & (!v_4_a & !sub2_sub10_2_anx23445z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => v_5_a,
	datac => v_4_a,
	datad => sub2_sub10_2_anx23445z1,
	combout => nx36692z2);

-- Location: LCCOMB_X46_Y30_N22
ix36692z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx36692z1 = (!v_4_a & v_5_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_4_a,
	datac => v_5_a,
	combout => nx36692z1);

-- Location: LCFF_X46_Y29_N17
reg_dir6_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => dir5_0_a_wirecell_combout,
	sclr => nx36692z2,
	ena => nx36692z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx46108z3);

-- Location: LCCOMB_X47_Y29_N0
ix46108z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx46108z2 = (sub3_sub10_3_anx23445z1 & ((dir4_0_a) # ((!v_6_a)))) # (!sub3_sub10_3_anx23445z1 & (((!nx46108z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dir4_0_a,
	datab => nx46108z3,
	datac => v_6_a,
	datad => sub3_sub10_3_anx23445z1,
	combout => nx46108z2);

-- Location: LCCOMB_X47_Y29_N4
ix46108z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx46108z1 = (nx46108z2 & ((v_6_a) # ((dir7_0_a) # (!sub3_sub10_3_anx23445z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_6_a,
	datab => nx46108z2,
	datac => dir7_0_a,
	datad => sub3_sub10_3_anx23445z1,
	combout => nx46108z1);

-- Location: LCFF_X47_Y29_N5
reg_dir7_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx46108z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dir7_0_a);

-- Location: LCCOMB_X46_Y29_N24
ix31609z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx31609z1 = (ix36874z50555_ad_9_a) # ((ix36874z50555_ad_10_a) # ((ix36874z50555_ad_11_a) # (nx36874z7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ix36874z50555_ad_9_a,
	datab => ix36874z50555_ad_10_a,
	datac => ix36874z50555_ad_11_a,
	datad => nx36874z7,
	combout => nx31609z1);

-- Location: LCCOMB_X45_Y29_N0
ix33603z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_dir_dup0_0_a = (dir7_0_a & (ix36874z50555_anx23445z1 & (v_7_a & nx31609z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dir7_0_a,
	datab => ix36874z50555_anx23445z1,
	datac => v_7_a,
	datad => nx31609z1,
	combout => o_dir_dup0_0_a);

-- Location: LCFF_X46_Y30_N19
reg_dir5_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => sub2_sub10_2_anx23445z1,
	ena => v_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dir5_1_a);

-- Location: LCCOMB_X46_Y29_N26
dir5_1_a_wirecell : cycloneii_lcell_comb
-- Equation(s):
-- dir5_1_a_wirecell_combout = !dir5_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dir5_1_a,
	combout => dir5_1_a_wirecell_combout);

-- Location: LCFF_X46_Y29_N27
reg_dir6_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => dir5_1_a_wirecell_combout,
	sclr => nx36692z2,
	ena => nx36692z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx45111z2);

-- Location: LCCOMB_X46_Y29_N18
ix45111z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx45111z1 = (sub3_sub10_3_anx23445z1 & (!v_6_a & ((dir7_1_a)))) # (!sub3_sub10_3_anx23445z1 & (((!nx45111z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_6_a,
	datab => nx45111z2,
	datac => dir7_1_a,
	datad => sub3_sub10_3_anx23445z1,
	combout => nx45111z1);

-- Location: LCFF_X46_Y29_N19
reg_dir7_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx45111z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dir7_1_a);

-- Location: LCCOMB_X46_Y29_N12
ix32606z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_dir_dup0_1_a = (nx31609z1 & (dir7_1_a & (ix36874z50555_anx23445z1 & v_7_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx31609z1,
	datab => dir7_1_a,
	datac => ix36874z50555_anx23445z1,
	datad => v_7_a,
	combout => o_dir_dup0_1_a);

-- Location: LCCOMB_X47_Y29_N6
ix44114z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx44114z1 = (nx44114z2 & ((v_6_a) # ((dir7_2_a) # (!sub3_sub10_3_anx23445z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx44114z2,
	datab => v_6_a,
	datac => dir7_2_a,
	datad => sub3_sub10_3_anx23445z1,
	combout => nx44114z1);

-- Location: LCFF_X47_Y29_N7
reg_dir7_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx44114z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dir7_2_a);

-- Location: LCCOMB_X46_Y29_N22
ix31609z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_dir_dup0_2_a = (v_7_a & (ix36874z50555_anx23445z1 & (nx31609z1 & dir7_2_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_7_a,
	datab => ix36874z50555_anx23445z1,
	datac => nx31609z1,
	datad => dir7_2_a,
	combout => o_dir_dup0_2_a);

-- Location: LCCOMB_X51_Y32_N18
o_mode_dup0_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- o_mode_dup0_1_afeeder_combout = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => o_mode_dup0_1_afeeder_combout);

-- Location: LCFF_X51_Y32_N19
reg_mode_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => o_mode_dup0_1_afeeder_combout,
	sclr => i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_mode_dup0_1_a);

-- Location: LCCOMB_X51_Y31_N8
ix26373z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx26373z2 = (!end_of_img & ((o_mode_dup0_1_a & ((v_0_a))) # (!o_mode_dup0_1_a & (i_reset_acombout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => end_of_img,
	datab => i_reset_acombout,
	datac => v_0_a,
	datad => o_mode_dup0_1_a,
	combout => nx26373z2);

-- Location: LCCOMB_X51_Y32_N24
ix26373z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx26373z1 = (!nx26373z2 & ((end_of_img) # (nx47893z1 $ (!o_mode_dup0_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => end_of_img,
	datab => nx26373z2,
	datac => nx47893z1,
	datad => o_mode_dup0_1_a,
	combout => nx26373z1);

-- Location: LCFF_X51_Y32_N25
reg_mode_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx26373z1,
	sclr => i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx47893z1);

-- Location: LCFF_X49_Y29_N17
reg_out_o_row_obuf_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => modgen_counter_o_row_anx51271z1,
	sclr => nx17322z9,
	sload => VCC,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx16335z1);

-- Location: LCFF_X49_Y29_N11
reg_out_o_row_obuf_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => modgen_counter_o_row_anx52268z1,
	sclr => nx17322z9,
	sload => VCC,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx17332z1);

-- Location: LCFF_X49_Y29_N5
reg_out_o_row_obuf_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => modgen_counter_o_row_anx53265z1,
	sclr => nx17322z9,
	sload => VCC,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx18329z1);

-- Location: LCFF_X49_Y29_N23
reg_out_o_row_obuf_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => modgen_counter_o_row_anx54262z1,
	sclr => nx17322z9,
	sload => VCC,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx19326z1);

-- Location: LCFF_X51_Y29_N11
reg_out_o_row_obuf_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_o_row_anx55259z1,
	sclr => nx17322z9,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx20323z1);

-- Location: LCFF_X51_Y29_N13
reg_out_o_row_obuf_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_o_row_anx56256z1,
	sclr => nx17322z9,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx21320z1);

-- Location: LCFF_X51_Y29_N15
reg_out_o_row_obuf_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_o_row_anx57253z1,
	sclr => nx17322z9,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx22317z1);

-- Location: LCFF_X49_Y29_N25
reg_out_o_row_obuf_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => modgen_counter_o_row_anx58250z1,
	sclr => nx17322z9,
	sload => VCC,
	ena => modgen_counter_o_row_anx57253z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx23314z1);

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix51998z43919 : cycloneii_io
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
	datain => nx51998z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_valid);

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_edge_obuf : cycloneii_io
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
	datain => o_edge_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_edge);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_dir_obuf_0_a : cycloneii_io
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
	datain => o_dir_dup0_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_dir(0));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_dir_obuf_1_a : cycloneii_io
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
	datain => o_dir_dup0_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_dir(1));

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_dir_obuf_2_a : cycloneii_io
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
	datain => o_dir_dup0_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_dir(2));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_mode_obuf_0_a : cycloneii_io
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
	datain => ALT_INV_nx47893z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_mode(0));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_mode_obuf_1_a : cycloneii_io
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
	datain => o_mode_dup0_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_mode(1));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix16335z43919 : cycloneii_io
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
	datain => nx16335z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(0));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix17332z43919 : cycloneii_io
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
	datain => nx17332z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(1));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix18329z43919 : cycloneii_io
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
	datain => nx18329z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(2));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix19326z43919 : cycloneii_io
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
	datain => nx19326z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(3));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix20323z43919 : cycloneii_io
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
	datain => nx20323z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(4));

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix21320z43919 : cycloneii_io
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
	datain => nx21320z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(5));

-- Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix22317z43919 : cycloneii_io
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
	datain => nx22317z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(6));

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix23314z43919 : cycloneii_io
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
	datain => nx23314z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(7));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_obuf_0_a : cycloneii_io
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

-- Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_obuf_1_a : cycloneii_io
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

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_obuf_2_a : cycloneii_io
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

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_obuf_3_a : cycloneii_io
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

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_obuf_4_a : cycloneii_io
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

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_obuf_5_a : cycloneii_io
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

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_obuf_6_a : cycloneii_io
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

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_obuf_7_a : cycloneii_io
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

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_obuf_8_a : cycloneii_io
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

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_obuf_9_a : cycloneii_io
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

-- Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_obuf_10_a : cycloneii_io
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

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_obuf_11_a : cycloneii_io
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

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_obuf_12_a : cycloneii_io
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

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_obuf_13_a : cycloneii_io
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

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_obuf_14_a : cycloneii_io
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

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_obuf_15_a : cycloneii_io
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

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_obuf_16_a : cycloneii_io
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

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_obuf_17_a : cycloneii_io
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
	padio => ww_debug_led_red(17));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_grn_obuf_0_a : cycloneii_io
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

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_grn_obuf_1_a : cycloneii_io
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

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_grn_obuf_2_a : cycloneii_io
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

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_grn_obuf_3_a : cycloneii_io
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

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_grn_obuf_4_a : cycloneii_io
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

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_grn_obuf_5_a : cycloneii_io
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

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_0_obuf_0_a : cycloneii_io
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
	padio => ww_debug_num_0(0));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_0_obuf_1_a : cycloneii_io
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
	padio => ww_debug_num_0(1));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_0_obuf_2_a : cycloneii_io
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
	padio => ww_debug_num_0(2));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_0_obuf_3_a : cycloneii_io
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
	padio => ww_debug_num_0(3));

-- Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_1_obuf_0_a : cycloneii_io
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
	padio => ww_debug_num_1(0));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_1_obuf_1_a : cycloneii_io
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
	padio => ww_debug_num_1(1));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_1_obuf_2_a : cycloneii_io
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
	padio => ww_debug_num_1(2));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_1_obuf_3_a : cycloneii_io
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
	padio => ww_debug_num_1(3));

-- Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_2_obuf_0_a : cycloneii_io
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
	padio => ww_debug_num_2(0));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_2_obuf_1_a : cycloneii_io
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
	padio => ww_debug_num_2(1));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_2_obuf_2_a : cycloneii_io
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
	padio => ww_debug_num_2(2));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_2_obuf_3_a : cycloneii_io
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
	padio => ww_debug_num_2(3));

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_3_obuf_0_a : cycloneii_io
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
	padio => ww_debug_num_3(0));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_3_obuf_1_a : cycloneii_io
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
	padio => ww_debug_num_3(1));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_3_obuf_2_a : cycloneii_io
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
	padio => ww_debug_num_3(2));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_3_obuf_3_a : cycloneii_io
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
	padio => ww_debug_num_3(3));

-- Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_4_obuf_0_a : cycloneii_io
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
	padio => ww_debug_num_4(0));

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_4_obuf_1_a : cycloneii_io
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
	padio => ww_debug_num_4(1));

-- Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_4_obuf_2_a : cycloneii_io
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
	padio => ww_debug_num_4(2));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_4_obuf_3_a : cycloneii_io
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
	padio => ww_debug_num_4(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_5_obuf_0_a : cycloneii_io
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
	padio => ww_debug_num_5(0));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_5_obuf_1_a : cycloneii_io
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
	padio => ww_debug_num_5(1));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_5_obuf_2_a : cycloneii_io
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
	padio => ww_debug_num_5(2));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_5_obuf_3_a : cycloneii_io
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
	padio => ww_debug_num_5(3));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_key_a1_a_aI : cycloneii_io
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

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_key_a2_a_aI : cycloneii_io
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

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_key_a3_a_aI : cycloneii_io
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

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a0_a_aI : cycloneii_io
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

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a1_a_aI : cycloneii_io
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

-- Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a2_a_aI : cycloneii_io
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

-- Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a3_a_aI : cycloneii_io
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

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a4_a_aI : cycloneii_io
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

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a5_a_aI : cycloneii_io
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

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a6_a_aI : cycloneii_io
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

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a7_a_aI : cycloneii_io
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

-- Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a8_a_aI : cycloneii_io
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

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a9_a_aI : cycloneii_io
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

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a10_a_aI : cycloneii_io
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

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a11_a_aI : cycloneii_io
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

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a12_a_aI : cycloneii_io
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

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a13_a_aI : cycloneii_io
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

-- Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a14_a_aI : cycloneii_io
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

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a15_a_aI : cycloneii_io
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

-- Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a16_a_aI : cycloneii_io
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

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a17_a_aI : cycloneii_io
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

use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity kirsch is
  port (
      i_clock  : in STD_LOGIC
    ; i_reset  : in STD_LOGIC
    ; i_valid  : in STD_LOGIC
    ; i_pixel  : in std_logic_vector (7 downto 0)
    ; o_valid  : out STD_LOGIC
    ; o_edge  : out STD_LOGIC
    ; o_dir  : out std_logic_vector (2 downto 0)
    ; o_mode  : out std_logic_vector (1 downto 0)
    ; o_row  : out std_logic_vector (7 downto 0)
    ; debug_key  : in std_logic_vector (3 downto 1)
    ; debug_switch  : in std_logic_vector (17 downto 0)
    ; debug_led_red  : out std_logic_vector (17 downto 0)
    ; debug_led_grn  : out std_logic_vector (5 downto 0)
    ; debug_num_0  : out std_logic_vector (3 downto 0)
    ; debug_num_1  : out std_logic_vector (3 downto 0)
    ; debug_num_2  : out std_logic_vector (3 downto 0)
    ; debug_num_3  : out std_logic_vector (3 downto 0)
    ; debug_num_4  : out std_logic_vector (3 downto 0)
    ; debug_num_5  : out std_logic_vector (3 downto 0)
  );
end entity;

------------------------------------------------------------------------
-- begin uw-generated architecture
-- lower-level of shim 
------------------------------------------------------------------------

architecture shim of kirsch is
  signal VDD, VSS : std_logic; 
begin
  chip : entity work.kirsch_chip
    port map (
        i_clock => i_clock
      , i_reset => i_reset
      , i_valid => i_valid
      , i_pixel(7) => i_pixel(7)
      , i_pixel(6) => i_pixel(6)
      , i_pixel(5) => i_pixel(5)
      , i_pixel(4) => i_pixel(4)
      , i_pixel(3) => i_pixel(3)
      , i_pixel(2) => i_pixel(2)
      , i_pixel(1) => i_pixel(1)
      , i_pixel(0) => i_pixel(0)
      , o_valid => o_valid
      , o_edge => o_edge
      , o_dir(2) => o_dir(2)
      , o_dir(1) => o_dir(1)
      , o_dir(0) => o_dir(0)
      , o_mode(1) => o_mode(1)
      , o_mode(0) => o_mode(0)
      , o_row(7) => o_row(7)
      , o_row(6) => o_row(6)
      , o_row(5) => o_row(5)
      , o_row(4) => o_row(4)
      , o_row(3) => o_row(3)
      , o_row(2) => o_row(2)
      , o_row(1) => o_row(1)
      , o_row(0) => o_row(0)
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
      , debug_led_red(17) => debug_led_red(17)
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
      , debug_num_0(3) => debug_num_0(3)
      , debug_num_0(2) => debug_num_0(2)
      , debug_num_0(1) => debug_num_0(1)
      , debug_num_0(0) => debug_num_0(0)
      , debug_num_1(3) => debug_num_1(3)
      , debug_num_1(2) => debug_num_1(2)
      , debug_num_1(1) => debug_num_1(1)
      , debug_num_1(0) => debug_num_1(0)
      , debug_num_2(3) => debug_num_2(3)
      , debug_num_2(2) => debug_num_2(2)
      , debug_num_2(1) => debug_num_2(1)
      , debug_num_2(0) => debug_num_2(0)
      , debug_num_3(3) => debug_num_3(3)
      , debug_num_3(2) => debug_num_3(2)
      , debug_num_3(1) => debug_num_3(1)
      , debug_num_3(0) => debug_num_3(0)
      , debug_num_4(3) => debug_num_4(3)
      , debug_num_4(2) => debug_num_4(2)
      , debug_num_4(1) => debug_num_4(1)
      , debug_num_4(0) => debug_num_4(0)
      , debug_num_5(3) => debug_num_5(3)
      , debug_num_5(2) => debug_num_5(2)
      , debug_num_5(1) => debug_num_5(1)
      , debug_num_5(0) => debug_num_5(0)
    );
end architecture;

