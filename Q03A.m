close all; clear; clc;

% Item a)
x = [2, -4, 5, 3, -1, -2, 6]; % Sinal x(n)
nx = -3:3; % Índices de x(n)
h = [1, -1, 1, -1, 1]; % Sinal h(n)
nh = -1:3; % Índices de h(n)

[y, ny] = conv_m(x, nx, h, nh);
y,ny

figure('NumberTitle','off','Name','Questao 03 - a');
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

