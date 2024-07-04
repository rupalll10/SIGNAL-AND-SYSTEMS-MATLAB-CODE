%%%Decompose signal x[n]= u[n] - u[n-10] into even and odd parts
n = -20 : 1 : 20            % independent varible decleration
un = (n >= 0);              % Unit step generation u 👎
und = (n >= 10);            % DelayedUnit step generation (u-10)
xn = un - und;              % x (n) generation
xn_f = fliplr (xn) ;        % x (-n) genetation
xen = (xn + xn_f) /2;       % Even part
xon = (xn - xn_f) /2;       %Odd part
subplot (1, 2, 1);
stem (n, xen) ;             % Plot of even part 91gnal
xlabel ('Time (n) ---> ');
ylabel ('Amplitude of x_e (n) ---> ');
title ('Even Part');
legend('102165002 Prabhmehar');
subplot (1, 2, 2);
stem (n, xon) ;             %Plot of odd part signal
xlabel ('Time (n) ---> ');
ylabel ('Amplitude of x_o (n) ---> ');
title ('Odd Part');
legend('102165002 Prabhmehar');