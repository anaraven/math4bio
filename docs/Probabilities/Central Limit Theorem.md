# Central Limit Theorem

## Change of variable

We want to see what happens when $n$ is big. Let
$$Z_n = \frac{S_n-np}{\sqrt{npq}}$$
It is easy to see that
$$\begin{aligned}
𝔼(Z_n)& =0\\
𝕍(Z_n)& =1
\end{aligned}$$
for all values of $n$

## Probability

To evaluate $\Pr(a\leq Z_n\leq b)$ we can do
$$x_k=\frac{k-np}{\sqrt{npq}}$$
so
$$\Pr(a\leq Z_n\leq b)=\sum_{a\leq x_k\leq b}\binom{n}{k}p^k q^{n-k}$$
where $k=np+x_k\sqrt{npq}$ and $(n-k)=nq-x_k\sqrt{npq}$

Remember that
$$\binom{n}{k}=\frac{n!}{k!(n-k)!}$$

When $n$ is big we can approximate the factorial using the *Stirling's approximation* (we will explain it later)
$$n!\approx Cn^{n+1/2}e^{-n}$$
where $C$ is a constant that we will also find later.

Now the combinatorial can be written as
$$\begin{aligned}
\frac{n!}{k!(n-k)!}& ≈\frac{Cn^{n+1/2}e^{-n}}{C^2k^{k+1/2}e^{-k} (n-k)^{n-k+1/2}e^{-(n-k)}}\\
& =\frac{n^{n+1/2}}{C k^{k+1/2} (n-k)^{n-k+1/2}}\\
& =\frac{1}{C}\left(\frac{n}{k(n-k)}\right)^{1/2}\left(\frac{n}{k}\right)^k\left(\frac{n}{n-k}\right)^{n-k}
\end{aligned}$$

## Binomial formula
The original formula can now be written as
$$\binom{n}{k}p^k q^{n-k}
\approx \frac{1}{C}\left(\frac{n}{k(n-k)}\right)^{1/2}\left(\frac{np}{k}\right)^k\left(\frac{nq}{n-k}\right)^{n-k}$$
Now <!-- revisar -->
$$\frac{n}{k(n-k)}=
\frac{n}{(np+x_k\sqrt{npq})(nq-x_k\sqrt{npq})}\approx
\frac{1}{npq}$$
therefore
$$\binom{n}{k}p^k q^{n-k}\approx
\frac{1}{C\sqrt{npq}}\left(\frac{np}{k}\right)^k\left(\frac{nq}{n-k}\right)^{n-k}$$

## Logarithms!
we have
$$\begin{aligned}
\\ln\left(\left(\frac{np}{k}\right)^k\right)
& =-k\ln\left(\frac{k}{np}\right)\\
& =-(np+x_k\sqrt{npq})\ln\left(\frac{np+x_k\sqrt{npq}}{np}\right)\\
& =-(np+x_k\sqrt{npq})\ln\left(1+x_k\sqrt{\frac{q}{np}}\right)
\end{aligned}$$
with the same procedure we get
$$\ln\left(\left(\frac{nq}{n-k}\right)^{n-k}\right)
=-(nq-x_k\sqrt{npq})\ln\left(1-x_k\sqrt{\frac{p}{nq}}\right)$$

Using now the approximation $\ln(1+x)\approx x-x^2/2$ we can write
$$\ln\left(\left(\frac{np}{k}\right)^k\right)
\approx-(np+x_k\sqrt{npq})\left(x_k\sqrt{\frac{q}{np}}-x_k^2\frac{q}{2np}\right)$$
<!-- desarrollar -->
and
$$\ln\left(\left(\frac{nq}{n-k}\right)^{n-k}\right)
\approx-(nq-x_k\sqrt{npq})\left(-x_k\sqrt{\frac{p}{nq}}-x_k^2{\frac{p}{2nq}}\right)$$
therefore
$$\begin{aligned}
\ln\left(\left(\frac{np}{k}\right)^k\left(\frac{nq}{n-k}\right)^{n-k}\right)
&\approx-(x_k\sqrt{npq}-\frac{x_k^2q}{2}+x_k^2q)+(x_k\sqrt{npq}+\frac{x_k^2p}{2}-x_k^2 p)\\
&=-(p+q)\frac{x_k^2}{2}= -\frac{x_k^2}{2}\end{aligned}$$


In summary
$$
\ln\left(\left(\frac{np}{k}\right)^k\left(\frac{nq}{n-k}\right)^{n-k}\right)
\approx-\frac{x_k^2}{2}
$$
Thus
$$
\left(\frac{np}{k}\right)^k\left(\frac{nq}{n-k}\right)^{n-k}
\approx\exp({-x_k^2/2})
$$
and therefore
$$\binom{n}{k}p^k q^{n-k}\approx\frac{1}{C\sqrt{npq}}\exp({-x_k^2/2})$$


## Probability
Recalling that
$$\Pr(a\leq Z_n\leq b)=\sum_{a\leq x_k\leq b}\binom{n}{k}p^k q^{n-k}$$
then
$$\Pr(a\leq Z_n\leq b)\approx\frac{1}{C}\sum_{a\leq x_k\leq b}
\frac{1}{\sqrt{npq}}\exp({-x_k^2/2})$$

If we call $h=1/\sqrt{npq}$ then $h\to 0$ when $n\to\infty$ and the sum becomes an integral
$$\Pr(a\leq Z_n\leq b)=\frac{1}{C}\int_{a}^{b}e^{-x^2/2}$$

To finish the formula we have to find the value of $C$. Using the first rule of probabilities (the sum of all probabilities is 1) we have
$$\Pr(-\infty\leq Z_n\leq \infty)=\frac{1}{C}\int_{-\infty}^{\infty}e^{-x^2/2}=1$$
therefore $C$ is the value of this definite integral
$$C=\int_{-\infty}^{\infty}e^{-x^2/2}$$
This particular integral has a known value. We find that $C=\sqrt{2\pi}$

## The Normal distribution
The random variable $Z_n$ was chosen to have $𝔼 Z_n=0$ and $𝕍 Z_n=1$

We have shown that, when $n$ is big, $Z_n$ is a random variable with values in $\mathbb R$ that follows a *Normal* distribution with mean 0 and variance 1.

In general, if $X$ is a normal random variable with mean $\mu$ and variance $\sigma^2$ then
$$\Pr(X\leq b)=\int_{-\infty}^{b}\frac{1}{\sqrt{2\pi\sigma^2}}e^{-(x-\mu)^2/2\sigma}$$

## Central Limit Theorem
We have shown that the Binomial distribution converges to a Normal distribution when $n$ grows but the average and variance are fixed.

Since the Binomial distribution is a sum of "coins" $X_i$, we have shown that if we center and scale the sum of "coins", all independent, all with the same distribution, then
$$\frac{\sum^n X_i-p}{\sqrt{pq/n}}$$
will converge to a Normal distribution.