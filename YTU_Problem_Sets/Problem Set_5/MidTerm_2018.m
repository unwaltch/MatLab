clc
clear all
data=[2 6 8 7;2 3 4 8;1 6 7 7];
qual=[2 1 1 2;3 3 1 1;3 1 1 3];
for c=1:4
    for r=1:3
        if (qual(r,c)==1)
            hqd(r,c)=data(r,c);
        else
            hqd(r,c)=-1;  
        end
    end
end
disp(hqd)