module tiaozhi(clk,enable,shuchu,clk1);//顶层
 
input clk,enable;
output shuchu,clk1;
 
wire [7:0] dt;
reg clk1=0;
 
wire [10:0] dout1,dout2;
wire code;
wire [10:0] shuchu;
reg [9:0] sum1=0;
 
always @(negedge clk)
begin
sum1<=sum1+1;     //计数，看什么时候下一个周期，用来控制下一个码元的出现
if(sum1==10'd1023)
	clk1=~clk1;
end
fangwen u1(.clk(clk),.dout1(dout1),.dout2(dout2));
DDS u2(.clk(clk1),.enable(enable),.code(code),.dt(dt)); 
switch u3(.clk(clk),.code(code),.dataout(shuchu),.d1(dout1),.d2(dout2));
endmodule
