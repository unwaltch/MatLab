clc
clear all
X = input('Enter the value of X:');
if (X >= -1 && X <=1)
    disp(['Asin X is equal :' num2str(asin(X))])
else
    disp('Your entry is out of range [-1,1]')
end