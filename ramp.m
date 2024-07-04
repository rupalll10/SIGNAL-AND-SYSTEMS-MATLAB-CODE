function [ u ] = ramp_prabhmehar (n1, n2)
t = n1 : 1 : n2;
for i=1: length (t);
    if (t (1, i) >= 0)
        u (1,i) = t(1,i).*1;
    else
        u (1,i)=0;
    end
end
stem (t,u)
grid
title ('\bf Ramp-signal in the Discrete-time domain'); 
xlabel ('\bf <--- Sample number (n) --->');
ylabel ('\bf <----- Amplitude -----> ');
legend ('102165002 Prabhmehar');
figure
plot (t, u) 
grid
title ('\bf Ramp-signal in the Continuous-time domain'); 
xlabel ('\bf <--- Time (t sec.) --->');
ylabel ('\bf <----- Amplitude ----->');
legend ('102165002 Prabhmehar');
end