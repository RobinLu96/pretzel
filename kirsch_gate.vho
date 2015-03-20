
-- 
-- Definition of  kirsch
-- 
--      Sun Mar 31 02:49:18 2013
--      
--      Precision RTL Synthesis, 2008a.47
-- 

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

architecture INTERFACE_unfold_1 of counter_up_cnt_en_sclear_clock_0_8 is 
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
end INTERFACE_unfold_1 ;


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
   component mem_8_8
      port (
         address : IN std_logic_vector (7 DOWNTO 0) ;
         clock : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         wren : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   component add_12u_12u_12u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
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
   component and_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component inc_2u_2u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (1 DOWNTO 0) ;
         d : OUT std_logic_vector (1 DOWNTO 0) ;
         cout : OUT std_logic) ;
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
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
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
   component sub_13u_13u_13u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (12 DOWNTO 0) ;
         b : IN std_logic_vector (12 DOWNTO 0) ;
         d : OUT std_logic_vector (12 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component or_6u_6u
      port (
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   for m1 : mem_8_8 use entity work.mem_8_8(main_unfold_1);
   for m2 : mem_8_8 use entity work.mem_8_8(main_unfold_2);
   for m3 : mem_8_8 use entity work.mem_8_8(main);
   for modgen_counter_x : counter_up_cnt_en_sclear_clock_0_8 use entity work
   .counter_up_cnt_en_sclear_clock_0_8(INTERFACE_unfold_1);
   for modgen_counter_o_row : counter_up_cnt_en_sclear_clock_0_8 use entity 
   work.counter_up_cnt_en_sclear_clock_0_8(INTERFACE);
   signal o_edge_EXMPLR261: std_logic ;
   
   signal o_mode_EXMPLR279: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_row_EXMPLR280: std_logic_vector (7 DOWNTO 0) ;
   
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
   
   signal r8: std_logic_vector (11 DOWNTO 0) ;
   
   signal r9: std_logic_vector (9 DOWNTO 0) ;
   
   signal r11: std_logic_vector (9 DOWNTO 0) ;
   
   signal r12: std_logic_vector (9 DOWNTO 0) ;
   
   signal r13: std_logic_vector (11 DOWNTO 0) ;
   
   signal r14_12, r14_11, r14_10, r14_9, r14_8, r14_7, r14_6, r14_5, r14_4, 
      r14_3, debug_num_5_0_EXMPLR275: std_logic ;
   
   signal r15: std_logic_vector (13 DOWNTO 0) ;
   
   signal dir1_2, dir2_2, dir3_2, dir4_2, dir4_0: std_logic ;
   
   signal dir5: std_logic_vector (2 DOWNTO 0) ;
   
   signal dir6: std_logic_vector (2 DOWNTO 0) ;
   
   signal dir7: std_logic_vector (2 DOWNTO 0) ;
   
   signal max1: std_logic_vector (7 DOWNTO 0) ;
   
   signal max2: std_logic_vector (9 DOWNTO 0) ;
   
   signal max3_12, max3_11, max3_10, max3_9, max3_8, max3_7, max3_6, max3_5, 
      max3_4, max3_3: std_logic ;
   
   signal add1: std_logic_vector (8 DOWNTO 0) ;
   
   signal add2: std_logic_vector (9 DOWNTO 0) ;
   
   signal add3: std_logic_vector (11 DOWNTO 0) ;
   
   signal add4: std_logic_vector (13 DOWNTO 1) ;
   
   signal sub1_8, sub4_13, sub4_12, sub4_11, sub4_10, sub4_9, sub4_8, sub4_7, 
      end_of_img, debug_num_5_1_EXMPLR276, rtlc7n290, rtlc7n324, rtlc7n362, 
      rtlc7n466, rtlc15n52, not_i_reset, rtlc16n35, rtlc16n36, rtlc16n42, 
      rtlc16n43, not_rtlc16n43, rtlc17n70, rtlc17n164, not_v_2, rtlc17n180, 
      not_rtlc17n180, rtlc17n347, rtlc17n427, rtlc18n116, rtlc18n126, 
      rtlc18n166, not_rtlc18n126, rtlc18n178, not_rtlc18n178, not_rtlc17n427
   : std_logic ;
   
   signal t_19n1s2: std_logic_vector (1 DOWNTO 0) ;
   
   signal t_19n1s1: std_logic_vector (1 DOWNTO 0) ;
   
   signal c_20n1ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal d_20n1ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlc20n169, rtlc21n176, rtlc21n179, rtlc21n182, dir5_22n5ss1_2, 
      dir6_22n5ss1_2, rtlc22n83: std_logic ;
   
   signal dir7_23n3ss1: std_logic_vector (2 DOWNTO 0) ;
   
   signal not_v_6, rtlc23n41, not_rtlc23n41: std_logic ;
   
   signal r8_24n1ss1: std_logic_vector (8 DOWNTO 0) ;
   
   signal r9_24n4ss1: std_logic_vector (9 DOWNTO 0) ;
   
   signal r1_24n6ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal r2_24n6ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal r3_24n6ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal r4_24n6ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlc24n223, rtlc24n233, output_edge_25n1s2, output_edge_25n1s1, 
      not_v_7, rtlcn2, not_rtlc7n324, rtlcn133, rtlcn137, rtlcn144, rtlcn145, 
      not_rtlcs3, not_v_3, not_rtlcn145, not_v_1, not_v_4, rtlcn151, not_v_0, 
      rtlcs0, rtlcs1, rtlcs2, rtlcs3, rtlcs6, rtlcs7, not_t_1, not_t_0, 
      not_rtlc7n362, not_o_mode_1, not_o_mode_0, 
      t_modu2_19i1_rtlcm_0_not_in1_0, t_modu2_19i1_rtlcm_0_not_in1_1, 
      NOT_r15_0, nx327, nx330, nx336, nx339, nx345, nx348, nx354, nx357, 
      nx363, nx366, nx372, nx375, nx381, nx384, nx390, nx393, nx399, nx402, 
      nx408, nx411, nx417, nx420, nx426, nx429, nx435, nx438, nx444, nx447, 
      nx453, nx456, nx462, nx465, nx471, nx474, nx480, nx483, nx489, nx492, 
      nx498, nx501, nx507, nx510, nx516, nx519, nx525, nx528, nx534, nx537, 
      nx543, nx547, nx554, nx558, nx566, nx570, nx576, nx580, nx587, nx590, 
      nx596, nx600, nx608, nx612, nx618, nx621: std_logic ;
   
   signal DANGLING : std_logic_vector (51 downto 0 );

begin
   o_edge <= o_edge_EXMPLR261 ;
   o_mode(1) <= o_mode_EXMPLR279(1) ;
   o_mode(0) <= o_mode_EXMPLR279(0) ;
   o_row(7) <= o_row_EXMPLR280(7) ;
   o_row(6) <= o_row_EXMPLR280(6) ;
   o_row(5) <= o_row_EXMPLR280(5) ;
   o_row(4) <= o_row_EXMPLR280(4) ;
   o_row(3) <= o_row_EXMPLR280(3) ;
   o_row(2) <= o_row_EXMPLR280(2) ;
   o_row(1) <= o_row_EXMPLR280(1) ;
   o_row(0) <= o_row_EXMPLR280(0) ;
   debug_led_red(17) <= debug_num_5_0_EXMPLR275 ;
   debug_led_red(16) <= debug_num_5_0_EXMPLR275 ;
   debug_led_red(15) <= debug_num_5_0_EXMPLR275 ;
   debug_led_red(14) <= debug_num_5_0_EXMPLR275 ;
   debug_led_red(13) <= debug_num_5_0_EXMPLR275 ;
   debug_led_red(12) <= debug_num_5_0_EXMPLR275 ;
   debug_led_red(11) <= debug_num_5_0_EXMPLR275 ;
   debug_led_red(10) <= debug_num_5_0_EXMPLR275 ;
   debug_led_red(9) <= debug_num_5_0_EXMPLR275 ;
   debug_led_red(8) <= debug_num_5_0_EXMPLR275 ;
   debug_led_red(7) <= debug_num_5_0_EXMPLR275 ;
   debug_led_red(6) <= debug_num_5_0_EXMPLR275 ;
   debug_led_red(5) <= debug_num_5_0_EXMPLR275 ;
   debug_led_red(4) <= debug_num_5_0_EXMPLR275 ;
   debug_led_red(3) <= debug_num_5_0_EXMPLR275 ;
   debug_led_red(2) <= debug_num_5_0_EXMPLR275 ;
   debug_led_red(1) <= debug_num_5_0_EXMPLR275 ;
   debug_led_red(0) <= debug_num_5_0_EXMPLR275 ;
   debug_led_grn(5) <= debug_num_5_0_EXMPLR275 ;
   debug_led_grn(4) <= debug_num_5_0_EXMPLR275 ;
   debug_led_grn(3) <= debug_num_5_0_EXMPLR275 ;
   debug_led_grn(2) <= debug_num_5_0_EXMPLR275 ;
   debug_led_grn(1) <= debug_num_5_0_EXMPLR275 ;
   debug_led_grn(0) <= debug_num_5_0_EXMPLR275 ;
   debug_num_0(3) <= debug_num_5_0_EXMPLR275 ;
   debug_num_0(2) <= debug_num_5_1_EXMPLR276 ;
   debug_num_0(1) <= debug_num_5_1_EXMPLR276 ;
   debug_num_0(0) <= debug_num_5_1_EXMPLR276 ;
   debug_num_1(3) <= debug_num_5_0_EXMPLR275 ;
   debug_num_1(2) <= debug_num_5_0_EXMPLR275 ;
   debug_num_1(1) <= debug_num_5_1_EXMPLR276 ;
   debug_num_1(0) <= debug_num_5_0_EXMPLR275 ;
   debug_num_2(3) <= debug_num_5_0_EXMPLR275 ;
   debug_num_2(2) <= debug_num_5_0_EXMPLR275 ;
   debug_num_2(1) <= debug_num_5_1_EXMPLR276 ;
   debug_num_2(0) <= debug_num_5_1_EXMPLR276 ;
   debug_num_3(3) <= debug_num_5_1_EXMPLR276 ;
   debug_num_3(2) <= debug_num_5_1_EXMPLR276 ;
   debug_num_3(1) <= debug_num_5_1_EXMPLR276 ;
   debug_num_3(0) <= debug_num_5_0_EXMPLR275 ;
   debug_num_4(3) <= debug_num_5_1_EXMPLR276 ;
   debug_num_4(2) <= debug_num_5_1_EXMPLR276 ;
   debug_num_4(1) <= debug_num_5_0_EXMPLR275 ;
   debug_num_4(0) <= debug_num_5_0_EXMPLR275 ;
   debug_num_5(3) <= debug_num_5_1_EXMPLR276 ;
   debug_num_5(2) <= debug_num_5_1_EXMPLR276 ;
   debug_num_5(1) <= debug_num_5_1_EXMPLR276 ;
   debug_num_5(0) <= debug_num_5_0_EXMPLR275 ;
   debug_num_5_0_EXMPLR275 <= '0' ;
   debug_num_5_1_EXMPLR276 <= '1' ;
   m1 : mem_8_8 port map ( address(7)=>x(7), address(6)=>x(6), address(5)=>
      x(5), address(4)=>x(4), address(3)=>x(3), address(2)=>x(2), address(1)
      =>x(1), address(0)=>x(0), clock=>i_clock, data(7)=>i_pixel(7), data(6)
      =>i_pixel(6), data(5)=>i_pixel(5), data(4)=>i_pixel(4), data(3)=>
      i_pixel(3), data(2)=>i_pixel(2), data(1)=>i_pixel(1), data(0)=>
      i_pixel(0), wren=>wren_m1, q(7)=>q1(7), q(6)=>q1(6), q(5)=>q1(5), q(4)
      =>q1(4), q(3)=>q1(3), q(2)=>q1(2), q(1)=>q1(1), q(0)=>q1(0));
   m2 : mem_8_8 port map ( address(7)=>x(7), address(6)=>x(6), address(5)=>
      x(5), address(4)=>x(4), address(3)=>x(3), address(2)=>x(2), address(1)
      =>x(1), address(0)=>x(0), clock=>i_clock, data(7)=>i_pixel(7), data(6)
      =>i_pixel(6), data(5)=>i_pixel(5), data(4)=>i_pixel(4), data(3)=>
      i_pixel(3), data(2)=>i_pixel(2), data(1)=>i_pixel(1), data(0)=>
      i_pixel(0), wren=>wren_m2, q(7)=>q2(7), q(6)=>q2(6), q(5)=>q2(5), q(4)
      =>q2(4), q(3)=>q2(3), q(2)=>q2(2), q(1)=>q2(1), q(0)=>q2(0));
   m3 : mem_8_8 port map ( address(7)=>x(7), address(6)=>x(6), address(5)=>
      x(5), address(4)=>x(4), address(3)=>x(3), address(2)=>x(2), address(1)
      =>x(1), address(0)=>x(0), clock=>i_clock, data(7)=>i_pixel(7), data(6)
      =>i_pixel(6), data(5)=>i_pixel(5), data(4)=>i_pixel(4), data(3)=>
      i_pixel(3), data(2)=>i_pixel(2), data(1)=>i_pixel(1), data(0)=>
      i_pixel(0), wren=>wren_m3, q(7)=>q3(7), q(6)=>q3(6), q(5)=>q3(5), q(4)
      =>q3(4), q(3)=>q3(3), q(2)=>q3(2), q(1)=>q3(1), q(0)=>q3(0));
   add3_add12_0 : add_12u_12u_12u_0_0 port map ( cin=>
      debug_num_5_0_EXMPLR275, a(11)=>debug_num_5_0_EXMPLR275, a(10)=>
      debug_num_5_0_EXMPLR275, a(9)=>debug_num_5_0_EXMPLR275, a(8)=>r7(8), 
      a(7)=>r7(7), a(6)=>r7(6), a(5)=>r7(5), a(4)=>r7(4), a(3)=>r7(3), a(2)
      =>r7(2), a(1)=>r7(1), a(0)=>r7(0), b(11)=>r8(11), b(10)=>r8(10), b(9)
      =>r8(9), b(8)=>r8(8), b(7)=>r8(7), b(6)=>r8(6), b(5)=>r8(5), b(4)=>
      r8(4), b(3)=>r8(3), b(2)=>r8(2), b(1)=>r8(1), b(0)=>r8(0), d(11)=>
      add3(11), d(10)=>add3(10), d(9)=>add3(9), d(8)=>add3(8), d(7)=>add3(7), 
      d(6)=>add3(6), d(5)=>add3(5), d(4)=>add3(4), d(3)=>add3(3), d(2)=>
      add3(2), d(1)=>add3(1), d(0)=>add3(0), cout=>DANGLING(0));
   sub1_8 <= NOT rtlc7n290 ;
   sub1_sub8_1 : sub_8u_8u_8u_0 port map ( cin=>debug_num_5_1_EXMPLR276, 
      a(7)=>r1(7), a(6)=>r1(6), a(5)=>r1(5), a(4)=>r1(4), a(3)=>r1(3), a(2)
      =>r1(2), a(1)=>r1(1), a(0)=>r1(0), b(7)=>r2(7), b(6)=>r2(6), b(5)=>
      r2(5), b(4)=>r2(4), b(3)=>r2(3), b(2)=>r2(2), b(1)=>r2(1), b(0)=>r2(0), 
      d(7)=>DANGLING(1), d(6)=>DANGLING(2), d(5)=>DANGLING(3), d(4)=>
      DANGLING(4), d(3)=>DANGLING(5), d(2)=>DANGLING(6), d(1)=>DANGLING(7), 
      d(0)=>DANGLING(8), cout=>rtlc7n290);
   sub2_sub10_2 : sub_10u_10u_10u_0 port map ( cin=>debug_num_5_1_EXMPLR276, 
      a(9)=>r9(9), a(8)=>r9(8), a(7)=>r9(7), a(6)=>r9(6), a(5)=>r9(5), a(4)
      =>r9(4), a(3)=>r9(3), a(2)=>r9(2), a(1)=>r9(1), a(0)=>r9(0), b(9)=>
      r11(9), b(8)=>r11(8), b(7)=>r11(7), b(6)=>r11(6), b(5)=>r11(5), b(4)=>
      r11(4), b(3)=>r11(3), b(2)=>r11(2), b(1)=>r11(1), b(0)=>r11(0), d(9)=>
      DANGLING(9), d(8)=>DANGLING(10), d(7)=>DANGLING(11), d(6)=>DANGLING(12
      ), d(5)=>DANGLING(13), d(4)=>DANGLING(14), d(3)=>DANGLING(15), d(2)=>
      DANGLING(16), d(1)=>DANGLING(17), d(0)=>DANGLING(18), cout=>rtlc7n324
   );
   sub3_sub10_3 : sub_10u_10u_10u_0 port map ( cin=>debug_num_5_1_EXMPLR276, 
      a(9)=>r11(9), a(8)=>r11(8), a(7)=>r11(7), a(6)=>r11(6), a(5)=>r11(5), 
      a(4)=>r11(4), a(3)=>r11(3), a(2)=>r11(2), a(1)=>r11(1), a(0)=>r11(0), 
      b(9)=>r12(9), b(8)=>r12(8), b(7)=>r12(7), b(6)=>r12(6), b(5)=>r12(5), 
      b(4)=>r12(4), b(3)=>r12(3), b(2)=>r12(2), b(1)=>r12(1), b(0)=>r12(0), 
      d(9)=>DANGLING(19), d(8)=>DANGLING(20), d(7)=>DANGLING(21), d(6)=>
      DANGLING(22), d(5)=>DANGLING(23), d(4)=>DANGLING(24), d(3)=>DANGLING(
      25), d(2)=>DANGLING(26), d(1)=>DANGLING(27), d(0)=>DANGLING(28), cout
      =>rtlc7n362);
   rtlc15n52 <= rtlc17n347 AND rtlc17n427 ;
   not_rtlc16n43 <= NOT rtlc16n43 ;
   rtlc16n42 <= rtlcs6 AND not_v_0 ;
   rtlc16n35 <= not_i_reset AND rtlcs7 ;
   rtlc16n36 <= end_of_img OR rtlc16n35 ;
   rtlc16n43 <= rtlc16n36 OR rtlc16n42 ;
   not_i_reset <= NOT i_reset ;
   rtlc17n180 <= not_v_2 OR rtlc15n52 ;
   not_rtlc17n180 <= NOT rtlc17n180 ;
   rtlc17n164 <= i_reset OR rtlc17n70 ;
   rtlc17n70 <= v(0) AND end_of_img ;
   rtlc17_75_and_5 : and_8u_8u port map ( a(7)=>x(7), a(6)=>x(6), a(5)=>x(5), 
      a(4)=>x(4), a(3)=>x(3), a(2)=>x(2), a(1)=>x(1), a(0)=>x(0), d=>
      rtlc17n347);
   rtlc17_80_and_6 : and_8u_8u port map ( a(7)=>o_row_EXMPLR280(7), a(6)=>
      o_row_EXMPLR280(6), a(5)=>o_row_EXMPLR280(5), a(4)=>o_row_EXMPLR280(4), 
      a(3)=>o_row_EXMPLR280(3), a(2)=>o_row_EXMPLR280(2), a(1)=>
      o_row_EXMPLR280(1), a(0)=>o_row_EXMPLR280(0), d=>rtlc17n427);
   not_rtlc18n126 <= NOT rtlc18n126 ;
   rtlc18n178 <= rtlc17n70 OR not_rtlc18n126 ;
   not_rtlc18n178 <= NOT rtlc18n178 ;
   rtlc18n116 <= v(2) AND rtlc17n347 ;
   rtlc18n126 <= rtlc18n116 AND not_rtlc17n427 ;
   not_rtlc17n427 <= NOT rtlc17n427 ;
   t_inc2_19i2 : inc_2u_2u_0 port map ( cin=>debug_num_5_1_EXMPLR276, a(1)=>
      t(1), a(0)=>t(0), d(1)=>t_19n1s2(1), d(0)=>t_19n1s2(0), cout=>DANGLING
      (29));
   not_v_6 <= NOT v(6) ;
   output_edge_25n1s2 <= sub4_7 AND sub4_8 ;
   not_v_7 <= NOT v(7) ;
   rtlcn2 <= rtlc17n70 AND rtlc15n52 ;
   rtlc18n166 <= i_reset OR rtlcn2 ;
   c_mux_20i1Bus42_0 : mux_3u_3u port map ( a(2)=>q1(0), a(1)=>q3(0), a(0)=>
      q2(0), b(2)=>debug_num_5_0_EXMPLR275, b(1)=>t(1), b(0)=>t(0), d=>
      c_20n1ss1(0));
   c_mux_20i1Bus42_1 : mux_3u_3u port map ( a(2)=>q1(1), a(1)=>q3(1), a(0)=>
      q2(1), b(2)=>debug_num_5_0_EXMPLR275, b(1)=>t(1), b(0)=>t(0), d=>
      c_20n1ss1(1));
   c_mux_20i1Bus42_2 : mux_3u_3u port map ( a(2)=>q1(2), a(1)=>q3(2), a(0)=>
      q2(2), b(2)=>debug_num_5_0_EXMPLR275, b(1)=>t(1), b(0)=>t(0), d=>
      c_20n1ss1(2));
   c_mux_20i1Bus42_3 : mux_3u_3u port map ( a(2)=>q1(3), a(1)=>q3(3), a(0)=>
      q2(3), b(2)=>debug_num_5_0_EXMPLR275, b(1)=>t(1), b(0)=>t(0), d=>
      c_20n1ss1(3));
   c_mux_20i1Bus42_4 : mux_3u_3u port map ( a(2)=>q1(4), a(1)=>q3(4), a(0)=>
      q2(4), b(2)=>debug_num_5_0_EXMPLR275, b(1)=>t(1), b(0)=>t(0), d=>
      c_20n1ss1(4));
   c_mux_20i1Bus42_5 : mux_3u_3u port map ( a(2)=>q1(5), a(1)=>q3(5), a(0)=>
      q2(5), b(2)=>debug_num_5_0_EXMPLR275, b(1)=>t(1), b(0)=>t(0), d=>
      c_20n1ss1(5));
   c_mux_20i1Bus42_6 : mux_3u_3u port map ( a(2)=>q1(6), a(1)=>q3(6), a(0)=>
      q2(6), b(2)=>debug_num_5_0_EXMPLR275, b(1)=>t(1), b(0)=>t(0), d=>
      c_20n1ss1(6));
   c_mux_20i1Bus42_7 : mux_3u_3u port map ( a(2)=>q1(7), a(1)=>q3(7), a(0)=>
      q2(7), b(2)=>debug_num_5_0_EXMPLR275, b(1)=>t(1), b(0)=>t(0), d=>
      c_20n1ss1(7));
   d_mux_20i9Bus43_0 : mux_3u_3u port map ( a(2)=>q2(0), a(1)=>q1(0), a(0)=>
      q3(0), b(2)=>debug_num_5_0_EXMPLR275, b(1)=>t(1), b(0)=>t(0), d=>
      d_20n1ss1(0));
   d_mux_20i9Bus43_1 : mux_3u_3u port map ( a(2)=>q2(1), a(1)=>q1(1), a(0)=>
      q3(1), b(2)=>debug_num_5_0_EXMPLR275, b(1)=>t(1), b(0)=>t(0), d=>
      d_20n1ss1(1));
   d_mux_20i9Bus43_2 : mux_3u_3u port map ( a(2)=>q2(2), a(1)=>q1(2), a(0)=>
      q3(2), b(2)=>debug_num_5_0_EXMPLR275, b(1)=>t(1), b(0)=>t(0), d=>
      d_20n1ss1(2));
   d_mux_20i9Bus43_3 : mux_3u_3u port map ( a(2)=>q2(3), a(1)=>q1(3), a(0)=>
      q3(3), b(2)=>debug_num_5_0_EXMPLR275, b(1)=>t(1), b(0)=>t(0), d=>
      d_20n1ss1(3));
   d_mux_20i9Bus43_4 : mux_3u_3u port map ( a(2)=>q2(4), a(1)=>q1(4), a(0)=>
      q3(4), b(2)=>debug_num_5_0_EXMPLR275, b(1)=>t(1), b(0)=>t(0), d=>
      d_20n1ss1(4));
   d_mux_20i9Bus43_5 : mux_3u_3u port map ( a(2)=>q2(5), a(1)=>q1(5), a(0)=>
      q3(5), b(2)=>debug_num_5_0_EXMPLR275, b(1)=>t(1), b(0)=>t(0), d=>
      d_20n1ss1(5));
   d_mux_20i9Bus43_6 : mux_3u_3u port map ( a(2)=>q2(6), a(1)=>q1(6), a(0)=>
      q3(6), b(2)=>debug_num_5_0_EXMPLR275, b(1)=>t(1), b(0)=>t(0), d=>
      d_20n1ss1(6));
   d_mux_20i9Bus43_7 : mux_3u_3u port map ( a(2)=>q2(7), a(1)=>q1(7), a(0)=>
      q3(7), b(2)=>debug_num_5_0_EXMPLR275, b(1)=>t(1), b(0)=>t(0), d=>
      d_20n1ss1(7));
   not_rtlc7n324 <= NOT rtlc7n324 ;
   rtlcn133 <= not_rtlc7n324 AND rtlc22n83 ;
   rtlcn137 <= rtlc7n324 AND v(4) ;
   max1(0) <= r1(0) when rtlc7n290 = '1' else r2(0) ;
   max1(1) <= r1(1) when rtlc7n290 = '1' else r2(1) ;
   max1(2) <= r1(2) when rtlc7n290 = '1' else r2(2) ;
   max1(3) <= r1(3) when rtlc7n290 = '1' else r2(3) ;
   max1(4) <= r1(4) when rtlc7n290 = '1' else r2(4) ;
   max1(5) <= r1(5) when rtlc7n290 = '1' else r2(5) ;
   max1(6) <= r1(6) when rtlc7n290 = '1' else r2(6) ;
   max1(7) <= r1(7) when rtlc7n290 = '1' else r2(7) ;
   max2(0) <= r9(0) when rtlc7n324 = '1' else r11(0) ;
   max2(1) <= r9(1) when rtlc7n324 = '1' else r11(1) ;
   max2(2) <= r9(2) when rtlc7n324 = '1' else r11(2) ;
   max2(3) <= r9(3) when rtlc7n324 = '1' else r11(3) ;
   max2(4) <= r9(4) when rtlc7n324 = '1' else r11(4) ;
   max2(5) <= r9(5) when rtlc7n324 = '1' else r11(5) ;
   max2(6) <= r9(6) when rtlc7n324 = '1' else r11(6) ;
   max2(7) <= r9(7) when rtlc7n324 = '1' else r11(7) ;
   max2(8) <= r9(8) when rtlc7n324 = '1' else r11(8) ;
   max2(9) <= r9(9) when rtlc7n324 = '1' else r11(9) ;
   max3_3 <= r11(0) when rtlc7n362 = '1' else r12(0) ;
   max3_4 <= r11(1) when rtlc7n362 = '1' else r12(1) ;
   max3_5 <= r11(2) when rtlc7n362 = '1' else r12(2) ;
   max3_6 <= r11(3) when rtlc7n362 = '1' else r12(3) ;
   max3_7 <= r11(4) when rtlc7n362 = '1' else r12(4) ;
   max3_8 <= r11(5) when rtlc7n362 = '1' else r12(5) ;
   max3_9 <= r11(6) when rtlc7n362 = '1' else r12(6) ;
   max3_10 <= r11(7) when rtlc7n362 = '1' else r12(7) ;
   max3_11 <= r11(8) when rtlc7n362 = '1' else r12(8) ;
   max3_12 <= r11(9) when rtlc7n362 = '1' else r12(9) ;
   dir5_22n5ss1_2 <= dir1_2 when rtlc7n324 = '1' else dir2_2 ;
   dir6_22n5ss1_2 <= dir5(2) when rtlc7n324 = '1' else dir3_2 ;
   dir7_23n3ss1(0) <= dir4_0 when rtlc7n362 = '1' else dir6(0) ;
   dir7_23n3ss1(2) <= dir4_2 when rtlc7n362 = '1' else dir6(2) ;
   r8_24n1ss1(0) <= r7(0) when v(2) = '1' else add3(0) ;
   r8_24n1ss1(1) <= r7(1) when v(2) = '1' else add3(1) ;
   r8_24n1ss1(2) <= r7(2) when v(2) = '1' else add3(2) ;
   r8_24n1ss1(3) <= r7(3) when v(2) = '1' else add3(3) ;
   r8_24n1ss1(4) <= r7(4) when v(2) = '1' else add3(4) ;
   r8_24n1ss1(5) <= r7(5) when v(2) = '1' else add3(5) ;
   r8_24n1ss1(6) <= r7(6) when v(2) = '1' else add3(6) ;
   r8_24n1ss1(7) <= r7(7) when v(2) = '1' else add3(7) ;
   r8_24n1ss1(8) <= r7(8) when v(2) = '1' else add3(8) ;
   r9_24n4ss1(0) <= add2(0) when v(2) = '1' else max2(0) ;
   r9_24n4ss1(1) <= add2(1) when v(2) = '1' else max2(1) ;
   r9_24n4ss1(2) <= add2(2) when v(2) = '1' else max2(2) ;
   r9_24n4ss1(3) <= add2(3) when v(2) = '1' else max2(3) ;
   r9_24n4ss1(4) <= add2(4) when v(2) = '1' else max2(4) ;
   r9_24n4ss1(5) <= add2(5) when v(2) = '1' else max2(5) ;
   r9_24n4ss1(6) <= add2(6) when v(2) = '1' else max2(6) ;
   r9_24n4ss1(7) <= add2(7) when v(2) = '1' else max2(7) ;
   r9_24n4ss1(8) <= add2(8) when v(2) = '1' else max2(8) ;
   r9_24n4ss1(9) <= add2(9) when v(2) = '1' else max2(9) ;
   not_rtlcs3 <= NOT rtlcs3 ;
   rtlc20n169 <= i_valid AND not_rtlcs3 ;
   rtlcn145 <= v(2) OR v(1) ;
   not_v_3 <= NOT v(3) ;
   not_rtlcn145 <= NOT rtlcn145 ;
   rtlc_699_and_24 : and_3u_3u port map ( a(2)=>not_v_3, a(1)=>v(4), a(0)=>
      not_rtlcn145, d=>rtlc21n182);
   rtlc21n179 <= v(3) AND not_rtlcn145 ;
   not_v_1 <= NOT v(1) ;
   rtlc21n176 <= v(2) AND not_v_1 ;
   not_v_2 <= NOT v(2) ;
   not_v_4 <= NOT v(4) ;
   rtlc22n83 <= not_v_4 AND v(5) ;
   not_rtlc23n41 <= NOT rtlc23n41 ;
   rtlcn151 <= not_v_3 AND v(4) ;
   rtlcn144 <= v(2) OR rtlcn151 ;
   not_v_0 <= NOT v(0) ;
   rtlc_710_and_25 : and_3u_3u port map ( a(2)=>not_v_1, a(1)=>not_v_0, a(0)
      =>rtlcn144, d=>rtlc24n233);
   rtlc_711_or_26 : or_3u_3u port map ( a(2)=>v(0), a(1)=>v(3), a(0)=>
      rtlcn145, d=>rtlc24n223);
   not_t_1 <= NOT t(1) ;
   not_t_0 <= NOT t(0) ;
   wren_m1 <= i_valid AND rtlcs0 ;
   wren_m3 <= i_valid AND rtlcs2 ;
   wren_m2 <= i_valid AND rtlcs1 ;
   rtlc23n41 <= not_v_6 AND rtlc7n362 ;
   o_dir(0) <= dir7(0) AND o_edge_EXMPLR261 ;
   not_rtlc7n362 <= NOT rtlc7n362 ;
   dir7_23n3ss1(1) <= dir6(1) AND not_rtlc7n362 ;
   o_dir(1) <= dir7(1) AND o_edge_EXMPLR261 ;
   o_dir(2) <= dir7(2) AND o_edge_EXMPLR261 ;
   not_o_mode_1 <= NOT o_mode_EXMPLR279(1) ;
   not_o_mode_0 <= NOT o_mode_EXMPLR279(0) ;
   rtlcs0 <= not_t_1 AND not_t_0 ;
   rtlcs2 <= t(1) AND not_t_0 ;
   rtlcs1 <= not_t_1 AND t(0) ;
   rtlcs3 <= t(1) AND t(0) ;
   rtlcs7 <= not_o_mode_1 AND o_mode_EXMPLR279(0) ;
   rtlcs6 <= o_mode_EXMPLR279(1) AND not_o_mode_0 ;
   modgen_counter_x : counter_up_cnt_en_sclear_clock_0_8 port map ( clock=>
      i_clock, q(7)=>x(7), q(6)=>x(6), q(5)=>x(5), q(4)=>x(4), q(3)=>x(3), 
      q(2)=>x(2), q(1)=>x(1), q(0)=>x(0), clk_en=>debug_num_5_1_EXMPLR276, 
      aclear=>debug_num_5_0_EXMPLR275, sload=>debug_num_5_0_EXMPLR275, 
      data(7)=>DANGLING(30), data(6)=>DANGLING(31), data(5)=>DANGLING(32), 
      data(4)=>DANGLING(33), data(3)=>DANGLING(34), data(2)=>DANGLING(35), 
      data(1)=>DANGLING(36), data(0)=>DANGLING(37), aset=>
      debug_num_5_0_EXMPLR275, sclear=>rtlc17n164, updn=>
      debug_num_5_1_EXMPLR276, cnt_en=>not_rtlc17n180);
   modgen_counter_o_row : counter_up_cnt_en_sclear_clock_0_8 port map ( 
      clock=>i_clock, q(7)=>o_row_EXMPLR280(7), q(6)=>o_row_EXMPLR280(6), 
      q(5)=>o_row_EXMPLR280(5), q(4)=>o_row_EXMPLR280(4), q(3)=>
      o_row_EXMPLR280(3), q(2)=>o_row_EXMPLR280(2), q(1)=>o_row_EXMPLR280(1), 
      q(0)=>o_row_EXMPLR280(0), clk_en=>debug_num_5_1_EXMPLR276, aclear=>
      debug_num_5_0_EXMPLR275, sload=>debug_num_5_0_EXMPLR275, data(7)=>
      DANGLING(38), data(6)=>DANGLING(39), data(5)=>DANGLING(40), data(4)=>
      DANGLING(41), data(3)=>DANGLING(42), data(2)=>DANGLING(43), data(1)=>
      DANGLING(44), data(0)=>DANGLING(45), aset=>debug_num_5_0_EXMPLR275, 
      sclear=>rtlc18n166, updn=>debug_num_5_1_EXMPLR276, cnt_en=>
      not_rtlc18n178);
   add1_add8_5 : add_8u_8u_8u_0_0 port map ( cin=>debug_num_5_0_EXMPLR275, 
      a(7)=>r3(7), a(6)=>r3(6), a(5)=>r3(5), a(4)=>r3(4), a(3)=>r3(3), a(2)
      =>r3(2), a(1)=>r3(1), a(0)=>r3(0), b(7)=>r4(7), b(6)=>r4(6), b(5)=>
      r4(5), b(4)=>r4(4), b(3)=>r4(3), b(2)=>r4(2), b(1)=>r4(1), b(0)=>r4(0), 
      d(7)=>add1(7), d(6)=>add1(6), d(5)=>add1(5), d(4)=>add1(4), d(3)=>
      add1(3), d(2)=>add1(2), d(1)=>add1(1), d(0)=>add1(0), cout=>add1(8));
   add2_add9_6 : add_9u_9u_9u_0_0 port map ( cin=>debug_num_5_0_EXMPLR275, 
      a(8)=>debug_num_5_0_EXMPLR275, a(7)=>r5(7), a(6)=>r5(6), a(5)=>r5(5), 
      a(4)=>r5(4), a(3)=>r5(3), a(2)=>r5(2), a(1)=>r5(1), a(0)=>r5(0), b(8)
      =>r7(8), b(7)=>r7(7), b(6)=>r7(6), b(5)=>r7(5), b(4)=>r7(4), b(3)=>
      r7(3), b(2)=>r7(2), b(1)=>r7(1), b(0)=>r7(0), d(8)=>add2(8), d(7)=>
      add2(7), d(6)=>add2(6), d(5)=>add2(5), d(4)=>add2(4), d(3)=>add2(3), 
      d(2)=>add2(2), d(1)=>add2(1), d(0)=>add2(0), cout=>add2(9));
   add4_add12_7 : add_12u_12u_12u_0_0 port map ( cin=>
      debug_num_5_0_EXMPLR275, a(11)=>debug_num_5_0_EXMPLR275, a(10)=>
      r13(11), a(9)=>r13(10), a(8)=>r13(9), a(7)=>r13(8), a(6)=>r13(7), a(5)
      =>r13(6), a(4)=>r13(5), a(3)=>r13(4), a(2)=>r13(3), a(1)=>r13(2), a(0)
      =>r13(1), b(11)=>r13(11), b(10)=>r13(10), b(9)=>r13(9), b(8)=>r13(8), 
      b(7)=>r13(7), b(6)=>r13(6), b(5)=>r13(5), b(4)=>r13(4), b(3)=>r13(3), 
      b(2)=>r13(2), b(1)=>r13(1), b(0)=>r13(0), d(11)=>add4(12), d(10)=>
      add4(11), d(9)=>add4(10), d(8)=>add4(9), d(7)=>add4(8), d(6)=>add4(7), 
      d(5)=>add4(6), d(4)=>add4(5), d(3)=>add4(4), d(2)=>add4(3), d(1)=>
      add4(2), d(0)=>add4(1), cout=>add4(13));
   DFFPC (v(0),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,v(1))
    ;
   DFFRSE (i_valid,debug_num_5_0_EXMPLR275,i_reset,debug_num_5_1_EXMPLR276,
   i_clock,v(0)) ;
   DFFPC (v(1),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,v(2))
    ;
   DFFPC (v(2),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,v(3))
    ;
   DFFPC (v(3),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,v(4))
    ;
   DFFPC (v(4),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,v(5))
    ;
   DFFPC (v(5),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,v(6))
    ;
   DFFPC (v(6),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,v(7))
    ;
   DFFPCE (rtlc15n52,debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,v(2),
   i_clock,end_of_img) ;
   DFFRSE (debug_num_5_1_EXMPLR276,debug_num_5_0_EXMPLR275,i_reset,
   debug_num_5_1_EXMPLR276,i_clock,o_mode_EXMPLR279(1)) ;
   DFFRSE (not_rtlc16n43,i_reset,debug_num_5_0_EXMPLR275,
   debug_num_5_1_EXMPLR276,i_clock,o_mode_EXMPLR279(0)) ;
   DFFRSE (t_19n1s1(1),debug_num_5_0_EXMPLR275,i_reset,rtlc18n116,i_clock,
   t(1)) ;
   DFFRSE (t_19n1s1(0),debug_num_5_0_EXMPLR275,i_reset,rtlc18n116,i_clock,
   t(0)) ;
   DFFPCE (d_20n1ss1(7),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc20n169,i_clock,d(7)) ;
   DFFPCE (d_20n1ss1(6),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc20n169,i_clock,d(6)) ;
   DFFPCE (d_20n1ss1(5),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc20n169,i_clock,d(5)) ;
   DFFPCE (d_20n1ss1(4),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc20n169,i_clock,d(4)) ;
   DFFPCE (d_20n1ss1(3),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc20n169,i_clock,d(3)) ;
   DFFPCE (d_20n1ss1(2),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc20n169,i_clock,d(2)) ;
   DFFPCE (d_20n1ss1(1),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc20n169,i_clock,d(1)) ;
   DFFPCE (d_20n1ss1(0),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc20n169,i_clock,d(0)) ;
   DFFPCE (c_20n1ss1(7),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc20n169,i_clock,c(7)) ;
   DFFPCE (c_20n1ss1(6),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc20n169,i_clock,c(6)) ;
   DFFPCE (c_20n1ss1(5),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc20n169,i_clock,c(5)) ;
   DFFPCE (c_20n1ss1(4),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc20n169,i_clock,c(4)) ;
   DFFPCE (c_20n1ss1(3),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc20n169,i_clock,c(3)) ;
   DFFPCE (c_20n1ss1(2),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc20n169,i_clock,c(2)) ;
   DFFPCE (c_20n1ss1(1),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc20n169,i_clock,c(1)) ;
   DFFPCE (c_20n1ss1(0),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc20n169,i_clock,c(0)) ;
   DFFPCE (i_pixel(7),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   i_valid,i_clock,e(7)) ;
   DFFPCE (i_pixel(6),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   i_valid,i_clock,e(6)) ;
   DFFPCE (i_pixel(5),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   i_valid,i_clock,e(5)) ;
   DFFPCE (i_pixel(4),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   i_valid,i_clock,e(4)) ;
   DFFPCE (i_pixel(3),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   i_valid,i_clock,e(3)) ;
   DFFPCE (i_pixel(2),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   i_valid,i_clock,e(2)) ;
   DFFPCE (i_pixel(1),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   i_valid,i_clock,e(1)) ;
   DFFPCE (i_pixel(0),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   i_valid,i_clock,e(0)) ;
   DFFPCE (e(7),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,f(7)) ;
   DFFPCE (e(6),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,f(6)) ;
   DFFPCE (e(5),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,f(5)) ;
   DFFPCE (e(4),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,f(4)) ;
   DFFPCE (e(3),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,f(3)) ;
   DFFPCE (e(2),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,f(2)) ;
   DFFPCE (e(1),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,f(1)) ;
   DFFPCE (e(0),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,f(0)) ;
   DFFPCE (d(7),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,i(7)) ;
   DFFPCE (d(6),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,i(6)) ;
   DFFPCE (d(5),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,i(5)) ;
   DFFPCE (d(4),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,i(4)) ;
   DFFPCE (d(3),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,i(3)) ;
   DFFPCE (d(2),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,i(2)) ;
   DFFPCE (d(1),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,i(1)) ;
   DFFPCE (d(0),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,i(0)) ;
   DFFPCE (c(7),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,b(7)) ;
   DFFPCE (c(6),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,b(6)) ;
   DFFPCE (c(5),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,b(5)) ;
   DFFPCE (c(4),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,b(4)) ;
   DFFPCE (c(3),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,b(3)) ;
   DFFPCE (c(2),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,b(2)) ;
   DFFPCE (c(1),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,b(1)) ;
   DFFPCE (c(0),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,b(0)) ;
   DFFPCE (f(7),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,g(7)) ;
   DFFPCE (f(6),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,g(6)) ;
   DFFPCE (f(5),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,g(5)) ;
   DFFPCE (f(4),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,g(4)) ;
   DFFPCE (f(3),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,g(3)) ;
   DFFPCE (f(2),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,g(2)) ;
   DFFPCE (f(1),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,g(1)) ;
   DFFPCE (f(0),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,g(0)) ;
   DFFPCE (i(7),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,h(7)) ;
   DFFPCE (i(6),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,h(6)) ;
   DFFPCE (i(5),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,h(5)) ;
   DFFPCE (i(4),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,h(4)) ;
   DFFPCE (i(3),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,h(3)) ;
   DFFPCE (i(2),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,h(2)) ;
   DFFPCE (i(1),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,h(1)) ;
   DFFPCE (i(0),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,h(0)) ;
   DFFPCE (b(7),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,a(7)) ;
   DFFPCE (b(6),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,a(6)) ;
   DFFPCE (b(5),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,a(5)) ;
   DFFPCE (b(4),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,a(4)) ;
   DFFPCE (b(3),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,a(3)) ;
   DFFPCE (b(2),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,a(2)) ;
   DFFPCE (b(1),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,a(1)) ;
   DFFPCE (b(0),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_valid,
   i_clock,a(0)) ;
   DFFPCE (sub1_8,debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,rtlc21n182,
   i_clock,dir4_2) ;
   DFFPCE (rtlc7n290,debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc21n182,i_clock,dir4_0) ;
   DFFPCE (sub1_8,debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,rtlc21n179,
   i_clock,dir3_2) ;
   DFFPCE (sub1_8,debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,rtlc21n176,
   i_clock,dir2_2) ;
   DFFPCE (sub1_8,debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,v(1),
   i_clock,dir1_2) ;
   DFFPCE (dir6_22n5ss1_2,debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc22n83,i_clock,dir6(2)) ;
   DFFPCE (dir5_22n5ss1_2,debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   v(4),i_clock,dir5(2)) ;
   DFFPCE (rtlc7n324,debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,v(4),
   i_clock,dir5(1)) ;
   DFFPCE (dir7_23n3ss1(2),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   not_rtlc23n41,i_clock,dir7(2)) ;
   DFFPCE (dir7_23n3ss1(1),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   not_rtlc23n41,i_clock,dir7(1)) ;
   DFFPCE (dir7_23n3ss1(0),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   not_rtlc23n41,i_clock,dir7(0)) ;
   DFFPCE (r9_24n4ss1(9),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n233,i_clock,r9(9)) ;
   DFFPCE (r9_24n4ss1(8),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n233,i_clock,r9(8)) ;
   DFFPCE (r9_24n4ss1(7),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n233,i_clock,r9(7)) ;
   DFFPCE (r9_24n4ss1(6),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n233,i_clock,r9(6)) ;
   DFFPCE (r9_24n4ss1(5),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n233,i_clock,r9(5)) ;
   DFFPCE (r9_24n4ss1(4),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n233,i_clock,r9(4)) ;
   DFFPCE (r9_24n4ss1(3),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n233,i_clock,r9(3)) ;
   DFFPCE (r9_24n4ss1(2),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n233,i_clock,r9(2)) ;
   DFFPCE (r9_24n4ss1(1),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n233,i_clock,r9(1)) ;
   DFFPCE (r9_24n4ss1(0),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n233,i_clock,r9(0)) ;
   DFFPCE (r4_24n6ss1(7),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r4(7)) ;
   DFFPCE (r4_24n6ss1(6),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r4(6)) ;
   DFFPCE (r4_24n6ss1(5),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r4(5)) ;
   DFFPCE (r4_24n6ss1(4),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r4(4)) ;
   DFFPCE (r4_24n6ss1(3),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r4(3)) ;
   DFFPCE (r4_24n6ss1(2),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r4(2)) ;
   DFFPCE (r4_24n6ss1(1),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r4(1)) ;
   DFFPCE (r4_24n6ss1(0),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r4(0)) ;
   DFFPCE (r3_24n6ss1(7),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r3(7)) ;
   DFFPCE (r3_24n6ss1(6),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r3(6)) ;
   DFFPCE (r3_24n6ss1(5),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r3(5)) ;
   DFFPCE (r3_24n6ss1(4),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r3(4)) ;
   DFFPCE (r3_24n6ss1(3),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r3(3)) ;
   DFFPCE (r3_24n6ss1(2),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r3(2)) ;
   DFFPCE (r3_24n6ss1(1),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r3(1)) ;
   DFFPCE (r3_24n6ss1(0),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r3(0)) ;
   DFFPCE (r2_24n6ss1(7),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r2(7)) ;
   DFFPCE (r2_24n6ss1(6),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r2(6)) ;
   DFFPCE (r2_24n6ss1(5),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r2(5)) ;
   DFFPCE (r2_24n6ss1(4),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r2(4)) ;
   DFFPCE (r2_24n6ss1(3),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r2(3)) ;
   DFFPCE (r2_24n6ss1(2),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r2(2)) ;
   DFFPCE (r2_24n6ss1(1),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r2(1)) ;
   DFFPCE (r2_24n6ss1(0),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r2(0)) ;
   DFFPCE (r1_24n6ss1(7),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r1(7)) ;
   DFFPCE (r1_24n6ss1(6),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r1(6)) ;
   DFFPCE (r1_24n6ss1(5),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r1(5)) ;
   DFFPCE (r1_24n6ss1(4),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r1(4)) ;
   DFFPCE (r1_24n6ss1(3),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r1(3)) ;
   DFFPCE (r1_24n6ss1(2),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r1(2)) ;
   DFFPCE (r1_24n6ss1(1),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r1(1)) ;
   DFFPCE (r1_24n6ss1(0),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   rtlc24n223,i_clock,r1(0)) ;
   DFFRSE (add3(11),debug_num_5_0_EXMPLR275,v(2),debug_num_5_1_EXMPLR276,
   i_clock,r8(11)) ;
   DFFRSE (add3(10),debug_num_5_0_EXMPLR275,v(2),debug_num_5_1_EXMPLR276,
   i_clock,r8(10)) ;
   DFFRSE (add3(9),debug_num_5_0_EXMPLR275,v(2),debug_num_5_1_EXMPLR276,
   i_clock,r8(9)) ;
   DFFPC (r8_24n1ss1(8),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   i_clock,r8(8)) ;
   DFFPC (r8_24n1ss1(7),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   i_clock,r8(7)) ;
   DFFPC (r8_24n1ss1(6),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   i_clock,r8(6)) ;
   DFFPC (r8_24n1ss1(5),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   i_clock,r8(5)) ;
   DFFPC (r8_24n1ss1(4),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   i_clock,r8(4)) ;
   DFFPC (r8_24n1ss1(3),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   i_clock,r8(3)) ;
   DFFPC (r8_24n1ss1(2),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   i_clock,r8(2)) ;
   DFFPC (r8_24n1ss1(1),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   i_clock,r8(1)) ;
   DFFPC (r8_24n1ss1(0),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,
   i_clock,r8(0)) ;
   DFFPC (add4(13),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r15(13)) ;
   DFFPC (add4(12),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r15(12)) ;
   DFFPC (add4(11),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r15(11)) ;
   DFFPC (add4(10),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r15(10)) ;
   DFFPC (add4(9),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r15(9)) ;
   DFFPC (add4(8),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r15(8)) ;
   DFFPC (add4(7),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r15(7)) ;
   DFFPC (add4(6),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r15(6)) ;
   DFFPC (add4(5),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r15(5)) ;
   DFFPC (add4(4),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r15(4)) ;
   DFFPC (add4(3),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r15(3)) ;
   DFFPC (add4(2),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r15(2)) ;
   DFFPC (add4(1),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r15(1)) ;
   DFFPC (r13(0),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r15(0)) ;
   DFFPC (max3_12,debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r14_12) ;
   DFFPC (max3_11,debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r14_11) ;
   DFFPC (max3_10,debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r14_10) ;
   DFFPC (max3_9,debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r14_9) ;
   DFFPC (max3_8,debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r14_8) ;
   DFFPC (max3_7,debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r14_7) ;
   DFFPC (max3_6,debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r14_6) ;
   DFFPC (max3_5,debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r14_5) ;
   DFFPC (max3_4,debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r14_4) ;
   DFFPC (max3_3,debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r14_3) ;
   DFFPC (add3(11),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r13(11)) ;
   DFFPC (add3(10),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r13(10)) ;
   DFFPC (add3(9),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r13(9)) ;
   DFFPC (add3(8),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r13(8)) ;
   DFFPC (add3(7),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r13(7)) ;
   DFFPC (add3(6),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r13(6)) ;
   DFFPC (add3(5),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r13(5)) ;
   DFFPC (add3(4),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r13(4)) ;
   DFFPC (add3(3),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r13(3)) ;
   DFFPC (add3(2),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r13(2)) ;
   DFFPC (add3(1),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r13(1)) ;
   DFFPC (add3(0),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r13(0)) ;
   DFFPC (max2(9),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r12(9)) ;
   DFFPC (max2(8),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r12(8)) ;
   DFFPC (max2(7),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r12(7)) ;
   DFFPC (max2(6),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r12(6)) ;
   DFFPC (max2(5),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r12(5)) ;
   DFFPC (max2(4),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r12(4)) ;
   DFFPC (max2(3),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r12(3)) ;
   DFFPC (max2(2),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r12(2)) ;
   DFFPC (max2(1),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r12(1)) ;
   DFFPC (max2(0),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r12(0)) ;
   DFFPC (add2(9),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r11(9)) ;
   DFFPC (add2(8),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r11(8)) ;
   DFFPC (add2(7),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r11(7)) ;
   DFFPC (add2(6),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r11(6)) ;
   DFFPC (add2(5),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r11(5)) ;
   DFFPC (add2(4),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r11(4)) ;
   DFFPC (add2(3),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r11(3)) ;
   DFFPC (add2(2),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r11(2)) ;
   DFFPC (add2(1),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r11(1)) ;
   DFFPC (add2(0),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r11(0)) ;
   DFFPC (add1(8),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r7(8)) ;
   DFFPC (add1(7),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r7(7)) ;
   DFFPC (add1(6),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r7(6)) ;
   DFFPC (add1(5),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r7(5)) ;
   DFFPC (add1(4),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r7(4)) ;
   DFFPC (add1(3),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r7(3)) ;
   DFFPC (add1(2),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r7(2)) ;
   DFFPC (add1(1),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r7(1)) ;
   DFFPC (add1(0),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r7(0)) ;
   DFFPC (max1(7),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r5(7)) ;
   DFFPC (max1(6),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r5(6)) ;
   DFFPC (max1(5),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r5(5)) ;
   DFFPC (max1(4),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r5(4)) ;
   DFFPC (max1(3),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r5(3)) ;
   DFFPC (max1(2),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r5(2)) ;
   DFFPC (max1(1),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r5(1)) ;
   DFFPC (max1(0),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   r5(0)) ;
   DFFRSE (output_edge_25n1s1,debug_num_5_0_EXMPLR275,not_v_7,rtlc7n466,
   i_clock,o_edge_EXMPLR261) ;
   DFFPC (v(7),debug_num_5_0_EXMPLR275,debug_num_5_0_EXMPLR275,i_clock,
   o_valid) ;
   DFFRSE (dir5(1),rtlcn133,debug_num_5_0_EXMPLR275,rtlc22n83,i_clock,
   dir6(1)) ;
   DFFRSE (dir5(0),rtlcn133,debug_num_5_0_EXMPLR275,rtlc22n83,i_clock,
   dir6(0)) ;
   DFFRSE (dir2_2,debug_num_5_0_EXMPLR275,rtlcn137,v(4),i_clock,dir5(0)) ;
   t_modu2_19i1_rtlcm_0_not_in1_0 <= NOT t_19n1s2(0) ;
   t_modu2_19i1_rtlcm_0_not_in1_1 <= NOT t_19n1s2(1) ;
   t_19n1s1(1) <= t_19n1s2(1) AND t_modu2_19i1_rtlcm_0_not_in1_0 ;
   t_19n1s1(0) <= t_modu2_19i1_rtlcm_0_not_in1_1 AND t_19n1s2(0) ;
   NOT_r15_0 <= NOT r15(0) ;
   sub4_sub14_4 : sub_13u_13u_13u_0 port map ( cin=>NOT_r15_0, a(12)=>
      debug_num_5_0_EXMPLR275, a(11)=>r14_12, a(10)=>r14_11, a(9)=>r14_10, 
      a(8)=>r14_9, a(7)=>r14_8, a(6)=>r14_7, a(5)=>r14_6, a(4)=>r14_5, a(3)
      =>r14_4, a(2)=>r14_3, a(1)=>debug_num_5_0_EXMPLR275, a(0)=>
      debug_num_5_0_EXMPLR275, b(12)=>r15(13), b(11)=>r15(12), b(10)=>
      r15(11), b(9)=>r15(10), b(8)=>r15(9), b(7)=>r15(8), b(6)=>r15(7), b(5)
      =>r15(6), b(4)=>r15(5), b(3)=>r15(4), b(2)=>r15(3), b(1)=>r15(2), b(0)
      =>r15(1), d(12)=>sub4_13, d(11)=>sub4_12, d(10)=>sub4_11, d(9)=>
      sub4_10, d(8)=>sub4_9, d(7)=>sub4_8, d(6)=>sub4_7, d(5)=>DANGLING(46), 
      d(4)=>DANGLING(47), d(3)=>DANGLING(48), d(2)=>DANGLING(49), d(1)=>
      DANGLING(50), d(0)=>DANGLING(51), cout=>rtlc7n466);
   r1_24n6ss1(0) <= a(0) when v(0) = '1' else nx327 ;
   nx327 <= c(0) when v(1) = '1' else nx330 ;
   nx330 <= e(0) when v(2) = '1' else g(0) ;
   r1_24n6ss1(1) <= a(1) when v(0) = '1' else nx336 ;
   nx336 <= c(1) when v(1) = '1' else nx339 ;
   nx339 <= e(1) when v(2) = '1' else g(1) ;
   r1_24n6ss1(2) <= a(2) when v(0) = '1' else nx345 ;
   nx345 <= c(2) when v(1) = '1' else nx348 ;
   nx348 <= e(2) when v(2) = '1' else g(2) ;
   r1_24n6ss1(3) <= a(3) when v(0) = '1' else nx354 ;
   nx354 <= c(3) when v(1) = '1' else nx357 ;
   nx357 <= e(3) when v(2) = '1' else g(3) ;
   r1_24n6ss1(4) <= a(4) when v(0) = '1' else nx363 ;
   nx363 <= c(4) when v(1) = '1' else nx366 ;
   nx366 <= e(4) when v(2) = '1' else g(4) ;
   r1_24n6ss1(5) <= a(5) when v(0) = '1' else nx372 ;
   nx372 <= c(5) when v(1) = '1' else nx375 ;
   nx375 <= e(5) when v(2) = '1' else g(5) ;
   r1_24n6ss1(6) <= a(6) when v(0) = '1' else nx381 ;
   nx381 <= c(6) when v(1) = '1' else nx384 ;
   nx384 <= e(6) when v(2) = '1' else g(6) ;
   r1_24n6ss1(7) <= a(7) when v(0) = '1' else nx390 ;
   nx390 <= c(7) when v(1) = '1' else nx393 ;
   nx393 <= e(7) when v(2) = '1' else g(7) ;
   r2_24n6ss1(0) <= d(0) when v(0) = '1' else nx399 ;
   nx399 <= f(0) when v(1) = '1' else nx402 ;
   nx402 <= h(0) when v(2) = '1' else b(0) ;
   r2_24n6ss1(1) <= d(1) when v(0) = '1' else nx408 ;
   nx408 <= f(1) when v(1) = '1' else nx411 ;
   nx411 <= h(1) when v(2) = '1' else b(1) ;
   r2_24n6ss1(2) <= d(2) when v(0) = '1' else nx417 ;
   nx417 <= f(2) when v(1) = '1' else nx420 ;
   nx420 <= h(2) when v(2) = '1' else b(2) ;
   r2_24n6ss1(3) <= d(3) when v(0) = '1' else nx426 ;
   nx426 <= f(3) when v(1) = '1' else nx429 ;
   nx429 <= h(3) when v(2) = '1' else b(3) ;
   r2_24n6ss1(4) <= d(4) when v(0) = '1' else nx435 ;
   nx435 <= f(4) when v(1) = '1' else nx438 ;
   nx438 <= h(4) when v(2) = '1' else b(4) ;
   r2_24n6ss1(5) <= d(5) when v(0) = '1' else nx444 ;
   nx444 <= f(5) when v(1) = '1' else nx447 ;
   nx447 <= h(5) when v(2) = '1' else b(5) ;
   r2_24n6ss1(6) <= d(6) when v(0) = '1' else nx453 ;
   nx453 <= f(6) when v(1) = '1' else nx456 ;
   nx456 <= h(6) when v(2) = '1' else b(6) ;
   r2_24n6ss1(7) <= d(7) when v(0) = '1' else nx462 ;
   nx462 <= f(7) when v(1) = '1' else nx465 ;
   nx465 <= h(7) when v(2) = '1' else b(7) ;
   r3_24n6ss1(0) <= c(0) when v(0) = '1' else nx471 ;
   nx471 <= e(0) when v(1) = '1' else nx474 ;
   nx474 <= f(0) when v(2) = '1' else a(0) ;
   r3_24n6ss1(1) <= c(1) when v(0) = '1' else nx480 ;
   nx480 <= e(1) when v(1) = '1' else nx483 ;
   nx483 <= f(1) when v(2) = '1' else a(1) ;
   r3_24n6ss1(2) <= c(2) when v(0) = '1' else nx489 ;
   nx489 <= e(2) when v(1) = '1' else nx492 ;
   nx492 <= f(2) when v(2) = '1' else a(2) ;
   r3_24n6ss1(3) <= c(3) when v(0) = '1' else nx498 ;
   nx498 <= e(3) when v(1) = '1' else nx501 ;
   nx501 <= f(3) when v(2) = '1' else a(3) ;
   r3_24n6ss1(4) <= c(4) when v(0) = '1' else nx507 ;
   nx507 <= e(4) when v(1) = '1' else nx510 ;
   nx510 <= f(4) when v(2) = '1' else a(4) ;
   r3_24n6ss1(5) <= c(5) when v(0) = '1' else nx516 ;
   nx516 <= e(5) when v(1) = '1' else nx519 ;
   nx519 <= f(5) when v(2) = '1' else a(5) ;
   r3_24n6ss1(6) <= c(6) when v(0) = '1' else nx525 ;
   nx525 <= e(6) when v(1) = '1' else nx528 ;
   nx528 <= f(6) when v(2) = '1' else a(6) ;
   r3_24n6ss1(7) <= c(7) when v(0) = '1' else nx534 ;
   nx534 <= e(7) when v(1) = '1' else nx537 ;
   nx537 <= f(7) when v(2) = '1' else a(7) ;
   r4_24n6ss1(0) <= b(0) when v(0) = '1' else nx543 ;
   nx543 <= d(0) when v(1) = '1' else nx547 ;
   nx547 <= g(0) when v(2) = '1' else h(0) ;
   r4_24n6ss1(1) <= b(1) when v(0) = '1' else nx554 ;
   nx554 <= d(1) when v(1) = '1' else nx558 ;
   nx558 <= g(1) when v(2) = '1' else h(1) ;
   r4_24n6ss1(2) <= b(2) when v(0) = '1' else nx566 ;
   nx566 <= d(2) when v(1) = '1' else nx570 ;
   nx570 <= g(2) when v(2) = '1' else h(2) ;
   r4_24n6ss1(3) <= b(3) when v(0) = '1' else nx576 ;
   nx576 <= d(3) when v(1) = '1' else nx580 ;
   nx580 <= g(3) when v(2) = '1' else h(3) ;
   r4_24n6ss1(4) <= b(4) when v(0) = '1' else nx587 ;
   nx587 <= d(4) when v(1) = '1' else nx590 ;
   nx590 <= g(4) when v(2) = '1' else h(4) ;
   r4_24n6ss1(5) <= b(5) when v(0) = '1' else nx596 ;
   nx596 <= d(5) when v(1) = '1' else nx600 ;
   nx600 <= g(5) when v(2) = '1' else h(5) ;
   r4_24n6ss1(6) <= b(6) when v(0) = '1' else nx608 ;
   nx608 <= d(6) when v(1) = '1' else nx612 ;
   nx612 <= g(6) when v(2) = '1' else h(6) ;
   r4_24n6ss1(7) <= b(7) when v(0) = '1' else nx618 ;
   nx618 <= d(7) when v(1) = '1' else nx621 ;
   nx621 <= g(7) when v(2) = '1' else h(7) ;
   modgen_or_33 : or_6u_6u port map ( a(5)=>sub4_13, a(4)=>sub4_12, a(3)=>
      sub4_11, a(2)=>sub4_10, a(1)=>sub4_9, a(0)=>output_edge_25n1s2, d=>
      output_edge_25n1s1);
end main ;

