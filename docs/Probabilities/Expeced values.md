---
title: "Expected Value and Variance"
author: "Andrés Aravena, PhD"
date: "2019-09-04 12:11"
tag: Probabilities
mathjax: true
---

# Average and variance of a sample

For a set $X = \{x_1,\cdots, x_n}$ we have
$$p(x)=N(x)/n$$
$$\text{mean}(X)=\bar x = \frac{1}{n}∑_i x_i=∑_x x \frac{N(x)}{n}=∑_x x\, p(x)$$
$$\text{Var}(X)= \frac{1}{n}∑_i (x_i-\bar x)^2=∑_x (x-\bar x)^2\, p(x)$$

# Expected value is a Mean value

For any random variable $X$ we define the **expected value** (also called **mean value**) of $X$ as the average of $X(ω)$ over the population $ω$
$$𝔼X=∑_ω X(ω)\, \Pr(X(ω))=∑_ω X(ω)\, p(ω)$$
Notice that $X$ is a random variable but $𝔼X$ is not.

Sometimes, for a given population and random variable, we call $\mu=𝔼X$

## Expected value is linear
If $X$ and $Y$ are two random variables, and $α$ is a real number, then

+ $𝔼(X + Y)=𝔼X + 𝔼Y$
+ $𝔼(α X)=α 𝔼X$

So, if $α$ and $\beta$ are real numbers, then

+ $𝔼(α X +\beta Y)=α 𝔼X +\beta 𝔼Y$

# Variance of a distribution

The **variance of the distribution** is defined with the same idea as the sample variance
$$𝕍X=𝔼(X-𝔼X)^2$$
Notice that the variance has *squared units*.
In most cases it is more comfortable to work with the **standard deviation** $σ=\sqrt{𝕍X}.$
In that case the **distribution variance** can be written as $σ^2.$

## Simple formula for distribution variance

We can rewrite the **variance of the distribution** with a simpler formula:
$$𝕍X=𝔼(X-𝔼X)^2=𝔼(X^2)-(𝔼X)^2$$
because
$$\begin{aligned}
𝔼(X-𝔼X)^2 & = 𝔼(X^2-2X𝔼X+\mathbb (EX)^2)\\
& = 𝔼(X^2)-2𝔼(X𝔼X)+𝔼(𝔼X)^2
\end{aligned}$$
but $𝔼X$ is a non-random number, so $𝔼(X𝔼X)=(𝔼X)^2$ and $𝔼(𝔼X)^2=(𝔼X)^2$

## Variance is not linear

if $X$ and $Y$ are two **independent** random variables, and $α$ is a real number, then

+ $𝕍(X + Y)=𝕍 X + 𝕍 Y$
+ $𝕍(α X)=α^2 𝕍 X$

To prove the first equation we use that $𝔼(XY)=𝔼X\,𝔼Y,$ which is true when $X\perp Y$

# Why we care about expected value and variance

The main reason is that it tells us how close is most of the population to the mean
$$\Pr((X-𝔼X)^2≥α)≤𝕍X/α$$
This is **Chebyshev's inequality** and it is always valid, for any probability distribution. Later we will prove that this formula is true.

What is the meaning of this inequality? It essentially says that each experiment outcome is _probably_ close to the expected value.


It may be easier to understand if we call $σ=\sqrt{𝕍X}$ and $c^2=𝕍X/α,$ we have
$$\Pr(\vert X-𝔼X\vert≥ cσ)≤ 1/c^2$$
because we can rewrite
$$\Pr((X-EX)^2≥α)=\Pr(\vert X-𝔼X\vert≥\sqrt α)$$
and if we chose $α=c^2 σ^2$ then
$$\Pr((X-𝔼X)^2≥ c^2σ^2)=\Pr(\vert X-𝔼X\vert≥ cσ)
≤ \frac{σ^2}{c^2 σ^2}= \frac{1}{c^2}$$

## Proof of Chebyshev's inequality

By the definition we have
$$𝕍(X)=𝔼(X-𝔼X)^2=∑_ω (X(ω)-𝔼X)^2\Pr(ω)$$
If we multiply the probability by a number that is sometimes 0 and sometimes 1, the sum has to be smaller
$$𝕍(X)≥∑_ω (X(ω)-𝔼X)^2\Pr(ω)⟦(X(ω)-𝔼X)^2≥α⟧$$

(Here we used the [bracket notation](bracket_notation.md).)
In that case all $(X-𝔼X)^2≥α$, therefore
$$𝕍(𝑋)≥ α∑_ω \Pr(ω)⟦(X(ω)- 𝔼X)^2≥α⟧
=α\Pr\left((X-𝔼X)^2≥α\right)$$
Then we can divide by $α$ and we get our result
$$\Pr\left((X-𝔼X)^2≥α\right)≤ 𝕍(𝑋)/α$$

* * * *

## Application: Averages
Let's assume that we have a small sample $X = (x_1,\cdots,x_n).$

All $x_i$ are taken from the same population $X$ with mean $𝔼X$ and variance $𝕍X$. We take the *average* or **sample mean**:
$$\text{mean}(X)=\bar x = \frac{1}{n}∑_i x_i$$
Since $\bar x$ is a function of random variables, $\bar x$ is also a random variable.
What is the expected value and the variance of $\bar x$?

## Independent from the same population
We often assume that all outcomes in the sample are *independent identically distributed* (i.i.d.)

In that case we will have

+ $𝔼 x_i = 𝔼 X$ for all $i$
+ $𝕍 x_i = 𝕍 X$ for all $i$
+ $𝔼 x_i x_{j} = \begin{cases}𝔼 (X^2)\quad\text{ if }i=j\\(𝔼 X)^2\quad\text{ if }i\not=j\end{cases}$

This las result can be written as $𝔼 x_i x_{j} = 𝔼 (X^2)⟦i=j⟧ + (𝔼 X)^2 ⟦i\not=j⟧$

## Expected value of sample mean
Therefore, since $𝔼$ is linear,
$$𝔼\bar x=𝔼\left(\frac{1}{n}∑_i x_i\right)=\frac{1}{n}𝔼∑_i x_i=\frac{1}{n}∑_i𝔼 x_i$$
and since all $x_i$ come from the same population
$$𝔼\bar x=\frac{1}{n}∑_i𝔼 X=\frac{n}{n}𝔼 X=𝔼 X$$

## Variance of the sample mean
Now we have
$$𝕍\bar x=𝕍\left(\frac{1}{n}∑_i x_i\right)=\frac{1}{n^2}𝕍∑_i x_i=\frac{1}{n^2}∑_i𝕍 x_i$$
and since all $x_i$ come from the same population
$$𝕍\bar x=\frac{1}{n^2}∑_i𝕍 X=\frac{n}{n^2}𝕍 X=\frac{1}{n}𝕍 X$$
So averages of bigger samples have smaller variance
