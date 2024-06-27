library verilog;
use verilog.vl_types.all;
entity tiaozhi is
    port(
        clk             : in     vl_logic;
        enable          : in     vl_logic;
        shuchu          : out    vl_logic_vector(10 downto 0);
        clk1            : out    vl_logic
    );
end tiaozhi;
