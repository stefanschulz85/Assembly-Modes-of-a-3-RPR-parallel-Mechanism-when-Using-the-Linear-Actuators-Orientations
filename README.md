# Assembly-Modes-of-a-3-RPR-parallel-Mechanism-when-Using-the-Linear-Actuators-Orientations

The video of the 3-RPR parallel mechanism and the performance of the sensor concept for solving the direct kinematics problem
by using solely the linear actuators' orientations can be found [here]. The video can be watched, for example, by downloading the entired project or by using this [download link]. The video can also be found on [my ResearchGate account].

[here]:https://github.com/stefanschulz85/Assembly-Modes-of-a-3-RPR-parallel-Mechanism-when-Using-the-Linear-Actuators-Orientations/blob/master/video/Demonstration_Video_3RPR.mp4
[download link]:https://github.com/stefanschulz85/Assembly-Modes-of-a-3-RPR-parallel-Mechanism-when-Using-the-Linear-Actuators-Orientations/archive/master.zip
[my ResearchGate account]:https://www.researchgate.net/profile/Stefan_Schulz11

______________________________________________________________________________________________________________________

The direct kinematics problem is the problem of finding the actual position and orientation, also known as pose, of the moveable manipulator platform with respect to the fixed base platform from the active joints’ coordinates. In general, this problem has multiple solutions. For example, for the general planar 3-RPR parallel mechanism, where three linear actuators, that is, active prismatic joints (P-joints), connect the passive revolute joints (R-joints) of the fixed base platform with those of the moveable manipulator platform, By using the orientation angles of the linear actuators, provided, for example, by inertial measurement units, only two assembly modes exist that can be calculated analytically.
Figure 1 is showing the invesitgated 3-RPR parallel mechanism, Figure 2 shows the six possible assembly modes, i. e., possible poses of the manipulator platform, for a given set of linear actuators' lengths.
In contrast, Figure 3 shows the two possible solutions for the direct kinematics probelm when instead the linear actuators' orientations are used. 

As an alternative, it is also possible to measure two of the linear actuators' orientations together with the orientation of the manipulator platform. In this case, only one possible assembly mode remains and a unique solution can be found. See, for example, [IROS2017], [ICRA2018], [IROS2018], [Robotics2018], [ARK2018], or [my ResearchGate account].

[IROS2017]:https://ieeexplore.ieee.org/document/8206015
[ICRA2018]:https://ieeexplore.ieee.org/document/8460544
[IROS2018]:https://ieeexplore.ieee.org/abstract/document/8594039
[Robotics2018]:https://www.hindawi.com/journals/jr/2018/2412608
[ARK2018]:https://link.springer.com/chapter/10.1007/978-3-319-93188-3_7

<img src="https://github.com/stefanschulz85/Assembly-Modes-of-a-3-RPR-parallel-Mechanism-when-Using-the-Linear-Actuators-Orientations/blob/master/pictures/General_3RPR.png" width="253" height="275" title="General planar 3-RPR parallel mechanism with the three base platform joints A, B, and C and the three manipulator platform joints D, E, and F. The pose of the manipulator platform is given by the position of joint D and the platform’s orientation g with respect to the shown coordinate system.">

Figure 1: General planar 3-RPR parallel mechanism with the three base platform joints A, B, and C and the three manipulator platform joints D, E, and F. The pose of the manipulator platform is given by the position of joint D and the platform’s orientation g with respect to the shown coordinate system.

<img src="https://github.com/stefanschulz85/Assembly-Modes-of-a-3-RPR-parallel-Mechanism-when-Using-the-Linear-Actuators-Orientations/blob/master/pictures/Assembly_Modes_C.png" width="376" height="415" title="Assembly modes (shown in blue, red, green, orange, yellow, and brown) for the manipulator platform of the general planar 3-RPR parallel mechanism when using the linear actuators’ lengths.">

Figure 2: Assembly modes (shown in blue, red, green, orange, yellow, and brown) for the manipulator platform of the general planar 3-RPR parallel mechanism when using the linear actuators’ lengths.

<img src="https://github.com/stefanschulz85/Assembly-Modes-of-a-3-RPR-parallel-Mechanism-when-Using-the-Linear-Actuators-Orientations/blob/master/pictures/Assembly_Modes_A.png" width="280" height="692" title="The two assembly modes (shown in blue and red) for the manipulator platform of the general planar 3-RPR parallel mechanism when using the linear actuators’ orientations.">

Figure 3: The two assembly modes (shown in blue and red) for the manipulator platform of the general planar 3-RPR parallel mechanism when using the linear actuators’ orientations.

<img src="https://github.com/stefanschulz85/Assembly-Modes-of-a-3-RPR-parallel-Mechanism-when-Using-the-Linear-Actuators-Orientations/blob/master/pictures/IMG_9786_2.JPG" width="478" height="286" title="Experimental prototype of the general planar 3-RPR parallel mechanism with IMUs mounted on the linear actuators and an Arduino Uno with a display integrated in the base to calculate and show the two assembly modes of the manipulator platform.">

Figure 4: Experimental prototype of the general planar 3-RPR parallel mechanism with IMUs mounted on the linear actuators and an Arduino Uno with a display integrated in the base to calculate and show the two assembly modes of the manipulator platform.

______________________________________________________________________________________________________________________

The project currently contains the following folders:
- General Code
- Static Example
- pictures
- video

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

In the folder "picture", there are relevant pictures shown, for example in this "readme.md" file.

The folder "video" contains the demonstration video mentioned above. Sadly it cannot be played in this "readme.md" file and neither by clicking on the video in the folder. By downloading it, as mentioned above, it is however possible.
