clc
clear all
A=[1 2 3;4 5 6;7 8 9];
B=A(2:3,1:3);
C=A(1:3,1:2);
D=B*C;
E=min(D(1,2,:));