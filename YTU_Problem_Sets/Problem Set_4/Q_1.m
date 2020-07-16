clc
clear all
A =input('Please write your array between [] :');
s=0;
for  n = 1:length(A)
     s = s + A(n);
end 
fprintf('Your sum is: %d\n', s);
if (sum(A) == s)
   fprintf('Your loop work corretly. \n')
end