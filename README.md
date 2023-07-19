# Robotic-Kinematics
Solutions to simple forward and backward kinematic problems.

The geometry of  the robotic arm consists of links, which are shown by the connecting rods and joints. The joints used here are revolute. They are confined to 1 degree of freedom. Degrees of freedom are the number of parameters that fully define a system in its space. Active degrees of freedom are controlled by actuators while passive degrees of freedom are governed by the system's dynamics. Most robots are underactuated, which means the majority of degrees of freedom are passive and not controlled by the system's actuators.

Forward kinematics is done when the joint angles are known and the position of the end effector is to be determined. In robot arms, the joint angles are known as they are instrumented, and so it is of interest to figure out where the end effector will be given a set of joint angles. Inverse kinematics pose the opposite problem where the position of the end effector is known and joint angles are to be computed.

Inverse kinematics can be found from the forward kinematics by solving a system of equations. This system of equations is non-linear and can be solved with trigonometric identities.
Simpler cases like the one showcased here can be solved in MATLAB by making the desired variables symbolic and using the solve function.

Linkages where there is only one chain connecting the ground and the end effector are known as serial mechanisms. Parallel mechanisms have multiple chains connecting the ground and the end effector. Solving for parallel mechanisms is a lot harder.

For the parallel mechanisms problem, we used the minitaur robot's leg as an example with the motor angles represented as theta1 and theta2. The goal ws to use forward kinematics to solve for X and Y cordinates t
