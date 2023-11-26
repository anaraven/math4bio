---
title: "Sample Average and Variance"
date: "2021-02-19 12:27"
thanks: "October 10, 2021"
author: "Andrés Aravena, Ph.D."
institute: Istanbul University
lang: en
documentclass: IEEEtran
fontsize: 10pt
fontfamily: palatino
classoption: a4paper
header-includes: 
  - '\DeclareUnicodeCharacter{1D431}{\mathbf{x}}'
  - '\DeclareUnicodeCharacter{1D432}{\mathbf{y}}'
  - '\DeclareUnicodeCharacter{2261}{\equiv}'
  - '\DeclareUnicodeCharacter{03B2}{\beta}'
  - '\DeclareUnicodeCharacter{1D53C}{\mathbb{E}}'
  - '\DeclareUnicodeCharacter{1D54D}{\mathbb{V}}'
  - '\DeclareUnicodeCharacter{2260}{\not=}'
featured: false
mathjax: true
links:
  - "[[_drafts/2021/math4bio/multiplication-rule]]"
  - "[[_drafts/2021/math4bio/rules-of-probabilities]]"
  - "[[_drafts/2021/math4bio/bayes-theorem]]"
  - '[[_drafts/2021/math4bio/probabilities.md]]'
---

Let's assume that we have a small sample $𝐱=(x_1, …, x_n).$

All $x_i$ are taken from the same population $X$ with mean $𝔼X$ and variance $𝕍X$. We take the *average* or **sample mean**:
$$\text{mean}(𝐱)=\bar x = \frac{1}{n}\sum_i x_i$$
Since $\bar x$ is a function of random variables, $\bar x$ is also a random variable

What is the expected value and the variance of $\bar x$?

# Independent from the same population
We often assume that all outcomes in the sample are *independent identically distributed* (i.i.d.)

In that case we will have

+ All random variables have the same expected value: $𝔼 x_i = 𝔼 X$ for all $i$
+ All random variables have the same variance $𝕍 x_i = 𝕍 X$ for all $i$
+ $𝔼 x_i x_{j} = \begin{cases}𝔼 (X^2)\quad\text{ if }i=j\\(𝔼 X)^2\quad\text{ if }i\not=j\end{cases}$

This las result can be written as
$$𝔼 x_i x_{j} = 𝔼 (X^2)[i=j] + (𝔼 X)^2 [i≠j]$$

# Expected value of sample mean
Since we can take out the sums from inside $𝔼()$,
$$𝔼\bar x=𝔼\left(\frac{1}{n}\sum_i x_i\right)=\frac{1}{n}𝔼\sum_i x_i=\frac{1}{n}\sum_i𝔼 x_i$$
and since all $x_i$ come from the same population
$$𝔼\bar x=\frac{1}{n}\sum_i𝔼 X=\frac{n}{n}𝔼 X=𝔼 X$$

# Variance of the sample mean
Now we have
$$𝕍\bar x=𝕍\left(\frac{1}{n}\sum_i x_i\right)=\frac{1}{n^2}𝕍\sum_i x_i=\frac{1}{n^2}\sum_i𝕍 x_i$$
and since all $x_i$ come from the same population
$$𝕍\bar x=\frac{1}{n^2}\sum_i𝕍 X=\frac{n}{n^2}𝕍 X=\frac{1}{n}𝕍 X$$
So averages of bigger samples have smaller variance


# Sample versus population
Variance $𝕍X$ and mean $𝔼X$ of the population are often unknown

Usually we only have a small sample $𝐱 = (x_1,\cdots,x_n)$

Assuming that all $x_i$ are taken from the same population and are mutually independent, what can we say about the sample mean and variance?

# Expected value of sample variance
$$\text{Var}(𝐱)=\frac{1}{n}\sum_i (x_i-\bar x)^2=\frac{1}{n}\sum_i x_i^2-\bar x^2$$
therefore, since $𝔼$ is linear,
$$\begin{aligned}
𝔼\text{Var}(𝐱) &=𝔼\left(\frac{1}{n}\sum_i x_i^2-\frac{1}{n^2}(\sum_i x_i)^2\right)\\
&=\frac{1}{n}𝔼\sum_i x_i^2-\frac{1}{n^2}𝔼 (\sum_i x_i)^2
\end{aligned}$$

Now in the first part we have
$$𝔼\sum_i x_i^2 =\sum_i𝔼 x_i^2=n𝔼 X^2$$

We can simplify the second part as
$$(\sum_i x_i)^2=(\sum_i x_i)(\sum_j x_j)=\sum_i \sum_j x_i x_j$$
therefore
$$\begin{aligned}
𝔼 (\sum_i x_i)^2 & =\sum_i \sum_j 𝔼 x_i x_j\\
&=\sum_i \sum_j 𝔼 (X^2)[i=j] + (𝔼 X)^2 [i≠j]\\
&= n 𝔼 (X^2) + n(n-1)(𝔼 X)^2
\end{aligned}$$

Putting it all together
$$𝔼\text{Var}(𝐱)=\frac{1}{n}n𝔼 X^2-\frac{1}{n^2}(n 𝔼 (X^2) + n(n-1)(𝔼 X)^2)$$
$$𝔼\text{Var}(𝐱)=\frac{1}{n}\left((n-1)𝔼 X^2-(n-1)(𝔼 X)^2\right)$$
$$𝔼\text{Var}(𝐱)=\frac{n-1}{n}(𝔼 X^2-(𝔼 X)^2)=\frac{n-1}{n} 𝕍X$$

# Sample variance is biased
If we want to estimate the mean $𝔼X$ of a population we can use the sample mean $\bar x$

But if we  want to estimate the variance $𝕍X$ of a population we cannot use the sample variance $\text{Var}(x)$

Instead we have to use an estimator
$$\hat{𝕍}(X) = \frac{1}{n-1}\sum_i(x_i-\bar x)^2$$

# Summary
+ If we have an i.i.d sample we can estimate the population mean with the sample mean
+ The sample mean is probably close to the population mean, independent of the probability distribution
+ If the sample is 4 times bigger, the sample mean is 2 times closer to the population mean
+ The sample variance is not a good estimation of the population variance. We use a different formula in that case.


