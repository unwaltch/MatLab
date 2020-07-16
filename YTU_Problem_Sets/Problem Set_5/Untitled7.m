clc
clear all
N=0;
sum=0;
while 1
    for k=N:N
        sum=sum+(3*k+2)^2;
        N_Table(k+1)=k+1;
        sum_Table(k+1)=sum;
    end
    N=N+1;
    if(sum > 10^7)
        fprintf(' N  |--|  S(N)\n')
        fprintf('%d |--| %d\n',N_Table(k),sum_Table(k))
        fprintf('%d |--| %d\n',N_Table(N),sum_Table(N))
        break
    end
 
end
plot(N_Table,sum_Table,'--')