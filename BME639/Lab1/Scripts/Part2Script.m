%% A1
figure
hold on

plot(out.time(:,1),out.squareTran(:,1) , 'lineWidth', 2.25);
plot(out.time(:,1),out.squareTran(:,2) , 'lineWidth', 2.25);
plot(out.time(:,1),out.squareTran(:,3) , 'lineWidth', 2.25);
plot(out.time(:,1),out.squareTran(:,4) , 'lineWidth', 2.25);

xlabel('Time (s)');
ylabel('Amplitude');
title('Step Function & High Order Systems', 'FontSize',12);
legend ('Step Function', 'First Order System', 'Second Order System', 'Third Order System');
grid on;

hold off

%% B1

figure
hold on

plot(out.time(:,1),out.SOstep(:,1) , 'lineWidth', 2.25);
plot(out.time(:,1),out.SOstep(:,2) , 'lineWidth', 2.25);


xlabel('Time (s)');
ylabel('Amplitude');
title('Step Function & Second Order System', 'FontSize',12);
legend ('Step Function', 'Second Order System');
grid on;

hold off

%% B2
k2 = [1 2 3];
"K = 2"
roots (k2)

k5 = [1 2 6]; 
"K = 5"
roots (k5)

k10 = [1 2 11];
"K = 10"
roots (k10)
