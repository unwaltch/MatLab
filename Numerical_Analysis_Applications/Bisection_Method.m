clc
clear all
x1=1;
x2=1.5;
while 1
    f_x1=x1^4+x1-3;
    f_x2=x2^4+x2-3;
    x3=(x1+x2)/2;
    f_x3=x3^4+x3-3;
    fprintf('%f -- %f -- %f -- %f\n',x1,x3,x2,f_x3)
    if f_x1*f_x3<0
        x2=x3;
    else
        x1=x3;
    end
    if abs(f_x3)<0.015
        break
    end
end