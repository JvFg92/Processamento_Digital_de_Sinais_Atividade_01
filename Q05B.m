clc;
clear all;
close all;
graphics_toolkit("gnuplot");

% (b) x(n) = n * (0.9)^n * [u(n) - u(n - 21)]
w = linspace(-pi, pi, 1024);

n2 = 0:20;
x2 = n2 .* (0.9).^n2;

X2 = dtft(x2, n2, w );

% Plot
figure;
set(gcf, 'Position', [100, 100, 1920, 1080]);

subplot(2,1,1);
plot(w, abs(X2), 'LineWidth', 2);
xlabel('\omega (rad/amostra)');
ylabel('|X(\omega)|');
title('Magnitude da DTFT - Caso (b)');
grid on;

subplot(2,1,2);
plot(w, angle(X2), 'LineWidth', 2);
xlabel('\omega (rad/amostra)');
ylabel('Fase de X(\omega)');
title('Fase da DTFT - Caso (b)');
grid on;

