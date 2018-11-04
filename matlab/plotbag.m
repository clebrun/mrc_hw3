%% plotbag script

bag = rosbag('myturtle.bag');

bagselect1 = select(bag, 'Topic', 'turtle1/pose');

ts = timeseries(bagselect1,'X', 'Y', 'Theta', 'LinearVelocity', 'AngularVelocity');

x = ts.Data(:,1);
y = ts.Data(:,2);
th = ts.Data(:,3);
vel = ts.Data(:,4);

figure(1)
plot(x,y)
title('X and Y Loactions of Turtle')
xlabel('X position ($\bar{m}$)', 'interpreter', 'latex')
ylabel('Y position ($\bar{m}$)', 'interpreter', 'latex')

figure(2)
plot(ts.Time, th)
xlabel('Time ($\bar{s}$)', 'interpreter', 'latex')
ylabel('Heading (radians)')
title('Heading vs. Time')

u = vel.*cos(th);
v = vel.*sin(th);
ii = 1:10:length(u);

figure(3)
quiver(x(ii), y(ii), u(ii), v(ii))
title('Quiver Plot of turtle1/pose')
xlabel('X ($\bar{m}$)','interpreter','latex')
ylabel('Y ($\bar{m}$)','interpreter','latex')