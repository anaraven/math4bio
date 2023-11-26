---
title: "Simple linear model"
date: "2021-10-02 14:32:55"
thanks: "October 8, 2021"
author: Andrés Aravena, Ph.D.
institute: Istanbul University
lang: en
documentclass: IEEEtran
fontsize: 10pt
classoption: a4paper
featured: false
mathjax: true
links:
  - "[[_drafts/2021/math4bio/sample-average-variance.md]]"
  - "[[_drafts/2021/math4bio/vector-mean-variance.md]]"
---

We have again two vectors $𝐱$ and $𝐲$ with the same length $n,$ and we want to explore their relationship. In particular, we want to see if there is a straight line connecting them. If that was the case, there are two constants (let's call them $β_0$ and $β_1$) that would allow us to write an expression like
$$y_i ≟ β_0+β_1 x_i$$
It turns out that, in many relevant cases, this equation is false but no too much. For each value of $i$ there will be a difference
$β_0+β_1 x_i - y_i$
that we call the _residual_.

The total error of approximating {$y_i$} with a straight line is given by the sum of all residuals
$$L(β_0, β_1)=\sum_i (β_0+β_1 x_i - y_i)^2$$
We write it as a function $L(β_0, β_1)$ to emphasize that the total error depends only on $β_0$ and $β_1$ since the values $\{x_i\}$ and $\{y_i\}$ are fixed. They are the data, that is, they are given to us.

We want the smallest possible error. We will look for the "best" values of $β_0$ and $β_1,$ that is, the ones that make $L(β_0, β_1)$ smallest. The easiest way to find the best values is to take derivatives. We do not need to use a lot of calculus here. We only need to know that, in every point where $L$ has a minimum, its derivative must be 0. Moreover, it can be shown that this particular expression has one and only one point where the derivative is 0.

Since we have two variables, we take two partial derivatives. We want to solve the system
$$\frac{∂L(β_0, β_1)}{∂β_0}=0,\qquad \frac{∂L(β_0, β_1)}{∂β_1}=0$$

The first expression can be written as
$$\begin{aligned}
\frac{∂L(β_0, β_1)}{∂β_0} &=\sum_i 2(β_0+β_1 x_i - y_i)\\
&= 2 n β_0 + 2β_1\sum_i x_i - 2\sum_i y_i
\end{aligned}$$

We are looking for conditions when this expression is equal to zero, thus
$$2 n β_0 + 2β_1\sum_i x_i - 2\sum_i y_i=0$$
which can be rewritten as
$$β_0 + \frac{1}{n}β_1\sum_i x_i = \frac{1}{n}\sum_i y_i$$
in other words
$$\overline{𝐲} = β_0 + β_1 \overline{𝐱}$$

This is nice. The point $(\overline{𝐱}, \overline{𝐲})$ satisfies the line equation. It means that the best straight line will always pass through both averages at the same time. 

For the second condition, the derivative with respect to $β_1$ is
$$\begin{aligned}\frac{∂L(β_0, β_1)}{∂β_0}
 &=\sum_i 2(β_0+β_1 x_i - y_i)⋅x_i\\
 &=2 β_0 \sum_i x_i + 2 β_1 \sum_i x_i^2 -2\sum_i x_i y_i
\end{aligned}$$
This expression must be equal to 0. That is
$$β_0 \sum_i x_i + β_1 \sum_i x_i^2 = \sum_i x_i y_i$$

Since we know that $β_0 = \overline{𝐲} - β_1 \overline{𝐱}$ we can replace it in the previous expression, and we get
$$(\overline{𝐲} - β_1 \overline{𝐱}) \sum_i x_i + β_1 \sum_i x_i^2 = \sum_i x_i y_i$$
that is
$$\overline{𝐲}\sum_i x_i - β_1 \overline{𝐱} \sum_i x_i + β_1 \sum_i x_i^2 = \sum_i x_i y_i$$

Now we remember that $∑ x_i = n\overline{𝐱},$ so we can rewrite this last expression as
$$n\overline{𝐱}\overline{𝐲} - β_1 n\overline{𝐱}^2 + β_1 \sum_i x_i^2 = \sum_i x_i y_i$$
then, dividing by $n,$ we have
$$β_1 \left(\frac{1}{n}\sum_i x_i^2 - \overline{𝐱}^2\right) = \frac{1}{n}\sum_i x_i y_i - \overline{𝐱}\overline{𝐲}$$

You may recognize that
$$\frac{1}{n}\sum_i x_i^2 - \overline{𝐱}^2=\text{var}(𝐱)$$
and
$$\frac{1}{n}\sum_i x_i y_i - \overline{𝐱}\overline{𝐲}=\text{cov}(𝐱,𝐲)$$

Finally, we get
$$\begin{aligned}
β_1 &= \frac{\text{cov}(𝐱,𝐲)}{\text{var}(𝐱)}\\
β_0 &= \overline{𝐲} - β_1 \overline{𝐱}
\end{aligned}$$

# How bad is this model
We can measure the quality of a model using the same philosophy as before, with the average of the square of errors. This number is called _mean square error_.

The simplest model of $𝐲$ is just $\overline{𝐲}$. In that case, the mean square error is
$$MSE_0=\frac{1}{n}\sum_i (y_i - \overline{𝐲})^2$$

For a simple linear model we have
$$MSE_1=\frac{1}{n}\sum_i (y_i - β_0 - β_1 x_i)^2$$

Replacing $β_0 = \overline{𝐲} - β_1 \overline{𝐱}$ we have
$$MSE_1=\frac{1}{n}\sum_i (y_i - \overline{𝐲} + β_1 \overline{𝐱} - β_1 x_i)^2$$
which we can rewrite as
$$MSE_1=\frac{1}{n}\sum_i \left((y_i - \overline{𝐲}) - β_1(x_i - \overline{𝐱})\right)^2$$

Expanding the binomial square we get
$$MSE_1=\frac{1}{n}\sum_i (y_i - \overline{𝐲})^2 - 2β_1(y_i - \overline{𝐲})(x_i - \overline{𝐱}) + β_1^2(x_i - \overline{𝐱})^2$$
which can be rewritten as
$$MSE_1=\text{var}(𝐲) - 2β_1\text{cov}(𝐱,𝐲) + β_1^2\text{var}(𝐱).$$

Now we replace $β_1$ by its calculated value
$$MSE_1=\text{var}(𝐲) - 2\frac{\text{cov}(𝐱,𝐲)}{\text{var}(𝐱)}\text{cov}(𝐱,𝐲) + \frac{\text{cov}^2(𝐱,𝐲)}{\text{var}^2(𝐱)}\text{var}(𝐱)$$
which simplifies to
$$MSE_1=\text{var}(𝐲) - \frac{\text{cov}^2(𝐱,𝐲)}{\text{var}(𝐱)}.$$

This already shows that the mean square error is better in model 1.

# Relative improvement and Correlation
The variance in the new model is better, but how much?
The absolute change in variance is 
$$MSE_0 - MSE_1=\frac{\text{cov}^2(𝐱,𝐲)}{\text{var}(𝐱)}.$$
and the relative change is
$$\frac{MSE_0-MSE_1}{MSE_0}=\frac{\text{cov}^2(𝐱,𝐲)}{\text{var}(𝐱)\text{var}(𝐲)}.$$

This number represents the percentage of variance that is explained by the model.
The name of this number is $R^2$.

You may remember that the _Pearson correlation coefficient_ between two variables is
$$r=\frac{\text{cov}(𝐱,𝐲)}{\text{sd}(𝐱)\text{sd}(𝐲)}$$
so we have **in this case** that 
$$R^2 = r^2$$

This is valid for linear models with a single independent variable.
It will not be valid for models with several predictors.
