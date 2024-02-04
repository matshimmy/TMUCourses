%% 
figure
hold on

plot(out.time(:,1),out.FOLstep(:,1) , 'lineWidth', 2.25);
plot(out.time(:,1),out.FOLstep(:,2) , 'lineWidth', 2.25);


xlabel('Time (s)');
ylabel('Amplitude');
title('Step Function & First Order System', 'FontSize',12);
legend ('Step Function', 'First Order System');
grid on;

dcm = datacursormode;
dcm.Enable = 'on';
dcm.DisplayStyle = 'window';
hold off