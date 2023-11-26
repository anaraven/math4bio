---
title: Probabilities
date: 2021-10-10 13:26:49
lang: en
featured: false
mathjax: true
links:
  - "[[_drafts/2021/math4bio/multiplication-rule]]"
  - "[[_drafts/2021/math4bio/rules-of-probabilities]]"
  - "[[_drafts/2021/math4bio/bayes-theorem]]"
  - '[[_drafts/2021/math4bio/sample-average-variance.md]]'
---

## Introduction to *Probabilities*
+ A platonic ideal of data
+ *Random variables* as representations of infinite sets
+ *Distributions* as descriptions of random variables

## A vector of infinite size
+ Now we imagine that we throw the dice infinite times
+ Instead of a vector $\mathrm{y}$ we have a *random variable* $Y$
+ The size $n$ goes to infinite, but $p(y)$ remains bounded
+ Now the $p(y)$ function is called *probability distribution*
+ As before, all information about $Y$ is contained in $p(y)$

## Distributions
+ Each random process has a corresponding distribution
+ Usually the distribution is a formula
    + The formula depends on the *mechanics* of the process
+ It also depends on some *parameters* (constants)
    + The parameters depend on the specific conditions

## Examples: Coin
+ Has 2 sides: *Head* and *Tail*
$$p(\mathrm{Head}) = 1 - p(\mathrm{Tail})$$
This is the mechanics of the coin
+ If the coin is symmetric then
$$p(\mathrm{Head}) = p(\mathrm{Tail}) = 0.5$$
This parameter depends on the specific coin

## Important parameters
**Expected value:** equivalent to the *mean* of the infinite set
$$E(Y) = \sum_y y ⋅ p(y)$$
**Variance:** equivalent to the *mean square error*
$$V(Y) = \sum_y (y-E(Y))^2⋅ p(y)$$

## Important case: Normal distribution
+ The bell-shaped Gaussian distribution is the most common in experiments
+ It arises in many experimental conditions
+ In particular for additive experimental noise
+ There are some important exceptions

# Statistical Inference
How to observe the "ideals"

## Statistical inference
+ How to estimate the parameters of a distribution
+ how to determine confidence intervals

## Sampling the "infinite set"
We make an experiment

+ We cannot measure all the random variable
+ We get only a few values (𝑛) in a *sample* 𝐲
+ We *assume* that the sample is a *subset* of the random variable
+ If we repeat the experiment we will have different values

What can we learn from the sample?

## Estimating the Expected Value
Fortunate each $y_i$ has expected value $E(Y)$. But probably not exactly equal.

Chebyshev's inequality:
$$ℙ\left(|y_i-E(Y)|≥ V(Y) ⋅ k\right)≤ \frac{1}{k^2}$$
The probability that $E(Y)$ is outside $y_i± V(Y) ⋅ k$ is $1/k^2$

## Using averages
$$𝔼(\bar{𝐲})=𝔼(Y)$$
$$𝕍(\bar{𝐲})=\frac{𝕍(Y)}{n}$$
$$ℙ\left(|\bar{𝐲}-𝔼(Y)|≥ V(Y) ⋅
\frac{k}{\sqrt{n}}\right)≤ \frac{1}{k^2}$$

The probability that $E(Y)$ is outside $$\bar{𝐲}± 𝕍(Y)⋅\frac{k}{\sqrt{n}}$$ is $1/k^2$

Look at the following table
```{r}
k <- c(1,sqrt(2),3,4,10)
pander(cbind(k,1/k^2))
```

## Normal distribution case
Here intervals are narrower. But we need to know $V(Y)$

```{r}
pander(cbind(k, pnorm(-k)))
```

But we don't know $𝕍(Y)$. We find that
$$E(\mathrm{S}_n(\bar{y}, 𝐲)) = \frac{n-1}{n}𝕍(Y)$$
so the *variance of the sample* is biased

Instead we use the *variance of the population*
$$\mathrm{S}_{n-1}(𝐲)=\frac{1}{n-1}\sum_i (y_i-\bar{𝐲})^2$$

## t-Student's distribution
