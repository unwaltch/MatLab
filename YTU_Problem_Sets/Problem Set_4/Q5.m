clc
clear all
e1=input('Enter the first element of Fibonacci Squence: ');
e2=input('Enter the second element of Fibonacci Squence: ');
A(1)=e1;
A(2)=e2;
n=3;
c=inf;
while c >= n
    A(n) = A(n-1)+A(n-2);
    r1 = A(n)/A(n-1);
    r2 = A(n-1)/A(n-2);
    if(abs(r2-r1) <= 0.0000000000000000000000000000001)
        for x = 1:n-1
            fprintf('%d - ', A(x))
        end
        fprintf('%d\n', A(n))
        break
    end
    n = n+1;
    
end
for b = 2:n
    B(b-1)=A(b)/A(b-1);
end
gr=(1+(sqrt(5)))/2;
yline(gr,'r');
hold on
plot(B,'-o')
