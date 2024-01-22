%%A.2
SignalInput=out.simout(:,1);
IntegratedSignal=out.simout(:,2);
DerivativeSignal=out.simout(:,3);

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

%%A.3