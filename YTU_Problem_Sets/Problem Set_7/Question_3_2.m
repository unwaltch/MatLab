clc
clear all
v0=100;
g=9.81;
t=0:0.01:20;
for n = 1:3
    teta=pi/(2*n);
    vertical(n,:)=t.*v0*sin(teta)-(1/2)*g.*(t.^2);
    horizontal(n,:)=t.*v0*cos(teta);
end
hold on
grid on
plot(horizontal(1,:),vertical(1,:))
plot(horizontal(2,:),vertical(2,:),'--')
plot(horizontal(3,:),vertical(3,:),':')
legend('pi/2','pi/4','pi/6')