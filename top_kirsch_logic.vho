
-- 
-- Definition of  top_kirsch
-- 
--      Thu Mar 28 16:41:31 2013
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
      p_nrst_int_dup_8 : IN std_logic) ;
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
   signal RxErr_EXMPLR391, RxRDY_EXMPLR392: std_logic ;
   
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
   RxErr <= RxErr_EXMPLR391 ;
   RxRDY <= RxRDY_EXMPLR392 ;
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
   reg_RxRDYi : cycloneii_lcell_ff port map ( regout=>RxRDY_EXMPLR392, 
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
   reg_RxErr : cycloneii_lcell_ff port map ( regout=>RxErr_EXMPLR391, datain
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
      =>p_nrst_int_dup_8);
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
       port map ( combout=>nx15376z1, dataa=>RxErr_EXMPLR391, datab=>
      RxRDY_EXMPLR392, datac=>RxFSM_6);
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
       port map ( combout=>NOT_Rx, dataa=>p_rxflex, datab=>p_nrst_int_dup_8
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
      p_Tx_Reg_14n6ss1_0 : OUT std_logic ;
      p_NOT_rtlcn2 : OUT std_logic ;
      p_nrst_int : IN std_logic ;
      px705 : IN std_logic) ;
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
         p_nrst_int_dup_8 : IN std_logic) ;
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
   signal o_pixavail_EXMPLR404: std_logic_vector (7 DOWNTO 7) ;
   
   signal sdin: std_logic_vector (7 DOWNTO 0) ;
   
   signal rxerr, rxrdy, sdout_7, sdout_5, sdout_3, sdout_2, sdout_1, sdout_0
   : std_logic ;
   
   signal rdata: std_logic_vector (7 DOWNTO 0) ;
   
   signal state, dsend, mdata_7, mdata_5, mdata_3, mdata_2, mdata_1, mdata_0, 
      ack: std_logic ;
   
   signal waitcount: std_logic_vector (15 DOWNTO 0) ;
   
   signal ld_sdout, rawrx, mdata_7n5ss1_6, mdata_7n5ss1_4, nx40736z2, 
      nx46385z2, nx33354z2, nx40736z3, nx38868z1, nx46385z1, nx39480z1, 
      not_o_valid, nx33354z1, nx58116z1, nx38742z1, nx18433z1, nx39480z2, 
      nx39480z6, nx39480z3, nx39480z4, nx40736z4, nx39480z5, nx39480z7, 
      nx36748z1, nx35751z1, nx34754z1, nx33757z1: std_logic ;
   
   signal DANGLING : std_logic_vector (25 downto 0 );

begin
   o_pixavail <= o_pixavail_EXMPLR404(7) ;
   i_uarts : UARTS port map ( CLK=>clk, RST=>rst, Din(7)=>sdout_7, Din(6)=>
      DANGLING(0), Din(5)=>sdout_5, Din(4)=>DANGLING(1), Din(3)=>sdout_3, 
      Din(2)=>sdout_2, Din(1)=>sdout_1, Din(0)=>sdout_0, LD=>ld_sdout, Rx=>
      rawrx, Baud=>DANGLING(2), Dout(7)=>sdin(7), Dout(6)=>sdin(6), Dout(5)
      =>sdin(5), Dout(4)=>sdin(4), Dout(3)=>sdin(3), Dout(2)=>sdin(2), 
      Dout(1)=>sdin(1), Dout(0)=>sdin(0), Tx=>DANGLING(3), TxBusy=>DANGLING(
      4), RxErr=>rxerr, RxRDY=>rxrdy, p_Tx_Reg_14n6ss1_0=>p_Tx_Reg_14n6ss1_0, 
      p_NOT_rtlcn2=>p_NOT_rtlcn2, p_rxflex=>rxflex, p_nrst_int_dup_8=>
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
      mdata_7n5ss1_6, clk=>clk, ena=>nx40736z3);
   reg_mdata_5 : cycloneii_lcell_ff port map ( regout=>mdata_5, datain=>
      mdata_7n5ss1_4, clk=>clk, ena=>nx40736z3);
   nx36748z1 <= '1';
   reg_mdata_3 : cycloneii_lcell_ff port map ( regout=>mdata_3, datain=>
      kirschdir(2), sdata=>nx36748z1, clk=>clk, ena=>nx40736z3, sclr=>
      nx38742z1, sload=>not_o_valid);
   nx35751z1 <= '1';
   reg_mdata_2 : cycloneii_lcell_ff port map ( regout=>mdata_2, datain=>
      kirschdir(1), sdata=>nx35751z1, clk=>clk, ena=>nx40736z3, sclr=>
      nx38742z1, sload=>not_o_valid);
   nx34754z1 <= '1';
   reg_mdata_1 : cycloneii_lcell_ff port map ( regout=>mdata_1, datain=>
      kirschdir(0), sdata=>nx34754z1, clk=>clk, ena=>nx40736z3, sclr=>
      nx38742z1, sload=>not_o_valid);
   nx33757z1 <= '1';
   reg_mdata_0 : cycloneii_lcell_ff port map ( regout=>mdata_0, datain=>
      kirschout, sdata=>nx33757z1, clk=>clk, ena=>nx40736z3, sclr=>nx38742z1, 
      sload=>not_o_valid);
   reg_ld_sdout : cycloneii_lcell_ff port map ( regout=>ld_sdout, datain=>
      nx18433z1, clk=>clk, aclr=>rst);
   reg_dsend : cycloneii_lcell_ff port map ( regout=>dsend, datain=>
      nx46385z1, clk=>clk, sclr=>rst);
   reg_charavail : cycloneii_lcell_ff port map ( regout=>
      o_pixavail_EXMPLR404(7), datain=>nx58116z1, clk=>clk, aclr=>rst);
   reg_ack : cycloneii_lcell_ff port map ( regout=>ack, datain=>nx39480z1, 
      clk=>clk, sclr=>rst);
   ix33354z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"efef") 
       port map ( combout=>nx33354z1, dataa=>ack, datab=>
      o_pixavail_EXMPLR404(7), datac=>p_nrst_int);
   ix39480z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>nx39480z7, dataa=>waitcount(11), datab=>
      waitcount(10));
   ix39480z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"1000") 
       port map ( combout=>nx39480z5, dataa=>waitcount(9), datab=>
      waitcount(8), datac=>nx39480z6, datad=>nx39480z7);
   ix40736z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"fe04") 
       port map ( combout=>nx40736z4, dataa=>o_pixavail_EXMPLR404(7), datab
      =>rxerr, datac=>ack, datad=>nx39480z2);
   ix39480z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"0004") 
       port map ( combout=>nx39480z4, dataa=>waitcount(3), datab=>
      waitcount(2), datac=>waitcount(1), datad=>waitcount(0));
   ix39480z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0040") 
       port map ( combout=>nx39480z3, dataa=>waitcount(7), datab=>
      waitcount(6), datac=>waitcount(5), datad=>waitcount(4));
   ix39480z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx39480z6, dataa=>waitcount(15), datab=>
      waitcount(14), datac=>waitcount(13), datad=>waitcount(12));
   ix39480z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eaaa") 
       port map ( combout=>nx39480z2, dataa=>o_valid, datab=>nx39480z3, 
      datac=>nx39480z4, datad=>nx39480z5);
   ix18433z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5454") 
       port map ( combout=>nx18433z1, dataa=>state, datab=>dsend, datac=>
      ld_sdout);
   ix38742z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"111f") 
       port map ( combout=>nx38742z1, dataa=>i_mode(1), datab=>px705, datac
      =>o_pixavail_EXMPLR404(7), datad=>ack);
   ix40736z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"ab00") 
       port map ( combout=>nx40736z3, dataa=>nx40736z4, datab=>px705, datac
      =>i_mode(1), datad=>p_nrst_int);
   ix58116z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx58116z1, dataa=>o_pixavail_EXMPLR404(7), datab
      =>rxrdy);
   ix39480z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0e0e") 
       port map ( combout=>nx39480z1, dataa=>o_pixavail_EXMPLR404(7), datab
      =>ack, datac=>nx39480z2);
   ix46385z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fef2") 
       port map ( combout=>nx46385z1, dataa=>rxerr, datab=>nx40736z2, datac
      =>nx46385z2, datad=>nx39480z2);
   ix38868z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx38868z1, dataa=>state, datab=>dsend);
   ix46385z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>nx46385z2, dataa=>i_mode(1), datab=>px705);
   ix40736z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx40736z2, dataa=>o_pixavail_EXMPLR404(7), datab
      =>ack);
   ix38742z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"dddd") 
       port map ( combout=>mdata_7n5ss1_4, dataa=>o_valid, datab=>nx38742z1
   );
   ix40736z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"54fc") 
       port map ( combout=>mdata_7n5ss1_6, dataa=>o_valid, datab=>i_mode(1), 
      datac=>px705, datad=>nx40736z2);
   ix40426z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(0), dataa=>o_pixavail_EXMPLR404(7), datab
      =>rdata(0));
   ix41423z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(1), dataa=>o_pixavail_EXMPLR404(7), datab
      =>rdata(1));
   ix42420z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(2), dataa=>o_pixavail_EXMPLR404(7), datab
      =>rdata(2));
   ix43417z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(3), dataa=>o_pixavail_EXMPLR404(7), datab
      =>rdata(3));
   ix44414z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(4), dataa=>o_pixavail_EXMPLR404(7), datab
      =>rdata(4));
   ix45411z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(5), dataa=>o_pixavail_EXMPLR404(7), datab
      =>rdata(5));
   ix46408z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(6), dataa=>o_pixavail_EXMPLR404(7), datab
      =>rdata(6));
   ix33354z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>nx33354z2, dataa=>nx39480z2, datab=>p_nrst_int);
   ix47405z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(7), dataa=>o_pixavail_EXMPLR404(7), datab
      =>rdata(7));
   ix15671z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>rawrx, dataa=>rxflex, datab=>p_nrst_int);
end main ;

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

entity sub_8_1 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_8_1 ;

architecture IMPLEMENTATION of sub_8_1 is 
   signal nx23445z22, nx23445z19, nx23445z16, nx23445z13, nx23445z10, 
      nx23445z7, nx23445z4, nx_sub_8_1_vcc_net: std_logic ;

begin
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d400",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, dataa=>b(7), datab=>a(7), datad=>
      nx_sub_8_1_vcc_net, cin=>nx23445z4);
   nx_sub_8_1_vcc_net <= '1';
   ix23445z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z4, dataa=>b(6), datab=>a(6), datad=>
      nx_sub_8_1_vcc_net, cin=>nx23445z7);
   ix23445z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z7, dataa=>b(5), datab=>a(5), datad=>
      nx_sub_8_1_vcc_net, cin=>nx23445z10);
   ix23445z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z10, dataa=>b(4), datab=>a(4), datad=>
      nx_sub_8_1_vcc_net, cin=>nx23445z13);
   ix23445z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z13, dataa=>b(3), datab=>a(3), datad=>
      nx_sub_8_1_vcc_net, cin=>nx23445z16);
   ix23445z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z16, dataa=>b(2), datab=>a(2), datad=>
      nx_sub_8_1_vcc_net, cin=>nx23445z19);
   ix23445z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z19, dataa=>b(1), datab=>a(1), datad=>
      nx_sub_8_1_vcc_net, cin=>nx23445z22);
   ix23445z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"00bb") 
       port map ( cout=>nx23445z22, dataa=>a(0), datab=>b(0), datad=>
      nx_sub_8_1_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity sub_8_2 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_8_2 ;

architecture IMPLEMENTATION of sub_8_2 is 
   signal nx23445z22, nx23445z19, nx23445z16, nx23445z13, nx23445z10, 
      nx23445z7, nx23445z4, nx_sub_8_2_vcc_net: std_logic ;

begin
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d400",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, dataa=>b(7), datab=>a(7), datad=>
      nx_sub_8_2_vcc_net, cin=>nx23445z4);
   nx_sub_8_2_vcc_net <= '1';
   ix23445z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z4, dataa=>b(6), datab=>a(6), datad=>
      nx_sub_8_2_vcc_net, cin=>nx23445z7);
   ix23445z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z7, dataa=>b(5), datab=>a(5), datad=>
      nx_sub_8_2_vcc_net, cin=>nx23445z10);
   ix23445z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z10, dataa=>b(4), datab=>a(4), datad=>
      nx_sub_8_2_vcc_net, cin=>nx23445z13);
   ix23445z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z13, dataa=>b(3), datab=>a(3), datad=>
      nx_sub_8_2_vcc_net, cin=>nx23445z16);
   ix23445z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z16, dataa=>b(2), datab=>a(2), datad=>
      nx_sub_8_2_vcc_net, cin=>nx23445z19);
   ix23445z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z19, dataa=>b(1), datab=>a(1), datad=>
      nx_sub_8_2_vcc_net, cin=>nx23445z22);
   ix23445z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"00bb") 
       port map ( cout=>nx23445z22, dataa=>a(0), datab=>b(0), datad=>
      nx_sub_8_2_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_13_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (12 DOWNTO 0) ;
      b : IN std_logic_vector (12 DOWNTO 0) ;
      d : OUT std_logic_vector (12 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_13_0 ;

architecture IMPLEMENTATION of add_13_0 is 
   signal nx64792z33, nx64792z30, nx64792z27, nx64792z24, nx64792z21, 
      nx64792z18, nx64792z15, nx64792z12, nx64792z9, nx64792z7, nx64792z5, 
      nx64792z3, nx_add_13_0_vcc_net: std_logic ;

begin
   ix64792z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), dataa=>a(12), datad=>nx_add_13_0_vcc_net, 
      cin=>nx64792z3);
   nx_add_13_0_vcc_net <= '1';
   ix64792z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx64792z3, dataa=>a(11), datad=>
      nx_add_13_0_vcc_net, cin=>nx64792z5);
   ix64792z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx64792z5, dataa=>a(10), datad=>
      nx_add_13_0_vcc_net, cin=>nx64792z7);
   ix64792z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx64792z7, dataa=>a(9), datad=>
      nx_add_13_0_vcc_net, cin=>nx64792z9);
   ix64792z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx64792z9, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_13_0_vcc_net, cin=>nx64792z12);
   ix64792z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx64792z12, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_13_0_vcc_net, cin=>nx64792z15);
   ix64792z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx64792z15, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_13_0_vcc_net, cin=>nx64792z18);
   ix64792z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx64792z18, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_13_0_vcc_net, cin=>nx64792z21);
   ix64792z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx64792z21, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_13_0_vcc_net, cin=>nx64792z24);
   ix64792z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx64792z24, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_13_0_vcc_net, cin=>nx64792z27);
   ix64792z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx64792z27, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_13_0_vcc_net, cin=>nx64792z30);
   ix64792z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx64792z30, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_13_0_vcc_net, cin=>nx64792z33);
   ix64792z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx64792z33, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_13_0_vcc_net);
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

entity add_12_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (11 DOWNTO 0) ;
      b : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic_vector (11 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_12_0 ;

architecture IMPLEMENTATION of add_12_0 is 
   signal nx63795z24, nx63795z22, nx63795z20, nx63795z18, nx63795z16, 
      nx63795z14, nx63795z12, nx63795z10, nx63795z8, nx63795z6, nx63795z4, 
      nx_add_12_0_vcc_net: std_logic ;

begin
   ix63795z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), dataa=>b(11), datab=>a(11), datad=>
      nx_add_12_0_vcc_net, cin=>nx63795z4);
   nx_add_12_0_vcc_net <= '1';
   ix63795z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx63795z4, dataa=>a(11), datab=>
      a(10), datad=>nx_add_12_0_vcc_net, cin=>nx63795z6);
   ix63795z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx63795z6, dataa=>a(10), datab=>a(9), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z8);
   ix63795z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx63795z8, dataa=>a(9), datab=>a(8), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z10);
   ix63795z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx63795z10, dataa=>a(8), datab=>a(7), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z12);
   ix63795z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx63795z12, dataa=>a(7), datab=>a(6), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z14);
   ix63795z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx63795z14, dataa=>a(6), datab=>a(5), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z16);
   ix63795z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx63795z16, dataa=>a(5), datab=>a(4), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z18);
   ix63795z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx63795z18, dataa=>a(4), datab=>a(3), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z20);
   ix63795z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx63795z20, dataa=>a(3), datab=>a(2), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z22);
   ix63795z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx63795z22, dataa=>a(2), datab=>a(1), 
      datad=>nx_add_12_0_vcc_net, cin=>nx63795z24);
   ix63795z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx63795z24, dataa=>a(0), datab=>a(1), 
      datad=>nx_add_12_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity inc_8_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_8_0 ;

architecture IMPLEMENTATION of inc_8_0 is 
   signal nx44952z15, nx44952z13, nx44952z11, nx44952z9, nx44952z7, 
      nx44952z5, nx44952z3, nx_inc_8_0_vcc_net: std_logic ;

begin
   ix44952z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), dataa=>a(7), datad=>nx_inc_8_0_vcc_net, cin
      =>nx44952z3);
   nx_inc_8_0_vcc_net <= '1';
   ix44952z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx44952z3, dataa=>a(6), datad=>
      nx_inc_8_0_vcc_net, cin=>nx44952z5);
   ix44952z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx44952z5, dataa=>a(5), datad=>
      nx_inc_8_0_vcc_net, cin=>nx44952z7);
   ix44952z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx44952z7, dataa=>a(4), datad=>
      nx_inc_8_0_vcc_net, cin=>nx44952z9);
   ix44952z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx44952z9, dataa=>a(3), datad=>
      nx_inc_8_0_vcc_net, cin=>nx44952z11);
   ix44952z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx44952z11, dataa=>a(2), datad=>
      nx_inc_8_0_vcc_net, cin=>nx44952z13);
   ix44952z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx44952z13, dataa=>a(1), datad=>
      nx_inc_8_0_vcc_net, cin=>nx44952z15);
   ix44952z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>d(0), cout=>nx44952z15, dataa=>a(0), datad=>
      nx_inc_8_0_vcc_net);
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
   signal q_7_EXMPLR419, q_6_EXMPLR420, q_5_EXMPLR421, q_4_EXMPLR422, 
      q_3_EXMPLR423, q_2_EXMPLR424, q_1_EXMPLR425, q_0_EXMPLR426, nx51271z1, 
      nx58250z8, nx52268z1, nx58250z7, nx53265z1, nx58250z6, nx54262z1, 
      nx58250z5, nx55259z1, nx58250z4, nx56256z1, nx58250z3, nx57253z1, 
      nx58250z2, nx58250z1, nx_modgen_counter_8_0_vcc_net: std_logic ;

begin
   q(7) <= q_7_EXMPLR419 ;
   q(6) <= q_6_EXMPLR420 ;
   q(5) <= q_5_EXMPLR421 ;
   q(4) <= q_4_EXMPLR422 ;
   q(3) <= q_3_EXMPLR423 ;
   q(2) <= q_2_EXMPLR424 ;
   q(1) <= q_1_EXMPLR425 ;
   q(0) <= q_0_EXMPLR426 ;
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>q_7_EXMPLR419, datain=>
      nx58250z1, clk=>clock, ena=>cnt_en);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>q_6_EXMPLR420, datain=>
      nx57253z1, clk=>clock, ena=>cnt_en);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>q_5_EXMPLR421, datain=>
      nx56256z1, clk=>clock, ena=>cnt_en);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>q_4_EXMPLR422, datain=>
      nx55259z1, clk=>clock, ena=>cnt_en);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>q_3_EXMPLR423, datain=>
      nx54262z1, clk=>clock, ena=>cnt_en);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>q_2_EXMPLR424, datain=>
      nx53265z1, clk=>clock, ena=>cnt_en);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>q_1_EXMPLR425, datain=>
      nx52268z1, clk=>clock, ena=>cnt_en);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>q_0_EXMPLR426, datain=>
      nx51271z1, clk=>clock, ena=>cnt_en);
   ix58250z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx58250z6, dataa=>q_2_EXMPLR424, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z7);
   nx_modgen_counter_8_0_vcc_net <= '1';
   ix58250z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx58250z7, dataa=>q_1_EXMPLR425, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z8);
   ix58250z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, dataa=>q_7_EXMPLR419, datad=>
      nx_modgen_counter_8_0_vcc_net, cin=>nx58250z2);
   ix58250z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx58250z2, dataa=>q_6_EXMPLR420, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z3);
   ix58250z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx58250z3, dataa=>q_5_EXMPLR421, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z4);
   ix58250z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx58250z4, dataa=>q_4_EXMPLR422, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z5);
   ix58250z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx58250z5, dataa=>q_3_EXMPLR423, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z6);
   ix58250z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx58250z8, dataa=>q_0_EXMPLR426, 
      datad=>nx_modgen_counter_8_0_vcc_net);
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
       port map ( combout=>d(8), cout=>nx23445z2, dataa=>a(8), datad=>
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

entity add_8_1 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_8_1 ;

architecture IMPLEMENTATION of add_8_1 is 
   signal nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, 
      nx44952z7, nx44952z4, nx23445z2, nx_add_8_1_vcc_net: std_logic ;

begin
   ix44952z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx23445z2, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_8_1_vcc_net, cin=>nx44952z4);
   nx_add_8_1_vcc_net <= '1';
   ix44952z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx44952z4, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_8_1_vcc_net, cin=>nx44952z7);
   ix44952z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx44952z7, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_8_1_vcc_net, cin=>nx44952z10);
   ix44952z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx44952z10, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_8_1_vcc_net, cin=>nx44952z13);
   ix44952z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx44952z13, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_8_1_vcc_net, cin=>nx44952z16);
   ix44952z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx44952z16, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_8_1_vcc_net, cin=>nx44952z19);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_8_1_vcc_net, cin=>nx23445z2);
   ix44952z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx44952z19, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_8_1_vcc_net, cin=>nx44952z22);
   ix44952z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx44952z22, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_8_1_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_9_1 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9_1 ;

architecture IMPLEMENTATION of add_9_1 is 
   signal nx45949z24, nx45949z21, nx45949z18, nx45949z15, nx45949z12, 
      nx45949z9, nx45949z6, nx45949z3, nx_add_9_1_vcc_net: std_logic ;

begin
   ix45949z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), dataa=>a(8), datad=>nx_add_9_1_vcc_net, cin
      =>nx45949z3);
   nx_add_9_1_vcc_net <= '1';
   ix45949z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx45949z3, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z6);
   ix45949z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx45949z6, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z9);
   ix45949z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx45949z9, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z12);
   ix45949z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx45949z12, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z15);
   ix45949z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx45949z15, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z18);
   ix45949z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx45949z18, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z21);
   ix45949z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx45949z21, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_9_1_vcc_net, cin=>nx45949z24);
   ix45949z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx45949z24, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_9_1_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity sub_10_2 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (9 DOWNTO 0) ;
      b : IN std_logic_vector (9 DOWNTO 0) ;
      d : OUT std_logic_vector (9 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_10_2 ;

architecture IMPLEMENTATION of sub_10_2 is 
   signal nx23445z28, nx23445z25, nx23445z22, nx23445z19, nx23445z16, 
      nx23445z13, nx23445z10, nx23445z7, nx23445z4, nx_sub_10_2_vcc_net: 
   std_logic ;

begin
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d400",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, dataa=>b(9), datab=>a(9), datad=>
      nx_sub_10_2_vcc_net, cin=>nx23445z4);
   nx_sub_10_2_vcc_net <= '1';
   ix23445z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z4, dataa=>b(8), datab=>a(8), datad=>
      nx_sub_10_2_vcc_net, cin=>nx23445z7);
   ix23445z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z7, dataa=>b(7), datab=>a(7), datad=>
      nx_sub_10_2_vcc_net, cin=>nx23445z10);
   ix23445z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z10, dataa=>b(6), datab=>a(6), datad=>
      nx_sub_10_2_vcc_net, cin=>nx23445z13);
   ix23445z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z13, dataa=>b(5), datab=>a(5), datad=>
      nx_sub_10_2_vcc_net, cin=>nx23445z16);
   ix23445z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z16, dataa=>b(4), datab=>a(4), datad=>
      nx_sub_10_2_vcc_net, cin=>nx23445z19);
   ix23445z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z19, dataa=>b(3), datab=>a(3), datad=>
      nx_sub_10_2_vcc_net, cin=>nx23445z22);
   ix23445z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z22, dataa=>b(2), datab=>a(2), datad=>
      nx_sub_10_2_vcc_net, cin=>nx23445z25);
   ix23445z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z25, dataa=>b(1), datab=>a(1), datad=>
      nx_sub_10_2_vcc_net, cin=>nx23445z28);
   ix23445z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"00bb") 
       port map ( cout=>nx23445z28, dataa=>a(0), datab=>b(0), datad=>
      nx_sub_10_2_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_8_2 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_8_2 ;

architecture IMPLEMENTATION of add_8_2 is 
   signal nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, 
      nx44952z7, nx44952z4, nx_add_8_2_vcc_net: std_logic ;

begin
   ix44952z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9696",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), dataa=>b(7), datab=>a(7), datad=>
      nx_add_8_2_vcc_net, cin=>nx44952z4);
   nx_add_8_2_vcc_net <= '1';
   ix44952z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx44952z4, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_8_2_vcc_net, cin=>nx44952z7);
   ix44952z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx44952z7, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_8_2_vcc_net, cin=>nx44952z10);
   ix44952z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx44952z10, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_8_2_vcc_net, cin=>nx44952z13);
   ix44952z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx44952z13, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_8_2_vcc_net, cin=>nx44952z16);
   ix44952z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx44952z16, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_8_2_vcc_net, cin=>nx44952z19);
   ix44952z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx44952z19, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_8_2_vcc_net, cin=>nx44952z22);
   ix44952z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx44952z22, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_8_2_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_8_3 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_8_3 ;

architecture IMPLEMENTATION of add_8_3 is 
   signal nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, 
      nx44952z7, nx44952z4, nx23445z2, nx_add_8_3_vcc_net: std_logic ;

begin
   ix44952z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx23445z2, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_8_3_vcc_net, cin=>nx44952z4);
   nx_add_8_3_vcc_net <= '1';
   ix44952z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx44952z4, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_8_3_vcc_net, cin=>nx44952z7);
   ix44952z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx44952z7, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_8_3_vcc_net, cin=>nx44952z10);
   ix44952z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx44952z10, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_8_3_vcc_net, cin=>nx44952z13);
   ix44952z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx44952z13, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_8_3_vcc_net, cin=>nx44952z16);
   ix44952z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx44952z16, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_8_3_vcc_net, cin=>nx44952z19);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_8_3_vcc_net, cin=>nx23445z2);
   ix44952z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx44952z19, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_8_3_vcc_net, cin=>nx44952z22);
   ix44952z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx44952z22, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_8_3_vcc_net);
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
      p_r9_0 : IN std_logic) ;
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
       port map ( cout=>nx63795z11, dataa=>p_r9_0, datab=>b(0), datad=>
      nx_sub_12_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity kirsch_notri is 
   port (
      p_o_valid : OUT std_logic ;
      p_o_edge : OUT std_logic ;
      p_o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
      p_o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      p_i_reset : IN std_logic ;
      p_i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
      p_i_valid_rtlc_747_or_76 : IN std_logic_vector (7 DOWNTO 7) ;
      p_o_row : OUT std_logic_vector (7 DOWNTO 0) ;
      p_i_clock : IN std_logic ;
      p_row_count_1 : OUT std_logic ;
      px705 : OUT std_logic) ;
end kirsch_notri ;

architecture main_unfold_1777 of kirsch_notri is 
   component sub_8_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component sub_8_1
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component sub_8_2
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_13_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (12 DOWNTO 0) ;
         b : IN std_logic_vector (12 DOWNTO 0) ;
         d : OUT std_logic_vector (12 DOWNTO 0) ;
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
   component add_12_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component inc_8_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
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
   component add_8_1
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_9_1
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component sub_10_2
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_8_2
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_8_3
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component sub_12_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic ;
         p_r9_0 : IN std_logic) ;
   end component ;
   signal sub_9, sub_10, sub_11, sub_12: std_logic ;
   
   signal r9: std_logic_vector (12 DOWNTO 0) ;
   
   signal r8: std_logic_vector (9 DOWNTO 0) ;
   
   signal r8_dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal nx1448z3: std_logic ;
   
   signal r6_14n0r1: std_logic_vector (8 DOWNTO 0) ;
   
   signal r1_9n1s1: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx47743z2: std_logic ;
   
   signal r2_10n1s1: std_logic_vector (8 DOWNTO 0) ;
   
   signal r2_10n1s4: std_logic_vector (8 DOWNTO 0) ;
   
   signal r7_15n1s1: std_logic_vector (9 DOWNTO 0) ;
   
   signal r7_15n1s2: std_logic_vector (8 DOWNTO 0) ;
   
   signal rtlcn947: std_logic_vector (7 DOWNTO 0) ;
   
   signal v_6, v_4, row_count_2, row_count_3, row_count_4, row_count_5, 
      row_count_6, row_count_7: std_logic ;
   
   signal r9_17n0r1: std_logic_vector (12 DOWNTO 1) ;
   
   signal col_flop: std_logic_vector (7 DOWNTO 0) ;
   
   signal r5_dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal r4_dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal r2_dir_1, r2_dir_0, r2_dir_2: std_logic ;
   
   signal r7: std_logic_vector (9 DOWNTO 0) ;
   
   signal r6: std_logic_vector (8 DOWNTO 0) ;
   
   signal r1: std_logic_vector (7 DOWNTO 0) ;
   
   signal v_5, sub_7, sub_8, p_o_row_0_EXMPLR473, row_count_1, v_7, 
      nx15883z1: std_logic ;
   
   signal r5: std_logic_vector (9 DOWNTO 0) ;
   
   signal nx9374z1: std_logic ;
   
   signal r4: std_logic_vector (9 DOWNTO 0) ;
   
   signal r2: std_logic_vector (8 DOWNTO 0) ;
   
   signal r3_11n1s1: std_logic_vector (12 DOWNTO 0) ;
   
   signal r3: std_logic_vector (12 DOWNTO 0) ;
   
   signal r2_10n1s1f1: std_logic_vector (7 DOWNTO 0) ;
   
   signal r2_10n1s4f1: std_logic_vector (7 DOWNTO 0) ;
   
   signal f: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx20740z3: std_logic ;
   
   signal g: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx19070z2, nx20740z5, v_3: std_logic ;
   
   signal r1_9n1s1f2: std_logic_vector (7 DOWNTO 0) ;
   
   signal v_1, v_2: std_logic ;
   
   signal e: std_logic_vector (7 DOWNTO 0) ;
   
   signal col_i: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx30960z1, nx30960z2, nx30960z3, nx30960z4, nx30960z5, nx30960z6, 
      nx30960z7, nx30960z8, nx64436z1, nx33634z1, nx82z1, nx21064z1, 
      nx1448z1, nx60567z1, not_v_7, nx31323z1: std_logic ;
   
   signal r3_11n1s1f1: std_logic_vector (8 DOWNTO 0) ;
   
   signal PWR, nx20740z2, nx20067z1, nx47743z1, nx20740z1, nx64436z2, 
      nx60567z2, nx12508z1, nx60567z3, nx64436z3, nx1448z2, nx19070z1, 
      nx60567z5, nx60567z6, nx13505z1, nx60567z4, nx31323z2, nx43221z1, 
      nx43221z2, nx20740z4, nx64269z1, NOT_rtlc19_PS6_n24, nx44420z1, 
      NOT_r2_dir_1, nx43423z1, NOT_r2_dir_0: std_logic ;
   
   signal d: std_logic_vector (0 DOWNTO 0) ;
   
   signal DANGLING : std_logic_vector (113 downto 0 );

begin
   p_o_row(0) <= p_o_row_0_EXMPLR473 ;
   p_row_count_1 <= row_count_1 ;
   px705 <= nx64269z1 ;
   ix20740z19320 : sub_8_0 port map ( cin=>DANGLING(0), a(7)=>g(7), a(6)=>
      g(6), a(5)=>g(5), a(4)=>g(4), a(3)=>g(3), a(2)=>g(2), a(1)=>g(1), a(0)
      =>g(0), b(7)=>d(0), b(6)=>d(0), b(5)=>d(0), b(4)=>d(0), b(3)=>d(0), 
      b(2)=>d(0), b(1)=>d(0), b(0)=>d(0), d(7)=>DANGLING(1), d(6)=>DANGLING(
      2), d(5)=>DANGLING(3), d(4)=>DANGLING(4), d(3)=>DANGLING(5), d(2)=>
      DANGLING(6), d(1)=>DANGLING(7), d(0)=>DANGLING(8), cout=>nx20740z3);
   ix19070z19317 : sub_8_1 port map ( cin=>DANGLING(9), a(7)=>d(0), a(6)=>
      d(0), a(5)=>d(0), a(4)=>d(0), a(3)=>d(0), a(2)=>d(0), a(1)=>d(0), a(0)
      =>d(0), b(7)=>d(0), b(6)=>d(0), b(5)=>d(0), b(4)=>d(0), b(3)=>d(0), 
      b(2)=>d(0), b(1)=>d(0), b(0)=>d(0), d(7)=>DANGLING(10), d(6)=>DANGLING
      (11), d(5)=>DANGLING(12), d(4)=>DANGLING(13), d(3)=>DANGLING(14), d(2)
      =>DANGLING(15), d(1)=>DANGLING(16), d(0)=>DANGLING(17), cout=>
      nx19070z2);
   ix20740z19328 : sub_8_2 port map ( cin=>DANGLING(18), a(7)=>d(0), a(6)=>
      d(0), a(5)=>d(0), a(4)=>d(0), a(3)=>d(0), a(2)=>d(0), a(1)=>d(0), a(0)
      =>d(0), b(7)=>f(7), b(6)=>f(6), b(5)=>f(5), b(4)=>f(4), b(3)=>f(3), 
      b(2)=>f(2), b(1)=>f(1), b(0)=>f(0), d(7)=>DANGLING(19), d(6)=>DANGLING
      (20), d(5)=>DANGLING(21), d(4)=>DANGLING(22), d(3)=>DANGLING(23), d(2)
      =>DANGLING(24), d(1)=>DANGLING(25), d(0)=>DANGLING(26), cout=>
      nx20740z5);
   r3_add13_11i1 : add_13_0 port map ( cin=>DANGLING(27), a(12)=>r3(12), 
      a(11)=>r3(11), a(10)=>r3(10), a(9)=>r3(9), a(8)=>r3(8), a(7)=>r3(7), 
      a(6)=>r3(6), a(5)=>r3(5), a(4)=>r3(4), a(3)=>r3(3), a(2)=>r3(2), a(1)
      =>r3(1), a(0)=>r3(0), b(12)=>DANGLING(28), b(11)=>DANGLING(29), b(10)
      =>DANGLING(30), b(9)=>DANGLING(31), b(8)=>r3_11n1s1f1(8), b(7)=>
      r3_11n1s1f1(7), b(6)=>r3_11n1s1f1(6), b(5)=>r3_11n1s1f1(5), b(4)=>
      r3_11n1s1f1(4), b(3)=>r3_11n1s1f1(3), b(2)=>r3_11n1s1f1(2), b(1)=>
      r3_11n1s1f1(1), b(0)=>r3_11n1s1f1(0), d(12)=>r3_11n1s1(12), d(11)=>
      r3_11n1s1(11), d(10)=>r3_11n1s1(10), d(9)=>r3_11n1s1(9), d(8)=>
      r3_11n1s1(8), d(7)=>r3_11n1s1(7), d(6)=>r3_11n1s1(6), d(5)=>
      r3_11n1s1(5), d(4)=>r3_11n1s1(4), d(3)=>r3_11n1s1(3), d(2)=>
      r3_11n1s1(2), d(1)=>r3_11n1s1(1), d(0)=>r3_11n1s1(0), cout=>DANGLING(
      32));
   ix9374z6956 : sub_10_0 port map ( cin=>DANGLING(33), a(9)=>d(0), a(8)=>
      r2(8), a(7)=>r2(7), a(6)=>r2(6), a(5)=>r2(5), a(4)=>r2(4), a(3)=>r2(3), 
      a(2)=>r2(2), a(1)=>r2(1), a(0)=>r2(0), b(9)=>r4(9), b(8)=>r4(8), b(7)
      =>r4(7), b(6)=>r4(6), b(5)=>r4(5), b(4)=>r4(4), b(3)=>r4(3), b(2)=>
      r4(2), b(1)=>r4(1), b(0)=>r4(0), d(9)=>DANGLING(34), d(8)=>DANGLING(35
      ), d(7)=>DANGLING(36), d(6)=>DANGLING(37), d(5)=>DANGLING(38), d(4)=>
      DANGLING(39), d(3)=>DANGLING(40), d(2)=>DANGLING(41), d(1)=>DANGLING(
      42), d(0)=>DANGLING(43), cout=>nx9374z1);
   ix15883z6955 : sub_10_1 port map ( cin=>DANGLING(44), a(9)=>r4(9), a(8)=>
      r4(8), a(7)=>r4(7), a(6)=>r4(6), a(5)=>r4(5), a(4)=>r4(4), a(3)=>r4(3), 
      a(2)=>r4(2), a(1)=>r4(1), a(0)=>r4(0), b(9)=>r5(9), b(8)=>r5(8), b(7)
      =>r5(7), b(6)=>r5(6), b(5)=>r5(5), b(4)=>r5(4), b(3)=>r5(3), b(2)=>
      r5(2), b(1)=>r5(1), b(0)=>r5(0), d(9)=>DANGLING(45), d(8)=>DANGLING(46
      ), d(7)=>DANGLING(47), d(6)=>DANGLING(48), d(5)=>DANGLING(49), d(4)=>
      DANGLING(50), d(3)=>DANGLING(51), d(2)=>DANGLING(52), d(1)=>DANGLING(
      53), d(0)=>DANGLING(54), cout=>nx15883z1);
   r9_add12_17i1 : add_12_0 port map ( cin=>DANGLING(55), a(11)=>r3(11), 
      a(10)=>r3(10), a(9)=>r3(9), a(8)=>r3(8), a(7)=>r3(7), a(6)=>r3(6), 
      a(5)=>r3(5), a(4)=>r3(4), a(3)=>r3(3), a(2)=>r3(2), a(1)=>r3(1), a(0)
      =>r3(0), b(11)=>r3(12), b(10)=>DANGLING(56), b(9)=>DANGLING(57), b(8)
      =>DANGLING(58), b(7)=>DANGLING(59), b(6)=>DANGLING(60), b(5)=>DANGLING
      (61), b(4)=>DANGLING(62), b(3)=>DANGLING(63), b(2)=>DANGLING(64), b(1)
      =>DANGLING(65), b(0)=>DANGLING(66), d(11)=>r9_17n0r1(12), d(10)=>
      r9_17n0r1(11), d(9)=>r9_17n0r1(10), d(8)=>r9_17n0r1(9), d(7)=>
      r9_17n0r1(8), d(6)=>r9_17n0r1(7), d(5)=>r9_17n0r1(6), d(4)=>
      r9_17n0r1(5), d(3)=>r9_17n0r1(4), d(2)=>r9_17n0r1(3), d(1)=>
      r9_17n0r1(2), d(0)=>r9_17n0r1(1), cout=>DANGLING(67));
   ix39583z59249 : inc_8_0 port map ( cin=>DANGLING(68), a(7)=>col_i(7), 
      a(6)=>col_i(6), a(5)=>col_i(5), a(4)=>col_i(4), a(3)=>col_i(3), a(2)=>
      col_i(2), a(1)=>col_i(1), a(0)=>col_i(0), d=>rtlcn947, cout=>DANGLING(
      69));
   modgen_counter_row_count : modgen_counter_8_0 port map ( clock=>p_i_clock, 
      q(7)=>row_count_7, q(6)=>row_count_6, q(5)=>row_count_5, q(4)=>
      row_count_4, q(3)=>row_count_3, q(2)=>row_count_2, q(1)=>row_count_1, 
      q(0)=>p_o_row_0_EXMPLR473, clk_en=>DANGLING(70), aclear=>DANGLING(71), 
      sload=>DANGLING(72), data(7)=>DANGLING(73), data(6)=>DANGLING(74), 
      data(5)=>DANGLING(75), data(4)=>DANGLING(76), data(3)=>DANGLING(77), 
      data(2)=>DANGLING(78), data(1)=>DANGLING(79), data(0)=>DANGLING(80), 
      aset=>DANGLING(81), sclear=>DANGLING(82), updn=>DANGLING(83), cnt_en=>
      nx64436z1);
   r7_add8_15i9 : add_8_0 port map ( cin=>DANGLING(84), a(7)=>e(7), a(6)=>
      e(6), a(5)=>e(5), a(4)=>e(4), a(3)=>e(3), a(2)=>e(2), a(1)=>e(1), a(0)
      =>e(0), b(7)=>f(7), b(6)=>f(6), b(5)=>f(5), b(4)=>f(4), b(3)=>f(3), 
      b(2)=>f(2), b(1)=>f(1), b(0)=>f(0), d(7)=>r7_15n1s2(0), d(6)=>
      r7_15n1s2(1), d(5)=>r7_15n1s2(2), d(4)=>r7_15n1s2(3), d(3)=>
      r7_15n1s2(4), d(2)=>r7_15n1s2(5), d(1)=>r7_15n1s2(6), d(0)=>
      r7_15n1s2(7), cout=>r7_15n1s2(8));
   r7_add9_15i10 : add_9_0 port map ( cin=>DANGLING(85), a(8)=>r7_15n1s2(8), 
      a(7)=>r7_15n1s2(0), a(6)=>r7_15n1s2(1), a(5)=>r7_15n1s2(2), a(4)=>
      r7_15n1s2(3), a(3)=>r7_15n1s2(4), a(2)=>r7_15n1s2(5), a(1)=>
      r7_15n1s2(6), a(0)=>r7_15n1s2(7), b(8)=>DANGLING(86), b(7)=>g(7), b(6)
      =>g(6), b(5)=>g(5), b(4)=>g(4), b(3)=>g(3), b(2)=>g(2), b(1)=>g(1), 
      b(0)=>g(0), d(8)=>r7_15n1s1(0), d(7)=>r7_15n1s1(1), d(6)=>r7_15n1s1(2), 
      d(5)=>r7_15n1s1(3), d(4)=>r7_15n1s1(4), d(3)=>r7_15n1s1(5), d(2)=>
      r7_15n1s1(6), d(1)=>r7_15n1s1(7), d(0)=>r7_15n1s1(8), cout=>
      r7_15n1s1(9));
   r2_add8_10i25 : add_8_1 port map ( cin=>DANGLING(87), a(7)=>
      r2_10n1s4f1(7), a(6)=>r2_10n1s4f1(6), a(5)=>r2_10n1s4f1(5), a(4)=>
      r2_10n1s4f1(4), a(3)=>r2_10n1s4f1(3), a(2)=>r2_10n1s4f1(2), a(1)=>
      r2_10n1s4f1(1), a(0)=>r2_10n1s4f1(0), b(7)=>d(0), b(6)=>d(0), b(5)=>
      d(0), b(4)=>d(0), b(3)=>d(0), b(2)=>d(0), b(1)=>d(0), b(0)=>d(0), d(7)
      =>r2_10n1s4(0), d(6)=>r2_10n1s4(1), d(5)=>r2_10n1s4(2), d(4)=>
      r2_10n1s4(3), d(3)=>r2_10n1s4(4), d(2)=>r2_10n1s4(5), d(1)=>
      r2_10n1s4(6), d(0)=>r2_10n1s4(7), cout=>r2_10n1s4(8));
   r2_add9_10i26 : add_9_1 port map ( cin=>DANGLING(88), a(8)=>r2_10n1s4(8), 
      a(7)=>r2_10n1s4(0), a(6)=>r2_10n1s4(1), a(5)=>r2_10n1s4(2), a(4)=>
      r2_10n1s4(3), a(3)=>r2_10n1s4(4), a(2)=>r2_10n1s4(5), a(1)=>
      r2_10n1s4(6), a(0)=>r2_10n1s4(7), b(8)=>DANGLING(89), b(7)=>
      r2_10n1s1f1(7), b(6)=>r2_10n1s1f1(6), b(5)=>r2_10n1s1f1(5), b(4)=>
      r2_10n1s1f1(4), b(3)=>r2_10n1s1f1(3), b(2)=>r2_10n1s1f1(2), b(1)=>
      r2_10n1s1f1(1), b(0)=>r2_10n1s1f1(0), d(8)=>r2_10n1s1(0), d(7)=>
      r2_10n1s1(1), d(6)=>r2_10n1s1(2), d(5)=>r2_10n1s1(3), d(4)=>
      r2_10n1s1(4), d(3)=>r2_10n1s1(5), d(2)=>r2_10n1s1(6), d(1)=>
      r2_10n1s1(7), d(0)=>r2_10n1s1(8), cout=>DANGLING(90));
   ix47743z6956 : sub_10_2 port map ( cin=>DANGLING(91), a(9)=>r4(9), a(8)=>
      r4(8), a(7)=>r4(7), a(6)=>r4(6), a(5)=>r4(5), a(4)=>r4(4), a(3)=>r4(3), 
      a(2)=>r4(2), a(1)=>r4(1), a(0)=>r4(0), b(9)=>r7(9), b(8)=>r7(8), b(7)
      =>r7(7), b(6)=>r7(6), b(5)=>r7(5), b(4)=>r7(4), b(3)=>r7(3), b(2)=>
      r7(2), b(1)=>r7(1), b(0)=>r7(0), d(9)=>DANGLING(92), d(8)=>DANGLING(93
      ), d(7)=>DANGLING(94), d(6)=>DANGLING(95), d(5)=>DANGLING(96), d(4)=>
      DANGLING(97), d(3)=>DANGLING(98), d(2)=>DANGLING(99), d(1)=>DANGLING(
      100), d(0)=>DANGLING(101), cout=>nx47743z2);
   r1_add8_9i17 : add_8_2 port map ( cin=>DANGLING(102), a(7)=>d(0), a(6)=>
      d(0), a(5)=>d(0), a(4)=>d(0), a(3)=>d(0), a(2)=>d(0), a(1)=>d(0), a(0)
      =>d(0), b(7)=>r1_9n1s1f2(7), b(6)=>r1_9n1s1f2(6), b(5)=>r1_9n1s1f2(5), 
      b(4)=>r1_9n1s1f2(4), b(3)=>r1_9n1s1f2(3), b(2)=>r1_9n1s1f2(2), b(1)=>
      r1_9n1s1f2(1), b(0)=>r1_9n1s1f2(0), d(7)=>r1_9n1s1(0), d(6)=>
      r1_9n1s1(1), d(5)=>r1_9n1s1(2), d(4)=>r1_9n1s1(3), d(3)=>r1_9n1s1(4), 
      d(2)=>r1_9n1s1(5), d(1)=>r1_9n1s1(6), d(0)=>r1_9n1s1(7), cout=>
      DANGLING(103));
   r6_add8_14i1 : add_8_3 port map ( cin=>DANGLING(104), a(7)=>f(7), a(6)=>
      f(6), a(5)=>f(5), a(4)=>f(4), a(3)=>f(3), a(2)=>f(2), a(1)=>f(1), a(0)
      =>f(0), b(7)=>g(7), b(6)=>g(6), b(5)=>g(5), b(4)=>g(4), b(3)=>g(3), 
      b(2)=>g(2), b(1)=>g(1), b(0)=>g(0), d(7)=>r6_14n0r1(0), d(6)=>
      r6_14n0r1(1), d(5)=>r6_14n0r1(2), d(4)=>r6_14n0r1(3), d(3)=>
      r6_14n0r1(4), d(2)=>r6_14n0r1(5), d(1)=>r6_14n0r1(6), d(0)=>
      r6_14n0r1(7), cout=>r6_14n0r1(8));
   sub_sub13_1 : sub_12_0 port map ( cin=>DANGLING(105), a(11)=>r8(9), a(10)
      =>r8(8), a(9)=>r8(7), a(8)=>r8(6), a(7)=>r8(5), a(6)=>r8(4), a(5)=>
      r8(3), a(4)=>r8(2), a(3)=>r8(1), a(2)=>r8(0), a(1)=>DANGLING(106), 
      a(0)=>DANGLING(107), b(11)=>r9(12), b(10)=>r9(11), b(9)=>r9(10), b(8)
      =>r9(9), b(7)=>r9(8), b(6)=>r9(7), b(5)=>r9(6), b(4)=>r9(5), b(3)=>
      r9(4), b(2)=>r9(3), b(1)=>r9(2), b(0)=>r9(1), d(11)=>sub_12, d(10)=>
      sub_11, d(9)=>sub_10, d(8)=>sub_9, d(7)=>sub_8, d(6)=>sub_7, d(5)=>
      DANGLING(108), d(4)=>DANGLING(109), d(3)=>DANGLING(110), d(2)=>
      DANGLING(111), d(1)=>DANGLING(112), d(0)=>DANGLING(113), cout=>
      nx1448z3, p_r9_0=>r9(0));
   not_v_7 <= NOT v_7;
   PWR <= '1';
   p_o_mode(0) <= NOT nx64269z1;
   r4_dir(1) <= NOT nx44420z1;
   NOT_r2_dir_1 <= NOT r2_dir_1;
   r4_dir(0) <= NOT nx43423z1;
   NOT_r2_dir_0 <= NOT r2_dir_0;
   d(0) <= '0';
   reg_v_7 : cycloneii_lcell_ff port map ( regout=>v_7, datain=>v_6, clk=>
      p_i_clock);
   reg_v_6 : cycloneii_lcell_ff port map ( regout=>v_6, datain=>v_5, clk=>
      p_i_clock);
   reg_v_5 : cycloneii_lcell_ff port map ( regout=>v_5, datain=>v_4, clk=>
      p_i_clock);
   reg_v_4 : cycloneii_lcell_ff port map ( regout=>v_4, datain=>v_3, clk=>
      p_i_clock);
   reg_v_3 : cycloneii_lcell_ff port map ( regout=>v_3, datain=>v_2, clk=>
      p_i_clock);
   reg_v_2 : cycloneii_lcell_ff port map ( regout=>v_2, datain=>v_1, clk=>
      p_i_clock);
   reg_v_1 : cycloneii_lcell_ff port map ( regout=>v_1, datain=>
      p_i_valid_rtlc_747_or_76(7), clk=>p_i_clock);
   reg_r9_9 : cycloneii_lcell_ff port map ( regout=>r9(9), datain=>
      r9_17n0r1(9), clk=>p_i_clock);
   reg_r9_8 : cycloneii_lcell_ff port map ( regout=>r9(8), datain=>
      r9_17n0r1(8), clk=>p_i_clock);
   reg_r9_7 : cycloneii_lcell_ff port map ( regout=>r9(7), datain=>
      r9_17n0r1(7), clk=>p_i_clock);
   reg_r9_6 : cycloneii_lcell_ff port map ( regout=>r9(6), datain=>
      r9_17n0r1(6), clk=>p_i_clock);
   reg_r9_5 : cycloneii_lcell_ff port map ( regout=>r9(5), datain=>
      r9_17n0r1(5), clk=>p_i_clock);
   reg_r9_4 : cycloneii_lcell_ff port map ( regout=>r9(4), datain=>
      r9_17n0r1(4), clk=>p_i_clock);
   reg_r9_3 : cycloneii_lcell_ff port map ( regout=>r9(3), datain=>
      r9_17n0r1(3), clk=>p_i_clock);
   reg_r9_2 : cycloneii_lcell_ff port map ( regout=>r9(2), datain=>
      r9_17n0r1(2), clk=>p_i_clock);
   reg_r9_12 : cycloneii_lcell_ff port map ( regout=>r9(12), datain=>
      r9_17n0r1(12), clk=>p_i_clock);
   reg_r9_11 : cycloneii_lcell_ff port map ( regout=>r9(11), datain=>
      r9_17n0r1(11), clk=>p_i_clock);
   reg_r9_10 : cycloneii_lcell_ff port map ( regout=>r9(10), datain=>
      r9_17n0r1(10), clk=>p_i_clock);
   reg_r9_1 : cycloneii_lcell_ff port map ( regout=>r9(1), datain=>
      r9_17n0r1(1), clk=>p_i_clock);
   reg_r9_0 : cycloneii_lcell_ff port map ( regout=>r9(0), datain=>r3(0), 
      clk=>p_i_clock);
   reg_r8_dir_2 : cycloneii_lcell_ff port map ( regout=>r8_dir(2), datain=>
      r5_dir(2), sdata=>r4_dir(2), clk=>p_i_clock, ena=>v_6, sload=>
      nx15883z1);
   reg_r8_dir_1 : cycloneii_lcell_ff port map ( regout=>r8_dir(1), datain=>
      r5_dir(1), sdata=>r4_dir(1), clk=>p_i_clock, ena=>v_6, sload=>
      nx15883z1);
   reg_r8_dir_0 : cycloneii_lcell_ff port map ( regout=>r8_dir(0), datain=>
      r5_dir(0), sdata=>r4_dir(0), clk=>p_i_clock, ena=>v_6, sload=>
      nx15883z1);
   reg_r8_9 : cycloneii_lcell_ff port map ( regout=>r8(9), datain=>r5(9), 
      sdata=>r4(9), clk=>p_i_clock, ena=>v_6, sload=>nx15883z1);
   reg_r8_8 : cycloneii_lcell_ff port map ( regout=>r8(8), datain=>r5(8), 
      sdata=>r4(8), clk=>p_i_clock, ena=>v_6, sload=>nx15883z1);
   reg_r8_7 : cycloneii_lcell_ff port map ( regout=>r8(7), datain=>r5(7), 
      sdata=>r4(7), clk=>p_i_clock, ena=>v_6, sload=>nx15883z1);
   reg_r8_6 : cycloneii_lcell_ff port map ( regout=>r8(6), datain=>r5(6), 
      sdata=>r4(6), clk=>p_i_clock, ena=>v_6, sload=>nx15883z1);
   reg_r8_5 : cycloneii_lcell_ff port map ( regout=>r8(5), datain=>r5(5), 
      sdata=>r4(5), clk=>p_i_clock, ena=>v_6, sload=>nx15883z1);
   reg_r8_4 : cycloneii_lcell_ff port map ( regout=>r8(4), datain=>r5(4), 
      sdata=>r4(4), clk=>p_i_clock, ena=>v_6, sload=>nx15883z1);
   reg_r8_3 : cycloneii_lcell_ff port map ( regout=>r8(3), datain=>r5(3), 
      sdata=>r4(3), clk=>p_i_clock, ena=>v_6, sload=>nx15883z1);
   reg_r8_2 : cycloneii_lcell_ff port map ( regout=>r8(2), datain=>r5(2), 
      sdata=>r4(2), clk=>p_i_clock, ena=>v_6, sload=>nx15883z1);
   reg_r8_1 : cycloneii_lcell_ff port map ( regout=>r8(1), datain=>r5(1), 
      sdata=>r4(1), clk=>p_i_clock, ena=>v_6, sload=>nx15883z1);
   reg_r8_0 : cycloneii_lcell_ff port map ( regout=>r8(0), datain=>r5(0), 
      sdata=>r4(0), clk=>p_i_clock, ena=>v_6, sload=>nx15883z1);
   reg_r7_9 : cycloneii_lcell_ff port map ( regout=>r7(9), datain=>
      r7_15n1s1(9), clk=>p_i_clock, ena=>v_4);
   reg_r7_8 : cycloneii_lcell_ff port map ( regout=>r7(8), datain=>
      r7_15n1s1(0), clk=>p_i_clock, ena=>v_4);
   reg_r7_7 : cycloneii_lcell_ff port map ( regout=>r7(7), datain=>
      r7_15n1s1(1), clk=>p_i_clock, ena=>v_4);
   reg_r7_6 : cycloneii_lcell_ff port map ( regout=>r7(6), datain=>
      r7_15n1s1(2), clk=>p_i_clock, ena=>v_4);
   reg_r7_5 : cycloneii_lcell_ff port map ( regout=>r7(5), datain=>
      r7_15n1s1(3), clk=>p_i_clock, ena=>v_4);
   reg_r7_4 : cycloneii_lcell_ff port map ( regout=>r7(4), datain=>
      r7_15n1s1(4), clk=>p_i_clock, ena=>v_4);
   reg_r7_3 : cycloneii_lcell_ff port map ( regout=>r7(3), datain=>
      r7_15n1s1(5), clk=>p_i_clock, ena=>v_4);
   reg_r7_2 : cycloneii_lcell_ff port map ( regout=>r7(2), datain=>
      r7_15n1s1(6), clk=>p_i_clock, ena=>v_4);
   reg_r7_1 : cycloneii_lcell_ff port map ( regout=>r7(1), datain=>
      r7_15n1s1(7), clk=>p_i_clock, ena=>v_4);
   reg_r7_0 : cycloneii_lcell_ff port map ( regout=>r7(0), datain=>
      r7_15n1s1(8), clk=>p_i_clock, ena=>v_4);
   reg_r6_8 : cycloneii_lcell_ff port map ( regout=>r6(8), datain=>
      r6_14n0r1(8), clk=>p_i_clock);
   reg_r6_7 : cycloneii_lcell_ff port map ( regout=>r6(7), datain=>
      r6_14n0r1(0), clk=>p_i_clock);
   reg_r6_6 : cycloneii_lcell_ff port map ( regout=>r6(6), datain=>
      r6_14n0r1(1), clk=>p_i_clock);
   reg_r6_5 : cycloneii_lcell_ff port map ( regout=>r6(5), datain=>
      r6_14n0r1(2), clk=>p_i_clock);
   reg_r6_4 : cycloneii_lcell_ff port map ( regout=>r6(4), datain=>
      r6_14n0r1(3), clk=>p_i_clock);
   reg_r6_3 : cycloneii_lcell_ff port map ( regout=>r6(3), datain=>
      r6_14n0r1(4), clk=>p_i_clock);
   reg_r6_2 : cycloneii_lcell_ff port map ( regout=>r6(2), datain=>
      r6_14n0r1(5), clk=>p_i_clock);
   reg_r6_1 : cycloneii_lcell_ff port map ( regout=>r6(1), datain=>
      r6_14n0r1(6), clk=>p_i_clock);
   reg_r6_0 : cycloneii_lcell_ff port map ( regout=>r6(0), datain=>
      r6_14n0r1(7), clk=>p_i_clock);
   reg_r5_dir_2 : cycloneii_lcell_ff port map ( regout=>r5_dir(2), datain=>
      r4_dir(2), sdata=>r2_dir_2, clk=>p_i_clock, ena=>v_3, sload=>nx9374z1
   );
   reg_r5_dir_1 : cycloneii_lcell_ff port map ( regout=>r5_dir(1), datain=>
      r4_dir(1), sdata=>r2_dir_1, clk=>p_i_clock, ena=>v_3, sload=>nx9374z1
   );
   reg_r5_dir_0 : cycloneii_lcell_ff port map ( regout=>r5_dir(0), datain=>
      r4_dir(0), sdata=>r2_dir_0, clk=>p_i_clock, ena=>v_3, sload=>nx9374z1
   );
   reg_r5_9 : cycloneii_lcell_ff port map ( regout=>r5(9), datain=>r4(9), 
      sdata=>d(0), clk=>p_i_clock, ena=>v_3, sload=>nx9374z1);
   reg_r5_8 : cycloneii_lcell_ff port map ( regout=>r5(8), datain=>r4(8), 
      sdata=>r2(8), clk=>p_i_clock, ena=>v_3, sload=>nx9374z1);
   reg_r5_7 : cycloneii_lcell_ff port map ( regout=>r5(7), datain=>r4(7), 
      sdata=>r2(7), clk=>p_i_clock, ena=>v_3, sload=>nx9374z1);
   reg_r5_6 : cycloneii_lcell_ff port map ( regout=>r5(6), datain=>r4(6), 
      sdata=>r2(6), clk=>p_i_clock, ena=>v_3, sload=>nx9374z1);
   reg_r5_5 : cycloneii_lcell_ff port map ( regout=>r5(5), datain=>r4(5), 
      sdata=>r2(5), clk=>p_i_clock, ena=>v_3, sload=>nx9374z1);
   reg_r5_4 : cycloneii_lcell_ff port map ( regout=>r5(4), datain=>r4(4), 
      sdata=>r2(4), clk=>p_i_clock, ena=>v_3, sload=>nx9374z1);
   reg_r5_3 : cycloneii_lcell_ff port map ( regout=>r5(3), datain=>r4(3), 
      sdata=>r2(3), clk=>p_i_clock, ena=>v_3, sload=>nx9374z1);
   reg_r5_2 : cycloneii_lcell_ff port map ( regout=>r5(2), datain=>r4(2), 
      sdata=>r2(2), clk=>p_i_clock, ena=>v_3, sload=>nx9374z1);
   reg_r5_1 : cycloneii_lcell_ff port map ( regout=>r5(1), datain=>r4(1), 
      sdata=>r2(1), clk=>p_i_clock, ena=>v_3, sload=>nx9374z1);
   reg_r5_0 : cycloneii_lcell_ff port map ( regout=>r5(0), datain=>r4(0), 
      sdata=>r2(0), clk=>p_i_clock, ena=>v_3, sload=>nx9374z1);
   reg_r4_dir_2 : cycloneii_lcell_ff port map ( regout=>r4_dir(2), datain=>
      r2_dir_2, sdata=>d(0), clk=>p_i_clock, ena=>nx47743z1, sload=>v_5);
   reg_r4_dir_1 : cycloneii_lcell_ff port map ( regout=>nx44420z1, datain=>
      NOT_r2_dir_1, clk=>p_i_clock, ena=>nx47743z1, sclr=>nx82z1);
   reg_r4_dir_0 : cycloneii_lcell_ff port map ( regout=>nx43423z1, datain=>
      NOT_r2_dir_0, clk=>p_i_clock, ena=>nx47743z1, sclr=>nx82z1);
   reg_r4_9 : cycloneii_lcell_ff port map ( regout=>r4(9), datain=>d(0), 
      sdata=>r7(9), clk=>p_i_clock, ena=>nx47743z1, sload=>v_5);
   reg_r4_8 : cycloneii_lcell_ff port map ( regout=>r4(8), datain=>r2(8), 
      sdata=>r7(8), clk=>p_i_clock, ena=>nx47743z1, sload=>v_5);
   reg_r4_7 : cycloneii_lcell_ff port map ( regout=>r4(7), datain=>r2(7), 
      sdata=>r7(7), clk=>p_i_clock, ena=>nx47743z1, sload=>v_5);
   reg_r4_6 : cycloneii_lcell_ff port map ( regout=>r4(6), datain=>r2(6), 
      sdata=>r7(6), clk=>p_i_clock, ena=>nx47743z1, sload=>v_5);
   reg_r4_5 : cycloneii_lcell_ff port map ( regout=>r4(5), datain=>r2(5), 
      sdata=>r7(5), clk=>p_i_clock, ena=>nx47743z1, sload=>v_5);
   reg_r4_4 : cycloneii_lcell_ff port map ( regout=>r4(4), datain=>r2(4), 
      sdata=>r7(4), clk=>p_i_clock, ena=>nx47743z1, sload=>v_5);
   reg_r4_3 : cycloneii_lcell_ff port map ( regout=>r4(3), datain=>r2(3), 
      sdata=>r7(3), clk=>p_i_clock, ena=>nx47743z1, sload=>v_5);
   reg_r4_2 : cycloneii_lcell_ff port map ( regout=>r4(2), datain=>r2(2), 
      sdata=>r7(2), clk=>p_i_clock, ena=>nx47743z1, sload=>v_5);
   reg_r4_1 : cycloneii_lcell_ff port map ( regout=>r4(1), datain=>r2(1), 
      sdata=>r7(1), clk=>p_i_clock, ena=>nx47743z1, sload=>v_5);
   reg_r4_0 : cycloneii_lcell_ff port map ( regout=>r4(0), datain=>r2(0), 
      sdata=>r7(0), clk=>p_i_clock, ena=>nx47743z1, sload=>v_5);
   reg_r3_9 : cycloneii_lcell_ff port map ( regout=>r3(9), datain=>
      r3_11n1s1(9), clk=>p_i_clock, sclr=>v_2);
   reg_r3_8 : cycloneii_lcell_ff port map ( regout=>r3(8), datain=>
      r3_11n1s1(8), sdata=>d(0), clk=>p_i_clock, ena=>PWR, sload=>v_2);
   reg_r3_7 : cycloneii_lcell_ff port map ( regout=>r3(7), datain=>
      r3_11n1s1(7), sdata=>r1(7), clk=>p_i_clock, ena=>PWR, sload=>v_2);
   reg_r3_6 : cycloneii_lcell_ff port map ( regout=>r3(6), datain=>
      r3_11n1s1(6), sdata=>r1(6), clk=>p_i_clock, ena=>PWR, sload=>v_2);
   reg_r3_5 : cycloneii_lcell_ff port map ( regout=>r3(5), datain=>
      r3_11n1s1(5), sdata=>r1(5), clk=>p_i_clock, ena=>PWR, sload=>v_2);
   reg_r3_4 : cycloneii_lcell_ff port map ( regout=>r3(4), datain=>
      r3_11n1s1(4), sdata=>r1(4), clk=>p_i_clock, ena=>PWR, sload=>v_2);
   reg_r3_3 : cycloneii_lcell_ff port map ( regout=>r3(3), datain=>
      r3_11n1s1(3), sdata=>r1(3), clk=>p_i_clock, ena=>PWR, sload=>v_2);
   reg_r3_2 : cycloneii_lcell_ff port map ( regout=>r3(2), datain=>
      r3_11n1s1(2), sdata=>r1(2), clk=>p_i_clock, ena=>PWR, sload=>v_2);
   reg_r3_12 : cycloneii_lcell_ff port map ( regout=>r3(12), datain=>
      r3_11n1s1(12), clk=>p_i_clock, sclr=>v_2);
   reg_r3_11 : cycloneii_lcell_ff port map ( regout=>r3(11), datain=>
      r3_11n1s1(11), clk=>p_i_clock, sclr=>v_2);
   reg_r3_10 : cycloneii_lcell_ff port map ( regout=>r3(10), datain=>
      r3_11n1s1(10), clk=>p_i_clock, sclr=>v_2);
   reg_r3_1 : cycloneii_lcell_ff port map ( regout=>r3(1), datain=>
      r3_11n1s1(1), sdata=>r1(1), clk=>p_i_clock, ena=>PWR, sload=>v_2);
   reg_r3_0 : cycloneii_lcell_ff port map ( regout=>r3(0), datain=>
      r3_11n1s1(0), sdata=>r1(0), clk=>p_i_clock, ena=>PWR, sload=>v_2);
   reg_r2_dir_2 : cycloneii_lcell_ff port map ( regout=>r2_dir_2, datain=>
      nx19070z1, clk=>p_i_clock, ena=>nx33634z1);
   reg_r2_dir_1 : cycloneii_lcell_ff port map ( regout=>r2_dir_1, datain=>
      nx20067z1, clk=>p_i_clock, ena=>nx33634z1);
   reg_r2_dir_0 : cycloneii_lcell_ff port map ( regout=>r2_dir_0, datain=>
      nx21064z1, clk=>p_i_clock, ena=>nx33634z1);
   reg_r2_8 : cycloneii_lcell_ff port map ( regout=>r2(8), datain=>
      r2_10n1s1(0), clk=>p_i_clock, ena=>nx33634z1);
   reg_r2_7 : cycloneii_lcell_ff port map ( regout=>r2(7), datain=>
      r2_10n1s1(1), clk=>p_i_clock, ena=>nx33634z1);
   reg_r2_6 : cycloneii_lcell_ff port map ( regout=>r2(6), datain=>
      r2_10n1s1(2), clk=>p_i_clock, ena=>nx33634z1);
   reg_r2_5 : cycloneii_lcell_ff port map ( regout=>r2(5), datain=>
      r2_10n1s1(3), clk=>p_i_clock, ena=>nx33634z1);
   reg_r2_4 : cycloneii_lcell_ff port map ( regout=>r2(4), datain=>
      r2_10n1s1(4), clk=>p_i_clock, ena=>nx33634z1);
   reg_r2_3 : cycloneii_lcell_ff port map ( regout=>r2(3), datain=>
      r2_10n1s1(5), clk=>p_i_clock, ena=>nx33634z1);
   reg_r2_2 : cycloneii_lcell_ff port map ( regout=>r2(2), datain=>
      r2_10n1s1(6), clk=>p_i_clock, ena=>nx33634z1);
   reg_r2_1 : cycloneii_lcell_ff port map ( regout=>r2(1), datain=>
      r2_10n1s1(7), clk=>p_i_clock, ena=>nx33634z1);
   reg_r2_0 : cycloneii_lcell_ff port map ( regout=>r2(0), datain=>
      r2_10n1s1(8), clk=>p_i_clock, ena=>nx33634z1);
   reg_r1_7 : cycloneii_lcell_ff port map ( regout=>r1(7), datain=>
      r1_9n1s1(0), clk=>p_i_clock, ena=>nx33634z1);
   reg_r1_6 : cycloneii_lcell_ff port map ( regout=>r1(6), datain=>
      r1_9n1s1(1), clk=>p_i_clock, ena=>nx33634z1);
   reg_r1_5 : cycloneii_lcell_ff port map ( regout=>r1(5), datain=>
      r1_9n1s1(2), clk=>p_i_clock, ena=>nx33634z1);
   reg_r1_4 : cycloneii_lcell_ff port map ( regout=>r1(4), datain=>
      r1_9n1s1(3), clk=>p_i_clock, ena=>nx33634z1);
   reg_r1_3 : cycloneii_lcell_ff port map ( regout=>r1(3), datain=>
      r1_9n1s1(4), clk=>p_i_clock, ena=>nx33634z1);
   reg_r1_2 : cycloneii_lcell_ff port map ( regout=>r1(2), datain=>
      r1_9n1s1(5), clk=>p_i_clock, ena=>nx33634z1);
   reg_r1_1 : cycloneii_lcell_ff port map ( regout=>r1(1), datain=>
      r1_9n1s1(6), clk=>p_i_clock, ena=>nx33634z1);
   reg_r1_0 : cycloneii_lcell_ff port map ( regout=>r1(0), datain=>
      r1_9n1s1(7), clk=>p_i_clock, ena=>nx33634z1);
   reg_o_valid : cycloneii_lcell_ff port map ( regout=>p_o_valid, datain=>
      nx60567z1, clk=>p_i_clock, sclr=>not_v_7);
   reg_o_mode_1 : cycloneii_lcell_ff port map ( regout=>p_o_mode(1), datain
      =>PWR, clk=>p_i_clock, sclr=>p_i_reset);
   reg_o_mode_0 : cycloneii_lcell_ff port map ( regout=>nx64269z1, datain=>
      NOT_rtlc19_PS6_n24, clk=>p_i_clock, sclr=>p_i_reset);
   reg_o_edge : cycloneii_lcell_ff port map ( regout=>p_o_edge, datain=>
      nx1448z1, clk=>p_i_clock, ena=>v_7);
   reg_o_dir_2 : cycloneii_lcell_ff port map ( regout=>p_o_dir(2), datain=>
      r8_dir(2), clk=>p_i_clock, ena=>v_7, sclr=>nx31323z1);
   reg_o_dir_1 : cycloneii_lcell_ff port map ( regout=>p_o_dir(1), datain=>
      r8_dir(1), clk=>p_i_clock, ena=>v_7, sclr=>nx31323z1);
   reg_o_dir_0 : cycloneii_lcell_ff port map ( regout=>p_o_dir(0), datain=>
      r8_dir(0), clk=>p_i_clock, ena=>v_7, sclr=>nx31323z1);
   reg_g_7 : cycloneii_lcell_ff port map ( regout=>g(7), datain=>f(7), clk=>
      p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7));
   reg_g_6 : cycloneii_lcell_ff port map ( regout=>g(6), datain=>f(6), clk=>
      p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7));
   reg_g_5 : cycloneii_lcell_ff port map ( regout=>g(5), datain=>f(5), clk=>
      p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7));
   reg_g_4 : cycloneii_lcell_ff port map ( regout=>g(4), datain=>f(4), clk=>
      p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7));
   reg_g_3 : cycloneii_lcell_ff port map ( regout=>g(3), datain=>f(3), clk=>
      p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7));
   reg_g_2 : cycloneii_lcell_ff port map ( regout=>g(2), datain=>f(2), clk=>
      p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7));
   reg_g_1 : cycloneii_lcell_ff port map ( regout=>g(1), datain=>f(1), clk=>
      p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7));
   reg_g_0 : cycloneii_lcell_ff port map ( regout=>g(0), datain=>f(0), clk=>
      p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7));
   reg_f_7 : cycloneii_lcell_ff port map ( regout=>f(7), datain=>e(7), clk=>
      p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7));
   reg_f_6 : cycloneii_lcell_ff port map ( regout=>f(6), datain=>e(6), clk=>
      p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7));
   reg_f_5 : cycloneii_lcell_ff port map ( regout=>f(5), datain=>e(5), clk=>
      p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7));
   reg_f_4 : cycloneii_lcell_ff port map ( regout=>f(4), datain=>e(4), clk=>
      p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7));
   reg_f_3 : cycloneii_lcell_ff port map ( regout=>f(3), datain=>e(3), clk=>
      p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7));
   reg_f_2 : cycloneii_lcell_ff port map ( regout=>f(2), datain=>e(2), clk=>
      p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7));
   reg_f_1 : cycloneii_lcell_ff port map ( regout=>f(1), datain=>e(1), clk=>
      p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7));
   reg_f_0 : cycloneii_lcell_ff port map ( regout=>f(0), datain=>e(0), clk=>
      p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7));
   reg_e_7 : cycloneii_lcell_ff port map ( regout=>e(7), datain=>
      p_i_pixel(7), clk=>p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7));
   reg_e_6 : cycloneii_lcell_ff port map ( regout=>e(6), datain=>
      p_i_pixel(6), clk=>p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7));
   reg_e_5 : cycloneii_lcell_ff port map ( regout=>e(5), datain=>
      p_i_pixel(5), clk=>p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7));
   reg_e_4 : cycloneii_lcell_ff port map ( regout=>e(4), datain=>
      p_i_pixel(4), clk=>p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7));
   reg_e_3 : cycloneii_lcell_ff port map ( regout=>e(3), datain=>
      p_i_pixel(3), clk=>p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7));
   reg_e_2 : cycloneii_lcell_ff port map ( regout=>e(2), datain=>
      p_i_pixel(2), clk=>p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7));
   reg_e_1 : cycloneii_lcell_ff port map ( regout=>e(1), datain=>
      p_i_pixel(1), clk=>p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7));
   reg_e_0 : cycloneii_lcell_ff port map ( regout=>e(0), datain=>
      p_i_pixel(0), clk=>p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7));
   reg_col_i_7 : cycloneii_lcell_ff port map ( regout=>col_i(7), datain=>
      col_flop(7), clk=>p_i_clock);
   reg_col_i_6 : cycloneii_lcell_ff port map ( regout=>col_i(6), datain=>
      col_flop(6), clk=>p_i_clock);
   reg_col_i_5 : cycloneii_lcell_ff port map ( regout=>col_i(5), datain=>
      col_flop(5), clk=>p_i_clock);
   reg_col_i_4 : cycloneii_lcell_ff port map ( regout=>col_i(4), datain=>
      col_flop(4), clk=>p_i_clock);
   reg_col_i_3 : cycloneii_lcell_ff port map ( regout=>col_i(3), datain=>
      col_flop(3), clk=>p_i_clock);
   reg_col_i_2 : cycloneii_lcell_ff port map ( regout=>col_i(2), datain=>
      col_flop(2), clk=>p_i_clock);
   reg_col_i_1 : cycloneii_lcell_ff port map ( regout=>col_i(1), datain=>
      col_flop(1), clk=>p_i_clock);
   reg_col_i_0 : cycloneii_lcell_ff port map ( regout=>col_i(0), datain=>
      col_flop(0), clk=>p_i_clock);
   reg_col_flop_7 : cycloneii_lcell_ff port map ( regout=>col_flop(7), 
      datain=>rtlcn947(7), clk=>p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7)
   );
   reg_col_flop_6 : cycloneii_lcell_ff port map ( regout=>col_flop(6), 
      datain=>rtlcn947(6), clk=>p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7)
   );
   reg_col_flop_5 : cycloneii_lcell_ff port map ( regout=>col_flop(5), 
      datain=>rtlcn947(5), clk=>p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7)
   );
   reg_col_flop_4 : cycloneii_lcell_ff port map ( regout=>col_flop(4), 
      datain=>rtlcn947(4), clk=>p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7)
   );
   reg_col_flop_3 : cycloneii_lcell_ff port map ( regout=>col_flop(3), 
      datain=>rtlcn947(3), clk=>p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7)
   );
   reg_col_flop_2 : cycloneii_lcell_ff port map ( regout=>col_flop(2), 
      datain=>rtlcn947(2), clk=>p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7)
   );
   reg_col_flop_1 : cycloneii_lcell_ff port map ( regout=>col_flop(1), 
      datain=>rtlcn947(1), clk=>p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7)
   );
   reg_col_flop_0 : cycloneii_lcell_ff port map ( regout=>col_flop(0), 
      datain=>rtlcn947(0), clk=>p_i_clock, ena=>p_i_valid_rtlc_747_or_76(7)
   );
   ix20740z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0808") 
       port map ( combout=>nx20740z4, dataa=>nx20740z5, datab=>v_3, datac=>
      v_1);
   ix43221z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx43221z2, dataa=>p_i_valid_rtlc_747_or_76(7), 
      datab=>v_3, datac=>v_1, datad=>v_2);
   ix43221z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx43221z1, dataa=>v_6, datab=>v_4);
   ix31323z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx31323z2, dataa=>sub_9, datab=>sub_10);
   ix60567z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"feee") 
       port map ( combout=>nx60567z4, dataa=>row_count_5, datab=>row_count_6, 
      datac=>p_o_row_0_EXMPLR473, datad=>row_count_1);
   ix13505z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx13505z1, dataa=>row_count_3, datab=>row_count_4, 
      datac=>row_count_5, datad=>row_count_6);
   ix60567z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx60567z6, dataa=>col_flop(5), datab=>col_flop(6), 
      datac=>col_flop(7));
   ix60567z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx60567z5, dataa=>col_flop(2), datab=>col_flop(3), 
      datac=>col_flop(4));
   ix19070z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0503") 
       port map ( combout=>nx19070z1, dataa=>nx19070z2, datab=>nx20740z5, 
      datac=>v_1, datad=>v_2);
   ix1448z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fbbb") 
       port map ( combout=>nx1448z2, dataa=>sub_12, datab=>nx1448z3, datac=>
      sub_7, datad=>sub_8);
   ix64436z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx64436z3, dataa=>p_i_valid_rtlc_747_or_76(7), 
      datab=>col_i(0), datac=>col_i(1), datad=>col_i(2));
   ix60567z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx60567z3, dataa=>row_count_3, datab=>row_count_4
   );
   ix12508z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx12508z1, dataa=>row_count_2, datab=>row_count_1
   );
   ix60567z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx60567z2, dataa=>row_count_2, datab=>row_count_7, 
      datac=>nx60567z3, datad=>nx60567z4);
   ix64436z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx64436z2, dataa=>col_i(3), datab=>col_i(4), 
      datac=>col_i(5), datad=>col_i(6));
   ix20740z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx20740z1, dataa=>v_1, datab=>v_2);
   ix47743z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>nx47743z1, dataa=>nx47743z2, datab=>v_5);
   ix20067z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx20067z1, dataa=>v_1, datab=>v_2);
   ix20740z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff74") 
       port map ( combout=>nx20740z2, dataa=>nx20740z3, datab=>v_1, datac=>
      v_2, datad=>nx20740z4);
   ix38408z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>r3_11n1s1f1(8), dataa=>r6(8), datab=>v_5);
   ix38408z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>r3_11n1s1f1(7), dataa=>r6(7), datab=>r1(7), datac
      =>v_5);
   ix38408z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>r3_11n1s1f1(6), dataa=>r6(6), datab=>r1(6), datac
      =>v_5);
   ix38408z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>r3_11n1s1f1(5), dataa=>r6(5), datab=>r1(5), datac
      =>v_5);
   ix38408z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>r3_11n1s1f1(4), dataa=>r6(4), datab=>r1(4), datac
      =>v_5);
   ix38408z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>r3_11n1s1f1(3), dataa=>r6(3), datab=>r1(3), datac
      =>v_5);
   ix38408z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>r3_11n1s1f1(2), dataa=>r6(2), datab=>r1(2), datac
      =>v_5);
   ix38408z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>r3_11n1s1f1(1), dataa=>r6(1), datab=>r1(1), datac
      =>v_5);
   ix38408z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>r3_11n1s1f1(0), dataa=>r6(0), datab=>r1(0), datac
      =>v_5);
   ix31323z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0004") 
       port map ( combout=>nx31323z1, dataa=>sub_11, datab=>v_7, datac=>
      nx1448z2, datad=>nx31323z2);
   ix60567z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ccc8") 
       port map ( combout=>nx60567z1, dataa=>col_flop(1), datab=>nx60567z2, 
      datac=>nx60567z5, datad=>nx60567z6);
   ix1448z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx1448z1, dataa=>sub_9, datab=>sub_10, datac=>
      sub_11, datad=>nx1448z2);
   ix21064z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a0a3") 
       port map ( combout=>nx21064z1, dataa=>nx20740z3, datab=>nx20740z5, 
      datac=>v_1, datad=>v_2);
   ix82z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx82z1, dataa=>nx47743z2, datab=>v_5);
   ix33634z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx33634z1, dataa=>v_3, datab=>v_1, datac=>v_2);
   ix13505z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ccc9") 
       port map ( combout=>p_o_row(7), dataa=>row_count_2, datab=>
      row_count_7, datac=>row_count_1, datad=>nx13505z1);
   ix12508z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ccc9") 
       port map ( combout=>p_o_row(6), dataa=>row_count_5, datab=>
      row_count_6, datac=>nx12508z1, datad=>nx60567z3);
   ix11511z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ccc9") 
       port map ( combout=>p_o_row(5), dataa=>row_count_2, datab=>
      row_count_5, datac=>row_count_1, datad=>nx60567z3);
   ix10514z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0e1") 
       port map ( combout=>p_o_row(4), dataa=>row_count_2, datab=>
      row_count_3, datac=>row_count_4, datad=>row_count_1);
   ix9517z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c9c9") 
       port map ( combout=>p_o_row(3), dataa=>row_count_2, datab=>
      row_count_3, datac=>row_count_1);
   ix8520z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>p_o_row(2), dataa=>row_count_2, datab=>
      row_count_1);
   ix43221z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>NOT_rtlc19_PS6_n24, dataa=>v_5, datab=>v_7, datac
      =>nx43221z1, datad=>nx43221z2);
   ix64436z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8080") 
       port map ( combout=>nx64436z1, dataa=>col_i(7), datab=>nx64436z2, 
      datac=>nx64436z3);
   ix30960z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a2a2") 
       port map ( combout=>r1_9n1s1f2(7), dataa=>nx30960z1, datab=>v_2, 
      datac=>v_1);
   ix30960z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"a2a2") 
       port map ( combout=>r1_9n1s1f2(6), dataa=>nx30960z2, datab=>v_2, 
      datac=>v_1);
   ix30960z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"a2a2") 
       port map ( combout=>r1_9n1s1f2(5), dataa=>nx30960z3, datab=>v_2, 
      datac=>v_1);
   ix30960z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"a2a2") 
       port map ( combout=>r1_9n1s1f2(4), dataa=>nx30960z4, datab=>v_2, 
      datac=>v_1);
   ix30960z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"a2a2") 
       port map ( combout=>r1_9n1s1f2(3), dataa=>nx30960z5, datab=>v_2, 
      datac=>v_1);
   ix30960z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"a2a2") 
       port map ( combout=>r1_9n1s1f2(2), dataa=>nx30960z6, datab=>v_2, 
      datac=>v_1);
   ix30960z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"a2a2") 
       port map ( combout=>r1_9n1s1f2(1), dataa=>nx30960z7, datab=>v_2, 
      datac=>v_1);
   ix30960z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"a2a2") 
       port map ( combout=>r1_9n1s1f2(0), dataa=>nx30960z8, datab=>v_2, 
      datac=>v_1);
   ix9650z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0200") 
       port map ( combout=>r2_10n1s1f1(7), dataa=>e(7), datab=>v_2, datac=>
      v_1, datad=>v_3);
   ix9650z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0200") 
       port map ( combout=>r2_10n1s1f1(6), dataa=>e(6), datab=>v_2, datac=>
      v_1, datad=>v_3);
   ix9650z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0200") 
       port map ( combout=>r2_10n1s1f1(5), dataa=>e(5), datab=>v_2, datac=>
      v_1, datad=>v_3);
   ix9650z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"0200") 
       port map ( combout=>r2_10n1s1f1(4), dataa=>e(4), datab=>v_2, datac=>
      v_1, datad=>v_3);
   ix9650z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0200") 
       port map ( combout=>r2_10n1s1f1(3), dataa=>e(3), datab=>v_2, datac=>
      v_1, datad=>v_3);
   ix9650z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0200") 
       port map ( combout=>r2_10n1s1f1(2), dataa=>e(2), datab=>v_2, datac=>
      v_1, datad=>v_3);
   ix9650z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"0200") 
       port map ( combout=>r2_10n1s1f1(1), dataa=>e(1), datab=>v_2, datac=>
      v_1, datad=>v_3);
   ix9650z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"0200") 
       port map ( combout=>r2_10n1s1f1(0), dataa=>e(0), datab=>v_2, datac=>
      v_1, datad=>v_3);
   ix20740z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0e02") 
       port map ( combout=>r2_10n1s4f1(7), dataa=>f(7), datab=>nx20740z1, 
      datac=>nx20740z2, datad=>g(7));
   ix20740z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"0e02") 
       port map ( combout=>r2_10n1s4f1(6), dataa=>f(6), datab=>nx20740z1, 
      datac=>nx20740z2, datad=>g(6));
   ix20740z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"0e02") 
       port map ( combout=>r2_10n1s4f1(5), dataa=>f(5), datab=>nx20740z1, 
      datac=>nx20740z2, datad=>g(5));
   ix20740z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"0e02") 
       port map ( combout=>r2_10n1s4f1(4), dataa=>f(4), datab=>nx20740z1, 
      datac=>nx20740z2, datad=>g(4));
   ix20740z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"0e02") 
       port map ( combout=>r2_10n1s4f1(3), dataa=>f(3), datab=>nx20740z1, 
      datac=>nx20740z2, datad=>g(3));
   ix20740z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"0e02") 
       port map ( combout=>r2_10n1s4f1(2), dataa=>f(2), datab=>nx20740z1, 
      datac=>nx20740z2, datad=>g(2));
   ix20740z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"0e02") 
       port map ( combout=>r2_10n1s4f1(1), dataa=>f(1), datab=>nx20740z1, 
      datac=>nx20740z2, datad=>g(1));
   ix20740z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0e02") 
       port map ( combout=>r2_10n1s4f1(0), dataa=>f(0), datab=>nx20740z1, 
      datac=>nx20740z2, datad=>g(0));
   ix30960z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"0202") 
       port map ( combout=>nx30960z8, dataa=>e(0), datab=>v_2, datac=>v_1);
   ix30960z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0202") 
       port map ( combout=>nx30960z7, dataa=>e(1), datab=>v_2, datac=>v_1);
   ix30960z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"0202") 
       port map ( combout=>nx30960z6, dataa=>e(2), datab=>v_2, datac=>v_1);
   ix30960z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"0202") 
       port map ( combout=>nx30960z5, dataa=>e(3), datab=>v_2, datac=>v_1);
   ix30960z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"0202") 
       port map ( combout=>nx30960z4, dataa=>e(4), datab=>v_2, datac=>v_1);
   ix30960z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0202") 
       port map ( combout=>nx30960z3, dataa=>e(5), datab=>v_2, datac=>v_1);
   ix30960z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"0202") 
       port map ( combout=>nx30960z2, dataa=>e(6), datab=>v_2, datac=>v_1);
   ix30960z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0202") 
       port map ( combout=>nx30960z1, dataa=>e(7), datab=>v_2, datac=>v_1);

end main_unfold_1777 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity top_kirsch_logic is 
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
end top_kirsch_logic ;

architecture main of top_kirsch_logic is 
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
         p_Tx_Reg_14n6ss1_0 : OUT std_logic ;
         p_NOT_rtlcn2 : OUT std_logic ;
         p_nrst_int : IN std_logic ;
         px705 : IN std_logic) ;
   end component ;
   component kirsch_notri
      port (
         p_o_valid : OUT std_logic ;
         p_o_edge : OUT std_logic ;
         p_o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
         p_o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
         p_i_reset : IN std_logic ;
         p_i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
         p_i_valid_rtlc_747_or_76 : IN std_logic_vector (7 DOWNTO 7) ;
         p_o_row : OUT std_logic_vector (7 DOWNTO 0) ;
         p_i_clock : IN std_logic ;
         p_row_count_1 : OUT std_logic ;
         px705 : OUT std_logic) ;
   end component ;
   signal nrst_EXMPLR498, clk_EXMPLR499, rxflex_EXMPLR500: std_logic ;
   
   signal o_mode_dup0: std_logic_vector (1 DOWNTO 0) ;
   
   signal debug_led_red_EXMPLR592: std_logic_vector (16 DOWNTO 0) ;
   
   signal debug_led_grn_EXMPLR593: std_logic_vector (5 DOWNTO 0) ;
   
   signal pixavail: std_logic ;
   
   signal pixel: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_valid, kirschout: std_logic ;
   
   signal dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal rowcount_7, rowcount_6, rowcount_5, rowcount_4, rowcount_3, 
      rowcount_2, rowcount_0, nrst_int, clk_int, rxflex_int, 
      txflex_EXMPLR524, o_sevenseg_15_EXMPLR525: std_logic ;
   
   signal o_sevenseg_EXMPLR594: std_logic_vector (14 DOWNTO 0) ;
   
   signal o_mode_EXMPLR595: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_nrst_EXMPLR543, debug_sevenseg_0_7_EXMPLR544: std_logic ;
   
   signal debug_sevenseg_0_EXMPLR596: std_logic_vector (6 DOWNTO 0) ;
   
   signal debug_sevenseg_1_7_EXMPLR552: std_logic ;
   
   signal debug_sevenseg_1_EXMPLR597: std_logic_vector (6 DOWNTO 0) ;
   
   signal debug_sevenseg_2_7_EXMPLR560: std_logic ;
   
   signal debug_sevenseg_2_EXMPLR598: std_logic_vector (6 DOWNTO 0) ;
   
   signal debug_sevenseg_3_7_EXMPLR568: std_logic ;
   
   signal debug_sevenseg_3_EXMPLR599: std_logic_vector (6 DOWNTO 0) ;
   
   signal debug_sevenseg_4_7_EXMPLR576: std_logic ;
   
   signal debug_sevenseg_4_EXMPLR600: std_logic_vector (6 DOWNTO 0) ;
   
   signal debug_sevenseg_5_7_EXMPLR584: std_logic ;
   
   signal debug_sevenseg_5_EXMPLR601: std_logic_vector (6 DOWNTO 0) ;
   
   signal o_nrst_dup0, debug_num_0_0, o_sevenseg_dup0_7, nx59584z1, 
      nx60581z1, nx61578z1, nx63572z1, nx25683z1, nx26680z1, nx27677z1, 
      nx29671z1, nx57590z1, nx58587z1, nx62575z1, nx30z1, nx1027z1, 
      nx28674z1, Tx_Reg_14n6ss1_0_dup_4, NOT_rtlcn2_dup_5, 
      row_count_1_dup_10, nx41851z1, nx42848z1, nx43845z1, nx44842z1, 
      nx45839z1, nx46836z1, nx47833z1, nx49827z1, nx50824z1, nx62540z1, 
      nx63537z1, nx64534z1, nx65531z1, nx992z1, nx21351z1, nx21351z2, 
      nx35935z1: std_logic ;
   
   signal DANGLING : std_logic_vector (1 downto 0 );

begin
   nrst_EXMPLR498 <= nrst ;
   clk_EXMPLR499 <= clk ;
   rxflex_EXMPLR500 <= rxflex ;
   txflex <= txflex_EXMPLR524 ;
   o_sevenseg(15) <= o_sevenseg_15_EXMPLR525 ;
   o_sevenseg(14) <= o_sevenseg_EXMPLR594(14) ;
   o_sevenseg(13) <= o_sevenseg_EXMPLR594(13) ;
   o_sevenseg(12) <= o_sevenseg_EXMPLR594(12) ;
   o_sevenseg(11) <= o_sevenseg_EXMPLR594(11) ;
   o_sevenseg(10) <= o_sevenseg_EXMPLR594(10) ;
   o_sevenseg(9) <= o_sevenseg_EXMPLR594(9) ;
   o_sevenseg(8) <= o_sevenseg_EXMPLR594(8) ;
   o_sevenseg(7) <= o_sevenseg_EXMPLR594(7) ;
   o_sevenseg(6) <= o_sevenseg_EXMPLR594(6) ;
   o_sevenseg(5) <= o_sevenseg_EXMPLR594(5) ;
   o_sevenseg(4) <= o_sevenseg_EXMPLR594(4) ;
   o_sevenseg(3) <= o_sevenseg_EXMPLR594(3) ;
   o_sevenseg(2) <= o_sevenseg_EXMPLR594(2) ;
   o_sevenseg(1) <= o_sevenseg_EXMPLR594(1) ;
   o_sevenseg(0) <= o_sevenseg_EXMPLR594(0) ;
   o_mode(1) <= o_mode_EXMPLR595(1) ;
   o_mode(0) <= o_mode_EXMPLR595(0) ;
   o_nrst <= o_nrst_EXMPLR543 ;
   debug_led_red(16) <= debug_led_red_EXMPLR592(16) ;
   debug_led_red(15) <= debug_led_red_EXMPLR592(15) ;
   debug_led_red(14) <= debug_led_red_EXMPLR592(14) ;
   debug_led_red(13) <= debug_led_red_EXMPLR592(13) ;
   debug_led_red(12) <= debug_led_red_EXMPLR592(12) ;
   debug_led_red(11) <= debug_led_red_EXMPLR592(11) ;
   debug_led_red(10) <= debug_led_red_EXMPLR592(10) ;
   debug_led_red(9) <= debug_led_red_EXMPLR592(9) ;
   debug_led_red(8) <= debug_led_red_EXMPLR592(8) ;
   debug_led_red(7) <= debug_led_red_EXMPLR592(7) ;
   debug_led_red(6) <= debug_led_red_EXMPLR592(6) ;
   debug_led_red(5) <= debug_led_red_EXMPLR592(5) ;
   debug_led_red(4) <= debug_led_red_EXMPLR592(4) ;
   debug_led_red(3) <= debug_led_red_EXMPLR592(3) ;
   debug_led_red(2) <= debug_led_red_EXMPLR592(2) ;
   debug_led_red(1) <= debug_led_red_EXMPLR592(1) ;
   debug_led_red(0) <= debug_led_red_EXMPLR592(0) ;
   debug_led_grn(5) <= debug_led_grn_EXMPLR593(5) ;
   debug_led_grn(4) <= debug_led_grn_EXMPLR593(4) ;
   debug_led_grn(3) <= debug_led_grn_EXMPLR593(3) ;
   debug_led_grn(2) <= debug_led_grn_EXMPLR593(2) ;
   debug_led_grn(1) <= debug_led_grn_EXMPLR593(1) ;
   debug_led_grn(0) <= debug_led_grn_EXMPLR593(0) ;
   debug_sevenseg_0(7) <= debug_sevenseg_0_7_EXMPLR544 ;
   debug_sevenseg_0(6) <= debug_sevenseg_0_EXMPLR596(6) ;
   debug_sevenseg_0(5) <= debug_sevenseg_0_EXMPLR596(5) ;
   debug_sevenseg_0(4) <= debug_sevenseg_0_EXMPLR596(4) ;
   debug_sevenseg_0(3) <= debug_sevenseg_0_EXMPLR596(3) ;
   debug_sevenseg_0(2) <= debug_sevenseg_0_EXMPLR596(2) ;
   debug_sevenseg_0(1) <= debug_sevenseg_0_EXMPLR596(1) ;
   debug_sevenseg_0(0) <= debug_sevenseg_0_EXMPLR596(0) ;
   debug_sevenseg_1(7) <= debug_sevenseg_1_7_EXMPLR552 ;
   debug_sevenseg_1(6) <= debug_sevenseg_1_EXMPLR597(6) ;
   debug_sevenseg_1(5) <= debug_sevenseg_1_EXMPLR597(5) ;
   debug_sevenseg_1(4) <= debug_sevenseg_1_EXMPLR597(4) ;
   debug_sevenseg_1(3) <= debug_sevenseg_1_EXMPLR597(3) ;
   debug_sevenseg_1(2) <= debug_sevenseg_1_EXMPLR597(2) ;
   debug_sevenseg_1(1) <= debug_sevenseg_1_EXMPLR597(1) ;
   debug_sevenseg_1(0) <= debug_sevenseg_1_EXMPLR597(0) ;
   debug_sevenseg_2(7) <= debug_sevenseg_2_7_EXMPLR560 ;
   debug_sevenseg_2(6) <= debug_sevenseg_2_EXMPLR598(6) ;
   debug_sevenseg_2(5) <= debug_sevenseg_2_EXMPLR598(5) ;
   debug_sevenseg_2(4) <= debug_sevenseg_2_EXMPLR598(4) ;
   debug_sevenseg_2(3) <= debug_sevenseg_2_EXMPLR598(3) ;
   debug_sevenseg_2(2) <= debug_sevenseg_2_EXMPLR598(2) ;
   debug_sevenseg_2(1) <= debug_sevenseg_2_EXMPLR598(1) ;
   debug_sevenseg_2(0) <= debug_sevenseg_2_EXMPLR598(0) ;
   debug_sevenseg_3(7) <= debug_sevenseg_3_7_EXMPLR568 ;
   debug_sevenseg_3(6) <= debug_sevenseg_3_EXMPLR599(6) ;
   debug_sevenseg_3(5) <= debug_sevenseg_3_EXMPLR599(5) ;
   debug_sevenseg_3(4) <= debug_sevenseg_3_EXMPLR599(4) ;
   debug_sevenseg_3(3) <= debug_sevenseg_3_EXMPLR599(3) ;
   debug_sevenseg_3(2) <= debug_sevenseg_3_EXMPLR599(2) ;
   debug_sevenseg_3(1) <= debug_sevenseg_3_EXMPLR599(1) ;
   debug_sevenseg_3(0) <= debug_sevenseg_3_EXMPLR599(0) ;
   debug_sevenseg_4(7) <= debug_sevenseg_4_7_EXMPLR576 ;
   debug_sevenseg_4(6) <= debug_sevenseg_4_EXMPLR600(6) ;
   debug_sevenseg_4(5) <= debug_sevenseg_4_EXMPLR600(5) ;
   debug_sevenseg_4(4) <= debug_sevenseg_4_EXMPLR600(4) ;
   debug_sevenseg_4(3) <= debug_sevenseg_4_EXMPLR600(3) ;
   debug_sevenseg_4(2) <= debug_sevenseg_4_EXMPLR600(2) ;
   debug_sevenseg_4(1) <= debug_sevenseg_4_EXMPLR600(1) ;
   debug_sevenseg_4(0) <= debug_sevenseg_4_EXMPLR600(0) ;
   debug_sevenseg_5(7) <= debug_sevenseg_5_7_EXMPLR584 ;
   debug_sevenseg_5(6) <= debug_sevenseg_5_EXMPLR601(6) ;
   debug_sevenseg_5(5) <= debug_sevenseg_5_EXMPLR601(5) ;
   debug_sevenseg_5(4) <= debug_sevenseg_5_EXMPLR601(4) ;
   debug_sevenseg_5(3) <= debug_sevenseg_5_EXMPLR601(3) ;
   debug_sevenseg_5(2) <= debug_sevenseg_5_EXMPLR601(2) ;
   debug_sevenseg_5(1) <= debug_sevenseg_5_EXMPLR601(1) ;
   debug_sevenseg_5(0) <= debug_sevenseg_5_EXMPLR601(0) ;
   u_uw_uart : uw_uart port map ( clk=>clk_int, rst=>o_nrst_dup0, kirschout
      =>kirschout, kirschdir(2)=>dir(2), kirschdir(1)=>dir(1), kirschdir(0)
      =>dir(0), o_valid=>o_valid, i_mode(1)=>o_mode_dup0(1), i_mode(0)=>
      o_mode_dup0(0), datain(7)=>pixel(7), datain(6)=>pixel(6), datain(5)=>
      pixel(5), datain(4)=>pixel(4), datain(3)=>pixel(3), datain(2)=>
      pixel(2), datain(1)=>pixel(1), datain(0)=>pixel(0), o_pixavail=>
      pixavail, rxflex=>rxflex_int, txflex=>DANGLING(0), p_Tx_Reg_14n6ss1_0
      =>Tx_Reg_14n6ss1_0_dup_4, p_NOT_rtlcn2=>NOT_rtlcn2_dup_5, p_nrst_int=>
      nrst_int, px705=>nx35935z1);
   u_kirsch : kirsch_notri port map ( p_o_valid=>o_valid, p_o_edge=>
      kirschout, p_o_dir(2)=>dir(2), p_o_dir(1)=>dir(1), p_o_dir(0)=>dir(0), 
      p_o_mode(1)=>o_mode_dup0(1), p_o_mode(0)=>o_mode_dup0(0), p_i_reset=>
      o_nrst_dup0, p_i_pixel(7)=>pixel(7), p_i_pixel(6)=>pixel(6), 
      p_i_pixel(5)=>pixel(5), p_i_pixel(4)=>pixel(4), p_i_pixel(3)=>pixel(3), 
      p_i_pixel(2)=>pixel(2), p_i_pixel(1)=>pixel(1), p_i_pixel(0)=>pixel(0), 
      p_i_valid_rtlc_747_or_76(7)=>pixavail, p_o_row(7)=>rowcount_7, 
      p_o_row(6)=>rowcount_6, p_o_row(5)=>rowcount_5, p_o_row(4)=>rowcount_4, 
      p_o_row(3)=>rowcount_3, p_o_row(2)=>rowcount_2, p_o_row(1)=>DANGLING(1
      ), p_o_row(0)=>rowcount_0, p_i_clock=>clk_int, p_row_count_1=>
      row_count_1_dup_10, px705=>nx35935z1);
   o_nrst_dup0 <= NOT nrst_int;
   debug_num_0_0 <= '0';
   o_sevenseg_dup0_7 <= '1';
   nx21351z1 <= NOT nx21351z2;
   u_kirsch_debug_led_red_triBus3_9 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR592(9), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_8 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR592(8), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR592(7), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR592(6), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR592(5), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR592(4), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR592(3), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR592(2), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_16 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR592(16), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_15 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR592(15), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_14 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR592(14), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_13 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR592(13), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_12 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR592(12), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_11 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR592(11), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_10 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR592(10), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR592(1), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_red_triBus3_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR592(0), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_grn_triBus4_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR593(5), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_grn_triBus4_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR593(4), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_grn_triBus4_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR593(3), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_grn_triBus4_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR593(2), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_grn_triBus4_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR593(1), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   u_kirsch_debug_led_grn_triBus4_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR593(0), datain=>debug_num_0_0, 
      oe=>debug_num_0_0);
   rxflex_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>rxflex_int, padio=>rxflex_EXMPLR500);
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
       port map ( padio=>o_sevenseg_EXMPLR594(7), datain=>o_sevenseg_dup0_7
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
       port map ( padio=>o_sevenseg_15_EXMPLR525, datain=>o_sevenseg_dup0_7
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
       port map ( padio=>o_nrst_EXMPLR543, datain=>o_nrst_dup0);
   o_mode_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR595(1), datain=>o_mode_dup0(1));
   o_mode_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR595(0), datain=>o_mode_dup0(0));
   nrst_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>nrst_int, padio=>nrst_EXMPLR498);
   ix21351z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>txflex_EXMPLR524, datain=>nx21351z1);
   ix992z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR594(14), datain=>nx992z1);
   ix65531z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR594(13), datain=>nx65531z1);
   ix64534z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR594(12), datain=>nx64534z1);
   ix63537z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR594(11), datain=>nx63537z1);
   ix62540z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR594(10), datain=>nx62540z1);
   ix50824z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR594(9), datain=>nx50824z1);
   ix49827z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR594(8), datain=>nx49827z1);
   ix47833z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR594(6), datain=>nx47833z1);
   ix46836z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR594(5), datain=>nx46836z1);
   ix45839z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR594(4), datain=>nx45839z1);
   ix44842z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR594(3), datain=>nx44842z1);
   ix43845z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR594(2), datain=>nx43845z1);
   ix42848z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR594(1), datain=>nx42848z1);
   ix41851z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR594(0), datain=>nx41851z1);
   debug_sevenseg_5_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_7_EXMPLR584, datain=>
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
       port map ( padio=>debug_sevenseg_5_EXMPLR601(6), datain=>
      debug_num_0_0);
   debug_sevenseg_5_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR601(5), datain=>
      debug_num_0_0);
   debug_sevenseg_5_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR601(4), datain=>
      debug_num_0_0);
   debug_sevenseg_5_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR601(3), datain=>
      debug_num_0_0);
   debug_sevenseg_5_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR601(2), datain=>
      debug_num_0_0);
   debug_sevenseg_5_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR601(1), datain=>
      debug_num_0_0);
   debug_sevenseg_5_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_5_EXMPLR601(0), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_4_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_7_EXMPLR576, datain=>
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
       port map ( padio=>debug_sevenseg_4_EXMPLR600(6), datain=>
      debug_num_0_0);
   debug_sevenseg_4_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_EXMPLR600(5), datain=>
      debug_num_0_0);
   debug_sevenseg_4_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_EXMPLR600(4), datain=>
      debug_num_0_0);
   debug_sevenseg_4_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_EXMPLR600(3), datain=>
      debug_num_0_0);
   debug_sevenseg_4_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_EXMPLR600(2), datain=>
      debug_num_0_0);
   debug_sevenseg_4_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_EXMPLR600(1), datain=>
      debug_num_0_0);
   debug_sevenseg_4_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_4_EXMPLR600(0), datain=>
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
       port map ( padio=>debug_sevenseg_3_7_EXMPLR568, datain=>
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
       port map ( padio=>debug_sevenseg_3_EXMPLR599(6), datain=>
      debug_num_0_0);
   debug_sevenseg_3_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_EXMPLR599(5), datain=>
      debug_num_0_0);
   debug_sevenseg_3_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_EXMPLR599(4), datain=>
      debug_num_0_0);
   debug_sevenseg_3_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_EXMPLR599(3), datain=>
      debug_num_0_0);
   debug_sevenseg_3_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_EXMPLR599(2), datain=>
      debug_num_0_0);
   debug_sevenseg_3_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_EXMPLR599(1), datain=>
      debug_num_0_0);
   debug_sevenseg_3_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_3_EXMPLR599(0), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_2_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_7_EXMPLR560, datain=>
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
       port map ( padio=>debug_sevenseg_2_EXMPLR598(6), datain=>
      debug_num_0_0);
   debug_sevenseg_2_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_EXMPLR598(5), datain=>
      debug_num_0_0);
   debug_sevenseg_2_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_EXMPLR598(4), datain=>
      debug_num_0_0);
   debug_sevenseg_2_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_EXMPLR598(3), datain=>
      debug_num_0_0);
   debug_sevenseg_2_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_EXMPLR598(2), datain=>
      debug_num_0_0);
   debug_sevenseg_2_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_EXMPLR598(1), datain=>
      debug_num_0_0);
   debug_sevenseg_2_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_2_EXMPLR598(0), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_1_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_7_EXMPLR552, datain=>
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
       port map ( padio=>debug_sevenseg_1_EXMPLR597(6), datain=>
      debug_num_0_0);
   debug_sevenseg_1_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_EXMPLR597(5), datain=>
      debug_num_0_0);
   debug_sevenseg_1_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_EXMPLR597(4), datain=>
      debug_num_0_0);
   debug_sevenseg_1_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_EXMPLR597(3), datain=>
      debug_num_0_0);
   debug_sevenseg_1_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_EXMPLR597(2), datain=>
      debug_num_0_0);
   debug_sevenseg_1_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_EXMPLR597(1), datain=>
      debug_num_0_0);
   debug_sevenseg_1_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_1_EXMPLR597(0), datain=>
      o_sevenseg_dup0_7);
   debug_sevenseg_0_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_7_EXMPLR544, datain=>
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
       port map ( padio=>debug_sevenseg_0_EXMPLR596(6), datain=>
      debug_num_0_0);
   debug_sevenseg_0_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_EXMPLR596(5), datain=>
      debug_num_0_0);
   debug_sevenseg_0_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_EXMPLR596(4), datain=>
      debug_num_0_0);
   debug_sevenseg_0_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_EXMPLR596(3), datain=>
      debug_num_0_0);
   debug_sevenseg_0_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_EXMPLR596(2), datain=>
      debug_num_0_0);
   debug_sevenseg_0_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_EXMPLR596(1), datain=>
      debug_num_0_0);
   debug_sevenseg_0_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_sevenseg_0_EXMPLR596(0), datain=>
      o_sevenseg_dup0_7);
   clk_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>clk_int, padio=>clk_EXMPLR499);
   ix62575z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"48e4") 
       port map ( combout=>nx62575z1, dataa=>rowcount_0, datab=>rowcount_2, 
      datac=>rowcount_3, datad=>row_count_1_dup_10);
   ix58587z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"820b") 
       port map ( combout=>nx58587z1, dataa=>rowcount_0, datab=>rowcount_2, 
      datac=>rowcount_3, datad=>row_count_1_dup_10);
   ix57590z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4308") 
       port map ( combout=>nx57590z1, dataa=>rowcount_0, datab=>rowcount_2, 
      datac=>rowcount_3, datad=>row_count_1_dup_10);
   ix63572z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8620") 
       port map ( combout=>nx63572z1, dataa=>rowcount_0, datab=>rowcount_2, 
      datac=>rowcount_3, datad=>row_count_1_dup_10);
   ix28674z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a4c8") 
       port map ( combout=>nx28674z1, dataa=>rowcount_7, datab=>rowcount_6, 
      datac=>rowcount_5, datad=>rowcount_4);
   ix1027z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5910") 
       port map ( combout=>nx1027z1, dataa=>rowcount_7, datab=>rowcount_6, 
      datac=>rowcount_5, datad=>rowcount_4);
   ix30z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4109") 
       port map ( combout=>nx30z1, dataa=>rowcount_7, datab=>rowcount_6, 
      datac=>rowcount_5, datad=>rowcount_4);
   ix29671z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2904") 
       port map ( combout=>nx29671z1, dataa=>rowcount_7, datab=>rowcount_6, 
      datac=>rowcount_5, datad=>rowcount_4);
   ix27677z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8098") 
       port map ( combout=>nx27677z1, dataa=>rowcount_7, datab=>rowcount_6, 
      datac=>rowcount_5, datad=>rowcount_4);
   ix26680z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c324") 
       port map ( combout=>nx26680z1, dataa=>rowcount_7, datab=>rowcount_6, 
      datac=>rowcount_5, datad=>rowcount_4);
   ix25683z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5704") 
       port map ( combout=>nx25683z1, dataa=>rowcount_7, datab=>rowcount_6, 
      datac=>rowcount_5, datad=>rowcount_4);
   ix61578z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"40c1") 
       port map ( combout=>nx61578z1, dataa=>rowcount_0, datab=>rowcount_2, 
      datac=>rowcount_3, datad=>row_count_1_dup_10);
   ix60581z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2698") 
       port map ( combout=>nx60581z1, dataa=>rowcount_0, datab=>rowcount_2, 
      datac=>rowcount_3, datad=>row_count_1_dup_10);
   ix59584z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2e0a") 
       port map ( combout=>nx59584z1, dataa=>rowcount_0, datab=>rowcount_2, 
      datac=>rowcount_3, datad=>row_count_1_dup_10);
end main ;

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
  logic : entity work.top_kirsch_logic
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

