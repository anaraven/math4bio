# Approximate intervals for Binomial Distributions

## Normal approximation interval

*(from Wikipedia)*
A commonly used formula for a binomial confidence interval relies on approximating the distribution of error about a binomially-distributed observation, ${\hat {p}}$, with a normal distribution. This approximation is based on the central limit theorem and is unreliable when the sample size is small or the success probability is close to 0 or 1.

Using the normal approximation, the success probability p is estimated as
$${\hat {p}}\pm z \sqrt {\frac {\hat {p}\left(1-{\hat {p}}\right)}{n} },
$$

## Agresti–Coull interval
The Agresti–Coull interval is also another approximate binomial confidence interval.

Given $X$ successes in $n$ trials, define
$$\tilde{n} = n + z^2$$
and
$$
\tilde{p}=\frac {1}{\tilde{n} }\left(X+\frac{z^2}{2}\right)
$$
Then, a confidence interval for p is given by
$$
\tilde{p}\pm z \sqrt{\frac {\tilde {p}}{\tilde n}\left(1-\tilde {p}\right)}
$$
where $z$ is the $1-{\frac {\alpha }{2}}$ quantile of a standard normal distribution, as before. For example, for a 95% confidence interval, let $\alpha = 0.05$, so $z=1.96$ and $z^{2}=3.84$. 

If we use 2 instead of 1.96 for $z$, this is the "add 2 successes and 2 failures" interval in Agresti and Coull's 1998 paper "Approximate is Better than 'Exact' for Interval Estimation of Binomial Proportions."

Now $\tilde{n} = n + 4$ and ${\tilde {p}}=(X+2)/\tilde {n}=(X+2)/(n + 4).$ Then, a confidence interval for $p$ is given by
$${\tilde {p}}\pm 2{\sqrt{\tilde {p}\left(1-{\tilde {p}}\right)/\tilde {n}}}$$
that is
$$\frac{X+2}{n + 4}\pm 2{\sqrt{\frac{X+2}{(n + 4)^2}\left(1-\frac{X+2}{n + 4}\right)}}$$

## References
Agresti, Alan; Coull, Brent A. (1998). *"Approximate is better than 'exact' for interval estimation of binomial proportions"*. The American Statistician. 52: 119–126. doi:10.2307/2685469. JSTOR 2685469. MR 1628435.