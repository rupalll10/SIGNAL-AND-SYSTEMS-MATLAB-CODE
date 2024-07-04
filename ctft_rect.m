function [w] = ctft_rect_prabhmehar(n0, n1)
% n0: range of time axis
% n1: half-duration of the rectangular pulse

t = -n0:0.001:n0;           % Define time axis

p = (t >= -n1) & (t <= n1); % Define rectangular pulse signal

subplot(2, 1, 1);           % Plot rectangular pulse signal
plot(t, p, 'LineWidth',1);
xlabel('Time');
ylabel('Amplitude');
title('Rectangular Pulse Signal');
legend('102165002 Prabhmehar');

w = -8*pi:0.01:8*pi;        % Calculate CTFT using numerical integration
m = zeros(size(w));
for i = 1:length(w)
    m(i) = trapz(t, p.*exp(-1i*w(i)*t));
end

subplot(2, 1, 2);           % Plot magnitude of CTFT
plot(w, abs(m), 'LineWidth',1);
xlabel('Frequency');
ylabel('Magnitude');
title('Continuous-Time Fourier Transform of Rectangular Pulse Signal');
legend('102165002 Prabhmehar')
end