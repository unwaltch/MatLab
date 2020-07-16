clc
clear all
for i=1:100
while 1
    j=1;
    x = randsample(2,1);
    if (x == 1)
        A(i)=j;
        break
    else
        j=j+1;
    end
    
end
end
sum=0;
for k=1:100
    sum = sum+ A(k);
end
sum/100