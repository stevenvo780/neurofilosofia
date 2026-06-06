logic classical.first_order

// ═════════════════════════════════════════════════════
// Hinton 1992 — Formalización total
// Basado en:
// ../2b - Hinton - Redes Neuronales que Aprenden de la Experiencia.md
// Enfasis principal: ontología del texto.
// Este archivo no busca ser una traducción literal del artículo.
// Busca condensar su arquitectura filosófica en tres capas:
// 1) qué entidades presupone el texto;
// 2) cómo se encadenan sus tesis;
// 3) qué pasajes del documento sostienen cada claim.
// ═════════════════════════════════════════════════════

// ── I. Ontología nuclear ────────────────────────────
// Aquí se formalizan entidades y relaciones que el texto trata
// como si fueran explanatoriamente reales:
// neurona, unidad artificial, modelo, idealización, representación,
// código poblacional, red recurrente, procedimiento de aprendizaje.

axiom ont_01 = forall x (BiologicalNeuron(x) -> NeuralEntity(x))
axiom ont_02 = forall x (ArtificialUnit(x) -> ComputationalEntity(x))
axiom ont_03 = forall x (Synapse(x) -> ConnectionMechanism(x))
axiom ont_04 = forall x (Weight(x) -> Modifiable(x))
axiom ont_05 = forall x ((ArtificialUnit(x) & HiddenUnit(x)) -> CarrierOfRepresentation(x))
axiom ont_06 = forall x (Model(x) -> Idealization(x))
axiom ont_07 = forall x ((Model(x) & Idealization(x)) -> EpistemicallyUseful(x))
axiom ont_08 = forall x (GoodRepresentation(x) -> EconomicalDescription(x))
axiom ont_09 = forall x (GoodRepresentation(x) -> ReconstructiveCapacity(x))
axiom ont_10 = forall x (PopulationCode(x) -> DistributedCode(x))
axiom ont_11 = forall x (PopulationCode(x) -> RobustToLocalLoss(x))
axiom ont_12 = forall x (HierarchicalRepresentation(x) -> CompositionalStructure(x))
axiom ont_13 = forall x (RecurrentNetwork(x) -> TemporalDynamics(x))
axiom ont_14 = forall x (BackPropagation(x) -> LearningProcedure(x))
axiom ont_15 = forall x (UnsupervisedLearning(x) -> LearningProcedure(x))
axiom ont_16 = forall x (LearningProcedure(x) -> ModifiesWeights(x))
axiom ont_17 = forall x (ComputationalStudy(x) -> ScientificPractice(x))
axiom ont_18 = forall x (BiologicalStudy(x) -> ScientificPractice(x))

axiom ont_19 = ComputationallyDescribable(brain)
axiom ont_20 = RequiresRepresentationTheory(brain)
axiom ont_21 = Model(network_model)
axiom ont_22 = ArtificialNeuralNetwork(network_model)
axiom ont_23 = BackPropagation(backprop)
axiom ont_24 = UnsupervisedLearning(unsup)
axiom ont_25 = PopulationCode(pop_code)
axiom ont_26 = HierarchicalRepresentation(hier_repr)
axiom ont_27 = RecurrentNetwork(rnn_model)
axiom ont_28 = ComputationalStudy(comp_study)
axiom ont_29 = BiologicalStudy(bio_study)
axiom ont_30 = GoodRepresentation(rep_alpha)

// Estas pruebas no muestran verdad empírica.
// Solo muestran que la ontología propuesta no colapsa de inmediato
// y que admite instancias coherentes.
check satisfiable (ComputationallyDescribable(brain) & Model(network_model) & BackPropagation(backprop))
check satisfiable exists x (ArtificialUnit(x) & HiddenUnit(x))
check satisfiable exists x (GoodRepresentation(x) & EconomicalDescription(x) & ReconstructiveCapacity(x))

// Derivaciones testigo:
// si aceptamos la definición ontológica de buena representación,
// entonces una instancia concreta debe heredar economía y reconstrucción.
derive EconomicalDescription(rep_alpha) from {ont_08, ont_30}
derive ReconstructiveCapacity(rep_alpha) from {ont_09, ont_30}
derive DistributedCode(pop_code) from {ont_10, ont_25}
derive RobustToLocalLoss(pop_code) from {ont_11, ont_25}

logic classical.propositional

// ── II. Estructura argumental ───────────────────────
// Esta sección no intenta capturar todos los detalles del artículo.
// Su objetivo es reconstruir la columna vertebral del razonamiento:
// cerebro computable -> representación;
// retropropagación -> modelo -> idealización -> utilidad;
// límites -> aprendizaje no supervisado;
// jerarquía -> profundidad -> convergencia.

let BRAIN = "El cerebro es una computadora notable"
let INFO = "La información puede procesarse computacionalmente"
let REPR = "Las representaciones internas son centrales para explicar el aprendizaje"
let MODEL = "Las redes artificiales sirven como modelos epistémicos"
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

axiom h1 = BRAIN
axiom h2 = BACK
axiom h3 = HIER

axiom a1 = BRAIN -> INFO
axiom a2 = INFO -> REPR
axiom a3 = MODEL -> IDEAL
axiom a4 = IDEAL -> EPI
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

// h1, h2 y h3 funcionan como puntos de arranque locales para
// comprobar que la cadena inferencial puede cerrarse en ST.
derive REPR from {h1, a1, a2}
derive EPI from {h2, a6, a3, a4}
derive UNSUP from {h2, a7, a8}
derive CONV from {h3, a13, a14}

// analyze sirve aquí como validación cruzada:
// no solo se deriva, también se evalúa la corrección de la inferencia.
analyze {BRAIN, a1, a2} -> REPR
analyze {BACK, a7, a8} -> UNSUP
analyze {HIER, a13, a14} -> CONV
explain (GOOD -> (ECON & RECON))
render theory

logic classical.propositional

// ── III. Text Layer ─────────────────────────────────
// El runtime actual interpreta `formalize p as φ` como `p -> φ`.
// Por eso estos claims deben leerse así:
// “si se acepta ese pasaje como soporte, entonces la lectura φ”.
// No es una extracción semántica automática perfecta; es una
// forma trazable de anclar lectura filosófica a secciones del texto.

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

claim c_intro = f_intro
support c_intro <- p_intro
confidence c_intro = 0.95
context c_intro = "La frase inicial instala un marco computacional para el cerebro."

claim c_neuronas = f_neuronas
support c_neuronas <- p_neuronas
confidence c_neuronas = 0.92
context c_neuronas = "Lo artificial aparece como modelo simplificado y por ello idealizado."

claim c_tres_capas = f_tres_capas
support c_tres_capas <- p_tres_capas
confidence c_tres_capas = 0.96
context c_tres_capas = "La ontología de la representación se localiza en la dinámica de la capa oculta."

claim c_retro = f_retro
support c_retro <- p_retro
confidence c_retro = 0.98
context c_retro = "Tesis fuerte de potencia técnica."

claim c_limites = f_limites
support c_limites <- p_limites
confidence c_limites = 0.97
context c_limites = "La fuerza técnica no elimina la insuficiencia biológica."

claim c_unsup = f_unsup
support c_unsup <- p_unsup
confidence c_unsup = 0.96
context c_unsup = "Se desplaza el centro de gravedad hacia autoorganización y representación."

claim c_costos = f_costos
support c_costos <- p_costos
confidence c_costos = 0.99
context c_costos = "El texto formaliza explícitamente el criterio de buena representación."

claim c_pop = f_pop
support c_pop <- p_pop
confidence c_pop = 0.93
context c_pop = "La unidad ontológica deja de ser la neurona aislada y pasa a ser la población."

claim c_hier = f_hier
support c_hier <- p_hier
confidence c_hier = 0.91
context c_hier = "Aparece una ontología jerárquica y composicional de partes y totalidades."

claim c_cierre = f_cierre
support c_cierre <- p_cierre
confidence c_cierre = 0.9
context c_cierre = "La tesis final es metacientífica: convergencia entre dos programas de investigación."

// render claims permite inspeccionar rápidamente la red de claims,
// soportes y niveles de confianza.
render claims
