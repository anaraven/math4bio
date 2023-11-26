---
title: "Fundamental Mathematics for Life Sciences"
date: "2019-02-08 20:51"
published: false
featured: false
mathjax: true
category: Matrices
---

# Linear Algebra
1. Dynamical systems (linear, discrete time). 
3. Vectors representing state. 
4. Matrices representing transitions and transformations. 
5. Matrix multiplication representing composition of transitions. 
6. Dot product and its geometric interpretation. 
7. Determinants, cross products and their geometric interpretation. 
8. Identity matrix and matrix inversion. 
9. Linear independence and dimension. 
10. Applications: linear regression, analysis of graphs, Markov chains.
 
As a final project we will combine the two tracks to analyze gene expression and determine confidence intervals for the differential expression of genes
 
Hidden Markov Models

# Calculus
+ We are interested in values that change over time. They can be represented by vectors
+ A vector maps a set $I$ of indices $i\in I$ into values $v_i\in \mathbb R$. Sometimes $v_i\in \mathbb C$ but we do not see this often in biology.
+ Normally $I=\{1,2,\ldots,n\}$ represents the time. Sometimes is better to take $I=\{0,1,\ldots,n-1\}$ so the initial time is zero. 
+ There are some typical questions we want to ask:
    + which is the smallest or largest value? We call this an extreme or optimal value.
    + When did the extreme value occur?
    + What is the accumulated total through time?
    + How did values change through time?
+ The first questions can be solved by inspection, or drawing a plot
+ The accumulated total is calculated as $a_i=v_i+a_{i-1}$ with $a_0=v_0$ (or, if you want, $a_{-1}=0}$). Think about the balance of every day, when $v_i$ represent income and expenses (negative income).
+ The change through time is calculated as $d_i=v_i-v_{i-1}$. This formula does not work for $i=0$, so we get only $n-1$ values.
+ It is easy to see that accumulated sums and running differences are opposite operations. Each one undoes what the other does.

## infinite dimensions
+ Things are more interesting when $I$ has infinite size. If $I=\mathbb N$ then the vectors become series. In this case we cannot write the series explicitly, instead we need a formula
+ When $I=\mathbb R$ then the vectors become functions. Instead of $v_i$ we write $v(i)$. More often, we write $f(x)$. we cannot write the function explicitly case by case. Instead, we need a formula.
+ The easiest kind of formulas we use are polynomials. We also use sometimes exponents, logarithms, and trigonometric functions.
+ To know how they change with time we use derivatives, which is a running difference for functions.
+ The cumulative sums for functions are called integrals.
+ By analogy with vectors, It is easy to see that integrating is the opposite operation of derivation. This is caller "the fundamental theorem of calculus"

## derivatives

+ We can use wolfram alpha to calculate integrals and derivatives
+ Derivation is a linear operation
  $$\frac{d}{dt}(a f(t) + b g(t))= a\frac{d}{dt}f(t) + b\frac{d}{dt} g(t)$$
+ Thus, derivatives of polynomials are easy