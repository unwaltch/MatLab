clc
clear all
stopper=input('Enter stopper: ');
for i=1:stopper
A = rand(1,100);
y=0;
upper=0;
lower=0;
sum=0;
for n=1:100
    y=A(n);
    sum = sum + A(n);
end
for m=1:100
    if(A(m)<(sum/100))
        lower=lower+1;
    elseif(A(m)>y/100)
        upper=upper+1;
    end
end
B(i,1)=upper;
B(i,2)=lower;

end
plot((1:1:stopper),B(1:stopper,1),'--')
hold on;
plot((1:1:stopper),B(1:stopper,2),'-o')
sum_upper=0;
sum_lower=0;
for j=1:stopper
    sum_upper= sum_upper + B(j,1);
    sum_lower= sum_lower + B(j,2);
end
sum_upper/stopper
sum_lower/stopper