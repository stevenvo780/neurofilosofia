# 2b - Hinton - Redes Neuronales que Aprenden de la Experiencia

**Autor:** Geoffrey E. Hinton  
**Fuente original:** *Scientific American*, septiembre de 1992  
**Nota editorial:** esta version reorganiza y limpia el texto para lectura y estudio en Markdown. No es una traduccion oficial publicada, sino una version cuidada basada en la reconstruccion del articulo y en el OCR conservado en los materiales del curso.

## Introduccion

Las redes neuronales artificiales pueden aprender a representar informacion compleja. Al hacerlo, ofrecen una manera de pensar como podria el cerebro humano adquirir representaciones internas sin instruccion explicita.

El cerebro es una computadora extraordinaria. Puede interpretar entradas sensoriales ruidosas a una velocidad asombrosa: puede distinguir un susurro en una sala concurrida, reconocer un rostro con mala iluminacion e inferir significados no explicitos en el lenguaje. Lo mas impresionante es que aprende a construir las representaciones internas que hacen posibles esas capacidades.

Como todavia sabemos relativamente poco acerca de como se entrena el cerebro a si mismo, abundan las teorias del aprendizaje. Hinton presenta las redes neuronales artificiales como una forma de poner a prueba esas teorias. La idea no es reproducir el cerebro en todos sus detalles biologicos, sino identificar un conjunto limitado de rasgos relevantes e implementarlos en modelos computacionales. Estos modelos son idealizaciones burdas, pero resultan utiles porque permiten descartar hipotesis poco plausibles y explorar mecanismos que podrian estar en la base del aprendizaje.

## Neuronas biologicas y neuronas artificiales

Una neurona biologica recibe senales a traves de las dendritas, transmite actividad por medio de su axon y afecta a otras neuronas a traves de las sinapsis. El aprendizaje ocurre cuando cambia la eficacia sinaptica, modificando asi la influencia que una neurona ejerce sobre otra.

Las redes neuronales artificiales modelan este proceso de manera simplificada. Estan formadas por unidades interconectadas, cada una de las cuales recibe entradas desde otras unidades a traves de conexiones ponderadas. Una unidad transforma sus actividades de entrada en una sola actividad de salida en dos etapas:

1. Multiplica cada actividad entrante por el peso de esa conexion y suma los resultados.
2. Aplica a esa entrada total ponderada una funcion de entrada-salida.

El comportamiento de la red depende tanto de los pesos de conexion como del tipo de funcion de entrada-salida utilizada. Hinton distingue tres casos comunes:

- unidades lineales;
- unidades de umbral;
- unidades sigmoides.

Las unidades sigmoides siguen siendo aproximaciones muy rudimentarias de las neuronas reales, pero suelen ser mas utiles que las otras dos porque varian de forma continua en lugar de cambiar bruscamente.

## Redes de tres capas

La arquitectura de red neuronal mas comun analizada en el articulo tiene tres capas:

1. una capa de entrada;
2. una capa oculta;
3. una capa de salida.

Las unidades de entrada representan los datos brutos que se suministran a la red. La actividad de las unidades ocultas depende de las actividades de entrada y de los pesos que conectan la capa de entrada con la capa oculta. La actividad de las unidades de salida depende de las actividades ocultas y de los pesos que conectan la capa oculta con la capa de salida.

Las unidades ocultas son especialmente importantes porque pueden formar representaciones internas de la entrada. Al cambiar los pesos que llegan a la capa oculta, la red cambia efectivamente a que responde cada unidad oculta y, por tanto, que tipo de rasgo representa.

## Entrenamiento de una red

Para enseñar a una red una tarea especifica, se le presentan ejemplos de entrenamiento compuestos por:

- un patron de actividades en las unidades de entrada;
- un patron deseado de actividades en las unidades de salida.

La red produce una salida efectiva, y la diferencia entre la salida real y la salida deseada se trata como error. Luego se ajustan los pesos para reducir ese error.

Hinton ilustra esto con el reconocimiento de digitos escritos a mano. Una cuadricula de sensores puede codificar si hay o no tinta en cada pequena region de una imagen. La red intenta entonces activar la unidad de salida correcta para cada digito mientras mantiene relativamente inactivas las demas.

El problema central consiste en determinar cuanto debe cambiar cada peso. Ese cambio debe ser proporcional a cuanto cambiaria el error total si ese peso se perturbara ligeramente. Esa cantidad es la derivada del error con respecto al peso.

## Retropropagacion

Calcular las derivadas del error modificando cada peso por separado seria enormemente ineficiente. Por eso el articulo introduce el algoritmo de retropropagacion, propuesto originalmente por Paul Werbos y mas tarde popularizado por Rumelhart, Hinton y Williams.

La retropropagacion funciona calculando primero como cambia el error cuando cambia la actividad de cada unidad. En las unidades de salida, esto depende directamente de la diferencia entre la salida real y la salida deseada. En las unidades ocultas, la senal de error se calcula a partir de los errores de las unidades de la capa siguiente y de los pesos que las conectan.

Como esas senales de error se calculan desde las capas posteriores hacia las anteriores, el proceso avanza en direccion contraria al flujo normal de actividad hacia adelante. Una vez calculado el error asociado a una unidad, la correccion de cada peso entrante puede derivarse de manera relativamente directa.

En el caso de unidades no lineales, como las sigmoides, hace falta un paso adicional: el error con respecto a la actividad de una unidad debe convertirse en error con respecto a su entrada total.

## El algoritmo de retropropagacion en forma compacta

Para una unidad de salida sigmoide `j`, que recibe entradas desde unidades `i` de la capa anterior:

```text
x_j = Σ_i y_i w_ij
y_j = 1 / (1 + e^(-x_j))
E = 1/2 Σ_j (y_j - d_j)^2
```

Donde:

- `x_j` es la entrada total ponderada de la unidad `j`;
- `y_j` es la actividad de la unidad `j`;
- `w_ij` es el peso que va de la unidad `i` a la unidad `j`;
- `d_j` es la actividad deseada para la unidad de salida `j`;
- `E` es el error total de salida.

Los cuatro pasos centrales son:

1. Calcular la derivada del error con respecto a la actividad de salida:

```text
EA_j = ∂E/∂y_j = y_j - d_j
```

2. Convertirla en la derivada del error con respecto a la entrada total:

```text
EI_j = ∂E/∂x_j = EA_j y_j (1 - y_j)
```

3. Calcular la derivada del error para cada peso entrante:

```text
EW_ij = ∂E/∂w_ij = EI_j y_i
```

4. Propagar el error hacia la capa anterior:

```text
EA_i = Σ_j EI_j w_ij
```

Estos pasos pueden repetirse capa por capa a traves de toda la red.

## Lo que hizo posible la retropropagacion

La retropropagacion volvio practicable el entrenamiento de redes multicapa para tareas utiles. Hinton menciona sistemas que fueron entrenados para:

- reconocer digitos escritos a mano;
- predecir cambios en tasas de cambio;
- optimizar procesos quimicos;
- identificar celulas precancerosas en citologias de Papanicolaou;
- ajustar espejos de telescopios para compensar la distorsion atmosferica.

El metodo tambien tuvo importancia para la neurociencia. Hinton menciona trabajos de Richard Andersen y David Zipser que mostraban que una red entrenada con retropropagacion podia desarrollar unidades ocultas cuyas propiedades de respuesta se parecian a las de neuronas de la corteza visual.

## Limites de la retropropagacion como modelo biologico

En este punto el articulo pasa del valor ingenieril a la plausibilidad biologica.

Una objecion es que parece biologicamente irrealista suponer que informacion de error precisa se envie hacia atras a traves de las mismas conexiones. Hinton sostiene que esta objecion podria no ser tan decisiva como parece, porque el cerebro contiene abundantes vias de retroalimentacion.

Un problema mas serio es la velocidad. A medida que las redes crecen, aumenta el numero de pesos y tambien la cantidad de computacion necesaria para actualizarlos. Las redes mas grandes suelen requerir mas ejemplos de entrenamiento y mas actualizaciones de pesos, de modo que el tiempo de aprendizaje crece rapidamente.

La objecion mas profunda es que la retropropagacion requiere un maestro que proporcione la salida correcta para cada ejemplo. Los seres humanos, en cambio, aprenden muchas de sus representaciones internas mas importantes sin supervision explicita.

## Aprendizaje no supervisado

Esto conduce a la pregunta central de la segunda mitad del articulo: como puede una red aprender representaciones internas utiles cuando no tiene maestro y no sabe de antemano que deberian representar sus unidades ocultas.

Hinton describe varios procedimientos de aprendizaje no supervisado. Difieren en sus detalles, pero comparten dos rasgos generales:

1. Se apoyan en alguna nocion de lo que cuenta como una buena representacion.
2. Modifican los pesos para mejorar la calidad de la representacion extraida por las unidades ocultas.

En general, una buena representacion debe cumplir dos condiciones:

- debe ser economica de describir;
- debe preservar suficiente informacion como para permitir una reconstruccion aproximada de la entrada.

## Costo de codificacion y costo de reconstruccion

Hinton formula muchos metodos no supervisados en terminos de un equilibrio entre dos cantidades:

1. **Costo de codificacion:** cuanta informacion se necesita para describir las actividades de las unidades ocultas.
2. **Costo de reconstruccion:** cuanta informacion se necesita para describir la diferencia entre la entrada original y la mejor reconstruccion que puede generarse a partir de las actividades ocultas.

Una buena representacion equilibra esos dos costos.

Para ilustrar la idea, Hinton pide imaginar una imagen compuesta por varias elipses. Una posibilidad seria describirla listando los valores claros y oscuros de cada pixel, pero una descripcion mucho mas eficiente podria especificar solo unos cuantos parametros por elipse, como posicion, orientacion, longitud y anchura. En ese caso, la representacion es mucho mas compacta sin dejar de conservar lo que importa para reconstruir la imagen.

## Componentes principales

Una forma simple de aprendizaje no supervisado es el aprendizaje por componentes principales. Si varias dimensiones de la entrada varian juntas, puede ser ineficiente representar cada dimension por separado. Una estrategia mas economica consiste en capturar los principales modos compartidos de variacion.

Esto puede lograrse con una capa oculta que tenga menos unidades que la capa de entrada y que aprenda a preservar los componentes mas importantes de la entrada. Una implementacion entrena la red para reproducir la entrada en la capa de salida. La salida deseada es simplemente la propia entrada, de modo que no hace falta un maestro externo.

Hinton tambien menciona algoritmos alternativos de Ralph Linsker y Erkki Oja que pueden aprender componentes principales de una manera mas directa y, al parecer, mas biologicamente plausible.

## Aprendizaje competitivo y mapas de Kohonen

En el aprendizaje por componentes principales, las unidades ocultas cooperan para representar una entrada. En el aprendizaje competitivo, las unidades ocultas compiten de forma que solo una, o muy pocas, se activan para un patron dado.

La unidad ganadora es aquella cuyo patron de pesos coincide mejor con la entrada actual. Despues, sus pesos se ajustan para que responda aun mejor a patrones similares en el futuro. Con el tiempo, distintas unidades ocultas se especializan en diferentes grupos o clases de entradas.

Teuvo Kohonen introdujo una variacion importante en la que se actualizan conjuntamente unidades vecinas. Esto produce mapas topograficos en los que unidades proximas representan patrones similares, lo que sugiere una posible conexion con mapas espacialmente organizados en la corteza.

## Representaciones distribuidas, locales e intermedias

Hinton contrasta varias formas de representar informacion:

- **representaciones distribuidas**, en las que muchas unidades cooperan para representar un patron;
- **representaciones locales**, en las que una sola unidad representa un patron o una categoria;
- **representaciones intermedias**, en las que solo un pequeno subconjunto de unidades esta activo.

Hinton sugiere que los casos mas interesantes podrian encontrarse entre los dos extremos del codigo totalmente distribuido y el totalmente local.

Horace Barlow propuso una de esas posibilidades intermedias: cada unidad oculta se activa muy raramente, pero cada patron de entrada queda representado por un pequeno grupo de unidades. Este tipo de codificacion dispersa o *sparse coding* puede conservar calidad de reconstruccion al tiempo que reduce la redundancia.

## Codigos poblacionales

Un codigo completamente comprimido y sin redundancia puede ser fragil: si una unidad falla, la representacion puede degradarse de forma abrupta. El cerebro, sin embargo, a menudo parece robusto frente a la perdida de neuronas individuales.

Esa consideracion motiva el interes por los **codigos poblacionales**, en los cuales la informacion esta representada por la actividad conjunta de muchas unidades. Hinton analiza trabajos de David Sparks y colaboradores sobre movimientos oculares, donde el movimiento final depende de la actividad promedio de una poblacion de celulas y no de una sola neurona. La misma idea general puede aplicarse a la representacion de rostros: un rostro especifico no corresponderia a una unica celula, sino a un patron distribuido en un espacio multidimensional de rostros posibles.

Aunque estos codigos poblacionales parecen redundantes, Hinton sostiene que esa redundancia puede ser util en lugar de superflua. Si el patron de actividad tiene una forma suave, todavia puede describirse de manera compacta y, al mismo tiempo, ganar robustez.

## Representaciones jerarquicas

Esta linea de razonamiento sugiere una jerarquia de representaciones progresivamente mas economicas. Por ejemplo, una red que procese rostros podria contener grupos de unidades especializadas en narices, bocas y ojos. Los patrones de actividad en esos grupos podrian sostener luego una representacion de nivel superior para un rostro completo.

Hinton tambien analiza como una red podria aprender si esas partes se hallan en la relacion espacial correcta para contar como un rostro. Retomando ideas asociadas con Dana Ballard, describe un mecanismo en el que un rasgo, como la nariz, predice la posicion y escala probables de una representacion facial, mientras que otros rasgos, como la boca y los ojos, ayudan a confirmar esa prediccion.

Esto apunta hacia un aprendizaje jerarquico y composicional, en el que estructuras mayores se construyen a partir de representaciones de nivel inferior compatibles entre si.

## Aprendizaje profundo y redes recurrentes

Hinton cierra sugiriendo que, si una red pudiera aprender una jerarquia de representaciones internas progresivamente mejores sin requerir supervision global en cada etapa, sistemas multicapa de gran escala podrian entrenarse con mucha mayor eficiencia.

Tambien subraya la importancia de las redes recurrentes, en las que la actividad circula por bucles en lugar de avanzar de manera estrictamente unidireccional desde la entrada a la salida. Las redes recurrentes pueden estabilizarse en estados fijos o exhibir dinamicas temporales complejas, lo que las vuelve utiles para procesos secuenciales.

## Conclusion

La tesis general de Hinton es cautelosa. Para 1992, las redes neuronales artificiales ya habian producido algoritmos de aprendizaje poderosos y aplicaciones utiles, pero todavia no habian resuelto el problema del aprendizaje biologico. Aun asi, ofrecian un lenguaje experimental valioso para pensar la representacion, el aprendizaje, la abstraccion y la posible relacion entre modelos computacionales y sistemas nerviosos reales.

La esperanza de largo plazo, tal como la formula Hinton, es que los estudios computacionales de redes neuronales artificiales y los estudios empiricos de cerebros biologicos terminen convergiendo. Si eso ocurre, muchos hallazgos hoy todavia desconectados sobre el cerebro podrian empezar a adquirir un sentido mas profundo.

## Bibliografia complementaria mencionada al final del articulo

- David E. Rumelhart, Geoffrey E. Hinton y Ronald J. Williams, "Learning Representations by Back-Propagating Errors", *Nature*, vol. 323, no. 6188, 1986, pp. 533-536.
- Geoffrey E. Hinton, "Connectionist Learning Procedures", *Artificial Intelligence*, vol. 40, nos. 1-3, 1989, pp. 185-234.
- J. Hertz, A. Krogh y R. G. Palmer, *Introduction to the Theory of Neural Computation*, Addison-Wesley, 1990.
- Patricia S. Churchland y Terrence J. Sejnowski, *The Computational Brain*, MIT Press / Bradford Books, 1992.

## Material visual asociado

Las imagenes extraidas del articulo original se encuentran en:

- `Curso/Presenacion/2b_Hinton_Imagenes_PDF/`

Pueden servir como apoyo visual para la presentacion, especialmente las figuras sobre:

- la neurona idealizada;
- la arquitectura de tres capas;
- el ejemplo de digitos manuscritos;
- el recuadro del algoritmo de retropropagacion.
