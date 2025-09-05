%% INFO
%%%%%%%%%%%%%% Author:  Mohamed Eid %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% Version: 1.0         %%%%%%%%%%%%%%%%

%% Parameters
g = 9.81;
mQ = 1.5;
l = 0.16;
IQ_x = 0.012273;
IQ_y = 0.012526;
IQ_z = 0.020953;
Kf = 21e-6;
Kd = 1.898e-7;

max_speed_rpm = 5000; % RPM
max_speed_rad = max_speed_rpm * (2*pi/60);

max_force_motor_Nm = Kf * max_speed_rad^2; 
max_force_Nm = (4*max_force_motor_Nm); 
max_drag_torque = Kd * max_speed_rad^2;

max_torque_roll_pitch = 2 * l * max_force_motor_Nm;
max_torque_yaw = 2 * max_drag_torque;