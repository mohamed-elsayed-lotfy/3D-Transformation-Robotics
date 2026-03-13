# 3D Transformation & Frame Visualization (Robotics)

MATLAB implementation of fundamental 3D transformation concepts used in robotics and kinematics.

This project builds step-by-step understanding of:
- Rotation matrices
- Homogeneous transformations
- Frame visualization
- Transformation composition

---

## Project Structure

3D-Transformation-Robotics  
  
 day1_rotation.m  
 day2_transformation.m  
 day3_composition.m  
 day4_2DOF_arm.m
 day5_Robot Arm Animation
 day6_Robot Arm Workspace

  
  functions  
    rotZ.m  
    createTransform.m  
    drawFrame.m  
  
  images  
    day1_rotation.png  
    day2_transformation.png  
    day3_composition.png  
    day4_robot_arm.png
    day5_robotarmautomation.png
    day6_workspace.png
 

---

## Day 1 – Rotation Matrices

### Implemented
- Rotation about Z-axis  
- Orthogonality check (R * Rᵀ = I)  
- Determinant verification (det(R) = 1)  
- 3D vector rotation visualization  

### Mathematical Concept

A valid rotation matrix must satisfy:

RᵀR = I  
det(R) = 1  

### Key Insight

A rotation matrix must be orthogonal and have determinant equal to 1.

### Preview
<img width="693" height="524" alt="imagesday1_rotation" src="https://github.com/user-attachments/assets/fc610711-f545-43f8-baa8-8f70e7e2a48e" />

---

## Day 2 – Homogeneous Transformation

### Implemented
- Built 4×4 homogeneous transformation matrix  
- Combined rotation and translation  
- Transformed points between frames  
- Visualized Frame A and Frame B  

### Mathematical Formulation

Homogeneous transformation:

T = [ R  p  
      0  1 ]

Where:
- R is the rotation matrix  
- p is the translation vector  

### Key Insight

Rotation and translation can be unified into a single matrix using homogeneous coordinates.

### Preview
<img width="698" height="516" alt="imagesday2_transformation" src="https://github.com/user-attachments/assets/15416276-2879-4f26-ad57-a4c89ffe9880" />

---

## Day 3 – Transformation Composition & Modular Design

### Implemented
- Modular reusable functions (rotZ, createTransform, drawFrame)  
- Transformation composition  
- Visual comparison of multiplication order  
- Structured project into reusable components  

### Concept Demonstrated

T₁ = R × Trans  
T₂ = Trans × R  

Transformation order changes the final pose.

### Key Insight

Transformation composition order determines whether motion occurs in the global frame or the local frame.

### Preview
<img width="696" height="511" alt="imagesday3_composition" src="https://github.com/user-attachments/assets/b3ecc774-0dec-4b93-98f2-b30b2a1600b7" />

---

## Day 4 – 2DOF Robot Arm (Forward Kinematics)

### Implemented
- 2DOF planar robot arm
- Forward kinematics using transformation matrices
- Visualization of robot links and joints
- End-effector position extraction

### Concept Demonstrated
x = L1 cos(θ1) + L2 cos(θ1 + θ2)
y = L1 sin(θ1) + L2 sin(θ1 + θ2)

Forward kinematics computes the end-effector position from joint angles.

### Preview
<img width="686" height="522" alt="imagesday4_2DOF_arm m" src="https://github.com/user-attachments/assets/9aff8549-b0b2-4511-8534-61322ad95c44" />

---

## Day 5 – Robot Arm Animation

### Implemented
- Animated 2DOF robot arm
- Continuous joint motion
- Dynamic frame visualization

### Concept

Robot motion can be simulated by varying joint angles over time.

### Preview
<img width="600" height="625" alt="day5_robotarmautomation" src="https://github.com/user-attachments/assets/e3822f02-2b7c-4e59-b22b-b7c9f3a5812c" />


---
## Day 6 – Robot Arm Workspace

### Implemented
- Computed reachable workspace
- Sampled joint angles
- Visualized reachable points

### Concept

Robot workspace represents all positions the end effector can reach.

### Preview

<img width="693" height="552" alt="day6_workspace" src="https://github.com/user-attachments/assets/6ae4ef47-5dec-406a-b4e8-e2c49cb5e976" />

## Tools Used

- MATLAB  
- Linear Algebra  
- 3D Visualization  

---

## Learning Roadmap

This project is part of a structured robotics learning path progressing toward:

- Forward Kinematics  
- Denavit–Hartenberg Parameters  
- Jacobian Analysis  
- Robot Arm Simulation  
