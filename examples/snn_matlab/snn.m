function spikes_out = snn(spikes_in)
    % SNN  Computa la salida de una red neuronal de disparos binaria.
    
    params = snn_params();
    W = params.W;            % Matriz de pesos MxN (M entradas, N salidas)
    thresh = params.thresh;              % Umbral de disparo para cada neurona de salida

    [M, N] = size(W);        % M=784, N=10 (por ejemplo)

    % Inicializa vector de salida como ufixN (en este caso ufix10)
    spikes_out = fi(0, 0, N, 0);

    % Recorre cada neurona de salida j
    for j = 1:N
        acc = 0;             % Acumulador de la suma ponderada de entradas
        % Suma W(i,j) solo si la neurona de entrada i está disparando
        for i = 1:M
            % bit 1 = LSB, y que i=1 corresponde al MSB:
            %   - i=1  --> bit M
            %   - i=M  --> bit 1
            if bitget(spikes_in, M - i + 1)
                acc = acc + W(i,j);
            end
        end
        % Si la suma supera el umbral, activa el bit correspondiente en la salida
        % j=1 como MSB de la salida 
        if acc >= thresh
            spikes_out = bitset(spikes_out, N - j + 1, 1);
        end
    end
end
