---
title: "Information"
date: "2021-02-16 21:58"
lang: en
featured: false
---

## Information
We have seen that, when two variables are not independent, they share some *information*

Knowing something about $X$ tell us something about $Y$.

*How much* does it tell us?

Can we put a value on this *information*?

## One coin
+ I toss a coin
+ I see the result
+ You do not know the result yet

I know something that you do not know: the result of a binary fair choice

If I tell you the result I am giving you some **information**
We call this **one bit** of information.

## Two coins
+ I toss two fair and independent coins
+ I see the result
+ You do not know the result yet

Now I know twice as much information as before: 2 bits

In general, tossing *N* coins will give *N* bits

## One unfair coin
This time the coin is *really* biased, and you know it.

It always falls on *Heads*

I see the result, but you already know.

Therefore now the information is **0 bits**

## Rules for Information
The realization of a random variable $X$ will give us some information

This information depends *only* on the probability distribution of $X$

+ It is never negative: we cannot "unlearn"
+ The information of several independent events is the sum of each information
+ *N* independent fair coins give *N* bits
+ If there is a value of $X$ with probability 1, then the information is 0
+ Two variables with similar distribution have similar information

## As a function
We will represent the information of the random variable $X$ by the function $H(X)$.

+ $H(X)≥ 0$
+ $H(X,Y) = H(X) + H(Y)$
+ $H($fair coin$)=1$
+ $H($biased coin$)=0$
+ $H(X)$ is a continuous function

## Formula for Information
Claude Shanon defined the *information of a random variable* $X$ as
$$H(X) = - \sum_x ℙ(X=x) \log_2 (ℙ(X=x))$$
with the convention that $0\cdot\log_2 (0) = 0$.

Notice that, since $ℙ(X)≤ 1$, this formula is always positive or zero.

## Validation of Rules
+ For a fair coin, $ℙ(X=$ heads$)=ℙ(X=$ tails$)=1/2$. Therefore
$$H(X) = -\frac{1}{2}\log_2(\frac{1}{2})-\frac{1}{2}\log_2(\frac{1}{2})$$
$$H(X) = -\log_2(2^{-1}) = 1$$
+ For a biased coin, $ℙ(X=$ heads$)=1$, $ℙ(X=$ tails$)=0$. So
$$H(X) = - 1\log_2(1) - 0 \log_2(0) = 0$$

## Information of independent events
Following the definition, we have
$$H(X,Y) = -\sum_X \sum_Y ℙ(X,Y) \log_2(ℙ(X,Y))$$
If $X$ and $Y$ are independent, then $ℙ(X,Y)=ℙ(X)ℙ(Y)$. So
$$H(X,Y) = -\sum_X \sum_Y ℙ(X)ℙ(Y) \log_2(ℙ(X)ℙ(Y))$$

The logarithm of a product is the sum of the logarithms, so
$$H(X,Y) = -\sum_X \sum_Y ℙ(X)ℙ(Y) \log_2(ℙ(X)) -\sum_X \sum_Y ℙ(X)ℙ(Y) \log_2(ℙ(Y)).$$
The sums can be reorganized as
$$H(X,Y) = -\sum_Y ℙ(Y) \sum_X ℙ(X) \log_2(ℙ(X)) -\sum_X ℙ(X)\sum_Y ℙ(Y) \log_2(ℙ(Y))$$
(Just using the associative and distributive laws)

Since we know that $\sum_X ℙ(X)=\sum_Y ℙ(Y)=1$, we have
$$H(X,Y) = -\sum_X ℙ(X) \log_2(ℙ(X)) - \sum_Y ℙ(Y) \log_2(ℙ(Y)),$$
therefore
$$H(X,Y) = H(X) + H(Y)$$

It is easy to see that this result can be generalized to several independent random variables.


----

## Information of dependent events
Following the definition, we have
$$H(X,Y) = -\sum_x \sum_y ℙ(X=x,Y=y) \log_2(ℙ(X=x,Y=y))$$
If $X$ and $Y$ are not independent, then $ℙ(X=x,Y=y)=ℙ(X)ℙ(Y=y|X=x)$. So
$$H(X,Y) = -\sum_x \sum_y ℙ(X=x)ℙ(Y=y|X=x) \log_2(ℙ(X=x)ℙ(Y=y|X=x))$$

The logarithm of a product is the sum of the logarithms, so

$$H(X,Y) = -\sum_x \sum_y ℙ(X=x)ℙ(Y=y|X=x) \log_2(ℙ(X=x)) \\
-\sum_x \sum_y ℙ(X=x)ℙ(Y=y|X=x) \log_2(ℙ(Y=y|X=x)).$$

The sums can be reorganized as

$$H(X,Y) = -\sum_y ℙ(Y=y|X=x) \sum_x ℙ(X=x)\log_2(ℙ(X=x)) \\
-\sum_x ℙ(X=x)\sum_y ℙ(Y=y|X=x) \log_2(ℙ(Y=y|X=x)).$$
that is 
$$H(X,Y) = \sum_y ℙ(Y=y|X=x) H(X) + \sum_x ℙ(X=x)H(Y|X=x).$$
that is
$$H(X,Y) = H(X) + H(Y|X).$$
and also
$$H(X,Y) = H(X|Y) + H(Y)$$
