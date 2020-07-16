clc
clear all
A = input('Enter a vector or an array: ');
B = A;
c=0;
while c <= length(A)
    for i=2:length(A)
      if(A(i)<A(i-1))
         a = A(i-1);
         b = A(i);
         A(i-1) = b;
         A(i) = a;
      end
    end
    c = c+1;
end

disp(A)