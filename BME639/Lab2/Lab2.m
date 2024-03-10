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
legend('Square Wave Input','Voltage to Speed with PI Controller')
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