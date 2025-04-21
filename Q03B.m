close all; clear; clc;

% Item b)
n = 0:5; % Índices para x(n)
x = n/4; % x(n) = n/4 para n = 0:5
nx = 0:5; % Índices de x(n)

nh = -2:3; % Índices para h(n)
h = 2 * ones(1, length(nh)); % h(n) = 2 para n = -2:2

[y, ny] = conv_m(x, nx, h, nh);
y,ny

figure('NumberTitle','off','Name','Questao 03 - b');

subplot(3,1,1);
stem(nx,x,'markersize',2);
xlabel('n');
ylabel('x(n)');
axis([min(nx)-1,max(nx)+1,min(y)-1,max(y)+1]);
title('Sequencia Original x(n)');

subplot(3,1,2);
stem(nh,h,'markersize',2);
xlabel('n');
ylabel('h(n)');
axis([min(nx)-1,max(nx)+1,min(y)-1,max(y)+1]);
title('Sequencia Original h(n)');

subplot(3,1,3);
stem(ny,y,'markersize',2);
xlabel('n');
ylabel('y(n)');
axis([min(nx)-1,max(nx)+1,min(y)-1,max(y)+1]);
title('Sequencia resultante da Convolucao entre x(n) e h(n)');
