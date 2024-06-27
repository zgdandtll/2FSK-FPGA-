library verilog;
use verilog.vl_types.all;
entity rom1 is
    port(
        address         : in     vl_logic_vector(9 downto 0);
        clock           : in     vl_logic;
        q               : out    vl_logic_vector(11 downto 0)
    );
end rom1;
