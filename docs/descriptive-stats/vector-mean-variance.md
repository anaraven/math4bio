---
title: "Mean and variance of a vector"
date: "2021-10-07 07:36:46"
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
featured: false
mathjax: true
abstract: "This is the abstract. This is the abstract. This is the abstract. This is the abstract."
links:
  - "[[_drafts/2021/math4bio/simple-linear-model.md]]"
  - "[[_drafts/2021/math4bio/intervals.md]]"
---

We will discuss a simple and very common case. Let's say that two vectors $𝐱$ and $𝐲$ with the same length $n,$
The vector $𝐱$ can be written as
$𝐱 = (x_1,…,x_n).$ Each element of $𝐱$ is written $x_i$. The same applies to the vector $𝐲.$

The arithmetic mean of $𝐱$ —sometimes called mean value or average— is defined as
$$\text{mean}(𝐱) = \frac{1}{n}\sum_i x_i$$
It is often written as $\overline{𝐱}$ and we use it as a _representative_ of the vector $𝐱$.

The variance of the vector $𝐱$ is defined as
$$\text{var}(𝐱)=\frac{1}{n}\sum_i (x_i - \overline{𝐱})^2$$
It measures the _spread_ or _dispersion_ of the vector $𝐱$. In other words, it measures how bad is $\overline{𝐱}$ as a representative of the vector $𝐱$.

You can think of the variance as _the average error_ we make when we represent all the vector $𝐱$ with the single value  $\overline{𝐱}.$ The reason why we use the _square_ of the difference in this formula will be discussed later and are not relevant here. For now we will take these definitions knowing that they are widely accepted.

One of the reasons why these definitions are practical is that they are relatively easy to compute, even with pen and paper. In fact, there is a simpler expression for $\text{var}(𝐱).$ We have
$$\begin{aligned}
\frac{1}{n}\sum_i (x_i - \overline{𝐱})^2 
&=\frac{1}{n}\sum_i \left(x_i^2 + \overline{𝐱}^2 - 2 x_i \overline{𝐱}\right)\\
&=\frac{1}{n}\sum_i \left(x_i^2 - 2 \overline{𝐱}\frac{1}{n}x_i\right) + \frac{1}{n}n\overline{𝐱}^2\\
&=\frac{1}{n}\sum_i x_i^2 - 2 \overline{𝐱}^2 + \overline{𝐱}^2\\
&=\frac{1}{n}\sum_i x_i^2 - \overline{𝐱}^2
\end{aligned}$$
This is easy to remember as _"the average of the squares minus the square of the averages"_.

For the second vector $𝐲$ with the same number of elements, we can also calculate
$$\begin{aligned}
\text{mean}(𝐲) &= \frac{1}{n}\sum_i y_i\\
\text{var}(𝐲) &=\frac{1}{n}\sum_i (y_i - \overline{𝐲})^2=\frac{1}{n}\sum_i y_i^2 - \overline{𝐲}^2
\end{aligned}$$

# Adding the two vectors
What about the mean and variance of $𝐱+𝐲$? This is also a vector with $n$ elements. Let's develop the mean
$$\begin{aligned}
\text{mean}(𝐱+𝐲) & = \frac{1}{n}\sum_i (x_i + y_i)\\
& = \frac{1}{n}\sum_i x_i + \frac{1}{n}\sum_i y_i\\
& = \text{mean}(𝐱)+\text{mean}(𝐲) = \overline{𝐱} + \overline{𝐲}
\end{aligned}$$
That was easy. The average of the sum is the sum of the averages.

Let's find the variance of the sum. We have
$$\begin{aligned}
\text{var}(𝐱+𝐲) & = \frac{1}{n}\sum_i (x_i + y_i - \overline{𝐱} - \overline{𝐲})^2\\
& = \frac{1}{n}\sum_i \left((x_i - \overline{𝐱}) + (y_i- \overline{𝐲})\right)^2\\
& = \frac{1}{n}\sum_i (x_i - \overline{𝐱})^2 + 2(x_i - \overline{𝐱}) (y_i- \overline{𝐲}) + (y_i- \overline{𝐲})^2\\
& = \text{var}(𝐱)+\text{var}(𝐲) + 2\sum_i \frac{(x_i - \overline{𝐱}) (y_i- \overline{𝐲})}{n}
\end{aligned}$$
Therefore, the variance of the sum is the sum of the variances _plus_ an extra term. Let's give a name to this extra expression. We write
$$\text{cov}(𝐱,𝐲)=\sum_i \frac{(x_i - \overline{𝐱}) (y_i- \overline{𝐲})}{n}$$
and we call it **covariance** between $𝐱$ and $𝐲$.

As with the variance, we often use an easier formula for the covariance. We have
$$\begin{aligned}
\text{cov}(𝐱,𝐲) &=
\frac{1}{n}\sum_i (x_i - \overline{𝐱}) (y_i- \overline{𝐲})\\ 
&=\frac{1}{n}\sum_i \left(x_i y_i - \overline{𝐱} y_i - x_i\overline{𝐲}\right) + \overline{𝐱}\overline{𝐲}\\
&=\frac{1}{n}\sum_i x_i y_i - \overline{𝐱} \frac{1}{n}\sum_i y_i - \overline{𝐲}\frac{1}{n}\sum_i x_i + \overline{𝐱}\overline{𝐲}\\
&=\frac{1}{n}\sum_i x_i y_i - \overline{𝐱} \overline{𝐲} - \overline{𝐱} \overline{𝐲} + \overline{𝐱}\overline{𝐲}\\
&=\frac{1}{n}\sum_i x_i y_i - \overline{𝐱} \overline{𝐲}
\end{aligned}$$
which can be conveniently summarized as _"the average of the products minus the product of the averages"_.

In summary, we have
$$\begin{aligned}
\text{mean}(𝐱+𝐲) & = \text{mean}(𝐱)+\text{mean}(𝐲) = \overline{𝐱} + \overline{𝐲} \\
\text{var}(𝐱+𝐲) &= \text{var}(𝐱)+\text{var}(𝐲) + 2\cdot\text{cov}(𝐱,𝐲)\\
\text{cov}(𝐱,𝐲) &= \frac{1}{n}\sum_i x_i y_i - \overline{𝐱} \overline{𝐲}
\end{aligned}$$

# Adding a constant value
If all the elements of $𝐲$ are the same constant $c$, then $\text{mean}(𝐲)=c$ and $\text{var}(𝐲)=0,$ because $(y_i-\overline{𝐲})=0$. For the same reason, $\text{cov}(𝐱,𝐲)=0.$ Therefore
$$\begin{aligned}
\text{mean}(𝐱+c) & = \text{mean}(𝐱) + c \\
\text{var}(𝐱+c) &= \text{var}(𝐱)
\end{aligned}$$

Therefore, adding a constant to a vector changes its mean but not its variance.

## Adding and scaling random variables
We measure two values in individuals taken from a large population
Both variables follow separate distributions, each one with different mean and variance. We want to know the mean and variance of the sum. We find that

+ the average of the sum is the sum of the averages
+ the variance of the sum is the sum of the averages plus two times the covariance between the variables
+ If the two variables are statistically independent, or at least uncorrelated, then the covariance is 0 and the variance of the sum is the sum of the variances.
+ If we multiply $x$ by two, then we can use that $2x=x+x$ and we find that the average of $2x$ is twice the average of $x$
+ Since $x$ is perfectly correlated with itself, then the covariance is equal to the variance. Thus, we get that the variance of $2x$ is 4 times the variance of $x$
+ In general, the variance of $αx$ is $α^2$ times the variance of $x$

# Correlation
A problem with covariance is that it depends on the units used in $𝐱$ and $𝐲$. So if, for example, we change from centimeters to inches the number will be different, despite that the relationship is the same.

Notice that if $𝐱$ has units of _centimeters_ and $𝐲$ has units of _kilograms_, then the covariance has units of _centimeters$\cdot$kilograms_. At the same time, the variance of $𝐱$ has units of _centimeters_^2^ and the variance of $𝐲$ is given in _kilograms_^2^.

A way to solve this issue is to divide the covariance by a value that represents the variability of $𝐱$ and of $𝐲$. It cannot be the variance, since it has the wrong units. But we can take the _square root_ of the variance.

The resulting value is called _Pearson's correlation_
$$\text{cor}(𝐱,𝐲)=\frac{\text{cov}(𝐱,𝐲)}{\sqrt{\text{var}(𝐱)}\sqrt{\text{var}(𝐲)}}$$

The square root of the variance is called _standard deviation_
$$\text{sd}(𝐱)≡\sqrt{\text{var}(𝐱)}.$$

Now we can write
$$\text{cor}(𝐱,𝐲)=\frac{\text{cov}(𝐱,𝐲)}{\text{sd}(𝐱)\text{sd}(𝐲)}.$$

Since the covariance of a vector with itself is the same as its variance, the correlation of a vector with itself is always 1.