module fangwen(clk,dout1,dout2);
 
input clk;
output dout1,dout2;
 
wire [10:0] dout1,dout2;
reg [9:0] addr1 =0,addr2 =0;
 
 
rom1 rom1(
			.address(addr1),
			.clock(clk),
			.q(dout1)
			);
 
rom2 rom2(
			.address(addr2),
			.clock(clk),
			.q(dout2)
			);
 
always @(negedge clk)
	begin
		addr1<=addr1+1;
	end
 
always @(negedge clk)
	begin
		addr2<=addr2+2;
	end
endmodule