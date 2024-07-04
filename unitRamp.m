clc
clear all
t = -1 : 0.1 : 1;
for i=1: length (t) ;
    if (t (1, i) >=0)
        u(1,i) = t(1,i).*1;
    else
        u (1,i) =0
    end
end
stem (t,u)
grid
title ('Unit Ramp Signal in discrete-time domain')
xlabel ('<---- t ---->')
ylabel ('<---- R ---->')
legend ('102165002 Prabhmehar');
figure
plot (t, u) 
grid
title ('Unit Ramp Signal in continuous-time domain')
xlabel ('<---- t ---->')
ylabel ('<---- R ---->')
legend ('102165002 Prabhmehar')