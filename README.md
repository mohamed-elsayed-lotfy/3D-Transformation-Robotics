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
│  
├── day1_rotation.m  
├── day2_transformation.m  
├── day3_composition.m  
│  
├── functions  
│   ├── rotZ.m  
│   ├── createTransform.m  
│   └── drawFrame.m  
│  
├── images  
│   ├── day1_rotation.png  
│   ├── day2_transformation.png  
│   └── day3_composition.png  
│  
└── README.md  

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

<p align="center">
  <img src="images/day1_rotation.png" width="500">
</p>

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

<p align="center">
  <img src="images/day2_transformation.png" width="500">
</p>

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

<p align="center">
  <img src="images/day3_composition.png" width="500">
</p>

---

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
