clc
clear all
c=0;
y=0;
while 1
    x=input('Enter intiger: ');
    c=c+1;
    y=y+x;
    if(x==0)
        break
    end
    
end
fprintf('The average is: %d',y/(c-1))