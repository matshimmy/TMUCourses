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
