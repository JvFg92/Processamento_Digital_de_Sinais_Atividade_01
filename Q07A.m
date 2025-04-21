clc;
clear all;
close all;

% Definindo os intervalos de amostragem
Ts_values = [0.01, 0.05, 0.1];

% Cria uma figura para os subplots
figure('Position', [100, 100, 1000, 300]);

for i = 1:length(Ts_values)
    Ts = Ts_values(i);      % intervalo de amostragem
    n = 0:Ts:1;             % vetor de tempo discreto
    xn = cos(20 * pi * n);  % sinal amostrado

    subplot(3, 1, i);
    stem(n, xn, 'filled');
    xlabel('t (s)');
    ylabel('x(n)');
    xlim([0 1]);
    grid on;
end

