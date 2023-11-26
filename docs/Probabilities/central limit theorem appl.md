---
title: Central Limit theorem
date: 2021-04-17 19:16:54
mathjax: true
---

## Application
The probability that $B_n=k$ for each $k$ can be very small, but for a range is usually bigger

What is the probability that $B_n≥ a$ for any $a$?

$$\begin{aligned}ℙ(B_n≥ a)& =\sum_{k=a}^n ℙ(B_n=k)\\
& =\sum_{k=a}^n\binom{n}{k}p^k q^{n-k}\end{aligned}$$

## General case
What is the probability that $B_n$ is in the range $[a,b]$?
$$ℙ(a≤ B_n≤ b)=\sum_{k=a}^bℙ(B_n=k)$$
Or, if $a$ and $b$ are not integers
$$ℙ(a≤ B_n≤ b)=\sum_{a≤ k≤ b}ℙ(B_n=k)$$


## Change of variable
We want to see what happens when $n$ is big. Let
$$S_n = \frac{B_n-np}{\sqrt{npq}}$$
It is easy to see that

$$\begin{aligned}
\mathbb E(S_n)& =0\\
\mathbb V(S_n)& =1
\end{aligned}$$
for all values of $n$

## Probability
To evaluate $ℙ(a≤ S_n≤ b)$ we can do
$$x_k=\frac{k-np}{\sqrt{npq}}$$
so
$$ℙ(a\leq S_n\leq b)=\sum_{a≤ x_k≤ b}\binom{n}{k}p^k q^{n-k}$$
where $k=np+x_k\sqrt{npq}$ and $(n-k)=nq-x_k\sqrt{npq}$

## When $n$ is big
Remember that
$$\binom{n}{k}=\frac{n!}{k!(n-k)!}$$
When $n$ is big we can approximate the factorial
$$n! = Cn^{n+1/2}e^{-n}$$
where $C$ is a constant that we will find later

This is called *Stirling's approximation* and we will explain it later

## combinatorial
Now the combinatorial can be written as

$$\begin{aligned}
\frac{n!}{k!(n-k)!}& =\frac{Cn^{n+1/2}e^{-n}}{C^2k^{k+1/2}e^{-k} (n-k)^{n-k+1/2}e^{-(n-k)}}\\
& =\frac{n^{n+1/2}}{C k^{k+1/2} (n-k)^{n-k+1/2}}\\
& =\frac{1}{C}\left(\frac{n}{k(n-k)}\right)^{1/2}\left(\frac{n}{k}\right)^k\left(\frac{n}{n-k}\right)^{n-k}
\end{aligned}$$

## Binomial formula
$$\binom{n}{k}p^k q^{n-k}
=\frac{1}{C}\left(\frac{n}{k(n-k)}\right)^{1/2}\left(\frac{np}{k}\right)^k\left(\frac{nq}{n-k}\right)^{n-k}$$
Now <!-- revisar -->

$$\frac{n}{k(n-k)}=
\frac{n}{(np+x_k\sqrt{npq})(nq-x_k\sqrt{npq})}\approx
\frac{1}{npq}$$
therefore

$$\binom{n}{k}p^k q^{n-k}\approx
\frac{1}{C\sqrt{npq}}\left(\frac{np}{k}\right)^k\left(\frac{nq}{n-k}\right)^{n-k}$$

## Logarithms!
we have

$$\ln\left(\left(\frac{np}{k}\right)^k\right)
=-k\ln\left(\frac{k}{np}\right)\\
=-(np+x_k\sqrt{npq})\ln\left(\frac{np+x_k\sqrt{npq}}{np}\right)\\
=-(np+x_k\sqrt{npq})\ln\left(1+x_k\sqrt{\frac{q}{np}}\right)$$
with the same procedure we get

$$\ln\left(\left(\frac{nq}{n-k}\right)^{n-k}\right)
=-(nq-x_k\sqrt{npq})\ln\left(1-x_k\sqrt{\frac{p}{nq}}\right)
$$

then,
Using now the approximation $\ln(1+x)≈ x-x^2/2$ we can write
$$\ln\left(\left(\frac{np}{k}\right)^k\right)≈-(np+x_k\sqrt{npq})\left(x_k\sqrt{\frac{q}{np}}-x_k^2\frac{q}{2np}\right)$$
<!-- desarrollar -->

$$\ln\left(\left(\frac{nq}{n-k}\right)^{n-k}\right)
≈-(nq-x_k\sqrt{npq})\left(-x_k\sqrt{\frac{p}{nq}}-x_k^2{\frac{p}{2nq}}\right)$$

$$\ln\left(\left(\frac{np}{k}\right)^k\left(\frac{nq}{n-k}\right)^{n-k}\right)
≈-(x_k\sqrt{npq}-\frac{x_k^2q}{2}+x_k^2q)+(x_k\sqrt{npq}+\frac{x_k^2p}{2}-x_k^2 p)\\
=-(p+q)\frac{x_k^2}{2}= -\frac{x_k^2}{2}$$


## In summary
$$\begin{aligned}
\ln\left(\left(\frac{np}{k}\right)^k\left(\frac{nq}{n-k}\right)^{n-k}\right)
&\approx-\frac{x_k^2}{2}\\
\left(\frac{np}{k}\right)^k\left(\frac{nq}{n-k}\right)^{n-k}
&\approx\exp({-x_k^2/2})
\end{aligned}$$
and therefore
$$\binom{n}{k}p^k q^{n-k}\approx\frac{1}{C\sqrt{npq}}\exp({-x_k^2/2})$$


## Probability
Recalling that
$$ℙ(a\leq S_n\leq b)=\sum_{a\leq x_k\leq b}\binom{n}{k}p^k q^{n-k}$$
then
$$ℙ(a\leq S_n\leq b)\approx\sum_{a\leq x_k\leq b}
\frac{1}{C\sqrt{npq}}\exp({-x_k^2/2})$$

If we call $h=1/\sqrt{npq}$ then $h\to 0$ when $n\to\infty$ and the sum becomes
$$ℙ(a\leq S_n\leq b)=\int_{a}^{b}\frac{1}{C}e^{-x^2/2}$$

## The $C$ constant
To finish the formula we have to find $C$. Using the first rule of probabilities we have
$$ℙ(-\infty\leq S_n\leq \infty)=\int_{-\infty}^{\infty}\frac{1}{C}e^{-x^2/2}=1$$
therefore
$$C=\int_{-\infty}^{\infty}e^{-x^2/2}=\sqrt{2\pi}$$

## The Normal distribution
The random variable $S_n$ was chosen to have $\mathbb E S_n=0$ and $\mathbb V S_n=1$

We have shown that, when $n$ is big, $S_n$ is a random variable with values in $\mathbb R$ that follows a *Normal* distribution with mean 0 and variance 1.

In general, if $X$ is a normal random variable with mean $\mu$ and variance $\sigma^2$ then
$$ℙ(X\leq b)=\int_{-\infty}^{b}\frac{1}{\sqrt{2\pi\sigma^2}}e^{-(x-\mu)^2/2\sigma}$$

## Central Limit Theorem
We have shown that the Binomial distribution converges to a Normal distribution when $n$ grows but the average and variance are fixed.

Since the Binomial distribution is a sum of "coins" $X_i$, we have shown that if we center and scale the sum of "coins", all independent, all with the same distribution, then
$$\frac{\sum^n X_i-p}{\sqrt{pq/n}}$$
will converge to a Normal distribution.
