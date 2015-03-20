
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity kirsch is
  port(
    --------------------------------------
 --   main inputs and outputs
    i_clock    : in  std_logic;                      
    i_reset    : in  std_logic;                      
    i_valid    : in  std_logic;                 
    i_pixel    : in  std_logic_vector(7 downto 0);
    o_valid    : out std_logic;                 
    o_edge     : out std_logic;	                     
    o_dir      : out std_logic_vector(2 downto 0);                      
    o_mode     : out std_logic_vector(1 downto 0);
    o_row      : out std_logic_vector(7 downto 0);
    --------------------------------------
   -- debugging inputs and outputs
    debug_key      : in  std_logic_vector( 3 downto 1) ; 
    debug_switch   : in  std_logic_vector(17 downto 0) ; 
    debug_led_red  : out std_logic_vector(17 downto 0) ; 
    debug_led_grn  : out std_logic_vector(5  downto 0) ; 
    debug_num_0    : out std_logic_vector(3 downto 0) ; 
    debug_num_1    : out std_logic_vector(3 downto 0) ; 
    debug_num_2    : out std_logic_vector(3 downto 0) ; 
    debug_num_3    : out std_logic_vector(3 downto 0) ; 
    debug_num_4    : out std_logic_vector(3 downto 0) ;
    debug_num_5    : out std_logic_vector(3 downto 0) 
    --------------------------------------
  );  
end entity;


architecture main of kirsch is
	signal col_i, col_flop : std_logic_vector(7 downto 0) := "00000000";
	signal row_count : std_logic_vector(7 downto 0) := "00000001";
	signal row_i : std_logic_vector(2 downto 0) := "001";
	signal i_input : std_logic_vector(7 downto 0);
	signal wren : std_logic_vector(2 downto 0);
	signal v : std_logic_vector(7 downto 0);	

	subtype vec is std_logic_vector(7 downto 0);
	type vec_vec is array(2 downto 0) of vec;
	signal mem_output : vec_vec;

	signal a, b, c, d, e, f, g, h, i : unsigned(7 downto 0) := "00000000";
	signal r1, r6 : unsigned(8 downto 0); --a1
	signal r2, r7 : unsigned(9 downto 0); --a2
	signal r3, r9 : unsigned(12 downto 0);	--a3
	signal r4, r5, r8 : unsigned(9 downto 0); --m2
	signal r2_dir, r4_dir, r5_dir, r7_dir, r8_dir : std_logic_vector(2 downto 0);
	signal sub : unsigned(13 downto 0); --sub

begin
	mem_array : for i in 0 to 2 generate
		mem: entity work.mem(main)
			port map (
				address => col_i,
				clock => i_clock,
				data => i_input,
				wren => wren(i),
				q => mem_output(i)
			);				
	end generate;

	v(0) <= i_valid;
	for_v : for i in 1 to v'high generate
		process begin
			wait until rising_edge(i_clock);
			v(i) <= v(i-1);
		end process;
	end generate;
 
 
	conv_shift: process begin
		wait until rising_edge(i_clock);
		if v(0) = '1' then
			a <= b;
			h <= i;
			g <= f;
			b <= c;
			i <= d;
			f <= e;
			if row_i(2) = '1' then
				c <= unsigned(mem_output(0));
				d <= unsigned(mem_output(1));
			elsif row_i(0) = '1' then
				c <= unsigned(mem_output(1));
				d <= unsigned(mem_output(2));
			else
				c <= unsigned(mem_output(2));
				d <= unsigned(mem_output(0));
			end if;
			e <= unsigned(i_pixel);
		end if;
	end process;

	process begin
		wait until rising_edge(i_clock);
		if v(1) = '1' then               
			r1 <= ('0' & a) + ('0' & h);
		elsif v(2) = '1' then
			r1 <= ('0' & b) + ('0' & c);
		elsif v(3) = '1' then
			r1 <= ('0' & d) + ('0' & e);
		end if;
	end process;
	
	process begin
		wait until rising_edge(i_clock);
		if v(1) = '1' then
			if signed(("00" & g) - ("00" & b )) >= 0 then
				r2 <= ("00" & g) + ("00" & h) + ("00" & a);
				r2_dir <= "001";
			else
				r2 <= ("00" & b) + ("00" & h) + ("00" & a);
				r2_dir <= "100";
			end if;
		elsif v(2) = '1' then
			if signed(("00" & a) - ("00" & d)) >= 0 then
				r2 <= ("00" & a) + ("00" & b) + ("00" & c);
				r2_dir <= "010";
			else
				r2 <= ("00" & d) + ("00" & b) + ("00" & c);
				r2_dir <= "110";
			end if;
		elsif v(3) = '1' then
			if signed(("00" & c) - ("00" & f)) >= 0 then
				r2 <= ("00" & c) + ("00" & d) + ("00" & e);
				r2_dir <= "000";
			else
				r2 <= ("00" & f) + ("00" & d) + ("00" & e);
				r2_dir <= "101";
			end if;
		end if;
	end process;

	process begin
		wait until rising_edge(i_clock);
		if v(2) = '1' then
			r3 <= ("0000" & r1);
		elsif v(5) = '1' then
			r3 <= r3 + ("0000" & r6);
		else
			r3 <= ("0000" & r1) + r3;
		end if;
	end process;

	process begin
		wait until rising_edge(i_clock);
		if v(5) = '1' then 
			if signed(("00" & r4) - ("00" & r7)) >= 0 then
				r4 <= r4;
				r4_dir <= r4_dir;
			else
				r4 <= r7;
				r4_dir <= r7_dir;
			end if;
		else
			r4 <= r2;
			r4_dir <= r2_dir;
		end if;
	end process;

	process begin
		wait until rising_edge(i_clock);
		if v(3) = '1' then
			if signed(("00" & r2) - ("00" & r4)) >= 0 then
				r5 <= r2;
				r5_dir <= r2_dir;
			else
				r5 <= r4;
				r5_dir <= r4_dir;
			end if;
		elsif v(4) = '1' then
			r5 <= r5;
			r5_dir <= r5_dir;
		elsif v(5) = '1' then
			r5 <= r5;
			r5_dir <= r5_dir;
		end if;
	end process;

	process begin
		wait until rising_edge(i_clock);
		r6 <= ('0' & f) + ('0' & g);
	end process;

	process begin
		wait until rising_edge(i_clock);
		if v(4) = '1' then
			if signed(("00" & e) - ("00" & h)) >= 0 then
				r7 <= ("00" & e) + ("00" & f) + ("00" & g);
				r7_dir <= "011";
			else
				r7 <= ("00" & h) + ("00" & f) + ("00" & g);
				r7_dir <= "111";
			end if;
		end if;	
	end process;

	process begin
		wait until rising_edge(i_clock);
		if v(6) = '1' then
			if signed(("00" & r4) - ("00" & r5)) >= 0 then
				r8 <= r4;
				r8_dir <= r4_dir;
			else
				r8 <= r5;
				r8_dir <= r5_dir;
			end if;
		elsif v(7) = '1' then
			r8_dir <= r8_dir;
		end if;
	end process;

	process begin
		wait until rising_edge(i_clock);
		r9 <= (r3 sll 1) + r3;
	end process;

	process begin
		wait until rising_edge(i_clock);
		col_i <= col_flop;
	end process;

	process begin
		wait until rising_edge(i_clock);
		if i_reset = '1' then
			o_mode <= "01";
		elsif v = "00000000" then
			o_mode <= "10";
		else 
			o_mode <= "11";
		end if;
	end process;

	sub <= ('0' & (("000" & r8) sll 3)) - ('0' & r9);
	o_row <= std_logic_vector(unsigned(row_count)-2);
	
	process begin
		wait until rising_edge(i_clock);
		if v(7) = '1' then
			if sub(13 downto 7) >= 3 then
				o_edge <= '1';
				o_dir <= r8_dir;
			else
				o_edge <= '0';
				o_dir <= "000";
			end if;
		end if;
	end process;

	process begin
		wait until rising_edge(i_clock);
		if v(7) = '1' then
			if row_count >= "00000011" and col_flop /= "00000001" and col_flop /= "00000000" then
				o_valid <= '1';
			else
				o_valid <= '0';
			end if;
		else
			o_valid <= '0';
		end if;
	end process;

	process begin
		wait until rising_edge(i_clock);
		if i_valid = '1' then
			wren <= row_i;
			i_input <= i_pixel;
			
			col_flop <= std_logic_vector(unsigned(col_i) + 1);
			if col_i = "11111111" then
				row_i <= std_logic_vector(unsigned(row_i) rol 1);
				row_count <= std_logic_vector(unsigned(row_count) + 1);
			end if;
		else
			wren <= "000";
		end if;
	end process;
end architecture;
