library verilog;
use verilog.vl_types.all;
entity inc_8_0 is
    port(
        cin             : in     vl_logic;
        a               : in     vl_logic_vector(7 downto 0);
        d               : out    vl_logic_vector(7 downto 0);
        cout            : out    vl_logic
    );
end inc_8_0;
