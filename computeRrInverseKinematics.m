function [rads1,rads2] = computeRrInverseKinematics(X,Y)

syms theta1 theta2 ;

eqn1= cos(theta1) + cos(theta1+theta2)==X;
eqn2= sin(theta1) + sin(theta1+theta2)==Y;

eqns=[eqn1,eqn2];
S=solve(eqns);

rads1=double(S.theta1(1,1))
rads2=double(S.theta2(1,1))

end