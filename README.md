# HDL Coder / HDL Verifier (guia y ejemplos)

Este repositorio contiene un proyecto academico orientado a **guiar el uso basico de HDL Coder y HDL Verifier** para la generacion de HDL a partir de modelos de alto nivel en MATLAB/Simulink. El material combina explicaciones conceptuales, pasos de configuracion y ejemplos reproducibles que permiten comprender el flujo completo: desde el modelo funcional en alto nivel hasta la verificacion en co-simulacion y FPGA-in-the-Loop (FIL).

El objetivo principal es **reducir la brecha entre el diseno algorítmico y su implementacion en hardware**, mostrando buenas practicas para:
- convertir modelos a punto fijo,
- controlar latencia y throughput,
- manejar saturacion y escalamiento,
- interpretar reportes de recursos,
- validar equivalencia funcional entre modelos y HDL.

## Alcance

El repositorio esta organizado por ejemplos practicos y documentos de soporte. Cada ejemplo incluye su propio README con detalles del flujo y resultados. En conjunto, los casos cubren desde diseños simples (producto punto y contador) hasta sistemas de control y un nucleo de red neuronal por eventos.

## Estructura general

- `HDL_coder/`: guia practica del flujo con HDL Coder, recomendaciones de configuracion y consideraciones de latencia/recursos.
- `HDL_Verifier/`: material de verificacion con HDL Verifier, incluyendo co-simulacion y FIL.
- `examples/`: ejemplos completos con modelos, scripts y resultados.
- `docs/`: documentos de memoria y capitulos del informe.

## Ejemplos incluidos (resumen)

- **Producto punto**: flujo base de MATLAB a HDL, comparacion fixed-point vs floating-point y efecto de stream loops.
- **PID con anti-windup**: controlador discreto en lazo cerrado, validacion de saturaciones y respuesta en FIL.
- **PI y overclocking**: impacto del overclocking en la respuesta y necesidad de alinear ciclos internos.
- **Contador**: demostracion del muestreo y del overclocking en un modulo Verilog sencillo.
- **SNN**: nucleo de red neuronal por eventos, empaquetado de entradas, oversampling y validacion en FIL.
- **MPC/ADMM**: caso complejo para analizar limites de sintetizabilidad y optimizacion de recursos.

## Uso sugerido

1) Revisar `HDL_coder/README.md` para entender el flujo base de generacion de HDL.
2) Consultar `HDL_Verifier/FIL/README.md` para el flujo de verificacion y ejecucion en FPGA.
3) Explorar cada subcarpeta en `examples/` para ver modelos, scripts y resultados.
4) Revisar `docs/escrito/` para el desarrollo completo de la memoria.

## Notas

- Este repositorio no reemplaza la documentacion oficial de MathWorks; se orienta a la practica y a la comprension del flujo.
- Los resultados dependen de las versiones de MATLAB/Simulink y de las herramientas de sintesis utilizadas.

---

Si necesitas ampliar algun ejemplo o agregar nuevos casos, la estructura del repositorio esta pensada para crecer sin romper el flujo principal.
