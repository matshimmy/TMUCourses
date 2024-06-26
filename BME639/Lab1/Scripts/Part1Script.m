%% A.2
SignalInput=out.simoutA1(:,1);
IntegratedSignal=out.simoutA1(:,2);
DerivativeSignal=out.simoutA1(:,3);

subplot(3,1,1);
plot(out.tout, SignalInput , 'Color', '#637000', 'lineWidth', 1.25, 'DisplayName', "x_(t) = sin(t)");
title("Original Sine Wave Signal");
xlabel("Time (s)");
ylabel("Amplitude");
grid;

subplot(3,1,2);
plot(out.tout, IntegratedSignal , 'Color', '#487F9C', 'lineWidth', 1.25, 'DisplayName', "X_(t) = \integral sin(t)");
title("Integrated Signal");
xlabel("Time (s)");
ylabel("Amplitude");
grid;

subplot(3,1,3);
plot(out.tout, DerivativeSignal , 'Color', '#DB435E', 'lineWidth', 1.25, 'DisplayName', "x_(t)' = d/dt (sin(t))");
title("Derived Signal");
xlabel("Time (s)");
ylabel("Amplitude");
grid;

%% A.3
SignalInput=out.simoutA3(:,1);
IntegratedSignal=out.simoutA3(:,2);
DerivativeSignal=out.simoutA3(:,3);

subplot(3,1,1);
plot(out.tout, SignalInput , 'Color', '#637000', 'lineWidth', 1.25, 'DisplayName', "x_(t) = sin(t)");
title("Original Sine Wave Signal");
xlabel("Time");
ylabel("Amplitude");
grid;

subplot(3,1,2);
plot(out.tout, IntegratedSignal  , 'Color', '#487F9C', 'lineWidth', 1.25, 'DisplayName', "X_(t) = \integral sin(t)");
title("Integrated Signal");
xlabel("Time");
ylabel("Amplitude");
grid;

subplot(3,1,3);
plot(out.tout, DerivativeSignal , 'Color', '#DB435E', 'lineWidth', 1.25, 'DisplayName', "x_(t)' = d/dt (sin(t))");
title("Derived Signal");
xlabel("Time");
ylabel("Amplitude");
grid;
%% A.4
SignalInput=out.simoutA4(:,1);
T1=out.simoutA4(:,2);
T2=out.simoutA4(:,3);
T3=out.simoutA4(:,4);
T4=out.simoutA4(:,5);


figure
tiledlayout(4,1)

nexttile
plot(out.tout, SignalInput, 'Color', '#487F9C', 'lineWidth', 2.25, 'DisplayName', 'Unit Step'), grid 
hold on
plot(out.tout, T1, 'Color', '#DB435E', 'lineWidth', 2.25, 'DisplayName', 'T1 Signal')
title('Transfer Function Signal 1', 'FontSize',12);
ylabel('Magnitude');
legend
hold off

nexttile
plot(out.tout, SignalInput, 'Color', '#487F9C', 'lineWidth', 2.25, 'DisplayName', 'Unit Step'), grid 
hold on
plot(out.tout, T2, 'Color', '#DB435E', 'lineWidth', 2.25, 'DisplayName', 'T2 Signal') 
title('Transfer Function Signal 2', 'FontSize',12);
ylabel('Magnitude');
legend
hold off

nexttile
plot(out.tout, SignalInput, 'Color', '#487F9C', 'lineWidth', 2.25, 'DisplayName', 'Unit Step'), grid 
hold on
plot(out.tout, T3, 'Color', '#DB435E', 'lineWidth', 2.25, 'DisplayName', 'T3 Signal')
title('Transfer Function Signal 3', 'FontSize',12);
ylabel('Magnitude');
legend
hold off

nexttile
plot(out.tout, SignalInput, 'Color', '#487F9C', 'lineWidth', 2.25, 'DisplayName', 'Unit Step'), grid 
hold on
plot(out.tout, T4, 'Color', '#DB435E', 'lineWidth', 2.25, 'DisplayName', 'T4 Signal')
title('Transfer Function Signal 4', 'FontSize',12);
ylabel('Magnitude');
xlabel('Time (t)');
legend
hold off

%% B.1

% time = out.tout(:,1);
% step = out.Fstep(:,1);
% response = out.Fstep(:,2);

figure
hold on
plot(out.Fstep , 'lineWidth', 2.25);
xlabel('Time (s)');
ylabel('Amplitude');
title('Step Function & First Order System', 'FontSize',12);
legend ('Step Function', 'First Order System');
grid on;
ylim([-0.1 1.1]);
% dcm = datacursormode;
% dcm.Enable = 'on';
% dcm.DisplayStyle = 'window';
hold off


%% C.1

figure
hold on

plot(out.time(:,1),out.FOLstep(:,1) , 'lineWidth', 2.25);
plot(out.time(:,1),out.FOLstep(:,2) , 'lineWidth', 2.25);


xlabel('Time (s)');
ylabel('Amplitude');
title('Step Function & First Order System Open Loop', 'FontSize',12);
legend ('Step Function', 'First Order System');
grid on;

% dcm = datacursormode;
% dcm.Enable = 'on';
% dcm.DisplayStyle = 'window';
hold off

%% C.2

figure
hold on

plot(out.time(:,1),out.FCLstep(:,1) , 'lineWidth', 2.25);
plot(out.time(:,1),out.FCLstep(:,2) , 'lineWidth', 2.25);


xlabel('Time (s)');
ylabel('Amplitude');
title('Step Function & First Order System Closed Loop', 'FontSize',12);
legend ('Step Function', 'First Order System');
grid on;

% dcm = datacursormode;
% dcm.Enable = 'on';
% dcm.DisplayStyle = 'window';
hold off


%% C.4

figure
hold on

subplot(3,1,1);
plot(out.time(:,1),out.FOLstepControl(:,1) , 'lineWidth', 2.25);
title("Control Signal u(t)");
xlabel("Time (s)");
ylabel("Amplitude");
grid;

subplot(3,1,2);
plot(out.time(:,1),out.FOLstepControl(:,2) , 'lineWidth', 2.25);
title("First Order System Open Loop");
xlabel("Time (s)");
ylabel("Amplitude");
grid;

subplot(3,1,3);
plot(out.time(:,1),out.FCLstepControl(:,2) , 'lineWidth', 2.25);
title("First Order System Closed Loop");
xlabel("Time (s)");
ylabel("Amplitude");
grid;

% dcm = datacursormode;
% dcm.Enable = 'on';
% dcm.DisplayStyle = 'window';
hold off
%% C.51

figure
hold on

subplot(4,1,1);
plot(out.time(:,1),out.FOLstepC51(:,1) , 'lineWidth', 2.25);
title("Open Loop Input");
xlabel("Time (s)");
ylabel("Amplitude");
grid;

subplot(4,1,2);
plot(out.time(:,1),out.FOLstepC51(:,2) , 'lineWidth', 2.25);
title("First Order System Open Loop");
xlabel("Time (s)");
ylabel("Amplitude");
grid;

subplot(4,1,3);
plot(out.time(:,1),out.FCLstepC51(:,1) , 'lineWidth', 2.25);
title("Closed Loop Input");
xlabel("Time (s)");
ylabel("Amplitude");
xlim([0 10]);
grid;

subplot(4,1,4);
plot(out.time(:,1),out.FCLstepC51(:,2) , 'lineWidth', 2.25);
title("First Order System Closed Loop");
xlabel("Time (s)");
ylabel("Amplitude");
xlim([0 10])
grid;

% dcm = datacursormode;
% dcm.Enable = 'on';
% dcm.DisplayStyle = 'window';
hold off

%% C.52
figure
hold on

subplot(4,1,1);
plot(out.time(:,1),out.FOLstepC52(:,1) , 'lineWidth', 2.25);
title("Open Loop Input");
xlabel("Time (s)");
ylabel("Amplitude");
grid;

subplot(4,1,2);
plot(out.time(:,1),out.FOLstepC52(:,2) , 'lineWidth', 2.25);
title("First Order System Open Loop");
xlabel("Time (s)");
ylabel("Amplitude");
grid;

subplot(4,1,3);
plot(out.time(:,1),out.FCLstepC52(:,1) , 'lineWidth', 2.25);
title("Closed Loop Input");
xlabel("Time (s)");
ylabel("Amplitude");
grid;
%%
subplot(4,1,4);
plot(out.time(:,1),out.FCLstepC52(:,2) , 'lineWidth', 2.25);
title("First Order System Closed Loop");
xlabel("Time (s)");
ylabel("Amplitude");
grid;
