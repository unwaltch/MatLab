clc
clear all
x1=0;
x2=1;
while 1
    f_x1= (x1^3)-2;
    f_x2= (x2^3)-2;
    x3= x2-((x2-x1)*f_x2/(f_x2-f_x1));
    r_error=(x3-x2)/x3;
    fprintf('%f -- %f -- %f -- %f\n',x1,x2,x3,r_error);
    x1=x2;
    x2=x3;
    if abs(r_error) < 0.001
        break
    end
end