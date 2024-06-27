library verilog;
use verilog.vl_types.all;
entity jietiao is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        count           : out    integer;
        cnt             : out    vl_logic_vector(10 downto 0);
        dout            : out    vl_logic;
        data_module     : out    vl_logic_vector(10 downto 0);
        code            : out    vl_logic
    );
end jietiao;
