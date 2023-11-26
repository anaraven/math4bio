---
date: "2021-02-17 20:14"
featured: false
lang: en
links:
- [[_drafts/2021/math4bio/rules-of-probabilities]]
- [[_drafts/2021/math4bio/independence]]
- [[_drafts/2021/math4bio/multiplication-rules]]
- [[_drafts/2021/math4bio/bayes-theorem]]
- [[_slides/2021/msr/class04_2.Rmd]]
mathjax: true
title: "Application: diagnosis"
---

As part of the strategy to control COVID-19, many governments carry on random sampling of the population looking for asymptomatic cases.

Imagine that you are randomly chosen for a test of COVID-19. The test result is "positive", that is, it says that you have the virus. You also know that the test sometimes fails, giving either a *false positive* or a *false negative*. Then the question is **what is the probability that you have COVID-19 given that the test said "positive"?**

Let's assume that:

-   There are $10^{5}$ persons tested
-   The test has a *precision* of 99%
-   The *prevalence* of COVID in the population is 0.1%

This will be our context 𝑍. The number of people tested will help us visualize the analysis.

Let's fill this matrix. COVID truth in the rows and test results in the columns. We start with the total number of people tested

  ------------------------------------
                Test-   Test+   Total
  ------------ ------- ------- -------
   **COVID-**     .       .       .

   **COVID+**     .       .       .

   **Total**      .       .     1e+05
  ------------------------------------

The prevalence is the percentage of the population that has COVID. In this case we know that 0.1% of them are COVID positive (COVID~+~).

  ------------------------------------
                Test-   Test+   Total
  ------------ ------- ------- -------
   **COVID-**     .       .     99900

   **COVID+**     .       .      100

   **Total**      .       .     1e+05
  ------------------------------------

99% are correctly diagnosed

  ------------------------------------
                Test-   Test+   Total
  ------------ ------- ------- -------
   **COVID-**     .       .     99900

   **COVID+**     .      99      100

   **Total**      .       .     1e+05
  ------------------------------------

99% are correctly diagnosed

  ------------------------------------
                Test-   Test+   Total
  ------------ ------- ------- -------
   **COVID-**   98901     .     99900

   **COVID+**     .      99      100

   **Total**      .       .     1e+05
  ------------------------------------

1% are mis-diagnosed

  ------------------------------------
                Test-   Test+   Total
  ------------ ------- ------- -------
   **COVID-**   98901    999    99900

   **COVID+**     1      99      100

   **Total**      .       .     1e+05
  ------------------------------------

Total people diagnosed: $\text{test}_+$

  ------------------------------------
                Test-   Test+   Total
  ------------ ------- ------- -------
   **COVID-**   98901    999    99900

   **COVID+**     1      99      100

   **Total**    98902   1098    1e+05
  ------------------------------------

What is the probability of being sick *given that* the test is positive?

The true positive rate is

$$\frac{99}{1098} = 9.02\%$$

------------------------------------------------------------------------

# Using Bayes Theorem

We want to evaluate the probability of having COVID, given that the test is positive $$ℙ(\text{COVID}_+ | \text{test}_+)$$ given that we know the *prevalence* $$ℙ(\text{COVID}_+)=0.001$$ and the *precision*, that is, the probability that the test is telling the truth

$$
\begin{aligned}
ℙ(\text{test}_+ | \text{COVID}_+)=0.99\\
ℙ(\text{test}_- | \text{COVID}_-)=0.99
\end{aligned}
$$

What is the probability of being sick *given that* the test is positive? $$ℙ(\text{COVID}_+ \vert \text{test}_+)=\frac{ℙ(\text{test}_+ \vert \text{COVID}_+)\cdotℙ(\text{COVID}_+)}{ℙ(\text{test}_+)}$$

We need to know $ℙ(\text{test}_+).$ We have

$$ℙ(\text{test}_+)=
ℙ(\text{test}_+, \text{COVID}_+)+
ℙ(\text{test}_+, \text{COVID}_-)$$

We can calculate them

$$\begin{aligned}
ℙ(\text{test}_+, \text{COVID}_+)& =ℙ(\text{test}_+ \vert \text{COVID}_+)\cdotℙ(\text{COVID}_+)\\
& =0.99⋅ 0.001
\end{aligned}
$$

and

$$\begin{aligned}
ℙ(\text{test}_+, \text{COVID}_-)& =ℙ(\text{test}_+ \vert \text{COVID}_-)\cdotℙ(\text{COVID}_-) \\
& =(1-0.99)⋅ (1-0.001)
\end{aligned}
$$

The last part is true, because $$ℙ(\text{test}_+ \vert \text{COVID}_-)=1-ℙ(\text{test}_- \vert \text{COVID}_-)$$

$$
ℙ(\text{COVID}_-)=1-ℙ(\text{COVID}_+)
$$

Therefore $ℙ(\text{test}_+)=$ 9.9`\times 10`{=tex}\^{-4} + 0.00999=0.01098

Finally, we find the value we were looking for $$ℙ(\text{COVID}_+ \vert \text{test}_+)=
\frac{ℙ(\text{test}_+, \text{COVID}_+)}{ℙ(\text{test}_+)}=
\frac{0.99\cdot 0.001}{0.01098} =
 9\%$$

# Exercise

We would like to have zero errors, but errors are usually unavoidable. The technology used will limit the precision of diagnostics.

In practice, diagnostic test designers know that telling that you are healthy when you are sick is much worse than telling that you are sick when you are healthy. In other words, the cost of a false positive is usually lower than the cost of a false negative. Of course the costs depend on the disease and in the technique.

What happens if the false positive rate is different from the false negative rate?

$$
\begin{aligned}
ℙ(\text{test}_+ \vert \text{COVID}_+)=α\\
ℙ(\text{test}_- \vert \text{COVID}_-)=β
\end{aligned}
$$
