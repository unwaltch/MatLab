clc
clear all
x1=0;
x2=1;
while 1
    f_x1=x1^3-7*x1^2+14*x1-6;
    f_x2=x2^3-7*x2^2+14*x2-6;
    x3=((x1*f_x2)-(x2*f_x1))/(f_x2-f_x1);
    f_x3=x3^3-7*x3^2+14*x3-6;
    fprintf('%f -- %f -- %f -- %f\n',x1,x3,x2,f_x3)
    if f_x1*f_x3<0
        x2=x3;
    else
        x1=x3;
    end
    if abs(f_x3)<0.001
        break
    end
end