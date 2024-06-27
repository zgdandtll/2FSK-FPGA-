module fsk_module(clk, rst_n, data_module, clk1, code); // 添加 code 到端口列表中
    input clk, rst_n;
    output data_module, clk1;
    output code; // 添加 code 为输出

    wire [7:0] dt;
    reg clk1 = 0;

    wire [10:0] dout1, dout2;
    wire code_internal; // 内部使用的 code 信号
    wire [10:0] data_module;
    reg [9:0] sum1 = 0;

    always @(negedge clk) begin
        sum1 <= sum1 + 1; // 计数，看什么时候下一个周期，用来控制下一个码元的出现
        if (sum1 == 10'd1023)
            clk1 = ~clk1;
    end

    assign code = code_internal; // 将内部 code 信号赋值给输出端口

    fangwen u1(.clk(clk), .dout1(dout1), .dout2(dout2));
     DDS u2(.clk(clk1),.rst_n(rst_n),.code(code_internal),.dt(dt));
    switch u3(.clk(clk), .code1(code_internal), .dataout(data_module), .d1(dout1), .d2(dout2));
endmodule
