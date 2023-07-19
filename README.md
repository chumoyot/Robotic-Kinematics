# Robotic-Kinematics
Solutions to simple forward and backward kinematic problems.
From Coursera Robotics Specialization by the University of Pennsylvania.

The geometry of  the robotic arm consists of links, which are shown by the connecting _rods_ and _joints_. The _joints_ used here are revolute. They are confined to 1 degree of freedom. _Degrees of freedom_ are the number of parameters that fully define a system in its space. _Active degrees_ of freedom are controlled by actuators while _passive degrees of freedom_ are governed by the system's dynamics. Most robots are _underactuated_, which means the majority of degrees of freedom are passive and not controlled by the system's actuators.

_Forward kinematics_ is done when the joint angles are known and the position of the end effector is to be determined. In robot arms, the joint angles are known as they are instrumented, and so it is of interest to figure out where the end effector will be given a set of joint angles. _Inverse kinematics_ pose the opposite problem where the position of the end effector is known and joint angles are to be computed.

_Inverse kinematics_ can be found from the forward kinematics by solving a system of equations. This system of equations is non-linear and can be solved with trigonometric identities.
Simpler cases like the one showcased here can be solved in MATLAB by making the desired variables _symbolic_ and using the _solve_ function.

Linkages where there is only one chain connecting the ground and the end effector are known as _seria_l mechanisms. _Parallel_ mechanisms have multiple chains connecting the ground and the end effector. Solving for parallel mechanisms is a lot harder.

For the parallel mechanisms problem, we used the minitaur robot's leg as an example with the motor angles represented as theta1 and theta2. The goal was to use forward kinematics to solve for the X and Y coordinates of the end effector. Here is the image of the robot courtesy of _ODriverobotics.com_

![odrive](https://github.com/chumoyot/Robotic-Kinematics/assets/135506318/1cf8d8cd-9118-4455-81ce-230c12ff73da)

This task is greatly simplified if coordinate changes are used. The first coordinate change that will be helpful is to go from _theta1_ and _theta2_ to _alpha_ and_ beta_, the mean and different coordinates. Once alpha and beta are computed, a further coordinate change to polar coordinates helps solve the problem. 

The link between joint velocities and end effector velocities is described by _Jacobian, J_, computed where the _rows_ represent the system of equations and the _columns_ indicate the partial derivatives of the various joint angles. The Jacobian transpose can be used to connect the forces at the end effector to the torques at the joints because of the concept of virtual work.

This Jacobian transposition inverse is a representation of the system's actual mechanical advantage. It converts joint torques into forces at the end effector on a scale.

Here is the MATLAB output of the parallel mechanism _minotaur's leg._

![minotaur's leg](https://github.com/chumoyot/Robotic-Kinematics/assets/135506318/2bd77ff6-320f-4c5f-baf7-62990830ccca)

For the serial mechanisms, here is the plot of a revolute-revolute joint where inverse kinematics was done to find the joint angles. The slider is used to give the _X_ and _Y _inputs of the end effector.

![Screenshot 2023-07-19 222207](https://github.com/chumoyot/Robotic-Kinematics/assets/135506318/598a8936-7712-4635-ac7a-8f07294a74de)
