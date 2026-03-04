%% Day 4 - 2DOF Planar Robot Arm (Forward Kinematics)

clear
clc
close all

addpath('functions')

%% Link lengths
L1 = 2;
L2 = 1.5;

%% Joint angles (radians)
theta1 = pi/4;
theta2 = pi/6;

%% Transformation from Base to Joint 1
R1 = rotZ(theta1);
T1 = createTransform(R1, [L1; 0; 0]);

%% Transformation from Joint 1 to Joint 2
R2 = rotZ(theta2);
T2 = createTransform(R2, [L2; 0; 0]);

%% Forward Kinematics
T_end = T1 * T2;

%% Extract joint positions
base = [0;0;0];
joint1 = T1(1:3,4);
end_effector = T_end(1:3,4);

%% Visualization
figure
hold on
grid on
axis equal

xlabel('X')
ylabel('Y')
zlabel('Z')
title('2DOF Planar Robot Arm - Forward Kinematics')

xlim([-4 4])
ylim([-4 4])
zlim([-1 1])

% Draw links
plot3([base(1) joint1(1)], [base(2) joint1(2)], [0 0], 'k', 'LineWidth',3)
plot3([joint1(1) end_effector(1)], [joint1(2) end_effector(2)], [0 0], 'k', 'LineWidth',3)

% Draw frames
drawFrame(eye(4),0.5)
drawFrame(T1,0.5)
drawFrame(T_end,0.5)

% Draw end effector
plot3(end_effector(1), end_effector(2), 0, 'ro', 'MarkerSize',8, 'MarkerFaceColor','r')

view(45,30)