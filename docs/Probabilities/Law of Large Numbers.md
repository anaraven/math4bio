# Law of Large Numbers

If we have $n$ random variables $x_i$, all **independent** and all with the **same distribution**, then their average
$$\frac{1}{n}S_n=\frac{1}{n}\sum_{i=1}^n x_i$$
converges to the expected value $𝔼 X$. The speed of convergence is $\sqrt{n}.$
$$\Pr\left((S_n-𝔼X)^2\geq c\frac{\sqrt{𝕍X}}{\sqrt{n}}\right)\leq \frac{1}{c^2}$$


<!-- la pregunta crítica es cómo pasar de un "promedio de población" a un "resultado esperado" de un experimento particular.
Lo que queremos saber es la distribución. Lo que podemos tener (a veces fácil, a veces, lo único) es el promedio -->

## Application: estimate distributions

Using the notation $[Q]=1$ if the question $Q$ is true and $0$ if it is false, we have
$$𝔼[Q]=\Pr(Q)$$
Therefore if we do $n$ experiments and $N(Q)$ of them are positive for the question $Q,$ then
$$\frac{N(Q)}{n}\underset{n\rightarrow\infty}\longrightarrow \Pr(Q)$$

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

We throw $n$ "coins", all independent, all with the same probability of success $p$.

The number $S_n$ of successful "coins" is a random variable. It's distribution is
$$\Pr(S_n)=\Pr(k\text{ successes in }n\text{ trials})=\binom{n}{k}p^k q^{n-k}$$
It is easy to see that
$$\begin{aligned}
𝔼(S_n)& =np\\
𝕍(S_n)& =npq
\end{aligned}$$

## Application
The probability that $S_n=k$ for each $k$ can be very small, but for a range is usually bigger

What is the probability that $S_n\geq a$ for any $a$?
$$\begin{aligned}\Pr(S_n\geq a)& =\sum_{k=a}^n\Pr(S_n=k)\\
& =\sum_{k=a}^n\binom{n}{k}p^k q^{n-k}\end{aligned}$$

What is the probability that $S_n$ is in the range $[a,b]$?
$$\Pr(a\leq S_n\leq b)=\sum_{k=a}^b\Pr(S_n=k)$$
Or, if $a$ and $b$ are not integers
$$\Pr(a\leq S_n\leq b)=\sum_{a\leq k\leq b}\Pr(S_n=k)$$
