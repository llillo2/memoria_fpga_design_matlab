# SNN MATLAB a FPGA-in-the-Loop (tutorial reproducible)

Este README resume el flujo completo para replicar el experimento del reporte `snn_matlab.pdf`, usando los scripts y modelos en este directorio.

## 1) Requisitos

- MATLAB/Simulink con HDL Coder y HDL Verifier.
- (Opcional) Computer Vision Toolbox para el flujo con imagenes.
- Un simulador HDL en el PATH (ejemplo con Vivado).

## 2) Archivos clave

- `snn.m`: implementacion de la SNN binaria (entrada 784 bits, salida 10 bits).
- `snn_params.m`: pesos y umbral (autogenerado).
- `fc1_full_weights.csv`: pesos entrenados en Python.
- `spike_train.mem`: 100 frames de spikes de prueba.
- `frames/`: 100 imagenes de entrada (28x28).
- `test.m`: banco de pruebas MATLAB.
- `cosimulation.slx`: modelo Simulink de co-simulacion.
- `snn_matlab.pdf`: reporte LaTeX ya compilado.

## 3) Entrenamiento en Python (salida de artefactos)

El entrenamiento en Python usa codificacion de latencia con un solo paso temporal. De ahi salen:

- `fc1_full_weights.csv`
- `spike_train.mem`
- `frames/`
- etiquetas/esperados para los frames de prueba

## 4) Implementacion de la SNN en MATLAB

La funcion `snn.m` acumula solo los pesos de las entradas que tienen spike y compara contra el umbral. La entrada es un bus empaquetado de 784 bits (ufix784) y la salida es ufix10.

## 5) Empaquetado de 784 bits (puertos vectoriales)

En FPGA-in-the-Loop no se soportan puertos vectoriales (N x 1). HDL Coder los scalariza, generando 784 puertos si se usa un vector logico. Para tener un solo puerto, se usa un escalar con word length 784 (ufix784). HDL Coder soporta word lengths grandes (hasta 65535 bits).

## 6) Banco de pruebas (MATLAB)

El banco de pruebas lee `spike_train.mem`, empaqueta cada frame como ufix784 y ejecuta la SNN:

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

## 7) HDL Coder (Workflow Advisor)

1) Cargar `snn.m` como DUT y el testbench MATLAB.
2) Convertir a punto fijo (recomendado):
   - Type proposal: `Propose fraction lengths`
   - Default word length: 16 bits
   - Saturate en acumulador
3) Validar tipos y comparar salidas float vs fixed.

Imagenes de referencia:
- `images/workflow_1.png`
- `images/workflow_3.png`
- `images/workflow_4.png`
- `images/workflow_5_comparacion_salidas.png`

## 8) Generacion HDL y optimizacion

- Target por defecto.
- Verilog recomendado (VHDL dio errores en pruebas).
- Activar reportes.
- Optimization: `Stream Loop` para compartir recursos.
  - Con stream loops: menos recursos, mas ciclos internos (7840 por frame).
  - Con `None` (unroll): mas recursos, menos ciclos.

Imagenes de referencia:
- `images/workflow_6_hdl_code_generation_target.png`
- `images/workflow_6_hdl_code_generation_optimization.png`
- `images/workflow_6_hdl_code_generation_clock_and_port.png`
- `images/workflow_7_recursos_usados_stream.png`
- `images/workflow_7_recursos_usados_sin_stream.png`

## 9) Co-simulacion (HDL Verifier)

Configurar el simulador en el PATH (ejemplo Vivado):

```matlab
hdlsetuptoolpath('ToolName','Xilinx Vivado','ToolPath','C:\Xilinx\Vivado\20xx.x\bin\vivado.bat');
```

Luego ejecutar co-simulacion y comparar la salida con `snn_fixpt.m`.

Imagenes de referencia:
- `images/workflow_8_cosimlation.png`
- `images/workflow_8_cosimlation_output_Result.png`

## 10) FPGA-in-the-Loop (FIL)

El flujo de FIL es mas lento porque incluye sintesis, implementacion y bitstream. Se espera el mismo resultado que en co-simulacion.

Imagenes de referencia:
- `images/workflow_9_FIL.png`
- `images/workflow_9_FIL_Result.png`

## 11) Verificacion en Simulink

- Crear el bloque con FIL Wizard.
- Configurar oversampling a 7840 por el uso de stream loops.
- Agregar retardo de 1 ciclo para alinear salida FIL con la salida MATLAB.

Imagenes de referencia:
- `images/workflow_10_FIL_block.png`
- `images/workflow_10_FIL_block_config.png`
- `images/workflow_10_diagram.png`
- `images/workflow_10_FIL_analizer.png`
- `images/workflow_10_FIL_cosim_diagram.png`
- `images/workflow_10_FIL_cosim_result.png`

## 12) Prueba con Computer Vision Toolbox (opcional)

Funcion para convertir imagen a frame de spikes:

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

Imagen de referencia:
- `images/workflow_10_FIL_cosim_with_CVT.png`

## 13) Compilar el reporte

El PDF se genera con:

```bash
python compilar_latex.py
```

El archivo de salida es `snn_matlab.pdf`.
