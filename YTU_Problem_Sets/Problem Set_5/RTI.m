dt = 0.05; %Solver timestep
y = [0; 0]; %initial position and velocity
Pos = NaN(10000,1);
Vel = NaN(10000,1);
fig2 = figure(2); %Phase space plot
p0 = plot(Pos,Vel);
xlabel('Position');
ylabel('Velocity');
fig = figure(1); %Only use figure 1
p1 = scatter(0,0); hold on %p1 is free moving body (blue)
p2 = scatter(0,0.25); hold off %P2 is force applied (orange)
xlim([-5 5])
ylim([-0.5 0.5])
set(fig,'WindowKeyPressFcn',@keyPressFun); %Set force to -1/1 for left/right arrow keys 
set(fig,'WindowKeyReleaseFcn',@keyReleaseFun); %Set force to zero when released
t_cur = 0;
Tit = title('','FontName','Courier New');
n = 1;
while 1
    y = RK4(@f,y,dt,t_cur); %Solve system
    p1.XData = y(1); %Update free body location
    if mod(n,3) == 0
        m = n/3;
    p0.XData(m) = y(1);
    p0.YData(m) = y(2);
    end
    pause(0.005) %Delay to avoid breaking computer
    t_cur = t_cur + dt; %Update time
    Tit.String = [num2str(1/2*5*y(2)^2+1/2*1*y(1)^2,5) ' ' num2str(n)]; %Total Energy of system as title
    n = n+1;
end
function dy = f(t,y) %System ODE
fig = figure(1);
F = fig.CurrentAxes.Children(1).XData; %Get force value from reference point
M = 5; %Mass
C = 0.15; %Damping
K = 1; %Stiffness
dy = zeros(2,1); %Preallocate output
dy(1) = y(2); %Get velocity
dy(2) = -K/M*y(1) - C/M*y(2)^2*sign(y(2))+F/M; %Get acceleration
end
%Runga Kutta 4th order
function [y_next] = RK4(f,y_cur,dt,t_cur)
k1 = f(t_cur         ,y_cur          );
k2 = f(t_cur + 0.5*dt,y_cur+0.5*dt*k1);
k3 = f(t_cur + 0.5*dt,y_cur+0.5*dt*k2);
k4 = f(t_cur +     dt,y_cur+    dt*k3);
y_next = y_cur+1/6*(k1 + 2*k2 + 2*k3 + k4)*dt;
end
%Set X coord of reference point to 1 or -1 depending on
%what key is pressed. Used for force
function keyPressFun(source,eventdata)
keyPressed = eventdata.Key;
fig = gcf;
if strcmpi(keyPressed,'rightarrow')
    fig.CurrentAxes.Children(1).XData = 1;
elseif strcmpi(keyPressed,'leftarrow')
    fig.CurrentAxes.Children(1).XData = -1;
end
end
%Set X coord of reference point to 0 when key is released
function keyReleaseFun(source,eventdata)
keyPressed = eventdata.Key;
fig = gcf;
fig.CurrentAxes.Children(1).XData = 0;
end