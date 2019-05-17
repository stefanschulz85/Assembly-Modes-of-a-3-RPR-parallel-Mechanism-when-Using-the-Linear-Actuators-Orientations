# Assembly-Modes-of-a-3-RPR-parallel-Mechanism-when-Using-the-Linear-Actuators-Orientations
The direct kinematics problem is the problem of finding the actual position and orientation, also known as pose, of the moveable manipulator platform with respect to the fixed base platform from the active joints’ coordinates. In general, this problem has multiple solutions. For example, for the general planar 3-RPR parallel mechanism, where three linear actuators, that is, active prismatic joints (P-joints), connect the passive revolute joints (R-joints) of the fixed base platform with those of the moveable manipulator platform, By using the orientation angles of the linear actuators, provided, for example, by inertial measurement units, only two assembly modes exist that can be calculated analytically.

![General planar 3-RPR parallel mechanism with the three base platform joints A, B, and C and the three manipulator platform joints D, E, and F. The pose of the manipulator platform is given by the position of joint D and the platform’s orientation g with respect to the shown coordinate system.](https://github.com/stefanschulz85/Assembly-Modes-of-a-3-RPR-parallel-Mechanism-when-Using-the-Linear-Actuators-Orientations/pictures/General_3RPR.png)

The project contains the following folders:
- General Code
- Static Example

In the folder "General Code", there are a matlab file "General_3RPR_Parallel_Mechanism.m", and a matlab function "Orientation_Based_Solution.m" provided.
The file "General_3RPR_Parallel_Mechanism.m" is a runable file where you can enter different base and manipulator platform joints' positions and test the approach for calculating the assembly modes when using exclusively the linear actuator's orientations.
The Matlab-Script runs as follows:
1. Enter the positions of the base and the manipulator platform joints.
2. Enter a desired pose of the manipulator platform you want to investigate. The pose is shown in Figure 1(a).
3. The Matlab-Script caluclates the linear actuator's orientations R for this pose of the manipulator platform.
4. The linear actuator's orientation angles (A,B,C) are claculated and, together with the constants (c,d,l), they are given to the function "Orientation_Based_Solution.m". 
5. The function "Orientation_Based_Solution.m" calculates the two possible solutions of the direct kinematics problem for the constants (c,d,l) and the linear actuator's orientation angles (A,B,C).
6. The results are shown in Figures 1(b) and 1(c).

In the folder "Static Example", there are two files ("Evaluation.m" and "Orientation_Based_Solution.m") and a folder with the experimental results of ten static experiments where 500 measurements were taken with the IMUs.
In the runable matlab file "Evaluation.m", you can evaluate the en different static poses of the 3-RPR parallel mechanism with given base and manipulator platform joints' positions. The matlab file reads the measured linear actuators orientation angles for the static poses and then calculates the results with the matlab function "Orientation_Based_Solution.m". The matlab file then compares the results of the raw linear actuators orientation angles, the Kalman-filtered orientation angles, and the complementary filtered orientation angles with the actual results that were obtained by image processing. The investigated pose, and the errors for each axis as boxplots were displayed in a separate figures for every investigated pose. 

![Experimental prototype of the general planar 3-RPR parallel mechanism with IMUs mounted on the linear actuators and an Arduino Uno with a display integrated in the base to calculate and show the two assembly modes of the manipulator platform.](https://github.com/stefanschulz85/Assembly-Modes-of-a-3-RPR-parallel-Mechanism-when-Using-the-Linear-Actuators-Orientations/pictures/General_3RPR.png)
