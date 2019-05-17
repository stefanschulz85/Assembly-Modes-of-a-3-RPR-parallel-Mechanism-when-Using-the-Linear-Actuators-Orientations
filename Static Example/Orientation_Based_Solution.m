function [pose] = Orientation_Based_Solution(A,B,C,c,d,l)


F = ((c(2)*l(1)+c(2)*l(2))*C^2+(((-c(1)-c(2))*l(1)-l(2)*c(1))*B+(d(1)-d(2))*l(1)+(d(1)-d(2))*l(2))*C+c(1)*l(1)*B^2+(-d(1)+d(2))*l(1)*B)*A^2+((((c(1)-c(2))*l(1)+(c(1)-2*c(2))*l(2))*B-d(1)*l(1)-d(1)*l(2))*C^2+(((-c(1)+c(2))*l(1)+l(2)*c(1))*B^2+((d(1)+d(2))*l(1)+(-d(1)+2*d(2))*l(2))*B)*C-B^2*d(2)*l(1))*A+((-c(1)+c(2))*l(2)*B^2+d(1)*l(2)*B)*C^2-B^2*C*d(2)*l(2);
G = (B-C)^2*(A^2+1)*l(1)^2 +(A-B)^2*l(2)^2*(C^2+1) -2*l(1)*l(2)*(A-B)*(B-C)*(A*C+1);
H = A*(B-C)*l(1)-C*l(2)*(A-B);    
I = (-B+C)*l(1)+l(2)*(A-B);       
E = (((-c(1)+c(2))*C+c(1)*A-d(2))*B+(-A*c(2)+d(1))*C-A*(d(1)-d(2)))*I^2;
D = sqrt(-I^2*(-G+E^2/I^4));

for t=1:2
    if t==1
        gamma(t)=-atan2((H*D-E)/(G*I),(F+D)/G)*180/pi;
    elseif t==2
        gamma(t)=-atan2((-H*D-E)/(G*I),(F-D)/G)*180/pi;    
    end
    x(t) = ((l(1)+l(2))*(-sin(gamma(t)*pi/180)+C*cos(gamma(t)*pi/180))-C*c(2)+d(2))/(A-C);
    y(t) = A*x(t);
end

pose=[x' y' gamma'];

end


function R = Rot2D(alpha_A) 

a_A = pi/180*alpha_A;
R =     [cos(a_A) -sin(a_A); sin(a_A) cos(a_A)];

end
