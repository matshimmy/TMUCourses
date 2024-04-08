%Part 2
%% A.1
clc
% Variables
Lp = 0.2; %total length of pendulum
Mp = 0.097; %pendulum mass
Jp = 3.2341 * 10^(-4); %pendulum inertia
Bp = 0.0024; %pendulum viscous damping coefficient
Lr = 0.216; % length of arm (pivot to tip)
lr = 0.0619; % length of arm (pivot to centre of mass)
Br = 0.1135; % rotary arm viscous damping coefficient
Jr = 9.98 * 10^(-4); % rotart arm moment of inertia (about COM)
g = 9.81; % gravity

Jt = (Jp*Mp*(Lr^2)) + Jr*Jp + (1/4)*Jr*Mp*(Lp^2); 

% Calculating Numerical Values of Matrices
a = ((Mp^2)*((Lp/2)^2)*Lr*g)/Jt;
b = (-Br*(Jp+Mp*(Lp/2)^2))/Jt;
c = (-Mp*(Lp/2)*Lr*Bp)/Jt;
d = ((Mp*g*(Lp/2))*(Jr+(Mp*Lr^2)))/Jt;
e = (-Mp*(Lp/2)*Lr*Br)/Jt;
f = (-Bp*(Jr+Mp*Lr^2))/Jt;

A = [0 0 1 0; 0 0 0 1; 0 a b c; 0 d e f];

g = (Jp+Mp*(Lp/2)^2)/Jt;
h = (Mp*(Lp/2)*Lr)/Jt;

B = [0; 0; g; h];
C = [1 0 0 0; 0 1 0 0];
D = [0; 0];

% Displaying Matrices with Better Formatting
fprintf('Matrix A:\n');
fprintf('%8.4f %8.4f %8.4f %8.4f\n', A');
fprintf('\nMatrix B:\n');
fprintf('%8.4f\n', B);
fprintf('\nMatrix C:\n');
fprintf('%8.4f %8.4f %8.4f %8.4f\n', C');
fprintf('\nMatrix D:\n');
fprintf('%8.4f\n', D);

%% A.2
clc
% Characteristic Equation
charEQ = charpoly(A);
fprintf('Characteristic Equation of Matrix A is:\n\n');
fprintf('%.1f   ', (charEQ)); 
fprintf('\n\n\n'); % Adds a newline for better separation

% Finding and Displaying Eigenvalues
eigenvalues = eig(A);
fprintf('The eigenvalues are:\n\n');
fprintf('%+.4f\n', eigenvalues);

%% B.1
clc

% Step 1: Check Controllability of the RIP System
controlMat = ctrb(A,B);
fprintf('Controllability Matrix:\n');
disp(controlMat)
r = rank(controlMat);
fprintf('Rank of Controllability Matrix: %d\n\n', r);

% Step 2: Determine Desired Closed-Loop Eigenvalues (Poles) Location
z = 0.7;
wn = 4;
s1 = -z*wn + (wn * sqrt(1-z^2))*1i;
s2 = -z*wn - (wn * sqrt(1-z^2))*1i;
fprintf('\n\n\nLocation of the 2 Dominant Poles:\n%.4f + %.4fi\n%.4f + %.4fi\n\n', real(s1), imag(s1), real(s2), imag(s2));

s3 = -30;
s4 = -40;
p = [s1 s2 s3 s4];
desired_char_eq = poly(p);
fprintf('Desired Closed-Loop Characteristic Equation Coefficients:\n');
disp(desired_char_eq)

% Step 3: Calculate State-Feedback Gain
K = place(A, B, p);
fprintf('\n\n\nGain K is:\n');
disp(K)

% Step 4: Verify the Closed-Loop Eigenvalues
Acl = A - B.*K;
fprintf('\n\n\nClosed-Loop System Matrix (Acl):\n');
disp(Acl)
eigenvalues_matrix = eig(Acl);
fprintf('Eigenvalues of the Closed-Loop System:\n');
disp(eigenvalues_matrix)

%% B.2  Reference Input and Rotary Arm Angle

figure('Units','normalized','Position',[0.2,0.2,0.6,0.6]); % Larger figure size
plot(out.time, out.input_Output(:,1), 'LineWidth', 1.5)
hold on
plot(out.time, out.input_Output(:,2), 'LineWidth', 1.5)
hold off
title('Reference Input and Rotary Arm Angle (\theta)', 'FontSize', 14)
xlabel('Time (s)', 'FontSize', 12)
ylabel('\theta (degrees)', 'FontSize', 12)
legend('Reference Input','Rotary Arm Angle (\theta)', 'FontSize', 10)
grid on
ylim([-30 30])

%% Pendulum Angle Deflection
figure('Units','normalized','Position',[0.2,0.2,0.6,0.6]); % Consistent figure size
plot(out.time, out.alpha, 'LineWidth', 1.5)
title('Pendulum Angle Deflection (\alpha)', 'FontSize', 14)
ylabel('Angular Deflection (degrees)', 'FontSize', 12)
xlabel('Time (s)', 'FontSize', 12)
hold on
[max_value, max_index] = max(abs(out.alpha));
plot(out.time(max_index), out.alpha(max_index), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r')
hold off
legend('Pendulum Angular Deflection', sprintf('Max Deflection = %.2f degrees', max_value), 'FontSize', 10)
grid on

%% Control Signal
figure('Units','normalized','Position',[0.2,0.2,0.6,0.6]); % Making figures consistently large
plot(out.time, out.control_signal(:,1), 'LineWidth', 1.5)
title('Control Signal', 'FontSize', 14)
ylabel('Voltage (V)', 'FontSize', 12)
xlabel('Time (s)', 'FontSize', 12)
hold on
[max_value, max_index] = max(abs(out.control_signal(:,1)));
plot(out.time(max_index), out.control_signal(max_index,1), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r')
hold off
legend('Control Signal', sprintf('Max Absolute Value = %.2f V', max_value), 'FontSize', 10)
grid on;
