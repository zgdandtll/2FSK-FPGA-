module jietiao_tb;
reg clk=0;
wire dout;
wire [10:0] cnt;
wire [10:0]data_module;
reg rst_n=1;
wire  code;
always #2 clk=~clk;
jietiao u1(.clk(clk),.rst_n(rst_n),.cnt(cnt),.dout(dout),.data_module(data_module),.code(code));
endmodule