clc
clear all
cost = 0;
s=1;

while 1
    x = input('Enter the price of item: '); 

    cost = cost + x;
    if(x ==0)
        fprintf('The total is: %d\n',cost)
        P=input('Enter the amount of payment: ');
        fprintf('The change due is: %d\n',P-cost)
        break
    end
end
