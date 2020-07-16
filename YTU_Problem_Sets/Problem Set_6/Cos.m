function sum = Cos(x)
n = 0;
sum = 0;
while 1
    for n=n:n
        sum = sum + ((-1)^n)*((x^(2*n))/Fact((2*n)));
    end
    n=n+1;
    if (n == 100)
        break
    end
end
end
