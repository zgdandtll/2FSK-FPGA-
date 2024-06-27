module jietiao(clk,rst_n,count,cnt,dout,data_module,code);
input clk,rst_n;
 
wire code;
output dout;
output count,cnt,data_module;//count记512(相当于记零点）的个数，cnt记脉冲的个数，shuchu是引的调制的输出
output code;
 
reg [10:0] buffer;
wire[10:0]data_module;
reg [10:0] cnt=0;
 
reg dout=0;      //输出的为原基带信号  0  1
integer count=0;
 
//实例化部分
  
wire clk1;
 
always @(negedge clk)
	begin
	buffer<=data_module;
	cnt<=cnt+1;
	if(buffer==11'b01000000000)
		count<=count+1;
	if(cnt==2047)
		begin
			if(count<=6)
				dout <= ~code;
			else
				dout <= ~code;
			count<=0;
		 end
	end
fsk_module u1(.clk(clk),.rst_n(rst_n),.data_module(data_module),.clk1(clk1),.code(code));
endmodule