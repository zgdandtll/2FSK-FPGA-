module DDS(clk, enable, code, dt);
    input clk, enable;
    output reg code = 0;
    output reg [7:0] dt = 8'b1010_1010;
    reg [3:0] i = 7; // i的初始值改为7，因为数组索引从0开始
    always @(negedge clk) begin
        if (enable) begin
            code <= dt[i]; // 直接使用i索引，与数组索引保持一致
            if (i != 0) begin
                // 不是序列的最后一个元素，只需要i自减
                i = i - 1;
            end else begin
                // 当索引i到达0，表示已经到达序列末尾，此时进行循环移位
                dt = {dt[6:0], ((dt[7] ^ dt[3]) ^ dt[2]) ^ dt[1]}; // 更新dt[0]并进行左移操作
                i = 7; // 重置索引到序列的开头
            end
        end
        // 当enable为0时，不需要对code进行额外的操作，因为它将保持最后的值不变
    end
endmodule