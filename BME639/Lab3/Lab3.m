%% Part1
clc
clear vars

%% A.2
close all
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

%% A.3
close all
%PI Controller - kp(1 + 1/(Ti*s))*(1/(s+1)^3)
PI_num = [4 1];
PI_den = [2 6 6 2 0];
G1 = tf(PI_num, PI_den);
K1 = 1;
PI_tf = feedback(G1, K1)

stepplot(PI_tf);
stepinfo(PI_tf)
title('Stepplot for KP = 2 Ti = 4, PI Controller')
grid;

% P controller
P_num = 2;
P_den = [1 3 3 1];
G2 = tf(P_num, P_den);
K2 = 1;
P_tf = feedback(G2, K2)
figure
stepplot(P_tf);

stepinfo(P_tf)
title('Stepplot for KP = 2, P Controller')
hold off
grid;
%
figure
stepplot(P_tf, PI_tf);
grid;
legend;

%% A.4
close all

squareWave_Ti2 = out.TOPI_4(:,1);
TransferFunction_Ti2 = out.TOPI_2(:,2);
TransferFunction_Ti4 = out.TOPI_4(:,2);
TransferFunction_Ti8 = out.TOPI_8(:,2);
figure(1)
hold on
plot(out.time, squareWave_Ti2, 'Color', 'b', 'lineWidth', 1.25);
plot(out.time, TransferFunction_Ti2, 'lineWidth', 2.25);
plot(out.time, TransferFunction_Ti4,  'lineWidth', 1.25);
plot(out.time, TransferFunction_Ti8, 'lineWidth', 2.25);
title('PI Controller with Kp = 2 and Ti = 2, 4, and 8');
legend('Square Wave Input','Ti = 2', 'Ti = 4','Ti = 8');
grid;
hold off


%PI Controller - Ti = 2
num3 = [2 1];
den3 = [1 3 3 1 0];
G3 = tf(num3, den3);
K3 = 1;
TransferFunctionT_2 = feedback(G3, K3)
figure(2)
stepplot(TransferFunctionT_2);
stepinfo(TransferFunctionT_2)
title('Stepplot for KP = 2 Ti = 2, PI Controller')


%PI Controller - Ti = 8
num4 = [8 1];
den4 = [4 12 12 4 0];
G4 = tf(num4, den4);
K4 = 1;
TransferFunctionT_8 = feedback(G4, K4)
figure(3)
stepplot(TransferFunctionT_8)
stepinfo(TransferFunctionT_8)
title('Stepplot for KP = 2 Ti = 8, PI Controller')

%% A.5
close all
hold on
bode(tf([2 1],[1 0]))
bode(tf([4 1],[2 0]))
bode(tf([8 1],[4 0]))
title('PI Controller With Kp = 2,4 & 8 ');
legend('Ti = 2','Ti = 4','Ti = 8');
grid on
hold off

%% B.2
close all

SquareWave2 = out.TOPD(:,1);
TransferFunctionB = out.TOPD(:,2);
hold on
plot(out.time, SquareWave2);
plot(out.time, TransferFunctionB);
title('PD Controller with Kp = 4 and Td = 1');
legend('Square Wave Input','Transfer Function');
grid;
hold off

%% B.3
close all
clc
%PD Controller - Kp((0.Td + Td)s + 1 / (0.Tds + 1))
num_PD = [4.4 4];
den_PD = [0.1 1.3 3.3 3.1 1];
G5 = tf(num_PD, den_PD);
K5 = 1;
TransferFunction_PD = feedback(G5, K5)
figure(1)
stepplot(TransferFunction_PD);
stepinfo(TransferFunction_PD)
title('Stepplot for KP = 4 Td = 1, PD Controller');
grid;

%P controller
num_P = 4;
den_P = [1 3 3 1];
G6 = tf(num_P, den_P);
K6 = 1;
TransferFunction_p = feedback(G6, K6)
figure(2)
stepplot(TransferFunction_p);
stepinfo(TransferFunction_p)
title('Stepplot for KP = 4, P Controller');
grid

%% B.4
close all
clc

% Plot reference input and output
squareWaveTd01 = out.TOPD_1(:,1);
TransferFunctionTd01 = out.TOPD_01(:,2);
TransferFunctionTd1 = out.TOPD_1(:,2);
TransferFunctionTd2 = out.TOPD_2(:,2);
figure(1)
hold on
plot(out.time, squareWaveTd01, 'Color', 'b', 'lineWidth', 1.25);
plot(out.time, TransferFunctionTd01, 'lineWidth', 2.25);
plot(out.time, TransferFunctionTd1, 'lineWidth', 1.25);
plot(out.time, TransferFunctionTd2, 'lineWidth', 2.25);
title('PD Controller with Kp = 4 and Td = 0.1, 1, and 2');
legend('Square Wave Input','Td = 0.1', 'Td = 1','Td = 2');
grid;
hold off

%PD Controller - Td = 2
num__PD = [8.8 4];
den__PD = [0.2 1.6 3.6 3.2 1];
G7 = tf(num__PD, den__PD);
K7 = 1;
TransferFunction2 = feedback(G7, K7)
figure(2)
stepplot(TransferFunction2);
stepinfo(TransferFunction2)
title('Stepplot for KP = 4 Ti = 0.1, PD Controller')
grid

%PD Controller - Td = 0.1
num8 = [0.44 4];
den8 = [0.01 1.03 3.03 3.01 1];
G8 = tf(num8, den8);
K8 = 1;
TransferFunction01 = feedback(G8, K8)
figure(3)
stepplot(TransferFunction01);
stepinfo(TransferFunction01)
title('Stepplot for KP = 4 Ti = 2, PD Controller')
grid
%% B.5 
hold on
bode(tf([0.44 4],[0.01 1]));
bode(tf([4.4 4],[0.1 1]));
bode(tf([8.8 4],[0.2 1]));
title('PD Controller With Td = 0.1, 1, 2')
legend('Td = 0.1','Td = 1', 'Td = 2')
grid;
hold off

%% C.2
close all
clc

squareWave3 = out.TOPID(:,1);
tranFunctionC = out.TOPID(:,2);
hold on
plot(out.time, squareWave3);
plot(out.time, tranFunctionC);
title('PID Controller with Kp = 4, Ti = 4 and Td = 1');
legend('Square Wave Input','Transfer Function');
grid
hold off
%% C.3 

num_PID = [17.6 16.4 4];  
den_PID = [0.4 5.2 13.2 12.4 4 0];
G9 = tf(num_PID, den_PID);
K9 = 1;
TransferFunction_PID = feedback(G9, K9)
stepinfo(TransferFunction_PID)
stepplot(TransferFunction_PID)
title('Stepplot for KP = 4 Td = 1 Ti = 4, PID Controller');

%% C.5

hold on
bode([17.6 16.4 4],[0.4 4 0])
bode([4 1],[1 0])
bode([4.4 4],[0.1 1])
title('PD Controller, Pi Controller, and PID Controller Bode Plots With Ti = 4, Td = 1, and Kp = 4')
legend('PID Controller','PI Controller','PD Controller')
grid
hold off

%% D.1

% Plot reference input and output
squareWaveD1 = out.TOMS(:,1);
ZielgerTF = out.TOMS(:,2);
figure
hold on
plot(out.time, squareWaveD1, 'Color', 'b', 'lineWidth', 1.25);
plot(out.time, ZielgerTF, 'lineWidth', 2.25);
title('Zielger-Nichols Marginal Stability at Ku = 8');
legend('Square Wave Input','Output');
grid;
hold off

%% D.3
squareWaveD3 = out.TOPIDZN(:,1);
tranFunctionD3 = out.TOPIDZN(:,2);
hold on
plot(out.time, squareWaveD3);
plot(out.time, tranFunctionD3);
title('PID Controller with Kp = 4.8, Ti = 1.83 and Td = 0.46');
legend('Square Wave Input','Transfer Function');
grid
hold off

%%
num_PID = [4.444704 1.876 4.8];  
den_PID = [0.08418 2.08254 5.74254 5.57418 1.83 0];
G9 = tf(num_PID, den_PID);
K9 = 1;
TransferFunction_PID = feedback(G9, K9)
stepinfo(TransferFunction_PID)
stepplot(TransferFunction_PID)
title('Stepplot for Kp = 4.8 Ti = 1.83 Td = 0.46, PID Controller');
