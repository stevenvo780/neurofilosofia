logic classical.propositional

// ─────────────────────────────────────────────────────
// Hinton 1992 — Estructura argumental global
// Este archivo reconstruye la columna vertebral del argumento.
// No busca capturar toda la retórica del texto, sino solo
// las transiciones inferenciales que parecen sostenerlo.
// ─────────────────────────────────────────────────────

let BRAIN = "El cerebro es una computadora notable"
let INFO = "La información puede procesarse computacionalmente"
let REPR = "Las representaciones internas son centrales para explicar el aprendizaje"
let MODEL = "Los modelos artificiales sirven para investigar el aprendizaje"
let IDEAL = "Los modelos son idealizaciones"
let EPI = "Las idealizaciones tienen utilidad epistémica"
let HIDDEN = "Las unidades ocultas pueden formar representaciones internas"
let BACK = "La retropropagación es una herramienta poderosa"
let LIMIT = "La retropropagación es insuficiente como modelo biológico completo"
let UNSUP = "Se necesita aprendizaje no supervisado"
let GOOD = "Una buena representación debe evaluarse explícitamente"
let ECON = "Una buena representación debe ser económica"
let RECON = "Una buena representación debe permitir reconstrucción aproximada"
let POP = "Los códigos poblacionales ofrecen robustez"
let HIER = "Las representaciones jerárquicas permiten composición"
let DEEP = "El aprendizaje jerárquico podría escalar mejor"
let CONV = "Los estudios computacionales y biológicos podrían converger"

// h1-h3 son puntos de arranque locales.
// No dicen que esas tesis sean verdaderas por sí solas;
// sirven para probar si las cadenas inferenciales pueden cerrarse en ST.
axiom h1 = BRAIN
axiom h2 = BACK
axiom h3 = HIER

// Estas implicaciones condensan la narrativa argumental del artículo.
axiom a1 = BRAIN -> INFO
axiom a2 = INFO -> REPR
axiom a3 = IDEAL -> EPI
axiom a4 = MODEL -> IDEAL
axiom a5 = HIDDEN -> REPR
axiom a6 = BACK -> MODEL
axiom a7 = BACK -> LIMIT
axiom a8 = LIMIT -> UNSUP
axiom a9 = GOOD -> ECON
axiom a10 = GOOD -> RECON
axiom a11 = POP -> REPR
axiom a12 = POP -> ECON
axiom a13 = HIER -> DEEP
axiom a14 = DEEP -> CONV
axiom a15 = REPR -> MODEL

// VALIDACION 1:
// Comprueba la ruta BRAIN -> INFO -> REPR.
// Si la derivación sale bien, el paso desde cerebro computable
// hasta centralidad de la representación queda formalmente cerrado.
derive REPR from {h1, a1, a2}

// VALIDACION 2:
// Comprueba la ruta BACK -> MODEL -> IDEAL -> EPI.
// Aquí se formaliza la idea de que la potencia técnica del modelo
// puede terminar justificando su utilidad epistémica.
derive EPI from {h2, a6, a4, a3}

// VALIDACION 3:
// Comprueba la ruta BACK -> LIMIT -> UNSUP.
// Esto hace explícito el giro del artículo desde aprendizaje guiado
// hacia aprendizaje no supervisado.
derive UNSUP from {h2, a7, a8}

// VALIDACION 4:
// Comprueba la ruta HIER -> DEEP -> CONV.
// Esta es la forma más condensada de la tesis final de convergencia.
derive CONV from {h3, a13, a14}

// VALIDACION 5:
// analyze audita si la inferencia BRAIN, a1, a2 ⊢ REPR es correcta.
analyze {BRAIN, a1, a2} -> REPR

// VALIDACION 6:
// analyze audita si la inferencia BACK, a7, a8 ⊢ UNSUP es correcta.
analyze {BACK, a7, a8} -> UNSUP

// VALIDACION 7:
// analyze audita si la inferencia HIER, a13, a14 ⊢ CONV es correcta.
analyze {HIER, a13, a14} -> CONV

// VALIDACION 8:
// explain no demuestra validez; abre la estructura de la fórmula
// GOOD -> (ECON & RECON) para hacer legible qué afirma exactamente.
explain (GOOD -> (ECON & RECON))

// VALIDACION 9:
// Esta segunda explicación sirve para ver la forma lógica
// del paso límites -> no supervisado.
explain ((BACK -> LIMIT) -> (LIMIT -> UNSUP))

// VALIDACION 10:
// render theory lista la teoría activa. Es una validación documental:
// confirma que ST cargó los axiomas que creemos haber definido.
render theory
