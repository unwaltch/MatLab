clc
clear all
n=input('Enter the value of n: ');
x1=0;
x2=1;
h=(x2-x1)/n;
x=linspace(x1,x2,n+1);
y=5.*(x.^4);
dy_x1=20*(x1^3);
dy_x2=20*(x2^3);
integral=0;
for k=2:n+1
    integral=integral+((h/2)*(y(k-1)+y(k)));
end
corrected_integral = integral - ((h/12)*(dy_x2-dy_x1));
fprintf('Corrected Integral = %f\n',corrected_integral)