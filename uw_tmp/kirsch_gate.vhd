
-- 
-- Definition of  kirsch
-- 
--      03/19/15 18:06:37
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

architecture main of kirsch is 
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
   signal o_edge_EXMPLR258: std_logic ;
   
   signal o_mode_EXMPLR276: std_logic_vector (1 DOWNTO 0) ;
   
   signal o_row_EXMPLR277: std_logic_vector (7 DOWNTO 0) ;
   
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
      r14_3, debug_num_5_0_EXMPLR272: std_logic ;
   
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
   
   signal debug_num_5_1_EXMPLR273, rtlc7n260, rtlc7n294, rtlc7n332, 
      rtlc11n44, rtlc11n52, rtlc16n0_16n1s2_13, rtlc16n0_16n1s2_12, 
      rtlc16n0_16n1s2_11, rtlc16n0_16n1s2_10, rtlc16n0_16n1s2_9, 
      rtlc16n0_16n1s2_8, rtlc16n0_16n1s2_7, rtlc17n0_17n1s3, rtlc17n0_17n1s2, 
      not_i_reset, rtlc19n35, rtlc19n36, rtlc19n42, rtlc19n43, not_rtlc19n43, 
      not_end_of_img: std_logic ;
   
   signal t_20n2s2: std_logic_vector (1 DOWNTO 0) ;
   
   signal t_20n2s1: std_logic_vector (1 DOWNTO 0) ;
   
   signal not_rtlcn158, rtlc20n211, not_rtlcn169, rtlc20n267, not_rtlcs4, 
      rtlc20n280, rtlc20n281, rtlc20_X_0_n282, not_rtlc20n267, rtlc20n331: 
   std_logic ;
   
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
      rtlcn147, rtlcn158, rtlcn159, rtlcn160, not_rtlc20n211, not_rtlcs7, 
      not_v_3, not_rtlcn160, not_v_1, not_v_4, rtlcn167, not_v_0, rtlcs0, 
      rtlcs1, rtlcs2, rtlcs3, rtlcs4, rtlcs5, rtlcs6, rtlcs7, rtlcn169, 
      not_rtlc11n52, not_addr_t_1, not_addr_t_0, not_sub4_13, not_rtlc7n332, 
      not_o_mode_1, not_o_mode_0, rtlcn666, t_modu2_20i1_rtlcm_0_not_in1_0, 
      t_modu2_20i1_rtlcm_0_not_in1_1, NOT_r15_0, nx342, nx345, nx351, nx354, 
      nx360, nx363, nx369, nx372, nx378, nx381, nx387, nx390, nx396, nx399, 
      nx405, nx408, nx414, nx417, nx423, nx426, nx432, nx435, nx441, nx444, 
      nx450, nx453, nx459, nx462, nx468, nx471, nx477, nx480, nx486, nx489, 
      nx495, nx498, nx504, nx507, nx513, nx516, nx522, nx525, nx532, nx536, 
      nx543, nx547, nx555, nx559, nx565, nx569, nx575, nx578, nx584, nx587, 
      nx593, nx597, nx604, nx607, nx613, nx617, nx625, nx628, nx635, nx639: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (51 downto 0 );

begin
   o_edge <= o_edge_EXMPLR258 ;
   o_mode(1) <= o_mode_EXMPLR276(1) ;
   o_mode(0) <= o_mode_EXMPLR276(0) ;
   o_row(7) <= o_row_EXMPLR277(7) ;
   o_row(6) <= o_row_EXMPLR277(6) ;
   o_row(5) <= o_row_EXMPLR277(5) ;
   o_row(4) <= o_row_EXMPLR277(4) ;
   o_row(3) <= o_row_EXMPLR277(3) ;
   o_row(2) <= o_row_EXMPLR277(2) ;
   o_row(1) <= o_row_EXMPLR277(1) ;
   o_row(0) <= o_row_EXMPLR277(0) ;
   debug_led_red(17) <= debug_num_5_0_EXMPLR272 ;
   debug_led_red(16) <= debug_num_5_0_EXMPLR272 ;
   debug_led_red(15) <= debug_num_5_0_EXMPLR272 ;
   debug_led_red(14) <= debug_num_5_0_EXMPLR272 ;
   debug_led_red(13) <= debug_num_5_0_EXMPLR272 ;
   debug_led_red(12) <= debug_num_5_0_EXMPLR272 ;
   debug_led_red(11) <= debug_num_5_0_EXMPLR272 ;
   debug_led_red(10) <= debug_num_5_0_EXMPLR272 ;
   debug_led_red(9) <= debug_num_5_0_EXMPLR272 ;
   debug_led_red(8) <= debug_num_5_0_EXMPLR272 ;
   debug_led_red(7) <= debug_num_5_0_EXMPLR272 ;
   debug_led_red(6) <= debug_num_5_0_EXMPLR272 ;
   debug_led_red(5) <= debug_num_5_0_EXMPLR272 ;
   debug_led_red(4) <= debug_num_5_0_EXMPLR272 ;
   debug_led_red(3) <= debug_num_5_0_EXMPLR272 ;
   debug_led_red(2) <= debug_num_5_0_EXMPLR272 ;
   debug_led_red(1) <= debug_num_5_0_EXMPLR272 ;
   debug_led_red(0) <= debug_num_5_0_EXMPLR272 ;
   debug_led_grn(5) <= debug_num_5_0_EXMPLR272 ;
   debug_led_grn(4) <= debug_num_5_0_EXMPLR272 ;
   debug_led_grn(3) <= debug_num_5_0_EXMPLR272 ;
   debug_led_grn(2) <= debug_num_5_0_EXMPLR272 ;
   debug_led_grn(1) <= debug_num_5_0_EXMPLR272 ;
   debug_led_grn(0) <= debug_num_5_0_EXMPLR272 ;
   debug_num_0(3) <= debug_num_5_0_EXMPLR272 ;
   debug_num_0(2) <= debug_num_5_1_EXMPLR273 ;
   debug_num_0(1) <= debug_num_5_1_EXMPLR273 ;
   debug_num_0(0) <= debug_num_5_1_EXMPLR273 ;
   debug_num_1(3) <= debug_num_5_0_EXMPLR272 ;
   debug_num_1(2) <= debug_num_5_0_EXMPLR272 ;
   debug_num_1(1) <= debug_num_5_1_EXMPLR273 ;
   debug_num_1(0) <= debug_num_5_0_EXMPLR272 ;
   debug_num_2(3) <= debug_num_5_0_EXMPLR272 ;
   debug_num_2(2) <= debug_num_5_0_EXMPLR272 ;
   debug_num_2(1) <= debug_num_5_1_EXMPLR273 ;
   debug_num_2(0) <= debug_num_5_1_EXMPLR273 ;
   debug_num_3(3) <= debug_num_5_1_EXMPLR273 ;
   debug_num_3(2) <= debug_num_5_1_EXMPLR273 ;
   debug_num_3(1) <= debug_num_5_1_EXMPLR273 ;
   debug_num_3(0) <= debug_num_5_0_EXMPLR272 ;
   debug_num_4(3) <= debug_num_5_1_EXMPLR273 ;
   debug_num_4(2) <= debug_num_5_1_EXMPLR273 ;
   debug_num_4(1) <= debug_num_5_0_EXMPLR272 ;
   debug_num_4(0) <= debug_num_5_0_EXMPLR272 ;
   debug_num_5(3) <= debug_num_5_1_EXMPLR273 ;
   debug_num_5(2) <= debug_num_5_1_EXMPLR273 ;
   debug_num_5(1) <= debug_num_5_1_EXMPLR273 ;
   debug_num_5(0) <= debug_num_5_0_EXMPLR272 ;
   debug_num_5_0_EXMPLR272 <= '0' ;
   debug_num_5_1_EXMPLR273 <= '1' ;
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
      debug_num_5_0_EXMPLR272, a(10)=>debug_num_5_0_EXMPLR272, a(9)=>
      debug_num_5_0_EXMPLR272, a(8)=>r7(8), a(7)=>r7(7), a(6)=>r7(6), a(5)=>
      r7(5), a(4)=>r7(4), a(3)=>r7(3), a(2)=>r7(2), a(1)=>r7(1), a(0)=>r7(0), 
      b(10)=>r8(10), b(9)=>r8(9), b(8)=>r8(8), b(7)=>r8(7), b(6)=>r8(6), 
      b(5)=>r8(5), b(4)=>r8(4), b(3)=>r8(3), b(2)=>r8(2), b(1)=>r8(1), b(0)
      =>r8(0), d(10)=>add3(10), d(9)=>add3(9), d(8)=>add3(8), d(7)=>add3(7), 
      d(6)=>add3(6), d(5)=>add3(5), d(4)=>add3(4), d(3)=>add3(3), d(2)=>
      add3(2), d(1)=>add3(1), d(0)=>add3(0), cout=>DANGLING(0));
   sub1_sub8_1 : sub_8u_8u_8u_0 port map ( cin=>debug_num_5_1_EXMPLR273, 
      a(7)=>r1(7), a(6)=>r1(6), a(5)=>r1(5), a(4)=>r1(4), a(3)=>r1(3), a(2)
      =>r1(2), a(1)=>r1(1), a(0)=>r1(0), b(7)=>r2(7), b(6)=>r2(6), b(5)=>
      r2(5), b(4)=>r2(4), b(3)=>r2(3), b(2)=>r2(2), b(1)=>r2(1), b(0)=>r2(0), 
      d(7)=>DANGLING(1), d(6)=>DANGLING(2), d(5)=>DANGLING(3), d(4)=>
      DANGLING(4), d(3)=>DANGLING(5), d(2)=>DANGLING(6), d(1)=>DANGLING(7), 
      d(0)=>DANGLING(8), cout=>rtlc7n260);
   sub2_sub10_2 : sub_10u_10u_10u_0 port map ( cin=>debug_num_5_1_EXMPLR273, 
      a(9)=>r9(9), a(8)=>r9(8), a(7)=>r9(7), a(6)=>r9(6), a(5)=>r9(5), a(4)
      =>r9(4), a(3)=>r9(3), a(2)=>r9(2), a(1)=>r9(1), a(0)=>r9(0), b(9)=>
      r11(9), b(8)=>r11(8), b(7)=>r11(7), b(6)=>r11(6), b(5)=>r11(5), b(4)=>
      r11(4), b(3)=>r11(3), b(2)=>r11(2), b(1)=>r11(1), b(0)=>r11(0), d(9)=>
      DANGLING(9), d(8)=>DANGLING(10), d(7)=>DANGLING(11), d(6)=>DANGLING(12
      ), d(5)=>DANGLING(13), d(4)=>DANGLING(14), d(3)=>DANGLING(15), d(2)=>
      DANGLING(16), d(1)=>DANGLING(17), d(0)=>DANGLING(18), cout=>rtlc7n294
   );
   sub3_sub10_3 : sub_10u_10u_10u_0 port map ( cin=>debug_num_5_1_EXMPLR273, 
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
   not_rtlc20n267 <= NOT rtlc20n267 ;
   rtlc20n281 <= rtlcs3 AND end_of_img ;
   rtlc20n280 <= end_of_img AND not_rtlcs4 ;
   rtlc20_54_or_4 : or_3u_3u port map ( a(2)=>i_reset, a(1)=>rtlc20n280, 
      a(0)=>rtlc20n281, d=>rtlc20_X_0_n282);
   not_end_of_img <= NOT end_of_img ;
   t_inc2_20i2 : inc_2u_2u_0 port map ( cin=>debug_num_5_1_EXMPLR273, a(1)=>
      t(1), a(0)=>t(0), d(1)=>t_20n2s2(1), d(0)=>t_20n2s2(0), cout=>DANGLING
      (29));
   not_v_6 <= NOT v(6) ;
   rtlc26n59 <= v(6) AND rtlc26n207 ;
   rtlc26n204 <= x(0) AND x(1) ;
   rtlc26n206 <= o_row_EXMPLR277(1) AND rtlc26n205 ;
   rtlc_52_and_8 : and_4u_4u port map ( a(3)=>not_i_reset, a(2)=>rtlcs4, 
      a(1)=>rtlcs3, a(0)=>not_end_of_img, d=>rtlcn2);
   rtlc20n267 <= not_rtlcn169 OR rtlcn2 ;
   c_mux_21i1Bus45_0 : mux_3u_3u port map ( a(2)=>q1(0), a(1)=>q3(0), a(0)=>
      q2(0), b(2)=>debug_num_5_0_EXMPLR272, b(1)=>t(1), b(0)=>t(0), d=>
      c_21n1ss1(0));
   c_mux_21i1Bus45_1 : mux_3u_3u port map ( a(2)=>q1(1), a(1)=>q3(1), a(0)=>
      q2(1), b(2)=>debug_num_5_0_EXMPLR272, b(1)=>t(1), b(0)=>t(0), d=>
      c_21n1ss1(1));
   c_mux_21i1Bus45_2 : mux_3u_3u port map ( a(2)=>q1(2), a(1)=>q3(2), a(0)=>
      q2(2), b(2)=>debug_num_5_0_EXMPLR272, b(1)=>t(1), b(0)=>t(0), d=>
      c_21n1ss1(2));
   c_mux_21i1Bus45_3 : mux_3u_3u port map ( a(2)=>q1(3), a(1)=>q3(3), a(0)=>
      q2(3), b(2)=>debug_num_5_0_EXMPLR272, b(1)=>t(1), b(0)=>t(0), d=>
      c_21n1ss1(3));
   c_mux_21i1Bus45_4 : mux_3u_3u port map ( a(2)=>q1(4), a(1)=>q3(4), a(0)=>
      q2(4), b(2)=>debug_num_5_0_EXMPLR272, b(1)=>t(1), b(0)=>t(0), d=>
      c_21n1ss1(4));
   c_mux_21i1Bus45_5 : mux_3u_3u port map ( a(2)=>q1(5), a(1)=>q3(5), a(0)=>
      q2(5), b(2)=>debug_num_5_0_EXMPLR272, b(1)=>t(1), b(0)=>t(0), d=>
      c_21n1ss1(5));
   c_mux_21i1Bus45_6 : mux_3u_3u port map ( a(2)=>q1(6), a(1)=>q3(6), a(0)=>
      q2(6), b(2)=>debug_num_5_0_EXMPLR272, b(1)=>t(1), b(0)=>t(0), d=>
      c_21n1ss1(6));
   c_mux_21i1Bus45_7 : mux_3u_3u port map ( a(2)=>q1(7), a(1)=>q3(7), a(0)=>
      q2(7), b(2)=>debug_num_5_0_EXMPLR272, b(1)=>t(1), b(0)=>t(0), d=>
      c_21n1ss1(7));
   d_mux_21i9Bus46_0 : mux_3u_3u port map ( a(2)=>q2(0), a(1)=>q1(0), a(0)=>
      q3(0), b(2)=>debug_num_5_0_EXMPLR272, b(1)=>t(1), b(0)=>t(0), d=>
      d_21n1ss1(0));
   d_mux_21i9Bus46_1 : mux_3u_3u port map ( a(2)=>q2(1), a(1)=>q1(1), a(0)=>
      q3(1), b(2)=>debug_num_5_0_EXMPLR272, b(1)=>t(1), b(0)=>t(0), d=>
      d_21n1ss1(1));
   d_mux_21i9Bus46_2 : mux_3u_3u port map ( a(2)=>q2(2), a(1)=>q1(2), a(0)=>
      q3(2), b(2)=>debug_num_5_0_EXMPLR272, b(1)=>t(1), b(0)=>t(0), d=>
      d_21n1ss1(2));
   d_mux_21i9Bus46_3 : mux_3u_3u port map ( a(2)=>q2(3), a(1)=>q1(3), a(0)=>
      q3(3), b(2)=>debug_num_5_0_EXMPLR272, b(1)=>t(1), b(0)=>t(0), d=>
      d_21n1ss1(3));
   d_mux_21i9Bus46_4 : mux_3u_3u port map ( a(2)=>q2(4), a(1)=>q1(4), a(0)=>
      q3(4), b(2)=>debug_num_5_0_EXMPLR272, b(1)=>t(1), b(0)=>t(0), d=>
      d_21n1ss1(4));
   d_mux_21i9Bus46_5 : mux_3u_3u port map ( a(2)=>q2(5), a(1)=>q1(5), a(0)=>
      q3(5), b(2)=>debug_num_5_0_EXMPLR272, b(1)=>t(1), b(0)=>t(0), d=>
      d_21n1ss1(5));
   d_mux_21i9Bus46_6 : mux_3u_3u port map ( a(2)=>q2(6), a(1)=>q1(6), a(0)=>
      q3(6), b(2)=>debug_num_5_0_EXMPLR272, b(1)=>t(1), b(0)=>t(0), d=>
      d_21n1ss1(6));
   d_mux_21i9Bus46_7 : mux_3u_3u port map ( a(2)=>q2(7), a(1)=>q1(7), a(0)=>
      q3(7), b(2)=>debug_num_5_0_EXMPLR272, b(1)=>t(1), b(0)=>t(0), d=>
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
   rtlc20n211 <= not_rtlcn158 when rtlcs4 = '1' else not_end_of_img ;
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
   not_rtlc20n211 <= NOT rtlc20n211 ;
   rtlc20n331 <= i_valid AND not_rtlc20n211 ;
   not_rtlcs4 <= NOT rtlcs4 ;
   not_rtlcs7 <= NOT rtlcs7 ;
   rtlc21n169 <= i_valid AND not_rtlcs7 ;
   rtlcn160 <= v(1) OR v(2) ;
   not_v_3 <= NOT v(3) ;
   not_rtlcn160 <= NOT rtlcn160 ;
   rtlc_773_and_25 : and_3u_3u port map ( a(2)=>not_v_3, a(1)=>v(4), a(0)=>
      not_rtlcn160, d=>rtlc22n182);
   rtlc22n179 <= v(3) AND not_rtlcn160 ;
   not_v_1 <= NOT v(1) ;
   rtlc22n176 <= not_v_1 AND v(2) ;
   not_v_4 <= NOT v(4) ;
   rtlc23n83 <= not_v_4 AND v(5) ;
   not_rtlc24n41 <= NOT rtlc24n41 ;
   rtlcn167 <= not_v_3 AND v(4) ;
   rtlcn159 <= v(2) OR rtlcn167 ;
   not_v_0 <= NOT v(0) ;
   rtlc_783_and_26 : and_3u_3u port map ( a(2)=>not_v_1, a(1)=>not_v_0, a(0)
      =>rtlcn159, d=>rtlc25n236);
   rtlc_784_or_27 : or_3u_3u port map ( a(2)=>v(0), a(1)=>v(3), a(0)=>
      rtlcn160, d=>rtlc25n226);
   not_rtlcn169 <= NOT rtlcn169 ;
   rtlc_789_and_28 : and_8u_8u port map ( a(7)=>x(7), a(6)=>x(6), a(5)=>x(5), 
      a(4)=>x(4), a(3)=>x(3), a(2)=>x(2), a(1)=>x(1), a(0)=>x(0), d=>rtlcs4
   );
   rtlc_790_and_29 : and_8u_8u port map ( a(7)=>o_row_EXMPLR277(7), a(6)=>
      o_row_EXMPLR277(6), a(5)=>o_row_EXMPLR277(5), a(4)=>o_row_EXMPLR277(4), 
      a(3)=>o_row_EXMPLR277(3), a(2)=>o_row_EXMPLR277(2), a(1)=>
      o_row_EXMPLR277(1), a(0)=>o_row_EXMPLR277(0), d=>rtlcs3);
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
   o_edge_EXMPLR258 <= rtlc17n0_17n1s2 AND not_sub4_13 ;
   rtlc24n41 <= not_v_6 AND rtlc7n332 ;
   o_dir(0) <= dir7(0) AND o_edge_EXMPLR258 ;
   not_rtlc7n332 <= NOT rtlc7n332 ;
   dir7_24n3ss1(1) <= dir6(1) AND not_rtlc7n332 ;
   o_dir(1) <= dir7(1) AND o_edge_EXMPLR258 ;
   o_dir(2) <= dir7(2) AND o_edge_EXMPLR258 ;
   not_o_mode_1 <= NOT o_mode_EXMPLR276(1) ;
   not_o_mode_0 <= NOT o_mode_EXMPLR276(0) ;
   rtlcn169 <= i_reset OR i_valid ;
   rtlcs0 <= not_addr_t_1 AND not_addr_t_0 ;
   rtlcs2 <= addr_t(1) AND not_addr_t_0 ;
   rtlcs1 <= not_addr_t_1 AND addr_t(0) ;
   rtlcs7 <= t(1) AND t(0) ;
   rtlcs6 <= not_o_mode_1 AND o_mode_EXMPLR276(0) ;
   rtlcs5 <= o_mode_EXMPLR276(1) AND not_o_mode_0 ;
   modgen_counter_x : counter_up_cnt_en_sclear_clock_0_8 port map ( clock=>
      i_clock, q(7)=>x(7), q(6)=>x(6), q(5)=>x(5), q(4)=>x(4), q(3)=>x(3), 
      q(2)=>x(2), q(1)=>x(1), q(0)=>x(0), clk_en=>debug_num_5_1_EXMPLR273, 
      aclear=>debug_num_5_0_EXMPLR272, sload=>debug_num_5_0_EXMPLR272, 
      data(7)=>DANGLING(30), data(6)=>DANGLING(31), data(5)=>DANGLING(32), 
      data(4)=>DANGLING(33), data(3)=>DANGLING(34), data(2)=>DANGLING(35), 
      data(1)=>DANGLING(36), data(0)=>DANGLING(37), aset=>
      debug_num_5_0_EXMPLR272, sclear=>i_reset, updn=>
      debug_num_5_1_EXMPLR273, cnt_en=>i_valid);
   modgen_counter_o_row : counter_up_cnt_en_sclear_clock_clk_en_0_8
       port map ( clock=>i_clock, q(7)=>o_row_EXMPLR277(7), q(6)=>
      o_row_EXMPLR277(6), q(5)=>o_row_EXMPLR277(5), q(4)=>o_row_EXMPLR277(4), 
      q(3)=>o_row_EXMPLR277(3), q(2)=>o_row_EXMPLR277(2), q(1)=>
      o_row_EXMPLR277(1), q(0)=>o_row_EXMPLR277(0), clk_en=>not_rtlc20n267, 
      aclear=>debug_num_5_0_EXMPLR272, sload=>debug_num_5_0_EXMPLR272, 
      data(7)=>DANGLING(38), data(6)=>DANGLING(39), data(5)=>DANGLING(40), 
      data(4)=>DANGLING(41), data(3)=>DANGLING(42), data(2)=>DANGLING(43), 
      data(1)=>DANGLING(44), data(0)=>DANGLING(45), aset=>
      debug_num_5_0_EXMPLR272, sclear=>rtlc20_X_0_n282, updn=>
      debug_num_5_1_EXMPLR273, cnt_en=>rtlcs4);
   add1_add8_4 : add_8u_8u_8u_0_0 port map ( cin=>debug_num_5_0_EXMPLR272, 
      a(7)=>r3(7), a(6)=>r3(6), a(5)=>r3(5), a(4)=>r3(4), a(3)=>r3(3), a(2)
      =>r3(2), a(1)=>r3(1), a(0)=>r3(0), b(7)=>r4(7), b(6)=>r4(6), b(5)=>
      r4(5), b(4)=>r4(4), b(3)=>r4(3), b(2)=>r4(2), b(1)=>r4(1), b(0)=>r4(0), 
      d(7)=>add1(7), d(6)=>add1(6), d(5)=>add1(5), d(4)=>add1(4), d(3)=>
      add1(3), d(2)=>add1(2), d(1)=>add1(1), d(0)=>add1(0), cout=>add1(8));
   add2_add9_5 : add_9u_9u_9u_0_0 port map ( cin=>debug_num_5_0_EXMPLR272, 
      a(8)=>debug_num_5_0_EXMPLR272, a(7)=>r5(7), a(6)=>r5(6), a(5)=>r5(5), 
      a(4)=>r5(4), a(3)=>r5(3), a(2)=>r5(2), a(1)=>r5(1), a(0)=>r5(0), b(8)
      =>r7(8), b(7)=>r7(7), b(6)=>r7(6), b(5)=>r7(5), b(4)=>r7(4), b(3)=>
      r7(3), b(2)=>r7(2), b(1)=>r7(1), b(0)=>r7(0), d(8)=>add2(8), d(7)=>
      add2(7), d(6)=>add2(6), d(5)=>add2(5), d(4)=>add2(4), d(3)=>add2(3), 
      d(2)=>add2(2), d(1)=>add2(1), d(0)=>add2(0), cout=>add2(9));
   add4_add11_6 : add_11u_11u_11u_0_0 port map ( cin=>
      debug_num_5_0_EXMPLR272, a(10)=>debug_num_5_0_EXMPLR272, a(9)=>r13(10), 
      a(8)=>r13(9), a(7)=>r13(8), a(6)=>r13(7), a(5)=>r13(6), a(4)=>r13(5), 
      a(3)=>r13(4), a(2)=>r13(3), a(1)=>r13(2), a(0)=>r13(1), b(10)=>r13(10), 
      b(9)=>r13(9), b(8)=>r13(8), b(7)=>r13(7), b(6)=>r13(6), b(5)=>r13(5), 
      b(4)=>r13(4), b(3)=>r13(3), b(2)=>r13(2), b(1)=>r13(1), b(0)=>r13(0), 
      d(10)=>add4(11), d(9)=>add4(10), d(8)=>add4(9), d(7)=>add4(8), d(6)=>
      add4(7), d(5)=>add4(6), d(4)=>add4(5), d(3)=>add4(4), d(2)=>add4(3), 
      d(1)=>add4(2), d(0)=>add4(1), cout=>add4(12));
   rtlc16n0_16n1s2_13 <= NOT rtlcn666 ;
   DFFPC (v(0),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,v(1))
    ;
   DFFRSE (i_valid,debug_num_5_0_EXMPLR272,i_reset,debug_num_5_1_EXMPLR273,
   i_clock,v(0)) ;
   DFFPC (v(1),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,v(2))
    ;
   DFFPC (v(2),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,v(3))
    ;
   DFFPC (v(3),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,v(4))
    ;
   DFFPC (v(4),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,v(5))
    ;
   DFFPC (v(5),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,v(6))
    ;
   DFFPC (v(6),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,v(7))
    ;
   DFFRSE (debug_num_5_1_EXMPLR273,debug_num_5_0_EXMPLR272,i_reset,
   debug_num_5_1_EXMPLR273,i_clock,o_mode_EXMPLR276(1)) ;
   DFFRSE (not_rtlc19n43,i_reset,debug_num_5_0_EXMPLR272,
   debug_num_5_1_EXMPLR273,i_clock,o_mode_EXMPLR276(0)) ;
   DFFRSE (rtlcn140,debug_num_5_0_EXMPLR272,i_reset,rtlc20n331,i_clock,
   end_of_img) ;
   DFFRSE (t_20n2s1(1),debug_num_5_0_EXMPLR272,i_reset,rtlc11n44,i_clock,
   t(1)) ;
   DFFRSE (t_20n2s1(0),debug_num_5_0_EXMPLR272,i_reset,rtlc11n44,i_clock,
   t(0)) ;
   DFFPCE (d_21n1ss1(7),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc21n169,i_clock,d(7)) ;
   DFFPCE (d_21n1ss1(6),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc21n169,i_clock,d(6)) ;
   DFFPCE (d_21n1ss1(5),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc21n169,i_clock,d(5)) ;
   DFFPCE (d_21n1ss1(4),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc21n169,i_clock,d(4)) ;
   DFFPCE (d_21n1ss1(3),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc21n169,i_clock,d(3)) ;
   DFFPCE (d_21n1ss1(2),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc21n169,i_clock,d(2)) ;
   DFFPCE (d_21n1ss1(1),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc21n169,i_clock,d(1)) ;
   DFFPCE (d_21n1ss1(0),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc21n169,i_clock,d(0)) ;
   DFFPCE (c_21n1ss1(7),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc21n169,i_clock,c(7)) ;
   DFFPCE (c_21n1ss1(6),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc21n169,i_clock,c(6)) ;
   DFFPCE (c_21n1ss1(5),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc21n169,i_clock,c(5)) ;
   DFFPCE (c_21n1ss1(4),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc21n169,i_clock,c(4)) ;
   DFFPCE (c_21n1ss1(3),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc21n169,i_clock,c(3)) ;
   DFFPCE (c_21n1ss1(2),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc21n169,i_clock,c(2)) ;
   DFFPCE (c_21n1ss1(1),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc21n169,i_clock,c(1)) ;
   DFFPCE (c_21n1ss1(0),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc21n169,i_clock,c(0)) ;
   DFFPCE (i_pixel(7),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   i_valid,i_clock,e(7)) ;
   DFFPCE (i_pixel(6),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   i_valid,i_clock,e(6)) ;
   DFFPCE (i_pixel(5),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   i_valid,i_clock,e(5)) ;
   DFFPCE (i_pixel(4),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   i_valid,i_clock,e(4)) ;
   DFFPCE (i_pixel(3),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   i_valid,i_clock,e(3)) ;
   DFFPCE (i_pixel(2),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   i_valid,i_clock,e(2)) ;
   DFFPCE (i_pixel(1),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   i_valid,i_clock,e(1)) ;
   DFFPCE (i_pixel(0),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   i_valid,i_clock,e(0)) ;
   DFFPCE (e(7),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,f(7)) ;
   DFFPCE (e(6),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,f(6)) ;
   DFFPCE (e(5),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,f(5)) ;
   DFFPCE (e(4),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,f(4)) ;
   DFFPCE (e(3),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,f(3)) ;
   DFFPCE (e(2),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,f(2)) ;
   DFFPCE (e(1),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,f(1)) ;
   DFFPCE (e(0),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,f(0)) ;
   DFFPCE (d(7),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,i(7)) ;
   DFFPCE (d(6),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,i(6)) ;
   DFFPCE (d(5),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,i(5)) ;
   DFFPCE (d(4),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,i(4)) ;
   DFFPCE (d(3),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,i(3)) ;
   DFFPCE (d(2),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,i(2)) ;
   DFFPCE (d(1),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,i(1)) ;
   DFFPCE (d(0),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,i(0)) ;
   DFFPCE (c(7),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,b(7)) ;
   DFFPCE (c(6),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,b(6)) ;
   DFFPCE (c(5),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,b(5)) ;
   DFFPCE (c(4),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,b(4)) ;
   DFFPCE (c(3),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,b(3)) ;
   DFFPCE (c(2),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,b(2)) ;
   DFFPCE (c(1),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,b(1)) ;
   DFFPCE (c(0),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,b(0)) ;
   DFFPCE (f(7),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,g(7)) ;
   DFFPCE (f(6),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,g(6)) ;
   DFFPCE (f(5),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,g(5)) ;
   DFFPCE (f(4),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,g(4)) ;
   DFFPCE (f(3),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,g(3)) ;
   DFFPCE (f(2),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,g(2)) ;
   DFFPCE (f(1),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,g(1)) ;
   DFFPCE (f(0),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,g(0)) ;
   DFFPCE (i(7),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,h(7)) ;
   DFFPCE (i(6),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,h(6)) ;
   DFFPCE (i(5),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,h(5)) ;
   DFFPCE (i(4),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,h(4)) ;
   DFFPCE (i(3),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,h(3)) ;
   DFFPCE (i(2),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,h(2)) ;
   DFFPCE (i(1),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,h(1)) ;
   DFFPCE (i(0),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,h(0)) ;
   DFFPCE (b(7),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,a(7)) ;
   DFFPCE (b(6),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,a(6)) ;
   DFFPCE (b(5),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,a(5)) ;
   DFFPCE (b(4),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,a(4)) ;
   DFFPCE (b(3),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,a(3)) ;
   DFFPCE (b(2),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,a(2)) ;
   DFFPCE (b(1),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,a(1)) ;
   DFFPCE (b(0),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_valid,
   i_clock,a(0)) ;
   DFFPCE (sub1_8,debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,rtlc22n182,
   i_clock,dir4_2) ;
   DFFPCE (rtlc7n260,debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc22n182,i_clock,dir4_0) ;
   DFFPCE (sub1_8,debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,rtlc22n179,
   i_clock,dir3_2) ;
   DFFPCE (sub1_8,debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,rtlc22n176,
   i_clock,dir2_2) ;
   DFFPCE (sub1_8,debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,v(1),
   i_clock,dir1_2) ;
   DFFPCE (dir6_23n5ss1_2,debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc23n83,i_clock,dir6(2)) ;
   DFFPCE (dir5_23n5ss1_2,debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   v(4),i_clock,dir5(2)) ;
   DFFPCE (rtlc7n294,debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,v(4),
   i_clock,dir5(1)) ;
   DFFPCE (dir7_24n3ss1(2),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   not_rtlc24n41,i_clock,dir7(2)) ;
   DFFPCE (dir7_24n3ss1(1),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   not_rtlc24n41,i_clock,dir7(1)) ;
   DFFPCE (dir7_24n3ss1(0),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   not_rtlc24n41,i_clock,dir7(0)) ;
   DFFPCE (r9_25n4ss1(9),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n236,i_clock,r9(9)) ;
   DFFPCE (r9_25n4ss1(8),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n236,i_clock,r9(8)) ;
   DFFPCE (r9_25n4ss1(7),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n236,i_clock,r9(7)) ;
   DFFPCE (r9_25n4ss1(6),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n236,i_clock,r9(6)) ;
   DFFPCE (r9_25n4ss1(5),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n236,i_clock,r9(5)) ;
   DFFPCE (r9_25n4ss1(4),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n236,i_clock,r9(4)) ;
   DFFPCE (r9_25n4ss1(3),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n236,i_clock,r9(3)) ;
   DFFPCE (r9_25n4ss1(2),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n236,i_clock,r9(2)) ;
   DFFPCE (r9_25n4ss1(1),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n236,i_clock,r9(1)) ;
   DFFPCE (r9_25n4ss1(0),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n236,i_clock,r9(0)) ;
   DFFPCE (r4_25n6ss1(7),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r4(7)) ;
   DFFPCE (r4_25n6ss1(6),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r4(6)) ;
   DFFPCE (r4_25n6ss1(5),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r4(5)) ;
   DFFPCE (r4_25n6ss1(4),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r4(4)) ;
   DFFPCE (r4_25n6ss1(3),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r4(3)) ;
   DFFPCE (r4_25n6ss1(2),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r4(2)) ;
   DFFPCE (r4_25n6ss1(1),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r4(1)) ;
   DFFPCE (r4_25n6ss1(0),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r4(0)) ;
   DFFPCE (r3_25n6ss1(7),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r3(7)) ;
   DFFPCE (r3_25n6ss1(6),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r3(6)) ;
   DFFPCE (r3_25n6ss1(5),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r3(5)) ;
   DFFPCE (r3_25n6ss1(4),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r3(4)) ;
   DFFPCE (r3_25n6ss1(3),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r3(3)) ;
   DFFPCE (r3_25n6ss1(2),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r3(2)) ;
   DFFPCE (r3_25n6ss1(1),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r3(1)) ;
   DFFPCE (r3_25n6ss1(0),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r3(0)) ;
   DFFPCE (r2_25n6ss1(7),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r2(7)) ;
   DFFPCE (r2_25n6ss1(6),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r2(6)) ;
   DFFPCE (r2_25n6ss1(5),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r2(5)) ;
   DFFPCE (r2_25n6ss1(4),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r2(4)) ;
   DFFPCE (r2_25n6ss1(3),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r2(3)) ;
   DFFPCE (r2_25n6ss1(2),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r2(2)) ;
   DFFPCE (r2_25n6ss1(1),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r2(1)) ;
   DFFPCE (r2_25n6ss1(0),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r2(0)) ;
   DFFPCE (r1_25n6ss1(7),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r1(7)) ;
   DFFPCE (r1_25n6ss1(6),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r1(6)) ;
   DFFPCE (r1_25n6ss1(5),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r1(5)) ;
   DFFPCE (r1_25n6ss1(4),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r1(4)) ;
   DFFPCE (r1_25n6ss1(3),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r1(3)) ;
   DFFPCE (r1_25n6ss1(2),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r1(2)) ;
   DFFPCE (r1_25n6ss1(1),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r1(1)) ;
   DFFPCE (r1_25n6ss1(0),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   rtlc25n226,i_clock,r1(0)) ;
   DFFRSE (add3(10),debug_num_5_0_EXMPLR272,v(2),debug_num_5_1_EXMPLR273,
   i_clock,r8(10)) ;
   DFFRSE (add3(9),debug_num_5_0_EXMPLR272,v(2),debug_num_5_1_EXMPLR273,
   i_clock,r8(9)) ;
   DFFPC (r8_25n1ss1(8),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   i_clock,r8(8)) ;
   DFFPC (r8_25n1ss1(7),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   i_clock,r8(7)) ;
   DFFPC (r8_25n1ss1(6),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   i_clock,r8(6)) ;
   DFFPC (r8_25n1ss1(5),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   i_clock,r8(5)) ;
   DFFPC (r8_25n1ss1(4),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   i_clock,r8(4)) ;
   DFFPC (r8_25n1ss1(3),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   i_clock,r8(3)) ;
   DFFPC (r8_25n1ss1(2),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   i_clock,r8(2)) ;
   DFFPC (r8_25n1ss1(1),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   i_clock,r8(1)) ;
   DFFPC (r8_25n1ss1(0),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,
   i_clock,r8(0)) ;
   DFFPC (add4(12),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r15(12)) ;
   DFFPC (add4(11),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r15(11)) ;
   DFFPC (add4(10),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r15(10)) ;
   DFFPC (add4(9),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r15(9)) ;
   DFFPC (add4(8),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r15(8)) ;
   DFFPC (add4(7),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r15(7)) ;
   DFFPC (add4(6),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r15(6)) ;
   DFFPC (add4(5),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r15(5)) ;
   DFFPC (add4(4),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r15(4)) ;
   DFFPC (add4(3),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r15(3)) ;
   DFFPC (add4(2),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r15(2)) ;
   DFFPC (add4(1),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r15(1)) ;
   DFFPC (r13(0),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r15(0)) ;
   DFFPC (max3(9),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r14_12) ;
   DFFPC (max3(8),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r14_11) ;
   DFFPC (max3(7),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r14_10) ;
   DFFPC (max3(6),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r14_9) ;
   DFFPC (max3(5),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r14_8) ;
   DFFPC (max3(4),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r14_7) ;
   DFFPC (max3(3),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r14_6) ;
   DFFPC (max3(2),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r14_5) ;
   DFFPC (max3(1),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r14_4) ;
   DFFPC (max3(0),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r14_3) ;
   DFFPC (add3(10),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r13(10)) ;
   DFFPC (add3(9),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r13(9)) ;
   DFFPC (add3(8),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r13(8)) ;
   DFFPC (add3(7),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r13(7)) ;
   DFFPC (add3(6),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r13(6)) ;
   DFFPC (add3(5),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r13(5)) ;
   DFFPC (add3(4),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r13(4)) ;
   DFFPC (add3(3),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r13(3)) ;
   DFFPC (add3(2),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r13(2)) ;
   DFFPC (add3(1),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r13(1)) ;
   DFFPC (add3(0),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r13(0)) ;
   DFFPC (max2(9),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r12(9)) ;
   DFFPC (max2(8),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r12(8)) ;
   DFFPC (max2(7),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r12(7)) ;
   DFFPC (max2(6),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r12(6)) ;
   DFFPC (max2(5),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r12(5)) ;
   DFFPC (max2(4),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r12(4)) ;
   DFFPC (max2(3),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r12(3)) ;
   DFFPC (max2(2),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r12(2)) ;
   DFFPC (max2(1),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r12(1)) ;
   DFFPC (max2(0),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r12(0)) ;
   DFFPC (add2(9),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r11(9)) ;
   DFFPC (add2(8),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r11(8)) ;
   DFFPC (add2(7),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r11(7)) ;
   DFFPC (add2(6),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r11(6)) ;
   DFFPC (add2(5),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r11(5)) ;
   DFFPC (add2(4),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r11(4)) ;
   DFFPC (add2(3),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r11(3)) ;
   DFFPC (add2(2),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r11(2)) ;
   DFFPC (add2(1),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r11(1)) ;
   DFFPC (add2(0),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r11(0)) ;
   DFFPC (add1(8),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r7(8)) ;
   DFFPC (add1(7),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r7(7)) ;
   DFFPC (add1(6),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r7(6)) ;
   DFFPC (add1(5),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r7(5)) ;
   DFFPC (add1(4),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r7(4)) ;
   DFFPC (add1(3),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r7(3)) ;
   DFFPC (add1(2),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r7(2)) ;
   DFFPC (add1(1),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r7(1)) ;
   DFFPC (add1(0),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r7(0)) ;
   DFFPC (max1(7),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r5(7)) ;
   DFFPC (max1(6),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r5(6)) ;
   DFFPC (max1(5),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r5(5)) ;
   DFFPC (max1(4),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r5(4)) ;
   DFFPC (max1(3),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r5(3)) ;
   DFFPC (max1(2),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r5(2)) ;
   DFFPC (max1(1),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r5(1)) ;
   DFFPC (max1(0),debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   r5(0)) ;
   DFFPC (rtlc26n59,debug_num_5_0_EXMPLR272,debug_num_5_0_EXMPLR272,i_clock,
   o_valid) ;
   DFFRSE (dir5(1),rtlcn143,debug_num_5_0_EXMPLR272,rtlc23n83,i_clock,
   dir6(1)) ;
   DFFRSE (dir5(0),rtlcn143,debug_num_5_0_EXMPLR272,rtlc23n83,i_clock,
   dir6(0)) ;
   DFFRSE (dir2_2,debug_num_5_0_EXMPLR272,rtlcn147,v(4),i_clock,dir5(0)) ;
   t_modu2_20i1_rtlcm_0_not_in1_0 <= NOT t_20n2s2(0) ;
   t_modu2_20i1_rtlcm_0_not_in1_1 <= NOT t_20n2s2(1) ;
   t_20n2s1(1) <= t_20n2s2(1) AND t_modu2_20i1_rtlcm_0_not_in1_0 ;
   t_20n2s1(0) <= t_modu2_20i1_rtlcm_0_not_in1_1 AND t_20n2s2(0) ;
   NOT_r15_0 <= NOT r15(0) ;
   rtlc16n0_sub13_16i1 : sub_12u_12u_12u_0 port map ( cin=>NOT_r15_0, a(11)
      =>r14_12, a(10)=>r14_11, a(9)=>r14_10, a(8)=>r14_9, a(7)=>r14_8, a(6)
      =>r14_7, a(5)=>r14_6, a(4)=>r14_5, a(3)=>r14_4, a(2)=>r14_3, a(1)=>
      debug_num_5_0_EXMPLR272, a(0)=>debug_num_5_0_EXMPLR272, b(11)=>r15(12), 
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
   r3_25n6ss1(6) <= c(6) when v(0) = '1' else nx543 ;
   nx543 <= e(6) when v(1) = '1' else nx547 ;
   nx547 <= f(6) when v(2) = '1' else a(6) ;
   r3_25n6ss1(7) <= c(7) when v(0) = '1' else nx555 ;
   nx555 <= e(7) when v(1) = '1' else nx559 ;
   nx559 <= f(7) when v(2) = '1' else a(7) ;
   r4_25n6ss1(0) <= b(0) when v(0) = '1' else nx565 ;
   nx565 <= d(0) when v(1) = '1' else nx569 ;
   nx569 <= g(0) when v(2) = '1' else h(0) ;
   r4_25n6ss1(1) <= b(1) when v(0) = '1' else nx575 ;
   nx575 <= d(1) when v(1) = '1' else nx578 ;
   nx578 <= g(1) when v(2) = '1' else h(1) ;
   r4_25n6ss1(2) <= b(2) when v(0) = '1' else nx584 ;
   nx584 <= d(2) when v(1) = '1' else nx587 ;
   nx587 <= g(2) when v(2) = '1' else h(2) ;
   r4_25n6ss1(3) <= b(3) when v(0) = '1' else nx593 ;
   nx593 <= d(3) when v(1) = '1' else nx597 ;
   nx597 <= g(3) when v(2) = '1' else h(3) ;
   r4_25n6ss1(4) <= b(4) when v(0) = '1' else nx604 ;
   nx604 <= d(4) when v(1) = '1' else nx607 ;
   nx607 <= g(4) when v(2) = '1' else h(4) ;
   r4_25n6ss1(5) <= b(5) when v(0) = '1' else nx613 ;
   nx613 <= d(5) when v(1) = '1' else nx617 ;
   nx617 <= g(5) when v(2) = '1' else h(5) ;
   r4_25n6ss1(6) <= b(6) when v(0) = '1' else nx625 ;
   nx625 <= d(6) when v(1) = '1' else nx628 ;
   nx628 <= g(6) when v(2) = '1' else h(6) ;
   r4_25n6ss1(7) <= b(7) when v(0) = '1' else nx635 ;
   nx635 <= d(7) when v(1) = '1' else nx639 ;
   nx639 <= g(7) when v(2) = '1' else h(7) ;
   modgen_or_33 : or_5u_5u port map ( a(4)=>sub4_12, a(3)=>sub4_11, a(2)=>
      sub4_10, a(1)=>sub4_9, a(0)=>rtlc17n0_17n1s3, d=>rtlc17n0_17n1s2);
   modgen_or_34 : or_7u_7u port map ( a(6)=>o_row_EXMPLR277(2), a(5)=>
      o_row_EXMPLR277(3), a(4)=>o_row_EXMPLR277(4), a(3)=>o_row_EXMPLR277(5), 
      a(2)=>o_row_EXMPLR277(6), a(1)=>o_row_EXMPLR277(7), a(0)=>rtlc26n206, 
      d=>rtlc26n207);
   modgen_or_35 : or_8u_8u port map ( a(7)=>o_row_EXMPLR277(0), a(6)=>x(2), 
      a(5)=>x(3), a(4)=>x(4), a(3)=>x(5), a(2)=>x(6), a(1)=>x(7), a(0)=>
      rtlc26n204, d=>rtlc26n205);
end main ;

