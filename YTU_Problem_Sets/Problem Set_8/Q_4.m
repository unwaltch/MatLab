clc
clear all
A=[1,2;3,4];
B=[10,20;30,40];
C=[3,16;9,12];
ABC=A*B*C;
Column_A1B1C1=[A(:,1),B(:,1),C(:,1)];
Row_A2B2C2=[A(2,:);B(2,:);C(2,:)];
cat(4,A,B,C)