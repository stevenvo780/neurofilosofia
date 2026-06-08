# Simulacro de Parcial — Filosofía de las Neurociencias 2026-1

> **Profesor:** Steven Vallejo
> **Curso:** Filosofía de las Neurociencias
> **Cohorte:** 2026-1
> **Duración total:** 110 minutos (1 h 50 min)
> **Puntaje total:** 50 puntos
> **Modalidad:** examen escrito a libro cerrado. Se permite **1 hoja A4** de notas manuscritas.
> **Versión:** v1.0 (28 mayo 2026)

Este simulacro selecciona **11 preguntas** del banco principal (`00_banco_preguntas.md`) buscando balance entre bloques temáticos y niveles cognitivos. Las preguntas conservan su numeración original del banco para trazabilidad.

---

## Instrucciones para el estudiante

1. Lea **todas las preguntas** antes de empezar a responder.
2. Asigne tiempo según el peso indicado en cada item.
3. Responda en orden libre. Marque claramente el número de cada respuesta.
4. Para preguntas de **comparar / analizar / evaluar**, una respuesta corta sin tesis explícita y sin contraste no recibe el puntaje completo aunque mencione los autores correctos.
5. Cite por autor + año cuando corresponda (ej. "Hinton 1992", "Bechtel 2001").

---

## Sección A — Conceptos y definiciones (12 pts, ~20 min)

> Respuestas cortas, 4-6 líneas cada una.

### Pregunta 1 (4 pts · ~7 min) — 🔴 Recordar — *Banco 5.1 + 5.2*

Liste las **cuatro fases** del algoritmo de retropropagación según Hinton (1992) y los **cuatro límites** que el propio Hinton reconoce.

> *Doc:* `[[02_Lecturas/01_fundamentos_y_marco/03_hinton_redes_neuronales]]`

### Pregunta 2 (4 pts · ~7 min) — 🔴 Recordar — *Banco 3.1 + 4.1*

(a) Enuncie las **tres condiciones** que Bechtel (2001) exige para que un estado interno cuente como representación.
(b) Enuncie los **tres criterios** de confiabilidad de una técnica neurocientífica según Bechtel (epistemología de la evidencia).

> *Docs:* `[[02_Lecturas/04_memoria_y_representacion/03_bechtel_representaciones]]`, `[[02_Lecturas/02_metodos_y_evidencia/01_bechtel_epistemologia_de_la_evidencia]]`

### Pregunta 3 (4 pts · ~6 min) — 🟠 Comprender — *Banco 2.1 + 2.2*

(a) Defina **vigilia** y **awareness** según Laureys.
(b) Describa qué mide el **potencial de preparación** en el experimento de Libet.

> *Docs:* `[[02_Lecturas/08_conciencia_agencia_y_modelos/01_laureys_estado_vegetativo]]`, `[[02_Lecturas/08_conciencia_agencia_y_modelos/04_obhi_haggard_libre_albedrio]]`

---

## Sección B — Aplicación (12 pts, ~25 min)

> Respuestas de media página. Ejemplos concretos cuentan.

### Pregunta 4 (6 pts · ~12 min) — 🟡 Aplicar — *Banco 3.7 + 5.7*

Aplique la distinción **representación local / distribuida / sparse** a dos casos:

1. Las **concept cells** de Quian Quiroga (humanos, registro intracraneal).
2. Un **MLP que clasifica dígitos MNIST**.

¿Qué dimensión es local, cuál distribuida y cuál sparse en cada caso? Justifique.

> *Docs:* `[[02_Lecturas/04_memoria_y_representacion/02_quian_quiroga_celulas_de_la_abuela]]`, `[[02_Lecturas/01_fundamentos_y_marco/03_hinton_redes_neuronales]]`

### Pregunta 5 (6 pts · ~13 min) — 🟡 Aplicar — *Banco 4.7*

Diseñe un **experimento mínimo de sustracción** (Raichle) para localizar el procesamiento neural de **caras** mediante fMRI. Incluya:

- Condición experimental y condición de control.
- Por qué la sustracción aísla (o no) la operación de interés.
- Dos límites del diseño y cómo intentaría mitigarlos.

> *Doc:* `[[02_Lecturas/02_metodos_y_evidencia/02_raichle_visualizando_la_mente]]`

---

## Sección C — Análisis y comparación (16 pts, ~35 min)

> Respuestas estructuradas con tesis + desarrollo + contraste. Una página por pregunta.

### Pregunta 6 (8 pts · ~17 min) — 🟢 Analizar — *Banco 2.10*

Compare **IIT** (Tononi) y **GWT** (Dehaene-Baars) como teorías de la conciencia. En su respuesta:

1. Enuncie la tesis central de cada teoría (1 párrafo c/u).
2. Identifique **al menos dos predicciones distintas** que harían sobre el estado mínimamente consciente de Laureys.
3. Indique qué tipo de evidencia (lesión, imagen, electrofisiología) favorece a cada una.

> *Docs:* `[[02_Lecturas/08_conciencia_agencia_y_modelos/01_laureys_estado_vegetativo]]`, `[[02_Lecturas/09_material_complementario/09_passingham_cognitive_neuroscience]]`

### Pregunta 7 (8 pts · ~18 min) — 🟢 Analizar — *Banco 5.12 + 1.7*

Analice la **conexión Daugman 1992 ↔ Hinton 1992**: ¿qué advierte Daugman sobre el entusiasmo conexionista, y cómo se aplica esa advertencia a los **LLMs actuales** (GPT-class, 2024)?

Su respuesta debe distinguir explícitamente:

- Éxito **funcional** vs. valor **explicativo** neurocientífico.
- Programa **progresivo** vs. **degenerativo** (Lakatos).

> *Docs:* `[[02_Lecturas/01_fundamentos_y_marco/02_daugman_metaforas_del_cerebro]]`, `[[02_Lecturas/01_fundamentos_y_marco/03_hinton_redes_neuronales]]`

---

## Sección D — Argumentación / Evaluación (10 pts, ~30 min)

> Elija **UNA** de las dos opciones. Defienda una tesis con argumentos del corpus y posibles objeciones.

### Pregunta 8a (10 pts · ~30 min) — 🔵 Evaluar — *Banco 3.13*

**Tesis a evaluar:** "Las unidades ocultas de una red entrenada **son** representaciones genuinas (Bechtel), no meros correlatos funcionales."

Defienda o critique aplicando las tres condiciones de Bechtel. Considere al menos una objeción y respóndala.

> *Docs:* `[[02_Lecturas/04_memoria_y_representacion/03_bechtel_representaciones]]`, `[[02_Lecturas/01_fundamentos_y_marco/03_hinton_redes_neuronales]]`

### Pregunta 8b (10 pts · ~30 min) — 🔵 Evaluar — *Banco 7.11*

**Tesis a evaluar:** "La separación entre enfermedad mental y física es **ontológicamente** indefendible."

Defienda o critique articulando Barrett (body budget + inflamación) con Ramírez-Bermúdez et al. (constructos neuropsiquiátricos). Considere al menos una objeción esencialista y respóndala.

> *Docs:* `[[02_Lecturas/06_emocion_interocepcion_neuropsiquiatria/03_barrett_emocion_y_enfermedad]]`, `[[02_Lecturas/06_emocion_interocepcion_neuropsiquiatria/04_ramirez_bermudez_constructos_neuropsiquiatricos]]`

---

## Resumen de pesos

| Sección | Preguntas | Puntaje | Tiempo |
|---|---|---|---|
| A — Conceptos | 1, 2, 3 | 12 pts | ~20 min |
| B — Aplicación | 4, 5 | 12 pts | ~25 min |
| C — Análisis | 6, 7 | 16 pts | ~35 min |
| D — Argumentación (1 de 2) | 8a o 8b | 10 pts | ~30 min |
| **Total** | **11** | **50 pts** | **110 min** |

### Cobertura por bloque temático

| Bloque | Preguntas |
|---|---|
| 1. Mind-Body & Marco | — (cubierto vía contraste en P7) |
| 2. Conciencia & Agencia | 3, 6 |
| 3. Representaciones & Memoria | 2, 4, 8a |
| 4. Metodología & Evidencia | 2, 5 |
| 5. Hinton & IA / Conexionismo | 1, 4, 7, 8a |
| 6. Percepción & Visión | — (cubierto vía caras en P5) |
| 7. Emoción, Interocepción & Lenguaje | 8b |

### Cobertura por nivel cognitivo

| Nivel | Cantidad |
|---|---|
| 🔴 Recordar | 2 |
| 🟠 Comprender | 1 |
| 🟡 Aplicar | 2 |
| 🟢 Analizar | 2 |
| 🔵 Evaluar | 1 (de 2 opciones) |

---

## Rúbrica básica (compartida con el estudiante)

Se aplica por pregunta. Cada nivel suma respecto del puntaje máximo del item.

### Para preguntas 🔴 Recordar (P1, P2)

| Nivel | Criterio | % puntaje |
|---|---|---|
| Completo | Todos los elementos correctos, nombres bien escritos, autor + año cuando corresponde. | 100 % |
| Parcial alto | Al menos 3 de 4 elementos correctos; un nombre confuso pero reconocible. | 75 % |
| Parcial bajo | La mitad de los elementos; conceptos sueltos sin estructura. | 40 % |
| Insuficiente | Confunde autores o invierte definiciones. | 0–20 % |

### Para preguntas 🟠 Comprender (P3)

| Nivel | Criterio | % puntaje |
|---|---|---|
| Completo | Definición precisa con sus palabras + ejemplo o consecuencia. | 100 % |
| Parcial alto | Definición correcta pero verbatim del manual; sin ejemplo. | 70 % |
| Parcial bajo | Idea general correcta pero confusa en el detalle clínico/técnico. | 40 % |
| Insuficiente | Confunde vigilia con awareness, o readiness potential con otra señal. | 0–20 % |

### Para preguntas 🟡 Aplicar (P4, P5)

| Nivel | Criterio | % puntaje |
|---|---|---|
| Completo | Aplica el concepto al caso nuevo con corrección, justifica las decisiones de diseño, identifica límites. | 100 % |
| Parcial alto | Aplica bien pero no justifica; o justifica bien pero erra un detalle técnico. | 70 % |
| Parcial bajo | Reproduce el concepto sin acomodarlo al caso, o el caso es genérico. | 40 % |
| Insuficiente | No conecta concepto con caso; ejemplo irrelevante. | 0–20 % |

### Para preguntas 🟢 Analizar (P6, P7)

| Nivel | Criterio | % puntaje |
|---|---|---|
| Completo | Tesis explícita + al menos dos puntos de contraste real (no decorativo) + uso del corpus. | 100 % |
| Parcial alto | Contraste correcto pero superficial; falta una predicción / distinción exigida. | 70 % |
| Parcial bajo | Resume cada teoría por separado sin contrastarlas; no hay análisis. | 40 % |
| Insuficiente | Confunde las teorías o atribuye predicciones inversas. | 0–20 % |

### Para preguntas 🔵 Evaluar (P8a o P8b)

| Nivel | Criterio | % puntaje |
|---|---|---|
| Completo | Tesis explícita + 2+ argumentos del corpus + objeción no trivial + respuesta razonada a la objeción. | 100 % |
| Parcial alto | Argumenta bien pero la objeción es nominal; o no hay respuesta a la objeción. | 70 % |
| Parcial bajo | Sólo enuncia opinión sin enganchar con los textos; o sólo repite los textos sin tomar posición. | 40 % |
| Insuficiente | No hay tesis identificable, o cita autores sin entenderlos. | 0–20 % |

---

## Notas para el corrector

- Penalice fuerte el **handwaving** sin ejemplo en preguntas 🟡 y 🟢. La aplicación y el análisis no se demuestran con sinónimos del concepto.
- En 🔵 Evaluar, una "evaluación" sin objeción + respuesta es, por construcción, incompleta.
- Aceptar **alternativas razonables** en P4 (otras dimensiones distribuidas / locales con justificación) y en P5 (otros pares de condiciones bien argumentados).
- En P6, NO penalice si el estudiante elige otro par de teorías (por ej. HOT vs. GWT) siempre que aplique la misma estructura comparativa.

---

> *Banco fuente:* `00_banco_preguntas.md` (92 preguntas, mismo directorio).
> *Próxima iteración sugerida:* añadir versión "express" de 6 preguntas, 60 minutos, para parcial corto / quiz mid-term.
