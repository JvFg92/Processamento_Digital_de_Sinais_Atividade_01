close all; clear; clc;

n = 0:100;
x = [1, zeros(1, 100)];

%Coeficientes da equação
b = [1, 2, 0, 1];
a = [1, -0.5, 0.25];

% Calcular a resposta ao impulso h(n)
h = filter(b, a, x);

figure;
stem(n, h, 'b', 'filled');
title('Resposta ao Impulso h(n)');
xlabel('n'); ylabel('h(n)');
grid on;

% Item b) - Verificar estabilidade
soma_abs = sum(abs(h));
fprintf('Soma dos valores absolutos de h(n) para n = 0:100: %.4f\n', soma_abs);

% Observar o comportamento assintótico
if all(abs(h(end-10:end)) < 1e-3) % Verificar se h(n) está próximo de zero no final
    disp('O sistema parece ser estável: h(n) converge para zero.');
else
    disp('O sistema pode ser instável: h(n) não converge para zero.');
end

