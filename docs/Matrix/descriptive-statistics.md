---
title: "Descriptive Statistics"
category: Matrix
date: "2016-08-13 21:36"
mathjax: true
TODO: finish
links:
 - "[[_drafts/2021/Matrix/vectors]]"
 - "[[_drafts/2021/Matrix/matrix_sum]]"
---


The very beginning of statistics is to describe a set of observations. It can be so simple as *counting the number of cases*.

All the basic graphics, such as bar plots, scatter plots, pie graphics and their combinations are also a way to do *descriptive statistics*.

If the observations are numeric, we may ask *"How can we represent this set of numbers with a single number?"*.

Let's say that we have a vector $𝐲=(y_1,\ldots, y_n)$ with $n$ observations, each one with value $y_i$ for $i$ taking values between 1 and $n$. We want to represent this set by a single number $\hat{y}$. We can choose any number to represent it, even numbers that do not belong to this set. For example we can choose $\hat{y}$ to be the smallest value $\min(\{y_i\})$ or the greatest value $\max(\{y_i\})$.

## Which one is better?
To say that a number $\hat{y}$ is better than the rest, we need a way to measure its *goodness*. The criterium most used is to define an **error function** that measures *how much any number fails to represent the complete set of numbers*. For example we may consider the **absolute error**, which can be written as
$$AE(β)=\sum_i \vert y_i - β\vert,$$
where the vertical bars represent the *absolute value* function.


## It is easier with derivatives
Since all this evaluation is complicated, people traditionally have preferred a different error index. Instead of absolute values, the most common approach uses squared values. They are always positive and have a single minimum that can be found using derivatives. We are talking about the *square error*, which is defined as
$$SE(β; 𝐲)=\sum_i (y_i-β)^2.$$

To find the minimal value we derivate $SE$ with respect to $β$ and find the value of $β$ that makes the derivative equal to zero.
First, we rewrite the expression for the squared error $SE(β; 𝐲)$ as
$$SE(β; 𝐲)= \sum_i y_i^2 - 2β\sum_i y_i + n β^2.$$

Then we can easily calculate the derivative of $SE()$ with respect to $β$, which is
$$\frac{d SE(β; 𝐲)}{dβ}= -2\sum_i y_i + 2 n β.$$

Making this last formula equal to zero, we have
$$-2\sum_i y_i + 2 n β=0$$
and, solving for $β,$ we found that the best value to represent $𝐲$ is
$$β^* = \sum_i y_i / n,$$

that is, the _mean value_, usually called _average_. 

We usually write the average of $𝐲$ as $\bar{𝐲}.$ Be careful here: the value $\bar{𝐲}$ is a single number, while $𝐲$ is a vector.

## How good is the best one
Now that we have found that $\bar{𝐲}$ is the best value to represent $𝐲$, we want to know *how good* is this representation. In other words, we want to evaluate the square error when $β=\bar{𝐲}$, that is
$$SE(\bar{𝐲}; 𝐲)= \sum_i y_i^2 - 2\bar{𝐲}\sum_i y_i + n \bar{𝐲}^2.$$
Now we can write $\bar{𝐲}$ as $\sum_i y_i / n$ and we get
$$SE(\bar{𝐲}; 𝐲)= \sum_i y_i^2 - \frac{2}{n}\left(\sum_i y_i\right)\left(\sum_i y_i \right) + n \left(\frac{1}{n}\sum_i y_i\right)^2$$
which, after simplification, becomes
$$SE(\bar{𝐲}; 𝐲)= \sum_i y_i^2 - \frac{1}{n}\left(\sum_i y_i\right)^2$$

## Minimizing MSE
The error is
$$\mathrm{MSE}(β, 𝐲)=\frac{1}{n}\sum_i (y_i-β)^2$$

To find the minimal value we can take the derivative of $MSE$ with respect to $β$

$$\frac{d}{d β} \mathrm{MSE}(β, 𝐲)= \frac{2}{n}\sum_i (y_i - \beta)$$

> The minimal values of functions are located where the derivative is zero

## Minimizing MSE
Now we find the value of $β$ that makes the derivative equal to zero.

$$\frac{d}{d β} \mathrm{MSE}(\beta, 𝐲)= \frac{2}{n}\sum_i (y_i - \beta)$$

Making this last formula equal to zero and solving for $β$ we found that the best one is

$$\beta^* = \frac{1}{n} \sum_i y_i = \bar{𝐲}$$

## Is this a good representative?
If $\bar{𝐲}$ is the best representative, the error is

$$\mathrm{MSE}(\bar{𝐲}, 𝐲)=\frac{1}{n}\sum_i (y_i-\bar{𝐲})^2$$

This is called the *variance* of $𝐲$. We write then

$$\mathrm{var}(𝐲)=\frac{1}{n}\sum_i (y_i-\bar{𝐲})^2$$


## Linear model
Now we have a second vector $𝐱$

The new model is
$${y}_i = \beta_0 + \beta_1{x}_i + {e}_i$$
for $i=1,\ldots,n$. All these equations can be written in one as
$$𝐲 = β_0 𝟏 + β_1𝐱 + 𝐞$$

## Mean square error
Now we want to minimize
$$\mathrm{MSE}\left(
\begin{bmatrix}β_0\\β_1\end{bmatrix}, 𝐲, 𝐱\right)
 = \frac{1}{n}\sum_i (y_i-β_0 - β_1{x}_i)^2$$
which can also be written as
$$\frac{1}{n}\sum_i e_i^2$$
Indeed, we are minimizing the square of errors (like before)

## Geometrical interpretation {.fl-r}
![](../../../images/sirince/img1.svg)

Since ancient times it is known that $a^2+b^2=c^2$

+ The sum of the squares is the square of the diagonal

Using this idea we see that
$$\sum_i e_i^2 = \mathrm{length}(𝐞)^2$$

So we want to minimize the lenght of vector $𝐞$.

## Minimizing $𝐞$rrors
+ The vectors $\mbfy$, $\mbfx$ and $\mbfe$ have dimension $n$
+ But the vectors $\beta_0\mbfone + \beta_1\mbfx$ have only 2 degrees of freedom
+ All these vectors lie in a *plane* of dimension 2

We want to find the "good" $β_0$ and $β_1$ that minimize  $\Vert 𝐞\Vert$

## Good values and right angles
![](../../../images/sirince/img2.svg)

+ The "smallest" $mbfe$ is the one perpendicular to the *plane* defined by $mbfone$ and $mbfx$
+ In particular
    + The best $mbfe$ is perpendicular to $mbfone$
    + The best $mbfe$ is perpendicular to $mbfx$

## Dot product|linear algebra to the rescue
Ancient knowledge again:

The vector $𝐞$ is perpendicular to $𝐱$ if and only if
$$𝐱^T𝐞=0$$

In the same way, $𝐞$ is perpendicular to $𝟏$ if
$$𝟏^T𝐞=0$$

## Seeing the big picture
We can see the big picture if we use matrices:
$$\begin{pmatrix}
1 & x_1\\
⋮ & ⋮ \\
1 & x_n
\end{pmatrix}= \begin{pmatrix}𝟏 & 𝐱\end{pmatrix}=𝐀$$
$$\begin{pmatrix}β_0\\ β_1\end{pmatrix}=𝐛$$
then the smallest $𝐞$ obeys
$$𝐀^T 𝐞 = 0$$

## Finding beta
The model was
$$𝐲 = 𝐀 𝐛 + 𝐞$$
so the error is
$$𝐞 = 𝐲 - 𝐀 𝐛$$
Multiplying by $𝐀^T$ we have
$$𝐀^T 𝐞 = 𝐀^T 𝐲 - 𝐀^T 𝐀 𝐛$$

## Finding beta
To have $𝐀^T 𝐞 = 0$ we need to make
$$𝐀^T 𝐲 = 𝐀^T 𝐀 𝐛^*$$
We write $𝐛^*$ because these are the "good"
$β_0^*$ and$β_1^*$

Now, if $𝐀^T 𝐀$ is "well behaved",
$$𝐛^* = (𝐀^T 𝐀)^{-1}𝐀^T 𝐲$$

----

## Mean Square Error
Replacing $𝐛^* = (𝐀^T 𝐀)^{-1}𝐀^T 𝐲$ in the formula of error
$$𝐞 = 𝐲 - 𝐀 𝐛$$
we have
$$𝐞^* = (𝐈 - 𝐀(𝐀^T 𝐀)^{-1}𝐀^T )𝐲$$
(no surprise, simple substitution)

What happens to the mean square error $\mathrm{MSE}(𝐛^*,𝐲, 𝐱)=\frac{1}{n}\sum_i e_i^2$?

## Mean Square Error

$$\begin{aligned}
\mathrm{MSE}(𝐛^*,𝐲, 𝐱)
& =\frac{1}{n}\sum_i e_i^2=\frac{1}{n}𝐞^T𝐞\\
& =\frac{1}{n}𝐲^T (𝐈-𝐀(𝐀^T𝐀)^{-1}𝐀^T)^T(𝐈-𝐀(𝐀^T𝐀)^{-1}𝐀^T) 𝐲\\
& =\frac{1}{n}𝐲^T (𝐈 - 𝐀(𝐀^T 𝐀)^{-1}𝐀^T) 𝐲
\end{aligned}$$
(do the algebra and see that many things vanish)

So the *Mean Square Error* depends on $𝐲$ and $𝐀$, which depends on $𝐱$. Choose them carefully

----

## Square Error
Replacing $𝐛^* = (𝐀^T 𝐀)^{-1}𝐀^T 𝐲$ in the formula of error
$$𝐞 = 𝐲 - 𝐀 𝐛$$
we have
$$𝐞^* = (𝐈 - 𝐀(𝐀^T 𝐀)^{-1}𝐀^T )𝐲$$
(no surprise, simple substitution)

What happens to the mean square error $\mathrm{SE}(𝐛^*;𝐲, 𝐱)=\sum_i e_i^2$?

## Square Error

$$\begin{aligned}
\mathrm{SE}(𝐛^*, 𝐲, 𝐱)
& =\sum_i e_i^2=𝐞^T𝐞\\
& =𝐲^T (𝐈 - 𝐀(𝐀^T 𝐀)^{-1}𝐀^T)^T(𝐈 - 𝐀(𝐀^T 𝐀)^{-1}𝐀^T) 𝐲\\
& =𝐲^T (𝐈 - 𝐀(𝐀^T 𝐀)^{-1}𝐀^T) 𝐲
\end{aligned}$$
(do the algebra and see that many things vanish)

So the *Mean Square Error* depends on $𝐲$ and $𝐀$, which depends on $𝐱$. Choose them carefully.

----

## Generalization
All the argument is valid if $𝐀$ has any number of columns

+ that is, any number of independent variables
+ at least 1
+ at most $n$

## The case of one variable
(result should be the mean)

If there is no independent variable (i.e. there is no $x$), we have $𝐀 =𝟏,$ then
$$\begin{aligned}
𝐛^* & = (𝐀^T 𝐀)^{-1}𝐀^T 𝐲\\
𝐛^* & = (𝟏^T 𝟏)^{-1}𝟏^T 𝐲\\
𝐛^* & = \frac{1}{n}\sum{y}_i
\end{aligned}$$
just as before.

## One variable case
mean square error
$$\begin{aligned}
\frac{1}{n}𝐞^T𝐞 
& = \frac{1}{n}𝐲^T (𝐈 - 𝐀(𝐀^T 𝐀)^{-1}𝐀^T) 𝐲\\
& = \frac{1}{n}𝐲^T (𝐈 - 𝟏(𝟏^T 𝟏)^{-1}𝟏^T) 𝐲\\
& = \frac{1}{n}𝐲^T 𝐲 - \frac{1}{n}𝐲^T𝟏(n)^{-1}𝟏^T 𝐲\\
& =\frac{1}{n}\sum{y}_i^2 - (\frac{1}{n}\sum{y}_i)^2
\end{aligned}$$
just as before.

## One variable case: square error
$$\begin{aligned}
𝐞^T𝐞 & = 𝐲^T (𝐈 - 𝐀(𝐀^T 𝐀)^{-1}𝐀^T) 𝐲\\
    & = 𝐲^T (𝐈 - 𝟏(𝟏^T 𝟏)^{-1}𝟏^T) 𝐲\\
    & = 𝐲^T 𝐲 - \frac{1}{n}𝐲^T𝟏(n)^{-1}𝟏^T 𝐲\\
    & = \sum{y}_i^2 - (\frac{1}{n}\sum{y}_i)^2
\end{aligned}$$
just as before

## "Good behavior"
The only condition to have a solution is
$$𝐀^T 𝐀$$ has an inverse. This is equivalent to

> All columns of $𝐀$ are *linearly independent*

## Linear independence

## Designing experiments
