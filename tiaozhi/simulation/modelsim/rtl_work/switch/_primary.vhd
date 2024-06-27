library verilog;
use verilog.vl_types.all;
entity switch is
    port(
        clk             : in     vl_logic;
        code1           : in     vl_logic;
        dataout         : out    vl_logic_vector(10 downto 0);
        d1              : in     vl_logic_vector(10 downto 0);
        d2              : in     vl_logic_vector(10 downto 0)
    );
end switch;
