# Memoria, representacion y espacio

## 1. Memoria segun de Brigard y Robins

```mermaid
flowchart TD
    A[Memoria] --> B[Facultad]
    A --> C[Proceso]
    A --> D[Contenido]

    C --> C1[Codificacion]
    C --> C2[Almacenamiento]
    C --> C3[Recuperacion]
```

## 2. Modelo estandar de memoria

```mermaid
flowchart TD
    A[Memoria] --> B[Corto plazo]
    A --> C[Largo plazo]
    C --> D[Declarativa / explicita]
    C --> E[No declarativa / implicita]
    D --> F[Episodica]
    D --> G[Semantica]
    E --> H[Procedimental]
    E --> I[Priming]
    E --> J[Aprendizaje emocional]
    E --> K[Aprendizaje no asociativo]
```

## 3. Problema filosofico de la huella

```latex
\[
E_0 \xrightarrow{\text{codificación}} T \xrightarrow{\text{conservación}} R_t
\]
```

donde:

- \(E_0\) = evento inicial;
- \(T\) = traza o engrama;
- \(R_t\) = recuerdo recuperado en un tiempo posterior.

La pregunta filosofica es:

```latex
\[
R_t = E_0 \; ?
\]
```

o mejor:

```latex
\[
R_t \approx f(E_0, T, C_t)
\]
```

donde \(C_t\) representa el contexto de recuperacion. Esto permite una lectura reconstructiva de la memoria.

## 4. Celulas concepto

```mermaid
flowchart LR
    A[Foto 1 de una persona] --> X[Neurona altamente selectiva]
    B[Foto 2 de la misma persona] --> X
    C[Nombre escrito] --> X
    D[Variacion conceptual relevante] --> X
```

Punto clave:

- no responde solo a una imagen particular;
- responde a un referente o concepto mas abstracto.

## 5. Mapa espacial

```mermaid
flowchart TD
    A[Entorno] --> B[Celulas de lugar]
    A --> C[Celulas de rejilla]
    A --> D[Celulas de direccion]
    A --> E[Celulas de borde]
    B --> F[Mapa espacial usable]
    C --> F
    D --> F
    E --> F
    F --> G[Navegacion]
    F --> H[Memoria espacial]
```

