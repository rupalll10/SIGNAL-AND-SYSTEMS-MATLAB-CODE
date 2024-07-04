clc;
clear all;
a = input ('enter the sequence 1 --> ')
b = input ('enter the sequence 2 --> ')
[z] = linear_convolution(a,b);
z
stem(z, 'LineWidth', 1)
legend('102165002 Prabhmehar')
% Z is output sequence
% Bedi