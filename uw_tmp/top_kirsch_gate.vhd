
-- 
-- Definition of  top_kirsch
-- 
--      03/19/15 16:49:36
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_aclear_clock_0_11 is 
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
end counter_up_sclear_aclear_clock_0_11 ;

architecture INTERFACE of counter_up_sclear_aclear_clock_0_11 is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component inc_11u_11u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx26, nx27, nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, 
      nx36, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, nx46, nx47, 
      nx48, nx49, nx50, nx51, nx52, nx53, nx54, nx55, nx56, nx57, nx58, PWR, 
      NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(10) <= nx27 ;
   q(9) <= nx29 ;
   q(8) <= nx31 ;
   q(7) <= nx33 ;
   q(6) <= nx35 ;
   q(5) <= nx37 ;
   q(4) <= nx39 ;
   q(3) <= nx41 ;
   q(2) <= nx43 ;
   q(1) <= nx45 ;
   q(0) <= nx47 ;
   GND <= '0' ;
   DFFPC (nx26,GND,aclear,clock,nx27) ;
   DFFPC (nx28,GND,aclear,clock,nx29) ;
   DFFPC (nx30,GND,aclear,clock,nx31) ;
   DFFPC (nx32,GND,aclear,clock,nx33) ;
   DFFPC (nx34,GND,aclear,clock,nx35) ;
   DFFPC (nx36,GND,aclear,clock,nx37) ;
   DFFPC (nx38,GND,aclear,clock,nx39) ;
   DFFPC (nx40,GND,aclear,clock,nx41) ;
   DFFPC (nx42,GND,aclear,clock,nx43) ;
   DFFPC (nx44,GND,aclear,clock,nx45) ;
   DFFPC (nx46,GND,aclear,clock,nx47) ;
   inc : inc_11u_11u_0_0 port map ( cin=>PWR, a(10)=>nx27, a(9)=>nx29, a(8)
      =>nx31, a(7)=>nx33, a(6)=>nx35, a(5)=>nx37, a(4)=>nx39, a(3)=>nx41, 
      a(2)=>nx43, a(1)=>nx45, a(0)=>nx47, d(10)=>nx48, d(9)=>nx49, d(8)=>
      nx50, d(7)=>nx51, d(6)=>nx52, d(5)=>nx53, d(4)=>nx54, d(3)=>nx55, d(2)
      =>nx56, d(1)=>nx57, d(0)=>nx58, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx26 <= nx48 AND NOT_SCLEAR ;
   nx28 <= nx49 AND NOT_SCLEAR ;
   nx30 <= nx50 AND NOT_SCLEAR ;
   nx32 <= nx51 AND NOT_SCLEAR ;
   nx34 <= nx52 AND NOT_SCLEAR ;
   nx36 <= nx53 AND NOT_SCLEAR ;
   nx38 <= nx54 AND NOT_SCLEAR ;
   nx40 <= nx55 AND NOT_SCLEAR ;
   nx42 <= nx56 AND NOT_SCLEAR ;
   nx44 <= nx57 AND NOT_SCLEAR ;
   nx46 <= nx58 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_aclear_clock_0_12 is 
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
end counter_up_sclear_aclear_clock_0_12 ;

architecture INTERFACE of counter_up_sclear_aclear_clock_0_12 is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component inc_12u_12u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, nx36, nx37, 
      nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, nx46, nx47, nx48, nx49, 
      nx50, nx51, nx52, nx53, nx54, nx55, nx56, nx57, nx58, nx59, nx60, nx61, 
      nx62, nx63, PWR, NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(11) <= nx29 ;
   q(10) <= nx31 ;
   q(9) <= nx33 ;
   q(8) <= nx35 ;
   q(7) <= nx37 ;
   q(6) <= nx39 ;
   q(5) <= nx41 ;
   q(4) <= nx43 ;
   q(3) <= nx45 ;
   q(2) <= nx47 ;
   q(1) <= nx49 ;
   q(0) <= nx51 ;
   GND <= '0' ;
   DFFPC (nx28,GND,aclear,clock,nx29) ;
   DFFPC (nx30,GND,aclear,clock,nx31) ;
   DFFPC (nx32,GND,aclear,clock,nx33) ;
   DFFPC (nx34,GND,aclear,clock,nx35) ;
   DFFPC (nx36,GND,aclear,clock,nx37) ;
   DFFPC (nx38,GND,aclear,clock,nx39) ;
   DFFPC (nx40,GND,aclear,clock,nx41) ;
   DFFPC (nx42,GND,aclear,clock,nx43) ;
   DFFPC (nx44,GND,aclear,clock,nx45) ;
   DFFPC (nx46,GND,aclear,clock,nx47) ;
   DFFPC (nx48,GND,aclear,clock,nx49) ;
   DFFPC (nx50,GND,aclear,clock,nx51) ;
   inc : inc_12u_12u_0_0 port map ( cin=>PWR, a(11)=>nx29, a(10)=>nx31, a(9)
      =>nx33, a(8)=>nx35, a(7)=>nx37, a(6)=>nx39, a(5)=>nx41, a(4)=>nx43, 
      a(3)=>nx45, a(2)=>nx47, a(1)=>nx49, a(0)=>nx51, d(11)=>nx52, d(10)=>
      nx53, d(9)=>nx54, d(8)=>nx55, d(7)=>nx56, d(6)=>nx57, d(5)=>nx58, d(4)
      =>nx59, d(3)=>nx60, d(2)=>nx61, d(1)=>nx62, d(0)=>nx63, cout=>DANGLING
      (0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx28 <= nx52 AND NOT_SCLEAR ;
   nx30 <= nx53 AND NOT_SCLEAR ;
   nx32 <= nx54 AND NOT_SCLEAR ;
   nx34 <= nx55 AND NOT_SCLEAR ;
   nx36 <= nx56 AND NOT_SCLEAR ;
   nx38 <= nx57 AND NOT_SCLEAR ;
   nx40 <= nx58 AND NOT_SCLEAR ;
   nx42 <= nx59 AND NOT_SCLEAR ;
   nx44 <= nx60 AND NOT_SCLEAR ;
   nx46 <= nx61 AND NOT_SCLEAR ;
   nx48 <= nx62 AND NOT_SCLEAR ;
   nx50 <= nx63 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (3 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (3 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4 ;

architecture INTERFACE of counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4
    is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component dec_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx13, nx16, nx19, nx20, nx21, nx22, nx23, nx24, nx25, nx26, 
      nx27, nx28, nx29, nx30: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(3) <= nx20 ;
   q(2) <= nx22 ;
   q(1) <= nx24 ;
   q(0) <= nx26 ;
   GND <= '0' ;
   nx13 <= cnt_en OR sload ;
   nx16 <= nx13 AND clk_en ;
   DFFPCE (nx19,GND,aclear,nx16,clock,nx20) ;
   DFFPCE (nx21,GND,aclear,nx16,clock,nx22) ;
   DFFPCE (nx23,GND,aclear,nx16,clock,nx24) ;
   DFFPCE (nx25,GND,aclear,nx16,clock,nx26) ;
   dec : dec_4u_4u_0_0 port map ( cin=>GND, a(3)=>nx20, a(2)=>nx22, a(1)=>
      nx24, a(0)=>nx26, d(3)=>nx27, d(2)=>nx28, d(1)=>nx29, d(0)=>nx30, cout
      =>DANGLING(0));
   nx19 <= data(3) when sload = '1' else nx27 ;
   nx21 <= data(2) when sload = '1' else nx28 ;
   nx23 <= data(1) when sload = '1' else nx29 ;
   nx25 <= data(0) when sload = '1' else nx30 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_aclear_clock_clk_en_0_4 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (3 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (3 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_aclear_clock_clk_en_0_4 ;

architecture INTERFACE of counter_up_sclear_aclear_clock_clk_en_0_4 is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx13, nx14, nx15, nx16, nx17, nx18, nx19, nx20, nx21, nx22, 
      nx23, nx24, PWR, NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(3) <= nx14 ;
   q(2) <= nx16 ;
   q(1) <= nx18 ;
   q(0) <= nx20 ;
   GND <= '0' ;
   DFFPCE (nx13,GND,aclear,clk_en,clock,nx14) ;
   DFFPCE (nx15,GND,aclear,clk_en,clock,nx16) ;
   DFFPCE (nx17,GND,aclear,clk_en,clock,nx18) ;
   DFFPCE (nx19,GND,aclear,clk_en,clock,nx20) ;
   inc : inc_4u_4u_0_0 port map ( cin=>PWR, a(3)=>nx14, a(2)=>nx16, a(1)=>
      nx18, a(0)=>nx20, d(3)=>nx21, d(2)=>nx22, d(1)=>nx23, d(0)=>nx24, cout
      =>DANGLING(0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx13 <= nx21 AND NOT_SCLEAR ;
   nx15 <= nx22 AND NOT_SCLEAR ;
   nx17 <= nx23 AND NOT_SCLEAR ;
   nx19 <= nx24 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

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
      RxRDY : OUT std_logic) ;
end UARTS ;

architecture RTL_unfold_1358 of UARTS is 
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component select_3_3
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component mux_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component mux_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_sclear_aclear_clock_0_11
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
   component counter_up_sclear_aclear_clock_0_12
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
   component counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (3 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (3 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_sclear_aclear_clock_clk_en_0_4
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (3 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (3 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component eq_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component eq_9u_9u
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   signal RxRDY_EXMPLR98: std_logic ;
   
   signal Tx_Reg: std_logic_vector (8 DOWNTO 1) ;
   
   signal GND: std_logic ;
   
   signal Rx_Reg: std_logic_vector (7 DOWNTO 0) ;
   
   signal TxDivisor_5: std_logic ;
   
   signal RxDiv: std_logic_vector (10 DOWNTO 0) ;
   
   signal TxDiv: std_logic_vector (11 DOWNTO 0) ;
   
   signal TopTx, TopRx: std_logic ;
   
   signal TxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal RxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal Rx_r: std_logic ;
   
   signal TxFSM: std_logic_vector (1 DOWNTO 0) ;
   
   signal RxFSM_6, RxFSM_5, RxFSM_3, RxFSM_2, RxFSM_1, RxFSM_0, PWR, 
      rtlc8n73: std_logic ;
   
   signal Tx_Reg_14n6ss1: std_logic_vector (8 DOWNTO 0) ;
   
   signal not_LD, not_rtlcs3, rtlc14n164, rtlc14n168, rtlc14n219, 
      not_TxFSM_1, not_rtlcn0, not_TopTx, rtlc14n224, rtlc14_X_0_n225, 
      rtlc14n235, not_rtlc14_X_0_n225, rtlc14n290, not_rtlcn2, 
      not_rtlc14n168, not_rtlcn4, not_Rx, rtlc17n303, rtlc17n308, not_TopRx, 
      rtlc17n359, rtlc17_X_0_n360, not_rtlc17_X_0_n360, rtlc17n405, 
      not_rtlc17n405, rtlc17n442, not_rtlc17n308, rtlc17n459, rtlc17n460, 
      not_rtlcn6, rtlc17n474, not_rtlc17n474, rtlcn0, rtlcn2, rtlcn4, rtlcn6, 
      not_TxFSM_0, rtlcn31, rtlcn37, rtlcn42, rtlcn47, rtlcn51, rtlcn57, 
      rtlcn75, rtlcn76, not_rtlcn118, not_RxFSM_0, rtlcn96, not_rtlcs5, 
      not_Rx_r, rtlcn99, rtlcn100, rtlcn101, rtlcn102, not_rtlc14n290, 
      rtlcn118, rtlcn119, not_rtlcn75, not_rtlcn76, rtlcn122, rtlcs0, rtlcs1, 
      rtlcs3, rtlcs4, rtlcs5, not_RxBitCnt_2, not_RxBitCnt_1, not_RxBitCnt_0, 
      not_RxDiv_9, not_RxDiv_5, not_RxDiv_1, not_RxFSM_5, not_TxDiv_10, 
      not_TxDiv_6, not_TxDiv_2, not_TxBitCnt_3, not_TxBitCnt_2, 
      not_TxBitCnt_1, rtlcs6, rtlcs7, rtlcn142: std_logic ;
   
   signal DANGLING : std_logic_vector (26 downto 0 );

begin
   TxBusy <= GND ;
   RxRDY <= RxRDY_EXMPLR98 ;
   GND <= '0' ;
   PWR <= '1' ;
   rtlc8n73 <= RxFSM_0 OR rtlcs0 ;
   rtlc14n290 <= rtlcs4 OR rtlc14n219 ;
   rtlc14n164 <= not_TopTx OR not_rtlcs3 ;
   not_TopTx <= NOT TopTx ;
   rtlc14n224 <= not_TopTx AND TxFSM(1) ;
   rtlc14n219 <= TxFSM(1) AND TxFSM(0) ;
   rtlc14_109_or_0 : or_3u_3u port map ( a(2)=>rtlc14n219, a(1)=>not_rtlcn0, 
      a(0)=>rtlc14n224, d=>rtlc14_X_0_n225);
   not_rtlc14_X_0_n225 <= NOT rtlc14_X_0_n225 ;
   not_TxFSM_1 <= NOT TxFSM(1) ;
   rtlc14n235 <= TopTx AND not_TxFSM_1 ;
   not_rtlcs3 <= NOT rtlcs3 ;
   rtlc17n405 <= RxFSM_5 OR RxFSM_6 ;
   not_rtlc17n405 <= NOT rtlc17n405 ;
   rtlc17n474 <= RxFSM_0 OR RxFSM_3 ;
   not_rtlc17n474 <= NOT rtlc17n474 ;
   rtlc17n303 <= not_TopRx OR not_Rx_r ;
   rtlc17n359 <= not_TopRx AND RxFSM_3 ;
   not_rtlc17_X_0_n360 <= NOT rtlc17_X_0_n360 ;
   not_Rx <= NOT Rx ;
   rtlc17_X_0_n360 <= not_rtlc17n474 OR rtlc17n359 ;
   not_rtlcn0 <= NOT rtlcn0 ;
   rtlc_48_select_1 : select_3_3 port map ( a(2)=>RxFSM_0, a(1)=>
      not_rtlcn118, a(0)=>RxFSM_6, b(2)=>Rx_r, b(1)=>not_TopRx, b(0)=>not_Rx, 
      d=>rtlcn6);
   Tx_Reg_mux_14i1 : mux_3u_3u port map ( a(2)=>Tx_Reg(1), a(1)=>GND, a(0)=>
      PWR, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>TxFSM(0), d=>Tx_Reg_14n6ss1(0));
   rtlc_92_mux_3 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_TopTx, a(1)=>
      PWR, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>
      TxFSM(0), d=>rtlc14n168);
   rtlc_93_mux_4 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_TopTx, a(1)=>
      not_TopTx, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>
      TxFSM(0), d=>rtlcn2);
   rtlc_94_mux_5 : mux_4u_4u port map ( a(3)=>not_TopTx, a(2)=>rtlc14n164, 
      a(1)=>not_TopTx, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), 
      b(0)=>TxFSM(0), d=>rtlcn4);
   not_LD <= NOT LD ;
   not_TopRx <= NOT TopRx ;
   not_RxFSM_0 <= NOT RxFSM_0 ;
   rtlcn96 <= RxFSM_5 AND not_TopRx ;
   rtlcn76 <= not_rtlc17n405 OR rtlcn96 ;
   rtlcn75 <= RxFSM_5 AND TopRx ;
   not_TxFSM_0 <= NOT TxFSM(0) ;
   not_rtlcs5 <= NOT rtlcs5 ;
   rtlcn31 <= not_rtlcs5 AND RxFSM_2 ;
   not_Rx_r <= NOT Rx_r ;
   rtlcn99 <= not_Rx_r AND RxFSM_1 ;
   rtlcn37 <= RxFSM_3 OR rtlcn99 ;
   rtlcn100 <= RxFSM_5 AND Rx_r ;
   rtlcn42 <= RxFSM_6 OR rtlcn100 ;
   rtlcn47 <= rtlcs5 AND RxFSM_2 ;
   rtlcn51 <= not_RxFSM_0 AND rtlcs0 ;
   rtlcn101 <= RxFSM_5 AND not_Rx_r ;
   rtlcn102 <= Rx_r AND RxFSM_1 ;
   rtlcn57 <= rtlcn101 OR rtlcn102 ;
   not_rtlc14n290 <= NOT rtlc14n290 ;
   not_rtlcn118 <= NOT rtlcn118 ;
   Tx_Reg_14n6ss1(1) <= Tx_Reg(2) when TxFSM(1) = '1' else Din(0) ;
   Tx_Reg_14n6ss1(2) <= Tx_Reg(3) when TxFSM(1) = '1' else Din(1) ;
   Tx_Reg_14n6ss1(3) <= Tx_Reg(4) when TxFSM(1) = '1' else Din(2) ;
   Tx_Reg_14n6ss1(4) <= Tx_Reg(5) when TxFSM(1) = '1' else Din(3) ;
   Tx_Reg_14n6ss1(5) <= Tx_Reg(6) when TxFSM(1) = '1' else Din(5) ;
   Tx_Reg_14n6ss1(6) <= Tx_Reg(7) when TxFSM(1) = '1' else Din(5) ;
   Tx_Reg_14n6ss1(7) <= Tx_Reg(8) when TxFSM(1) = '1' else Din(7) ;
   not_rtlcn4 <= NOT rtlcn4 ;
   not_rtlc14n168 <= NOT rtlc14n168 ;
   not_rtlcn2 <= NOT rtlcn2 ;
   not_rtlcn6 <= NOT rtlcn6 ;
   rtlc17n460 <= RxRDY_EXMPLR98 OR RxFSM_6 ;
   not_rtlcn75 <= NOT rtlcn75 ;
   rtlcn119 <= Rx_r OR not_rtlcn75 ;
   not_rtlcn76 <= NOT rtlcn76 ;
   rtlcn122 <= not_rtlcn76 AND rtlcn119 ;
   rtlc17n459 <= RxRDY_EXMPLR98 OR rtlcn122 ;
   not_rtlc17n308 <= NOT rtlc17n308 ;
   rtlcn118 <= RxFSM_0 OR RxFSM_6 ;
   not_RxBitCnt_2 <= NOT RxBitCnt(2) ;
   not_RxBitCnt_1 <= NOT RxBitCnt(1) ;
   not_RxBitCnt_0 <= NOT RxBitCnt(0) ;
   rtlc_331_and_7 : and_4u_4u port map ( a(3)=>RxBitCnt(3), a(2)=>
      not_RxBitCnt_2, a(1)=>not_RxBitCnt_1, a(0)=>not_RxBitCnt_0, d=>rtlcs5
   );
   not_RxDiv_9 <= NOT RxDiv(9) ;
   not_RxDiv_5 <= NOT RxDiv(5) ;
   not_RxDiv_1 <= NOT RxDiv(1) ;
   rtlc_341_and_8 : and_4u_4u port map ( a(3)=>not_RxDiv_9, a(2)=>
      not_RxDiv_5, a(1)=>not_RxDiv_1, a(0)=>rtlcs6, d=>rtlcs0);
   not_RxFSM_5 <= NOT RxFSM_5 ;
   rtlc17n308 <= rtlc17n303 OR not_RxFSM_5 ;
   not_TxDiv_10 <= NOT TxDiv(10) ;
   not_TxDiv_6 <= NOT TxDiv(6) ;
   not_TxDiv_2 <= NOT TxDiv(2) ;
   rtlc_352_and_9 : and_4u_4u port map ( a(3)=>not_TxDiv_10, a(2)=>
      not_TxDiv_6, a(1)=>not_TxDiv_2, a(0)=>rtlcs7, d=>rtlcs1);
   rtlcn0 <= TxFSM(1) OR TxFSM(0) ;
   not_TxBitCnt_3 <= NOT TxBitCnt(3) ;
   not_TxBitCnt_2 <= NOT TxBitCnt(2) ;
   not_TxBitCnt_1 <= NOT TxBitCnt(1) ;
   rtlc_358_and_10 : and_4u_4u port map ( a(3)=>not_TxBitCnt_3, a(2)=>
      not_TxBitCnt_2, a(1)=>not_TxBitCnt_1, a(0)=>TxBitCnt(0), d=>rtlcs3);
   Tx_Reg_14n6ss1(8) <= Din(7) OR TxFSM(1) ;
   rtlcs4 <= not_TxFSM_1 AND not_TxFSM_0 ;
   rtlc17n442 <= TopRx AND RxFSM_3 ;
   modgen_counter_RxDiv : counter_up_sclear_aclear_clock_0_11 port map ( 
      clock=>CLK, q(10)=>RxDiv(10), q(9)=>RxDiv(9), q(8)=>RxDiv(8), q(7)=>
      RxDiv(7), q(6)=>RxDiv(6), q(5)=>RxDiv(5), q(4)=>RxDiv(4), q(3)=>
      RxDiv(3), q(2)=>RxDiv(2), q(1)=>RxDiv(1), q(0)=>RxDiv(0), clk_en=>PWR, 
      aclear=>RST, sload=>GND, data(10)=>DANGLING(0), data(9)=>DANGLING(1), 
      data(8)=>DANGLING(2), data(7)=>DANGLING(3), data(6)=>DANGLING(4), 
      data(5)=>DANGLING(5), data(4)=>DANGLING(6), data(3)=>DANGLING(7), 
      data(2)=>DANGLING(8), data(1)=>DANGLING(9), data(0)=>DANGLING(10), 
      aset=>GND, sclear=>rtlc8n73, updn=>PWR, cnt_en=>PWR);
   modgen_counter_TxDiv : counter_up_sclear_aclear_clock_0_12 port map ( 
      clock=>CLK, q(11)=>TxDiv(11), q(10)=>TxDiv(10), q(9)=>TxDiv(9), q(8)=>
      TxDiv(8), q(7)=>TxDiv(7), q(6)=>TxDiv(6), q(5)=>TxDiv(5), q(4)=>
      TxDiv(4), q(3)=>TxDiv(3), q(2)=>TxDiv(2), q(1)=>TxDiv(1), q(0)=>
      TxDiv(0), clk_en=>PWR, aclear=>RST, sload=>GND, data(11)=>DANGLING(11), 
      data(10)=>DANGLING(12), data(9)=>DANGLING(13), data(8)=>DANGLING(14), 
      data(7)=>DANGLING(15), data(6)=>DANGLING(16), data(5)=>DANGLING(17), 
      data(4)=>DANGLING(18), data(3)=>DANGLING(19), data(2)=>DANGLING(20), 
      data(1)=>DANGLING(21), data(0)=>DANGLING(22), aset=>GND, sclear=>
      rtlcs1, updn=>PWR, cnt_en=>PWR);
   modgen_counter_TxBitCnt : counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4
       port map ( clock=>CLK, q(3)=>TxBitCnt(3), q(2)=>TxBitCnt(2), q(1)=>
      TxBitCnt(1), q(0)=>TxBitCnt(0), clk_en=>not_rtlc14_X_0_n225, aclear=>
      RST, sload=>rtlc14n235, data(3)=>PWR, data(2)=>GND, data(1)=>GND, 
      data(0)=>PWR, aset=>GND, sclear=>GND, updn=>GND, cnt_en=>TxFSM(1));
   modgen_counter_RxBitCnt : counter_up_sclear_aclear_clock_clk_en_0_4
       port map ( clock=>CLK, q(3)=>RxBitCnt(3), q(2)=>RxBitCnt(2), q(1)=>
      RxBitCnt(1), q(0)=>RxBitCnt(0), clk_en=>not_rtlc17_X_0_n360, aclear=>
      RST, sload=>GND, data(3)=>DANGLING(23), data(2)=>DANGLING(24), data(1)
      =>DANGLING(25), data(0)=>DANGLING(26), aset=>GND, sclear=>RxFSM_0, 
      updn=>PWR, cnt_en=>PWR);
   rtlceq_s14_eq_11 : eq_8u_8u port map ( a(7)=>RxDiv(10), a(6)=>RxDiv(8), 
      a(5)=>RxDiv(7), a(4)=>RxDiv(6), a(3)=>RxDiv(4), a(2)=>RxDiv(3), a(1)=>
      RxDiv(2), a(0)=>RxDiv(0), b(7)=>GND, b(6)=>GND, b(5)=>TxDivisor_5, 
      b(4)=>TxDivisor_5, b(3)=>TxDivisor_5, b(2)=>TxDivisor_5, b(1)=>GND, 
      b(0)=>GND, d=>rtlcs6);
   rtlceq_s16_eq_12 : eq_9u_9u port map ( a(8)=>TxDiv(11), a(7)=>TxDiv(9), 
      a(6)=>TxDiv(8), a(5)=>TxDiv(7), a(4)=>TxDiv(5), a(3)=>TxDiv(4), a(2)=>
      TxDiv(3), a(1)=>TxDiv(1), a(0)=>TxDiv(0), b(8)=>GND, b(7)=>GND, b(6)=>
      TxDivisor_5, b(5)=>TxDivisor_5, b(4)=>TxDivisor_5, b(3)=>TxDivisor_5, 
      b(2)=>GND, b(1)=>GND, b(0)=>TxDivisor_5, d=>rtlcs7);
   DFFPC (Rx,RST,GND,CLK,Rx_r) ;
   DFFPC (PWR,GND,RST,CLK,TxDivisor_5) ;
   DFFPC (rtlcn51,GND,RST,CLK,TopRx) ;
   DFFPC (rtlcs1,GND,RST,CLK,TopTx) ;
   DFFPCE (not_rtlc14n290,GND,RST,not_rtlcn4,CLK,TxFSM(1)) ;
   DFFPCE (not_TxFSM_0,GND,RST,not_rtlcn4,CLK,TxFSM(0)) ;
   DFFPCE (Tx_Reg_14n6ss1(8),RST,GND,not_rtlc14n168,CLK,Tx_Reg(8)) ;
   DFFPCE (Tx_Reg_14n6ss1(7),RST,GND,not_rtlc14n168,CLK,Tx_Reg(7)) ;
   DFFPCE (Tx_Reg_14n6ss1(6),RST,GND,not_rtlc14n168,CLK,Tx_Reg(6)) ;
   DFFPCE (Tx_Reg_14n6ss1(5),RST,GND,not_rtlc14n168,CLK,Tx_Reg(5)) ;
   DFFPCE (Tx_Reg_14n6ss1(4),RST,GND,not_rtlc14n168,CLK,Tx_Reg(4)) ;
   DFFPCE (Tx_Reg_14n6ss1(3),RST,GND,not_rtlc14n168,CLK,Tx_Reg(3)) ;
   DFFPCE (Tx_Reg_14n6ss1(2),RST,GND,not_rtlc14n168,CLK,Tx_Reg(2)) ;
   DFFPCE (Tx_Reg_14n6ss1(1),RST,GND,not_rtlc14n168,CLK,Tx_Reg(1)) ;
   DFFPCE (Tx_Reg_14n6ss1(0),RST,GND,not_rtlcn2,CLK,Tx) ;
   DFFPCE (rtlcn57,GND,RST,not_rtlcn6,CLK,RxFSM_6) ;
   DFFPCE (rtlcn47,GND,RST,not_rtlcn6,CLK,RxFSM_5) ;
   DFFPCE (rtlcn31,GND,RST,not_rtlcn6,CLK,RxFSM_3) ;
   DFFPCE (rtlcn37,GND,RST,not_rtlcn6,CLK,RxFSM_2) ;
   DFFPCE (RxFSM_0,GND,RST,not_rtlcn6,CLK,RxFSM_1) ;
   DFFPCE (rtlcn42,RST,GND,not_rtlcn6,CLK,RxFSM_0) ;
   DFFPCE (RxFSM_6,GND,RST,rtlc17n460,CLK,RxErr) ;
   DFFPCE (Rx_Reg(7),GND,RST,not_rtlc17n308,CLK,Dout(7)) ;
   DFFPCE (Rx_Reg(6),GND,RST,not_rtlc17n308,CLK,Dout(6)) ;
   DFFPCE (Rx_Reg(5),GND,RST,not_rtlc17n308,CLK,Dout(5)) ;
   DFFPCE (Rx_Reg(4),GND,RST,not_rtlc17n308,CLK,Dout(4)) ;
   DFFPCE (Rx_Reg(3),GND,RST,not_rtlc17n308,CLK,Dout(3)) ;
   DFFPCE (Rx_Reg(2),GND,RST,not_rtlc17n308,CLK,Dout(2)) ;
   DFFPCE (Rx_Reg(1),GND,RST,not_rtlc17n308,CLK,Dout(1)) ;
   DFFPCE (Rx_Reg(0),GND,RST,not_rtlc17n308,CLK,Dout(0)) ;
   DFFPCE (Rx_r,GND,RST,rtlc17n442,CLK,Rx_Reg(7)) ;
   DFFPCE (Rx_Reg(7),GND,RST,rtlc17n442,CLK,Rx_Reg(6)) ;
   DFFPCE (Rx_Reg(6),GND,RST,rtlc17n442,CLK,Rx_Reg(5)) ;
   DFFPCE (Rx_Reg(5),GND,RST,rtlc17n442,CLK,Rx_Reg(4)) ;
   DFFPCE (Rx_Reg(4),GND,RST,rtlc17n442,CLK,Rx_Reg(3)) ;
   DFFPCE (Rx_Reg(3),GND,RST,rtlc17n442,CLK,Rx_Reg(2)) ;
   DFFPCE (Rx_Reg(2),GND,RST,rtlc17n442,CLK,Rx_Reg(1)) ;
   DFFPCE (Rx_Reg(1),GND,RST,rtlc17n442,CLK,Rx_Reg(0)) ;
   DFFPC (rtlcn142,GND,RST,CLK,RxRDY_EXMPLR98) ;
   modgen_and_0 : and_4u_4u port map ( a(3)=>Rx_r, a(2)=>RxFSM_5, a(1)=>
      TopRx, a(0)=>rtlc17n459, d=>rtlcn142);
end RTL_unfold_1358 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_clock_clk_en_0_16 is 
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
end counter_up_sclear_clock_clk_en_0_16 ;

architecture INTERFACE of counter_up_sclear_clock_clk_en_0_16 is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx36, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, 
      nx46, nx47, nx48, nx49, nx50, nx51, nx52, nx53, nx54, nx55, nx56, nx57, 
      nx58, nx59, nx60, nx61, nx62, nx63, nx64, nx65, nx66, nx67, nx68, nx69, 
      nx70, nx71, nx72, nx73, nx74, nx75, nx76, nx77, nx78, nx79, nx80, nx81, 
      nx82, nx83, PWR, NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(15) <= nx37 ;
   q(14) <= nx39 ;
   q(13) <= nx41 ;
   q(12) <= nx43 ;
   q(11) <= nx45 ;
   q(10) <= nx47 ;
   q(9) <= nx49 ;
   q(8) <= nx51 ;
   q(7) <= nx53 ;
   q(6) <= nx55 ;
   q(5) <= nx57 ;
   q(4) <= nx59 ;
   q(3) <= nx61 ;
   q(2) <= nx63 ;
   q(1) <= nx65 ;
   q(0) <= nx67 ;
   GND <= '0' ;
   DFFPCE (nx36,GND,GND,clk_en,clock,nx37) ;
   DFFPCE (nx38,GND,GND,clk_en,clock,nx39) ;
   DFFPCE (nx40,GND,GND,clk_en,clock,nx41) ;
   DFFPCE (nx42,GND,GND,clk_en,clock,nx43) ;
   DFFPCE (nx44,GND,GND,clk_en,clock,nx45) ;
   DFFPCE (nx46,GND,GND,clk_en,clock,nx47) ;
   DFFPCE (nx48,GND,GND,clk_en,clock,nx49) ;
   DFFPCE (nx50,GND,GND,clk_en,clock,nx51) ;
   DFFPCE (nx52,GND,GND,clk_en,clock,nx53) ;
   DFFPCE (nx54,GND,GND,clk_en,clock,nx55) ;
   DFFPCE (nx56,GND,GND,clk_en,clock,nx57) ;
   DFFPCE (nx58,GND,GND,clk_en,clock,nx59) ;
   DFFPCE (nx60,GND,GND,clk_en,clock,nx61) ;
   DFFPCE (nx62,GND,GND,clk_en,clock,nx63) ;
   DFFPCE (nx64,GND,GND,clk_en,clock,nx65) ;
   DFFPCE (nx66,GND,GND,clk_en,clock,nx67) ;
   inc : inc_16u_16u_0_0 port map ( cin=>PWR, a(15)=>nx37, a(14)=>nx39, 
      a(13)=>nx41, a(12)=>nx43, a(11)=>nx45, a(10)=>nx47, a(9)=>nx49, a(8)=>
      nx51, a(7)=>nx53, a(6)=>nx55, a(5)=>nx57, a(4)=>nx59, a(3)=>nx61, a(2)
      =>nx63, a(1)=>nx65, a(0)=>nx67, d(15)=>nx68, d(14)=>nx69, d(13)=>nx70, 
      d(12)=>nx71, d(11)=>nx72, d(10)=>nx73, d(9)=>nx74, d(8)=>nx75, d(7)=>
      nx76, d(6)=>nx77, d(5)=>nx78, d(4)=>nx79, d(3)=>nx80, d(2)=>nx81, d(1)
      =>nx82, d(0)=>nx83, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx36 <= nx68 AND NOT_SCLEAR ;
   nx38 <= nx69 AND NOT_SCLEAR ;
   nx40 <= nx70 AND NOT_SCLEAR ;
   nx42 <= nx71 AND NOT_SCLEAR ;
   nx44 <= nx72 AND NOT_SCLEAR ;
   nx46 <= nx73 AND NOT_SCLEAR ;
   nx48 <= nx74 AND NOT_SCLEAR ;
   nx50 <= nx75 AND NOT_SCLEAR ;
   nx52 <= nx76 AND NOT_SCLEAR ;
   nx54 <= nx77 AND NOT_SCLEAR ;
   nx56 <= nx78 AND NOT_SCLEAR ;
   nx58 <= nx79 AND NOT_SCLEAR ;
   nx60 <= nx80 AND NOT_SCLEAR ;
   nx62 <= nx81 AND NOT_SCLEAR ;
   nx64 <= nx82 AND NOT_SCLEAR ;
   nx66 <= nx83 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

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
      txflex : OUT std_logic) ;
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
         RxRDY : OUT std_logic) ;
   end component ;
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_sclear_clock_clk_en_0_16
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
   component and_16u_16u
      port (
         a : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   procedure DFFRSE (
      constant data   : in std_logic;
      constant set    : in std_logic;
      constant reset  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (clk'event and clk'last_value = '0' and clk = '1') then
           if (reset = '1') then
               q <= '0' ;
           elsif (set = '1') then
               q <= '1' ;
           elsif (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((set/='1' or reset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFRSE ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal o_pixavail_EXMPLR152: std_logic ;
   
   signal sdin: std_logic_vector (7 DOWNTO 0) ;
   
   signal rxerr, rxrdy, rawrx, sdout_7, GND, sdout_5, sdout_3, sdout_2, 
      sdout_1, sdout_0: std_logic ;
   
   signal rdata: std_logic_vector (7 DOWNTO 0) ;
   
   signal state, dsend, mdata_7, mdata_5, mdata_3, mdata_2, mdata_1, mdata_0, 
      ack: std_logic ;
   
   signal waitcount: std_logic_vector (15 DOWNTO 0) ;
   
   signal ld_sdout, PWR, not_o_pixavail: std_logic ;
   
   signal mdata_7n2ss1: std_logic_vector (3 DOWNTO 0) ;
   
   signal mdata_7n5ss1_6, mdata_7n5ss1_4, mdata_7n5ss1_3, mdata_7n5ss1_2, 
      mdata_7n5ss1_1, mdata_7n5ss1_0, rtlc7n92, rtlc7n116, not_rxerr, 
      not_rtlcn53, rtlc7n146, rtlc7n149, rtlc7_X_0_n182, rtlc7n222, 
      not_dsend, rtlc10n48, not_rtlc10n48, rtlc10n75, rtlcn0, rtlcn1, rtlcn9, 
      not_rtlcn56, rtlcn43, rtlcn53, rtlcn56, rtlcn57, not_rtlc7n149, 
      not_state, rtlcn61, not_rtlc7n92, not_rtlcn69, not_o_valid, rtlcn69, 
      rtlcn70, not_rtlc7n146, not_rst, not_i_mode_1, rtlcn75, 
      not_waitcount_15, not_waitcount_14, not_waitcount_13, not_waitcount_12, 
      not_waitcount_11, not_waitcount_10, not_waitcount_9, not_waitcount_8, 
      not_waitcount_7, not_waitcount_4, not_waitcount_3, not_waitcount_1, 
      not_waitcount_0, rtlcn95: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   o_pixavail <= o_pixavail_EXMPLR152 ;
   GND <= '0' ;
   PWR <= '1' ;
   i_uarts : UARTS port map ( CLK=>clk, RST=>rst, Din(7)=>sdout_7, Din(6)=>
      GND, Din(5)=>sdout_5, Din(4)=>GND, Din(3)=>sdout_3, Din(2)=>sdout_2, 
      Din(1)=>sdout_1, Din(0)=>sdout_0, LD=>ld_sdout, Rx=>rawrx, Baud=>PWR, 
      Dout(7)=>sdin(7), Dout(6)=>sdin(6), Dout(5)=>sdin(5), Dout(4)=>sdin(4), 
      Dout(3)=>sdin(3), Dout(2)=>sdin(2), Dout(1)=>sdin(1), Dout(0)=>sdin(0), 
      Tx=>txflex, TxBusy=>DANGLING(0), RxErr=>rxerr, RxRDY=>rxrdy);
   rtlc7_72_or_13 : or_3u_3u port map ( a(2)=>rst, a(1)=>o_valid, a(0)=>
      rtlc7n116, d=>rtlc7_X_0_n182);
   not_rxerr <= NOT rxerr ;
   rtlc7n92 <= o_pixavail_EXMPLR152 OR ack ;
   not_rtlcn53 <= NOT rtlcn53 ;
   not_o_pixavail <= NOT o_pixavail_EXMPLR152 ;
   not_rtlc7n149 <= NOT rtlc7n149 ;
   rtlcn1 <= not_rtlc7n149 AND rtlc7n92 ;
   rtlcn53 <= rtlc7n116 OR o_valid ;
   not_state <= NOT state ;
   rtlcn9 <= not_state AND dsend ;
   rtlcn61 <= rtlc7n92 AND not_rtlcn53 ;
   not_rtlc7n92 <= NOT rtlc7n92 ;
   rtlcn57 <= rtlcn61 OR not_rtlcn69 ;
   rtlcn56 <= not_rtlc7n149 AND rtlcn57 ;
   not_rtlcn56 <= NOT rtlcn56 ;
   not_o_valid <= NOT o_valid ;
   rtlcn43 <= not_rtlc7n92 OR not_o_valid ;
   not_rtlcn69 <= NOT rtlcn69 ;
   rtlc7n146 <= not_rtlcn53 when rtlc7n92 = '1' else not_rxerr ;
   rtlcn0 <= rxrdy OR o_pixavail_EXMPLR152 ;
   not_rtlc7n146 <= NOT rtlc7n146 ;
   rtlcn70 <= not_rtlc7n146 OR rtlc7n149 ;
   not_rst <= NOT rst ;
   rtlc7n222 <= not_rst AND rtlcn70 ;
   rtlc10n75 <= dsend OR state ;
   not_dsend <= NOT dsend ;
   not_rtlc10n48 <= NOT rtlc10n48 ;
   mdata_7n2ss1(0) <= kirschout OR not_o_valid ;
   not_i_mode_1 <= NOT i_mode(1) ;
   mdata_7n5ss1_0 <= mdata_7n2ss1(0) AND rtlcn1 ;
   rtlcn69 <= rtlc7n92 OR rxerr ;
   rtlc10n48 <= not_dsend OR state ;
   mdata_7n2ss1(1) <= kirschdir(0) OR not_o_valid ;
   mdata_7n5ss1_1 <= mdata_7n2ss1(1) AND rtlcn1 ;
   mdata_7n2ss1(2) <= kirschdir(1) OR not_o_valid ;
   mdata_7n5ss1_2 <= mdata_7n2ss1(2) AND rtlcn1 ;
   mdata_7n2ss1(3) <= kirschdir(2) OR not_o_valid ;
   mdata_7n5ss1_3 <= mdata_7n2ss1(3) AND rtlcn1 ;
   mdata_7n5ss1_4 <= rtlcn43 OR rtlc7n149 ;
   mdata_7n5ss1_6 <= rtlcn43 AND not_rtlc7n149 ;
   rawrx <= rxflex AND not_rst ;
   datain(0) <= rdata(0) AND o_pixavail_EXMPLR152 ;
   datain(1) <= rdata(1) AND o_pixavail_EXMPLR152 ;
   datain(2) <= rdata(2) AND o_pixavail_EXMPLR152 ;
   datain(3) <= rdata(3) AND o_pixavail_EXMPLR152 ;
   datain(4) <= rdata(4) AND o_pixavail_EXMPLR152 ;
   datain(5) <= rdata(5) AND o_pixavail_EXMPLR152 ;
   datain(6) <= rdata(6) AND o_pixavail_EXMPLR152 ;
   datain(7) <= rdata(7) AND o_pixavail_EXMPLR152 ;
   rtlc7n149 <= not_i_mode_1 AND i_mode(0) ;
   rtlcn75 <= rst OR rtlc7n92 ;
   modgen_counter_waitcount : counter_up_sclear_clock_clk_en_0_16
       port map ( clock=>clk, q(15)=>waitcount(15), q(14)=>waitcount(14), 
      q(13)=>waitcount(13), q(12)=>waitcount(12), q(11)=>waitcount(11), 
      q(10)=>waitcount(10), q(9)=>waitcount(9), q(8)=>waitcount(8), q(7)=>
      waitcount(7), q(6)=>waitcount(6), q(5)=>waitcount(5), q(4)=>
      waitcount(4), q(3)=>waitcount(3), q(2)=>waitcount(2), q(1)=>
      waitcount(1), q(0)=>waitcount(0), clk_en=>rtlcn75, aclear=>GND, sload
      =>GND, data(15)=>DANGLING(1), data(14)=>DANGLING(2), data(13)=>
      DANGLING(3), data(12)=>DANGLING(4), data(11)=>DANGLING(5), data(10)=>
      DANGLING(6), data(9)=>DANGLING(7), data(8)=>DANGLING(8), data(7)=>
      DANGLING(9), data(6)=>DANGLING(10), data(5)=>DANGLING(11), data(4)=>
      DANGLING(12), data(3)=>DANGLING(13), data(2)=>DANGLING(14), data(1)=>
      DANGLING(15), data(0)=>DANGLING(16), aset=>GND, sclear=>rtlc7_X_0_n182, 
      updn=>PWR, cnt_en=>PWR);
   not_waitcount_15 <= NOT waitcount(15) ;
   not_waitcount_14 <= NOT waitcount(14) ;
   not_waitcount_13 <= NOT waitcount(13) ;
   not_waitcount_12 <= NOT waitcount(12) ;
   not_waitcount_11 <= NOT waitcount(11) ;
   not_waitcount_10 <= NOT waitcount(10) ;
   not_waitcount_9 <= NOT waitcount(9) ;
   not_waitcount_8 <= NOT waitcount(8) ;
   not_waitcount_7 <= NOT waitcount(7) ;
   not_waitcount_4 <= NOT waitcount(4) ;
   not_waitcount_3 <= NOT waitcount(3) ;
   not_waitcount_1 <= NOT waitcount(1) ;
   not_waitcount_0 <= NOT waitcount(0) ;
   rtlc_288_and_14 : and_16u_16u port map ( a(15)=>not_waitcount_15, a(14)=>
      not_waitcount_14, a(13)=>not_waitcount_13, a(12)=>not_waitcount_12, 
      a(11)=>not_waitcount_11, a(10)=>not_waitcount_10, a(9)=>
      not_waitcount_9, a(8)=>not_waitcount_8, a(7)=>not_waitcount_7, a(6)=>
      waitcount(6), a(5)=>waitcount(5), a(4)=>not_waitcount_4, a(3)=>
      not_waitcount_3, a(2)=>waitcount(2), a(1)=>not_waitcount_1, a(0)=>
      not_waitcount_0, d=>rtlc7n116);
   rtlcn95 <= not_o_pixavail AND rtlcn0 ;
   DFFPCE (mdata_7n5ss1_6,GND,GND,rtlc7n222,clk,mdata_7) ;
   DFFPCE (mdata_7n5ss1_4,GND,GND,rtlc7n222,clk,mdata_5) ;
   DFFPCE (mdata_7n5ss1_3,GND,GND,rtlc7n222,clk,mdata_3) ;
   DFFPCE (mdata_7n5ss1_2,GND,GND,rtlc7n222,clk,mdata_2) ;
   DFFPCE (mdata_7n5ss1_1,GND,GND,rtlc7n222,clk,mdata_1) ;
   DFFPCE (mdata_7n5ss1_0,GND,GND,rtlc7n222,clk,mdata_0) ;
   DFFRSE (not_rtlcn56,GND,rst,PWR,clk,dsend) ;
   DFFPCE (sdin(7),GND,rst,rxrdy,clk,rdata(7)) ;
   DFFPCE (sdin(6),GND,rst,rxrdy,clk,rdata(6)) ;
   DFFPCE (sdin(5),GND,rst,rxrdy,clk,rdata(5)) ;
   DFFPCE (sdin(4),GND,rst,rxrdy,clk,rdata(4)) ;
   DFFPCE (sdin(3),GND,rst,rxrdy,clk,rdata(3)) ;
   DFFPCE (sdin(2),GND,rst,rxrdy,clk,rdata(2)) ;
   DFFPCE (sdin(1),GND,rst,rxrdy,clk,rdata(1)) ;
   DFFPCE (sdin(0),GND,rst,rxrdy,clk,rdata(0)) ;
   DFFPCE (not_state,GND,rst,rtlc10n75,clk,ld_sdout) ;
   DFFPCE (mdata_7,GND,rst,not_rtlc10n48,clk,sdout_7) ;
   DFFPCE (mdata_5,GND,rst,not_rtlc10n48,clk,sdout_5) ;
   DFFPCE (mdata_3,GND,rst,not_rtlc10n48,clk,sdout_3) ;
   DFFPCE (mdata_2,GND,rst,not_rtlc10n48,clk,sdout_2) ;
   DFFPCE (mdata_1,GND,rst,not_rtlc10n48,clk,sdout_1) ;
   DFFPCE (mdata_0,GND,rst,not_rtlc10n48,clk,sdout_0) ;
   DFFPC (rtlcn9,GND,rst,clk,state) ;
   DFFRSE (rtlcn61,GND,rst,PWR,clk,ack) ;
   DFFPC (rtlcn95,GND,rst,clk,o_pixavail_EXMPLR152) ;
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity ram_new_0_mem_8_8_main is 
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
end ram_new_0_mem_8_8_main ;

architecture INTERFACE_unfold_2 of ram_new_0_mem_8_8_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F
      generic (ram_type : integer := 2;
         dual_addresses : string := "TRUE") ;
      
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx31, nx33, dup_0_reg_address_7, dup_0_reg_address_6, 
      dup_0_reg_address_5, dup_0_reg_address_4, dup_0_reg_address_3, 
      dup_0_reg_address_2, dup_0_reg_address_1, dup_0_reg_address_0, nx35, 
      nx37: std_logic ;

begin
   nx31 <= '0' ;
   nx33 <= '1' ;
   DFFPC (addr1(7),nx31,nx31,rd_clk1,dup_0_reg_address_7) ;
   DFFPC (addr1(6),nx31,nx31,rd_clk1,dup_0_reg_address_6) ;
   DFFPC (addr1(5),nx31,nx31,rd_clk1,dup_0_reg_address_5) ;
   DFFPC (addr1(4),nx31,nx31,rd_clk1,dup_0_reg_address_4) ;
   DFFPC (addr1(3),nx31,nx31,rd_clk1,dup_0_reg_address_3) ;
   DFFPC (addr1(2),nx31,nx31,rd_clk1,dup_0_reg_address_2) ;
   DFFPC (addr1(1),nx31,nx31,rd_clk1,dup_0_reg_address_1) ;
   DFFPC (addr1(0),nx31,nx31,rd_clk1,dup_0_reg_address_0) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx35, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>dup_0_reg_address_7, 
      addr2(6)=>dup_0_reg_address_6, addr2(5)=>dup_0_reg_address_5, addr2(4)
      =>dup_0_reg_address_4, addr2(3)=>dup_0_reg_address_3, addr2(2)=>
      dup_0_reg_address_2, addr2(1)=>dup_0_reg_address_1, addr2(0)=>
      dup_0_reg_address_0);
   nx35 <= wr_ena1 AND ena1 ;
   nx37 <= rd_ena1 AND ena1 ;
end INTERFACE_unfold_2 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity mem_8_8 is 
   port (
      address : IN std_logic_vector (7 DOWNTO 0) ;
      clock : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      wren : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0)) ;
end mem_8_8 ;

architecture main_unfold_1 of mem_8_8 is 
   component ram_new_0_mem_8_8_main
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
   for mem : ram_new_0_mem_8_8_main use entity work.ram_new_0_mem_8_8_main(
   INTERFACE_unfold_2);
   signal GND, nx25: std_logic ;

begin
   GND <= '0' ;
   mem : ram_new_0_mem_8_8_main port map ( wr_data1(7)=>data(7), wr_data1(6)
      =>data(6), wr_data1(5)=>data(5), wr_data1(4)=>data(4), wr_data1(3)=>
      data(3), wr_data1(2)=>data(2), wr_data1(1)=>data(1), wr_data1(0)=>
      data(0), rd_data1(7)=>q(7), rd_data1(6)=>q(6), rd_data1(5)=>q(5), 
      rd_data1(4)=>q(4), rd_data1(3)=>q(3), rd_data1(2)=>q(2), rd_data1(1)=>
      q(1), rd_data1(0)=>q(0), addr1(7)=>address(7), addr1(6)=>address(6), 
      addr1(5)=>address(5), addr1(4)=>address(4), addr1(3)=>address(3), 
      addr1(2)=>address(2), addr1(1)=>address(1), addr1(0)=>address(0), 
      wr_clk1=>clock, rd_clk1=>clock, wr_ena1=>wren, rd_ena1=>nx25, ena1=>
      nx25, rst1=>GND, regce1=>nx25);
   nx25 <= '1' ;
end main_unfold_1 ;


architecture INTERFACE of ram_new_0_mem_8_8_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F
      generic (ram_type : integer := 2;
         dual_addresses : string := "TRUE") ;
      
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx31, nx33, dup_0_reg_address_7, dup_0_reg_address_6, 
      dup_0_reg_address_5, dup_0_reg_address_4, dup_0_reg_address_3, 
      dup_0_reg_address_2, dup_0_reg_address_1, dup_0_reg_address_0, nx35, 
      nx37: std_logic ;

begin
   nx31 <= '0' ;
   nx33 <= '1' ;
   DFFPC (addr1(7),nx31,nx31,rd_clk1,dup_0_reg_address_7) ;
   DFFPC (addr1(6),nx31,nx31,rd_clk1,dup_0_reg_address_6) ;
   DFFPC (addr1(5),nx31,nx31,rd_clk1,dup_0_reg_address_5) ;
   DFFPC (addr1(4),nx31,nx31,rd_clk1,dup_0_reg_address_4) ;
   DFFPC (addr1(3),nx31,nx31,rd_clk1,dup_0_reg_address_3) ;
   DFFPC (addr1(2),nx31,nx31,rd_clk1,dup_0_reg_address_2) ;
   DFFPC (addr1(1),nx31,nx31,rd_clk1,dup_0_reg_address_1) ;
   DFFPC (addr1(0),nx31,nx31,rd_clk1,dup_0_reg_address_0) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx35, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>dup_0_reg_address_7, 
      addr2(6)=>dup_0_reg_address_6, addr2(5)=>dup_0_reg_address_5, addr2(4)
      =>dup_0_reg_address_4, addr2(3)=>dup_0_reg_address_3, addr2(2)=>
      dup_0_reg_address_2, addr2(1)=>dup_0_reg_address_1, addr2(0)=>
      dup_0_reg_address_0);
   nx35 <= wr_ena1 AND ena1 ;
   nx37 <= rd_ena1 AND ena1 ;
end INTERFACE ;


architecture main_unfold_2 of mem_8_8 is 
   component ram_new_0_mem_8_8_main
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
   for mem : ram_new_0_mem_8_8_main use entity work.ram_new_0_mem_8_8_main(
   INTERFACE);
   signal GND, nx25: std_logic ;

begin
   GND <= '0' ;
   mem : ram_new_0_mem_8_8_main port map ( wr_data1(7)=>data(7), wr_data1(6)
      =>data(6), wr_data1(5)=>data(5), wr_data1(4)=>data(4), wr_data1(3)=>
      data(3), wr_data1(2)=>data(2), wr_data1(1)=>data(1), wr_data1(0)=>
      data(0), rd_data1(7)=>q(7), rd_data1(6)=>q(6), rd_data1(5)=>q(5), 
      rd_data1(4)=>q(4), rd_data1(3)=>q(3), rd_data1(2)=>q(2), rd_data1(1)=>
      q(1), rd_data1(0)=>q(0), addr1(7)=>address(7), addr1(6)=>address(6), 
      addr1(5)=>address(5), addr1(4)=>address(4), addr1(3)=>address(3), 
      addr1(2)=>address(2), addr1(1)=>address(1), addr1(0)=>address(0), 
      wr_clk1=>clock, rd_clk1=>clock, wr_ena1=>wren, rd_ena1=>nx25, ena1=>
      nx25, rst1=>GND, regce1=>nx25);
   nx25 <= '1' ;
end main_unfold_2 ;


architecture INTERFACE_unfold_1 of ram_new_0_mem_8_8_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F
      generic (ram_type : integer := 2;
         dual_addresses : string := "TRUE") ;
      
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx31, nx33, dup_0_reg_address_7, dup_0_reg_address_6, 
      dup_0_reg_address_5, dup_0_reg_address_4, dup_0_reg_address_3, 
      dup_0_reg_address_2, dup_0_reg_address_1, dup_0_reg_address_0, nx35, 
      nx37: std_logic ;

begin
   nx31 <= '0' ;
   nx33 <= '1' ;
   DFFPC (addr1(7),nx31,nx31,rd_clk1,dup_0_reg_address_7) ;
   DFFPC (addr1(6),nx31,nx31,rd_clk1,dup_0_reg_address_6) ;
   DFFPC (addr1(5),nx31,nx31,rd_clk1,dup_0_reg_address_5) ;
   DFFPC (addr1(4),nx31,nx31,rd_clk1,dup_0_reg_address_4) ;
   DFFPC (addr1(3),nx31,nx31,rd_clk1,dup_0_reg_address_3) ;
   DFFPC (addr1(2),nx31,nx31,rd_clk1,dup_0_reg_address_2) ;
   DFFPC (addr1(1),nx31,nx31,rd_clk1,dup_0_reg_address_1) ;
   DFFPC (addr1(0),nx31,nx31,rd_clk1,dup_0_reg_address_0) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx35, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>dup_0_reg_address_7, 
      addr2(6)=>dup_0_reg_address_6, addr2(5)=>dup_0_reg_address_5, addr2(4)
      =>dup_0_reg_address_4, addr2(3)=>dup_0_reg_address_3, addr2(2)=>
      dup_0_reg_address_2, addr2(1)=>dup_0_reg_address_1, addr2(0)=>
      dup_0_reg_address_0);
   nx35 <= wr_ena1 AND ena1 ;
   nx37 <= rd_ena1 AND ena1 ;
end INTERFACE_unfold_1 ;


architecture main of mem_8_8 is 
   component ram_new_0_mem_8_8_main
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
   for mem : ram_new_0_mem_8_8_main use entity work.ram_new_0_mem_8_8_main(
   INTERFACE_unfold_1);
   signal GND, nx25: std_logic ;

begin
   GND <= '0' ;
   mem : ram_new_0_mem_8_8_main port map ( wr_data1(7)=>data(7), wr_data1(6)
      =>data(6), wr_data1(5)=>data(5), wr_data1(4)=>data(4), wr_data1(3)=>
      data(3), wr_data1(2)=>data(2), wr_data1(1)=>data(1), wr_data1(0)=>
      data(0), rd_data1(7)=>q(7), rd_data1(6)=>q(6), rd_data1(5)=>q(5), 
      rd_data1(4)=>q(4), rd_data1(3)=>q(3), rd_data1(2)=>q(2), rd_data1(1)=>
      q(1), rd_data1(0)=>q(0), addr1(7)=>address(7), addr1(6)=>address(6), 
      addr1(5)=>address(5), addr1(4)=>address(4), addr1(3)=>address(3), 
      addr1(2)=>address(2), addr1(1)=>address(1), addr1(0)=>address(0), 
      wr_clk1=>clock, rd_clk1=>clock, wr_ena1=>wren, rd_ena1=>nx25, ena1=>
      nx25, rst1=>GND, regce1=>nx25);
   nx25 <= '1' ;
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_clock_0_8 is 
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
end counter_up_cnt_en_sclear_clock_0_8 ;

architecture INTERFACE of counter_up_cnt_en_sclear_clock_0_8 is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx20, nx23, nx24, nx25, nx26, nx27, nx28, nx29, nx30, nx31, 
      nx32, nx33, nx34, nx35, nx36, nx37, nx38, nx39, nx40, nx41, nx42, nx43, 
      nx44, nx45, nx46, PWR, NOT_nx19: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(7) <= nx24 ;
   q(6) <= nx26 ;
   q(5) <= nx28 ;
   q(4) <= nx30 ;
   q(3) <= nx32 ;
   q(2) <= nx34 ;
   q(1) <= nx36 ;
   q(0) <= nx38 ;
   GND <= '0' ;
   nx20 <= cnt_en OR sclear ;
   DFFPCE (nx23,GND,GND,nx20,clock,nx24) ;
   DFFPCE (nx25,GND,GND,nx20,clock,nx26) ;
   DFFPCE (nx27,GND,GND,nx20,clock,nx28) ;
   DFFPCE (nx29,GND,GND,nx20,clock,nx30) ;
   DFFPCE (nx31,GND,GND,nx20,clock,nx32) ;
   DFFPCE (nx33,GND,GND,nx20,clock,nx34) ;
   DFFPCE (nx35,GND,GND,nx20,clock,nx36) ;
   DFFPCE (nx37,GND,GND,nx20,clock,nx38) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx24, a(6)=>nx26, a(5)=>
      nx28, a(4)=>nx30, a(3)=>nx32, a(2)=>nx34, a(1)=>nx36, a(0)=>nx38, d(7)
      =>nx39, d(6)=>nx40, d(5)=>nx41, d(4)=>nx42, d(3)=>nx43, d(2)=>nx44, 
      d(1)=>nx45, d(0)=>nx46, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_nx19 <= NOT sclear ;
   nx23 <= nx39 AND NOT_nx19 ;
   nx25 <= nx40 AND NOT_nx19 ;
   nx27 <= nx41 AND NOT_nx19 ;
   nx29 <= nx42 AND NOT_nx19 ;
   nx31 <= nx43 AND NOT_nx19 ;
   nx33 <= nx44 AND NOT_nx19 ;
   nx35 <= nx45 AND NOT_nx19 ;
   nx37 <= nx46 AND NOT_nx19 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_clock_clk_en_0_8 is 
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
end counter_up_cnt_en_sclear_clock_clk_en_0_8 ;

architecture INTERFACE of counter_up_cnt_en_sclear_clock_clk_en_0_8 is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx20, nx23, nx26, nx27, nx28, nx29, nx30, nx31, nx32, nx33, 
      nx34, nx35, nx36, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, 
      nx46, nx47, nx48, nx49, PWR, NOT_nx19: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(7) <= nx27 ;
   q(6) <= nx29 ;
   q(5) <= nx31 ;
   q(4) <= nx33 ;
   q(3) <= nx35 ;
   q(2) <= nx37 ;
   q(1) <= nx39 ;
   q(0) <= nx41 ;
   GND <= '0' ;
   nx20 <= cnt_en OR sclear ;
   nx23 <= nx20 AND clk_en ;
   DFFPCE (nx26,GND,GND,nx23,clock,nx27) ;
   DFFPCE (nx28,GND,GND,nx23,clock,nx29) ;
   DFFPCE (nx30,GND,GND,nx23,clock,nx31) ;
   DFFPCE (nx32,GND,GND,nx23,clock,nx33) ;
   DFFPCE (nx34,GND,GND,nx23,clock,nx35) ;
   DFFPCE (nx36,GND,GND,nx23,clock,nx37) ;
   DFFPCE (nx38,GND,GND,nx23,clock,nx39) ;
   DFFPCE (nx40,GND,GND,nx23,clock,nx41) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx27, a(6)=>nx29, a(5)=>
      nx31, a(4)=>nx33, a(3)=>nx35, a(2)=>nx37, a(1)=>nx39, a(0)=>nx41, d(7)
      =>nx42, d(6)=>nx43, d(5)=>nx44, d(4)=>nx45, d(3)=>nx46, d(2)=>nx47, 
      d(1)=>nx48, d(0)=>nx49, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_nx19 <= NOT sclear ;
   nx26 <= nx42 AND NOT_nx19 ;
   nx28 <= nx43 AND NOT_nx19 ;
   nx30 <= nx44 AND NOT_nx19 ;
   nx32 <= nx45 AND NOT_nx19 ;
   nx34 <= nx46 AND NOT_nx19 ;
   nx36 <= nx47 AND NOT_nx19 ;
   nx38 <= nx48 AND NOT_nx19 ;
   nx40 <= nx49 AND NOT_nx19 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

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

architecture main_unfold_1777 of kirsch is 
   component mem_8_8
      port (
         address : IN std_logic_vector (7 DOWNTO 0) ;
         clock : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         wren : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   component add_11u_11u_11u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         b : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component sub_8u_8u_8u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component sub_10u_10u_10u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         b : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component inc_2u_2u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (1 DOWNTO 0) ;
         d : OUT std_logic_vector (1 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component and_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component mux_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_cnt_en_sclear_clock_0_8
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
   component counter_up_cnt_en_sclear_clock_clk_en_0_8
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
   component add_8u_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_9u_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   procedure DFFRSE (
      constant data   : in std_logic;
      constant set    : in std_logic;
      constant reset  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (clk'event and clk'last_value = '0' and clk = '1') then
           if (reset = '1') then
               q <= '0' ;
           elsif (set = '1') then
               q <= '1' ;
           elsif (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((set/='1' or reset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFRSE ;
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component sub_12u_12u_12u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component or_5u_5u
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_7u_7u
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   for m1 : mem_8_8 use entity work.mem_8_8(main_unfold_1);
   for m2 : mem_8_8 use entity work.mem_8_8(main_unfold_2);
   for m3 : mem_8_8 use entity work.mem_8_8(main);
   signal o_edge_EXMPLR416: std_logic ;
   
   signal o_mode_EXMPLR434: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_row_EXMPLR435: std_logic_vector (7 DOWNTO 0) ;
   
   signal wren_m1, wren_m2, wren_m3: std_logic ;
   
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
      r14_3, debug_num_5_0_EXMPLR430: std_logic ;
   
   signal r15: std_logic_vector (12 DOWNTO 0) ;
   
   signal dir1_2, dir2_2, dir3_2, dir4_2, dir4_0: std_logic ;
   
   signal dir5: std_logic_vector (2 DOWNTO 0) ;
   
   signal dir6: std_logic_vector (2 DOWNTO 0) ;
   
   signal dir7: std_logic_vector (2 DOWNTO 0) ;
   
   signal max1: std_logic_vector (7 DOWNTO 0) ;
   
   signal max2: std_logic_vector (9 DOWNTO 0) ;
   
   signal max3: std_logic_vector (9 DOWNTO 0) ;
   
   signal add1: std_logic_vector (8 DOWNTO 0) ;
   
   signal add2: std_logic_vector (9 DOWNTO 0) ;
   
   signal add3: std_logic_vector (10 DOWNTO 0) ;
   
   signal add4: std_logic_vector (12 DOWNTO 1) ;
   
   signal sub1_8, sub4_13, sub4_12, sub4_11, sub4_10, sub4_9, sub4_8, sub4_7, 
      end_of_img: std_logic ;
   
   signal addr_x: std_logic_vector (7 DOWNTO 0) ;
   
   signal addr_t: std_logic_vector (1 DOWNTO 0) ;
   
   signal debug_num_5_1_EXMPLR431, rtlc7n260, rtlc7n294, rtlc7n332, 
      rtlc11n44, rtlc11n52, rtlc16n0_16n1s2_13, rtlc16n0_16n1s2_12, 
      rtlc16n0_16n1s2_11, rtlc16n0_16n1s2_10, rtlc16n0_16n1s2_9, 
      rtlc16n0_16n1s2_8, rtlc16n0_16n1s2_7, rtlc17n0_17n1s3, rtlc17n0_17n1s2, 
      not_i_reset, rtlc19n35, rtlc19n36, rtlc19n42, rtlc19n43, not_rtlc19n43, 
      not_end_of_img: std_logic ;
   
   signal t_20n2s2: std_logic_vector (1 DOWNTO 0) ;
   
   signal t_20n2s1: std_logic_vector (1 DOWNTO 0) ;
   
   signal not_rtlcn158, rtlc20n212, not_rtlcn169, rtlc20n268, not_rtlcs4, 
      rtlc20n281, rtlc20n282, rtlc20_X_0_n283, not_rtlc20n268, rtlc20n331, 
      rtlc20n332: std_logic ;
   
   signal c_21n1ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal d_21n1ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlc21n169, rtlc22n176, rtlc22n179, rtlc22n182, dir5_23n5ss1_2, 
      dir6_23n5ss1_2, rtlc23n83: std_logic ;
   
   signal dir7_24n3ss1: std_logic_vector (2 DOWNTO 0) ;
   
   signal not_v_6, rtlc24n41, not_rtlc24n41: std_logic ;
   
   signal r8_25n1ss1: std_logic_vector (8 DOWNTO 0) ;
   
   signal r9_25n4ss1: std_logic_vector (9 DOWNTO 0) ;
   
   signal r1_25n6ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal r2_25n6ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal r3_25n6ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal r4_25n6ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlc25n226, rtlc25n236, rtlc26n59, rtlc26n204, rtlc26n205, 
      rtlc26n206, rtlc26n207, rtlcn2, rtlcn140, not_rtlc7n294, rtlcn143, 
      rtlcn147, rtlcn158, rtlcn159, rtlcn160, not_rtlc20n212, not_rtlcs7, 
      not_v_3, not_rtlcn160, not_v_1, not_v_4, rtlcn167, not_v_0, rtlcs0, 
      rtlcs1, rtlcs2, rtlcs3, rtlcs4, rtlcs5, rtlcs6, rtlcs7, rtlcn169, 
      not_rtlc11n52, not_addr_t_1, not_addr_t_0, not_sub4_13, not_rtlc7n332, 
      not_o_mode_1, not_o_mode_0, rtlcn666, t_modu2_20i1_rtlcm_0_not_in1_0, 
      t_modu2_20i1_rtlcm_0_not_in1_1, NOT_r15_0, nx342, nx345, nx351, nx354, 
      nx360, nx363, nx369, nx372, nx378, nx381, nx387, nx390, nx396, nx399, 
      nx405, nx408, nx414, nx417, nx423, nx426, nx432, nx435, nx441, nx444, 
      nx450, nx453, nx459, nx462, nx468, nx471, nx477, nx480, nx486, nx489, 
      nx495, nx498, nx504, nx507, nx513, nx516, nx522, nx525, nx532, nx536, 
      nx544, nx547, nx555, nx559, nx567, nx571, nx577, nx580, nx586, nx589, 
      nx595, nx599, nx606, nx609, nx615, nx619, nx627, nx630, nx637, nx641: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (51 downto 0 );

begin
   o_edge <= o_edge_EXMPLR416 ;
   o_mode(1) <= o_mode_EXMPLR434(1) ;
   o_mode(0) <= o_mode_EXMPLR434(0) ;
   o_row(7) <= o_row_EXMPLR435(7) ;
   o_row(6) <= o_row_EXMPLR435(6) ;
   o_row(5) <= o_row_EXMPLR435(5) ;
   o_row(4) <= o_row_EXMPLR435(4) ;
   o_row(3) <= o_row_EXMPLR435(3) ;
   o_row(2) <= o_row_EXMPLR435(2) ;
   o_row(1) <= o_row_EXMPLR435(1) ;
   o_row(0) <= o_row_EXMPLR435(0) ;
   debug_led_red(17) <= debug_num_5_0_EXMPLR430 ;
   debug_led_red(16) <= debug_num_5_0_EXMPLR430 ;
   debug_led_red(15) <= debug_num_5_0_EXMPLR430 ;
   debug_led_red(14) <= debug_num_5_0_EXMPLR430 ;
   debug_led_red(13) <= debug_num_5_0_EXMPLR430 ;
   debug_led_red(12) <= debug_num_5_0_EXMPLR430 ;
   debug_led_red(11) <= debug_num_5_0_EXMPLR430 ;
   debug_led_red(10) <= debug_num_5_0_EXMPLR430 ;
   debug_led_red(9) <= debug_num_5_0_EXMPLR430 ;
   debug_led_red(8) <= debug_num_5_0_EXMPLR430 ;
   debug_led_red(7) <= debug_num_5_0_EXMPLR430 ;
   debug_led_red(6) <= debug_num_5_0_EXMPLR430 ;
   debug_led_red(5) <= debug_num_5_0_EXMPLR430 ;
   debug_led_red(4) <= debug_num_5_0_EXMPLR430 ;
   debug_led_red(3) <= debug_num_5_0_EXMPLR430 ;
   debug_led_red(2) <= debug_num_5_0_EXMPLR430 ;
   debug_led_red(1) <= debug_num_5_0_EXMPLR430 ;
   debug_led_red(0) <= debug_num_5_0_EXMPLR430 ;
   debug_led_grn(5) <= debug_num_5_0_EXMPLR430 ;
   debug_led_grn(4) <= debug_num_5_0_EXMPLR430 ;
   debug_led_grn(3) <= debug_num_5_0_EXMPLR430 ;
   debug_led_grn(2) <= debug_num_5_0_EXMPLR430 ;
   debug_led_grn(1) <= debug_num_5_0_EXMPLR430 ;
   debug_led_grn(0) <= debug_num_5_0_EXMPLR430 ;
   debug_num_0(3) <= debug_num_5_0_EXMPLR430 ;
   debug_num_0(2) <= debug_num_5_1_EXMPLR431 ;
   debug_num_0(1) <= debug_num_5_1_EXMPLR431 ;
   debug_num_0(0) <= debug_num_5_1_EXMPLR431 ;
   debug_num_1(3) <= debug_num_5_0_EXMPLR430 ;
   debug_num_1(2) <= debug_num_5_0_EXMPLR430 ;
   debug_num_1(1) <= debug_num_5_1_EXMPLR431 ;
   debug_num_1(0) <= debug_num_5_0_EXMPLR430 ;
   debug_num_2(3) <= debug_num_5_0_EXMPLR430 ;
   debug_num_2(2) <= debug_num_5_0_EXMPLR430 ;
   debug_num_2(1) <= debug_num_5_1_EXMPLR431 ;
   debug_num_2(0) <= debug_num_5_1_EXMPLR431 ;
   debug_num_3(3) <= debug_num_5_1_EXMPLR431 ;
   debug_num_3(2) <= debug_num_5_1_EXMPLR431 ;
   debug_num_3(1) <= debug_num_5_1_EXMPLR431 ;
   debug_num_3(0) <= debug_num_5_0_EXMPLR430 ;
   debug_num_4(3) <= debug_num_5_1_EXMPLR431 ;
   debug_num_4(2) <= debug_num_5_1_EXMPLR431 ;
   debug_num_4(1) <= debug_num_5_0_EXMPLR430 ;
   debug_num_4(0) <= debug_num_5_0_EXMPLR430 ;
   debug_num_5(3) <= debug_num_5_1_EXMPLR431 ;
   debug_num_5(2) <= debug_num_5_1_EXMPLR431 ;
   debug_num_5(1) <= debug_num_5_1_EXMPLR431 ;
   debug_num_5(0) <= debug_num_5_0_EXMPLR430 ;
   debug_num_5_0_EXMPLR430 <= '0' ;
   debug_num_5_1_EXMPLR431 <= '1' ;
   m1 : mem_8_8 port map ( address(7)=>addr_x(7), address(6)=>addr_x(6), 
      address(5)=>addr_x(5), address(4)=>addr_x(4), address(3)=>addr_x(3), 
      address(2)=>addr_x(2), address(1)=>addr_x(1), address(0)=>addr_x(0), 
      clock=>i_clock, data(7)=>i_pixel(7), data(6)=>i_pixel(6), data(5)=>
      i_pixel(5), data(4)=>i_pixel(4), data(3)=>i_pixel(3), data(2)=>
      i_pixel(2), data(1)=>i_pixel(1), data(0)=>i_pixel(0), wren=>wren_m1, 
      q(7)=>q1(7), q(6)=>q1(6), q(5)=>q1(5), q(4)=>q1(4), q(3)=>q1(3), q(2)
      =>q1(2), q(1)=>q1(1), q(0)=>q1(0));
   m2 : mem_8_8 port map ( address(7)=>addr_x(7), address(6)=>addr_x(6), 
      address(5)=>addr_x(5), address(4)=>addr_x(4), address(3)=>addr_x(3), 
      address(2)=>addr_x(2), address(1)=>addr_x(1), address(0)=>addr_x(0), 
      clock=>i_clock, data(7)=>i_pixel(7), data(6)=>i_pixel(6), data(5)=>
      i_pixel(5), data(4)=>i_pixel(4), data(3)=>i_pixel(3), data(2)=>
      i_pixel(2), data(1)=>i_pixel(1), data(0)=>i_pixel(0), wren=>wren_m2, 
      q(7)=>q2(7), q(6)=>q2(6), q(5)=>q2(5), q(4)=>q2(4), q(3)=>q2(3), q(2)
      =>q2(2), q(1)=>q2(1), q(0)=>q2(0));
   m3 : mem_8_8 port map ( address(7)=>addr_x(7), address(6)=>addr_x(6), 
      address(5)=>addr_x(5), address(4)=>addr_x(4), address(3)=>addr_x(3), 
      address(2)=>addr_x(2), address(1)=>addr_x(1), address(0)=>addr_x(0), 
      clock=>i_clock, data(7)=>i_pixel(7), data(6)=>i_pixel(6), data(5)=>
      i_pixel(5), data(4)=>i_pixel(4), data(3)=>i_pixel(3), data(2)=>
      i_pixel(2), data(1)=>i_pixel(1), data(0)=>i_pixel(0), wren=>wren_m3, 
      q(7)=>q3(7), q(6)=>q3(6), q(5)=>q3(5), q(4)=>q3(4), q(3)=>q3(3), q(2)
      =>q3(2), q(1)=>q3(1), q(0)=>q3(0));
   add3_add11_0 : add_11u_11u_11u_0_0 port map ( cin=>
      debug_num_5_0_EXMPLR430, a(10)=>debug_num_5_0_EXMPLR430, a(9)=>
      debug_num_5_0_EXMPLR430, a(8)=>r7(8), a(7)=>r7(7), a(6)=>r7(6), a(5)=>
      r7(5), a(4)=>r7(4), a(3)=>r7(3), a(2)=>r7(2), a(1)=>r7(1), a(0)=>r7(0), 
      b(10)=>r8(10), b(9)=>r8(9), b(8)=>r8(8), b(7)=>r8(7), b(6)=>r8(6), 
      b(5)=>r8(5), b(4)=>r8(4), b(3)=>r8(3), b(2)=>r8(2), b(1)=>r8(1), b(0)
      =>r8(0), d(10)=>add3(10), d(9)=>add3(9), d(8)=>add3(8), d(7)=>add3(7), 
      d(6)=>add3(6), d(5)=>add3(5), d(4)=>add3(4), d(3)=>add3(3), d(2)=>
      add3(2), d(1)=>add3(1), d(0)=>add3(0), cout=>DANGLING(0));
   sub1_sub8_1 : sub_8u_8u_8u_0 port map ( cin=>debug_num_5_1_EXMPLR431, 
      a(7)=>r1(7), a(6)=>r1(6), a(5)=>r1(5), a(4)=>r1(4), a(3)=>r1(3), a(2)
      =>r1(2), a(1)=>r1(1), a(0)=>r1(0), b(7)=>r2(7), b(6)=>r2(6), b(5)=>
      r2(5), b(4)=>r2(4), b(3)=>r2(3), b(2)=>r2(2), b(1)=>r2(1), b(0)=>r2(0), 
      d(7)=>DANGLING(1), d(6)=>DANGLING(2), d(5)=>DANGLING(3), d(4)=>
      DANGLING(4), d(3)=>DANGLING(5), d(2)=>DANGLING(6), d(1)=>DANGLING(7), 
      d(0)=>DANGLING(8), cout=>rtlc7n260);
   sub2_sub10_2 : sub_10u_10u_10u_0 port map ( cin=>debug_num_5_1_EXMPLR431, 
      a(9)=>r9(9), a(8)=>r9(8), a(7)=>r9(7), a(6)=>r9(6), a(5)=>r9(5), a(4)
      =>r9(4), a(3)=>r9(3), a(2)=>r9(2), a(1)=>r9(1), a(0)=>r9(0), b(9)=>
      r11(9), b(8)=>r11(8), b(7)=>r11(7), b(6)=>r11(6), b(5)=>r11(5), b(4)=>
      r11(4), b(3)=>r11(3), b(2)=>r11(2), b(1)=>r11(1), b(0)=>r11(0), d(9)=>
      DANGLING(9), d(8)=>DANGLING(10), d(7)=>DANGLING(11), d(6)=>DANGLING(12
      ), d(5)=>DANGLING(13), d(4)=>DANGLING(14), d(3)=>DANGLING(15), d(2)=>
      DANGLING(16), d(1)=>DANGLING(17), d(0)=>DANGLING(18), cout=>rtlc7n294
   );
   sub3_sub10_3 : sub_10u_10u_10u_0 port map ( cin=>debug_num_5_1_EXMPLR431, 
      a(9)=>r11(9), a(8)=>r11(8), a(7)=>r11(7), a(6)=>r11(6), a(5)=>r11(5), 
      a(4)=>r11(4), a(3)=>r11(3), a(2)=>r11(2), a(1)=>r11(1), a(0)=>r11(0), 
      b(9)=>r12(9), b(8)=>r12(8), b(7)=>r12(7), b(6)=>r12(6), b(5)=>r12(5), 
      b(4)=>r12(4), b(3)=>r12(3), b(2)=>r12(2), b(1)=>r12(1), b(0)=>r12(0), 
      d(9)=>DANGLING(19), d(8)=>DANGLING(20), d(7)=>DANGLING(21), d(6)=>
      DANGLING(22), d(5)=>DANGLING(23), d(4)=>DANGLING(24), d(3)=>DANGLING(
      25), d(2)=>DANGLING(26), d(1)=>DANGLING(27), d(0)=>DANGLING(28), cout
      =>rtlc7n332);
   rtlc11n44 <= i_valid AND rtlcs4 ;
   rtlc11n52 <= rtlc11n44 AND rtlcs3 ;
   rtlc17n0_17n1s3 <= sub4_7 AND sub4_8 ;
   rtlc19n42 <= rtlcs5 AND not_v_0 ;
   rtlc19n35 <= not_i_reset AND rtlcs6 ;
   rtlc19n36 <= end_of_img OR rtlc19n35 ;
   rtlc19n43 <= rtlc19n36 OR rtlc19n42 ;
   not_i_reset <= NOT i_reset ;
   not_rtlc20n268 <= NOT rtlc20n268 ;
   rtlc20n282 <= rtlcs3 AND end_of_img ;
   rtlc20n281 <= end_of_img AND not_rtlcs4 ;
   rtlc20_54_or_19 : or_3u_3u port map ( a(2)=>i_reset, a(1)=>rtlc20n281, 
      a(0)=>rtlc20n282, d=>rtlc20_X_0_n283);
   not_end_of_img <= NOT end_of_img ;
   t_inc2_20i2 : inc_2u_2u_0 port map ( cin=>debug_num_5_1_EXMPLR431, a(1)=>
      t(1), a(0)=>t(0), d(1)=>t_20n2s2(1), d(0)=>t_20n2s2(0), cout=>DANGLING
      (29));
   not_v_6 <= NOT v(6) ;
   rtlc26n59 <= v(6) AND rtlc26n207 ;
   rtlc26n204 <= x(0) AND x(1) ;
   rtlc26n206 <= o_row_EXMPLR435(1) AND rtlc26n205 ;
   rtlc_52_and_23 : and_4u_4u port map ( a(3)=>not_i_reset, a(2)=>rtlcs4, 
      a(1)=>rtlcs3, a(0)=>not_end_of_img, d=>rtlcn2);
   rtlc20n268 <= not_rtlcn169 OR rtlcn2 ;
   c_mux_21i1Bus45_0 : mux_3u_3u port map ( a(2)=>q1(0), a(1)=>q3(0), a(0)=>
      q2(0), b(2)=>debug_num_5_0_EXMPLR430, b(1)=>t(1), b(0)=>t(0), d=>
      c_21n1ss1(0));
   c_mux_21i1Bus45_1 : mux_3u_3u port map ( a(2)=>q1(1), a(1)=>q3(1), a(0)=>
      q2(1), b(2)=>debug_num_5_0_EXMPLR430, b(1)=>t(1), b(0)=>t(0), d=>
      c_21n1ss1(1));
   c_mux_21i1Bus45_2 : mux_3u_3u port map ( a(2)=>q1(2), a(1)=>q3(2), a(0)=>
      q2(2), b(2)=>debug_num_5_0_EXMPLR430, b(1)=>t(1), b(0)=>t(0), d=>
      c_21n1ss1(2));
   c_mux_21i1Bus45_3 : mux_3u_3u port map ( a(2)=>q1(3), a(1)=>q3(3), a(0)=>
      q2(3), b(2)=>debug_num_5_0_EXMPLR430, b(1)=>t(1), b(0)=>t(0), d=>
      c_21n1ss1(3));
   c_mux_21i1Bus45_4 : mux_3u_3u port map ( a(2)=>q1(4), a(1)=>q3(4), a(0)=>
      q2(4), b(2)=>debug_num_5_0_EXMPLR430, b(1)=>t(1), b(0)=>t(0), d=>
      c_21n1ss1(4));
   c_mux_21i1Bus45_5 : mux_3u_3u port map ( a(2)=>q1(5), a(1)=>q3(5), a(0)=>
      q2(5), b(2)=>debug_num_5_0_EXMPLR430, b(1)=>t(1), b(0)=>t(0), d=>
      c_21n1ss1(5));
   c_mux_21i1Bus45_6 : mux_3u_3u port map ( a(2)=>q1(6), a(1)=>q3(6), a(0)=>
      q2(6), b(2)=>debug_num_5_0_EXMPLR430, b(1)=>t(1), b(0)=>t(0), d=>
      c_21n1ss1(6));
   c_mux_21i1Bus45_7 : mux_3u_3u port map ( a(2)=>q1(7), a(1)=>q3(7), a(0)=>
      q2(7), b(2)=>debug_num_5_0_EXMPLR430, b(1)=>t(1), b(0)=>t(0), d=>
      c_21n1ss1(7));
   d_mux_21i9Bus46_0 : mux_3u_3u port map ( a(2)=>q2(0), a(1)=>q1(0), a(0)=>
      q3(0), b(2)=>debug_num_5_0_EXMPLR430, b(1)=>t(1), b(0)=>t(0), d=>
      d_21n1ss1(0));
   d_mux_21i9Bus46_1 : mux_3u_3u port map ( a(2)=>q2(1), a(1)=>q1(1), a(0)=>
      q3(1), b(2)=>debug_num_5_0_EXMPLR430, b(1)=>t(1), b(0)=>t(0), d=>
      d_21n1ss1(1));
   d_mux_21i9Bus46_2 : mux_3u_3u port map ( a(2)=>q2(2), a(1)=>q1(2), a(0)=>
      q3(2), b(2)=>debug_num_5_0_EXMPLR430, b(1)=>t(1), b(0)=>t(0), d=>
      d_21n1ss1(2));
   d_mux_21i9Bus46_3 : mux_3u_3u port map ( a(2)=>q2(3), a(1)=>q1(3), a(0)=>
      q3(3), b(2)=>debug_num_5_0_EXMPLR430, b(1)=>t(1), b(0)=>t(0), d=>
      d_21n1ss1(3));
   d_mux_21i9Bus46_4 : mux_3u_3u port map ( a(2)=>q2(4), a(1)=>q1(4), a(0)=>
      q3(4), b(2)=>debug_num_5_0_EXMPLR430, b(1)=>t(1), b(0)=>t(0), d=>
      d_21n1ss1(4));
   d_mux_21i9Bus46_5 : mux_3u_3u port map ( a(2)=>q2(5), a(1)=>q1(5), a(0)=>
      q3(5), b(2)=>debug_num_5_0_EXMPLR430, b(1)=>t(1), b(0)=>t(0), d=>
      d_21n1ss1(5));
   d_mux_21i9Bus46_6 : mux_3u_3u port map ( a(2)=>q2(6), a(1)=>q1(6), a(0)=>
      q3(6), b(2)=>debug_num_5_0_EXMPLR430, b(1)=>t(1), b(0)=>t(0), d=>
      d_21n1ss1(6));
   d_mux_21i9Bus46_7 : mux_3u_3u port map ( a(2)=>q2(7), a(1)=>q1(7), a(0)=>
      q3(7), b(2)=>debug_num_5_0_EXMPLR430, b(1)=>t(1), b(0)=>t(0), d=>
      d_21n1ss1(7));
   not_rtlc19n43 <= NOT rtlc19n43 ;
   sub1_8 <= NOT rtlc7n260 ;
   rtlcn140 <= rtlcs4 AND rtlcs3 ;
   not_rtlc7n294 <= NOT rtlc7n294 ;
   rtlcn143 <= not_rtlc7n294 AND rtlc23n83 ;
   rtlcn147 <= rtlc7n294 AND v(4) ;
   not_rtlcn158 <= NOT rtlcn158 ;
   max1(0) <= r1(0) when rtlc7n260 = '1' else r2(0) ;
   max1(1) <= r1(1) when rtlc7n260 = '1' else r2(1) ;
   max1(2) <= r1(2) when rtlc7n260 = '1' else r2(2) ;
   max1(3) <= r1(3) when rtlc7n260 = '1' else r2(3) ;
   max1(4) <= r1(4) when rtlc7n260 = '1' else r2(4) ;
   max1(5) <= r1(5) when rtlc7n260 = '1' else r2(5) ;
   max1(6) <= r1(6) when rtlc7n260 = '1' else r2(6) ;
   max1(7) <= r1(7) when rtlc7n260 = '1' else r2(7) ;
   max2(0) <= r9(0) when rtlc7n294 = '1' else r11(0) ;
   max2(1) <= r9(1) when rtlc7n294 = '1' else r11(1) ;
   max2(2) <= r9(2) when rtlc7n294 = '1' else r11(2) ;
   max2(3) <= r9(3) when rtlc7n294 = '1' else r11(3) ;
   max2(4) <= r9(4) when rtlc7n294 = '1' else r11(4) ;
   max2(5) <= r9(5) when rtlc7n294 = '1' else r11(5) ;
   max2(6) <= r9(6) when rtlc7n294 = '1' else r11(6) ;
   max2(7) <= r9(7) when rtlc7n294 = '1' else r11(7) ;
   max2(8) <= r9(8) when rtlc7n294 = '1' else r11(8) ;
   max2(9) <= r9(9) when rtlc7n294 = '1' else r11(9) ;
   max3(0) <= r11(0) when rtlc7n332 = '1' else r12(0) ;
   max3(1) <= r11(1) when rtlc7n332 = '1' else r12(1) ;
   max3(2) <= r11(2) when rtlc7n332 = '1' else r12(2) ;
   max3(3) <= r11(3) when rtlc7n332 = '1' else r12(3) ;
   max3(4) <= r11(4) when rtlc7n332 = '1' else r12(4) ;
   max3(5) <= r11(5) when rtlc7n332 = '1' else r12(5) ;
   max3(6) <= r11(6) when rtlc7n332 = '1' else r12(6) ;
   max3(7) <= r11(7) when rtlc7n332 = '1' else r12(7) ;
   max3(8) <= r11(8) when rtlc7n332 = '1' else r12(8) ;
   max3(9) <= r11(9) when rtlc7n332 = '1' else r12(9) ;
   rtlc20n212 <= not_rtlcn158 when rtlcs4 = '1' else not_end_of_img ;
   dir5_23n5ss1_2 <= dir1_2 when rtlc7n294 = '1' else dir2_2 ;
   dir6_23n5ss1_2 <= dir5(2) when rtlc7n294 = '1' else dir3_2 ;
   dir7_24n3ss1(0) <= dir4_0 when rtlc7n332 = '1' else dir6(0) ;
   dir7_24n3ss1(2) <= dir4_2 when rtlc7n332 = '1' else dir6(2) ;
   r8_25n1ss1(0) <= r7(0) when v(2) = '1' else add3(0) ;
   r8_25n1ss1(1) <= r7(1) when v(2) = '1' else add3(1) ;
   r8_25n1ss1(2) <= r7(2) when v(2) = '1' else add3(2) ;
   r8_25n1ss1(3) <= r7(3) when v(2) = '1' else add3(3) ;
   r8_25n1ss1(4) <= r7(4) when v(2) = '1' else add3(4) ;
   r8_25n1ss1(5) <= r7(5) when v(2) = '1' else add3(5) ;
   r8_25n1ss1(6) <= r7(6) when v(2) = '1' else add3(6) ;
   r8_25n1ss1(7) <= r7(7) when v(2) = '1' else add3(7) ;
   r8_25n1ss1(8) <= r7(8) when v(2) = '1' else add3(8) ;
   r9_25n4ss1(0) <= add2(0) when v(2) = '1' else max2(0) ;
   r9_25n4ss1(1) <= add2(1) when v(2) = '1' else max2(1) ;
   r9_25n4ss1(2) <= add2(2) when v(2) = '1' else max2(2) ;
   r9_25n4ss1(3) <= add2(3) when v(2) = '1' else max2(3) ;
   r9_25n4ss1(4) <= add2(4) when v(2) = '1' else max2(4) ;
   r9_25n4ss1(5) <= add2(5) when v(2) = '1' else max2(5) ;
   r9_25n4ss1(6) <= add2(6) when v(2) = '1' else max2(6) ;
   r9_25n4ss1(7) <= add2(7) when v(2) = '1' else max2(7) ;
   r9_25n4ss1(8) <= add2(8) when v(2) = '1' else max2(8) ;
   r9_25n4ss1(9) <= add2(9) when v(2) = '1' else max2(9) ;
   not_rtlc20n212 <= NOT rtlc20n212 ;
   rtlc20n332 <= v(2) AND not_rtlc20n212 ;
   rtlc20n331 <= v(2) AND rtlcs4 ;
   not_rtlcs4 <= NOT rtlcs4 ;
   not_rtlcs7 <= NOT rtlcs7 ;
   rtlc21n169 <= i_valid AND not_rtlcs7 ;
   rtlcn160 <= v(2) OR v(1) ;
   not_v_3 <= NOT v(3) ;
   not_rtlcn160 <= NOT rtlcn160 ;
   rtlc_773_and_40 : and_3u_3u port map ( a(2)=>not_v_3, a(1)=>v(4), a(0)=>
      not_rtlcn160, d=>rtlc22n182);
   rtlc22n179 <= v(3) AND not_rtlcn160 ;
   not_v_1 <= NOT v(1) ;
   rtlc22n176 <= v(2) AND not_v_1 ;
   not_v_4 <= NOT v(4) ;
   rtlc23n83 <= not_v_4 AND v(5) ;
   not_rtlc24n41 <= NOT rtlc24n41 ;
   rtlcn167 <= not_v_3 AND v(4) ;
   rtlcn159 <= v(2) OR rtlcn167 ;
   not_v_0 <= NOT v(0) ;
   rtlc_783_and_41 : and_3u_3u port map ( a(2)=>not_v_1, a(1)=>not_v_0, a(0)
      =>rtlcn159, d=>rtlc25n236);
   rtlc_784_or_42 : or_3u_3u port map ( a(2)=>v(0), a(1)=>v(3), a(0)=>
      rtlcn160, d=>rtlc25n226);
   not_rtlcn169 <= NOT rtlcn169 ;
   rtlc_789_and_43 : and_8u_8u port map ( a(7)=>x(7), a(6)=>x(6), a(5)=>x(5), 
      a(4)=>x(4), a(3)=>x(3), a(2)=>x(2), a(1)=>x(1), a(0)=>x(0), d=>rtlcs4
   );
   rtlc_790_and_44 : and_8u_8u port map ( a(7)=>o_row_EXMPLR435(7), a(6)=>
      o_row_EXMPLR435(6), a(5)=>o_row_EXMPLR435(5), a(4)=>o_row_EXMPLR435(4), 
      a(3)=>o_row_EXMPLR435(3), a(2)=>o_row_EXMPLR435(2), a(1)=>
      o_row_EXMPLR435(1), a(0)=>o_row_EXMPLR435(0), d=>rtlcs3);
   rtlcn158 <= end_of_img OR rtlcs3 ;
   not_rtlc11n52 <= NOT rtlc11n52 ;
   addr_x(0) <= x(0) AND not_rtlc11n52 ;
   addr_x(1) <= x(1) AND not_rtlc11n52 ;
   addr_x(2) <= x(2) AND not_rtlc11n52 ;
   addr_x(3) <= x(3) AND not_rtlc11n52 ;
   addr_x(4) <= x(4) AND not_rtlc11n52 ;
   addr_x(5) <= x(5) AND not_rtlc11n52 ;
   addr_x(6) <= x(6) AND not_rtlc11n52 ;
   addr_x(7) <= x(7) AND not_rtlc11n52 ;
   addr_t(1) <= t(1) AND not_rtlc11n52 ;
   addr_t(0) <= t(0) AND not_rtlc11n52 ;
   not_addr_t_1 <= NOT addr_t(1) ;
   not_addr_t_0 <= NOT addr_t(0) ;
   wren_m1 <= i_valid AND rtlcs0 ;
   wren_m3 <= i_valid AND rtlcs2 ;
   wren_m2 <= i_valid AND rtlcs1 ;
   sub4_7 <= rtlc16n0_16n1s2_7 AND v(7) ;
   sub4_8 <= rtlc16n0_16n1s2_8 AND v(7) ;
   sub4_12 <= rtlc16n0_16n1s2_12 AND v(7) ;
   sub4_11 <= rtlc16n0_16n1s2_11 AND v(7) ;
   sub4_10 <= rtlc16n0_16n1s2_10 AND v(7) ;
   sub4_9 <= rtlc16n0_16n1s2_9 AND v(7) ;
   sub4_13 <= rtlc16n0_16n1s2_13 AND v(7) ;
   not_sub4_13 <= NOT sub4_13 ;
   o_edge_EXMPLR416 <= rtlc17n0_17n1s2 AND not_sub4_13 ;
   rtlc24n41 <= not_v_6 AND rtlc7n332 ;
   o_dir(0) <= dir7(0) AND o_edge_EXMPLR416 ;
   not_rtlc7n332 <= NOT rtlc7n332 ;
   dir7_24n3ss1(1) <= dir6(1) AND not_rtlc7n332 ;
   o_dir(1) <= dir7(1) AND o_edge_EXMPLR416 ;
   o_dir(2) <= dir7(2) AND o_edge_EXMPLR416 ;
   not_o_mode_1 <= NOT o_mode_EXMPLR434(1) ;
   not_o_mode_0 <= NOT o_mode_EXMPLR434(0) ;
   rtlcn169 <= i_reset OR v(2) ;
   rtlcs0 <= not_addr_t_1 AND not_addr_t_0 ;
   rtlcs2 <= addr_t(1) AND not_addr_t_0 ;
   rtlcs1 <= not_addr_t_1 AND addr_t(0) ;
   rtlcs7 <= t(1) AND t(0) ;
   rtlcs6 <= not_o_mode_1 AND o_mode_EXMPLR434(0) ;
   rtlcs5 <= o_mode_EXMPLR434(1) AND not_o_mode_0 ;
   modgen_counter_x : counter_up_cnt_en_sclear_clock_0_8 port map ( clock=>
      i_clock, q(7)=>x(7), q(6)=>x(6), q(5)=>x(5), q(4)=>x(4), q(3)=>x(3), 
      q(2)=>x(2), q(1)=>x(1), q(0)=>x(0), clk_en=>debug_num_5_1_EXMPLR431, 
      aclear=>debug_num_5_0_EXMPLR430, sload=>debug_num_5_0_EXMPLR430, 
      data(7)=>DANGLING(30), data(6)=>DANGLING(31), data(5)=>DANGLING(32), 
      data(4)=>DANGLING(33), data(3)=>DANGLING(34), data(2)=>DANGLING(35), 
      data(1)=>DANGLING(36), data(0)=>DANGLING(37), aset=>
      debug_num_5_0_EXMPLR430, sclear=>i_reset, updn=>
      debug_num_5_1_EXMPLR431, cnt_en=>v(2));
   modgen_counter_o_row : counter_up_cnt_en_sclear_clock_clk_en_0_8
       port map ( clock=>i_clock, q(7)=>o_row_EXMPLR435(7), q(6)=>
      o_row_EXMPLR435(6), q(5)=>o_row_EXMPLR435(5), q(4)=>o_row_EXMPLR435(4), 
      q(3)=>o_row_EXMPLR435(3), q(2)=>o_row_EXMPLR435(2), q(1)=>
      o_row_EXMPLR435(1), q(0)=>o_row_EXMPLR435(0), clk_en=>not_rtlc20n268, 
      aclear=>debug_num_5_0_EXMPLR430, sload=>debug_num_5_0_EXMPLR430, 
      data(7)=>DANGLING(38), data(6)=>DANGLING(39), data(5)=>DANGLING(40), 
      data(4)=>DANGLING(41), data(3)=>DANGLING(42), data(2)=>DANGLING(43), 
      data(1)=>DANGLING(44), data(0)=>DANGLING(45), aset=>
      debug_num_5_0_EXMPLR430, sclear=>rtlc20_X_0_n283, updn=>
      debug_num_5_1_EXMPLR431, cnt_en=>rtlcs4);
   add1_add8_4 : add_8u_8u_8u_0_0 port map ( cin=>debug_num_5_0_EXMPLR430, 
      a(7)=>r3(7), a(6)=>r3(6), a(5)=>r3(5), a(4)=>r3(4), a(3)=>r3(3), a(2)
      =>r3(2), a(1)=>r3(1), a(0)=>r3(0), b(7)=>r4(7), b(6)=>r4(6), b(5)=>
      r4(5), b(4)=>r4(4), b(3)=>r4(3), b(2)=>r4(2), b(1)=>r4(1), b(0)=>r4(0), 
      d(7)=>add1(7), d(6)=>add1(6), d(5)=>add1(5), d(4)=>add1(4), d(3)=>
      add1(3), d(2)=>add1(2), d(1)=>add1(1), d(0)=>add1(0), cout=>add1(8));
   add2_add9_5 : add_9u_9u_9u_0_0 port map ( cin=>debug_num_5_0_EXMPLR430, 
      a(8)=>debug_num_5_0_EXMPLR430, a(7)=>r5(7), a(6)=>r5(6), a(5)=>r5(5), 
      a(4)=>r5(4), a(3)=>r5(3), a(2)=>r5(2), a(1)=>r5(1), a(0)=>r5(0), b(8)
      =>r7(8), b(7)=>r7(7), b(6)=>r7(6), b(5)=>r7(5), b(4)=>r7(4), b(3)=>
      r7(3), b(2)=>r7(2), b(1)=>r7(1), b(0)=>r7(0), d(8)=>add2(8), d(7)=>
      add2(7), d(6)=>add2(6), d(5)=>add2(5), d(4)=>add2(4), d(3)=>add2(3), 
      d(2)=>add2(2), d(1)=>add2(1), d(0)=>add2(0), cout=>add2(9));
   add4_add11_6 : add_11u_11u_11u_0_0 port map ( cin=>
      debug_num_5_0_EXMPLR430, a(10)=>debug_num_5_0_EXMPLR430, a(9)=>r13(10), 
      a(8)=>r13(9), a(7)=>r13(8), a(6)=>r13(7), a(5)=>r13(6), a(4)=>r13(5), 
      a(3)=>r13(4), a(2)=>r13(3), a(1)=>r13(2), a(0)=>r13(1), b(10)=>r13(10), 
      b(9)=>r13(9), b(8)=>r13(8), b(7)=>r13(7), b(6)=>r13(6), b(5)=>r13(5), 
      b(4)=>r13(4), b(3)=>r13(3), b(2)=>r13(2), b(1)=>r13(1), b(0)=>r13(0), 
      d(10)=>add4(11), d(9)=>add4(10), d(8)=>add4(9), d(7)=>add4(8), d(6)=>
      add4(7), d(5)=>add4(6), d(4)=>add4(5), d(3)=>add4(4), d(2)=>add4(3), 
      d(1)=>add4(2), d(0)=>add4(1), cout=>add4(12));
   rtlc16n0_16n1s2_13 <= NOT rtlcn666 ;
   DFFPC (v(0),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,v(1))
    ;
   DFFRSE (i_valid,debug_num_5_0_EXMPLR430,i_reset,debug_num_5_1_EXMPLR431,
   i_clock,v(0)) ;
   DFFPC (v(1),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,v(2))
    ;
   DFFPC (v(2),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,v(3))
    ;
   DFFPC (v(3),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,v(4))
    ;
   DFFPC (v(4),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,v(5))
    ;
   DFFPC (v(5),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,v(6))
    ;
   DFFPC (v(6),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,v(7))
    ;
   DFFRSE (debug_num_5_1_EXMPLR431,debug_num_5_0_EXMPLR430,i_reset,
   debug_num_5_1_EXMPLR431,i_clock,o_mode_EXMPLR434(1)) ;
   DFFRSE (not_rtlc19n43,i_reset,debug_num_5_0_EXMPLR430,
   debug_num_5_1_EXMPLR431,i_clock,o_mode_EXMPLR434(0)) ;
   DFFRSE (rtlcn140,debug_num_5_0_EXMPLR430,i_reset,rtlc20n332,i_clock,
   end_of_img) ;
   DFFRSE (t_20n2s1(1),debug_num_5_0_EXMPLR430,i_reset,rtlc20n331,i_clock,
   t(1)) ;
   DFFRSE (t_20n2s1(0),debug_num_5_0_EXMPLR430,i_reset,rtlc20n331,i_clock,
   t(0)) ;
   DFFPCE (d_21n1ss1(7),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc21n169,i_clock,d(7)) ;
   DFFPCE (d_21n1ss1(6),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc21n169,i_clock,d(6)) ;
   DFFPCE (d_21n1ss1(5),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc21n169,i_clock,d(5)) ;
   DFFPCE (d_21n1ss1(4),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc21n169,i_clock,d(4)) ;
   DFFPCE (d_21n1ss1(3),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc21n169,i_clock,d(3)) ;
   DFFPCE (d_21n1ss1(2),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc21n169,i_clock,d(2)) ;
   DFFPCE (d_21n1ss1(1),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc21n169,i_clock,d(1)) ;
   DFFPCE (d_21n1ss1(0),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc21n169,i_clock,d(0)) ;
   DFFPCE (c_21n1ss1(7),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc21n169,i_clock,c(7)) ;
   DFFPCE (c_21n1ss1(6),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc21n169,i_clock,c(6)) ;
   DFFPCE (c_21n1ss1(5),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc21n169,i_clock,c(5)) ;
   DFFPCE (c_21n1ss1(4),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc21n169,i_clock,c(4)) ;
   DFFPCE (c_21n1ss1(3),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc21n169,i_clock,c(3)) ;
   DFFPCE (c_21n1ss1(2),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc21n169,i_clock,c(2)) ;
   DFFPCE (c_21n1ss1(1),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc21n169,i_clock,c(1)) ;
   DFFPCE (c_21n1ss1(0),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc21n169,i_clock,c(0)) ;
   DFFPCE (i_pixel(7),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   i_valid,i_clock,e(7)) ;
   DFFPCE (i_pixel(6),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   i_valid,i_clock,e(6)) ;
   DFFPCE (i_pixel(5),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   i_valid,i_clock,e(5)) ;
   DFFPCE (i_pixel(4),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   i_valid,i_clock,e(4)) ;
   DFFPCE (i_pixel(3),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   i_valid,i_clock,e(3)) ;
   DFFPCE (i_pixel(2),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   i_valid,i_clock,e(2)) ;
   DFFPCE (i_pixel(1),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   i_valid,i_clock,e(1)) ;
   DFFPCE (i_pixel(0),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   i_valid,i_clock,e(0)) ;
   DFFPCE (e(7),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,f(7)) ;
   DFFPCE (e(6),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,f(6)) ;
   DFFPCE (e(5),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,f(5)) ;
   DFFPCE (e(4),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,f(4)) ;
   DFFPCE (e(3),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,f(3)) ;
   DFFPCE (e(2),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,f(2)) ;
   DFFPCE (e(1),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,f(1)) ;
   DFFPCE (e(0),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,f(0)) ;
   DFFPCE (d(7),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,i(7)) ;
   DFFPCE (d(6),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,i(6)) ;
   DFFPCE (d(5),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,i(5)) ;
   DFFPCE (d(4),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,i(4)) ;
   DFFPCE (d(3),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,i(3)) ;
   DFFPCE (d(2),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,i(2)) ;
   DFFPCE (d(1),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,i(1)) ;
   DFFPCE (d(0),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,i(0)) ;
   DFFPCE (c(7),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,b(7)) ;
   DFFPCE (c(6),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,b(6)) ;
   DFFPCE (c(5),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,b(5)) ;
   DFFPCE (c(4),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,b(4)) ;
   DFFPCE (c(3),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,b(3)) ;
   DFFPCE (c(2),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,b(2)) ;
   DFFPCE (c(1),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,b(1)) ;
   DFFPCE (c(0),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,b(0)) ;
   DFFPCE (f(7),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,g(7)) ;
   DFFPCE (f(6),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,g(6)) ;
   DFFPCE (f(5),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,g(5)) ;
   DFFPCE (f(4),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,g(4)) ;
   DFFPCE (f(3),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,g(3)) ;
   DFFPCE (f(2),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,g(2)) ;
   DFFPCE (f(1),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,g(1)) ;
   DFFPCE (f(0),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,g(0)) ;
   DFFPCE (i(7),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,h(7)) ;
   DFFPCE (i(6),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,h(6)) ;
   DFFPCE (i(5),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,h(5)) ;
   DFFPCE (i(4),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,h(4)) ;
   DFFPCE (i(3),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,h(3)) ;
   DFFPCE (i(2),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,h(2)) ;
   DFFPCE (i(1),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,h(1)) ;
   DFFPCE (i(0),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,h(0)) ;
   DFFPCE (b(7),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,a(7)) ;
   DFFPCE (b(6),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,a(6)) ;
   DFFPCE (b(5),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,a(5)) ;
   DFFPCE (b(4),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,a(4)) ;
   DFFPCE (b(3),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,a(3)) ;
   DFFPCE (b(2),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,a(2)) ;
   DFFPCE (b(1),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,a(1)) ;
   DFFPCE (b(0),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_valid,
   i_clock,a(0)) ;
   DFFPCE (sub1_8,debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,rtlc22n182,
   i_clock,dir4_2) ;
   DFFPCE (rtlc7n260,debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc22n182,i_clock,dir4_0) ;
   DFFPCE (sub1_8,debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,rtlc22n179,
   i_clock,dir3_2) ;
   DFFPCE (sub1_8,debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,rtlc22n176,
   i_clock,dir2_2) ;
   DFFPCE (sub1_8,debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,v(1),
   i_clock,dir1_2) ;
   DFFPCE (dir6_23n5ss1_2,debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc23n83,i_clock,dir6(2)) ;
   DFFPCE (dir5_23n5ss1_2,debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   v(4),i_clock,dir5(2)) ;
   DFFPCE (rtlc7n294,debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,v(4),
   i_clock,dir5(1)) ;
   DFFPCE (dir7_24n3ss1(2),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   not_rtlc24n41,i_clock,dir7(2)) ;
   DFFPCE (dir7_24n3ss1(1),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   not_rtlc24n41,i_clock,dir7(1)) ;
   DFFPCE (dir7_24n3ss1(0),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   not_rtlc24n41,i_clock,dir7(0)) ;
   DFFPCE (r9_25n4ss1(9),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n236,i_clock,r9(9)) ;
   DFFPCE (r9_25n4ss1(8),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n236,i_clock,r9(8)) ;
   DFFPCE (r9_25n4ss1(7),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n236,i_clock,r9(7)) ;
   DFFPCE (r9_25n4ss1(6),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n236,i_clock,r9(6)) ;
   DFFPCE (r9_25n4ss1(5),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n236,i_clock,r9(5)) ;
   DFFPCE (r9_25n4ss1(4),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n236,i_clock,r9(4)) ;
   DFFPCE (r9_25n4ss1(3),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n236,i_clock,r9(3)) ;
   DFFPCE (r9_25n4ss1(2),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n236,i_clock,r9(2)) ;
   DFFPCE (r9_25n4ss1(1),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n236,i_clock,r9(1)) ;
   DFFPCE (r9_25n4ss1(0),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n236,i_clock,r9(0)) ;
   DFFPCE (r4_25n6ss1(7),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r4(7)) ;
   DFFPCE (r4_25n6ss1(6),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r4(6)) ;
   DFFPCE (r4_25n6ss1(5),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r4(5)) ;
   DFFPCE (r4_25n6ss1(4),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r4(4)) ;
   DFFPCE (r4_25n6ss1(3),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r4(3)) ;
   DFFPCE (r4_25n6ss1(2),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r4(2)) ;
   DFFPCE (r4_25n6ss1(1),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r4(1)) ;
   DFFPCE (r4_25n6ss1(0),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r4(0)) ;
   DFFPCE (r3_25n6ss1(7),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r3(7)) ;
   DFFPCE (r3_25n6ss1(6),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r3(6)) ;
   DFFPCE (r3_25n6ss1(5),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r3(5)) ;
   DFFPCE (r3_25n6ss1(4),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r3(4)) ;
   DFFPCE (r3_25n6ss1(3),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r3(3)) ;
   DFFPCE (r3_25n6ss1(2),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r3(2)) ;
   DFFPCE (r3_25n6ss1(1),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r3(1)) ;
   DFFPCE (r3_25n6ss1(0),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r3(0)) ;
   DFFPCE (r2_25n6ss1(7),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r2(7)) ;
   DFFPCE (r2_25n6ss1(6),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r2(6)) ;
   DFFPCE (r2_25n6ss1(5),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r2(5)) ;
   DFFPCE (r2_25n6ss1(4),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r2(4)) ;
   DFFPCE (r2_25n6ss1(3),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r2(3)) ;
   DFFPCE (r2_25n6ss1(2),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r2(2)) ;
   DFFPCE (r2_25n6ss1(1),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r2(1)) ;
   DFFPCE (r2_25n6ss1(0),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r2(0)) ;
   DFFPCE (r1_25n6ss1(7),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r1(7)) ;
   DFFPCE (r1_25n6ss1(6),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r1(6)) ;
   DFFPCE (r1_25n6ss1(5),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r1(5)) ;
   DFFPCE (r1_25n6ss1(4),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r1(4)) ;
   DFFPCE (r1_25n6ss1(3),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r1(3)) ;
   DFFPCE (r1_25n6ss1(2),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r1(2)) ;
   DFFPCE (r1_25n6ss1(1),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r1(1)) ;
   DFFPCE (r1_25n6ss1(0),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   rtlc25n226,i_clock,r1(0)) ;
   DFFRSE (add3(10),debug_num_5_0_EXMPLR430,v(2),debug_num_5_1_EXMPLR431,
   i_clock,r8(10)) ;
   DFFRSE (add3(9),debug_num_5_0_EXMPLR430,v(2),debug_num_5_1_EXMPLR431,
   i_clock,r8(9)) ;
   DFFPC (r8_25n1ss1(8),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   i_clock,r8(8)) ;
   DFFPC (r8_25n1ss1(7),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   i_clock,r8(7)) ;
   DFFPC (r8_25n1ss1(6),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   i_clock,r8(6)) ;
   DFFPC (r8_25n1ss1(5),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   i_clock,r8(5)) ;
   DFFPC (r8_25n1ss1(4),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   i_clock,r8(4)) ;
   DFFPC (r8_25n1ss1(3),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   i_clock,r8(3)) ;
   DFFPC (r8_25n1ss1(2),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   i_clock,r8(2)) ;
   DFFPC (r8_25n1ss1(1),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   i_clock,r8(1)) ;
   DFFPC (r8_25n1ss1(0),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,
   i_clock,r8(0)) ;
   DFFPC (add4(12),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r15(12)) ;
   DFFPC (add4(11),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r15(11)) ;
   DFFPC (add4(10),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r15(10)) ;
   DFFPC (add4(9),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r15(9)) ;
   DFFPC (add4(8),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r15(8)) ;
   DFFPC (add4(7),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r15(7)) ;
   DFFPC (add4(6),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r15(6)) ;
   DFFPC (add4(5),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r15(5)) ;
   DFFPC (add4(4),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r15(4)) ;
   DFFPC (add4(3),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r15(3)) ;
   DFFPC (add4(2),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r15(2)) ;
   DFFPC (add4(1),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r15(1)) ;
   DFFPC (r13(0),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r15(0)) ;
   DFFPC (max3(9),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r14_12) ;
   DFFPC (max3(8),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r14_11) ;
   DFFPC (max3(7),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r14_10) ;
   DFFPC (max3(6),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r14_9) ;
   DFFPC (max3(5),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r14_8) ;
   DFFPC (max3(4),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r14_7) ;
   DFFPC (max3(3),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r14_6) ;
   DFFPC (max3(2),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r14_5) ;
   DFFPC (max3(1),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r14_4) ;
   DFFPC (max3(0),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r14_3) ;
   DFFPC (add3(10),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r13(10)) ;
   DFFPC (add3(9),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r13(9)) ;
   DFFPC (add3(8),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r13(8)) ;
   DFFPC (add3(7),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r13(7)) ;
   DFFPC (add3(6),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r13(6)) ;
   DFFPC (add3(5),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r13(5)) ;
   DFFPC (add3(4),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r13(4)) ;
   DFFPC (add3(3),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r13(3)) ;
   DFFPC (add3(2),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r13(2)) ;
   DFFPC (add3(1),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r13(1)) ;
   DFFPC (add3(0),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r13(0)) ;
   DFFPC (max2(9),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r12(9)) ;
   DFFPC (max2(8),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r12(8)) ;
   DFFPC (max2(7),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r12(7)) ;
   DFFPC (max2(6),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r12(6)) ;
   DFFPC (max2(5),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r12(5)) ;
   DFFPC (max2(4),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r12(4)) ;
   DFFPC (max2(3),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r12(3)) ;
   DFFPC (max2(2),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r12(2)) ;
   DFFPC (max2(1),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r12(1)) ;
   DFFPC (max2(0),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r12(0)) ;
   DFFPC (add2(9),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r11(9)) ;
   DFFPC (add2(8),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r11(8)) ;
   DFFPC (add2(7),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r11(7)) ;
   DFFPC (add2(6),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r11(6)) ;
   DFFPC (add2(5),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r11(5)) ;
   DFFPC (add2(4),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r11(4)) ;
   DFFPC (add2(3),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r11(3)) ;
   DFFPC (add2(2),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r11(2)) ;
   DFFPC (add2(1),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r11(1)) ;
   DFFPC (add2(0),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r11(0)) ;
   DFFPC (add1(8),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r7(8)) ;
   DFFPC (add1(7),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r7(7)) ;
   DFFPC (add1(6),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r7(6)) ;
   DFFPC (add1(5),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r7(5)) ;
   DFFPC (add1(4),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r7(4)) ;
   DFFPC (add1(3),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r7(3)) ;
   DFFPC (add1(2),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r7(2)) ;
   DFFPC (add1(1),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r7(1)) ;
   DFFPC (add1(0),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r7(0)) ;
   DFFPC (max1(7),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r5(7)) ;
   DFFPC (max1(6),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r5(6)) ;
   DFFPC (max1(5),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r5(5)) ;
   DFFPC (max1(4),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r5(4)) ;
   DFFPC (max1(3),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r5(3)) ;
   DFFPC (max1(2),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r5(2)) ;
   DFFPC (max1(1),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r5(1)) ;
   DFFPC (max1(0),debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   r5(0)) ;
   DFFPC (rtlc26n59,debug_num_5_0_EXMPLR430,debug_num_5_0_EXMPLR430,i_clock,
   o_valid) ;
   DFFRSE (dir5(1),rtlcn143,debug_num_5_0_EXMPLR430,rtlc23n83,i_clock,
   dir6(1)) ;
   DFFRSE (dir5(0),rtlcn143,debug_num_5_0_EXMPLR430,rtlc23n83,i_clock,
   dir6(0)) ;
   DFFRSE (dir2_2,debug_num_5_0_EXMPLR430,rtlcn147,v(4),i_clock,dir5(0)) ;
   t_modu2_20i1_rtlcm_0_not_in1_0 <= NOT t_20n2s2(0) ;
   t_modu2_20i1_rtlcm_0_not_in1_1 <= NOT t_20n2s2(1) ;
   t_20n2s1(1) <= t_20n2s2(1) AND t_modu2_20i1_rtlcm_0_not_in1_0 ;
   t_20n2s1(0) <= t_modu2_20i1_rtlcm_0_not_in1_1 AND t_20n2s2(0) ;
   NOT_r15_0 <= NOT r15(0) ;
   rtlc16n0_sub13_16i1 : sub_12u_12u_12u_0 port map ( cin=>NOT_r15_0, a(11)
      =>r14_12, a(10)=>r14_11, a(9)=>r14_10, a(8)=>r14_9, a(7)=>r14_8, a(6)
      =>r14_7, a(5)=>r14_6, a(4)=>r14_5, a(3)=>r14_4, a(2)=>r14_3, a(1)=>
      debug_num_5_0_EXMPLR430, a(0)=>debug_num_5_0_EXMPLR430, b(11)=>r15(12), 
      b(10)=>r15(11), b(9)=>r15(10), b(8)=>r15(9), b(7)=>r15(8), b(6)=>
      r15(7), b(5)=>r15(6), b(4)=>r15(5), b(3)=>r15(4), b(2)=>r15(3), b(1)=>
      r15(2), b(0)=>r15(1), d(11)=>rtlc16n0_16n1s2_12, d(10)=>
      rtlc16n0_16n1s2_11, d(9)=>rtlc16n0_16n1s2_10, d(8)=>rtlc16n0_16n1s2_9, 
      d(7)=>rtlc16n0_16n1s2_8, d(6)=>rtlc16n0_16n1s2_7, d(5)=>DANGLING(46), 
      d(4)=>DANGLING(47), d(3)=>DANGLING(48), d(2)=>DANGLING(49), d(1)=>
      DANGLING(50), d(0)=>DANGLING(51), cout=>rtlcn666);
   r1_25n6ss1(0) <= a(0) when v(0) = '1' else nx342 ;
   nx342 <= c(0) when v(1) = '1' else nx345 ;
   nx345 <= e(0) when v(2) = '1' else g(0) ;
   r1_25n6ss1(1) <= a(1) when v(0) = '1' else nx351 ;
   nx351 <= c(1) when v(1) = '1' else nx354 ;
   nx354 <= e(1) when v(2) = '1' else g(1) ;
   r1_25n6ss1(2) <= a(2) when v(0) = '1' else nx360 ;
   nx360 <= c(2) when v(1) = '1' else nx363 ;
   nx363 <= e(2) when v(2) = '1' else g(2) ;
   r1_25n6ss1(3) <= a(3) when v(0) = '1' else nx369 ;
   nx369 <= c(3) when v(1) = '1' else nx372 ;
   nx372 <= e(3) when v(2) = '1' else g(3) ;
   r1_25n6ss1(4) <= a(4) when v(0) = '1' else nx378 ;
   nx378 <= c(4) when v(1) = '1' else nx381 ;
   nx381 <= e(4) when v(2) = '1' else g(4) ;
   r1_25n6ss1(5) <= a(5) when v(0) = '1' else nx387 ;
   nx387 <= c(5) when v(1) = '1' else nx390 ;
   nx390 <= e(5) when v(2) = '1' else g(5) ;
   r1_25n6ss1(6) <= a(6) when v(0) = '1' else nx396 ;
   nx396 <= c(6) when v(1) = '1' else nx399 ;
   nx399 <= e(6) when v(2) = '1' else g(6) ;
   r1_25n6ss1(7) <= a(7) when v(0) = '1' else nx405 ;
   nx405 <= c(7) when v(1) = '1' else nx408 ;
   nx408 <= e(7) when v(2) = '1' else g(7) ;
   r2_25n6ss1(0) <= d(0) when v(0) = '1' else nx414 ;
   nx414 <= f(0) when v(1) = '1' else nx417 ;
   nx417 <= h(0) when v(2) = '1' else b(0) ;
   r2_25n6ss1(1) <= d(1) when v(0) = '1' else nx423 ;
   nx423 <= f(1) when v(1) = '1' else nx426 ;
   nx426 <= h(1) when v(2) = '1' else b(1) ;
   r2_25n6ss1(2) <= d(2) when v(0) = '1' else nx432 ;
   nx432 <= f(2) when v(1) = '1' else nx435 ;
   nx435 <= h(2) when v(2) = '1' else b(2) ;
   r2_25n6ss1(3) <= d(3) when v(0) = '1' else nx441 ;
   nx441 <= f(3) when v(1) = '1' else nx444 ;
   nx444 <= h(3) when v(2) = '1' else b(3) ;
   r2_25n6ss1(4) <= d(4) when v(0) = '1' else nx450 ;
   nx450 <= f(4) when v(1) = '1' else nx453 ;
   nx453 <= h(4) when v(2) = '1' else b(4) ;
   r2_25n6ss1(5) <= d(5) when v(0) = '1' else nx459 ;
   nx459 <= f(5) when v(1) = '1' else nx462 ;
   nx462 <= h(5) when v(2) = '1' else b(5) ;
   r2_25n6ss1(6) <= d(6) when v(0) = '1' else nx468 ;
   nx468 <= f(6) when v(1) = '1' else nx471 ;
   nx471 <= h(6) when v(2) = '1' else b(6) ;
   r2_25n6ss1(7) <= d(7) when v(0) = '1' else nx477 ;
   nx477 <= f(7) when v(1) = '1' else nx480 ;
   nx480 <= h(7) when v(2) = '1' else b(7) ;
   r3_25n6ss1(0) <= c(0) when v(0) = '1' else nx486 ;
   nx486 <= e(0) when v(1) = '1' else nx489 ;
   nx489 <= f(0) when v(2) = '1' else a(0) ;
   r3_25n6ss1(1) <= c(1) when v(0) = '1' else nx495 ;
   nx495 <= e(1) when v(1) = '1' else nx498 ;
   nx498 <= f(1) when v(2) = '1' else a(1) ;
   r3_25n6ss1(2) <= c(2) when v(0) = '1' else nx504 ;
   nx504 <= e(2) when v(1) = '1' else nx507 ;
   nx507 <= f(2) when v(2) = '1' else a(2) ;
   r3_25n6ss1(3) <= c(3) when v(0) = '1' else nx513 ;
   nx513 <= e(3) when v(1) = '1' else nx516 ;
   nx516 <= f(3) when v(2) = '1' else a(3) ;
   r3_25n6ss1(4) <= c(4) when v(0) = '1' else nx522 ;
   nx522 <= e(4) when v(1) = '1' else nx525 ;
   nx525 <= f(4) when v(2) = '1' else a(4) ;
   r3_25n6ss1(5) <= c(5) when v(0) = '1' else nx532 ;
   nx532 <= e(5) when v(1) = '1' else nx536 ;
   nx536 <= f(5) when v(2) = '1' else a(5) ;
   r3_25n6ss1(6) <= c(6) when v(0) = '1' else nx544 ;
   nx544 <= e(6) when v(1) = '1' else nx547 ;
   nx547 <= f(6) when v(2) = '1' else a(6) ;
   r3_25n6ss1(7) <= c(7) when v(0) = '1' else nx555 ;
   nx555 <= e(7) when v(1) = '1' else nx559 ;
   nx559 <= f(7) when v(2) = '1' else a(7) ;
   r4_25n6ss1(0) <= b(0) when v(0) = '1' else nx567 ;
   nx567 <= d(0) when v(1) = '1' else nx571 ;
   nx571 <= g(0) when v(2) = '1' else h(0) ;
   r4_25n6ss1(1) <= b(1) when v(0) = '1' else nx577 ;
   nx577 <= d(1) when v(1) = '1' else nx580 ;
   nx580 <= g(1) when v(2) = '1' else h(1) ;
   r4_25n6ss1(2) <= b(2) when v(0) = '1' else nx586 ;
   nx586 <= d(2) when v(1) = '1' else nx589 ;
   nx589 <= g(2) when v(2) = '1' else h(2) ;
   r4_25n6ss1(3) <= b(3) when v(0) = '1' else nx595 ;
   nx595 <= d(3) when v(1) = '1' else nx599 ;
   nx599 <= g(3) when v(2) = '1' else h(3) ;
   r4_25n6ss1(4) <= b(4) when v(0) = '1' else nx606 ;
   nx606 <= d(4) when v(1) = '1' else nx609 ;
   nx609 <= g(4) when v(2) = '1' else h(4) ;
   r4_25n6ss1(5) <= b(5) when v(0) = '1' else nx615 ;
   nx615 <= d(5) when v(1) = '1' else nx619 ;
   nx619 <= g(5) when v(2) = '1' else h(5) ;
   r4_25n6ss1(6) <= b(6) when v(0) = '1' else nx627 ;
   nx627 <= d(6) when v(1) = '1' else nx630 ;
   nx630 <= g(6) when v(2) = '1' else h(6) ;
   r4_25n6ss1(7) <= b(7) when v(0) = '1' else nx637 ;
   nx637 <= d(7) when v(1) = '1' else nx641 ;
   nx641 <= g(7) when v(2) = '1' else h(7) ;
   modgen_or_33 : or_5u_5u port map ( a(4)=>sub4_12, a(3)=>sub4_11, a(2)=>
      sub4_10, a(1)=>sub4_9, a(0)=>rtlc17n0_17n1s3, d=>rtlc17n0_17n1s2);
   modgen_or_34 : or_7u_7u port map ( a(6)=>o_row_EXMPLR435(2), a(5)=>
      o_row_EXMPLR435(3), a(4)=>o_row_EXMPLR435(4), a(3)=>o_row_EXMPLR435(5), 
      a(2)=>o_row_EXMPLR435(6), a(1)=>o_row_EXMPLR435(7), a(0)=>rtlc26n206, 
      d=>rtlc26n207);
   modgen_or_35 : or_8u_8u port map ( a(7)=>o_row_EXMPLR435(0), a(6)=>x(2), 
      a(5)=>x(3), a(4)=>x(4), a(3)=>x(5), a(2)=>x(6), a(1)=>x(7), a(0)=>
      rtlc26n204, d=>rtlc26n205);
end main_unfold_1777 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

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
         txflex : OUT std_logic) ;
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
         debug_num_5 : OUT std_logic_vector (3 DOWNTO 0)) ;
   end component ;
   component or_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_5u_5u
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal o_mode_EXMPLR460: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_nrst_EXMPLR456, pixavail: std_logic ;
   
   signal pixel: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_valid, kirschout: std_logic ;
   
   signal dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal rowcount: std_logic_vector (7 DOWNTO 0) ;
   
   signal debug_led_red_0_EXMPLR457, o_sevenseg_7_EXMPLR458, rtlc1n224, 
      rtlc1n225, rtlc1n228, rtlc1n230, rtlc1n232, rtlc1n233, rtlc1n236, 
      rtlc1n144, rtlc1n145, rtlc1n148, rtlc1n150, rtlc1n152, rtlc1n153, 
      rtlc1n156, not_rtlc1n224, not_rtlc1n225, not_rtlc1n233, not_rtlc1n144, 
      not_rtlc1n145, not_rtlc1n153, rtlcs0, rtlcs1, rtlcs2, rtlcs3, rtlcs4, 
      rtlcs5, rtlcs8, rtlcs9, rtlcs10, rtlcs11, rtlcs13, rtlcs15, rtlcs16, 
      rtlcs17, rtlcs18, rtlcs19, rtlcs20, rtlcs22, rtlcs23, rtlcs24, rtlcs25, 
      rtlcs27, rtlcs29, rtlcs31, rtlcs32, rtlcs33, rtlcs34, rtlcs35, rtlcs36, 
      rtlcs37, rtlcs40, rtlcs41, rtlcs42, rtlcs43, rtlcs45, rtlcs47, rtlcs48, 
      rtlcs49, rtlcs50, rtlcs51, rtlcs52, rtlcs54, rtlcs55, rtlcs56, rtlcs57, 
      rtlcs59, rtlcs61, rtlcs63, rtlcs256, rtlcs257, not_rowcount_2, 
      not_rowcount_0, not_rowcount_3, not_rowcount_1, not_rowcount_6, 
      not_rowcount_4, not_rowcount_7, not_rowcount_5: std_logic ;
   
   signal DANGLING : std_logic_vector (47 downto 0 );

begin
   o_sevenseg(15) <= o_sevenseg_7_EXMPLR458 ;
   o_sevenseg(7) <= o_sevenseg_7_EXMPLR458 ;
   o_mode(1) <= o_mode_EXMPLR460(1) ;
   o_mode(0) <= o_mode_EXMPLR460(0) ;
   o_nrst <= o_nrst_EXMPLR456 ;
   debug_led_red(16) <= debug_led_red_0_EXMPLR457 ;
   debug_led_red(15) <= debug_led_red_0_EXMPLR457 ;
   debug_led_red(14) <= debug_led_red_0_EXMPLR457 ;
   debug_led_red(13) <= debug_led_red_0_EXMPLR457 ;
   debug_led_red(12) <= debug_led_red_0_EXMPLR457 ;
   debug_led_red(11) <= debug_led_red_0_EXMPLR457 ;
   debug_led_red(10) <= debug_led_red_0_EXMPLR457 ;
   debug_led_red(9) <= debug_led_red_0_EXMPLR457 ;
   debug_led_red(8) <= debug_led_red_0_EXMPLR457 ;
   debug_led_red(7) <= debug_led_red_0_EXMPLR457 ;
   debug_led_red(6) <= debug_led_red_0_EXMPLR457 ;
   debug_led_red(5) <= debug_led_red_0_EXMPLR457 ;
   debug_led_red(4) <= debug_led_red_0_EXMPLR457 ;
   debug_led_red(3) <= debug_led_red_0_EXMPLR457 ;
   debug_led_red(2) <= debug_led_red_0_EXMPLR457 ;
   debug_led_red(1) <= debug_led_red_0_EXMPLR457 ;
   debug_led_red(0) <= debug_led_red_0_EXMPLR457 ;
   debug_led_grn(5) <= debug_led_red_0_EXMPLR457 ;
   debug_led_grn(4) <= debug_led_red_0_EXMPLR457 ;
   debug_led_grn(3) <= debug_led_red_0_EXMPLR457 ;
   debug_led_grn(2) <= debug_led_red_0_EXMPLR457 ;
   debug_led_grn(1) <= debug_led_red_0_EXMPLR457 ;
   debug_led_grn(0) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_0(7) <= o_sevenseg_7_EXMPLR458 ;
   debug_sevenseg_0(6) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_0(5) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_0(4) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_0(3) <= o_sevenseg_7_EXMPLR458 ;
   debug_sevenseg_0(2) <= o_sevenseg_7_EXMPLR458 ;
   debug_sevenseg_0(1) <= o_sevenseg_7_EXMPLR458 ;
   debug_sevenseg_0(0) <= o_sevenseg_7_EXMPLR458 ;
   debug_sevenseg_1(7) <= o_sevenseg_7_EXMPLR458 ;
   debug_sevenseg_1(6) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_1(5) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_1(4) <= o_sevenseg_7_EXMPLR458 ;
   debug_sevenseg_1(3) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_1(2) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_1(1) <= o_sevenseg_7_EXMPLR458 ;
   debug_sevenseg_1(0) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_2(7) <= o_sevenseg_7_EXMPLR458 ;
   debug_sevenseg_2(6) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_2(5) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_2(4) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_2(3) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_2(2) <= o_sevenseg_7_EXMPLR458 ;
   debug_sevenseg_2(1) <= o_sevenseg_7_EXMPLR458 ;
   debug_sevenseg_2(0) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_3(7) <= o_sevenseg_7_EXMPLR458 ;
   debug_sevenseg_3(6) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_3(5) <= o_sevenseg_7_EXMPLR458 ;
   debug_sevenseg_3(4) <= o_sevenseg_7_EXMPLR458 ;
   debug_sevenseg_3(3) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_3(2) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_3(1) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_3(0) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_4(7) <= o_sevenseg_7_EXMPLR458 ;
   debug_sevenseg_4(6) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_4(5) <= o_sevenseg_7_EXMPLR458 ;
   debug_sevenseg_4(4) <= o_sevenseg_7_EXMPLR458 ;
   debug_sevenseg_4(3) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_4(2) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_4(1) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_4(0) <= o_sevenseg_7_EXMPLR458 ;
   debug_sevenseg_5(7) <= o_sevenseg_7_EXMPLR458 ;
   debug_sevenseg_5(6) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_5(5) <= o_sevenseg_7_EXMPLR458 ;
   debug_sevenseg_5(4) <= o_sevenseg_7_EXMPLR458 ;
   debug_sevenseg_5(3) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_5(2) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_5(1) <= debug_led_red_0_EXMPLR457 ;
   debug_sevenseg_5(0) <= debug_led_red_0_EXMPLR457 ;
   debug_led_red_0_EXMPLR457 <= '0' ;
   o_sevenseg_7_EXMPLR458 <= '1' ;
   u_uw_uart : uw_uart port map ( clk=>clk, rst=>o_nrst_EXMPLR456, kirschout
      =>kirschout, kirschdir(2)=>dir(2), kirschdir(1)=>dir(1), kirschdir(0)
      =>dir(0), o_valid=>o_valid, i_mode(1)=>o_mode_EXMPLR460(1), i_mode(0)
      =>o_mode_EXMPLR460(0), datain(7)=>pixel(7), datain(6)=>pixel(6), 
      datain(5)=>pixel(5), datain(4)=>pixel(4), datain(3)=>pixel(3), 
      datain(2)=>pixel(2), datain(1)=>pixel(1), datain(0)=>pixel(0), 
      o_pixavail=>pixavail, rxflex=>rxflex, txflex=>txflex);
   u_kirsch : kirsch port map ( i_clock=>clk, i_reset=>o_nrst_EXMPLR456, 
      i_valid=>pixavail, i_pixel(7)=>pixel(7), i_pixel(6)=>pixel(6), 
      i_pixel(5)=>pixel(5), i_pixel(4)=>pixel(4), i_pixel(3)=>pixel(3), 
      i_pixel(2)=>pixel(2), i_pixel(1)=>pixel(1), i_pixel(0)=>pixel(0), 
      o_valid=>o_valid, o_edge=>kirschout, o_dir(2)=>dir(2), o_dir(1)=>
      dir(1), o_dir(0)=>dir(0), o_mode(1)=>o_mode_EXMPLR460(1), o_mode(0)=>
      o_mode_EXMPLR460(0), o_row(7)=>rowcount(7), o_row(6)=>rowcount(6), 
      o_row(5)=>rowcount(5), o_row(4)=>rowcount(4), o_row(3)=>rowcount(3), 
      o_row(2)=>rowcount(2), o_row(1)=>rowcount(1), o_row(0)=>rowcount(0), 
      debug_key(3)=>debug_led_red_0_EXMPLR457, debug_key(2)=>
      debug_led_red_0_EXMPLR457, debug_key(1)=>debug_led_red_0_EXMPLR457, 
      debug_switch(17)=>debug_led_red_0_EXMPLR457, debug_switch(16)=>
      debug_led_red_0_EXMPLR457, debug_switch(15)=>debug_led_red_0_EXMPLR457, 
      debug_switch(14)=>debug_led_red_0_EXMPLR457, debug_switch(13)=>
      debug_led_red_0_EXMPLR457, debug_switch(12)=>debug_led_red_0_EXMPLR457, 
      debug_switch(11)=>debug_led_red_0_EXMPLR457, debug_switch(10)=>
      debug_led_red_0_EXMPLR457, debug_switch(9)=>debug_led_red_0_EXMPLR457, 
      debug_switch(8)=>debug_led_red_0_EXMPLR457, debug_switch(7)=>
      debug_led_red_0_EXMPLR457, debug_switch(6)=>debug_led_red_0_EXMPLR457, 
      debug_switch(5)=>debug_led_red_0_EXMPLR457, debug_switch(4)=>
      debug_led_red_0_EXMPLR457, debug_switch(3)=>debug_led_red_0_EXMPLR457, 
      debug_switch(2)=>debug_led_red_0_EXMPLR457, debug_switch(1)=>
      debug_led_red_0_EXMPLR457, debug_switch(0)=>debug_led_red_0_EXMPLR457, 
      debug_led_red(17)=>DANGLING(0), debug_led_red(16)=>DANGLING(1), 
      debug_led_red(15)=>DANGLING(2), debug_led_red(14)=>DANGLING(3), 
      debug_led_red(13)=>DANGLING(4), debug_led_red(12)=>DANGLING(5), 
      debug_led_red(11)=>DANGLING(6), debug_led_red(10)=>DANGLING(7), 
      debug_led_red(9)=>DANGLING(8), debug_led_red(8)=>DANGLING(9), 
      debug_led_red(7)=>DANGLING(10), debug_led_red(6)=>DANGLING(11), 
      debug_led_red(5)=>DANGLING(12), debug_led_red(4)=>DANGLING(13), 
      debug_led_red(3)=>DANGLING(14), debug_led_red(2)=>DANGLING(15), 
      debug_led_red(1)=>DANGLING(16), debug_led_red(0)=>DANGLING(17), 
      debug_led_grn(5)=>DANGLING(18), debug_led_grn(4)=>DANGLING(19), 
      debug_led_grn(3)=>DANGLING(20), debug_led_grn(2)=>DANGLING(21), 
      debug_led_grn(1)=>DANGLING(22), debug_led_grn(0)=>DANGLING(23), 
      debug_num_0(3)=>DANGLING(24), debug_num_0(2)=>DANGLING(25), 
      debug_num_0(1)=>DANGLING(26), debug_num_0(0)=>DANGLING(27), 
      debug_num_1(3)=>DANGLING(28), debug_num_1(2)=>DANGLING(29), 
      debug_num_1(1)=>DANGLING(30), debug_num_1(0)=>DANGLING(31), 
      debug_num_2(3)=>DANGLING(32), debug_num_2(2)=>DANGLING(33), 
      debug_num_2(1)=>DANGLING(34), debug_num_2(0)=>DANGLING(35), 
      debug_num_3(3)=>DANGLING(36), debug_num_3(2)=>DANGLING(37), 
      debug_num_3(1)=>DANGLING(38), debug_num_3(0)=>DANGLING(39), 
      debug_num_4(3)=>DANGLING(40), debug_num_4(2)=>DANGLING(41), 
      debug_num_4(1)=>DANGLING(42), debug_num_4(0)=>DANGLING(43), 
      debug_num_5(3)=>DANGLING(44), debug_num_5(2)=>DANGLING(45), 
      debug_num_5(1)=>DANGLING(46), debug_num_5(0)=>DANGLING(47));
   o_nrst_EXMPLR456 <= NOT nrst ;
   rtlc1_100_or_49 : or_4u_4u port map ( a(3)=>rtlcs2, a(2)=>rtlcs5, a(1)=>
      rtlcs17, a(0)=>rtlcs24, d=>rtlc1n236);
   rtlc1_20_or_50 : or_4u_4u port map ( a(3)=>rtlcs34, a(2)=>rtlcs37, a(1)=>
      rtlcs49, a(0)=>rtlcs56, d=>rtlc1n156);
   rtlc_71_or_57 : or_5u_5u port map ( a(4)=>rtlcs0, a(3)=>rtlcs1, a(2)=>
      rtlcs3, a(1)=>rtlcs16, a(0)=>rtlcs31, d=>rtlc1n224);
   rtlc_77_or_58 : or_5u_5u port map ( a(4)=>rtlcs0, a(3)=>rtlcs8, a(2)=>
      rtlcs15, a(1)=>rtlcs16, a(0)=>rtlcs20, d=>rtlc1n225);
   rtlc_90_or_59 : or_3u_3u port map ( a(2)=>rtlcs16, a(1)=>rtlcs23, a(0)=>
      rtlcs25, d=>rtlc1n228);
   rtlc_99_or_60 : or_4u_4u port map ( a(3)=>rtlcs9, a(2)=>rtlcs17, a(1)=>
      rtlcs19, a(0)=>rtlcs23, d=>rtlc1n230);
   rtlc_108_or_61 : or_3u_3u port map ( a(2)=>rtlcs11, a(1)=>rtlcs13, a(0)=>
      rtlcs29, d=>rtlc1n232);
   rtlc_114_or_62 : or_5u_5u port map ( a(4)=>rtlcs4, a(3)=>rtlcs10, a(2)=>
      rtlcs18, a(1)=>rtlcs22, a(0)=>rtlcs27, d=>rtlc1n233);
   rtlc_133_or_63 : or_5u_5u port map ( a(4)=>rtlcs32, a(3)=>rtlcs33, a(2)=>
      rtlcs35, a(1)=>rtlcs48, a(0)=>rtlcs63, d=>rtlc1n144);
   rtlc_139_or_64 : or_5u_5u port map ( a(4)=>rtlcs32, a(3)=>rtlcs40, a(2)=>
      rtlcs47, a(1)=>rtlcs48, a(0)=>rtlcs52, d=>rtlc1n145);
   rtlc_152_or_65 : or_3u_3u port map ( a(2)=>rtlcs48, a(1)=>rtlcs55, a(0)=>
      rtlcs57, d=>rtlc1n148);
   rtlc_161_or_66 : or_4u_4u port map ( a(3)=>rtlcs41, a(2)=>rtlcs49, a(1)=>
      rtlcs51, a(0)=>rtlcs55, d=>rtlc1n150);
   rtlc_170_or_67 : or_3u_3u port map ( a(2)=>rtlcs43, a(1)=>rtlcs45, a(0)=>
      rtlcs61, d=>rtlc1n152);
   rtlc_176_or_68 : or_5u_5u port map ( a(4)=>rtlcs36, a(3)=>rtlcs42, a(2)=>
      rtlcs50, a(1)=>rtlcs54, a(0)=>rtlcs59, d=>rtlc1n153);
   not_rtlc1n224 <= NOT rtlc1n224 ;
   not_rtlc1n225 <= NOT rtlc1n225 ;
   not_rtlc1n233 <= NOT rtlc1n233 ;
   not_rtlc1n144 <= NOT rtlc1n144 ;
   not_rtlc1n145 <= NOT rtlc1n145 ;
   not_rtlc1n153 <= NOT rtlc1n153 ;
   rtlcs2 <= rtlcs3 AND rtlcs1 ;
   rtlcs5 <= rowcount(2) AND rtlcs4 ;
   rtlcs4 <= not_rowcount_1 AND rtlcs1 ;
   rtlcs9 <= rtlcs8 AND rtlcs10 ;
   rtlcs11 <= rowcount(2) AND rtlcs8 ;
   rtlcs13 <= rowcount(3) AND rtlcs15 ;
   rtlcs17 <= rtlcs15 AND rtlcs18 ;
   rtlcs18 <= not_rowcount_3 AND rtlcs20 ;
   rtlcs24 <= rtlcs25 AND rtlcs23 ;
   rtlcs23 <= rowcount(0) AND rtlcs22 ;
   rtlcs27 <= rowcount(1) AND rtlcs25 ;
   rtlcs256 <= rtlcs10 AND not_rowcount_3 ;
   rtlcs29 <= rtlcs256 AND rtlcs31 ;
   rtlcs34 <= rtlcs35 AND rtlcs33 ;
   rtlcs37 <= rowcount(6) AND rtlcs36 ;
   rtlcs36 <= not_rowcount_5 AND rtlcs33 ;
   rtlcs41 <= rtlcs40 AND rtlcs42 ;
   rtlcs43 <= rowcount(6) AND rtlcs40 ;
   rtlcs45 <= rowcount(7) AND rtlcs47 ;
   rtlcs49 <= rtlcs47 AND rtlcs50 ;
   rtlcs50 <= not_rowcount_7 AND rtlcs52 ;
   rtlcs56 <= rtlcs57 AND rtlcs55 ;
   rtlcs55 <= rowcount(4) AND rtlcs54 ;
   rtlcs59 <= rowcount(5) AND rtlcs57 ;
   rtlcs257 <= rtlcs42 AND not_rowcount_7 ;
   rtlcs61 <= rtlcs257 AND rtlcs63 ;
   not_rowcount_2 <= NOT rowcount(2) ;
   not_rowcount_0 <= NOT rowcount(0) ;
   not_rowcount_3 <= NOT rowcount(3) ;
   not_rowcount_1 <= NOT rowcount(1) ;
   rtlc_898_and_105 : and_3u_3u port map ( a(2)=>not_rowcount_3, a(1)=>
      rowcount(2), a(0)=>not_rowcount_1, d=>rtlcs16);
   rtlc_914_and_106 : and_3u_3u port map ( a(2)=>rowcount(2), a(1)=>
      rowcount(1), a(0)=>rowcount(0), d=>rtlcs19);
   not_rowcount_6 <= NOT rowcount(6) ;
   not_rowcount_4 <= NOT rowcount(4) ;
   not_rowcount_7 <= NOT rowcount(7) ;
   not_rowcount_5 <= NOT rowcount(5) ;
   rtlc_937_and_107 : and_3u_3u port map ( a(2)=>not_rowcount_7, a(1)=>
      rowcount(6), a(0)=>not_rowcount_5, d=>rtlcs48);
   rtlc_953_and_108 : and_3u_3u port map ( a(2)=>rowcount(6), a(1)=>
      rowcount(5), a(0)=>rowcount(4), d=>rtlcs51);
   rtlcs0 <= rowcount(3) AND not_rowcount_2 ;
   rtlcs1 <= rowcount(3) AND rowcount(0) ;
   rtlcs3 <= not_rowcount_2 AND rowcount(1) ;
   rtlcs31 <= rowcount(1) AND not_rowcount_0 ;
   rtlcs8 <= rowcount(3) AND rowcount(1) ;
   rtlcs15 <= rowcount(2) AND not_rowcount_0 ;
   rtlcs20 <= not_rowcount_1 AND not_rowcount_0 ;
   rtlcs22 <= not_rowcount_2 AND not_rowcount_1 ;
   rtlcs25 <= not_rowcount_3 AND rowcount(0) ;
   rtlcs10 <= not_rowcount_2 AND not_rowcount_0 ;
   rtlcs32 <= rowcount(7) AND not_rowcount_6 ;
   rtlcs33 <= rowcount(7) AND rowcount(4) ;
   rtlcs35 <= not_rowcount_6 AND rowcount(5) ;
   rtlcs63 <= rowcount(5) AND not_rowcount_4 ;
   rtlcs40 <= rowcount(7) AND rowcount(5) ;
   rtlcs47 <= rowcount(6) AND not_rowcount_4 ;
   rtlcs52 <= not_rowcount_5 AND not_rowcount_4 ;
   rtlcs54 <= not_rowcount_6 AND not_rowcount_5 ;
   rtlcs57 <= not_rowcount_7 AND rowcount(4) ;
   rtlcs42 <= not_rowcount_6 AND not_rowcount_4 ;
   DFFPC (rtlc1n156,debug_led_red_0_EXMPLR457,debug_led_red_0_EXMPLR457,clk,
   o_sevenseg(14)) ;
   DFFPC (not_rtlc1n153,debug_led_red_0_EXMPLR457,debug_led_red_0_EXMPLR457,
   clk,o_sevenseg(13)) ;
   DFFPC (rtlc1n152,debug_led_red_0_EXMPLR457,debug_led_red_0_EXMPLR457,clk,
   o_sevenseg(12)) ;
   DFFPC (rtlc1n150,debug_led_red_0_EXMPLR457,debug_led_red_0_EXMPLR457,clk,
   o_sevenseg(11)) ;
   DFFPC (rtlc1n148,debug_led_red_0_EXMPLR457,debug_led_red_0_EXMPLR457,clk,
   o_sevenseg(10)) ;
   DFFPC (not_rtlc1n145,debug_led_red_0_EXMPLR457,debug_led_red_0_EXMPLR457,
   clk,o_sevenseg(9)) ;
   DFFPC (not_rtlc1n144,debug_led_red_0_EXMPLR457,debug_led_red_0_EXMPLR457,
   clk,o_sevenseg(8)) ;
   DFFPC (rtlc1n236,debug_led_red_0_EXMPLR457,debug_led_red_0_EXMPLR457,clk,
   o_sevenseg(6)) ;
   DFFPC (not_rtlc1n233,debug_led_red_0_EXMPLR457,debug_led_red_0_EXMPLR457,
   clk,o_sevenseg(5)) ;
   DFFPC (rtlc1n232,debug_led_red_0_EXMPLR457,debug_led_red_0_EXMPLR457,clk,
   o_sevenseg(4)) ;
   DFFPC (rtlc1n230,debug_led_red_0_EXMPLR457,debug_led_red_0_EXMPLR457,clk,
   o_sevenseg(3)) ;
   DFFPC (rtlc1n228,debug_led_red_0_EXMPLR457,debug_led_red_0_EXMPLR457,clk,
   o_sevenseg(2)) ;
   DFFPC (not_rtlc1n225,debug_led_red_0_EXMPLR457,debug_led_red_0_EXMPLR457,
   clk,o_sevenseg(1)) ;
   DFFPC (not_rtlc1n224,debug_led_red_0_EXMPLR457,debug_led_red_0_EXMPLR457,
   clk,o_sevenseg(0)) ;
end main ;

