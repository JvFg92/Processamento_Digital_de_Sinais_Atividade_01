clc;
clear all;
close all;

% Coeficientes do sistema
b = [1 0 1 0 1 0 1];
a = [1 0 -0.81 0 -0.81^2 0 -0.81^3];

% Frequências de 0 a pi (por padrão usa radianos)
w = linspace(0, pi, 512);

% Calcula a resposta em frequência
H = freqresp(b, a, w);

% Plota a magnitude e a fase
figure;
subplot(2,1,1);
plot(w, abs(H));
ylabel('|H(e^{j\omega})|');
title('Magnitude da Resposta em Frequência');
grid on;

subplot(2,1,2);
plot(w, angle(H));
ylabel('Fase de H(e^{j\omega})');
title('Fase da Resposta em Frequência');
grid on;

