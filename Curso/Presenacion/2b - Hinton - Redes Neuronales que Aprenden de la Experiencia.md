# 2b - Hinton - Redes Neuronales que Aprenden de la Experiencia

**Autor:** Geoffrey E. Hinton  
**Fuente original:** *Investigacion y Ciencia*, noviembre de 1992  
**Original en ingles:** *Scientific American*, septiembre de 1992  
**Nota editorial:** version integral formateada a partir del PDF en espanol, cotejada con el PDF en ingles. Se conservaron el desarrollo argumental, el recuadro tecnico, los ejemplos y las figuras del articulo; se corrigieron errores de OCR, cortes de linea y puntuacion.

## Introduccion

El cerebro constituye una computadora muy notable. Es capaz de interpretar informacion imprecisa suministrada por los sentidos a una velocidad extraordinaria. Puede discernir un susurro en una sala ruidosa, reconocer un rostro en una calle mal iluminada y leer entre lineas en una declaracion politica. Lo mas impresionante de todo es que el cerebro aprende, sin instrucciones explicitas de ninguna clase, a crear las representaciones internas que hacen posibles esas habilidades.

Todavia se ignora mucho acerca de la forma en que el cerebro aprende por si mismo a procesar informacion, de modo que las teorias abundan. Para contrastar esas hipotesis, Hinton y sus colegas intentaron mimetizar los procesos cerebrales de aprendizaje mediante la construccion de redes de neuronas artificiales. El procedimiento general consiste, primero, en identificar los rasgos que parecen esenciales en las neuronas y en sus interconexiones y, despues, en preparar un programa de ordenador que simule esos rasgos.

Como el conocimiento de las neuronas es incompleto y la capacidad de computo es limitada, los modelos resultan necesariamente idealizaciones burdas de las autenticas redes neuronales. Aun asi, son utiles. Permiten descartar teorias poco plausibles sobre el procesamiento cerebral de la informacion y empiezan a revelar de que manera podria el cerebro alcanzar sus notables capacidades de autoaprendizaje.

## Neuronas biologicas y neuronas artificiales

Una neurona tipica del cerebro humano recoge senales procedentes de otras a traves de una multitud de estructuras delicadas llamadas dendritas. La neurona envia impulsos de actividad electrica a lo largo de una fibra larga y delgada, el axon, que a su vez se divide en millares de ramificaciones. En el extremo de cada rama, una estructura llamada sinapsis convierte la actividad procedente del axon en efectos electricos que inhiben o excitan la actividad de las neuronas conectadas.

Cuando las senales excitadoras que recibe una neurona alcanzan suficiente intensidad en comparacion con las senales inhibidoras, la neurona envia a lo largo de su axon un breve impulso de actividad electrica. El aprendizaje se produce cuando cambia la eficacia de las sinapsis, de modo que la influencia de una neurona sobre otra se modifica.

Las redes de neuronas artificiales se componen, tipicamente, de unidades interconectadas que cumplen el papel de neuronas idealizadas. La funcion de la sinapsis se modeliza atribuyendo a cada conexion un peso modificable. Casi ninguna red artificial intenta reflejar en detalle la geometria de axones y dendritas; en su lugar, la senal electrica de salida de una neurona se representa mediante un solo numero, que expresa su frecuencia de disparo o nivel de actividad.

Cada unidad convierte la pauta de actividades que recibe en una unica actividad de salida, difundida luego a otras unidades. Esta conversion ocurre en dos etapas:

1. Cada actividad entrante se multiplica por un coeficiente de ponderacion, o peso, asociado a la conexion.
2. Todos esos productos se suman para obtener la llamada entrada total.
3. La unidad aplica despues una funcion de transferencia entrada-salida que transforma la entrada total en actividad de salida.

El comportamiento de una red neuronal artificial depende tanto de los pesos de conexion como de la funcion de transferencia especificada para las unidades. Esa funcion suele pertenecer a una de tres categorias:

- lineal;
- de umbral;
- sigmoide.

En las unidades lineales, la actividad de salida es proporcional a la entrada ponderada total. En las unidades de umbral, la salida queda fijada en uno de dos niveles segun que la entrada total supere o no cierto valor critico. En las unidades sigmoides, la salida varia de forma continua con la entrada, pero esa dependencia no es lineal. Las unidades sigmoides guardan mayor semejanza con las neuronas reales que las lineales o las de umbral, aunque las tres siguen siendo aproximaciones muy toscas.

### Figura 1. La neurona idealizada

La figura del articulo muestra de manera esquematica el procedimiento anterior: cada actividad aferente se multiplica por un peso, la unidad suma esas entradas ponderadas y, finalmente, computa la actividad eferente mediante una funcion de transferencia.

## Redes de tres capas

Para construir una red neuronal capaz de realizar una tarea especifica hay que decidir como estaran conectadas unas unidades con otras y que pesos tendran esas conexiones. Las conexiones determinan si una unidad puede influir sobre otra; los pesos indican la intensidad de esa influencia.

El tipo mas comun de red neuronal artificial descrito en el articulo organiza sus elementos en tres niveles o capas:

1. una capa de unidades de entrada;
2. una capa de unidades ocultas;
3. una capa de unidades de salida.

La actividad de las unidades de entrada representa la informacion bruta suministrada a la red. La actividad de cada unidad oculta depende de las actividades de las unidades de entrada y de los pesos en las conexiones entre ambas capas. Analogamente, la actividad de las unidades de salida depende de la actividad de las unidades ocultas y de los pesos que median entre la capa oculta y la capa de salida.

Este tipo de red resulta especialmente interesante porque las unidades ocultas tienen libertad para construir sus propias representaciones de la entrada. Los pesos entre las unidades de entrada y las unidades ocultas determinan cuando estara activa cada unidad oculta; por tanto, al modificarse esos pesos, una unidad oculta puede acabar representando un rasgo distinto del patron de entrada.

### Figura 2. Red neuronal trietapica

El articulo incluye una figura con una red de tres capas totalmente conectadas. La actividad pasa de las unidades de entrada a las ocultas y, de estas, a las de salida. Los distintos colores de las conexiones representan pesos diferentes.

## Entrenamiento de una red

Podemos ensenar a una red de tres capas a realizar una tarea concreta mediante un procedimiento general de entrenamiento. Primero se le presentan ejemplos compuestos por:

- un patron de actividades en las unidades de entrada;
- el patron correspondiente que deseamos obtener en las unidades de salida.

Despues se mide hasta que punto el egreso real de la red concuerda con la salida deseada. Finalmente, se modifican los pesos de cada conexion con el fin de que la red produzca una mejor aproximacion de la salida buscada.

Hinton ilustra el procedimiento con el reconocimiento de digitos manuscritos. Podriamos utilizar, por ejemplo, una matriz de 256 sensores, cada uno encargado de registrar la presencia o ausencia de tinta en una pequena region de una imagen que contiene un solo digito. La red necesitara entonces:

- 256 unidades de entrada, una por sensor;
- 10 unidades de salida, una por cada digito;
- cierto numero de unidades ocultas.

Para cada tipo de digito registrado por los sensores, la red deberia producir una actividad alta en la unidad de salida correspondiente y una actividad baja en las restantes.

El entrenamiento consiste en presentar a la red una imagen de un digito y comparar la actividad real de las diez unidades de salida con la actividad deseada. A continuacion se calcula el error, definido como la suma de los cuadrados de las discrepancias entre las actividades reales y las deseadas, y se cambian los pesos de las conexiones con objeto de reducir ese error. Repitiendo este procedimiento para muchas imagenes distintas de cada digito, la red puede llegar a clasificar correctamente cada una de ellas.

Para poner en practica ese procedimiento, la magnitud del cambio de cada peso deberia ser proporcional a la tasa de variacion del error con respecto a la variacion de ese peso. Esa cantidad se denomina derivada del error respecto al peso, o simplemente `EP`. El problema es que calcular ese valor de manera eficiente no resulta trivial.

Una posibilidad seria perturbar levemente un peso y observar como cambia el error. Pero ese metodo es muy ineficiente, porque exige una perturbacion individual para cada uno de los numerosos pesos de la red.

### Figura 3. Representacion de digitos manuscritos en una red

El articulo muestra una red neuronal compuesta por 256 unidades de entrada, 9 unidades ocultas y 10 unidades de salida, entrenada para reconocer digitos manuscritos. Cuando se le presenta un `3`, la tercera unidad de salida es la mas activa. Los paneles asociados a las unidades ocultas representan sus pesos aferentes y eferentes: unas regiones son excitadoras y otras inhibitorias.

## El algoritmo de retropropagacion

Hacia 1974, Paul J. Werbos, mientras realizaba su doctorado en Harvard, invento un procedimiento mucho mas eficiente para calcular la derivada del error respecto a cada peso. Ese procedimiento, hoy conocido como algoritmo de retropropagacion, se convirtio en una de las herramientas principales para el entrenamiento de redes neuronales.

El algoritmo se entiende con mayor facilidad si todas las unidades de la red son lineales. La idea central consiste en computar cada `EP` hallando primero el `EA`, el error de actividad, es decir, la tasa con la que cambia el error cuando cambia el nivel de actividad de una unidad.

Para las unidades de salida, el `EA` es simplemente la diferencia entre la salida deseada y la salida real. Para calcular el `EA` de una unidad oculta en la capa inmediatamente anterior a la de salida, se identifican todos los pesos entre esa unidad oculta y las unidades de salida con las que esta conectada. Luego se multiplican esos pesos por los errores de actividad de las unidades de salida y se suman los productos. Esa suma equivale al `EA` de la unidad oculta escogida.

Una vez calculados todos los `EA` de la capa oculta situada justo antes de la salida, el mismo procedimiento puede repetirse para capas anteriores, avanzando en sentido opuesto al flujo normal de actividad. De ahi procede el nombre de retropropagacion.

Cuando ya se conoce el `EA` de una unidad, el calculo del `EP` para cada conexion entrante resulta directo: el `EP` es el producto del `EA` por la actividad que circula a traves de esa conexion.

En el caso de unidades no lineales, como las sigmoides, el algoritmo requiere un paso adicional. Antes de retropropagar el error hay que convertir el `EA` en `EI`, el error de ingreso, esto es, la tasa con la que cambia el error cuando varia la entrada total recibida por una unidad.

El algoritmo de retropropagacion permanecio bastante ignorado durante anos, probablemente porque no se aprecio de inmediato su utilidad. A comienzos de los anos ochenta, David E. Rumelhart y David B. Parker lo redescubrieron de manera independiente. En 1986, Rumelhart, Ronald J. Williams y Hinton contribuyeron decisivamente a popularizarlo al mostrar que podia ensenar a las unidades ocultas a construir representaciones interesantes de patrones de entrada complejos.

## Recuadro tecnico: el algoritmo de retropropagacion

Para entrenar una red neuronal de manera que reduzca el error entre la salida deseada y la salida obtenida, hace falta calcular la derivada del error respecto a los pesos (`EP`). El metodo mas utilizado para ello es la retropropagacion.

Supongamos que la unidad `j` pertenece a la capa de salida y la unidad `i` pertenece a la capa anterior. La unidad `j` determina su actividad en dos pasos.

Primero calcula la entrada total ponderada:

```text
x_j = Σ_i y_i w_ij
```

donde `y_i` es la actividad de la unidad `i` y `w_ij` es el peso de la conexion entre la unidad `i` y la unidad `j`.

Despues calcula la actividad `y_j` aplicando una funcion al ingreso total. En el articulo se utiliza la funcion sigmoide:

```text
y_j = 1 / (1 + e^(-x_j))
```

Una vez determinadas las actividades de todas las unidades de salida, la red calcula el error cuadratico:

```text
E = 1/2 Σ_j (y_j - d_j)^2
```

donde `d_j` es la salida deseada de la unidad `j`.

El algoritmo de retropropagacion consta de cuatro pasos:

1. Calcular la rapidez de variacion del error al cambiar la actividad de una unidad de salida:

```text
EA_j = ∂E/∂y_j = y_j - d_j
```

2. Calcular la rapidez de variacion del error al cambiar la entrada total recibida por una unidad de salida:

```text
EI_j = ∂E/∂x_j = EA_j y_j (1 - y_j)
```

3. Calcular la rapidez de variacion del error al modificar un peso de una conexion entrante a una unidad de salida:

```text
EP_ij = ∂E/∂w_ij = EI_j y_i
```

4. Calcular la rapidez de variacion del error al cambiar la actividad de una unidad de la capa anterior:

```text
EA_i = Σ_j EI_j w_ij
```

Gracias a los pasos 2 y 4 es posible convertir los errores de actividad de una capa en errores de actividad de la capa precedente. Repitiendo el procedimiento se obtienen los `EA` de tantas capas como sea necesario. Una vez conocido el `EA` de una unidad, los pasos 2 y 3 permiten calcular los `EP` de todas sus conexiones aferentes.

## Lo que hizo posible la retropropagacion

La retropropagacion demostro ser sorprendentemente eficaz para entrenar redes multicapa y lograr que desempenaran tareas muy distintas. Su utilidad es maxima cuando la relacion entre entrada y salida es no lineal y existe abundancia de datos de entrenamiento.

Con ayuda de este algoritmo se obtuvieron redes neuronales que:

- reconocian digitos manuscritos;
- predecian tasas de cambio de divisas;
- optimizaban procesos quimicos;
- identificaban celulas precancerosas en frotis de Papanicolaou;
- ajustaban el espejo de un telescopio para compensar distorsiones atmosfericas.

Dentro de la neurociencia, Richard Andersen y David Zipser mostraron que la retropropagacion podia ser tambien una herramienta util para explicar la funcion de ciertas neuronas corticales. Entrenaron una red para responder a estimulos visuales y encontraron que las respuestas de las unidades ocultas se parecian notablemente a las de neuronas reales encargadas de transformar la informacion visual procedente de la retina en una forma adecuada para areas visuales mas profundas del cerebro.

## Alcances y limites de la retropropagacion como teoria biologica

Como teoria del aprendizaje real en neuronas biologicas, la retropropagacion recibio una acogida ambivalente.

Por un lado, el algoritmo hizo una contribucion valiosa en un nivel abstracto. Resulto especialmente bueno para crear representaciones sensatas en las unidades ocultas. Eso dio confianza a muchos investigadores en procedimientos de aprendizaje donde los pesos se ajustan gradualmente para reducir errores.

Antes de ello, muchos pensaban que esos metodos estaban condenados al fracaso porque caerian inevitablemente en soluciones localmente optimas pero globalmente malas. Una red de reconocimiento de digitos, por ejemplo, podria converger sistematicamente a un conjunto de pesos que confundiera unos y sietes, aunque existiera otro conjunto ideal capaz de diferenciarlos correctamente. Ese temor sostenia la creencia general de que un procedimiento de aprendizaje solo valia la pena si se podia garantizar su convergencia hacia la solucion global optima. La retropropagacion mostro que, para muchas tareas, no era necesario asegurar esa convergencia global para alcanzar un buen rendimiento.

Por otro lado, la retropropagacion parece biologicamente poco plausible. La dificultad mas evidente es que la informacion debe viajar hacia atras a traves de las mismas conexiones, desde una capa posterior a una anterior. Eso no ocurre literalmente en neuronas reales. Sin embargo, Hinton considera que esta objecion es menos decisiva de lo que parece, porque el cerebro posee abundantes vias de retroalimentacion que podrian usarse, de una u otra forma, para transmitir la informacion necesaria para el aprendizaje.

Un problema mas importante es la velocidad del algoritmo. El tiempo requerido para calcular, en un ejemplo de entrenamiento dado, las derivadas del error respecto a los pesos es proporcional al tamano de la red, ya que la cantidad de computacion depende del numero de pesos. Pero las redes mas grandes suelen requerir tambien mas ejemplos de entrenamiento y mas actualizaciones de pesos. Por eso el tiempo de aprendizaje crece mucho mas deprisa que el tamano de la red.

La objecion mas seria es que la retropropagacion requiere un maestro que proporcione la salida deseada para cada ejemplo de entrenamiento. Las personas, en cambio, aprenden la mayor parte de lo que saben sin la ayuda de un instructor que les diga cuales deben ser sus representaciones internas del mundo. Aprendemos a comprender frases o escenas visuales sin instrucciones directas.

## Aprendizaje no supervisado

Esto conduce a la gran pregunta de la segunda mitad del articulo: si una red empieza sin conocimientos previos y sin maestro, como puede adquirir representaciones internas adecuadas del mundo.

Si a una red se le presenta una gran coleccion de patrones sin indicarle que debe hacer con ellos, parece que no tiene un problema bien definido que resolver. A pesar de eso, los investigadores han desarrollado varios procedimientos generales, no supervisados, que pueden ajustar apropiadamente los pesos de la red.

Todos esos procedimientos comparten dos caracteristicas:

1. apelan, de manera implicita o explicita, a alguna nocion de la calidad de una representacion;
2. modifican los pesos para mejorar la calidad de la representacion extraida por las unidades ocultas.

En general, una buena representacion es aquella que puede describirse de manera muy economica y que, sin embargo, conserva suficiente informacion como para reconstruir con buena aproximacion la entrada original.

Hinton propone pensar este punto con una imagen compuesta por varias elipses. Supongamos que un dispositivo la traduce a una matriz de un millon de pequenos cuadrados, cada uno claro u oscuro. La imagen podria describirse simplemente enumerando la posicion de todos los cuadrados oscuros. Pero hay una representacion mas eficiente: las elipses solo difieren en cinco aspectos, a saber:

- orientacion;
- posicion vertical;
- posicion horizontal;
- longitud;
- anchura.

Por consiguiente, la imagen puede describirse usando solo cinco parametros por elipse. Aunque describir una elipse mediante cinco parametros requiere mas bits que describir un solo cuadrado oscuro mediante dos coordenadas, el ahorro total es mucho mayor porque se necesitan muchisimos menos parametros que pares de coordenadas. Y, ademas, no se pierde informacion: con esos parametros podriamos reconstruir la imagen original.

### Figura 4. Dos caras compuestas por elipses

El articulo ilustra esta idea mostrando dos caras compuestas por ocho elipses. Cada cara puede representarse como un conjunto de puntos en dos dimensiones o, de manera mas economica, como ocho puntos en un espacio de cinco dimensiones definido por los parametros de las elipses.

## Costo de codificacion y costo de reconstruccion

Casi todos los procedimientos de aprendizaje no supervisado pueden verse como metodos para minimizar la suma de dos terminos:

1. un costo de codificacion;
2. un costo de reconstruccion.

El costo de codificacion es el numero de bits necesarios para describir las actividades de las unidades ocultas. El costo de reconstruccion es el numero de bits requerido para describir el desajuste entre la entrada original y la mejor aproximacion a esa entrada que puede reconstruirse a partir de las actividades ocultas. En el articulo, ese costo de reconstruccion es proporcional al cuadrado de la diferencia entre la entrada y su reconstruccion.

Dos metodos sencillos para descubrir codigos economicos que permiten una reconstruccion bastante exacta de la entrada son:

- el aprendizaje de componentes principales;
- el aprendizaje competitivo.

En ambos casos, primero se decide cuan economico debe ser el codigo y despues se modifican los pesos de la red para reducir el error de reconstruccion.

## Aprendizaje por componentes principales

La estrategia de componentes principales parte de la idea de que, si las actividades de varias unidades de entrada guardan correlaciones entre si, describir cada actividad por separado es un desperdicio de bits. Una estrategia mejor consiste en extraer y describir las componentes principales, es decir, los modos de variacion compartidos por muchas unidades de entrada.

Si, por ejemplo, queremos descubrir diez componentes principales, bastaria con una sola capa de diez unidades ocultas. Como la red representa la entrada con un numero pequeno de componentes, el costo de codificacion es bajo. Y como la entrada puede reconstruirse con bastante precision a partir de esas componentes, el costo de reconstruccion tambien es pequeno.

Una forma de entrenar una red de este tipo consiste en forzarla a reconstruir una aproximacion de la entrada en un conjunto de unidades de salida. Despues puede utilizarse retropropagacion para minimizar la diferencia entre la salida real y la deseada. Esto se parece al aprendizaje supervisado, pero como la salida deseada es exactamente la misma entrada, no hace falta un maestro externo.

Varios investigadores, entre ellos Ralph Linsker y Erkki Oja, encontraron algoritmos alternativos para el aprendizaje de componentes principales. Esos algoritmos resultan biologicamente mas plausibles porque no requieren unidades de salida ni retropropagacion; en cambio, utilizan la correlacion entre la actividad de una unidad oculta y la actividad de una unidad de entrada para determinar el cambio de peso correspondiente.

## Aprendizaje competitivo

En el aprendizaje por componentes principales, un pequeno numero de unidades ocultas coopera para representar el patron de entrada. En el aprendizaje competitivo ocurre lo contrario: un gran numero de unidades ocultas compite, de manera que una sola unidad oculta representa cada patron particular de entrada.

La unidad seleccionada es aquella cuyos pesos entrantes se parecen mas al patron de entrada actual. Si despues hubiera que reconstruir el patron conociendo solo cual fue la unidad oculta ganadora, la mejor apuesta seria copiar la distribucion de pesos de esa unidad. Por eso, para reducir el error de reconstruccion, conviene mover el patron de pesos de la unidad ganadora un poco mas cerca del patron de entrada. Eso es exactamente lo que hace el aprendizaje competitivo.

Si la red recibe datos de entrenamiento que pueden agruparse en racimos o clases de patrones similares, cada unidad oculta acaba aprendiendo a representar un racimo distinto, y sus pesos incidentes convergen hacia el centro de ese racimo.

Al igual que el algoritmo de componentes principales, el aprendizaje competitivo minimiza el costo de reconstruccion manteniendo bajo el costo de codificacion. Puede permitirse incluso un gran numero de unidades ocultas, porque aun con un millon de unidades bastan unos pocos bits para especificar cual ha sido la ganadora.

### Figura 5. Aprendizaje competitivo

La figura correspondiente puede interpretarse como un proceso en el que cada patron de entrada atrae la distribucion de pesos de la unidad oculta mas cercana. Con el tiempo, cada unidad oculta migra hacia un conjunto de patrones parecidos y aprende a representar ese grupo.

## Mapas de Kohonen y representaciones intermedias

A comienzos de la decada de 1980, Teuvo Kohonen introdujo una modificacion importante del aprendizaje competitivo. Mostro como hacer que unidades fisicamente adyacentes aprendieran a representar patrones de entrada similares. En su algoritmo no solo se adaptan los pesos de la unidad ganadora, sino tambien los de sus vecinas. Ese rasgo produce mapas topograficos y sugiere una posible conexion con los mapas espaciales observados en la corteza visual.

Los algoritmos de aprendizaje no supervisado pueden clasificarse segun el tipo de representacion que crean. En los metodos de componentes principales, las unidades ocultas cooperan y la representacion de cada patron se distribuye por todas ellas. En los metodos competitivos, las unidades ocultas compiten y la representacion queda localizada en una sola unidad.

Sin embargo, Hinton insiste en que los algoritmos mas interesantes probablemente se encuentren entre esos dos extremos:

- ni completamente distribuidos;
- ni completamente localistas.

Horace B. Barlow propuso un modelo intermedio en el que cada unidad oculta se activa solo muy raramente y la representacion de cada patron de entrada se distribuye sobre un pequeno numero de unidades seleccionadas. El mismo Barlow y sus colaboradores mostraron que este tipo de codigo puede aprenderse obligando a las unidades ocultas a permanecer incorrelacionadas y garantizando al mismo tiempo que el codigo oculto permita una buena reconstruccion de la entrada.

## Codigos demograficos o codigos poblacionales

La mayoria de los metodos corrientes para minimizar el costo de codificacion tiende a eliminar toda redundancia entre las actividades de las unidades ocultas. Eso vuelve a la red muy sensible al mal funcionamiento de una sola unidad. Esa fragilidad no es tipica del cerebro, que por lo general no se ve demasiado afectado por la perdida de unas pocas neuronas.

El cerebro parece utilizar lo que Hinton llama codigos demograficos, o codigos poblacionales, en los cuales la informacion esta representada por toda una poblacion de neuronas activas.

David L. Sparks y sus colaboradores mostraron este punto con gran claridad al estudiar como el cerebro de un mono indica a los ojos hacia donde moverse. Encontraron que el movimiento requerido no esta codificado por una sola celula, sino por las actividades de toda una poblacion de celulas, cada una de las cuales representa un movimiento ligeramente distinto. El movimiento finalmente realizado corresponde al promedio de los movimientos codificados por las celulas activas. Si algunas celulas son anestesiadas, el ojo se mueve hacia el punto asociado al promedio de las celulas que siguen activas.

Los codigos poblacionales pueden servir no solo para movimientos oculares, sino tambien para representar rostros. Malcolm P. Young y Shigeru Yamane mostraron algo semejante en experimentos sobre la corteza temporal inferior de monos.

Tanto en los movimientos oculares como en los rostros, el cerebro debe representar entidades que varian a lo largo de muchas dimensiones. En un movimiento ocular hay solo dos dimensiones; en un rostro intervienen dimensiones como:

- felicidad;
- pilosidad;
- familiaridad;
- posicion;
- tamano;
- orientacion.

Si asociamos a cada celula sensible al rostro los parametros del rostro que la hacen maximamente activa, podemos promediar esos parametros sobre la poblacion de celulas activas y asi descubrir los parametros del rostro representado por ese codigo. En terminos abstractos, cada celula facial representa un punto particular en un espacio multidimensional de rostros posibles. Cualquier rostro puede entonces representarse activando todas las celulas que codifican rostros muy parecidos, de modo que aparece una prominencia o bulto de actividad en ese espacio de posibilidades.

La codificacion poblacional es atractiva porque sigue funcionando aun cuando algunas neuronas resulten lesionadas u omitidas. La perdida de un subconjunto aleatorio de neuronas apenas altera el promedio de la poblacion. Lo mismo vale cuando el sistema actua muy deprisa: como las neuronas se comunican mediante impulsos discretos, en un intervalo de tiempo muy corto algunas neuronas activas pueden no llegar a disparar, pero incluso asi un codigo poblacional en una region del cerebro puede seguir generando un codigo aproximadamente correcto en otra.

### Figura 6. Codificacion demografica

La figura representa un objeto multiparametrico como una prominencia de actividad extendida sobre muchas unidades ocultas. Cada disco corresponde a una unidad inactiva; cada cilindro, a una unidad activa, y su altura expresa el nivel de actividad.

## Redundancia util y costo de codificacion

A primera vista, la redundancia propia de los codigos poblacionales parece incompatible con la idea de minimizar el costo de codificacion. Hinton sostiene que este problema puede resolverse usando una medida menos ingenua de ese costo.

Si la actividad que codifica una entidad particular adopta la forma de una prominencia suave, cuya intensidad cae de manera estandar al alejarse del centro, entonces la prominencia entera puede describirse especificando solo su centro. Desde este punto de vista, una medida mas justa del costo de codificacion es:

- el costo de describir el centro de la prominencia;
- mas el costo de describir cuanto se apartan las actividades reales del perfil suave esperado.

Con esta redefinicion, los codigos poblacionales se convierten en una forma muy conveniente de extraer una jerarquia de codificaciones progresivamente mas eficientes de la entrada sensorial.

## Jerarquias de representacion y reconocimiento de rostros

Hinton ilustra esta idea con un ejemplo sencillo. Supongamos una red neuronal que recibe una imagen facial y que ya contiene:

- un conjunto de unidades dedicadas a representar narices;
- otro conjunto para las bocas;
- otro para los ojos.

Cuando se presenta un rostro concreto, aparecera una prominencia de actividad en las unidades nasales, otra en las bucales y dos en las unidades oculares. La posicion de cada una de esas prominencias representa los parametros espaciales del rasgo codificado. Describir esas cuatro prominencias ya es mas economico que describir la imagen bruta. Pero seria aun mas economico describir una sola prominencia de actividad en un conjunto de unidades faciales, siempre que nariz, boca y ojos esten correctamente relacionados entre si para formar un rostro.

## El problema de las relaciones espaciales

Esto lleva a una pregunta crucial: como puede la red comprobar que las partes se encuentran en la relacion adecuada para constituir un rostro.

Dana H. Ballard introdujo una tecnica ingeniosa para resolver problemas de este tipo usando codigos poblacionales. Si conocemos la posicion, el tamano y la orientacion de una nariz, podemos predecir la posicion, el tamano y la orientacion del rostro al que pertenece, porque la relacion espacial entre narices y rostros es bastante fija.

La idea es ajustar los pesos de la red de manera que una prominencia de actividad en las unidades nasales intente provocar una prominencia correlativa en las unidades faciales. Pero, al mismo tiempo, se fijan los umbrales de las unidades faciales de modo que la nariz por si sola no baste para activarlas. Si tambien la prominencia en las unidades bucales intenta producir una prominencia en el mismo lugar de las unidades faciales, entonces se supera el umbral. De este modo, la red verifica que boca y nariz estan correctamente relacionadas entre si comprobando que ambas predicen los mismos parametros espaciales para el rostro completo.

### Figura 7. Comprobacion espacial mediante prominencias de actividad

El articulo muestra dos casos. Cuando nariz y boca guardan la relacion correcta, las prominencias de actividad de sus respectivos conjuntos de unidades convergen sobre la misma localizacion en las unidades faciales y aparece una prominencia facial. Cuando la relacion espacial es incorrecta, cada conjunto de unidades intenta producir la prominencia en un lugar distinto y el umbral no llega a superarse.

## Aprendizaje jerarquico no supervisado

Este metodo de comprobacion de relaciones espaciales es especialmente atractivo porque explota justo el tipo de redundancia entre distintas partes de una imagen que el aprendizaje no supervisado deberia ser capaz de descubrir.

Por eso parece natural intentar usar aprendizaje no supervisado para descubrir codigos poblacionales jerarquicos que permitan extraer formas complejas. En 1986, Eric Saund mostro un procedimiento para aprender codigos poblacionales sencillos aplicados a formas. Hinton sostiene que, si se define con claridad el costo de codificacion, una red no supervisada deberia poder descubrir jerarquias mas complejas tratando de minimizar el costo de codificar la imagen.

## Redes profundas y redes recurrentes

La extraccion no supervisada de una jerarquia de representaciones progresivamente mas economicas podria mejorar mucho la velocidad de aprendizaje en redes grandes y multicapa. Cada capa adapta sus pesos entrantes para lograr una representacion mejor que la de la capa anterior. Eso significa que los pesos de una capa pueden aprenderse sin referencia continua a los pesos de capas posteriores, eliminando muchas de las interacciones entre pesos que vuelven muy lenta la retropropagacion en redes profundas.

Todos los procedimientos de aprendizaje discutidos hasta ese punto se implementan en redes donde la actividad fluye solo hacia adelante, desde la entrada hasta la salida, aunque las derivadas del error puedan fluir hacia atras. Pero existe otra posibilidad importante: las redes en las que la actividad circula por bucles cerrados.

Esas redes recurrentes pueden estabilizarse en estados fijos o exhibir dinamicas temporales complejas que sirvan para producir conductas secuenciales. Si se estabilizan en estados fijos, las derivadas del error pueden calcularse mediante metodos mucho mas sencillos que la retropropagacion.

## Conclusion

Aunque los investigadores ya habian desarrollado algoritmos de aprendizaje muy poderosos y de gran valor practico, en 1992 seguia sin saberse que representaciones y que procedimientos de aprendizaje utiliza realmente el cerebro.

La expectativa de Hinton es que, tarde o temprano, los estudios computacionales del aprendizaje en redes neuronales artificiales converjan con los metodos descubiertos por la evolucion en los cerebros biologicos. Cuando eso suceda, gran cantidad de datos empiricos dispersos sobre el cerebro empezaran a cobrar sentido de manera unificada y se volveran viables nuevas aplicaciones de las redes neuronales artificiales.

## Bibliografia complementaria

- David E. Rumelhart, Geoffrey E. Hinton y Ronald J. Williams, "Learning Representations by Back-Propagating Errors", *Nature*, vol. 323, no. 6188, 9 de octubre de 1986, pp. 533-536.
- Geoffrey E. Hinton, "Connectionist Learning Procedures", *Artificial Intelligence*, vol. 40, nos. 1-3, septiembre de 1989, pp. 185-234.
- J. Hertz, A. Krogh y R. G. Palmer, *Introduction to the Theory of Neural Computation*, Addison-Wesley, 1990.
- Patricia S. Churchland y Terrence J. Sejnowski, *The Computational Brain*, MIT Press / Bradford Books, 1992.

## Nota sobre el material visual

Las imagenes extraidas del PDF original siguen disponibles en:

- `Curso/Presenacion/2b_Hinton_Imagenes_PDF/`

Ese material es especialmente util para las diapositivas sobre:

- neurona idealizada;
- red de tres capas;
- reconocimiento de digitos manuscritos;
- caras construidas con elipses;
- aprendizaje competitivo;
- codificacion poblacional;
- comprobacion espacial de rasgos faciales.
