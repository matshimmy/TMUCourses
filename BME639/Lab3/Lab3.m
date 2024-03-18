%% Part1
%% A.2
figure
hold on
plot(out.time,out.TOPI(:,1) , 'Color', '#487F9C', 'lineWidth', 1.25)
plot(out.time,out.TOPI(:,2), 'Color','#DB435E' , 'lineWidth', 1.25)

xlabel('Time (s)')
ylabel('Amplitude')
title ('Third Order System PI Controller')
legend('Square Wave Input','Third Order System PI Controller')
grid;
hold off