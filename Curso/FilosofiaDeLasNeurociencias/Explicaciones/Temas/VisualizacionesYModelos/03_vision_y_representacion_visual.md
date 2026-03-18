# Vision y representacion visual

## 1. Via visual basica

```mermaid
flowchart LR
    A[Luz] --> B[Retina]
    B --> C[Nervio optico]
    C --> D[Quiasma optico]
    D --> E[Tracto optico]
    E --> F[Nucleo geniculado lateral]
    F --> G[Radiaciones opticas]
    G --> H[V1]
    H --> I[Areas visuales extrastriadas]
```

## 2. Cruce de informacion en el quiasma

```mermaid
flowchart TD
    LN[Retina nasal izquierda] --> RH[Hemisferio derecho]
    LT[Retina temporal izquierda] --> LH[Hemisferio izquierdo]
    RN[Retina nasal derecha] --> LH[Hemisferio izquierdo]
    RT[Retina temporal derecha] --> RH[Hemisferio derecho]
```

## 3. Especializacion funcional al estilo Zeki

```mermaid
flowchart TD
    A[Escena visual] --> B1[Color]
    A --> B2[Movimiento]
    A --> B3[Forma]
    A --> B4[Orientacion]
    B1 --> C[Procesamiento distribuido]
    B2 --> C
    B3 --> C
    B4 --> C
    C --> D[Experiencia visual integrada]
```

## 4. Esquema computacional minimo de percepcion visual

```latex
\[
I(x,y,\lambda,t)
\]
```

puede leerse como una señal luminica dependiente de:

- posicion espacial \((x,y)\),
- longitud de onda \(\lambda\),
- tiempo \(t\).

Una formalizacion minima del procesamiento visual seria:

```latex
\[
V = \mathcal{T}(I)
\]
```

donde \(I\) es la entrada luminica y \(\mathcal{T}\) representa la cadena de transformaciones neurales que terminan en experiencia y discriminacion visual.

## 5. Lo filosofico del sistema visual

```mermaid
flowchart LR
    A[Input fisico] --> B[Transduccion]
    B --> C[Procesamiento segmentado]
    C --> D[Integracion]
    D --> E[Percepcion]
    E --> F[Reconocimiento / conducta]
```

Lectura filosofica:

- no hay copia directa del mundo;
- hay transformacion y seleccion;
- la unidad fenomenica resulta de procesos distribuidos.

