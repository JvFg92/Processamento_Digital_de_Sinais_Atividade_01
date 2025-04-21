clc;
clear all;
close all;

Ts_values = [0.01, 0.05, 0.1];
dt_interp = 0.001;
t_cont = 0:dt_interp:1;

xa = cos(20 * pi * t_cont);  % Para comparacao

figure('Position', [100, 100, 1200, 400]);

for i = 1:length(Ts_values)
    Ts = Ts_values(i);
    n = 0:Ts:1;
    xn = cos(20 * pi * n);  % Sinal amostrado

    ya_spline = spline(n, xn, t_cont);  % Interpolacao cubica

    subplot(3, 1, i);
    plot(t_cont, ya_spline, 'b', 'LineWidth', 1.5); hold on;
    stem(n, xn, 'r', 'filled');
    plot(t_cont, xa, '--k');  % Para comparacao
    xlabel('t (s)');
    ylabel('y_a(t)');
    grid on;
    xlim([0 1]);
end

