%% QP SOLVER - ADMM
% ===============================================================================
% Alfonso Cortes Neira - Universidad Técnica Federico Santa María
% 16-02-2023
% Based on the work by Juan David Escárate
% ===============================================================================
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

    q = single(q);   % 4x1
    g = single(g);   % 24x1

    %se declaran solo como matrices de 0 las variables que conservar un valor para la iteracion siguiente 
    %sin el uso de persistent

    tk = zeros(N_QP, 1, 'single');  % 4x1
    zk = zeros(M_QP, 1, 'single');  % 24x1
    uk = zeros(M_QP, 1, 'single');  % 24x1

    v_x = zeros(M_QP, 1, 'single'); % 24x1
    y   = zeros(N_QP, 1, 'single'); % 4x1  (P*v_x - q)
    w   = zeros(M_QP, 1, 'single'); % 24x1 (G*tk)


    % Matlab no recomienda que una iteracion del for sea una entrada o una variable al
    % convertir a HDL, la cantidad de recursos aumenta y la precicion
    % interna disminuye, por ello se toma un valor maximo que puede tomar
    % las iteraciones, para que se genere un hardware mas preciso

    MAX_ITERS = coder.const(10);  % límite fijo para el hardware

    % Saturar iters al rango [0, MAX_ITERS]
    if iters < 0
        iters_eff = int32(0);
    elseif iters > MAX_ITERS
        iters_eff = int32(MAX_ITERS);
    else
        iters_eff = int32(iters);
    end

    % Bucle exterior con límite fijo y streaming
    coder.hdl.loopspec('stream', 10);

    for k = 1:MAX_ITERS 
        % Solo hacemos el cuerpo del bucle si no hemos superado iters_eff
        if k <= iters_eff

            % ------------------------------------------------------------
            % v_x = zk - g + uk   (24 iteraciones)
            coder.hdl.loopspec('stream',24);
            for i = 1:24
                v_x(i) = zk(i) - g(i) + uk(i);
            end

            % ------------------------------------------------------------
            % y = P*v_x - q
            % P*v_x: (4x24)*(24x1) -> 4x1
            coder.hdl.loopspec('stream',4);
            for r = 1:4
                acc = single(0);
                coder.hdl.loopspec('stream',24);
                for c = 1:24
                    acc = acc + P(r,c) * v_x(c);
                end
                y(r) = acc - q(r);
            end

            % ------------------------------------------------------------
            % tk = R_inv * y   (4x4)*(4x1) -> 4x1
            coder.hdl.loopspec('stream',4);
            for r = 1:4
                acc = single(0);
                coder.hdl.loopspec('stream',4);
                for c = 1:4
                    acc = acc + R_inv(r,c) * y(c);
                end
                tk(r) = acc;
            end

            % ------------------------------------------------------------
            % w = G*tk   (24x4)*(4x1) -> 24x1
            coder.hdl.loopspec('stream',24);
            for r = 1:24
                acc = single(0);
                coder.hdl.loopspec('stream',4);
                for c = 1:4
                    acc = acc + G(r,c) * tk(c);
                end
                w(r) = acc;
            end

            % ------------------------------------------------------------
            % zk = max(0, -w - uk + g)  (24 iteraciones)
            coder.hdl.loopspec('stream',24);
            for i = 1:24
                ztmp = -w(i) - uk(i) + g(i);
                if ztmp < 0
                    zk(i) = single(0);
                else
                    zk(i) = ztmp;
                end
            end

            % ------------------------------------------------------------
            % uk = uk + (w + zk - g)    (24 iteraciones)
            coder.hdl.loopspec('stream',24);
            for i = 1:24
                uk(i) = uk(i) + (w(i) + zk(i) - g(i));
            end

        end % if k <= iters_eff

    end % for k = 1:MAX_ITERS

    t = tk;
end
