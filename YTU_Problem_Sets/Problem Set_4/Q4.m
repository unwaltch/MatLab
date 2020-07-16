clc
clear all
e1=input('Enter the first element of Fibonacci Squence: ');
e2=input('Enter the second element of Fibonacci Squence: ');
k=input('How many elements do you want to show ? ');
A(1)=e1;
A(2)=e2;
n=3;
while n <= k
    A(n)= A(n-1)+A(n-2);
    n = n+1;
end
for i=1:n-1
    fprintf('%d. element is: %d\n',i,A(i))
end