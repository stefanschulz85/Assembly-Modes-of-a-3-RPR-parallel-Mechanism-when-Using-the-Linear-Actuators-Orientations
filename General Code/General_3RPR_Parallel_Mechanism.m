%% Performance Evaluation of a Sensor Concept
%  for Solving the Direct Kinematics Problem
%  of General Planar 3-RPR Parallel Mechanisms
%  by Using Solely the Linear Actuators’ Orientations

% In this Matlab-Script, you can enter different base and manipulator
% platform joints' positions and test the approach for calculating the
% assembly modes when using exclusively the linear actuator's orientations.
% The Matlab-Script runs as follows:
% 1. Enter the positions of the base and the manipulator platform joints.
% 2. Enter a desired pose of the manipulator platform you want to
% investigate. The pose is shown in Figure 1.
% 3. The Matlab-Script caluclates the linear actuator's orientations R for
% this pose of the manipulator platform.
% 4. The linear actuator's orientation angles (A,B,C) are claculated and,
% together with the constants (c,d,l), they are given to the function "Orientation_Based_Solution.m" 
% 5. The function "Orientation_Based_Solution.m" calculates the two
% possible solutions of the direct kinematics problem for the constants
% (c,d,l) and the linear actuator's orientation angles (A,B,C).
% 6. The results are shown in Figures 2 and 3

clear all
close all
clc

% Enter the base and manipulator platform joints' positions here:
A1=[0 0; 40 10; 90 -20]';   %% base platform
B1=[0 0; 25 0; 60 0]';      %% manipulator platform


% Enter the investigated pose here:
OB_real=[10 80]';
phi_real=-20;
Rot=Rot2D(phi_real);
for i=1:3
    OB_i(:,i)=Rot*B1(:,i)+OB_real(:);
end

AB_i = OB_i-A1;

figure;
subplot(1,3,1)
for i=1:3
plot(A1(1,i),A1(2,i),'k*')
hold on
plot(OB_i(1,i),OB_i(2,i),'k*')
line([A1(1,i) OB_i(1,i)],[A1(2,i) OB_i(2,i)],'color','black')
end
plot(A1(1,1),A1(2,1),'k*')
plot(OB_real(1,1),OB_real(2,1),'k*')
line([A1(1,1) A1(1,3)],[A1(2,1) A1(2,3)],'color','black')
line([OB_i(1,1) OB_i(1,3)],[OB_i(2,1) OB_i(2,3)],'color','black')
grid on
axis equal
xlabel('x (mm)')
ylabel('y(mm)')
title(['Inverse Kinematic Solution']);

for i=1:3
    R(:,i)=AB_i(:,i)/norm(AB_i(:,i));
end

c=[A1(1,2)-A1(1,1) A1(1,3)-A1(1,1)];
d=[A1(2,2)-A1(2,1) A1(2,3)-A1(2,1)];
l=[B1(1,2)-B1(1,1) B1(1,3)-B1(1,2)];

A = tan(atan2(R(2,1),R(1,1)));
B = tan(atan2(R(2,2),R(1,2)));
C = tan(atan2(R(2,3),R(1,3)));


[pose] = Orientation_Based_Solution(A,B,C,c,d,l)
for t=1:2
    subplot(1,3,t+1)
    if t==1
        color=['blue'];
    else
        color=['red'];
    end
    Rot=Rot2D(pose(t,3));
    for i=1:3
        OB_i(:,i)=Rot*B1(:,i)+pose(t,1:2)';
    end
    AB_i = OB_i-A1;
    for i=1:3
    plot(A1(1,i),A1(2,i),'*','color',color)
    hold on
    plot(OB_i(1,i),OB_i(2,i),'*','color',color)
    line([A1(1,i) OB_i(1,i)],[A1(2,i) OB_i(2,i)],'color',color)
    end
    plot(A1(1,1),A1(2,1),'*','color',color)
    plot(pose(t,1),pose(t,2),'*','color',color)
    line([A1(1,1) A1(1,3)],[A1(2,1) A1(2,3)],'color',color)
    line([OB_i(1,1) OB_i(1,3)],[OB_i(2,1) OB_i(2,3)],'color',color)
    grid on
    axis equal
    xlabel('x (mm)')
    ylabel('y(mm)')
    title(['Solution', num2str(t+1)]);
end







function R = Rot2D(alpha_A) 

a_A = pi/180*alpha_A;

R =     [cos(a_A) -sin(a_A); sin(a_A) cos(a_A)];

end

