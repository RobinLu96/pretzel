
-- 
-- Definition of  kirsch
-- 
--      03/19/15 18:06:43
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_11_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (10 DOWNTO 0) ;
      b : IN std_logic_vector (10 DOWNTO 0) ;
      d : OUT std_logic_vector (10 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_11_0 ;

architecture IMPLEMENTATION of add_11_0 is 
   signal nx62798z29, nx62798z26, nx62798z23, nx62798z20, nx62798z17, 
      nx62798z14, nx62798z11, nx62798z8, nx62798z5, nx62798z3, 
      nx_add_11_0_vcc_net: std_logic ;

begin
   ix62798z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), dataa=>b(10), datad=>nx_add_11_0_vcc_net, 
      cin=>nx62798z3);
   nx_add_11_0_vcc_net <= '1';
   ix62798z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx62798z3, dataa=>b(9), datad=>
      nx_add_11_0_vcc_net, cin=>nx62798z5);
   ix62798z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx62798z5, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z8);
   ix62798z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx62798z8, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z11);
   ix62798z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx62798z11, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z14);
   ix62798z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx62798z14, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z17);
   ix62798z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx62798z17, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z20);
   ix62798z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx62798z20, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z23);
   ix62798z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx62798z23, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z26);
   ix62798z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx62798z26, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_11_0_vcc_net, cin=>nx62798z29);
   ix62798z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx62798z29, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_11_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity sub_8_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_8_0 ;

architecture IMPLEMENTATION of sub_8_0 is 
   signal nx23445z22, nx23445z19, nx23445z16, nx23445z13, nx23445z10, 
      nx23445z7, nx23445z4, nx_sub_8_0_vcc_net: std_logic ;

begin
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d400",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, dataa=>b(7), datab=>a(7), datad=>
      nx_sub_8_0_vcc_net, cin=>nx23445z4);
   nx_sub_8_0_vcc_net <= '1';
   ix23445z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z4, dataa=>b(6), datab=>a(6), datad=>
      nx_sub_8_0_vcc_net, cin=>nx23445z7);
   ix23445z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z7, dataa=>b(5), datab=>a(5), datad=>
      nx_sub_8_0_vcc_net, cin=>nx23445z10);
   ix23445z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z10, dataa=>b(4), datab=>a(4), datad=>
      nx_sub_8_0_vcc_net, cin=>nx23445z13);
   ix23445z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z13, dataa=>b(3), datab=>a(3), datad=>
      nx_sub_8_0_vcc_net, cin=>nx23445z16);
   ix23445z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z16, dataa=>b(2), datab=>a(2), datad=>
      nx_sub_8_0_vcc_net, cin=>nx23445z19);
   ix23445z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z19, dataa=>b(1), datab=>a(1), datad=>
      nx_sub_8_0_vcc_net, cin=>nx23445z22);
   ix23445z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"00bb") 
       port map ( cout=>nx23445z22, dataa=>a(0), datab=>b(0), datad=>
      nx_sub_8_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity sub_10_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_10_0 ;

architecture IMPLEMENTATION of sub_10_0 is 
   signal nx23445z28, nx23445z25, nx23445z22, nx23445z19, nx23445z16, 
      nx23445z13, nx23445z10, nx23445z7, nx23445z4, nx_sub_10_0_vcc_net: 
   std_logic ;

begin
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d400",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, dataa=>b(9), datab=>a(9), datad=>
      nx_sub_10_0_vcc_net, cin=>nx23445z4);
   nx_sub_10_0_vcc_net <= '1';
   ix23445z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z4, dataa=>b(8), datab=>a(8), datad=>
      nx_sub_10_0_vcc_net, cin=>nx23445z7);
   ix23445z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z7, dataa=>b(7), datab=>a(7), datad=>
      nx_sub_10_0_vcc_net, cin=>nx23445z10);
   ix23445z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z10, dataa=>b(6), datab=>a(6), datad=>
      nx_sub_10_0_vcc_net, cin=>nx23445z13);
   ix23445z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z13, dataa=>b(5), datab=>a(5), datad=>
      nx_sub_10_0_vcc_net, cin=>nx23445z16);
   ix23445z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z16, dataa=>b(4), datab=>a(4), datad=>
      nx_sub_10_0_vcc_net, cin=>nx23445z19);
   ix23445z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z19, dataa=>b(3), datab=>a(3), datad=>
      nx_sub_10_0_vcc_net, cin=>nx23445z22);
   ix23445z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z22, dataa=>b(2), datab=>a(2), datad=>
      nx_sub_10_0_vcc_net, cin=>nx23445z25);
   ix23445z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z25, dataa=>b(1), datab=>a(1), datad=>
      nx_sub_10_0_vcc_net, cin=>nx23445z28);
   ix23445z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"00bb") 
       port map ( cout=>nx23445z28, dataa=>a(0), datab=>b(0), datad=>
      nx_sub_10_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity sub_10_1 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_10_1 ;

architecture IMPLEMENTATION of sub_10_1 is 
   signal nx23445z28, nx23445z25, nx23445z22, nx23445z19, nx23445z16, 
      nx23445z13, nx23445z10, nx23445z7, nx23445z4, nx_sub_10_1_vcc_net: 
   std_logic ;

begin
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d400",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, dataa=>b(9), datab=>a(9), datad=>
      nx_sub_10_1_vcc_net, cin=>nx23445z4);
   nx_sub_10_1_vcc_net <= '1';
   ix23445z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z4, dataa=>b(8), datab=>a(8), datad=>
      nx_sub_10_1_vcc_net, cin=>nx23445z7);
   ix23445z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z7, dataa=>b(7), datab=>a(7), datad=>
      nx_sub_10_1_vcc_net, cin=>nx23445z10);
   ix23445z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z10, dataa=>b(6), datab=>a(6), datad=>
      nx_sub_10_1_vcc_net, cin=>nx23445z13);
   ix23445z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z13, dataa=>b(5), datab=>a(5), datad=>
      nx_sub_10_1_vcc_net, cin=>nx23445z16);
   ix23445z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z16, dataa=>b(4), datab=>a(4), datad=>
      nx_sub_10_1_vcc_net, cin=>nx23445z19);
   ix23445z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z19, dataa=>b(3), datab=>a(3), datad=>
      nx_sub_10_1_vcc_net, cin=>nx23445z22);
   ix23445z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z22, dataa=>b(2), datab=>a(2), datad=>
      nx_sub_10_1_vcc_net, cin=>nx23445z25);
   ix23445z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z25, dataa=>b(1), datab=>a(1), datad=>
      nx_sub_10_1_vcc_net, cin=>nx23445z28);
   ix23445z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"00bb") 
       port map ( cout=>nx23445z28, dataa=>a(0), datab=>b(0), datad=>
      nx_sub_10_1_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_8_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_8_0 ;

architecture IMPLEMENTATION of modgen_counter_8_0 is 
   signal nx57253z3, nx1041z1, nx58250z3, nx58250z5, nx58250z7, nx58250z9, 
      nx58250z11, nx58250z13, nx58250z15, nx51271z1, nx58250z14, nx52268z1, 
      nx58250z12, nx53265z1, nx58250z10, nx54262z1, nx58250z8, nx55259z1, 
      nx58250z6, nx56256z1, nx58250z4, nx57253z1, nx58250z2, nx58250z1, 
      nx_modgen_counter_8_0_vcc_net: std_logic ;

begin
   q(7) <= nx1041z1 ;
   q(6) <= nx58250z3 ;
   q(5) <= nx58250z5 ;
   q(4) <= nx58250z7 ;
   q(3) <= nx58250z9 ;
   q(2) <= nx58250z11 ;
   q(1) <= nx58250z13 ;
   q(0) <= nx58250z15 ;
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx1041z1, datain=>
      nx58250z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx58250z3, datain=>
      nx57253z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx58250z5, datain=>
      nx56256z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx58250z7, datain=>
      nx55259z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx58250z9, datain=>
      nx54262z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx58250z11, datain=>
      nx53265z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx58250z13, datain=>
      nx52268z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx58250z15, datain=>
      nx51271z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   ix58250z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx58250z10, dataa=>nx58250z11, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z12);
   nx_modgen_counter_8_0_vcc_net <= '1';
   ix58250z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, dataa=>nx1041z1, datad=>
      nx_modgen_counter_8_0_vcc_net, cin=>nx58250z2);
   ix58250z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx58250z2, dataa=>nx58250z3, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z4);
   ix58250z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx58250z12, dataa=>nx58250z13, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z14);
   ix58250z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx58250z4, dataa=>nx58250z5, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z6);
   ix58250z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx58250z6, dataa=>nx58250z7, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z8);
   ix58250z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx58250z8, dataa=>nx58250z9, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z10);
   ix58250z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx58250z14, dataa=>nx58250z15, 
      datad=>nx_modgen_counter_8_0_vcc_net);
   ix57253z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx57253z3, dataa=>cnt_en, datab=>sclear);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_8_1 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic ;
      px50 : OUT std_logic ;
      px23 : OUT std_logic ;
      px46 : OUT std_logic ;
      px24 : OUT std_logic ;
      px17 : OUT std_logic ;
      px13 : OUT std_logic ;
      px9 : OUT std_logic ;
      px5 : OUT std_logic ;
      px1 : OUT std_logic) ;
end modgen_counter_8_1 ;

architecture IMPLEMENTATION of modgen_counter_8_1 is 
   signal nx57253z3, nx1041z1, nx58250z3, nx58250z5, nx58250z7, nx58250z9, 
      nx58250z11, nx58250z13, nx58250z15, nx51271z1, nx58250z14, nx52268z1, 
      nx58250z12, nx53265z1, nx58250z10, nx54262z1, nx58250z8, nx55259z1, 
      nx58250z6, nx56256z1, nx58250z4, nx57253z1, nx58250z2, nx58250z1, 
      nx_modgen_counter_8_1_vcc_net: std_logic ;

begin
   q(7) <= nx1041z1 ;
   q(6) <= nx58250z3 ;
   q(5) <= nx58250z5 ;
   q(4) <= nx58250z7 ;
   q(3) <= nx58250z9 ;
   q(2) <= nx58250z11 ;
   q(1) <= nx58250z13 ;
   q(0) <= nx58250z15 ;
   px50 <= nx58250z1 ;
   px23 <= nx57253z3 ;
   px46 <= nx57253z1 ;
   px24 <= nx56256z1 ;
   px17 <= nx55259z1 ;
   px13 <= nx54262z1 ;
   px9 <= nx53265z1 ;
   px5 <= nx52268z1 ;
   px1 <= nx51271z1 ;
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx1041z1, datain=>
      nx58250z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx58250z3, datain=>
      nx57253z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx58250z5, datain=>
      nx56256z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx58250z7, datain=>
      nx55259z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx58250z9, datain=>
      nx54262z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx58250z11, datain=>
      nx53265z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx58250z13, datain=>
      nx52268z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx58250z15, datain=>
      nx51271z1, clk=>clock, ena=>nx57253z3, sclr=>sclear);
   ix58250z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx58250z10, dataa=>nx58250z11, 
      datad=>nx_modgen_counter_8_1_vcc_net, cin=>nx58250z12);
   nx_modgen_counter_8_1_vcc_net <= '1';
   ix58250z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, dataa=>nx1041z1, datad=>
      nx_modgen_counter_8_1_vcc_net, cin=>nx58250z2);
   ix58250z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx58250z2, dataa=>nx58250z3, 
      datad=>nx_modgen_counter_8_1_vcc_net, cin=>nx58250z4);
   ix58250z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx58250z12, dataa=>nx58250z13, 
      datad=>nx_modgen_counter_8_1_vcc_net, cin=>nx58250z14);
   ix58250z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx58250z4, dataa=>nx58250z5, 
      datad=>nx_modgen_counter_8_1_vcc_net, cin=>nx58250z6);
   ix58250z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx58250z6, dataa=>nx58250z7, 
      datad=>nx_modgen_counter_8_1_vcc_net, cin=>nx58250z8);
   ix58250z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx58250z8, dataa=>nx58250z9, 
      datad=>nx_modgen_counter_8_1_vcc_net, cin=>nx58250z10);
   ix58250z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx58250z14, dataa=>nx58250z15, 
      datad=>nx_modgen_counter_8_1_vcc_net);
   ix57253z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a8a8") 
       port map ( combout=>nx57253z3, dataa=>clk_en, datab=>sclear, datac=>
      cnt_en);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_8_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_8_0 ;

architecture IMPLEMENTATION of add_8_0 is 
   signal nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, 
      nx44952z7, nx44952z4, nx23445z2, nx_add_8_0_vcc_net: std_logic ;

begin
   ix44952z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx23445z2, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z4);
   nx_add_8_0_vcc_net <= '1';
   ix44952z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx44952z4, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z7);
   ix44952z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx44952z7, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z10);
   ix44952z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx44952z10, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z13);
   ix44952z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx44952z13, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z16);
   ix44952z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx44952z16, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z19);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_8_0_vcc_net, cin=>nx23445z2);
   ix44952z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx44952z19, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z22);
   ix44952z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx44952z22, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_8_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_9_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9_0 ;

architecture IMPLEMENTATION of add_9_0 is 
   signal nx45949z24, nx45949z21, nx45949z18, nx45949z15, nx45949z12, 
      nx45949z9, nx45949z6, nx45949z3, nx23445z2, nx_add_9_0_vcc_net: 
   std_logic ;

begin
   ix45949z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx23445z2, dataa=>b(8), datad=>
      nx_add_9_0_vcc_net, cin=>nx45949z3);
   nx_add_9_0_vcc_net <= '1';
   ix45949z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx45949z3, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z6);
   ix45949z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx45949z6, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z9);
   ix45949z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx45949z9, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z12);
   ix45949z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx45949z12, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z15);
   ix45949z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx45949z15, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z18);
   ix45949z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx45949z18, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z21);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_9_0_vcc_net, cin=>nx23445z2);
   ix45949z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx45949z21, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z24);
   ix45949z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx45949z24, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_9_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_11_1 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (10 DOWNTO 0) ;
      b : IN std_logic_vector (10 DOWNTO 0) ;
      d : OUT std_logic_vector (10 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_11_1 ;

architecture IMPLEMENTATION of add_11_1 is 
   signal nx62798z21, nx62798z19, nx62798z17, nx62798z15, nx62798z13, 
      nx62798z11, nx62798z9, nx62798z7, nx62798z5, nx62798z3, nx23445z2, 
      nx_add_11_1_vcc_net: std_logic ;

begin
   ix62798z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx23445z2, dataa=>a(9), datad=>
      nx_add_11_1_vcc_net, cin=>nx62798z3);
   nx_add_11_1_vcc_net <= '1';
   ix62798z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx62798z3, dataa=>a(8), datab=>a(9), 
      datad=>nx_add_11_1_vcc_net, cin=>nx62798z5);
   ix62798z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx62798z5, dataa=>a(7), datab=>a(8), 
      datad=>nx_add_11_1_vcc_net, cin=>nx62798z7);
   ix62798z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx62798z7, dataa=>a(6), datab=>a(7), 
      datad=>nx_add_11_1_vcc_net, cin=>nx62798z9);
   ix62798z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx62798z9, dataa=>a(5), datab=>a(6), 
      datad=>nx_add_11_1_vcc_net, cin=>nx62798z11);
   ix62798z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx62798z11, dataa=>a(4), datab=>a(5), 
      datad=>nx_add_11_1_vcc_net, cin=>nx62798z13);
   ix62798z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx62798z13, dataa=>a(3), datab=>a(4), 
      datad=>nx_add_11_1_vcc_net, cin=>nx62798z15);
   ix62798z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx62798z15, dataa=>a(2), datab=>a(3), 
      datad=>nx_add_11_1_vcc_net, cin=>nx62798z17);
   ix62798z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx62798z17, dataa=>a(1), datab=>a(2), 
      datad=>nx_add_11_1_vcc_net, cin=>nx62798z19);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_11_1_vcc_net, cin=>nx23445z2
   );
   ix62798z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx62798z19, dataa=>a(0), datab=>a(1), 
      datad=>nx_add_11_1_vcc_net, cin=>nx62798z21);
   ix62798z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx62798z21, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_11_1_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity sub_12_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (11 DOWNTO 0) ;
      b : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic_vector (11 DOWNTO 0) ;
      cout : OUT std_logic ;
      p_r15_0 : IN std_logic) ;
end sub_12_0 ;

architecture IMPLEMENTATION of sub_12_0 is 
   signal nx63795z11, nx63795z10, nx63795z9, nx63795z8, nx63795z7, nx63795z6, 
      nx63795z5, nx63795z4, nx63795z3, nx63795z2, nx63795z1, nx23445z2, 
      nx_sub_12_0_vcc_net: std_logic ;

begin
   ix63795z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx23445z2, dataa=>b(11), datab=>
      a(11), datad=>nx_sub_12_0_vcc_net, cin=>nx63795z1);
   nx_sub_12_0_vcc_net <= '1';
   ix63795z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx63795z1, dataa=>b(10), datab=>
      a(10), datad=>nx_sub_12_0_vcc_net, cin=>nx63795z2);
   ix63795z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx63795z2, dataa=>b(9), datab=>a(9), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z3);
   ix63795z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx63795z3, dataa=>b(8), datab=>a(8), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z4);
   ix63795z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx63795z4, dataa=>b(7), datab=>a(7), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z5);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_sub_12_0_vcc_net, cin=>nx23445z2
   );
   ix63795z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx63795z5, dataa=>b(6), datab=>a(6), 
      datad=>nx_sub_12_0_vcc_net, cin=>nx63795z6);
   ix63795z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx63795z6, dataa=>b(5), datab=>a(5), datad=>
      nx_sub_12_0_vcc_net, cin=>nx63795z7);
   ix63795z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx63795z7, dataa=>b(4), datab=>a(4), datad=>
      nx_sub_12_0_vcc_net, cin=>nx63795z8);
   ix63795z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx63795z8, dataa=>b(3), datab=>a(3), datad=>
      nx_sub_12_0_vcc_net, cin=>nx63795z9);
   ix63795z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx63795z9, dataa=>b(2), datab=>a(2), datad=>
      nx_sub_12_0_vcc_net, cin=>nx63795z10);
   ix63795z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"0050",
         sum_lutc_input => "cin") 
       port map ( cout=>nx63795z10, dataa=>b(1), datad=>nx_sub_12_0_vcc_net, 
      cin=>nx63795z11);
   ix63795z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"0011") 
       port map ( cout=>nx63795z11, dataa=>p_r15_0, datab=>b(0), datad=>
      nx_sub_12_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity ram_dq_8_0 is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (7 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic) ;
end ram_dq_8_0 ;

architecture IMPLEMENTATION of ram_dq_8_0 is 
   signal ena1_EXMPLR338: std_logic ;

begin
   ix64056z29481 : altsyncram
      generic map (width_a => 8,
         widthad_a => 8,
         numwords_a => 256,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 8,
         numwords_b => 256,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "SINGLE_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "DONT_CARE"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "Stratix",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR338, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR338 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity ram_dq_8_1 is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (7 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic) ;
end ram_dq_8_1 ;

architecture IMPLEMENTATION of ram_dq_8_1 is 
   signal ena1_EXMPLR368: std_logic ;

begin
   ix64056z29482 : altsyncram
      generic map (width_a => 8,
         widthad_a => 8,
         numwords_a => 256,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 8,
         numwords_b => 256,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "SINGLE_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "DONT_CARE"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "Stratix",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR368, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR368 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity ram_dq_8_2 is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (7 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic) ;
end ram_dq_8_2 ;

architecture IMPLEMENTATION of ram_dq_8_2 is 
   signal ena1_EXMPLR398: std_logic ;

begin
   ix64056z29483 : altsyncram
      generic map (width_a => 8,
         widthad_a => 8,
         numwords_a => 256,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 8,
         numwords_b => 256,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "SINGLE_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "DONT_CARE"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "Stratix",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(7)=>addr1(7), address_a(6)=>addr1(6), address_a(5)=>addr1(5), 
      address_a(4)=>addr1(4), address_a(3)=>addr1(3), address_a(2)=>addr1(2), 
      address_a(1)=>addr1(1), address_a(0)=>addr1(0), wren_a=>wr_ena1, 
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR398, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR398 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity kirsch is 
   port (
      i_clock : IN std_logic ;
      i_reset : IN std_logic ;
      i_valid : IN std_logic ;
      i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
      o_valid : OUT std_logic ;
      o_edge : OUT std_logic ;
      o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
      o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      o_row : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_key : IN std_logic_vector (3 DOWNTO 1) ;
      debug_switch : IN std_logic_vector (17 DOWNTO 0) ;
      debug_led_red : OUT std_logic_vector (17 DOWNTO 0) ;
      debug_led_grn : OUT std_logic_vector (5 DOWNTO 0) ;
      debug_num_0 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_1 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_2 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_3 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_4 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_5 : OUT std_logic_vector (3 DOWNTO 0)) ;
end kirsch ;

architecture main of kirsch is 
   component add_11_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         b : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component sub_8_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component sub_10_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component sub_10_1
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component modgen_counter_8_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component modgen_counter_8_1
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic ;
         px50 : OUT std_logic ;
         px23 : OUT std_logic ;
         px46 : OUT std_logic ;
         px24 : OUT std_logic ;
         px17 : OUT std_logic ;
         px13 : OUT std_logic ;
         px9 : OUT std_logic ;
         px5 : OUT std_logic ;
         px1 : OUT std_logic) ;
   end component ;
   component add_8_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_9_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_11_1
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         b : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component sub_12_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic ;
         p_r15_0 : IN std_logic) ;
   end component ;
   component ram_dq_8_0
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic) ;
   end component ;
   component ram_dq_8_1
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic) ;
   end component ;
   component ram_dq_8_2
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic) ;
   end component ;
   signal i_clock_EXMPLR416, i_reset_EXMPLR417, i_valid_EXMPLR418: std_logic
    ;
   
   signal i_pixel_EXMPLR490: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_mode_dup0: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_row_dup0: std_logic_vector (7 DOWNTO 0) ;
   
   signal x: std_logic_vector (7 DOWNTO 0) ;
   
   signal t: std_logic_vector (1 DOWNTO 0) ;
   
   signal q1: std_logic_vector (7 DOWNTO 0) ;
   
   signal q2: std_logic_vector (7 DOWNTO 0) ;
   
   signal q3: std_logic_vector (7 DOWNTO 0) ;
   
   signal v: std_logic_vector (7 DOWNTO 0) ;
   
   signal a: std_logic_vector (7 DOWNTO 0) ;
   
   signal b: std_logic_vector (7 DOWNTO 0) ;
   
   signal c: std_logic_vector (7 DOWNTO 0) ;
   
   signal d: std_logic_vector (7 DOWNTO 0) ;
   
   signal e: std_logic_vector (7 DOWNTO 0) ;
   
   signal f: std_logic_vector (7 DOWNTO 0) ;
   
   signal g: std_logic_vector (7 DOWNTO 0) ;
   
   signal h: std_logic_vector (7 DOWNTO 0) ;
   
   signal i: std_logic_vector (7 DOWNTO 0) ;
   
   signal r1: std_logic_vector (7 DOWNTO 0) ;
   
   signal r2: std_logic_vector (7 DOWNTO 0) ;
   
   signal r3: std_logic_vector (7 DOWNTO 0) ;
   
   signal r4: std_logic_vector (7 DOWNTO 0) ;
   
   signal r5: std_logic_vector (7 DOWNTO 0) ;
   
   signal r7: std_logic_vector (8 DOWNTO 0) ;
   
   signal r8: std_logic_vector (10 DOWNTO 0) ;
   
   signal r9: std_logic_vector (9 DOWNTO 0) ;
   
   signal r11: std_logic_vector (9 DOWNTO 0) ;
   
   signal r12: std_logic_vector (9 DOWNTO 0) ;
   
   signal r13: std_logic_vector (10 DOWNTO 0) ;
   
   signal r14_12, r14_11, r14_10, r14_9, r14_8, r14_7, r14_6, r14_5, r14_4, 
      r14_3: std_logic ;
   
   signal r15: std_logic_vector (12 DOWNTO 0) ;
   
   signal dir1_2, dir2_2, dir3_2, dir4_2, dir4_0: std_logic ;
   
   signal dir5: std_logic_vector (2 DOWNTO 0) ;
   
   signal dir6_2: std_logic ;
   
   signal dir7: std_logic_vector (2 DOWNTO 0) ;
   
   signal add1: std_logic_vector (8 DOWNTO 0) ;
   
   signal add2: std_logic_vector (9 DOWNTO 0) ;
   
   signal add3: std_logic_vector (10 DOWNTO 0) ;
   
   signal add4: std_logic_vector (12 DOWNTO 1) ;
   
   signal end_of_img, nx7380z1, nx24302z1, nx14428z1, nx36874z1, nx36874z5, 
      nx36874z6, nx36874z8, nx36874z9, nx36874z10, nx36874z3, i_clock_int, 
      i_reset_int, i_valid_int: std_logic ;
   
   signal i_pixel_int: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_valid_EXMPLR427, o_edge_EXMPLR428: std_logic ;
   
   signal o_dir_EXMPLR491: std_logic_vector (2 DOWNTO 0) ;
   
   signal o_mode_EXMPLR492: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_row_EXMPLR493: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_led_red_EXMPLR494: std_logic_vector (17 DOWNTO 0) ;
   
   signal debug_led_grn_EXMPLR495: std_logic_vector (5 DOWNTO 0) ;
   
   signal debug_num_0_EXMPLR496: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_1_EXMPLR497: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_2_EXMPLR498: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_3_EXMPLR499: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_4_EXMPLR500: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_5_EXMPLR501: std_logic_vector (3 DOWNTO 0) ;
   
   signal o_edge_dup0: std_logic ;
   
   signal o_dir_dup0: std_logic_vector (2 DOWNTO 0) ;
   
   signal wren_m1, wren_m2, wren_m3: std_logic ;
   
   signal debug_num_5_dup0: std_logic_vector (17 DOWNTO 17) ;
   
   signal max2: std_logic_vector (9 DOWNTO 0) ;
   
   signal sub1_8: std_logic ;
   
   signal addr_x: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_5_dup0_1, nx26373z1: std_logic ;
   
   signal t_20n2s1: std_logic_vector (1 DOWNTO 0) ;
   
   signal nx17322z9, nx17322z1, nx20492z2, nx10438z2, nx46679z2, 
      dir5_23n5ss1_2, dir6_23n5ss1_2, nx32637z3, nx25299z1, nx28105z1, 
      nx36692z2, nx36266z1, nx34077z1, nx35074z1, nx36071z1, nx37068z1, 
      nx38065z1, nx39062z1, nx40059z1, nx41056z1, nx25658z1, nx26655z1, 
      nx27652z1, nx28649z1, nx29646z1, nx30643z1, nx31640z1, nx32637z1, 
      nx48297z1, nx47300z1, nx46303z1, nx45306z1, nx44309z1, nx43312z1, 
      nx42315z1, nx41318z1, nx56716z1, nx55719z1, nx54722z1, nx53725z1, 
      nx52728z1, nx51731z1, nx50734z1, nx49737z1, nx27471z1, nx26474z1, 
      nx25477z1, nx24480z1, nx23483z1, nx22486z1, nx21489z1, nx20492z1, 
      nx29646z3, nx30643z3, nx31640z3, nx32637z4, nx33634z1, nx34631z1, 
      nx35628z1, nx36625z1, nx6176z10, nx38525z1, nx36692z1, nx46679z1, 
      nx44685z1, nx10438z1, nx2019z1, nx35695z1, nx44114z1, nx45111z1, 
      nx46108z1, nx17322z2, nx17322z3, nx17322z8, nx17322z10, nx17322z12, 
      nx19087z1, nx19087z2, nx19087z6, nx19087z10, nx19087z12, nx19087z14, 
      nx19087z15, nx19087z18, nx19087z20, nx19087z23, nx26373z2, nx6176z1, 
      nx6176z2, nx28105z2, nx28105z4, nx28105z6, nx28105z9, nx31609z1, 
      nx17322z5, nx19087z7, nx19087z21, nx19087z4, nx19087z5, nx19087z17, 
      nx17322z13, nx36874z2, nx36874z7, nx36874z4, nx28105z3, nx28105z8, 
      nx28105z5, nx28105z7, nx38525z2, nx25299z2, nx24222z1, nx19087z27, 
      nx19087z26, nx6176z3, nx17322z15, nx19087z24, nx19087z22, nx19087z19, 
      nx19087z16, nx19087z13, nx19087z11, nx19087z8, nx19087z9, nx19087z3, 
      nx17322z16, nx17322z11, nx6176z8, nx19087z25, nx17322z14, nx6176z4, 
      nx6176z5, nx6176z6, nx17322z7, nx17322z4, nx6176z9, nx17322z6, 
      nx6176z7, nx49737z2, nx50734z2, nx51731z2, nx52728z2, nx53725z2, 
      nx54722z2, nx55719z2, nx56716z2, nx41318z2, nx42315z2, nx43312z2, 
      nx44309z2, nx45306z2, nx46303z2, nx47300z2, nx48297z2, nx32637z2, 
      nx31640z2, nx30643z2, nx29646z2, nx28649z2, nx27652z2, nx26655z2, 
      nx25658z2, nx41056z2, nx40059z2, nx39062z2, nx38065z2, nx37068z2, 
      nx36071z2, nx35074z2, nx34077z2, nx44114z2, nx46108z2, nx45613z1, 
      nx45613z2, nx44616z1, nx43619z1, nx42622z1, nx41625z1, nx40628z1, 
      nx39631z1, nx38634z1, nx25376z1, nx16335z1, nx17332z1, nx18329z1, 
      nx19326z1, nx20323z1, nx21320z1, nx22317z1, nx23314z1, nx51998z1, 
      nx47893z1, nx45111z2, NOT_dir5_1, nx46108z3, NOT_dir5_0: std_logic ;
   
   signal DANGLING : std_logic_vector (98 downto 0 );

begin
   i_clock_EXMPLR416 <= i_clock ;
   i_reset_EXMPLR417 <= i_reset ;
   i_valid_EXMPLR418 <= i_valid ;
   i_pixel_EXMPLR490(7) <= i_pixel(7) ;
   i_pixel_EXMPLR490(6) <= i_pixel(6) ;
   i_pixel_EXMPLR490(5) <= i_pixel(5) ;
   i_pixel_EXMPLR490(4) <= i_pixel(4) ;
   i_pixel_EXMPLR490(3) <= i_pixel(3) ;
   i_pixel_EXMPLR490(2) <= i_pixel(2) ;
   i_pixel_EXMPLR490(1) <= i_pixel(1) ;
   i_pixel_EXMPLR490(0) <= i_pixel(0) ;
   o_valid <= o_valid_EXMPLR427 ;
   o_edge <= o_edge_EXMPLR428 ;
   o_dir(2) <= o_dir_EXMPLR491(2) ;
   o_dir(1) <= o_dir_EXMPLR491(1) ;
   o_dir(0) <= o_dir_EXMPLR491(0) ;
   o_mode(1) <= o_mode_EXMPLR492(1) ;
   o_mode(0) <= o_mode_EXMPLR492(0) ;
   o_row(7) <= o_row_EXMPLR493(7) ;
   o_row(6) <= o_row_EXMPLR493(6) ;
   o_row(5) <= o_row_EXMPLR493(5) ;
   o_row(4) <= o_row_EXMPLR493(4) ;
   o_row(3) <= o_row_EXMPLR493(3) ;
   o_row(2) <= o_row_EXMPLR493(2) ;
   o_row(1) <= o_row_EXMPLR493(1) ;
   o_row(0) <= o_row_EXMPLR493(0) ;
   debug_led_red(17) <= debug_led_red_EXMPLR494(17) ;
   debug_led_red(16) <= debug_led_red_EXMPLR494(16) ;
   debug_led_red(15) <= debug_led_red_EXMPLR494(15) ;
   debug_led_red(14) <= debug_led_red_EXMPLR494(14) ;
   debug_led_red(13) <= debug_led_red_EXMPLR494(13) ;
   debug_led_red(12) <= debug_led_red_EXMPLR494(12) ;
   debug_led_red(11) <= debug_led_red_EXMPLR494(11) ;
   debug_led_red(10) <= debug_led_red_EXMPLR494(10) ;
   debug_led_red(9) <= debug_led_red_EXMPLR494(9) ;
   debug_led_red(8) <= debug_led_red_EXMPLR494(8) ;
   debug_led_red(7) <= debug_led_red_EXMPLR494(7) ;
   debug_led_red(6) <= debug_led_red_EXMPLR494(6) ;
   debug_led_red(5) <= debug_led_red_EXMPLR494(5) ;
   debug_led_red(4) <= debug_led_red_EXMPLR494(4) ;
   debug_led_red(3) <= debug_led_red_EXMPLR494(3) ;
   debug_led_red(2) <= debug_led_red_EXMPLR494(2) ;
   debug_led_red(1) <= debug_led_red_EXMPLR494(1) ;
   debug_led_red(0) <= debug_led_red_EXMPLR494(0) ;
   debug_led_grn(5) <= debug_led_grn_EXMPLR495(5) ;
   debug_led_grn(4) <= debug_led_grn_EXMPLR495(4) ;
   debug_led_grn(3) <= debug_led_grn_EXMPLR495(3) ;
   debug_led_grn(2) <= debug_led_grn_EXMPLR495(2) ;
   debug_led_grn(1) <= debug_led_grn_EXMPLR495(1) ;
   debug_led_grn(0) <= debug_led_grn_EXMPLR495(0) ;
   debug_num_0(3) <= debug_num_0_EXMPLR496(3) ;
   debug_num_0(2) <= debug_num_0_EXMPLR496(2) ;
   debug_num_0(1) <= debug_num_0_EXMPLR496(1) ;
   debug_num_0(0) <= debug_num_0_EXMPLR496(0) ;
   debug_num_1(3) <= debug_num_1_EXMPLR497(3) ;
   debug_num_1(2) <= debug_num_1_EXMPLR497(2) ;
   debug_num_1(1) <= debug_num_1_EXMPLR497(1) ;
   debug_num_1(0) <= debug_num_1_EXMPLR497(0) ;
   debug_num_2(3) <= debug_num_2_EXMPLR498(3) ;
   debug_num_2(2) <= debug_num_2_EXMPLR498(2) ;
   debug_num_2(1) <= debug_num_2_EXMPLR498(1) ;
   debug_num_2(0) <= debug_num_2_EXMPLR498(0) ;
   debug_num_3(3) <= debug_num_3_EXMPLR499(3) ;
   debug_num_3(2) <= debug_num_3_EXMPLR499(2) ;
   debug_num_3(1) <= debug_num_3_EXMPLR499(1) ;
   debug_num_3(0) <= debug_num_3_EXMPLR499(0) ;
   debug_num_4(3) <= debug_num_4_EXMPLR500(3) ;
   debug_num_4(2) <= debug_num_4_EXMPLR500(2) ;
   debug_num_4(1) <= debug_num_4_EXMPLR500(1) ;
   debug_num_4(0) <= debug_num_4_EXMPLR500(0) ;
   debug_num_5(3) <= debug_num_5_EXMPLR501(3) ;
   debug_num_5(2) <= debug_num_5_EXMPLR501(2) ;
   debug_num_5(1) <= debug_num_5_EXMPLR501(1) ;
   debug_num_5(0) <= debug_num_5_EXMPLR501(0) ;
   add3_add11_0 : add_11_0 port map ( cin=>DANGLING(0), a(10)=>DANGLING(1), 
      a(9)=>DANGLING(2), a(8)=>r7(8), a(7)=>r7(7), a(6)=>r7(6), a(5)=>r7(5), 
      a(4)=>r7(4), a(3)=>r7(3), a(2)=>r7(2), a(1)=>r7(1), a(0)=>r7(0), b(10)
      =>r8(10), b(9)=>r8(9), b(8)=>r8(8), b(7)=>r8(7), b(6)=>r8(6), b(5)=>
      r8(5), b(4)=>r8(4), b(3)=>r8(3), b(2)=>r8(2), b(1)=>r8(1), b(0)=>r8(0), 
      d(10)=>add3(10), d(9)=>add3(9), d(8)=>add3(8), d(7)=>add3(7), d(6)=>
      add3(6), d(5)=>add3(5), d(4)=>add3(4), d(3)=>add3(3), d(2)=>add3(2), 
      d(1)=>add3(1), d(0)=>add3(0), cout=>DANGLING(3));
   sub1_sub8_1 : sub_8_0 port map ( cin=>DANGLING(4), a(7)=>r1(7), a(6)=>
      r1(6), a(5)=>r1(5), a(4)=>r1(4), a(3)=>r1(3), a(2)=>r1(2), a(1)=>r1(1), 
      a(0)=>r1(0), b(7)=>r2(7), b(6)=>r2(6), b(5)=>r2(5), b(4)=>r2(4), b(3)
      =>r2(3), b(2)=>r2(2), b(1)=>r2(1), b(0)=>r2(0), d(7)=>DANGLING(5), 
      d(6)=>DANGLING(6), d(5)=>DANGLING(7), d(4)=>DANGLING(8), d(3)=>
      DANGLING(9), d(2)=>DANGLING(10), d(1)=>DANGLING(11), d(0)=>DANGLING(12
      ), cout=>nx7380z1);
   sub2_sub10_2 : sub_10_0 port map ( cin=>DANGLING(13), a(9)=>r9(9), a(8)=>
      r9(8), a(7)=>r9(7), a(6)=>r9(6), a(5)=>r9(5), a(4)=>r9(4), a(3)=>r9(3), 
      a(2)=>r9(2), a(1)=>r9(1), a(0)=>r9(0), b(9)=>r11(9), b(8)=>r11(8), 
      b(7)=>r11(7), b(6)=>r11(6), b(5)=>r11(5), b(4)=>r11(4), b(3)=>r11(3), 
      b(2)=>r11(2), b(1)=>r11(1), b(0)=>r11(0), d(9)=>DANGLING(14), d(8)=>
      DANGLING(15), d(7)=>DANGLING(16), d(6)=>DANGLING(17), d(5)=>DANGLING(
      18), d(4)=>DANGLING(19), d(3)=>DANGLING(20), d(2)=>DANGLING(21), d(1)
      =>DANGLING(22), d(0)=>DANGLING(23), cout=>nx24302z1);
   sub3_sub10_3 : sub_10_1 port map ( cin=>DANGLING(24), a(9)=>r11(9), a(8)
      =>r11(8), a(7)=>r11(7), a(6)=>r11(6), a(5)=>r11(5), a(4)=>r11(4), a(3)
      =>r11(3), a(2)=>r11(2), a(1)=>r11(1), a(0)=>r11(0), b(9)=>r12(9), b(8)
      =>r12(8), b(7)=>r12(7), b(6)=>r12(6), b(5)=>r12(5), b(4)=>r12(4), b(3)
      =>r12(3), b(2)=>r12(2), b(1)=>r12(1), b(0)=>r12(0), d(9)=>DANGLING(25), 
      d(8)=>DANGLING(26), d(7)=>DANGLING(27), d(6)=>DANGLING(28), d(5)=>
      DANGLING(29), d(4)=>DANGLING(30), d(3)=>DANGLING(31), d(2)=>DANGLING(
      32), d(1)=>DANGLING(33), d(0)=>DANGLING(34), cout=>nx14428z1);
   modgen_counter_x : modgen_counter_8_0 port map ( clock=>i_clock_int, q(7)
      =>x(7), q(6)=>x(6), q(5)=>x(5), q(4)=>x(4), q(3)=>x(3), q(2)=>x(2), 
      q(1)=>x(1), q(0)=>x(0), clk_en=>DANGLING(35), aclear=>DANGLING(36), 
      sload=>DANGLING(37), data(7)=>DANGLING(38), data(6)=>DANGLING(39), 
      data(5)=>DANGLING(40), data(4)=>DANGLING(41), data(3)=>DANGLING(42), 
      data(2)=>DANGLING(43), data(1)=>DANGLING(44), data(0)=>DANGLING(45), 
      aset=>DANGLING(46), sclear=>i_reset_int, updn=>DANGLING(47), cnt_en=>
      i_valid_int);
   modgen_counter_o_row : modgen_counter_8_1 port map ( clock=>i_clock_int, 
      q(7)=>o_row_dup0(7), q(6)=>o_row_dup0(6), q(5)=>o_row_dup0(5), q(4)=>
      o_row_dup0(4), q(3)=>o_row_dup0(3), q(2)=>o_row_dup0(2), q(1)=>
      o_row_dup0(1), q(0)=>o_row_dup0(0), clk_en=>nx17322z1, aclear=>
      DANGLING(48), sload=>DANGLING(49), data(7)=>DANGLING(50), data(6)=>
      DANGLING(51), data(5)=>DANGLING(52), data(4)=>DANGLING(53), data(3)=>
      DANGLING(54), data(2)=>DANGLING(55), data(1)=>DANGLING(56), data(0)=>
      DANGLING(57), aset=>DANGLING(58), sclear=>nx17322z9, updn=>DANGLING(59
      ), cnt_en=>nx17322z15, px50=>nx45613z1, px23=>nx45613z2, px46=>
      nx44616z1, px24=>nx43619z1, px17=>nx42622z1, px13=>nx41625z1, px9=>
      nx40628z1, px5=>nx39631z1, px1=>nx38634z1);
   add1_add8_4 : add_8_0 port map ( cin=>DANGLING(60), a(7)=>r3(7), a(6)=>
      r3(6), a(5)=>r3(5), a(4)=>r3(4), a(3)=>r3(3), a(2)=>r3(2), a(1)=>r3(1), 
      a(0)=>r3(0), b(7)=>r4(7), b(6)=>r4(6), b(5)=>r4(5), b(4)=>r4(4), b(3)
      =>r4(3), b(2)=>r4(2), b(1)=>r4(1), b(0)=>r4(0), d(7)=>add1(7), d(6)=>
      add1(6), d(5)=>add1(5), d(4)=>add1(4), d(3)=>add1(3), d(2)=>add1(2), 
      d(1)=>add1(1), d(0)=>add1(0), cout=>add1(8));
   add2_add9_5 : add_9_0 port map ( cin=>DANGLING(61), a(8)=>DANGLING(62), 
      a(7)=>r5(7), a(6)=>r5(6), a(5)=>r5(5), a(4)=>r5(4), a(3)=>r5(3), a(2)
      =>r5(2), a(1)=>r5(1), a(0)=>r5(0), b(8)=>r7(8), b(7)=>r7(7), b(6)=>
      r7(6), b(5)=>r7(5), b(4)=>r7(4), b(3)=>r7(3), b(2)=>r7(2), b(1)=>r7(1), 
      b(0)=>r7(0), d(8)=>add2(8), d(7)=>add2(7), d(6)=>add2(6), d(5)=>
      add2(5), d(4)=>add2(4), d(3)=>add2(3), d(2)=>add2(2), d(1)=>add2(1), 
      d(0)=>add2(0), cout=>add2(9));
   add4_add11_6 : add_11_1 port map ( cin=>DANGLING(63), a(10)=>DANGLING(64), 
      a(9)=>r13(10), a(8)=>r13(9), a(7)=>r13(8), a(6)=>r13(7), a(5)=>r13(6), 
      a(4)=>r13(5), a(3)=>r13(4), a(2)=>r13(3), a(1)=>r13(2), a(0)=>r13(1), 
      b(10)=>DANGLING(65), b(9)=>DANGLING(66), b(8)=>DANGLING(67), b(7)=>
      DANGLING(68), b(6)=>DANGLING(69), b(5)=>DANGLING(70), b(4)=>DANGLING(
      71), b(3)=>DANGLING(72), b(2)=>DANGLING(73), b(1)=>DANGLING(74), b(0)
      =>r13(0), d(10)=>add4(11), d(9)=>add4(10), d(8)=>add4(9), d(7)=>
      add4(8), d(6)=>add4(7), d(5)=>add4(6), d(4)=>add4(5), d(3)=>add4(4), 
      d(2)=>add4(3), d(1)=>add4(2), d(0)=>add4(1), cout=>add4(12));
   ix36874z50555 : sub_12_0 port map ( cin=>DANGLING(75), a(11)=>r14_12, 
      a(10)=>r14_11, a(9)=>r14_10, a(8)=>r14_9, a(7)=>r14_8, a(6)=>r14_7, 
      a(5)=>r14_6, a(4)=>r14_5, a(3)=>r14_4, a(2)=>r14_3, a(1)=>DANGLING(76), 
      a(0)=>DANGLING(77), b(11)=>r15(12), b(10)=>r15(11), b(9)=>r15(10), 
      b(8)=>r15(9), b(7)=>r15(8), b(6)=>r15(7), b(5)=>r15(6), b(4)=>r15(5), 
      b(3)=>r15(4), b(2)=>r15(3), b(1)=>r15(2), b(0)=>r15(1), d(11)=>
      nx36874z1, d(10)=>nx36874z5, d(9)=>nx36874z6, d(8)=>nx36874z8, d(7)=>
      nx36874z9, d(6)=>nx36874z10, d(5)=>DANGLING(78), d(4)=>DANGLING(79), 
      d(3)=>DANGLING(80), d(2)=>DANGLING(81), d(1)=>DANGLING(82), d(0)=>
      DANGLING(83), cout=>nx36874z3, p_r15_0=>r15(0));
   m1_mem : ram_dq_8_0 port map ( wr_data1(7)=>i_pixel_int(7), wr_data1(6)=>
      i_pixel_int(6), wr_data1(5)=>i_pixel_int(5), wr_data1(4)=>
      i_pixel_int(4), wr_data1(3)=>i_pixel_int(3), wr_data1(2)=>
      i_pixel_int(2), wr_data1(1)=>i_pixel_int(1), wr_data1(0)=>
      i_pixel_int(0), rd_data1(7)=>q1(7), rd_data1(6)=>q1(6), rd_data1(5)=>
      q1(5), rd_data1(4)=>q1(4), rd_data1(3)=>q1(3), rd_data1(2)=>q1(2), 
      rd_data1(1)=>q1(1), rd_data1(0)=>q1(0), addr1(7)=>addr_x(7), addr1(6)
      =>addr_x(6), addr1(5)=>addr_x(5), addr1(4)=>addr_x(4), addr1(3)=>
      addr_x(3), addr1(2)=>addr_x(2), addr1(1)=>addr_x(1), addr1(0)=>
      addr_x(0), wr_clk1=>i_clock_int, rd_clk1=>DANGLING(84), wr_ena1=>
      wren_m1, rd_ena1=>DANGLING(85), ena1=>DANGLING(86), rst1=>DANGLING(87), 
      regce1=>DANGLING(88));
   m2_mem : ram_dq_8_1 port map ( wr_data1(7)=>i_pixel_int(7), wr_data1(6)=>
      i_pixel_int(6), wr_data1(5)=>i_pixel_int(5), wr_data1(4)=>
      i_pixel_int(4), wr_data1(3)=>i_pixel_int(3), wr_data1(2)=>
      i_pixel_int(2), wr_data1(1)=>i_pixel_int(1), wr_data1(0)=>
      i_pixel_int(0), rd_data1(7)=>q2(7), rd_data1(6)=>q2(6), rd_data1(5)=>
      q2(5), rd_data1(4)=>q2(4), rd_data1(3)=>q2(3), rd_data1(2)=>q2(2), 
      rd_data1(1)=>q2(1), rd_data1(0)=>q2(0), addr1(7)=>addr_x(7), addr1(6)
      =>addr_x(6), addr1(5)=>addr_x(5), addr1(4)=>addr_x(4), addr1(3)=>
      addr_x(3), addr1(2)=>addr_x(2), addr1(1)=>addr_x(1), addr1(0)=>
      addr_x(0), wr_clk1=>i_clock_int, rd_clk1=>DANGLING(89), wr_ena1=>
      wren_m2, rd_ena1=>DANGLING(90), ena1=>DANGLING(91), rst1=>DANGLING(92), 
      regce1=>DANGLING(93));
   m3_mem : ram_dq_8_2 port map ( wr_data1(7)=>i_pixel_int(7), wr_data1(6)=>
      i_pixel_int(6), wr_data1(5)=>i_pixel_int(5), wr_data1(4)=>
      i_pixel_int(4), wr_data1(3)=>i_pixel_int(3), wr_data1(2)=>
      i_pixel_int(2), wr_data1(1)=>i_pixel_int(1), wr_data1(0)=>
      i_pixel_int(0), rd_data1(7)=>q3(7), rd_data1(6)=>q3(6), rd_data1(5)=>
      q3(5), rd_data1(4)=>q3(4), rd_data1(3)=>q3(3), rd_data1(2)=>q3(2), 
      rd_data1(1)=>q3(1), rd_data1(0)=>q3(0), addr1(7)=>addr_x(7), addr1(6)
      =>addr_x(6), addr1(5)=>addr_x(5), addr1(4)=>addr_x(4), addr1(3)=>
      addr_x(3), addr1(2)=>addr_x(2), addr1(1)=>addr_x(1), addr1(0)=>
      addr_x(0), wr_clk1=>i_clock_int, rd_clk1=>DANGLING(94), wr_ena1=>
      wren_m3, rd_ena1=>DANGLING(95), ena1=>DANGLING(96), rst1=>DANGLING(97), 
      regce1=>DANGLING(98));
   debug_num_5_dup0(17) <= '0';
   sub1_8 <= NOT nx7380z1;
   debug_num_5_dup0_1 <= '1';
   nx25376z1 <= '1';
   o_mode_dup0(0) <= NOT nx47893z1;
   NOT_dir5_1 <= NOT dir5(1);
   NOT_dir5_0 <= NOT dir5(0);
   reg_v_7 : cycloneii_lcell_ff port map ( regout=>v(7), datain=>v(6), clk=>
      i_clock_int);
   reg_v_6 : cycloneii_lcell_ff port map ( regout=>v(6), datain=>v(5), clk=>
      i_clock_int);
   reg_v_5 : cycloneii_lcell_ff port map ( regout=>v(5), datain=>v(4), clk=>
      i_clock_int);
   reg_v_4 : cycloneii_lcell_ff port map ( regout=>v(4), datain=>v(3), clk=>
      i_clock_int);
   reg_v_3 : cycloneii_lcell_ff port map ( regout=>v(3), datain=>v(2), clk=>
      i_clock_int);
   reg_v_2 : cycloneii_lcell_ff port map ( regout=>v(2), datain=>v(1), clk=>
      i_clock_int);
   reg_v_1 : cycloneii_lcell_ff port map ( regout=>v(1), datain=>v(0), clk=>
      i_clock_int);
   reg_v_0 : cycloneii_lcell_ff port map ( regout=>v(0), datain=>i_valid_int, 
      clk=>i_clock_int, sclr=>i_reset_int);
   reg_t_1 : cycloneii_lcell_ff port map ( regout=>t(1), datain=>t_20n2s1(1), 
      clk=>i_clock_int, ena=>nx38525z1, sclr=>i_reset_int);
   reg_t_0 : cycloneii_lcell_ff port map ( regout=>t(0), datain=>t_20n2s1(0), 
      clk=>i_clock_int, ena=>nx38525z1, sclr=>i_reset_int);
   reg_r9_9 : cycloneii_lcell_ff port map ( regout=>r9(9), datain=>max2(9), 
      sdata=>add2(9), clk=>i_clock_int, ena=>nx25299z1, sload=>v(2));
   reg_r9_8 : cycloneii_lcell_ff port map ( regout=>r9(8), datain=>max2(8), 
      sdata=>add2(8), clk=>i_clock_int, ena=>nx25299z1, sload=>v(2));
   reg_r9_7 : cycloneii_lcell_ff port map ( regout=>r9(7), datain=>max2(7), 
      sdata=>add2(7), clk=>i_clock_int, ena=>nx25299z1, sload=>v(2));
   reg_r9_6 : cycloneii_lcell_ff port map ( regout=>r9(6), datain=>max2(6), 
      sdata=>add2(6), clk=>i_clock_int, ena=>nx25299z1, sload=>v(2));
   reg_r9_5 : cycloneii_lcell_ff port map ( regout=>r9(5), datain=>max2(5), 
      sdata=>add2(5), clk=>i_clock_int, ena=>nx25299z1, sload=>v(2));
   reg_r9_4 : cycloneii_lcell_ff port map ( regout=>r9(4), datain=>max2(4), 
      sdata=>add2(4), clk=>i_clock_int, ena=>nx25299z1, sload=>v(2));
   reg_r9_3 : cycloneii_lcell_ff port map ( regout=>r9(3), datain=>max2(3), 
      sdata=>add2(3), clk=>i_clock_int, ena=>nx25299z1, sload=>v(2));
   reg_r9_2 : cycloneii_lcell_ff port map ( regout=>r9(2), datain=>max2(2), 
      sdata=>add2(2), clk=>i_clock_int, ena=>nx25299z1, sload=>v(2));
   reg_r9_1 : cycloneii_lcell_ff port map ( regout=>r9(1), datain=>max2(1), 
      sdata=>add2(1), clk=>i_clock_int, ena=>nx25299z1, sload=>v(2));
   reg_r9_0 : cycloneii_lcell_ff port map ( regout=>r9(0), datain=>max2(0), 
      sdata=>add2(0), clk=>i_clock_int, ena=>nx25299z1, sload=>v(2));
   reg_r8_9 : cycloneii_lcell_ff port map ( regout=>r8(9), datain=>add3(9), 
      clk=>i_clock_int, sclr=>v(2));
   reg_r8_8 : cycloneii_lcell_ff port map ( regout=>r8(8), datain=>add3(8), 
      sdata=>r7(8), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>v(2));
   reg_r8_7 : cycloneii_lcell_ff port map ( regout=>r8(7), datain=>add3(7), 
      sdata=>r7(7), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>v(2));
   reg_r8_6 : cycloneii_lcell_ff port map ( regout=>r8(6), datain=>add3(6), 
      sdata=>r7(6), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>v(2));
   reg_r8_5 : cycloneii_lcell_ff port map ( regout=>r8(5), datain=>add3(5), 
      sdata=>r7(5), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>v(2));
   reg_r8_4 : cycloneii_lcell_ff port map ( regout=>r8(4), datain=>add3(4), 
      sdata=>r7(4), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>v(2));
   reg_r8_3 : cycloneii_lcell_ff port map ( regout=>r8(3), datain=>add3(3), 
      sdata=>r7(3), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>v(2));
   reg_r8_2 : cycloneii_lcell_ff port map ( regout=>r8(2), datain=>add3(2), 
      sdata=>r7(2), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>v(2));
   reg_r8_10 : cycloneii_lcell_ff port map ( regout=>r8(10), datain=>
      add3(10), clk=>i_clock_int, sclr=>v(2));
   reg_r8_1 : cycloneii_lcell_ff port map ( regout=>r8(1), datain=>add3(1), 
      sdata=>r7(1), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>v(2));
   reg_r8_0 : cycloneii_lcell_ff port map ( regout=>r8(0), datain=>add3(0), 
      sdata=>r7(0), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>v(2));
   reg_r7_8 : cycloneii_lcell_ff port map ( regout=>r7(8), datain=>add1(8), 
      clk=>i_clock_int);
   reg_r7_7 : cycloneii_lcell_ff port map ( regout=>r7(7), datain=>add1(7), 
      clk=>i_clock_int);
   reg_r7_6 : cycloneii_lcell_ff port map ( regout=>r7(6), datain=>add1(6), 
      clk=>i_clock_int);
   reg_r7_5 : cycloneii_lcell_ff port map ( regout=>r7(5), datain=>add1(5), 
      clk=>i_clock_int);
   reg_r7_4 : cycloneii_lcell_ff port map ( regout=>r7(4), datain=>add1(4), 
      clk=>i_clock_int);
   reg_r7_3 : cycloneii_lcell_ff port map ( regout=>r7(3), datain=>add1(3), 
      clk=>i_clock_int);
   reg_r7_2 : cycloneii_lcell_ff port map ( regout=>r7(2), datain=>add1(2), 
      clk=>i_clock_int);
   reg_r7_1 : cycloneii_lcell_ff port map ( regout=>r7(1), datain=>add1(1), 
      clk=>i_clock_int);
   reg_r7_0 : cycloneii_lcell_ff port map ( regout=>r7(0), datain=>add1(0), 
      clk=>i_clock_int);
   reg_r5_7 : cycloneii_lcell_ff port map ( regout=>r5(7), datain=>r2(7), 
      sdata=>r1(7), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx7380z1);
   reg_r5_6 : cycloneii_lcell_ff port map ( regout=>r5(6), datain=>r2(6), 
      sdata=>r1(6), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx7380z1);
   reg_r5_5 : cycloneii_lcell_ff port map ( regout=>r5(5), datain=>r2(5), 
      sdata=>r1(5), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx7380z1);
   reg_r5_4 : cycloneii_lcell_ff port map ( regout=>r5(4), datain=>r2(4), 
      sdata=>r1(4), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx7380z1);
   reg_r5_3 : cycloneii_lcell_ff port map ( regout=>r5(3), datain=>r2(3), 
      sdata=>r1(3), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx7380z1);
   reg_r5_2 : cycloneii_lcell_ff port map ( regout=>r5(2), datain=>r2(2), 
      sdata=>r1(2), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx7380z1);
   reg_r5_1 : cycloneii_lcell_ff port map ( regout=>r5(1), datain=>r2(1), 
      sdata=>r1(1), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx7380z1);
   reg_r5_0 : cycloneii_lcell_ff port map ( regout=>r5(0), datain=>r2(0), 
      sdata=>r1(0), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx7380z1);
   reg_r4_7 : cycloneii_lcell_ff port map ( regout=>r4(7), datain=>nx49737z1, 
      sdata=>b(7), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r4_6 : cycloneii_lcell_ff port map ( regout=>r4(6), datain=>nx50734z1, 
      sdata=>b(6), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r4_5 : cycloneii_lcell_ff port map ( regout=>r4(5), datain=>nx51731z1, 
      sdata=>b(5), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r4_4 : cycloneii_lcell_ff port map ( regout=>r4(4), datain=>nx52728z1, 
      sdata=>b(4), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r4_3 : cycloneii_lcell_ff port map ( regout=>r4(3), datain=>nx53725z1, 
      sdata=>b(3), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r4_2 : cycloneii_lcell_ff port map ( regout=>r4(2), datain=>nx54722z1, 
      sdata=>b(2), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r4_1 : cycloneii_lcell_ff port map ( regout=>r4(1), datain=>nx55719z1, 
      sdata=>b(1), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r4_0 : cycloneii_lcell_ff port map ( regout=>r4(0), datain=>nx56716z1, 
      sdata=>b(0), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r3_7 : cycloneii_lcell_ff port map ( regout=>r3(7), datain=>nx41318z1, 
      sdata=>c(7), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r3_6 : cycloneii_lcell_ff port map ( regout=>r3(6), datain=>nx42315z1, 
      sdata=>c(6), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r3_5 : cycloneii_lcell_ff port map ( regout=>r3(5), datain=>nx43312z1, 
      sdata=>c(5), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r3_4 : cycloneii_lcell_ff port map ( regout=>r3(4), datain=>nx44309z1, 
      sdata=>c(4), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r3_3 : cycloneii_lcell_ff port map ( regout=>r3(3), datain=>nx45306z1, 
      sdata=>c(3), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r3_2 : cycloneii_lcell_ff port map ( regout=>r3(2), datain=>nx46303z1, 
      sdata=>c(2), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r3_1 : cycloneii_lcell_ff port map ( regout=>r3(1), datain=>nx47300z1, 
      sdata=>c(1), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r3_0 : cycloneii_lcell_ff port map ( regout=>r3(0), datain=>nx48297z1, 
      sdata=>c(0), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r2_7 : cycloneii_lcell_ff port map ( regout=>r2(7), datain=>nx32637z1, 
      sdata=>d(7), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r2_6 : cycloneii_lcell_ff port map ( regout=>r2(6), datain=>nx31640z1, 
      sdata=>d(6), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r2_5 : cycloneii_lcell_ff port map ( regout=>r2(5), datain=>nx30643z1, 
      sdata=>d(5), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r2_4 : cycloneii_lcell_ff port map ( regout=>r2(4), datain=>nx29646z1, 
      sdata=>d(4), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r2_3 : cycloneii_lcell_ff port map ( regout=>r2(3), datain=>nx28649z1, 
      sdata=>d(3), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r2_2 : cycloneii_lcell_ff port map ( regout=>r2(2), datain=>nx27652z1, 
      sdata=>d(2), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r2_1 : cycloneii_lcell_ff port map ( regout=>r2(1), datain=>nx26655z1, 
      sdata=>d(1), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r2_0 : cycloneii_lcell_ff port map ( regout=>r2(0), datain=>nx25658z1, 
      sdata=>d(0), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r15_9 : cycloneii_lcell_ff port map ( regout=>r15(9), datain=>add4(9), 
      clk=>i_clock_int);
   reg_r15_8 : cycloneii_lcell_ff port map ( regout=>r15(8), datain=>add4(8), 
      clk=>i_clock_int);
   reg_r15_7 : cycloneii_lcell_ff port map ( regout=>r15(7), datain=>add4(7), 
      clk=>i_clock_int);
   reg_r15_6 : cycloneii_lcell_ff port map ( regout=>r15(6), datain=>add4(6), 
      clk=>i_clock_int);
   reg_r15_5 : cycloneii_lcell_ff port map ( regout=>r15(5), datain=>add4(5), 
      clk=>i_clock_int);
   reg_r15_4 : cycloneii_lcell_ff port map ( regout=>r15(4), datain=>add4(4), 
      clk=>i_clock_int);
   reg_r15_3 : cycloneii_lcell_ff port map ( regout=>r15(3), datain=>add4(3), 
      clk=>i_clock_int);
   reg_r15_2 : cycloneii_lcell_ff port map ( regout=>r15(2), datain=>add4(2), 
      clk=>i_clock_int);
   reg_r15_12 : cycloneii_lcell_ff port map ( regout=>r15(12), datain=>
      add4(12), clk=>i_clock_int);
   reg_r15_11 : cycloneii_lcell_ff port map ( regout=>r15(11), datain=>
      add4(11), clk=>i_clock_int);
   reg_r15_10 : cycloneii_lcell_ff port map ( regout=>r15(10), datain=>
      add4(10), clk=>i_clock_int);
   reg_r15_1 : cycloneii_lcell_ff port map ( regout=>r15(1), datain=>add4(1), 
      clk=>i_clock_int);
   reg_r15_0 : cycloneii_lcell_ff port map ( regout=>r15(0), datain=>r13(0), 
      clk=>i_clock_int);
   reg_r14_9 : cycloneii_lcell_ff port map ( regout=>r14_9, datain=>r12(6), 
      sdata=>r11(6), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx14428z1);
   reg_r14_8 : cycloneii_lcell_ff port map ( regout=>r14_8, datain=>r12(5), 
      sdata=>r11(5), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx14428z1);
   reg_r14_7 : cycloneii_lcell_ff port map ( regout=>r14_7, datain=>r12(4), 
      sdata=>r11(4), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx14428z1);
   reg_r14_6 : cycloneii_lcell_ff port map ( regout=>r14_6, datain=>r12(3), 
      sdata=>r11(3), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx14428z1);
   reg_r14_5 : cycloneii_lcell_ff port map ( regout=>r14_5, datain=>r12(2), 
      sdata=>r11(2), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx14428z1);
   reg_r14_4 : cycloneii_lcell_ff port map ( regout=>r14_4, datain=>r12(1), 
      sdata=>r11(1), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx14428z1);
   reg_r14_3 : cycloneii_lcell_ff port map ( regout=>r14_3, datain=>r12(0), 
      sdata=>r11(0), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx14428z1);
   reg_r14_12 : cycloneii_lcell_ff port map ( regout=>r14_12, datain=>r12(9), 
      sdata=>r11(9), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx14428z1);
   reg_r14_11 : cycloneii_lcell_ff port map ( regout=>r14_11, datain=>r12(8), 
      sdata=>r11(8), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx14428z1);
   reg_r14_10 : cycloneii_lcell_ff port map ( regout=>r14_10, datain=>r12(7), 
      sdata=>r11(7), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx14428z1);
   reg_r13_9 : cycloneii_lcell_ff port map ( regout=>r13(9), datain=>add3(9), 
      clk=>i_clock_int);
   reg_r13_8 : cycloneii_lcell_ff port map ( regout=>r13(8), datain=>add3(8), 
      clk=>i_clock_int);
   reg_r13_7 : cycloneii_lcell_ff port map ( regout=>r13(7), datain=>add3(7), 
      clk=>i_clock_int);
   reg_r13_6 : cycloneii_lcell_ff port map ( regout=>r13(6), datain=>add3(6), 
      clk=>i_clock_int);
   reg_r13_5 : cycloneii_lcell_ff port map ( regout=>r13(5), datain=>add3(5), 
      clk=>i_clock_int);
   reg_r13_4 : cycloneii_lcell_ff port map ( regout=>r13(4), datain=>add3(4), 
      clk=>i_clock_int);
   reg_r13_3 : cycloneii_lcell_ff port map ( regout=>r13(3), datain=>add3(3), 
      clk=>i_clock_int);
   reg_r13_2 : cycloneii_lcell_ff port map ( regout=>r13(2), datain=>add3(2), 
      clk=>i_clock_int);
   reg_r13_10 : cycloneii_lcell_ff port map ( regout=>r13(10), datain=>
      add3(10), clk=>i_clock_int);
   reg_r13_1 : cycloneii_lcell_ff port map ( regout=>r13(1), datain=>add3(1), 
      clk=>i_clock_int);
   reg_r13_0 : cycloneii_lcell_ff port map ( regout=>r13(0), datain=>add3(0), 
      clk=>i_clock_int);
   reg_r12_9 : cycloneii_lcell_ff port map ( regout=>r12(9), datain=>r11(9), 
      sdata=>r9(9), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx24302z1);
   reg_r12_8 : cycloneii_lcell_ff port map ( regout=>r12(8), datain=>r11(8), 
      sdata=>r9(8), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx24302z1);
   reg_r12_7 : cycloneii_lcell_ff port map ( regout=>r12(7), datain=>r11(7), 
      sdata=>r9(7), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx24302z1);
   reg_r12_6 : cycloneii_lcell_ff port map ( regout=>r12(6), datain=>r11(6), 
      sdata=>r9(6), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx24302z1);
   reg_r12_5 : cycloneii_lcell_ff port map ( regout=>r12(5), datain=>r11(5), 
      sdata=>r9(5), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx24302z1);
   reg_r12_4 : cycloneii_lcell_ff port map ( regout=>r12(4), datain=>r11(4), 
      sdata=>r9(4), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx24302z1);
   reg_r12_3 : cycloneii_lcell_ff port map ( regout=>r12(3), datain=>r11(3), 
      sdata=>r9(3), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx24302z1);
   reg_r12_2 : cycloneii_lcell_ff port map ( regout=>r12(2), datain=>r11(2), 
      sdata=>r9(2), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx24302z1);
   reg_r12_1 : cycloneii_lcell_ff port map ( regout=>r12(1), datain=>r11(1), 
      sdata=>r9(1), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx24302z1);
   reg_r12_0 : cycloneii_lcell_ff port map ( regout=>r12(0), datain=>r11(0), 
      sdata=>r9(0), clk=>i_clock_int, ena=>debug_num_5_dup0_1, sload=>
      nx24302z1);
   reg_r11_9 : cycloneii_lcell_ff port map ( regout=>r11(9), datain=>add2(9), 
      clk=>i_clock_int);
   reg_r11_8 : cycloneii_lcell_ff port map ( regout=>r11(8), datain=>add2(8), 
      clk=>i_clock_int);
   reg_r11_7 : cycloneii_lcell_ff port map ( regout=>r11(7), datain=>add2(7), 
      clk=>i_clock_int);
   reg_r11_6 : cycloneii_lcell_ff port map ( regout=>r11(6), datain=>add2(6), 
      clk=>i_clock_int);
   reg_r11_5 : cycloneii_lcell_ff port map ( regout=>r11(5), datain=>add2(5), 
      clk=>i_clock_int);
   reg_r11_4 : cycloneii_lcell_ff port map ( regout=>r11(4), datain=>add2(4), 
      clk=>i_clock_int);
   reg_r11_3 : cycloneii_lcell_ff port map ( regout=>r11(3), datain=>add2(3), 
      clk=>i_clock_int);
   reg_r11_2 : cycloneii_lcell_ff port map ( regout=>r11(2), datain=>add2(2), 
      clk=>i_clock_int);
   reg_r11_1 : cycloneii_lcell_ff port map ( regout=>r11(1), datain=>add2(1), 
      clk=>i_clock_int);
   reg_r11_0 : cycloneii_lcell_ff port map ( regout=>r11(0), datain=>add2(0), 
      clk=>i_clock_int);
   reg_r1_7 : cycloneii_lcell_ff port map ( regout=>r1(7), datain=>nx41056z1, 
      sdata=>a(7), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r1_6 : cycloneii_lcell_ff port map ( regout=>r1(6), datain=>nx40059z1, 
      sdata=>a(6), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r1_5 : cycloneii_lcell_ff port map ( regout=>r1(5), datain=>nx39062z1, 
      sdata=>a(5), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r1_4 : cycloneii_lcell_ff port map ( regout=>r1(4), datain=>nx38065z1, 
      sdata=>a(4), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r1_3 : cycloneii_lcell_ff port map ( regout=>r1(3), datain=>nx37068z1, 
      sdata=>a(3), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r1_2 : cycloneii_lcell_ff port map ( regout=>r1(2), datain=>nx36071z1, 
      sdata=>a(2), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r1_1 : cycloneii_lcell_ff port map ( regout=>r1(1), datain=>nx35074z1, 
      sdata=>a(1), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_r1_0 : cycloneii_lcell_ff port map ( regout=>r1(0), datain=>nx34077z1, 
      sdata=>a(0), clk=>i_clock_int, ena=>nx32637z3, sload=>v(0));
   reg_out_o_valid_obuf : cycloneii_lcell_ff port map ( regout=>nx51998z1, 
      datain=>nx28105z1, clk=>i_clock_int);
   reg_out_o_row_obuf_7 : cycloneii_lcell_ff port map ( regout=>nx23314z1, 
      datain=>nx45613z1, clk=>i_clock_int, ena=>nx45613z2, sclr=>nx17322z9);
   reg_out_o_row_obuf_6 : cycloneii_lcell_ff port map ( regout=>nx22317z1, 
      datain=>nx44616z1, clk=>i_clock_int, ena=>nx45613z2, sclr=>nx17322z9);
   reg_out_o_row_obuf_5 : cycloneii_lcell_ff port map ( regout=>nx21320z1, 
      datain=>nx43619z1, clk=>i_clock_int, ena=>nx45613z2, sclr=>nx17322z9);
   reg_out_o_row_obuf_4 : cycloneii_lcell_ff port map ( regout=>nx20323z1, 
      datain=>nx42622z1, clk=>i_clock_int, ena=>nx45613z2, sclr=>nx17322z9);
   reg_out_o_row_obuf_3 : cycloneii_lcell_ff port map ( regout=>nx19326z1, 
      datain=>nx41625z1, clk=>i_clock_int, ena=>nx45613z2, sclr=>nx17322z9);
   reg_out_o_row_obuf_2 : cycloneii_lcell_ff port map ( regout=>nx18329z1, 
      datain=>nx40628z1, clk=>i_clock_int, ena=>nx45613z2, sclr=>nx17322z9);
   reg_out_o_row_obuf_1 : cycloneii_lcell_ff port map ( regout=>nx17332z1, 
      datain=>nx39631z1, clk=>i_clock_int, ena=>nx45613z2, sclr=>nx17322z9);
   reg_out_o_row_obuf_0 : cycloneii_lcell_ff port map ( regout=>nx16335z1, 
      datain=>nx38634z1, clk=>i_clock_int, ena=>nx45613z2, sclr=>nx17322z9);
   reg_mode_1 : cycloneii_lcell_ff port map ( regout=>o_mode_dup0(1), datain
      =>nx25376z1, clk=>i_clock_int, sclr=>i_reset_int);
   reg_mode_0 : cycloneii_lcell_ff port map ( regout=>nx47893z1, datain=>
      nx26373z1, clk=>i_clock_int, sclr=>i_reset_int);
   reg_in_i_pixel_ibuf_7 : cycloneii_lcell_ff port map ( regout=>e(7), 
      datain=>i_pixel_int(7), clk=>i_clock_int, ena=>i_valid_int);
   reg_in_i_pixel_ibuf_6 : cycloneii_lcell_ff port map ( regout=>e(6), 
      datain=>i_pixel_int(6), clk=>i_clock_int, ena=>i_valid_int);
   reg_in_i_pixel_ibuf_5 : cycloneii_lcell_ff port map ( regout=>e(5), 
      datain=>i_pixel_int(5), clk=>i_clock_int, ena=>i_valid_int);
   reg_in_i_pixel_ibuf_4 : cycloneii_lcell_ff port map ( regout=>e(4), 
      datain=>i_pixel_int(4), clk=>i_clock_int, ena=>i_valid_int);
   reg_in_i_pixel_ibuf_3 : cycloneii_lcell_ff port map ( regout=>e(3), 
      datain=>i_pixel_int(3), clk=>i_clock_int, ena=>i_valid_int);
   reg_in_i_pixel_ibuf_2 : cycloneii_lcell_ff port map ( regout=>e(2), 
      datain=>i_pixel_int(2), clk=>i_clock_int, ena=>i_valid_int);
   reg_in_i_pixel_ibuf_1 : cycloneii_lcell_ff port map ( regout=>e(1), 
      datain=>i_pixel_int(1), clk=>i_clock_int, ena=>i_valid_int);
   reg_in_i_pixel_ibuf_0 : cycloneii_lcell_ff port map ( regout=>e(0), 
      datain=>i_pixel_int(0), clk=>i_clock_int, ena=>i_valid_int);
   reg_i_7 : cycloneii_lcell_ff port map ( regout=>i(7), datain=>d(7), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_i_6 : cycloneii_lcell_ff port map ( regout=>i(6), datain=>d(6), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_i_5 : cycloneii_lcell_ff port map ( regout=>i(5), datain=>d(5), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_i_4 : cycloneii_lcell_ff port map ( regout=>i(4), datain=>d(4), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_i_3 : cycloneii_lcell_ff port map ( regout=>i(3), datain=>d(3), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_i_2 : cycloneii_lcell_ff port map ( regout=>i(2), datain=>d(2), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_i_1 : cycloneii_lcell_ff port map ( regout=>i(1), datain=>d(1), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_i_0 : cycloneii_lcell_ff port map ( regout=>i(0), datain=>d(0), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_h_7 : cycloneii_lcell_ff port map ( regout=>h(7), datain=>i(7), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_h_6 : cycloneii_lcell_ff port map ( regout=>h(6), datain=>i(6), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_h_5 : cycloneii_lcell_ff port map ( regout=>h(5), datain=>i(5), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_h_4 : cycloneii_lcell_ff port map ( regout=>h(4), datain=>i(4), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_h_3 : cycloneii_lcell_ff port map ( regout=>h(3), datain=>i(3), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_h_2 : cycloneii_lcell_ff port map ( regout=>h(2), datain=>i(2), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_h_1 : cycloneii_lcell_ff port map ( regout=>h(1), datain=>i(1), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_h_0 : cycloneii_lcell_ff port map ( regout=>h(0), datain=>i(0), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_g_7 : cycloneii_lcell_ff port map ( regout=>g(7), datain=>f(7), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_g_6 : cycloneii_lcell_ff port map ( regout=>g(6), datain=>f(6), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_g_5 : cycloneii_lcell_ff port map ( regout=>g(5), datain=>f(5), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_g_4 : cycloneii_lcell_ff port map ( regout=>g(4), datain=>f(4), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_g_3 : cycloneii_lcell_ff port map ( regout=>g(3), datain=>f(3), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_g_2 : cycloneii_lcell_ff port map ( regout=>g(2), datain=>f(2), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_g_1 : cycloneii_lcell_ff port map ( regout=>g(1), datain=>f(1), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_g_0 : cycloneii_lcell_ff port map ( regout=>g(0), datain=>f(0), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_f_7 : cycloneii_lcell_ff port map ( regout=>f(7), datain=>e(7), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_f_6 : cycloneii_lcell_ff port map ( regout=>f(6), datain=>e(6), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_f_5 : cycloneii_lcell_ff port map ( regout=>f(5), datain=>e(5), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_f_4 : cycloneii_lcell_ff port map ( regout=>f(4), datain=>e(4), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_f_3 : cycloneii_lcell_ff port map ( regout=>f(3), datain=>e(3), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_f_2 : cycloneii_lcell_ff port map ( regout=>f(2), datain=>e(2), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_f_1 : cycloneii_lcell_ff port map ( regout=>f(1), datain=>e(1), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_f_0 : cycloneii_lcell_ff port map ( regout=>f(0), datain=>e(0), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_end_of_img : cycloneii_lcell_ff port map ( regout=>end_of_img, datain
      =>nx6176z1, clk=>i_clock_int, ena=>nx6176z10, sclr=>i_reset_int);
   reg_dir7_2 : cycloneii_lcell_ff port map ( regout=>dir7(2), datain=>
      nx44114z1, clk=>i_clock_int);
   reg_dir7_1 : cycloneii_lcell_ff port map ( regout=>dir7(1), datain=>
      nx45111z1, clk=>i_clock_int);
   reg_dir7_0 : cycloneii_lcell_ff port map ( regout=>dir7(0), datain=>
      nx46108z1, clk=>i_clock_int);
   reg_dir6_2 : cycloneii_lcell_ff port map ( regout=>dir6_2, datain=>
      nx35695z1, clk=>i_clock_int);
   reg_dir6_1 : cycloneii_lcell_ff port map ( regout=>nx45111z2, datain=>
      NOT_dir5_1, clk=>i_clock_int, ena=>nx36692z1, sclr=>nx36692z2);
   reg_dir6_0 : cycloneii_lcell_ff port map ( regout=>nx46108z3, datain=>
      NOT_dir5_0, clk=>i_clock_int, ena=>nx36692z1, sclr=>nx36692z2);
   reg_dir5_2 : cycloneii_lcell_ff port map ( regout=>dir5(2), datain=>
      dir5_23n5ss1_2, clk=>i_clock_int, ena=>v(4));
   reg_dir5_1 : cycloneii_lcell_ff port map ( regout=>dir5(1), datain=>
      nx24302z1, clk=>i_clock_int, ena=>v(4));
   reg_dir5_0 : cycloneii_lcell_ff port map ( regout=>dir5(0), datain=>
      dir2_2, clk=>i_clock_int, ena=>v(4), sclr=>nx36266z1);
   reg_dir4_2 : cycloneii_lcell_ff port map ( regout=>dir4_2, datain=>
      nx46679z1, clk=>i_clock_int);
   reg_dir4_0 : cycloneii_lcell_ff port map ( regout=>dir4_0, datain=>
      nx44685z1, clk=>i_clock_int);
   reg_dir3_2 : cycloneii_lcell_ff port map ( regout=>dir3_2, datain=>
      nx10438z1, clk=>i_clock_int);
   reg_dir2_2 : cycloneii_lcell_ff port map ( regout=>dir2_2, datain=>
      nx2019z1, clk=>i_clock_int);
   reg_dir1_2 : cycloneii_lcell_ff port map ( regout=>dir1_2, datain=>sub1_8, 
      clk=>i_clock_int, ena=>v(1));
   reg_d_7 : cycloneii_lcell_ff port map ( regout=>d(7), datain=>nx36625z1, 
      sdata=>q2(7), clk=>i_clock_int, ena=>nx20492z2, sload=>t(1));
   reg_d_6 : cycloneii_lcell_ff port map ( regout=>d(6), datain=>nx35628z1, 
      sdata=>q2(6), clk=>i_clock_int, ena=>nx20492z2, sload=>t(1));
   reg_d_5 : cycloneii_lcell_ff port map ( regout=>d(5), datain=>nx34631z1, 
      sdata=>q2(5), clk=>i_clock_int, ena=>nx20492z2, sload=>t(1));
   reg_d_4 : cycloneii_lcell_ff port map ( regout=>d(4), datain=>nx33634z1, 
      sdata=>q2(4), clk=>i_clock_int, ena=>nx20492z2, sload=>t(1));
   reg_d_3 : cycloneii_lcell_ff port map ( regout=>d(3), datain=>nx32637z4, 
      sdata=>q2(3), clk=>i_clock_int, ena=>nx20492z2, sload=>t(1));
   reg_d_2 : cycloneii_lcell_ff port map ( regout=>d(2), datain=>nx31640z3, 
      sdata=>q2(2), clk=>i_clock_int, ena=>nx20492z2, sload=>t(1));
   reg_d_1 : cycloneii_lcell_ff port map ( regout=>d(1), datain=>nx30643z3, 
      sdata=>q2(1), clk=>i_clock_int, ena=>nx20492z2, sload=>t(1));
   reg_d_0 : cycloneii_lcell_ff port map ( regout=>d(0), datain=>nx29646z3, 
      sdata=>q2(0), clk=>i_clock_int, ena=>nx20492z2, sload=>t(1));
   reg_c_7 : cycloneii_lcell_ff port map ( regout=>c(7), datain=>nx20492z1, 
      sdata=>q1(7), clk=>i_clock_int, ena=>nx20492z2, sload=>t(1));
   reg_c_6 : cycloneii_lcell_ff port map ( regout=>c(6), datain=>nx21489z1, 
      sdata=>q1(6), clk=>i_clock_int, ena=>nx20492z2, sload=>t(1));
   reg_c_5 : cycloneii_lcell_ff port map ( regout=>c(5), datain=>nx22486z1, 
      sdata=>q1(5), clk=>i_clock_int, ena=>nx20492z2, sload=>t(1));
   reg_c_4 : cycloneii_lcell_ff port map ( regout=>c(4), datain=>nx23483z1, 
      sdata=>q1(4), clk=>i_clock_int, ena=>nx20492z2, sload=>t(1));
   reg_c_3 : cycloneii_lcell_ff port map ( regout=>c(3), datain=>nx24480z1, 
      sdata=>q1(3), clk=>i_clock_int, ena=>nx20492z2, sload=>t(1));
   reg_c_2 : cycloneii_lcell_ff port map ( regout=>c(2), datain=>nx25477z1, 
      sdata=>q1(2), clk=>i_clock_int, ena=>nx20492z2, sload=>t(1));
   reg_c_1 : cycloneii_lcell_ff port map ( regout=>c(1), datain=>nx26474z1, 
      sdata=>q1(1), clk=>i_clock_int, ena=>nx20492z2, sload=>t(1));
   reg_c_0 : cycloneii_lcell_ff port map ( regout=>c(0), datain=>nx27471z1, 
      sdata=>q1(0), clk=>i_clock_int, ena=>nx20492z2, sload=>t(1));
   reg_b_7 : cycloneii_lcell_ff port map ( regout=>b(7), datain=>c(7), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_b_6 : cycloneii_lcell_ff port map ( regout=>b(6), datain=>c(6), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_b_5 : cycloneii_lcell_ff port map ( regout=>b(5), datain=>c(5), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_b_4 : cycloneii_lcell_ff port map ( regout=>b(4), datain=>c(4), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_b_3 : cycloneii_lcell_ff port map ( regout=>b(3), datain=>c(3), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_b_2 : cycloneii_lcell_ff port map ( regout=>b(2), datain=>c(2), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_b_1 : cycloneii_lcell_ff port map ( regout=>b(1), datain=>c(1), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_b_0 : cycloneii_lcell_ff port map ( regout=>b(0), datain=>c(0), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_a_7 : cycloneii_lcell_ff port map ( regout=>a(7), datain=>b(7), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_a_6 : cycloneii_lcell_ff port map ( regout=>a(6), datain=>b(6), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_a_5 : cycloneii_lcell_ff port map ( regout=>a(5), datain=>b(5), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_a_4 : cycloneii_lcell_ff port map ( regout=>a(4), datain=>b(4), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_a_3 : cycloneii_lcell_ff port map ( regout=>a(3), datain=>b(3), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_a_2 : cycloneii_lcell_ff port map ( regout=>a(2), datain=>b(2), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_a_1 : cycloneii_lcell_ff port map ( regout=>a(1), datain=>b(1), clk=>
      i_clock_int, ena=>i_valid_int);
   reg_a_0 : cycloneii_lcell_ff port map ( regout=>a(0), datain=>b(0), clk=>
      i_clock_int, ena=>i_valid_int);
   o_mode_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR492(1), datain=>o_mode_dup0(1));
   o_mode_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR492(0), datain=>o_mode_dup0(0));
   o_edge_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_edge_EXMPLR428, datain=>o_edge_dup0);
   o_dir_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR491(2), datain=>o_dir_dup0(2));
   o_dir_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR491(1), datain=>o_dir_dup0(1));
   o_dir_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR491(0), datain=>o_dir_dup0(0));
   ix37378z43919 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(7), padio=>i_pixel_EXMPLR490(7));
   ix19087z43919 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(6), padio=>i_pixel_EXMPLR490(6));
   ix19087z43920 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(5), padio=>i_pixel_EXMPLR490(5));
   ix19087z43921 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(4), padio=>i_pixel_EXMPLR490(4));
   ix19087z43922 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(3), padio=>i_pixel_EXMPLR490(3));
   ix19087z43923 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(2), padio=>i_pixel_EXMPLR490(2));
   ix19087z43924 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(1), padio=>i_pixel_EXMPLR490(1));
   ix19087z43925 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_pixel_int(0), padio=>i_pixel_EXMPLR490(0));
   ix51998z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_valid_EXMPLR427, datain=>nx51998z1);
   ix23314z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR493(7), datain=>nx23314z1);
   ix22317z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR493(6), datain=>nx22317z1);
   ix21320z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR493(5), datain=>nx21320z1);
   ix20323z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR493(4), datain=>nx20323z1);
   ix19326z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR493(3), datain=>nx19326z1);
   ix18329z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR493(2), datain=>nx18329z1);
   ix17332z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR493(1), datain=>nx17332z1);
   ix16335z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR493(0), datain=>nx16335z1);
   i_valid_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_valid_int, padio=>i_valid_EXMPLR418);
   i_reset_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_reset_int, padio=>i_reset_EXMPLR417);
   i_clock_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_clock_int, padio=>i_clock_EXMPLR416);
   debug_num_5_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR501(3), datain=>
      debug_num_5_dup0_1);
   debug_num_5_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR501(2), datain=>
      debug_num_5_dup0_1);
   debug_num_5_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR501(1), datain=>
      debug_num_5_dup0_1);
   debug_num_5_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR501(0), datain=>
      debug_num_5_dup0(17));
   debug_num_4_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR500(3), datain=>
      debug_num_5_dup0_1);
   debug_num_4_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR500(2), datain=>
      debug_num_5_dup0_1);
   debug_num_4_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR500(1), datain=>
      debug_num_5_dup0(17));
   debug_num_4_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR500(0), datain=>
      debug_num_5_dup0(17));
   debug_num_3_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR499(3), datain=>
      debug_num_5_dup0_1);
   debug_num_3_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR499(2), datain=>
      debug_num_5_dup0_1);
   debug_num_3_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR499(1), datain=>
      debug_num_5_dup0_1);
   debug_num_3_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR499(0), datain=>
      debug_num_5_dup0(17));
   debug_num_2_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR498(3), datain=>
      debug_num_5_dup0(17));
   debug_num_2_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR498(2), datain=>
      debug_num_5_dup0(17));
   debug_num_2_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR498(1), datain=>
      debug_num_5_dup0_1);
   debug_num_2_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR498(0), datain=>
      debug_num_5_dup0_1);
   debug_num_1_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR497(3), datain=>
      debug_num_5_dup0(17));
   debug_num_1_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR497(2), datain=>
      debug_num_5_dup0(17));
   debug_num_1_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR497(1), datain=>
      debug_num_5_dup0_1);
   debug_num_1_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR497(0), datain=>
      debug_num_5_dup0(17));
   debug_num_0_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR496(3), datain=>
      debug_num_5_dup0(17));
   debug_num_0_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR496(2), datain=>
      debug_num_5_dup0_1);
   debug_num_0_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR496(1), datain=>
      debug_num_5_dup0_1);
   debug_num_0_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR496(0), datain=>
      debug_num_5_dup0_1);
   debug_led_red_obuf_9 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR494(9), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_8 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR494(8), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR494(7), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR494(6), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR494(5), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR494(4), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR494(3), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR494(2), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_17 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR494(17), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_16 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR494(16), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_15 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR494(15), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_14 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR494(14), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_13 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR494(13), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_12 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR494(12), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_11 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR494(11), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_10 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR494(10), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR494(1), datain=>
      debug_num_5_dup0(17));
   debug_led_red_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR494(0), datain=>
      debug_num_5_dup0(17));
   debug_led_grn_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR495(5), datain=>
      debug_num_5_dup0(17));
   debug_led_grn_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR495(4), datain=>
      debug_num_5_dup0(17));
   debug_led_grn_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR495(3), datain=>
      debug_num_5_dup0(17));
   debug_led_grn_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR495(2), datain=>
      debug_num_5_dup0(17));
   debug_led_grn_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR495(1), datain=>
      debug_num_5_dup0(17));
   debug_led_grn_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR495(0), datain=>
      debug_num_5_dup0(17));
   ix46108z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"dd0f") 
       port map ( combout=>nx46108z2, dataa=>v(6), datab=>dir4_0, datac=>
      nx46108z3, datad=>nx14428z1);
   ix44114z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"ddf0") 
       port map ( combout=>nx44114z2, dataa=>v(6), datab=>dir4_2, datac=>
      dir6_2, datad=>nx14428z1);
   ix34077z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx34077z2, dataa=>v(2), datab=>v(1), datac=>e(0), 
      datad=>g(0));
   ix35074z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx35074z2, dataa=>v(2), datab=>v(1), datac=>e(1), 
      datad=>g(1));
   ix36071z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx36071z2, dataa=>v(2), datab=>v(1), datac=>e(2), 
      datad=>g(2));
   ix37068z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx37068z2, dataa=>v(2), datab=>v(1), datac=>e(3), 
      datad=>g(3));
   ix38065z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx38065z2, dataa=>v(2), datab=>v(1), datac=>e(4), 
      datad=>g(4));
   ix39062z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx39062z2, dataa=>v(2), datab=>v(1), datac=>e(5), 
      datad=>g(5));
   ix40059z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx40059z2, dataa=>v(2), datab=>v(1), datac=>e(6), 
      datad=>g(6));
   ix41056z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx41056z2, dataa=>v(2), datab=>v(1), datac=>e(7), 
      datad=>g(7));
   ix25658z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx25658z2, dataa=>v(2), datab=>v(1), datac=>b(0), 
      datad=>h(0));
   ix26655z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx26655z2, dataa=>v(2), datab=>v(1), datac=>b(1), 
      datad=>h(1));
   ix27652z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx27652z2, dataa=>v(2), datab=>v(1), datac=>b(2), 
      datad=>h(2));
   ix28649z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx28649z2, dataa=>v(2), datab=>v(1), datac=>b(3), 
      datad=>h(3));
   ix29646z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx29646z2, dataa=>v(2), datab=>v(1), datac=>b(4), 
      datad=>h(4));
   ix30643z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx30643z2, dataa=>v(2), datab=>v(1), datac=>b(5), 
      datad=>h(5));
   ix31640z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx31640z2, dataa=>v(2), datab=>v(1), datac=>b(6), 
      datad=>h(6));
   ix32637z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx32637z2, dataa=>v(2), datab=>v(1), datac=>b(7), 
      datad=>h(7));
   ix48297z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx48297z2, dataa=>v(2), datab=>v(1), datac=>a(0), 
      datad=>f(0));
   ix47300z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx47300z2, dataa=>v(2), datab=>v(1), datac=>a(1), 
      datad=>f(1));
   ix46303z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx46303z2, dataa=>v(2), datab=>v(1), datac=>a(2), 
      datad=>f(2));
   ix45306z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx45306z2, dataa=>v(2), datab=>v(1), datac=>a(3), 
      datad=>f(3));
   ix44309z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx44309z2, dataa=>v(2), datab=>v(1), datac=>a(4), 
      datad=>f(4));
   ix43312z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx43312z2, dataa=>v(2), datab=>v(1), datac=>a(5), 
      datad=>f(5));
   ix42315z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx42315z2, dataa=>v(2), datab=>v(1), datac=>a(6), 
      datad=>f(6));
   ix41318z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fedc") 
       port map ( combout=>nx41318z2, dataa=>v(2), datab=>v(1), datac=>a(7), 
      datad=>f(7));
   ix56716z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx56716z2, dataa=>v(2), datab=>v(1), datac=>g(0), 
      datad=>h(0));
   ix55719z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx55719z2, dataa=>v(2), datab=>v(1), datac=>g(1), 
      datad=>h(1));
   ix54722z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx54722z2, dataa=>v(2), datab=>v(1), datac=>g(2), 
      datad=>h(2));
   ix53725z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx53725z2, dataa=>v(2), datab=>v(1), datac=>g(3), 
      datad=>h(3));
   ix52728z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx52728z2, dataa=>v(2), datab=>v(1), datac=>g(4), 
      datad=>h(4));
   ix51731z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx51731z2, dataa=>v(2), datab=>v(1), datac=>g(5), 
      datad=>h(5));
   ix50734z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx50734z2, dataa=>v(2), datab=>v(1), datac=>g(6), 
      datad=>h(6));
   ix49737z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fdec") 
       port map ( combout=>nx49737z2, dataa=>v(2), datab=>v(1), datac=>g(7), 
      datad=>h(7));
   ix6176z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>nx6176z7, dataa=>o_row_dup0(5), datab=>
      o_row_dup0(4));
   ix17322z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>nx17322z6, dataa=>x(1), datab=>x(0));
   ix6176z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>nx6176z9, dataa=>x(7), datab=>x(6));
   ix17322z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"ccc8") 
       port map ( combout=>nx17322z4, dataa=>end_of_img, datab=>i_valid_int, 
      datac=>nx17322z5, datad=>nx17322z6);
   ix17322z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"fcf4") 
       port map ( combout=>nx17322z7, dataa=>x(5), datab=>i_valid_int, datac
      =>nx17322z8, datad=>nx6176z9);
   ix6176z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx6176z6, dataa=>o_row_dup0(7), datab=>
      o_row_dup0(6));
   ix6176z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx6176z5, dataa=>o_row_dup0(1), datab=>
      o_row_dup0(0));
   ix6176z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx6176z4, dataa=>o_row_dup0(3), datab=>
      o_row_dup0(2));
   ix17322z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx17322z14, dataa=>o_row_dup0(5), datab=>
      o_row_dup0(4), datac=>end_of_img, datad=>nx6176z6);
   ix19087z52962 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>nx19087z25, dataa=>x(2), datab=>x(1));
   ix6176z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>nx6176z8, dataa=>x(5), datab=>x(4));
   ix17322z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeec") 
       port map ( combout=>nx17322z11, dataa=>end_of_img, datab=>nx17322z12, 
      datac=>nx17322z13, datad=>nx6176z9);
   ix17322z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx17322z16, dataa=>x(3), datab=>x(2));
   ix19087z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"cc4c") 
       port map ( combout=>nx19087z3, dataa=>o_row_dup0(7), datab=>x(7), 
      datac=>i_valid_int, datad=>nx17322z6);
   ix19087z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>nx19087z9, dataa=>o_row_dup0(0), datab=>x(7));
   ix19087z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"aaa2") 
       port map ( combout=>nx19087z8, dataa=>x(6), datab=>x(5), datac=>
      nx17322z5, datad=>nx19087z9);
   ix19087z52943 : cycloneii_lcell_comb
      generic map (lut_mask => X"ccc4") 
       port map ( combout=>nx19087z11, dataa=>x(6), datab=>x(5), datac=>
      nx17322z5, datad=>nx19087z9);
   ix19087z52946 : cycloneii_lcell_comb
      generic map (lut_mask => X"fcf4") 
       port map ( combout=>nx19087z13, dataa=>x(6), datab=>x(4), datac=>
      nx19087z14, datad=>nx19087z9);
   ix19087z52950 : cycloneii_lcell_comb
      generic map (lut_mask => X"aaa2") 
       port map ( combout=>nx19087z16, dataa=>x(3), datab=>x(2), datac=>
      nx19087z17, datad=>nx6176z8);
   ix19087z52954 : cycloneii_lcell_comb
      generic map (lut_mask => X"ccc4") 
       port map ( combout=>nx19087z19, dataa=>x(6), datab=>x(2), datac=>
      nx17322z13, datad=>nx19087z9);
   ix19087z52958 : cycloneii_lcell_comb
      generic map (lut_mask => X"ccc4") 
       port map ( combout=>nx19087z22, dataa=>x(6), datab=>x(1), datac=>
      nx17322z13, datad=>nx19087z9);
   ix19087z52961 : cycloneii_lcell_comb
      generic map (lut_mask => X"cc4c") 
       port map ( combout=>nx19087z24, dataa=>o_row_dup0(7), datab=>x(0), 
      datac=>i_valid_int, datad=>nx19087z25);
   ix17322z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx17322z15, dataa=>nx17322z16, datab=>nx6176z8, 
      datac=>nx6176z9, datad=>nx17322z6);
   ix6176z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0080") 
       port map ( combout=>nx6176z3, dataa=>nx6176z4, datab=>nx6176z5, datac
      =>nx6176z6, datad=>nx6176z7);
   ix19087z52964 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff7f") 
       port map ( combout=>nx19087z26, dataa=>nx6176z4, datab=>nx6176z5, 
      datac=>nx6176z6, datad=>nx6176z7);
   ix19087z52965 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffd") 
       port map ( combout=>nx19087z27, dataa=>nx17322z16, datab=>nx6176z8, 
      datac=>nx6176z9, datad=>nx17322z6);
   ix24222z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx24222z1, dataa=>t(1), datab=>t(0));
   ix25299z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx25299z2, dataa=>v(4), datab=>v(3));
   ix38525z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0080") 
       port map ( combout=>nx38525z2, dataa=>x(7), datab=>x(6), datac=>
      i_valid_int, datad=>nx6176z8);
   ix28105z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx28105z7, dataa=>o_row_dup0(1), datab=>v(6));
   ix28105z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"fef0") 
       port map ( combout=>nx28105z5, dataa=>x(3), datab=>x(2), datac=>
      nx28105z6, datad=>nx28105z7);
   ix28105z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"fef0") 
       port map ( combout=>nx28105z8, dataa=>x(7), datab=>x(6), datac=>
      nx28105z9, datad=>nx28105z7);
   ix28105z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"fcf8") 
       port map ( combout=>nx28105z3, dataa=>o_row_dup0(2), datab=>v(6), 
      datac=>nx28105z4, datad=>nx6176z5);
   ix36874z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx36874z4, dataa=>nx36874z5, datab=>nx36874z6);
   ix36874z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"eaea") 
       port map ( combout=>nx36874z7, dataa=>nx36874z8, datab=>nx36874z9, 
      datac=>nx36874z10);
   ix36874z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx36874z2, dataa=>v(7), datab=>nx36874z3);
   ix17322z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"7f7f") 
       port map ( combout=>nx17322z13, dataa=>x(5), datab=>x(4), datac=>x(3)
   );
   ix19087z52951 : cycloneii_lcell_comb
      generic map (lut_mask => X"7f7f") 
       port map ( combout=>nx19087z17, dataa=>o_row_dup0(0), datab=>x(7), 
      datac=>x(6));
   ix19087z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"7f7f") 
       port map ( combout=>nx19087z5, dataa=>o_row_dup0(3), datab=>
      o_row_dup0(2), datac=>o_row_dup0(1));
   ix19087z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"7f7f") 
       port map ( combout=>nx19087z4, dataa=>o_row_dup0(6), datab=>
      o_row_dup0(5), datac=>o_row_dup0(4));
   ix19087z52957 : cycloneii_lcell_comb
      generic map (lut_mask => X"7f7f") 
       port map ( combout=>nx19087z21, dataa=>x(2), datab=>x(0), datac=>
      i_valid_int);
   ix19087z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"7f7f") 
       port map ( combout=>nx19087z7, dataa=>x(1), datab=>x(0), datac=>
      i_valid_int);
   ix17322z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"7f7f") 
       port map ( combout=>nx17322z5, dataa=>x(4), datab=>x(3), datac=>x(2)
   );
   ix31609z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx31609z1, dataa=>nx36874z1, datab=>nx36874z5, 
      datac=>nx36874z6, datad=>nx36874z7);
   ix28105z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"a800") 
       port map ( combout=>nx28105z9, dataa=>o_row_dup0(1), datab=>x(5), 
      datac=>x(4), datad=>v(6));
   ix28105z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx28105z6, dataa=>o_row_dup0(1), datab=>x(1), 
      datac=>x(0), datad=>v(6));
   ix28105z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"fe00") 
       port map ( combout=>nx28105z4, dataa=>o_row_dup0(5), datab=>
      o_row_dup0(4), datac=>o_row_dup0(3), datad=>v(6));
   ix28105z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e0e0") 
       port map ( combout=>nx28105z2, dataa=>o_row_dup0(7), datab=>
      o_row_dup0(6), datac=>v(6));
   ix6176z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx6176z2, dataa=>x(3), datab=>x(2), datac=>x(1), 
      datad=>x(0));
   ix6176z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0008") 
       port map ( combout=>nx6176z1, dataa=>nx6176z2, datab=>nx6176z3, datac
      =>nx6176z8, datad=>nx6176z9);
   ix26373z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0d08") 
       port map ( combout=>nx26373z2, dataa=>o_mode_dup0(1), datab=>v(0), 
      datac=>end_of_img, datad=>i_reset_int);
   ix19087z52960 : cycloneii_lcell_comb
      generic map (lut_mask => X"ffa8") 
       port map ( combout=>nx19087z23, dataa=>x(0), datab=>nx19087z17, datac
      =>nx17322z13, datad=>nx19087z24);
   ix19087z52956 : cycloneii_lcell_comb
      generic map (lut_mask => X"ffc4") 
       port map ( combout=>nx19087z20, dataa=>o_row_dup0(7), datab=>x(1), 
      datac=>nx19087z21, datad=>nx19087z22);
   ix19087z52953 : cycloneii_lcell_comb
      generic map (lut_mask => X"ffc4") 
       port map ( combout=>nx19087z18, dataa=>o_row_dup0(7), datab=>x(2), 
      datac=>nx19087z7, datad=>nx19087z19);
   ix19087z52949 : cycloneii_lcell_comb
      generic map (lut_mask => X"ffc4") 
       port map ( combout=>nx19087z15, dataa=>o_row_dup0(7), datab=>x(3), 
      datac=>nx19087z7, datad=>nx19087z16);
   ix19087z52947 : cycloneii_lcell_comb
      generic map (lut_mask => X"4ccc") 
       port map ( combout=>nx19087z14, dataa=>x(5), datab=>x(4), datac=>x(3), 
      datad=>x(2));
   ix19087z52945 : cycloneii_lcell_comb
      generic map (lut_mask => X"ffc4") 
       port map ( combout=>nx19087z12, dataa=>o_row_dup0(7), datab=>x(4), 
      datac=>nx19087z7, datad=>nx19087z13);
   ix19087z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"ffc4") 
       port map ( combout=>nx19087z10, dataa=>o_row_dup0(7), datab=>x(5), 
      datac=>nx19087z7, datad=>nx19087z11);
   ix19087z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"ffc4") 
       port map ( combout=>nx19087z6, dataa=>o_row_dup0(7), datab=>x(6), 
      datac=>nx19087z7, datad=>nx19087z8);
   ix19087z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"4ccc") 
       port map ( combout=>nx19087z2, dataa=>o_row_dup0(0), datab=>x(7), 
      datac=>x(6), datad=>x(5));
   ix19087z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"ffec") 
       port map ( combout=>nx19087z1, dataa=>x(7), datab=>nx19087z2, datac=>
      nx17322z5, datad=>nx19087z3);
   ix17322z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"7f00") 
       port map ( combout=>nx17322z12, dataa=>x(2), datab=>x(1), datac=>x(0), 
      datad=>end_of_img);
   ix17322z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx17322z10, dataa=>o_row_dup0(3), datab=>
      o_row_dup0(2), datac=>o_row_dup0(1), datad=>o_row_dup0(0));
   ix17322z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"7f00") 
       port map ( combout=>nx17322z8, dataa=>o_row_dup0(2), datab=>
      o_row_dup0(1), datac=>o_row_dup0(0), datad=>i_valid_int);
   ix17322z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"7f00") 
       port map ( combout=>nx17322z3, dataa=>o_row_dup0(5), datab=>
      o_row_dup0(4), datac=>o_row_dup0(3), datad=>i_valid_int);
   ix17322z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f7f0") 
       port map ( combout=>nx17322z2, dataa=>o_row_dup0(7), datab=>
      o_row_dup0(6), datac=>i_reset_int, datad=>i_valid_int);
   ix46108z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ef00") 
       port map ( combout=>nx46108z1, dataa=>v(6), datab=>dir7(0), datac=>
      nx14428z1, datad=>nx46108z2);
   ix45111z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5033") 
       port map ( combout=>nx45111z1, dataa=>v(6), datab=>nx45111z2, datac=>
      dir7(1), datad=>nx14428z1);
   ix44114z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ef00") 
       port map ( combout=>nx44114z1, dataa=>v(6), datab=>dir7(2), datac=>
      nx14428z1, datad=>nx44114z2);
   ix35695z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f2d0") 
       port map ( combout=>nx35695z1, dataa=>v(5), datab=>v(4), datac=>
      dir6_2, datad=>dir6_23n5ss1_2);
   ix2019z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0f2") 
       port map ( combout=>nx2019z1, dataa=>v(2), datab=>v(1), datac=>dir2_2, 
      datad=>nx7380z1);
   ix10438z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"3a3a") 
       port map ( combout=>nx10438z1, dataa=>dir3_2, datab=>nx7380z1, datac
      =>nx10438z2);
   ix44685z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>nx44685z1, dataa=>dir4_0, datab=>nx7380z1, datac
      =>nx46679z2);
   ix46679z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"3a3a") 
       port map ( combout=>nx46679z1, dataa=>dir4_2, datab=>nx7380z1, datac
      =>nx46679z2);
   ix36692z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx36692z1, dataa=>v(5), datab=>v(4));
   ix38525z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"aaea") 
       port map ( combout=>nx38525z1, dataa=>i_reset_int, datab=>nx38525z2, 
      datac=>nx17322z16, datad=>nx17322z6);
   ix6176z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"fcec") 
       port map ( combout=>nx6176z10, dataa=>end_of_img, datab=>i_reset_int, 
      datac=>i_valid_int, datad=>nx6176z1);
   ix36625z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx36625z1, dataa=>t(0), datab=>q1(7), datac=>
      q3(7));
   ix35628z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx35628z1, dataa=>t(0), datab=>q1(6), datac=>
      q3(6));
   ix34631z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx34631z1, dataa=>t(0), datab=>q1(5), datac=>
      q3(5));
   ix33634z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx33634z1, dataa=>t(0), datab=>q1(4), datac=>
      q3(4));
   ix32637z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx32637z4, dataa=>t(0), datab=>q1(3), datac=>
      q3(3));
   ix31640z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx31640z3, dataa=>t(0), datab=>q1(2), datac=>
      q3(2));
   ix30643z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx30643z3, dataa=>t(0), datab=>q1(1), datac=>
      q3(1));
   ix29646z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8d8") 
       port map ( combout=>nx29646z3, dataa=>t(0), datab=>q1(0), datac=>
      q3(0));
   ix20492z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>nx20492z1, dataa=>t(0), datab=>q2(7), datac=>
      q3(7));
   ix21489z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>nx21489z1, dataa=>t(0), datab=>q2(6), datac=>
      q3(6));
   ix22486z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>nx22486z1, dataa=>t(0), datab=>q2(5), datac=>
      q3(5));
   ix23483z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>nx23483z1, dataa=>t(0), datab=>q2(4), datac=>
      q3(4));
   ix24480z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>nx24480z1, dataa=>t(0), datab=>q2(3), datac=>
      q3(3));
   ix25477z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>nx25477z1, dataa=>t(0), datab=>q2(2), datac=>
      q3(2));
   ix26474z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>nx26474z1, dataa=>t(0), datab=>q2(1), datac=>
      q3(1));
   ix27471z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e4e4") 
       port map ( combout=>nx27471z1, dataa=>t(0), datab=>q2(0), datac=>
      q3(0));
   ix49737z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx49737z1, dataa=>v(1), datab=>d(7), datac=>
      nx49737z2);
   ix50734z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx50734z1, dataa=>v(1), datab=>d(6), datac=>
      nx50734z2);
   ix51731z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx51731z1, dataa=>v(1), datab=>d(5), datac=>
      nx51731z2);
   ix52728z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx52728z1, dataa=>v(1), datab=>d(4), datac=>
      nx52728z2);
   ix53725z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx53725z1, dataa=>v(1), datab=>d(3), datac=>
      nx53725z2);
   ix54722z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx54722z1, dataa=>v(1), datab=>d(2), datac=>
      nx54722z2);
   ix55719z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx55719z1, dataa=>v(1), datab=>d(1), datac=>
      nx55719z2);
   ix56716z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx56716z1, dataa=>v(1), datab=>d(0), datac=>
      nx56716z2);
   ix41318z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx41318z1, dataa=>v(1), datab=>e(7), datac=>
      nx41318z2);
   ix42315z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx42315z1, dataa=>v(1), datab=>e(6), datac=>
      nx42315z2);
   ix43312z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx43312z1, dataa=>v(1), datab=>e(5), datac=>
      nx43312z2);
   ix44309z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx44309z1, dataa=>v(1), datab=>e(4), datac=>
      nx44309z2);
   ix45306z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx45306z1, dataa=>v(1), datab=>e(3), datac=>
      nx45306z2);
   ix46303z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx46303z1, dataa=>v(1), datab=>e(2), datac=>
      nx46303z2);
   ix47300z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx47300z1, dataa=>v(1), datab=>e(1), datac=>
      nx47300z2);
   ix48297z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx48297z1, dataa=>v(1), datab=>e(0), datac=>
      nx48297z2);
   ix32637z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx32637z1, dataa=>v(1), datab=>f(7), datac=>
      nx32637z2);
   ix31640z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx31640z1, dataa=>v(1), datab=>f(6), datac=>
      nx31640z2);
   ix30643z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx30643z1, dataa=>v(1), datab=>f(5), datac=>
      nx30643z2);
   ix29646z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx29646z1, dataa=>v(1), datab=>f(4), datac=>
      nx29646z2);
   ix28649z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx28649z1, dataa=>v(1), datab=>f(3), datac=>
      nx28649z2);
   ix27652z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx27652z1, dataa=>v(1), datab=>f(2), datac=>
      nx27652z2);
   ix26655z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx26655z1, dataa=>v(1), datab=>f(1), datac=>
      nx26655z2);
   ix25658z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx25658z1, dataa=>v(1), datab=>f(0), datac=>
      nx25658z2);
   ix41056z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx41056z1, dataa=>v(1), datab=>c(7), datac=>
      nx41056z2);
   ix40059z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx40059z1, dataa=>v(1), datab=>c(6), datac=>
      nx40059z2);
   ix39062z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx39062z1, dataa=>v(1), datab=>c(5), datac=>
      nx39062z2);
   ix38065z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx38065z1, dataa=>v(1), datab=>c(4), datac=>
      nx38065z2);
   ix37068z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx37068z1, dataa=>v(1), datab=>c(3), datac=>
      nx37068z2);
   ix36071z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx36071z1, dataa=>v(1), datab=>c(2), datac=>
      nx36071z2);
   ix35074z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx35074z1, dataa=>v(1), datab=>c(1), datac=>
      nx35074z2);
   ix34077z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx34077z1, dataa=>v(1), datab=>c(0), datac=>
      nx34077z2);
   ix36266z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx36266z1, dataa=>v(4), datab=>nx24302z1);
   ix36692z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0202") 
       port map ( combout=>nx36692z2, dataa=>v(5), datab=>v(4), datac=>
      nx24302z1);
   ix28105z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx28105z1, dataa=>nx28105z2, datab=>nx28105z3, 
      datac=>nx28105z5, datad=>nx28105z8);
   ix25299z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0302") 
       port map ( combout=>nx25299z1, dataa=>v(2), datab=>v(1), datac=>v(0), 
      datad=>nx25299z2);
   ix32637z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx32637z3, dataa=>v(3), datab=>v(2), datac=>v(1), 
      datad=>v(0));
   ix35695z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>dir6_23n5ss1_2, dataa=>dir3_2, datab=>dir5(2), 
      datac=>nx24302z1);
   ix38260z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>dir5_23n5ss1_2, dataa=>dir1_2, datab=>dir2_2, 
      datac=>nx24302z1);
   ix46679z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx46679z2, dataa=>v(4), datab=>v(3), datac=>v(2), 
      datad=>v(1));
   ix10438z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0202") 
       port map ( combout=>nx10438z2, dataa=>v(3), datab=>v(2), datac=>v(1)
   );
   ix20492z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"7070") 
       port map ( combout=>nx20492z2, dataa=>t(1), datab=>t(0), datac=>
      i_valid_int);
   ix17322z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx17322z1, dataa=>nx17322z2, datab=>nx17322z3, 
      datac=>nx17322z4, datad=>nx17322z7);
   ix17322z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefa") 
       port map ( combout=>nx17322z9, dataa=>i_reset_int, datab=>nx17322z10, 
      datac=>nx17322z11, datad=>nx17322z14);
   ix39522z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>t_20n2s1(0), dataa=>t(1), datab=>t(0));
   ix38525z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>t_20n2s1(1), dataa=>t(1), datab=>t(0));
   ix26373z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"00f9") 
       port map ( combout=>nx26373z1, dataa=>o_mode_dup0(1), datab=>
      nx47893z1, datac=>end_of_img, datad=>nx26373z2);
   ix19087z52959 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeec") 
       port map ( combout=>addr_x(0), dataa=>x(0), datab=>nx19087z23, datac
      =>nx19087z4, datad=>nx19087z5);
   ix19087z52955 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeec") 
       port map ( combout=>addr_x(1), dataa=>x(1), datab=>nx19087z20, datac
      =>nx19087z4, datad=>nx19087z5);
   ix19087z52952 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeec") 
       port map ( combout=>addr_x(2), dataa=>x(2), datab=>nx19087z18, datac
      =>nx19087z4, datad=>nx19087z5);
   ix19087z52948 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeec") 
       port map ( combout=>addr_x(3), dataa=>x(3), datab=>nx19087z15, datac
      =>nx19087z4, datad=>nx19087z5);
   ix19087z52944 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeec") 
       port map ( combout=>addr_x(4), dataa=>x(4), datab=>nx19087z12, datac
      =>nx19087z4, datad=>nx19087z5);
   ix19087z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeec") 
       port map ( combout=>addr_x(5), dataa=>x(5), datab=>nx19087z10, datac
      =>nx19087z4, datad=>nx19087z5);
   ix19087z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeec") 
       port map ( combout=>addr_x(6), dataa=>x(6), datab=>nx19087z6, datac=>
      nx19087z4, datad=>nx19087z5);
   ix19087z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeec") 
       port map ( combout=>addr_x(7), dataa=>x(7), datab=>nx19087z1, datac=>
      nx19087z4, datad=>nx19087z5);
   ix33275z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>max2(0), dataa=>r9(0), datab=>r11(0), datac=>
      nx24302z1);
   ix32278z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>max2(1), dataa=>r9(1), datab=>r11(1), datac=>
      nx24302z1);
   ix31281z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>max2(2), dataa=>r9(2), datab=>r11(2), datac=>
      nx24302z1);
   ix30284z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>max2(3), dataa=>r9(3), datab=>r11(3), datac=>
      nx24302z1);
   ix29287z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>max2(4), dataa=>r9(4), datab=>r11(4), datac=>
      nx24302z1);
   ix28290z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>max2(5), dataa=>r9(5), datab=>r11(5), datac=>
      nx24302z1);
   ix27293z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>max2(6), dataa=>r9(6), datab=>r11(6), datac=>
      nx24302z1);
   ix26296z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>max2(7), dataa=>r9(7), datab=>r11(7), datac=>
      nx24302z1);
   ix25299z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>max2(8), dataa=>r9(8), datab=>r11(8), datac=>
      nx24302z1);
   ix24302z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>max2(9), dataa=>r9(9), datab=>r11(9), datac=>
      nx24302z1);
   ix24222z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8880") 
       port map ( combout=>wren_m3, dataa=>i_valid_int, datab=>nx24222z1, 
      datac=>nx19087z26, datad=>nx19087z27);
   ix19087z52963 : cycloneii_lcell_comb
      generic map (lut_mask => X"8880") 
       port map ( combout=>wren_m2, dataa=>i_valid_int, datab=>t_20n2s1(1), 
      datac=>nx19087z26, datad=>nx19087z27);
   ix13952z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a888") 
       port map ( combout=>wren_m1, dataa=>i_valid_int, datab=>t_20n2s1(0), 
      datac=>nx6176z3, datad=>nx17322z15);
   ix33603z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>o_dir_dup0(0), dataa=>v(7), datab=>dir7(0), datac
      =>nx36874z3, datad=>nx31609z1);
   ix32606z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>o_dir_dup0(1), dataa=>v(7), datab=>dir7(1), datac
      =>nx36874z3, datad=>nx31609z1);
   ix31609z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>o_dir_dup0(2), dataa=>v(7), datab=>dir7(2), datac
      =>nx36874z3, datad=>nx31609z1);
   ix36874z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ccc8") 
       port map ( combout=>o_edge_dup0, dataa=>nx36874z1, datab=>nx36874z2, 
      datac=>nx36874z4, datad=>nx36874z7);
end main ;

