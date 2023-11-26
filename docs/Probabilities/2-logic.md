---
title: "Logic"
subtitle: "Fundamental Mathematics for Life Sciences"
date: "2019-02-08 20:51"
category: Principia
order: 2
featured: false
mathjax: true
---

# The logic of science
The first problem we need to solve is how to know what is true and what is false. That is the subject of logic. We will explain it using what we know from set theory.

1. $A(x)$ represents the phrase $x\in\mathcal A$
1. $A(x)$ can be **true** or **false**
2. The set $\mathcal A = \{x: A(x)\}$
3. $\neg A(x)$ is true when $A(x)$ is false, and vice versa
4. $\neg A(x)$ means $x\in\mathcal A^c.$ We read it as **NOT $A(x)$**
6. $A(x)\vee B(x)$ is $x\in \mathcal A\cup \mathcal B$
7. we say **$A(x)$ OR $B(x)$**
8. $A(x)\wedge B(x)$ is $x\in \mathcal A\cap \mathcal B$
9. we say **$A(x)$ AND $B(x)$**
10. $\forall x, A(x)$ means $\mathcal A= \mathcal U$
11. $\exists x, A(x)$ means $\mathcal A\not=\phi$
10. $\forall x, A(x)\Rightarrow B(x)$ means $\mathcal A\subseteq \mathcal B$
+ We can know the **truth value** of any predicate following some rules
+ if $P$ and $Q$ have **always** the same truth value, we write $P\Leftrightarrow Q$
    + AND rule: $\forall P, (P\wedge F)\Leftrightarrow F, (P\wedge T)\Leftrightarrow P$
    + OR rule: $\forall P, (P\vee F)\Leftrightarrow P, (P\vee T)\Leftrightarrow T$
    + NOT rule: $\neg T =F, \neg F=T$
    + IMPLICATION: $(P\Rightarrow Q)\Leftrightarrow (\neg P\vee Q) \Leftrightarrow (P\wedge Q\Leftrightarrow P)$
    + Boolean Algebra 
        + Double negation: $\neg (\neg P) \Leftrightarrow P$
        + Commutativity: $(P \wedge Q) \Leftrightarrow (Q \wedge P)$
        + Distributivity: $(P \wedge Q)\vee R \Leftrightarrow (P\vee R) \wedge (Q\vee R)$

# How math works
    + Theorems, axioms, demonstrations/proofs
    + hypothesis, conjecture
    + lemas
    + properties
