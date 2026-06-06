logic classical.propositional

// ─────────────────────────────────────────────────────
// Hinton 1992 — Diccionario conceptual en ST
// Enfasis: definiciones legibles de los términos centrales.
// Este archivo funciona como glosario semántico estable.
// No está pensado para derivar teoremas, sino para fijar vocabulario.
// Nota del runtime: `print variable` imprime el identificador,
// no el contenido del string. Por eso aquí el valor principal
// del archivo está en los `let`, no en la salida renderizada.
// ─────────────────────────────────────────────────────

let aprendizaje = "Proceso por el cual una red o un sistema modifica sus conexiones o su organización interna para mejorar su desempeño o su capacidad representacional."
let aprendizaje_supervisado = "Forma de aprendizaje en la que cada ejemplo de entrada viene acompañado por una salida correcta que guía explícitamente el ajuste de pesos."
let aprendizaje_no_supervisado = "Forma de aprendizaje en la que la red no recibe salidas correctas externas y debe extraer regularidades o estructuras de la entrada por sí misma."
let algoritmo = "Procedimiento explícito y finito para transformar entradas, calcular estados intermedios y producir resultados."
let axon = "Prolongación de la neurona biológica que conduce impulsos eléctricos hacia otras células."
let backpropagacion = "Algoritmo que calcula cómo cambia el error con respecto a las actividades y pesos de una red, propagando señales de error desde la salida hacia capas anteriores."
let cerebro = "Sistema biológico de procesamiento, aprendizaje y coordinación, tratado en el texto bajo un marco computacional y representacional."
let codigo_poblacional = "Esquema de representación en el que la información no depende de una sola unidad, sino de la actividad conjunta de una población de neuronas o unidades."
let capa_de_entrada = "Conjunto de unidades que recibe la información bruta suministrada a la red."
let capa_oculta = "Conjunto intermedio de unidades cuyas activaciones permiten construir representaciones internas de la entrada."
let capa_de_salida = "Conjunto de unidades cuya actividad expresa la respuesta final de la red ante una entrada."
let codificacion = "Modo en que un sistema representa información mediante patrones de actividad, estados o símbolos internos."
let costo_de_codificacion = "Cantidad de información necesaria para describir la actividad de las unidades ocultas o la forma interna de una representación."
let costo_de_reconstruccion = "Cantidad de información necesaria para describir la diferencia entre la entrada original y la mejor reconstrucción obtenida desde una representación."
let computadora = "Sistema capaz de procesar información mediante reglas formales y transformaciones de estados; en el texto sirve como metáfora estructurante del cerebro."
let computacion = "Conjunto de operaciones formales mediante las cuales un sistema transforma entradas en salidas a través de reglas explícitas o implementables."
let conexion = "Vínculo funcional entre dos unidades o neuronas a través del cual una puede influir en la actividad de la otra."
let conexionismo = "Programa teórico que explica procesos cognitivos y de aprendizaje mediante redes de unidades simples altamente interconectadas."
let convergencia = "Tesis según la cual los estudios computacionales de redes artificiales y los estudios empíricos del cerebro pueden llegar a encontrarse en explicaciones compatibles."
let dendrita = "Estructura de la neurona biológica que recibe señales provenientes de otras neuronas."
let derivada_del_error = "Medida de cuánto cambia el error total cuando cambia una variable del sistema, como la actividad de una unidad o el valor de un peso."
let distribucion = "Rasgo de una representación en la que varias unidades contribuyen conjuntamente a codificar un contenido."
let economia_descriptiva = "Capacidad de una representación para expresar suficiente estructura con una cantidad relativamente baja de información."
let entrada_total = "Suma ponderada de las señales que llegan a una unidad antes de aplicar la función de entrada-salida."
let entrenamiento = "Proceso repetido de exposición a ejemplos y ajuste de parámetros para modificar el comportamiento de la red."
let error = "Diferencia entre la salida efectiva de la red y la salida deseada para una tarea dada."
let evidencia = "Conjunto de resultados, observaciones o comportamientos que permiten evaluar una hipótesis sobre el aprendizaje o sobre el cerebro."
let funcion_de_entrada_salida = "Regla que transforma la entrada total de una unidad en su actividad de salida."
let idealizacion = "Simplificación deliberada de un sistema real para hacerlo modelable, analizable y teóricamente fértil."
let informacion = "Aquello que puede ser transportado, transformado, comprimido, reconstruido o representado por un sistema."
let jerarquia = "Organización por niveles en la que representaciones de nivel superior integran o coordinan representaciones de nivel inferior."
let mapa_topografico = "Organización espacial de unidades en la que unidades cercanas representan patrones similares."
let maestro = "Fuente externa que proporciona la salida correcta para cada ejemplo de entrenamiento."
let modelo = "Construcción teórica o computacional que no copia literalmente su objeto, pero lo simplifica para hacerlo inteligible."
let neurona_artificial = "Unidad abstracta que recibe entradas ponderadas, calcula una actividad y la transmite a otras unidades."
let neurona_biologica = "Célula nerviosa que integra señales, genera impulsos y modifica su eficacia sináptica mediante aprendizaje."
let ontologia = "Conjunto de entidades, propiedades y relaciones que un texto presupone como reales o teóricamente necesarias."
let peso = "Valor ajustable asociado a una conexión que determina la fuerza de influencia entre dos unidades."
let plausibilidad_biologica = "Grado en que un procedimiento computacional puede considerarse compatible con mecanismos reales del cerebro."
let procedimiento_de_aprendizaje = "Método general por el cual una red cambia sus pesos o su organización para producir mejores representaciones o respuestas."
let representacion = "Estado interno o patrón de actividad que conserva estructura relevante de la entrada y permite guiar tareas, reconstrucciones o inferencias."
let representacion_buena = "Representación que equilibra economía descriptiva y capacidad reconstructiva."
let representacion_distribuida = "Representación en la que múltiples unidades cooperan para codificar un mismo patrón."
let representacion_local = "Representación en la que una sola unidad representa un patrón o una categoría."
let representacion_intermedia = "Representación en la que solo un pequeño subconjunto de unidades se activa para codificar un patrón."
let representacion_interna = "Estructura interna generada por la red que no coincide con la entrada bruta, pero organiza cómo la red la interpreta."
let representacion_jerarquica = "Representación en niveles donde rasgos simples sostienen estructuras más complejas."
let red_neuronal_artificial = "Sistema de unidades interconectadas con pesos ajustables que aprende transformando patrones de actividad."
let red_recurrente = "Red en la que la actividad puede circular en bucles, permitiendo estados estables o dinámicas temporales complejas."
let reconstruccion = "Recuperación aproximada de la entrada original a partir de una representación interna."
let robustez = "Capacidad de una representación o sistema para conservar funcionamiento aceptable incluso ante pérdida o alteración de algunas unidades."
let senal_de_error = "Magnitud que indica cómo contribuye una unidad al error total y que guía la corrección de los pesos."
let sensor = "Dispositivo o unidad de entrada que registra alguna propiedad local del estímulo, como la presencia o ausencia de tinta."
let sigmoide = "Función continua no lineal usada para convertir entrada total en actividad de salida de una unidad."
let sinapsis = "Mecanismo de conexión entre neuronas biológicas cuyo cambio de eficacia permite el aprendizaje."
let sistema = "Conjunto organizado de elementos y relaciones que puede describirse según estados, reglas y transformaciones."
let tarea = "Problema específico que una red debe resolver, como clasificar patrones o reconstruir entradas."
let unidad = "Elemento funcional de una red artificial que transforma entradas en una salida."

// Estas impresiones sirven solo como confirmación de carga.
print "Diccionario Hinton ST cargado."
print aprendizaje
print aprendizaje_supervisado
print aprendizaje_no_supervisado
print backpropagacion
print representacion
print representacion_buena
print codigo_poblacional
print idealizacion
print ontologia
