module switch(clk,code1,dataout,d1,d2);
input clk;
input code1;
input d1,d2;
wire [10:0] d1,d2;
output dataout;
reg [10:0]dataout;
always @(negedge clk)
    begin
        case(code1)
        1'b1:dataout<=d1;
        1'b0:dataout<=d2;
		 default: dataout = 11'b0; // 添加默认分支以避免未定义的情况
        endcase
    end
endmodule