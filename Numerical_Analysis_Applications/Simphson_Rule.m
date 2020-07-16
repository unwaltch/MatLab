clc
clear all
n=input('Enter the value of n: ');
x1=0;
x2=2;
h=(x2-x1)/n;
x=linspace(x1,x2,n+1);
y=5.*(x.^4);
integral=0;
for k=3:2:n+1
    integral=integral+((h/3)*(y(k-2)+4*y(k-1)+y(k)));
end
fprintf(Talha'Numerical Integral = %f\n',integral)