---
layout: "post"
title: "Matrices"
subtitle: "Introduction to Linear Algebra"
date: "2016-08-04 9:45"
category: Matrices
published: no
tags: ideas, book, teaching
mathjax: true
published: no
---

# Matrices

## equations represented by matrices

## matrix multiplication

## matrix inversion: definition

+ transposition, symmetry
+ diagonal, trace

## matrix inversion
application to the image problem

## Special matrices easy to invert
+ triangular matrices
+ orthogonal matrices and rotations

# Other applications of matrices

## Networks
Let's consider a square matrix $A$, with $n$ rows and $n$ columns, where each cell $A_{ij}$ is either 0 or 1.
Any matrix like this one can be seen as a network in the following way:

+ draw $n$ points in a plane and number them from 1 to $n$
+ if $A_{ij}=1$ then draw an arrow from the point marked $i$ to the one marked $j$

For example, for the matrix

~~~ note
A= some binary matrix
~~~
we obtain this drawing

~~~ note
drawing for A
~~~

+ if the matrix is symmetric, then each arrow is reversible. For each link form $i$ to $j$ there is another link in the opposite direction, that is, from $j$ to $i$. The graph is undirected

## Parameters of graphs
+ directed or not
+ number of nodes
+ number of edges
+ colors of nodes
+ costs of edges

## Properties of graphs
+ degree of each node
+ degree distribution
+ average degree
+ connected components
+ strongly connected components

## Euler's rule
+ nodes, edges, degree

## applications
+ seven bridges
+ chemistry
+ metabolism
+ Markov chains
