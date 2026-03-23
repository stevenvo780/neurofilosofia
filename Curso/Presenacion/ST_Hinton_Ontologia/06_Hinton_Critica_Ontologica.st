logic classical.propositional

// ─────────────────────────────────────────────────────
// Hinton 1992 — Crítica ontológica
// Este archivo no intenta "refutar" automáticamente a Hinton.
// Su función es formalizar rutas críticas posibles y hacerlas
// discutibles con el mismo rigor que la reconstrucción favorable.
// ─────────────────────────────────────────────────────

let BRAIN_COMP = "El cerebro puede tratarse como sistema computacionalmente inteligible"
let INFO_REAL = "La información funciona como entidad teórica real del marco"
let INTERNAL_REPR = "Las representaciones internas son entidades explicativas legítimas"
let MODEL_RELEV = "La similitud entre red artificial y sistema biológico puede ser epistémicamente relevante"
let IDEAL_OK = "La idealización no elimina el valor científico del modelo"
let BACK_BIO = "La retropropagación puede tomarse como modelo biológicamente plausible"
let GOOD_METRIC = "La calidad representacional puede medirse de manera suficientemente estable"
let CONV_STRONG = "La convergencia entre ciencia computacional y biológica es fuerte y justificable"

let METAPHOR_ONLY = "El cerebro-computadora puede ser solo una metáfora heurística"
let INFO_DERIVED = "La información puede ser derivada del modelo y no entidad ontológica básica"
let REPR_INSTR = "La representación puede ser un recurso instrumental y no una entidad real"
let SIM_WEAK = "La similitud artificial-biológica puede ser demasiado débil para cargar explicación"
let IDEAL_LOSS = "La idealización puede perder rasgos causales decisivos"
let BACK_IMPL = "La retropropagación puede ser computacionalmente eficaz pero biológicamente implausible"
let METRIC_UNSTABLE = "Los criterios de buena representación pueden depender del observador o de la tarea"
let CONV_WEAK = "La convergencia final puede ser solo una esperanza programática"

axiom c1 = METAPHOR_ONLY -> !BRAIN_COMP
axiom c2 = INFO_DERIVED -> !INFO_REAL
axiom c3 = REPR_INSTR -> !INTERNAL_REPR
axiom c4 = SIM_WEAK -> !MODEL_RELEV
axiom c5 = IDEAL_LOSS -> !IDEAL_OK
axiom c6 = BACK_IMPL -> !BACK_BIO
axiom c7 = METRIC_UNSTABLE -> !GOOD_METRIC
axiom c8 = CONV_WEAK -> !CONV_STRONG

axiom h1 = METAPHOR_ONLY
axiom h2 = INFO_DERIVED
axiom h3 = REPR_INSTR
axiom h4 = SIM_WEAK
axiom h5 = IDEAL_LOSS
axiom h6 = BACK_IMPL
axiom h7 = METRIC_UNSTABLE
axiom h8 = CONV_WEAK

// VALIDACION 1:
// Si "cerebro-computadora" es solo metáfora,
// entonces cae el compromiso fuerte BRAIN_COMP.
derive !BRAIN_COMP from {h1, c1}

// VALIDACION 2:
// Si la información no es básica sino derivada,
// entonces cae INFO_REAL.
derive !INFO_REAL from {h2, c2}

// VALIDACION 3:
// Si la representación es solo instrumental,
// entonces cae INTERNAL_REPR.
derive !INTERNAL_REPR from {h3, c3}

// VALIDACION 4:
// Si la similitud entre red artificial y cerebro es débil,
// entonces cae MODEL_RELEV.
derive !MODEL_RELEV from {h4, c4}

// VALIDACION 5:
// Si la idealización pierde rasgos causales decisivos,
// entonces cae IDEAL_OK.
derive !IDEAL_OK from {h5, c5}

// VALIDACION 6:
// Si la retropropagación es biológicamente implausible,
// entonces cae BACK_BIO.
derive !BACK_BIO from {h6, c6}

// VALIDACION 7:
// Si los criterios de calidad son inestables,
// entonces cae GOOD_METRIC.
derive !GOOD_METRIC from {h7, c7}

// VALIDACION 8:
// Si la convergencia es solo programática,
// entonces cae CONV_STRONG.
derive !CONV_STRONG from {h8, c8}

// VALIDACION 9:
// Auditoría de algunas rutas críticas.
analyze {METAPHOR_ONLY, (METAPHOR_ONLY -> !BRAIN_COMP)} -> !BRAIN_COMP
analyze {REPR_INSTR, (REPR_INSTR -> !INTERNAL_REPR)} -> !INTERNAL_REPR
analyze {BACK_IMPL, (BACK_IMPL -> !BACK_BIO)} -> !BACK_BIO

// VALIDACION 10:
// En lógica clásica, una tesis y su negación no pueden sostenerse a la vez.
check satisfiable (BRAIN_COMP & !BRAIN_COMP)

// VALIDACION 11:
// Lo mismo vale para INTERNAL_REPR y su negación.
check satisfiable (INTERNAL_REPR & !INTERNAL_REPR)

logic epistemic.s5

// VALIDACION 12:
// Axioma T: si se conoce P, entonces P.
check valid (K(P) -> P)

// VALIDACION 13:
// Comprueba que una crítica también puede modelarse como algo conocible.
check satisfiable K(CRITICA)

logic modal.k

// VALIDACION 14:
// Es posible negar el marco computacional fuerte.
check satisfiable <>(!BRAIN_COMP)

// VALIDACION 15:
// Es posible negar la realidad fuerte de la representación interna.
check satisfiable <>(!INTERNAL_REPR)

// VALIDACION 16:
// Es posible negar que la idealización conserve valor epistémico suficiente.
check satisfiable <>(!IDEAL_OK)
