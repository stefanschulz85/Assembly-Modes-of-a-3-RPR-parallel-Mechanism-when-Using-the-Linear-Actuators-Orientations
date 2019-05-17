# Assembly-Modes-of-a-3-RPR-parallel-Mechanism-when-Using-the-Linear-Actuators-Orientations
The direct kinematics problem is the problem of finding the actual position and orientation, also known as pose, of the moveable manipulator platform with respect to the fixed base platform from the active joints’ coordinates. In general, this problem has multiple solutions. For example, for the general planar 3-RPR parallel mechanism, where three linear actuators, that is, active prismatic joints (P-joints), connect the passive revolute joints (R-joints) of the fixed base platform with those of the moveable manipulator platform, By using the orientation angles of the linear actuators, provided, for example, by inertial measurement units, only two assembly modes exist that can be calculated analytically.

The project contains the following folders:
- General Code
- Static Example

In the folder "Gener Code", there are a matlab file "General_3RPR_Parallel_Mechanism.m", and a matlab function "Orientation_Based_Solution.m" provided.
The file "General_3RPR_Parallel_Mechanism.m" is a runable file where you can enter different base and manipulator platform joints' positions and test the approach for calculating the assembly modes when using exclusively the linear actuator's orientations.
The Matlab-Script runs as follows:
1. Enter the positions of the base and the manipulator platform joints.
2. Enter a desired pose of the manipulator platform you want to investigate. The pose is shown in Figure 1(a).
3. The Matlab-Script caluclates the linear actuator's orientations R for this pose of the manipulator platform.
4. The linear actuator's orientation angles (A,B,C) are claculated and, together with the constants (c,d,l), they are given to the function "Orientation_Based_Solution.m". 
5. The function "Orientation_Based_Solution.m" calculates the two possible solutions of the direct kinematics problem for the constants (c,d,l) and the linear actuator's orientation angles (A,B,C).
6. The results are shown in Figures 1(b) and 1(c).


