logic classical.propositional

// ─────────────────────────────────────────────────────
// Hinton 1992 — Text Layer
// Este archivo une el texto fuente con la formalización.
// No le pide a ST que "comprenda" el artículo automáticamente.
// Lo que hace es registrar interpretaciones humanas formalizadas
// y anclarlas en pasajes concretos del documento.
// ─────────────────────────────────────────────────────

let BRAIN = "El cerebro es una computadora notable"
let REPR = "Las representaciones internas son centrales"
let MODEL = "Las redes artificiales funcionan como modelos epistémicos"
let IDEAL = "Los modelos son idealizaciones y no copias literales"
let HIDDEN = "Las unidades ocultas son portadoras de representación"
let BACK = "La retropropagación es una técnica poderosa"
let LIMIT = "La retropropagación no agota la ontología del aprendizaje biológico"
let UNSUP = "El aprendizaje no supervisado se vuelve necesario"
let GOOD = "Una buena representación exige criterio formal"
let ECON = "La representación debe ser económica"
let RECON = "La representación debe reconstruir"
let POP = "Los códigos poblacionales ganan robustez"
let HIER = "La jerarquía composicional mejora la representación"
let CONV = "La investigación computacional y la biológica pueden converger"

// VALIDACION 1:
// Cada passage fija un ancla textual. Aquí no hay deducción todavía.
// Solo se crea trazabilidad: de qué parte exacta del texto sale el claim.
let p_intro = passage([[../2b - Hinton - Redes Neuronales que Aprenden de la Experiencia.md#redes-neuronales-que-aprenden-de-la-experiencia]])
let p_neuronas = passage([[../2b - Hinton - Redes Neuronales que Aprenden de la Experiencia.md#neuronas-biologicas-y-neuronas-artificiales]])
let p_tres_capas = passage([[../2b - Hinton - Redes Neuronales que Aprenden de la Experiencia.md#redes-de-tres-capas]])
let p_retro = passage([[../2b - Hinton - Redes Neuronales que Aprenden de la Experiencia.md#retropropagacion]])
let p_limites = passage([[../2b - Hinton - Redes Neuronales que Aprenden de la Experiencia.md#limites-de-la-retropropagacion-como-modelo-biologico]])
let p_unsup = passage([[../2b - Hinton - Redes Neuronales que Aprenden de la Experiencia.md#aprendizaje-no-supervisado]])
let p_costos = passage([[../2b - Hinton - Redes Neuronales que Aprenden de la Experiencia.md#costo-de-codificacion-y-costo-de-reconstruccion]])
let p_pop = passage([[../2b - Hinton - Redes Neuronales que Aprenden de la Experiencia.md#codigos-poblacionales]])
let p_hier = passage([[../2b - Hinton - Redes Neuronales que Aprenden de la Experiencia.md#representaciones-jerarquicas]])
let p_cierre = passage([[../2b - Hinton - Redes Neuronales que Aprenden de la Experiencia.md#cierre]])

// VALIDACION 2:
// En este runtime, `formalize p as φ` debe leerse como `p -> φ`.
// No es extracción semántica automática perfecta.
// Es una forma controlada de decir:
// "si tomamos este pasaje como soporte, defendemos esta lectura".
let f_intro = formalize p_intro as (BRAIN -> REPR)
let f_neuronas = formalize p_neuronas as (MODEL & IDEAL)
let f_tres_capas = formalize p_tres_capas as (HIDDEN -> REPR)
let f_retro = formalize p_retro as BACK
let f_limites = formalize p_limites as (BACK -> LIMIT)
let f_unsup = formalize p_unsup as (LIMIT -> UNSUP)
let f_costos = formalize p_costos as (GOOD -> (ECON & RECON))
let f_pop = formalize p_pop as (POP -> REPR)
let f_hier = formalize p_hier as (HIER -> REPR)
let f_cierre = formalize p_cierre as CONV

// VALIDACION 3:
// claim/support/confidence/context no son deducciones.
// Construyen una capa legible de interpretación trazable.
claim c_intro = f_intro
support c_intro <- p_intro
confidence c_intro = 0.95
context c_intro = "Lectura ontológica fuerte: el texto usa computación como marco de inteligibilidad del cerebro."

claim c_neuronas = f_neuronas
support c_neuronas <- p_neuronas
confidence c_neuronas = 0.92
context c_neuronas = "La relación artificial/biológico se presenta como modelización y no como identidad."

claim c_tres_capas = f_tres_capas
support c_tres_capas <- p_tres_capas
confidence c_tres_capas = 0.96
context c_tres_capas = "La capa oculta se interpreta como soporte de representación interna."

claim c_retro = f_retro
support c_retro <- p_retro
confidence c_retro = 0.98
context c_retro = "Aquí el énfasis es técnico: poder de entrenamiento multicapa."

claim c_limites = f_limites
support c_limites <- p_limites
confidence c_limites = 0.97
context c_limites = "La crítica biológica obliga a distinguir eficacia ingenieril y plausibilidad ontológica."

claim c_unsup = f_unsup
support c_unsup <- p_unsup
confidence c_unsup = 0.96
context c_unsup = "El paso al no supervisado marca un giro desde corrección externa hacia autoorganización."

claim c_costos = f_costos
support c_costos <- p_costos
confidence c_costos = 0.99
context c_costos = "La noción de buena representación queda formalizada por economía y reconstrucción."

claim c_pop = f_pop
support c_pop <- p_pop
confidence c_pop = 0.93
context c_pop = "La representación se desplaza del punto aislado a la población como unidad ontológica relevante."

claim c_hier = f_hier
support c_hier <- p_hier
confidence c_hier = 0.91
context c_hier = "La composición espacial de partes sugiere una ontología jerárquica de rasgos."

claim c_cierre = f_cierre
support c_cierre <- p_cierre
confidence c_cierre = 0.9
context c_cierre = "La convergencia final funciona como tesis metacientífica del artículo."

// VALIDACION 4:
// render claims deja ver si la red interpretativa quedó registrada
// con soporte, contexto y confianza.
render claims
