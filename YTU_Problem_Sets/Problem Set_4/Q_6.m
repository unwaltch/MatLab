clc
clear all
format long g
A=input('Enter the number: ');
x=input('Enter your intial guess: ');
E=input('Enter the convergence criteria: ');
c=inf;
i=1;
while c >= E
    y =(1/A)*x^2;
    x1=((x/8)*(15-y*(10-3*y)));
    c=abs(x1-x);
    N(i)=x1;
    x=x1;
    fprintf('In the %d. approximation, the answer is: %d\n\n', i, x)
    i=i+1;
end
if (x == sqrt(A))
    fprintf('Your code working correctly ! Well Done ! \n')
else
    fprintf('Your code working wrong ! Check Your Code !. \n')
end