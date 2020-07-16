clc
clear all
A=[1 3 5;3 9 2;11 8 2];
B=char('fred','ralph','ken','susan');
C=int8([4;6;3;1]);

sample_cell={A,B,C};

x=sample_cell{1};
y=sample_cell{3}(3,:);
z=sample_cell{2}(1,:);