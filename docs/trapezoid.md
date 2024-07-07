# Trapezoid method for numeric integration

We want to calculate the area under the curve $f(x)$ between $a$ and $b$, that is
$$\int_a^b$ f(x) dx$$

This area can be, in a first view, approximated by
$$\frac{f(a)+f(b)}{2}$$
that is, by the average height of the two extremes.
To increase the precision, we can divide the interval $[a,b]$ in $n$ parts, defined by $(n+1)$ points. For instance, we can make
$$x_i = a+ i\cdot h\text{ where }h=\frac{b-a}{n}$$
for $i$ ranging from $0$ to $n$. In this case $x_0=a$ and $x_n=b$.

Each interval $i$ will be a small trapezoid, whose area is
$$\text{Area}_i = \frac{f(x_i)+f(x_{i-1})}{2}$$
and the total area will be
$$\int_a^b$ f(x) dx \approx \sum_{i=1}^n\frac{f(x_i)+f(x_{i-1})}{2}$$
Now we can notice that each $f(x_i)$ appears twice, except for the first and the last. Thus, we can write
$$\int_a^b$ f(x) dx \approx \sum_{i=0}^n f(x_i) - \frac{f(x_0)+f(x_n)}{2}$$
$$\int_a^b$ f(x) dx \approx \sum_{i=1}^{n-1} f(x_i) + \frac{f(x_0)+f(x_n)}{2}$$

If we increase $n$ (and reduce $h$), the sum gets closer and closer to the integral.

## Application

Let $f(x) = \ln(x), h=1$ and $a=1$. Then $b=n+1$ and
$$\int_1^{n+1}$ \ln(x) dx \approx \sum_{i=0}^{n} \ln(i+1) - \frac{\ln(1)+\ln(n+1)}{2}$$

$$\int_1^{n+1}$ \ln(x) dx \approx \sum_{i=1}^{n+1} \ln(i) - \frac{\ln(1)+\ln(n+1)}{2}$$
$$\int_1^{n}$ \ln(x) dx \approx \sum_{i=1}^{n} \ln(i) - \frac{\ln(1)+\ln(n)}{2}$$
$$\int_1^{n}$ \ln(x) dx \approx \ln(n!) - \frac{\ln(1)+\ln(n)}{2}$$
