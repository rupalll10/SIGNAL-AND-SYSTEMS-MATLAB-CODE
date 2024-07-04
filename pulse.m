function [x, n] = pulse_prabhmehar (no, n1, n2)
% no is the desired delay
% n1 is the starting sample point
% n2 is the ending sample point
n=[n1:n2];
x= [ (n-no) == 0];
stem (n, x, 'r')
grid
% Unit-impulse signal in the discrete-time domain
title('Unit-impulse signal in the discrete-time domain (time-shifted version) ')
xlabel ('\bf <--- Sample-number (n) -->')
ylabel ('\bf Amplitude --->')
legend ('102165002 Prabhmehar')
% Prabhmehar Bedi