n = 0:10;
x = 10 * exp((-0.1 + 1j * 0.2 * pi) * n);
[xe, xo, m] = evenodd_conjugado(x, n);

figure;

% Parte real de x_e(n)
subplot(2, 2, 1);
stem(m, real(xe), 'filled');
title('Parte real de x_e(n)');
xlabel('n'); ylabel('Re\{x_e(n)\}');
xlim([min(m)-1, max(m)+1]);
grid on;

% Parte imaginária de x_e(n)
subplot(2, 2, 2);
stem(m, imag(xe), 'filled', 'r');
title('Parte imaginária de x_e(n)');
xlabel('n'); ylabel('Im\{x_e(n)\}');
xlim([min(m)-1, max(m)+1]);
grid on;

% Parte real de x_o(n)
subplot(2, 2, 3);
stem(m, real(xo), 'filled');
title('Parte real de x_o(n)');
xlabel('n'); ylabel('Re\{x_o(n)\}');
xlim([min(m)-1, max(m)+1]);
grid on;

% Parte imaginária de x_o(n)
subplot(2, 2, 4);
stem(m, imag(xo), 'filled', 'r');
title('Parte imaginária de x_o(n)');
xlabel('n'); ylabel('Im\{x_o(n)\}');
xlim([min(m)-1, max(m)+1]);
grid on;

x2 = sin(0.5 * pi * n);
[y2, m2] = dnsample(x2, n, 4);

% Plot
figure;
subplot(2,1,1);
stem(n, x2, 'filled');
title('x(n) = sin(0.5πn)');
xlabel('n'); ylabel('x(n)');
grid on;

subplot(2,1,2);
stem(m2, y2, 'filled');
title('y(n) = x(n) dizimado por M = 4');
xlabel('n'); ylabel('y(n)');
grid on;
