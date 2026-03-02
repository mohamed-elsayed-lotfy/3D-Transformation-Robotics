%% Day 1 - 3D Rotation Matrices
% Robotics Transformation Project

clear
clc
close all

%% 1) Define rotation angle (in radians)
theta = pi/2;   % 90 degrees

%% 2) Rotation Matrix about Z-axis
Rz = [ cos(theta)  -sin(theta)   0;
       sin(theta)   cos(theta)   0;
       0            0            1 ];

disp('Rotation Matrix Rz = ')
disp(Rz)

%% 3) Orthogonality Check  (R * R^T = I)
orthogonality_test = Rz * Rz';
disp('R * R^T = ')
disp(orthogonality_test)

%% 4) Determinant Check (must equal 1)
determinant_value = det(Rz);
disp('det(R) = ')
disp(determinant_value)

%% 5) Rotate a Vector

v = [1; 0; 0];        % Original vector (along X-axis)
v_rotated = Rz * v;   % Rotated vector

disp('Original Vector = ')
disp(v)

disp('Rotated Vector = ')
disp(v_rotated)

%% 6) Visualization

figure
hold on
grid on
axis equal

% Original vector (Red)
quiver3(0,0,0, v(1),v(2),v(3), 'r', 'LineWidth',2)

% Rotated vector (Blue)
quiver3(0,0,0, v_rotated(1),v_rotated(2),v_rotated(3), 'b', 'LineWidth',2)

xlabel('X')
ylabel('Y')
zlabel('Z')
title('3D Rotation about Z-axis')

view(45,30)
