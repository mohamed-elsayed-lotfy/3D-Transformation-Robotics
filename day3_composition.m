%% Day 3 - Transformation Composition & Modular Design
% 3D Transformation & Frame Visualization Project

clear
clc
close all

% Add functions folder to path
addpath('functions')

%% Parameters
theta = pi/2;          % 90 degrees
p = [2; 0; 0];         % Translation along X

%% Create rotation and translation transforms
R = rotZ(theta);

T_rot   = createTransform(R, zeros(3,1));   % Pure rotation
T_trans = createTransform(eye(3), p);       % Pure translation

%% Compose in two different orders
T1 = T_rot * T_trans;     % Move then rotate
T2 = T_trans * T_rot;     % Rotate then move

%% Visualization
figure
hold on
grid on
axis equal
xlabel('X')
ylabel('Y')
zlabel('Z')

title('T1 = R * Trans     vs     T2 = Trans * R')

xlim([-2 4])
ylim([-2 4])
zlim([-1 2])

% Reference frame (larger)
drawFrame(eye(4),1.2)

% T1 result
drawFrame(T1,1)

% T2 result (slightly smaller)
drawFrame(T2,0.8)

view(45,30)