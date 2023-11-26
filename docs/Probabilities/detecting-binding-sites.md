---
title: Detecting binding sites
date: 2021-04-17 19:17:44
mathjax: true
---

## Formalization
We have two variables:

+ The DNA sequence: $𝐗=(X_1,…,X_m)$
+ The presence or absence of a binding site: $B_+$ or $B_-$

We do an "experiment" and get a short DNA sequence $𝐱=(s_1,…,s_m)$

We want $ℙ(B_+|𝐗=𝐱)$

## How do we get it?
We want $ℙ(B_+|𝐗=𝐱)$

Applying Bayes' theorem we have
$$ℙ(B_+|𝐗=𝐱)=\frac{ℙ(𝐗=𝐱|B_+)⋅ℙ(B_+)}{ℙ(𝐗=𝐱)}$$
so we need to find them

## What do we have
We have a matrix $𝐌$ with the empirical frequencies of nucleotides in $n$ sequences

$𝐌$ has 4 rows (A, C, T, G) and $m$ columns. Each cell $M_{ij}$ is the number of times nucleotide $i$ is at position $j$.

The sum of each column of $𝐌$ is $n$.

## Translating to probabilities
We assume that these sequences are outcomes of a probabilistic process

That is, the sequences follow some probability

We don't know the exact probability

But we can approximate
$$ℙ(X_j=i|B_+)=M_{ij}/n$$
for $i ∈ \{A,C,T,G\}$

## Independence hypothesis
We also assume that the probabilities of each $X_j$ are independent

In such case we have
$$ℙ(𝐗=𝐱|B_+)=ℙ(X_1=s_1|B_+) ⋯ ℙ(X_m=s_m|B_+)$$
or, in short
$$ℙ(𝐗=𝐱|B_+)=\prod_{j=1}^m ℙ(X_j=s_j|B_+)$$

## *A priori* distribution
Using the same hypothesis of independence, we have
$$ℙ(𝐗=𝐱)=ℙ(X_1=s_1) ⋯ℙ(X_m=s_m)$$
or, in short
$$ℙ(𝐗=𝐱)=\prod_{j=1}^m ℙ(X_j=s_j).$$

Usually $ℙ(X_j=i)$ is approximated by the frequency of each nucleotide in the complete genome
$$ℙ(X_j=i)=\frac{N_i}{L}$$

## What is missing?
We got "good" guesses of $ℙ(𝐗=𝐱|B_+)$ and $ℙ(𝐗=𝐱)$

We need $ℙ(B_+)$

How do we get it?

There is no easy answer for that

## Anyway...
Let's say $ℙ(B_+)=K$ and later we solve it

Applying Bayes' theorem we have
$$ℙ(B_+|𝐗=𝐱)=ℙod_{j=1}^m\frac{ℙ(X_j=s_j|B_+)}{ℙ(X_j=s_j)}\cdot K$$

Can it be simpler?

*Logarithms* are made to change multiplications into sums

$$\logℙ(B_+|𝐗=𝐱)=\sum_{j=1}^m
\log\frac{ℙ(X_j=s_j|B_+)}{ℙ(X_j=s_j)} + mK$$


## Score
For each sequence $𝐱$ we calculate the score

$$\mathrm{Score}(𝐱)
=\sum_{j=1}^m Q_{s_j,j}
=\sum_{j=1}^m\log\frac{ℙ(X_j=s_j|B_+)}{ℙ(X_j=s_j)}+Const$$

We prepare a matrix $\mathbf{Q}$ for each binding site
$$Q_{i,j}=\log\frac{M_{ij}}{N_i}$$


---

[[_drafts/2021/math4bio/bayes-theorem]]
