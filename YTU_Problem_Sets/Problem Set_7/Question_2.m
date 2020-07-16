clc
clear all
x=-pi:0.01:pi;
xlim([-6,6]);
y1=sin(x);
y2=sin(2.*x);
y3=sin(3.*x);
hold on
plot(x,y1,'r')
plot(x,y2,'--b')
plot(x,y3,':g')
legend('Sin(x)','Sin(2x)','Sin(3x)')