function [ u ] = delayed_signal(d)
t = -20:0.001:20;
rtd = (t>=d).* (t-d);
plot(t, rtd);
grid;
xlabel('Time (t) -->');
ylabel('Amplitude of r (t-d) -->');
title('Delayed Ramp Signal Function');
legend('102165002 Prabhmehar');
u = rtd;
end