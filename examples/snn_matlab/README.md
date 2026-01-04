# SNN MATLAB a FPGA-in-the-Loop

Este README replica el contenido del reporte `snn_matlab.pdf` y sirve como tutorial para reproducir el flujo completo.

## Introduccion a las SNN

Las Spiking Neural Networks (SNN) procesan informacion mediante spikes (eventos discretos). Son asincronas y basadas en eventos, con computo solo cuando ocurre un spike.

**Funcionamiento basico**
- Cada neurona integra spikes entrantes sumando pesos sinapticos.
- Si el potencial supera un umbral, dispara un spike y se reinicia.
- En este enfoque se evita multiplicar: solo se suman los pesos con spike.

**Ventajas**
- Alta eficiencia energetica.
- Procesamiento temporal nativo.
- Computacion asincrona.
- Compatible con hardware neuromorfico.

**Aplicaciones**
- Vision por eventos.
- Robotica autonoma.
- Audio/biosenales.
- Sistemas embebidos de bajo consumo.

## Requisitos previos

- MATLAB/Simulink con HDL Coder y HDL Verifier.
- Soporte de placa objetivo.
- Licencias activas.

## Flujo general

1. Modelado y validacion en MATLAB/Simulink.
2. Generacion HDL con HDL Coder.
3. Verificacion con HDL Verifier (co-simulacion y FIL).

## Modelado de la SNN en MATLAB/Simulink

### Modelo matematico (equivalente al codigo)

El modelo sigue la misma logica de `snn.m`: para cada neurona de salida se acumulan solo los pesos con spike activo y se compara contra el umbral.

Para cada salida `j`:

- Entrada binaria: `s_i` (bit i de `spikes_in`).
- Acumulador: `acc_j = sum_{i: s_i=1} W(i,j)`.
- Disparo: `y_j = 1 si acc_j >= theta; 0 en caso contrario`.

En forma compacta:

- `acc_j = sum_{i=1..M} W(i,j) * s_i`.
- `y_j = 1 si acc_j >= theta, 0 en caso contrario`.

Como `s_i` es binario (0/1), la multiplicacion equivale a seleccionar o no el peso, tal como en el `if bitget(...)` del codigo.

### Enfoque de la prueba (MNIST)

Arquitectura minima:
- 784 neuronas de entrada (28x28)
- 10 neuronas de salida (clases 0-9)

Objetivo: validar el flujo completo, no maximizar rendimiento.

### Entrenamiento en Python y artefactos

Se entreno con codificacion de latencia (un solo paso temporal). Artefactos:
- `fc1_full_weights.csv`
- `spike_train.mem`
- `frames/`
- etiquetas/salidas esperadas

### Implementacion de la SNN en MATLAB (`snn.m`)

```matlab
function spikes_out = snn(spikes_in)
    % SNN  Computa la salida de una red neuronal de disparos binaria.

    params = snn_params();
    W = params.W;            % Matriz de pesos MxN (M entradas, N salidas)
    thresh = params.thresh;  % Umbral de disparo para cada neurona de salida

    [M, N] = size(W);        % M=784, N=10 (por ejemplo)

    % Inicializa vector de salida como ufixN (en este caso ufix10)
    spikes_out = fi(0, 0, N, 0);

    % Recorre cada neurona de salida j
    for j = 1:N
        acc = 0;             % Acumulador de la suma ponderada de entradas
        % Suma W(i,j) solo si la neurona de entrada i esta disparando
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
```

### Parametros y pesos (`snn_params.m`)

```matlab
function params = snn_params()
% Autogenerado por generate_hdl.m
params.thresh = 1 ;
params.beta = 1;
params.W = [ ...
  -0.14369439 0.00000000 -0.00000000 -0.10920773 -0.00000000 ...
  -0.10345996 0.00000000 0.00000000 -0.11495551 -0.29313657 ...
  0.00000000 -0.13219884 0.14944217 -0.14369439 -0.30463210 ...
  -0.08621664 -0.00000000 0.00000000 -0.00000000 -0.26439768 ...
  -0.00000000 -0.00000000 -0.12070329 -0.00000000 -0.19542436 ...
  ...]
```

Script de generacion de parametros:

```matlab
function write_params_file(filename, tresh, beta)
    fid = fopen(filename, 'w');

    fprintf(fid, 'function params = snn_params()\n');
    fprintf(fid, '%% Autogenerado por generate_hdl.m\n');
    fprintf(fid, 'params.tresh = %d;\n', params.FRAC);
    fprintf(fid, 'params.beta = %d;\n', params.WL_W);
    for r = 1:size(params.W, 1)
        fprintf(fid, '  %s;\n', row_as_text(params.W(r, :)));
    end
    fprintf(fid, '];\n');
    fprintf(fid, 'end\n');
    fclose(fid);
end
```

### Puertos vectoriales y empaquetado

En FPGA-in-the-Loop, los puertos vectoriales (N x 1) no estan soportados y HDL Coder los scalariza (784 puertos si se usa vector). Para obtener un solo puerto de 784 bits se usa un escalar con word length 784 (ufix784). HDL Coder soporta word lengths grandes (hasta 65535 bits).

### Banco de pruebas MATLAB con entrada empaquetada

El banco de pruebas toma los frames de `spike_train.mem`, los empaqueta en `ufix784` y ejecuta la SNN frame a frame, respetando el mapeo MSB/LSB.

```matlab
mem_file = 'spike_train.mem';

%% --- CARGAR FRAMES ---
fid = fopen(mem_file, 'r');
if fid < 0, error('No pude abrir %s', mem_file); end
C = textscan(fid, '%s', 'Delimiter','\n');
fclose(fid);
frames = C{1};

%% --- CREAR MATRIZ LOGICAL DE FRAMES ---
char_mat   = char(strtrim(frames));   % cada fila es "0101..."
frames_mat = (char_mat == '1');       % logical (num_frames x 784)

%% --- EMPAQUETAR TODOS LOS FRAMES A ufix784  ---
packed_in = fi(zeros(num_frames,1), 0, 784, 0);  % num_frames x 1, ufix784

% frames_mat(f,1)   -> bit 784 (MSB)
% frames_mat(f,784) -> bit 1   (LSB)
for i = 1:784
    packed_in = bitset(packed_in, 784 - i + 1, frames_mat(:, i));
end
in_ts = timeseries(packed_in, (0:num_frames-1)'*0.1);

for f = 1:num_frames
    out = snn(packed_in(f));   % ufix10
    fprintf('Frame %d -> %s\n', f, bin(out));
end
```

## Generacion de HDL con HDL Coder

### Flujo con Workflow Advisor

- Cargar `snn.m` como DUT y testbench MATLAB.
- Revisar compatibilidad.

![Carga DUT y testbench](images/workflow_1.png)

### Conversion a punto fijo

- Opcion: `Convert to fixed point`.
- Type proposal: `Propose fraction lengths`.
- Default word length: 16 bits.
- Saturate para evitar overflow/underflow.

![Fixed-point conversion](images/workflow_3.png)
![Fixed-point comparacion I/O](images/workflow_4.png)

El grafico muestra 1 frame distinto (float vs fixed). Para eliminarlo se aumentan bits.

![Comparacion salidas](images/workflow_5_comparacion_salidas.png)

### Configuracion de generacion HDL

- Target por defecto.
- Verilog recomendado (VHDL dio errores en pruebas).
- Activar reportes.

### Optimizacion y uso de recursos

En `Optimization` se usa `Stream Loop`:
- `None` (unroll) crea recursos dedicados por iteracion.
- `Stream Loop` comparte multiplicador y sumador.
- Se esperan 7840 ciclos internos por frame.

![Target de generacion](images/workflow_6_hdl_code_generation_target.png)
![Optimizacion Stream Loop](images/workflow_6_hdl_code_generation_optimization.png)
![Clocks & Ports](images/workflow_6_hdl_code_generation_clock_and_port.png)

Para co-simulacion se activa `DUT base rate as clock enable` en `Clocks & Ports`.

La diferencia de recursos se explica por el reparto de hardware: con `Stream Loop` se comparten recursos (menos DSP/LUT/FF, mas ciclos), con `None` se instancian recursos por iteracion (mas rapido, mucho mas hardware).

![Recursos con Stream Loop](images/workflow_7_recursos_usados_stream.png)
![Recursos sin Stream Loop](images/workflow_7_recursos_usados_sin_stream.png)

### Salida de generacion y logs

Mensajes clave:
- Latencia fija de 1 ciclo.
- Reloj interno 7840x el base rate.

```text
### Begin MATLAB to HDL Code Generation...
### Working on DUT: snn_fixpt.
### Using TestBench: test_old.
### The DUT requires an initial pipeline setup latency. Each output port experiences these additional delays.
### Output port 1: 1 cycles.
### MESSAGE: The design requires 7840 times faster clock with respect to the base rate = 1.
### Working on snn_fixpt_tc as snn_fixpt_tc.v.
### Begin Verilog Code Generation
### Working on snn_fixptp1 as snn_fixptp1.v.
### Working on snn_fixpt_enb_bypass as snn_fixpt_enb_bypass.v.
### Working on snn_fixpt as snn_fixpt.v.
### Generating Resource Utilization Report resource_report.html.
### Generating Optimization report
### To rerun codegen evaluate the following commands...
---------------------
cgi    = load('C:\Users\llillo\Desktop\cosas_ordenadas\uni\memoria\git\memoria_fpga_design_matlab\examples\snn_matlab\codegen\snn\hdlsrc\codegen_info.mat');
cfg    = cgi.CodeGenInfo.codegenSettings;
fxpCfg = cgi.CodeGenInfo.fxpCfg;
codegen -float2fixed fxpCfg -config cfg -report
---------------------
### Generating HDL Conformance Report snn_fixpt_hdl_conformance_report.html.
### HDL Conformance check complete with 0 errors, 1 warnings, and 1 messages.
### Code generation successful: View report
### Elapsed Time: '         26.8142' sec(s)
```

Interpretacion:
- La salida tiene retardo de 1 ciclo.
- El reloj interno debe ser 7840x.
- En FIL se configura oversampling a 7840.

## Verificacion

### Co-simulacion (HDL Verifier)

Se comparan `snn_fixpt.v` y `snn_fixpt.m` con el mismo testbench.

![Configuracion co-simulacion](images/workflow_8_cosimlation.png)

Configurar el simulador (ejemplo Vivado):

```matlab
hdlsetuptoolpath('ToolName','Xilinx Vivado','ToolPath','C:\Xilinx\Vivado\20xx.x\bin\vivado.bat');
```

![Resultado co-simulacion](images/workflow_8_cosimlation_output_Result.png)

### FPGA-in-the-Loop (FIL)

Se activan todas las casillas. Flujo mas lento por sintesis e implementacion. Resultado igual a co-simulacion.

![Configuracion FIL](images/workflow_9_FIL.png)
![Resultado FIL](images/workflow_9_FIL_Result.png)

### Verificacion en Simulink

- Crear bloque con FIL Wizard.
- Oversampling 7840.
- Retardo de 1 ciclo para alinear salida.

![Bloque FIL](images/workflow_10_FIL_block.png)
![Config bloque FIL](images/workflow_10_FIL_block_config.png)

Durante el test se usa `in_ts` y se activa logging de salida.

![Entorno de prueba](images/workflow_10_diagram.png)
![Logic Analyzer](images/workflow_10_FIL_analizer.png)

Comparacion con retardo de 1 ciclo:

![Diagrama comparacion](images/workflow_10_FIL_cosim_diagram.png)
![Resultado comparado](images/workflow_10_FIL_cosim_result.png)

### Prueba con Computer Vision Toolbox (opcional)

```matlab
function packed = image_to_packed_latency_ufix784(img, latency_threshold)

    if nargin < 2 || isempty(latency_threshold)
        latency_threshold = 0.5;
    end

    if ~isa(img, 'double')
        img = double(img);
    end

    if ndims(img) == 3
        if ~isequal(size(img), [28 28 3])
            error('La imagen debe ser 28x28x3.');
        end
        img_gray = rgb2gray(img / max(255, max(img(:))));
    else
        if ~isequal(size(img), [28 28])
            error('La imagen debe ser 28x28.');
        end
        img_gray = img / max(255, max(img(:)));
    end

    spikes = (img_gray.' > latency_threshold);

    packed = fi(0, 0, 784, 0);
    for i = 1:784
        packed = bitset(packed, 784 - i + 1, spikes(i));
    end
end
```

Prueba con frame 044 (digito 8): salida `0000000010` (bit 8 activo).

![Prueba con CVT](images/workflow_10_FIL_cosim_with_CVT.png)

## Resultados y conclusiones

Pendiente completar en el reporte:
- Resumen de metricas clave.
- Observaciones finales.
- Trabajo futuro.

## Compilar el reporte

```bash
python compilar_latex.py
```

El PDF de salida es `snn_matlab.pdf`.
