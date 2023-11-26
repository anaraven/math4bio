---
category: Teaching
title: "Absolute Error and Median"
date: "2016-08-21 19:34"
---

To say that a number $\hat{y}$ is better than the rest, we need a way to measure its *goodness*. The criterium most used is to define an **error function** that measures *how much any number fails to represent the complete set of numbers*. For example we may consider the **absolute error**, which can be written as
$$AE(\beta)=\sum_i \vert y_i - \beta\vert,$$
where the vertical bars represent the *absolute value* function. It works like this: if the value of a variable $x$ is positive then $\vert x\vert=x$, but if $x$ is negative then $\vert x\vert=-x$. In other words
$$\vert x\vert = x[x\geq 0] - x[x<0]$$

Notice that technically this function depends also on the set $\{y_i\}$. We omit this part to simplify the notation. Now we want to minimize this function to find the "best" $\hat{y}$.

## Finding the best one
The absolute error is not a continuous function, so we cannot use derivatives to find the minimum. Instead we can do as follows. Let's assume that the numbers $y_i$ are in increasing order, that is, $i<j\Rightarrow y_i\leq y_j$. If this is not the case we can always sort them before.

---

If $\beta$ is very small and is less than all the numbers in the set, then all the values inside the absolute value are positive, thus
$$AE(\beta)=\sum (y_i-\beta)=\sum y_i - n \beta$$ if $\beta<y_1$.

In this case the absolute error is reduced when $\beta$ *increases*. A similar analysis shows that, if $\beta$ is greater than all numbers in the set, then
$$AE(\beta)=\sum (\beta-y_i)=n \beta - \sum y_i$$ if $\beta>y_n$.

Now to reduce the absolute error we have to *reduce* $\beta$.

---

If the value $\beta$ is between $y_i$ and $y_{i+1}$ then we can write

$$AE(\beta)=\sum_{y_i>\beta} (y_i-\beta)+\sum_{y_i<\beta} (\beta-y_i).$$

$$AE(\beta)=\sum_i [y_i>\beta] (y_i-\beta)+[y_i<\beta] (\beta-y_i)$$

$$AE(\beta)=\sum_i [y_i>\beta] y_i- \sum_i [y_i>\beta] \beta +\sum_i [y_i<\beta] \beta - \sum_i [y_i<\beta]y_i$$

---
$$AE(\beta)=\sum_i (y_i-\beta)([y_i>\beta] -[y_i<\beta]).$$

$$AE(\beta)=\sum_i y_i ([y_i>\beta] -[y_i<\beta]) -\sum_i \beta([y_i>\beta] -[y_i<\beta]).$$
