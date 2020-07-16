clc
clear all
g = 9.8;
Hi = 0;
Vi = input('Enter a positive initial speed for stone:');
if (Vi < 0)
   Vi = input('Enter a positive initial speed for stone:');
end
Tf = max(roots([-g/2 Vi 0]));
Hmax = (Vi^2)/2*g;
T1 = fix(Tf*100);
Tr = T1/100;
Tv = linspace(0,Tr,T1);
H = (Vi*Tv)-1/2*(g*(Tv.^2));
M = [Tv;H]';
plot(Tv,H)
xlabel('Time(s)');
ylabel('Height(m)');
title('Time/Height Graphic')
grid on;