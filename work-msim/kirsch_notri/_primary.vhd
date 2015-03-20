library verilog;
use verilog.vl_types.all;
entity kirsch_notri is
    port(
        p_o_valid       : out    vl_logic;
        p_o_edge        : out    vl_logic;
        p_o_dir         : out    vl_logic_vector(2 downto 0);
        p_o_mode        : out    vl_logic_vector(1 downto 0);
        p_o_row         : out    vl_logic_vector(7 downto 0);
        p_i_valid       : in     vl_logic;
        p_i_reset_rtlc1_60_or_15: in     vl_logic_vector(2 downto 2);
        p_i_pixel       : in     vl_logic_vector(7 downto 0);
        p_i_clock       : in     vl_logic;
        p_nrst_int      : in     vl_logic;
        px56            : out    vl_logic
    );
end kirsch_notri;
