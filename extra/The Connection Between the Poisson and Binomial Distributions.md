---
created: 2024-01-09T19:14:31 (UTC +03:00)
tags: []
source: https://mathcenter.oxford.emory.edu/site/math117/connectingPoissonAndBinomial/
author: 
---

# The Connection Between the Poisson and Binomial Distributions

<table><tbody><tr><td><img src="https://mathcenter.oxford.emory.edu/site/frameResources/oxford_logo.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><img src="https://mathcenter.oxford.emory.edu/site/frameResources/math_department.png"></td></tr></tbody></table>

+   [About](https://mathcenter.oxford.emory.edu/site/home/)
+   [Statistics](https://mathcenter.oxford.emory.edu/site/math117/)
+   [Number Theory](https://mathcenter.oxford.emory.edu/site/math125/)
+   [Java](https://mathcenter.oxford.emory.edu/site/cs170/)
+   [Data Structures](https://mathcenter.oxford.emory.edu/site/cs171/)
+   [Cornerstones](https://mathcenter.oxford.emory.edu/site/math108/)
+   [Calculus](https://mathcenter.oxford.emory.edu/site/math111/)

The Poisson distribution is actually a limiting case of a Binomial distribution when the number of trials, n, gets very large and p, the probability of success, is small. As a rule of thumb, if n≥100 and np≤10, the Poisson distribution (taking λ\=np) can provide a very good approximation to the binomial distribution.

This is particularly useful as calculating the combinations inherent in the probability formula associated with the binomial distribution can become difficult when n is large.

To better see the connection between these two distributions, consider the binomial probability of seeing x successes in n trials, with the aforementioned probability of success, p, as shown below.

P(x)\=nCxpxqn−x

Let us denote the expected value of the binomial distribution, np, by λ. Note, this means that

p\=λn

and since q\=1−p,

q\=1−λn

Now, if we use this to rewrite P(x) in terms of λ, n, and x, we obtain

P(x)\=nCx(λn)x(1−λn)n−x

Using the standard formula for the combinations of n things taken x at a time and some simple properties of exponents, we can further expand things to

P(x)\=n(n−1)(n−2)⋯(n−x+1)x!⋅λxnx(1−λn)n−x

Notice that there are exactly x factors in the numerator of the first fraction. Let us swap denominators between the first and second fractions, splitting the nx across all of the factors of the first fraction's numerator.

P(x)\=nn⋅n−1n⋯n−x+1n⋅λxx!(1−λn)n−x

Finally, let us split the last factor into two pieces, noting (for those familiar with Calculus) that one has a limit of e−λ.

P(x)\=nn⋅n−1n⋯n−x+1n⋅λxx!(1−λn)n(1−λn)−x

It should now be relatively easy to see that if we took the limit as n approaches infinity, keeping x and λ fixed, the first x fractions in this expression would tend towards 1, as would the last factor in the expression. The second to last factor, as was mentioned before, tends towards e−λ, and the remaining factor stays unchanged as it does not depend on n. As such,

limn→∞P(x)\=e−λλxx!

Which is what we wished to show.
