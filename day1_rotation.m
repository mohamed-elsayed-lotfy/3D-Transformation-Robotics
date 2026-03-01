clear
clc
close all

theta = pi/2; %90 degree

Rz = [cos(theta) -sin(theta) 0;
      sin(theta)  cos(theta) 0;
       0          0          1]


inv(Rz)
Rz' * Rz
Rz

v = [1;0;0];
v_new = Rz * v

figure
quiver3(0,0,0, v(1),v(2),v(3), 'r','LineWidth',2)
hold on
quiver3(0,0,0, v_new(1),v_new(2),v_new(3), 'b','LineWidth',2)
grid on
axis equal
xlabel('X')
ylabel('Y')
zlabel('Z')