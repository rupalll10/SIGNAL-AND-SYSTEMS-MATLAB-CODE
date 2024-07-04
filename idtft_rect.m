function [x] = idtft_rect_prabhmehar(X, n0)
% X: DTFT coefficients
% n0: range of time axis

n = -n0:n0;             % Define time axis

w = -pi:0.1:pi;         % Define frequency axis

x = zeros(size(n));     % Calculate IDTFT using numerical summation
for i = 1:length(n)
x(i) = (1/(2*pi)) * sum(X .* exp(1i*w*n(i)));
end

subplot(2, 1, 1);       % Plot magnitude of IDTFT
stem(n, abs(x), 'LineWidth',1);
xlabel('Time (n)');
ylabel('Amplitude');
title('Inverse Discrete-Time Fourier Transform of DTFT Coefficients');
legend('102115119 Aryaman');

subplot(2, 1, 2);       % Plot phase of IDTFT
stem(n, angle(x), 'LineWidth',1);
xlabel('Time (n)');
ylabel('Phase (radians)');
title('Phase of Inverse Discrete-Time Fourier Transform');
legend('102115119 Aryaman');
end