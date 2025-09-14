figure(1);
clf;
t = linspace(0, 2, 1001);
F1 = 4;
X1 = sin(2 * pi * F1 * t + pi / 12);
line(t, X1, 'LineWidth', 2, 'Color', 'r');
xlim([0 2]);
ylim([-1 1]);
xlabel("x1(t) = sin(2 * pi * F1 * t + pi / 12)");
FS = 9;
TS = 1/FS;
n=0:20;
t=n*TS;
Xn = sin(2 * pi * F1 * t + pi / 12);
for n=0:20
    line(n*TS*[1 1],[-1 1],'Color','m','LineWidth',0.1,'LineStyle','--');
    line(n*TS,Xn(n+1),'Color','k','Marker','.','Markersize',10);
end
grid on
%------------------------------------------
figure(2);
clf;
clear; 
t = linspace(0, 2, 1001);
F2 = 3;
X2 = cos(2 * pi * F2 * t);
line(t, X2, 'LineWidth', 2, 'Color', 'g');
xlim([0 2]);
ylim([-1 1]);
xlabel("x2(t) = cos(2 * pi * F2 * t)");
FS = 9;
TS = 1/FS;
n=0:20;
t=n*TS;
Xn = cos(2 * pi * F2 * t);
for n=0:20
    line(n*TS*[1 1],[-1 1],'Color','m','LineWidth',0.1,'LineStyle','--');
    line(n*TS,Xn(n+1),'Color','k','Marker','.','Markersize',10);
end
grid on
%------------------------------------------
figure(3);
clf;
clear; 
F1 = 4;
F2 = 3;
t = linspace(0, 4, 1001);
X1 = sin(2 * pi * F1 * t + pi / 12);
X2 = cos(2 * pi * F2 * t);
X3 = X1 + X2;
line(t, X3, 'LineWidth', 2, 'Color', 'b');
xlim([0 4]);
ylim([-3 3]);
xlabel("x3(t) = x1(t) + x2(t)");
FS = 9;
TS = 1/FS;
n=0:40;
t=n*TS;
X1 = sin(2 * pi * F1 * t + pi / 12);
X2 = cos(2 * pi * F2 * t);
Xn = X1+X2;
for n=0:40
    line(n*TS*[2 2],[-3 3],'Color','m','LineWidth',0.1,'LineStyle','--');
    line(n*TS,Xn(n+1),'Color','k','Marker','.','Markersize',15);
end
grid on
%------------------------------------------
figure(4);
clf;
clear; 
FS = 9;
TS = 1/FS;
n = 0:20;
F1 = 4;
F2 = 3;
t =n*TS;
X1n = sin(2 * pi * F1 * t + pi / 12);
stem(n, X1n, 'LineWidth', 1, 'Color', 'k','MarkerSize', 5, 'Marker', 'o', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'r');
xlim([0 20]);
xlabel("Sample X1(t) , Fs = 9 Sample/sec");
grid on

figure(5);
clf;
X2n = cos(2 * pi * F2 * t);
stem(n, X2n, 'LineWidth', 1, 'Color', 'k','MarkerSize', 5, 'Marker', 'o', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'r');
xlim([0 20]);
xlabel("Sample X2(t) , Fs = 9 Sample/sec");
grid on
figure(6);
clf;
clear; 
FS = 9;
TS = 1/FS;
n = 0:20;
F1 = 4;
F2 = 3;
t =n*TS;
X1n = sin(2 * pi * F1 * t + pi / 12);
X2n = cos(2 * pi * F2 * t);
X3n = X1n + X2n;
stem(n, X3n, 'LineWidth', 1, 'Color', 'k','MarkerSize', 5, 'Marker', 'o', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'r');
xlim([0 20]);
xlabel("Sample X3(t) , Fs = 9 Sample/sec");
grid on
