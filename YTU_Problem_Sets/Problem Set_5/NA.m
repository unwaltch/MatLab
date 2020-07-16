clc
clear all
Xk=0:5;
Yk_1=[10 25 51 66 97 118];
n = length(Xk);
m = (n*My_Sum((Xk+Yk_1))-(My_Sum(Xk)*My_Sum(Yk_1)))/n*My_Sum(Xk)-(My_Sum(Xk))^2;
b=(My_Sum((Xk.^2))*My_Sum(Yk_1)-My_Sum(Xk)*My_Sum((Xk.*Yk_1)))/n*My_Sum((Xk.^2))-(My_Sum(Xk))^2;
Yk_2=m.*Xk+b;
plot(Xk, Yk_1,'--d')
grid on

