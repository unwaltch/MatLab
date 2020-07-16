clc
clear all
A = input('Enter a vector or an array: ');
s = 0;
for i = 1:length(A)
    if (A(i) > s)
        s = A(i);
        j = i;
    end
end
fprintf('\n The greatest element is the %d. element and it is %d. \n', j ,s)
