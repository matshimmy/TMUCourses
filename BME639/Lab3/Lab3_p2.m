%Part 2
%% A.1
% Variables
Lp = 0.2; %total length of pendulum
Mp = 0.097; %pendulum mass
Jp = 3.2341 * 10^(-4); %pendulum inertia
Bp = 0.0024; %pendulum viscous damping coefficient
Lr = 0.216; % length of arm (pivot to tip)
lr = 0.0619; % length of arm (pivot to centre of mass)
Br = 0.1135; % rotary arm viscous damping coefficient
Jr = 9.98 * 10^(-4); % rotart arm moment of inertia (about COM)
g = 9.81; % earth being a bitch


Jt = (Jp*Mp*(Lr^2)) + Jr*Jp + (1/4)*Jr*Mp*(Lp^2); %total inertia i think

%Calculating Numerical Values of Matrices

% Calculating Numerical Values of Matrices
a = ((Mp^2)*((Lp/2)^2)*Lr*g)/Jt;
b = (-Br*(Jp+Mp*(Lp/2)^2))/Jt;
c = (-Mp*(Lp/2)*Lr*Bp)/Jt;
d = ((Mp*g*(Lp/2))*(Jr+(Mp*Lr^2)))/Jt;
e = (-Mp*(Lp/2)*Lr*Br)/Jt;
f = (-Bp*(Jr+Mp*Lr^2))/Jt;

A = [0 0 1 0; 0 0 0 1; 0 a b c; 0 d e f];

g = (Jp+Mp*(Lp)^2)/Jt;
h = (Mp*(Lp/2)*Lr)/Jt;

B = [0; 0; g; h];
C = [1 0 0 0; 0 1 0 0];
D = [0; 0];


% Displaying Matrices with Better Formatting
clc
fprintf('Matrix A:\n');
fprintf('%8.4f %8.4f %8.4f %8.4f\n', A');
fprintf('\nMatrix B:\n');
fprintf('%8.4f\n', B);
fprintf('\nMatrix C:\n');
fprintf('%8.4f %8.4f %8.4f %8.4f\n', C');
fprintf('\nMatrix D:\n');
fprintf('%8.4f\n', D);

%% A.2

% Characteristic Equation
charEQ = charpoly(A);
fprintf('Characteristic Equation of Matrix A is:\n\n');
fprintf('%.1fs   ', (charEQ)); 
fprintf('\n\n\n'); % Adds a newline for better separation

% Finding and Displaying Eigenvalues
eigenvalues = eig(A);
fprintf('The eigenvalues are:\n\n');
fprintf('%+.4f\n', eigenvalues);


