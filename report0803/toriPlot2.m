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
orange = [255/255,188/255,34/255];
green = [0/255,179/255,104/255];
skyblue = [26/255, 178/255, 183/255];
pink = [245/255, 70/255, 92/255];
koi_pink = [255/255, 10/255, 161/255];

r = [orange(1), green(1), skyblue(1)];
g = [orange(2), green(2), skyblue(2)];
b = [orange(3), green(3), skyblue(3)];

delta = 1;
sim('adaptive_control.slx');% Simlinkの実行
figure(1);
p1 = plot(t, x_d, 'k');
p1.DisplayName = '理想軌道';
hold on;

f1 = figure(1); % 制御対象と理想軌道のプロット
%title('制御対象と理想軌道')
%ylim([0, 2.0]);
xlim([0, 1000]);
xlabel('$$t$$', 'Interpreter', 'Latex');
ylabel('$$x(t)$$', 'Interpreter', 'Latex');
p1 = plot(t, x); % プロット
p1.Color = skyblue;
p1.LineWidth = 1.5;
p1.DisplayName = sprintf('\\delta = %d', delta);
l1 = legend('-DynamicLegend');
l1.Location = 'southeast';
hold on;
    
f2 = figure(2); % 入力値のプロット
%title('入力')
%ylim([-10, 10]);
xlim([0, 1000]);
%xlabel('$$t$$', 'Interpreter', 'Latex');
%ylabel('$$u(t)$$', 'Interpreter', 'Latex');
p2 = plot(t, input_value); % プロット
p2.Color = skyblue;
p2.LineWidth = 1.5;
p2.DisplayName = sprintf('\\delta = %d', delta);
l2 = legend('-DynamicLegend');
l2.Location = 'northeast';
xlabel('$$t$$', 'Interpreter', 'Latex');
ylabel('$$u(t)$$', 'Interpreter', 'Latex');
hold on;
    

%ウインドウを移動
scrsz = get(groot,'ScreenSize');
f1.OuterPosition = [1 scrsz(4)/2 scrsz(3)/2 scrsz(4)/2];% 左上
f2.OuterPosition = [scrsz(3)/2 1 scrsz(3)/2 scrsz(4)/2];% 右下