module DDS(clk,enable,code,dt);   
input clk,enable;
output code,dt;
reg code=0;
reg [7:0] dt = 8'b1010_1010,cnt=0;    //设置信源的初始状态
integer i=8;
always @(negedge clk)
    begin
        if(enable)
            begin
            if(i!=1)
            begin
            code<=dt[i-1];
            i=i-1;
            end
            else 
                begin
                code<= dt[0];   
                dt  <= dt<<1;
                dt[0]<=((dt[7]^dt[3])^dt[2])^dt[1];
                i<=8;
                cnt<=cnt+1'b1;
                end
            end
            else
            begin
            code<=code;
            i<=8;
            end
    end
 
endmodule