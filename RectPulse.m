%%% Rectangular Pulse Generation with width=2
t = -5:0.0001:5;             % independent varible decleration
ut1= (t>=-1);                % Advanced unit step signal generation u(t+1)
ut2= (t>=1);                 % Delayed unit ramp signal generation u(t-1)
rect= ut1-ut2;               % Rectangular signal genégation rect (t)
plot (t, rect);              % Plot of unit ramp signal
xlabel ('Time (t) -->');
ylabel ('Amplitude of rect (t) -->');
title ('Rectangular Pulse Signal in continuous-time domain');
legend ('102165002 Prabhmehar');
figure
%%% Rectangular Pulse Generation with width=2
n= -5:1:5;                   % Advanced unit step signal generation u(n+1)
un1 = (n>=-1);               % Delayed unit ramp signal generation u(n-1)
un2= (n>1);                  % Rectangular signal generation rect (n)
rect= un1 - un2;             % Plot of unit ramp signal
stem (n, rect,'r');          % Plot of unit ramp signal
xlabel ('Sample number (n) -->');
ylabel ('Amplitude of rect -->');
title ('Rectangular Pulse Signal in discrete-time domain');
legend ('102165002 Prabhmehar');