## Neural Networks

### Hypothesis Representations

- Dendites (input) -> Nucleus (computation) -> Axons (output)
- Based on electric pulses and neurotransmitters


### Neural Model Logistic unit

![](logistic-unit.png)

Sometimes we have a term $x_{0}$ for the bias.

This is a sigmoid(logistic) activation function. (non linearity)

We may called thetas as weights.

- A neural network is a group of these neurons.

![](neuralnet.png)

## Notation and simple computation

![](nerual-network.png)

## Model Representation 2 (vectorization)

# Forward Propagation

![](forward-propagation.png)


## We can see that the neural network learns from its own features.

![](learning-its-own-features.png)

We can observe the embeded logistic regression at the and in the intermediary steps.

## neural networks architectures

How the layers are connected.

# more notation

$x^{(j)} = \theta^{(j-1)}a^{(j-1)}$

where $\theta^{(j-1)} \in R^{s_{(j+1)}*(s_j + 1)}$
