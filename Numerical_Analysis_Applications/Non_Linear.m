clc
clear all
Data=[1,5.1;1.25,5.79;1.5,6.53;1.75,7.45;2,8.46];
d=1;
j=1;
for h=d:-1:0
    for i=1:size(Data,1)
        A(i,j)=Data(i,1)^h;
        B(i,1)=log(Data(i,2));
    end
    j=j+1;
end
X=inv(A'*A)*A'*B;
fprintf('%f -- %f\n',X(1),exp((X(2))))