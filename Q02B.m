clc;
clear all;
close all;

n = -50:50;
x = sin(0.125 * pi * n);
[y, m] = dnsample(x, n, 4);

% Plot
figure;
subplot(2,1,1);
stem(n, x, 'filled');
title('x(n) = sin(0.125πn)');
xlabel('n'); ylabel('x(n)');
grid on;

subplot(2,1,2);
stem(m, y, 'filled');
title('y(n) = x(n) dizimado por M = 4');
xlabel('n'); ylabel('y(n)');
grid on;

