`timescale 1ns / 1ps

module tb_tiaozhi;

// Inputs
reg clk;
reg enable;

// Outputs
wire shuchu;
wire clk1;

// 实例化被测模块（Unit Under Test）
tiaozhi uut (
    .clk(clk), 
    .enable(enable), 
    .shuchu(shuchu), 
    .clk1(clk1)
);

initial begin
    // 初始化输入
    clk = 0;
    enable = 0;
    
    // 在仿真开始后5ns使能有效
    #5 enable = 1;
    
    // 在仿真开始后100ns停止仿真
    #100 $finish;
end

// 生成时钟信号
always #10 clk = ~clk;

// 监控输出
initial begin
    $monitor("时间=%t, clk=%b, enable=%b, shuchu=%b, clk1=%b", $time, clk, enable, shuchu, clk1);
end

endmodule