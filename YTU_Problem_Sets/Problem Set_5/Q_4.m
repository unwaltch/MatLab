clc
clear all
i=0;
c=inf;

while 1
    k = rand;
    i = i+1;
    if (k>0.8 && k<0.85)
        break
    end
end
fprintf('%d, %d \n', k,i)