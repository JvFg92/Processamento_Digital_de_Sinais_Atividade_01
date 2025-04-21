clc;
clear all;
close all;

%% Parte 1: Resposta em frequência

% Coeficientes da equação de diferenças
b = [1 0 1 0 1 0 1];
a = [1 0 -0.81 0 -0.81^2 0 -0.81^3];

% Frequências de 0 a pi (rad/amostra)
w = linspace(0, pi, 512);

% Função freqresp definida abaixo
H = freqresp(b, a, w);

%% Parte 2: Resposta do sistema à entrada x(n) = 5 + 10*(-1)^n

N = 100;                 % Número de amostras
n = 0:N-1;
x = 5 + 10 * (-1).^n;    % Entrada
y = zeros(1, N);         % Inicialização da saída

% Coeficientes alpha para a parte recursiva
alpha = [0, 0.81, 0.81^2, 0.81^3];

% Aplicar a equação de diferenças
for k = 1:N
    % Parte da entrada
    soma_x = 0;
    for m = 0:3
        idx = k - 2*m;
        if idx >= 1
            soma_x = soma_x + x(idx);
        end
    end

    % Parte da saída recursiva
    soma_y = 0;
    for l = 1:3
        idx = k - 2*l;
        if idx >= 1
            soma_y = soma_y + alpha(l+1) * y(idx);
        end
    end

    % Resultado final
    y(k) = soma_x - soma_y;
end

%% Parte 3: Plots

figure;
set(gcf, 'Position', [100, 100, 1920, 1080]);

% (1) Magnitude da resposta em frequência
subplot(2,2,1);
plot(w, abs(H), 'LineWidth', 2);
xlabel('Frequência (rad/amostra)');
ylabel('|H(e^{j\omega})|');
title('Magnitude da Resposta em Frequência');
grid on;

% (2) Fase da resposta em frequência
subplot(2,2,2);
plot(w, angle(H), 'LineWidth', 2);
xlabel('Frequência (rad/amostra)');
ylabel('Fase [rad]');
title('Fase da Resposta em Frequência');
grid on;

% (3) Entrada x(n)
subplot(2,2,3);
stem(n, x, 'filled');
xlabel('n');
ylabel('x(n)');
title('Entrada x(n) = 5 + 10*(-1)^n');
grid on;

% (4) Saída y(n)
subplot(2,2,4);
stem(n, y, 'filled');
xlabel('n');
ylabel('y(n)');
title('Saída y(n)');
grid on;


