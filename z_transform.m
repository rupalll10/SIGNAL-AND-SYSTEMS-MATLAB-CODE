b = [1 0];
a = [1 -0.9];

% Plotting the poles and zeros
figure
zplane(b,a);
xlabel('\bf Re[z]--->');
ylabel('\bf Im[z]--->');
title('[z-transform of h(n)] = H[z]=System-function')
legend('102165002 Prabhmehar')
grid on

% Plotting the magnitude response
figure
[H,w] = freqz(b,a,100);
Mag_H = abs(H);
plot(w, Mag_H, 'r', 'LineWidth', 1.5)
title('Magnitude Response (Spectrum)')
legend('102165002 Prabhmehar')
xlabel('\bf \omega--->')
ylabel('\bf |H|')
grid on

% Plotting the phase response
figure
Pha_H = angle(H);
plot(w, Pha_H, 'b', 'LineWidth', 1.5)
xlabel('\bf \omega--->')
ylabel('\bf angle(H)')
title('Phase Response (Spectrum)')
legend('102165002 Prabhmehar')
grid on
