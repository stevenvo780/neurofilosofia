# ST Hinton Ontologia

Esta carpeta reúne una formalización en ST del texto [2b - Hinton - Redes Neuronales que Aprenden de la Experiencia](/workspace/Curso/Presenacion/2b%20-%20Hinton%20-%20Redes%20Neuronales%20que%20Aprenden%20de%20la%20Experiencia.md).

El propósito no fue solo traducir ideas del texto a fórmulas, sino reconstruir su trasfondo filosófico:

- qué presupone el texto sobre cerebro, información y representación;
- cómo se encadenan sus tesis centrales;
- cómo justificar esas lecturas con pasajes concretos;
- cómo criticarlas con el mismo nivel de rigor.

## Estado de validación

Todos los archivos `.st` de esta carpeta fueron ejecutados con `st` en esta máquina.

Archivos validados:

- [00_Hinton_Total.st](/workspace/Curso/Presenacion/ST_Hinton_Ontologia/00_Hinton_Total.st)
- [01_Hinton_Ontologia_Base.st](/workspace/Curso/Presenacion/ST_Hinton_Ontologia/01_Hinton_Ontologia_Base.st)
- [02_Hinton_Argumento_Global.st](/workspace/Curso/Presenacion/ST_Hinton_Ontologia/02_Hinton_Argumento_Global.st)
- [03_Hinton_Text_Layer.st](/workspace/Curso/Presenacion/ST_Hinton_Ontologia/03_Hinton_Text_Layer.st)
- [04_Hinton_Diccionario.st](/workspace/Curso/Presenacion/ST_Hinton_Ontologia/04_Hinton_Diccionario.st)
- [05_Hinton_Presupuestos_Expandidos.st](/workspace/Curso/Presenacion/ST_Hinton_Ontologia/05_Hinton_Presupuestos_Expandidos.st)
- [06_Hinton_Critica_Ontologica.st](/workspace/Curso/Presenacion/ST_Hinton_Ontologia/06_Hinton_Critica_Ontologica.st)

También hice una auditoría básica del motor con fórmulas clásicas, de primer orden, modales y epistémicas. No apareció un fallo grueso del runtime en estas pruebas.

## Nota sobre ST

En este entorno se da una inconsistencia:

- `npm` reporta `@stevenvo780/st-lang@3.0.0`;
- `st --version` responde `2.6.0`.

Intenté reinstalar el paquete global, pero el sistema lo impidió por permisos. Aun así, el ejecutable funcionó y se usó para validar todos los archivos.

También detecté dos comportamientos del runtime que conviene recordar:

- `formalize p as φ` se comporta como una formalización del tipo `p -> φ`;
- `print variable_string` imprime el identificador de la variable y no el contenido textual del string.

Eso no invalida las formalizaciones, pero sí afecta cómo interpretar algunas salidas.

## Conclusión general de la carpeta

La conclusión más importante es que el texto de Hinton puede formalizarse como una posición filosófica relativamente coherente y no solo como una explicación técnica de redes neuronales.

La carpeta muestra que el artículo presupone una ontología implícita compuesta por:

- representaciones internas;
- información como entidad teórica operativa;
- modelos artificiales como idealizaciones epistémicamente útiles;
- criterios normativos de buena representación, como economía y reconstrucción;
- formas distribuidas y jerárquicas de codificación;
- una posible convergencia entre ciencia computacional y neurociencia.

La lógica no demuestra que Hinton tenga razón empíricamente sobre el cerebro. Lo que sí muestra es que:

- su marco conceptual puede reconstruirse con bastante coherencia;
- sus inferencias principales pueden hacerse explícitas;
- sus presupuestos fuertes pueden separarse y discutirse;
- sus puntos débiles también pueden formalizarse con claridad.

## Conclusiones por archivo

### 00_Hinton_Total.st

Es el archivo maestro. Reúne tres capas:

- ontología;
- argumento;
- `Text Layer`.

Su conclusión es que el texto puede leerse como un sistema compuesto: una teoría de entidades, una secuencia de inferencias y un conjunto de pasajes que sostienen claims concretos. La idea fuerte aquí es que Hinton no solo describe técnicas, sino un marco para pensar aprendizaje y representación.

### 01_Hinton_Ontologia_Base.st

Formaliza la ontología mínima del texto en lógica de primer orden. Su conclusión es que Hinton presupone entidades y propiedades bien diferenciables:

- neurona biológica;
- unidad artificial;
- modelo;
- idealización;
- buena representación;
- código poblacional;
- red recurrente.

También deja claro que una buena representación no es cualquier estado interno: debe tener economía y capacidad reconstructiva.

### 02_Hinton_Argumento_Global.st

Reconstruye la columna vertebral del argumento en lógica proposicional. Su conclusión es que el artículo sí contiene una secuencia inferencial clara:

- del cerebro computable a la centralidad de la representación;
- de la retropropagación al valor del modelo artificial;
- de los límites biológicos al aprendizaje no supervisado;
- de la jerarquía representacional a la posibilidad de convergencia entre IA y biología.

Este archivo muestra que el texto puede leerse como razonamiento articulado y no solo como exposición narrativa.

### 03_Hinton_Text_Layer.st

Ancla la formalización a pasajes concretos del documento. Su conclusión es que los claims filosóficos de la carpeta sí tienen soporte textual localizable.

Este archivo es importante porque evita que la lectura ontológica parezca inventada desde fuera. Aquí cada sección relevante del texto queda vinculada con una tesis interpretativa formalizada.

### 04_Hinton_Diccionario.st

Funciona como glosario conceptual. Su conclusión es que el vocabulario del artículo puede estabilizarse y describirse de forma clara.

Eso es útil porque términos como “representación”, “idealización”, “robustez”, “modelo” o “retropropagación” suelen deslizarse entre sentidos técnicos y filosóficos. El diccionario reduce esa ambigüedad.

### 05_Hinton_Presupuestos_Expandidos.st

Explicita presupuestos que el texto usa sin siempre enunciarlos directamente. Su conclusión es que Hinton depende de varias apuestas fuertes:

- que el cerebro es computacionalmente inteligible;
- que la información tiene peso ontológico o al menos teórico fuerte;
- que las representaciones internas son entidades explicativas legítimas;
- que la idealización no destruye valor científico;
- que una buena representación debe poder evaluarse;
- que la convergencia entre investigación computacional y biológica es al menos posible.

Este archivo es el que más claramente convierte el texto en una posición filosófica fuerte.

### 06_Hinton_Critica_Ontologica.st

Formaliza objeciones a la lectura fuerte anterior. Su conclusión es que el marco de Hinton puede discutirse con la misma precisión lógica con la que fue reconstruido.

Las objeciones formalizadas incluyen:

- que “cerebro-computadora” puede ser solo una metáfora;
- que la información puede no ser una entidad ontológica básica;
- que la representación puede ser instrumental y no real;
- que la similitud entre red artificial y cerebro puede ser demasiado débil;
- que la idealización puede perder rasgos causales esenciales;
- que la convergencia final puede ser una esperanza programática y no una tesis fuerte.

Este archivo muestra que la formalización no obliga a aceptar a Hinton; también sirve para criticarlo mejor.

## Mi conclusión filosófica

Mi lectura final es esta: el texto de Hinton vale filosóficamente porque obliga a explicitar preguntas que en discusiones de IA suelen quedar implícitas.

Entre ellas:

- qué es una representación;
- cuándo un modelo es explicativo y no solo útil;
- qué pierde y qué gana una idealización;
- qué tan fuerte debe ser la analogía entre red artificial y sistema biológico;
- si la información es una entidad del mundo o una herramienta del observador.

La carpeta no resuelve definitivamente esas preguntas. Pero sí logra algo importante: convierte el texto en un terreno de debate estructurado, trazable y formalizable.

## Cómo ejecutar

```bash
st /workspace/Curso/Presenacion/ST_Hinton_Ontologia/00_Hinton_Total.st
st /workspace/Curso/Presenacion/ST_Hinton_Ontologia/01_Hinton_Ontologia_Base.st
st /workspace/Curso/Presenacion/ST_Hinton_Ontologia/02_Hinton_Argumento_Global.st
st /workspace/Curso/Presenacion/ST_Hinton_Ontologia/03_Hinton_Text_Layer.st
st /workspace/Curso/Presenacion/ST_Hinton_Ontologia/04_Hinton_Diccionario.st
st /workspace/Curso/Presenacion/ST_Hinton_Ontologia/05_Hinton_Presupuestos_Expandidos.st
st /workspace/Curso/Presenacion/ST_Hinton_Ontologia/06_Hinton_Critica_Ontologica.st
```
