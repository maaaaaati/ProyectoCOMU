# Formulación formal del bloque FDM — Semana 1

**Proyecto:** Diseño y modelado de un sistema de transmisión FDM con modulación FM y receptor superheterodino utilizando MATLAB/Simulink  
**Etapa:** Semana 1 — Arquitectura, modelado y diseño del transmisor  
**Subsistema:** Multiplexación por división de frecuencia (FDM) mediante modulación SSB-SC  
**Estado:** Diseño base propuesto; pendiente de implementación y validación en Simulink.

## 1. Objetivo del subsistema

Diseñar y modelar un multiplexor por división de frecuencia (FDM) que combine **tres señales de audio independientes** dentro de un ancho de banda máximo permitido de **120 kHz**. Cada señal se trasladará a una subbanda exclusiva mediante **modulación de banda lateral única con portadora suprimida (SSB-SC)**, utilizando la **banda lateral superior (USB)**. La salida compuesta alimentará posteriormente el modulador FM del transmisor.

> **Nota terminológica:** En este proyecto se utiliza *FDM* para el multiplexado de varias señales en un mismo enlace. La asignación de subbandas tiene una lógica de acceso por frecuencia, pero *FDMA* normalmente describe acceso múltiple entre usuarios; por precisión, el bloque se denominará **multiplexor FDM con SSB-USB**.

## 2. Requerimientos y supuestos de diseño

- Número de señales de entrada: \(N=3\).
- Ancho de banda máximo por señal exigido por el proyecto: \(15\,\mathrm{kHz}\).
- Ancho de banda máximo de la señal multiplexada: \(B_{\mathrm{FDM,max}}=120\,\mathrm{kHz}\).
- Se adopta una distribución de audio de **4 kHz, 8 kHz y 12 kHz**, todos dentro del límite individual de 15 kHz.
- Se utilizará SSB-SC con selección de **USB** en los tres canales.
- El contenido espectral positivo de cada audio está definido desde **30 Hz**; se considera que no existe contenido significativo fuera de las bandas especificadas.
- Las señales de entrada deberán filtrarse y normalizarse antes de la modulación SSB.
- La ubicación de los subcanales es parte del **diseño del FDM**, independiente de la selección posterior de la portadora RF de FM.

## 3. Variables, parámetros y nomenclatura

| Parámetro | Símbolo | Valor / definición | Unidad |
|---|---|---|---|
| Número de canales | \(N\) | 3 | — |
| Frecuencia mínima de audio | \(f_{\min}\) | 30 | Hz |
| Ancho de banda audio 1 | \(B_1\) | 4 000 | Hz |
| Ancho de banda audio 2 | \(B_2\) | 8 000 | Hz |
| Ancho de banda audio 3 | \(B_3\) | 12 000 | Hz |
| Límite superior audio 1 | \(f_{1,\max}\) | 4 030 | Hz |
| Límite superior audio 2 | \(f_{2,\max}\) | 8 030 | Hz |
| Límite superior audio 3 | \(f_{3,\max}\) | 12 030 | Hz |
| Subportadora canal 1 | \(f_{c1}\) | 30 000 | Hz |
| Subportadora canal 2 | \(f_{c2}\) | 36 000 | Hz |
| Subportadora canal 3 | \(f_{c3}\) | 46 000 | Hz |
| Ancho de banda máximo FDM | \(B_{\mathrm{FDM,max}}\) | 120 000 | Hz |
| Señal de entrada al canal \(i\) | \(m_i(t)\) | Audio real, filtrado y normalizado | — |
| Señal modulada SSB-USB \(i\) | \(s_i(t)\) | Subcanal en su banda asignada | — |
| Señal multiplexada | \(m_{\mathrm{FDM}}(t)\) | Suma de los tres subcanales | — |
| Ganancia por canal | \(a_i\) | Ajustable, inicial 1 | — |
| Frecuencia de muestreo | \(f_s\) | Por definir según implementación global | Hz |

**Convención:** Al especificar, por ejemplo, el audio 1 entre 30 y 4030 Hz, su **anchura** es \(4030-30=4000\,\mathrm{Hz}\). La señal real presenta componentes correspondientes en frecuencias negativas.

## 4. Plan de frecuencias FDM

Para una banda lateral superior, el contenido positivo del audio se traslada según

\[
[f_{i,\min},f_{i,\max}]\longrightarrow
[f_{ci}+f_{i,\min},\;f_{ci}+f_{i,\max}].
\]

| Canal | Audio original | Subportadora | Banda SSB-USB asignada | Ancho ocupado |
|---|---:|---:|---:|---:|
| 1 | 0.030–4.030 kHz | 30 kHz | **30.030–34.030 kHz** | 4 kHz |
| 2 | 0.030–8.030 kHz | 36 kHz | **36.030–44.030 kHz** | 8 kHz |
| 3 | 0.030–12.030 kHz | 46 kHz | **46.030–58.030 kHz** | 12 kHz |

### 4.1 Bandas de guarda

\[
B_{g,12}=36.030-34.030=\boxed{2\,\mathrm{kHz}}
\]

\[
B_{g,23}=46.030-44.030=\boxed{2\,\mathrm{kHz}}
\]

Estas bandas de guarda permitirán acomodar transiciones de filtrado, siempre que los filtros implementados tengan atenuación suficiente en las zonas adyacentes. La interferencia entre canales deberá verificarse en simulación.

### 4.2 Ancho de banda ocupado

La extensión total de la banda positiva multiplexada, desde su primera hasta su última componente, es

\[
B_{\mathrm{FDM,ocupado}}=58.030-30.030=\boxed{28\,\mathrm{kHz}}.
\]

Este valor incluye **24 kHz de subbandas de audio** y **4 kHz de bandas de guarda**:

\[
B_1+B_2+B_3+B_{g,12}+B_{g,23}=4+8+12+2+2=28\,\mathrm{kHz}.
\]

Por tanto,

\[
B_{\mathrm{FDM,ocupado}}=28\,\mathrm{kHz}\leq 120\,\mathrm{kHz}.
\]

**Importante:** Los **28 kHz** expresan la *anchura de la región espectral positiva ocupada*; la frecuencia máxima de la señal FDM es **58.03 kHz**, que será relevante para diseñar el modulador FM y aplicar Carson. No debe confundirse el ancho de la región positiva con su frecuencia máxima.

El aprovechamiento relativo del límite de 120 kHz, si se compara solamente la extensión ocupada, es

\[
\eta_B=\frac{28}{120}\times100\%=\boxed{23.33\%}.
\]

Se mantiene, por tanto, un margen considerable de espectro dentro del máximo indicado.

### 4.3 Esquema espectral conceptual (frecuencia positiva)

```text
Frecuencia (kHz)
30.03        34.03  36.03                44.03  46.03                         58.03
  |--- Audio 1 ---| 2 kHz |------ Audio 2 ------| 2 kHz |--------- Audio 3 ---------|
        4 kHz                     8 kHz                          12 kHz

               <----------- Extensión total ocupada: 28 kHz ----------->
```

*El esquema representa las bandas, no las amplitudes del espectro de los audios.*

## 5. Modelado matemático SSB-USB

La modulación SSB puede implementarse mediante el método de la **transformada de Hilbert**. Sea \(\widehat{m_i}(t)=\mathcal{H}\{m_i(t)\}\) la transformada de Hilbert del audio \(i\). Su subcanal USB real y con portadora suprimida se define como:

\[
\boxed{
s_i(t)=a_i\left[m_i(t)\cos(2\pi f_{ci}t)
-\widehat{m_i}(t)\sin(2\pi f_{ci}t)\right].
}
\]

La misma expresión se puede escribir mediante señal analítica:

\[
m_{i,a}(t)=m_i(t)+j\widehat{m_i}(t),
\]

\[
s_i(t)=a_i\operatorname{Re}\left\{m_{i,a}(t)e^{j2\pi f_{ci}t}\right\}.
\]

La suma de los tres canales constituye la señal multiplexada:

\[
\boxed{m_{\mathrm{FDM}}(t)=s_1(t)+s_2(t)+s_3(t).}
\]

Para señales normalizadas, se recomienda evaluar una **ganancia global de escalado** a la salida del sumador de modo que la desviación FM posterior pueda fijarse sin saturación y sin cambiar de manera arbitraria los niveles relativos de los canales.

### 5.1 Consideraciones de implementación discreta

En tiempo discreto, la fase de cada subportadora será \(2\pi f_{ci}n/f_s\), de modo que

\[
s_i[n]=a_i\left[m_i[n]\cos\left(2\pi\frac{f_{ci}}{f_s}n\right)
-\widehat{m_i}[n]\sin\left(2\pi\frac{f_{ci}}{f_s}n\right)\right].
\]

Si la transformada de Hilbert se obtiene con un filtro FIR, se deberá **compensar el retardo de grupo** entre la rama del audio directo y la rama en cuadratura para no degradar la supresión de la banda lateral inferior.

## 6. Arquitectura modular en Simulink

```text
Audio 1 → Normalización → Filtro 30–4030 Hz → SSB-USB (30 kHz) ──┐
                                                               │
Audio 2 → Normalización → Filtro 30–8030 Hz → SSB-USB (36 kHz) ──┼→ Σ → Escalado → m_FDM(t) → FM
                                                               │
Audio 3 → Normalización → Filtro 30–12030 Hz → SSB-USB (46 kHz) ─┘
```

Cada bloque SSB-USB podrá realizarse mediante:

1. Rama en fase: \(m_i[n]\) por coseno de la subportadora.
2. Rama en cuadratura: transformada de Hilbert \(\widehat{m_i}[n]\) por seno de la misma subportadora.
3. Sustracción entre ambas ramas para producir USB.
4. Verificación de supresión de la banda lateral no deseada.

**Bloques orientativos de MATLAB/Simulink:** `From Workspace` o fuentes de audio, filtros digitales (`Digital Filter` o bloques equivalentes), `Hilbert Transformer` cuando esté disponible, `Trigonometric Function` / generadores discretos, `Product`, `Sum`, `Gain`, `Spectrum Analyzer` y `Time Scope`. La disponibilidad exacta depende de las toolboxes y de la versión de MATLAB instalada.

### 6.1 Puertos del subsistema

**Entradas:** tres vectores o flujos discretos reales \(m_1[n], m_2[n], m_3[n]\), con una frecuencia de muestreo común y condiciones de normalización definidas.

**Salida:** una única secuencia real \(m_{\mathrm{FDM}}[n]\), cuya banda positiva de interés va aproximadamente de 30.03 a 58.03 kHz.

**Parámetros configurables:** \(f_{c1},f_{c2},f_{c3}, a_1,a_2,a_3,f_s\), características de los filtros, y ganancia global.

## 7. Frecuencia de muestreo

La frecuencia positiva máxima antes de FM es

\[
f_{\max,\mathrm{FDM}}=58.03\,\mathrm{kHz}.
\]

Si se genera una **señal FDM real en forma discreta sin técnicas especiales de muestreo pasobanda**, el requisito mínimo teórico de Nyquist es

\[
\boxed{f_s>2(58.03\,\mathrm{kHz})=116.06\,\mathrm{kHz}.}
\]

Se puede utilizar como punto de partida **\(f_s=500\,\mathrm{kHz}\)** para realizar y validar el multiplexor FDM por separado, con margen de transición para filtros y visualización espectral. **Este no es todavía el valor definitivo para todo el sistema**: el modulador FM, la frecuencia de su portadora simulada, la extensión espectral de Carson y la arquitectura elegida para el receptor podrían requerir una frecuencia de muestreo distinta o una representación compleja equivalente.

## 8. Estrategia de verificación del bloque

| Ensayo | Procedimiento | Resultado esperado |
|---|---|---|
| Verificación de entradas | Graficar tiempo y FFT de cada audio antes de SSB | Frecuencias dentro de las bandas definidas |
| Modulación por canal | Activar un único canal a la vez y medir su espectro | Únicamente banda USB en el rango asignado, con supresión adecuada de LSB |
| FDM completo | Activar los tres canales y visualizar FFT / Spectrum Analyzer | Tres subbandas distinguibles y guardas de 2 kHz |
| Ancho de banda | Medir bordes espectrales de la señal compuesta | Región aproximada 30.03–58.03 kHz |
| Separación | Filtrar individualmente cada subbanda y demodularla | Recuperación de cada audio con baja interferencia cruzada |
| Normalización | Verificar niveles de entrada y de suma | Niveles acotados y compatibles con el modulador FM posterior |
| Muestreo | Verificar espectro antes/después de los bloques discretos | Sin aliasing significativo |

Para caracterizar la recuperación se pueden registrar NMSE, correlación o relación señal-interferencia por canal, compensando retardos de los filtros y diferencias de ganancia antes de comparar señales.

## 9. Entregables previstos para la semana 1

- Subsistema `FDM_Multiplexer` con tres entradas y una salida, parametrizado y documentado.
- Gráficas temporales de las tres señales de audio y de la señal FDM.
- Espectros individuales de las tres subbandas USB y espectro multiplexado final.
- Tabla del plan de frecuencias y cálculo de bandas de guarda.
- Evidencia de ancho de banda ocupado no superior a 120 kHz.
- Explicación matemática del SSB-USB por transformada de Hilbert.
- Prueba inicial de separación y recuperación de audio por canal, si el tiempo de desarrollo lo permite.

## 10. Decisiones pendientes y conexión con la siguiente etapa

1. Seleccionar **audios sintéticos o reales** concretos y los filtros de preprocesamiento.
2. Validar la calidad de la supresión de banda lateral con los bloques disponibles en la instalación de MATLAB.
3. Ajustar ganancias y normalización del FDM antes de FM.
4. Definir la desviación máxima \(\Delta f\) del modulador FM, usando \(f_{m,\max}=58.03\,\mathrm{kHz}\) como frecuencia máxima de la información multiplexada.
5. Justificar la **representación RF/FI escalada**: los valores de referencia de 100 kHz para portadora FM y 17 kHz para FI requieren comprobar su compatibilidad con el espectro FM. No deben adoptarse automáticamente sin analizar el ancho de banda necesario y las limitaciones de mezcla y filtrado.

## 11. Conclusión técnica

La distribución propuesta para los tres canales, basada en SSB-SC con USB, permite transmitir señales de audio con anchos de banda de 4, 8 y 12 kHz en subbandas **30.03–34.03 kHz**, **36.03–44.03 kHz** y **46.03–58.03 kHz**, respectivamente. Se obtienen dos bandas de guarda de **2 kHz** y una extensión espectral positiva total de **28 kHz**, cumpliéndose la restricción de **120 kHz** del proyecto.

El diseño constituye una base matemática y modular para implementar el transmisor en Simulink. Su funcionamiento efectivo, la supresión de la banda lateral inferior y el aislamiento entre canales deberán demostrarse mediante simulación. La siguiente actividad consiste en desarrollar y verificar el bloque FDM, antes de integrarlo con el modulador FM y el receptor superheterodino.
