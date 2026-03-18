# 15b - Webb - Un Grillo Robot

<!-- Page 1 -->

C
uando  de  cierto  comporta-
miento se dice que es robó-
tico,  nor-malmente  se  pre-
tende  destacar  su  predictibilidad.
Trátese  de  una  aburrida  cajera  de
supermercado o de un conocido poco
renombrado  por  su  espontaneidad,
podríase decir que el comportamiento
robótico  se  caracteriza  por  que  en
las  interacciones  con  el  medio,  o
en las situaciones que puedan acon-
tecer,  la  respuesta  consiste  en  una
serie  de  reacciones  en  apariencia
automáticas.
Cabría pensar que la conducta de
los insectos es, asimismo, robótica o
automática. Sin embargo, al investigar
con detalle las acciones específicas de
algunos insectos se ha revelado una
diversidad mucho más amplia de lo
que tal caracterización haría pensar.
Tenemos  un  ejemplo  al  caso  en  la
hembra  del  grillo,  cuando  trata  de
localizar a un macho por el canto de
reclamo  que  éste  emite.  En  ciertos
aspectos,  tal  actividad  parece  muy
sencilla: al oír el canto apropiado, la
hembra es capaz de caminar en di-
rección hacia el mismo durante horas,
incluso al colocarla, en el laboratorio,
sobre una rueda de andar.
No obstante, investigaciones efec-
tuadas a lo largo de los veinte últi-
mos años han sacado a luz multitud
de sutiles detalles en esta conducta
básica. Por ejemplo, la hembra logra
distinguir de cualquier otro ruido el
canturrio de un macho de su propia
especie  y  acercarse  a  ese  macho
concreto incluso cuando otros machos
de  su  misma  especie  estén  ofre-
ciéndole al propio tiempo serenatas
y  cantos  casi  idénticos.  Seguimos
todavía sin comprender con plenitud
cómo  logra  la  hembra  esta  y  otras
proezas afines.
Análogamente, el comportamiento
de los robots puede parecer, a la vez,
trivial y complejo. Por muy simple
que un robot sea, la interacción de
sus sensores y sus actuadores con el
Un grillo robot
 ¿Sería un sencillo sistema electromecánico
capaz de reproducir la complejidad de la conducta de un ser vivo?
Había una forma segura de averiguarlo
 Barbara Webb
72  I  NVESTIGACIÓN Y  C  IENCIA  , febrero, 1997


<!-- Page 2 -->

medio en que se desenvuelve resultará
siempre complicada. Lo cual entraña
que,  de  ordinario,  la  obtención  de
respuestas fiables y automáticas ante
un estímulo se torne más difícil de lo
que podría esperarse. Así, para lograr
que un robot con ruedas se desplace
en línea recta no basta proporcionar
idéntica  potencia  a  los  motores  de
cada lado. Las tolerancias mecánicas
de los motores, de los elementos de
transmisión y de las ruedas exigirán
la  aplicación  de  potencias  ligera-
mente diferentes para conseguir que
las  ruedas  giren  a  la  par.  También
serán variables las fuerzas de inercia
y  de  rozamiento,  lo  que  obligará
a  ir  ajustando  la  potencia  en  cada
instante, y a corregir los errores, por
medición de la velocidad de giro y
realimentación.  Y  aun  cuando  las
ruedas giren a la misma velocidad,
las  irregularidades  del  terreno  o  la
distinta adherencia de su superficie
serán  responsables  de  que  el  robot
se desvíe de la trayectoria rectilínea,
salvo que disponga de algún tipo de
“brújula” que le permita modificar la
velocidad de las ruedas y contrarrestar
la desviación.
La compensación de los complejos
efectos  debidos  al  entorno  parece
exigir,  pues,  algoritmos  de  control
de igual complejidad. Pero, ¿ha de
ser necesariamente así? Un enfoque
distinto, cada vez más difundido en
robótica, consiste en diseñar el robot
de modo que éste, más que resistirse
al medio, le saque partido al entorno.
Por ejemplo, en lugar de pretender
que  el  robot  viaje  en  línea  recta,
podríamos programarlo para que si-
guiese  trazados  del  terreno  condu-
centes  a  su  destino,  trayectos  que,
en  lugar  de  coronarlos,  circunvalen
los  montículos  que  pudiera  haber
en la ruta. Gracias a métodos tales,
conductas  que  en  el  robot  parecen
complejas  pueden  ser  fruto  de  un
algoritmo controlador de una sencillez
sorprendente.
Con el propósito de investigar es-
tas cuestiones, he diseñado y cons-
truido un “grillo” robótico basado en
principios, algoritmos y mecanismos
bastante  sencillos.  Tenía  la  espe-
ranza de que el comportamiento de
mi robot reflejase en buena medida
la  complejidad  del  comportamiento
de  un  insecto  real  situado  en  un
entorno similar. Asimismo, alentaba
la esperanza de arrojar un poco de
luz  sobre  alguno  de  los  aspectos
neurobiológicos implícitos en el com-
portamiento del grillo.
Obviamente, no era posible que el
modelo reflejase con minucia todos
los aspectos de la conducta del grillo;
opté,  pues,  por  elegir  la  actividad,
específica  aunque  importante,  antes
mencionada: la capacidad de la hem-
bra para identificar y localizar a uno
de los machos cantantes de su propia
especie. (Este proceso de traslación
hacia un sonido específico, junto con
la totalidad de requisitos sensoriales
y deambulatorios que conlleva, recibe
la denominación de fonotaxis.)
Las hembras son sumamente selec-
tivas con respecto a los sonidos que
las atraen. En el canto, la caracte-
rística más distintiva es, sobre todo,
la frecuencia subyacente, o frecuen-
cia  portadora.  Los  machos  pueden
producir  tonos  prácticamente  puros
frotando un ala contra otra (estridu-
lación), y las hembras de la misma
especie responden de forma óptima
a ese tono y no a sonidos más agu-
dos o más graves que la nota de la
portadora, cuya frecuencia ronda, en
general, en torno a los 4,5 kilohertz.
En segundo lugar, también el ritmo
del canto del macho, al abrir y cerrar
éste  las  alas,  es  peculiar  de  cada
especie (se dice que tiene especifi-
cidad de especie). Cada fricción de
las alas crea un sonido característico
que  recibe  el  nombre  de  “sílaba”;
se ha establecido experimentalmente
que la frecuencia con que el insecto
macho repite las sílabas —la tasa de
repetición  silábica—  constituye  el
criterio principal de esta pauta para
suscitar la respuesta de la hembra.
I  NVESTIGACIÓN Y  C  IENCIA  , febrero, 1997  73
 1. EL ROBOT remedaba uno de los comportamientos
de la hembra del grillo, a saber, la localización de
un macho a partir del sonido de sus trinos. En los
experimentos, el robot se desplazaba dentro de un
pequeño campo de pruebas hacia un altavoz; emi-
tía éste un sonido que imitaba las estridulaciones
de un grillo macho. El robot, lo mismo que una
hembra real, procesaba los sonidos inmediatamente
después de “oírlos”, pudiendo así corregir su curso
al encaminarse a su destino. Su trayectoria hasta el
altavoz hacía zigzags, muy similares a los de una
hembra  al  aproximarse  a  su  pareja;  la  longitud
de esta trayectoria nunca pasaba del doble de la
distancia directa desde el punto de partida hasta
el altavoz.


<!-- Page 3 -->

74  I  NVESTIGACIÓN Y  C  IENCIA  , febrero, 1997
Aunque  en  muchas  especies  el
sonido  presenta  una  mayor  estruc-
turación  —verbigracia,  las  sílabas
se  repiten  de  tres  a  cinco  veces,
formando un grupo conocido por “chi-
rrido”— muchas hembras solamente
responden a cantinelas generadas por
sílabas repetidas una y otra vez, sepa-
radas por un intervalo invariable. La
hembra, amén de distinguir el ritmo
y el sonido correcto de un macho de
su especie, debe poder hacerlo incluso
cuando  cierto  número  de  posibles
consortes la cortejan simultáneamente
con sus serenatas. No sabemos bien
cómo  lo  hace,  pero  se  las  arregla
para encaminarse tan sólo hacia uno
de  estos  pretendientes,  ignorando  a
los demás.
En el laboratorio, la grilla muestra
preferencia  principal  por  las  estri-
dulaciones  de  mayor  volumen;  al
serle ofrecidos dos cantos que tengan
ambos  la  tasa  idónea  de  repetición
silábica, la hembra se encamina hacia
el más fuerte: una mayor intensidad
sonora puede indicar que el macho
es  más  vigoroso,  o  sencillamente,
que está más próximo. Sin embargo,
aparte  de  la  intensidad  o  volumen
sonoro,  los  investigadores  no  han
conseguido establecer en los cantos
naturales  otras  características  espe-
cíficas que los hagan preferidos por
las hembras.
Una vez elegido el adecuado grillar
y,  en  caso  necesario,  seleccionado
un  canto  entre  varios  ejemplos  del
mismo, la hembra tiene que localizar
físicamente  la  fuente  sonora,  vale
decir, ha de encaminarse hacia ella y
encontrarla. La única prueba de que
la hembra ha reconocido o elegido el
sonido es que se desplaza en dirección
a  él.  Por  consiguiente,  es  posible
que  bastase  un  solo  proceso  —la
capacidad  de  localizar  únicamente
ciertas clases de sonidos— para pro-
ducir el comportamiento observado.
De ser así, podríamos reproducir la
conducta aparentemente selectiva de
la  hembra  del  grillo  construyendo
un  robot  en  el  que  el  mecanismo
que lo faculta para localizar sonidos
funcionase tan sólo para los sonidos
de tipo correcto.
E
l grillo posee un mecanismo sen-
sorial bastante ingenioso que lo
capacita  para  detectar  la  dirección
de las fuentes sonoras. Sus oídos se
encuentran  en  las  patas  delanteras,
y  dado  que  el  cuerpo  del  insecto
constituye  un  débil  obstáculo  para
los  sonidos  de  baja  frecuencia,  la
diferencia de intensidad, o amplitud,
del sonido recibido en cada uno de
sus  dos  oídos  es  muy  pequeña.  Sí
existe una diferencia en los tiempos
de llegada del sonido, pero tal dife-
rencia se mide en microsegundos y
escapa a la sensibilida detectora de
las neuronas auditivas del animal.
El sonido viaja a lo largo de un
tubo  traqueal  que  conecta  entre  sí
ambos  oídos  y  con  otras  aberturas
adicionales  más  distantes,  llamadas
espiráculos, situadas a ambos lados
de  la  parte  superior  del  tórax  del
grillo. Por tanto, el sonido llega al
oído tanto desde el exterior como por
el interior, a través del conducto, tras
haber  recorrido  distancias  distintas.
El tiempo que el sonido invierte en
recorrer el tubo traqueal provoca un
desfase.  En  el  tímpano,  las  ondas
sonoras se componen aditiva o sustrac-
tivamente según su fase relativa, la
cual  depende  también  de  la  direc-
ción  del  sonido.  Por  consiguiente,
la amplitud de las correspondientes
vibraciones del tímpano representa la
dirección de la fuente sonora [ véase
la figura 3 ]. La amplitud, como con-
viene  que  sea,  es  mayor  del  lado
más próximo al sonido.
Los  “oídos”  del  robot  construido
por  mí  eran  micrófonos  diminutos.
Diseñé,  con  gran  ayuda  ajena,  un
circuito electrónico que procesara las
señales de manera que remedase las
funciones fundamentales del sistema
auditivo de un grillo. Uno de los prin-
cipios fundamentales de este sistema
es  que  el  tubo  traqueal  del  grillo
conduce  óptimamente  los  sonidos
de  la  frecuencia  correspondiente  al
canto de cortejo deseado, y en esta
transmisión  los  desplazamientos  de
fase están adaptados a esa longitud
de onda particular. El mecanismo no
detecta  fiablemente  la  dirección  de
los sonidos correspondientes a otras
frecuencias. Dicho de otro modo, al
basarse  en  desplazamientos  de  fase
sintonizados nada más a la longitud
de onda correcta, el sistema auditivo
desprecia  inherentemente  los  soni-
dos de longitud de onda inadecuada,
porque  no  producen  una  respuesta
direccional.
El robot consistía en un pequeño
vehículo, de forma cúbica y de unos
20  centímetros  de  lado.  Construido
con piezas de Lego, disponía de dos
ruedas motrices y de una ruedecilla
loca  en  la  parte  delantera.  Al  ser
mucho  mayor  que  un  grillo,  sus
“oídos” estaban más separados, por
lo que opté por usar una frecuencia
bastante  inferior  (2  kilohertz)  para
el  canto  encargado  de  atraerlo.  La


<!-- Page 4 -->

I  NVESTIGACIÓN Y  C  IENCIA  , febrero, 1997  75
salida del circuito microfónico propor-
cionaba una señal cada 30 milésimas
de segundo. Esta señal correspondía
a  la  vibración  del  tímpano.  La  se-
ñal,  remedando  lo  que  sucede  en
el  sistema  auditivo  real  del  grillo,
tenía, para sonidos de la frecuencia
seleccionada,  una  amplitud  mayor
del lado de la fuente sonora. En la
práctica, sin embargo, los oídos del
robot  sólo  señalaban  la  dirección
correcta  en  un  90  por  ciento  de
los casos como máximo, a causa de
ruidos espurios en el altavoz, en la
sala o los producidos por los propios
motores del robot.
La  diferencia  en  amplitud  de  vi-
bración  en  los  tímpanos  tiene  que
codificarse  neuralmente  para  poder
compararla y utilizarla en la deter-
minación de la respuesta del motor.
En el grillo hay por cada oído unas
50 neuronas sensoriales que conver-
gen en un pequeño número de inter-
neuronas del sistema nervioso central
del insecto. Dos de estas interneuro-
nas —conectada una al oído izquierdo
y  la  otra  al  derecho—  constituyen
un par que posee, a lo que parece,
importancia crítica para la fonotaxis.
Los  neurofisiólogos  pueden  medir
y  manipular  la  excitación  de  este
par neuronal mientras que el animal
deambula en respuesta a la estridula-
ción. Han podido demostrar así que
el animal siempre gira hacia el lado
en el cual uno de los miembros de
este par neuronal está respondiendo
con mayor intensidad.
Cuando se recibe una estridulación,
cada miembro del par neuronal suma
las señales llegadas de las neuronas
sensoriales del oído correspondiente,
y una vez alcanzado cierto umbral, se
activa y emite impulsos. La rapidez
con que se alcanza la excitación y
emisión correspondiente depende de
la intensidad de la señal de entrada;
también la frecuencia de los impulsos
está  en  íntima  correlación  con  tal
intensidad. Dos son, por consiguiente,
las  formas  en  que  las  vibraciones
de los tímpanos quedan codificadas
por la actividad de las neuronas: la
latencia  (tiempo  transcurrido  antes
de  que  las  neuronas  comiencen  a
emitir) y la tasa de emisión neuronal
durante la estridulación. Concluido el
impacto sonoro, la neurona tarda un
breve tiempo en retornar a su estado
de reposo. Si durante este tiempo de
recuperación empieza otro sonido, la
emisión de impulsos recomienza más
rápidamente,  porque  la  neurona  se
encuentra ya próxima a su umbral.
La  forma  más  obvia  en  que  el
sistema  nervioso  de  la  hembra  del
grillo  podría  servirse  de  esta  res-
puesta para localizar la fuente sonora
consistiría, en cada estridulación, en
volverse hacia el lado del que antes
da comienzo la activación neuronal.
(Se  estaría  dirigiendo  así  hacia  el
lado en el que el sonido suena más
próximo.) Una consecuencia impor-
tante  de  esta  hipótesis  es  que  las
respuestas solamente se producen al
principio de una estridulación. Lo que
 AMPLITUD EN EL TIMPANO
 OIDO MAS PROXIMO
A LA FUENTE SONORA
OIDO MAS DISTANTE
DE LA FUENTE SONORA
 AMPLITUD EN EL TIMPANO
RESPUESTA NEURONAL  RESPUESTA NEURONAL
Latencia de 5 milisegundos
6 espigas
por sílaba
Latencia de 12 milisegundos
2 espigas
por sílaba
 2. EL CUERPO DEL GRILLO canaliza los sonidos a través
de un conducto traqueal interno que conecta los oídos del
insecto  no  sólo  entre  sí,  sino  también  con  dos  aberturas,
llamadas espiráculos, situadas en lo alto del tórax ( arriba ).
Cada  oído  se  encuentra  cerca  de  una  articulación  de  la
pata delantera ( en la fotografía, a la izquierda ). A causa del
conducto, el sonido alcanza cada oído por dos vías: directa-
mente, desde la fuente sonora, e indirectamente, a través del
conducto, desde los espiráculos y el otro oído. Para llegar
al oído más próximo a la fuente sonora, el sonido que ha
viajado  directamente  hasta  el  exterior  del  tímpano  ha  de
recorrer  menor  distancia  que  el  llegado  a  través  del  tubo
hasta la cara interna del tímpano. A causa de esta diferencia
de distancias, el sonido que arriba hasta uno de los lados
del tímpano se halla en antifase con respecto al llegado por
el  otro.  Las  ondas  en  antifase  se  suman  en  este  tímpano,
provocando  una  vibración  de  mayor  amplitud,  percibida
como un sonido de mayor intensidad.
3. LA RESPUESTA DE LA INTERNEURONA AUDITIVA depende de la direc-
ción  de  la  fuente  sonora.  La  amplitud  mecánica  de  la  vibración  del  tímpano
( ondulaciones superiores ) es mayor en el tímpano más cercano a la fuente sonora
( arriba, izquierda ). Cada “cuadrado” de la forma de onda corresponde a la res-
puesta a una estridulación (una “sílaba”) de un grillo macho. La interneurona
que corresponde al oído más cercano al sonido responde a la vibración de supe-
rior amplitud elevando su potencial de forma relativamente rápida por emisión
de seis “crestas”, o espigas, de potencial ( abajo, izquierda ). En el caso del oído
más alejado, la subida de potencial es más lenta y el número de espigas, menor
( derecha, abajo ).
 ESPIRACULOS
SONIDO EN FASE
TIMPANO DERECHO  SONIDO PROCEDENTE
DEL LADO IZQUIERDO
DEL GRILLO
TIMPANO IZQUIERDO
SONIDO EN ANTIFASE


<!-- Page 5 -->

76  I  NVESTIGACIÓN Y  C  IENCIA  , febrero, 1997
encaja a la perfección con el dato de
que la repetición silábica constituye
el factor de máxima importancia al
determinar  si  una  hembra  responde
a un canto. Si el sonido es continuo
o si se repite con tanta rapidez que
no  da  tiempo  a  que  la  neurona  se
recupere,  la  emisión  de  impulsos
será continua. En tal caso, quedará
sin definir de qué lado empezó antes
la  excitación  de  las  neuronas.  Por
otra parte, si el sonido se repite con
demasiada  lentitud,  la  información
relativa al lado hacia el cual ha de
girar llegará con menor frecuencia y
puede no ser suficiente para guiar a
la hembra hacia el macho. Como es
obvio, lo ideal sería una frecuencia
específica de repetición, comprendida
entre estos dos extremos.
En lugar de comparar los tiempos
de activación, cabe la posibilidad de
comparar las frecuencias de emisión
de  impulsos,  que  son,  al  parecer,
las  responsables  de  que  la  hembra
gire hacia el lado que se encuentra
emitiendo  impulsos  más  frecuente-
mente. (Tal respuesta se corresponde
también con la de que el insecto se
oriente hacia el lado donde el sonido
parece  más  próximo.)  Dicho  meca-
nismo  constituye  la  hipótesis  más
difundida  entre  los  neurofisiólogos,
a  pesar  de  que  no  existen  pruebas
concluyentes en favor de una u otra
posibilidades. Siendo la frecuencia de
emisión la que señalará la dirección
asociada  a  una  determinada  pauta
sonora —ya sea sonido continuo, ya
sea  la  repetición  rápida  o  lenta  de
una  sílaba—,  tal  hipótesis  requiere
que el insecto disponga de procesos
nerviosos adicionales en cuya virtud
selecciona  los  cantos  dotados  del
ritmo  correcto.  De  hecho,  se  han
descubierto en el cerebro del grillo
ciertas neuronas que, según parece,
poseen esta propiedad.
A  pesar  de  tales  datos,  utilicé
para  mi  robot  un  algoritmo  basado
en la comparación de los tiempos de
excitación, despreciando la frecuencia
de emisión de los impulsos. Era mi
deseo verificar la hipótesis de que un
mecanismo tal permitiría explicar la
selectividad observada en la hembra
con respecto a ciertos cantos, sin ne-
cesidad de suponer procesos neurales
de nuevo tipo. Dado que el sistema
sensorial de mi robot se basaba en
determinada  longitud  de  onda  so-
nora, y que su comparador “neural”
dependía de cierto ritmo particular,
no  tenía  necesidad  de  seleccionar
activamente el sonido correcto; se li-
mitaba, sencillamente, a no funcionar
con cantos inadecuados. Si mi robot
funcionase  bien  en  la  localización
de los cantos apropiados, conferiría
verosimilitud  a  la  hipótesis  de  que
el mecanismo de localización de los
grillos podría también funcionar de
igual modo.
N
o resultó extremadamente difícil
programar  el  robot  para  que
actuara de esa forma. Tenía por “ce-
rebro”  un  microprocesador  68000,
programado  para  recibir  estímulos
sensoriales diversos y mandar órde-
nes de arranque y parada al motor
izquierdo y al de la derecha. El ro-
bot portaba micrófonos y un circuito
que recreaban el retardo y cancela-
ción de fase del sistema auditivo del
grillo; además, poseía conmutadores
de  infrarrojos  y  de  volumen  que
le permitían detectar los obstáculos
interpuestos. El propio programa de
control constaba de un centenar de
líneas de código.
Las  lecturas  procedentes  del  cir-
cuito  auditivo  se  procesarían  en
tiempo  real.  Si  un  lado  alcanzara
primero el umbral preestablecido, se
detendría  entonces  brevemente  ese
costado,  provocando  un  pequeño
cambio de dirección. Si prosiguiera
el sonido, la estimación superaría el
valor umbral y no se desencadenaría
respuesta alguna. Si se suspendiese
el  sonido,  el  valor  estimado  tende-
 ALTAVOZ
A
ALTAVOZ
B
ALTAVOZ
A
ALTAVOZ
B
POSICION INICIAL DEL ROBOT
 4. LAS TRAYECTORIAS seguidas por el robot eran esen-
cialmente indistinguibles de las seguidas por una hembra
real.  Los  ensayos  se  llevaron  a  cabo  en  un  “campo  de
pruebas”  de  cuatro  metros  de  largo  por  3,3  de  ancho.
Cuando los sonidos, conocidos por sílabas, los emitían si-
multáneamente dos altavoces, el robot se limitaba a viajar
hasta uno de los dos ( izquierda ). También las hembras se
desplazan hasta uno solo de los machos cuando son varios
los que la cortejan con su canto. Cuando las sílabas fueron
alternándose  entre  los  dos  altavoces,  las  trayectorias  del
robot  se  tornaron  mucho  menos  precisas,  y  el  vehículo
acaba, con frecuencia, dando vueltas entre los dos altavoces
( derecha ). En esta situación, también las hembras exhibieron
una conducta similar.
 BARBARA WEBB se graduó en psi-
cología (con premio extraordinario) en
la Universidad de Sydney en 1987 y
se  doctoró  en  inteligencia  artificial
en la Universidad de Edimburgo en
1993.  En  la  actualidad es profesora
en el departamento de psicología de
la Universidad de Nottingham, donde
enseña inteligencia artificial.


<!-- Page 6 -->

I  NVESTIGACIÓN Y  C  IENCIA  , febrero, 1997  77
 ría a cero, a imagen del tiempo de
recuperación que se había observado
en la neurona del grillo. Por consi-
guiente, sólo el sonido discontinuo y
frecuentemente repetido determinaría
que el robot respondiera orientándose
hacia la fuente sonora.
El robot procesaba el sonido con
mayor  lentitud  que  el  insecto.  Por
eso, hubo que aminorar en un fac-
tor de 10 la pauta silábica del so-
nido,  esto  es,  hasta  300  milésimas
de segundo por sílaba. Pese a esta
pauta  morosa  del  sonido,  el  robot
seguía  orientándose  hacia  la  fuente
con suficiente rapidez, a un paso no
muy distinto de una hembra real. En
otras palabras, el robot cambiaba de
dirección  a  la  velocidad  del  grillo
pese  a  recibir  información  sólo  a
un décimo de su velocidad. El robot
tenía, pues, que habérselas con una
tarea más dura.
Sometí  al  robot  a  una  serie  de
ensayos. En cada uno, puse en mar-
cha el robot en un lado de un pe-
queño campo de pruebas y registré
la  trayectoria  que  seguía  hacia  un
altavoz que emitía el sonido. Cuando
las sílabas tenían la duración y fre-
cuencia ideales (300 milisegundos y
dos  kilohertz,  respectivamente),  el
robot se encaminaba hacia el altavoz
siguiendo  una  trayectoria  serpeante
muy similar a la observada en una
fonotaxis real de una hembra. Esta
senda nunca cubría más del doble de
la distancia directa desde la partida
hasta la meta [ véase la figura 4 ]. Al
colocar obstáculos entre el punto de
partida y la fuente sonora, el robot
los sorteaba, camino del altavoz.
Con  el  fin  de  descubrir  de  qué
modo reaccionaría el robot ante so-
nidos  de  características  no  ideales,
llevé  a  cabo  una  serie  de  ensayos
con diferentes frecuencias silábicas.
Cuando  aumenté  la  tasa  de  repeti-
ción  silábica  (con  sílabas  y  pausas
de  duración  inferior  a  200  milise-
gundos),  el  programa  del  robot  se
volvía incapaz de seguir detectando
las pausas intercaladas en el sonido.
Enviaba muy pocas señales de giro
a los motores, guiando al robot en
líneas rectas por el campo de pruebas.
Si llegaba a dar con el altavoz, era
sobre todo por azar. Cuando reduje
la  frecuencia  (sílabas  y  pausas  de
duración mayor de 500 milisegundos),
también su éxito era menor que en
el caso ideal. Giraba con menor fre-
cuencia y el robot acababa siguiendo
una trayectoria curva en la dirección
general  del  altavoz,  al  que  muchas
veces  dejaba  de  alcanzar.  Aunque
yo esperaba que el robot solamente
tuviera éxito en un margen de tasas
silábicas, descubrí posteriormente que
también las grillas tienden a seguir
trayectorias  curvas  con  tasas  bajas
y a fracasar más con las demasiado
altas.  Así  pues,  el  robot  no  sólo
actúa  con  el  éxito  de  una  hembra,
sino  que  tiende  también  a  fracasar
de igual manera que ella.
E
n  realidad,  el  canto  del  grillo
macho consiste en una serie de
chirridos de unas tres o cuatro sílabas,
separadas por períodos de silencio. En
la exposición anterior no nos detuvi-
mos en este dato. Durante nuestros
ensayos, sin embargo, me pareció que
sería interesante ver qué tal navegaba
el  robot  cuando  el  tren  de  sílabas
se  descompusiera  en  chirridos.  Los
resultados  no  fueron  concluyentes.
El robot podía desplazarse un largo
trecho por el campo de pruebas du-
rante los silencios entre chirridos, por
lo  que  tendía  a  rebasar  el  altavoz,
tardando  después  algún  tiempo  en
reorientarse. Por otra parte, cuando
sí alcanzaba el altavoz, llegaba allí
más rápidamente que en el caso de
una canturria continua formada por
sílabas equidistantemente separadas.
Era así porque, cuando todo marchaba
bien  para  la  máquina,  durante  los
chirridos tomaba la dirección correcta
y durante los períodos de silencio se
movía rápidamente hacia el altavoz
sin efectuar ajustes adicionales, que
consumen tiempo.
Lo mismo que antes, sólo  a poste-
riori  llegué a descubrir en las hem-
bras  una  conducta  correspondiente:
su rastreo es más directo cuando la
estridulación se hace en trinos, aunque
el  comportamiento  de  giro  de  una
grilla constreñida a permanecer en un
punto,  medido  por  los  movimientos
de las patas (o del abdomen, si está
en vuelo), es más acusado en el caso
de sílabas continuas. Los ensayos con
el  robot  sugieren  que  los  factores
de  la  situación  pueden  explicar  los
efectos de la estructura de los trinos
en  el  desplazamiento  de  la  hembra
hacia una posible pareja, sin necesidad
de recurrir a mecanismos neuronales
adicionales.
Hasta ahora, los resultados habían
mostrado  que  el  robot  podía  reme-
dar  la  capacidad  de  reconocimiento
y localización de la cantilena correcta
que la hembra del grillo posee. Pero,
¿podría este sencillo vehículo, al igual
que la grilla, seleccionar entre varios
a uno de los machos que la cortejan
con su cántico nupcial? Aunque me
parecía que no, resultaba fácil hallar
la respuesta introduciendo un segundo
altavoz en el campo de pruebas y emi-
tiendo los cantos a través de ambos.
Para sorpresa mía, el robot no parecía
tener dificultad en decidirse (por así
decirlo) e iba casi directamente a uno
u otro altavoz.
Por haber sido yo quien programó
el robot, sabía que no era capaz de
 5. DIFERENCIAS entre grillos reales y robóticos. Unos
discrepan de otros en muchos atributos físicos, entre
ellos, el tamaño. En los experimentos, la autora adaptó
a la escala del robot las características de los sonidos
y del ambiente. Sin embargo, en experimentos futuros
se manejarán robots del tamaño de un grillo con gra-
baciones de cantos de grillos macho campestres.


<!-- Page 7 -->

78  I  NVESTIGACIÓN Y  C  IENCIA  , febrero, 1997
distinguir o decidir entre los sonidos.
Al igual que antes, parece que es la
interacción de los nada complicados
mecanismos  del  robot  con  campos
sonoros especiales lo que produce este
interesante —al par que útil— com-
portamiento,  que  podría  incluso  ser
suficiente para explicar la forma en que
la hembra selecciona un compañero.
Desdichadamente, en estos experimen-
tos  no  dispuse  de  suficiente  control
sobre  las  propiedades  del  estímulo
para verificar si el robot era capaz de
preferir ciertos cantos a otros.
Sí resultó factible, empero, una va-
riante basada en dos fuentes sonoras:
pudimos comprobar el comportamiento
cuando  se  escindía  el  sonido  entre
los dos altavoces, siendo las sílabas
alternativamente  emitidas  desde  uno
y  otro  lados.  Sometida  una  hembra
a esta situación, queda confusa y se
mueve insegura de acá para allá entre
los dos sonidos. El robot hizo más o
menos lo mismo.
En  su  conjunto,  estos  resultados
resultan estimulantes, aunque, como es
obvio, el éxito del robot no demuestra
por sí mismo que los grillos funcionen
de este modo. Sin embargo, sí sugiere
otros tipos de posibles interpretaciones
de los resultados neurofisiológicos y
conductuales. Con mayor generalidad,
pone de manifiesto que un mecanismo
sencillo de control puede dar lugar a
una actuación bastante competente y
compleja, en la hipótesis de que in-
teractúe correctamente con su medio.
Mis colaboradores y yo estamos ahora
reinstalando  este  mecanismo  en  un
robot más reducido, capaz de procesar
el sonido más rápidamente; podríamos
luego ponerlo a prueba con grabaciones
de  cantos  auténticos  de  grillos  para
ver si lleva a cabo las mismas elec-
ciones que manifiestan las hembras. Si
este experimento tiene éxito, tal vez
cambie nuestra forma de entender el
“comportamiento robótico”.
BIBLIOGRAFIA COMPLEMENTARIA
 C  RICKET  B  EHAVIOR  AND  N  EUROBIO  -
LOGY .  Dirigido  por  F.  Huber,  T.
E.  Moore  y  W.  Loher.  Comstock
Publishing Associates, 1989.
 P  HYSICS  OF  D  IRECTIONAL  H  EARING  IN
THE  C  RICKET  G  RYLLUS  BIMACULATUS .
 A.  Michelsen,  A.  V.  Popov  y  B.
Lewis  en  Journal  of  Comparative
Physiology A , vol. 175, n.  o  2, páginas
153-162; febrero de 1994.
 U  SING  R  OBOTS  TO  M  ODEL  A  NIMALS  :
A C  RICKET  T  EST . Barbara Webb en
 Robotics and Autonomous Systems ,
volumen  16,  n.  o  2-4,  páginas  117-
132; 1995.