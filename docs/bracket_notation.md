---
title: "Square brackets notation"
author: "Andrés Aravena, PhD"
date: "2019-09-04 12:11"
category: Probabilities
mathjax: true
---

Mathematical notation is used to simplify complex ideas. Most of it is very standard, but sometimes there are new ideas that are not yet universally accepted. This idea comes from Donald Knuth, one of the most important computer scientists. It is called *bracket notation*.

If $Q$ is a yes/no question —that is, a logic proposition,— we will use the notation $⟦Q⟧$ to represent this:
$$⟦Q⟧=\begin{cases}1\quad\text{if }Q\text{ is true}\\
0\quad\text{if }Q\text{ is false}\end{cases}$$

In other words, square brackets transform a *true/false* logic value into a 1/0 numeric value. The numeric representation works very much the same as the logic representation, and has the advantage that we can do arithmetic operations with them.

For example
+ $⟦$today is Monday$⟧=0$ since I'm writing this on a Wednesday
+ If $x$ is any positive number, then $⟦x>0⟧=1$
+ $⟦x ∈ ℝ, x^2+1=0⟧=0$

## Alternative notations

This idea of mapping a logic proposition into a 0 or 1 value is sometimes represented with other symbols. For example, to represent $i≥0$, some people write
+ $χ_{i≥0}$
+ $\mathbb{1}_{i≥0}$

Both notations are called *indicator functions*, and obey the same rules as Knuth's bracket notation.
$$χ_{Q}≡\mathbb{1}_{Q} ≡ ⟦Q⟧$$

 They have the disadvantage that the important thing is written in small subindex letters. Knuth notation is easier to read and to write. 

In some cases people uses another notation for the proposition $x=y.$ The notation
$$δ_{a,b} ≡ ⟦a=b⟧$$
is called Kroneker's delta. Again, Knuth's brackets are easier and more generic.

## Application: sums

One particularly convenient advantage of this notation is to simplify sub- and super- indices in sums. For example, instead of writing
$$\Pr(Q)=∑_{ω∈Q}p(ω)$$
we can write
$$\Pr(Q)=∑_ω p(ω)⟦ω\in Q⟧$$

I like it because we avoid using too many subindices. Larger font size makes life easier

In particular, instead of writing
$$S=∑_{i=0}^n a^i$$
we can write
$$S=∑_i a^i⟦0≤i≤n⟧$$
Sometimes we can even omit the $i$ subindex. Here we implicitly take $i$ as an integer number ($i∈ℤ$) since otherwise the $∑$ symbol does not work.
Since the $∑$ symbol is normally used in discrete sets, we will assume that the indices are integers. In case of ambiguity we can always be explicit and write
$$S=∑_i a^i⟦0≤i≤n, i∈ℤ⟧$$

Now, let us do something practical. Let us see what happens if we multiply $S$ by $a$.
$$aS=∑_i a^{i+1}⟦0≤i≤n⟧$$

If we write $j=i+1$ then the sum can be rewritten as
$$aS=∑_j a^j⟦0≤j-1≤n⟧$$
using the fact that $i=j-1.$ Now it is easy to rewrite the condition inside the brackets
$$aS=∑_j a^j⟦1≤j≤n+1⟧$$

## The indices are mute

We can change all the indices $j$ by $i$ and the sum does not change
$$aS=∑_j a^j⟦1≤j≤n+1⟧ =∑_i a^i⟦1≤i≤n+1⟧$$
Now we can combine this formula with a previous one:
$$\begin{aligned}
aS-S & =∑_i a^i⟦1≤i≤n+1⟧-∑_i a^i⟦0≤i≤n⟧ \\
& =∑_i a^i(⟦1≤i≤n+1⟧-⟦0≤i≤n⟧)
\end{aligned}$$
Here we can see the advantage of bracket notation. It is now easily to see that
$$⟦1≤i≤n+1⟧-⟦0≤i≤n⟧=\begin{cases}0-1\quad\text{when }i=0\\
1-1\quad\text{when }1≤i≤n\\
1-0\quad\text{when }i=n+1
\end{cases}$$

Therefore
$$aS-S = a^{n+1}-a^0 = a^{n+1}-1$$
which, if $a≠1$, can be rewritten as
$$S=\frac{a^{n+1}-1}{a-1}$$
Finally, remembering the original expression for $S$ we have
$$∑_i a^i⟦0≤i≤n⟧=\frac{a^{n+1}-1}{a-1}$$
