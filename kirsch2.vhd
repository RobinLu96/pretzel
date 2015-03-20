
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity kirsch is
  port(
    ------------------------------------------
    -- main inputs and outputs
    i_clock    : in  std_logic;                      
    i_reset    : in  std_logic;                      
    i_valid    : in  std_logic;                 
    i_pixel    : in  std_logic_vector(7 downto 0);
    o_valid    : out std_logic;                 
    o_edge     : out std_logic;	                     
    o_dir      : out std_logic_vector(2 downto 0);                      
    o_mode     : out std_logic_vector(1 downto 0);
    o_row      : out std_logic_vector(7 downto 0);
    ------------------------------------------
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
    ------------------------------------------
  );  
end entity;


architecture main of kirsch is
	signal col_i : std_logic_vector(7 downto 0) := "00000000";
	signal row_i : std_logic_vector(2 downto 0) := "001";
	signal i_input : std_logic_vector(7 downto 0);
	signal wren : std_logic_vector(2 downto 0);
	signal v : std_logic_vector(6 downto 0);	

	subtype vec is std_logic_vector(7 downto 0);
	type vec_vec is array(2 downto 0) of vec;
	signal mem_output : vec_vec;

	signal a, b, c, d, e, f, g, h, i : unsigned(7 downto 0);
begin
  debug_num_5 <= X"E";
  debug_num_4 <= X"C";
  debug_num_3 <= X"E";
  debug_num_2 <= X"3";
  debug_num_1 <= X"2";
  debug_num_0 <= X"7";

  debug_led_red <= (others => '0');
  debug_led_grn <= (others => '0');

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
		end process;
	end generate;
 
	table_shift : for i in 0 to 2 generate
		process begin
			wait until rising_edge(i_clock);
			if i_valid = '1' then
				conv_table(i + 6) <= conv_table(i + 3);
				conv_table(i + 3) <= conv_table(i);
			end if;
		end process;
	end generate;

	process begin
		wait until rising_edge(i_clock);
		if i_valid = '1' then
			a <= b
			h <= i;
			g <= f;
			b <= c;
			i <= d;
			f <= e;
			if row_i(2) = '1' then
				c <= q(0);
				d <= q(1);
			elsif row_i(0) = '1' then
				c <= q(1);
				d <= q(2);
			else
				c <= q(2);
				d <= q(0);
			end if;
			e <= i_pixel;
			i_input <= i_pixel;
	end if;
			

	process begin
		wait until rising_edge(i_clock);
		if v(1) = '1' then
			r1 <= a + h;
		elsif v(2) = '1' then
			r1 <= b + c;
		elsif v(3) = '1' then
			r1 <= d + e;
		end if;
	end process;
	
	process begin
		wait until rising_edge(i_clock);
		if v(1) = '1' then
			if signed(("00" & g) - ("00" & b )) >= 0 then
				r2 <= g + h + a;
			else
				r2 <= b + h + a;
			end if;
		elsif v(2) = '1' then
			if signed(("00" & a) - ("00" & d)) >= 0 then
				r2 <= a + b + c;
			else
				r2 <= d + b + c;
			end if;
		elsif v(3) = '1' then
			if signed(("00" & c) - ("00" & f)) >= 0 then
				r2 <= c + d + e;
			else
				r2 <= f + d + e;
			end if;
		end if;
	end process;

	process begin
		wait until rising_edge(i_clock);
		if v(2) = '1' then
			r3 <= r1;
		else
			r3 <= r1 + r3;
		end if;
	end process;

	process begin
		wait until rising_edge(i_clock);
		r4 <= r2;
	end process;
	
	process begin
		wait until rising_edge(i_clock);
		if v(3) = '1' then
			if signed(("00" & r2) - ("00" & r4)) >= 0 then
				r5 <= r2;
			else
				r5 <= r2;
			end if;
		elsif v(4) = '1' then
			r5 <= r5;
		elsif v(5) = '1' then
			r5 <= r5;
		end if;
	end process;

	process begin
		wait until rising_edge(i_clock);
		r6 <= f + g;
	end process;

	process begin
		wait until rising_edge(i_clock);
		if signed(("00" & e) - ("00" & h)) >= 0 then
			r7 <= e + f + g;
		else
			r7 <= h + f + g;
		end if;
	end process;

	process begin
		wait until rising_edge(i_clock);
		if signed(("00" & r4) - ("00" & r5)) >= 0 then
			r8 <= r4;
		else
			r8 <= r5;
		end if;
	end process;

	process begin
		wait until rising_edge(i_clock);
		r9 <= (r3 sll 1) + r3;
	end process;

	output <= (r6 sll 3) - r7;

	process begin
		wait until rising_edge(i_clock);
		if i_valid = '1' then
			wren <= row_i;
			i_input <= i_pixel;
			
			col_i <= std_logic_vector(unsigned(col_i) + 1);
			if col_i = "11111111" then
				row_i <= std_logic_vector(unsigned(row_i) rol 1);
			end if;
		else
			wren <= "000";
		end if;
	end process;
end architecture;


