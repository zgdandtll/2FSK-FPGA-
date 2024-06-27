clc;
clear;
depth =1024; %�洢�������
widths = 12; %���ݿ��Ϊ12λ
N = 0 :1023; %��һ�����ڵ������źŷ�Ϊ256��
s =sin(2*pi *N/256); %����0 ~2*pi֮���sinֵ
qqq = fopen('sine.mif','wt') %ʹ��fopen��������sine.mif
fprintf(qqq, 'depth = %d;\n',depth); %ʹ��fprintf��ӡdepth = 1027;
fprintf(qqq, 'width = %d;\n',widths); %ʹ��fprintf��ӡwidth = 12;
fprintf(qqq, 'address_radix = UNS;\n'); %ʹ��fprintf��ӡaddress_radix = UNS; ��ʾ�޷�����ʾ����
fprintf(qqq,'data_radix = UNS;\n'); %ʹ��fprintf��ӡdata_radix = UNS; ��ʾ�޷�����ʾ����
fprintf(qqq,'content begin\n'); %ʹ��fprintf��ӡcontent begin
for(x = 1 : depth) %������������
fprintf(qqq,'%d:%d;\n',x-1,round(128*sin(2*pi*(x-1)/256)+128)); 
end
fprintf(qqq, 'end;'); %ʹ��fprintf��ӡend;
fclose(qqq);