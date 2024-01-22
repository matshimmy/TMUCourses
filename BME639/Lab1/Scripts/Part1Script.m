%% A.2
SignalInput=out.simoutA1(:,1);
IntegratedSignal=out.simoutA1(:,2);
DerivativeSignal=out.simoutA1(:,3);

subplot(3,1,1);
plot(out.tout, SignalInput);
title("Original Sine Wave Signal");
xlabel("Time");
ylabel("Amplitude");
grid;

subplot(3,1,2);
plot(out.tout, IntegratedSignal);
title("Integrated Signal");
xlabel("Time");
ylabel("Amplitude");
grid;

subplot(3,1,3);
plot(out.tout, DerivativeSignal);
title("Derived Signal");
xlabel("Time");
ylabel("Amplitude");
grid;

%% A.3
SignalInput=out.simoutA3(:,1);
IntegratedSignal=out.simoutA3(:,2);
DerivativeSignal=out.simoutA3(:,3);

subplot(3,1,1);
plot(out.tout, SignalInput);
title("Original Sine Wave Signal");
xlabel("Time");
ylabel("Amplitude");
grid;

subplot(3,1,2);
plot(out.tout, IntegratedSignal);
title("Integrated Signal");
xlabel("Time");
ylabel("Amplitude");
grid;

subplot(3,1,3);
plot(out.tout, DerivativeSignal);
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

subplot(5,1,1);
plot(out.tout, SignalInput);
title("Original Sine Wave Signal");
xlabel("Time");
ylabel("Amplitude");
grid;

subplot(5,1,2);
plot(out.tout, T1);
title("T1 Signal");
xlabel("Time");
ylabel("Amplitude");
grid;

subplot(5,1,3);
plot(out.tout, T2);
title("T2 Signal");
xlabel("Time");
ylabel("Amplitude");

grid;subplot(5,1,4);
plot(out.tout, T3);
title("T3 Signal");
xlabel("Time");
ylabel("Amplitude");
grid;

subplot(5,1,5);
plot(out.tout, T4);
title("T4 Signal");
xlabel("Time");
ylabel("Amplitude");
grid;