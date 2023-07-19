# Robotic-Kinematics
Solutions to simple forward and backward kinematic problems.

The geometry of  the robotic arm consists of links, which are shown by the connecting rods and joints. The joints used here are revolute. They are confined to 1 degree of freedom. Degrees of freedom are the number of parameters that fully define a system in its space. Active degrees of freedom are controlled by actuators while passive degrees of freedom are governed by the system's dynamics. Most robots are underactuated, which means the majority of degrees of freedom are passive and not controlled by the system's actuators.

Forward kinematics is done when the joint angles are known and the position of the end effector is to be determined. In robot arms, the joint angles are known as they are instrumented, and so it is of interest to figure out where the end effector will be given a set of joint angles. Inverse kinematics pose the opposite problem where the position of the end effector is known and joint angles are to be computed.

Inverse kinematics can be found from the forward kinematics by solving a system of equations. This system of equations is non-linear and can be solved with trigonometric identities.
Simpler cases like the one showcased here can be solved in MATLAB by making the desired variables symbolic and using the solve function.

Linkages where there is only one chain connecting the ground and the end effector are known as serial mechanisms. Parallel mechanisms have multiple chains connecting the ground and the end effector. Solving for parallel mechanisms is a lot harder.

For the parallel mechanisms problem, we used the minitaur robot's leg as an example with the motor angles represented as theta1 and theta2. The goal was to use forward kinematics to solve for the X and Y coordinates of the end effector. Here is the image of the robot courtesy of ODriverobotics.com

![odrive](https://github.com/chumoyot/Robotic-Kinematics/assets/135506318/1cf8d8cd-9118-4455-81ce-230c12ff73da)

This task is greatly simplified if coordinate changes are used. The first coordinate change that will be helpful is to go from theta1 and theta2 to alpha and beta, the mean and different coordinates. Once alpha and beta are computed, a further coordinate change to polar coordinates helps solve the problem. 

The link between joint velocities and end effector velocities is described by Jacobian, J, computed where the rows represent the system of equations and the columns indicate the partial derivatives of the various joint angles. The Jacobian transpose can be used to connect the forces at the end effector to the torques at the joints because of the concept of virtual work.

This Jacobian transposition inverse is a representation of the system's actual mechanical advantage. It converts joint torques into forces at the end effector on a scale.

Here is the MATLAB output of the parallel mechanism minotaur's leg.

![minotaur's leg](https://github.com/chumoyot/Robotic-Kinematics/assets/135506318/2bd77ff6-320f-4c5f-baf7-62990830ccca)

For the serial mechanisms, here is the plot of a revolute-revolute joint where inverse kinematics was done to find the joint angles. The slider is used to give the X and Y inputs of the end effector.

![Screenshot 2023-07-19 222207](https://github.com/chumoyot/Robotic-Kinematics/assets/135506318/598a8936-7712-4635-ac7a-8f07294a74de)
