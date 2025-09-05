%% INFO
%%%%%%%%%%%%%% Author:  Mohamed Eid %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% Version: 1.0         %%%%%%%%%%%%%%%%

%% States & Parameters

clear
clc

% Define parameters
Parameters

%% Trajectory

% Generate tajectories
%trajectory;

%% Simulation

% Run system
step_size = 0.001;
Data = sim('..\Simulink Models\Quaternion Control\Quadcopter_CTC_Quaternion_Control.slx');

% %% Visulization
% 
% % Path
% f1 = figure('Name','Path','NumberTitle','off');
% plot3(Data.X.Data, Data.Y.Data, Data.Z.Data(:,2), 'lineWidth',3)
% grid on
% title('Quadcopter Trajectory')
% xlabel('X Position')
% ylabel('Y Position')
% zlabel('Z Position')
% 
% % X_Direction
% f = figure('Name','X_Direction','NumberTitle','off');
% f.Position = [50 0 1500 400];
% subplot (1, 3, 1)
% plot (Data.X.Time, Data.X.Data)
% grid
% xlabel ('Time(sec)')
% ylabel('Position')
% legend('Actual Position')
% subplot (1, 3, 2)
% plot (Data.X.Time, Data.Xd.Data)
% grid
% xlabel ('Time(sec)')
% ylabel('Velocity')
% legend('Actual Velocity')
% subplot (1, 3, 3)
% plot (Data.X.Time, Data.Xdd.Data)
% grid
% xlabel ('Time(sec)')
% ylabel('Acceleration')
% legend('Actual Acceleration')
% 
% % Y_Direction
% f = figure('Name','Y_Direction','NumberTitle','off');
% f.Position = [50 0 1500 400];
% subplot (1, 3, 1)
% plot (Data.Y.Time, Data.Y.Data)
% grid
% xlabel ('Time(sec)')
% ylabel('Position')
% legend('Actual Position')
% subplot (1, 3, 2)
% plot (Data.Y.Time, Data.Yd.Data)
% grid
% xlabel ('Time(sec)')
% ylabel('Velocity')
% legend('Actual Velocity')
% subplot (1, 3, 3)
% plot (Data.Y.Time, Data.Ydd.Data)
% grid
% xlabel ('Time(sec)')
% ylabel('Acceleration')
% legend('Actual Acceleration')
% 
% % Altitude
% f = figure('Name','Altitude','NumberTitle','off');
% f.Position = [50 0 1500 800];
% subplot (2, 3, 1)
% plot (Data.Z.Time, Data.Z.Data)
% grid
% xlabel ('Time(sec)')
% ylabel('Position')
% legend('Desired Altitude','Actual Altitude')
% subplot (2, 3, 2)
% plot (Data.Z.Time, Data.Zd.Data)
% grid
% xlabel ('Time(sec)')
% ylabel('Velocity')
% legend('Desired Velocity','Actual Velocity')
% subplot (2, 3, 3)
% plot (Data.Z.Time, Data.Zdd.Data)
% grid
% xlabel ('Time(sec)')
% ylabel('Acceleration')
% legend('Desired Acceleration','Actual Acceleration')
% subplot (2, 3, 4)
% plot (Data.Z.Time, Data.Z.Data(:,1)-Data.Z.Data(:,2))
% grid
% xlabel ('Time(sec)')
% ylabel('Position Error')
% subplot (2, 3, 5)
% plot (Data.Z.Time, Data.Zd.Data(:,1)-Data.Zd.Data(:,2))
% grid
% xlabel ('Time(sec)')
% ylabel('Velocity Error')
% subplot (2, 3, 6)
% plot (Data.Z.Time, Data.Zdd.Data(:,1)-Data.Zdd.Data(:,2))
% grid
% xlabel ('Time(sec)')
% ylabel('Acceleration Error')
% 
% % Roll
% f = figure('Name','Roll','NumberTitle','off');
% f.Position = [50 0 1500 800];
% subplot (2, 3, 1)
% plot (Data.phi.Time, Data.phi.Data)
% grid
% xlabel ('Time(sec)')
% ylabel('Roll')
% legend('Desired Position','Actual Position')
% subplot (2, 3, 2)
% plot (Data.phi.Time, Data.phi_d.Data)
% grid
% xlabel ('Time(sec)')
% ylabel('Roll Velocity')
% legend('Desired Velocity','Actual Velocity')
% subplot (2, 3, 3)
% plot (Data.phi.Time, Data.phi_dd.Data)
% grid
% xlabel ('Time(sec)')
% ylabel('Roll Acceleration')
% legend('Desired Acceleration','Actual Acceleration')
% subplot (2, 3, 4)
% plot (Data.phi.Time, Data.phi.Data(:,1)-Data.phi.Data(:,2))
% grid
% xlabel ('Time(sec)')
% ylabel('Position Error')
% subplot (2, 3, 5)
% plot (Data.phi.Time, Data.phi_d.Data(:,1)-Data.phi_d.Data(:,2))
% grid
% xlabel ('Time(sec)')
% ylabel('Velocity Error')
% subplot (2, 3, 6)
% plot (Data.phi.Time, Data.phi_dd.Data(:,1)-Data.phi_dd.Data(:,2))
% grid
% xlabel ('Time(sec)')
% ylabel('Acceleration Error')
% 
% % Pitch
% f = figure('Name','Pitch','NumberTitle','off');
% f.Position = [50 0 1500 800];
% subplot (2, 3, 1)
% plot (Data.theta.Time, Data.theta.Data)
% grid
% xlabel ('Time(sec)')
% ylabel('Pitch')
% legend('Desired Position','Actual Position')
% subplot (2, 3, 2)
% plot (Data.theta.Time, Data.theta_d.Data)
% grid
% xlabel ('Time(sec)')
% ylabel('Pitch Velocity')
% legend('Desired Velocity','Actual Velocity')
% subplot (2, 3, 3)
% plot (Data.theta.Time, Data.theta_dd.Data)
% grid
% xlabel ('Time(sec)')
% ylabel('Pitch Acceleration')
% legend('Desired Acceleration','Actual Acceleration')
% subplot (2, 3, 4)
% plot (Data.theta.Time, Data.theta.Data(:,1)-Data.theta.Data(:,2))
% grid
% xlabel ('Time(sec)')
% ylabel('Position Error')
% subplot (2, 3, 5)
% plot (Data.theta.Time, Data.theta_d.Data(:,1)-Data.theta_d.Data(:,2))
% grid
% xlabel ('Time(sec)')
% ylabel('Velocity Error')
% subplot (2, 3, 6)
% plot (Data.theta.Time, Data.theta_dd.Data(:,1)-Data.theta_dd.Data(:,2))
% grid
% xlabel ('Time(sec)')
% ylabel('Acceleration Error')
% 
% % Yaw
% f = figure('Name','Yaw','NumberTitle','off');
% f.Position = [50 0 1500 800];
% subplot (2, 3, 1)
% plot (Data.psi.Time, Data.psi.Data)
% grid
% xlabel ('Time(sec)')
% ylabel('Yaw')
% legend('Desired Position','Actual Position')
% subplot (2, 3, 2)
% plot (Data.psi.Time, Data.psi_d.Data)
% grid
% xlabel ('Time(sec)')
% ylabel('YAw Velocity')
% legend('Desired Velocity','Actual Velocity')
% subplot (2, 3, 3)
% plot (Data.psi.Time, Data.psi_dd.Data)
% grid
% xlabel ('Time(sec)')
% ylabel('Yaw Acceleration')
% legend('Desired Acceleration','Actual Acceleration')
% subplot (2, 3, 4)
% plot (Data.psi.Time, Data.psi.Data(:,1)-Data.psi.Data(:,2))
% grid
% xlabel ('Time(sec)')
% ylabel('Position Error')
% subplot (2, 3, 5)
% plot (Data.psi.Time, Data.psi_d.Data(:,1)-Data.psi_d.Data(:,2))
% grid
% xlabel ('Time(sec)')
% ylabel('Velocity Error')
% subplot (2, 3, 6)
% plot (Data.psi.Time, Data.psi_dd.Data(:,1)-Data.psi_dd.Data(:,2))
% grid
% xlabel ('Time(sec)')
% ylabel('Acceleration Error')
% 
% % Quaternion
% f = figure('Name','Quaternion','NumberTitle','off');
% f.Position = [50 0 1500 800];
% subplot (2, 3, 1)
% plot (Data.Q1.Time, Data.Q1.Data)
% grid
% xlabel ('Time(sec)')
% ylabel('Q1')
% legend('Desired Q1','Actual Q1')
% subplot (2, 3, 2)
% plot (Data.Z.Time, Data.Zd.Data)
% grid
% xlabel ('Time(sec)')
% ylabel('Q2')
% legend('Desired Q2','Actual Q2')
% subplot (2, 3, 3)
% plot (Data.Q2.Time, Data.Q2.Data)
% grid
% xlabel ('Time(sec)')
% ylabel('Q3')
% legend('Desired Q3','Actual Q3')
% subplot (2, 3, 4)
% plot (Data.Qerr.Time, Data.Qerr.Data(:,1))
% grid
% xlabel ('Time(sec)')
% ylabel('Q1 Error')
% subplot (2, 3, 5)
% plot (Data.Qerr.Time, Data.Qerr.Data(:,2))
% grid
% xlabel ('Time(sec)')
% ylabel('Q2 Error')
% subplot (2, 3, 6)
% plot (Data.Qerr.Time, Data.Qerr.Data(:,3))
% grid
% xlabel ('Time(sec)')
% ylabel('Q3 Error')

%% Trajecroty Positions

f1 = figure('Name','R_P_Y','NumberTitle','off');
subplot (3, 1, 1)
plot (Data.phi.Time, Data.phi.Data(:,1).*180/pi,'b','LineWidth',2)
hold
plot(Data.phi.Time, Data.phi.Data(:,2).*180/pi,'r--','LineWidth',2)
grid
xlabel ('Time (sec)')
ylabel('Roll (deg)')
legend('Desired Roll','Actual Roll')
ylim([-40 40])
subplot (3, 1, 2)
plot (Data.theta.Time, Data.theta.Data(:,1).*180/pi,'b','LineWidth',2)
hold
plot(Data.theta.Time, Data.theta.Data(:,2).*180/pi,'r--','LineWidth',2)
grid
xlabel ('Time (sec)')
ylabel('Pitch (deg)')
legend('Desired Pitch','Actual Pitch')
ylim([-40 40])
subplot (3, 1, 3)
plot (Data.psi.Time, Data.psi.Data(:,1).*180/pi,'b','LineWidth',2)
hold
plot(Data.psi.Time, Data.psi.Data(:,2).*180/pi,'r--','LineWidth',2)
grid
xlabel ('Time (sec)')
ylabel('Yaw (deg)')
legend('Desired Yaw','Actual Yaw')
ylim([-40 40])
