---
title: 'Matrices: Changing the scale'
date: '2017-10-18 12:45'
featured: false
category: Matrices
mathjax: true
link:
  - "[[_drafts/2021/Matrix/vectors]]"
  - "[[_drafts/2021/Matrix/descriptive-statistics]]"
---
If a set of equations is represented in matrix form as
$y=Ax$, and we change the scale of all the equations (for example if we use micro-liters instead of liters), then the equations are still valid. But now the matrix $A$ has to change by a *scale factor*, let's say $α$. The new matrix $B$ will have components $B_{ij}=α A_{ij}$. This operation is called **multiplication by a scalar**. We write
$$α A = 
\begin{bmatrix}
α A_{11} & α A_{12} \\
α A_{21} & α A_{22} 
\end{bmatrix}
$$
In this context a *scalar* is any single number, real or complex.

Naturally, we can change the scale whenever we want, so the multiplication by a scalar is commutative:
$$α A = A α$$
