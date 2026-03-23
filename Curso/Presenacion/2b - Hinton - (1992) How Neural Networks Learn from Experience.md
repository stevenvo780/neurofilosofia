# 2b - Hinton - (1992) How Neural Networks Learn from Experience

**Author:** Geoffrey E. Hinton  
**Original source:** *Scientific American*, September 1992  
**Companion Spanish edition:** *Investigacion y Ciencia*, November 1992  
**Editorial note:** fuller formatted reconstruction based on the original English PDF and cross-checked against the Spanish course PDF. The aim of this version is to preserve the article's argumentative development, technical box, examples, and figure logic while removing OCR noise, broken line wraps, and layout artifacts.

## Introduction

The brain is a remarkable computer. It interprets imprecise information from the senses at an incredibly rapid rate. It can detect a whisper in a noisy room, recognize a face in a dimly lit alley, and infer a hidden agenda in a political statement. Most impressive of all, it learns, without explicit instructions, to create the internal representations that make these abilities possible.

Much remains unknown about how the brain trains itself to process information, so theories of learning abound. To test such hypotheses, Hinton and his colleagues tried to mimic the brain's learning processes by creating networks of artificial neurons. The general strategy is to infer the features that matter most in neurons and their interconnections and then to program computers to simulate those features.

Because our knowledge of neurons is incomplete and our computational resources are limited, such models are necessarily gross idealizations of real neural tissue. Even so, they are valuable. By testing candidate mechanisms in artificial neural networks, researchers can rule out implausible theories about how the brain processes information and begin to uncover ways in which the brain might achieve its extraordinary feats of learning.

## Biological neurons and artificial units

In the human brain, a typical neuron gathers signals from many others through fine structures called dendrites. The neuron sends out spikes of electrical activity through a long thin fiber, the axon, which branches thousands of times. At the end of each branch, a synapse converts the activity arriving from the axon into electrical effects that either inhibit or excite connected neurons.

When a neuron receives excitatory input that is large enough relative to inhibitory input, it sends a spike of electrical activity down its axon. Learning occurs by changing the effectiveness of synapses so that the influence of one neuron on another is altered.

Artificial neural networks are built from interconnected units that function as model neurons. Synaptic influence is represented by a modifiable weight attached to each connection. Most artificial networks ignore the detailed geometry of dendrites and axons and describe the output of a neuron with a single numerical value representing its firing rate, or activity.

Each unit turns the pattern of incoming activities into one outgoing activity in two stages:

1. Each incoming activity is multiplied by the weight on its connection.
2. The weighted inputs are added together to form the total input.
3. An input-output function transforms that total input into the unit's outgoing activity.

The behavior of a network depends on both its weights and the input-output function used by its units. Hinton distinguishes three standard cases:

- linear units;
- threshold units;
- sigmoid units.

For linear units, output is proportional to total weighted input. For threshold units, output jumps between two levels depending on whether input exceeds a critical value. For sigmoid units, output changes continuously but nonlinearly with input. Sigmoid units resemble real neurons more closely than linear or threshold units do, but all three are only rough approximations.

### Figure 1. Idealization of a neuron

The article's diagram depicts a unit that multiplies each incoming activity by a weight, sums the results, and computes output by applying an input-output function to the total weighted input.

## Three-layer networks

To build a network that performs a specific task, we must decide how units are connected and what weights those connections should carry. Connections determine whether one unit can influence another; weights determine how strongly it does so.

The commonest architecture discussed in the article is a three-layer network:

1. an input layer;
2. a hidden layer;
3. an output layer.

The activities of input units represent the raw information fed into the network. The activity of each hidden unit depends on the input activities and the weights on connections from input to hidden units. Likewise, the activities of output units depend on hidden-unit activities and on the weights between hidden and output layers.

This architecture is interesting because hidden units are free to construct their own representations of the input. The weights into a hidden unit determine when that unit becomes active, so by changing those weights, the network changes what the hidden unit effectively represents.

### Figure 2. A common three-layer neural network

The corresponding figure shows a fully connected network in which activity passes from input units to hidden units and then to output units. Different connection colors stand for different weights.

## Training a network

We can teach a three-layer network to perform a task by presenting it with training examples. Each example contains:

- a pattern of activities for the input units;
- the desired pattern of activities for the output units.

The network produces an actual output. We then compare actual output with desired output and modify the weights so that the network produces a better approximation the next time.

Hinton illustrates the idea with handwritten digit recognition. Suppose we use an array of 256 sensors, each recording the presence or absence of ink in a small region of an image containing a single digit. The network would then need:

- 256 input units, one for each sensor;
- 10 output units, one for each digit class;
- some number of hidden units.

For each digit presented to the sensors, the network should produce high activity in the appropriate output unit and low activity in the others.

To train the network, we show it an image of a digit and compare the actual activities of the ten output units with the desired activities. We then compute the error, defined as the squared difference between actual and desired output, and change the weights so as to reduce that error. By repeating the procedure for many different images of each kind of digit, the network can eventually classify them correctly.

To implement this procedure, each weight must be changed by an amount proportional to the rate at which the error changes as that weight is varied. That quantity is the error derivative for the weight, or `EW`. The challenge is to compute it efficiently.

One possibility is to perturb each weight slightly and observe how the error changes. But that method is hopelessly inefficient because it requires a separate perturbation for each of the many weights in the network.

### Figure 3. How a neural network represents handwritten digits

The article includes an example network with 256 input units, 9 hidden units, and 10 output units trained to recognize handwritten digits. When a handwritten `3` is presented, the third output unit becomes most active. The hidden-unit panels display incoming and outgoing weights, with some regions excitatory and others inhibitory.

## Back-propagation

Around 1974, Paul J. Werbos, while working toward a doctorate at Harvard, invented a much more efficient method for calculating the error derivative for each weight. That procedure, now known as the back-propagation algorithm, became one of the central tools for training neural networks.

The basic idea is easiest to understand when all units are linear. The algorithm computes each `EW` by first finding the `EA`, the error derivative with respect to a unit's activity level.

For output units, `EA` is simply the difference between actual and desired output. To compute the `EA` for a hidden unit in the layer just below the output layer, we identify all the weights between that hidden unit and the output units to which it connects. We multiply those weights by the error activities of the corresponding output units and add the products. That sum is the `EA` of the hidden unit.

Once all `EA`s have been calculated for the hidden layer immediately beneath the output layer, the same procedure can be applied to earlier layers, moving backward through the network in a direction opposite to the normal forward spread of activity. That reverse traversal gives back-propagation its name.

Once the `EA` of a unit is known, computing the `EW` for each incoming connection is straightforward: the `EW` is the product of the unit's `EA` and the activity flowing through the incoming connection.

For nonlinear units such as sigmoids, one extra step is required. Before back-propagating error, the `EA` must be converted into the `EI`, the error derivative with respect to a unit's total input.

The algorithm was largely ignored for years after its invention, probably because its usefulness was not fully appreciated. In the early 1980s David E. Rumelhart and David B. Parker rediscovered it independently. In 1986 Rumelhart, Ronald J. Williams, and Hinton helped popularize it by showing that it could train hidden units to form interesting internal representations of complex input patterns.

## Technical box: the back-propagation algorithm

To train a neural network so that it reduces the discrepancy between desired and actual output, the network must compute the error derivatives of its weights (`EW`). Back-propagation is the standard way to do this.

Assume unit `j` is a typical output unit and unit `i` is a typical unit in the previous layer. An output unit determines its activity in two steps.

First it computes its total weighted input:

```text
x_j = Σ_i y_i w_ij
```

where `y_i` is the activity of unit `i` and `w_ij` is the weight on the connection between unit `i` and unit `j`.

Next it computes output activity `y_j` by applying a function to `x_j`. The article uses the sigmoid:

```text
y_j = 1 / (1 + e^(-x_j))
```

Once all output activities have been determined, the network computes the squared error:

```text
E = 1/2 Σ_j (y_j - d_j)^2
```

where `d_j` is the desired output activity of unit `j`.

Back-propagation then proceeds in four steps:

1. Compute how fast error changes as the activity of an output unit changes:

```text
EA_j = ∂E/∂y_j = y_j - d_j
```

2. Compute how fast error changes as the total input to an output unit changes:

```text
EI_j = ∂E/∂x_j = EA_j y_j (1 - y_j)
```

3. Compute how fast error changes as a weight into an output unit changes:

```text
EW_ij = ∂E/∂w_ij = EI_j y_i
```

4. Compute how fast error changes as the activity of a unit in the previous layer changes:

```text
EA_i = Σ_j EI_j w_ij
```

Using steps 2 and 4, the `EA`s of one layer can be converted into `EA`s for the previous layer. Repeating the process yields the `EA`s for as many earlier layers as needed. Once the `EA` of a unit is known, steps 2 and 3 give the `EW`s of its incoming connections.

## What back-propagation achieved

Back-propagation turned out to be surprisingly effective for training multilayer networks to perform a wide variety of tasks. It is most useful when the relationship between input and output is nonlinear and when training data are plentiful.

Researchers used it to build networks that:

- recognize handwritten digits;
- predict currency exchange rates;
- optimize chemical processes;
- identify precancerous cells in Pap smears;
- adjust telescope mirrors to cancel atmospheric distortion.

The algorithm also proved useful in neuroscience. Richard Andersen and David Zipser showed that back-propagation could help explain the function of some neurons in the brain's cortex. They trained a network on visual stimuli and found that the response properties of hidden units closely resembled those of real neurons involved in transforming retinal information for deeper visual areas.

## Strengths and limits as a biological theory

As a theory of how biological neurons actually learn, back-propagation received a mixed response.

On the positive side, it made an important contribution at an abstract level. It was very good at creating sensible internal representations in hidden units. That success gave researchers confidence in learning procedures that gradually adjust weights to reduce errors.

Before this, many people believed such methods were hopeless because they would inevitably get trapped in locally optimal but globally poor solutions. A digit-recognition network, for example, might settle into a set of weights that confuses ones and sevens even though some other set of weights would separate them perfectly. This fear supported the widely held belief that a learning procedure was interesting only if it could be guaranteed to converge on the globally optimal solution. Back-propagation showed that, for many tasks, global convergence was not necessary for good performance.

On the negative side, back-propagation seems biologically implausible. The most obvious difficulty is that information must travel backward through the same connections from later layers to earlier ones. Real neurons do not literally work that way. Yet Hinton argues that this objection may be superficial, because the brain contains many feedback pathways that might convey the information needed for learning by other means.

A more serious problem is speed. The time required to calculate the error derivatives for a single training example is proportional to network size, because the amount of computation is proportional to the number of weights. But larger networks also require more training examples and more weight updates. As a result, learning time grows much faster than network size.

The most serious objection is that back-propagation requires a teacher to supply the desired output for each training example. Human beings, by contrast, learn most things without being given a detailed target description of the internal representations they should extract from sensory input. We learn to understand sentences and visual scenes without explicit instruction of that kind.

## Unsupervised learning

This leads to the main question of the article's second half: how can a network learn appropriate internal representations if it starts with no knowledge and no teacher?

If a network is simply shown a large collection of patterns and told nothing about what to do with them, it may seem not to have a well-defined problem to solve. Even so, researchers have developed several general-purpose unsupervised procedures that can adjust the weights appropriately.

All of these procedures share two broad features:

1. they appeal, implicitly or explicitly, to some notion of the quality of a representation;
2. they modify weights so as to improve the quality of the representation extracted by hidden units.

In general, a good representation is one that can be described economically while still preserving enough information to permit a close reconstruction of the original input.

Hinton illustrates the point with an image made of several ellipses. Suppose a device converts the image into an array of a million tiny squares, each either light or dark. One could represent the image by listing the positions of all the dark squares. But a more efficient representation is available because ellipses differ in only five respects:

- orientation;
- vertical position;
- horizontal position;
- length;
- width.

So the image can be described using only five parameters per ellipse. Although describing one ellipse by five parameters may require more bits than describing a single dark square by two coordinates, the overall description is much cheaper because one needs far fewer parameters than coordinates. And no information is lost: the original image could be reconstructed from those parameters.

### Figure 4. Two faces made of ellipses

The article visualizes this idea with two faces composed of eight ellipses. Each face can be represented either as points in two dimensions or more compactly as points in a five-dimensional space defined by ellipse parameters.

## Code cost and reconstruction cost

Almost all unsupervised learning procedures can be viewed as methods for minimizing the sum of two terms:

1. a code cost;
2. a reconstruction cost.

The code cost is the number of bits required to describe the activities of the hidden units. The reconstruction cost is the number of bits required to describe the mismatch between the raw input and the best approximation that can be reconstructed from the hidden activities. In the article, reconstruction cost is proportional to the squared difference between the input and its reconstruction.

Two simple ways of discovering economical codes that still allow fairly accurate reconstruction are:

- principal-components learning;
- competitive learning.

In both cases, one first chooses how economical the code should be and then modifies the weights to reduce reconstruction error.

## Principal-components learning

The principal-components strategy starts from the idea that if the activities of several input units are correlated, it is wasteful to describe each one independently. A more efficient strategy is to extract and describe the principal components, that is, the shared modes of variation across many input units.

If we wish to discover, say, ten principal components, then a single hidden layer with ten units may suffice. Because the network uses only a small number of components, code cost is low. Because the input can be reconstructed fairly well from those components, reconstruction cost is also low.

One way to train such a network is to force it to reconstruct an approximation to the input on a set of output units. Back-propagation can then minimize the difference between actual output and desired output. This resembles supervised learning, but since the desired output is simply the input itself, no external teacher is needed.

Many researchers, including Ralph Linsker and Erkki Oja, found alternative algorithms for learning principal components. These are more biologically plausible because they do not require output units or back-propagation. Instead, they use the correlation between hidden-unit activity and input-unit activity to determine how weights should change.

## Competitive learning

In principal-components learning, a small number of hidden units cooperate to represent each input pattern. In competitive learning, by contrast, many hidden units compete so that a single hidden unit represents a given pattern.

The chosen hidden unit is the one whose incoming weights most closely match the current input pattern. Suppose now that we had to reconstruct the input pattern knowing only which hidden unit won the competition. The best guess would be to copy the incoming weight pattern of that winning unit. Therefore, to reduce reconstruction error, the weight pattern of the winning unit should be moved even closer to the input pattern. That is exactly what competitive learning does.

If the training data naturally fall into clusters of similar patterns, each hidden unit comes to represent a different cluster, and its incoming weights converge on the center of that cluster.

Like the principal-components algorithm, competitive learning minimizes reconstruction cost while keeping code cost low. One can afford a large number of hidden units because even a very large pool requires relatively few bits to specify which unit won.

### Figure 5. Competitive learning

The figure can be read as a process in which each input pattern attracts the weight pattern of the nearest hidden unit. Over time, each hidden unit drifts toward a cluster of similar patterns and comes to represent that cluster.

## Kohonen maps and intermediate representations

In the early 1980s Teuvo Kohonen introduced an important modification of competitive learning. He showed how to make physically adjacent hidden units learn to represent similar input patterns. In his algorithm, not only the winning hidden unit but also its neighbors adapt their weights. This produces topographic maps and suggests a possible relation to the organized maps found in visual cortex.

Unsupervised learning algorithms can be classified by the kind of representation they create. In principal-components methods, hidden units cooperate and each input pattern is represented in distributed fashion across them. In competitive methods, hidden units compete and the pattern is represented locally in the single selected hidden unit.

But Hinton emphasizes that the most interesting and powerful algorithms are likely to lie between those extremes:

- not purely distributed;
- not purely localized.

Horace B. Barlow proposed an intermediate model in which each hidden unit is only rarely active, while each input pattern is distributed across a small set of selected hidden units. Barlow and his collaborators showed that this kind of code can be learned by making hidden units uncorrelated while also ensuring that the hidden code supports good reconstruction of the input.

## Population codes

Most current methods for minimizing code cost tend to eliminate all redundancy among hidden-unit activities. That makes the network highly sensitive to the failure of a single hidden unit. This is unlike the brain, which is typically not much affected by the loss of a few neurons.

The brain appears to use what Hinton calls population codes, in which information is represented by the joint activity of an entire population of active neurons.

David L. Sparks and his co-workers demonstrated the point beautifully while studying how a monkey's brain instructs the eyes where to move. They found that the required eye movement is encoded by a whole population of cells, each representing a somewhat different movement. The movement that is actually produced corresponds to the average of the movements encoded by the active cells. If some cells are anesthetized, the eye moves to the point associated with the average of the remaining active cells.

Population codes may be used not only for eye movements but also for faces. Malcolm P. Young and Shigeru Yamane presented evidence of this in experiments on the inferior temporal cortex of monkeys.

Both eye movements and faces vary along multiple dimensions. Eye movements involve only two dimensions, but faces vary along dimensions such as:

- happiness;
- hairiness;
- familiarity;
- position;
- size;
- orientation.

If we associate each face-sensitive cell with the face parameters that make it most active, we can average those parameters across a population of active cells and thereby infer the parameters of the face represented by that code. In abstract terms, each face cell stands for a particular point in a multidimensional space of possible faces. Any actual face can then be represented by activating all the cells that encode very similar faces, creating a bump of activity in that space.

Population coding is attractive because it continues to work even when some neurons are damaged or ignored. The loss of a random subset of neurons has little effect on the population average. The same logic applies when the system must respond quickly: because neurons communicate with discrete spikes, some active neurons may fail to fire in a very short interval, yet a population code in one brain area can still generate an approximately correct population code in another.

### Figure 6. Population coding

The article depicts a multiparameter object as a bump of activity spread across many hidden units. Each disk corresponds to an inactive unit; each cylinder to an active unit, with height representing activity level.

## Useful redundancy and code cost

At first sight, the redundancy of population codes seems incompatible with the goal of minimizing code cost. Hinton argues that this difficulty can be overcome by using a more indirect measure.

If the activity encoding a particular entity forms a smooth bump whose amplitude falls off in a standard way as one moves away from its center, then the entire bump can be described simply by specifying that center. On this view, a fairer measure of code cost is:

- the cost of describing the center of the bump;
- plus the cost of describing how the actual activities depart from the ideal smooth profile.

With this measure, population codes become a convenient way of extracting a hierarchy of progressively more efficient encodings of sensory input.

## Hierarchies of representation and face perception

Hinton illustrates the point with a simple example. Imagine a neural network presented with an image of a face and already containing:

- one set of units dedicated to noses;
- another to mouths;
- another to eyes.

When a particular face is shown, one bump of activity appears in the nose units, one in the mouth units, and two in the eye units. The location of each bump represents the spatial parameters of the feature encoded by that bump. Describing these four bumps is already cheaper than describing the raw image. But it would be cheaper still to describe a single bump of activity in a set of face units, provided that nose, mouth, and eyes stand in the correct spatial relations to count as a face.

## The problem of spatial relations

This raises a key question: how can the network check that the parts are correctly related to one another?

Dana H. Ballard proposed a clever method for solving problems of this kind using population codes. If we know the position, size, and orientation of a nose, we can predict the position, size, and orientation of the face to which it belongs, because the spatial relation between noses and faces is roughly fixed.

The network can therefore be wired so that a bump of activity in the nose units attempts to produce a correspondingly related bump in the face units. But the thresholds of the face units are set so that the nose units alone are insufficient to activate them. If the bump of activity in the mouth units also tries to produce a bump at the same place in the face units, then the threshold can be overcome. In effect, the network checks that nose and mouth are correctly related by verifying that they both predict the same spatial parameters for the whole face.

### Figure 7. Checking spatial relations with activity bumps

The final figure contrasts two cases. When nose and mouth have the correct spatial relation, their activity bumps converge on the same location in the face units and a face bump appears. When the relation is wrong, the nose units and mouth units try to create bumps in different locations, the threshold is not exceeded, and no face bump forms.

## Hierarchical unsupervised learning

This way of checking spatial relations is especially attractive because it exploits exactly the kind of redundancy among different parts of an image that unsupervised learning should be able to discover.

It therefore seems natural to use unsupervised learning to discover hierarchical population codes for complex shapes. In 1986 Eric Saund demonstrated one method for learning simple population codes for shapes. Hinton suggests that, given a clear enough definition of code cost, an unsupervised network should be able to discover more complex hierarchies by attempting to minimize the cost of coding the image.

## Deep networks and recurrent networks

If unsupervised learning can extract a hierarchy of successively more economical representations, then learning in large multilayer networks could become much faster. Each layer would adapt its incoming weights so as to produce a better representation than the previous layer, which means that one layer's weights could be learned without constant reference to weights in later layers. That would eliminate many of the weight interactions that make back-propagation slow in deep multilayer systems.

All the learning procedures discussed so far are implemented in networks where activity flows only forward from input to output, even though error derivatives may flow backward. Another important possibility is to consider networks in which activity circulates around closed loops.

Such recurrent networks may settle into stable states or exhibit complex temporal dynamics that can be used to generate sequential behavior. If they settle into stable states, error derivatives can be computed by methods that are much simpler than ordinary back-propagation.

## Conclusion

By 1992, researchers had already developed learning algorithms of great practical power, but it was still unknown which representations and learning procedures the brain actually uses.

Hinton's expectation is that, sooner or later, computational studies of artificial neural networks will converge with the methods discovered by evolution in biological brains. When that happens, a great deal of otherwise disconnected empirical data about the brain may suddenly make deeper sense, and many new applications of artificial neural networks should become possible.

## Further reading

- David E. Rumelhart, Geoffrey E. Hinton, and Ronald J. Williams, "Learning Representations by Back-Propagating Errors", *Nature*, Vol. 323, No. 6188, October 9, 1986, pp. 533-536.
- Geoffrey E. Hinton, "Connectionist Learning Procedures", *Artificial Intelligence*, Vol. 40, Nos. 1-3, September 1989, pp. 185-234.
- J. Hertz, A. Krogh, and R. G. Palmer, *Introduction to the Theory of Neural Computation*, Addison-Wesley, 1990.
- Patricia S. Churchland and Terrence J. Sejnowski, *The Computational Brain*, MIT Press / Bradford Books, 1992.

## Note on visual material

The extracted images from the original PDF remain available in:

- `Curso/Presenacion/2b_Hinton_Imagenes_PDF/`

They are especially useful for slides on:

- the idealized neuron;
- the three-layer network;
- handwritten-digit recognition;
- faces composed of ellipses;
- competitive learning;
- population coding;
- spatial checking of facial parts.
