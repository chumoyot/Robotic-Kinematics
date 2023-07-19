function [endeffector] = computeMiniForwardKinematics(rads1,rads2)

L1=1;
L2=2;
alpha =  (rads1 + rads2)/2 + pi; 

beta = (rads1 - rads2)/2; 

r = sqrt(L2^2 - (L1 * sin(beta))^2) - (L1 * cos(beta)); 

y = r*sin(alpha);       

x = -r*cos(alpha);     

endeffector = [ x, y]
