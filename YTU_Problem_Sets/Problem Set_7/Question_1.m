clc
clear all
%E�er "plot" komutu kullan�lmas� istenirse x=0:10 yaz�l�r.
%"syms" g�sterimi kald�r�l�r.
%"fplot" komutu "plot" komutu ile de�i�tirilir.
syms x;
y1=exp(x);
y2=sin(x);
y3=x^5+2*x+4;
y4=sqrt(x);
grid on
fplot(y1,[0,10])
xlabel('X - Axis')
ylabel('Y - Axis')
figure;
fplot(y2,[0,10])
xlabel('X - Axis')
ylabel('Y - Axis')
figure;
fplot(y3,[0,10])
xlabel('X - Axis')
ylabel('Y - Axis')
figure;
fplot(y4,[0,10])
xlabel('X - Axis')
ylabel('Y - Axis')