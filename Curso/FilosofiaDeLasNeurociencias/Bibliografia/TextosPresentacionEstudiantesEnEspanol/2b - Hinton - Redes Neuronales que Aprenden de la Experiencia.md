# 2b - Hinton - Redes Neuronales que Aprenden de la Experiencia

<!-- Page 1 -->


<!-- Page 2 -->

Redes  neuronales
que aprenden de la experiencia
 Las redes de neuronas artificiales pueden aprender a representar
información compleja. Tales redes pueden contribuir a la comprensión
de las  facultades de aprendizaje del cerebro humano
 Geoffrey E. Hinton
 e  onstituye  el  cerebro  una  computadora  muy  nota
ble.  Es  capaz  de  interpretar  información  impre
cisa  suministrada  por  los  sentidos  a  un  ritmo
increíblemente  veloz.  Logra  discernir  un  susurro  en  una
sala  ruidosa,  un  rostro  en  una  callejuela  mal  iluminada
y  leer  entre  líneas  en  una  declaración  política.  Y  lo  más
impresionante  de  todo:  el cerebro  aprende  sin  instruccio
nes  explícitas  de  ninguna  clase  a  crear  las  representa
ciones  internas  que  hacen  posibles  tales  habilidades.
Mucho  se  ignora  todavía  sobre  la  forma  en  que  el
cerebro  aprende  por  sí  mismo  a  procesar  información,
así  que  las  teorías  abundan.  Para  contrastar  tales  hipó
tesis,  mis  colegas  y  yo  hemos  tratado  de  mimetizar  los
procesos  cerebrales  de  aprendizaje  creando  redes  de  neu
ronas  artificiales.  Al  construir  estas  redes  de  neuronas
nos  esforzamos  primero  en  deducir  los  rasgos  o  carac
terísticas  esenciales  de  las  neuronas  y  de  sus  intercone
xiones;  la  segunda  etapa  consiste,  típicamente,  en  prepa
rar un programa de ordenador para la simulación de tales
características.
Dado  que  nuestro  conocimiento  de  las  neuronas  es
incompleto  y  que  nuestra  capacidad  de  cómputo  es  limi
tada,  los  modelos  son  por  necesidad  idealización
burda  de  las  auténticas  redes  neuronales.  Naturalmente,
antes  de  prepararlos  debatimos  entusiásticamente  cuáles
habrán  de  ser  los  rasgos  más  esenciales  a  simular de  las
neuronas.  Al  ensayar  tales características en  redes  artifi
ciales  hemos  podido  descartar  toda  especie  de  teorías
sobre  la  forma  en  que  el  cerebro  procesa  información.
Los modelos están asimismo empezando a revelar de  qué
manera  pudiera  lograr  el  cerebro  sus  notorias  proezas  de
autodidaxis.
Una  neurona  típica  del cerebro  humano  recoge  señales
procedentes  de  otras  a  través  de  una  pléyade  de  delica
das  estructuras  llamadas  dendritas.  La  neurona  emite
impulsos  de  actividad  eléctrica  a  lo  largo  de  una  fibra
delgada  y  larga,  denominada  axón,  que  se  escinde  en
millares  de  ramificaciones.  En  la  extremidad  de  cada
rama,  una  estructura  llamada  sinapsis  convierte  la  acti
vidad  procedente  del  axón  en  efectos  eléctricos  que
inhiben  o  provocan  actividad  en  las  neuronas  a  las  que
está  conectado.  Cuando  las  señales  excitadoras  que  una
neurona  recibe  alcanzan suficiente  intensidad frente  a  las
 l.  LAS  REDES DE NEURONAS  del cerebro  dotan a  los hu
manos de la  facultad  de asimilar información.  ¿Llegarán las
simulaciones  de  tales redes  a  revelar  los  mecanismos  subya
centes al aprendizaje?
 INVESTIGACIÓN  Y  CIENCIA,  noviembre,  1992
 señales  inhibidoras,  la  neurona  envía  a  lo  largo  de  su
axón  un  breve  impulso  de  actividad  eléctrica.  El  apren
dizaje  se  produce  por  variación  de  la  efectividad  de  las
sinapsis,  de  suerte  que  la  influencia  de  una  hormona
sobre  otra  cambia.
·
 Las  redes  de  neuronas  artificiales  se  componen  típica
mente  de  "unidades"  interconectadas,  que cumplen el rol
de  modelo  de  neurona.  La  función  de  la  sinapsis  es
modelizada  atribuyendo  a  cada  conexión  un  peso  modi
ficable.  Ninguna  red  artificial  trata  de  reflejar,  en  todo
su  pormenor,  la  geometría  de  axones  y  dendritas;  la
señal eléctrica de salida de una neurona queda expresada
por  un  solo  número  que  representa  la  frecuencia  de
disparo  de  la  neurona,  vale  decir,  su  actividad.
Cada  unidad  convierte  la  pauta  de  actividades  que  en
ella  ingresan  en  una  única  actividad  de  egreso,  que  es
difundida  a  otras  unidades.  Tal  conversión  se  efectúa  en
dos  etapas.  Primero,  cada  actividad  aferente  es  multipli
cada  por  un  coeficiente  de  ponderación  (por  brevedad,
peso)  atribuido  a  la  conexión;  todos  los productos  ingre
sados  se  suman  para  obtener  una  cantidad  denominada
"entrada  total".  En  una  segunda  fase,  la  unidad  utiliza
una  función de  transferencia  entrada-salida,  que  transfor
ma  el  ingreso  total  en  actividad  de  regreso  o  "salida".
 E
l  comportamiento  de  una  red  neuronal  artificial  de
pende,  a  la  vez,  de  los  coeficientes  de  ponderación
y  de  la  función  de  transferencia  que  sea  especificada
para  las  unidades.  Tal  función  se  encuadra  en  una  de
tres  categorías:  lineal,  de  umbral  o  sigmoide.  En  el  caso
de  unidades  lineales,  la  actividad de  salida  es  proporcio
nal  a  la  entrada  ponderada  total.  Para  unidades  de  um
bral  la  salida  queda  fija  a  uno  de  dos  niveles,  depen
diendo  de  que  la  entrada  o  ingreso  total  sea  mayor  o
menor  que  cierto  valor  crítico,  llamado  umbral.  En  las
unidades sigmoides,  la  salida varía continuamente con  la
entrada,  pero  la  dependencia  no  es  lineal.  Las  unidades
sigmoides  guardan mayor  parecido  con  las  neuronas  rea
les  que  las  unidades  lineales  o  de  umbral;  las  tres,
empero,  deben ser  tenidas  por  mera aproximación burda.
Para  construir  una  red  neuronal  capaz  de  cierta  tarea
 GEOFFREY E. HINTON lleva veinte años trabajando en la
representación  y  aprendizaje  de redes neuronales.  Se recibió
de doctor en inteligencia artificial por la Universidad de Edim
burgo  en  1978.  Da  clases  de informática  y  psicología en la
Universidad canadiense de Toronto.
 105


<!-- Page 3 -->

ACTIVIDAD
EFERENTE
(SALIDA)
 Jl
ENTRADA
PONDERADA
TOTAL  Jl
 Jl
 Jl
 FUNCION  Jl
DE TRANS-
 )iii iliii ii;  FERENCIA  · · - ·  - -
 Jl
 2.  LA  NEURONA  IDEALIZADA  procesa actividades,  vale decir, señales.  Cada ac
tividad aferente es multiplicada por un coeficiente de  ponderación o peso.  La  "uni
dad"  suma  las  entradas  así  ponderadas  y  computa  seguidamente  la  actividad  efe
rente,  o actividad  de salida,  por medio de una función de  transferencia.
 específica  debemos  establecer  cómo
estarán conectadas unas unidades con
otras  y  determinar  adecuadamente
los  pesos  atribuidos  a  las  conexio
nes.  Las  conexiones  determinan si  es
posible que  una  unidad  influya  sobre
otra;  los  pesos  definen  la  intensidad
de  la  influencia.
El  más  común  de  todos  los  tipos
de  red  neuronal  artificial  organiza
sus  elementos  en  tres  niveles  o  es
tratos:  una  capa  de  unidades  de  en
trada  está  conectada  a  un  estrato  de
unidades  "ocultas",  conectadas  a  su
vez  a  las  unidades  del  nivel de  sali
da.  La  actividad  de  las  unidades  de
entrada es representación de la  infor
mación  bruta  suministrada  a  la  red.
 3.  UNA RED NEURONAL FRECUENTE
es la constituida por tres niveles de uni
dades interconectadas. La actividad pasa
de  las  unidades  de  entrada  (verde)  a  las
unidades  ocultas  (gris)  y,  por  fin,  a  las
·unidades de salida  (amarillo).  Los distin
tos matices de rojo  y  azul de las unidades
representan pesos  diferentes.
 106
 La  actividad  de  cada  unidad  oculta
está  determinada  por  las  actividades
de  las  unidades  de  entrada  y  por  los
pesos  de  las  conexiones  entre  las
unidades  de  entrada  y  las  unidades
ocultas.  Análogamente,  la  conducta
de  las  unidades  de  salida  es  función
de  la  actividad  de  las  ocultas  y  de
los  pesos  que  median  entre  las  uni
dades  ocultas  y  las  de  salida.
Este  sencillo  tipo  de  red  posee  in
terés  porque  las  unidades  ocultas  tie
nen  libertad  para  construir  sus  pro
pias  representaciones  de  la  entrada.
Los  pesos  que  median  entre las  uni
dades  de  ingreso  y  las  unidades
ocultas  determinan  cuándo  estará  ac
tiva  cada  una  de  éstas,  y  así,  por
modificación  de  los  pesos,  una  uni
dad  oculta  puede  decidir  el  papel
que  representa.
Cabe  enseñar  a  una  red  trietápica
para  que  realice  una  tarea  particular,
por  el  siguiente  procedimiento.  Pri
mero  le  presentamos  a  la  red  una
tanda  de  ejemplos  de  entrenamiento,
ejemplos  que  consisten  en  patrones
de  actividades  de  las  unidades  de
entrada  más  los  patrones  correspon
dientes  que  deseamos  exhiban  las
unidades  de  salida.  Determinamos
después  hasta  qué  punto  existe  con
cordancia  entre  el  egreso  real  de  la
red  y  la  salida  deseada;  por  último
se  modifican  los  pesos  de  cada  co
nexión,  buscando  que  la  red  consiga
una  mejor  aproximación  de  la  salida
deseada.
Supongamos,  sea  por  caso,  que
nuestra  red  deba  reconocer  cifras  es
critas a mano.  Podríamos utilizar una
matriz  de  256  sensores,  por  ejemplo,
que  registren  cada  uno  la  presencia
o  ausencia  de  tinta  en  una  diminuta
porción  de  una  región  que  sólo  con
tiene  un  dígito.  La  red  precisaría  en
tonces  256  unidades  de  entrada  (una
por  sensor),  diez  unidades  de  salida
(una  por  dígito)  y  cierto  número  de
unidades  ocultas.  Para  cada  tipo  de
dígito  registrado  por  los  sensores,  la
red  debería  producir  una  elevada  ac
tividad  en  la unidad  de salida  adecua
da  y  baja  actividad  en  las  restantes.
Para  entrenar  a  la  red,  le  presen
tamos  una  imagen  de  un  dígito  y
comparamos  la  actividad  real  de  las
diez  unidades  de  salida  con  la  acti
vidad  deseada.  Calculamos  seguida
mente  el  error,  que  se  define  como
la  suma  de  los  cuadrados  de  las  dis
crepancias  entre  actividades  reales  y
deseadas;  cambiamos  ahora  el  peso
de  cada  conexión,  al  objeto  de  redu
cir  el  error.  Podemos  repetir  el  pro
ceso  de  entrenamiento  para  muchas
diferentes  imágenes  de  cada  tipo  de
dígito,  hasta  conseguir  que  la  red cla
sifique  correctamente  cada  imagen.
Para  poner  en  práctica  tal  proce
dimiento,  la  magnitud  de  la  modi
ficación  de  cada  peso  debería  ser
proporcional  a  la  tasa relativa  de va
riación  del  error  con  respecto  a  la
variación  de ese  peso.  Esta  cantidad,
que  se  llama  "derivada  respecto  al
peso",  o simplemente,  EP para recor
dar  "error  de  peso",  es  difícil  de
calcular  eficientemente.  Una  forma
de  calcular  el  EP  consiste  en  pertur
bar  levemente  un  peso  y  observar
cómo  varía  el  error.  Tal  método  es
ineficiente,  porque  requiere  una  per
turbación  individual  para  cada  peso,
y  éstos,  de  ordinario,  serán  muchos.
 H
acia  1974,  Paul  J.  Werbos,  doc
torando  en  la  Universidad  de
Harvard,  ideó  un  procedimiento  mu
cho  más  eficiente  para  calcular  el
EP.  Tal  procedimiento,  hoy  conocido
por  algoritmo  de  retropropagación,
se  ha convertido en  uno  de  los  prin
cipales  instrumentos  para  el  entrena
miento  de  redes  neuronales.
El  algoritmo  de  retropropagación
resulta  más  sencillo  de  comprender
en  el  caso  de  que  todos  los  elemen
tos  de  la  red  sean  lineales.  El  algo
ritmo computa  cada  EP  hallando  pri
mero  el  "error  de  actividad",  EA,
tasa  de  variación  del  error  al  cam
biar  el  nivel  de  actividad  de  una
unidad.  Para  unidades  de  salida,  el
EA es  sencillamente la diferencia en
tre  la  salida  deseada  y  la  real.  Para
calcular  el  EA  correspondiente  a  una
unidad  oculta  del  nivel  inmediata
mente  inferior  al  de salida se empie
za  por  identificar  todos  los  pesos
que  median  entre  esa  unidad  oculta
y  las  unidades  de  salida  a  las  que
 INVESTIGACIÓN  Y  CIENCIA, noviembre, 1992


<!-- Page 4 -->

está  conectada.  Multiplicamos  enton
ces  esos  coeficientes  de  ponderación
por  los  errores  de  actividad  de  tales
unidades  de  salida  y  sumamos  los
productos.  Esta  suma  es  igual  al  EA
de  la  unidad  oculta  elegida.  Después
de  calcular  todos  los  EA  de  la  capa
oculta  inmediatamente  subyacente  a
la  de  salida,  podemos  calcular  de
igual  manera  los  EA  correspondien
tes  a  las  restantes  capas,  pasando  de
una  capa  a  otra  en  sentido  opuesto
al  de  propagación  de  actividades  a
través  de  la  red.  De  aquí  el  nombre
de  retropropagación.  En  cuanto  el
EA  ha  sido  computado para una  uni
dad,  el  cálculo  del  EP  (error  de pon
deración)  correspondiente  a  cada  co
nexión  entrante  en  la  unidad  resulta
inmediato.  El  EP  es  el  producto  del
EA  y  de  la  actividad  a  través  de  la
conexión  entrante.
En  el  caso  de  unidades  no  linea
les,  el  algoritmo  de  retropropagación
exige  un  paso  más.  Antes  de  la  re
tropropagación  es  preciso  convertir
el  EA  en  El  (error  de  ingreso),  que
es  la  tasa  con  que  cambia  el  error
al  variar  el ingreso total  recibido por
una  unidad.  (Pueden  verse  los  deta
lles  de  este  cálculo  en  el  recuadro
que  se  adjunta.)
El  algoritmo  de  retropropagación
permaneció en  el  olvido  durante  bas
tantes  años,  debido  con  toda  proba
bilidad  a  que  su  utilidad  no  fue  va
lorada  como  merecía.  A  principios
del  decenio  de  1980,  David  E.  Ru
melhart,  a  la sazón  en  la  Universidad
de  California  en  San  Diego,  y  David
 B.  Parker,  que  hallábase  entonces  en
la  Universidad  de  Stanford,  redescu
brieron  independientemente  el  algo
ritmo.  En  1986,  Rumelhart,  Ronald
 J.  Williams  (de  San  Diego)  y  quien
escribe  popularizamos  el  algoritmo
al  demostrar  que  lograba  enseñar  a
las  unidades  ocultas,  consiguiendo
que éstas produjeran representaciones
interesantes  de  patrones  complejos
ofrecidos  como  entrada.
El  algoritmo  de  retropropagación
ha  demostrado  poseer  una  sorpren
dente  eficacia  para  entrenar  redes
neuronales  poliestratificadas  y  conse
guir  que  éstas  desempeñen  un  am
plio  abanico  de  tareas.  El  algoritmo
es  de  máxima  utilidad  en situaciones
donde  la  entrada  y  la  salida  guardan·
relación  no  lineal  y  hay  abundante
provisión  de  datos  de  entrenamiento.
Valiéndose  del  algoritmo,  los  inves
tigadores  han  producido  redes  neuro
nales  que  reconocen  dígitos  manus
critos,  predicen  las  tasas  cambiarias
de  las  divisas  y  optimizan  el  rendi
miento  de  ciertos  procesos  químicos.
El  algoritmo  ha  sido  utilizado  inclu
so  para  entrenar  redes  que  identifi
can  células  precancerosas  en  frotis
de  Pap  o  capaces  de  ajustar  el  espe
jo  de  un  telescopio  para  compensar
 Representación de dígitos manuscritos en una red
 S
e  ha  instruido  a  esta
red  neuronal,  com
puesta  por  256  uni
dades  de  entrada,  nueve
unidades ocultas  y  diez  uni
dades  de  salida,  para  reco
nocer  dígitos  manuscritos.
La ilustración  al  pie  expone
las  actividades  de las unida
des  cuando  se  le  presenta a
la red  un  3  manuscrito.  Los
nueve paneles de la derecha
representan  los  256  pesos
aferentes  y  los  diez  pesos
eferentes  correspondientes  a
cada  una  de  las  nueve  uni
dades  ocultas.
 SALIDA
OCULTA
ENTRADA
INVESTIGACIÓN  Y  ÜENCIA, noviembre, 1992  107


<!-- Page 5 -->

y  eliminar  las  distorsiones  de  natu
raleza  atmosférica.
En  el  campo  de  las  neurociencias,
Richard  Andersen,  del  Instituto  de
Tecnología  de  Massachusetts  (MIT),
y David Zipser,  de la  Universidad de
California  en  San  Diego,  han demos
trado  que  el  algoritmo de  retropropa
gación constituye un instrumento útil
para  explicar  la  función  de  ciertas
neuronas  de  la  corteza  cerebral.  Es
tos  investigadores  aplicaron  la  retro
propagación  en  el  entrenamiento  de
una  red  neuronal  que  habría  de  res
ponder a estímulos visuales.  Hallaron
después  que  las  respuestas  de  las
unidades  ocultas  se  asemejaban  sor
prendentemente  a  las  de  neuronas
auténticas  responsables  de  la  conver-
swn  de  información visual proceden
te  de  la  retina  a  formas  más  adecua
das  para  áreas visuales ubicadas más
profundamente  en  el  cerebro.
ajustados  para  reducir  errores.  Hasta
entonces,  eran  muchos  los  investiga
dores que suponían que  esta clase de
métodos  no  ofrecerían  ninguna  posi
bilidad,  por  conducir  inevitablemente
a  soluciones  localmente  óptimas,
pero  globalmente  muy  malas.  Por
ejemplo,  una  red  de  reconocimiento
de  dígitos  podría  converger  sistemá
ticamente  hacia  una  distribución  de
pesos  que  confundiera  unos  y sietes,
no  obstante existir  un sistema  de pe
sos  que  permitiría  a  la  red  discrimi
nar  claramente  entre  ambos  dígitos.
Este  temor vino  a  respaldar la exten
dida  convicción  de  que  un  proceso
de  aprendizaje  sólo  sería  interesante
cuando  estuviera  garantizada  su  con
vergencia  hacia  la  solución  global-
 S
in  embargo,  en cuanto  teoría  del
aprendizaje  real  de  las  neuronas
biológicas,  la  retropropagación  ha
sido  recibida  con  división  de  opinio
nes.  Por  una  parte,  el  algoritmo  de
retropropagación ha supuesto una va
liosa  aportación  a  nivel  abstracto.  El
algoritmo  es  francamente  eficiente
en  la  creación  de  representaciones
verosímiles  en  las  unidades  ocultas.
En  consecuencia,  los  investigadores
a dquirieron  confianza  y  han  ido
acertando  con  procedimientos  en  los
cuales  los  pesos  son  gradualmente
 El algoritmo de retropropagación
 P
ara  que  una  red  neuronal  realice  una  tarea  es
preciso ajustar los pesos de cada unidad de modo
tal que se re'duzca  el error  entre la salida  desea
da  y  la  conseguida.  Tal  proceso  requiere  que  la  red
. neuronal  compute  la  derivada  del  error  respecto  a  los
pesos  (EP),  esto  es,  debe  calcular  cuánto  varía  el  error
al  modificar  levemente  en  más  y  en  menos  cada  uno
de los  pesos.  El  método habitual para la  determinación
del  EP  es  el  algoritmo  de  propagación  retrógrada.
Para  llevar  a  la  práctica  el  algoritmo  de  retropropa
gación  es  necesario  ante  todo  dar  una  descripción  ma
temática de la red neuronal.  Supongamos que la j-ésima
unidad sea  una  unidad  típica del nivel  de salida y que
la  unidad  i-ésima  sea  también  típ i c  a  en  el  nivel  inme
diatamente  inferior.  Las  unidades  del  nivel  de  salida
determinan su actividad atendiendo a  un  procedimiento
en dos pasos.  Calculan primero  la  entrada  total ponde
rada  x¡  mediante  la  fórmula
siendo  yi  el nivel de actividad  de la i-ésima unidad del
estrato  inferior  y  wi¡  el  peso  de  la  conexión  entre  las
unidades  i-ésima  y ¡-ésima .
Seguidamente,  la  unidad  calcula  la  actividad  y¡  apli
cando  una  función  a  la  entrada  total  ponderada.  La
función  típicamente  utilizada  es  la  función  sigmoide:
Una  vez  determinadas  las  actividades  de  todas  las
unidades  de  salida,  la  red  computa  el  error  cuadrático
 'E  ,  definido  por  la  expresión
 'E =  t.L  ()} -dj)  2'
 j
 en  la  cual  y¡  es  el  nivel  de  actividad  dé  la  unidad
j-ésima  del  nivel  superior  y  d¡  es  la  salida  deseada  de
la  unidad j-ésima.
El  algoritmo  de  retropropagación  consta  de  cuatro
pasos:
 l.  Cómputo  de  la  rapidez  de  variación  del  error  al
cambiar  la  actividad  de  una  unidad  de  salida.  Esta
derivada  del  error  (EA)  es la  diferencia  entre  las  acti-
 108
 vidades real y  deseada.
 CJ
'E EAj=  CJ y j
= �-dj
 4.  Cómputo  de  la  rapidez  de  variación  del  error  al
cambiar la entrada total que recibe una unidad de salida.
Esta cantidad (El) es el resultado del paso  1  multiplicado
por la  tasa de variación de  la salida  de  una unidad con
relación a  las variaciones de  su  entrada total.
 • ' -
()'E
-
()'E  d yj
- Elj--
()
--
()
- d  - EAjyj(l-yj)
Xj  y j  xj
 3.  Cómputo  de  la  rapidez  de  variación  del  error  al
ser  modificado  un  peso  de  la  conexión  aferente  él  una
unidad  de salida.  Esta  cantidad  (EP)  es el resultado del
paso  2  multiplicado  por  el  nivel  de  actividad  de  la
unidad  de  la  cual  emana  la  conexión.
 EP ..=
()'E
=  ()'E dXj = El y
 .  11  dWij  dXj dW¡ j  1  1
 4.  Cómputo  de  la  rapidez  de  variación  del  error  al
cambiar  la  actividad  de  una  unidad  del nivel  inmedia
tamente  inferior.  Este  es  el  paso  crucial  que  permite
aplicar  la  retropropagación  a  redes  polietápicas.  Las
actividades  de  todas  las  unidades  de  salida  a  las  que
está conectada  una  unidad del nivel precedente quedan
modificadas al variar  ésta  su actividad. Por  tanto, para
calcular el efecto global sobre el error sumaremos todos
estos  efectos  individuales sobre  las  unidades de salida.
Ahora  bien,  cada  efecto  es  sencillo  de  calcular.  Es  el
resultado  del  paso  2  multiplicado  por  el peso  asignado
a  la  conexión  aferente  a  esa  unidad  de  salida.
Merced . a  los  pasos  2  y  4  podemos  convertir  los
errores  de  actividad  (EA)  de un  estrato de unidades en
EA  del  estrato  subyacente.  Podemos  calcular  por  itera
ción  del  procedimiento  los  EA  de  tantas  capas  de  uni
dades  como  sea  necesario.  Una  vez  conocido  el  EA de
una  unidad  podemos  aplicar  los  pasos  2  y  3  para
calcular  los  EP  de  sus  conexiones  aferentes.
 INVESTIGACIÓN  Y  CIENCIA, noviembre, 1992


<!-- Page 6 -->

D
e  mayor  entidad  es  el  problema
que plantea la velocidad del al
goritmo  de  retropropagación.  La
cuestión  relevante  es  ahora  el  ritmo
de  crecimiento  del  tiempo  de  apren
dizaje  necesario  al  crecer  el  tamaño
de  la  red.  El  tiempo  invertido  en
calcular,  para  un  ejemplo  dado,  las
derivadas  del  error  respecto  a  los
pesos es  proporcional  al tamaño de  la
red,  porque  el  volumen  de  cómputo
es  proporcional  al  número  de  pesos.
Además,  cuanto  mayor  es  la  red,
más  ejemplos  y  mayor  es  el  número
de  veces  que  se  han  de  corregir  los
pesos;  por  consiguiente,  el  tiempo de
aprendizaje  crece  mucho  más  rápida
mente  que  el  tamaño  de  la  red.
Pero  la  objeción  más  seria  que
suscita  la  retropropagación  en  cuan
to  modelo  del  aprendizaje  real  es
que  requiere  de  un  instructor  que
proporcione  la  salida  deseada  para
e j em p l o  de  e n t r e na m i e n t o .  Las
personas,  por  el  contrario,  pueden
aprender casi todo sin auxilio de ins
tructores.  Para  sacar  partido  de  las
señales  enviadas  por  nuestros  senti
dos  no  es  preciso  que  nos  sea  ex
puesta  antes  una  descripción  deta
llada  del  mundo.  Por  el  contrario,
aprendemos  a  comprender  frases  o
escenas visuales  sin  instrucciones  ex
plícitas  de  ninguna  clase.
¿Cómo  podría  una  red  adquirir
representaciones  internas  apropiadas
del  mundo,  si  carece  al  empezar  de
conocimientos  y de maestro?  Cuando
se le presenta a la red una gran colec
ción de patrones de entrada  sin que se
le  dé  información  sobre  lo  que  debe
hacer  con  ellos,  la  red  se  encuentra,
aparentemente,  libre de  problema bien
definido  que  resolver.  No  obstante,
los  investigadores  han  diseñado  va
rios  procedimientos  de  uso  general,
no  supervisados,  que  pueden  ajustar
adecuadamente  los  pesos  de  la  red.
 INVESTIGACIÓN  Y  CIENCIA, noviembre, 1992
y
x----,,.  x----7
4.  DOS  CARAS  compuestas  por  ocho  elipses  pueden  ser  representadas  mediante
puntos individuales  en  dos dimensiones. Por  otra parte,  dado  que  las elipses sola
mente  se  diferencian  de  cinco  formas  (orientación,  posición  horizontal  del  centro,
posición  vertical  del  centro,  anchura  y  altura),  también  es  posible representar  las
dos caras como ocho puntos de  un espacio de cinco dimensiones.
 Todos  estos  procedimientos  com
parten  dos  características:  apelan,
implícita  o  explícitamente,  a  cierta
noción  de  la  calidad  de  la  repre
sentación  y  funcionan  cambiando  los
pesos  para  mejorar  la  representación
extraída  por  las  unidades  ocultas.
En  general,  las representaciones de
calidad se distinguen por admitir una
descripción  muy  económica  y  conte
ner,  no  obstante,  información  sufi
ciente  para  reconstruir  una  entrada
"en  rama"  con  buena  aproximación.
 S  lAMES
 e
e
 Imaginemos,  por  ejemplo,  una  ima
g e n  formada  por  varias  elipses.
Supongamos  que  cierto  dispositivo
traduce  la imagen a  una matriz com
puesta  por  un  millón  de  diminutos
puntitos,  cada uno de los  cuales  pue
de  ser  claro  u  oscuro.  La  imagen
podría  quedar  representada  simple
mente  por  las  posiciones  de  los  cua
drados  oscuros.  Pero  caben  también
otras  representaciones  más  eficientes.
Las  elipses  se  diferencian  en  sólo
cinco  aspectos:  orientación,  posición
 e -....  DISTRIBUCION DE PESOS
DE UNA UNIDAD OCULTA
 "
 �  -  �  KODIAK
PARDO
POLAR
 S.  EL APRENDIZAJE COMPETITIVO  puede ser contemplado como un proceso en
el  que  cada  serie  o  patrón  de  entrada  atrae  la  distribución  de  pesos de la  unidad
oculta más próxima.  Cada patrón aferente representa un conjunto de rasgos distin
tivos. La distribución de pesos de las unidades ocultas se ajusta de forma que vayan
migrando lentamente hacia el sistema más cercano de patrones de entrada. Con esa
pauta, cada unidad oculta aprende a representar un racimo de patrones similares.
 109


<!-- Page 7 -->

vertical,  posicJOn  horizontal,  longi
tud  y  anchura.  Por  consiguiente,  la
imagen  puede  quedar  descrita  utili
zando  solamente  cinco  parámetros
por  elipse.
Aunque la descripción de una elip
se  mediante  cinco  parámetros  exige
más  ·bits  que  la  descripción  de  un
único  cuadradito  negro  mediante  dos
coordenadas,  podemos lograr  un aho
rro  global  porque  hay  que  manejar
muchísimo  menor  número  de  pará
metros que de pares coordena-
dos.  Además,  la  descripción
de  las  elipses  mediante  pará
metros  no  comporta  la  menor
pérdida  de  información:  dados
los  parámetros  de  la  elipse,
podríamos,  si  quisiéramos,  re
construir  de  manera  perfecta
la  imagen  original.
necesitaremos  una  única  capa  de  diez
unidades  ocultas.
Dado  que  tales  redes  representan
la  entrada  con  sólo  un  pequeño  nú
mero  de  componentes,  el  costo  de
codificación . es  barato.  Y,  dado  que
la  entrada  admite  una  reconstrucción
francamente  buena  a  partir  de  las
componentes  principales,  el  costo  de
reconstrucción  también  es  reducido.
Una  forma  de  entrenar  redes  de
este  tipo  consiste  en  obligarlas  a  re-
leccionada es aquella cuyos pesos in
cidentes  se  asemejan  más  al  patrón
de entrada.
Supongamos  ahora  que  fuera  pre
ciso  reconstruir  el  patrón  de  entrada
conociendo  solamente  cuál  ha  sido
la  unidad  oculta  seleccionada.  La
conjetura  óptima  sería,  obviamente,
copiar  la  distribución  de  pesos  de
las  líneas  entrantes  en  tal  unidad
oculta.  Para  minimizar  el  error  de
reconstruc.ción,  habría  que  aproxi-
mar  todavía  más  la  distribu
Casi  todos  los  procedimien
tos  de  aprendizaje  no  supervi
sado  pueden  ser  considerados
métodos  de  minimización  de
la  suma  de  dos  términos,  a
saber,  un  costo  de  codifica
ción y un costo de reconstruc
ción.  El  costo  de  codificación
es  el  número  de  bits  requeri-
 6.  LA CODIFICACION DEMOGRAFICA representa un ob
jeto multiparamétrico  en  forma de protuberancia de  acti
vidad extendida sobre muchas unidades ocultas. Cada disco
 ción  de  pesos  de  la  unidad
oculta ganadora a los valores
auténticos  del  patrón  de  en
trada. Pues eso es lo que hace
el  aprendizaje  competitivo.
Cuando  a  la  red  le  son  pre
sentados  datos  de  aprendiza
je  que  cabe  apiñar  en grupos
de  entradas  similares,  cada
unidad  oculta  aprende  a  re
presentar un racimo  diferente
y  sus  pesos  incidentes  con
vergen  en  el  centro  del  raci
mo  en  cuestión.
 simboliza una unidad oculta inactiva; cada cilindro, una uni
dad oculta activa, cuya altura denota el nivel de actividad.
 Al  igual  que  el  algoritmo
de  componentes  principales,
el  aprendizaje  competitivo
logra  minimizar  el  costo  de dos  para  la  descripción de  las
actividades  de  las  unidades  ocultas.
El  costo  de  reconstrucción  es  el  nú
mero  de  bits  requeridos  para  descri
bir  el  desajuste  entre  la  entrada  en
rama  y  la  aproximación  óptima  de  ·
 ella  que  podríamos reconstruir  a  par
tir  de las actividades  de las unidades
ocultas.  El  costo  de  reconstrucción
es  proporcional  al  cuadrado  de  la
diferencia  entre  la  entrada  en  rama
y  su  reconstrucción.
Existen  dos  métodos  sencillos para
el  descubrimiento  de  códigos  econó
micos  que  permitan  una  reconstruc
ción  bastante  exacta  de  la  entrada.
Son  éstos  el  aprendizaje  de  compo
nentes  principales  y  el  aprendizaje
competitivo.  En  ambas  técnicas,  em
pezamos  decidiendo  cuán  económico
ha  de  ser  el  código  y  modificando
después  los  pesos  para  así  reducir  el
error  de  reconstrucción.
 L
a  estrategia  de  aprendizaje  por
.  componentes  principales  se  fun
da  en  la  idea  de  que,  si  las  activi
dades  de  parejas  de  unidades  de  en
trada  guardan  entre  sí  algún  tipo  de
correlación,  la  descripción  por  sepa
rado  de  cada  actividad  de  entrada
sería  un  desperdicio  de  bits.  Una
técnica  más  refinada  consistiría  en
extraer  y  describir  las  componentes
principales,  es  decir,  las  componen
tes  de  variación  compartidas  por
multitud  de  unidades  de  entrada.  Si
deseamos  describir,  por  ejemplo,
diez  de  las  componentes  principales,
 110
 construir  una  aproximación de  la  en
trada  sobre  un  sistema  de  unidades
de  salida.  Se  puede  utilizar  después
la  retropropagación con el  fin de mi
nimizar  la  diferencia  entre  la  salida
real  y  la  deseada.  Este  proceso  se
asemeja  al  de  aprendizaje  supervisa
do,  pero  dado  que  la  salida  deseada
es  exactamente  la  misma  que  la  en
trada,  no  es  necesario  instructor.
Muchos  investigadores,  entre  quie
nes  figuran  Ralph  Linsker,  del  Cen
tro  de  Investigación  T homas  J.  Wat
son,  de  IBM,  y  Erkki  Oja,  de  la
Universidad  Politécnica  de  Lappeen
ranta,  han  descubierto  algoritmos  de
otros  tipos  para  el  aprendizaje  de
componentes  principales.  Dichos  al
goritmos  son  biológicamente  más
plausibles,  porque  no  requieren  uni
dades  de  salida  ni  retropropagación.
Para  determinar  las  modificaciones
de  pesos  se  valen,  en cambio,  de  las ·
correlaciones  entre las actividades de
las unidades ocultas y las actividades
de  las  unidades  de  entrada.
Cuando  una  red.  neuronal  se  sirve
del  aprendizaje  por  componentes
principales,  un  pequeño  número  de
unidades  ocultas  coopera  en  la  re
presentación  de  la  pauta  de  entrada.
En  el  aprendizaje  competitivo,  con
trariamente,  un  gran  número  de  uni
dades  ocultas  pugnan  entre  sí,  con
lo  que  finalmente  se  utiliza  una
sola  unidad  oculta  para  la  repre
sentación  de  un  patrón  de  entrada
determinado.  La  unidad  oculta  se-
reconstrucción  y  mantener  bajo  el
costo  de  codificación.  Podemos  per
mitirnos  utilizar  muchas  unidades
ocultas,  porque  incluso  con  un  mi
llón  de  unidades  se  requieren  sólo
 20  bits  para  expresar  la  vencedora.
 A
principios  del  decenio  pasado,
Teuvo  Kohonen,  de  la  Univer
sidad  de  Helsinki,  introdujo  en  el
algoritmo  de  aprendizaje  competitivo
una  modificación  importante.  Koho
nen  mostró  la  forma  de  conseguir
que  unidades  físicamente  adyacentes
aprendieran a representar patrones de
entrada  similares.  El  algoritmo  de
Kohonen no sólo adapta los pesos de
la  unidad oculta  ganadora,  sino  tam
bién  los  pesos  de  las  unidades  veci
nas  a  ésta.  La  capacidad  del  algorit
mo  para  trasladar  a  unidades  ocultas
cercanas  aquellos  patrones  de  entra
da  que  sean  similares  sugiere  la  po
sibilidad  de  que  el cerebro recurra  a
un  procedimiento  de  este  tipo  para
crear  los  mapas  topográficos  halla
dos  en  la  corteza  visual.
Podemos  clasificar  los  algoritmos
de  aprendizaje  no  supervisado  aten
diendo  al  tipo  de  representación
creado por ellos.  En los métodos ba
sados  en  componentes  principales,
las  unidades  ocultas  cooperan  y  la
representación  de  cada  pauta  de  en
trada  resulta  distribuida  por  todas
ellas.  En  los  métodos  competitivos,
las  unidades  ocultadas  compiten y  la
representación  del  patrón  de  entrada
 INVESTIGACIÓN  Y  CIENCIA, noviembre, 1992


<!-- Page 8 -->

queda  localizada  en  la  única  unidad
oculta  finalmente seleccionada.  Hasta
hace  poco,  casi  todas  las  investiga
ciones  sobre  aprendizaje  no  supervi
sado  centrábanse  en  una  u  otra  de
estas  dos  técnicas,  debido,  quizás,  a
que  daban pie a  reglas sencillas para
la modificación de los pesos.  Pero es
probable  que  los  algoritmos  más  po
tentes  e  interesantes  ocupen  alguna
posición  intermedia  entre  los  extre
mos  correspondientes  a  represen
taciones  distribuidas  puras  y  repre
sentaciones  puramente  locales.
Horace  B.  Barlow,  de  la  Universi
dad  de  Cambridge,  ha  propuesto  un
modelo  en  el  cual  cada  unidad  ocul
ta raramente se encuentra activa y en
que  la  representación  de  cada  patrón
de  entrada  hállase  distribuida  sobre
un  pequeño  número  de  unidades
ocultas  seleccionadas.  Barlow  y  co
laboradores  han  demostrado  que  este
tipo  de codificación puede ser apren
dido  obligando  a  las  unidades  ocul
tas  a  hallarse  incorrelacionadas  y
asegurando,  al  propio  tiempo,  que  la
codificación  oculta  permita  una  bue
na  reconstrucción  de  la  entrada.
 P
ara  nuestro  infortunio,  la  mayoría
de  los  métodos  utilizados  para
minimizar  el  costo  de  codificación
propenden  a  eliminar  toda  la  redun
dancia  entre  las  actividades  de  las
unidades  ocultas;  por  culpa  de  ello,
la  red  se  resiente  de  las  disfuncio
nes,  aunque sólo  sea  una  la que ope
re  incorrectamente.  No  es  éste  uno
de  los  rasgos  característicos  del  ce
rebro,  que  por  lo  común  no  resulta
muy  afectado  por  la  pérdida  de  unas
cuantas  neuronas.
Parece como  si el  cerebro  utilizase
los  denominados  "códigos  demográ
ficos",  en  los  cuales  la  información
es  representada  mediante  toda  una
población de  neuronas  activas.  Dicha
tesis  quedó  elegantemente  manifiesta
en  los  experimentos  de  David  L.
Sparks  y  colaboradores,  de  la  Uni
versidad  de  Alabama.  Mientras  estu
diaban  en  monos  el  mecanismo  en
virtud  del  cual  el  cerebro  indica  a
los  ojos  en  qué  dirección  han  de
moverse,  hallaron  que el movimiento
se  encuentra  codificado  por  las  acti
vidades  de  toda  una  población  de
células,  cada  una  de  las  cuales  re
presenta  un  movimiento  ocular  un
poco  diferente.  El  movimiento  resul
tante  corresponde  al  promedio  de
todos  los  codificados  por  las  célu
las  activas.  Al  anestesiar  algunas
células  cerebrales,  el  ojo  se  mueve
hacia  el  punto  asociado  con  el  pro
medio  de  las  células  activas  restan
tes.  Los  códigos  demográficos  pue
den  emplearse  para  codificar  no  sólo
 INVESTIGACIÓN  Y  CIENCIA, noviembre, 1992
IMAGEN DE LA NARIZ Y LA BOCA
UNIDADES
NASALES
UNIDADES BUCALES
7.  PROMINENCIAS DE ACTIVIDAD en conjuntos de unidades ocultas; representan
la imagen de una nariz  y  una boca. Estos códigos demográficos provocarán una pro
minencia en las unidades faciales si boca  y  nariz en encuentran  en  posición relativa
correcta  (izquierda).  De no ser así, las unidades nasales activas tratarán de crear una
prominencia en cierta ubicación mientras que las unidades bucales activas harán lo propio
en diferente Jugar. En consecuencia, la actividad aferente a las unidades faciales no
supera el valor umbral  y  no se forma prominencia en dichas unidades  (derecha).
 movrmtentos  oculares,  sino  también
rostros,  acaban  de  comprobar  Mal
colm P.  Young  y  Shigeru  Yamane  en
el  Instituto  RIKEN,  en  sus  experi
mentos  con  la  corteza  temporal  infe
rior  de  monos.
Tanto  en el caso de  los  movimien
tos oculares como en el de los rostros,
el  cerebro  ha  de  representar  entida
des  que  varían según  muchas  dimen
siones.  En  el  caso  de  un movimiento
ocular  las  dimensiones  sólo  son  dos;
mas,  para  rostros  y  similares  existen
dimensiones  como  felicidad,  pilosi
dad o  familiaridad,  amén  de  paráme
tros  espaciales  como  la  posición,  el
tamaño  y  la  orientación.  Si  asocia
mos  a  cada  célula  sensible  al  rostro
los  parámetros  faciales  que  la  hacen
más  activa,  podemos  promediar  estos
parámetros  sobre  una  población  de
células  activas  con  el  fin  de  descu
brir  los  parámetros  del  rostro  que  se
están  representando  por  ese  código
demográfico.  En  términos  abstractos,
cada  célula  facial  representa  un pun
to  particular  de  un  espacio  multidi
mensional de rostros  posibles,  y cada
faz  puede  ser  entonces  representada
por  activación  de  todas  las  células
que  codifican  caras  muy  parecidas,
evidenciándose  así  una  prominencia
de  actividad  en  el  espacio  multidi
mensional  de  rostros  posibles.
La  codificación poblacional  resulta
atractiva  porque  sigue  funcionando,
aun  cuando  se  lesionen  algunas  neu
ronas.  Ello  se  debe  a  que  la  pérdida
de un subconjunto de  neuronas toma
do  al  azar  tiene  escasos  efectos  so
bre  el  promedio  de  la  población.  El
mismo  razonamiento  subsiste  si  el
sistema  trabaja  con  prisa  y  no  toma
en  consideración  ciertas  neuronas.
Las neuronas se comunican  enviando
breves  impulsos  eléctricos  discretos
que  reciben el nombre de potenciales
de  acción;  si  el  intervalo  de  tiempo
 111


<!-- Page 9 -->

es  muy  breve,  puede  que  muchas  de
las  neuronas  "activas"  no  tengan
ocasión  de  enviar  impulsos.  No  obs
tante,  incluso  en  un  intervalo  tan
breve,  un código  demográfico  de una
parte  del  cerebro  puede  todavía  sus
citar  un  código  poblacional  aproxi
madamente  correcto  en  otra  región
del  cerebro.
 A
primera  vista,  la  redundancia  ca
racterística  de  los  códigos  de
mográficos  parece  incompatible  con
el  principio  de  que  la  construcción
de  representaciones  internas  debe  ha
cer  mínimo  el  costo  de  codificación.
. Felizmente,  podemos  superar  esta
dificultad  valiéndonos  de  una  medi
ción  menos  directa  del  costo  de  co
dificación.  Si  la  actividad  que  codi
fica  una  entidad  particular  consiste
en  una  protuberancia  lisa,  donde  la
actividad  se  amortigua  al  alejarnos
del  centro  según  un  patrón  normali
zado,  podremos  describir  entera  la
protuberancia  de  actividad  con  sólo
especificar su centro.  Por consiguien
te,  el costo de  la  descripción del  cen
tro  de  la  prominencia  de  actividad,
sumado  al  costo  de  la  descripción
de  la  forma  en  que  las  actividades
reales  de  las  unidades  se  apartan  de
la  prominencia  lisa  de  actividad  de
seada,  proporcionaría  una  medida  más
equitativa  del  costo  de  codificación.
Al  utilizar  esta  medida  del  costo
de codificación,  hallamos que los có
digos  poblacionales,  o  demográficos,
proporcionan  formas  convenientes
para  extraer  una  jerarquía  de  codifi
caciones  progresivamente  más  efi
cientes  de  las  señales  aportadas  por
los  sentidos.  Un  ejemplo  sencillo
permitirá  ilustrar  mejor  esta  tesis.
Imaginemos  que  a  una  red  neuronal
le  es  presentada  la  imagen  de  un
rostro.  Supongamos  que  la  red  con
tiene ya  un  conjunto  de  unidades  de
dicadas  a  la  representación  de  nari
ces,  otro  a  la  de  bocas  y  un  tercero
a las  representaciones  de ojos.  Cuan
do  le  sea  mostrada  una  cara,  se  pro
ducirá  una  prominencia  de  actividad
en  las  unidades  nasales,  otra  en  las
orales  y  dos  en  el  conjunto  de  uni
dades  oculares.  La ubicación de cada
una  de  estas  prominencias  de  activi
dad  representa  los  parámetros  espa
ciales  del  rasgo  codificado  por  la
prominencia.  La  descripción  de  las
cuatro  prominencias  de  actividad  es
más económica que la descripción de
la  imagen  en  rama;  obviamente,  to
davía  resultaría  más  económica  la
descripción  de  una  sola  prominencia
de  actividad  en  un  conjunto  de  uni
dades  faciales,  suponiendo,  evidente
mente,  que  la  nariz,  la  boca  y  los
ojos  guarden  entre  sí  las  relaciones
 112
 espaciales  correctas  para  definir  un
rostro.
Lo  cual  plantea  una  cuestión  inte
resante:  ¿cómo  puede  la red  verificar
que  las  partes  guardan  la  relación
debida  para  perfilar  una  imagen  fa
cial?  Hace  algún  tiempo,  Dana  H.
Ballard,  de  la  o  Universidad  de  Ro
chester,  introdujo  una  sagaz  técnica
para  resolver  este  tipo  de  problemas,
que funciona muy bien  en el caso de
códigos  demográficos.
Si  conocemos  la posición,  el tama
ño  y  la  orientación  de  una  nariz,
podemos  predecir  la  posición,  orien
tación  y  tamaño  del  rostro  al  que
pertenece,  porque  la  relación  espa
cial  entre  narices  y  caras  es  sen
siblemente  fija.  Establecemos  en
consecuencia  los  pesos  de  la  red
neuronal  de  forma  que  una  promi
nencia  de  actividad  en  las  unidades
nasales  trate  de  provocar  una  promi
nencia  de  actividad  convenientemen
te  relacionada  en  las  unidades  facia
les.  Pero  establecemos  también  los
umbrales  de  las  unidades  faciales  de
forma  que  las  nasales  no  consigan
por  sí  solas  provocar  la  activación
de  aquéllas.  Empero,  si  la  prominen
cia  de  actividad  de  las  unidades  co
rrespondientes  a  la  boca  intenta  asi
mismo  provocar  una  prominencia  de
unidades  faciales  en  el  mismo  lugar,
resulta  posible  superar  los  niveles
umbrales.  Lo  que así se ha consegui
do es verificar que la nariz y la boca
se  encuentran  correctamente  relacio
nadas  entre sí,  al comprobar que am
bas  predicen  los  mismos  parámetros
espaciales  para  el  rostro  entero.
Este método  de  verificación  de re
laciones  espaciales  llama  la  atención
porque  se  vale  del  tipo  de  redundan
cia entre distintas  partes  de  una  ima
gen  que  el  aprendizaje  no  supervi
sado  sabría  descubrir.  Parece,  pues,
natural  recurrir  al  aprendizaje  no
supervisado  para  hallar  códigos  de
mográficos  jerárquicos  y  extraer  en
tonces  figuras  complejas.  En  1986,
 Eric  Saund,  del  MIT,  exhibió  un mé
todo  de  aprendizaje  de  códigos  po
blacionales para detección de formas.
Parece  verosímil  que,  con  una  defi
nición  clara  del  costo  de  codifica
ción,  una  red  no  supervisada  podrá
descubrir  jerarquías  más  complejas
al  tratar  de  minimizar  el  costo  de
codificación  de  la  imagen.  En  la
Universidad  de  Toronto,  Richard  Ze
mel  y  quien  escribe  estamos  investi
gando  tal  posibilidad.
Utilizando  aprendizaje  no  supervi
sado  para  la  extracción  de  una  jerar
quía  de  representaciones  de  econo
mía  creciente  habría  que  acelerar
mucho  la  velocidad  de  aprendizaje
en  redes  grandes  multietápicas.  Cada
etapa  de  la  red  adapta  los  pesos  de
sus  líneas  de  ingreso  con  el  propó
sito  de  lograr  que  su  representación
sea  superior  a  la  de  la  etapa  prece
dente,  para  que  cada  etapa  aprenda
los  pesos  sin  referencia  a  los  pesos
de  etapas  subsiguientes.  Tal  estrate
gia elimina muchas  de las interaccio
nes  entre  pesos,  responsables  de  que
el  aprendizaje  por  retropropagación
sea  muy  lento  en  redes  profundas  y
poliestratificadas.
Todos  los  procedimientos  de  apren
dizaje  descritos  hasta  aquí  se  han
llevado  a  la  práctica  en  redes  neuro
nales  donde  la  actividad  fluye  sola
mente  en  dirección  progresiva,  desde
la  entrada  hacia  la  salida,  a  pesar  de
que  el  flujo  de  las  derivadas  del
error  pueda  cursar  en  sentido  retró
grado.  Otra  posibilidad  importante
reside  en  las  redes  cuya  actividad
fluye  en  bucles  cerrados.  Tales  redes
recurrentes  pueden  alcanzar  estados
estacionarios  o  exhibir  una  dinámica
temporal  compleja,  utilizable  quizá
para  producir  un  comportamiento  se
cuencial.  En  el  caso  de  que  lleguen
a  estados  estacionarios,  las  derivadas
del  error  son  calculables  por  méto
dos  mucho  más  sencillos  que  la  re-
 o  tropropagación.
 A
unque  los  investigadores  han de
sarrollado  potentes  algoritmos
de  aprendizaje,  de  gran  valor  prácti
co,  seguimos  sin saber cuáles son las
representaciones  y  procedimientos  de
aprendizaje  de  que  se  sirve  el  cere
bro.  Pero  antes  o  después,  los  estu
dios  computacionales  del  aprendizaje
en  redes  neuronales  artificiales  aca
barán  por  converger  en  los  métodos
descubiertos  por  evolución.  Cuando
así  acontezca,  muchísimos  datos  em
píricos  concernientes  al  cerebro  co
menzarán súbitamente  a adquirir sen
tido  y  se  tornarán  factibles  muchas
aplicaciones  desconocidas  de  las  re
des  neuronales.
 BIBLIOGRAFIA COMPLEMENTARIA
LEARNING  REPRESENTATIONS  BY  BACK
PRO PAGATING ERRORS.  David  E.  Rumel
hart, Geoffrey  E.  Hinton y Ronald  J.  Wil
liams  enNature,  vol.  323,  n.0  6188,  págs.
 533-536; 9  de octubre de  1986.
 CONNECI10NIST  LEARNING  PROCEDURES.
 Geoffrey E. Hinton, en  Artificial Intelli
gence,  vol.  40 ,  n.05  1-3,  págs.  185-234;
 septiembre de  1989.
 INTRODUCTION TO THE THEORY OF NEURAL
COMPUTATION.  J.  Hertz, A. Krogh y R. G.
Pa1mer. Addison-Wesley,  1990.
 THE  COMP UTATIONAL  BRAIN.  Patricia  S.
Churchland y Terrence  J.  Sejnowski. The
MIT Press/Bradford Books,  1992.
 INVESTIGACIÓN  Y  CIENCIA,  noviembre,  1992