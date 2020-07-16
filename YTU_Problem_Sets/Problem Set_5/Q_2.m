clc
clear all
a = input('Enter the first number: ');
b = input('Enter second number: ');
m = a * b;
r = a - b*floor(a/b);
while r ~= 0
    a = b;
    b = r;
    r = a - b*floor(a/b);
end
fprintf('LCM is : %d\n', m/b)