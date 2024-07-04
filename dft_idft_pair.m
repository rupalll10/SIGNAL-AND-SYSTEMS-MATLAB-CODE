function [XF, XT] = bedi_dft_idft_pair(x, N)
L = length (x);
if L<=N
    xz= [x, zeros(1, N-L)];
end
XF = zeros(1, N);
for k= 0 : N-1
    for n=0 : (N-1)
        XF (1, k+1) = XF (1, k+1) + xz (1, n+1) *exp((-1*1i*2*pi*k*n) / N);
    end
end
stem (0:N-1, abs (XF) , 'b', 'LineWidth',1);
grid
figure
stem (0:N-1, angle (XF), 'r', 'LineWidth',1);
grid