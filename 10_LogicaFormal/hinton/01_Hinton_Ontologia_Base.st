logic classical.first_order

// ─────────────────────────────────────────────────────
// Hinton 1992 — Ontología base
// Enfasis: qué entidades, propiedades y relaciones
// presupone el texto para hacer inteligible el aprendizaje.
// Este archivo debe leerse como inventario ontológico mínimo.
// No afirma que esas entidades existan realmente en el cerebro;
// afirma que el texto funciona como si necesitara postularlas.
// ─────────────────────────────────────────────────────

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

// Pruebas de consistencia mínima del vocabulario ontológico.
check satisfiable (ComputationallyDescribable(brain) & Model(network_model) & BackPropagation(backprop))
check satisfiable exists x (ArtificialUnit(x) & HiddenUnit(x))
check satisfiable exists x (GoodRepresentation(x) & EconomicalDescription(x) & ReconstructiveCapacity(x))

// Pruebas de herencia conceptual:
// si una instancia cae bajo "buena representación",
// hereda las propiedades normativas que el texto le atribuye.
derive EconomicalDescription(rep_alpha) from {ont_08, ont_30}
derive ReconstructiveCapacity(rep_alpha) from {ont_09, ont_30}
derive DistributedCode(pop_code) from {ont_10, ont_25}
derive RobustToLocalLoss(pop_code) from {ont_11, ont_25}
