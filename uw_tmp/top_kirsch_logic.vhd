
-- 
-- Definition of  top_kirsch
-- 
--      03/20/15 14:39:46
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_11_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (10 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (10 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_11_0 ;

architecture IMPLEMENTATION of modgen_counter_11_0 is 
   signal nx3957z1, nx17096z3, nx17096z5, nx17096z7, nx17096z9, nx17096z11, 
      nx17096z13, nx17096z15, nx17096z17, nx17096z19, nx17096z21, nx51271z1, 
      nx17096z20, nx52268z1, nx17096z18, nx53265z1, nx17096z16, nx54262z1, 
      nx17096z14, nx55259z1, nx17096z12, nx56256z1, nx17096z10, nx57253z1, 
      nx17096z8, nx58250z1, nx17096z6, nx59247z1, nx17096z4, nx60244z1, 
      nx17096z2, nx17096z1, nx_modgen_counter_11_0_vcc_net: std_logic ;

begin
   q(10) <= nx3957z1 ;
   q(9) <= nx17096z3 ;
   q(8) <= nx17096z5 ;
   q(7) <= nx17096z7 ;
   q(6) <= nx17096z9 ;
   q(5) <= nx17096z11 ;
   q(4) <= nx17096z13 ;
   q(3) <= nx17096z15 ;
   q(2) <= nx17096z17 ;
   q(1) <= nx17096z19 ;
   q(0) <= nx17096z21 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>nx17096z3, datain=>
      nx60244z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx17096z5, datain=>
      nx59247z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx17096z7, datain=>
      nx58250z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx17096z9, datain=>
      nx57253z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx17096z11, datain=>
      nx56256z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx17096z13, datain=>
      nx55259z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx17096z15, datain=>
      nx54262z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx17096z17, datain=>
      nx53265z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>nx3957z1, datain=>
      nx17096z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx17096z19, datain=>
      nx52268z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx17096z21, datain=>
      nx51271z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   ix17096z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx17096z16, dataa=>nx17096z17, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z18);
   nx_modgen_counter_11_0_vcc_net <= '1';
   ix17096z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx17096z1, dataa=>nx3957z1, datad=>
      nx_modgen_counter_11_0_vcc_net, cin=>nx17096z2);
   ix17096z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, cout=>nx17096z2, dataa=>nx17096z3, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z4);
   ix17096z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx17096z4, dataa=>nx17096z5, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z6);
   ix17096z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx17096z6, dataa=>nx17096z7, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z8);
   ix17096z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx17096z18, dataa=>nx17096z19, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z20);
   ix17096z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx17096z8, dataa=>nx17096z9, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z10);
   ix17096z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx17096z10, dataa=>nx17096z11, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z12);
   ix17096z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx17096z12, dataa=>nx17096z13, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z14);
   ix17096z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx17096z14, dataa=>nx17096z15, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z16);
   ix17096z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx17096z20, dataa=>nx17096z21, 
      datad=>nx_modgen_counter_11_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_12_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (11 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (11 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_12_0 ;

architecture IMPLEMENTATION of modgen_counter_12_0 is 
   signal nx2960z1, nx18093z3, nx18093z5, nx18093z7, nx18093z9, nx18093z11, 
      nx18093z13, nx18093z15, nx18093z17, nx18093z19, nx18093z21, nx18093z23, 
      nx51271z1, nx18093z22, nx52268z1, nx18093z20, nx53265z1, nx18093z18, 
      nx54262z1, nx18093z16, nx55259z1, nx18093z14, nx56256z1, nx18093z12, 
      nx57253z1, nx18093z10, nx58250z1, nx18093z8, nx59247z1, nx18093z6, 
      nx60244z1, nx18093z4, nx17096z1, nx18093z2, nx18093z1, 
      nx_modgen_counter_12_0_vcc_net: std_logic ;

begin
   q(11) <= nx2960z1 ;
   q(10) <= nx18093z3 ;
   q(9) <= nx18093z5 ;
   q(8) <= nx18093z7 ;
   q(7) <= nx18093z9 ;
   q(6) <= nx18093z11 ;
   q(5) <= nx18093z13 ;
   q(4) <= nx18093z15 ;
   q(3) <= nx18093z17 ;
   q(2) <= nx18093z19 ;
   q(1) <= nx18093z21 ;
   q(0) <= nx18093z23 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>nx18093z5, datain=>
      nx60244z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx18093z7, datain=>
      nx59247z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx18093z9, datain=>
      nx58250z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx18093z11, datain=>
      nx57253z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx18093z13, datain=>
      nx56256z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx18093z15, datain=>
      nx55259z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx18093z17, datain=>
      nx54262z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx18093z19, datain=>
      nx53265z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_11 : cycloneii_lcell_ff port map ( regout=>nx2960z1, datain=>
      nx18093z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>nx18093z3, datain=>
      nx17096z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx18093z21, datain=>
      nx52268z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx18093z23, datain=>
      nx51271z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   ix18093z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx18093z18, dataa=>nx18093z19, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z20);
   nx_modgen_counter_12_0_vcc_net <= '1';
   ix18093z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx18093z1, dataa=>nx2960z1, datad=>
      nx_modgen_counter_12_0_vcc_net, cin=>nx18093z2);
   ix18093z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx17096z1, cout=>nx18093z2, dataa=>nx18093z3, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z4);
   ix18093z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, cout=>nx18093z4, dataa=>nx18093z5, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z6);
   ix18093z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx18093z6, dataa=>nx18093z7, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z8);
   ix18093z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx18093z8, dataa=>nx18093z9, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z10);
   ix18093z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx18093z20, dataa=>nx18093z21, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z22);
   ix18093z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx18093z10, dataa=>nx18093z11, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z12);
   ix18093z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx18093z12, dataa=>nx18093z13, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z14);
   ix18093z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx18093z14, dataa=>nx18093z15, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z16);
   ix18093z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx18093z16, dataa=>nx18093z17, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z18);
   ix18093z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx18093z22, dataa=>nx18093z23, 
      datad=>nx_modgen_counter_12_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity UARTS is 
   port (
      CLK : IN std_logic ;
      RST : IN std_logic ;
      Din : IN std_logic_vector (7 DOWNTO 0) ;
      LD : IN std_logic ;
      Rx : IN std_logic ;
      Baud : IN std_logic ;
      Dout : OUT std_logic_vector (7 DOWNTO 0) ;
      Tx : OUT std_logic ;
      TxBusy : OUT std_logic ;
      RxErr : OUT std_logic ;
      RxRDY : OUT std_logic ;
      p_Tx_Reg_14n6ss1_0 : OUT std_logic ;
      p_NOT_rtlcn2 : OUT std_logic ;
      p_rxflex : IN std_logic ;
      p_nrst_int_dup_9 : IN std_logic) ;
end UARTS ;

architecture RTL_unfold_1358 of UARTS is 
   component modgen_counter_11_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (10 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (10 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component modgen_counter_12_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (11 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (11 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   signal RxErr_EXMPLR487, RxRDY_EXMPLR488: std_logic ;
   
   signal Rx_Reg: std_logic_vector (7 DOWNTO 0) ;
   
   signal TxDivisor_5: std_logic ;
   
   signal RxDiv: std_logic_vector (10 DOWNTO 0) ;
   
   signal TxDiv: std_logic_vector (11 DOWNTO 0) ;
   
   signal TopTx, TopRx: std_logic ;
   
   signal TxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal RxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal Rx_r: std_logic ;
   
   signal TxFSM: std_logic_vector (1 DOWNTO 0) ;
   
   signal RxFSM_6, RxFSM_5, RxFSM_3, RxFSM_2, RxFSM_1, RxFSM_0, nx65151z1, 
      nx50920z2, nx35603z1, not_rtlc17_X_0_n360, nx54636z1, nx15541z1, 
      nx13547z1, nx14544z1, nx11553z1, nx34394z1, nx34394z3, nx32400z1, 
      nx13547z2, nx30017z1, PWR, nx4608z1, nx51917z2, nx50920z3, nx51917z3, 
      nx9370z2, nx51917z1, nx50920z1, nx49923z1, nx48926z1, nx8373z1, 
      nx9370z1, nx10367z1, nx11364z1, nx5605z1, nx15376z1, nx34394z4, 
      nx34394z5, nx34394z6, nx34394z9, nx34394z7, nx34394z10, nx34394z8, 
      nx32400z2, nx32400z3, nx32400z4, nx32400z6, nx32400z5, nx32400z7, 
      nx15541z2, nx4608z2, nx4608z3, nx51917z4, nx8373z2, nx15541z3, 
      nx32400z8, nx32400z9, not_Rx_r, NOT_Rx, nx34606z1, 
      NOT_Tx_Reg_14n6ss1_8, nx33609z1, NOT_Tx_Reg_14n6ss1_7, nx32612z1, 
      NOT_Tx_Reg_14n6ss1_6, nx31615z1, NOT_Tx_Reg_14n6ss1_5, nx30618z1, 
      NOT_Tx_Reg_14n6ss1_4, nx29621z1, NOT_Tx_Reg_14n6ss1_3, nx28624z1, 
      NOT_Tx_Reg_14n6ss1_2, nx61140z1, NOT_Tx_Reg_14n6ss1_1, nx34394z2, 
      nx16538z1: std_logic ;
   
   signal DANGLING : std_logic_vector (32 downto 0 );

begin
   RxErr <= RxErr_EXMPLR487 ;
   RxRDY <= RxRDY_EXMPLR488 ;
   modgen_counter_RxDiv : modgen_counter_11_0 port map ( clock=>CLK, q(10)=>
      RxDiv(10), q(9)=>RxDiv(9), q(8)=>RxDiv(8), q(7)=>RxDiv(7), q(6)=>
      RxDiv(6), q(5)=>RxDiv(5), q(4)=>RxDiv(4), q(3)=>RxDiv(3), q(2)=>
      RxDiv(2), q(1)=>RxDiv(1), q(0)=>RxDiv(0), clk_en=>DANGLING(0), aclear
      =>RST, sload=>DANGLING(1), data(10)=>DANGLING(2), data(9)=>DANGLING(3), 
      data(8)=>DANGLING(4), data(7)=>DANGLING(5), data(6)=>DANGLING(6), 
      data(5)=>DANGLING(7), data(4)=>DANGLING(8), data(3)=>DANGLING(9), 
      data(2)=>DANGLING(10), data(1)=>DANGLING(11), data(0)=>DANGLING(12), 
      aset=>DANGLING(13), sclear=>nx65151z1, updn=>DANGLING(14), cnt_en=>
      DANGLING(15));
   modgen_counter_TxDiv : modgen_counter_12_0 port map ( clock=>CLK, q(11)=>
      TxDiv(11), q(10)=>TxDiv(10), q(9)=>TxDiv(9), q(8)=>TxDiv(8), q(7)=>
      TxDiv(7), q(6)=>TxDiv(6), q(5)=>TxDiv(5), q(4)=>TxDiv(4), q(3)=>
      TxDiv(3), q(2)=>TxDiv(2), q(1)=>TxDiv(1), q(0)=>TxDiv(0), clk_en=>
      DANGLING(16), aclear=>RST, sload=>DANGLING(17), data(11)=>DANGLING(18), 
      data(10)=>DANGLING(19), data(9)=>DANGLING(20), data(8)=>DANGLING(21), 
      data(7)=>DANGLING(22), data(6)=>DANGLING(23), data(5)=>DANGLING(24), 
      data(4)=>DANGLING(25), data(3)=>DANGLING(26), data(2)=>DANGLING(27), 
      data(1)=>DANGLING(28), data(0)=>DANGLING(29), aset=>DANGLING(30), 
      sclear=>nx32400z1, updn=>DANGLING(31), cnt_en=>DANGLING(32));
   PWR <= '1';
   Rx_r <= NOT not_Rx_r;
   RxFSM_0 <= NOT nx34394z2;
   reg_Tx_Reg_8 : cycloneii_lcell_ff port map ( regout=>nx34606z1, datain=>
      NOT_Tx_Reg_14n6ss1_8, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_Tx_Reg_7 : cycloneii_lcell_ff port map ( regout=>nx33609z1, datain=>
      NOT_Tx_Reg_14n6ss1_7, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_Tx_Reg_6 : cycloneii_lcell_ff port map ( regout=>nx32612z1, datain=>
      NOT_Tx_Reg_14n6ss1_6, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_Tx_Reg_5 : cycloneii_lcell_ff port map ( regout=>nx31615z1, datain=>
      NOT_Tx_Reg_14n6ss1_5, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_Tx_Reg_4 : cycloneii_lcell_ff port map ( regout=>nx30618z1, datain=>
      NOT_Tx_Reg_14n6ss1_4, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_Tx_Reg_3 : cycloneii_lcell_ff port map ( regout=>nx29621z1, datain=>
      NOT_Tx_Reg_14n6ss1_3, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_Tx_Reg_2 : cycloneii_lcell_ff port map ( regout=>nx28624z1, datain=>
      NOT_Tx_Reg_14n6ss1_2, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_Tx_Reg_1 : cycloneii_lcell_ff port map ( regout=>nx61140z1, datain=>
      NOT_Tx_Reg_14n6ss1_1, clk=>CLK, ena=>nx35603z1, aclr=>RST);
   reg_TxFSM_1 : cycloneii_lcell_ff port map ( regout=>TxFSM(1), datain=>
      nx5605z1, clk=>CLK, aclr=>RST);
   reg_TxFSM_0 : cycloneii_lcell_ff port map ( regout=>TxFSM(0), datain=>
      nx4608z1, clk=>CLK, aclr=>RST);
   reg_TxDivisor_5 : cycloneii_lcell_ff port map ( regout=>TxDivisor_5, 
      datain=>PWR, clk=>CLK, aclr=>RST);
   reg_TopTx : cycloneii_lcell_ff port map ( regout=>TopTx, datain=>
      nx32400z1, clk=>CLK, aclr=>RST);
   reg_TopRx : cycloneii_lcell_ff port map ( regout=>TopRx, datain=>
      nx34394z1, clk=>CLK, aclr=>RST);
   reg_Rx_r : cycloneii_lcell_ff port map ( regout=>not_Rx_r, datain=>NOT_Rx, 
      clk=>CLK, aclr=>RST);
   reg_Rx_Reg_7 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(7), datain=>
      Rx_r, clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_6 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(6), datain=>
      Rx_Reg(7), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_5 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(5), datain=>
      Rx_Reg(6), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_4 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(4), datain=>
      Rx_Reg(5), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_3 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(3), datain=>
      Rx_Reg(4), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_2 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(2), datain=>
      Rx_Reg(3), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_1 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(1), datain=>
      Rx_Reg(2), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_0 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(0), datain=>
      Rx_Reg(1), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_RxRDYi : cycloneii_lcell_ff port map ( regout=>RxRDY_EXMPLR488, 
      datain=>nx30017z1, clk=>CLK, aclr=>RST);
   reg_RxFSM_6 : cycloneii_lcell_ff port map ( regout=>RxFSM_6, datain=>
      RxFSM_1, sdata=>RxFSM_5, clk=>CLK, ena=>nx15541z1, aclr=>RST, sload=>
      not_Rx_r);
   reg_RxFSM_5 : cycloneii_lcell_ff port map ( regout=>RxFSM_5, datain=>
      nx11553z1, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxFSM_3 : cycloneii_lcell_ff port map ( regout=>RxFSM_3, datain=>
      nx13547z1, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxFSM_2 : cycloneii_lcell_ff port map ( regout=>RxFSM_2, datain=>
      nx14544z1, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxFSM_1 : cycloneii_lcell_ff port map ( regout=>RxFSM_1, datain=>
      RxFSM_0, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxFSM_0 : cycloneii_lcell_ff port map ( regout=>nx34394z2, datain=>
      nx16538z1, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxErr : cycloneii_lcell_ff port map ( regout=>RxErr_EXMPLR487, datain
      =>nx15376z1, clk=>CLK, aclr=>RST);
   reg_Dout_7 : cycloneii_lcell_ff port map ( regout=>Dout(7), datain=>
      Rx_Reg(7), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_6 : cycloneii_lcell_ff port map ( regout=>Dout(6), datain=>
      Rx_Reg(6), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_5 : cycloneii_lcell_ff port map ( regout=>Dout(5), datain=>
      Rx_Reg(5), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_4 : cycloneii_lcell_ff port map ( regout=>Dout(4), datain=>
      Rx_Reg(4), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_3 : cycloneii_lcell_ff port map ( regout=>Dout(3), datain=>
      Rx_Reg(3), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_2 : cycloneii_lcell_ff port map ( regout=>Dout(2), datain=>
      Rx_Reg(2), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_1 : cycloneii_lcell_ff port map ( regout=>Dout(1), datain=>
      Rx_Reg(1), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_0 : cycloneii_lcell_ff port map ( regout=>Dout(0), datain=>
      Rx_Reg(0), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_3 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(3), datain=>nx51917z1, clk=>CLK, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_2 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(2), datain=>nx50920z1, clk=>CLK, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_1 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(1), datain=>nx49923z1, clk=>CLK, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_0 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(0), datain=>nx48926z1, clk=>CLK, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_3 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(3), datain=>nx8373z1, clk=>CLK, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_2 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(2), datain=>nx9370z1, clk=>CLK, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_1 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(1), datain=>nx10367z1, clk=>CLK, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_0 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(0), datain=>nx11364z1, clk=>CLK, aclr=>RST);
   ix50920z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx50920z2, dataa=>TopTx, datab=>TxFSM(1));
   ix61140z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>p_Tx_Reg_14n6ss1_0, dataa=>nx61140z1, datab=>
      TxFSM(1), datac=>TxFSM(0));
   ix28624z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c5c5") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_1, dataa=>Din(0), datab=>
      nx28624z1, datac=>TxFSM(1));
   ix29621z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c5c5") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_2, dataa=>Din(1), datab=>
      nx29621z1, datac=>TxFSM(1));
   ix30618z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c5c5") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_3, dataa=>Din(2), datab=>
      nx30618z1, datac=>TxFSM(1));
   ix31615z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c5c5") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_4, dataa=>Din(3), datab=>
      nx31615z1, datac=>TxFSM(1));
   ix32612z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c5c5") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_5, dataa=>Din(5), datab=>
      nx32612z1, datac=>TxFSM(1));
   ix33609z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c5c5") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_6, dataa=>Din(5), datab=>
      nx33609z1, datac=>TxFSM(1));
   ix34606z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c5c5") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_7, dataa=>Din(7), datab=>
      nx34606z1, datac=>TxFSM(1));
   ix35603z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>NOT_Tx_Reg_14n6ss1_8, dataa=>Din(7), datab=>
      TxFSM(1));
   ix65151z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"dddd") 
       port map ( combout=>nx65151z1, dataa=>nx34394z2, datab=>nx34394z3);
   ix32400z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>nx32400z9, dataa=>TxDiv(10), datab=>TxDiv(9));
   ix32400z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx32400z8, dataa=>TxDivisor_5, datab=>TxDiv(11), 
      datac=>TxDiv(0), datad=>nx32400z9);
   ix8373z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"6aaa") 
       port map ( combout=>nx8373z2, dataa=>RxBitCnt(3), datab=>RxBitCnt(2), 
      datac=>RxBitCnt(1), datad=>RxBitCnt(0));
   ix51917z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0f1") 
       port map ( combout=>nx51917z4, dataa=>TxBitCnt(3), datab=>TxBitCnt(2), 
      datac=>nx50920z2, datad=>nx50920z3);
   ix4608z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"feff") 
       port map ( combout=>nx4608z3, dataa=>TxBitCnt(3), datab=>TxBitCnt(2), 
      datac=>TxBitCnt(1), datad=>TxBitCnt(0));
   ix4608z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3335") 
       port map ( combout=>nx4608z2, dataa=>LD, datab=>TopTx, datac=>
      TxFSM(1), datad=>TxFSM(0));
   ix15541z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"ac00") 
       port map ( combout=>nx15541z2, dataa=>Rx, datab=>TopRx, datac=>
      RxFSM_6, datad=>nx34394z2);
   ix32400z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx32400z7, dataa=>TxDiv(4), datab=>TxDiv(3), 
      datac=>TxDiv(2), datad=>TxDiv(1));
   ix32400z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx32400z5, dataa=>TxDiv(4), datab=>TxDiv(3), 
      datac=>TxDiv(2), datad=>TxDiv(1));
   ix32400z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx32400z6, dataa=>TxDiv(8), datab=>TxDiv(7), 
      datac=>TxDiv(6), datad=>TxDiv(5));
   ix15541z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"b3b3") 
       port map ( combout=>nx15541z3, dataa=>p_rxflex, datab=>RxFSM_6, datac
      =>p_nrst_int_dup_9);
   ix32400z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"0800") 
       port map ( combout=>nx32400z4, dataa=>TxDiv(8), datab=>TxDiv(7), 
      datac=>TxDiv(6), datad=>TxDiv(5));
   ix32400z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx32400z3, dataa=>TxDivisor_5, datab=>TxDiv(11), 
      datac=>TxDiv(10), datad=>TxDiv(9));
   ix32400z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx32400z2, dataa=>TxDiv(0), datab=>nx32400z3, 
      datac=>nx32400z4, datad=>nx32400z5);
   ix34394z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx34394z8, dataa=>RxDiv(3), datab=>RxDiv(2), 
      datac=>RxDiv(1), datad=>RxDiv(0));
   ix34394z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx34394z10, dataa=>RxDiv(3), datab=>RxDiv(2), 
      datac=>RxDiv(1), datad=>RxDiv(0));
   ix34394z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx34394z7, dataa=>RxDiv(7), datab=>RxDiv(6), 
      datac=>RxDiv(5), datad=>RxDiv(4));
   ix34394z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"0800") 
       port map ( combout=>nx34394z9, dataa=>RxDiv(7), datab=>RxDiv(6), 
      datac=>RxDiv(5), datad=>RxDiv(4));
   ix34394z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx34394z6, dataa=>TxDivisor_5, datab=>RxDiv(10), 
      datac=>RxDiv(9), datad=>RxDiv(8));
   ix34394z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8080") 
       port map ( combout=>nx34394z5, dataa=>nx34394z6, datab=>nx34394z7, 
      datac=>nx34394z8);
   ix34394z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx34394z4, dataa=>TxDivisor_5, datab=>RxDiv(10), 
      datac=>RxDiv(9), datad=>RxDiv(8));
   ix15376z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f2f2") 
       port map ( combout=>nx15376z1, dataa=>RxErr_EXMPLR487, datab=>
      RxRDY_EXMPLR488, datac=>RxFSM_6);
   ix11364z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6c40") 
       port map ( combout=>nx11364z1, dataa=>TopRx, datab=>RxBitCnt(0), 
      datac=>RxFSM_3, datad=>nx34394z2);
   ix10367z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"60aa") 
       port map ( combout=>nx10367z1, dataa=>RxBitCnt(1), datab=>RxBitCnt(0), 
      datac=>nx34394z2, datad=>not_rtlc17_X_0_n360);
   ix9370z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4a8a") 
       port map ( combout=>nx9370z1, dataa=>RxBitCnt(2), datab=>nx34394z2, 
      datac=>not_rtlc17_X_0_n360, datad=>nx9370z2);
   ix8373z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ca0a") 
       port map ( combout=>nx8373z1, dataa=>RxBitCnt(3), datab=>nx34394z2, 
      datac=>not_rtlc17_X_0_n360, datad=>nx8373z2);
   ix48926z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ce6c") 
       port map ( combout=>nx48926z1, dataa=>TopTx, datab=>TxBitCnt(0), 
      datac=>TxFSM(1), datad=>TxFSM(0));
   ix49923z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"09aa") 
       port map ( combout=>nx49923z1, dataa=>TxBitCnt(1), datab=>TxBitCnt(0), 
      datac=>nx50920z2, datad=>nx51917z2);
   ix50920z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2a1a") 
       port map ( combout=>nx50920z1, dataa=>TxBitCnt(2), datab=>nx50920z2, 
      datac=>nx51917z2, datad=>nx50920z3);
   ix51917z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eea2") 
       port map ( combout=>nx51917z1, dataa=>TxBitCnt(3), datab=>nx51917z2, 
      datac=>nx51917z3, datad=>nx51917z4);
   ix61812z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0cca") 
       port map ( combout=>p_NOT_rtlcn2, dataa=>LD, datab=>TopTx, datac=>
      TxFSM(1), datad=>TxFSM(0));
   ix9370z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx9370z2, dataa=>RxBitCnt(1), datab=>RxBitCnt(0)
   );
   ix51917z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx51917z3, dataa=>TxBitCnt(2), datab=>TxBitCnt(1), 
      datac=>TxBitCnt(0));
   ix50920z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx50920z3, dataa=>TxBitCnt(1), datab=>TxBitCnt(0)
   );
   ix51917z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2828") 
       port map ( combout=>nx51917z2, dataa=>TopTx, datab=>TxFSM(1), datac=>
      TxFSM(0));
   ix4608z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c1c3") 
       port map ( combout=>nx4608z1, dataa=>TxFSM(1), datab=>TxFSM(0), datac
      =>nx4608z2, datad=>nx4608z3);
   ix30017z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2020") 
       port map ( combout=>nx30017z1, dataa=>TopRx, datab=>not_Rx_r, datac=>
      RxFSM_5);
   ix13547z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx13547z2, dataa=>RxBitCnt(3), datab=>RxBitCnt(2), 
      datac=>RxBitCnt(1), datad=>RxBitCnt(0));
   ix32400z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eaaa") 
       port map ( combout=>nx32400z1, dataa=>nx32400z2, datab=>nx32400z6, 
      datac=>nx32400z7, datad=>nx32400z8);
   ix34394z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eccc") 
       port map ( combout=>nx34394z3, dataa=>nx34394z4, datab=>nx34394z5, 
      datac=>nx34394z9, datad=>nx34394z10);
   ix34394z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx34394z1, dataa=>nx34394z2, datab=>nx34394z3);
   ix11553z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx11553z1, dataa=>RxFSM_2, datab=>nx13547z2);
   ix16538z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2323") 
       port map ( combout=>nx16538z1, dataa=>not_Rx_r, datab=>RxFSM_6, datac
      =>RxFSM_5);
   ix14544z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ecec") 
       port map ( combout=>nx14544z1, dataa=>not_Rx_r, datab=>RxFSM_3, datac
      =>RxFSM_1);
   ix13547z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx13547z1, dataa=>RxFSM_2, datab=>nx13547z2);
   ix15541z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f2f0") 
       port map ( combout=>nx15541z1, dataa=>not_Rx_r, datab=>nx34394z2, 
      datac=>nx15541z2, datad=>nx15541z3);
   ix54636z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx54636z1, dataa=>TopRx, datab=>RxFSM_3);
   ix8373z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8b8b") 
       port map ( combout=>not_rtlc17_X_0_n360, dataa=>TopRx, datab=>RxFSM_3, 
      datac=>nx34394z2);
   ix35603z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"00ca") 
       port map ( combout=>nx35603z1, dataa=>LD, datab=>TopTx, datac=>
      TxFSM(1), datad=>TxFSM(0));
   ix5605z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6c6c") 
       port map ( combout=>nx5605z1, dataa=>TxFSM(0), datab=>TxFSM(1), datac
      =>TopTx);
   ix57064z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>NOT_Rx, dataa=>p_rxflex, datab=>p_nrst_int_dup_9
   );
end RTL_unfold_1358 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_16_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (15 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (15 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_16_0 ;

architecture IMPLEMENTATION of modgen_counter_16_0 is 
   signal nx64508z1, nx22081z3, nx22081z5, nx22081z7, nx22081z9, nx22081z11, 
      nx22081z13, nx22081z15, nx22081z17, nx22081z19, nx22081z21, nx22081z23, 
      nx22081z25, nx22081z27, nx22081z29, nx22081z31, nx51271z1, nx22081z30, 
      nx52268z1, nx22081z28, nx53265z1, nx22081z26, nx54262z1, nx22081z24, 
      nx55259z1, nx22081z22, nx56256z1, nx22081z20, nx57253z1, nx22081z18, 
      nx58250z1, nx22081z16, nx59247z1, nx22081z14, nx60244z1, nx22081z12, 
      nx17096z1, nx22081z10, nx18093z1, nx22081z8, nx19090z1, nx22081z6, 
      nx20087z1, nx22081z4, nx21084z1, nx22081z2, nx22081z1, 
      nx_modgen_counter_16_0_vcc_net: std_logic ;

begin
   q(15) <= nx64508z1 ;
   q(14) <= nx22081z3 ;
   q(13) <= nx22081z5 ;
   q(12) <= nx22081z7 ;
   q(11) <= nx22081z9 ;
   q(10) <= nx22081z11 ;
   q(9) <= nx22081z13 ;
   q(8) <= nx22081z15 ;
   q(7) <= nx22081z17 ;
   q(6) <= nx22081z19 ;
   q(5) <= nx22081z21 ;
   q(4) <= nx22081z23 ;
   q(3) <= nx22081z25 ;
   q(2) <= nx22081z27 ;
   q(1) <= nx22081z29 ;
   q(0) <= nx22081z31 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>nx22081z13, datain=>
      nx60244z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx22081z15, datain=>
      nx59247z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx22081z17, datain=>
      nx58250z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx22081z19, datain=>
      nx57253z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx22081z21, datain=>
      nx56256z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx22081z23, datain=>
      nx55259z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx22081z25, datain=>
      nx54262z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx22081z27, datain=>
      nx53265z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_15 : cycloneii_lcell_ff port map ( regout=>nx64508z1, datain=>
      nx22081z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_14 : cycloneii_lcell_ff port map ( regout=>nx22081z3, datain=>
      nx21084z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_13 : cycloneii_lcell_ff port map ( regout=>nx22081z5, datain=>
      nx20087z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_12 : cycloneii_lcell_ff port map ( regout=>nx22081z7, datain=>
      nx19090z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_11 : cycloneii_lcell_ff port map ( regout=>nx22081z9, datain=>
      nx18093z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>nx22081z11, datain=>
      nx17096z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx22081z29, datain=>
      nx52268z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx22081z31, datain=>
      nx51271z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   ix22081z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx21084z1, cout=>nx22081z2, dataa=>nx22081z3, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z4);
   nx_modgen_counter_16_0_vcc_net <= '1';
   ix22081z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx20087z1, cout=>nx22081z4, dataa=>nx22081z5, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z6);
   ix22081z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx19090z1, cout=>nx22081z6, dataa=>nx22081z7, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z8);
   ix22081z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx18093z1, cout=>nx22081z8, dataa=>nx22081z9, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z10);
   ix22081z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx17096z1, cout=>nx22081z10, dataa=>nx22081z11, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z12);
   ix22081z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx22081z26, dataa=>nx22081z27, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z28);
   ix22081z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, cout=>nx22081z12, dataa=>nx22081z13, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z14);
   ix22081z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx22081z28, dataa=>nx22081z29, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z30);
   ix22081z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx22081z14, dataa=>nx22081z15, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z16);
   ix22081z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx22081z16, dataa=>nx22081z17, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z18);
   ix22081z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx22081z18, dataa=>nx22081z19, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z20);
   ix22081z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx22081z20, dataa=>nx22081z21, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z22);
   ix22081z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx22081z22, dataa=>nx22081z23, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z24);
   ix22081z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx22081z24, dataa=>nx22081z25, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z26);
   ix22081z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx22081z1, dataa=>nx64508z1, datad=>
      nx_modgen_counter_16_0_vcc_net, cin=>nx22081z2);
   ix22081z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx22081z30, dataa=>nx22081z31, 
      datad=>nx_modgen_counter_16_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity uw_uart is 
   port (
      clk : IN std_logic ;
      rst : IN std_logic ;
      kirschout : IN std_logic ;
      kirschdir : IN std_logic_vector (2 DOWNTO 0) ;
      o_valid : IN std_logic ;
      i_mode : IN std_logic_vector (1 DOWNTO 0) ;
      datain : OUT std_logic_vector (7 DOWNTO 0) ;
      o_pixavail : OUT std_logic ;
      rxflex : IN std_logic ;
      txflex : OUT std_logic ;
      p_rtlcs6 : IN std_logic ;
      p_Tx_Reg_14n6ss1_0 : OUT std_logic ;
      p_NOT_rtlcn2 : OUT std_logic ;
      p_o_mode_dup0_1 : IN std_logic ;
      p_o_mode_dup0_0 : IN std_logic ;
      p_nrst_int : IN std_logic ;
      px34 : IN std_logic) ;
end uw_uart ;

architecture main of uw_uart is 
   component UARTS
      port (
         CLK : IN std_logic ;
         RST : IN std_logic ;
         Din : IN std_logic_vector (7 DOWNTO 0) ;
         LD : IN std_logic ;
         Rx : IN std_logic ;
         Baud : IN std_logic ;
         Dout : OUT std_logic_vector (7 DOWNTO 0) ;
         Tx : OUT std_logic ;
         TxBusy : OUT std_logic ;
         RxErr : OUT std_logic ;
         RxRDY : OUT std_logic ;
         p_Tx_Reg_14n6ss1_0 : OUT std_logic ;
         p_NOT_rtlcn2 : OUT std_logic ;
         p_rxflex : IN std_logic ;
         p_nrst_int_dup_9 : IN std_logic) ;
   end component ;
   component modgen_counter_16_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (15 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (15 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   signal o_pixavail_EXMPLR499: std_logic_vector (7 DOWNTO 7) ;
   
   signal sdin: std_logic_vector (7 DOWNTO 0) ;
   
   signal rxerr, rxrdy, sdout_7, sdout_5, sdout_3, sdout_2, sdout_1, sdout_0
   : std_logic ;
   
   signal rdata: std_logic_vector (7 DOWNTO 0) ;
   
   signal state, dsend, mdata_7, mdata_5, mdata_3, mdata_2, mdata_1, mdata_0, 
      ack: std_logic ;
   
   signal waitcount: std_logic_vector (15 DOWNTO 0) ;
   
   signal ld_sdout, rawrx, mdata_7n5ss1_6, mdata_7n5ss1_4, nx39480z2, 
      nx33354z2, nx40736z2, nx38868z1, nx40736z3, nx39480z1, not_o_valid, 
      nx33354z1, nx58116z1, nx36748z2, nx18433z1, nx40736z4, nx40736z5, 
      nx39480z3, nx39480z4, nx39480z5, nx39480z6, nx36748z1, nx35751z1, 
      nx34754z1, nx33757z1: std_logic ;
   
   signal DANGLING : std_logic_vector (25 downto 0 );

begin
   o_pixavail <= o_pixavail_EXMPLR499(7) ;
   i_uarts : UARTS port map ( CLK=>clk, RST=>rst, Din(7)=>sdout_7, Din(6)=>
      DANGLING(0), Din(5)=>sdout_5, Din(4)=>DANGLING(1), Din(3)=>sdout_3, 
      Din(2)=>sdout_2, Din(1)=>sdout_1, Din(0)=>sdout_0, LD=>ld_sdout, Rx=>
      rawrx, Baud=>DANGLING(2), Dout(7)=>sdin(7), Dout(6)=>sdin(6), Dout(5)
      =>sdin(5), Dout(4)=>sdin(4), Dout(3)=>sdin(3), Dout(2)=>sdin(2), 
      Dout(1)=>sdin(1), Dout(0)=>sdin(0), Tx=>DANGLING(3), TxBusy=>DANGLING(
      4), RxErr=>rxerr, RxRDY=>rxrdy, p_Tx_Reg_14n6ss1_0=>p_Tx_Reg_14n6ss1_0, 
      p_NOT_rtlcn2=>p_NOT_rtlcn2, p_rxflex=>rxflex, p_nrst_int_dup_9=>
      p_nrst_int);
   modgen_counter_waitcount : modgen_counter_16_0 port map ( clock=>clk, 
      q(15)=>waitcount(15), q(14)=>waitcount(14), q(13)=>waitcount(13), 
      q(12)=>waitcount(12), q(11)=>waitcount(11), q(10)=>waitcount(10), q(9)
      =>waitcount(9), q(8)=>waitcount(8), q(7)=>waitcount(7), q(6)=>
      waitcount(6), q(5)=>waitcount(5), q(4)=>waitcount(4), q(3)=>
      waitcount(3), q(2)=>waitcount(2), q(1)=>waitcount(1), q(0)=>
      waitcount(0), clk_en=>nx33354z1, aclear=>DANGLING(5), sload=>DANGLING(
      6), data(15)=>DANGLING(7), data(14)=>DANGLING(8), data(13)=>DANGLING(9
      ), data(12)=>DANGLING(10), data(11)=>DANGLING(11), data(10)=>DANGLING(
      12), data(9)=>DANGLING(13), data(8)=>DANGLING(14), data(7)=>DANGLING(
      15), data(6)=>DANGLING(16), data(5)=>DANGLING(17), data(4)=>DANGLING(
      18), data(3)=>DANGLING(19), data(2)=>DANGLING(20), data(1)=>DANGLING(
      21), data(0)=>DANGLING(22), aset=>DANGLING(23), sclear=>nx33354z2, 
      updn=>DANGLING(24), cnt_en=>DANGLING(25));
   not_o_valid <= NOT o_valid;
   reg_state : cycloneii_lcell_ff port map ( regout=>state, datain=>
      nx38868z1, clk=>clk, aclr=>rst);
   reg_sdout_7 : cycloneii_lcell_ff port map ( regout=>sdout_7, datain=>
      mdata_7, clk=>clk, ena=>nx38868z1, aclr=>rst);
   reg_sdout_5 : cycloneii_lcell_ff port map ( regout=>sdout_5, datain=>
      mdata_5, clk=>clk, ena=>nx38868z1, aclr=>rst);
   reg_sdout_3 : cycloneii_lcell_ff port map ( regout=>sdout_3, datain=>
      mdata_3, clk=>clk, ena=>nx38868z1, aclr=>rst);
   reg_sdout_2 : cycloneii_lcell_ff port map ( regout=>sdout_2, datain=>
      mdata_2, clk=>clk, ena=>nx38868z1, aclr=>rst);
   reg_sdout_1 : cycloneii_lcell_ff port map ( regout=>sdout_1, datain=>
      mdata_1, clk=>clk, ena=>nx38868z1, aclr=>rst);
   reg_sdout_0 : cycloneii_lcell_ff port map ( regout=>sdout_0, datain=>
      mdata_0, clk=>clk, ena=>nx38868z1, aclr=>rst);
   reg_rdata_7 : cycloneii_lcell_ff port map ( regout=>rdata(7), datain=>
      sdin(7), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_6 : cycloneii_lcell_ff port map ( regout=>rdata(6), datain=>
      sdin(6), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_5 : cycloneii_lcell_ff port map ( regout=>rdata(5), datain=>
      sdin(5), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_4 : cycloneii_lcell_ff port map ( regout=>rdata(4), datain=>
      sdin(4), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_3 : cycloneii_lcell_ff port map ( regout=>rdata(3), datain=>
      sdin(3), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_2 : cycloneii_lcell_ff port map ( regout=>rdata(2), datain=>
      sdin(2), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_1 : cycloneii_lcell_ff port map ( regout=>rdata(1), datain=>
      sdin(1), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_rdata_0 : cycloneii_lcell_ff port map ( regout=>rdata(0), datain=>
      sdin(0), clk=>clk, ena=>rxrdy, aclr=>rst);
   reg_mdata_7 : cycloneii_lcell_ff port map ( regout=>mdata_7, datain=>
      mdata_7n5ss1_6, clk=>clk, ena=>nx40736z2);
   reg_mdata_5 : cycloneii_lcell_ff port map ( regout=>mdata_5, datain=>
      mdata_7n5ss1_4, clk=>clk, ena=>nx40736z2);
   nx36748z1 <= '1';
   reg_mdata_3 : cycloneii_lcell_ff port map ( regout=>mdata_3, datain=>
      kirschdir(2), sdata=>nx36748z1, clk=>clk, ena=>nx40736z2, sclr=>
      nx36748z2, sload=>not_o_valid);
   nx35751z1 <= '1';
   reg_mdata_2 : cycloneii_lcell_ff port map ( regout=>mdata_2, datain=>
      kirschdir(1), sdata=>nx35751z1, clk=>clk, ena=>nx40736z2, sclr=>
      nx36748z2, sload=>not_o_valid);
   nx34754z1 <= '1';
   reg_mdata_1 : cycloneii_lcell_ff port map ( regout=>mdata_1, datain=>
      kirschdir(0), sdata=>nx34754z1, clk=>clk, ena=>nx40736z2, sclr=>
      nx36748z2, sload=>not_o_valid);
   nx33757z1 <= '1';
   reg_mdata_0 : cycloneii_lcell_ff port map ( regout=>mdata_0, datain=>
      kirschout, sdata=>nx33757z1, clk=>clk, ena=>nx40736z2, sclr=>nx36748z2, 
      sload=>not_o_valid);
   reg_ld_sdout : cycloneii_lcell_ff port map ( regout=>ld_sdout, datain=>
      nx18433z1, clk=>clk, aclr=>rst);
   reg_dsend : cycloneii_lcell_ff port map ( regout=>dsend, datain=>
      nx40736z3, clk=>clk, sclr=>rst);
   reg_charavail : cycloneii_lcell_ff port map ( regout=>
      o_pixavail_EXMPLR499(7), datain=>nx58116z1, clk=>clk, aclr=>rst);
   reg_ack : cycloneii_lcell_ff port map ( regout=>ack, datain=>nx39480z1, 
      clk=>clk, sclr=>rst);
   ix33354z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"efef") 
       port map ( combout=>nx33354z1, dataa=>ack, datab=>
      o_pixavail_EXMPLR499(7), datac=>p_nrst_int);
   ix40736z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx40736z2, dataa=>nx40736z3, datab=>p_nrst_int);
   ix39480z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0004") 
       port map ( combout=>nx39480z6, dataa=>waitcount(3), datab=>
      waitcount(2), datac=>waitcount(1), datad=>waitcount(0));
   ix39480z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0040") 
       port map ( combout=>nx39480z5, dataa=>waitcount(7), datab=>
      waitcount(6), datac=>waitcount(5), datad=>waitcount(4));
   ix39480z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx39480z4, dataa=>waitcount(11), datab=>
      waitcount(10), datac=>waitcount(9), datad=>waitcount(8));
   ix39480z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx39480z3, dataa=>waitcount(15), datab=>
      waitcount(14), datac=>waitcount(13), datad=>waitcount(12));
   ix40736z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff04") 
       port map ( combout=>nx40736z5, dataa=>o_pixavail_EXMPLR499(7), datab
      =>rxerr, datac=>ack, datad=>p_rtlcs6);
   ix40736z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx40736z4, dataa=>o_pixavail_EXMPLR499(7), datab
      =>ack);
   ix18433z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5454") 
       port map ( combout=>nx18433z1, dataa=>state, datab=>dsend, datac=>
      ld_sdout);
   ix33354z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"efef") 
       port map ( combout=>nx33354z2, dataa=>nx39480z2, datab=>o_valid, 
      datac=>p_nrst_int);
   ix58116z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx58116z1, dataa=>o_pixavail_EXMPLR499(7), datab
      =>rxrdy);
   ix39480z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0054") 
       port map ( combout=>nx39480z1, dataa=>o_valid, datab=>
      o_pixavail_EXMPLR499(7), datac=>ack, datad=>nx39480z2);
   ix40736z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"ffe0") 
       port map ( combout=>nx40736z3, dataa=>o_valid, datab=>nx39480z2, 
      datac=>nx40736z4, datad=>nx40736z5);
   ix38868z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx38868z1, dataa=>state, datab=>dsend);
   ix39480z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx39480z2, dataa=>nx39480z3, datab=>nx39480z4, 
      datac=>nx39480z5, datad=>nx39480z6);
   ix38742z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff57") 
       port map ( combout=>mdata_7n5ss1_4, dataa=>o_valid, datab=>
      o_pixavail_EXMPLR499(7), datac=>ack, datad=>p_rtlcs6);
   ix40736z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0057") 
       port map ( combout=>mdata_7n5ss1_6, dataa=>o_valid, datab=>
      o_pixavail_EXMPLR499(7), datac=>ack, datad=>p_rtlcs6);
   ix40426z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(0), dataa=>o_pixavail_EXMPLR499(7), datab
      =>rdata(0));
   ix41423z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(1), dataa=>o_pixavail_EXMPLR499(7), datab
      =>rdata(1));
   ix42420z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(2), dataa=>o_pixavail_EXMPLR499(7), datab
      =>rdata(2));
   ix43417z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(3), dataa=>o_pixavail_EXMPLR499(7), datab
      =>rdata(3));
   ix44414z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(4), dataa=>o_pixavail_EXMPLR499(7), datab
      =>rdata(4));
   ix45411z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(5), dataa=>o_pixavail_EXMPLR499(7), datab
      =>rdata(5));
   ix46408z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(6), dataa=>o_pixavail_EXMPLR499(7), datab
      =>rdata(6));
   ix15671z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>rawrx, dataa=>rxflex, datab=>p_nrst_int);
   ix47405z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(7), dataa=>o_pixavail_EXMPLR499(7), datab
      =>rdata(7));
   ix36748z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"111f") 
       port map ( combout=>nx36748z2, dataa=>ack, datab=>
      o_pixavail_EXMPLR499(7), datac=>px34, datad=>p_o_mode_dup0_1);
end main ;

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
      cnt_en : IN std_logic ;
      p_nrst_int_dup_11 : IN std_logic) ;
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
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>nx57253z3, dataa=>cnt_en, datab=>
      p_nrst_int_dup_11);
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
      cnt_en : IN std_logic) ;
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
   signal ena1_EXMPLR566: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR566, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR566 <= '1';
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
   signal ena1_EXMPLR596: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR596, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR596 <= '1';
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
   signal ena1_EXMPLR626: std_logic ;

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
      clock0=>wr_clk1, clocken0=>ena1_EXMPLR626, q_a(7)=>rd_data1(7), q_a(6)
      =>rd_data1(6), q_a(5)=>rd_data1(5), q_a(4)=>rd_data1(4), q_a(3)=>
      rd_data1(3), q_a(2)=>rd_data1(2), q_a(1)=>rd_data1(1), q_a(0)=>
      rd_data1(0));
   ena1_EXMPLR626 <= '1';
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
      debug_num_5 : OUT std_logic_vector (3 DOWNTO 0) ;
      p_rtlcs6 : OUT std_logic ;
      p_nrst_int : IN std_logic ;
      px34 : OUT std_logic) ;
end kirsch ;

architecture main_unfold_1777 of kirsch is 
   component add_11_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         b : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
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
         cnt_en : IN std_logic ;
         p_nrst_int_dup_11 : IN std_logic) ;
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
         cnt_en : IN std_logic) ;
   end component ;
   component sub_8_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
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
   signal o_edge_EXMPLR642: std_logic_vector (2 DOWNTO 2) ;
   
   signal o_mode_1_EXMPLR643: std_logic ;
   
   signal o_row_EXMPLR659: std_logic_vector (7 DOWNTO 0) ;
   
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
   
   signal max1: std_logic_vector (7 DOWNTO 0) ;
   
   signal max2: std_logic_vector (9 DOWNTO 0) ;
   
   signal max3: std_logic_vector (9 DOWNTO 0) ;
   
   signal add1: std_logic_vector (8 DOWNTO 0) ;
   
   signal add2: std_logic_vector (9 DOWNTO 0) ;
   
   signal add3: std_logic_vector (10 DOWNTO 0) ;
   
   signal add4: std_logic_vector (12 DOWNTO 0) ;
   
   signal sub1_8, sub2_10, sub3_10, sub4_13, sub4_12, sub4_11, sub4_10, 
      sub4_9, sub4_8, sub4_7, end_of_img: std_logic ;
   
   signal add1_22n4s1: std_logic_vector (8 DOWNTO 0) ;
   
   signal add2_22n4s1: std_logic_vector (9 DOWNTO 0) ;
   
   signal add3_22n4s1: std_logic_vector (10 DOWNTO 0) ;
   
   signal add4_22n4s1: std_logic_vector (12 DOWNTO 1) ;
   
   signal sub4_22n4s1_12, sub4_22n4s1_11, sub4_22n4s1_10, sub4_22n4s1_9, 
      sub4_22n4s1_8, sub4_22n4s1_7, nx61551z1, nx31523z1, nx26388z1, 
      nx24244z1, wren_m1, wren_m2, wren_m3: std_logic ;
   
   signal addr_x: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_num_5_1_EXMPLR656: std_logic ;
   
   signal t_15n2s1: std_logic_vector (1 DOWNTO 0) ;
   
   signal nx17322z9, nx17322z1, nx20492z2, dir5_18n5ss1_2, dir6_18n5ss1_2, 
      not_sub2_10, nx36692z1, nx41056z3, nx24302z1, nx20813z1, nx17322z7, 
      sub1_22n1s1_8, sub2_22n2s1_10, sub3_22n3s1_10, sub4_22n4s1_13, not_v_7, 
      output_edge_22n5s1, nx17322z2, nx36692z2, nx36266z1, nx46679z2, 
      nx24302z2, nx17322z3, nx17322z6, nx34077z1, nx35074z1, nx36071z1, 
      nx37068z1, nx38065z1, nx39062z1, nx40059z1, nx41056z1, nx25658z1, 
      nx26655z1, nx27652z1, nx28649z1, nx29646z1, nx30643z1, nx31640z1, 
      nx32637z1, nx48297z1, nx47300z1, nx46303z1, nx45306z1, nx44309z1, 
      nx43312z1, nx42315z1, nx41318z1, nx56716z1, nx55719z1, nx54722z1, 
      nx53725z1, nx52728z1, nx51731z1, nx50734z1, nx49737z1, nx27471z1, 
      nx26474z1, nx25477z1, nx24480z1, nx23483z1, nx22486z1, nx21489z1, 
      nx20492z1, nx29646z3, nx30643z3, nx31640z3, nx32637z3, nx33634z1, 
      nx34631z1, nx35628z1, nx36625z1, nx6176z1, nx38525z1, nx46679z1, 
      nx44685z1, nx10438z1, nx2019z1, nx35695z1, nx44114z1, nx45111z1, 
      nx46108z1, nx17322z4, nx17322z8, nx49737z2, nx50734z2, nx51731z2, 
      nx52728z2, nx53725z2, nx54722z2, nx55719z2, nx56716z2, nx41318z2, 
      nx42315z2, nx43312z2, nx44309z2, nx45306z2, nx46303z2, nx47300z2, 
      nx48297z2, nx32637z2, nx31640z2, nx30643z2, nx29646z2, nx28649z2, 
      nx27652z2, nx26655z2, nx25658z2, nx41056z2, nx40059z2, nx39062z2, 
      nx38065z2, nx37068z2, nx36071z2, nx35074z2, nx34077z2, nx60630z1, 
      nx20813z2, nx20813z3, nx20813z4, nx20813z6, nx20813z7, nx20813z5, 
      nx26373z2, nx17322z5, nx44114z2, nx46108z2, nx15976z1, nx26373z1, 
      nx45111z2, NOT_dir5_1, nx46108z3, NOT_dir5_0: std_logic ;
   
   signal DANGLING : std_logic_vector (98 downto 0 );

begin
   o_edge <= o_edge_EXMPLR642(2) ;
   o_mode(1) <= o_mode_1_EXMPLR643 ;
   o_row(7) <= o_row_EXMPLR659(7) ;
   o_row(6) <= o_row_EXMPLR659(6) ;
   o_row(5) <= o_row_EXMPLR659(5) ;
   o_row(4) <= o_row_EXMPLR659(4) ;
   o_row(3) <= o_row_EXMPLR659(3) ;
   o_row(2) <= o_row_EXMPLR659(2) ;
   o_row(1) <= o_row_EXMPLR659(1) ;
   o_row(0) <= o_row_EXMPLR659(0) ;
   px34 <= nx15976z1 ;
   add3_add11_22i1 : add_11_0 port map ( cin=>DANGLING(0), a(10)=>DANGLING(1
      ), a(9)=>DANGLING(2), a(8)=>r7(8), a(7)=>r7(7), a(6)=>r7(6), a(5)=>
      r7(5), a(4)=>r7(4), a(3)=>r7(3), a(2)=>r7(2), a(1)=>r7(1), a(0)=>r7(0), 
      b(10)=>r8(10), b(9)=>r8(9), b(8)=>r8(8), b(7)=>r8(7), b(6)=>r8(6), 
      b(5)=>r8(5), b(4)=>r8(4), b(3)=>r8(3), b(2)=>r8(2), b(1)=>r8(1), b(0)
      =>r8(0), d(10)=>add3_22n4s1(10), d(9)=>add3_22n4s1(9), d(8)=>
      add3_22n4s1(8), d(7)=>add3_22n4s1(7), d(6)=>add3_22n4s1(6), d(5)=>
      add3_22n4s1(5), d(4)=>add3_22n4s1(4), d(3)=>add3_22n4s1(3), d(2)=>
      add3_22n4s1(2), d(1)=>add3_22n4s1(1), d(0)=>add3_22n4s1(0), cout=>
      DANGLING(3));
   modgen_counter_x : modgen_counter_8_0 port map ( clock=>i_clock, q(7)=>
      x(7), q(6)=>x(6), q(5)=>x(5), q(4)=>x(4), q(3)=>x(3), q(2)=>x(2), q(1)
      =>x(1), q(0)=>x(0), clk_en=>DANGLING(4), aclear=>DANGLING(5), sload=>
      DANGLING(6), data(7)=>DANGLING(7), data(6)=>DANGLING(8), data(5)=>
      DANGLING(9), data(4)=>DANGLING(10), data(3)=>DANGLING(11), data(2)=>
      DANGLING(12), data(1)=>DANGLING(13), data(0)=>DANGLING(14), aset=>
      DANGLING(15), sclear=>i_reset, updn=>DANGLING(16), cnt_en=>i_valid, 
      p_nrst_int_dup_11=>p_nrst_int);
   modgen_counter_o_row : modgen_counter_8_1 port map ( clock=>i_clock, q(7)
      =>o_row_EXMPLR659(7), q(6)=>o_row_EXMPLR659(6), q(5)=>
      o_row_EXMPLR659(5), q(4)=>o_row_EXMPLR659(4), q(3)=>o_row_EXMPLR659(3), 
      q(2)=>o_row_EXMPLR659(2), q(1)=>o_row_EXMPLR659(1), q(0)=>
      o_row_EXMPLR659(0), clk_en=>nx17322z1, aclear=>DANGLING(17), sload=>
      DANGLING(18), data(7)=>DANGLING(19), data(6)=>DANGLING(20), data(5)=>
      DANGLING(21), data(4)=>DANGLING(22), data(3)=>DANGLING(23), data(2)=>
      DANGLING(24), data(1)=>DANGLING(25), data(0)=>DANGLING(26), aset=>
      DANGLING(27), sclear=>nx17322z9, updn=>DANGLING(28), cnt_en=>nx17322z6
   );
   sub1_sub8_22i30 : sub_8_0 port map ( cin=>DANGLING(29), a(7)=>r1(7), a(6)
      =>r1(6), a(5)=>r1(5), a(4)=>r1(4), a(3)=>r1(3), a(2)=>r1(2), a(1)=>
      r1(1), a(0)=>r1(0), b(7)=>r2(7), b(6)=>r2(6), b(5)=>r2(5), b(4)=>r2(4), 
      b(3)=>r2(3), b(2)=>r2(2), b(1)=>r2(1), b(0)=>r2(0), d(7)=>DANGLING(30), 
      d(6)=>DANGLING(31), d(5)=>DANGLING(32), d(4)=>DANGLING(33), d(3)=>
      DANGLING(34), d(2)=>DANGLING(35), d(1)=>DANGLING(36), d(0)=>DANGLING(
      37), cout=>nx61551z1);
   add1_add8_22i31 : add_8_0 port map ( cin=>DANGLING(38), a(7)=>r3(7), a(6)
      =>r3(6), a(5)=>r3(5), a(4)=>r3(4), a(3)=>r3(3), a(2)=>r3(2), a(1)=>
      r3(1), a(0)=>r3(0), b(7)=>r4(7), b(6)=>r4(6), b(5)=>r4(5), b(4)=>r4(4), 
      b(3)=>r4(3), b(2)=>r4(2), b(1)=>r4(1), b(0)=>r4(0), d(7)=>
      add1_22n4s1(7), d(6)=>add1_22n4s1(6), d(5)=>add1_22n4s1(5), d(4)=>
      add1_22n4s1(4), d(3)=>add1_22n4s1(3), d(2)=>add1_22n4s1(2), d(1)=>
      add1_22n4s1(1), d(0)=>add1_22n4s1(0), cout=>add1_22n4s1(8));
   add2_add9_22i32 : add_9_0 port map ( cin=>DANGLING(39), a(8)=>DANGLING(40
      ), a(7)=>r5(7), a(6)=>r5(6), a(5)=>r5(5), a(4)=>r5(4), a(3)=>r5(3), 
      a(2)=>r5(2), a(1)=>r5(1), a(0)=>r5(0), b(8)=>r7(8), b(7)=>r7(7), b(6)
      =>r7(6), b(5)=>r7(5), b(4)=>r7(4), b(3)=>r7(3), b(2)=>r7(2), b(1)=>
      r7(1), b(0)=>r7(0), d(8)=>add2_22n4s1(8), d(7)=>add2_22n4s1(7), d(6)=>
      add2_22n4s1(6), d(5)=>add2_22n4s1(5), d(4)=>add2_22n4s1(4), d(3)=>
      add2_22n4s1(3), d(2)=>add2_22n4s1(2), d(1)=>add2_22n4s1(1), d(0)=>
      add2_22n4s1(0), cout=>add2_22n4s1(9));
   sub2_sub10_22i33 : sub_10_0 port map ( cin=>DANGLING(41), a(9)=>r9(9), 
      a(8)=>r9(8), a(7)=>r9(7), a(6)=>r9(6), a(5)=>r9(5), a(4)=>r9(4), a(3)
      =>r9(3), a(2)=>r9(2), a(1)=>r9(1), a(0)=>r9(0), b(9)=>r11(9), b(8)=>
      r11(8), b(7)=>r11(7), b(6)=>r11(6), b(5)=>r11(5), b(4)=>r11(4), b(3)=>
      r11(3), b(2)=>r11(2), b(1)=>r11(1), b(0)=>r11(0), d(9)=>DANGLING(42), 
      d(8)=>DANGLING(43), d(7)=>DANGLING(44), d(6)=>DANGLING(45), d(5)=>
      DANGLING(46), d(4)=>DANGLING(47), d(3)=>DANGLING(48), d(2)=>DANGLING(
      49), d(1)=>DANGLING(50), d(0)=>DANGLING(51), cout=>nx31523z1);
   sub3_sub10_22i34 : sub_10_1 port map ( cin=>DANGLING(52), a(9)=>r11(9), 
      a(8)=>r11(8), a(7)=>r11(7), a(6)=>r11(6), a(5)=>r11(5), a(4)=>r11(4), 
      a(3)=>r11(3), a(2)=>r11(2), a(1)=>r11(1), a(0)=>r11(0), b(9)=>r12(9), 
      b(8)=>r12(8), b(7)=>r12(7), b(6)=>r12(6), b(5)=>r12(5), b(4)=>r12(4), 
      b(3)=>r12(3), b(2)=>r12(2), b(1)=>r12(1), b(0)=>r12(0), d(9)=>DANGLING
      (53), d(8)=>DANGLING(54), d(7)=>DANGLING(55), d(6)=>DANGLING(56), d(5)
      =>DANGLING(57), d(4)=>DANGLING(58), d(3)=>DANGLING(59), d(2)=>DANGLING
      (60), d(1)=>DANGLING(61), d(0)=>DANGLING(62), cout=>nx26388z1);
   add4_add11_22i35 : add_11_1 port map ( cin=>DANGLING(63), a(10)=>DANGLING
      (64), a(9)=>r13(10), a(8)=>r13(9), a(7)=>r13(8), a(6)=>r13(7), a(5)=>
      r13(6), a(4)=>r13(5), a(3)=>r13(4), a(2)=>r13(3), a(1)=>r13(2), a(0)=>
      r13(1), b(10)=>DANGLING(65), b(9)=>DANGLING(66), b(8)=>DANGLING(67), 
      b(7)=>DANGLING(68), b(6)=>DANGLING(69), b(5)=>DANGLING(70), b(4)=>
      DANGLING(71), b(3)=>DANGLING(72), b(2)=>DANGLING(73), b(1)=>DANGLING(
      74), b(0)=>r13(0), d(10)=>add4_22n4s1(11), d(9)=>add4_22n4s1(10), d(8)
      =>add4_22n4s1(9), d(7)=>add4_22n4s1(8), d(6)=>add4_22n4s1(7), d(5)=>
      add4_22n4s1(6), d(4)=>add4_22n4s1(5), d(3)=>add4_22n4s1(4), d(2)=>
      add4_22n4s1(3), d(1)=>add4_22n4s1(2), d(0)=>add4_22n4s1(1), cout=>
      add4_22n4s1(12));
   sub4_sub13_22i36 : sub_12_0 port map ( cin=>DANGLING(75), a(11)=>r14_12, 
      a(10)=>r14_11, a(9)=>r14_10, a(8)=>r14_9, a(7)=>r14_8, a(6)=>r14_7, 
      a(5)=>r14_6, a(4)=>r14_5, a(3)=>r14_4, a(2)=>r14_3, a(1)=>DANGLING(76), 
      a(0)=>DANGLING(77), b(11)=>r15(12), b(10)=>r15(11), b(9)=>r15(10), 
      b(8)=>r15(9), b(7)=>r15(8), b(6)=>r15(7), b(5)=>r15(6), b(4)=>r15(5), 
      b(3)=>r15(4), b(2)=>r15(3), b(1)=>r15(2), b(0)=>r15(1), d(11)=>
      sub4_22n4s1_12, d(10)=>sub4_22n4s1_11, d(9)=>sub4_22n4s1_10, d(8)=>
      sub4_22n4s1_9, d(7)=>sub4_22n4s1_8, d(6)=>sub4_22n4s1_7, d(5)=>
      DANGLING(78), d(4)=>DANGLING(79), d(3)=>DANGLING(80), d(2)=>DANGLING(
      81), d(1)=>DANGLING(82), d(0)=>DANGLING(83), cout=>nx24244z1, p_r15_0
      =>r15(0));
   m1_mem : ram_dq_8_0 port map ( wr_data1(7)=>i_pixel(7), wr_data1(6)=>
      i_pixel(6), wr_data1(5)=>i_pixel(5), wr_data1(4)=>i_pixel(4), 
      wr_data1(3)=>i_pixel(3), wr_data1(2)=>i_pixel(2), wr_data1(1)=>
      i_pixel(1), wr_data1(0)=>i_pixel(0), rd_data1(7)=>q1(7), rd_data1(6)=>
      q1(6), rd_data1(5)=>q1(5), rd_data1(4)=>q1(4), rd_data1(3)=>q1(3), 
      rd_data1(2)=>q1(2), rd_data1(1)=>q1(1), rd_data1(0)=>q1(0), addr1(7)=>
      addr_x(7), addr1(6)=>addr_x(6), addr1(5)=>addr_x(5), addr1(4)=>
      addr_x(4), addr1(3)=>addr_x(3), addr1(2)=>addr_x(2), addr1(1)=>
      addr_x(1), addr1(0)=>addr_x(0), wr_clk1=>i_clock, rd_clk1=>DANGLING(84
      ), wr_ena1=>wren_m1, rd_ena1=>DANGLING(85), ena1=>DANGLING(86), rst1=>
      DANGLING(87), regce1=>DANGLING(88));
   m2_mem : ram_dq_8_1 port map ( wr_data1(7)=>i_pixel(7), wr_data1(6)=>
      i_pixel(6), wr_data1(5)=>i_pixel(5), wr_data1(4)=>i_pixel(4), 
      wr_data1(3)=>i_pixel(3), wr_data1(2)=>i_pixel(2), wr_data1(1)=>
      i_pixel(1), wr_data1(0)=>i_pixel(0), rd_data1(7)=>q2(7), rd_data1(6)=>
      q2(6), rd_data1(5)=>q2(5), rd_data1(4)=>q2(4), rd_data1(3)=>q2(3), 
      rd_data1(2)=>q2(2), rd_data1(1)=>q2(1), rd_data1(0)=>q2(0), addr1(7)=>
      addr_x(7), addr1(6)=>addr_x(6), addr1(5)=>addr_x(5), addr1(4)=>
      addr_x(4), addr1(3)=>addr_x(3), addr1(2)=>addr_x(2), addr1(1)=>
      addr_x(1), addr1(0)=>addr_x(0), wr_clk1=>i_clock, rd_clk1=>DANGLING(89
      ), wr_ena1=>wren_m2, rd_ena1=>DANGLING(90), ena1=>DANGLING(91), rst1=>
      DANGLING(92), regce1=>DANGLING(93));
   m3_mem : ram_dq_8_2 port map ( wr_data1(7)=>i_pixel(7), wr_data1(6)=>
      i_pixel(6), wr_data1(5)=>i_pixel(5), wr_data1(4)=>i_pixel(4), 
      wr_data1(3)=>i_pixel(3), wr_data1(2)=>i_pixel(2), wr_data1(1)=>
      i_pixel(1), wr_data1(0)=>i_pixel(0), rd_data1(7)=>q3(7), rd_data1(6)=>
      q3(6), rd_data1(5)=>q3(5), rd_data1(4)=>q3(4), rd_data1(3)=>q3(3), 
      rd_data1(2)=>q3(2), rd_data1(1)=>q3(1), rd_data1(0)=>q3(0), addr1(7)=>
      addr_x(7), addr1(6)=>addr_x(6), addr1(5)=>addr_x(5), addr1(4)=>
      addr_x(4), addr1(3)=>addr_x(3), addr1(2)=>addr_x(2), addr1(1)=>
      addr_x(1), addr1(0)=>addr_x(0), wr_clk1=>i_clock, rd_clk1=>DANGLING(94
      ), wr_ena1=>wren_m3, rd_ena1=>DANGLING(95), ena1=>DANGLING(96), rst1=>
      DANGLING(97), regce1=>DANGLING(98));
   debug_num_5_1_EXMPLR656 <= '1';
   not_sub2_10 <= NOT sub2_10;
   sub1_22n1s1_8 <= NOT nx61551z1;
   sub2_22n2s1_10 <= NOT nx31523z1;
   sub3_22n3s1_10 <= NOT nx26388z1;
   sub4_22n4s1_13 <= NOT nx24244z1;
   not_v_7 <= NOT v(7);
   o_mode(0) <= NOT nx15976z1;
   NOT_dir5_1 <= NOT dir5(1);
   NOT_dir5_0 <= NOT dir5(0);
   reg_v_7 : cycloneii_lcell_ff port map ( regout=>v(7), datain=>v(6), clk=>
      i_clock);
   reg_v_6 : cycloneii_lcell_ff port map ( regout=>v(6), datain=>v(5), clk=>
      i_clock);
   reg_v_5 : cycloneii_lcell_ff port map ( regout=>v(5), datain=>v(4), clk=>
      i_clock);
   reg_v_4 : cycloneii_lcell_ff port map ( regout=>v(4), datain=>v(3), clk=>
      i_clock);
   reg_v_3 : cycloneii_lcell_ff port map ( regout=>v(3), datain=>v(2), clk=>
      i_clock);
   reg_v_2 : cycloneii_lcell_ff port map ( regout=>v(2), datain=>v(1), clk=>
      i_clock);
   reg_v_1 : cycloneii_lcell_ff port map ( regout=>v(1), datain=>v(0), clk=>
      i_clock);
   reg_v_0 : cycloneii_lcell_ff port map ( regout=>v(0), datain=>i_valid, 
      clk=>i_clock, sclr=>i_reset);
   reg_t_1 : cycloneii_lcell_ff port map ( regout=>t(1), datain=>t_15n2s1(1), 
      clk=>i_clock, ena=>nx38525z1, sclr=>i_reset);
   reg_t_0 : cycloneii_lcell_ff port map ( regout=>t(0), datain=>t_15n2s1(0), 
      clk=>i_clock, ena=>nx38525z1, sclr=>i_reset);
   reg_sub4_9 : cycloneii_lcell_ff port map ( regout=>sub4_9, datain=>
      sub4_22n4s1_9, clk=>i_clock, sclr=>not_v_7);
   reg_sub4_8 : cycloneii_lcell_ff port map ( regout=>sub4_8, datain=>
      sub4_22n4s1_8, clk=>i_clock, sclr=>not_v_7);
   reg_sub4_7 : cycloneii_lcell_ff port map ( regout=>sub4_7, datain=>
      sub4_22n4s1_7, clk=>i_clock, sclr=>not_v_7);
   reg_sub4_13 : cycloneii_lcell_ff port map ( regout=>sub4_13, datain=>
      sub4_22n4s1_13, clk=>i_clock, sclr=>not_v_7);
   reg_sub4_12 : cycloneii_lcell_ff port map ( regout=>sub4_12, datain=>
      sub4_22n4s1_12, clk=>i_clock, sclr=>not_v_7);
   reg_sub4_11 : cycloneii_lcell_ff port map ( regout=>sub4_11, datain=>
      sub4_22n4s1_11, clk=>i_clock, sclr=>not_v_7);
   reg_sub4_10 : cycloneii_lcell_ff port map ( regout=>sub4_10, datain=>
      sub4_22n4s1_10, clk=>i_clock, sclr=>not_v_7);
   reg_sub3_10 : cycloneii_lcell_ff port map ( regout=>sub3_10, datain=>
      sub3_22n3s1_10, clk=>i_clock);
   reg_sub2_10 : cycloneii_lcell_ff port map ( regout=>sub2_10, datain=>
      sub2_22n2s1_10, clk=>i_clock);
   reg_sub1_8 : cycloneii_lcell_ff port map ( regout=>sub1_8, datain=>
      sub1_22n1s1_8, clk=>i_clock);
   reg_r9_9 : cycloneii_lcell_ff port map ( regout=>r9(9), datain=>max2(9), 
      sdata=>add2(9), clk=>i_clock, ena=>nx24302z1, sload=>v(2));
   reg_r9_8 : cycloneii_lcell_ff port map ( regout=>r9(8), datain=>max2(8), 
      sdata=>add2(8), clk=>i_clock, ena=>nx24302z1, sload=>v(2));
   reg_r9_7 : cycloneii_lcell_ff port map ( regout=>r9(7), datain=>max2(7), 
      sdata=>add2(7), clk=>i_clock, ena=>nx24302z1, sload=>v(2));
   reg_r9_6 : cycloneii_lcell_ff port map ( regout=>r9(6), datain=>max2(6), 
      sdata=>add2(6), clk=>i_clock, ena=>nx24302z1, sload=>v(2));
   reg_r9_5 : cycloneii_lcell_ff port map ( regout=>r9(5), datain=>max2(5), 
      sdata=>add2(5), clk=>i_clock, ena=>nx24302z1, sload=>v(2));
   reg_r9_4 : cycloneii_lcell_ff port map ( regout=>r9(4), datain=>max2(4), 
      sdata=>add2(4), clk=>i_clock, ena=>nx24302z1, sload=>v(2));
   reg_r9_3 : cycloneii_lcell_ff port map ( regout=>r9(3), datain=>max2(3), 
      sdata=>add2(3), clk=>i_clock, ena=>nx24302z1, sload=>v(2));
   reg_r9_2 : cycloneii_lcell_ff port map ( regout=>r9(2), datain=>max2(2), 
      sdata=>add2(2), clk=>i_clock, ena=>nx24302z1, sload=>v(2));
   reg_r9_1 : cycloneii_lcell_ff port map ( regout=>r9(1), datain=>max2(1), 
      sdata=>add2(1), clk=>i_clock, ena=>nx24302z1, sload=>v(2));
   reg_r9_0 : cycloneii_lcell_ff port map ( regout=>r9(0), datain=>max2(0), 
      sdata=>add2(0), clk=>i_clock, ena=>nx24302z1, sload=>v(2));
   reg_r8_9 : cycloneii_lcell_ff port map ( regout=>r8(9), datain=>add3(9), 
      clk=>i_clock, sclr=>v(2));
   reg_r8_8 : cycloneii_lcell_ff port map ( regout=>r8(8), datain=>add3(8), 
      sdata=>r7(8), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>v(2)
   );
   reg_r8_7 : cycloneii_lcell_ff port map ( regout=>r8(7), datain=>add3(7), 
      sdata=>r7(7), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>v(2)
   );
   reg_r8_6 : cycloneii_lcell_ff port map ( regout=>r8(6), datain=>add3(6), 
      sdata=>r7(6), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>v(2)
   );
   reg_r8_5 : cycloneii_lcell_ff port map ( regout=>r8(5), datain=>add3(5), 
      sdata=>r7(5), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>v(2)
   );
   reg_r8_4 : cycloneii_lcell_ff port map ( regout=>r8(4), datain=>add3(4), 
      sdata=>r7(4), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>v(2)
   );
   reg_r8_3 : cycloneii_lcell_ff port map ( regout=>r8(3), datain=>add3(3), 
      sdata=>r7(3), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>v(2)
   );
   reg_r8_2 : cycloneii_lcell_ff port map ( regout=>r8(2), datain=>add3(2), 
      sdata=>r7(2), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>v(2)
   );
   reg_r8_10 : cycloneii_lcell_ff port map ( regout=>r8(10), datain=>
      add3(10), clk=>i_clock, sclr=>v(2));
   reg_r8_1 : cycloneii_lcell_ff port map ( regout=>r8(1), datain=>add3(1), 
      sdata=>r7(1), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>v(2)
   );
   reg_r8_0 : cycloneii_lcell_ff port map ( regout=>r8(0), datain=>add3(0), 
      sdata=>r7(0), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>v(2)
   );
   reg_r7_8 : cycloneii_lcell_ff port map ( regout=>r7(8), datain=>add1(8), 
      clk=>i_clock);
   reg_r7_7 : cycloneii_lcell_ff port map ( regout=>r7(7), datain=>add1(7), 
      clk=>i_clock);
   reg_r7_6 : cycloneii_lcell_ff port map ( regout=>r7(6), datain=>add1(6), 
      clk=>i_clock);
   reg_r7_5 : cycloneii_lcell_ff port map ( regout=>r7(5), datain=>add1(5), 
      clk=>i_clock);
   reg_r7_4 : cycloneii_lcell_ff port map ( regout=>r7(4), datain=>add1(4), 
      clk=>i_clock);
   reg_r7_3 : cycloneii_lcell_ff port map ( regout=>r7(3), datain=>add1(3), 
      clk=>i_clock);
   reg_r7_2 : cycloneii_lcell_ff port map ( regout=>r7(2), datain=>add1(2), 
      clk=>i_clock);
   reg_r7_1 : cycloneii_lcell_ff port map ( regout=>r7(1), datain=>add1(1), 
      clk=>i_clock);
   reg_r7_0 : cycloneii_lcell_ff port map ( regout=>r7(0), datain=>add1(0), 
      clk=>i_clock);
   reg_r5_7 : cycloneii_lcell_ff port map ( regout=>r5(7), datain=>max1(7), 
      clk=>i_clock);
   reg_r5_6 : cycloneii_lcell_ff port map ( regout=>r5(6), datain=>max1(6), 
      clk=>i_clock);
   reg_r5_5 : cycloneii_lcell_ff port map ( regout=>r5(5), datain=>max1(5), 
      clk=>i_clock);
   reg_r5_4 : cycloneii_lcell_ff port map ( regout=>r5(4), datain=>max1(4), 
      clk=>i_clock);
   reg_r5_3 : cycloneii_lcell_ff port map ( regout=>r5(3), datain=>max1(3), 
      clk=>i_clock);
   reg_r5_2 : cycloneii_lcell_ff port map ( regout=>r5(2), datain=>max1(2), 
      clk=>i_clock);
   reg_r5_1 : cycloneii_lcell_ff port map ( regout=>r5(1), datain=>max1(1), 
      clk=>i_clock);
   reg_r5_0 : cycloneii_lcell_ff port map ( regout=>r5(0), datain=>max1(0), 
      clk=>i_clock);
   reg_r4_7 : cycloneii_lcell_ff port map ( regout=>r4(7), datain=>nx49737z1, 
      sdata=>b(7), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r4_6 : cycloneii_lcell_ff port map ( regout=>r4(6), datain=>nx50734z1, 
      sdata=>b(6), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r4_5 : cycloneii_lcell_ff port map ( regout=>r4(5), datain=>nx51731z1, 
      sdata=>b(5), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r4_4 : cycloneii_lcell_ff port map ( regout=>r4(4), datain=>nx52728z1, 
      sdata=>b(4), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r4_3 : cycloneii_lcell_ff port map ( regout=>r4(3), datain=>nx53725z1, 
      sdata=>b(3), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r4_2 : cycloneii_lcell_ff port map ( regout=>r4(2), datain=>nx54722z1, 
      sdata=>b(2), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r4_1 : cycloneii_lcell_ff port map ( regout=>r4(1), datain=>nx55719z1, 
      sdata=>b(1), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r4_0 : cycloneii_lcell_ff port map ( regout=>r4(0), datain=>nx56716z1, 
      sdata=>b(0), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r3_7 : cycloneii_lcell_ff port map ( regout=>r3(7), datain=>nx41318z1, 
      sdata=>c(7), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r3_6 : cycloneii_lcell_ff port map ( regout=>r3(6), datain=>nx42315z1, 
      sdata=>c(6), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r3_5 : cycloneii_lcell_ff port map ( regout=>r3(5), datain=>nx43312z1, 
      sdata=>c(5), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r3_4 : cycloneii_lcell_ff port map ( regout=>r3(4), datain=>nx44309z1, 
      sdata=>c(4), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r3_3 : cycloneii_lcell_ff port map ( regout=>r3(3), datain=>nx45306z1, 
      sdata=>c(3), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r3_2 : cycloneii_lcell_ff port map ( regout=>r3(2), datain=>nx46303z1, 
      sdata=>c(2), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r3_1 : cycloneii_lcell_ff port map ( regout=>r3(1), datain=>nx47300z1, 
      sdata=>c(1), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r3_0 : cycloneii_lcell_ff port map ( regout=>r3(0), datain=>nx48297z1, 
      sdata=>c(0), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r2_7 : cycloneii_lcell_ff port map ( regout=>r2(7), datain=>nx32637z1, 
      sdata=>d(7), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r2_6 : cycloneii_lcell_ff port map ( regout=>r2(6), datain=>nx31640z1, 
      sdata=>d(6), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r2_5 : cycloneii_lcell_ff port map ( regout=>r2(5), datain=>nx30643z1, 
      sdata=>d(5), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r2_4 : cycloneii_lcell_ff port map ( regout=>r2(4), datain=>nx29646z1, 
      sdata=>d(4), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r2_3 : cycloneii_lcell_ff port map ( regout=>r2(3), datain=>nx28649z1, 
      sdata=>d(3), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r2_2 : cycloneii_lcell_ff port map ( regout=>r2(2), datain=>nx27652z1, 
      sdata=>d(2), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r2_1 : cycloneii_lcell_ff port map ( regout=>r2(1), datain=>nx26655z1, 
      sdata=>d(1), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r2_0 : cycloneii_lcell_ff port map ( regout=>r2(0), datain=>nx25658z1, 
      sdata=>d(0), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r15_9 : cycloneii_lcell_ff port map ( regout=>r15(9), datain=>add4(9), 
      clk=>i_clock);
   reg_r15_8 : cycloneii_lcell_ff port map ( regout=>r15(8), datain=>add4(8), 
      clk=>i_clock);
   reg_r15_7 : cycloneii_lcell_ff port map ( regout=>r15(7), datain=>add4(7), 
      clk=>i_clock);
   reg_r15_6 : cycloneii_lcell_ff port map ( regout=>r15(6), datain=>add4(6), 
      clk=>i_clock);
   reg_r15_5 : cycloneii_lcell_ff port map ( regout=>r15(5), datain=>add4(5), 
      clk=>i_clock);
   reg_r15_4 : cycloneii_lcell_ff port map ( regout=>r15(4), datain=>add4(4), 
      clk=>i_clock);
   reg_r15_3 : cycloneii_lcell_ff port map ( regout=>r15(3), datain=>add4(3), 
      clk=>i_clock);
   reg_r15_2 : cycloneii_lcell_ff port map ( regout=>r15(2), datain=>add4(2), 
      clk=>i_clock);
   reg_r15_12 : cycloneii_lcell_ff port map ( regout=>r15(12), datain=>
      add4(12), clk=>i_clock);
   reg_r15_11 : cycloneii_lcell_ff port map ( regout=>r15(11), datain=>
      add4(11), clk=>i_clock);
   reg_r15_10 : cycloneii_lcell_ff port map ( regout=>r15(10), datain=>
      add4(10), clk=>i_clock);
   reg_r15_1 : cycloneii_lcell_ff port map ( regout=>r15(1), datain=>add4(1), 
      clk=>i_clock);
   reg_r15_0 : cycloneii_lcell_ff port map ( regout=>r15(0), datain=>add4(0), 
      clk=>i_clock);
   reg_r14_9 : cycloneii_lcell_ff port map ( regout=>r14_9, datain=>max3(6), 
      clk=>i_clock);
   reg_r14_8 : cycloneii_lcell_ff port map ( regout=>r14_8, datain=>max3(5), 
      clk=>i_clock);
   reg_r14_7 : cycloneii_lcell_ff port map ( regout=>r14_7, datain=>max3(4), 
      clk=>i_clock);
   reg_r14_6 : cycloneii_lcell_ff port map ( regout=>r14_6, datain=>max3(3), 
      clk=>i_clock);
   reg_r14_5 : cycloneii_lcell_ff port map ( regout=>r14_5, datain=>max3(2), 
      clk=>i_clock);
   reg_r14_4 : cycloneii_lcell_ff port map ( regout=>r14_4, datain=>max3(1), 
      clk=>i_clock);
   reg_r14_3 : cycloneii_lcell_ff port map ( regout=>r14_3, datain=>max3(0), 
      clk=>i_clock);
   reg_r14_12 : cycloneii_lcell_ff port map ( regout=>r14_12, datain=>
      max3(9), clk=>i_clock);
   reg_r14_11 : cycloneii_lcell_ff port map ( regout=>r14_11, datain=>
      max3(8), clk=>i_clock);
   reg_r14_10 : cycloneii_lcell_ff port map ( regout=>r14_10, datain=>
      max3(7), clk=>i_clock);
   reg_r13_9 : cycloneii_lcell_ff port map ( regout=>r13(9), datain=>add3(9), 
      clk=>i_clock);
   reg_r13_8 : cycloneii_lcell_ff port map ( regout=>r13(8), datain=>add3(8), 
      clk=>i_clock);
   reg_r13_7 : cycloneii_lcell_ff port map ( regout=>r13(7), datain=>add3(7), 
      clk=>i_clock);
   reg_r13_6 : cycloneii_lcell_ff port map ( regout=>r13(6), datain=>add3(6), 
      clk=>i_clock);
   reg_r13_5 : cycloneii_lcell_ff port map ( regout=>r13(5), datain=>add3(5), 
      clk=>i_clock);
   reg_r13_4 : cycloneii_lcell_ff port map ( regout=>r13(4), datain=>add3(4), 
      clk=>i_clock);
   reg_r13_3 : cycloneii_lcell_ff port map ( regout=>r13(3), datain=>add3(3), 
      clk=>i_clock);
   reg_r13_2 : cycloneii_lcell_ff port map ( regout=>r13(2), datain=>add3(2), 
      clk=>i_clock);
   reg_r13_10 : cycloneii_lcell_ff port map ( regout=>r13(10), datain=>
      add3(10), clk=>i_clock);
   reg_r13_1 : cycloneii_lcell_ff port map ( regout=>r13(1), datain=>add3(1), 
      clk=>i_clock);
   reg_r13_0 : cycloneii_lcell_ff port map ( regout=>r13(0), datain=>add3(0), 
      clk=>i_clock);
   reg_r12_9 : cycloneii_lcell_ff port map ( regout=>r12(9), datain=>max2(9), 
      clk=>i_clock);
   reg_r12_8 : cycloneii_lcell_ff port map ( regout=>r12(8), datain=>max2(8), 
      clk=>i_clock);
   reg_r12_7 : cycloneii_lcell_ff port map ( regout=>r12(7), datain=>max2(7), 
      clk=>i_clock);
   reg_r12_6 : cycloneii_lcell_ff port map ( regout=>r12(6), datain=>max2(6), 
      clk=>i_clock);
   reg_r12_5 : cycloneii_lcell_ff port map ( regout=>r12(5), datain=>max2(5), 
      clk=>i_clock);
   reg_r12_4 : cycloneii_lcell_ff port map ( regout=>r12(4), datain=>max2(4), 
      clk=>i_clock);
   reg_r12_3 : cycloneii_lcell_ff port map ( regout=>r12(3), datain=>max2(3), 
      clk=>i_clock);
   reg_r12_2 : cycloneii_lcell_ff port map ( regout=>r12(2), datain=>max2(2), 
      clk=>i_clock);
   reg_r12_1 : cycloneii_lcell_ff port map ( regout=>r12(1), datain=>max2(1), 
      clk=>i_clock);
   reg_r12_0 : cycloneii_lcell_ff port map ( regout=>r12(0), datain=>max2(0), 
      clk=>i_clock);
   reg_r11_9 : cycloneii_lcell_ff port map ( regout=>r11(9), datain=>add2(9), 
      clk=>i_clock);
   reg_r11_8 : cycloneii_lcell_ff port map ( regout=>r11(8), datain=>add2(8), 
      clk=>i_clock);
   reg_r11_7 : cycloneii_lcell_ff port map ( regout=>r11(7), datain=>add2(7), 
      clk=>i_clock);
   reg_r11_6 : cycloneii_lcell_ff port map ( regout=>r11(6), datain=>add2(6), 
      clk=>i_clock);
   reg_r11_5 : cycloneii_lcell_ff port map ( regout=>r11(5), datain=>add2(5), 
      clk=>i_clock);
   reg_r11_4 : cycloneii_lcell_ff port map ( regout=>r11(4), datain=>add2(4), 
      clk=>i_clock);
   reg_r11_3 : cycloneii_lcell_ff port map ( regout=>r11(3), datain=>add2(3), 
      clk=>i_clock);
   reg_r11_2 : cycloneii_lcell_ff port map ( regout=>r11(2), datain=>add2(2), 
      clk=>i_clock);
   reg_r11_1 : cycloneii_lcell_ff port map ( regout=>r11(1), datain=>add2(1), 
      clk=>i_clock);
   reg_r11_0 : cycloneii_lcell_ff port map ( regout=>r11(0), datain=>add2(0), 
      clk=>i_clock);
   reg_r1_7 : cycloneii_lcell_ff port map ( regout=>r1(7), datain=>nx41056z1, 
      sdata=>a(7), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r1_6 : cycloneii_lcell_ff port map ( regout=>r1(6), datain=>nx40059z1, 
      sdata=>a(6), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r1_5 : cycloneii_lcell_ff port map ( regout=>r1(5), datain=>nx39062z1, 
      sdata=>a(5), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r1_4 : cycloneii_lcell_ff port map ( regout=>r1(4), datain=>nx38065z1, 
      sdata=>a(4), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r1_3 : cycloneii_lcell_ff port map ( regout=>r1(3), datain=>nx37068z1, 
      sdata=>a(3), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r1_2 : cycloneii_lcell_ff port map ( regout=>r1(2), datain=>nx36071z1, 
      sdata=>a(2), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r1_1 : cycloneii_lcell_ff port map ( regout=>r1(1), datain=>nx35074z1, 
      sdata=>a(1), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_r1_0 : cycloneii_lcell_ff port map ( regout=>r1(0), datain=>nx34077z1, 
      sdata=>a(0), clk=>i_clock, ena=>nx41056z3, sload=>v(0));
   reg_output_valid : cycloneii_lcell_ff port map ( regout=>o_valid, datain
      =>nx20813z1, clk=>i_clock);
   reg_output_edge : cycloneii_lcell_ff port map ( regout=>
      o_edge_EXMPLR642(2), datain=>output_edge_22n5s1, clk=>i_clock, sclr=>
      sub4_13);
   reg_mode_1 : cycloneii_lcell_ff port map ( regout=>o_mode_1_EXMPLR643, 
      datain=>debug_num_5_1_EXMPLR656, clk=>i_clock, sclr=>i_reset);
   reg_mode_0 : cycloneii_lcell_ff port map ( regout=>nx15976z1, datain=>
      nx26373z1, clk=>i_clock, sclr=>i_reset);
   reg_max3_9 : cycloneii_lcell_ff port map ( regout=>max3(9), datain=>
      r11(9), sdata=>r12(9), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, 
      sload=>sub3_10);
   reg_max3_8 : cycloneii_lcell_ff port map ( regout=>max3(8), datain=>
      r11(8), sdata=>r12(8), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, 
      sload=>sub3_10);
   reg_max3_7 : cycloneii_lcell_ff port map ( regout=>max3(7), datain=>
      r11(7), sdata=>r12(7), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, 
      sload=>sub3_10);
   reg_max3_6 : cycloneii_lcell_ff port map ( regout=>max3(6), datain=>
      r11(6), sdata=>r12(6), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, 
      sload=>sub3_10);
   reg_max3_5 : cycloneii_lcell_ff port map ( regout=>max3(5), datain=>
      r11(5), sdata=>r12(5), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, 
      sload=>sub3_10);
   reg_max3_4 : cycloneii_lcell_ff port map ( regout=>max3(4), datain=>
      r11(4), sdata=>r12(4), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, 
      sload=>sub3_10);
   reg_max3_3 : cycloneii_lcell_ff port map ( regout=>max3(3), datain=>
      r11(3), sdata=>r12(3), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, 
      sload=>sub3_10);
   reg_max3_2 : cycloneii_lcell_ff port map ( regout=>max3(2), datain=>
      r11(2), sdata=>r12(2), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, 
      sload=>sub3_10);
   reg_max3_1 : cycloneii_lcell_ff port map ( regout=>max3(1), datain=>
      r11(1), sdata=>r12(1), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, 
      sload=>sub3_10);
   reg_max3_0 : cycloneii_lcell_ff port map ( regout=>max3(0), datain=>
      r11(0), sdata=>r12(0), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, 
      sload=>sub3_10);
   reg_max2_9 : cycloneii_lcell_ff port map ( regout=>max2(9), datain=>r9(9), 
      sdata=>r11(9), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>
      sub2_10);
   reg_max2_8 : cycloneii_lcell_ff port map ( regout=>max2(8), datain=>r9(8), 
      sdata=>r11(8), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>
      sub2_10);
   reg_max2_7 : cycloneii_lcell_ff port map ( regout=>max2(7), datain=>r9(7), 
      sdata=>r11(7), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>
      sub2_10);
   reg_max2_6 : cycloneii_lcell_ff port map ( regout=>max2(6), datain=>r9(6), 
      sdata=>r11(6), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>
      sub2_10);
   reg_max2_5 : cycloneii_lcell_ff port map ( regout=>max2(5), datain=>r9(5), 
      sdata=>r11(5), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>
      sub2_10);
   reg_max2_4 : cycloneii_lcell_ff port map ( regout=>max2(4), datain=>r9(4), 
      sdata=>r11(4), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>
      sub2_10);
   reg_max2_3 : cycloneii_lcell_ff port map ( regout=>max2(3), datain=>r9(3), 
      sdata=>r11(3), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>
      sub2_10);
   reg_max2_2 : cycloneii_lcell_ff port map ( regout=>max2(2), datain=>r9(2), 
      sdata=>r11(2), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>
      sub2_10);
   reg_max2_1 : cycloneii_lcell_ff port map ( regout=>max2(1), datain=>r9(1), 
      sdata=>r11(1), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>
      sub2_10);
   reg_max2_0 : cycloneii_lcell_ff port map ( regout=>max2(0), datain=>r9(0), 
      sdata=>r11(0), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>
      sub2_10);
   reg_max1_7 : cycloneii_lcell_ff port map ( regout=>max1(7), datain=>r1(7), 
      sdata=>r2(7), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>
      sub1_8);
   reg_max1_6 : cycloneii_lcell_ff port map ( regout=>max1(6), datain=>r1(6), 
      sdata=>r2(6), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>
      sub1_8);
   reg_max1_5 : cycloneii_lcell_ff port map ( regout=>max1(5), datain=>r1(5), 
      sdata=>r2(5), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>
      sub1_8);
   reg_max1_4 : cycloneii_lcell_ff port map ( regout=>max1(4), datain=>r1(4), 
      sdata=>r2(4), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>
      sub1_8);
   reg_max1_3 : cycloneii_lcell_ff port map ( regout=>max1(3), datain=>r1(3), 
      sdata=>r2(3), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>
      sub1_8);
   reg_max1_2 : cycloneii_lcell_ff port map ( regout=>max1(2), datain=>r1(2), 
      sdata=>r2(2), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>
      sub1_8);
   reg_max1_1 : cycloneii_lcell_ff port map ( regout=>max1(1), datain=>r1(1), 
      sdata=>r2(1), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>
      sub1_8);
   reg_max1_0 : cycloneii_lcell_ff port map ( regout=>max1(0), datain=>r1(0), 
      sdata=>r2(0), clk=>i_clock, ena=>debug_num_5_1_EXMPLR656, sload=>
      sub1_8);
   reg_i_7 : cycloneii_lcell_ff port map ( regout=>i(7), datain=>d(7), clk=>
      i_clock, ena=>i_valid);
   reg_i_6 : cycloneii_lcell_ff port map ( regout=>i(6), datain=>d(6), clk=>
      i_clock, ena=>i_valid);
   reg_i_5 : cycloneii_lcell_ff port map ( regout=>i(5), datain=>d(5), clk=>
      i_clock, ena=>i_valid);
   reg_i_4 : cycloneii_lcell_ff port map ( regout=>i(4), datain=>d(4), clk=>
      i_clock, ena=>i_valid);
   reg_i_3 : cycloneii_lcell_ff port map ( regout=>i(3), datain=>d(3), clk=>
      i_clock, ena=>i_valid);
   reg_i_2 : cycloneii_lcell_ff port map ( regout=>i(2), datain=>d(2), clk=>
      i_clock, ena=>i_valid);
   reg_i_1 : cycloneii_lcell_ff port map ( regout=>i(1), datain=>d(1), clk=>
      i_clock, ena=>i_valid);
   reg_i_0 : cycloneii_lcell_ff port map ( regout=>i(0), datain=>d(0), clk=>
      i_clock, ena=>i_valid);
   reg_h_7 : cycloneii_lcell_ff port map ( regout=>h(7), datain=>i(7), clk=>
      i_clock, ena=>i_valid);
   reg_h_6 : cycloneii_lcell_ff port map ( regout=>h(6), datain=>i(6), clk=>
      i_clock, ena=>i_valid);
   reg_h_5 : cycloneii_lcell_ff port map ( regout=>h(5), datain=>i(5), clk=>
      i_clock, ena=>i_valid);
   reg_h_4 : cycloneii_lcell_ff port map ( regout=>h(4), datain=>i(4), clk=>
      i_clock, ena=>i_valid);
   reg_h_3 : cycloneii_lcell_ff port map ( regout=>h(3), datain=>i(3), clk=>
      i_clock, ena=>i_valid);
   reg_h_2 : cycloneii_lcell_ff port map ( regout=>h(2), datain=>i(2), clk=>
      i_clock, ena=>i_valid);
   reg_h_1 : cycloneii_lcell_ff port map ( regout=>h(1), datain=>i(1), clk=>
      i_clock, ena=>i_valid);
   reg_h_0 : cycloneii_lcell_ff port map ( regout=>h(0), datain=>i(0), clk=>
      i_clock, ena=>i_valid);
   reg_g_7 : cycloneii_lcell_ff port map ( regout=>g(7), datain=>f(7), clk=>
      i_clock, ena=>i_valid);
   reg_g_6 : cycloneii_lcell_ff port map ( regout=>g(6), datain=>f(6), clk=>
      i_clock, ena=>i_valid);
   reg_g_5 : cycloneii_lcell_ff port map ( regout=>g(5), datain=>f(5), clk=>
      i_clock, ena=>i_valid);
   reg_g_4 : cycloneii_lcell_ff port map ( regout=>g(4), datain=>f(4), clk=>
      i_clock, ena=>i_valid);
   reg_g_3 : cycloneii_lcell_ff port map ( regout=>g(3), datain=>f(3), clk=>
      i_clock, ena=>i_valid);
   reg_g_2 : cycloneii_lcell_ff port map ( regout=>g(2), datain=>f(2), clk=>
      i_clock, ena=>i_valid);
   reg_g_1 : cycloneii_lcell_ff port map ( regout=>g(1), datain=>f(1), clk=>
      i_clock, ena=>i_valid);
   reg_g_0 : cycloneii_lcell_ff port map ( regout=>g(0), datain=>f(0), clk=>
      i_clock, ena=>i_valid);
   reg_f_7 : cycloneii_lcell_ff port map ( regout=>f(7), datain=>e(7), clk=>
      i_clock, ena=>i_valid);
   reg_f_6 : cycloneii_lcell_ff port map ( regout=>f(6), datain=>e(6), clk=>
      i_clock, ena=>i_valid);
   reg_f_5 : cycloneii_lcell_ff port map ( regout=>f(5), datain=>e(5), clk=>
      i_clock, ena=>i_valid);
   reg_f_4 : cycloneii_lcell_ff port map ( regout=>f(4), datain=>e(4), clk=>
      i_clock, ena=>i_valid);
   reg_f_3 : cycloneii_lcell_ff port map ( regout=>f(3), datain=>e(3), clk=>
      i_clock, ena=>i_valid);
   reg_f_2 : cycloneii_lcell_ff port map ( regout=>f(2), datain=>e(2), clk=>
      i_clock, ena=>i_valid);
   reg_f_1 : cycloneii_lcell_ff port map ( regout=>f(1), datain=>e(1), clk=>
      i_clock, ena=>i_valid);
   reg_f_0 : cycloneii_lcell_ff port map ( regout=>f(0), datain=>e(0), clk=>
      i_clock, ena=>i_valid);
   reg_end_of_img : cycloneii_lcell_ff port map ( regout=>end_of_img, datain
      =>nx17322z2, clk=>i_clock, ena=>nx6176z1, sclr=>i_reset);
   reg_e_7 : cycloneii_lcell_ff port map ( regout=>e(7), datain=>i_pixel(7), 
      clk=>i_clock, ena=>i_valid);
   reg_e_6 : cycloneii_lcell_ff port map ( regout=>e(6), datain=>i_pixel(6), 
      clk=>i_clock, ena=>i_valid);
   reg_e_5 : cycloneii_lcell_ff port map ( regout=>e(5), datain=>i_pixel(5), 
      clk=>i_clock, ena=>i_valid);
   reg_e_4 : cycloneii_lcell_ff port map ( regout=>e(4), datain=>i_pixel(4), 
      clk=>i_clock, ena=>i_valid);
   reg_e_3 : cycloneii_lcell_ff port map ( regout=>e(3), datain=>i_pixel(3), 
      clk=>i_clock, ena=>i_valid);
   reg_e_2 : cycloneii_lcell_ff port map ( regout=>e(2), datain=>i_pixel(2), 
      clk=>i_clock, ena=>i_valid);
   reg_e_1 : cycloneii_lcell_ff port map ( regout=>e(1), datain=>i_pixel(1), 
      clk=>i_clock, ena=>i_valid);
   reg_e_0 : cycloneii_lcell_ff port map ( regout=>e(0), datain=>i_pixel(0), 
      clk=>i_clock, ena=>i_valid);
   reg_dir7_2 : cycloneii_lcell_ff port map ( regout=>dir7(2), datain=>
      nx44114z1, clk=>i_clock);
   reg_dir7_1 : cycloneii_lcell_ff port map ( regout=>dir7(1), datain=>
      nx45111z1, clk=>i_clock);
   reg_dir7_0 : cycloneii_lcell_ff port map ( regout=>dir7(0), datain=>
      nx46108z1, clk=>i_clock);
   reg_dir6_2 : cycloneii_lcell_ff port map ( regout=>dir6_2, datain=>
      nx35695z1, clk=>i_clock);
   reg_dir6_1 : cycloneii_lcell_ff port map ( regout=>nx45111z2, datain=>
      NOT_dir5_1, clk=>i_clock, ena=>nx36692z1, sclr=>nx36692z2);
   reg_dir6_0 : cycloneii_lcell_ff port map ( regout=>nx46108z3, datain=>
      NOT_dir5_0, clk=>i_clock, ena=>nx36692z1, sclr=>nx36692z2);
   reg_dir5_2 : cycloneii_lcell_ff port map ( regout=>dir5(2), datain=>
      dir5_18n5ss1_2, clk=>i_clock, ena=>v(4));
   reg_dir5_1 : cycloneii_lcell_ff port map ( regout=>dir5(1), datain=>
      not_sub2_10, clk=>i_clock, ena=>v(4));
   reg_dir5_0 : cycloneii_lcell_ff port map ( regout=>dir5(0), datain=>
      dir2_2, clk=>i_clock, ena=>v(4), sclr=>nx36266z1);
   reg_dir4_2 : cycloneii_lcell_ff port map ( regout=>dir4_2, datain=>
      nx46679z1, clk=>i_clock);
   reg_dir4_0 : cycloneii_lcell_ff port map ( regout=>dir4_0, datain=>
      nx44685z1, clk=>i_clock);
   reg_dir3_2 : cycloneii_lcell_ff port map ( regout=>dir3_2, datain=>
      nx10438z1, clk=>i_clock);
   reg_dir2_2 : cycloneii_lcell_ff port map ( regout=>dir2_2, datain=>
      nx2019z1, clk=>i_clock);
   reg_dir1_2 : cycloneii_lcell_ff port map ( regout=>dir1_2, datain=>sub1_8, 
      clk=>i_clock, ena=>v(1));
   reg_d_7 : cycloneii_lcell_ff port map ( regout=>d(7), datain=>nx36625z1, 
      sdata=>q2(7), clk=>i_clock, ena=>nx20492z2, sload=>t(1));
   reg_d_6 : cycloneii_lcell_ff port map ( regout=>d(6), datain=>nx35628z1, 
      sdata=>q2(6), clk=>i_clock, ena=>nx20492z2, sload=>t(1));
   reg_d_5 : cycloneii_lcell_ff port map ( regout=>d(5), datain=>nx34631z1, 
      sdata=>q2(5), clk=>i_clock, ena=>nx20492z2, sload=>t(1));
   reg_d_4 : cycloneii_lcell_ff port map ( regout=>d(4), datain=>nx33634z1, 
      sdata=>q2(4), clk=>i_clock, ena=>nx20492z2, sload=>t(1));
   reg_d_3 : cycloneii_lcell_ff port map ( regout=>d(3), datain=>nx32637z3, 
      sdata=>q2(3), clk=>i_clock, ena=>nx20492z2, sload=>t(1));
   reg_d_2 : cycloneii_lcell_ff port map ( regout=>d(2), datain=>nx31640z3, 
      sdata=>q2(2), clk=>i_clock, ena=>nx20492z2, sload=>t(1));
   reg_d_1 : cycloneii_lcell_ff port map ( regout=>d(1), datain=>nx30643z3, 
      sdata=>q2(1), clk=>i_clock, ena=>nx20492z2, sload=>t(1));
   reg_d_0 : cycloneii_lcell_ff port map ( regout=>d(0), datain=>nx29646z3, 
      sdata=>q2(0), clk=>i_clock, ena=>nx20492z2, sload=>t(1));
   reg_c_7 : cycloneii_lcell_ff port map ( regout=>c(7), datain=>nx20492z1, 
      sdata=>q1(7), clk=>i_clock, ena=>nx20492z2, sload=>t(1));
   reg_c_6 : cycloneii_lcell_ff port map ( regout=>c(6), datain=>nx21489z1, 
      sdata=>q1(6), clk=>i_clock, ena=>nx20492z2, sload=>t(1));
   reg_c_5 : cycloneii_lcell_ff port map ( regout=>c(5), datain=>nx22486z1, 
      sdata=>q1(5), clk=>i_clock, ena=>nx20492z2, sload=>t(1));
   reg_c_4 : cycloneii_lcell_ff port map ( regout=>c(4), datain=>nx23483z1, 
      sdata=>q1(4), clk=>i_clock, ena=>nx20492z2, sload=>t(1));
   reg_c_3 : cycloneii_lcell_ff port map ( regout=>c(3), datain=>nx24480z1, 
      sdata=>q1(3), clk=>i_clock, ena=>nx20492z2, sload=>t(1));
   reg_c_2 : cycloneii_lcell_ff port map ( regout=>c(2), datain=>nx25477z1, 
      sdata=>q1(2), clk=>i_clock, ena=>nx20492z2, sload=>t(1));
   reg_c_1 : cycloneii_lcell_ff port map ( regout=>c(1), datain=>nx26474z1, 
      sdata=>q1(1), clk=>i_clock, ena=>nx20492z2, sload=>t(1));
   reg_c_0 : cycloneii_lcell_ff port map ( regout=>c(0), datain=>nx27471z1, 
      sdata=>q1(0), clk=>i_clock, ena=>nx20492z2, sload=>t(1));
   reg_b_7 : cycloneii_lcell_ff port map ( regout=>b(7), datain=>c(7), clk=>
      i_clock, ena=>i_valid);
   reg_b_6 : cycloneii_lcell_ff port map ( regout=>b(6), datain=>c(6), clk=>
      i_clock, ena=>i_valid);
   reg_b_5 : cycloneii_lcell_ff port map ( regout=>b(5), datain=>c(5), clk=>
      i_clock, ena=>i_valid);
   reg_b_4 : cycloneii_lcell_ff port map ( regout=>b(4), datain=>c(4), clk=>
      i_clock, ena=>i_valid);
   reg_b_3 : cycloneii_lcell_ff port map ( regout=>b(3), datain=>c(3), clk=>
      i_clock, ena=>i_valid);
   reg_b_2 : cycloneii_lcell_ff port map ( regout=>b(2), datain=>c(2), clk=>
      i_clock, ena=>i_valid);
   reg_b_1 : cycloneii_lcell_ff port map ( regout=>b(1), datain=>c(1), clk=>
      i_clock, ena=>i_valid);
   reg_b_0 : cycloneii_lcell_ff port map ( regout=>b(0), datain=>c(0), clk=>
      i_clock, ena=>i_valid);
   reg_add4_9 : cycloneii_lcell_ff port map ( regout=>add4(9), datain=>
      add4_22n4s1(9), clk=>i_clock);
   reg_add4_8 : cycloneii_lcell_ff port map ( regout=>add4(8), datain=>
      add4_22n4s1(8), clk=>i_clock);
   reg_add4_7 : cycloneii_lcell_ff port map ( regout=>add4(7), datain=>
      add4_22n4s1(7), clk=>i_clock);
   reg_add4_6 : cycloneii_lcell_ff port map ( regout=>add4(6), datain=>
      add4_22n4s1(6), clk=>i_clock);
   reg_add4_5 : cycloneii_lcell_ff port map ( regout=>add4(5), datain=>
      add4_22n4s1(5), clk=>i_clock);
   reg_add4_4 : cycloneii_lcell_ff port map ( regout=>add4(4), datain=>
      add4_22n4s1(4), clk=>i_clock);
   reg_add4_3 : cycloneii_lcell_ff port map ( regout=>add4(3), datain=>
      add4_22n4s1(3), clk=>i_clock);
   reg_add4_2 : cycloneii_lcell_ff port map ( regout=>add4(2), datain=>
      add4_22n4s1(2), clk=>i_clock);
   reg_add4_12 : cycloneii_lcell_ff port map ( regout=>add4(12), datain=>
      add4_22n4s1(12), clk=>i_clock);
   reg_add4_11 : cycloneii_lcell_ff port map ( regout=>add4(11), datain=>
      add4_22n4s1(11), clk=>i_clock);
   reg_add4_10 : cycloneii_lcell_ff port map ( regout=>add4(10), datain=>
      add4_22n4s1(10), clk=>i_clock);
   reg_add4_1 : cycloneii_lcell_ff port map ( regout=>add4(1), datain=>
      add4_22n4s1(1), clk=>i_clock);
   reg_add4_0 : cycloneii_lcell_ff port map ( regout=>add4(0), datain=>
      r13(0), clk=>i_clock);
   reg_add3_9 : cycloneii_lcell_ff port map ( regout=>add3(9), datain=>
      add3_22n4s1(9), clk=>i_clock);
   reg_add3_8 : cycloneii_lcell_ff port map ( regout=>add3(8), datain=>
      add3_22n4s1(8), clk=>i_clock);
   reg_add3_7 : cycloneii_lcell_ff port map ( regout=>add3(7), datain=>
      add3_22n4s1(7), clk=>i_clock);
   reg_add3_6 : cycloneii_lcell_ff port map ( regout=>add3(6), datain=>
      add3_22n4s1(6), clk=>i_clock);
   reg_add3_5 : cycloneii_lcell_ff port map ( regout=>add3(5), datain=>
      add3_22n4s1(5), clk=>i_clock);
   reg_add3_4 : cycloneii_lcell_ff port map ( regout=>add3(4), datain=>
      add3_22n4s1(4), clk=>i_clock);
   reg_add3_3 : cycloneii_lcell_ff port map ( regout=>add3(3), datain=>
      add3_22n4s1(3), clk=>i_clock);
   reg_add3_2 : cycloneii_lcell_ff port map ( regout=>add3(2), datain=>
      add3_22n4s1(2), clk=>i_clock);
   reg_add3_10 : cycloneii_lcell_ff port map ( regout=>add3(10), datain=>
      add3_22n4s1(10), clk=>i_clock);
   reg_add3_1 : cycloneii_lcell_ff port map ( regout=>add3(1), datain=>
      add3_22n4s1(1), clk=>i_clock);
   reg_add3_0 : cycloneii_lcell_ff port map ( regout=>add3(0), datain=>
      add3_22n4s1(0), clk=>i_clock);
   reg_add2_9 : cycloneii_lcell_ff port map ( regout=>add2(9), datain=>
      add2_22n4s1(9), clk=>i_clock);
   reg_add2_8 : cycloneii_lcell_ff port map ( regout=>add2(8), datain=>
      add2_22n4s1(8), clk=>i_clock);
   reg_add2_7 : cycloneii_lcell_ff port map ( regout=>add2(7), datain=>
      add2_22n4s1(7), clk=>i_clock);
   reg_add2_6 : cycloneii_lcell_ff port map ( regout=>add2(6), datain=>
      add2_22n4s1(6), clk=>i_clock);
   reg_add2_5 : cycloneii_lcell_ff port map ( regout=>add2(5), datain=>
      add2_22n4s1(5), clk=>i_clock);
   reg_add2_4 : cycloneii_lcell_ff port map ( regout=>add2(4), datain=>
      add2_22n4s1(4), clk=>i_clock);
   reg_add2_3 : cycloneii_lcell_ff port map ( regout=>add2(3), datain=>
      add2_22n4s1(3), clk=>i_clock);
   reg_add2_2 : cycloneii_lcell_ff port map ( regout=>add2(2), datain=>
      add2_22n4s1(2), clk=>i_clock);
   reg_add2_1 : cycloneii_lcell_ff port map ( regout=>add2(1), datain=>
      add2_22n4s1(1), clk=>i_clock);
   reg_add2_0 : cycloneii_lcell_ff port map ( regout=>add2(0), datain=>
      add2_22n4s1(0), clk=>i_clock);
   reg_add1_8 : cycloneii_lcell_ff port map ( regout=>add1(8), datain=>
      add1_22n4s1(8), clk=>i_clock);
   reg_add1_7 : cycloneii_lcell_ff port map ( regout=>add1(7), datain=>
      add1_22n4s1(7), clk=>i_clock);
   reg_add1_6 : cycloneii_lcell_ff port map ( regout=>add1(6), datain=>
      add1_22n4s1(6), clk=>i_clock);
   reg_add1_5 : cycloneii_lcell_ff port map ( regout=>add1(5), datain=>
      add1_22n4s1(5), clk=>i_clock);
   reg_add1_4 : cycloneii_lcell_ff port map ( regout=>add1(4), datain=>
      add1_22n4s1(4), clk=>i_clock);
   reg_add1_3 : cycloneii_lcell_ff port map ( regout=>add1(3), datain=>
      add1_22n4s1(3), clk=>i_clock);
   reg_add1_2 : cycloneii_lcell_ff port map ( regout=>add1(2), datain=>
      add1_22n4s1(2), clk=>i_clock);
   reg_add1_1 : cycloneii_lcell_ff port map ( regout=>add1(1), datain=>
      add1_22n4s1(1), clk=>i_clock);
   reg_add1_0 : cycloneii_lcell_ff port map ( regout=>add1(0), datain=>
      add1_22n4s1(0), clk=>i_clock);
   reg_a_7 : cycloneii_lcell_ff port map ( regout=>a(7), datain=>b(7), clk=>
      i_clock, ena=>i_valid);
   reg_a_6 : cycloneii_lcell_ff port map ( regout=>a(6), datain=>b(6), clk=>
      i_clock, ena=>i_valid);
   reg_a_5 : cycloneii_lcell_ff port map ( regout=>a(5), datain=>b(5), clk=>
      i_clock, ena=>i_valid);
   reg_a_4 : cycloneii_lcell_ff port map ( regout=>a(4), datain=>b(4), clk=>
      i_clock, ena=>i_valid);
   reg_a_3 : cycloneii_lcell_ff port map ( regout=>a(3), datain=>b(3), clk=>
      i_clock, ena=>i_valid);
   reg_a_2 : cycloneii_lcell_ff port map ( regout=>a(2), datain=>b(2), clk=>
      i_clock, ena=>i_valid);
   reg_a_1 : cycloneii_lcell_ff port map ( regout=>a(1), datain=>b(1), clk=>
      i_clock, ena=>i_valid);
   reg_a_0 : cycloneii_lcell_ff port map ( regout=>a(0), datain=>b(0), clk=>
      i_clock, ena=>i_valid);
   ix38525z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8f8f") 
       port map ( combout=>nx38525z1, dataa=>nx17322z6, datab=>i_valid, 
      datac=>p_nrst_int);
   ix6176z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"e0ff") 
       port map ( combout=>nx6176z1, dataa=>nx17322z2, datab=>end_of_img, 
      datac=>i_valid, datad=>p_nrst_int);
   ix17322z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0ff") 
       port map ( combout=>nx17322z1, dataa=>nx17322z2, datab=>end_of_img, 
      datac=>i_valid, datad=>p_nrst_int);
   ix46108z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0fdd") 
       port map ( combout=>nx46108z2, dataa=>v(6), datab=>dir4_0, datac=>
      nx46108z3, datad=>sub3_10);
   ix44114z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0dd") 
       port map ( combout=>nx44114z2, dataa=>v(6), datab=>dir4_2, datac=>
      dir6_2, datad=>sub3_10);
   ix17322z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx17322z5, dataa=>o_row_EXMPLR659(3), datab=>
      o_row_EXMPLR659(2));
   ix26373z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"00f7") 
       port map ( combout=>nx26373z2, dataa=>o_mode_1_EXMPLR643, datab=>
      nx15976z1, datac=>v(0), datad=>end_of_img);
   ix20813z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"8880") 
       port map ( combout=>nx20813z5, dataa=>o_row_EXMPLR659(1), datab=>v(6), 
      datac=>nx20813z6, datad=>nx20813z7);
   ix20813z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"feee") 
       port map ( combout=>nx20813z7, dataa=>x(3), datab=>x(2), datac=>x(1), 
      datad=>x(0));
   ix20813z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx20813z6, dataa=>x(6), datab=>x(5), datac=>x(4)
   );
   ix20813z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"a800") 
       port map ( combout=>nx20813z4, dataa=>o_row_EXMPLR659(1), datab=>
      o_row_EXMPLR659(0), datac=>x(7), datad=>v(6));
   ix20813z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"fe00") 
       port map ( combout=>nx20813z3, dataa=>o_row_EXMPLR659(4), datab=>
      o_row_EXMPLR659(3), datac=>o_row_EXMPLR659(2), datad=>v(6));
   ix20813z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fe00") 
       port map ( combout=>nx20813z2, dataa=>o_row_EXMPLR659(7), datab=>
      o_row_EXMPLR659(6), datac=>o_row_EXMPLR659(5), datad=>v(6));
   ix60630z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"feee") 
       port map ( combout=>nx60630z1, dataa=>sub4_10, datab=>sub4_9, datac=>
      sub4_8, datad=>sub4_7);
   ix34077z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3120") 
       port map ( combout=>nx34077z2, dataa=>v(2), datab=>v(1), datac=>e(0), 
      datad=>g(0));
   ix35074z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3120") 
       port map ( combout=>nx35074z2, dataa=>v(2), datab=>v(1), datac=>e(1), 
      datad=>g(1));
   ix36071z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3120") 
       port map ( combout=>nx36071z2, dataa=>v(2), datab=>v(1), datac=>e(2), 
      datad=>g(2));
   ix37068z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3120") 
       port map ( combout=>nx37068z2, dataa=>v(2), datab=>v(1), datac=>e(3), 
      datad=>g(3));
   ix38065z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3120") 
       port map ( combout=>nx38065z2, dataa=>v(2), datab=>v(1), datac=>e(4), 
      datad=>g(4));
   ix39062z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3120") 
       port map ( combout=>nx39062z2, dataa=>v(2), datab=>v(1), datac=>e(5), 
      datad=>g(5));
   ix40059z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3120") 
       port map ( combout=>nx40059z2, dataa=>v(2), datab=>v(1), datac=>e(6), 
      datad=>g(6));
   ix41056z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3120") 
       port map ( combout=>nx41056z2, dataa=>v(2), datab=>v(1), datac=>e(7), 
      datad=>g(7));
   ix25658z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3210") 
       port map ( combout=>nx25658z2, dataa=>v(2), datab=>v(1), datac=>b(0), 
      datad=>h(0));
   ix26655z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3210") 
       port map ( combout=>nx26655z2, dataa=>v(2), datab=>v(1), datac=>b(1), 
      datad=>h(1));
   ix27652z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3210") 
       port map ( combout=>nx27652z2, dataa=>v(2), datab=>v(1), datac=>b(2), 
      datad=>h(2));
   ix28649z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3210") 
       port map ( combout=>nx28649z2, dataa=>v(2), datab=>v(1), datac=>b(3), 
      datad=>h(3));
   ix29646z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3210") 
       port map ( combout=>nx29646z2, dataa=>v(2), datab=>v(1), datac=>b(4), 
      datad=>h(4));
   ix30643z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3210") 
       port map ( combout=>nx30643z2, dataa=>v(2), datab=>v(1), datac=>b(5), 
      datad=>h(5));
   ix31640z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3210") 
       port map ( combout=>nx31640z2, dataa=>v(2), datab=>v(1), datac=>b(6), 
      datad=>h(6));
   ix32637z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3210") 
       port map ( combout=>nx32637z2, dataa=>v(2), datab=>v(1), datac=>b(7), 
      datad=>h(7));
   ix48297z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3210") 
       port map ( combout=>nx48297z2, dataa=>v(2), datab=>v(1), datac=>a(0), 
      datad=>f(0));
   ix47300z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3210") 
       port map ( combout=>nx47300z2, dataa=>v(2), datab=>v(1), datac=>a(1), 
      datad=>f(1));
   ix46303z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3210") 
       port map ( combout=>nx46303z2, dataa=>v(2), datab=>v(1), datac=>a(2), 
      datad=>f(2));
   ix45306z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3210") 
       port map ( combout=>nx45306z2, dataa=>v(2), datab=>v(1), datac=>a(3), 
      datad=>f(3));
   ix44309z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3210") 
       port map ( combout=>nx44309z2, dataa=>v(2), datab=>v(1), datac=>a(4), 
      datad=>f(4));
   ix43312z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3210") 
       port map ( combout=>nx43312z2, dataa=>v(2), datab=>v(1), datac=>a(5), 
      datad=>f(5));
   ix42315z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3210") 
       port map ( combout=>nx42315z2, dataa=>v(2), datab=>v(1), datac=>a(6), 
      datad=>f(6));
   ix41318z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3210") 
       port map ( combout=>nx41318z2, dataa=>v(2), datab=>v(1), datac=>a(7), 
      datad=>f(7));
   ix56716z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3120") 
       port map ( combout=>nx56716z2, dataa=>v(2), datab=>v(1), datac=>g(0), 
      datad=>h(0));
   ix55719z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3120") 
       port map ( combout=>nx55719z2, dataa=>v(2), datab=>v(1), datac=>g(1), 
      datad=>h(1));
   ix54722z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3120") 
       port map ( combout=>nx54722z2, dataa=>v(2), datab=>v(1), datac=>g(2), 
      datad=>h(2));
   ix53725z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3120") 
       port map ( combout=>nx53725z2, dataa=>v(2), datab=>v(1), datac=>g(3), 
      datad=>h(3));
   ix52728z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3120") 
       port map ( combout=>nx52728z2, dataa=>v(2), datab=>v(1), datac=>g(4), 
      datad=>h(4));
   ix51731z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3120") 
       port map ( combout=>nx51731z2, dataa=>v(2), datab=>v(1), datac=>g(5), 
      datad=>h(5));
   ix50734z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3120") 
       port map ( combout=>nx50734z2, dataa=>v(2), datab=>v(1), datac=>g(6), 
      datad=>h(6));
   ix49737z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3120") 
       port map ( combout=>nx49737z2, dataa=>v(2), datab=>v(1), datac=>g(7), 
      datad=>h(7));
   ix17322z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx17322z8, dataa=>x(7), datab=>x(6), datac=>x(5), 
      datad=>x(4));
   ix17322z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx17322z4, dataa=>o_row_EXMPLR659(7), datab=>
      o_row_EXMPLR659(6), datac=>o_row_EXMPLR659(5), datad=>
      o_row_EXMPLR659(4));
   ix46108z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fe00") 
       port map ( combout=>nx46108z1, dataa=>v(6), datab=>dir7(0), datac=>
      sub3_10, datad=>nx46108z2);
   ix45111z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"3350") 
       port map ( combout=>nx45111z1, dataa=>v(6), datab=>nx45111z2, datac=>
      dir7(1), datad=>sub3_10);
   ix44114z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fe00") 
       port map ( combout=>nx44114z1, dataa=>v(6), datab=>dir7(2), datac=>
      sub3_10, datad=>nx44114z2);
   ix17322z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0ff") 
       port map ( combout=>nx17322z9, dataa=>nx17322z6, datab=>nx17322z3, 
      datac=>end_of_img, datad=>p_nrst_int);
   ix35695z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f2d0") 
       port map ( combout=>nx35695z1, dataa=>v(5), datab=>v(4), datac=>
      dir6_2, datad=>dir6_18n5ss1_2);
   ix2019z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f2d0") 
       port map ( combout=>nx2019z1, dataa=>v(2), datab=>v(1), datac=>dir2_2, 
      datad=>sub1_8);
   ix10438z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"cce4") 
       port map ( combout=>nx10438z1, dataa=>v(3), datab=>dir3_2, datac=>
      sub1_8, datad=>nx46679z2);
   ix44685z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a3aa") 
       port map ( combout=>nx44685z1, dataa=>dir4_0, datab=>sub1_8, datac=>
      nx46679z2, datad=>nx24302z2);
   ix46679z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"acaa") 
       port map ( combout=>nx46679z1, dataa=>dir4_2, datab=>sub1_8, datac=>
      nx46679z2, datad=>nx24302z2);
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
       port map ( combout=>nx32637z3, dataa=>t(0), datab=>q1(3), datac=>
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
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx49737z1, dataa=>v(1), datab=>d(7), datac=>
      nx49737z2);
   ix50734z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx50734z1, dataa=>v(1), datab=>d(6), datac=>
      nx50734z2);
   ix51731z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx51731z1, dataa=>v(1), datab=>d(5), datac=>
      nx51731z2);
   ix52728z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx52728z1, dataa=>v(1), datab=>d(4), datac=>
      nx52728z2);
   ix53725z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx53725z1, dataa=>v(1), datab=>d(3), datac=>
      nx53725z2);
   ix54722z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx54722z1, dataa=>v(1), datab=>d(2), datac=>
      nx54722z2);
   ix55719z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx55719z1, dataa=>v(1), datab=>d(1), datac=>
      nx55719z2);
   ix56716z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx56716z1, dataa=>v(1), datab=>d(0), datac=>
      nx56716z2);
   ix41318z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx41318z1, dataa=>v(1), datab=>e(7), datac=>
      nx41318z2);
   ix42315z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx42315z1, dataa=>v(1), datab=>e(6), datac=>
      nx42315z2);
   ix43312z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx43312z1, dataa=>v(1), datab=>e(5), datac=>
      nx43312z2);
   ix44309z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx44309z1, dataa=>v(1), datab=>e(4), datac=>
      nx44309z2);
   ix45306z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx45306z1, dataa=>v(1), datab=>e(3), datac=>
      nx45306z2);
   ix46303z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx46303z1, dataa=>v(1), datab=>e(2), datac=>
      nx46303z2);
   ix47300z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx47300z1, dataa=>v(1), datab=>e(1), datac=>
      nx47300z2);
   ix48297z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx48297z1, dataa=>v(1), datab=>e(0), datac=>
      nx48297z2);
   ix32637z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx32637z1, dataa=>v(1), datab=>f(7), datac=>
      nx32637z2);
   ix31640z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx31640z1, dataa=>v(1), datab=>f(6), datac=>
      nx31640z2);
   ix30643z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx30643z1, dataa=>v(1), datab=>f(5), datac=>
      nx30643z2);
   ix29646z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx29646z1, dataa=>v(1), datab=>f(4), datac=>
      nx29646z2);
   ix28649z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx28649z1, dataa=>v(1), datab=>f(3), datac=>
      nx28649z2);
   ix27652z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx27652z1, dataa=>v(1), datab=>f(2), datac=>
      nx27652z2);
   ix26655z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx26655z1, dataa=>v(1), datab=>f(1), datac=>
      nx26655z2);
   ix25658z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx25658z1, dataa=>v(1), datab=>f(0), datac=>
      nx25658z2);
   ix41056z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx41056z1, dataa=>v(1), datab=>c(7), datac=>
      nx41056z2);
   ix40059z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx40059z1, dataa=>v(1), datab=>c(6), datac=>
      nx40059z2);
   ix39062z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx39062z1, dataa=>v(1), datab=>c(5), datac=>
      nx39062z2);
   ix38065z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx38065z1, dataa=>v(1), datab=>c(4), datac=>
      nx38065z2);
   ix37068z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx37068z1, dataa=>v(1), datab=>c(3), datac=>
      nx37068z2);
   ix36071z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx36071z1, dataa=>v(1), datab=>c(2), datac=>
      nx36071z2);
   ix35074z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx35074z1, dataa=>v(1), datab=>c(1), datac=>
      nx35074z2);
   ix34077z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>nx34077z1, dataa=>v(1), datab=>c(0), datac=>
      nx34077z2);
   ix11375z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>p_rtlcs6, dataa=>o_mode_1_EXMPLR643, datab=>
      nx15976z1);
   ix17322z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx17322z6, dataa=>x(3), datab=>x(2), datac=>
      nx17322z7, datad=>nx17322z8);
   ix17322z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx17322z3, dataa=>o_row_EXMPLR659(1), datab=>
      o_row_EXMPLR659(0), datac=>nx17322z4, datad=>nx17322z5);
   ix24302z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx24302z2, dataa=>v(4), datab=>v(3));
   ix46679z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx46679z2, dataa=>v(2), datab=>v(1));
   ix36266z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx36266z1, dataa=>v(4), datab=>sub2_10);
   ix36692z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"2020") 
       port map ( combout=>nx36692z2, dataa=>v(5), datab=>v(4), datac=>
      sub2_10);
   ix17322z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx17322z2, dataa=>nx17322z3, datab=>nx17322z6);
   ix60630z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>output_edge_22n5s1, dataa=>sub4_12, datab=>
      sub4_11, datac=>nx60630z1);
   ix17322z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx17322z7, dataa=>x(1), datab=>x(0));
   ix20813z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx20813z1, dataa=>nx20813z2, datab=>nx20813z3, 
      datac=>nx20813z4, datad=>nx20813z5);
   ix24302z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0302") 
       port map ( combout=>nx24302z1, dataa=>v(2), datab=>v(1), datac=>v(0), 
      datad=>nx24302z2);
   ix41056z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx41056z3, dataa=>v(3), datab=>v(2), datac=>v(1), 
      datad=>v(0));
   ix36692z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx36692z1, dataa=>v(5), datab=>v(4));
   ix35695z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>dir6_18n5ss1_2, dataa=>dir3_2, datab=>dir5(2), 
      datac=>sub2_10);
   ix38260z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>dir5_18n5ss1_2, dataa=>dir1_2, datab=>dir2_2, 
      datac=>sub2_10);
   ix20492z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2a2a") 
       port map ( combout=>nx20492z2, dataa=>i_valid, datab=>t(1), datac=>
      t(0));
   ix39522z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>t_15n2s1(0), dataa=>t(1), datab=>t(0));
   ix38525z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>t_15n2s1(1), dataa=>t(1), datab=>t(0));
   ix19087z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"4ccc") 
       port map ( combout=>addr_x(0), dataa=>i_valid, datab=>x(0), datac=>
      nx17322z3, datad=>nx17322z6);
   ix19087z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"4ccc") 
       port map ( combout=>addr_x(1), dataa=>i_valid, datab=>x(1), datac=>
      nx17322z3, datad=>nx17322z6);
   ix19087z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"4ccc") 
       port map ( combout=>addr_x(2), dataa=>i_valid, datab=>x(2), datac=>
      nx17322z3, datad=>nx17322z6);
   ix19087z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"4ccc") 
       port map ( combout=>addr_x(3), dataa=>i_valid, datab=>x(3), datac=>
      nx17322z3, datad=>nx17322z6);
   ix19087z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"4ccc") 
       port map ( combout=>addr_x(4), dataa=>i_valid, datab=>x(4), datac=>
      nx17322z3, datad=>nx17322z6);
   ix19087z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"4ccc") 
       port map ( combout=>addr_x(5), dataa=>i_valid, datab=>x(5), datac=>
      nx17322z3, datad=>nx17322z6);
   ix19087z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"4ccc") 
       port map ( combout=>addr_x(6), dataa=>i_valid, datab=>x(6), datac=>
      nx17322z3, datad=>nx17322z6);
   ix24222z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0008") 
       port map ( combout=>wren_m3, dataa=>i_valid, datab=>t(1), datac=>t(0), 
      datad=>nx17322z2);
   ix19087z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"0020") 
       port map ( combout=>wren_m2, dataa=>i_valid, datab=>t(1), datac=>t(0), 
      datad=>nx17322z2);
   ix13952z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"aa02") 
       port map ( combout=>wren_m1, dataa=>i_valid, datab=>t(1), datac=>t(0), 
      datad=>nx17322z2);
   ix63886z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8080") 
       port map ( combout=>o_dir(0), dataa=>o_edge_EXMPLR642(2), datab=>v(7), 
      datac=>dir7(0));
   ix62889z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8080") 
       port map ( combout=>o_dir(1), dataa=>o_edge_EXMPLR642(2), datab=>v(7), 
      datac=>dir7(1));
   ix61892z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8080") 
       port map ( combout=>o_dir(2), dataa=>o_edge_EXMPLR642(2), datab=>v(7), 
      datac=>dir7(2));
   ix26373z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5755") 
       port map ( combout=>nx26373z1, dataa=>nx26373z2, datab=>nx15976z1, 
      datac=>o_mode_1_EXMPLR643, datad=>p_nrst_int);
   ix19087z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2aaa") 
       port map ( combout=>addr_x(7), dataa=>x(7), datab=>i_valid, datac=>
      nx17322z6, datad=>nx17322z3);
end main_unfold_1777 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity top_kirsch is 
   port (
      nrst : IN std_logic ;
      clk : IN std_logic ;
      rxflex : IN std_logic ;
      txflex : OUT std_logic ;
      o_sevenseg : OUT std_logic_vector (15 DOWNTO 0) ;
      o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      o_nrst : OUT std_logic ;
      debug_key : IN std_logic_vector (3 DOWNTO 1) ;
      debug_switch : IN std_logic_vector (17 DOWNTO 0) ;
      debug_led_red : OUT std_logic_vector (16 DOWNTO 0) ;
      debug_led_grn : OUT std_logic_vector (5 DOWNTO 0) ;
      debug_sevenseg_0 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_sevenseg_1 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_sevenseg_2 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_sevenseg_3 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_sevenseg_4 : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_sevenseg_5 : OUT std_logic_vector (7 DOWNTO 0)) ;
end top_kirsch ;

architecture main of top_kirsch is 
   component uw_uart
      port (
         clk : IN std_logic ;
         rst : IN std_logic ;
         kirschout : IN std_logic ;
         kirschdir : IN std_logic_vector (2 DOWNTO 0) ;
         o_valid : IN std_logic ;
         i_mode : IN std_logic_vector (1 DOWNTO 0) ;
         datain : OUT std_logic_vector (7 DOWNTO 0) ;
         o_pixavail : OUT std_logic ;
         rxflex : IN std_logic ;
         txflex : OUT std_logic ;
         p_rtlcs6 : IN std_logic ;
         p_Tx_Reg_14n6ss1_0 : OUT std_logic ;
         p_NOT_rtlcn2 : OUT std_logic ;
         p_o_mode_dup0_1 : IN std_logic ;
         p_o_mode_dup0_0 : IN std_logic ;
         p_nrst_int : IN std_logic ;
         px34 : IN std_logic) ;
   end component ;
   component kirsch
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
         debug_num_5 : OUT std_logic_vector (3 DOWNTO 0) ;
         p_rtlcs6 : OUT std_logic ;
         p_nrst_int : IN std_logic ;
         px34 : OUT std_logic) ;
   end component ;
   signal nrst_EXMPLR675, clk_EXMPLR676, rxflex_EXMPLR677: std_logic ;
   
   signal o_mode_dup0: std_logic_vector (1 DOWNTO 0) ;
   
   signal pixavail: std_logic ;
   
   signal pixel: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_valid, kirschout: std_logic ;
   
   signal dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal rowcount: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx35935z1, nrst_int, clk_int, rxflex_int, txflex_EXMPLR678, 
      o_sevenseg_15_EXMPLR679: std_logic ;
   
   signal o_sevenseg_EXMPLR769: std_logic_vector (14 DOWNTO 0) ;
   
   signal o_mode_EXMPLR770: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_nrst_EXMPLR697: std_logic ;
   
   signal debug_led_red_EXMPLR771: std_logic_vector (16 DOWNTO 0) ;
   
   signal debug_led_grn_EXMPLR772: std_logic_vector (5 DOWNTO 0) ;
   
   signal debug_sevenseg_0_EXMPLR773: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_sevenseg_1_EXMPLR774: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_sevenseg_2_EXMPLR775: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_sevenseg_3_EXMPLR776: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_sevenseg_4_EXMPLR777: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_sevenseg_5_EXMPLR778: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_nrst_dup0: std_logic ;
   
   signal debug_led_red_dup0: std_logic_vector (16 DOWNTO 16) ;
   
   signal o_sevenseg_dup0_7, nx59584z1, nx60581z1, nx61578z1, nx63572z1, 
      nx25683z1, nx26680z1, nx27677z1, nx29671z1, nx57590z1, nx58587z1, 
      nx62575z1, nx30z1, nx1027z1, nx28674z1, Tx_Reg_14n6ss1_0_dup_4, 
      NOT_rtlcn2_dup_5, nx41851z1, nx42848z1, nx43845z1, nx44842z1, 
      nx45839z1, nx46836z1, nx47833z1, nx49827z1, nx50824z1, nx62540z1, 
      nx63537z1, nx64534z1, nx65531z1, nx992z1, nx21351z1, nx21351z2, 
      nx35935z2: std_logic ;
   
   signal DANGLING : std_logic_vector (71 downto 0 );

begin
   nrst_EXMPLR675 <= nrst ;
   clk_EXMPLR676 <= clk ;
   rxflex_EXMPLR677 <= rxflex ;
   txflex <= txflex_EXMPLR678 ;
   o_sevenseg(15) <= o_sevenseg_15_EXMPLR679 ;
   o_sevenseg(14) <= o_sevenseg_EXMPLR769(14) ;
   o_sevenseg(13) <= o_sevenseg_EXMPLR769(13) ;
   o_sevenseg(12) <= o_sevenseg_EXMPLR769(12) ;
   o_sevenseg(11) <= o_sevenseg_EXMPLR769(11) ;
   o_sevenseg(10) <= o_sevenseg_EXMPLR769(10) ;
   o_sevenseg(9) <= o_sevenseg_EXMPLR769(9) ;
   o_sevenseg(8) <= o_sevenseg_EXMPLR769(8) ;
   o_sevenseg(7) <= o_sevenseg_EXMPLR769(7) ;
   o_sevenseg(6) <= o_sevenseg_EXMPLR769(6) ;
   o_sevenseg(5) <= o_sevenseg_EXMPLR769(5) ;
   o_sevenseg(4) <= o_sevenseg_EXMPLR769(4) ;
   o_sevenseg(3) <= o_sevenseg_EXMPLR769(3) ;
   o_sevenseg(2) <= o_sevenseg_EXMPLR769(2) ;
   o_sevenseg(1) <= o_sevenseg_EXMPLR769(1) ;
   o_sevenseg(0) <= o_sevenseg_EXMPLR769(0) ;
   o_mode(1) <= o_mode_EXMPLR770(1) ;
   o_mode(0) <= o_mode_EXMPLR770(0) ;
   o_nrst <= o_nrst_EXMPLR697 ;
   debug_led_red(16) <= debug_led_red_EXMPLR771(16) ;
   debug_led_red(15) <= debug_led_red_EXMPLR771(15) ;
   debug_led_red(14) <= debug_led_red_EXMPLR771(14) ;
   debug_led_red(13) <= debug_led_red_EXMPLR771(13) ;
   debug_led_red(12) <= debug_led_red_EXMPLR771(12) ;
   debug_led_red(11) <= debug_led_red_EXMPLR771(11) ;
   debug_led_red(10) <= debug_led_red_EXMPLR771(10) ;
   debug_led_red(9) <= debug_led_red_EXMPLR771(9) ;
   debug_led_red(8) <= debug_led_red_EXMPLR771(8) ;
   debug_led_red(7) <= debug_led_red_EXMPLR771(7) ;
   debug_led_red(6) <= debug_led_red_EXMPLR771(6) ;
   debug_led_red(5) <= debug_led_red_EXMPLR771(5) ;
   debug_led_red(4) <= debug_led_red_EXMPLR771(4) ;
   debug_led_red(3) <= debug_led_red_EXMPLR771(3) ;
   debug_led_red(2) <= debug_led_red_EXMPLR771(2) ;
   debug_led_red(1) <= debug_led_red_EXMPLR771(1) ;
   debug_led_red(0) <= debug_led_red_EXMPLR771(0) ;
   debug_led_grn(5) <= debug_led_grn_EXMPLR772(5) ;
   debug_led_grn(4) <= debug_led_grn_EXMPLR772(4) ;
   debug_led_grn(3) <= debug_led_grn_EXMPLR772(3) ;
   debug_led_grn(2) <= debug_led_grn_EXMPLR772(2) ;
   debug_led_grn(1) <= debug_led_grn_EXMPLR772(1) ;
   debug_led_grn(0) <= debug_led_grn_EXMPLR772(0) ;
   debug_sevenseg_0(7) <= debug_sevenseg_0_EXMPLR773(7) ;
   debug_sevenseg_0(6) <= debug_sevenseg_0_EXMPLR773(6) ;
   debug_sevenseg_0(5) <= debug_sevenseg_0_EXMPLR773(5) ;
   debug_sevenseg_0(4) <= debug_sevenseg_0_EXMPLR773(4) ;
   debug_sevenseg_0(3) <= debug_sevenseg_0_EXMPLR773(3) ;
   debug_sevenseg_0(2) <= debug_sevenseg_0_EXMPLR773(2) ;
   debug_sevenseg_0(1) <= debug_sevenseg_0_EXMPLR773(1) ;
   debug_sevenseg_0(0) <= debug_sevenseg_0_EXMPLR773(0) ;
   debug_sevenseg_1(7) <= debug_sevenseg_1_EXMPLR774(7) ;
   debug_sevenseg_1(6) <= debug_sevenseg_1_EXMPLR774(6) ;
   debug_sevenseg_1(5) <= debug_sevenseg_1_EXMPLR774(5) ;
   debug_sevenseg_1(4) <= debug_sevenseg_1_EXMPLR774(4) ;
   debug_sevenseg_1(3) <= debug_sevenseg_1_EXMPLR774(3) ;
   debug_sevenseg_1(2) <= debug_sevenseg_1_EXMPLR774(2) ;
   debug_sevenseg_1(1) <= debug_sevenseg_1_EXMPLR774(1) ;
   debug_sevenseg_1(0) <= debug_sevenseg_1_EXMPLR774(0) ;
   debug_sevenseg_2(7) <= debug_sevenseg_2_EXMPLR775(7) ;
   debug_sevenseg_2(6) <= debug_sevenseg_2_EXMPLR775(6) ;
   debug_sevenseg_2(5) <= debug_sevenseg_2_EXMPLR775(5) ;
   debug_sevenseg_2(4) <= debug_sevenseg_2_EXMPLR775(4) ;
   debug_sevenseg_2(3) <= debug_sevenseg_2_EXMPLR775(3) ;
   debug_sevenseg_2(2) <= debug_sevenseg_2_EXMPLR775(2) ;
   debug_sevenseg_2(1) <= debug_sevenseg_2_EXMPLR775(1) ;
   debug_sevenseg_2(0) <= debug_sevenseg_2_EXMPLR775(0) ;
   debug_sevenseg_3(7) <= debug_sevenseg_3_EXMPLR776(7) ;
   debug_sevenseg_3(6) <= debug_sevenseg_3_EXMPLR776(6) ;
   debug_sevenseg_3(5) <= debug_sevenseg_3_EXMPLR776(5) ;
   debug_sevenseg_3(4) <= debug_sevenseg_3_EXMPLR776(4) ;
   debug_sevenseg_3(3) <= debug_sevenseg_3_EXMPLR776(3) ;
   debug_sevenseg_3(2) <= debug_sevenseg_3_EXMPLR776(2) ;
   debug_sevenseg_3(1) <= debug_sevenseg_3_EXMPLR776(1) ;
   debug_sevenseg_3(0) <= debug_sevenseg_3_EXMPLR776(0) ;
   debug_sevenseg_4(7) <= debug_sevenseg_4_EXMPLR777(7) ;
   debug_sevenseg_4(6) <= debug_sevenseg_4_EXMPLR777(6) ;
   debug_sevenseg_4(5) <= debug_sevenseg_4_EXMPLR777(5) ;
   debug_sevenseg_4(4) <= debug_sevenseg_4_EXMPLR777(4) ;
   debug_sevenseg_4(3) <= debug_sevenseg_4_EXMPLR777(3) ;
   debug_sevenseg_4(2) <= debug_sevenseg_4_EXMPLR777(2) ;
   debug_sevenseg_4(1) <= debug_sevenseg_4_EXMPLR777(1) ;
   debug_sevenseg_4(0) <= debug_sevenseg_4_EXMPLR777(0) ;
   debug_sevenseg_5(7) <= debug_sevenseg_5_EXMPLR778(7) ;
   debug_sevenseg_5(6) <= debug_sevenseg_5_EXMPLR778(6) ;
   debug_sevenseg_5(5) <= debug_sevenseg_5_EXMPLR778(5) ;
   debug_sevenseg_5(4) <= debug_sevenseg_5_EXMPLR778(4) ;
   debug_sevenseg_5(3) <= debug_sevenseg_5_EXMPLR778(3) ;
   debug_sevenseg_5(2) <= debug_sevenseg_5_EXMPLR778(2) ;
   debug_sevenseg_5(1) <= debug_sevenseg_5_EXMPLR778(1) ;
   debug_sevenseg_5(0) <= debug_sevenseg_5_EXMPLR778(0) ;
   u_uw_uart : uw_uart port map ( clk=>clk_int, rst=>o_nrst_dup0, kirschout
      =>kirschout, kirschdir(2)=>dir(2), kirschdir(1)=>dir(1), kirschdir(0)
      =>dir(0), o_valid=>o_valid, i_mode(1)=>DANGLING(0), i_mode(0)=>
      DANGLING(1), datain(7)=>pixel(7), datain(6)=>pixel(6), datain(5)=>
      pixel(5), datain(4)=>pixel(4), datain(3)=>pixel(3), datain(2)=>
      pixel(2), datain(1)=>pixel(1), datain(0)=>pixel(0), o_pixavail=>
      pixavail, rxflex=>rxflex_int, txflex=>DANGLING(2), p_rtlcs6=>nx35935z1, 
      p_Tx_Reg_14n6ss1_0=>Tx_Reg_14n6ss1_0_dup_4, p_NOT_rtlcn2=>
      NOT_rtlcn2_dup_5, p_o_mode_dup0_1=>o_mode_dup0(1), p_o_mode_dup0_0=>
      o_mode_dup0(0), p_nrst_int=>nrst_int, px34=>nx35935z2);
   u_kirsch : kirsch port map ( i_clock=>clk_int, i_reset=>o_nrst_dup0, 
      i_valid=>pixavail, i_pixel(7)=>pixel(7), i_pixel(6)=>pixel(6), 
      i_pixel(5)=>pixel(5), i_pixel(4)=>pixel(4), i_pixel(3)=>pixel(3), 
      i_pixel(2)=>pixel(2), i_pixel(1)=>pixel(1), i_pixel(0)=>pixel(0), 
      o_valid=>o_valid, o_edge=>kirschout, o_dir(2)=>dir(2), o_dir(1)=>
      dir(1), o_dir(0)=>dir(0), o_mode(1)=>o_mode_dup0(1), o_mode(0)=>
      o_mode_dup0(0), o_row(7)=>rowcount(7), o_row(6)=>rowcount(6), o_row(5)
      =>rowcount(5), o_row(4)=>rowcount(4), o_row(3)=>rowcount(3), o_row(2)
      =>rowcount(2), o_row(1)=>rowcount(1), o_row(0)=>rowcount(0), 
      debug_key(3)=>DANGLING(3), debug_key(2)=>DANGLING(4), debug_key(1)=>
      DANGLING(5), debug_switch(17)=>DANGLING(6), debug_switch(16)=>DANGLING
      (7), debug_switch(15)=>DANGLING(8), debug_switch(14)=>DANGLING(9), 
      debug_switch(13)=>DANGLING(10), debug_switch(12)=>DANGLING(11), 
      debug_switch(11)=>DANGLING(12), debug_switch(10)=>DANGLING(13), 
      debug_switch(9)=>DANGLING(14), debug_switch(8)=>DANGLING(15), 
      debug_switch(7)=>DANGLING(16), debug_switch(6)=>DANGLING(17), 
      debug_switch(5)=>DANGLING(18), debug_switch(4)=>DANGLING(19), 
      debug_switch(3)=>DANGLING(20), debug_switch(2)=>DANGLING(21), 
      debug_switch(1)=>DANGLING(22), debug_switch(0)=>DANGLING(23), 
      debug_led_red(17)=>DANGLING(24), debug_led_red(16)=>DANGLING(25), 
      debug_led_red(15)=>DANGLING(26), debug_led_red(14)=>DANGLING(27), 
      debug_led_red(13)=>DANGLING(28), debug_led_red(12)=>DANGLING(29), 
      debug_led_red(11)=>DANGLING(30), debug_led_red(10)=>DANGLING(31), 
      debug_led_red(9)=>DANGLING(32), debug_led_red(8)=>DANGLING(33), 
      debug_led_red(7)=>DANGLING(34), debug_led_red(6)=>DANGLING(35), 
      debug_led_red(5)=>DANGLING(36), debug_led_red(4)=>DANGLING(37), 
      debug_led_red(3)=>DANGLING(38), debug_led_red(2)=>DANGLING(39), 
      debug_led_red(1)=>DANGLING(40), debug_led_red(0)=>DANGLING(41), 
      debug_led_grn(5)=>DANGLING(42), debug_led_grn(4)=>DANGLING(43), 
      debug_led_grn(3)=>DANGLING(44), debug_led_grn(2)=>DANGLING(45), 
      debug_led_grn(1)=>DANGLING(46), debug_led_grn(0)=>DANGLING(47), 
      debug_num_0(3)=>DANGLING(48), debug_num_0(2)=>DANGLING(49), 
      debug_num_0(1)=>DANGLING(50), debug_num_0(0)=>DANGLING(51), 
      debug_num_1(3)=>DANGLING(52), debug_num_1(2)=>DANGLING(53), 
      debug_num_1(1)=>DANGLING(54), debug_num_1(0)=>DANGLING(55), 
      debug_num_2(3)=>DANGLING(56), debug_num_2(2)=>DANGLING(57), 
      debug_num_2(1)=>DANGLING(58), debug_num_2(0)=>DANGLING(59), 
      debug_num_3(3)=>DANGLING(60), debug_num_3(2)=>DANGLING(61), 
      debug_num_3(1)=>DANGLING(62), debug_num_3(0)=>DANGLING(63), 
      debug_num_4(3)=>DANGLING(64), debug_num_4(2)=>DANGLING(65), 
      debug_num_4(1)=>DANGLING(66), debug_num_4(0)=>DANGLING(67), 
      debug_num_5(3)=>DANGLING(68), debug_num_5(2)=>DANGLING(69), 
      debug_num_5(1)=>DANGLING(70), debug_num_5(0)=>DANGLING(71), p_rtlcs6=>
      nx35935z1, p_nrst_int=>nrst_int, px34=>nx35935z2);
   o_nrst_dup0 <= NOT nrst_int;
   debug_led_red_dup0(16) <= '0';
   o_sevenseg_dup0_7 <= '1';
   nx21351z1 <= NOT nx21351z2;
   rxflex_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>rxflex_int, padio=>rxflex_EXMPLR677);
   reg_out_txflex_obuf : cycloneii_lcell_ff port map ( regout=>nx21351z2, 
      datain=>Tx_Reg_14n6ss1_0_dup_4, clk=>clk_int, ena=>NOT_rtlcn2_dup_5, 
      aclr=>o_nrst_dup0);
   reg_out_o_sevenseg_obuf_9 : cycloneii_lcell_ff port map ( regout=>
      nx50824z1, datain=>nx1027z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_8 : cycloneii_lcell_ff port map ( regout=>
      nx49827z1, datain=>nx30z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_6 : cycloneii_lcell_ff port map ( regout=>
      nx47833z1, datain=>nx63572z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_5 : cycloneii_lcell_ff port map ( regout=>
      nx46836z1, datain=>nx62575z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_4 : cycloneii_lcell_ff port map ( regout=>
      nx45839z1, datain=>nx61578z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_3 : cycloneii_lcell_ff port map ( regout=>
      nx44842z1, datain=>nx60581z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_2 : cycloneii_lcell_ff port map ( regout=>
      nx43845z1, datain=>nx59584z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_14 : cycloneii_lcell_ff port map ( regout=>
      nx992z1, datain=>nx29671z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_13 : cycloneii_lcell_ff port map ( regout=>
      nx65531z1, datain=>nx28674z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_12 : cycloneii_lcell_ff port map ( regout=>
      nx64534z1, datain=>nx27677z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_11 : cycloneii_lcell_ff port map ( regout=>
      nx63537z1, datain=>nx26680z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_10 : cycloneii_lcell_ff port map ( regout=>
      nx62540z1, datain=>nx25683z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_1 : cycloneii_lcell_ff port map ( regout=>
      nx42848z1, datain=>nx58587z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_0 : cycloneii_lcell_ff port map ( regout=>
      nx41851z1, datain=>nx57590z1, clk=>clk_int);
   o_sevenseg_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR769(7), datain=>o_sevenseg_dup0_7
   );
   o_sevenseg_obuf_15 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_15_EXMPLR679, datain=>o_sevenseg_dup0_7
   );
   o_nrst_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_nrst_EXMPLR697, datain=>o_nrst_dup0);
   o_mode_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR770(1), datain=>o_mode_dup0(1));
   o_mode_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR770(0), datain=>o_mode_dup0(0));
   nrst_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>nrst_int, padio=>nrst_EXMPLR675);
   ix21351z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>txflex_EXMPLR678, datain=>nx21351z1);
   ix992z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR769(14), datain=>nx992z1);
   ix65531z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR769(13), datain=>nx65531z1);
   ix64534z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR769(12), datain=>nx64534z1);
   ix63537z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR769(11), datain=>nx63537z1);
   ix62540z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR769(10), datain=>nx62540z1);
   ix50824z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR769(9), datain=>nx50824z1);
   ix49827z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR769(8), datain=>nx49827z1);
   ix47833z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR769(6), datain=>nx47833z1);
   ix46836z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR769(5), datain=>nx46836z1);
   ix45839z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR769(4), datain=>nx45839z1);
   ix44842z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR769(3), datain=>nx44842z1);
   ix43845z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR769(2), datain=>nx43845z1);
   ix42848z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR769(1), datain=>nx42848z1);
   ix41851z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR769(0), datain=>nx41851z1);
   debug_sevenseg_5_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR778(7), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_5_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR778(6), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_5_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR778(5), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_5_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR778(4), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_5_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR778(3), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_5_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR778(2), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_5_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR778(1), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_5_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR778(0), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_4_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_EXMPLR777(7), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_4_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_EXMPLR777(6), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_4_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_EXMPLR777(5), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_4_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_EXMPLR777(4), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_4_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_EXMPLR777(3), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_4_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_EXMPLR777(2), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_4_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_EXMPLR777(1), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_4_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_EXMPLR777(0), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_3_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_EXMPLR776(7), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_3_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_EXMPLR776(6), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_3_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_EXMPLR776(5), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_3_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_EXMPLR776(4), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_3_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_EXMPLR776(3), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_3_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_EXMPLR776(2), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_3_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_EXMPLR776(1), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_3_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_EXMPLR776(0), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_2_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_EXMPLR775(7), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_2_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_EXMPLR775(6), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_2_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_EXMPLR775(5), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_2_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_EXMPLR775(4), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_2_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_EXMPLR775(3), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_2_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_EXMPLR775(2), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_2_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_EXMPLR775(1), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_2_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_EXMPLR775(0), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_1_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_EXMPLR774(7), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_1_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_EXMPLR774(6), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_1_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_EXMPLR774(5), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_1_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_EXMPLR774(4), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_1_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_EXMPLR774(3), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_1_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_EXMPLR774(2), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_1_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_EXMPLR774(1), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_1_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_EXMPLR774(0), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_0_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_EXMPLR773(7), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_0_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_EXMPLR773(6), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_0_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_EXMPLR773(5), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_0_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_EXMPLR773(4), datain=>
      debug_led_red_dup0(16));
   debug_sevenseg_0_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_EXMPLR773(3), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_0_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_EXMPLR773(2), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_0_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_EXMPLR773(1), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_0_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_EXMPLR773(0), datain=>
      o_sevenseg_dup0_7);
   debug_led_red_obuf_9 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR771(9), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_8 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR771(8), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR771(7), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR771(6), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR771(5), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR771(4), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR771(3), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR771(2), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_16 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR771(16), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_15 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR771(15), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_14 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR771(14), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_13 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR771(13), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_12 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR771(12), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_11 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR771(11), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_10 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR771(10), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR771(1), datain=>
      debug_led_red_dup0(16));
   debug_led_red_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR771(0), datain=>
      debug_led_red_dup0(16));
   debug_led_grn_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR772(5), datain=>
      debug_led_red_dup0(16));
   debug_led_grn_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR772(4), datain=>
      debug_led_red_dup0(16));
   debug_led_grn_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR772(3), datain=>
      debug_led_red_dup0(16));
   debug_led_grn_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR772(2), datain=>
      debug_led_red_dup0(16));
   debug_led_grn_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR772(1), datain=>
      debug_led_red_dup0(16));
   debug_led_grn_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR772(0), datain=>
      debug_led_red_dup0(16));
   clk_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>clk_int, padio=>clk_EXMPLR676);
   ix28674z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a4c8") 
       port map ( combout=>nx28674z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix1027z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5910") 
       port map ( combout=>nx1027z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix30z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4109") 
       port map ( combout=>nx30z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix62575z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a4c8") 
       port map ( combout=>nx62575z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
   ix58587z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5910") 
       port map ( combout=>nx58587z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
   ix57590z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4109") 
       port map ( combout=>nx57590z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
   ix29671z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2904") 
       port map ( combout=>nx29671z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix27677z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8098") 
       port map ( combout=>nx27677z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix26680z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c324") 
       port map ( combout=>nx26680z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix25683z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5704") 
       port map ( combout=>nx25683z1, dataa=>rowcount(7), datab=>rowcount(6), 
      datac=>rowcount(5), datad=>rowcount(4));
   ix63572z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2904") 
       port map ( combout=>nx63572z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
   ix61578z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8098") 
       port map ( combout=>nx61578z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
   ix60581z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c324") 
       port map ( combout=>nx60581z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
   ix59584z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5704") 
       port map ( combout=>nx59584z1, dataa=>rowcount(3), datab=>rowcount(2), 
      datac=>rowcount(1), datad=>rowcount(0));
end main ;

