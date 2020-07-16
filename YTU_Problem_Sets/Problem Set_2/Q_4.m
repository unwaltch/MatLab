clc
clear all
Tc = input('Enter a starting temperature:');
i = input('Enter the value of increment:');
l = input('Enter the numbers of lines:');
f1 = Tc+(i*(l-1));
Celsius = linspace(Tc,f1,l)';
Fahrenheit = 9.*Celsius/5 +32; 
T = table(Celsius,Fahrenheit);
disp(T)