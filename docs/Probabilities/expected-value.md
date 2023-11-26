---
title: "Random variables and expected values"
date: "2021-02-19 12:27"
lang: en
featured: false
mathjax: true
---

# True/False becomes 1/0
If $Q$ is a yes-no question, we will use the notation $〚Q〛$ to represent this:

$$〚Q〛=\begin{cases}
1\quad\text{if }Q\text{ is true}\\
0\quad\text{if }Q\text{ is false}
\end{cases}$$

Then instead of writing
$$ℙ(E)=\sum_{ω ∈ E}p(ω)$$
we can write
$$ℙ(E)=\sum_{ω}p(ω) 〚ω ∈ E〛$$

## Examples
1. It is nicer to write the sum limits
    $$\sum_{x=1}^{10} x = \sum_x x 〚 1≤x≤10〛$$

2. It is nicer to change variables
    $$\sum_{x=-3}^{3} x^2 = \sum_x x^2 〚-3≤x≤3〛= \sum_x (x-3)^2 〚0≤x≤6〛$$


# Random variables
If we can calculate a number that depends on the outcome of an experiment, that number is called **random variable**

Formally, a random variable is any function $X:Ω → ℝ$. For example, if we throw two dice, we can define $X(ω)$ to be the sum of the spots on the outcome $ω$

The probability that the spots total seven is the probability of the event $X(ω) = 7$

To simplify, instead of $ℙ(X(ω) = 7)$ we write $ℙ(X = 7)$

## Examples
+ Numbers in a dice
+ size of a plant
+ weight of an animal
+ temperature
+ age of a person

# Average, that is, mean value
What is the average age of people in Turkey? We have 𝑛 people, that we can identify with an index 𝑖 from 1 to 𝑛. Let's represent the age of person 𝑖 with the symbol $x_i.$ Now we can represent all the population with a vector $𝐱 = (x_1, …, x_n).$ For now we will assume that we know all these $x_i$ values, and we will calculate some numbers with them.

Notice that we write the vector with a bold-face roman 𝐱, and each one of the values with a subindex and italic font $x_i.$

The mean value if the vector $𝐱 = (x_1, …, x_n)$ is
$$\text{mean}(𝐱)=\bar 𝐱 = \frac{1}{n}\sum_i x_i$$

The (absolute) frequency, or count, of each value 𝑥 is
$$N(x)=\sum_i 〚x_i=x〛$$

The proportion, or relative frequency, of each value 𝑥 is
$$p(x)=\frac{N(x)}{n}$$

For a vector $𝐱 = (x_1, …, x_n)$ we have
$$\text{mean}(𝐱)=\sum_x x \frac{N(x)}{n}=\sum_x x\, p(x)$$

Now we notice that the proportion $p(x)$ is also the probability $ℙ(X=x).$ We do not need to know 𝑛. Sometimes it may not even be possible to know 𝑛. Fortunately, we only need to know $ℙ(X=x).$
<!-- find a new symbol for the free variable, instead of 𝑥. Maybe ω, maybe 𝑎. -->

# Expected value - Mean value
For any random variable $X$ we define the **expected value** (also called **mean value**) of $X$ as the average of $X(ω)$ over the population $Ω$
$$𝔼X=\sum_ω X(ω)\, ℙ(X(ω))=\sum_ω X(ω)\, p(ω)$$
$$𝔼X=\sum_x x\, ℙ(X=x)$$
Notice that $X$ is a random variable but $𝔼X$ is not.

Sometimes, for a given population and random variable, we call $μ=𝔼X$

## Expected value is linear
If $X$ and $Y$ are two random variables, and $α$ is a real number, then

+ $𝔼(X + Y)=𝔼X + 𝔼Y$
+ $𝔼(α⋅X)=α⋅𝔼X$

So, if $α$ and $β$ are real numbers, then

+ $𝔼(α⋅X +β⋅Y)=α⋅𝔼X +β⋅𝔼Y$

## Example: expected value of coins
Let $X$ be a random variable corresponding to "success" or "failure", that we will represent by 1 and 0. The probability of success is $p$, and the probability of failure is $q.$

The expected value of $X$ is
$$𝔼(X) = \sum_{x∈\{0,1\}} xℙ(X=x) = 1⋅p + 0⋅q = p$$

Now consider $n$ independent coins, all with the same probability of success, and we want to know how many of them are successful. Let
$$Y_n =\sum_{k=0}^n X_i.$$
Then
$$𝔼(Y_n) = 𝔼\left(\sum_{k=1}^n X_i\right)=\sum_{k=1}^n 𝔼(X_i)=\sum_{k=1}^n p = n⋅p$$



# Variance of the population
The **variance of the population** is defined with the same idea as the sample variance
$$𝕍X=𝔼(X-𝔼X)^2$$
Notice that the variance has *squared units*

In most cases it is more comfortable to work with the **standard deviation** $σ=\sqrt{𝕍X}.$

In that case the **population variance** can be written as $σ^2$

$$\text{Var}(𝐱)= \frac{1}{n}\sum_i (x_i-\bar x)^2=\sum_x (x-\bar x)^2\, p(x)$$


## Simple formula for population variance
We can rewrite the **variance of the population** with a simpler formula:
$$𝕍X=𝔼(X-𝔼X)^2=𝔼(X^2)-(𝔼X)^2$$
because
$$𝔼(X-𝔼X)^2=𝔼(X^2-2⋅X⋅𝔼X+(𝔼X)^2)\\
=𝔼(X^2)-2⋅𝔼(X⋅𝔼X)+𝔼(𝔼X)^2$$
but $𝔼X$ is a non-random number, so $𝔼(X𝔼X)=(𝔼X)^2$ and $𝔼(𝔼X)^2=(𝔼X)^2$

## Variance is almost linear
if $X$ and $Y$ are two **independent** random variables, and $α$ is a real number, then

+ $𝕍(X + Y)=𝕍 X + 𝕍 Y$
+ $𝕍(α X)=α^2 𝕍 X$

To prove the first equation we use that $𝔼(XY)=𝔼X\,𝔼Y,$ which is true when $X⟂Y$

## Example: variance of coins
Let $X$ be a random variable corresponding to "success" or "failure", that we will represent by 1 and 0. The probability of success is $p$, and the probability of failure is $q.$

The variance of $X$ is
$$𝕍(X) = \sum_{x∈\{0,1\}} (x - p)^2ℙ(X=x) = (1-p)^2⋅p + (0-p)^2⋅q = p q^2+p^2q = p q (p+q)=p q$$

It is easier to calculate using the simple formula
$$𝕍(X)=𝔼(X^2)-(𝔼X)^2 = p -p^2 =p(1-p)=p q$$

Now consider $n$ independent coins, all with the same probability of success, and we want to know how many of them are successful. Let
$$Y_n =\sum_{k=0}^n X_i$$
Then
$$𝕍(Y_n) = 𝕍\left(\sum_{k=1}^n X_i\right)=\sum_{k=1}^n 𝕍(X_i)=\sum_{k=1}^n p q = n p q$$

# Why we care about variance
The main reason is that it tells us how close is most of the population to the mean
$$ℙ((X-𝔼X)^2≥α) ≤ 𝕍X/α$$
This is **Chebyshev's inequality** and it is always valid, for any probability distribution

It may be easier to understand if we call $α=c^2⋅𝕍X.$ Then we have
$$ℙ(|X-𝔼X| ≥ c\sqrt{𝕍X})≤ 1/c^2$$
$$ℙ(|X-𝔼X| ≤ c\sqrt{𝕍X})≥ 1-1/c^2$$

$$ℙ(-c\sqrt{𝕍X} ≤ X-𝔼X ≤ c\sqrt{𝕍X})≥ 1-1/c^2$$
$$ℙ(𝔼X-c\sqrt{𝕍X} ≤ X ≤ 𝔼X+c\sqrt{𝕍X})≥ 1-1/c^2$$


# Proof of Chebyshev's inequality
By the definition we have
$$𝕍(X)=𝔼(X-𝔼X)^2=\sum_x (x-𝔼X)^2ℙ(X=x)$$
If we multiply the probability by a number that is sometimes 0 and sometimes 1, the sum has to be smaller. We multiply by $〚(x-𝔼X)^2≥α〛$
$$𝕍(X)≥ \sum_x (x-𝔼X)^2ℙ(X=x)〚(x-𝔼X)^2≥α〛$$
In that case, all $(X-𝔼X)^2≥α$, therefore
$$𝕍(X)≥ α \sum_x ℙ(X=x)〚(x-𝔼X)^2≥α〛=αℙ\left((X-𝔼X)^2≥α\right)$$
Then we can divide by $α$ and we get our result

# Exercise
+ Given mean and variance, find a bound for the probability of the next experiment

# In summary
+ When experiments produce numbers we can calculate average and variance
+ The population has a fixed mean and variance, even if we do not know their values

-------

# Why probabilities? What can we use them for?
+ Probability of 𝑥 is the proportion of 𝑥 in the population
+ how many blonds/left-handed people are in Turkey?
+ How many obese people are in your city?

Since $ℙ(X=x)=𝔼〚X=x〛$ and $𝔼〚X=x〛$ is the average, then calculating averages tells us about probabilities.

