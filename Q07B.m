clc;
clear all;
close all;


Ts_values = [0.01, 0.05, 0.1];
dt_interp = 0.001;
t_cont = 0:dt_interp:1;

function y = sinc_interp(xn, n, t)
    Ts = n(2) - n(1);
    y = zeros(size(t));
    for k = 1:length(n)
        y += xn(k) * sinc((t - n(k)) / Ts);
    end
end


xa = cos(20 * pi * t_cont);  % Para comparacao

figure('Position', [100, 100, 1200, 400]);

for i = 1:length(Ts_values)
    Ts = Ts_values(i);
    n = 0:Ts:1;
    xn = cos(20 * pi * n);

    ya = sinc_interp(xn, n, t_cont);

    subplot(3, 1, i);
    plot(t_cont, ya, 'b', 'LineWidth', 1.5);
    hold on;
    stem(n, xn, 'r', 'filled');
    plot(t_cont, xa, '--k'); % Comparacao com o sinal original
    xlabel('t (s)');
    ylabel('y_a(t)');
    grid on;
    xlim([0 1]);
end

