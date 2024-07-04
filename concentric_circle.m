function [x,y] = prabhmehar(r)
theta = linspace (0, 2 * pi, 100);
x = r * cos(theta);
y = r * sin(theta);
a = (r+1) * sin(theta);
b = (r+1) * cos(theta);
plot (x, y, a, b)
axis ('equal');
xlabel ('x')
ylabel ('y')
title ('Circle of Radius 2 and 1 ')
legend('102165002 Prabhmehar')