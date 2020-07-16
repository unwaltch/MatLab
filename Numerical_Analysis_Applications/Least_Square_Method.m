clc
clear all
Data=[1,14;2,23;3,27;3,34;4,41;5,49];
d=input('Enter degree of polinomial:');
j=1;
for h=d:-1:0
    for i=1:size(Data,1)
        A(i,j)=Data(i,1)^h;
        B(i,1)=Data(i,2);
    end
    j=j+1;
end
X=inv(A'*A)*A'*B;
disp(X)