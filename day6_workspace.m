%% Day 6 - Robot Arm Workspace

clear
clc
close all

addpath('functions')

%% Link lengths
L1 = 2;
L2 = 1.5;

%% Angle ranges
theta1_range = linspace(0,pi,100);
theta2_range = linspace(0,pi,100);

points = [];

for t1 = theta1_range

    for t2 = theta2_range

        %% Transformations
        R1 = rotZ(t1);
        T1 = createTransform(R1,[L1;0;0]);

        R2 = rotZ(t2);
        T2 = createTransform(R2,[L2;0;0]);

        T_end = T1*T2;

        %% End effector position
        p = T_end(1:3,4);

        points = [points p];

    end

end

%% Visualization
figure
scatter(points(1,:),points(2,:),5,'filled')

axis equal
grid on

xlabel('X')
ylabel('Y')

title('2DOF Robot Arm Workspace')