clc;clear;close all;

% 创建一个socket
t_client=tcpip('192.168.0.116',8000,'NetworkRole','client');

% 尝试连接服务器，相当于connect，发起三次握手
fopen(t_client);

txt_send = 'jiwang';
pause(1);
% 写
fprintf(t_client,txt_send);
pause(1);
% 读
data = fscanf(t_client)

fclose(t_client);
