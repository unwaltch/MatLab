clc
clear all
v0=100;
g=9.81;
t=0:0.01:20;
teta=pi/4;
vertical=t.*v0*sin(teta)-(1/2)*g.*(t.^2);
horizontal=t.*v0*cos(teta);
plot(t,horizontal)
xlabel('Time')
ylabel('Horizontal Distance')
figure;
plot(t,vertical)
xlabel('Time')
ylabel('Vertical Distance')
figure;
plot(horizontal,vertical)
xlabel('Horizontal Distance')
ylabel('Vertical Distance')