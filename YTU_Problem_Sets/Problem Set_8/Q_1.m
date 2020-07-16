clc
clear all
sum_single=0;
sum_double=0;
for n=1:10000000
    sum_single = sum_single + single(1/n);
end
for n=1:10000000
    sum_double= sum_double + 1/n;
end
sum_single
sum_double