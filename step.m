function [x, n] = step_prabhmehar (no, n1, n2)
% no is the desired delay
% n1 is the starting sample number
% n2 is the ending sample number
n = [n1:n2]
x = [ (n-no) >= 0];
stem (n,x,'r')
grid
% Unit-step function/signal in the discrete-time domain
title ('Unit-step signal in the discrete-time domain')
xlabel ('\bf <- - - Sample-number (n) --->')
ylabel ('\bf Amplitude --->')
legend ('102165002 Prabhmehar')
% Prabhmehar