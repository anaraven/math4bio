---
title: "How to write about probabilities"
date: "2021-02-13 17:54"
lang: en
featured: false
links:
  - "[[_drafts/2020/Probabilities/3-probability]]"
  - "[[_drafts/2021/math4bio/rules-of-probabilities]]"
  - "[[rules-of-probabilities.md]]"
  - "genetics: Mendelian inheritance"
---


> “Recall that mathematics is a tool to meditate, not compute.”
>
> *Nassim Nicholas Taleb (born 1960)*  \
> *Lebanese-American essayist, scholar, statistician, former trader, and risk analyst*

# How to write about probabilities

Basically we are going to talk a lot about "the probability that X is true assuming that Y is true", and doing arithmetic operations on these concepts. People has found a way to simplify the blah-blah when reasoning about these concepts, and that is _mathematical notation_.

Just as an example, consider the phrase "take the positive number that, when raised to the second power, results in the real number 5, then add one to this number and take the half of it". In the standard mathematical notation we write
$$\frac{\sqrt 5 + 1}{2}$$

The mathematical notation is shorter, clear, unambiguous, and can be translated back to any human language. You understand it even if you do not understand English. Ancient books (Babylonian, Persian, Greek) used words, and they are very hard to understand. Modern symbolic notation

On the other side many people feels panic when they see mathematical notation, since they have been convinced (wrongly) that they cannot learn math. But the same people have no problem reading traffic signs, even when they travel abroad or watch a foreign movie.

Can you understand the following symbols?

::: large  
🛑⛔️🚫🚯📵🚭🛃  
⏮⏹⏺▶️⏸⏭⏏️  
:::

I guess that most people will not have any problem understanding these symbols. They are universal, currently used around the world. Even if there is some unknown symbols, they are easy to learn. Nobody panics looking at the smartphone icons.


There are several advantages on using mathematical notation. Maybe the most important is that it allows us to see the big picture. Good notation may even help to find new relationships that are hard to see otherwise. So it is important to be comfortable reading and using mathematical notation. It is a kind of magic power: the ability to decode mysterious books.

## Symbols for probabilities

When we want to say something about "the probability that A is true, given that Z is true", we will write
$$ℙ(A|Z)$$

We use the funny symbol $ℙ$ because we do not want to confuse with the letter *p* that we may want to use later. It can be written in paper or the whiteboard as “IP”, that is an “I” followed by a “P”. It is a little more tricky to write in the computer. If you know how to use Unicode characters, you can find it with the name “Double-struck capital P”. Otherwise you can just write
$$\Pr(A|Z)$$

As we argued previously, all probabilities depend on what we know. We show this dependence with the vertical bar. When we write $ℙ(A|Z)$ we mean that the probability that we assign to the event A depends on assuming that Z is true.
The facts summarized in the proposition $Z$ are the _context_ in which the probability is evaluated.

Sometimes the context is fixed, does not change through all the reasoning, and is known to everybody. In that case —and only in that case— we can write
$$ℙ(A)$$
to represent "the probability of A, given the implicit context that we all agree". Just remember that there is always a context in which probabilities are evaluated.


