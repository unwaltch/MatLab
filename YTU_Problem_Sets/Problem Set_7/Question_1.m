clc
clear all
%Eðer "plot" komutu kullanýlmasý istenirse x=0:10 yazýlýr.
%"syms" gösterimi kaldýrýlýr.
%"fplot" komutu "plot" komutu ile deðiþtirilir.
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