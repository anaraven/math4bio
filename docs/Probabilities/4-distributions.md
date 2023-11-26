---
title: "Classical Distributions"
author: Andrés Aravena, PhD
date: "2019-09-04 12:11"
category: Probabilities
mathjax: true
---

# Classical distributions
+ Bernoulli. One coin, $p=1-q$. One dice. Symmetry and when to use it. Sampling with replacement
+ Binomial. $n$ coins, $k$ are heads. $C(n, k)p^k q^{n-k}$
+ Negative binomial. Number of failures until success
+ hypergeometric: sampling without replacement 


## Some discrete distributions
So far we have worked with random systems where the outcomes are discrete

+ Only two outcomes, like in a coin
+ A finite number of outcomes, such as DNA
+ A natural number, such as the number of successful experiments

## Bernoulli distribution
+ A single "coin", or any experiment with only two possible outcomes
    + $\Pr(\text{success}) = p$
    + $\Pr(\text{failure}) = q = 1-p$
+ We can encode it as 0 or 1 using $[\text{success}]$
+ The expected value of $[\text{success}]$ is $$𝔼[\text{success}]=p$$
+ The variance of $[\text{success}]$ is $$𝕍[\text{success}]=pq$$

## Binomial distribution
We throw $n$ "coins", all independent, all with the same probability of success $p$

The number $S_n$ of successful "coins" is a random variable. It's distribution is
$$\Pr(S_n)=\Pr(k\text{ successes in }n\text{ trials})=\binom{n}{k}p^k q^{n-k}$$
It is easy to see that
$$\begin{aligned}
𝔼(S_n)& =np\\
𝕍(S_n)& =npq
\end{aligned}$$



## Expected value and variance
$$𝔼(X)=\sum_x x\Pr(X=x)$$

## Sampling 
Independent, identically distributed 

What can we predict about the sample if we know the distribution?

What can we learn about the distribution if we know the sample?

Each item in the sample has the same expected value $𝔼(X)$. The sum has expected value $n𝔼(X)$. The average has expected value $n𝔼(X)/n=𝔼(X)$.

Each item has the same variance $V(X)$. The sum has variance $n V(X).$ The average has variance $n V(X)/n^2=V(X)/n.$

Each item has the same standard deviation $sd(X)$. The sum has variance $\sqrt{n} \cdot\text{sd}(X).$ The average has variance $\sqrt{n} \cdot\text{sd}(X)/n=\text{sd}(X)/\sqrt{n}.$

Therefore, when the sample is larger (n is bigger) then the average’s variance is smaller.



## Law of large numbers
Average converges to $𝔼(X)$ when samples are big

Tchebyshev theorem

## Central Limit theorem
+ Random -1,1
+ Expected value =0
+ Variance =1
+ Sample size n
+ Average= sum/n random variable 
+ Expected value is 0
+ variance of sum = n
+ variance of average = 1/n

## Parametric statistical inference

## Hypothesis testing

----
## Sampling
+ sampling on small populations. probabilities depend on proportions. first is easy to model, the rest depends on the first
+ sampling in a big population is better. probabilities depend on proportions. Proportions change very little, so we can ignore. Big population can be countries, species, etc.
+ sampling with replacement represents a population of infinite size. Proportions never change. This is the "ideal" case.

## Shuffling
We start with a deck of 26 cards, which we can represent by the vector `LETTERS`. This corresponds to taking *hearts* ♡ and *clubs* ♣︎.

Shuffling means changing the order of the cards randomly. This means that the cards are the same, but we do not know the specific order. _Random_ here means _we don't know_. To be more specific, we know what are the cards, but we ignore the order.

We will take the first card and look at it. In other words we will realize an experiment.
The card we are going to take will be the _outcome_ of the experiment. What can we tell about the card before we take it?

If the shuffling mixes everything, any card can be the first card. All cards have the same chance of being the first card.
$$\forall X\in\Omega, \forall Y\in\Omega\quad \Pr(\text{first card is }X)=\Pr(\text{first card is }Y)$$

We will represent the chances by a value called *probability*. There are some rules to follow, which we will discuss later. For now we have this rule: the sum of the probabilities of each outcome is equal to 1.
$$\sum_X \Pr(\text{first card is }X)=1$$
Since all cards have the same probability of being the first card, we have that the probability is 1/N.
$$N\cdot\Pr(\text{first card is }X)=1$$
$$\forall X\quad \Pr(\text{first card is }X)=1/N$$

The second card is different. Since we took one card, that particular value cannot come again. The probabilities for the second card depend on the result of the first card. If the first card was $X,$ then the probabilities for the second card are equal for the remaining cards. In other words
$$\Pr(\text{second card is }Y)=\begin{cases}0&\text{if }Y=X\\
1/(N-1)&\text{if }Y\not=X\end{cases}$$

We can continue with the third, and fourth, and so on. In some cases we will do that. But in most cases we will consider the case when the deck of cards is *big* and we only take a few cards. If the deck of cards is big, then $N$ is big, and $N-1\approx N.$ For example, when we take a survey and we interview a small part of the population.

If the population is big, the proportions do not change.
