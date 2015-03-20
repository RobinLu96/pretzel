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
  signal wren_m1, wren_m2, wren_m3 : std_logic;  --write enables
  signal x, y : unsigned(7 downto 0);   --column and row counters
  signal t : unsigned(1 downto 0);      --memory counter
  signal q1, q2, q3 : std_logic_vector(7 downto 0);  --memory output

  --mode
  signal mode : std_logic_vector(1 downto 0);

  --valid bit
  signal v : std_logic_vector(7 downto 0);

  --convolution table
  signal a, b, c, d, e, f, g, h, i: std_logic_vector(7 downto 0);

  --We need 4 adders, 4 subtractors

  --Pipeline1
  signal r1, r2, r3, r4 : std_logic_vector(7 downto 0);

  --Pipeline2
  signal r5 : std_logic_vector(7 downto 0);
  signal r6, r7 : std_logic_vector(8 downto 0);
  signal r8 : std_logic_vector(11 downto 0);
  signal r9, r10 : std_logic_vector(9 downto 0);

  --Pipeline3
  signal r11, r12 : std_logic_vector(9 downto 0);
  signal r13 : std_logic_vector(11 downto 0);
  signal r14 : std_logic_vector(12 downto 0);
  signal r15 : std_logic_vector(13 downto 0);

  --stage1 dir
  signal dir1, dir2, dir3, dir4 : std_logic_vector(2 downto 0);

  --stage2 dir
  signal dir5, dir6 : std_logic_vector(2 downto 0);

  --stage3 dir
  signal dir7 : std_logic_vector(2 downto 0);

  --maxes results
  signal max1 : std_logic_vector(7 downto 0);
  signal max2 : std_logic_vector(9 downto 0);
  signal max3 : std_logic_vector(12 downto 0);

  --adders
  signal add1 : std_logic_vector(8 downto 0);
  signal add2 : std_logic_vector(9 downto 0);
  signal add3 : std_logic_vector(11 downto 0);
  signal add4 : std_logic_vector(13 downto 0);

  --subtractors
  signal sub1 : signed(8 downto 0);
  signal sub2, sub3 : signed(10 downto 0);
  signal sub4 : signed(14 downto 0);

  --flag for checking if all pixels of an image are received
  signal end_of_img : std_logic;

  --register for o_valid
  signal output_valid : std_logic;

  --register for o_edge
  signal output_edge : std_logic;
    
begin  

  debug_num_5 <= X"E";
  debug_num_4 <= X"C";
  debug_num_3 <= X"E";
  debug_num_2 <= X"3";
  debug_num_1 <= X"2";
  debug_num_0 <= X"7";

  debug_led_red <= (others => '0');
  debug_led_grn <= (others => '0');
  
  m1 : entity work.mem
    port map (
      address => std_logic_vector(x),
      clock   => i_clock,
      data    => i_pixel,
      wren    => wren_m1,
      q       => q1);

  m2 : entity work.mem
    port map (
      address => std_logic_vector(x),
      clock   => i_clock,
      data    => i_pixel,
      wren    => wren_m2,
      q       => q2);

  m3 : entity work.mem
    port map (
      address => std_logic_vector(x),
      clock   => i_clock,
      data    => i_pixel,
      wren    => wren_m3,
      q       => q3);

  wren_m1 <= i_valid when t = 0
             else '0';
  wren_m2 <= i_valid when t = 1
             else '0';
  wren_m3 <= i_valid when t = 2
             else '0';

  --valid bit
  for_v: for i in 1 to v'high generate
    process
    begin
      wait until rising_edge(i_clock);
      if i_reset = '1' then
        v(0) <= '0';
      else
        v(0) <= i_valid;
      end if;
      v(i) <= v(i-1);
    end process;
  end generate;

  --at v(2) check if all pixels of an image are received
  process
  begin
    wait until rising_edge(i_clock);
    if v(2) = '1' then
      if x = 255 and y = 255 then
        end_of_img <= '1';
      else
        end_of_img <= '0';
      end if;
    end if;
  end process;

  process                               --mode
  begin
    wait until rising_edge(i_clock);
    if i_reset = '1' then
      mode <= "01";
    elsif end_of_img = '1' or (i_reset = '0' and mode = "01") or (mode = "10" and v(0) = '0') then
      mode <= "10";
    else
      mode <= "11";
    end if;
  end process;
  
  process
  begin  -- x
    wait until rising_edge(i_clock);
    if i_reset = '1' then
      x <= to_unsigned(0,8);
    elsif v(0) = '1' and end_of_img = '1' then
      x <= to_unsigned(0,8);
    elsif v(2) = '1' then
      if y < 255 then 
        x <= x + 1;
      elsif x < 255 then
        x <= x + 1;
      end if;
    end if;
    
  end process;

  process
  begin  -- y
    wait until rising_edge(i_clock);
    if i_reset = '1' then
      y <= to_unsigned(0,8);
    elsif v(0) = '1' and end_of_img = '1' then
      if x = 255 and y = 255 then
        y <= to_unsigned(0,8);
      end if;
    elsif v(2) = '1' and x = 255 and y < 255 then
      y <= y + 1;
    end if;
  end process;
  
  process
  begin  -- t
    wait until rising_edge(i_clock);
    if i_reset = '1' then
      t <= to_unsigned(0,2);
    elsif v(2) = '1' and x = 255 then
      t <= (t+1) mod 3;
    end if;
  end process;

  --loading data into convoluation table
  process
  begin
    wait until rising_edge(i_clock);
    if i_valid = '1' then

      a <= b;
      h <= i;
      g <= f;
      b <= c;
      i <= d;
      f <= e;
      e <= i_pixel;
      
      if t = 0 then
        c <= q2;
        d <= q3;
      elsif t = 1 then
        c <= q3;
        d <= q1;
      elsif t = 2 then
        c <= q1;
        d <= q2;
      end if;
      
    end if;
  end process;

  process                               --stage1 dir
  begin
    wait until rising_edge(i_clock);
    if sub1(8) = '0' then
      if v(1) = '1' then
        dir1 <= "010";                  --N
      elsif v(2) = '1' then
        dir2 <= "000";                  --E
      elsif v(3) = '1' then
        dir3 <= "011";                  --S
      elsif v(4) = '1' then
        dir4 <= "001";                  --W
      end if;
    else
      if v(1) = '1' then
        dir1 <= "110";                  --NE
      elsif v(2) = '1' then
        dir2 <= "101";                  --SE
      elsif v(3) = '1' then
        dir3 <= "111";                  --SW
      elsif v(4) = '1' then
        dir4 <= "100";                  --NW
      end if;
    end if;
  end process;

  process                               --stage2 dir
  begin
    wait until rising_edge(i_clock);
    if sub2(10) = '0' then
      if v(4) = '1' then
        dir5 <= dir1;
      elsif v(5) = '1' then
        dir6 <= dir5;
      end if;
    else
      if v(4) = '1' then
        dir5 <= dir2;
      elsif v(5) = '1' then
        dir6 <= dir3;
      end if;
    end if;
  end process;

  process                               --stage3 dir
  begin
    wait until rising_edge(i_clock);
    if sub3(10) = '0' then
      if v(6) = '1' then
        dir7 <= dir4;
      end if;
    else
      if v(6) <= '1' then
        dir7 <= dir6;
      end if;
    end if;
  end process;

  process                               --regsters
  begin
    wait until rising_edge(i_clock);
    r5 <= max1;
    r6 <= add1;
    r7 <= add1;
    r10 <= add2;
    r11 <= add2;
    r12 <= max2;
    r13 <= add3;
    r14 <= max3;
    r15 <= add4;

    if v(2) = '1' then
      r8 <= std_logic_vector("000"&unsigned(r6));
    else
      r8 <= add3;
    end if;
    
    if v(0) = '1' then
      --stage1
      r1 <= a;
      r2 <= d;
      r3 <= c;
      r4 <= b;
    elsif v(1) = '1' then
      --stage1
      r1 <= c;
      r2 <= f;
      r3 <= e;
      r4 <= d;
    elsif v(2) = '1' then
      --stage1
      r1 <= e;
      r2 <= h;
      r3 <= f;
      r4 <= g;
      --stage2
      r9 <= add2;
    elsif v(3) = '1' then
      --stage1
      r1 <= g;
      r2 <= b;
      r3 <= a;
      r4 <= h;
    elsif v(4) = '1' then
      --stage2
      r9 <= max2;
    end if;
  end process;

  --check output_edge in v(7) to see if an edge is detected
  process
  begin
    wait until rising_edge(i_clock);
    if v(7) = '1' then
      if sub4(14) = '0' then
        output_edge <= ((sub4(7) and sub4(8)) or (sub4(13) or sub4(12) or sub4(11) or sub4(10) or sub4(9)));
      end if;
    else
      output_edge <= '0';
    end if;
  end process;

  --set output_valid to 1 for 1 clock cycle at v(7) to output edge and dir data
  process
  begin
    wait until rising_edge(i_clock);
    if v(7) = '1' then
      output_valid <= '1';
    else
      output_valid <= '0';
    end if;
  end process;

  --max1
  sub1 <= signed("0"&unsigned(r1)) - signed("0"&unsigned(r2));
  max1 <= r1 when (sub1(8)='0')
         else r2;
  
  --max2
  sub2 <= signed("0"&unsigned(r9)) - signed("0"&unsigned(r10));
  max2 <= r9 when (sub2(10)='0')
          else r10;

  --max3
  sub3 <= signed("0"&unsigned(r11)) - signed("0"&unsigned(r12));
  max3 <= std_logic_vector(unsigned(r11)&"000") when (sub3(10)='0')
          else std_logic_vector(unsigned(r12)&"000");

  --add1 (9-bit adder)
  add1 <= std_logic_vector("0"&unsigned(r3) + unsigned(r4));

  --add2 (10-bit adder)
  add2 <= std_logic_vector("00"&unsigned(r5) + unsigned(r6));

  --add3 (12-bit adder)
  add3 <= std_logic_vector(unsigned(r7) + unsigned(r8));

  --add4 (14-bit adder)
  add4 <= std_logic_vector("00"&unsigned(r13) + unsigned(unsigned(r13)&"0"));

  --sub4 (14-bit subtractor)
  sub4 <= signed("00"&unsigned(r14)) - signed("0"&unsigned(r15));

  --connecting to output ports
  o_row <= std_logic_vector(y);
  o_valid <= output_valid;
  o_edge <= output_edge;
  o_dir <= dir7 when output_edge = '1'
           else "000";
  o_mode <=mode;
 
end architecture;
