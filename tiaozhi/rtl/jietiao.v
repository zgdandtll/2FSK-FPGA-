module jietiao(clk,enable,count,cnt,dout,shuchu,code);
input clk,enable;
 
wire code;
output dout;
output count,cnt,shuchu;//count记512(相当于记零点）的个数，cnt记脉冲的个数，shuchu是引的调制的输出
output code;
 
reg [10:0] buffer;
wire[10:0]shuchu;
reg [10:0] cnt=0;
 
reg dout=0;      //输出的为原基带信号  0  1
integer count=0;
 
//实例化部分
  
wire clk1;
 
always @(negedge clk)
	begin
	buffer<=shuchu;
	cnt<=cnt+1;
	if(buffer==11'b01000000000)
		count<=count+1;
	if(cnt==2047)
		begin
			if(count<=6)
				dout<=1;
			else
				dout<=0;
			count<=0;
		 end
	end
tiaozhi u1(.clk(clk),.enable(enable),.shuchu(shuchu),.clk1(clk1),.code(code));
endmodule