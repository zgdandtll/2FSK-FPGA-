clc;
clear;
depth =1024; %存储器的深度
widths = 12; %数据宽度为12位
N = 0 :1023; %把一个周期的正弦信号分为256份
s =sin(2*pi *N/256); %计算0 ~2*pi之间的sin值
qqq = fopen('sine.mif','wt') %使用fopen函数生成sine.mif
fprintf(qqq, 'depth = %d;\n',depth); %使用fprintf打印depth = 1027;
fprintf(qqq, 'width = %d;\n',widths); %使用fprintf打印width = 12;
fprintf(qqq, 'address_radix = UNS;\n'); %使用fprintf打印address_radix = UNS; 表示无符号显示数据
fprintf(qqq,'data_radix = UNS;\n'); %使用fprintf打印data_radix = UNS; 表示无符号显示数据
fprintf(qqq,'content begin\n'); %使用fprintf打印content begin
for(x = 1 : depth) %产生正弦数据
fprintf(qqq,'%d:%d;\n',x-1,round(128*sin(2*pi*(x-1)/256)+128)); 
end
fprintf(qqq, 'end;'); %使用fprintf打印end;
fclose(qqq);