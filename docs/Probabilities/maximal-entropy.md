---
title: "Maximal entropy and probabilities"
date: "2021-04-18 12:46"
original_date:
  - "2019-02-27 13:26"
  - "2019-03-31 22:43"
featured: false
mathjax: true
lang: es
bibliography: '/Users/anaraven/Web/blog/_priv/bib/library.bib'
nocite: |
  @Martin2013a
---

# Probability Distributions
We have $N$ particles, numbered from 1 to $N$. Suppose each can be in 2 boxes, $A$ and $B$. The tiles can be physical tiles, energy levels, or something similar.

+ There is only one way to put all $N$ particles in box $A$ and none in $B$
+ There are $N$ ways to put $N-1$ particles in $A$ and 1 in $B$. That is, there are $N$ ways to choose the only particle in $B$
+ there are $N (N-1)$ ways to put 2 particles in $B$
+ In general, there are $N! / k! (N-k)$ ways to put $k$ particles into $B$.

The argument generalizes to $m$ boxes. There are
$$W = \frac {N!} {N_1! N_2! ⋯ n_m!}$$
ways to put $N$ particles in $m$ boxes. Taking logarithms we have
$$\log(W) = \log(N!) - \sum_i \log(n_i!).$$

Here it is convenient to use the Stirling approximation for the factorial.
^[The Stirling approximation says that, when $N$ is large, then $$\log(N!) = N \log N - N + O (\sqrt {N}).$$]

Replacing in the previous equation we have

<! - $$\log(W) = N \log(N) - C \log(C) -S \log(S) -N + C + S + O (N ^ {1/2})$$ ->

$$\begin {aligned}
\log(W) & = N \log(N) - N - \sum_i n_i \log(n_i) + \sum_i n_i + O (N ^ {1/2}) \\
& = N \log(N) - \sum_i n_i \log(n_i) + O (N 1/2)
\end {aligned}
$$

Naturally  
<! - $C + S-N = 0$ and ->  
$\sum_i n_i-N = 0$. Now it is convenient to replace $n_i$ by $Np_i$. So, we have

<! - $$\log(W) = N \log(N) - Np_c \log(Np_c) - Np_s \log(Np_s) + O (N ^ {1/2})$$ ->

$$\begin {aligned}
\log(W) & = N \log(N) - N \sum_i p_i \log(N p_i) + O (N ^ {1/2}) \\
 & = N \log(N) - N \sum_i p_i \log(N) - N \sum_i p_i \log(p_i) + O (N ^ {1/2}) \\
& = - N \sum_i p_i \log(p_i) + O (N 1/2).
 \end {aligned}
$$

If $N → ∞$ then also $\log W → ∞$.
Dividing by $N$ we will have a convergent value:
$$\frac {1}{N} \log W = - \sum_i p_i \log(p_i) + O (N ^ {- 1/2}).$$
<! - all $p_i$ will be constant and finite. ->

In summary, for fixed $N$, maximizing $W$ is equivalent to maximizing entropy, plus a small component. As $N$ grows, so does $\log(W),$ but the fraction $\log(W) / N$ converges to entropy.


# Micro and macro-state
+ The micro-state is the location of each particle. That state is described by $N$ variables, each in ${1 ... m}$.
+ the macro-state is described with the number of particles in each box. This is described with $m$ variables. There is a constraint given by the conservation of mass. The sum of the number of particles in each box is $N$. The macro state moves in a subspace of dimension $N-1$

+ The micro-state is, in principle, deterministic. In the macro-state we do not know where each particle is, only how many are in each square.

If all the micro-states have the same probability, that is, if each particle has the same probability of being in any of the $m$ boxes, then the most probable macro-state is the one that maximizes entropy. Other configurations are also admissible, with lower but similar probabilities.


----

microstate
: which? What particles are in each box?

macrostate
: How many particles are in each state?

W
: How many microstates are supported by a given macrostate?

# Boltzmann
Ludwig says
$$S = k_B \log W$$
where $W$ represents the multiplicity of the most probable macrostate.

If each "box" now corresponds to an energy level,
and the macrostate is defined by the probabilities $(p_i) i = 1 ^ m$, then
$$S = k_B \log W = \frac {R} {N} \log W = -R \sum_i p_i \log (p_i)$$

Here $k_B$ is Boltzmann's constant, and $R$ is the gas constant, which basically serves to change from bits to units of thermodynamic entropy. That is, it is a scale factor.

What Boltzmann proved is that this definition is equivalent to Carnot's thermodynamic entropy. There is a good explanation in Leonard Susskind's "Statistical Mechanics" course.
 

# Convergence
How do you get to the macro-state of maximum entropy? Is it an attractor?

Intuitively, if we randomly pick a particle and shift it to another box, we will most likely pick a particle in one of the most populated cells. In other words, the large squares tend to decrease, and the small squares tend to increase. If the intuition is correct, then the macro state tends to the one with the highest entropy.

Let's start from a configuration of $N$ particles distributed in $M$ groups. Each group has $n_i$ particles. Consider a small time interval $\Delta t$, such that a single particle leaves a group $i$ and reaches another group $j.$ The probability that the particle leaves a group $i$ depends on the size of the group. The largest groups have the greatest chance of losing a particle. Namely
$$\Pr (\textrm{group } i \textrm{ decreases}) = \frac{n_i}{N} Δt = p_i Δt$$

On the other hand, the probability that group $j$ receives a particle is independent of size. It is only important that $j ≠ i,$ what happens with probability $1-p_j.$ There are $M-1$ groups that can receive the particle. Later
$$\Pr (\textrm{group } j \textrm{ grows}) = \frac{1-p_j}{M-1} Δ t$$

These two expressions can be combined to describe how the probability of each group evolves:
$$\Delta p_i = \frac{1-p_i}{M-1} \Delta t - p_i \Delta t$$
that, when $Δt → 0,$ gives us the derivative of the probability:
$$\frac{dp_i}{dt} = \frac{1-p_i}{M-1} - p_i = \frac{1}{M-1} - p_i \frac{M}{M-1}$$

## Stationary distribution
Knowing the derivative, we can find what is the probability distribution in the steady state, that is, when the derivative is zero. If $dp_i / dt = 0$ then
$$\frac {1} {M-1} = p_i \frac {M} {M-1}$$
which simplifies to
$$p_i = \frac {1} {M}.$$
Therefore the steady state probabilities are all equal. That is, there is no preference for any particular state.

## Evolution of entropy
Given a discrete distribution $p_i$, the entropy is defined as
$$H = - \sum_i p_i \log p_i$$
If the probabilities change over time, so does the entropy. The derivative is
$$\frac {dH} {dt} = - \sum_i \frac {dp_i} {dt} \log p_i - \sum_i \frac {dp_i} {dt} = - \sum_i \frac {dp_i} {dt} (\log p_i + 1)$$
Replacing the expression for the derivative of the probability we will have

$$
\begin {aligned}
\frac {dH} {dt} & = - \sum_i \left (\frac {1} {M-1} - p_i \frac {M} {M-1} \right) (\log p_i + 1) \\
& = \frac {M} {M-1} \sum_i (p_i \log p_i + p_i) - \frac {1} {M-1} \sum_i (\log p_i + 1)
\end {aligned}
$$

Taking into account that $\sum_i 1 = M$ and that $\sum_i p_i = 1,$ we have

$$
\begin {aligned}
\frac {dH} {dt} & = \frac {M} {M-1} \sum_i p_i \log p_i + \frac {M} {M-1} - \frac {1} {M-1} \sum_i \log p_i - \frac {M} {M-1} \\
& = \frac {M} {M-1} \sum_i p_i \log p_i- \frac {1} {M-1} \sum_i \log p_i \\
\end {aligned} $$

In summary, the derivative of the entropy is
$$\frac {dH} {dt} = \frac {M} {M-1} \left (\sum_i p_i \log p_i- \sum_i \frac {1} {M} \log p_i \right).$$

In this result we can see that the derivative of entropy is zero only when $p_i = 1 / M.$

The derivative is positive for other values ​​of $p_i$. Indeed, let us consider the function
$$f(p_1, …, p_M) = \sum_i p_i \log p_i- \sum_i \frac {1} {M} \log p_i$$
which assigns a real value to each probability distribution in the open set $\{(p_1, …, p_M) ∈ ℝ^M: p_i> 0, \sum_i p_i = 1 \}.$ The function $f$ is continuous.

Let's choose any $p_j$ component, which we will make converge to 1. We rewrite $f$ as
$$f (p_1, …, p_M) = \left (p_j- \frac {1} {M} \right) \log p_j + \sum_ {i \not = j} \left (p_i- \frac {1} {M} \right) \log p_i$$

When the component $p_j → 1,$ the other components of $p_1, …, p_M$ tends to 0. Then
$$f(p_1, …, p_M) → \left(1-\frac{1}{M}\right) \log 1 + \sum_{j≠i} \left(0- \frac{1}{M} \right) \log 0 → + ∞$$

In conclusion, $f (p_1, …, p_M) ≥ 0,$ the derivative of the entropy is positive, the entropy increases until reaching a single maximum.

## Pending question
The macro-state of maximum entropy is a stable attractor, but allows small oscillations. In a random sample, what is the entropy interval with probability at least $(1- α)$? that is, what is the probability distribution of entropy?

# Other interesting texts
+ [Boltzmann Entropy, Gibbs Entropy, Shannon Information](http://faculty.poly.edu/~jbain/physinfocomp/lectures/03.BoltzGibbsShannon.pdf)
+ [What is the conceptual difference between Gibbs and Boltzmann entropies?](https://physics.stackexchange.com/questions/141321/what-is-the-conceptual-difference-between-gibbs-and-boltzmann-entropies)
+ [Why Entropy tends to maximum](https://hal.archives-ouvertes.fr/hal-00140657v2/document)