---
title: "Multiplication Rule"
date: "2021-02-14 11:45"
lang: en
featured: false
links:
  - "[[_drafts/2021/math4bio/rules-of-probabilities]]"
  - "[[_drafts/2021/math4bio/bayes-theorem]]"
---

# Probability of two events at the same time
As we said before, an experiment produces only one outcome, and that outcome may be understood as a realization of one or several events. We want to find the probability that two (or more) events occur.

<!-- venn diagram: intersection -->

Let's say that we are expecting two separate events 𝐴₁ and 𝐴₂. For example, when we trow a dice, we may consider 𝐴₁ to be the event "outcome is less than 4" and 𝐴₂ correspond to "outcome is an even number". In this case
$A_1=\{1, 2, 3\}$ and $𝐴₂=\{2,4,6\}.$

Let's examine all combinations in this example

𝑥 |  𝐴₁ | 𝐴₂
--|-----|----
1 | yes | no
2 | yes | yes
3 | yes | no
4 | no  | yes
5 | no  | no
6 | no  | yes

We can see that in this case we have one *positive* outcome among 6 possible outcomes. Moreover, since the dice is symmetric, all outcomes are equally probable. Therefore we must have
$$ℙ(A_1 \text{ and }A_2|Z)=\frac{1}{6}$$

Here the context 𝑍 includes the facts that:

+ we are throwing a dice with 6 faces numbered from 1 to 6
+ the dice will show one and only one of the six faces
+ the dice is symmetric (except for the marks of numbers on each face)
+ we do not have any information that would make us choose one side over any other side.

## Calculating the conjoint probability from its parts
We can reason this way. If 𝐴₁ and 𝐴₂ happen, then certainly 𝐴₁ happens, and we assign a probability $ℙ(A_1|Z)$ to that event. Now our context includes 𝑍 and 𝐴₁, so we must use all this information to assign the probability $ℙ(A_2|Z,A_1).$ The only remaining issue is how to combine these two values.

It can be proved that the only way to combine these individual probabilities to get the conjoint probabilities is by multiplying them
$$ℙ(A_1\text{ and }A_2|Z)=ℙ(A_1|Z)ℙ(A_2|Z,A_1)$$

In the example case we have three positive cases over six total outcomes
$$ℙ(A_1|Z) = \frac{3}{6}=\frac{1}{2}.$$

Once we include the new information and we restrict ourselves to the cases where $A_1$ is true, we have one positive outcome among three total outcomes
$$ℙ(A_2|Z,A_1)=\frac{1}{3}$$

Applying now the multiplication rule, we will have
$$ℙ(A_1 \text{ and }A_2|Z)=\frac{1}{2}\cdot \frac{1}{3}=\frac{1}{6}$$

## Conjoint is not conditional
Please be aware of the difference
$$ℙ(A_1 \text{ and }A_2)≠ℙ(A_1|A_2)$$


## Two ways of decomposing
$$ℙ(A_1 \text{ and }A_2|Z)=ℙ(A_1|Z)ℙ(A_2|Z,A_1)=ℙ(A_2|Z)ℙ(A_1|Z,A_2)$$

# Examples/exercises
## Choosing cards
You have an urn with three red and four white balls. You take randomly two balls. What are the probabilities of

+ Two white balls
+ Two red balls
+ One red and one white
+ The first ball is red, the second is white

## Sex of children

## Birthday paradox

## Monty Hall

## Sum of two dice

## Ancient tetrahedric dice 
