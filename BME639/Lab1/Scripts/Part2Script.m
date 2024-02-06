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
K2 = roots (k2)

k5 = [1 2 6]; 
K5 = roots (k5)

k10 = [1 2 11];
K10 = roots (k10)

%% C1


figure
hold on

plot(out.time(:,1),out.TOstepK2(:,1) , 'lineWidth', 2.25);
plot(out.time(:,1),out.TOstepK2(:,2) , 'lineWidth', 2.25);


xlabel('Time (s)');
ylabel('Amplitude');
title('Step Function & Third Order System k=2', 'FontSize',12);
legend ('Step Function', 'Third Order System');
grid on;

hold off

figure
hold on

plot(out.time(:,1),out.TOstepK5(:,1) , 'lineWidth', 2.25);
plot(out.time(:,1),out.TOstepK5(:,2) , 'lineWidth', 2.25);


xlabel('Time (s)');
ylabel('Amplitude');
title('Step Function & Third Order System k=5', 'FontSize',12);
legend ('Step Function', 'Third Order System');
grid on;

hold off


figure
hold on

plot(out.time(:,1),out.TOstepK10(:,1) , 'lineWidth', 2.25);
plot(out.time(:,1),out.TOstepK10(:,2) , 'lineWidth', 2.25);


xlabel('Time (s)');
ylabel('Amplitude');
title('Step Function & Third Order System k=10', 'FontSize',12);
legend ('Step Function', 'Third Order System');
grid on;

hold off

%% C2
k2 = [1 3 3 3];
K2 = roots (k2)

k5 = [1 3 3 6]; 
K5 = roots (k5)

k10 = [1 3 3 11];
K10 = roots (k10)

%% C3
num2 = 2;
k2 = [1 3 3 3];
sys1 = tf(num2,k2);

stepinfo(sys1)
stepplot(sys1)

%%
num5 = 5;
k5 = [1 3 3 6]; 
sys2 = tf(num5,k5);

stepinfo(sys2)
stepplot(sys2)
%%
num10 = 10;
k10 = [1 3 3 11];
sys3 = tf(num10,k10);

stepinfo(sys3)
stepplot(sys3)

%% C4
hold on
subplot(4,1,1)
plot(out.time,out.TOstepK2(:,1:2));
xlabel('time (s)')
ylabel('amplitude')
title('Input and Output of Third-Order System with K = 2')
legend
grid on

subplot(4,1,2)
plot(out.time,out.TOstepK5(:,1:2));
xlabel('time (s)')
ylabel('amplitude')
title('Input and Output of Third-Order System with K = 5')
legend
grid on

subplot(4,1,3)
plot(out.time,out.TOstepK10(:,1:2));
xlabel('time (s)')
ylabel('amplitude')
title('Input and Output of Third-Order System K = 10')
legend
grid on

subplot(4,1,4)
plot(out.time,out.TOstep8(:,1:2));
xlabel('time (s)')
ylabel('amplitude')
title('Input and Output of Third-Order System with K = 8 (Marginally Stable)')
legend
grid on

hold off
