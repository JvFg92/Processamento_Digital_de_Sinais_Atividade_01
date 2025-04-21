clc;
clear all;
close all;
graphics_toolkit("gnuplot");

% Frequências entre -pi e pi
w = linspace(-pi, pi, 1024);

% (a) x(n) = (0.6)^|n| [u(n+10) - u(n-11)]
n1 = -10:10;
x1 = (0.6).^abs(n1);

% Calcular DTFT
X1 = dtft(x1, n1, w);

% Plot
figure;
set(gcf, 'Position', [100, 100, 1920, 1080]);

subplot(2,1,1);
plot(w, abs(X1), 'LineWidth', 2);
xlabel('\omega (rad/amostra)');
ylabel('|X(\omega)|');
title('Magnitude da DTFT - Caso (a)');
grid on;

subplot(2,1,2);
plot(w, angle(X1), 'LineWidth', 2);
xlabel('\omega (rad/amostra)');
ylabel('Fase de X(\omega)');
axis([-1,1,-180,180]);
title('Fase da DTFT - Caso (a)');
grid on;

