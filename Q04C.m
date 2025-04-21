% Item c) - Resposta à entrada x(n)
n = 0:200; % Índices
x = 5 + 3*cos(0.2*pi*n) + 4*sin(0.6*pi*n); % Entrada x(n)

% Coeficientes (mesmos do item a)
b = [1, 2, 0, 1];
a = [1, -0.5, 0.25];

% Calcular a resposta y(n)
y = filter(b, a, x);

% Plotar
figure;
stem(n, y, 'b', 'filled');
title('Resposta y(n) para a entrada x(n)');
xlabel('n'); ylabel('y(n)');
grid on;
