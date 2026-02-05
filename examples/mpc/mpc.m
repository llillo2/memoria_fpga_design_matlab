function uk = mpc(xk, rk, IT_ADMM)

N_HOR = 4;      % Tamaño del horizonte de predicción
umin = -3;
umax = 3;
xmin = [-5; -2];
xmax = [5; 2];

%% Formulación Densa
N_SYS = 2;
M_SYS = 1;

D = [0.972466171 0;0.000986168976 1;0.945690453 0;0.00194518501 1;0.919651926 0;0.0028777956 1;0.894330382 0;0.00378472777 1];
F = [0.0214235317 0.0213781651 0.0213316325 0.0212839693;0.64161247 0.638990045 0.636372685 0.633760333];
T_inv = [-0.502326608 1000 0;0 0 1;25.5885372 714.431946 0];

ref = [zeros(N_SYS,1,'single'); rk];
inf = T_inv * ref;
xinf = inf(1:N_SYS);
uinf = inf(N_SYS+1 : N_SYS+M_SYS);
q = ((xk - xinf)' * F)';
c = repmat(umax - uinf, N_HOR, 1);
d = repmat(umin - uinf, N_HOR, 1);
e = repmat(xmax - xinf, N_HOR, 1);
f = repmat(xmin - xinf, N_HOR, 1);
g = [c; -d; e - D * xk; D * xk - f];

t_ADMM = fx_qp_admm(q, g, IT_ADMM);
uk = t_ADMM(1:M_SYS) + uinf;


end

