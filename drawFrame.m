function drawFrame(T, scale)

origin = T(1:3,4);
R = T(1:3,1:3);

x_axis = R(:,1) * scale;
y_axis = R(:,2) * scale;
z_axis = R(:,3) * scale;

quiver3(origin(1),origin(2),origin(3), x_axis(1),x_axis(2),x_axis(3),'r','LineWidth',2)
hold on
quiver3(origin(1),origin(2),origin(3), y_axis(1),y_axis(2),y_axis(3),'g','LineWidth',2)
quiver3(origin(1),origin(2),origin(3), z_axis(1),z_axis(2),z_axis(3),'b','LineWidth',2)

end