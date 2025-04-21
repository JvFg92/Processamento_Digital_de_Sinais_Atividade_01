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
