# 2b - Hinton - (1992) How Neural Networks Learn from Experience

**Author:** Geoffrey E. Hinton  
**Original source:** *Scientific American*, September 1992  
**Version:** edited reconstruction based on the original PDF and the OCR preserved in the course materials

## How Neural Networks Learn from Experience

Artificial neural networks can learn to represent complicated information. In doing so, they offer a way to think about how the human brain might acquire internal representations without explicit instruction.

The brain is a remarkable computer. It can interpret noisy sensory input at extraordinary speed: it can detect a whisper in a crowded room, recognize a face in poor lighting, and infer hidden intent in language. Most strikingly, it learns to build the internal representations that make such abilities possible.

Because we still know relatively little about how the brain trains itself, theories of learning abound. Hinton presents artificial neural networks as a way to test such theories. The idea is not to reproduce the brain in all its biological detail, but to identify a limited set of relevant features and implement them in computational models. These models are crude idealizations, yet they are useful because they let researchers rule out implausible hypotheses and explore mechanisms that might underlie learning.

## Biological Neurons and Artificial Neurons

A biological neuron receives signals through dendrites, sends activity along its axon, and affects other neurons through synapses. Learning occurs when synaptic efficacy changes, altering the influence that one neuron has on another.

Artificial neural networks model this process in simplified form. They consist of interconnected units, each of which receives input from other units through weighted connections. A unit turns its incoming activities into a single outgoing activity in two stages:

1. It multiplies each incoming activity by the weight on that connection and sums the results.
2. It applies an input-output function to that total weighted input.

The behavior of the network depends on both the connection weights and the type of input-output function used. Hinton distinguishes three common cases:

- linear units;
- threshold units;
- sigmoid units.

Sigmoid units are still only rough approximations to real neurons, but they are often more useful than the other two because they vary continuously rather than switching abruptly.

## Three-Layer Networks

The most common neural network architecture discussed in the article has three layers:

1. an input layer;
2. a hidden layer;
3. an output layer.

The input units represent the raw data fed into the network. Hidden-unit activity depends on the input activities and on the weights between the input and hidden layers. Output-unit activity depends on the hidden activities and the weights between the hidden and output layers.

Hidden units are especially important because they can form internal representations of the input. By changing the weights into the hidden layer, the network effectively changes what each hidden unit responds to and therefore what kind of feature it represents.

## Training a Network

To teach a network a specific task, we present training examples made of:

- a pattern of activities at the input units;
- a desired pattern of activities at the output units.

The network produces an actual output, and the difference between the actual and desired outputs is treated as error. The weights are then adjusted so that the error is reduced.

Hinton illustrates this with handwritten digit recognition. A grid of sensors can encode whether ink is present in each small region of an image. The network then tries to activate the correct output unit for each digit while keeping the others relatively inactive.

The central problem is determining how much each weight should change. The change should be proportional to how much the total error would change if that weight were perturbed. That quantity is the error derivative with respect to the weight.

## Back-Propagation

Computing error derivatives by changing each weight separately would be prohibitively inefficient. The article therefore introduces the back-propagation algorithm, originally proposed by Paul Werbos and later popularized by Rumelhart, Hinton, and Williams.

Back-propagation works by first computing how the error changes with the activity of each unit. For output units, this depends directly on the difference between actual and desired output. For hidden units, the error signal is computed from the errors of units in the next layer and the weights connecting them.

Because these error signals are computed from later layers back toward earlier ones, the process runs in the opposite direction from the normal forward flow of activity. Once the error associated with a unit has been computed, the correction to each incoming weight can be derived straightforwardly.

For nonlinear units such as sigmoids, there is an extra step: the error with respect to a unit's activity must be converted into an error with respect to its total input.

## The Back-Propagation Algorithm in Compact Form

For a sigmoid output unit `j`, receiving inputs from units `i` in the previous layer:

```text
x_j = Σ_i y_i w_ij
y_j = 1 / (1 + e^(-x_j))
E = 1/2 Σ_j (y_j - d_j)^2
```

Where:

- `x_j` is the total weighted input to unit `j`;
- `y_j` is the activity of unit `j`;
- `w_ij` is the weight from unit `i` to unit `j`;
- `d_j` is the desired activity for output unit `j`;
- `E` is the total output error.

The four core steps are:

1. Compute the error derivative with respect to output activity:

```text
EA_j = ∂E/∂y_j = y_j - d_j
```

2. Convert that into the error derivative with respect to total input:

```text
EI_j = ∂E/∂x_j = EA_j y_j (1 - y_j)
```

3. Compute the error derivative for each incoming weight:

```text
EW_ij = ∂E/∂w_ij = EI_j y_i
```

4. Propagate error back to the previous layer:

```text
EA_i = Σ_j EI_j w_ij
```

These steps can be repeated layer by layer through the network.

## What Back-Propagation Achieved

Back-propagation made it practical to train multilayer networks on useful tasks. Hinton points to systems that were trained to:

- recognize handwritten digits;
- predict exchange-rate changes;
- optimize chemical processes;
- identify precancerous cells in Pap smears;
- adjust telescope mirrors to compensate for atmospheric distortion.

The method also mattered for neuroscience. Hinton notes work by Richard Andersen and David Zipser showing that a network trained with back-propagation could develop hidden units whose response properties resembled those of neurons in visual cortex.

## Limits of Back-Propagation as a Biological Model

The article then shifts from engineering usefulness to biological plausibility.

One objection is that it seems biologically unrealistic to assume that precise error information is sent backward through the same connections. Hinton argues that this objection may be less decisive than it first appears, because the brain contains extensive feedback pathways.

A more serious issue is speed. As networks get larger, the number of weights increases and the amount of computation required to update them also increases. Bigger networks usually require more training examples and more weight updates, so learning time grows rapidly.

The deepest objection is that back-propagation requires a teacher that provides the correct output for each example. Human beings, by contrast, learn many of their most important internal representations without explicit supervision.

## Unsupervised Learning

This motivates the central question of the second half of the article: how can a network learn useful internal representations when it has no teacher and no prior knowledge of what the hidden units should represent?

Hinton describes several unsupervised learning procedures. They differ in detail, but they share two broad features:

1. They rely on some notion of what counts as a good representation.
2. They change the weights to improve the quality of the representation extracted by hidden units.

In general, a good representation should satisfy two conditions:

- it should be economical to describe;
- it should preserve enough information to allow approximate reconstruction of the input.

## Coding Cost and Reconstruction Cost

Hinton frames many unsupervised methods in terms of a tradeoff between two quantities:

1. **Coding cost:** how much information is required to describe the activities of the hidden units.
2. **Reconstruction cost:** how much information is required to describe the difference between the original input and the best reconstruction that can be generated from the hidden-unit activities.

A good representation balances these two costs.

To illustrate the idea, Hinton asks us to imagine an image made of several ellipses. One could describe the image by listing the dark and light values of every pixel, but a much more efficient description might specify only a few parameters for each ellipse, such as position, orientation, length, and width. The representation is then much more compact while still preserving what matters for reconstructing the image.

## Principal Components

One simple form of unsupervised learning is principal-components learning. If several input dimensions vary together, it may be wasteful to represent each dimension separately. A more efficient strategy is to capture the major shared modes of variation.

This can be done with a hidden layer that has fewer units than the input layer and that learns to preserve the most important components of the input. One implementation trains the network to reproduce the input at the output layer. The desired output is simply the input itself, so no external teacher is required.

Hinton also mentions alternative algorithms by Ralph Linsker and Erkki Oja that can learn principal components more directly and in a way that seems biologically more plausible.

## Competitive Learning and Kohonen Maps

In principal-components learning, hidden units cooperate to represent an input. In competitive learning, hidden units compete so that only one, or a very small number, becomes active for a given pattern.

The winning unit is the one whose weight pattern best matches the current input. Afterward, its weights are adjusted to make it respond even better to similar patterns in the future. Over time, different hidden units become specialized for different clusters of inputs.

Teuvo Kohonen introduced an important variation in which neighboring units are updated together. This produces topographic maps in which nearby units represent similar patterns, suggesting a possible connection to spatially organized maps in cortex.

## Distributed, Local, and Intermediate Representations

Hinton contrasts several ways of representing information:

- **distributed representations**, in which many units cooperate to represent one pattern;
- **local representations**, in which a single unit stands for a pattern or category;
- **intermediate representations**, in which only a small subset of units is active.

He suggests that the most interesting cases may lie between the two extremes of fully distributed and fully local coding.

Horace Barlow proposed one such intermediate idea: each hidden unit is rarely active, but each input pattern is represented by a small group of units. This kind of sparse coding can preserve reconstruction quality while reducing redundancy.

## Population Codes

A fully compressed code with no redundancy may be fragile: if one unit fails, the representation may degrade sharply. The brain, however, often appears robust to the loss of individual neurons.

That consideration motivates interest in **population codes**, in which information is represented by the joint activity of many units. Hinton discusses work by David Sparks and colleagues on eye movements, where the final movement depends on the average activity of a population of cells rather than on a single neuron. The same general idea can be applied to face representation, where a specific face corresponds not to one cell alone but to a pattern spread across a multidimensional space of possible faces.

Although such population codes look redundant, Hinton argues that the redundancy can be useful rather than wasteful. If the pattern of activity has a smooth shape, it may still be described compactly while gaining robustness.

## Hierarchical Representations

This line of thought suggests a hierarchy of progressively more economical representations. For example, a network processing faces might contain groups of units specialized for noses, mouths, and eyes. Patterns of activity in those groups could then support a higher-level representation of a whole face.

Hinton also discusses how a network might learn whether such parts are in the right spatial relation to count as a face. Drawing on ideas associated with Dana Ballard, he describes a mechanism in which one feature, such as a nose, predicts the likely position and scale of a face representation, while other features such as a mouth and eyes help confirm that prediction.

This points toward hierarchical, compositional learning in which larger structures are built from compatible lower-level representations.

## Deep Learning and Recurrent Networks

Hinton closes by suggesting that if a network could learn a hierarchy of progressively better internal representations without requiring global supervision at every stage, large multilayer systems could be trained much more efficiently.

He also notes the importance of recurrent networks, in which activity flows through loops rather than strictly forward from input to output. Recurrent networks can settle into stable states or display complex temporal behavior, making them useful for sequential processes.

## Conclusion

Hinton's overall claim is cautious. Artificial neural networks had already yielded powerful learning algorithms and useful applications by 1992, but they had not yet solved the problem of biological learning. Even so, they provided a valuable experimental language for thinking about representation, learning, abstraction, and the possible relation between computational models and real nervous systems.

The long-term hope, as Hinton frames it, is that computational studies of artificial neural networks and empirical studies of biological brains will eventually converge. If they do, many currently disconnected findings about the brain may begin to make deeper sense.
