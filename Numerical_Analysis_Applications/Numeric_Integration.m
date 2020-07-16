clc
clear all
n=input('Enter the value of n: ');
syms a;
x1=0;
x2=a;
h=(x2-x1)/n;
x=linspace(x1,x2,n+1);
y=2*x^4-3*x;
integral=0;
for k=2:n+1
    integral=integral+((h/2)*(y(k-1)+y(k)));
end
integral