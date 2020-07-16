clc
clear all
x1=1;
while 1
    f_x1=cos(x1^2)+log(x1);
    df_x1=(2*x1*sin(x1^2))+(1/x1);
    x2=x1-(f_x1/df_x1);
    fprintf('%f -- %f -- %f\n',x1,x2,f_x1)
    x1=x2;
    if f_x1<0.0001
        break
    end
end