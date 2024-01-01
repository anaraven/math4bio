---
title: "Table of contents"
date: "2021-04-20 09:46:04"
lang: en
featured: false
mathjax: true
links:
 - "[[rules-of-probabilities]]"
 - "[[independence]]"
 - "[[multiplication-rule]]"
 - "[[diagnostics]]"
 - "[Why Bayes rule is nicer with odds – 3Blue1Brown](https://youtu.be/lG4VkPoG3ko)"
 - "[Bayes theorem – 3Blue1Brown](https://youtu.be/HZGCoVF3YvM)"
---

+ Why everybody should learn probabilities
  + [Bayesian Thinking: If You Want To Be A Critical Thinker You Need To Understand This Concept](https://www.evernote.com/shard/s9/nl/1092733/32c50147-895b-44a9-a606-d0d29ce97450)

  + thinking correctly
  + do not fool ourselves
  + how we lie to ourselves:
    + biases in perception
    + feeling of certainty
+ What are probabilities: a way to think about unknown things
  + questions that can be true or false, but we do not know
    + degrees of knowledge
    + we assign the probabilities
  + naive idea: positive cases divided by total cases
    + problem: what are the total cases and the positive ones?
    + not all possibilities are equal
      + ex: in a dice, you get a 6 or you do not. But the two cases are not symmetrical/equivalent
  + depends on what we know. It changes when we learn
    + probabilities are "personal"
    + two people with the same information will **assign** the same probability
    + people with different information may assign different probability
  + rational beliefs: we must use all the information available, and not "feelings"
  + assign a value to how much we believe
    + monotony: increases when plausibility increases
    + if, in a given context Z, A is more plausible than B, then P(A)>P(B)
      + getting a value greater than 3 is more probable than getting a 6
    + if the context changes, plausibility changes
      + if we know that the dice value is even, then the probability of _getting a 6_ is bigger than before
      + if we know that the dice value is odd, then the probability of _getting a 6_ is smaller than before
+ How to write about probability
  + notation
  + conditional probabilities
  + it is not symmetrical: what we know v/s what we guess
+ experiments: produce one outcome
  + sampling one element from a set
  + all set elements are symmetric/indifferent. No preference for any of them. We will get any of them
  + this only works if the elements are "indifferent". All must have the same properties, excepts the "name" or "value"
  + let's put colors. Number of colors < number of elements. The probability of each color is its relative frequency (proportion)
+ how probabilities work: basic rules
  + Probabilities are real numbers, so we can compare them and find which one is smaller or larger
  + Something sure has probability 1, something impossible has probability 0
  + probability of A not happening is 1- probability of A happening
+ analyzing more complex questions
  + decomposing any question into simpler ones
  + connect simple question with "and", "or", "negation"
  + `[[rules-of-probabilities]]`

+ logic statements: either true or false
  + Building a new statement: negation
  + combining two statements: "and", "or", "equivalent", "implies"
  + two kind of "or"
    + choose A or B, but not both
      + desserts
      + spouses
    + A or B or both
  + meaning of implication
  + combining several questions
  + truth tables
  + de Morgan's rule
  + All vs any

+ joint probability: can two events happen at the same time
+ one or the other event happens: sum rule
+ disjoint events are easier to analyze. P(∪X) = ∑P(X)
