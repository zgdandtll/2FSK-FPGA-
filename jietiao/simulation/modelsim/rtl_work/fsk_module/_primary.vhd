library verilog;
use verilog.vl_types.all;
entity fsk_module is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        data_module     : out    vl_logic_vector(10 downto 0);
        clk1            : out    vl_logic;
        code            : out    vl_logic
    );
end fsk_module;
