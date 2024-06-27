`timescale 1ns/1ps

module fangwen_tb;

    // 输入输出信号声明
    reg clk;
    wire [10:0] dout1, dout2;

    // 实例化被测试模块 fangwen
    fangwen uut (
        .clk(clk),
        .dout1(dout1),
        .dout2(dout2)
    );

    // 产生时钟信号
    initial begin
        clk = 0;
        forever #10 clk = ~clk; // 假设时钟周期为10个时间单位
    end

    // 测试过程
    initial begin
        // 初始化
        $monitor("Time: %0t | dout1: %h | dout2: %h", $time, dout1, dout2);

        // 模拟信号改变
        #100; // 延时100个时间单位

        // 结束仿真
        $finish;
    end

endmodule
