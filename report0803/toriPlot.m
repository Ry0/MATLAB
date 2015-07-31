% 制御対象の応答と理想軌道のプロット
% 推定ゲイン固定でdeltaのみ変更
close all;
clc;
clear;
clf;

% パラメータ設定
sample_time = 0.01;
delta_1 = 1; % 100
delta_2 = 1; % 100
delta_3 = 1; % 10
deltas = [1 10 100];
orange = [255/255,188/255,34/255];
green = [0/255,179/255,104/255];
skyblue = [27/255, 198/255, 255/255];
pink = [245/255, 70/255, 92/255];

r = [orange(1), green(1), skyblue(1)];
g = [orange(2), green(2), skyblue(2)];
b = [orange(3), green(3), skyblue(3)];

colors = [[1 1 0] [1 1 0] [1 1 0]];
%colors = ['c' 'm' 'g'];

delta = deltas(1);
sim('adaptive_control.slx');% Simlinkの実行
figure(1);
p1 = plot(t, x_d, 'Color', pink);
p1.DisplayName = '理想軌道';
l1 = legend('-DynamicLegend');
l1.Location = 'northeast';
hold on;


for i=1:3
    delta = deltas(i);
    sim('adaptive_control.slx');% Simlinkの実行
    
    f1 = figure(1); % 制御対象と理想軌道のプロット
    %title('制御対象と理想軌道')
    %ylim([0, 2.0]);
    xlim([0, 200]);
    xlabel('$$t$$', 'Interpreter', 'Latex');
    ylabel('$$x(t)$$', 'Interpreter', 'Latex');
    p1 = plot(t, x); % プロット
    p1.Color = [r(i), g(i), b(i)];
    p1.LineWidth = 1.5;
    p1.DisplayName = sprintf('\\delta = %d', deltas(i));
    l1 = legend('-DynamicLegend');
    l1.Location = 'northeast';
    hold on;
    
    f2 = figure(2); % 推定値(alpha)のプロット
    %title('推定値(\alpha)')
    %ylim([-4, 4]);
    xlim([0, 200]);
    xlabel('$$t$$', 'Interpreter', 'Latex');
    ylabel('$$\hat{\alpha}$$', 'Interpreter', 'Latex');
    p2 = plot(t, hat_alpha); % プロット
    p2.Color = [r(i), g(i), b(i)];
    p2.LineWidth = 1.5;
    p2.DisplayName = sprintf('\\delta = %d', deltas(i));
    l2 = legend('-DynamicLegend');
    l2.Location = 'northeast';
    hold on;
    
    f3 = figure(3); % 推定値(beta)のプロット
    %title('推定値(\beta)')
    %ylim([-2, 1]);
    xlim([0, 200]);
    xlabel('$$t$$', 'Interpreter', 'Latex');
    ylabel('$$\hat{\beta}$$', 'Interpreter', 'Latex');
    p3 = plot(t, hat_beta); % プロット
    p3.Color = [r(i), g(i), b(i)];
    p3.LineWidth = 1.5;
    p3.DisplayName = sprintf('\\delta = %d', deltas(i));
    l3 = legend('-DynamicLegend');
    l3.Location = 'southeast';
    hold on;
    
    f4 = figure(4); % 推定値(gamma)のプロット
    %title('推定値(\gamma)')
    %ylim([-3, 0]);
    xlim([0, 200]);
    xlabel('$$t$$', 'Interpreter', 'Latex');
    ylabel('$$\hat{\gamma}$$', 'Interpreter', 'Latex');
    p4 = plot(t, hat_gamma); % プロット
    p4.Color = [r(i), g(i), b(i)];
    p4.LineWidth = 1.5;
    p4.DisplayName = sprintf('\\delta = %d', deltas(i));
    l4 = legend('-DynamicLegend');
    l4.Location = 'northeast';
    hold on;
    
    f5 = figure(5); % 入力値のプロット
    %title('入力')
    %ylim([-10, 10]);
    xlim([0, 200]);
    xlabel('$$t$$', 'Interpreter', 'Latex');
    ylabel('$$u(t)$$', 'Interpreter', 'Latex');
    p5 = plot(t, input_value); % プロット
    p5.Color = [r(i), g(i), b(i)];
    p5.LineWidth = 1.5;
    p5.DisplayName = sprintf('\\delta = %d', deltas(i));
    l5 = legend('-DynamicLegend');
    l5.Location = 'southeast';
    hold on;
    
    f6 = figure(6); % x^値のプロット
    %title('\tilde{x}')
    %ylim([-10, 10]);
    xlim([0, 200]);
    xlabel('$$t$$', 'Interpreter', 'Latex');
    ylabel('$$\tilde{x}(t)$$', 'Interpreter', 'Latex');
    p6 = plot(t, x-x_d); % プロット
    p6.Color = [r(i), g(i), b(i)];
    p6.LineWidth = 1.5;
    p6.DisplayName = sprintf('\\delta = %d', deltas(i));
    l6 = legend('-DynamicLegend');
    l6.Location = 'northeast';
    hold on;
    
end

hold on;
%ウインドウを移動
scrsz = get(groot,'ScreenSize');
f1.OuterPosition = [1 scrsz(4)/2 scrsz(3)/2 scrsz(4)/2];% 左上
f2.OuterPosition = [scrsz(3)/2 scrsz(4)/2 scrsz(3)/2 scrsz(4)/2];% 右上
f3.OuterPosition = [1 1 scrsz(3)/2 scrsz(4)/2];% 左下
f4.OuterPosition = [scrsz(3)/2 1 scrsz(3)/2 scrsz(4)/2];% 右下
f5.OuterPosition = [scrsz(3)/2 1 scrsz(3)/2 scrsz(4)/2];% 右下
f6.OuterPosition = [scrsz(3)/2 1 scrsz(3)/2 scrsz(4)/2];% 右下