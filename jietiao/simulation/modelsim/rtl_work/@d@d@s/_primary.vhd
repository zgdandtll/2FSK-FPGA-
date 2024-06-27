library verilog;
use verilog.vl_types.all;
entity DDS is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        code            : out    vl_logic;
        dt              : out    vl_logic_vector(7 downto 0)
    );
end DDS;
