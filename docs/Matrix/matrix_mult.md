---
title: "Matrix Multiplication"
date: "2017-10-18 13:45"
category: Matrices
mathjax: true
link:
  - "[[Matrix/vectors]]"
  - "[[Matrix/matrix_sum]]"
  - "[[Matrix/descriptive-statistics]]"
---

# Notation

We are going to use capital letters to represent matrices, such as $A, B$ and $C.$
The components of these matrices are represented with upper case letters and two subindices for row and column, like $A_{ij}$ and $B_{12}.$ Please notice that in $B_{12}$ the sub-index has two parts: row 1 and column 2. In case of ambiguity we can use commas and write $B_{1,2}.$

The **dimensions** of a matrix are the number of its rows and the number of columns. For a matrix of 3 rows and 4 columns we write the dimension as $3× 4.$

We use lower case letters to represent vectors, such as $x$ and $y.$ The components of the vector are written with the same letter and a sub-index, such as $x_i$ and $y_n.$

Finally, to represent single numbers we use greek letters, such as $α, β, λ$ and so on. These single numbers are called **scalars**.
The components of vectors and matrices are also _scalars_ but we represent them as described earlier.

Notice that _vectors_ are matrices with only one column, and _scalars_ can be seen as matrices with one row and one column.

# Properties of matrix multiplication

In general we have

- The components of the multiplication is not the multiplication of the components: $C_{ij}≠A_{ij}B_{ij}$
- Matrix multiplication **is not** commutative: $AB≠BA.$
- Matrix multiplication is associative, so we can choose where to put the parenthesis: $(AB)C=A(BC)$

Matrix multiplication represents actions performed over objects. In general the order of actions is relevant and cannot be changed. For example we have to put our socks before putting our shoes. Therefore, to be realistic, matrix multiplication cannot be commutative.

# Identity Matrix

The following square matrix, called **identity**, plays an important role

$$
I=\begin{bmatrix}
1 & 0 & ⋯ & 0 \\
0 & 1 & ⋯ & 0 \\
⋮ & ⋮ & ⋱ & ⋮ \\
0 & 0 & ⋯ & 1
\end{bmatrix}
$$

since, for any square matrix $A$, we have
$$AI=IA=A$$
That is, the matrix $I$ is the neutral for the matrix multiplication. It plays the same role that the number 1 plays in the multiplication of numbers.

Notice that, even although in general $AB≠BA$, the multiplication with the identity is commutative.

# Inverse matrix

If we have a neutral element we can try to solve the question

> "If we know $A$, can we find $B$ such that $AB=I$?

This is not a crazy question: with regular numbers we can answer and say

> If $a$ is not 0 then we can find $b=a^{-1}$ such that $ab=1$

We can do the same with matrices, at least in some cases. Given a square matrix $A$, its **inverse** is a matrix $A^{-1}$ such that
$$AA^{-1}=A^{-1}A=I$$

Naturally, $A$ and $A^{-1}$ have the same dimensions.

Not all matrices have inverses, even for matrices different from zero. For example the matrix

$$
\begin{bmatrix}
0 & 1 \\
0 & 2
\end{bmatrix}
$$

has no inverse. We will not discuss here how to find the inverse of a matrix. There are several tools for doing that, including Microsoft Excel. Here we only care about the logical consequences of the existence of $A^{-1}.$ In particular, if $A$ and $B$ have the same dimensions and are invertible, then
$$(AB)^{-1}=B^{-1}A^{-1}$$
Notice that the order of the multiplication is reversed. If we remember that matrix multiplication represent actions, then undoing a series of actions has to be done in the reverse order. We have to take out shoes before taking out socks.

We should also notice that $(A^{-1})^{-1}=A.$

# Matrix Transposition

Another operation that will be useful is the **transposition** of matrices. Given a matrix $A$ we can have the _transposed_ matrix $A^T$ by writing the rows as columns and vice-versa. For example if

$$
A =
\begin{bmatrix}
A_{11} & A_{12}\\
A_{21} & A_{22}
\end{bmatrix}
$$

then

$$
A^T =
\begin{bmatrix}
A_{11} & A_{21}\\
A_{12} & A_{22}
\end{bmatrix}
$$

In general we write
$$(A^T)_{ij}=A_{ji}$$
In a way similar to matrix inversion, we have $(AB)^T=B^TA^T$ and $(A^T)^T=A.$

A difference with matrix inversion is that we can always transpose any matrix, even non-square ones. If A has dimension $m×n$ then $A^T$ has dimension $n×m.$
