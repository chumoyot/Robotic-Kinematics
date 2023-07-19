function [endeff] = computeMiniForwardKinematics(rads1,rads2)
% rads1=3.5;
% rads2=1.5;
L1=1;
L2=2;
alpha =  (rads1 + rads2)/2 + pi; 

beta = (rads1 - rads2)/2; 

r = sqrt(L2^2 - (L1 * sin(beta))^2) - (L1 * cos(beta)); 

y = r*sin(alpha);       % should be x = r*sin(alpha); 

x = -r*cos(alpha);     % should be y = -r*cos(alpha);

endeff = [ x, y]
