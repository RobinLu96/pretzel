library verilog;
use verilog.vl_types.all;
entity modgen_adderblock_3_0 is
    port(
        a0              : in     vl_logic_vector(7 downto 0);
        a1              : in     vl_logic_vector(7 downto 0);
        a2              : in     vl_logic_vector(8 downto 0);
        d               : out    vl_logic_vector(9 downto 0)
    );
end modgen_adderblock_3_0;
