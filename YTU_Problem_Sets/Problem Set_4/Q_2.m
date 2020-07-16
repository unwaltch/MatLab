clc
clear all
A =input('Please write your array between [] :');
s=0;
n=1;
while n<=length(A)
    s = s + A(n);
    n = n+1;
end
fprintf('Your sum is: %d\n', s);
if (sum(A) == s)
   fprintf('Your loop work corretly. \n')
end
