clc
clear all
T = input('Enter a scalar value for outside temp. :');
if (T>=80)
    disp('You can wear short !')
elseif (T>60 && T<80)
    disp('It is a beautiful day !')
else
    disp('You should wear a coat or jacket !')
end    
    
        