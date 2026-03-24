# Guion Completo de Presentacion — Hinton (1992)

## Uso recomendado

Este guion esta pensado para la presentacion web actual sobre Geoffrey Hinton y su texto:

> Hinton, G. E. (1992). "How Neural Networks Learn from Experience." *Scientific American*, 267(3), 144-151.

No esta escrito para leerlo palabra por palabra como libreto teatral. La idea es que te sirva como base oral clara, segura y flexible.

### Tesis central de la presentacion

La idea que debe quedar al final es esta:

**Hinton no solo presenta una tecnica de aprendizaje, sino una forma de pensar la cognicion como formacion de representaciones internas distribuidas mediante ajuste de conexiones.**

### Modo recomendado al presentar

- Usa el **modo publico** como modo principal.
- Usa el **modo profesor** solo si quieres mostrar una formula o responder una pregunta tecnica.
- No dependas del panel de IA en vivo.
- Si ves que el tiempo se aprieta, recorta primero las secciones S02, S09 y S12b.

---

## Apertura general antes de empezar

Hola. Hoy voy a presentar el texto de Geoffrey Hinton de 1992 sobre como aprenden las redes neuronales a partir de la experiencia.

Mi interes no es solo explicar como funciona tecnicamente una red, sino mostrar por que este texto fue importante para la filosofia de las neurociencias.

La pregunta de fondo que atraviesa toda la presentacion es esta:

**cuando Hinton dice que el cerebro aprende formando representaciones internas, esta describiendo realmente el cerebro o esta proponiendo un modelo muy poderoso para investigarlo?**

Con esa pregunta en mente, empiezo.

---

## Slide S00 — Intro (animacion cerebro + QR)

### Que mostrar

- Animacion 3D de nodos neuronales flotantes con pulsos de luz.
- Boton de acceso movil con codigo QR (hinton.stevenvallejo.com).

### Que decir

Mientras el publico entra, esta pantalla puede estar corriendo. No hay que decir nada si la presentacion todavia no empezo.

Si quieres abrir formalmente puedes decir:

> "Pueden escanear el QR para seguir la presentacion desde su movil. La aplicacion es interactiva — en cualquier momento pueden explorar los diagramas desde su pantalla."

Luego avanzas al slide siguiente y arranca el guion propiamente dicho.

### Nota practica

S00 no necesita dialogo sustantivo. Su funcion es crear ambiente y dar acceso movil al publico. Avanza rapido.

---

## Slide S01 — Apertura filosofica

### Que mostrar

- Animacion tipografica: "La maquina... que aprende... a ser... cerebro."
- Pregunta: descripcion o apuesta.
- Mapa argumental: CEREBRO → INFORMACION → REPRESENTACION → MODELO → CONVERGENCIA.
- Contexto en el curso: Daugman — Hinton — Bechtel.
- Cita bibliografica.

### Que decir

Quiero empezar con la frase que organiza todo el texto: La maquina que aprende a ser cerebro.

Esa frase suena fuerte, y precisamente por eso me interesa. Yo no la voy a tomar como una verdad obvia, sino como una apuesta. Hinton esta proponiendo una forma de investigar la mente y el cerebro desde el aprendizaje, la representacion y la computacion.

En ese sentido, este texto no solo habla de redes neuronales artificiales. Tambien propone una imagen de la cognicion: la idea de que aprender consiste en construir representaciones internas utiles del mundo.

Por eso este texto dialoga muy bien con dos autores del curso. Con Daugman, porque nos obliga a preguntar si "el cerebro como computadora" es una descripcion o una metafora historicamente poderosa. Y con Bechtel, porque si Hinton habla de representaciones, entonces tenemos que preguntar que cuenta realmente como representacion.

Mi punto de partida va a ser este: Hinton abre un programa de investigacion potente, pero eso no significa que todo lo que el modelo hace explique directamente como funciona el cerebro biologico.

### Frase puente

Para entender esa apuesta, primero hay que mirar que es lo que Hinton esta simplificando.

---

## Slide S02 — La neurona real

### Que mostrar

- Modelo 3D interactivo: dendrita, soma, axon, sinapsis (botones con info al hacer clic).
- Leyenda de flujo de senal: dendritica → integracion soma → potencial de accion → liberacion sinaptica.
- Comparativa: cerebro humano vs red de Hinton (1992).

### Que decir

Antes de llegar a la neurona artificial, vale la pena detenernos un momento en la neurona biologica. Lo primero que se ve aqui es complejidad material: geometria, ramificaciones, procesos electroquimicos, sinapsis y plasticidad.

Voy a ir haciendo clic en cada parte para que veamos que hace cada una.

**Al hacer clic en Dendrita:**

Las dendritas reciben senales de otras neuronas. Cada senal llega ponderada: unas excitan, otras inhiben. La suma de todas esas entradas es lo que determina si la neurona va a disparar. En la red artificial, esto corresponde al vector de entrada.

**Al hacer clic en Soma:**

El soma es el cuerpo de la neurona, donde se integran todas las senales que llegaron. Si la suma total supera un umbral, la neurona dispara un potencial de accion. En la red artificial, esto corresponde a la funcion de activacion que decide si la unidad "se enciende".

**Al hacer clic en Axon:**

El axon conduce el potencial de accion desde el soma hasta los terminales sinapticos. La mielina que lo recubre acelera esa conduccion. En la red artificial, esto corresponde a la salida numerica de la unidad.

**Al hacer clic en Sinapsis:**

La sinapsis es la zona de contacto entre dos neuronas, donde se liberan neurotransmisores. Lo clave es esto: la eficacia sinaptica puede cambiar con la experiencia. Eso es lo que Hinton va a conservar como el corazon de su modelo. En la red artificial, la sinapsis corresponde al peso.

Lo importante aqui: la informacion no esta guardada en ningun lugar concreto. Esta distribuida en la eficacia de miles de conexiones. Aprender, en este nivel, significa cambiar esa eficacia.

Fijense en la comparativa: un cerebro humano tiene ochenta y seis mil millones de neuronas y cien billones de sinapsis. La red de Hinton tiene cien a mil unidades. La brecha es enorme. Pero Andersen y Zipser demostraron que a pesar de esa diferencia de ocho ordenes de magnitud, pueden emerger representaciones funcionalmente similares. Eso es exactamente lo que vamos a ver mas adelante.

### Frase puente

Entonces la pregunta deja de ser "como copiar una neurona" y pasa a ser "que es lo minimo que necesito conservar para modelar aprendizaje".

---

## Slide S03 — La neurona artificial

### Que mostrar

- Diagrama animado: entradas → suma ponderada → funcion de activacion → salida.
- Sliders de pesos (interactivo).
- Grafica de las tres funciones de activacion: sigmoide, ReLU, umbral.
- Analogia biologica por pares.

### Que decir

Aqui aparece la neurona artificial. Y lo primero que conviene decir con claridad es esto: Hinton no copia la neurona biologica, la idealiza.

La unidad artificial recibe entradas, las multiplica por pesos, las suma y luego pasa ese resultado por una funcion de activacion. Ese procedimiento es mucho mas simple que el funcionamiento real de una neurona.

Pueden mover los sliders para ver como cambia la salida en tiempo real. Un peso positivo excita, un peso negativo inhibe. La magnitud del peso indica la fuerza de la conexion.

Sobre las funciones de activacion: la sigmoide produce una salida continua entre cero y uno, y es diferenciable en todo punto, lo que la hace ideal para el algoritmo de retropropagacion. La ReLU es mas rapida y evita el problema de gradientes saturados — es la que usan la mayoria de las redes modernas. El umbral es la version mas biologica: todo o nada, igual que el potencial de accion de McCulloch y Pitts en 1943.

Entonces que se gana y que se pierde con esta simplificacion. Se pierde geometria, quimica, temporalidad fina y gran parte de la complejidad biologica. Pero se gana algo muy importante: un modelo manipulable, entrenable y matematicamente tratable.

Y ahi esta uno de los puntos filosoficos mas importantes del texto: una idealizacion puede ser cientificamente util sin ser una copia literal de su objeto. El problema es decidir hasta que punto esa idealizacion sigue explicando algo real y hasta que punto solo sirve como herramienta.

### Frase puente

Una sola neurona artificial todavia no hace mucho. Lo interesante empieza cuando estas unidades se organizan en capas.

---

## Slide S04 — Arquitectura de tres capas

### Que mostrar

- Red con capas (entrada, ocultas, salida).
- Forward pass animado.
- Activaciones y pesos coloreados por valor.
- Demo en vivo con TensorFlow.js.

### Que decir

En esta parte aparece una de las contribuciones mas influyentes del texto: la arquitectura multicapa con unidades ocultas.

La idea es sencilla, pero muy poderosa. Hay una capa de entrada, una o mas capas ocultas y una capa de salida. La informacion avanza hacia adelante, pero lo realmente importante es que las unidades ocultas no reciben instrucciones explicitas sobre que representar.

Eso es el corazon del conexionismo de Hinton. Las representaciones no estan puestas desde afuera como si fueran simbolos ya definidos. Emergen del entrenamiento mismo.

Por eso este modelo se opone, al menos parcialmente, a la idea clasica de que pensar consiste solo en manipular simbolos explicitamente codificados. Aqui lo que tenemos son patrones distribuidos de activacion que van aprendiendo regularidades.

### Frase puente

Pero para que esas capas aprendan algo, tiene que haber un proceso de entrenamiento.

---

## Slide S05 — Entrenamiento supervisado

### Que mostrar

- Ciclo animado de 4 fases: PRESENTAR (verde) / EVALUAR (rojo) / CALCULAR EP (amarillo) / ACTUALIZAR (violeta).
- Frontera de decision en tiempo real sobre espiral 2D.
- Curva de error cayendo.
- Control de velocidad (pausa, frame a frame, acelerar).

### Que decir

En esta slide se ve muy bien que aprender no es magia. La red recibe una entrada, produce una salida, se compara con la respuesta esperada y a partir de ese error se ajustan los pesos.

Vamos fase por fase. Primero se presenta un punto del espacio. La red genera una prediccion. Luego se mide el error: que tan equivocada estuvo. Despues se calcula como cada conexion contribuyo a ese error. Y finalmente se actualizan los pesos para que la proxima vez el error sea menor.

Fijense en la frontera de decision: cada epoca de entrenamiento, la red aprende a separar mejor las clases. El conocimiento no queda guardado en una instruccion concreta, sino en la reorganizacion progresiva de los pesos.

Eso es aprendizaje supervisado. La red no descubre sola si acerto o no: necesita que alguien, o algo, le diga cual era la salida correcta.

Por eso Hinton fue tan influyente: convierte el aprendizaje en un proceso gradual, cuantificable y visible. La red no aplica una regla ya dada: se transforma a si misma mediante entrenamiento.

### Frase puente

Ahora bien, el mecanismo que hace posible ese ajuste eficiente de pesos es precisamente la retropropagacion.

---

## Slide S06 — Retropropagacion

### Que mostrar

- Linea de tiempo: Werbos 1974 (ignorado) → redescubierto 1982 × 2 → Hinton 1986 (publicado).
- Flujo forward (verde) y backward (rojo).
- Los 4 pasos del algoritmo con formulas KaTeX en modo profesor.

### Que decir

La retropropagacion del error es probablemente el centro tecnico del texto. La idea es calcular como contribuye cada peso al error final para corregirlo de manera eficiente.

Historicamente esto es interesante. En 1974 Werbos lo descubrio en su tesis doctoral. Nadie lo escucho. En 1982 dos grupos independientes lo redescubrieron. En 1986 Hinton, Rumelhart y Williams lo publicaron en Nature y el mundo finalmente lo vio. Costo doce anos que el campo lo adoptara.

Lo mas importante aqui no es memorizar las formulas, sino entender la intuicion: el error final se propaga hacia atras y reparte responsabilidad a traves de la red. Despues, los pesos se actualizan en la direccion que reduce ese error.

Los cuatro pasos son: calcular el error de activacion en la capa de salida; ponderarlo por la derivada de la funcion de activacion; derivar el error de cada peso individual; y propagar ese error hacia la capa anterior para repetir el proceso.

Eso hizo posible entrenar redes multicapa de forma efectiva. Sin retropropagacion, el conexionismo habria sido mucho menos convincente como programa de investigacion.

Pero aqui aparece una dificultad que no hay que esconder: este algoritmo funciona extraordinariamente bien, aunque no parezca biologicamente plausible en sentido estricto.

### Frase puente

Y justo por eso la siguiente pregunta es inevitable: si funciona tan bien, eso significa que explica el cerebro?

---

## Slide S07 — Alcances y primera critica

### Que mostrar

- Demo interactivo: clasificador de animales en tiempo real (gato, aguila, pez, serpiente, rana, murcielago).
- La red aprende a clasificar a partir de rasgos: pelaje, plumas, escamas, patas, vuela, nada, sangre caliente, nocturno.
- Panel de tension filosofica (verde = presupuesto / rojo = objecion critica).

### Que decir

En esta parte Hinton muestra el poder del modelo. Las redes pueden clasificar, reconocer patrones y resolver tareas que antes parecian mucho mas dificiles.

La demo que ven es un clasificador de animales entrenado en el navegador con TensorFlow.js. La red recibe como entrada un vector de rasgos biologicos (si el animal tiene pelaje, si vuela, si es nocturno) y aprende a distinguir entre seis especies. Lo hace en tiempo real frente a ustedes, sin que nadie haya programado explicitamente las reglas de clasificacion.

Ese es el punto que Hinton quiere demostrar: la red no tiene una regla que diga "si tiene plumas es un aguila". Aprende la clasificacion reorganizando sus pesos a partir de ejemplos. El conocimiento emerge de la estructura interna, no de instrucciones explicitas.

Pero aqui aparece la primera critica filosofica importante. Que un modelo funcione no significa automaticamente que describa el mecanismo real del cerebro.

Fijense en el panel de tension: el presupuesto de Hinton es que el cerebro es computacionalmente inteligible. La objecion critica es que eso es logicamente posible que sea falso. Funcionamiento no es lo mismo que explicacion.

En otras palabras, Hinton ofrece una herramienta potentisima y una hipotesis ambiciosa. Lo que sigue abierto es si ambas cosas coinciden por completo.

### Frase puente

Y lo interesante es que Hinton mismo no oculta los problemas de su enfoque.

---

## Slide S08 — Limites de la retropropagacion

### Que mostrar

- Superficie de error 3D con minimos locales (interactiva, rotar con mouse).
- Cuatro tarjetas de limites animadas.
- Comparacion con la regla de Hebb como alternativa biologicamente plausible.

### Que decir

Una gran virtud del texto es que Hinton reconoce limites reales de la retropropagacion.

Primero: requiere supervision. Alguien tiene que proveer la respuesta correcta para cada ejemplo.

Segundo: el tiempo de entrenamiento crece mas rapido que el tamano de la red. No escala sin problemas.

Tercero: puede quedar atrapada en minimos locales. La superficie de error que ven aqui tiene valles que no son el minimo global. La red puede converger a una solucion local aceptable pero no optima.

Cuarto, y el mas importante filosoficamente: la retropropagacion envia una senal de error simetrica hacia atras por las mismas conexiones que usaron la informacion hacia adelante. Ningun mecanismo biologico conocido hace exactamente eso. El cerebro no tiene un canal de error que fluya en sentido inverso por las mismas sinapsis.

Por eso la comparacion con Hebb es tan importante. El aprendizaje hebbiano, "las neuronas que disparan juntas se conectan juntas", es mas local, mas biologicamente razonable, aunque menos potente y menos preciso. Aqui Hinton sacrifica realismo biologico por poder computacional.

Yo diria que este es uno de los mejores puntos del texto, porque muestra que el conexionismo no es ingenuo: sabe que su fuerza tecnica viene acompanada de un costo explicativo.

### Frase puente

Y precisamente por esas limitaciones, Hinton abre la puerta al aprendizaje no supervisado.

---

## Slide S09 — Aprendizaje no supervisado

### Que mostrar

- Cita de apertura y tarjeta del criterio universal (Eficiencia Ontologica / Fidelidad Generativa).
- Tabs en orden: 9a PCA — 9b Competitivo — 9c Kohonen — 9d Hebb.
- Cada tab activa una animacion distinta con descripcion al pie.
- Tabla comparativa de seis paradigmas visible al final del slide.
- STDeriveCard FOL del criterio de buena representacion (solo modo profesor).

---

### Que decir — APERTURA (antes de tocar los tabs)

Esta parte es de las mas filosoficamente ricas del texto. Hasta ahora hemos hablado de una red que aprende porque alguien le dice cuando se equivoca. Pero eso tiene un costo enorme: necesitas un maestro, necesitas etiquetas, necesitas supervision para cada dato. El cerebro no tiene eso. El mundo no viene etiquetado.

Entonces Hinton pregunta: como puede una red aprender sola a organizar lo que recibe?

Lean la cita en pantalla: "Como logra un sistema desarrollar una representacion isomorfica del mundo, sin que un instructor omnisciente asigne etiquetas externas sobre que es lo que observa?"

Esa es la pregunta central de la segunda mitad del texto.

Y la respuesta de Hinton esta en la tarjeta que ven justo debajo. Cualquier modelo representacional autonomo tiene que resolver una tension entre dos fuerzas opuestas:

La primera es la **eficiencia ontologica**: reducir dimensionalidad exprimiendo redundancias. El mundo tiene estructura repetitiva. Una imagen de una cara tiene millones de pixeles, pero la mayoria son altamente predecibles a partir de los demas. Esa redundancia tiene un costo computacional real: si la procesas entera, gastas recursos en informacion que no agrega nada nuevo. Una buena representacion elimina esa redundancia.

La segunda es la **fidelidad generativa**: que la entrada pueda ser reconstruida aproximadamente a partir del codigo comprimido. Si comprimes demasiado, pierdes la sennal. Si comprimes bien, conservas lo que importa.

Comprimir sin destruir. Eso es el criterio de buena representacion, y los cuatro paradigmas que voy a mostrar son cuatro formas distintas de resolver esa tension.

> **[Siguiente → hacer clic en tab 9a]**

---

### Paso 1 — Tab 9a: PCA

**Que se ve en pantalla:**
Nube de puntos animada drifteando lentamente. Un eje diagonal PC1 atraviesa la mayor extension de la nube. Al pie: *"Cara de elipses: 1M pixeles → 5 parametros"*.

**Que decir:**

El primer paradigma es el calculo de componentes principales, PCA.

El problema de partida es el costo computacional de la redundancia. Imaginen una imagen de una cara hecha de elipses: tiene un millon de pixeles. Pero esos pixeles no son independientes. Si sabes donde esta el centro de la elipse, puedes predecir mucho de lo que hay alrededor. La mayoria de los pixeles son redundantes respecto a los demas.

PCA detecta exactamente eso. Encuentra las direcciones del espacio de datos que concentran la mayor varianza — el eje PC1 que ven aqui es la primera de esas direcciones. Y lo que descubre Hinton es que para una cara de elipses, cinco parametros bastan: orientacion, posicion x, posicion y, longitud del eje mayor y anchura del eje menor. De un millon de numeros a cinco. Eso es reducir el costo computacional de la redundancia en cinco ordenes de magnitud.

La clave filosofica es esta: la red no sabe de antemano que esos cinco parametros existen. Los descubre sola analizando correlaciones en los datos. No necesita maestro.

Y dos algoritmos, Linsker y Oja, demostraron que PCA puede hacerse con reglas de aprendizaje local, sin retropropagacion. Eso los hace biologicamente plausibles: el cerebro podria hacer algo equivalente.

> **[Siguiente → hacer clic en tab 9b]**

---

### Paso 2 — Tab 9b: Aprendizaje competitivo

**Que se ve en pantalla:**
Dos nubes de puntos, verde para osos pardos y cyan para osos polares. Dos vectores "W" que empiezan en el centro del canvas y migran lentamente hacia cada racimo. Al pie: *"una unidad gana → sus pesos migran al patron"*.

**Que decir:**

PCA comprime manteniendo la varianza global. Pero hay otro problema: a veces lo que queremos no es comprimir la varianza, sino **categorizar**. Descubrir que hay dos tipos de cosas, no solo una dimension de variacion.

Eso es lo que hace el aprendizaje competitivo. Cada vez que llega un patron de entrada, todas las unidades calculan su similitud con ese patron. Gana la que mas se parece — winner-takes-all. Solo esa unidad actualiza sus pesos, moviendose un poco hacia el patron. Las demas no hacen nada.

Fijense en los vectores W en la animacion: empiezan los dos en el centro, sin especializacion. Pero poco a poco uno migra hacia la nube de puntos verdes y el otro hacia la nube cyan. Con el tiempo cada unidad queda especializada en un tipo de patron sin que nadie le haya dicho que categorias existen.

El ejemplo del texto es exactamente este: una red entrenada con datos de osos desarrolla una unidad para osos pardos y otra para osos polares. La distincion emerge sola.

El costo computacional aqui es diferente al de PCA: en lugar de reducir dimensiones, se reduce el numero de comparaciones necesarias. Una vez entrenado, reconocer un patron nuevo es solo buscar la unidad ganadora — una operacion mucho mas barata que procesar la entrada completa.

Contraste con PCA: alla las unidades cooperan para capturar varianza global. Aqui compiten para capturar categorias locales. Dos filosofias distintas de como reducir la redundancia del mundo.

> **[Siguiente → hacer clic en tab 9c]**

---

### Paso 3 — Tab 9c: Kohonen

**Que se ve en pantalla:**
Grilla de 8×8 nodos conectados por lineas violetas. Un nodo verde (el ganador, Best Matching Unit) se mueve de posicion en posicion a medida que llegan nuevos patrones. Contador al pie: *"epoca X/300 — nodo ganador (verde) arrastra vecinos"*. La grilla pasa de caotica a ordenada progresivamente.

**Que decir:**

El mapa de Kohonen lleva el aprendizaje competitivo un paso mas alla. Y es donde la relacion con el cerebro biologico se vuelve mas directa.

La diferencia clave frente al competitivo puro es esta: cuando gana una unidad, no solo actualiza sus propios pesos. Tambien arrastran sus vecinas fisicas en la grilla, aunque en menor medida segun la distancia. El nodo verde que ven es la Best Matching Unit — la que mas se parecio al patron de entrada. Pero las que estan al lado de ella tambien se mueven un poco en esa misma direccion.

Fijense en el contador: al inicio de las 300 epocas la grilla es caotica. A medida que avanza el entrenamiento, la grilla se organiza. Al final, unidades cercanas en la grilla codifican patrones similares. La proximidad en la red corresponde a similitud en el espacio de entrada.

Eso es exactamente lo que tienen los mapas topograficos de la corteza visual: neuronas fisicamente cercanas responden a estimulos similares. La corteza visual tiene una organizacion retinotopica, la corteza auditiva una organizacion topotopica. Hinton senala que el cerebro podria usar un procedimiento parecido al de Kohonen para organizar esos mapas.

No es una prueba. Pero si muestra que el tipo de estructura que emerge del entrenamiento es compatible con la organizacion real del cerebro. Y eso vuelve al modelo mucho mas interesante que si solo funcionara en silicio.

El costo computacional que resuelve Kohonen es el de la busqueda: si la similitud esta organizada espacialmente, buscar el patron mas cercano es mucho mas rapido que comparar contra todas las unidades.

> **[Siguiente → hacer clic en tab 9d]**

---

### Paso 4 — Tab 9d: Hebb

**Que se ve en pantalla:**
Dos neuronas: PRE en azul a la izquierda, POST en verde a la derecha. Una linea de sinapsis las conecta. El ciclo tiene cuatro fases: (1) PRE inactivo, POST inactivo — linea delgada. (2) PRE se activa — se ilumina en azul. (3) PRE y POST co-activos — la linea pulsa y se engrosa. (4) Reposo. El valor "w = X.XX" sobre la sinapsis crece con cada co-activacion. Contador de co-activaciones en la esquina inferior derecha. Al pie: *"neuronas que se disparan juntas, se conectan juntas — Hebb 1949"*.

**Que decir:**

El cuarto paradigma es el mas importante filosoficamente porque es el mas biologicamente plausible: la regla de Hebb.

La idea es extremadamente minimalista. Si la neurona presináptica y la postsináptica se activan juntas, la conexion entre ellas se fortalece. Eso es todo. No hay senal de error global. No hay calculo de gradiente. No hay nada que viaje hacia atras por la red.

Fijense en la animacion: cada vez que PRE dispara y POST lo sigue, el peso w sube un poco. La linea de la sinapsis se va haciendo mas gruesa. El cambio es local, dependiente solo de lo que pasa en esa sinapsis particular.

Esto es biologicamente realista porque el cerebro tiene LTP — potenciacion a largo plazo — que es exactamente esto: sinapsis que se fortalecen cuando hay co-activacion repetida. No necesita un maestro. No necesita error global.

Ahora, el problema de Hebb puro es que es inestable: los pesos crecen sin limite si hay correlacion continua. Oja en 1982 propuso una variante normalizada que resuelve eso, y demostro que esa variante implementa el primer componente principal de los datos. Lo que PCA hace con algebra matricial costosa, Hebb con normalizacion lo hace con biologia local.

Aqui esta el punto mas importante del slide completo: el costo computacional de PCA es alto — requiere operaciones matriciales globales sobre todos los datos. El costo de Hebb es minimo — cada sinapsis solo necesita saber que hacen sus dos neuronas adyacentes. La misma representacion eficiente, con un costo computacional radicalmente menor, y con un mecanismo que el cerebro realmente tiene.

La tension que deja Hinton abierta es esta: la retropropagacion es mas potente pero biologicamente implausible y computacionalmente costosa en terminos de senales globales. Hebb es biologicamente plausible y computacionalmente local, pero menos potente. Esa tension no esta resuelta en 1992 y sigue siendo una de las preguntas abiertas de la neurociencia computacional hoy.

---

### Despues de los 4 tabs — Tabla comparativa

**[La tabla queda visible en pantalla debajo de los tabs]**

Ahora pueden ver la tabla comparativa completa. Seis paradigmas. Cada uno con distinto tipo de instructor, distinto tipo de representacion y distintos usos actuales.

Fijense en el patron: los que necesitan instructor (supervisado con retropropagacion) son los mas potentes pero los menos biologicos. Los que no necesitan instructor (PCA, competitivo, Kohonen, Hebb) son mas plausibles pero menos precisos en tareas complejas. Refuerzo es un caso intermedio: no hay etiquetas pero hay una senal de recompensa.

Lo que conecta a todos los no supervisados es el mismo principio: reducir redundancia sin destruir estructura. Comprimir sin perder la capacidad de reconstruir. Todos son soluciones distintas al mismo problema de costo computacional.

En modo profesor se pueden activar las derivaciones formales de logica de primer orden que demuestran que si algo cuenta como buena representacion, necesariamente cumple las dos condiciones — economia y reconstruccion — por necesidad logica dentro del marco de Hinton.

### Frase puente

Eso nos lleva directamente al problema de donde viven las representaciones en una red.

---

## Slide S10 — Representaciones distribuidas, locales y sparse

### Que mostrar

- Tres diagramas animados en paralelo: distribuida / local / sparse (Barlow).
- Red recurrente con flujo en bucle (4 nodos A-B-C-D).

### Que decir

Aqui aparece una pregunta clasica y muy buena: donde esta realmente un concepto dentro de una red?

Una opcion extrema seria el localismo: una neurona, un concepto. La otra opcion extrema seria una distribucion demasiado difusa. Hinton busca una posicion intermedia mas fertil.

Fijense en los tres tipos. En la representacion distribuida, muchas unidades estan activas al mismo tiempo y el patron emerge del conjunto. Es robusta: si pierdes una unidad no pierdes el concepto. En la representacion local, solo una unidad activa representa un patron. Es la "neurona abuela": fragil pero interpretable. La representacion sparse, propuesta por Barlow, es el caso mas interesante: solo un subconjunto pequeno de unidades esta activo. Combina economia con calidad de reconstruccion.

Las representaciones mas interesantes del texto no suelen ser completamente locales ni completamente densas. El significado aparece como patron de actividad.

**Red recurrente:**

Las redes recurrentes empujan esto todavia mas, porque permiten que la actividad vuelva sobre si misma y se estabilice o evolucione temporalmente. La actividad no va solo hacia adelante: vuelve, forma bucles. Eso permite estados estables, ciclos, dinámica temporal. Las LSTM y los transformers son descendientes directos de esta idea.

### Frase puente

Y si esto es mas que una intuicion computacional, deberiamos encontrar algo parecido en evidencia biologica.

---

## Slide S11 — Codigos demograficos

### Que mostrar

- Bump de actividad distribuida sobre 20 unidades (mover el bump arrastrando).
- Experimento de Sparks: anestesiar neuronas haciendo clic, el ojo se desvía al promedio.
- STDeriveCard: PopulationCode → DistributedCode y PopulationCode → RobustToLocalLoss.

### Que decir

Esta slide muestra una de las conexiones biologicas mas interesantes del texto: la idea de codigo demografico o poblacional.

Lo que muestra el experimento de Sparks es que una funcion no depende de una sola neurona aislada. Sparks y sus colegas anestesiaron neuronas del cerebro de un mono. El ojo no se quedo quieto: se movio hacia el promedio ponderado de las neuronas que quedaban activas. Cuando se silencian algunas neuronas, el sistema no colapsa completamente.

Pueden probarlo aqui haciendo clic en las unidades para anestesiarlas. Van a ver como el ojo del modelo se desplaza al nuevo promedio de la poblacion restante.

Eso refuerza la tesis de Hinton de que la informacion puede estar distribuida en patrones colectivos y no encerrada en una unidad individual.

Este punto me parece importante porque le da al conexionismo algo mas que poder computacional: le da una cierta resonancia biologica. No prueba que el cerebro sea una red de Hinton, pero si vuelve mas plausible la idea general de representacion distribuida.

Young y Yamane en el RIKEN encontraron algo similar para rostros en la corteza temporal de monos: los rostros se codifican demograficamente, no en neuronas individuales especializadas.

### Frase puente

Con eso llegamos a la convergencia: que pasa cuando se comparan directamente neuronas biologicas y unidades entrenadas?

---

## Slide S12 — De 1992 a hoy

### Que mostrar

- Arco de tres autores: Daugman (□ — metafora historica) / Hinton (◇ — apuesta empirica) / Bechtel (? — que cuenta como representacion).
- Las tesis de cada autor y su implicacion para la presentacion.

### Que decir

Llegamos al momento de ubicar el texto de Hinton dentro del arco mas amplio del curso.

Daugman nos advirtio que toda teoria del cerebro viene acompanada de la metafora tecnologica de su epoca. Antes fue la hidraulica, luego la relojeria, luego el telegrafo. Ahora es la computadora. Eso no invalida a Hinton, pero obliga a preguntarse si la computacion es el lenguaje final o simplemente el lenguaje vigente.

Hinton mismo no reclama haber encontrado la verdad definitiva. Su apuesta es que el aprendizaje distribuido puede modelar cognicion sin reglas simbolicas explicitas. Funciona como herramienta. Si ademas explica el cerebro, eso es una apuesta empirica que sigue abierta, no un hecho establecido.

Y Bechtel nos deja con la pregunta mas dificil: que es exactamente una representacion mental? Cuando Hinton dice que las unidades ocultas forman representaciones, eso exige responder que condiciones hacen que algo cuente como representacion en sentido real. La convergencia entre cerebro y red no puede afirmarse antes de responder eso.

Treinta anos despues, es evidente que muchas intuiciones de Hinton fueron enormemente fecundas. El aprendizaje distribuido, las redes multicapa y la idea de representaciones internas transformaron la investigacion en inteligencia artificial.

Pero la pregunta filosofica sigue abierta.

### Frase puente

Y antes del cierre argumental, hay un resultado empirico concreto que merece su propio slide.

---

## Slide S12b — Convergencia empirica: Andersen y Zipser

### Que mostrar

- Comparativa lado a lado: neurona biologica (corteza parietal, area 7a) vs unidad artificial entrenada.
- Dos columnas: lo que SI prueba la convergencia / lo que NO prueba.
- Badges: CONV_FUNC ✓ / CONV_MECH ✗.

### Que decir

Este es uno de los argumentos empiricos mas importantes del paper y vale la pena detenerlo un momento.

Andersen y Zipser entrenaron una red con retropropagacion para transformar coordenadas espaciales entre marcos de referencia. Lo que encontraron fue esto: las unidades ocultas desarrollaron por si solas propiedades similares a las neuronas reales de la corteza parietal de mono, el area 7a. La red no fue disenada para imitar esas neuronas. Simplemente emergio esa organizacion al resolver el problema.

Lo que si prueba esto: las redes entrenadas con retropropagacion pueden desarrollar representaciones funcionalmente similares a las biologicas. La organizacion jerarquica y la distribucion de campos receptivos converge en ambos sistemas. El tipo de representaciones que emergen es compatible con la arquitectura neural real.

Lo que no prueba: no prueba que el cerebro use retropropagacion, porque el mecanismo sigue siendo biologicamente implausible. No prueba que el proceso de aprendizaje sea el mismo. Y no resuelve la brecha explicativa central: convergencia funcional no es lo mismo que convergencia mecanistica.

Esta distincion es clave para la filosofia de la neurociencia. Que dos sistemas produzcan outputs similares no significa que funcionen igual por dentro. Eso es lo que Bechtel llama la pregunta por el mecanismo.

### Frase puente

Con ese resultado en mano, podemos cerrar el argumento.

---

## Slide S13 — Cierre argumental

### Que mostrar

- Tesis central: "La red neuronal artificial no es una descripcion del cerebro, sino una apuesta en un programa de investigacion."
- Arco de tres autores: Daugman / Hinton / Bechtel con sus tesis e implicaciones.
- Pregunta para la discusion.
- Badges modales: ◇ (posible), □ (necesario), O (brecha epistemica persistente).

### Que decir

Para terminar, quiero dejar clara la tesis que ha organizado toda la presentacion.

La red neuronal artificial no es una descripcion del cerebro. Es una apuesta en un programa de investigacion. Su valor explicativo, no solo instrumental, depende de si ese programa genera predicciones nuevas y corroborables sobre como funciona la cognicion real.

Fijense en el arco de los tres autores.

Daugman nos dice que la computacion es el lenguaje tecnologico de nuestra epoca. Eso es algo necesario tener en cuenta: no porque invalide a Hinton, sino porque nos previene de confundir el lenguaje con la realidad que describe.

Hinton nos dice que el aprendizaje distribuido puede modelar cognicion. Lo que vimos hoy lo confirma como herramienta. Si ademas explica el cerebro, es una posibilidad abierta, no una certeza. El simbolo ◇ que ven en pantalla expresa exactamente eso: posible, pero no necesario.

Bechtel nos deja con la pregunta que ninguno de los dos puede responder solo: que condiciones hacen que algo sea una representacion mental en sentido real? Esa pregunta sigue abierta.

La pregunta que dejo para la discusion es esta: cuando un modelo computacional cuenta como explicacion neurocientifica, y no solo como prediccion o herramienta?

Eso es lo que hace que el texto de Hinton siga siendo filosoficamente relevante en 2024, no solo historicamente interesante.

### Cierre final breve

En una frase:

**Hinton no demuestra que el cerebro sea una computadora; muestra por que pensar el aprendizaje como representacion distribuida se volvio una hipotesis imposible de ignorar.**

---

## Version final del cierre oral

Para terminar, yo diria esto casi literal:

> En conclusion, el texto de Hinton es importante porque no solo presenta una tecnica de aprendizaje, sino una forma de pensar la cognicion. Su propuesta es que una red puede aprender ajustando conexiones y formando representaciones internas distribuidas. Eso cambio profundamente la inteligencia artificial y tambien cambio la filosofia de la mente y de las neurociencias. Sin embargo, el propio Hinton reconoce limites importantes, sobre todo en la plausibilidad biologica de la retropropagacion. Por eso su texto sigue siendo valioso no como verdad definitiva, sino como una apuesta de investigacion muy potente: una apuesta que todavia hoy organiza muchas de nuestras preguntas sobre mente, cerebro y aprendizaje.

---

## Preguntas posibles del profesor y respuestas breves

### Si te preguntan: "Entonces Hinton tiene razon o no?"

Yo responderia:

No del todo en sentido descriptivo fuerte. Tiene razon en que el aprendizaje distribuido es una idea muy potente y fecunda. Pero sigue abierta la pregunta de si sus modelos describen realmente como aprende el cerebro biologico.

### Si te preguntan: "Cual es el limite mas importante?"

Yo responderia:

La implausibilidad biologica de la retropropagacion. Es el punto mas fuerte, porque separa el exito computacional del valor explicativo neurocientifico.

### Si te preguntan: "Cual es el aporte filosofico principal?"

Yo responderia:

Que desplaza la idea de cognicion desde reglas simbolicas explicitas hacia representaciones distribuidas aprendidas, y eso cambia como pensamos explicacion, representacion y aprendizaje.

### Si te preguntan: "Por que lo conectas con filosofia de las neurociencias?"

Yo responderia:

Porque no es solo un texto tecnico de IA. El texto implica una imagen del cerebro, del aprendizaje y de la representacion. Y esas son justamente preguntas filosoficas centrales en neurociencia.

### Si te preguntan: "Que diferencia hay entre convergencia funcional y convergencia mecanistica?"

Yo responderia:

La convergencia funcional significa que la red y el cerebro producen representaciones similares para la misma tarea. La convergencia mecanistica significaria que ambos aprenden de la misma manera. Andersen y Zipser probaron la primera. La segunda no esta demostrada, porque la retropropagacion no es biologicamente plausible.

### Si te preguntan: "Que es el aprendizaje hebbiano?"

Yo responderia:

Es una regla de aprendizaje local: dos neuronas que se activan juntas fortalecen su conexion. Es mas biologicamente plausible que la retropropagacion porque no requiere una senal de error global. Hinton lo menciona como alternativa, aunque es menos potente computacionalmente.

---

## Recorte de emergencia si tienes poco tiempo

Si la presentacion se te esta alargando, recorta asi:

1. S00: saltar directamente, no decir nada.
2. S02: 30 segundos, mencionar solo la comparativa cerebro vs red.
3. S09: 45 segundos, solo PCA.
4. S12b: 30 segundos, mencionar Andersen-Zipser en una frase y pasar.

Y concentra mas tiempo en:

1. S01 — Apertura
2. S03 — Neurona artificial
3. S05 — Entrenamiento
4. S06 — Retropropagacion
5. S07 — Alcances + critica
6. S08 — Limites
7. S11 — Codigos demograficos
8. S13 — Cierre argumental

---

## Timing completo — 23.5 minutos

| Slide | Titulo | Tiempo |
|---|---|---|
| S00 | Intro / QR | 0 min (ambiente) |
| S01 | Apertura filosofica | 1 min |
| S02 | La neurona real | 1.5 min |
| S03 | La neurona artificial | 1.5 min |
| S04 | Arquitectura de tres capas | 2 min |
| S05 | Entrenamiento: 4 pasos | 2 min |
| S06 | Retropropagacion | 2 min |
| S07 | Alcances + critica | 1.5 min |
| S08 | Limites | 1 min |
| S09 | No supervisado | 3 min |
| S10 | Repr. distribuidas + recurrentes | 1 min |
| S11 | Codigos demograficos | 1.5 min |
| S12 | De 1992 a hoy | 2 min |
| S12b | Convergencia empirica | 1.5 min |
| S13 | Cierre argumental | 2 min |
| **Total** | | **~23.5 min** |

---

## Ultimo consejo

No intentes demostrar que sabes mas que Hinton, ni mas que el profesor. Te conviene mas esta posicion:

**"Entendi cual es la apuesta de Hinton, por que fue influyente, y donde estan sus limites."**

Con eso ya tienes una presentacion fuerte, clara y filosoficamente solida.
