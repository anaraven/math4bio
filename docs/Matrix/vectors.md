---
title: "Vectors"
date: "2019-08-15 18:57"
category: Matrices
featured: false
tags: [matrix, book, teaching]
links:
  - "[[Matrix/01-optics-intro.Rmd]]"
  - "[[Matrix/02-vectors.Rmd]]"
  - "https://courses.engr.illinois.edu/ece498rc3/fa2016/material/linearAlgebra_4pgs.pdf"
  - "[[Matrix/matrix_drafts/2021/Matrix/matrix_sum]]"
  - "[[Matrix/descriptive-statistics]]"
---

As we said earlier, matrices are a convenient way to write a set of equations

$$
\begin{align}
y_1 & = a_{1,1}\,x_1 + a_{1,2}\,x_2\\
y_2 & = a_{2,1}\,x_1 + a_{2,2}\,x_2
\end{align}
$$

in a simpler way, like

$$
\begin{pmatrix}
y_1 \\ y_2
\end{pmatrix}=
\begin{pmatrix}
a_{1,1} & a_{1,2}\\
a_{2,1} & a_{2,2}
\end{pmatrix}
\begin{pmatrix}
x_1 \\ x_2
\end{pmatrix}
$$

which can also be written in short as
$$𝐲 = 𝐀\,𝐱$$

The set of all matrices with real numbers in $m$ rows and $n$ columns is called $ℝ^{m×n}.$ We write them with bold capital letters, such as $𝐀, 𝐁, 𝐂, 𝐗,$ etc.

The components of the matrix $𝐀$ are single numbers $a_{ij},$ where $i$ indicates the row, and $j$ indicates the column.

Vectors are a particular case of matrices, with only one column. We represent them with bold lower-case letters, such as $𝐱$ or $𝐲.$ The set of all vectors with $n$ components is called $ℝ^n.$

The components of the vector $𝐱$ are single numbers $x_{i},$ where $i$ indicates the row. There is only one column.

We always use italic or greek letters for single numbers. For example, $α, β, λ, a_{ij}, x_i,$ etc.

# Things to do with matrices

We can do many things with matrices, and some of them are useful. Let's see some things we can do.

Something easy and useful is to "turn the matrix sideways". This is called _transposition_. If $𝐀∈ ℝ^{m× n},$ then we can build a new matrix $𝐀ᵀ∈ ℝ^{n× m}$ such that each component of $𝐀ᵀ$ is defined by
$$(Aᵀ)_{ij} = a_{ji}$$
This is called $𝐀$ _transposed_ and is written $𝐀ᵀ$ instead of $𝐁.$

One practical application of transposition is to write column vectors in the text. Now we can write $𝐛=(x_1,…,x_n)ᵀ.$

In general $𝐀≠𝐀ᵀ.$ If $𝐀$ is square, then sometimes $𝐀=𝐀ᵀ,$ in which case we say that $𝐀$ is _symmetrical_.

## Operation on matrices

First, let's compare two matrices in $ℝ^{2× 2}.$

$$
𝐀=\begin{pmatrix}
1 & 4\\
9 & 16
\end{pmatrix}
\qquad
𝐁=\begin{pmatrix}
2 & 8\\
18 & 32
\end{pmatrix}
$$

We can see that each component of $𝐁$ is two times the same component of $𝐀.$ In other words, $b_{ij}=2\,a_{ij}$ for all $i$ and all $j.$
This can be written as
$$𝐁 = 2\,𝐀$$

In general, we can take any matrix $𝐀$ in $ℝ^{m×n}$, multiply each component by the same constant $α∈ℝ$, and we get a new matrix $𝐁$ in $ℝ^{m×n}.$ Thus the expression
$$𝐁 = α\,𝐀$$
means that $b_{ij}=α\,a_{ij}$ for all $i$ and all $j.$ Each component changes its _scale_, like when we change distance units from meters to inches.

The value $α$ is called a _scalar_, and the operation $α𝐀$ is called _scalar multiplication_.

Now let's take a look at the following matrices

$$
𝐂=\begin{pmatrix}
1 & 2\\
3 & 4
\end{pmatrix}
\qquad
𝐃=\begin{pmatrix}
2 & 6\\
12 & 20
\end{pmatrix}
$$

::: marginnote
We could define a "matrix multiplication" in a similar way, but this is not as useful as the standard matrix multiplication.
:::

If we look carefully, we can see that $d_{ij}=a_{ij}+b_{ij}$ for all $i$ and all $j.$ It is convenient to write this as
$$𝐃 = 𝐀 + 𝐂$$
which we call _sum of matrices_.

We can combine sum of matrices with scalar multiplication. If we have several matrices $𝐀, 𝐁, 𝐂, 𝐃∈ ℝ^{m×n},$ we can combine them like this
$$α𝐀 + β𝐁 + γ𝐂 + δ𝐃$$
and the result will always be a new matrix in $ℝ^{m× n}.$ This is called a _linear combination_.

In summary, a _linear combination_ can be a regular sum of matrices, or a scalar multiplication, or both at the same time, and the result will always be a matrix. The only condition is that all the matrices must have the same size.

## Matrix–vector multiplication

Let's take a new perspective of the matrix $𝐗$. Each column of $𝐗$ can be seen as a 1–column vector:

$$
𝐗=\begin{pmatrix}
x_{1,1} & ⋯ & x_{1,n}\\
⋮       & ⋱ & ⋮      \\
x_{m,1} & ⋯ & x_{m,n}\\
\end{pmatrix}
$$

so we can write $𝐗= (𝐱_{(1)} : … : 𝐱_{(n)}).$ Each $𝐱_{(j)}$ is a vector.

Now let's look again at the basic equation that shows how $𝐗$ transforms the vector $𝐛$ into the vector $𝐲$
$$𝐲 = 𝐗 𝐛$$
Since vectors are 1-column matrices, the same rule for matrix multiplication applies. The formula can be written as
$$y_i=\sum_j b_j x_{ij}$$
Now we can write this formula using vectors, as
$$𝐲 = \sum_j b_j 𝐱_{(j)}$$

In other words, the matrix–vector multiplication can be seen as a linear combination of the columns of $𝐗,$ where the scalars are the components of the vector $𝐛.$

## From _y_ to _b_

Lets assume that we have a vector $𝐲$ and a matrix $𝐗.$ Can we find a vector $𝐛$ such that $𝐲 = 𝐗 𝐛?$

For example, many experiments measure a series of values $y_i$ (let's say, gene expression) that are related to other experimental values $x_{ij}$ (let's say, growth conditions). A typical model for this relation would be
$$y_i = b_1 x_{i,1} + b_2 x_{i,2} + ⋯ + b_n x_{n,1}$$
for $i=1, …, m.$ This corresponds to the said matrix problem.

The answer will be _"yes"_ if there is a linear combination of the columns of $𝐗$ that corresponds to $y.$

It will be useful to consider the set of all possible linear combinations of a set of vectors. If we have a set of vectors $𝐱_{(1)}, …, 𝐱_{(n)},$ we can define the set of all linear combinations of them as

$$
\text{span}(\{𝐱_{(1)}, …, 𝐱_{(n)}\})=
\left\{\sum_k α_k 𝐱_{(k)}: α_1, …, α_n ∈ ℝ\right\}
$$

When the vectors are the column of a matrix, we can also give a name
$$\text{colspan}(𝐗)= \text{span}(\{𝐱_{(1)}, …, 𝐱_{(n)}\})$$
These two sets are essentially the same, but we give two names depending if we work with a matrix or any other set of vectors.

Going back to the original question, we will be able to find $𝐛$ if and only if
$$𝐲∈\text{colspan}(𝐗)$$

This is sometimes true, sometimes no, as we will see later in detail. If this is true, then we will be able to find $𝐛.$ Unfortunately, in most cases this is not true, so we will consider this case.

# Things we can do with vectors

Since vectors are just a particular case of matrices, everything we can do with matrices, we can do with vectors. But there is more. We can do things with vectors that we cannot do with matrices.

## Dot product

The formula of each equation has the same shape: $y=a_1 x_1 + a_2 x_2.$ This is a way to combine two vectors that will be very useful later. It is called _dot product_.

If $𝐚=(a_1,a_2)$ and $𝐛=(b_1,b_2)$ then their dot product is the number
$$𝐚 ⋅ 𝐛 := a_1 b_1 + a_2 b_2$$
and if we are working on higher dimensions, then
$$𝐚⋅𝐛 := \sum_i a_i b_i$$

It is good to remember that the dot product can be written using matrix multiplication
$$𝐚⋅𝐛 = 𝐚ᵀ𝐛= 𝐛ᵀ𝐚$$

# Geometric interpretation of vectors

## Length of a vector

A vector $𝐚=(a_1,a_2)$ corresponds to a point in the plane. The distance between the point $(0,0)$ and $(a_1,a_2)$ is called the _length_ of the vector. We write it as $\Vert 𝐚 \Vert.$

![](../../../images/sirince/img1.svg)

Since ancient times it is known that $a^2+b^2=c^2.$ The sum of the squares is the square of the diagonal.

Using Pythagoras' theorem we can easily see that the length of is

$\Vert 𝐚\Vert=\sqrt{a_1^2+a_2^2}$

Using the definition of dot product we have $𝐚⋅𝐚=a_1^2+a_2^2$ so we have also $\Vert 𝐚\Vert= \sqrt{𝐚⋅𝐚},$ which can also be written as
$$\Vert 𝐚\Vert^2=𝐚⋅𝐚=𝐚ᵀ 𝐚.$$

## Rotating by 90 degrees

If the vector $𝐱$ is $(a,0)$ then it is located on the horizontal axis. If we want to rotate it by 90 degrees, we will get the vector $𝐱'=(0,a).$ Rotating it again we get $𝐱''=(-a,0).$ Easy.

If the vector $𝐲$ is not in the plane, and instead is $(a,b),$ then we can write it as $𝐲= (a,0) + (0,b)$ and each part can rotate separately. The part $(a,0)$ becomes $(0,a),$ and $(0,b)$ becomes $(-b,0).$
Therefore $𝐲'=(-b,a).$ The same reasoning shows that rotating again by 90 degrees will result in $𝐲''=(-a,-b).$

We can draw some conclusions from this exercise. First, changing the signs of each component of a vector will give us a new vector of the same size, but pointing in the opposite direction. This should not be very surprising.

## Perpendicular vectors have dot product zero

The second conclusion is that the dot product of two perpendicular vectors is zero. Indeed we can see that
$$𝐱⋅𝐱'=(a,0)⋅ (0,a)= 0a + 0a = 0$$
and
$$𝐲⋅𝐲'=(a, b)⋅ (-b, a)= ab - ab = 0.$$

This result is not only limited to vectors of the same length.
If the vector $𝐳$ is parallel to $𝐲$ but with different length, then $𝐳 = α 𝐲$ for some number $α.$ Then $𝐳$ should be also orthogonal to $𝐲.$ Indeed, we have
$$𝐳⋅𝐲'= (α𝐲)⋅𝐲'= α(𝐲⋅ 𝐲') = 0.$$

This motivates the following characterization: two vectors $𝐮$ and $𝐯$ are said to be _orthogonal_ if and only if their dot product is 0. The word _orthogonal_ literally means right angle, and is a fancy way of saying _perpendicular_.

Notice that this implies that the vector $𝟎$ is always orthogonal to any other vector.

## Orthogonal projection

## Good values and right angles {.no-gap}

![](../../../images/sirince/img2.svg)

- The "smallest" $𝐞$ is the one perpendicular to the _plane_ defined by $𝟏$ and $𝐱$
- In particular
  - The best $𝐞$ is perpendicular to $𝟏$
  - The best $𝐞$ is perpendicular to $𝐱$
