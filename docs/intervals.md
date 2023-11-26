---
title: Confidence Intervals
date: 2021-02-21 13:43:32
thanks: "October 10, 2021"
author: "Andrés Aravena, Ph.D."
institute: Istanbul University
lang: en
documentclass: IEEEtran
fontsize: 10pt
fontfamily: mathpazo
classoption: a4paper
header-includes: 
  - '\ifPDFTeX'
  - '\DeclareUnicodeCharacter{1D431}{\mathbf{x}}'
  - '\DeclareUnicodeCharacter{1D432}{\mathbf{y}}'
  - '\DeclareUnicodeCharacter{2261}{\equiv}'
  - '\DeclareUnicodeCharacter{03B2}{\beta}'
  - '\DeclareUnicodeCharacter{1D53C}{\mathbb{E}}'
  - '\DeclareUnicodeCharacter{1D54D}{\mathbb{V}}'
  - '\DeclareUnicodeCharacter{2119}{\mathbb{P}}'
  - '\DeclareUnicodeCharacter{2260}{\not=}'
  - '\DeclareUnicodeCharacter{03BC}{\mu}'
  - '\DeclareUnicodeCharacter{03C3}{\sigma}'
  - '\fi'
mathjax: true
links:
  - "[[_drafts/2021/math4bio/vector-mean-variance.md]]"
---

# Different questions
If $X$ is a random variable that follows some distribution, we can ask several questions

+ What is the expected value of $X$?
+ What is the variance of $X$?

These two questions can only be answered if we know *the full population*

In most cases we do not know the *real* population, but we can **assume** we know it

# Exercise 1

Let's say that we know that the expected value of $X$ is $μ$ and the variance of $X$ is $σ^2$:
$$𝔼 X=μ \qquad 𝕍 X=σ^2$$

Then we can ask: What is the probability that $X$ is more than any value $a$?
$$ℙ(X > a\, |\,μ, σ^2)?$$

**Exercise:** Answer that for Binomial $(μ=50, σ^2=25)$ and Normal $(μ=0, σ=1)$ distributions, for different values of $a.$

# Exercise 2
What is the probability that $X$ is inside the interval $[a_1, a_2]$?
$$ℙ(a_1 ≤ X ≤ a_2 | μ, σ^2)?$$

**Exercise:** Answer that for Binomial and Normal distributions

Can we replace the Binomial $(μ=50, σ^2=25)$ by a Normal $(μ=50, σ^2=25)$?

# Inverse question
Since in reality we don't know $μ,$ we would like to ask about it:

> What is the probability that $μ$ is in the range $[b_1,b_2],$ given that in our experiment $X$ had a value $a$?

If $b_1$ and $b_2$ are fixed, that question in useless. The answer is either 1 or 0, since $μ$ **is not** random.
Instead we want to find two functions $b_1(X)$ and $b_2(X)$ depending on the experiment result $X$ such that

$$ℙ(b_1(X)<μ<b_2(X))=1-α$$

where $α$ is a small number, typically 0.05 or 0.01

# Confidence interval
**Exercise:** Find 90% confidence intervals
+ For a Binomial distribution
+ For a Normal distribution

# Formula
If $X$ follows a Normal $𝒩(μ, σ^2)$, then the value
$$Z=\frac{X-μ}{σ}$$
is also random and follows a Normal(0,1). In particular the average $\bar x$ of a sample (i.i.d.) is Normal $(μ, σ^2/n),$ so
$$Z=\frac{\bar x-μ}{σ/\sqrt{n}}$$
is also Normal(0,1)

# Formula
Therefore we can calculate $ℙ(c_1<Z<c_2)$ for any $c_1,c_2.$

Since the Normal distribution is symmetrical around 0 we can choose $c_1=-c_2.$ That will give us the narrowest interval

So, given a confidence level $1-α,$ we look for $c$ such that
$$ℙ(-c<Z<c)=1-α$$ 
 
# Finding $c$
Again, since the normal distribution is symmetric, $c$ will be such that
$$ℙ(Z< -c)=ℙ(Z>c)=α/2$$
This is the value we have to find in a table, or using R
```r
qnorm(1-alpha/2)
qnorm(alpha/2, lower.tail = F)
```

# Graphic
```r
mean=0; sd=1
lb=-1.9
ub=-lb

x <- seq(-4,4,length=100)*sd + mean
hx <- dnorm(x,mean,sd)

plot(x, hx, type="n", xlab="", ylab="",
  main="Normal Distribution", axes=FALSE)

i <- x >= lb & x <= ub
lines(x, hx)
polygon(c(lb,x[i],ub), c(0,hx[i],0), col="red") 

area <- pnorm(ub, mean, sd) - pnorm(lb, mean, sd)
axis(1, at=seq(-4,4), pos=0)
```

# What about the interval?
Once we found $c$ we can build our interval. If
$-c<Z<c$ then
$$-c<\frac{\bar x-μ}{σ/\sqrt{n}}<c$$
so
$$-\frac{cσ}{\sqrt{n}}<\bar x-μ < \frac{cσ}{\sqrt{n}}$$
then
$$\bar x - \frac{cσ}{\sqrt{n}}< μ <\bar x + \frac{cσ}{\sqrt{n}}$$

# In summary
If the average follows a Normal distribution and **we know the population variance**, then a confidence interval for $μ$ is

$$
\begin{aligned}
b_1 & = \bar x-c(α)σ/\sqrt{n}\\
b_2 & = \bar x+c(α)σ/\sqrt{n}
\end{aligned}
$$
with $c(α)$ is taken from the Normal(0,1) table

# But we don't know the population variance
Can we use the *sample* variance?

+ No, because it is biased
+ But we can use the unbiased *variance estimator* 
  $$S_n=\frac{1}{n-1}\sum_{i=1}^n(x_i-\bar x)^2$$
+ and we have to pay a price

# Price of ignorance
Since we do not know $σ^2$ we have to estimate it using the data.

But we use the same data to calculate $\bar x$

Thus, $\bar x$ and $S_n$ are not independent

# T instead of Z
Now instead of
$$Z=\frac{\bar x-μ}{σ/\sqrt{n}}$$
we define
$$T=\frac{\bar x-μ}{S_n/\sqrt{n}}$$
which does not follow a Normal, but a *Student's t-distribution*

# Student's t-distribution
The "frequency distribution of standard deviations of samples drawn from a normal population"

This is a *family* of distributions, depending on a parameter called **"degrees of freedom"**

Since the sample has size $n$ we initially have $n$ degrees of freedom.
But the average is fixed, so we lose one degree of freedom

# Student's t-distribution
```r
t<- seq(-4,4,length=100)
plot(t, dnorm(t), type="l", ylim=c(0,0.45))
lines(t, dt(t,1), col="red")
lines(t, dt(t,3), col="blue")
legend("topright",
  legend = c("Normal", "T 1df", "T 3df"),
  fill=1:3, horiz = TRUE)
```

# Some typical interval limits
```r
deg.fr <- c(1:5,30)
ans <- data.frame(deg.fr,
        c90=qt(1-0.1/2,deg.fr),
        c95=qt(1-0.05/2,deg.fr),
        c99=qt(1-0.01/2,deg.fr))
ans <- rbind(ans,
    data.frame(deg.fr="Normal",
    c90=qnorm(1-0.1/2),
    c95=qnorm(1-0.05/2),
    c99=qnorm(1-0.01/2)))
colnames(ans) <- c("DF", "90%", "95%", "99%")
kable(ans, digits=2)
```
