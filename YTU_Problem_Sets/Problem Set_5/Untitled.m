clc
clear all
syms x ;
f(x)=cos(x);
x=input('Enter the stop value: ');
sum = 0;
for n=1:x
    sum = sum + (diff(f(0), n)*x/factorial(n));
   
end
