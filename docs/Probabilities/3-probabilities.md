---
title: "Probabilities: Extending Logic"
subtitle: "Fundamental Mathematics for Life Sciences"
date: "2019-02-08 20:51"
category: Principia
order: 3
featured: false
mathjax: true
documentclass: 'tufte-handout'
header-includes:
- '\def\E{\mathbb E}'
- '\renewcommand{\vee}{\textbf{ or }}'
- '\renewcommand{\neg}{\textbf{not }}'
- '\renewcommand{\wedge}{, }'
- '\renewcommand{\subsubsection}[1]{\newthought{#1}}'
---

We said previously that a *proposition* is a statement that can be either *true* or *false*.
So far we assumed that we can always know if a proposition is true or not.
In real life sometimes we don't know if a proposition is true or not. How can this be?

Well, the truth value of a proposition may depend on facts that we do not know yet.
For example, think about the following phrases:

+ "It will rain tomorrow"
+ "I will win the lottery next month"
+ "I will finish my thesis"

All these statements are propositions: they are either true or false. But we do not have enough information to decide their truth value.

What can we do in this case? We can use *probabilities*, which is a well defined way to reason about _how much do we think it is true_.

There are different philosophies behind probabilities. In this course we will adopt the point of view that _probabilities_ reflect *our knowledge* at a given time. Does this mean that we can invent our own probabilities and say whatever we like? No. There are strict rules to follow, since we have to be coherent. For example, if we strongly believe that “it will rain tomorrow”, we cannot also believe strongly that “it will not rain tomorrow”.

Some people has a different philosophy about probabilities, called *frequentist*. In that point of view the probability is the percentage of _true_ cases in a big number of experiments. The problem here is that in many cases there is not a big number of experiments. How can we calculate frequencies of an event that can only happen once? Our approach allows us to reason in this case, and recovers the frequentist result when we do have a big number of experiments.

# Experiments, Outcomes, events, probabilities

In our case the most common use of probabilities is to reason about _experiments_. An experiment is any activity that will produce a result that we do not know before[^1]. For example, we can see if a plant grows, or if a drug has a secondary effect. Or we can observe if a star becomes a supernova during a time period, or if a TV advertisement increases the sells of a product, or if attending to a course increases our grades.

In a broader context, an experiment can be anything that produces a result that we did not knew before. For example we can consider tossing a coin, or trowing dice, or shuffling cards. Betting games are commonly used 

[^1]: If we knew for sure what will be the result before we do the experiment, we would not waste our time doing the experiment.

Outcomes (Ω)
: set of possible results. It is part of our context. Only one result can happen in a given experiment. They are mutually exclusive.

Events
: any proposition about the results. In other words, a subset of the outcomes. The proposition $A$ corresponds to the subset $\mathcal A\subset\Omega$ defined as $\mathcal A=\{x\in\Omega: A(x)\text{ is true}\}$.

*                *                *             *

Something is going to happen. We do not know exactly, we just have some idea. We want to reason about that idea in a coherent way.


Let say that two events can happen. Let's call them 𝑨 and 𝑩. For example, it will rain tomorrow, or it will be sunny.

The probabilities of 𝑨 and 𝑩 must show what we think about the chances that each thing will happen. We will write ℙ(𝑨) for the probability that 𝑨 will happen.

If we think that $A$ has better chances than B, then we must say that $ℙ(A)>ℙ(B)$. We can only make this comparisons when probabilities are real numbers. So, let it be, probabilities are real numbers.

In theory there are several ways of representing the chances with numbers. All of them are equivalent, in the sense that we can transform one into another using formulas.

The most common way to represent the chance that something will happen is using a number between 0 and 1. If something is impossible, then its probability is 0. If something will certainly happen, then its probability must be 1.

If we know that either A or B will happen, nothing else will happen, and they cannot happen at the same time, then we have P(A) + P(B)=1

In other words, if $A$ and $B$ are mutually exclusive, and they are the only options, then $B$ represents *NOT A*, and thus $ℙ(\neg A) = 1 - ℙ(A)$

In general, if there are several incompatible events, we have 
$ℙ(A_1 \vee A_2 \vee … \vee A_n)=ℙ(A_1) +ℙ(A_2)+ \cdots +ℙ(A_n)$



# Probabilities depend on context

Plausibility:
: + literally, we can clap for it
: + How much do someone believes/thinks about the truth value of a proposition
: + credible, reasonable, believable, likely, feasible, tenable, possible, conceivable, convincing, persuasive, cogent, sound, rational, logical, thinkable. 
: + the contrary of unlikely.

Plausibility *always* depends on the context, that is, on all the things that we know.

+ The proposition $A$: "it will snow tomorrow” can be true or false
+ The truth value depends on the context.

**Context** is a proposition $Z$ that is true to our knowledge. We assume it is true, as far as we know. Later we may change our minds.

# Probabilities
How much we believe, given all our current knowledge, about what will happen.

Probabilities are real numbers. We can compare the probabilities of two events and decide which one is more probable.

Probabilities cannot be negative. Each probability must be between 0 and 1.

If an experiment can have only two outcomes, only one can be realized. The sum of both probabilities is 1

The probability of something that we are sure will happen is 1. The probability of something we know cannot happen is 0[^recip].

[^recip]: The reciprocal is false. There can be possible outcomes whose probability is 0.



We write $ℙ(A\vert Z)$. We call it **Probability of $A$ given $Z$**.

Notice that most books write $ℙ(A)$ instead of $ℙ(A\vert Z)$. We prefer to make the context $Z$ explicit.

The rules are:

+ Probability $ℙ(A\vert Z)$ grows when plausibility grows

    Assuming that the context $Z$ is the same, if $B$ is more plausible than $A,$ then $ℙ(B\vert Z) > ℙ(A\vert Z).$

    Now assuming that the context $Z$ changes to $W,$ because we learned something new. If in the new context $A$ is more plausible than before, then $ℙ(A\vert W) > ℙ(A\vert Z).$

+ If $Z\Rightarrow A$ then $ℙ(A\vert Z)=1$

+ Something has to happen. $ℙ(U\vert Z)=1$.

+  Something has to happen. If $A$ does not happen, then $\neg A$ must happen.  $ℙ(A\vert Z)+ ℙ(\neg A\vert Z)=1$
+ Joint probability: $ℙ(A\wedge B\vert Z) = ℙ(A\vert Z)\cdot ℙ(B\vert A\wedge Z)$

Notice that most books write $ℙ(A)$ instead of $ℙ(A\vert Z)$. We prefer to make the context $Z$ explicit.

# Some consequences
It is easy to see that if $Z\Rightarrow A$ then $ℙ(\neg A\vert Z)=0$

## Independence
If $ℙ(B\vert A\wedge Z)=ℙ(B\vert Z)$ then we say that $B$ is **independent** of $A$ given $Z$

In that case $ℙ(A\wedge B\vert Z) = ℙ(A\vert Z)\cdot ℙ(B\vert Z)$

Therefore we also have that $A$ is **independent** of $B$ given $Z$

# Some distributions
## sampling from cards
Let us assume that we have a deck of $N$ cards, with numbers 1 to $N.$ When they face down, we cannot distinguish them. If we choose one card randomly, what is the probability that the chosen card has the number 1?

Naturally, choosing any card means that we are not choosing any other card. We cannot choose two cards at the same time. In other words, the events “card has number $i$” and “card has number $j$” are incompatible. Therefore,
$$ℙ(\text{card has number } i\text{, card has number } j\vert N\text{ cards})=0\quad\text{for all }i, j≤N.$$
This is good, because it allows us to use the *disjoint sum* formula $$ℙ(\text{choosing some card}\vert N\text{ cards})=\sum_{i=1}^N ℙ(\text{card has number } i\vert N\text{ cards})$$
Moreover, one card *must be* chosen, therefore $$ℙ(\text{choosing some card}\vert N\text{ cards})=1$$
and therefore
$$\sum_{i=1}^N ℙ(\text{card has number } i\vert N\text{ cards})=1$$

Since all the cards are symmetrical, and cannot be distinguished, we have no information that will indicate that any card is more plausible than another. Therefore all cards have the same probability.
$$ℙ(\text{card has number } i\vert N\text{ cards})=ℙ(\text{card has number } j\vert N\text{ cards})\text{ for all } i, j≤N.$$
Thus, we can rewrite the *disjoint sum* as
$$\sum_i ℙ(\text{card has number } i\vert N\text{ cards})= N\cdot ℙ(\text{card has number } i\vert N\text{ cards})\quad\text{ for any }i$$

Combining all, we conclude that, when all cards are ==indistinguishable==,
$$ℙ(\text{card has number } i\vert N\text{ cards})=\frac{1}{N}\quad\text{ for any }i$$

So, if we have 10 cards, and we do not know anything more, we must assign probability 1/10 to each card.

## Key comments

+ Valid only when outcomes are indistinguishable
+ what counts as indistinguishable?
    + According to Oxford dictionary, *Indistinguishable* is an adjective, meaning *not able to be identified as different or distinct*
    + synonyms: identical, almost identical, the same, alike, very similar; cut from the same cloth, two of a kind, difficult to tell apart
+ long mathematical notation is uncomfortable and cumbersome. Instead of writing “card has number $i$ ” we can write just $C_i,$ and the fact "there are $N$ cards in the deck" can itself be represented by the letter $N$. Thus we would write
  $$ℙ(C_i, C_j\vert N)=0\quad\text{for all }i, j≤N$$ and
$$ℙ(\text{choosing some card}\vert N)=\sum_{i=1}^N ℙ(C_i\vert N)=1$$
and
$$\sum_{i=1}^N ℙ(C_i\vert N)= N\cdot ℙ(C_i\vert N)\quad\text{ for any }i$$
and therefore
$$ℙ(C_i\vert N)=\frac{1}{N}\quad\text{ for any }i$$

## Colored cards
Let's put color in the cards. There are $N$ cards and $R$ of them are red, the rest is black. There are no other difference. We choose one card randomly. *What is the probability that the card is red?*

We can represent "The card has color red" by the symbol $C_R.$ As before, we represent the fact "there are $N$ indistinguishable cards" with the same symbol $N$.

As you can guess, the result is 
$$ℙ(C_R\vert N)=R/N$$
In other words, when all outcomes are indistinguishable, the probability of any *event* is the number of positive cases divided by the total number of cases.

There are $R$ red cards. We can put a number on each red card, from 1 to $R.$ Let us call them $C_{R,1}$ to $C_{R,R}.$ We then have
$$ℙ(C_R\vert N) =ℙ(C_{R,1}\vert N)+ℙ(C_{R,2}\vert N)+\cdots+ℙ(C_{R,R}\vert N)$$

## Sampling multiple times

## sampling from big populations
+ dice
+ two dice

# Proof of *Sum rule*
We started from basic principles
+ negation rule
  $$ℙ(A\vert Z) =1-ℙ(\neg A\vert Z)$$
+ multiplication rule for "**and**"
  $$ℙ(A, B\vert Z)=ℙ(A\vert Z)ℙ(B\vert A,Z)$$

We will combine all to get the *Sum rule*:
$$ℙ(A\vee B\vert Z) =ℙ(A\vert Z)+ℙ(B\vert Z)-ℙ(A\wedge B\vert Z).$$

In all the following steps the context $Z$ is fixed, so we will make it *implicit* and not write it.

Using De Morgan's rule $A\vee B = \neg(\neg A\wedge \neg B)$, we can write
$$ℙ(A\vee B) = 1- ℙ(\neg A\wedge \neg B).$$

We know how to handle "**and**" using the product rule
$$ℙ(A\vee B) =1-ℙ(\neg A)ℙ(\neg B\vert \neg A).$$

We have a lot of negations, and we want to get rid of them one by one. Since we have $\neg B$, we can use the *complement* rule
$$ℙ(A\vee B) =1-ℙ(\neg A)\left(1-ℙ(B\vert \neg A)\right),$$
and now we can expand the parenthesis
$$ℙ(A\vee B) =1-ℙ(\neg A)+ℙ(\neg A)ℙ(B\vert \neg A).$$
We do not have any more $\neg B.$ We still have to handle all the $\neg A.$
We use the _complement_ rule $1-ℙ(\neg A)=ℙ(A)$ to simplify the first part
$$ℙ(A\vee B) = ℙ(A)+ℙ(\neg A)ℙ(B\vert \neg A),$$
and then we use the multiplication rule to combine the last part
$$ℙ(A\vee B) =ℙ(A)+ℙ(\neg A\wedge B),$$
which we can then expand again in a different way as
$$ℙ(A\vee B) =ℙ(A)+ℙ(B)ℙ(\neg A\vert B).$$
Using the complement rule again, we have
$$ℙ(A\vee B) =ℙ(A)+ℙ(B)(1-ℙ(A\vert B))$$
then we expand the parenthesis
$$ℙ(A\vee B) =ℙ(A)+ℙ(B)-ℙ(A\vert B)ℙ(B),$$
and finally we use the multiplication rule to get our formula
$$ℙ(A\vee B) =ℙ(A)+ℙ(B)-ℙ(A\wedge B).$$


# Bayes' theorem
Since the multiplication rule can be used in two ways, we have
$$ℙ(A\wedge B\vert Z) = ℙ(A\vert Z)\cdot ℙ(B\vert A\wedge Z)$$
when we first consider $A$ and then $B,$ and
$$ℙ(A\wedge B\vert Z) = ℙ(B\vert Z)\cdot ℙ(A\vert B\wedge Z)$$
when we first consider $B$ and then $A.$ Both are valid ways to decompose the joint probability.

Putting the two equations together, we can write
$$ℙ(B\vert A\wedge Z) = \frac{ℙ(B\vert Z)\cdot ℙ(A\vert B\wedge Z)}{ℙ(A\vert Z)}$$
except, of course, when $ℙ(A\vert Z)=0$

Since
$$ℙ(A\wedge B) = ℙ(A)\cdot ℙ(B\vert A) = ℙ(B)\cdot ℙ(A\vert B)$$
we can write
$$ℙ(B\vert A) = \frac{ℙ(B)\cdot ℙ(A\vert B)}{ℙ(A)}$$
except, of course, when $ℙ(A)=0$

# Bayes' theorem
Let's assume again that the context $Z$ is known and fixed.
Since the multiplication rule can be used in two ways, we have
$$ℙ(A, B) = ℙ(A)\cdot ℙ(B\vert A)$$
when we first consider $A$ and then $B,$ and
$$ℙ(A, B) = ℙ(B)\cdot ℙ(A\vert B)$$
when we first consider $B$ and then $A.$ Both are valid ways to decompose the joint probability.

Putting the two equations together, we can write
$$ℙ(B\vert A) = \frac{ℙ(B)\cdot ℙ(A\vert B)}{ℙ(A)}$$
except, of course, when $ℙ(A)=0$


# Examples
+ choose second number depending on the first
+ Diagnostics and susceptibility
