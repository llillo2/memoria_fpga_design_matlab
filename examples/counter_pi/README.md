Este ejemplo muestra el impacto del overclocking en un controlador PI sintetizado a HDL y probado con FPGA-in-the-Loop (FIL).
La parte integral acumula el error, por lo que el sobremuestreo o el muestreo insuficiente cambia el comportamiento.

El overclocking factor (OF) es la razon entre la frecuencia del FPGA y el paso de Simulink.
Para un muestreo $T_s$:

$$
f_{FPGA} = \frac{OF}{T_s}
\qquad
T_{FPGA} = \frac{T_s}{OF}
$$

## Modelo base en Simulink

Se parte de un modelo con una funcion MATLAB que implementa el PI en lazo cerrado.
La respuesta base sigue la referencia con el muestreo esperado.

| Diagrama base del PI | Respuesta del PI base |
| --- | --- |
| ![Diagrama base del PI](images/diagram_PI_matlab_function_simulink.png) | ![Respuesta del PI base](images/scope_PI_mat_function_simulink.png) |

En este ejemplo, las entradas estan discretizadas a $6.5\times 10^{-6}$ s.
El bloque PLECS es continuo, por lo que se usa un `Zero-Order Hold` para enlazar con el bloque FIL discreto.
La salida de la FPGA y la entrada de PLECS tienen distinto ancho de palabra, asi que se usa un `Data Type Conversion` a `int8`.

## Bloque FIL y configuracion de overclocking

El controlador se sintetiza con Vitis y se genera el bloque FIL con `FIL Wizard`.
El HDL generado requiere 11 ciclos internos para producir una salida valida, por lo que se espera un OF de 11.
El diagrama de simulacion con FIL es:

![Diagrama de simulacion con el bloque FIL del PI.](images/diagram_PI_FI_simulink.png)

## Resultados

Se evaluan tres factores de overclocking: `OF = 1`, `OF = 11` y `OF = 75`.

| OF = 1 | OF = 11 | OF = 75 |
| --- | --- | --- |
| ![OF=1](images/scope_PI_FIL_simulink_overfactor1.png) | ![OF=11](images/scope_PI_FIL_simulink_overfactor11.png) | ![OF=75](images/scope_PI_FIL_simulink_overfactor75.png) |

Resumen:
- `OF = 1`: el controlador no logra el desempeno esperado porque el diseno requiere 11 ciclos internos.
- `OF = 11`: la respuesta coincide con la referencia.
- `OF = 75`: hay sobremuestreo, con sobreimpulsos mas pronunciados y mayor tiempo de estabilizacion.
