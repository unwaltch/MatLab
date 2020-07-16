function sum = Exp(x)
n = 0;
sum = 0;
while 1
    for n=n:n
        sum = sum + ((x^n)/Fact(n));
    end
    n=n+1;
    if(x^n/Fact(n))<10^-6
        break
    end
end