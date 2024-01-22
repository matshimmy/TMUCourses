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