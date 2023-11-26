---
title: "Independence"
date: "2021-02-15 23:01"
lang: en
featured: false
---

Remember that the probabilities reflect all the information that we have, and all the ignorance that remains. People with different information will assign different probabilities.

In general
$$ℙ(A)≠ℙ(A|B)$$
In other words, learning 𝐵 gives information that will change our probability of 𝐴.

In some important cases the opposite is true. If
$$ℙ(A)=ℙ(A|B)$$
then learning 𝐵 will not tell us anything about 𝐴. We say that _𝐴 and 𝐵 are independent_.

This is an important idea, and it has its own symbol. We write
$$A \perp B$$
and we read "𝐴 is independent of 𝐵". The symbol $\perp$ reminds us of the symbol representing *perpendicular* lines. That makes sense if we thing about physics and how the movement in one axis is independent of the movement in the perpendicular axis.

We will see that many results are valid _only_ when the events are independent.

## Multiplication rule for independent events
In general
$$ℙ(A\text{ and }B)=ℙ(A|B)ℙ(B)$$
If $A\perp B$ then we can write
$$ℙ(A\text{ and }B)=ℙ(A)ℙ(B)$$

**This rule is only valid when 𝐴 and 𝐵 are independent.**

Notice that we also have
$$ℙ(A\text{ and }B)=ℙ(A)ℙ(B|A)$$
therefore we can see that $ℙ(B|A)=ℙ(B)$ and therefore $B\perp A$.

In other words, the relationship $\perp$ is symmetrical. If 𝐴 is independent of 𝐵, then 𝐵 is independent of 𝐴. If learning about 𝐴 does not tell us anything about 𝐵, then learning about 𝐵 will not tell us anything about 𝐴.

# Conditional independence
If
$$ℙ(A|C)=ℙ(A|B,C)$$
even when
$$ℙ(A)≠ℙ(A|B)$$
we realize that the knowledge of 𝐶 will make 𝐴 independent of 𝐵.
We say that 𝐴 is independent of 𝐵 conditional on 𝐶.

This essentially means that, once we know 𝐶, then learning about 𝐵 will not teach us nothing about 𝐴.

---

+ [[_drafts/2021/math4bio/rules-of-probabilities]]
+ [[_drafts/2021/math4bio/bayes-theorem]]
