clc
clear all
a=[130 130 122 126 129];
fprintf('Civil Engineering = 1 \n')
fprintf('Chemical Engineering = 2 \n')
fprintf('Computer Engineering = 3 \n')
fprintf('Electrical Engineering = 4 \n' )
fprintf('Mechanical Engineering = 5 \n\n')
Uni = input('Enter your departmant name :', 's');
switch(Uni)
    case {'Civil Engineering'}
        disp(a(1));
    case {'Chemical Engineering'}
       disp(a(2));
    case {'Computer Engineering'}
       disp(a(3));
    case {'Electrical Engineering'}
        disp(a(4));
    case {'Mechanical Engineering'}
       disp(a(5)); 
end