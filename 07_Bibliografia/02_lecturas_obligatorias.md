# Lecturas obligatorias — fichas completas

> 15 textos que constituyen la columna vertebral del curso. Cada ficha sigue el mismo esquema: **contexto histórico → tesis central → métodos / argumento → conclusiones → conexiones con otros textos → preguntas guía**. Pensadas para preparar exposición, parcial o ensayo final.

---

## 1. Bechtel, Mandik & Mundale — *Philosophy Meets the Neurosciences* (2001)

**Contexto.** Es el capítulo introductorio del Reader *Philosophy and the Neurosciences* (Blackwell, 2001), que marcó la consolidación institucional del subcampo en los años que siguieron al "Decade of the Brain" (1990–1999). El texto funciona como manifiesto programático: explica por qué después de PET, fMRI, EEG/MEG y los estudios sistemáticos de lesión la filosofía de la mente ya no puede desentenderse del laboratorio.

**Tesis central.** La filosofía de las neurociencias no es un apéndice ético ni una crítica externa: es un análisis de fundamentos epistemológicos y metafísicos *desde adentro* de la práctica científica. Tiene una doble cara: interna (¿qué es una buena explicación, una evidencia, una reducción en neurociencia?) y externa (cómo los resultados neurocientíficos reformulan problemas clásicos como mente-cuerpo, identidad personal o conocimiento).

**Argumento.** Los autores distinguen neurociencia, ciencia cognitiva y neurociencia cognitiva, y revisan por qué esos campos no convergieron de modo automático. Putnam (realizabilidad múltiple) y Fodor (autonomía de las taxonomías psicológicas) defendieron por décadas la posibilidad de hacer psicología sin neurociencia. El texto sostiene que esa autonomía era razonable en abstracto pero insostenible cuando aparece evidencia funcional sobre lesiones, neuroimagen y registros unitarios asociados a tareas cognitivas: la filosofía ya no puede hablar de la mente *ignorando* esos resultados sin caer en irrelevancia.

**Conclusión y postura.** Naturalismo crítico: la filosofía dialoga con la ciencia, no se coloca por encima ni por afuera. Esto no la disuelve en ciencia; la obliga a especializarse en los puntos donde aparecen ambigüedades conceptuales (¿qué cuenta como evidencia? ¿qué es una reducción?).

**Conexiones.** Marco general que abre Bickle (Churchland), Bechtel epistemología (4a), Bechtel representaciones (13a) y todo el bloque metodológico. Para la dimensión histórica, complementarlo con Cobb 2020 y Daugman 2001.

**Preguntas guía.**
1. ¿Qué consecuencias tiene aceptar la realizabilidad múltiple de Putnam para el proyecto de Bechtel?
2. ¿Por qué la convergencia neurocientífica-cognitiva *no* es trivial y exige análisis filosófico?
3. ¿Cómo se diferencia un naturalismo crítico de un cientificismo simple?

---

## 2a. Daugman — *Brain Metaphor and Brain Theory* (2001)

**Contexto.** Capítulo del mismo Reader de 2001. Daugman es ingeniero conocido por el algoritmo de reconocimiento de iris, pero aquí escribe como historiador de las ciencias del cerebro. El texto recupera una tradición que va de Lakoff & Johnson a Kuhn: pensar es metaforizar.

**Tesis central.** Toda teoría del cerebro está organizada por una metáfora dominante. No es un defecto sino una condición de posibilidad de la investigación. El peligro aparece cuando la metáfora se toma como descripción literal y se vuelve invisible.

**Argumento.** Daugman recorre genealógicamente las metáforas: hidráulica y pneumática (Galeno), relojería (Descartes), telégrafo y electricidad (siglo XIX), centralita y circuitos (primera mitad del XX), computadora digital (segunda mitad del XX). Cada una abrió un programa experimental real y a la vez cerró otras posibilidades. Su crítica más fina apunta a la metáfora computacional: el entusiasmo por declarar que "por fin tenemos *la* descripción correcta" repite exactamente el error de Galeno o Descartes.

**Conclusión.** El cerebro no es un reloj, ni un telégrafo, ni una computadora. Es un sistema biológico cuya forma de describirse depende del *kit* tecnológico-conceptual disponible. La filosofía ayuda a volver visibles esos supuestos. Daugman discute también dos metáforas antropológicas (espíritu encarnado vs. timonel) y muestra que las metáforas del cerebro tienen consecuencias morales y políticas, no sólo técnicas.

**Conexiones.** Eje crítico que estructura Chirimuuta 2024, Cobb 2020 y la lectura cauta de Hinton 1992 (red neuronal como metáfora dominante hoy). También conecta con Nave et al. 2020 (¿el "cerebro predictivo" es otra metáfora? Probablemente sí, pero potente).

**Preguntas guía.**
1. ¿Una metáfora "exitosa" empíricamente puede seguir siendo sólo metáfora? ¿En qué sentido?
2. ¿Qué pierde el campo si abandona prematuramente una metáfora?
3. ¿Por qué la metáfora de la computadora no es una "última metáfora"?

---

## 2b. Hinton — *How Neural Networks Learn from Experience* (1992)

**Contexto.** Artículo de divulgación en *Scientific American* (vol. 267, nº 3, pp. 144-151). No es un paper técnico ni filosófico, es una propuesta programática para un público amplio. Pertenece al período de resurgencia del conexionismo tras el invierno de la IA simbólica de los 70s. Veinte años después, Hinton recibirá el Nobel de Física 2024 por estos trabajos.

**Tesis central.** Un sistema puede aprender modificando pesos entre unidades simples a partir de ejemplos, sin reglas simbólicas explícitas. Lo importante no es la neurona aislada sino que el conocimiento queda *distribuido* en toda la red.

**Argumento.** Hinton presenta la neurona artificial (suma ponderada + función de activación), la arquitectura multicapa (entrada / ocultas / salida), y el algoritmo de retropropagación (backpropagation) en cuatro fases: presentar ejemplo, calcular error, propagar gradiente por regla de la cadena, actualizar pesos. Reconoce cuatro límites de backprop: (1) requiere instructor con respuesta correcta, (2) escala mal (O(n³)), (3) cae en mínimos locales, (4) es biológicamente implausible (necesita simetría de pesos y señal de error global, cosas que ningún mecanismo neural conocido provee). Como alternativa biológicamente plausible discute la regla de Hebb y el aprendizaje no supervisado (PCA, competitivo *winner-takes-all*, *sparse coding* de Barlow). Cierra con el debate sobre representaciones locales, distribuidas y *sparse*, y cita el experimento clásico de Sparks en el colículo superior: silenciar neuronas no paraliza el ojo, lo desvía promediando vectores. Eso es codificación poblacional.

**Conclusión.** El conexionismo es una *apuesta programática*. Captura algo real sobre la cognición pero no es descripción literal del cerebro. Su valor explicativo depende de si genera predicciones novedosas sobre cognición biológica — y en términos lakatosianos esa pregunta sigue abierta: los LLMs actuales podrían estar divergiendo hacia ingeniería pura.

**Conexiones.** Es el texto que define el horizonte técnico de toda la discusión sobre representación (Bechtel 13a) y reducción (Bickle). Hinton *asume* que las unidades ocultas representan; Bechtel pregunta *qué significa* eso. Daugman 2001 recuerda que la red neuronal también es metáfora.

**Preguntas guía.**
1. Si backprop es biológicamente implausible, ¿qué valor tiene como modelo del cerebro?
2. ¿Cuándo un modelo computacional cuenta como explicación y no sólo como herramienta?
3. ¿La equivalencia silicio/carbono se sostiene si el sustrato importa para la dinámica?

---

## 3b. Bickle — *The Neurophilosophies of Patricia and Paul Churchland*

**Contexto.** Capítulo de manual sobre dos figuras canónicas de la neurofilosofía analítica. Bickle escribe en plural —"neurofilosofías"— porque insiste en que Pat y Paul comparten agenda pero no son intercambiables.

**Tesis central.** El legado durable de los Churchland no es el materialismo eliminativo *per se*, sino la transformación del problema mente-cuerpo en un problema de relaciones interteóricas: cómo se vinculan teorías psicológicas y neurocientíficas (por reducción, revisión, reemplazo parcial o inconmensurabilidad).

**Argumento.** Bickle expone el eliminativismo: muchas categorías de la psicología popular (creencia, deseo, intención) podrían no aparecer en una neurociencia madura — no porque sean falsas, sino porque podrían ser reemplazadas. Tres razones: la psicología popular falla al explicar sueño, memoria, aprendizaje, psicopatología; casi no ha cambiado desde la Antigüedad (señal de estancamiento teórico); neurociencia y conexionismo ofrecen recursos distintos. Pero el capítulo subraya que reducir a los Churchland al eliminativismo es caricaturizar: su contribución más fuerte es haber convertido la pregunta "¿la mente es el cerebro?" en preguntas técnicas sobre relaciones entre teorías.

**Conclusión.** Eliminativismo no es una demostración: es una predicción y una propuesta. Su valor está en mantener abierta la pregunta de qué clase de relaciones podemos esperar entre vocabularios psicológicos y neurocientíficos.

**Conexiones.** Diálogo directo con Hinton (los Churchland fueron de los primeros filósofos que tomaron en serio el conexionismo), con Bechtel representaciones (ambos buscan naturalización funcional sin esencias mentales), con Ramírez-Bermúdez 2024 (que actualiza el problema de cómo articular niveles psicopatológico y neuropatológico).

**Preguntas guía.**
1. ¿Qué condiciones tendría que cumplir una neurociencia para "eliminar" categorías como creencia?
2. ¿Por qué la analogía con flogisto o calórico es seductora pero limitada?
3. ¿En qué sentido el conexionismo apoya o desafía el eliminativismo?

---

## 4a. Bechtel — *The Epistemology of Evidence in Cognitive Neuroscience* (2004)

**Contexto.** Texto metodológico central del programa. Apareció en un momento (mediados de los 2000s) en que la fMRI estaba en plena expansión y empezaban las críticas serias sobre interpretación de blobs ("voodoo correlations" de Vul et al. vendría en 2009).

**Tesis central.** La evidencia neurocientífica no es observación transparente. Depende de instrumentos y técnicas que *intervienen* sobre el fenómeno y pueden producir artefactos. Por eso lo que hay que estudiar no es sólo la teoría: hay que estudiar las técnicas mismas y cómo se justifican.

**Argumento.** Bechtel critica el empirismo ingenuo "se observa, se compara con la teoría". En neurociencia, muchas evidencias se producen mediante procedimientos técnicos muy invasivos. El "problema del artefacto" es estructural: si el resultado aparece por la forma misma de intervenir, no es evidencia del fenómeno. Los científicos validan la confiabilidad de una técnica por tres vías: repetibilidad y patrones definidos; convergencia con otras técnicas; coherencia con teorías plausibles. Aplica este esquema a tres casos: estudios de lesión (inferir función normal a partir del déficit es difícil), registro unicelular (asociar respuesta neuronal con operación es siempre mediado), neuroimagen (activación ≠ explicación de función). Cierra con la idea de mecanismo: explicar es descomponer en partes y operaciones organizadas, no localizar.

**Conclusión.** Ninguna técnica por sí sola basta. La objetividad neurocientífica es siempre *triangulada*. La filosofía contribuye una epistemología de la evidencia: análisis de cómo se justifica la confiabilidad de instrumentos.

**Conexiones.** Diálogo obligado con Raichle 1994 (entusiasmo por la neuroimagen) y con Bechtel *Mental Mechanisms* (2008). Lectura crítica para Quian Quiroga 7b (¿las "concept cells" son artefacto del paradigma de estimulación?), para Moser & Moser 13b, para Zeki 6b.

**Preguntas guía.**
1. ¿En qué sentido un déficit por lesión informa sobre la función normal? ¿Qué supuestos asume?
2. ¿Por qué la convergencia entre técnicas es mejor evidencia que la confirmación dentro de una sola técnica?
3. ¿Qué diferencia hay entre localizar una función y explicarla mecanicistamente?

---

## 4b. Raichle — *Visualizing the Mind* (1994)

**Contexto.** Marcus Raichle es uno de los pioneros de la PET para neurociencia cognitiva y, más tarde, descubridor de la *default mode network*. Este texto, publicado en *Scientific American*, es el manifiesto público de la neuroimagen funcional moderna.

**Tesis central.** La actividad neuronal se acompaña de cambios locales en flujo sanguíneo y metabolismo; PET y luego fMRI aprovechan esa relación indirecta para construir mapas funcionales asociados a tareas. Pero esos mapas son productos de comparaciones experimentales (sustracción), no fotografías de pensamientos.

**Argumento.** Raichle expone el principio fisiológico: aumento focal de actividad → aumento de flujo → cambio en concentración de oxígeno → señal detectable. Explica el método sustractivo (tarea menos control) y el promediado entre sujetos. Da ejemplos clásicos: lectura silenciosa, recordar palabras, atención. Sostiene que la potencia del método es que permite estudiar funciones cognitivas sin recurrir solo a lesiones o conducta.

**Conclusión.** La imagen funcional es transformadora pero exige cautela interpretativa. No "muestra el pensamiento": muestra una señal fisiológica indirecta interpretada a través de un diseño experimental específico. El control y la tarea son construcciones teóricas, no naturales.

**Conexiones.** Lectura obligada en par con Bechtel 4a (que provee el marco crítico). Dehaene 2023 *Seeing the Mind* lo extiende a técnicas más recientes. Para entender los límites filosóficos de la inferencia inversa (de activación a función) ver también Chirimuuta 2024.

**Preguntas guía.**
1. ¿Por qué la elección de la condición control determina lo que se "ve"?
2. ¿En qué condiciones una correlación neuroimagen-tarea cuenta como evidencia de función?
3. ¿Qué supuestos teóricos están embebidos en la decisión de qué "promediar"?

---

## 5a. Ramírez-Bermúdez, Pérez-Gay & Aliseda — *Neuropsychiatric Constructs as Bridges between Psychopathology and Neuropathology* (2024)

**Contexto.** Texto reciente, fruto del trabajo conjunto de un neuropsiquiatra clínico (Ramírez-Bermúdez, Instituto Nacional de Neurología en México), una neurocientífica y una filósofa de la ciencia (Aliseda). Aparece en un momento en que la nosología psiquiátrica (DSM/CIE) está siendo cuestionada por iniciativas como RDoC del NIMH.

**Tesis central.** Los constructos neuropsiquiátricos funcionan como *puentes* entre patrones psicopatológicos (experiencia y conducta alteradas) y patrones neuropatológicos (alteraciones neurobiológicas identificables). La separación rígida entre neurología y psiquiatría es enmáscara administrativa, no realidad clínica.

**Argumento.** Los autores aclaran primero términos médicos centrales: enfermedad, trastorno, signo, síntoma, síndrome, niveles de certeza diagnóstica. Esto importa porque muestra que muchas categorías clínicas no son esencias cerradas sino hipótesis médicas progresivas. Después proponen que un constructo neuropsiquiátrico legítimo requiere tres cosas: (1) un patrón psicopatológico identificable, (2) un patrón neuropatológico identificable, (3) una relación significativa entre ambos. Para establecer (3) distinguen tres estrategias: epidemiología clínica, neurociencia clínica con modelo mecanicista, seguimiento longitudinal de casos.

**Conclusión.** Defienden una neuropsiquiatría multinivel: experiencia subjetiva + conducta + mecanismo cerebral + trayectoria individual + contexto social. Ninguna alteración mental compleja se explica con un solo nivel.

**Conexiones.** Diálogo natural con Barrett 11b (body budget como mecanismo psicofisiológico transdiagnóstico), Chen 11a (interocepción y trastornos), Bechtel 4a (cómo se valida un mecanismo en clínica). Complemento: el libro *Neuroscience and Psychopathology* del material complementario.

**Preguntas guía.**
1. ¿Qué cuenta como "relación significativa" entre patrón psicopatológico y neuropatológico?
2. ¿En qué se diferencia un constructo neuropsiquiátrico de una mera correlación neuroanatómica?
3. ¿Cómo se evita el reduccionismo sin caer en el dualismo?

---

## 6b. Zeki — *The Visual Image in Mind and Brain* (1992)

**Contexto.** Semir Zeki es el descubridor del área V5/MT (movimiento) y figura central del estudio anatómico-funcional de la corteza visual extra-estriada. Este artículo de *Scientific American* sintetiza tres décadas de trabajo experimental en primates.

**Tesis central.** No hay un "centro de la visión". La corteza visual está modularmente especializada: distintas áreas (V1, V2, V3, V4, V5/MT, V8...) procesan atributos parcialmente diferentes (orientación, color, movimiento, forma). La experiencia visual unificada es el resultado de una integración, no un dato bruto.

**Argumento.** Zeki combina evidencia anatómica (citoarquitectura), fisiológica (registros unitarios) y lesional (acromatopsia central, akinetopsia) para mostrar disociaciones. Casos clave: pacientes que no ven movimiento pero sí color, o al revés. Esto refuta el modelo de procesamiento estrictamente serial-jerárquico y apoya un esquema paralelo con vías parcialmente separadas (la distinción "qué" / "dónde" de Ungerleider & Mishkin es solapante).

**Conclusión.** La unidad fenomenológica de la experiencia visual es un *logro computacional* del cerebro. No corresponde a una unidad anatómica. Esto plantea el "problema del binding": ¿cómo se integran procesamientos paralelos en una experiencia coherente?

**Conexiones.** Base del bloque visual. Triviño-Mosquera 6a da la anatomía previa. Conecta con Bechtel representaciones (cada área "representa" en sentido funcional) y con Bechtel epistemología (cómo se valida la atribución funcional). El problema del binding queda abierto y dialoga con teorías globales de la conciencia.

**Preguntas guía.**
1. ¿Qué evidencias justifican hablar de especialización funcional y no sólo de gradientes?
2. ¿La unidad fenomenológica de la visión es real o ilusoria?
3. ¿Por qué el "problema del binding" es filosóficamente relevante?

---

## 7a. de Brigard & Robins — *Memory*

**Contexto.** Capítulo de manual filosófico (probablemente *Routledge Handbook of Philosophy of Memory* o similar). Felipe de Brigard, filósofo colombiano en Duke, lidera la perspectiva del *constructive memory framework*; Sarah Robins trabaja sobre el problema del engrama.

**Tesis central.** "Memoria" es polisémica: puede nombrar una facultad, procesos o contenidos. La tensión entre conservación (algo persiste a través del tiempo) y reconstrucción (recordar es activamente reconstituir) atraviesa todo el campo.

**Argumento.** Tres preguntas vertebrales: qué es la memoria, qué es recordar, qué son los recuerdos. El texto revisa la historia (Aristóteles, Agustín, Locke, Russell, James) y luego el modelo cognitivo estándar (codificación-almacenamiento-recuperación). Esta arquitectura es útil pero asume conservación de algo a través del tiempo, lo que abre el problema clásico del engrama o huella mnésica. Presenta el "modelo estándar" empírico (corto/largo plazo, declarativa/implícita, episódica/semántica, habilidades, priming) y el caso H.M. como evidencia clásica de doble disociación.

**Conclusión.** La memoria no es una facultad única; es un conjunto de sistemas con neurobiología parcialmente distinta. Y recordar puede ser más reconstrucción que recuperación literal —lo que tiene consecuencias para identidad personal, testimonio, y para entender por qué la memoria episódica y la imaginación comparten substrato (hipocampo, *default mode network*).

**Conexiones.** Marco para Quian Quiroga 7b (codificación) y Moser & Moser 13b (memoria espacial). Conecta con Bechtel representaciones (qué tipo de representación es un recuerdo) y con LeDoux 9b (memoria emocional). Tema implícito de fondo: identidad personal y filosofía del tiempo.

**Preguntas guía.**
1. ¿Qué consecuencias filosóficas tiene aceptar el carácter reconstructivo de la memoria?
2. ¿Por qué el caso H.M. apoya la distinción episódica/procedimental y no simplemente "memoria buena/memoria mala"?
3. ¿Cómo se concilia la fiabilidad subjetiva del recuerdo con la evidencia experimental de su maleabilidad?

---

## 7b. Quian Quiroga, Fried & Koch — *Brain Cells for Grandmother*

**Contexto.** Rodrigo Quian Quiroga descubrió en 2005 las "concept cells" o "neuronas de Jennifer Aniston" registrando intracranialmente en pacientes epilépticos. Este texto sintetiza la línea de investigación una década después.

**Tesis central.** Existen neuronas que responden de forma asombrosamente selectiva a personas o conceptos específicos, incluso a través de formatos distintos (foto, nombre escrito, voz). No son "grandmother cells" en el sentido ingenuo de una neurona por concepto, pero sí evidencia de codificación conceptual altamente selectiva en hipocampo y áreas temporales mediales.

**Argumento.** Registros con microelectrodos en pacientes (técnica única que aprovecha la cirugía de epilepsia refractaria). Se presentan imágenes/nombres y se mide actividad neuronal selectiva. Algunas neuronas disparan ante "Jennifer Aniston" pero no ante otros rostros; otras lo hacen ante "Bill Clinton" en foto, en caricatura y en texto. La invarianza al formato sugiere abstracción conceptual. Pero los autores aclaran: no hay una sola neurona por concepto (sería catastróficamente frágil); más bien hay poblaciones esparcidas (*sparse*) que codifican conceptos abstractos.

**Conclusión.** Posición intermedia entre localismo extremo (grandmother cell) y distribuido masivo: codificación *sparse* a nivel de concepto. Esto reabre el debate sobre granularidad de la representación neuronal y sus implicaciones para memoria episódica y reconocimiento.

**Conexiones.** Tercer vértice obligado del triángulo Hinton-Bechtel-Quian Quiroga sobre representaciones. Conecta con de Brigard & Robins (memoria episódica) y con Moser & Moser (codificación selectiva en hipocampo).

**Preguntas guía.**
1. ¿Por qué la invarianza al formato es la evidencia clave de "concepto" y no sólo "reconocimiento"?
2. ¿Qué problemas plantea el muestreo limitado (sólo pacientes epilépticos)?
3. ¿Estas neuronas son evidencia de localismo, distribución o algo intermedio?

---

## 8b. Hickok, Bellugi & Klima — *Sign Language in the Brain* (2001)

**Contexto.** Greg Hickok (UCI), Ursula Bellugi y Edward Klima (Salk Institute) son figuras centrales del estudio neuropsicológico de las lenguas de señas (LS). Artículo en *Scientific American*. Aparece en un período en que la neurolingüística superaba el modelo Wernicke-Lichtheim-Geschwind.

**Tesis central.** Las lenguas de señas son lenguajes plenos: comparten lateralización izquierda con las lenguas habladas y se descomponen en niveles fonológico (configuración manual, locación, movimiento), morfológico, sintáctico y semántico. El lenguaje no depende del canal auditivo-vocal sino de una organización simbólica que puede realizarse también gestualmente.

**Argumento.** Evidencia neuropsicológica clave: signantes sordos con lesión del hemisferio izquierdo muestran afasias *en lengua de señas* estructuralmente análogas a las del habla (afasia tipo Broca: producción reducida; tipo Wernicke: fluidez con errores parafásicos). Lesiones del hemisferio derecho preservan la LS pero comprometen el procesamiento espacial general. Esto demuestra que el cerebro distingue espacio *lingüístico* (gramaticalizado, izquierdo) de espacio *visuo-espacial* (derecho). La espacialidad de las LS no las degrada a "mímica": es parte de su gramática.

**Conclusión.** La lateralización lingüística no se debe al sustrato auditivo sino a propiedades estructurales del lenguaje mismo. Esto refuerza la modularidad funcional del sistema lingüístico y debilita teorías que identifican lenguaje con habla.

**Conexiones.** Continúa el marco de Baggio 8a. Dialoga con el debate de modularidad de Fodor y con la cuestión de la abstracción funcional (Putnam). Tema implícito: ¿qué define al lenguaje? ¿La forma o el canal?

**Preguntas guía.**
1. ¿Cómo se distingue una afasia signada de un déficit motor o visuo-espacial?
2. ¿Qué consecuencias tiene este hallazgo para teorías evolutivas del lenguaje (hipótesis gestual de Corballis)?
3. ¿Por qué la lateralización izquierda en LS es evidencia *contra* el determinismo del canal sensorial?

---

## 9b. LeDoux — *Emotion, Memory and the Brain* (1994)

**Contexto.** Joseph LeDoux, NYU, es la figura central del estudio neurobiológico del miedo (cuyo libro fundacional es *The Emotional Brain*, 1996). Este artículo en *Scientific American* sintetiza la década de trabajo experimental con ratas que estableció el rol de la amígdala.

**Tesis central.** Las emociones, y específicamente el miedo, pueden estudiarse como procesos neurales bien organizados que enlazan percepción, memoria y acción. Emoción y cognición no son dominios separados; comparten substrato y se modulan mutuamente.

**Argumento.** Paradigma central: condicionamiento del miedo. Un tono neutro (CS) emparejado con choque eléctrico (US) llega a producir respuesta de miedo por sí solo. Estudios de lesión y trazado anatómico identifican dos vías: una *vía baja* tálamo→amígdala (rápida, gruesa, automática) y una *vía alta* tálamo→corteza→amígdala (más lenta, evaluativa). La amígdala lateral es el sitio de plasticidad sináptica donde se asocian CS y US. La memoria emocional puede formarse y expresarse con relativa independencia de la conciencia reflexiva.

**Conclusión.** El miedo no es una "descarga subjetiva"; es un proceso neurobiológico con arquitectura definida que prepara al organismo para acción. La doble vía explica por qué reaccionamos antes de "saber" por qué reaccionamos. Esto debilita visiones dualistas razón/emoción y abre el campo de las "emociones inconscientes".

**Conexiones.** Antecede y dialoga con Barrett 11b (que critica la idea de emociones básicas con substrato fijo), Chen 11a (interocepción como base de afecto), Damásio (somatic markers). En el bloque de memoria conecta con de Brigard & Robins (memoria emocional como forma de memoria implícita).

**Preguntas guía.**
1. ¿Por qué la doble vía es importante para entender el procesamiento emocional?
2. ¿En qué sentido la amígdala "almacena" memoria emocional? ¿Es engrama?
3. ¿Cómo dialoga LeDoux con la crítica construccionista de Barrett?

---

## 10b. Laureys — *Eyes Open, Brain Shut* (2007)

**Contexto.** Steven Laureys, neurólogo belga (Universidad de Lieja), lidera la investigación clínica y de neuroimagen sobre trastornos de la conciencia. Este artículo en *Scientific American* divulga avances cruciales del Coma Science Group.

**Tesis central.** La conciencia tiene al menos dos componentes disociables: vigilia (*wakefulness*, ojos abiertos, ciclo sueño-vigilia) y *awareness* (conciencia del entorno y de sí). En el estado vegetativo (hoy "síndrome de vigilia sin respuesta") hay vigilia sin awareness. El diagnóstico es notoriamente difícil y los errores son frecuentes.

**Argumento.** Laureys recorre la cascada clínica post-daño agudo: coma → recuperación / muerte / estado vegetativo / estado mínimamente consciente / síndrome de enclaustramiento (locked-in). Discute escalas clínicas (Glasgow, CRS-R). El aporte central: estudios de neuroimagen funcional (PET, fMRI) muestran que algunos pacientes diagnosticados como vegetativos presentan respuestas cerebrales a estímulos lingüísticos o tareas mentales imaginadas (caso paradigmático: paciente que "juega tenis" mentalmente en fMRI a pedido del experimentador). Esto sugiere awareness sin conducta observable.

**Conclusión.** Conciencia, vigilia y respuesta motora son disociables. La conducta visible es un proxy poco fiable de estado mental interno. Esto tiene consecuencias éticas (decisiones de soporte vital), filosóficas (criterios de persona, conciencia mínima) y metodológicas (necesidad de paradigmas neuroimagen-basados).

**Conexiones.** Conecta con Nave 15a (cerebro predictivo: pacientes podrían tener modelo del mundo pero sin output motor), con Obhi & Haggard 16b (agencia sin conducta), con la bioética. Para profundizar: Tononi y la *Integrated Information Theory*.

**Preguntas guía.**
1. ¿Qué supone hablar de conciencia en alguien sin respuesta motora? ¿Qué se infiere y qué se construye?
2. ¿La neuroimagen es suficiente para atribuir conciencia? ¿Qué le falta a la triangulación de evidencia (Bechtel 4a)?
3. ¿Qué implicancias éticas se derivan del diagnóstico erróneo de estado vegetativo?

---

## 11a. Chen et al. — *Emerging Science of Interoception. Sensing, Integrating, Interpreting and Regulating Signals within the Self* (2021)

**Contexto.** Revisión multiautor en *Trends in Neurosciences* (o equivalente) que sintetiza una década explosiva de trabajo sobre interocepción tras la consolidación del trabajo de Bud Craig (insula) y la influencia de Lisa Feldman Barrett en teoría emocional.

**Tesis central.** La interocepción no es sólo señales aferentes del cuerpo al cerebro. Es un ciclo completo: *sensar* señales internas, *integrarlas*, *interpretarlas* y *regularlas* (top-down). Y no se limita al sistema nervioso: incluye componentes endocrinos, inmunes y vasculares.

**Argumento.** El texto clasifica señales internas (cardiacas, respiratorias, gastrointestinales, metabólicas, inmunes, hormonales), describe los interoceptores periféricos y revisa las vías ascendentes (vagal y espinal). En el cerebro identifica: núcleo del tracto solitario, parabraquial, tálamo, hipotálamo, corteza cingulada anterior, e ínsula como nodo clave con su gradiente posterior→anterior (posterior = sensación cruda; anterior = representación integrada y consciente). Discute conexiones con red de saliencia, regulación homeostática y alostática, y cómo la disfunción interoceptiva participa en trastornos (ansiedad, depresión, trastornos alimentarios, fatiga crónica).

**Conclusión.** El "yo corporal" tiene base interoceptiva. La regulación descendente (no sólo aferente) es central: el cerebro *predice* necesidades corporales y prepara acciones (alostasis). Esto encaja con el marco predictivo de Nave et al. 15a y con la teoría construccionista de Barrett.

**Conexiones.** Hub entre LeDoux 9b (emoción como proceso neural), Barrett 11b (body budget e inflamación), Ramírez-Bermúdez 5a (mecanismos transdiagnósticos), Nave 15a (predicción + cuerpo).

**Preguntas guía.**
1. ¿Por qué la regulación top-down cambia la definición de interocepción?
2. ¿Qué rol específico tiene la ínsula y por qué su gradiente importa?
3. ¿Cómo encaja la interocepción en teorías construccionistas de la emoción?

---

## 11b. Barrett — *Emotion and Illness* (2017)

**Contexto.** Lisa Feldman Barrett, Northeastern University, es la figura central del construccionismo emocional contemporáneo (*How Emotions Are Made*, 2017). Este texto es un artículo divulgativo que aplica su marco a la salud.

**Tesis central.** Muchas enfermedades clasificadas como distintas (depresión, ansiedad, dolor crónico, fatiga) pueden compartir un trasfondo común: desbalance crónico del *body budget* e inflamación sistémica. La separación rígida entre mental y físico es engañosa.

**Argumento.** Concepto central: *body budget*. El cerebro administra recursos (energía, glucosa, sueño, agua, esfuerzo) y predice necesidades. Cuando predice mal de forma sostenida (por estrés crónico, adversidad, mala alimentación, sueño deficitario), el presupuesto se desequilibra. Ese desequilibrio dispara inflamación persistente, que afecta tanto al cuerpo como al cerebro (redes interoceptivas y de control). Esto produce un fenotipo común con expresiones clínicas distintas según historia, contexto y modulación.

**Conclusión.** No es que todas las enfermedades "sean lo mismo". Es que muchas categorías clínicas se construyen sobre ingredientes biológicos compartidos. Esto justifica enfoques transdiagnósticos y tratamientos que actúen sobre el body budget (sueño, actividad física, dieta antiinflamatoria, regulación emocional).

**Conexiones.** Diálogo central con Chen 11a (interocepción como base del body budget), con Ramírez-Bermúdez 5a (constructos transdiagnósticos), con LeDoux 9b (matiz: amígdala y miedo son parte pero no la totalidad del afecto). Para profundizar: *How Emotions Are Made* (libro completo).

**Preguntas guía.**
1. ¿Qué evidencia respalda que la inflamación atraviesa diagnósticos psiquiátricos separados?
2. ¿En qué sentido el body budget es un mecanismo y no una metáfora?
3. ¿Cómo se concilia este marco con el clásico de emociones básicas (Ekman, LeDoux)?

---

## 13a. Bechtel — *Representations. From Neural Systems to Cognitive Systems* (2001)

**Contexto.** Capítulo del Reader *Philosophy and the Neurosciences*. Aparece en el momento más fuerte del debate dinamicismo vs. representacionalismo en ciencia cognitiva (Van Gelder, Beer, Thelen).

**Tesis central.** Una representación es un estado interno que porta información sobre algo externo y que el sistema usa para guiar conducta. No hay misterio ontológico: basta con que un estado interno tenga contenido informacional y un rol funcional en el sistema.

**Argumento.** Bechtel responde a los dinamistas con un ejemplo paradigmático: el *regulador de Watt* (mecanismo de vapor con brazos giratorios que regula la velocidad del motor). El ángulo de los brazos representa la velocidad — co-varía con ella y la usa el mecanismo para ajustar el flujo de vapor. No hay homúnculos, no hay misterio, y sin embargo hay representación funcional-informacional. Bechtel define entonces tres condiciones: (1) portar información (co-variación con estados del mundo), (2) tener rol funcional (el sistema lo usa), (3) no requerir intérprete externo (el propio mecanismo lo consume). Aplica esto a casos neurales canónicos: orientaciones de bordes (Hubel y Wiesel), células de lugar (O'Keefe), vectores oculomotores (Sparks), coordenadas espaciales (Andersen). Cierra construyendo un puente *mecanicista*: representaciones cognitivas complejas emergen jerárquicamente de representaciones neurales simples; no hay salto ontológico, hay escala de complejidad.

**Conclusión.** Naturalismo representacional sin compromisos metafísicos pesados. Permite hablar de "representación" en neurociencia sin caer en homúnculos cartesianos ni en el rechazo dinamicista.

**Conexiones.** Bisagra de todo el curso. Hinton 2b *asume* representaciones; Bechtel define qué son. Quian Quiroga 7b ofrece las "concept cells" como caso límite; Moser & Moser 13b ofrece células de rejilla como caso paradigmático de representación encarnada. El debate dinamicista resurge en mente extendida (Clark) y en cerebro predictivo (Nave 15a).

**Preguntas guía.**
1. ¿Por qué el regulador de Watt cuenta como representación y un termómetro también? ¿Hay diferencia?
2. ¿Cómo distinguir representación genuina de mero correlato funcional?
3. ¿El puente mecanicista entre neural y cognitivo es realmente continuo o esconde un salto?

---

## 13b. Moser & Moser — *Where Am I. Where Am I Going* (2015)

**Contexto.** May-Britt y Edvard Moser ganaron el Nobel de Medicina 2014 junto con John O'Keefe por el descubrimiento del sistema de células de lugar y de rejilla. Este texto sintetiza ese trabajo para audiencia amplia.

**Tesis central.** El cerebro dispone de un "GPS interno": células de lugar (hipocampo) que disparan en localizaciones específicas, células de rejilla (corteza entorrinal) que generan patrones hexagonales regulares que sirven como métrica del espacio, más células de dirección y de borde. Estos sistemas no sólo permiten navegación: subyacen también a la memoria episódica (cuándo y dónde ocurrió algo).

**Argumento.** Combinan registros unitarios en ratas que se mueven libremente en arenas, evidencia anatómica (conectividad entorrinal-hipocampal), modelos computacionales (cómo emergen las rejillas desde campos receptivos no espaciales) y evidencia translacional (signos tempranos de Alzheimer afectan corteza entorrinal y se manifiestan como desorientación). Lo importante: la representación espacial no está "leyendo" un mapa externo, está *construyendo* uno interno a partir de información sensorial y propioceptiva.

**Conclusión.** Es uno de los casos más limpios de representación neural genuina: sistemas anatómicamente definidos, comportamentalmente relevantes, con dinámica medible y modelable. Y conectados con memoria episódica: la "cuándo-dónde-qué" comparte substrato con la navegación. Esto da peso a teorías cognitivas que ven la memoria episódica como un sistema evolutivamente derivado de la navegación.

**Conexiones.** Caso paradigmático para Bechtel representaciones (13a) y para de Brigard & Robins (7a). Conecta con Quian Quiroga 7b (otra forma de selectividad en MTL). Para profundizar: Tolman y los mapas cognitivos como precedente teórico.

**Preguntas guía.**
1. ¿Por qué las rejillas son evidencia *fuerte* de representación y no sólo de correlación?
2. ¿Qué consecuencias tiene que memoria episódica y navegación compartan substrato?
3. ¿Cómo dialoga este sistema con la teoría del cerebro predictivo?

---

## 15a. Nave, Deane, Miller & Clark — *Wilding the Predictive Brain* (2020)

**Contexto.** Andy Clark (Sussex/Edinburgh) es el principal divulgador del marco del procesamiento predictivo en filosofía. Este texto, multiautor, presenta una versión "salvaje" o "ensanchada" del marco: no neurocéntrica, no encerrada en el cráneo.

**Tesis central.** El cerebro puede entenderse como un sistema que genera predicciones sobre las causas del flujo sensorial y minimiza error de predicción. Pero ese proceso no es exclusivamente intracraneal: involucra cuerpo, acción (inferencia activa), emoción, y entorno (incluyendo nichos sociales y tecnológicos).

**Argumento.** Recorrido en tres pasos: (1) Inferencia perceptiva: el cerebro construye hipótesis sobre causas y usa el error de predicción para ajustarlas. (2) Inferencia activa: el organismo no sólo ajusta su modelo, también actúa sobre el mundo para generar la señal sensorial esperada o útil (mover el ojo, cambiar postura, hablar). (3) Precisión: el sistema debe estimar cuánto peso dar a errores específicos. Esto conecta predicción con atención, valor, emoción. Los autores extienden esto hacia regulación homeostática (alostasis), corporalidad (Andy Clark + Lisa Feldman Barrett) y nichos cognitivos (Sutton, Hutchins).

**Conclusión.** El procesamiento predictivo no implica neurocentrismo. Al contrario, su forma más fuerte es la encarnada-extendida: la mente predictiva es corporal, afectiva y ambientalmente acoplada. Esto rehabilita intuiciones dinamicistas dentro de un marco representacional.

**Conexiones.** Marco unificador del curso tardío. Conecta con Daugman 2a (¿el cerebro predictivo es otra metáfora?), Bechtel 13a (representaciones como modelos generativos), Chen 11a y Barrett 11b (interocepción como ciclo predictivo), Laureys 10b (modelos del mundo sin output motor), Webb 15b (mecanismos artificiales como modelos generativos simples). Para profundizar: Friston y la *Free Energy Principle*.

**Preguntas guía.**
1. ¿Por qué el procesamiento predictivo no es necesariamente neurocéntrico?
2. ¿Qué diferencia hay entre inferencia perceptiva e inferencia activa?
3. ¿Cómo se relaciona la precisión con atención y emoción?

---

## 15b. Webb — *A Cricket Robot* (1996)

**Contexto.** Barbara Webb (Edinburgh) construyó en los 90s un robot biomimético basado en el sistema de fonotaxis del grillo hembra (que se orienta al canto del macho usando una estructura traqueal que actúa como interferómetro acústico). Este artículo presenta la motivación filosófica y metodológica.

**Tesis central.** Construir un modelo artificial simple que reproduce una conducta concreta es una forma legítima y poderosa de explicación: muestra qué tipo de organización mínima *basta* para generar esa capacidad.

**Argumento.** Webb no copia todo el grillo: aísla una función (orientación hacia un canto específico de su especie) y reconstruye los principios anatómicos y sensoriales relevantes. Su robot tiene dos "oídos" conectados por un tubo análogo a la tráquea del grillo, lo que produce diferenciación direccional. El robot, programado mínimamente, replica el comportamiento de fonotaxis selectiva. Eso no demuestra que el grillo sea idéntico al robot, pero apoya una hipótesis mecanicista específica: la selectividad y orientación no requieren procesamiento neural complejo, basta con la *morfología* del aparato sensorial.

**Conclusión.** *Modelar es explicar*. La explicación por construcción de mecanismos artificiales complementa la observación y la simulación matemática. Webb defiende lo que en filosofía de la ciencia se llamará después "explicación mecanicista" (Bechtel, Machamer, Darden, Craver).

**Conexiones.** Diálogo con Bechtel *Mental Mechanisms* (material complementario) y con la noción mecanicista de explicación. También con Brooks y la robótica situada de los 80s-90s. Y con Nave 15a: la cognición no está toda en el cerebro; parte está en el cuerpo.

**Preguntas guía.**
1. ¿Qué condiciones debe cumplir un modelo para "explicar" en sentido mecanicista?
2. ¿En qué se diferencia esta forma de explicación de una simulación computacional pura?
3. ¿Qué consecuencias tiene la *embodiment* para teorías cognitivas clásicas?

---

## 16b. Obhi & Haggard — *Free Will and Free Won't* (2004)

**Contexto.** Patrick Haggard (UCL) y Sukhvinder Obhi revisan los experimentos de Benjamin Libet (1983) y trabajos posteriores. El texto aparece cuando la pregunta sobre el libre albedrío ha vuelto al centro de la neuroética.

**Tesis central.** El experimento de Libet (la actividad cerebral preparatoria precede en cientos de milisegundos a la conciencia de la intención de mover) no liquida el libre albedrío. Obliga a distinguir conceptualmente preparación motora, conciencia de intención, ejecución y posible inhibición ("free won't").

**Argumento.** Reconstruyen el paradigma de Libet: sujetos miran un reloj giratorio, mueven la mano cuando quieren, reportan el instante (W) en que sintieron por primera vez la voluntad de actuar. Se registra simultáneamente potencial de preparación (*readiness potential*, en corteza motora suplementaria) y EMG. El RP comienza ~550 ms antes del movimiento; W ocurre ~200 ms antes. Conclusión clásica (provocadora): la voluntad consciente sería un efecto tardío, no causa de la acción. Obhi & Haggard matizan: (1) RP puede ser un correlato genérico de preparación, no específico de esa acción concreta; (2) la conciencia podría intervenir tarde como veto inhibitorio (Libet mismo: "free won't"); (3) la cronometría introspectiva (W) es metodológicamente discutible.

**Conclusión.** El experimento no muestra que el libre albedrío sea ilusión total. Muestra que la *imagen popular* del libre albedrío (un yo consciente que inicia desde cero cada acción) es insostenible. Hay que refinar: agencia, intención consciente, preparación motora, ejecución, veto. La filosofía contribuye separando lo que la neurociencia mezcla.

**Conexiones.** Diálogo con Suchy y Miller-Cummings (funciones ejecutivas y control), Laureys (agencia sin conducta), Nave 15a (inferencia activa: la "intención" emerge en un ciclo predictivo, no en un instante puntual). Para profundizar: Schurger et al. 2012 (RP como integración de ruido estocástico).

**Preguntas guía.**
1. ¿Por qué la sola precedencia temporal del RP no implica negar el libre albedrío?
2. ¿Qué supone la cronometría introspectiva (medir W con un reloj)?
3. ¿Cómo se reformula la pregunta del libre albedrío en el marco predictivo?

---

## Apendice — Guia breve de lectura (desde REPO)

> Resumen conciso de cada texto de la bibliografia principal, orientado a comprension rapida.
> Fuente: `Contenidos/Explicaciones/Archivo/GuiasTopLevel/02_bibliografia_principal_explicada.md`


Describe un robot inspirado en el comportamiento de un grillo. Aunque parece un texto de robótica y etología, es muy útil metodológicamente.

Sirve para mostrar una estrategia clásica de ciencia cognitiva y neurociencia: entender sistemas complejos construyendo modelos artificiales simples que capturan una función concreta.

## 16b - Obhi y Haggard - *Free Will and Free Won't*

Este texto revisa experimentos donde la actividad cerebral preparatoria antecede la conciencia de la intención de actuar. A partir de Libet y trabajos posteriores, se discute la sensación de control.

Filosóficamente, el punto importante no es concluir apresuradamente que "el libre albedrío no existe", sino refinar qué significa intención, preparación motora, veto, agencia y experiencia subjetiva de decidir.

## Comentario de conjunto sobre la bibliografía principal

La bibliografía principal no debe leerse como una lista dispersa. Tiene una lógica:

- Los primeros textos definen el campo y sus herramientas conceptuales.
- Los textos metodológicos muestran cómo se produce evidencia.
- Los textos intermedios desarrollan conceptos como representación, memoria, emoción y predicción.
- Los estudios de caso ponen a prueba esas ideas en percepción, lenguaje, conciencia, psiquiatría y acción.

