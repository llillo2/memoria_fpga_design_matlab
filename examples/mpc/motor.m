%% MPC for DC-DC motor, dense formulation
% ===============================================================================
% Francisca Donoso Bastias - Universidad Técnica Federico Santa María
% 22-12-2025
% Based on the work by Andrew Morrison and Alfonso Cortes
% https://github.com/morrisort/embeddedMPC/
% ===============================================================================
clc; clear;

%% Parámetros del sistema

format('longE')

N_HOR = 4;      % Tamaño del horizonte de predicción

% Arreglo de tiempo
Ts = 0.001;         % Periodo de muestreo en segundos
tsimu = 3;          % Tiempo de simulación en segundos
k = 0:Ts:tsimu-Ts;

% Datos del servomotor en tiempo discreto
kappa = 39.08/27.92;
tau = 1/27.92; 
A = [exp(-Ts/tau), 0; tau*(1-exp(-Ts/tau)), 1];
B = [kappa*(1-exp(-Ts/tau)); Ts*kappa + tau*kappa*(exp(-Ts/tau) - 1)];
C = [0, 1];
x0 = single([3.0; -1.0]);    % Velocidad y posición angular inicial

% Restricciones del sistema
%umin = single(-3);
%umax = single(3);
%xmin = single([-5; -2]);
%xmax = single([5; 2]);

Gamma = 0.1;
Omega = C' * C;
[Linf, OmegaN, ~] = dlqr(A, B, Omega, Gamma);

% Referencia deseada del sistema
rk = zeros(1, length(k));
rk(1, 1:1500) = rk(1, 1:1500) + 1;

IT_ADMM = 10;

%% Formulación Densa

N_SYS = 2;
M_SYS = 1;

N_QP = N_HOR * M_SYS;
M_QP = 2 * N_HOR * (N_SYS + M_SYS);
xk = zeros(N_SYS, length(k), 'single');
uk = zeros(M_SYS, length(k), 'single');
xk(:, 1) = x0; 

%% Iteración MPC

for i = 1:length(k)
    uk_ = mpc(xk(:, i),rk(:,i), IT_ADMM);
    uk(:, i) = uk_;
    xk(:, i + 1) = A * xk(:, i) + B * uk(:, i);
end


%% Graficar resultados

figure
plot(rk(1, :))
hold on
plot(xk(1, :))
plot(xk(2, :))
plot(uk(1, :))
grid on
legend('Referencia r', 'Estado x0', 'Estado x1', 'Entrada u')


