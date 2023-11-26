---
title: "Rules of Probabilities"
date: "2021-02-13 17:10"
lang: en
featured: false
mathjax: true
links:
  - "[[_drafts/2021/math4bio/experiments-outcomes-events]]"
  - "[[_drafts/2021/math4bio/how-to-write-about-probabilities]]"
  - "[[_drafts/2021/math4bio/multiplication-rule]]"
  - "[[_drafts/2020/Probabilities/Probabilities]] (raw notes)"
  - "[[_drafts/2020/Probabilities/2-logic]]"
  - "[[_drafts/2020/Probabilities/3-probabilities]]"
  - "[[_drafts/2020/Probabilities/3-probability]]"
  - "[[_drafts/2020/Probabilities/3.1-events]]"
  - "[[_drafts/2020/Probabilities/3.2-bracket-notation]]"
  - "[[_drafts/2020/Probabilities/4-distributions]]"
  - "[[_drafts/2020/Probabilities/4-expected]]"
  - "[[_drafts/2020/Probabilities/4.1-sample-vs-population]]"
  - "[[_drafts/2020/Probabilities/5-LLN-CLT]]"
  - "[Channel MindYourDecisions](https://youtu.be/Bt5uwmOa_pc)"
---

# Naïve probabilities
Most readers will already be familiar with the idea that probabilities are "number of positive cases" divided by "number of total cases". This is a useful first approach, but it is easy to get confused. For example, if you throw a dice, what is the probability of getting a 6? 

It may be tempting to think that there are two possible outcomes: either you get a 6 or you do not. Only one of these outcomes is positive, so you we may be tempted to say that the probability is 50%. But the same reasoning can be used to conclude that the probability of getting a 5 is 50%, and the probability of getting a 4, or getting a 3, a 2 or a 1.

If that reasoning was correct, all possible outcomes would have probability 50%. But then we would have a total probability of 300%.

We have to be careful.

If you do not see the error of this reasoning, I will bet you one dollar for each dice cast.

# Rules of probabilities
Here are the basic rules that will allow us to assign probabilities.

## The probability of any event is a number between 0 and 1
Most readers will already be familiar with the idea that probabilities are "number of positive cases" divided by "number of total cases".    $$0≤ℙ(A|Z)≤1$$

<!-- Venn diagram. A circle in a square -->
![Probability as areas, but the drawing boards depends on the context.](../../../images/msr/venn3.png)


A canvas 𝛀 represents the target for a dart. We know that the dart is going to fall _somewhere_ inside the region 𝑍, never outside.
All points in the canvas have the same chance of being hit by the dart. The event 𝐴 is a region in the of being hit by the dart. The probability is the area of 𝐴 respect to the area of 𝑍.

If we do not have any extra information, at least we know Ω. In other words 𝑍=Ω.

## If we are sure that something will happen, its probability is 1
If we know that an event $A$ is true then its probability is 1. Or, in short,
    $$ℙ(\text{True})=1$$

To be more precise, remember that this probability depends our current knowledge (𝑍) about this experiment. If the symbol 𝑍 represent all we know  about this experiment, and this knowledge implies that 𝐴 must be true (𝑍 ⟹ 𝐴), then $ℙ(𝐴|𝑍)=1.$

Graphically, this is represented by an area 𝑍 that is contained inside a circle 𝐴. Sometimes 𝑍 is equal to 𝐴, sometimes 𝑍 is a subset of 𝐴.

## If we are sure that something will not happen, its probability is 0
If $A$ is false (given the context $Z$), then its probability is 0
$$\text{If }Z ⟹ (\text{not }A)\text{, then }ℙ(A|Z)=0$$
or, in short, the probability of a False event is zero
$$ℙ(\text{False})=0$$

## when one event is more probable, the opposite event is less probable
More in general, when one event is more probable, the opposite event is less probable by the same measure
    $$ℙ(A|Z)=1-ℙ(\text{not }A|Z)$$
    or, in other words
    $$ℙ(A|Z)+ℙ(\text{not }A|Z)=1$$

Venn diagram of 𝑍 split in two parts.

## Partition of Ω
Generalization of the previous idea. Let's split Ω in 𝑛 parts. We may call them $A_1,A_2,…,A_n$. They do not need to have equal size. Each outcome 𝑥 in Ω is in one and only one event $A_i$.
Then
$$ℙ(A_1)+ℙ(A_2)+ ⋯ + ℙ(A_n) =1$$


In other words, they must fulfill two conditions:
If $A_1,…,A_n$ are 𝑛 events such that
$$Ω=A_1 ∪ A_2 ∪ … ∪ A_n$$
and whenever 𝑖 ≠ 𝑗 we have
$$A_i ∩ A_j= ∅$$

+ The previous rule is a particular case of this rule. Therefore this rule is a generalization of the previous one
+ It can be proved formally

5. If two events —$A_1$ and $A_2$— are incompatible —that is, they cannot be both true at the same time— then
$$ℙ(A_1 \text{ or }A_2|Z)=ℙ(A_1|Z)+ℙ(A_2|Z)$$

6. If two events —$A_1$ and $A_2$—  can be both true at the same time then
$$ℙ(A_1 \text{ or }A_2|Z)=ℙ(A_1|Z)+ℙ(A_2|Z)-ℙ(A_1 \text{ and }A_2|Z)$$

Do not count the intersection twice. We will show a more rigorous proof later.

## Indifference principle


# Exercises

