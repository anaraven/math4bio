# Discrete distributions

## Bernoulli
A coin is a [[Bernoulli]] random variable. It is also a deck of cards with two suits.
It has two possible outcomes, like Heads v/s Tails or True v/s False or Success v/s Failure. The most convenient representation is 1 v/s 0.
We write
$$X\sim \text{Bernoulli}(p)$$
where $p$ is the probability of $X=1$. In other words, it is the proportion of "good" cards in a deck. Naturally
$$\begin{aligned}
\Pr(X=1)&=p,\\
\Pr(X=0)&=1-p
\end{aligned}$$

## Binomial

The sum of $n$ independent Bernoulli random variables is a number $k$ between 0 and $n$. This random variable follows a [[Binomial Distribution]]
We write
$$X\sim \text{Binomial}(p,n)$$
where $p$ is the probability of "success" on each individual "coin". Now
$$\Pr(X=k)={n\choose k} p^k (1-p)^{n-k}$$

## Poisson

This is the distribution for _rare events_.  We assume that $n$ grows to infinite (or at least is big) but $np=\lambda$ is fixed.

We can always  write
$${n\choose k} =\frac{n!}{k! (n-k)!}=\frac{n!}{(n-k)!} \frac{1}{k!}$$
so if we write $np=\lambda$ then
$${n\choose k} p^k (1-p)^{n-k}=
\frac{1}{k!}\lambda^k \frac{n!}{(n-k)!}\frac{(1-\lambda/n)^n}{n^k(1-\lambda/n)^k}=
\frac{1}{k!}\lambda^k \frac{n!}{(n-k)!}\frac{(1-\lambda/n)^n}{(1-\lambda)^k}$$


When $n$ grows to infinite then 
$$\lim_{n\to\infty} {n\choose k} p^k (1-p)^{n-k}=
\frac{1}{k!}\frac{\lambda^k}{(1-\lambda)^k} \lim_{n\to\infty}\frac{n!}{(n-k)!}(1-\lambda/n)^n$$

then we have $(1-\lambda/n)^n\to\exp(-\lambda)$ and ${n!}/{(n-k)!}\to 1$. Finally,
$$\Pr(X=k)=\frac{1}{\exp(\lambda)} \frac{\lambda^k}{k!}$$

We verify that the total probability is correct.
$$\sum_{k=0}^\infty\Pr(X=k)=\frac{1}{\exp(\lambda)}\sum_{k=0}^\infty \frac{\lambda^k}{k!}
=\frac{1}{\exp(\lambda)}\exp(\lambda)=1$$

## Geometric

This is the distribution of successes until a failure. The outcome is $X=k$ if we succeed $k$ times (with probability $p$) and then we fail one time with probability $1-p$. Since every coin is independent, we have
$$\Pr(X=k)=p^k (1-p)$$
Therefore
$$\begin{aligned}
\sum_{k=0}^\infty\Pr(X=k)&=(1-p)\sum_{k=0}^\infty p^k\\
&=(1-p)\frac{1}{1-p}\\&=1
\end{aligned}$$

## Negative binomial

Number of trials until $r$ failures.
Combination of geometric (or Poisson)

## Hypergeometric
