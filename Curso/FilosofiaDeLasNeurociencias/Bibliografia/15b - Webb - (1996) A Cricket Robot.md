# 15b - Webb - (1996) A Cricket Robot

<!-- Page 1 -->

A Cricket Robot
 W
hen we describe a behav-
ior as robotic, it is usually
to call attention to its pre-
dictability. Whether the subject is a bored
supermarket cashier or an acquaintance
not known for spontaneity, robotic be-
havior might be characterized as a series
of seemingly automatic reactions in re-
sponse to interactions or events.
Insect behavior, too, might be consid-
ered to be robotic or automatic. De-
tailed research into the specific actions
of some insects, however, has revealed a
great deal more variety than this char-
acterization suggests. The female crick-
et attempting to locate a mate from the
male’s calling song is a good example. In
some respects, this activity seems very
simple: when she hears the appropriate
song, the insect may continue to walk
toward it for hours, even if placed on a
treadmill.
Nevertheless, investigations over the
past 20 years have uncovered many sub-
tle details of this basic behavior. For in-
stance, a female can distinguish the song
of a male of her own species from any
other noise and approach that one male
even when other males of her own spe-
cies are serenading her simultaneously
with almost identical songs. We do not
yet understand precisely how she ac-
complishes this and related feats.
Similarly, the behavior of robots can
seem at once straightforward and com-
plex. No matter how simple a robot
may be, the interaction of its sensors and
actuators with the environment is al-
ways complicated. This means that it is
usually more difficult than it seems to
get a consistent and reliable automatic
response to a stimulus. For example,
moving a wheeled robot in a straight line
A Cricket Robot
 Can a simple electromechanical system perform
a complex behavior of a living creature?
There was one sure way to find out
 by Barbara Webb
94  S cientific  A merican  December 1996


<!-- Page 2 -->

is not just a matter of supplying motors
on each side with the same power. Me-
chanical inaccuracies of motors, gears
and wheels will require a slightly differ-
ent power to get the same turn rate
from the wheels. Friction and inertial
forces will vary, and the power will have
to be adjusted constantly from mea-
surements of the turning rate and feed-
back of the error. Even when the wheels
turn at the same rate, unevenness in the
ground and slipperiness will move the
robot off a true straight line unless it
has some compass sense that allows it
to change wheel speeds to compensate.
Counteracting the complex effects of
the environment thus seems to require
control algorithms of a matching so-
phistication. But does it really? An al-
ternative, increasingly popular approach
in robotics is to design the robot so that
its interaction with the environment is
exploited rather than resisted. For exam-
ple, instead of attempting to force the
robot to travel a straight-line course, it
could be programmed to follow con-
tours of the terrain that lead to its desti-
nation — circumventing rather than con-
quering hills in its path. Through this
type of approach, what seems like com-
plex behavior in a robot can come from
a surprisingly uncomplicated control
algorithm.
To investigate these issues, I designed
and built a cricket robot based on rela-
tively simple hardware, principles and
algorithms. The behavior of this robot,
I hoped, would have much of the com-
plexity of the insect itself when con-
fronted with a similar environment. I
also hoped to cast some light on the
neurobiology that may underlie cricket
behavior.
Of course, it was not possible to mod-
el in minute detail all aspects of a crick-
et’s behavior, so I chose the specific but
significant activity mentioned above:
the ability of the female to identify and
locate a singing male of her species.
(This process of moving to a specific
sound, along with all the sensory and
locomotive requirements that it entails,
is known as phonotaxis.)
Female crickets are quite selective with
regard to the sounds that attract them.
First, the song’s underlying, or carrier,
frequency is its most distinctive feature.
Males can produce an almost pure tone
by rubbing one wing against the other,
and females of the same species respond
best to that tone and not to sounds of
lower or higher frequency than the car-
rier, which is generally around 4.5 kilo-
hertz. Second, the rhythm of the song
as the male opens and closes its wings is
also distinctive and species-specific. Each
rub of the wings creates the characteris-
tic burst of sound known as a syllable;
experiments have established that the
rate with which syllables are repeated by
the male insect  — the syllable repetition
rate — is the most essential feature of this
pattern for eliciting a female response.
Although in many species the noise is
more extensively patterned — for exam-
ple, syllables are repeated three to five
times in a group known as a chirp, fol-
lowed by a period of silence before the
next chirp — many females will respond
to syllables that are repeated over and
over again, separated by an unvarying
interval. Not only must the female crick-
et distinguish the correct rhythm and
sound of a male of her species, but she
must also often do so when a number
of potential partners are simultaneously
serenading her. Somehow she manages
to direct herself toward only one of
these suitors, ignoring the rest.
In the laboratory the main preference
shown is for louder songs; presented
with two songs that both have the cor-
rect syllable repetition rate, the female
will move toward the louder of the two.
A louder song may indicate a male who
 A Cricket Robot  S cientific  A merican  December 1996  95
 CRICKET ROBOT mimicked one behavior of a fe-
male cricket: locating a male from the sound of his
chirping. In the experiments, the robot moved in a
small arena toward a speaker emitting a noise mod-
eled on the sound produced by a male cricket. Like a
real female cricket, the robot processed the sounds
immediately on “hearing” them, enabling it to cor-
rect its course as it moved toward its destination.
The path it took to the speaker zigzagged much like
the route of a female cricket moving toward a mate;
this path was never more than twice the direct dis-
tance from the starting point to the speaker.
 LAURIE GRACE (
digital composition
); BARBARA WEBB (
photograph
)


<!-- Page 3 -->

is larger or simply closer. Other than
loudness, however, researchers have not
clearly established any other specific
characteristics of naturally occurring
songs that females prefer.
After choosing the correct sound and,
if necessary, selecting from among sever-
al examples of it, the female cricket must
actually locate the source of the sound —
that is, move toward and find it. The
only evidence that the cricket has rec-
ognized or chosen the sound is the fact
that she moves toward it. Therefore, a
single process — one that could locate
only certain kinds of sound — might suf-
fice to produce the observed behavior.
If this were the case, the apparently se-
lective behavior of the female cricket
could be replicated by building a robot
in which the mechanism that enables it
to locate sound works only for the right
kind of sound.
 Through a Cricket’s Ear
 A
cricket has a rather ingenious sen-
sory mechanism that enables it to
detect the direction of sound sources.
Its ears are on its forelegs, and because
the cricket’s body is a poor shield for
low-frequency sounds, there is little dif-
ference in the strength, or amplitude, of
the sound received at each of its two
ears. There is a difference in the times at
which the sound arrives, but this differ-
ence is measured in microseconds and
cannot be timed by the cricket’s audito-
ry neurons.
Sound passes along a tracheal tube
that connects the ears to each other and
to further openings, called spiracles, on
the cricket’s body. Hence, sound arrives
at the ear both externally and internally
through the tube, having traveled dif-
ferent distances. The time that it takes
for sound to travel through the tube
shifts its phase. At the eardrum, the
waves reinforce or cancel one another
according to their relative phase, which
also depends on the direction of the
sound. Therefore, the amplitude of the
resulting eardrum vibration represents
the direction of the sound source [ see
bottom illustration on opposite page ].
Conveniently, the amplitude is larger
on the side closer to the sound.
The “ears” of the robot I built were
miniature microphones. With a great
deal of help, I designed an electronic cir-
cuit that processed the signals in a way
that mimicked the basic functions of a
cricket’s auditory system. One of the
fundamental principles of this system is
that the cricket’s tracheal tube best trans-
mits sounds of the desired calling song
frequency, and the phase shifts in this
transmission are suited to that particular
wavelength. The mechanism does not
reliably detect the direction of sounds
at other frequencies. In other words, by
relying on phase shifts tuned only to the
right wavelength, the auditory system
inherently ignores sounds of the wrong
wavelength, because they do not pro-
duce a directional response.
The robot was a small vehicle, cubic
in shape and about 20 centimeters on a
side. Built with Lego bricks, the robot
had two drive wheels and a caster on
the front. As it was rather larger than a
cricket, its ears were farther apart, and
so I chose a lower frequency (two kilo-
hertz) for the song that would attract it.
The output from the microphone cir-
cuit provided a signal every 30 millisec-
onds. This signal corresponded to the
eardrum vibration. Mimicking what oc-
curs in a real cricket auditory system,
the signal from the circuit had a high-
er amplitude on the side of the sound
source, for sound of the right frequen-
cy. In practice, however, the robot’s ears
signaled the correct direction at best 90
percent of the time because of unwant-
ed noise — in the speaker, in the room
and from the robot’s own motors.
The difference in vibration amplitude
at the eardrums has to be neurally en-
coded if it is to be compared and used to
drive the motor response. In the cricket,
approximately 50 sensory neurons per
ear converge on a small number of in-
terneurons in the insect’s central nervous
system. Two of these interneurons — one
connected to the left ear and the other
to the right — form a pair that appears to
be critical to phonotaxis. Neurophysi-
ologists can measure and manipulate
the firing of this neuron pair while the
animal is walking in response to sound.
By doing so, they have shown that the
animal always turns to the side on which
one member of this neuron pair is re-
sponding more strongly.
When a burst of sound occurs, each
member of the neuron pair sums the in-
put from the sensory neurons in the cor-
 A Cricket Robot 96  S cientific  A merican  December 1996
 JEFF FOOTT
 Bruce Coleman Inc.


<!-- Page 4 -->

responding ear and, after a threshold is
reached, starts firing. How quickly the
firing starts depends on the strength of
the input; how frequently the firing oc-
curs also closely correlates with the
strength of the input. Therefore, there
are two ways that the eardrum vibra-
tion is encoded by the activity of neu-
rons: the latency (the time that passes
before the neurons start firing) and the
rate of neural firing during the burst of
sound. After a burst of sound ends, the
neuron takes a short while to return to
its resting state. If another sound begins
during this recovery time, the firing
recommences more rapidly because the
neuron is already close to its threshold.
The most straightforward way the fe-
male cricket’s nervous system might use
this response to locate the sound is, at
each sound burst, to turn to the side on
which the firing begins first. (This way,
she would be turning toward the side
on which the sound is closer.) A signifi-
cant consequence of this scenario is that
a response occurs only at the beginning
of a sound burst. This notion fits neatly
with the fact that syllable repetition is
the most important factor in determin-
ing whether a female responds to a song.
If the sound is continuous or repeats
more rapidly than the neuron’s recovery
time, the neuronal firing will be contin-
uous. In this case, the side on which the
neurons began firing first will be unclear.
If, on the other hand, the sound repeats
too slowly, the information about which
way to turn will arrive less frequently
and may not be enough to steer the fe-
male toward the male. A particular rep-
etition rate between these two extremes
would of course be ideal.
 Song of the Cricket Robot
 T
he alternative to comparing onset
times  is  comparing  firing  rates,
which seems to cause the cricket to turn
to the side that is firing more frequently.
(This response also corresponds to an in-
sect’s turning toward the side on which
the sound is closer.) This mechanism is
the more popular hypothesis among
neurophysiologists, although no defini-
tive evidence exists for either possibili-
ty. Because firing rate will signal direc-
tion for any sound pattern — continuous
sound, fast or slow syllable repetition —
this hypothesis requires that the cricket
have some additional neural processes
by which it picks out songs of the right
rhythm. Indeed, certain neurons have
been found in the cricket brain that ap-
pear to have this property.
These facts notwithstanding, for my
robot I used an algorithm based on com-
paring the onset time and ignoring the
firing rate. I wanted to test whether such
a mechanism can explain the observed
selectivity  of  the  female  for  certain
songs, without further neural processes.
Because my robot’s sensory system de-
pended on having a particular wave-
length of sound, and its “neural” com-
parator depended on having a particu-
 A Cricket Robot  S cientific  A merican  December 1996  97
 RESPONSE OF AUDITORY INTERNEURON depends on the direction of the sound
source. The mechanical amplitude of the eardrum vibration ( top waveforms ) is greater
at the eardrum closer to the sound source ( top left ). Each “square” in the waveform is
in response to one sound, or syllable, from a male cricket. The interneuron that corre-
sponds to the closer ear responds to the higher-amplitude vibration by rising in poten-
tial relatively quickly and by peaking, or “spiking,” in potential six times ( lower left ).
For the farther ear, the rise in potential is slower and the spikes fewer ( lower right ).
 AMPLITUDE AT EARDRUM
 EAR CLOSER TO SOUND  EAR FARTHER FROM SOUND
 AMPLITUDE AT EARDRUM
NEURAL RESPONSE  NEURAL RESPONSE
5-millisecond latency
6 spikes
per syllable
12-millisecond latency
2 spikes
per syllable
 CRICKET’S BODY channels sounds through an internal tra-
cheal tube that connects the insect’s ears to each other and to
two openings, called spiracles, at the top of the body ( above ).
Each ear is near a knee on a front leg ( photograph, left ). Because
of the tube, sound reaches each ear in two ways: directly from
the sound source, and indirectly, via the tube, from the spiracles
and other ear. At the ear closer to the sound source, the sound
that has traveled directly to the outside of the eardrum has trav-
eled a shorter distance than the sound arriving through the tube
at the inside of the eardrum. Because of this difference in dis-
tance, the sound arriving at one side of this eardrum is out of
phase with respect to the sound arriving at the other side. At this
eardrum the out-of-phase waves are summed, causing a vibra-
tion of greater amplitude, sensed as a louder sound.
 SPIRACLES
SOUND IN PHASE
RIGHT EARDRUM  SOUND FROM
CRICKET’S LEFT SIDE
LEFT EARDRUM
SOUND OUT OF PHASE
 LAURIE GRACE
LAURIE GRACE


<!-- Page 5 -->

lar rhythm, it did not need to select the
right song actively  — it simply did not
work for the wrong song. If my robot
performed well in locating appropriate
songs, this would lend credence to the
hypothesis that the location mechanism
of real crickets could also function in
this way.
Programming the robot to function
in this manner was relatively easy. Its
“brain” was a 68000-type microproces-
sor, programmed to take various sensor
inputs and to send start and stop com-
mands to the right and left motors. In
addition to the microphones and the cir-
cuit that modeled the phase delay and
canceling in the cricket’s auditory sys-
tem, the robot had infrared and bump
switches that could detect obstacles. The
control program itself consisted of just
100 or so lines of code.
The readings from the ear circuit were
summed over time. If one side reached
a preset threshold first, the wheel on
that side was briefly stopped, causing a
small change in direction. If the sound
continued, the sum would stay above
the threshold and no further response
would occur. If the sound stopped, the
sum fell back toward zero, mimicking
the recovery time of the cricket neuron.
Thus, only discontinuous sound that re-
peated frequently would cause the robot
to respond often enough to turn toward
the sound.
Because the robot processed sound
more slowly than a cricket, the syllable
pattern of the song had to be slowed by
a factor of about 10, to 300 millisec-
onds per syllable. Despite this slower
sound pattern, the robot still turned
and moved forward quite rapidly, with
something like the speed of a real crick-
et. In other words, the robot changed
direction at the speed of a cricket while
receiving information at only one tenth
the speed. Effectively, the robot had a
more difficult task. The bright side was
that I could be sure that if the robot
was able to find the sound, it was cer-
tainly not beyond the capacity of the
cricket to do so in the same way.
I put the robot through a series of tri-
als. In each trial, I started the robot at
one side of an arena and recorded the
track it took toward a speaker produc-
ing the sound. When the syllables had
the ideal length (300 milliseconds) and
pitch (two kilohertz), the robot headed
toward the speaker in a zigzag path
very similar to the meandering observed
in actual cricket phonotaxis. This path
never covered more than twice the di-
rect distance from start to finish [ see il-
lustration above ]. When I placed obsta-
cles between the starting point and the
sound source, the robot found its way
around them to the speaker.
To find out how the robot would re-
act to sounds differing from the ideal, I
carried out a series of trials with differ-
ent syllable rates. When I increased the
syllable rate (with syllables and gaps
lasting less than 200 milliseconds), the
robot’s program could no longer distin-
guish the gaps in the sound. It would
send very few turn signals to the mo-
tors, driving the robot in straight lines
around the arena. If it found the speak-
er at all, it was mostly by chance. When
I decreased the rate (syllables and gaps
lasting more than 500 milliseconds), the
behavior was also less successful. The
turns became less frequent, and the ro-
bot ended up taking a curved path in the
general direction of the speaker, which
it often failed to reach. Although I ex-
pected that the robot would succeed
only within a certain range of syllable
rates, I discovered afterward that real
crickets, too, tend to take curved paths
at slower rates while failing more com-
pletely for faster rates. So the robot not
only succeeds like a cricket but tends to
fail like one, too.
The fact that a male cricket’s song is
actually a series of chirps  — three or so
syllables separated by periods of si-
lence — has been more or less disregard-
ed in the above discussion. During our
trials, however, I thought it might be in-
teresting to see how well the robot nav-
igated when the syllable train was bro-
ken up into chirps. The results were
mixed. The robot could move quite a
long way in the arena during the silenc-
es between chirps, so it tended to over-
shoot the speaker and then take a while
to recover its bearings. On the other
hand, when it did reach the speaker, it
got there more rapidly than it had with
 A Cricket Robot 98  S cientific  A merican  December 1996
 SPEAKER
A
SPEAKER
B
SPEAKER
A
SPEAKER
B
ROBOT’S STARTING POSITION
 LAURIE GRACE
 PATHS TO SOUND SOURCE taken by the robot were essen-
tially indistinguishable from those taken by a cricket. The trials
were all run in an arena four meters long by 3.3 meters wide.
When sounds, known as syllables, were emitted by two speakers
simultaneously, the robot simply traveled to one or the other
( left ). Female crickets also move toward a single chirping male
when a number are chirping. When the syllables alternated be-
tween the two speakers, the robot’s paths became more aimless,
with the vehicle often winding up between the speakers ( right ).
Again, females displayed similar behavior in this situation.


<!-- Page 6 -->

the continuous song of evenly spaced
syllables. This was because when all
went well for the machine, during the
chirps it would assume the correct head-
ing and during the silent periods move
quickly toward the speaker without fur-
ther time-wasting adjustments.
Again, it was only subsequently that I
discovered a correspondence in crick-
ets: their tracking behavior is more direct
when chirps are present, but the turn-
ing behavior of a cricket constrained to
one location, as measured by the move-
ment of legs (or abdomen, if flying), is
stronger with continuous syllables. The
evidence from the robot suggests that sit-
uational factors, rather than additional
neural processing mechanisms, may ex-
plain the effects of chirp structure on
the female’s movement toward a poten-
tial mate.
 Surprising Similarities
 S
o far the results had shown that the
robot could mimic the cricket’s rec-
ognition and location of the correct
song. But could this simple vehicle, like
a female cricket, choose one calling male
from among several? I didn’t think so,
but it was easy to answer this question
by adding a second speaker to the are-
na and playing the sound through both.
To my surprise, the robot seemed to
have no problem making up its mind
(so to speak) and went almost directly
to one speaker or the other.
Because I programmed the robot, I
knew it was not capable of distinguish-
ing or deciding between the sounds. Yet
again it appears that it is the interaction
of the robot’s uncomplicated mecha-
nisms with particular sound fields that
produces this interesting — and useful —
behavior. It might even be enough to
explain how the female cricket selects a
mate. Unfortunately, in these experi-
ments I did not have enough control
over the properties of the stimulus to test
whether the robot would prefer certain
songs over others.
One variation on two sound sources
was possible, however: I could test the
behavior when the song was split be-
tween the speakers, with syllables com-
ing alternately from either side. Obvi-
ously, this situation does not occur in
nature, and it is just as well. A female
cricket presented with this scenario be-
comes confused and moves between the
two sounds. The robot did more or less
the same.
These results as a whole are encour-
aging, although of course the robot’s
success does not in itself prove that real
crickets work this way. Nevertheless, it
does suggest some alternative interpre-
tations of neurophysiological and behav-
ioral results. More generally, it shows
that a rather competent and complex
performance can come from a simple
control mechanism, provided it inter-
acts in the right way with its environ-
ment. My colleagues and I are now re-
implementing  this  mechanism  on  a
smaller robot that can process sound
more rapidly; we should then be able to
test it with recordings of real cricket
songs to see if it makes the same choices
that female crickets appear to make. If
this experiment succeeds, we may have
to change our understanding of what it
means to behave robotically.
 A Cricket Robot  S cientific  A merican  December 1996  99
 Further Reading
 Cricket Auditory Communication.  Franz Huber and John Thorson in  Scientific
American,  Vol. 253, No. 6, pages 60–68; December 1985.
 Auditory Behavior of the Cricket,  Vol. 4:  Interaction of Direction of Track-
ing with Perceived Temporal Pattern in Split-Song Paradigms.  T. Weber and J.
Thorson in  Journal of Comparative Physiology A,  Vol. 163, No. 1, pages 13–22; Jan-
uary 1988.
 Cricket Behavior and Neurobiology.  Edited by F. Huber, T. E. Moore and W. Lo-
her. Comstock Publishing Associates, 1989.
 Physics of Directional Hearing in the Cricket  G RYLLUS BIMACULATUS.  A. Michelsen,
A. V. Popov and B. Lewis in  Journal of Comparative Physiology A,  Vol. 175, No. 2,
pages 153–162; February 1994.
 Using Robots to Model Animals: A Cricket Test.  Barbara Webb in  Robotics and
Autonomous Systems,  Vol. 16, Nos. 2–4, pages 117–132; 1995.
 The Author
 BARBARA WEBB received a B.S. (and a
University Medal) in psychology from the Uni-
versity of Sydney in 1987 and a Ph.D. in arti-
ficial intelligence from the University of Edin-
burgh in 1993. She is currently a lecturer in
the department of psychology at the University
of Nottingham, where she teaches artificial in-
telligence. Her main research interest is in per-
ceptual systems for the control of behavior in
robots and lower animals. Her other profes-
sional interests include cricket escape behavior
and the modeling of the use by insects of po-
larized light in navigation.
 SA
 ROBERT P. CARR
 Bruce Coleman Inc.
 ( animal
); BARBARA WEBB (
model
)
 ROBOTIC AND REAL CRICKETS differ in many
physical attributes, including size. In the author’s
experiments, characteristics of the sounds and envi-
ronment were scaled to the robot. In future experi-
ments, however, cricket-size robots will be tested
with the recorded songs of real male crickets.