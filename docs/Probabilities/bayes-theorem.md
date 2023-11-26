---
title: "Bayes Theorem"
date: "2021-02-15 23:01"
lang: en
featured: false
mathjax: true
links:
 - "[[_drafts/2021/math4bio/rules-of-probabilities]]"
 - "[[_drafts/2021/math4bio/independence]]"
 - "[[_drafts/2021/math4bio/multiplication-rule]]"
 - "[[_drafts/2021/math4bio/diagnostics]]"
 - "[Why Bayes rule is nicer with odds – 3Blue1Brown](https://youtu.be/lG4VkPoG3ko)"
 - "[Bayes theorem – 3Blue1Brown](https://youtu.be/HZGCoVF3YvM)"
---

\renewcommand{\neg}{\textrm{not }}
\renewcommand{\and}{\textrm{ and }}
\renewcommand{\or}{\textrm{ or }}

The multiplication rule tells us that
$$ℙ(A_1 \text{ and }A_2|Z)=ℙ(A_1|Z) ℙ(A_2|A_1,Z)$$
and also that
$$ℙ(A_1 \text{ and }A_2|Z)=ℙ(A_2|Z) ℙ(A_1|A_2,Z)$$

Therefore it must also be true that
$$ℙ(A_1|Z)ℙ(A_2|A_1,Z)=ℙ(A_2|Z)ℙ(A_1|A_2,Z)$$

----

The multiplication rule tells us that
$$ℙ(A \text{ and }B|Z)=ℙ(A|Z) ℙ(B|A,Z)$$
and also that
$$ℙ(A \text{ and }B|Z)=ℙ(B|Z) ℙ(A|B,Z)$$

Therefore it must also be true that
$$ℙ(A|Z)ℙ(B|A,Z)=ℙ(B|Z)ℙ(A|B,Z)$$

When $ℙ(A|Z)>0$ we can rewrite this expression as
$$ℙ(B|A,Z)=\frac{ℙ(B|Z)ℙ(A|B,Z)}{ℙ(A|Z)}$$

This is a very important and practical result, known as _Bayes' Theorem_.

## Inversion rule
$$ℙ(B|A,Z)=\frac{ℙ(B|Z)}{ℙ(A|Z)} ℙ(A|B,Z)$$

## Learning rule
$$ℙ(B|A,Z)=ℙ(B|Z) \frac{ℙ(A|B,Z)}{ℙ(A|Z)}$$

-------

# Bayes Theorem

## Bayes Theorem
From Wikipedia, the free encyclopedia
*"An Essay towards solving a Problem in the Doctrine of Chances"* is a work on the mathematical theory of probability by the Reverend Thomas Bayes, published in 1763, two years after its author's death

The use of the Bayes theorem has been extended in science and in other fields

## Bayes rule
Since
$$ℙ(A, B) = ℙ(A|B)\cdotℙ(B)$$
and, by symmetry
$$ℙ(A, B) = ℙ(B|A)\cdotℙ(A)$$
then
$$ℙ(A|B) = \frac{ℙ(B|A)\cdotℙ(A)}{ℙ(B)}$$

![One of the most famous theorems](../../../images/TBBT-Bayes.png)

## What does it mean?
It can be understood as
$$ℙ(A|B) = \frac{ℙ(B|A)}{ℙ(B)}\cdotℙ(A)$$
which is a rule to update our opinions

+ $ℙ(A)$ is the *a priori* probability
+ $ℙ(A|B)$ is *a posteriori* probability

Bayes says how to change $ℙ(A)$ when we learn $B$

> “When the facts change, I change my opinion. What do you do, sir?”
> 
> **John Maynard Keynes (1883 – 1946),**
> **English economist, "father" of macroeconomics**

## Inversion rule
Another point of view is
$$ℙ(A|B) = ℙ(B|A)\cdot\frac{ℙ(A)}{ℙ(B)}$$
which is a rule to *invert* the conditional probability

This is the view we will use now

## Updating the odds
$$ℙ(A|B) = \frac{ℙ(B|A)\cdotℙ(A)}{ℙ(B)}$$
$$ℙ(\text{not }A|B) = \frac{ℙ(B|\text{not }A)\cdotℙ(\text{not }A)}{ℙ(B)}$$

$$Odds(A)=\frac{ℙ(A)}{ℙ(\text{not }A)}$$

$$Odds(A|B)=\frac{ℙ(A|B)}{ℙ(\text{not }A|B)}
=\frac{ℙ(B|A)⋅ℙ(A)}{ℙ(B|\text{not }A)⋅ℙ(\text{not }A)}
=\frac{ℙ(B|A)}{ℙ(B|\text{not }A)}⋅Odds(A)$$

# Examples
## Diagnostic "paradox"

## Monty hall

## Exercise: Conditional probabilities
In the wardrobe drawer there are 24 socks. Half are black, the other half is white.

If you take two socks at random (let's say, closing your eyes), what is the probability that you get a matching pair?

## Homework
Write a program (in any computer language) to calculate the score of each position of a genome

# Bayes
+ new evidence

---

+ [multiplication rule](multiplication-rule.md)
+ [[rules-of-probabilities]] [rules of probabilities](rules-of-probabilities.md)