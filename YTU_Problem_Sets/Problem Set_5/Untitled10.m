clc
clear all
sifre=[1 2 3 4];
deneme =0;
while 1
    control=input('Control your password: ');
    if (length(control) == length(sifre))
        if(control == sifre)
        fprintf('Your password is true !\n')
        break
        end
    else
        fprintf('Error !\n')
        deneme = deneme+1;
        if (deneme == 3)
            fprintf('You try 3 times !\n')
            break
        end
    end
end