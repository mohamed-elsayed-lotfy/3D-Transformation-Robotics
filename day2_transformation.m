clear
clc
close all

%% Step 1: Define rotation angle
theta = pi/4;   % 45 degrees

%% Step 2: Rotation about Z-axis
Rz = [cos(theta)  -sin(theta)   0;
      sin(theta)   cos(theta)   0;
      0            0            1];

%% Step 3: Translation vector
p = [2; 1; 0];

%% Step 4: Build Homogeneous Transformation Matrix
T = [Rz  p;
     0 0 0 1];

disp('Transformation Matrix T = ')
disp(T)

%% Step 5: Define a point in Frame B (homogeneous coordinates)
P_B = [1; 0; 0; 1];

%% Step 6: Transform point to Frame A
P_A = T * P_B;

disp('Point in Frame A = ')
disp(P_A)

%% Step 7: Visualization

figure
hold on
grid on
axis equal
xlabel('X')
ylabel('Y')
zlabel('Z')
title('Frame A and Frame B Visualization')

% Draw Frame A (identity)
drawFrame(eye(4),1);

% Draw Frame B
drawFrame(T,1);

% Draw transformed point
plot3(P_A(1),P_A(2),P_A(3),'ko','MarkerSize',8,'MarkerFaceColor','k');

view(45,30)

%% --------- Function ---------
function drawFrame(T, scale)

origin = T(1:3,4);
R = T(1:3,1:3);

x_axis = R(:,1) * scale;
y_axis = R(:,2) * scale;
z_axis = R(:,3) * scale;

quiver3(origin(1),origin(2),origin(3), x_axis(1),x_axis(2),x_axis(3),'r','LineWidth',2)
quiver3(origin(1),origin(2),origin(3), y_axis(1),y_axis(2),y_axis(3),'g','LineWidth',2)
quiver3(origin(1),origin(2),origin(3), z_axis(1),z_axis(2),z_axis(3),'b','LineWidth',2)

end