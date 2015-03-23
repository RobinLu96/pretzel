library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package project_pkg is
	subtype vec is std_logic_vector(7 downto 0);
	type vec_vec is array (2 downto 0) of vec;
end package;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.project_pkg.all;

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
  signal x, y : std_logic_vector(7 downto 0);   --column and row counters
  signal q1, q2 : unsigned(7 downto 0);  --memory temp array
  
  signal q_out : vec_vec;  --mem output
  --mode
  signal mode : std_logic_vector(1 downto 0);

  --valid bit
  signal valid_bits : std_logic_vector(7 downto 0);

  --convolution table
  signal a, b, c, d, e, f, g, h, i: unsigned(9 downto 0);

  signal dir1, dir2, dir3, dir4, dir_1, dir_2, dir_3 : std_logic_vector(2 downto 0);
  
  signal max1, max2, max3, max4, max_1, max_2, max_3 : unsigned(9 downto 0);
  
  signal add1, add2, add3, add4, add_1 : unsigned(11 downto 0);

  --flag for checking if all pixels of an image are received
  signal end_of_img : std_logic;

  --register for o_valid
  signal output_valid : std_logic;

  --combinational signal for o_edge
  signal output_edge : std_logic;
 
  signal mem_write   : std_logic_vector(2 downto 0);
  
  function "rol" (a : std_logic_vector; n : natural)
	return std_logic_vector
  is
	begin
		return std_logic_vector(unsigned(a) rol n);
   end function;

  function "sll" (a : std_logic_vector; n : natural)
	return std_logic_vector
  is
	begin
		return std_logic_vector(unsigned(a) sll n);
  end function;
    
begin
  --
  debug_num_5 <= X"E";
  debug_num_4 <= X"C";
  debug_num_3 <= X"E";
  debug_num_2 <= X"3";
  debug_num_1 <= X"2";
  debug_num_0 <= X"7";

  debug_led_red <= (others => '0');
  debug_led_grn <= (others => '0');
  
  	MEM_GENERATION: for i in 0 to 2 generate  --generate memory arrays
	mem: entity work.mem(main)
	port map (
		address 	=> x,
		clock   	=> i_clock,
		data  		=> i_pixel,
		wren    	=> mem_write(i),
		q  	 		=> q_out(i)
	);
	end generate;

  process -- process to keep track of system mode
  begin
    wait until rising_edge(i_clock);
    if i_reset = '1' then
      mode <= "01";                     --reset
    elsif end_of_img = '1' or (i_reset = '0' and mode = "01") or (mode = "10" and valid_bits(0) = '0') then
      mode <= "10";                     --idle
    else
      mode <= "11";                     --busy
    end if;
	
	o_mode <= mode;
  end process;

  process -- process to keep track of where in array we are - row and column counters
  begin
    wait until rising_edge(i_clock);
    if i_reset = '1' then
      x <= "00000000";
	  y <= "00000000";
	  end_of_img <= '0';
	  mem_write <="001";
	elsif i_valid = '1' then
		if (end_of_img = '1') then
			end_of_img <= '0';
			y <= "00000000";
		end if;
		x <= std_logic_vector(unsigned(x) + 1);
		if (x = "11111111") then
			mem_write <= "rol" (mem_write,1);
			if (y = "11111111") then
				end_of_img <= '1';
			else
				y <= std_logic_vector(unsigned(y) + 1);
			end if;
		end if;
	end if;
  end process;
  
  	-- mux to determine mapping between actual row count and virtual row count
	process (mem_write,q_out,i_pixel) begin
		case mem_write is
			when "001" =>
				q1 <= unsigned(q_out(1));
				q2 <= unsigned(q_out(2));
			when "010" =>
				q1 <= unsigned(q_out(2));
				q2 <= unsigned(q_out(0));
			when "100" =>
				q1 <= unsigned(q_out(0));
				q2 <= unsigned(q_out(1));
			when others =>
				q1 <= "00000000";
				q2 <= "00000000";
		end case;
	end process;
  
  process -- process for loading data into convolution table
  begin
    wait until rising_edge(i_clock);
    if i_valid = '1' then
      a <= b;
      h <= i;
      g <= f;
      b <= c;
      i <= d;
      f <= e;
      e <= "00" & unsigned(i_pixel);
	  -- load data from temp arrays
	  c <= "00" & q1;
	  d <= "00" & q2;
    else
	  a <= a;
      h <= h;
      g <= g;
      b <= b;
      i <= i;
      f <= f;
      e <= e;
	  c <= c;
	  d <= d;
	end if;
  end process;

	process --pipeline
	begin
	wait until rising_edge(i_clock);
	o_valid <= '0';
	if i_reset = '1' then
		valid_bits <= "00000000";
	else
		valid_bits <= "sll"(valid_bits, 1);
		
		if i_valid = '1' and ((x = "11111111" and unsigned(y) > 2) or (unsigned(y) > 1  and  unsigned(x) > 1)) then
			valid_bits(0) <= '1';
		end if;
		
		if valid_bits(0) = '1' then
			if  (g < b) then
				max1 <= b + a + h;
				--NW
				dir1 <= "100";
				else
				--  (Covers priority)
				max1 <= g + a + h;
				--W
				dir1 <= "001";
			end if;
			add1 <= ("00" & a) + ("00" & h);
		end if;
		
		if valid_bits(1) = '1' then
			if  (a < d) then
				max2 <= d + b + c;
				--NE
				dir2 <= "110";
			else
				max2 <= a + b + c;
				--N
				dir2 <= "010";
			end if;
			add2 <= ("00" & b) + ("00" & c);
		end if;
		
		if valid_bits(2) = '1' then
			if  (c < f) then
				max3 <= f + d + e;
				--SE
				dir3 <= "101";
			else
				max3 <= c + d + e;
				--E
				dir3 <= "000";
			end if;
			add3 <= ("00" & e) + ("00" & d);
		end if;
		
		if valid_bits(3) = '1' then
			if  (e < h) then
				max4 <= h + g + f;
				--SW
				dir4 <= "111";
			else
				max4 <= e + g + f;
				--S
				dir4 <= "011";
			end if;
			add4 <= ("00" & g) + ("00" & f);
		end if;
		
		if valid_bits(4) = '1' then
			if  (max1 < max2) then
				max_1 <= max2;
				dir_1 <= dir2;
			else
				max_1 <= max1;
				dir_1 <= dir1;
			end if;
			add_1 <= add1 + add2;
		end if;
		
		if valid_bits(5) = '1' then
			if  (max3 < max4) then
				max_2 <= max4;
				dir_2 <= dir4;
			else
				max_2 <= max3;
				dir_2 <= dir3;
			end if;
			add_1 <= add_1 + add3;
		end if;
		
		if valid_bits(6) = '1' then
			if  (max_1 < max_2) then
				max_3 <= max_2;
				dir_3 <= dir_2;
			else
				max_3 <= max_1;
				dir_3 <= dir_1;
			end if;
			add_1 <= add_1 + add4;
		end if;
		
		if valid_bits(7) = '1' then
			if ((max_3 & "000") - ((add_1 & '0') + add_1)) > 383 then
				o_edge <= '1';
				o_dir <= dir_3;
			else
				o_edge <= '0';
				o_dir <= "000";
			end if;
		o_valid <=  '1';
		end if;
	end if;
	end process;

  --connecting to output ports
  o_row <= std_logic_vector(y);
  o_valid <= output_valid;
 
end architecture;