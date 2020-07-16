clc
clear all
%E�er "plot" komutu kullan�lmas� istenirse x=0:10 yaz�l�r.
%"syms" g�sterimi kald�r�l�r.
%"fplot" komutu "plot" komutu ile de�i�tirilir.
x=0:0.01:10;
y1=exp(x);
y2=sin(x);
y3=x.^5+2.*x+4;
y4=sqrt(x);
subplot(2,2,1)
plot(x,y1)
xlabel('X - Axis')
ylabel('Y - Axis')
title('e^x')
subplot(2,2,2)
plot(x,y2)
xlabel('X - Axis')
ylabel('Y - Axis')
title('Sin(x)')
subplot(2,2,3)
plot(x,y3)
xlabel('X - Axis')
ylabel('Y - Axis')
title('x^5+2*x+4')
subplot(2,2,4)
plot(x,y4)
xlabel('X - Axis')
ylabel('Y - Axis')
title('\surdx')