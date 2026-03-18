# Lenguaje y arquitecturas

## 1. Neurolinguistica como campo

```mermaid
flowchart TD
    A[Neurolinguistica] --> B[Linguistica teorica]
    A --> C[Psicologia]
    A --> D[Neurociencia]
    A --> E[Modelado]
```

## 2. Lenguaje en tiempo y espacio

```mermaid
flowchart LR
    A[Pregunta sobre lenguaje] --> B[Cuando ocurre]
    A --> C[Donde ocurre]
    B --> D[EEG / ERP / MEG]
    C --> E[fMRI / lesion / anatomia]
```

## 3. Caso del lenguaje de senas

```mermaid
flowchart TD
    A[Lenguaje humano] --> B[Canal auditivo-vocal]
    A --> C[Canal viso-gestual]
    B --> D[Habla]
    C --> E[Lengua de senas]
    D --> F[Estructura simbolica]
    E --> F
```

## 4. Formalizacion minima del problema

```latex
\[
L = \langle Ph, G, S \rangle
\]
```

donde:

- \(Ph\) = estructura fonologica o forma de señal;
- \(G\) = estructura gramatical;
- \(S\) = estructura semantica.

La neurolinguistica pregunta por una realizacion neural:

```latex
\[
\mathcal{N}(L)
\]
```

es decir, como se implementa neuralmente un sistema linguistico.

