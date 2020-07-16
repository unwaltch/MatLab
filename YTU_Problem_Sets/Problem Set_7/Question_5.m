clc
clear all
v0=100;
g=9.81;
t=0:0.01:20;
teta=pi/4;
vertical=t.*v0*sin(teta)-(1/2)*g.*(t.^2);
horizontal=t.*v0*cos(teta);

subplot(2,2,1)
plot(t,horizontal)
xlabel('Time')
ylabel('Horizontal Distance')
subplot(2,2,2)
plot(t,vertical)
xlabel('Time')
ylabel('Vertical Distance')
subplot(2,2,3)
plot(horizontal,vertical)
xlabel('Horizontal Distance')
ylabel('Vertical Distance')


subplot(2,2,4)
for n = 1:3
    teta=pi/(2*n);
    vertical(n,:)=t.*v0*sin(teta)-(1/2)*g.*(t.^2);
    horizontal(n,:)=t.*v0*cos(teta);
end
hold on
plot(horizontal(1,:),vertical(1,:),'b')
plot(horizontal(2,:),vertical(2,:),'b--')
plot(horizontal(3,:),vertical(3,:),'b:')