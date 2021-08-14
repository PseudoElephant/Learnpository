## Multiclass classification

## One vs all classification

Assign each value and assign it as the positive class and the rest as the negative class.

Trains a logistic regression classifier $h_{\theta}^i(x)$ for each class $i$ to predict the probability that $y = i$

On a new input x, to make a prediction pick the class i that maximizes.

$max(h_{\theta}^i(x))$

You'd need to train k logistic regression classifiers. For k classes ( $ y \in \{1,2,...,k\}$)