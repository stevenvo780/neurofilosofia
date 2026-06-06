# Mapa conceptual — Filosofia de las Neurociencias

> Mapas Mermaid que sintetizan las relaciones entre las ~95 entradas del
> [glosario completo](./00_glosario_completo.md). Cada mapa cubre un eje
> tematico central del curso.

## 1. Teorias de la conciencia

```mermaid
graph TD
  CONCIENCIA[Conciencia]
  CONCIENCIA --> FENOMENICA[Conciencia fenomenica<br/>P-consciousness]
  CONCIENCIA --> ACCESO[Conciencia de acceso<br/>A-consciousness]
  CONCIENCIA --> VIGILIA[Vigilia/Arousal]

  FENOMENICA --> HARD[Hard Problem<br/>Chalmers]
  HARD --> QUALIA[Qualia]
  HARD --> EXPLGAP[Explanatory Gap<br/>Levine]
  HARD --> ZOMBIES[P-Zombies<br/>Chalmers]
  HARD --> MARYS[Mary's Room<br/>Jackson]
  HARD --> WHATSLIKE["What it's like"<br/>Nagel]

  ACCESO --> GWT[GWT<br/>Baars-Dehaene]
  GWT --> BROADCAST[Broadcasting/Ignition]
  GWT --> P300[P300 ERP]

  CONCIENCIA --> TEORIAS{Teorias rivales}
  TEORIAS --> IIT[IIT<br/>Tononi]
  TEORIAS --> GWT
  TEORIAS --> HOT[HOT<br/>Rosenthal]
  TEORIAS --> NCC[NCC<br/>Crick-Koch]
  TEORIAS --> BIO[Biological Naturalism<br/>Searle]
  TEORIAS --> PAN[Panpsiquismo<br/>Goff-Strawson]
  TEORIAS --> PREDICT[Predictive/Active Inference<br/>Friston-Clark]

  IIT --> PHI["phi"]
  IIT -.->|implica| PAN

  VIGILIA --> ESTADOVEG[Estado vegetativo<br/>Laureys]
  ESTADOVEG --> P300
  ESTADOVEG --> NCC

  BIO -.->|critica funcionalismo| CHINESE[Chinese Room<br/>Searle]
  CHINESE -.->|critica| FUNC[Funcionalismo]

  classDef teoria fill:#ffe4b5,stroke:#333
  classDef problema fill:#ffb6c1,stroke:#333
  classDef autor fill:#b0e0e6,stroke:#333
  class IIT,GWT,HOT,NCC,BIO,PAN,PREDICT teoria
  class HARD,EXPLGAP,QUALIA problema
```

## 2. Problema mente-cuerpo: posiciones y criticas

```mermaid
graph LR
  MENTE_CUERPO[Problema<br/>mente-cuerpo]

  MENTE_CUERPO --> DUAL[Dualismo]
  DUAL --> DUAL_SUST[Sustancial<br/>Descartes]
  DUAL --> DUAL_PROP[Propiedades<br/>Chalmers]

  MENTE_CUERPO --> MONISMO[Monismo]
  MONISMO --> FISIC[Fisicalismo]
  MONISMO --> IDEAL[Idealismo]
  MONISMO --> NEUTRO[Monismo neutral]

  FISIC --> IDENT[Identidad psico-neural]
  IDENT --> TYPE[Type Identity<br/>Smart, Place]
  IDENT --> TOKEN[Token Identity<br/>Davidson]

  FISIC --> FUNC[Funcionalismo<br/>Putnam, Fodor]
  FUNC --> MULTI[Multiple Realizability]

  FISIC --> ELIM[Eliminativismo<br/>Churchland]
  ELIM --> FOLK[Psicologia Popular]

  FISIC --> NO_RED[Fisicalismo no-reductivo]
  NO_RED --> SUPER[Supervenencia<br/>Davidson]
  NO_RED --> EMERG[Emergencia]

  MENTE_CUERPO --> PAN[Panpsiquismo]
  PAN --> COMBINAR[Problema de combinacion]

  MULTI -.->|argumento contra| TYPE
  TYPE -.->|critica Bechtel-Mundale| MULTI
  CHINESE[Chinese Room] -.->|critica| FUNC
  ZOMB[P-Zombies] -.->|critica| FISIC
  MARYS[Mary's Room] -.->|critica| FISIC

  KIM[Kim:<br/>downward causation problema] -.->|critica| NO_RED
  KIM -.->|critica| SUPER

  classDef pos fill:#ffe4b5
  classDef arg fill:#ffb6c1
  class DUAL,FISIC,FUNC,ELIM,PAN,NO_RED pos
  class MULTI,CHINESE,ZOMB,MARYS,KIM arg
```

## 3. Representacion mental: defensores, escepticos y formas

```mermaid
graph TD
  REP[Representacion]

  REP --> DEFENSORES{Defensores}
  REP --> CRITICOS{Criticos}
  REP --> FORMAS{Formas}

  DEFENSORES --> BECHTEL[Bechtel<br/>moderado]
  DEFENSORES --> DRETSKE[Dretske<br/>causal-informacional]
  DEFENSORES --> MILLIKAN[Millikan<br/>teleologica]
  DEFENSORES --> FODOR[Fodor<br/>LOT]

  CRITICOS --> BROOKS[Brooks<br/>'no representation']
  CRITICOS --> CHEMERO[Chemero<br/>radical embodied]
  CRITICOS --> VARELA[Varela<br/>enactivismo]

  FORMAS --> DISTR[Distributed Reps<br/>Hinton]
  FORMAS --> LOCAL[Local / Grandmother cell<br/>Quian Quiroga]
  FORMAS --> ESPACIAL[Espacial<br/>Place/Grid cells<br/>Moser-OKeefe]
  FORMAS --> ENGRAMA[Engrama<br/>Tonegawa]
  FORMAS --> CONCEP[Conceptual<br/>Quian Quiroga et al.]

  REP --> INT[Intencionalidad<br/>Brentano]
  INT --> NATU[Naturalizacion<br/>de la semantica]
  NATU --> DRETSKE
  NATU --> MILLIKAN

  REP -.->|articula con| MEM[Memoria]
  REP -.->|articula con| PERC[Percepcion-Vision]

  classDef ok fill:#c8e6c9
  classDef crit fill:#ffcdd2
  class DEFENSORES,BECHTEL,DRETSKE,MILLIKAN,FODOR ok
  class CRITICOS,BROOKS,CHEMERO,VARELA crit
```

## 4. Redes neuronales (biologicas e IA) y filosofia

```mermaid
graph TD
  RED[Redes neuronales]
  RED --> BIO[Biologicas]
  RED --> IA[Artificiales / IA]

  BIO --> NEURON[Neuron Doctrine<br/>Cajal]
  BIO --> SINAP[Sinapsis<br/>Sherrington]
  SINAP --> NT[Neurotransmisores]
  SINAP --> LTP[LTP<br/>Bliss-Lomo]
  LTP --> NMDA[NMDA -> Ca2+]
  LTP --> AMPA[Insercion AMPA]
  LTP --> PLAST[Plasticidad Sinaptica]
  PLAST --> HEBB[Aprendizaje Hebbiano<br/>'fire together, wire together']
  PLAST --> STDP[STDP<br/>Markram]

  BIO --> GLIA[Glia]
  GLIA --> ASTRO[Astrocitos]
  GLIA --> OLIGO[Oligodendrocitos / Mielina]
  GLIA --> MICRO[Microglia]

  IA --> PERC[Perceptron<br/>Rosenblatt 1958]
  PERC --> XOR[Problema XOR<br/>Minsky-Papert]
  XOR --> CONGEL[Invierno IA]
  CONGEL --> BACKPROP[Backpropagation<br/>Rumelhart-Hinton-Williams 1986]
  BACKPROP --> MLP[Multi-Layer Perceptron]
  MLP --> DL[Deep Learning<br/>Hinton-LeCun-Bengio]
  DL --> CNN[CNN]
  DL --> RNN[RNN]
  DL --> TRANSF[Transformers]

  IA --> CONEX[Conexionismo<br/>Hinton, Churchland]
  CONEX --> DISTR[Distributed Representations]
  CONEX --> ELIM[Eliminativismo<br/>Churchland]

  HEBB -.->|inspira| BACKPROP
  DISTR -.->|critica| LOCAL[Grandmother Cell]
  CONEX -.->|critica desde| FODOR_CRIT[Fodor-Pylyshyn:<br/>sistematicidad]

  RED -.->|metafora| METAF[Metaforas del cerebro<br/>Daugman, Cobb]

  classDef bio fill:#dcedc8
  classDef ia fill:#b3e5fc
  class BIO,NEURON,SINAP,LTP,PLAST,HEBB,GLIA,ASTRO,OLIGO,MICRO bio
  class IA,PERC,BACKPROP,MLP,DL,CNN,RNN,TRANSF,CONEX,DISTR ia
```

## 5. Cerebro predictivo, free energy y enactivismo

```mermaid
graph TD
  CEREBRO_PRED[Cerebro Predictivo]
  CEREBRO_PRED --> FEP[Free Energy Principle<br/>Friston]
  CEREBRO_PRED --> PRED[Predictive Coding<br/>Rao-Ballard, Clark]
  CEREBRO_PRED --> ACTIVA[Inferencia Activa<br/>Friston]

  FEP --> SURPRISE[Sorpresa / Surprise]
  FEP --> BAYES[Bayesianismo<br/>Helmholtz-Friston]
  FEP -.->|formula| F["F = E_q[ln q - ln p(o,θ)] ≥ -ln p(o)"]

  BAYES --> INTMOD[Integracion Multimodal<br/>Ernst-Banks]
  BAYES --> INF_INV[Inferencia inversa<br/>Poldrack]

  PRED --> JERAR[Jerarquia cortical]
  PRED --> ERROR_PRED[Error de prediccion]
  ERROR_PRED --> DOPA[Dopamina:<br/>error de recompensa<br/>Schultz]
  DOPA --> RL[Reinforcement Learning<br/>Sutton-Barto]
  RL --> GB[Ganglios basales]

  ACTIVA --> ACCION[Accion modifica mundo<br/>para confirmar prediccion]
  ACTIVA -.->|coincide con| ENACT[Enactivismo<br/>Varela-Thompson-Rosch]
  ENACT --> EMBOD[Embodied Cognition]
  EMBOD --> NEUROFEN[Neurofenomenologia<br/>Varela]

  INTEROC[Interocepcion<br/>Chen et al., Craig] --> ACTIVA
  INTEROC --> EMOC[Emocion construida<br/>Barrett]
  INTEROC --> SAL[Red de Saliencia<br/>insula + ACC]

  CEREBRO_PRED -.->|tesis ambiciosa| CONS[Conciencia]
  CEREBRO_PRED -.->|alternativa a| METAF_COMP[Metafora computacional clasica]

  classDef nucleo fill:#fff9c4
  classDef mecanismo fill:#f8bbd0
  class FEP,PRED,ACTIVA nucleo
  class JERAR,ERROR_PRED,ACCION,SURPRISE mecanismo
```

## 6. Metodos, evidencia y explicacion en neurociencia

```mermaid
graph LR
  METODO[Metodos]
  METODO --> CORREL[Correlacionales]
  METODO --> CAUSAL[Causales]
  METODO --> COMPUT[Computacionales]

  CORREL --> FMRI[fMRI / BOLD<br/>Ogawa, Raichle]
  CORREL --> EEG[EEG / MEG]
  CORREL --> SUR[Single-unit recording]
  FMRI --> ACOPLE[Acople neurovascular<br/>Iadecola]
  FMRI --> ARTEF[Artefactos]
  FMRI --> INF_INV[Inferencia inversa<br/>Poldrack]

  CAUSAL --> LESION[Lesion<br/>Broca]
  CAUSAL --> TMS[TMS]
  CAUSAL --> OPTOG[Optogenetica<br/>Deisseroth]
  CAUSAL --> FARMA[Farmacologia]
  LESION --> DDIS[Doble disociacion]

  COMPUT --> MARR[Niveles de Marr<br/>Comp/Algo/Impl]
  COMPUT --> MODELOS[Modelos formales]

  METODO -.->|articula| EVID[Epistemologia de la evidencia<br/>Bechtel]
  EVID --> TRIANG[Triangulacion]
  EVID --> MECAN[Explicacion mecanistica]
  MECAN --> DESCOMP[Descomposicion funcional]
  MECAN --> LOC[Localizacion]
  MECAN --> CRAVER[MDC: Mecanismos<br/>Machamer-Darden-Craver]

  EVID --> NIVEL[Niveles de explicacion]
  NIVEL --> RED_T[Reduccion<br/>Nagel-Bickle]
  NIVEL --> AUTON[Autonomia]
  NIVEL --> DOWNW[Downward causation<br/>Kim crit.]

  METODO -.->|relevante para| NCC[NCC<br/>Crick-Koch]
  METODO -.->|relevante para| CONSTR[Constructo neuropsiquiatrico<br/>Ramirez-Bermudez]

  classDef m fill:#e1bee7
  classDef e fill:#ffe0b2
  class FMRI,EEG,SUR,LESION,TMS,OPTOG,FARMA,MARR m
  class EVID,MECAN,NIVEL,DESCOMP,LOC e
```

---

> Estos seis mapas cubren los ejes centrales del curso. Cada nodo apunta
> (implicitamente) a una entrada del glosario principal
> [`00_glosario_completo.md`](./00_glosario_completo.md), donde se
> desarrolla la definicion, el autor, la cita al backup y los cross-refs.
