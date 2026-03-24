# Ejemplo: MPC con HDL Coder

Este documento resume el ejemplo de `examples/mpc` siguiendo la misma lógica del segundo caso mostrado en `HDL_coder/README.md`: partir de un diseño MATLAB funcional, observar por qué la primera generación de HDL no es adecuada y reescribir la parte crítica para reducir recursos sin cambiar la función matemática del algoritmo.

## Objetivo

Implementar un controlador predictivo basado en una formulación densa y un solver QP por ADMM, evaluando cómo la forma de escribir el código MATLAB afecta directamente la calidad del HDL generado por HDL Coder.

## Diseño base en MATLAB

La función principal del controlador es `mpc.m`:

```matlab
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
```

El test del sistema completo se ejecuta con `motor.m`:

<details>
<summary>Ver test completo</summary>

```matlab
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
```

</details>

Este diseño no usa funciones incompatibles con HDL Coder, pero la descripción original del solver dificulta que la herramienta comparta recursos de forma eficiente.

## Primera generación de HDL

Se repite el flujo del `Workflow Advisor` del ejemplo anterior, trabajando en punto fijo y generando primero el HDL sin optimizaciones de `Stream loops`. El resultado de recursos es el siguiente:

![Recursos MPC sin optimización](../../HDL_coder/images/HDL_mpc1.png)

La utilización es demasiado alta para la FPGA objetivo. Aunque la cosimulación puede completarse, la implementación física termina fallando por tamaño. En este caso, el orden de magnitud de multiplicadores hace inviable seguir avanzando sin cambiar el código MATLAB.

Al activar `Stream loops` sin reescribir el algoritmo, el resultado no mejora:

![Recursos MPC con Stream loops](../../HDL_coder/images/HDL_mpc2.png)

Esto muestra que no basta con encender optimizaciones desde la interfaz: la forma en que está escrito el algoritmo condiciona fuertemente la arquitectura que HDL Coder puede inferir.

## Problema principal en `fx_qp_admm`

La versión original de `fx_qp_admm` era compacta, pero poco amigable para síntesis:

```matlab
function [t] = fx_qp_admm(q, g, iters)

N_SYS = 2;
M_SYS = 1;
N_HOR = 4;

N_QP = N_HOR * M_SYS;
M_QP = 2 * N_HOR * (N_SYS + M_SYS);

G = [...];
R_inv = [...];
P = [...];

persistent tk zk uk

if isempty(tk)
    tk = zeros(N_QP, 1, 'single');
    zk = zeros(M_QP, 1, 'single');
    uk = zeros(M_QP, 1, 'single');
end

for k = 1:iters
    v_x = zk - g + uk;
    tk = R_inv * (P * v_x - q);
    zk = max(0, -G * tk - uk + g);
    uk = uk + (G * tk + zk - g);
end
t = tk;
end
```

Los puntos que dificultan la optimización son:

- Uso de `persistent`, que complica la compartición de recursos.
- Límite de iteraciones dependiente de una entrada.
- Multiplicaciones matriciales densas escritas como operaciones de alto nivel.
- Estructura poco explícita para aplicar streaming de forma controlada.

## Reescritura del solver para HDL Coder

La solución fue mantener la matemática del algoritmo, pero expresar el cálculo en una forma más explícita y más fácil de mapear a hardware. La versión actual de `examples/mpc/fx_qp_admm.m` es:

<details>
<summary>Ver versión reescrita de <code>fx_qp_admm</code></summary>

```matlab
function [t] = fx_qp_admm(q, g, iters)
% fx_qp_admm - Solución de un problema de optimización cuadrática con ADMM

    N_SYS = 2;
    M_SYS = 1;
    N_HOR = 4;

    N_QP = N_HOR * M_SYS;                 % 4
    M_QP = 2 * N_HOR * (N_SYS + M_SYS);   % 24
    G = single([ 1 0 0 0;
                 0 1 0 0;
                 0 0 1 0;
                 0 0 0 1;
                -1 0 0 0;
                 0 -1 0 0;
                 0 0 -1 0;
                 0 0 0 -1;
                 0.0385394841 0 0 0;
                 1.93594096e-05 0 0 0;
                 0.0374783464 0.0385394841 0 0;
                 5.73658581e-05 1.93594096e-05 0 0;
                 0.0364464223 0.0374783464 0.0385394841 0;
                 9.43258419e-05 5.73658581e-05 1.93594096e-05 0;
                 0.0354429111 0.0364464223 0.0374783464 0.0385394841;
                 0.000130268178 9.43258419e-05 5.73658581e-05 1.93594096e-05;
                -0.0385394841 0 0 0;
                -1.93594096e-05 0 0 0;
                -0.0374783464 -0.0385394841 0 0;
                -5.73658581e-05 -1.93594096e-05 0 0;
                -0.0364464223 -0.0374783464 -0.0385394841 0;
                -9.43258419e-05 -5.73658581e-05 -1.93594096e-05 0;
                -0.0354429111 -0.0364464223 -0.0374783464 -0.0385394841;
                -0.000130268178 -9.43258419e-05 -5.73658581e-05 -1.93594096e-05 ]);

    R_inv = single([ 2.47927713   -0.0101672383 -0.00845972542 -0.00676105311;
                    -0.0101672392  2.48085499   -0.00855126418 -0.00680351257;
                    -0.00845972635 -0.00855126418 2.48251104   -0.00685224542;
                    -0.00676105265 -0.00680351257 -0.00685224542 2.48425579 ]);

    P = single([ -0.100709476 0 0 0 0.100709476 0 0 0 -0.00388129125 -1.94967606e-06 -0.00377442455 -5.77728542e-06 -0.00367050013 -9.49950572e-06 -0.00356943696 -1.31192401e-05 0.00388129125 1.94967606e-06 0.00377442455 5.77728542e-06 0.00367050013 9.49950572e-06 0.00356943696 1.31192401e-05;
                  0 -0.100709476 0 0 0 0.100709476 0 0 0 0 -0.00388129125 -1.94967606e-06 -0.00377442455 -5.77728542e-06 -0.00367050013 -9.49950572e-06 0 0 0.00388129125 1.94967606e-06 0.00377442455 5.77728542e-06 0.00367050013 9.49950572e-06;
                  0 0 -0.100709476 0 0 0 0.100709476 0 0 0 0 0 -0.00388129125 -1.94967606e-06 -0.00377442455 -5.77728542e-06 0 0 0 0 0.00388129125 1.94967606e-06 0.00377442455 5.77728542e-06;
                  0 0 0 -0.100709476 0 0 0 0.100709476 0 0 0 0 0 0 -0.00388129125 -1.94967606e-06 0 0 0 0 0 0 0.00388129125 1.94967606e-06 ]);

    q = single(q);
    g = single(g);

    tk = zeros(N_QP, 1, 'single');
    zk = zeros(M_QP, 1, 'single');
    uk = zeros(M_QP, 1, 'single');

    v_x = zeros(M_QP, 1, 'single');
    y   = zeros(N_QP, 1, 'single');
    w   = zeros(M_QP, 1, 'single');

    MAX_ITERS = coder.const(10);

    if iters < 0
        iters_eff = int32(0);
    elseif iters > MAX_ITERS
        iters_eff = int32(MAX_ITERS);
    else
        iters_eff = int32(iters);
    end

    coder.hdl.loopspec('stream', 10);

    for k = 1:MAX_ITERS
        if k <= iters_eff

            coder.hdl.loopspec('stream',24);
            for i = 1:24
                v_x(i) = zk(i) - g(i) + uk(i);
            end

            coder.hdl.loopspec('stream',4);
            for r = 1:4
                acc = single(0);
                coder.hdl.loopspec('stream',24);
                for c = 1:24
                    acc = acc + P(r,c) * v_x(c);
                end
                y(r) = acc - q(r);
            end

            coder.hdl.loopspec('stream',4);
            for r = 1:4
                acc = single(0);
                coder.hdl.loopspec('stream',4);
                for c = 1:4
                    acc = acc + R_inv(r,c) * y(c);
                end
                tk(r) = acc;
            end

            coder.hdl.loopspec('stream',24);
            for r = 1:24
                acc = single(0);
                coder.hdl.loopspec('stream',4);
                for c = 1:4
                    acc = acc + G(r,c) * tk(c);
                end
                w(r) = acc;
            end

            coder.hdl.loopspec('stream',24);
            for i = 1:24
                ztmp = -w(i) - uk(i) + g(i);
                if ztmp < 0
                    zk(i) = single(0);
                else
                    zk(i) = ztmp;
                end
            end

            coder.hdl.loopspec('stream',24);
            for i = 1:24
                uk(i) = uk(i) + (w(i) + zk(i) - g(i));
            end

        end
    end

    t = tk;
end
```

</details>

Los cambios más importantes fueron:

- Eliminar `persistent` y declarar explícitamente los estados internos.
- Fijar un máximo de iteraciones con `MAX_ITERS = coder.const(10)`.
- Saturar `iters` al rango permitido para no dejar el hardware completamente abierto.
- Reescribir multiplicaciones matriciales como bucles explícitos.
- Aplicar `coder.hdl.loopspec('stream', N)` en los tramos donde sí se puede compartir hardware.

## Resultado tras la reescritura

Con esta versión, HDL Coder ya puede mapear el solver de forma más eficiente. El mensaje relevante de generación pasa a ser:

```text
### The DUT requires an initial pipeline setup latency. Each output port experiences these additional delays.
### Output port 1: 1 cycles.
 ### MESSAGE: The design requires 10 times faster clock with respect to the base rate = 1.
```

Esto indica que la salida queda desfasada un ciclo y que el diseño necesita 10 ciclos internos por cada muestra de entrada para sostener la compartición de recursos definida por el `stream` exterior.

El reporte de recursos mejora de forma importante:

![Recursos MPC optimizado](../../HDL_coder/images/HDL_mpc3.png)

La reducción es suficiente para que el diseño sea mucho más viable en FPGA. Aun así, todavía existe margen adicional de optimización, porque la función `mpc` mantiene operaciones matriciales que también podrían reescribirse con el mismo criterio.

## Verificación de timing

Después del flujo FIL, el reporte de timing que conviene revisar es:

`mpc_fixpt_fil/fpgaproj/mpc_fixpt_fil.runs/impl_1/mpc_fixp_fil_timing_summary_routed.rpt`

Un extracto típico es:

```text
------------------------------------------------------------------------------------------------
| Design Timing Summary
| ---------------------
------------------------------------------------------------------------------------------------

    WNS(ns)      TNS(ns)  TNS Failing Endpoints  TNS Total Endpoints      WHS(ns)      THS(ns)  THS Failing Endpoints  THS Total Endpoints     WPWS(ns)     TPWS(ns)  TPWS Failing Endpoints  TPWS Total Endpoints
    -------      -------  ---------------------  -------------------      -------      -------  ---------------------  -------------------     --------     --------  ----------------------  --------------------
    -45.561   -15428.046                    445                 3408        0.044        0.000                      0                 3408        3.000        0.000                       0                  1722

------------------------------------------------------------------------------------------------
| Intra Clock Table
| -----------------
------------------------------------------------------------------------------------------------

Clock                     WNS(ns)      TNS(ns)  TNS Failing Endpoints  TNS Total Endpoints      WHS(ns)      THS(ns)  THS Failing Endpoints  THS Total Endpoints     WPWS(ns)     TPWS(ns)  TPWS Failing Endpoints  TPWS Total Endpoints
-----                     -------      -------  ---------------------  -------------------      -------      -------  ---------------------  -------------------     --------     --------  ----------------------  --------------------
TCK                         5.516        0.000                      0                  943        0.079        0.000                      0                  943        6.596        0.000                       0                   508
sysclk                                                                                                                                                                  3.000        0.000                       0                     1
  clk_out1_clk_wiz_0      -45.561   -15428.046                    445                 2465        0.044        0.000                      0                 2465       18.750        0.000                       0                  1210
  clkfbout_clk_wiz_0                                                                                                                                                    7.845        0.000                       0                     3

Timing constraints are not met.
```

Aquí, `clk_out1_clk_wiz_0` corresponde al reloj interno del diseño y `TCK` al wrapper de comunicación con MATLAB/Simulink. El valor `WNS = -45.561` indica que todavía falta margen para cerrar timing con esa configuración, por lo que el diseño ya puede caber en recursos, pero aún no necesariamente cumple frecuencia objetivo.

## Conclusión

Este ejemplo muestra bien una limitación práctica de HDL Coder: que un algoritmo sea correcto en MATLAB no implica que su primera traducción a HDL sea razonable. En `mpc`, la clave no fue cambiar el controlador, sino reescribir `fx_qp_admm` para que la herramienta pudiera compartir multiplicadores, controlar iteraciones y producir una arquitectura mucho más compacta.
