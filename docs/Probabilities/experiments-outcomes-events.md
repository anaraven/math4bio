---
title: "Experiments, Outcomes, Events"
date: "2021-02-14 12:18"
lang: en
featured: false
links:
  - "[[_drafts/2021/math4bio/rules-of-probabilities]]"
---

# Experiments, outcomes, events
An experiment produces a single outcome. We do not know the outcome until we perform the experiment. If we knew the outcome before doing the experiment, we would not be doing it.

Experiments can be (in principle) be repeated. Some people may argue that a second experiment is not in the same conditions as the first, since it happens in a different time, maybe with different objects. For our reasoning we will abstract out these details, ignoring them and instead focusing on what repeated experiments have in common.

One way of thinking is to imagine that there are several parallel universes, and the experiment may have different results in each of them. Another way to think about it is to ask "what-if" questions, or counterfactuals.

Having fever is an event. Thermometer showing 38.2 °C is an outcome.

One experiment realization will produce one and only one outcome, but it may realize several events at the same time.

The set of all possible outcomes is usually called Ω, the greek letter Omega that corresponds to the latin letter "O", as in "outcome". Any outcome 𝑥 is an element of Ω. We usually represent outcomes with lower case latin letters, such as 𝑥, 𝑦, or 𝑎.

Events can be described in two ways, that are equivalent. One definition of event is _"a phrase that will be either true or false once we know the experiment's outcome"_.

An outcome can be an event by itself. That is, the element 𝑥 ∈ Ω corresponds to the event {𝑥}. In general events are sets that include several outcomes.


## Exercises
1. Classify the following as experiment, outcome, or event.
2. Describe other experiments, outcomes, events.

---

## Summary
A probability space is defined by two things: $\Omega$ and $p.$

+ $\Omega$ is the set of all possible outcomes. Can be finite or infinite
+ Each element $\omega\in\Omega$ is a single outcome
+ Each experiment produces a unique outcome
+ The distribution $p:\Omega\to\mathbb R$ is a function such that
$$0\leq p(\omega)\leq 1\quad \forall \omega\in\Omega\\
\sum_{\omega\in\Omega}p(\omega)=1$$

## Questions
We can ask any question that can be answered *yes* or *no*, about a future outcome $\omega$

Any question is valid, as long as we can answer _yes_ or _no_ when we know $\omega$

We can represent each question $Q(\omega)$ as a subset $E$ of $\Omega$
$$E=\{\omega\in\Omega: Q(\omega)\text{ is true}\}$$
The question $Q(\omega)$ is true iff $\omega\in E$

## Events
An *event* is a subset $E\subset \Omega$. It is also a yes-or-no question about a future outcome

(Since $\Omega$ is discrete, all questions are events. That may not be the case if $\Omega=\mathbb R$)

The probability of an event $E$ is
$$\Pr(E)=\sum_{\omega\in E}p(\omega)$$ 

## Simple and compound events
All events are subsets of $\Omega$

If the event $E=\{\omega\}$ contains only one element, we call it a _simple event_

In that case
$$\Pr(E)=\Pr(\{\omega\})=p(\omega)$$
Abusing the notation, we can write $$\Pr(\omega)=\Pr(\{\omega\})=p(\omega)$$
