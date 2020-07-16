clc
clear all
e1=input('Enter the first element of Fibonacci Squence: ');
e2=input('Enter the second element of Fibonacci Squence: ');
k=input('How many elements do you want to show ? ');
A(1)=e1;
A(2)=e2;
for n= 3:k
   A(n)= A(n-1)+A(n-2);
end
for i=1:n
    fprintf('%d. element is: %d\n',i,A(i))
end