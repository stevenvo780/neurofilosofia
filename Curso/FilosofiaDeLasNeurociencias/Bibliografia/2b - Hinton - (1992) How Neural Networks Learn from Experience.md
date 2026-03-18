# 2b - Hinton - (1992) How Neural Networks Learn from Experience

<!-- Page 1 -->

© 1992 SCIENTIFIC AMERICAN, INC


<!-- Page 2 -->

How Neural Networks
Learn from Experience
 Networks of artificial neurons can learn to represent
complicated information. Such neural networks may prOvide
inSights into the learning abilities of the human brain
 by Geoffrey E. Hinton
 T
he brain is a remarkable computer. It
interprets imprecise information from
the senses at an incredibly rapid rate.
It discerns a whisper in a noisy room, a face
in a dimly lit alley and a hidden agenda in a
political statement. Most impressive of all, the
brain  learns-without  any  explicit  instruc
tions-to create the internal representations
that make these skills possible.
Much is still unknown about how the brain
trains itself to process information, so theo
ries abound. To test these hypotheses, my col
leagues and I have attempted to mimic the brain's learning
processes by creating networks of artificial neurons. We con
struct these neural networks by first trying to deduce the es
sential features of neurons and their interconnections.  We
then typically program a computer to simulate these features.
Because our knowledge of neurons is incomplete and our
computing power is limited, our models are necessarily gross
idealizations of real networks of neurons. Naturally, we en
thusiastically debate what features are most essential in sim
ulating neurons. By testing these features in artificial neural
networks, we have been successful at ruling out all kinds of
theories  about  how the  brain  processes  information. The
models are also beginning to reveal how the brain may ac
complish its remarkable feats of learning.
In the human brain, a typical neuron collects signals from
others through a host of fine structures called dendrites. The
neuron sends out spikes of electrical activity through a long,
thin strand known as an axon, which splits into thousands
of branches. At the end of each branch, a structure called a
synapse converts the activity from the axon into electrical
effects that inhibit or excite activity in the connected neu
rons. When a neuron receives excitatory input that is suffi
ciently large compared with its inhibitory input, it sends a
spike of electrical activity down its axon. Learning occurs by
changing the effectiveness of the synapses so that the influ
ence of one neuron on another changes.
Artificial neural networks are typically composed of inter
connected "units," which serve as model neurons. The func
tion of the synapse is modeled by a modifiable weight, which
is associated with each connection. Most artificial networks
do not reflect the detailed geometry of the dendrites and ax-
 NETWORK OF NEURONS in the brain provides people with
the ability to assimilate information. Will simulations of such
networks reveal the underlying mechanisms of learning?
 ons, and they express the electrical output of
a neuron as a single number that represents
the rate of firing-its activity.
Each unit converts the pattern of incoming
activities that it receives into a single outgo
ing activity that it broadcasts to other units. It
performs this conversion in two stages. First,
it  multiplies  each  incoming  activity  by  the
weight on the connection and adds together
all  these  weighted  inputs to  get a  quantity
called the total input. Second, a unit uses an
input-output function that transforms the to
tal input into the outgoing activity [see "The Amateur Scien
tist," page  170].
 The behavior of an artificial neural network depends on
both the weights and the input-output function that is speci
fied for the units. This function typically falls into one of three
categories: linear, threshold or sigmoid. For linear units, the
output activity is proportional to the total weighted input.
For threshold units, the output is set at one of two levels, de
pending on whether the total input is greater than or less
than some threshold value.  For sigmoid units, the output
varies continuously but not linearly as the input changes.
Sigmoid units  bear  a  greater resemblance to real neurons
than do linear or threshold units, but all three must be consid
ered rough approximations.
To make a neural network that performs some  specific
task, we must choose how the units are connected to one
another, and we must set the weights on the connections ap
propriately. The connections determine whether it is possi
ble for one unit to influence another. The weights specify the
strength of the influence.
The commonest type of artificial neural network consists
of three groups, or layers, of units: a layer of input units is
connected to a layer of "hidden" units, which is connected to
a layer of output units. The activity of the input units repre
sents the raw information that is fed into the network. The
activity of each hidden unit is determined by the activities of
the input units and the weights on the connections between
 GEOFFREY E. HINTON has worked on representation and learn
ing in artificial neural networks for the past  20  years. in  1978  he
received his Ph.D. in artificial intelligence from the University of
Edinburgh. He is currently the Noranda Fellow of the Canadian
institute for Advanced Research and professor of computer sci
ence and psychology at the University of Toronto.
 SClENTIFIC AMERICAN  September 1992  145
© 1992 SCIENTIFIC AMERICAN, INC


<!-- Page 3 -->

INPUT ACTIVITY n  / WEIGHTED
 n  WEIGHT
 J  L
INPUT
2
UNIT
OUTPUT
ACTIVITY
 Jl
TOTAL
WEIGHTED"
INPUT
 Jl
Jl
 Jl
 I  N  P  UT -  Jl
OUTPUT
 IiiI � FUNCT  I  O  N � " __ •
 Jl
 IDEAUZAnON OF A NEURON processes activities, or signals. Each input activity is
multiplied by a number called the weight. The "unit" adds together the weighted in·
puts. It then computes the output activity using an input·  output function.
 the input and hidden units. Similarly,
the behavior of the output units de·
pends  on  the  activity  of  the  hidden
units and the weights between the hid
den and output units.
This simple type of network is inter
esting because the hidden units are free
to construct their own representations
of the input. The weights between the
input and hidden units determine when
each hidden unit is active, and so by
modifying these weights, a hidden unit
can choose what it represents.
We can teach a three-layer network
to perform a particular task by using
the following procedure. First, we pre
sent the network with training exam-
 •••
 COMMON NEURAL NETWORK consists
of  three  layers  of  units  that  are  fully
connected. Activity passes from the in
put  units  (green)  to  the  hidden  units
 (gray)  and  finally  to  the  output  units
 (yellow).  The reds and blues of the con
nections represent different weights.
 pIes, which consist of a pattern of activ
ities for the input units together with
the desired pattern of activities for the
output units. We then determine how
closely the actual output of the network
matches the desired  output. Next we
change the weight of each connection so
that the network produces a better ap
proximation of the desired output.
For example, suppose we want a net
work to recognize handwritten digits.
We might use an array of, say, 256 sen
sors, each recording the presence or
absence of  ink  in a small area of a sin
gle digit. The network would therefore
need 256 input units (one for each sen
sor), 10 output units (one for each kind
of digit) and a number of hidden units.
For each kind of digit recorded by the
sensors, the network should produce
high activity in the appropriate output
unit and low activity in the other out
put units.
To train the network, we present an
image of a digit and compare the actu
al activity of the 10 output units with
the desired activity. We then calculate
the error, which is defined as the square
of the difference between the actual and
the desired activities. Next we change
the weight of each connection so as to
reduce the error. We repeat this train
ing process for many different images
of each kind of digit until the network
classifies every image correctly.
To  implement  this  procedure,  we
need  to  change  each  weight  by  an
amount that is proportional to the rate
at which the error changes as the weight
is changed. This quantity-called the er
ror derivative for the weight, or Simply
146  SCIENTIFIC AMERICAN  September 1992
 the EW-is tricky to compute efficient
ly. One way to calculate the EW is to
perturb a weight slightly and observe
how the error changes. But that meth
od is inefficient because it requires a
separate perturbation for each of the
many weights.
Around 1974 Paul J. Werbos invent
ed a much more efficient procedure for
calculating the EW while he was work
ing toward a doctorate at Harvard Uni
versity. The procedure, now known as
the back-propagation algorithm, has be
come one of the more important tools
for training neural networks.
The  back-propagation  algorithm  is
easiest to understand if all the units in
the network are linear. The algorithm
computes each EW by first computing
the  EA,  the  rate  at  which  the  error
changes as the activity level of a unit is
changed. For output  units,  the EA is
simply the difference between the actu
al and the desired output. To compute
the EA for a hidden unit in the layer
just before the output layer, we first
identify all the weights between that
hidden unit and  the output  units to
which it is connected. We then multiply
those weights by the EAs of those out
put units and add the products. This
sum equals the EA for the chosen hid
den unit. After calculating all the EAs in
the hidden layer just before the output
layer, we can compute in like fashion
the EAs for other layers, moving from
layer to layer in a direction opposite to
the  way  activities  propagate  through
the network. This is what gives back
propagation its name. Once the EA has
been computed for a unit, it is straight
forward to compute the EW for each in
coming connection of the unit. The EW
is the product of the EA and the activity
through the incoming connection.
For nonlinear units, the back-propa
gation algorithm includes an extra step.
Before back-propagating, the EA must
be converted into the  £I,  the rate at
which the error changes as the total in
put received by a unit is changed. (The
details of this calculation are given in
the box on page 148.)
 T
he  back-propagation  algorithm
was largely ignored for years after
its invention, probably because its
usefulness  was  not  fully  appreciated.
 In  the early 1980s David E. Rumelhart,
then at the University of California at
San Diego, and David B.  Parker, then
at  Stanford  University,  independently
rediscovered  the  algorithm.  In  1986
Rumelhart, Ronald J. Williams, also at
the University of California at San Diego,
and  I  popularized  the  algorithm  by
demonstrating that it could teach the
hidden units to produce interesting rep-
© 1992 SCIENTIFIC AMERICAN, INC


<!-- Page 4 -->

resentations of complex input patterns.
The back-propagation algorithm has
proved  surprisingly  good  at  training
networks with multiple layers to per
form a wide variety of tasks. It is most
useful in situations in which the rela
tion between input and output is non
linear and training data are abundant.
By applying the algorithm, researchers
have produced neural networks that rec
ognize handwritten digits, predict cur
rency exchange rates and maximize the
yields of chemical processes. They have
even used the algorithm to train net
works that identify precancerous cells
in Pap smears and that adjust the mir
ror of a telescope so as to cancel out
atmospheric distortions.
Within the field of neuroscience, Rich
ard Andersen of the Massachusetts In
stitute of Technology and David Zipser
of the University of California at San
Diego showed that the back-propagation
algorithm is a useful tool for explain
ing the function of some neurons in the
brain's cortex. They trained a neural net
work to respond to visual stimuli us
ing back propagation. They then found
that the responses of the hidden units
were remarkably similar to those of real
neurons responsible for converting vi
sual information from the retina into a
form suitable for deeper visual areas of
the brain.
Yet back propagation has had a rather
mixed reception as a theory of how bio
logical neurons learn. On the one hand,
the  back-propagation  algorithm  has
made a valuable contribution at an ab
stract level. The algorithm is quite good
at creating sensible representations in
the hidden units. As a result, research
ers gained confidence in learning pro
cedures in which weights are gradually
adjusted to reduce errors. Previously,
many workers had assumed that such
methods would  be hopeless  because
they  would  inevitably  lead  to locally
optimal but globally terrible solutions.
For example, a digit-recognition network
might  consistently  home  in on a set
of weights that makes the network con
fuse ones and sevens even though an
ideal set of weights exists that would
allow the network to discriminate be
tween the digits. This fear supported a
widespread belief that a learning proce
dure was interesting only  if  it were guar
anteed to converge eventually on the
globally optimal solution. Back propa
gation  showed  that  for  many  tasks
global convergence was not necessary
to achieve good performance.
On  the  other  hand,  back  propaga
tion seems biologically implausible. The
most obvious difficulty is that informa
tion must travel through the same con
nections in the reverse direction, from
one layer to the previous layer. Clearly,
 How a Neural Network Represents Handwritten Digits
 � eural  network-con
sisting  of  256  input
units,  nine  hidden
units and  10  output units
has  been  trained  to  recog
nize handwritten digits. The
illustration below shows the
activities of the units when
the  network  is  presented
with  a  handwritten  3.  The
third output unit is most ac
tive.  The nine panels at the
right  represent  the  256  in
coming weights and the  10
 outgoing  weights  for  each
of the nine hidden units. The
red regions indicate weights
that  are  excitatory,  where
as  yellow  regions  represent
weights that are inhibitory.
 OUTPUT
HIDDEN
INPUT
SCIENTIFIC AMERICAN  September 1992  147
© 1992 SCIENTIFIC AMERICAN, INC


<!-- Page 5 -->

this does not happen in real neurons.
But this objection is actually rather su
perficial. The brain has many pathways
from later layers back to earlier ones,
and  it  could  use  these  pathways  in
many ways to convey the information
required for learning.
 A  more  important  problem  is  the
speed  of  the  back-propagation  algo
rithm. Here the central issue is how the
time required to learn increases as the
network gets larger. The time taken to
calculate the error derivatives for the
weights on a given training example is
proportional to the size of the network
because the amount of computation is
proportional to the number of weights.
But bigger networks typically require
more training examples, and they must
update the weights more times. Hence,
the learning time grows much faster
than does the size of the network.
The most serious objection to back
propagation as a model of real learning
is that it requires a teacher to supply
the desired output for each training ex
ample. In contrast, people learn most
things without the help of a teacher.
Nobody  presents  us  with  a  detailed
description of the internal representa
tions of the world that we must learn
to extract from our sensory input. We
learn to understand sentences or visual
scenes without any direct instructions.
weights in the network appropriately.
 All  these procedures share two char
acteristics: they appeal, implicitly or ex
pliCitly, to some notion of the quality
of a representation, and they work by
changing the weights to improve the
quality of the representation extracted
by the hidden units.
 I
n general, a good representation is
one that can be described very eco
nomically but nonetheless contains
enough information to allow a close ap
proximation of the raw input to be re
constructed. For example, consider an
image consisting of several ellipses. Sup
pose a device translates the image into
an array of a million tiny squares, each
of which is either light or dark. The im
age could be represented simply by the
positions of the dark squares. But oth
er, more efficient representations are
How can a network learn appropriate
internal representations if it starts with
no knowledge and no teacher? If a net
work is presented with a large set of pat
terns but is given no information about
what to do with them, it apparently does
not have a well-defined problem to solve.
Nevertheless,  researchers  have  devel
oped several general-purpose, unsuper
vised  procedures that can adjust the
 The Back-Propagation Algorithm
 T
o  train a neural network to perform some task, we
must adjust the weights of each unit in such a way
that the error between the desired output and the ac
tual output is reduced. This process requires that the neural
network compute the error derivative of the weights (EW).
In other words, it must calculate how the error changes as
each weight is increased or decreased slightly. The back
propagation algorithm is the most widely used method
for determining the EW.
To implement the back-propagation algorithm, we must
first describe a neural network in mathematical terms. As
sume that unit j is a typical unit in the output layer and
unit i is a typical unit in the previous layer. A unit in the
output layer determines its activity by following a two
step procedure.  First, it computes the total weighted in
put  Xl'  using the formula
 Xj =  �)�  W;j'
 where  Vi  is the activity level of the ith unit in the previous
layer and  wi}  is the weight of the connection between the
ith and jth unit.
Next, the unit calculates the activity  Vj  using some func
tion of the total weighted input. Typically, we use the sig
moid function:
 1
 )) =
1  +  e-Xj  •
 Once the activities of all the output units have been de
termined, the network computes the error  'E,  which is de
fined by the expression
 'E =  ±L  ()j  -dj)  2,
 j
 where  Vj  is the activity level of the jth unit in the top layer
and  dj  is the desired output of the jth unit.
The back-propagation algorithm consists of four steps:
 1.  Compute how fast the error changes as the activity
of an output unit is changed. This error derivative (EA) is
 148  SCIENTIFIC AMERICAN  September 1992
 the difference between the actual and the desired activity.
 a'E
EAj =
a Y j
= Yj-dj
 2.  Compute how fast the error changes as the total input
received by an output unit is changed. This quantity (EI) is
the answer from step  1  multiplied by the rate at which the
output of a unit changes as its total input is changed.
 a'E  a'E  d yj
Elj =  -s--  =  -s--  - d  = EAjyj(l-y)
UXj  U Y j  Xj
 3.  Compute how fast the error changes as a weight on
the connection into an output unit is changed. This quan
tity (EW) is the answer from step  2  multiplied by the activ
ity level of the unit from which the connection emanates.
 a'E  a'E  aXj
EWij=  :s--  =  -s--  :s--  = EljYi
uWij  UXj uWij
 4.  Compute how fast the error changes as the activity
of a unit in the previous layer is changed. This crucial step
allows back propagation to be applied to multilayer net
works.  When the activity of a unit in the previous layer
changes, it affects the activities of all the output units to
which it is connected. So to compute the overall effect on
the error,  we add together all these separate effects on
output units. But each effect is simple to calculate. It is the
answer in step  2  multiplied by the weight on the connec
tion to that output unit.
 _  a'E  _  �  a'E aXj  _  �
 EAi  -  �  -  £..J  �  �  -  £..J  Elj  W ij
Y,  j  XJ  Y,  j
 By using steps  2  and  4,  we can convert the EAs of one layer
of units into EAs for the previous layer. This procedure can
be repeated to get the EAs for as many previous layers as
desired . Once we know the EA of a unit, we can use steps
 2  and  3  to compute the EWs on its incoming connections.
© 1992 SCIENTIFIC AMERICAN, INC


<!-- Page 6 -->

also possible. Ellipses differ in only five
ways: orientation, vertical position, hor
izontal position, length and width. The
image can therefore be described using
only five parameters per ellipse.
Although describing an ellipse by five
parameters requires more bits than de
scribing a single dark square by two co
ordinates, we get an overall savings be
cause far fewer parameters than coor
dinates are needed. Furthermore, we do
not lose any information by describing
the ellipses in terms of their parame
ters:  given the parameters of the el
lipse, we could reconstruct the original
image if we so desired.
Almost all the unsupervised learning
procedures can be viewed as methods
of minimizing the sum of two terms, a
code cost and a reconstruction cost.
The code cost is the number of bits re
quired to describe the activities of the
hidden units. The reconstruction cost
is the number of bits required to de
scribe the misfit between the raw input
and the best approximation to it that
could be reconstructed from the activ
ities of the hidden units. The recon
struction  cost  is  proportional  to  the
squared difference between the raw in
put and its reconstruction.
Two simple methods for discovering
economical codes allow fairly accurate
reconstruction of the input: principal
components learning and competitive
learning. In both approaches, we first
decide how economical the code should
be and then modify the weights in the
network  to minimize the reconstruc
tion error.
 A  principal-components  learning
strategy is based on the idea that if the
activities of pairs of input units are cor
related in some way, it is a waste of bits
to describe each input activity separate
ly.  A  more efficient approach is to ex
tract and describe the principal compo
nents-that is, the components of vari
ation shared by many input units. If we
wish to discover, say, 10 of the princi
pal components, then we need only a
single layer of 10 hidden units.
Because such networks represent the
input  using  only  a  small  number  of
components, the code cost is low. And
because the input can be reconstructed
quite well from the principal compo
nents, the reconstruction cost is small.
One way to train this type of net
work is to force it to reconstruct an
approximation to the input on a set of
output units. Then back propagation
can be used to minimize the difference
between the actual output and the de
sired output. This process resembles
supervised  learning, but  because  the
desired output is exactly the same as
the input, no teacher is required.
 � s
0-
�0 �
O-<:'���
 Q"
 •
 ..  .  .  .. ++
 r
•
•
•
•
 y
Y
X  )  X  )
 TWO FACES composed of eight ellipses can be represented as many points in two
dimensions. Alternatively, because the ellipses differ in only five ways-orienta
tion, vertical position, horizontal position, length and width-the two faces can be
represented as eight points in a five-dimensional space.
 Many  researchers,  including  Ralph
Unsker of the IBM Thomas]. Watson
Research Center and Erkki Oja of Lap
peenranta University of Technology in
Finland, have discovered alternative al
gorithms for learning principal compo
nents. These algorithms are more bio
logically plausible because they do not
require output units or back propaga
tion. Instead they use the correlation
between the activity of a hidden unit
and the activity of an input unit to de
termine the change in the weight.
When a neural network uses princi
pal-components learning, a small num-
 SIAMESE
PERSIAN
TABBY
GUERNSEY
 ber of hidden units cooperate in repre
senting the input pattern. In contrast,
in competitive learning, a large number
of hidden units compete so that a sin
gle hidden unit is used to represent any
particular input pattern. The selected
hidden unit is the one whose incoming
weights are most similar to the input
pattern.
Now suppose we had to reconstruct
the input pattern solely from our knowl
edge of which hidden unit was chosen.
Our best bet would be to copy the pat
tern of incoming weights of the chosen
hidden unit. To  minimize  the  recon-
 /)(  DACHSHUND
 �  RETRIEVER
 ..
�  TERRIER
 J
�  HUSKY
 e ____  PATTERN OF  WEIGHTS
.�D :  UNIT
 �  tI �  KODIAK
 •  �  BROWN
POLAR
 COMPETITIVE LEARNING can be envisioned as a process in which each input pat
tern attracts the weight pattern of the closest hidden unit. Each input pattern repre
sents a set of distinguishing features. The weight patterns of hidden units are ad
justed so that they migrate slowly toward the closest set of input patterns. In this
way, each hidden unit learns to represent a cluster of similar input patterns.
 SCIENTIFIC AMERICAN  September 1992  149
© 1992 SCIENTIFIC AMERICAN, INC


<!-- Page 7 -->

struction error, we should move the pat
tern of weights of the winning hidden
unit even closer to the input pattern.
This is what competitive learning does.
If the network is presented with training
data that can be grouped into clusters
of similar input patterns, each hidden
unit learns to represent a different clus
ter, and its incoming weights converge
on the center of the cluster.
Like the principal-components algo
rithm, competitive learning minimizes
the reconstruction cost while keeping
the code cost low. We can afford to use
many hidden units because even with a
million units it takes only 20 bits to say
which one won.
Unfortunately,  most  current  meth
ods of minimizing the code cost tend
to eliminate all the redundancy among
the activities of the hidden units. As a
result, the network is very sensitive to
the malfunction of a single hidden unit.
This feature is uncharacteristic of the
brain, which is generally not affected
greatly by the loss of a few neurons.
The  brain  seems  to  use  what  are
known as population codes, in which
information is represented by a whole
population of active neurons. That point
was  beautifully  demonstrated  in  the
experiments of David L. Sparks and his
co-workers at the University of Alaba-
rameters of the face being represent
ed by that population code. In abstract
terms, each face cell represents a partic
ular point in a multidimensional space
of possible faces, and any face can then
be represented by activating  all  the cells
that encode very similar faces, so that a
bump of activity appears in the multidi
mensional space of possible faces.
Population  coding  is  attractive  be
cause it works even if some of the neu
rons are damaged. It can do so because
the loss of a random subset of neurons
has little effect on the population aver
age.  The  same  reasoning  applies  if
some neurons are overlooked when the
In the early 1980s Teuvo Ko
honen of Helsinki University in
troduced an important modifi
cation of the competitive learn
ing algorithm. Kohonen showed
how to make physically adja
cent hidden units learn to rep
resent  similar  input  patterns.
Kohonen's  algorithm  adapts
not only the weights of the win
ning hidden unit but also the
weights of the winner's neigh
bors. The algorithm's ability to
map  similar  input  patterns
to  nearby  hidden  units  sug
gests that a procedure of this
type  may  be  what  the  brain
 POPULATION CODING represents a multiparameter ob
ject as a bump of activity spread over many hidden
units.  Each  disk represents  an  inactive  hidden  unit.
Each cylinder indicates an active unit, and its height de
picts the level of activity.
 system is in a hurry. Neurons
communicate  by  sending  dis
crete spikes called action po
tentials,  and  in  a  very  short
time interval many of the "ac
tive"  neurons  may  not  have
time to send a spike. Neverthe
less, even in such a short inter
val, a population code in one
part of the brain can still give
rise to an approximately cor
rect population code in another
part of the brain.
At first sight, the redundancy
in population codes seems in
compatible  with  the  idea  of
constructing internal represen
tations that minimize the code
uses to create the topographic maps
found in the visual cortex [see "The Vi
sual Image in Mind and Brain," by Se
 mir  Zeki, page 68].
Unsupervised learning algorithms can
be classified according to the type of
representation they create. In principal
components methods, the hidden units
cooperate,  and  the  representation  of
each input pattern is distributed across
all of them.  In  competitive  methods,
the hidden units compete, and the rep
resentation of the input pattern is lo
calized in the single hidden unit that is
selected. Until recently, most work on
unsupervised learning focused on one
or  another  of  these  two  techniques,
probably because they lead to simple
rules for changing the weights. But the
most  interesting  and  powerful  algo
rithms probably lie somewhere between
the extremes of purely distributed and
purely localized representations.
Horace B. Barlow of the University of
Cambridge has  proposed  a model in
which each hidden unit is rarely active
and the representation of each input
pattern is distributed across a small
number of selected hidden units.  He
and his co-workers have shown that this
type of code can be learned by forcing
hidden units to be uncorrelated while
also ensuring that the hidden code al
lows good reconstruction of the input.
mao While investigating how the brain
of a monkey instructs its eyes where
to move, they found that the required
movement is encoded by the activities
of a whole population of cells, each of
which represents a somewhat different
movement. The eye movement that is
actually made corresponds to the aver
age of all the movements encoded by
the active cells. If some brain cells are
anesthetized, the eye moves to the point
associated with the average of the re
maining active cells. Population codes
may be used to encode not only eye
movements but also faces, as shown by
Malcolm P. Young and Shigeru Yamane
at the RIKEN Institute in Japan in recent
experiments on the inferior temporal
cortex of monkeys.
 F
or both eye movements and fac
es, the brain must represent enti
ties that vary along many differ
ent dimensions. In the case of an eye
movement, there are just two dimen
sions, but for something like a face,
there are dimenSions such as happiness,
hairiness or familiarity, as well as spatial
parameters such as position, size and
orientation. If we associate with each
face-sensitive cell the parameters of the
face that make it most active, we can av
erage these parameters over a popula
tion of active cells to discover the pa-
150  SCIENTIFIC AMERICAN  September 1992
 cost. Fortunately, we can overcome this
difficulty by using a less direct mea
sure of code cost. If the activity that en
codes a particular entity is a smooth
bump in which  activity  falls  off in a
standard way as we move away from
the center, we can describe the bump
of activity completely merely by specify
ing its center.  So a fairer  measure of
code cost is the cost of describing the
center of the bump of activity plus the
cost of describing how the actual activi
ties of the units depart from the de
sired smooth bump of activity.
Using this measure of the code cost,
we find that population codes are a con
venient way of extracting a hierarchy of
progressively more efficient encodings
of the sensory input. This point is best
illustrated by a simple example. Con
sider a neural network that is present
ed with an image of a face. Suppose the
network  already  contains  one  set  of
units dedicated to representing noses,
another set for mouths and another set
for eyes. When it is shown a particular
face, there will be one bump of activity
in the nose units, one in the mouth
units and two in the eye units. The lo
cation of each of these activity bumps
represents the spatial parameters of the
feature encoded by the bump. Describ
ing the four activity bumps is cheaper
than describing the raw image, but it
© 1992 SCIENTIFIC AMERICAN, INC


<!-- Page 8 -->

would obviously be cheaper still to de
scribe a single bump of activity in a set
of face units, assuming of course that
the nose, mouth and eyes are in the cor
rect spatial relations to form a face.
This raises an interesting issue: How
can the network check that the parts
are correctly related to one another to
make a face? Some time ago Dana H.
Ballard of the University of Rochester
introduced a clever technique for solv
ing this type  of problem that works
nicely with population codes.
If we know the position, size and ori
entation of a nose, we can predict the
position, size and orientation of the face
to  which it belongs because the spa
tial relation between noses and faces
is roughly fixed. We therefore set the
weights in the neural network so that a
bump of activity in the nose units tries
to cause an appropriately related bump
of activity in the face units. But we also
set the thresholds of the face units so
that the nose units alone are insufficient
to activate the face units. If, however,
the bump of activity in the mouth units
also tries to cause a bump in the same
place in the face units, then the thresh
olds can be overcome.  In  effect, we have
checked that the nose and mouth are
correctly related to each other by check
ing that they both predict the same spa
tial parameters for the whole face.
This method of checking spatial re
lations is intriguing because it makes
use of the kind of redundancy between
different parts of an image that unsu
pervised learning should  be  good  at
finding. It therefore seems natural to
try to use unsupervised learning to dis
cover hierarchical population codes for
extracting  complex  shapes.  In  1986
Eric Saund of M. LT. demonstrated one
method of learning simple population
codes for shapes. It seems likely that
with a clear definition of the code cost,
an unsupervised network  will  be able
to discover more complex hierarchies
by trying to minimize the cost of cod
ing the image. Richard Zemel and I at
the University of Toronto are now in
vestigating this possibility.
By using unsupervised learning to ex
tract a hierarchy of successively more
economical representations, it should be
possible to improve greatly the speed
of learning in large multilayer networks.
Each layer of the network adapts its in
coming weights to make its representa
tion better than the representation in
the previous layer, so weights in one
layer can be learned without reference
to weights in subsequent layers. This
strategy eliminates many of the interac
tions between weights that make back
propagation learning very slow in deep
multilayer networks.
 IMAGE OF NOSE AND MOUTH
MOUTH UNITS
 BUMPS OF ACTIVITY in sets of hidden units represent the image of a nose and a
mouth. These population codes  will  cause a bump in the face units  if  the nose and
mouth have the correct spatial relation (left). If not, the active nose units  will try  to
create a bump in the face units at one location while the active mouth units  will  do
the same at a different location. As a result, the input activity to the face units does
not exceed a threshold value, and no bump is formed in the face units  (right).
 All  the learning procedures discussed
thus far are implemented in neural net
works in which activity flows only in the
forward direction from input to output
even though error derivatives may flow
in the backward direction. Another im
portant possibility to consider is net
works in which activity flows around
closed loops. Such recurrent networks
may settle down to stable states, or they
may exhibit complex temporal dynam
ics that can be used to produce sequen
tial  behavior.  If  they  settle  to stable
states, error derivatives can be comput
ed using methods much simpler than
back propagation.
Although investigators have devised
some powerful learning algorithms that
are of great practical value, we still do
not know which representations and
learning procedures are actually used
by the brain. But sooner or later com
putational studies of learning in artifi
cial neural networks  will  converge on
the methods discovered by evolution.
When that  happens,  a  lot  of diverse
empirical data about the brain  will  sud
denly make sense, and many new ap
plications of artificial neural networks
 will  become feasible.
 FURTHER READING
 lEARNING  REPRESENTATIONS  BY  BACK
PROPAGATING ERRORS.  David E. Rumel
hart,  Geoffrey E. Hinton and Ronald  J.
 Williams in  Nature,  Vol.  323,  No.  6188,
 pages  533-536;  October  9, 1986.
 CONNECTIONIST lEARNING PROCEDURES.
 Geoffrey  E.  Hinton  in  Artificial Intelli-
gence,  Vol.  40,  Nos.  1-3,  pages  185-234;
 September  1989.
 INTRODUCTION TO THE THEORY OF NEU
 RAL  COMPUTATION.  J.  Hertz,  A.  Krogh
and R. G. Palmer. Addison-Wesley,  1990.
 THE COMPUTATIONAL  BRAIN.  Patricia  S.
Churchland and Terrence]. Sejnowski.
The MIT Press/Bradford Books,  1992.
SCIENTIFIC AMERICAN  September 1992  151
© 1992 SCIENTIFIC AMERICAN, INC