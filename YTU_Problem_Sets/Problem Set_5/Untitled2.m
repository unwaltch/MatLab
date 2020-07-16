clc
clear all
A=randi([-20 20],50,50);
x=0;
y=0;
for r=1:50
    for c=1:50
        if (A(r,c)>0)
            x=x+1;
        end
        y=y+A(r,c);
    end
end
fprintf('There is %d positive intiger in matrix !\n',x);
fprintf('The average value is ! %d\n', y/2500);