clc;
clear;
clf;

sim('Laplace') % simulinkの読み込み

figure(1);
xlim([0,40]);
ylim([-0.5,3.5])
xlabel('t');
ylabel('x');

orange = [241/255,98/255,2/255];
green = [0/255,179/255,104/255];

y_analytical = 3/2-(31/34)*exp(-4*t)+(24/17)*cos(t)+(6/17)*sin(t);
hold on;

plot(t,y,'Color',green); % simulinkによって出力された値
plot(t,y_analytical,'Color',orange); % 解析的解

