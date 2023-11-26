Random variables following a Normal distribution can take any real value. Normal distributions are continuous, and we can evaluate the probability of any interval using integrals. When $X$  is a normal random variable, we have
$$P(X<x_0) = \frac{1}{C}\int_{-\infty}^{x_0} \exp(-x^2/2) dx$$
where $C$ is a constant that we will find later.

Let's focus for a moment in the expression $\exp(-x^2/2)$. We can find its derivative using the chain rule, as
$$\frac{d \exp(-x^2/2)}{dx} = \frac{d \exp(y)}{dy} \frac{d y}{dx}$$
where $y=-x^2/2$. We will have
$$\frac{d \exp(-x^2/2)}{dx} = \exp(-x^2/2) \frac{d (-x^2/2)}{dx} = -x\exp(-x^2/2)$$
and its second derivative is
$$\frac{d (-x\exp(-x^2/2))}{dx} = -\exp(-x^2/2) \frac{d x}{dx} - x\frac{d \exp(-x^2/2)}{dx}= -\exp(-x^2/2) +x^2\exp(-x^2/2) = (x^2-1)\exp(-x^2/2)$$

These two results are not just exercises. Indeed, they allow us to evaluate the expected value and the variance. The expected value is
$$E(X) = \frac{1}{C}\int_{-\infty}^{\infty} x\exp(-x^2/2) dx$$ 
and we already know that the primitive of $x\exp(-x^2/2)$ is $-\exp(-x^2/2)$. Therefore
$$E(X) = \frac{-1}{C} \exp(-x^2/2)\Big\vert_{-\infty}^{\infty} = 0-0$$ 
$$E(X) = 0$$

Now the variance is, by definition,
$$V(X) = \frac{1}{C}\int_{-\infty}^{\infty} (x-E(X))^2 \exp(-x^2/2) dx$$ 

Since we know that $E(X)=0$, this expression simplifies to
$$V(X) = \frac{1}{C}\int_{-\infty}^{\infty} x^2 \exp(-x^2/2) dx$$ 
Now we know that
$$x^2\exp(-x^2/2) = \exp(-x^2/2) + \frac{d (-x\exp(-x^2/2))}{dx}$$
therefore
$$\begin{aligned}
V(X) &= \frac{1}{C}\int_{-\infty}^{\infty} \exp(-x^2/2) dx + \frac{1}{C}\int_{-\infty}^{\infty} \frac{d (-x\exp(-x^2/2))}{dx} dx\\
&= 1 - \frac{1}{C} x\exp(-x^2/2)\Big\vert_{-\infty}^{\infty}
\end{aligned}$$ 
Now, the function $x\exp(-x^2/2)$ is symmetric around the origin, with positive values for $x>0$ matched by negative values for $-x$. Moreover, 
$$x\exp(-x^2/2)\Big\vert_{-x_0}^{x_0}=0\qquad\text{ for all values of }x_0$$
and that is also valid when $x_0$ grows to infinity. Therefore
$$V(X)=1$$

This integral does not have a closed form, so there is no formula. Nevertheless, we can indeed evaluate
$$P(X<\infty) = \frac{1}{C}\int_{-\infty}^{\infty} \exp(-x^2/2) dx$$ 
The left side is 1, because it is the probability of a sure event. Indeed, it is always true that $X<\infty$.
Thus, we can find $C$ as
$$C = \int_{-\infty}^{\infty} \exp(-x^2/2) dx$$ 
and for this we use a [[special trick to evaluate C]].