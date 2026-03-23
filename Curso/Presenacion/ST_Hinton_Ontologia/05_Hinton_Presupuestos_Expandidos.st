logic classical.propositional

// ─────────────────────────────────────────────────────
// Hinton 1992 — Presupuestos expandidos
// Aquí se formalizan compromisos que el artículo presupone
// sin siempre formularlos de manera explícita.
// Este es el archivo donde la lectura filosófica se vuelve más fuerte.
// ─────────────────────────────────────────────────────

let BRAIN_COMP = "El cerebro puede tratarse como sistema computacionalmente inteligible"
let INFO_REAL = "La información funciona como entidad teórica real del marco"
let INTERNAL_REPR = "Las representaciones internas son entidades explicativas legítimas"
let MODEL_RELEV = "La similitud entre red artificial y sistema biológico puede ser epistémicamente relevante"
let IDEAL_OK = "La idealización no elimina el valor científico del modelo"
let PERF_SIGNAL = "El rendimiento de una tarea aporta evidencia sobre la calidad del modelo"
let LEARN_IS_WEIGHT = "Aprender implica modificar pesos o eficacias de conexión"
let GOOD_METRIC = "La calidad representacional puede medirse"
let GOOD_ECON = "La calidad representacional exige economía"
let GOOD_RECON = "La calidad representacional exige reconstrucción"
let ROBUST_REAL = "La robustez es un criterio de realismo representacional"
let SPATIAL_COMP = "Las relaciones espaciales entre partes pueden codificarse internamente"
let FEEDBACK_POSS = "La retroalimentación hace concebible el transporte de señales correctivas"
let UNSUP_NEC = "Sin maestro externo se necesita autoorganización"
let CONV_POSS = "La convergencia entre ciencia computacional y biológica es al menos posible"

axiom p1 = BRAIN_COMP -> INFO_REAL
axiom p2 = INFO_REAL -> INTERNAL_REPR
axiom p3 = MODEL_RELEV -> IDEAL_OK
axiom p4 = LEARN_IS_WEIGHT -> PERF_SIGNAL
axiom p5 = GOOD_METRIC -> GOOD_ECON
axiom p6 = GOOD_METRIC -> GOOD_RECON
axiom p7 = GOOD_ECON & GOOD_RECON -> INTERNAL_REPR
axiom p8 = ROBUST_REAL -> INTERNAL_REPR
axiom p9 = SPATIAL_COMP -> INTERNAL_REPR
axiom p10 = FEEDBACK_POSS -> MODEL_RELEV
axiom p11 = UNSUP_NEC -> INTERNAL_REPR

axiom h1 = BRAIN_COMP
axiom h2 = GOOD_METRIC
axiom h3 = ROBUST_REAL
axiom h4 = SPATIAL_COMP
axiom h5 = FEEDBACK_POSS
axiom h6 = UNSUP_NEC

// VALIDACION 1:
// Si el cerebro es computacionalmente inteligible,
// entonces el marco asume información como entidad teórica operativa.
derive INFO_REAL from {h1, p1}

// VALIDACION 2:
// Si además la información opera teóricamente,
// entonces la representación interna gana legitimidad explicativa.
derive INTERNAL_REPR from {h1, p1, p2}

// VALIDACION 3:
// Si la calidad representacional puede medirse,
// entonces debe incluir economía.
derive GOOD_ECON from {h2, p5}

// VALIDACION 4:
// Si la calidad representacional puede medirse,
// entonces debe incluir reconstrucción.
derive GOOD_RECON from {h2, p6}

// VALIDACION 5:
// Si medir calidad exige economía y reconstrucción,
// entonces INTERNAL_REPR se fortalece como tesis del modelo.
derive INTERNAL_REPR from {h2, p5, p6, p7}

// VALIDACION 6:
// La robustez se interpreta como criterio a favor de tomar en serio
// la representación interna.
derive INTERNAL_REPR from {h3, p8}

// VALIDACION 7:
// La composición espacial de partes también empuja hacia esa tesis.
derive INTERNAL_REPR from {h4, p9}

// VALIDACION 8:
// Si la retroalimentación hace concebible el transporte de corrección,
// entonces la relevancia epistémica del modelo aumenta.
derive MODEL_RELEV from {h5, p10}

// VALIDACION 9:
// Si no hay maestro externo, aparece la autoorganización,
// y eso vuelve a empujar hacia INTERNAL_REPR.
derive INTERNAL_REPR from {h6, p11}

// VALIDACION 10:
// Auditoría de la ruta BRAIN_COMP -> INFO_REAL -> INTERNAL_REPR.
analyze {BRAIN_COMP, (BRAIN_COMP -> INFO_REAL), (INFO_REAL -> INTERNAL_REPR)} -> INTERNAL_REPR

// VALIDACION 11:
// Auditoría del criterio de buena representación.
analyze {GOOD_METRIC, (GOOD_METRIC -> GOOD_ECON), (GOOD_METRIC -> GOOD_RECON), ((GOOD_ECON & GOOD_RECON) -> INTERNAL_REPR)} -> INTERNAL_REPR

// VALIDACION 12:
// Auditoría del puente entre feedback, modelo e idealización.
analyze {FEEDBACK_POSS, (FEEDBACK_POSS -> MODEL_RELEV), (MODEL_RELEV -> IDEAL_OK)} -> IDEAL_OK

logic epistemic.s5

// Aquí S5 no modela literalmente a Hinton.
// Se usa para explorar una intuición fuerte:
// si algo es conocido idealmente, entonces debería ser verdadero en el mundo considerado.

// VALIDACION 13:
// Axioma T: si se sabe P, entonces P.
check valid (K(P) -> P)

// VALIDACION 14:
// Comprueba que es al menos satisfacible conocer algo como MODEL_OK.
check satisfiable K(MODEL_OK)

logic modal.k

// La convergencia final del texto se trata mejor como posibilidad
// que como necesidad lógica.

// VALIDACION 15:
// La convergencia puede modelarse como posibilidad abierta.
check satisfiable <>(CONV_POSS)

// VALIDACION 16:
// La legitimidad de INTERNAL_REPR también puede modelarse como posibilidad.
check satisfiable <>(INTERNAL_REPR)
