library verilog;
use verilog.vl_types.all;
entity fangwen is
    port(
        clk             : in     vl_logic;
        dout1           : out    vl_logic_vector(10 downto 0);
        dout2           : out    vl_logic_vector(10 downto 0)
    );
end fangwen;
