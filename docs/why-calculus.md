---
category:: "Teaching"
title: "Why calculus?"
date: "2017-11-23 09:51"
mathjax: true
---

+ world is described by functions
    - real functions are generalization of vectors
    - vector  $f: \{1,\ldots,n\}\rightarrow \mathbb R$
    - series  $f: \mathbb N\rightarrow \mathbb R$
    - function $f: \mathbb R\rightarrow \mathbb R$
    - the last $\mathbb R$ can be $\mathbb C$
    - Things that change with time: single variable
        - cycles
    - Things that are different in different places: vectorial calculus, several variables
+ functions are related through derivatives
    - `diff` gets "derivative" of vectors
      - loses the first value
      - that is the constant
    - `cumsum` gets the "integral" of vectors
      - we need to include an starting point, or integration constant
    - we can go back and forth with `diff` and `cumsum`
      - exercises of areas under curve
      - exercises of mechanics
      - exercises of proportions/probabilities
    - iterating derivation: second derivative and so on
- Derivatives of real functions can be done semi-automatically
  - polynomials are easy
  - any power, beyond integer
  - `sin`, `cos`, `log`, `exp`
  - chain rule
  - Using Wolfram/Scypy to do derivatives and integrals of real functions
+ Taylor series expansion
    - any continuous ($C^\infty$) real function can be approximated by a polynomial
    - example with `sin`, `cos`, `exp`
    - O notation
- Optimization
  - finding extrema
  - second derivative
  - local v/s global
  - Lagrange multipliers method
  - Kuhn-Tucker method
- Differential equations
  - what are they
  - time: initial value problems
  - space: boundary conditions


stirling:
~~~r
n <- seq(1,20, by=1)
nn <- seq(1,20, by=0.1)
barplot(log(n),space = 0)
lines(nn,log(nn), col="red2",lwd=4)
~~~

# abstraction
- not harder, more generic
+ symbols: we present them here for the first time, but we will show again when we need to use them. You can skip this part or return as needed. (it can be an appendix)
    - sets
    - lists
    - numbers
    - vectors
    - arithmetic
    - algebra
    - greek letters, bold letters
    - bracket notation
    - sums, difference
    - products, factors, rate
    - logarithms

# Probabilities
- **a "machine" of producing outcomes**
    - now the set grows, $n\to\infty$
    - The set of outcomes $\Omega$ is still finite
    - relative frequency reaches a fixed value
        - it is a vector of dimension $\vert\Omega\vert$
    - the relative frequencies are our model of how the machine works
    - the (infinite) set of all futures outcomes is a vector of infinite size (a series)
    - n is so big that sampling does not change it
        - sampling with replacement
        - a small set representing all
        - `sample()` in R
    - average of $[Q]$ converges to $\Pr(Q)$
    - Probability is the relative frequency. It is an **intrinsic characteristic of "the machine"** (what we know about)
      - For example, if there are symmetries, then the probabilities are the same
+ Conditional probability
    - our "understanding" of the machine depends on what we know
    - conjoint prob is given by multiplication: count(X,Y) = count(X)count(Y)
+ independence
+ Bayes theorem
    - diagnosis
    - score of DNA patterns

## Random variables
- description of a list
    - elements of a fixed set $\Omega$
    - can be repeated many times
    - frequency absolute and relative
    - if the elements of $\Omega$ are numbers, we can do arithmetic
    - location: average
    - dispersion: variance
- Expected value
    - E X
    - E f(X)
    - linear
    - $\mathbb E [Q]=\Pr(Q)$
- variance
    - quasi-linear
    - covariance
- Chebyshev inequality
    - understanding the crossed language
    - Law of Large numbers
    - entropy
+ discrete distributions, finite or numerable
    - Bernoulli
    - binomial
    - multinomial: DNA
    - poisson
    - geometric
    - negative geometric
+ Markov chains
    - DNA
+ Continuous distributions
    - Not = but < instead
    - uniform
    - Normal
      - CLT illustration
    - exponential
- Maximal entropy distributions

## Appendix
- Stirling approximation
- CLT demonstration
