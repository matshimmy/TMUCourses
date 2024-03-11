%% Part 1
%% A.4 
figure
hold on
plot(out.time,out.VSmodel(:,1) , 'Color', '#487F9C', 'lineWidth', 1.25)
plot(out.time,out.VSmodel(:,2), 'Color','#637000' , 'lineWidth', 1.25)
plot(out.time,out.VPmodel(:,2), 'Color', '#DB435E', 'lineWidth', 1.25)
xlabel('Time (s)')
ylabel('Amplitude')
title ('Voltage-To-Speed and Voltage-To-Position Vs Time')
legend('Square Wave Input','Voltage to Speed','Voltage to Position')
grid;
hold off

%% B.1
figure
hold on
plot(out.time,out.DCmotorPI(:,1) , 'Color', '#487F9C', 'lineWidth', 1.25)
plot(out.time,out.DCmotorPI(:,2), 'Color','#DB435E' , 'lineWidth', 1.25)

xlabel('Time (s)')
ylabel('Amplitude')
title ('Voltage-To-Speed with a PI Controller Vs Time')
legend('Square Wave Input','Voltage to Speed with PI Controller')
grid;
hold off

%% C.1
figure
hold on
plot(out.time,out.DCmotorPI(:,1) , 'Color', '#487F9C', 'lineWidth', 1.25)
plot(out.time,out.DCmotorPI(:,2), 'Color','#DB435E' , 'lineWidth', 1.25)

xlabel('Time (s)')
ylabel('Amplitude')
title ('Voltage-To-Speed with a PI Controller Vs Time')
legend('Square Wave Input','Voltage to Speed with PI Controller')
grid;
hold off
%% Part 2
%% A.1
figure
hold on
plot(out.time,out.LComp(:,1) , 'Color', '#487F9C', 'lineWidth', 1.25)
plot(out.time,out.LComp(:,2), 'Color','#DB435E' , 'lineWidth', 1.25)

xlabel('Time (s)')
ylabel('Amplitude')
title ('Voltage-To-Speed with a PI Controller Vs Time')
legend('Step Input','Voltage to Speed with PI Controller')
grid;
hold off

%% B.1
figure
hold on
plot(out.time,out.SOlead(:,1) , 'Color', '#487F9C', 'lineWidth', 1.25)
plot(out.time,out.SOlead(:,2), 'Color','#DB435E' , 'lineWidth', 1.25)

xlabel('Time (s)')
ylabel('Amplitude')
title ('Voltage-To-Speed with a PI Controller Vs Time')
legend('Step Input','Voltage to Speed with PI Controller')
grid;
hold off
%% B.2
num = 10;
den = [0.1 1.1 11];
sys_with_lead = tf (num, den);
figure
stepplot(sys_with_lead)
title ("Step Response for Lead Compensator")
grid on;

%% B.3
num1 = 10;
den1 = [1 2 11];
sys_wo_lead = tf (num1, den1);
figure
stepplot(sys_wo_lead)
title ("Step Response for a Closed Loop System (k=10)")
grid on;

%% B.4
%Bode plot

figure
bode (sys_with_lead)
hold on
bode (sys_wo_lead)
title('Lead Compensator with Second Order System vs Second Order System Bode Diagram')
grid on
legend ('Lead Compensator', 'No Lead Compensator')
hold off;

% Phase and Gain Margin
figure
title ('Lead Compensator in a Closed Loop System')
margin (sys_with_lead);
figure
title ('Closed Loop System without Lead Compensator')
margin (sys_wo_lead);

%% C.1
figure
hold on
plot(out.time,out.LagComp(:,1) , 'Color', '#487F9C', 'lineWidth', 1.25)
plot(out.time,out.LagComp(:,2), 'Color','#DB435E' , 'lineWidth', 1.25)

xlabel('Time (s)')
ylabel('Amplitude')
title ('Voltage-To-Speed with a PI Controller Vs Time')
legend('Step Input','Voltage to Speed with PI Controller')
grid;
hold off

%% C.2

%Poles and Zeros
num = [1 3];
den = [1 0.3];
roots(num), roots(den)

%Bode diagram
LagCompensator = tf (num, den);
figure
bode (LagCompensator)
title('Lag Compensator Bode Diagram')
grid on;
