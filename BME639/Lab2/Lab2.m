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
title ('Output of a system with Lag Compensator')
legend('Square wave input','System Output')
grid;
hold off

%% A.2
numerator = [1 1];
denominator = [0.1 1];
Gc = tf(numerator,denominator);

% Find poles and zeros
poles = pole(Gc);
zeros = zero(Gc);

% Display poles and zeros
disp('Poles:');
disp(poles);
disp('Zeros:');
disp(zeros);

% Plot Bode diagram
figure;
bode(Gc);
grid on;
title('Bode Diagram of the Lead Compensator');

%% B.1
figure
hold on
plot(out.time,out.SOlead(:,1) , 'Color', '#487F9C', 'lineWidth', 1.25)
plot(out.time,out.SOlead(:,2), 'Color','#DB435E' , 'lineWidth', 1.25)

xlabel('Time (s)')
ylabel('Amplitude')
title ('Output of a second order system with Lead Compensator')
legend('Square wave input','System output')
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
title ('Output of a system with Lag Compensator')
legend('Square wave input','System Output')
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

%% D.1

figure
hold on
plot(out.time,out.SOlag(:,1) , 'Color', '#487F9C', 'lineWidth', 1.25)
plot(out.time,out.SOlag(:,2), 'Color','#DB435E' , 'lineWidth', 1.25)

xlabel('Time (s)')
ylabel('Amplitude')
title ('Output of a second order system with Lag Compensator')
legend('Square wave input','System Output')
grid;
hold off

%% D.2

num = [50 150];
den = [1 10.3 78 157.5];

sys_with_lag = tf (num, den);
figure
stepplot(sys_with_lag)
title ("Step Response for Lead Compensator")
grid on;

%% D.3

%Step Response for k=2 and Lag Compensator
sys_K2lag = tf (num, den);
figure
stepplot(sys_K2lag)
title('Step Response with Lag Compensator (k=2)')
grid on;
%Step Response for k=2 Closed Loop System
num1 = 50;
den1 = [1 10 75];
sys_K2 = tf (num1, den1);
figure
stepplot(sys_K2)
title('Step Response for a Closed Loop System (k=2)')
grid on;
%Step Response for k=20 Closed Loop System 
num2 = 500;
den2 = [1 10 525];
sys_K20= tf (num2, den2);
figure
stepplot(sys_K20)
title('Step Response for a Closed Loop System (k=20)')
grid on;

%% D.4

%Bode Diagram
sys_K2lag = tf (num, den);
figure
bode (sys_K2lag)
hold on
bode (sys_K2)
title('Lag Compensator with a Second Order System vs Second Order System Bode Diagram')
grid on
legend('Lag Compensator', 'No Lag Compensator')
hold off;
%Phase and Gain Margin
figure
title ('Lag Compensator in a Closed Loop System')
margin (sys_K2lag);
figure
title ('Closed Loop System with a Gain of 2')
margin (sys_K2);
