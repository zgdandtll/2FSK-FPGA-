module switch(clk,code,dataout,d1,d2);
input clk;
input code;
input d1,d2;
wire [10:0] d1,d2;
output dataout;
reg [10:0]dataout;
always @(negedge clk)
    begin
        case(code)
        1'b1:dataout<=d1;
        1'b0:dataout<=d2;
        endcase
    end
endmodule