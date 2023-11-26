---
author: Andrés Aravena
date: 19/04/2021
output: html_document
title: How many standard deviations?
---

We will take a sample of size `N` and evaluate from 1 to 5 standard deviations

```r
N <- 1e4
c <- seq(from=1, to=5, by=0.2)
```

First we test with a poisson distribution.

```r
x <- rpois(N, lambda=3)
n <- sapply(c, function(a) sum(abs(x-mean(x)) > a*sd(x))/N)
```

```r
ans <- data.frame(c, n=n*100, y=round(100/c^2,2), z=round(pnorm(c, lower.tail = FALSE)*100,2))
plot(n~c, ans)
lines(y~c, ans)
lines(z~c, ans, col="blue")
```

![plot of chunk unnamed-chunk-3](/assets/how-many-sd/unnamed-chunk-3-1.png)

```r
ans %>% gather("key", "value", -c) %>%
    ggplot(aes(x=c, y=value, color=key)) + 
    geom_point() + geom_line()
```

![plot of chunk unnamed-chunk-4](/assets/how-many-sd/unnamed-chunk-4-1.png)

```{=html}
<!-- TODO: How to make some series with points and others with lines? -->
```
```r
plot(n~c, ans, log="y")
```

    ## Warning in xy.coords(x, y, xlabel, ylabel, log): 3 y values <= 0 omitted from
    ## logarithmic plot

```r
lines(y~c, ans)
lines(z~c, ans, col="blue")
```

![plot of chunk unnamed-chunk-5](/assets/how-many-sd/unnamed-chunk-5-1.png)

```r
ans %>% gather("key", "value", -c) %>%
    filter(value>1e-2) %>% 
    ggplot(aes(x=c, y=value, color=key)) + 
    scale_y_log10() + geom_point() + geom_line()
```

![plot of chunk unnamed-chunk-6](/assets/how-many-sd/unnamed-chunk-6-1.png)

## Exponential

```r
x <- rexp(N, rate=3)
n <- sapply(c, function(a) sum(abs(x-mean(x)) > a*sd(x))/N)
```

```r
ans <- data.frame(c, n=n*100, y=round(100/c^2,2), z=round(pnorm(c, lower.tail = FALSE)*100,2))
ans
```

    ##      c     n      y     z
    ## 1  1.0 13.79 100.00 15.87
    ## 2  1.2 10.83  69.44 11.51
    ## 3  1.4  8.87  51.02  8.08
    ## 4  1.6  7.33  39.06  5.48
    ## 5  1.8  6.04  30.86  3.59
    ## 6  2.0  5.00  25.00  2.28
    ## 7  2.2  4.05  20.66  1.39
    ## 8  2.4  3.24  17.36  0.82
    ## 9  2.6  2.72  14.79  0.47
    ## 10 2.8  2.20  12.76  0.26
    ## 11 3.0  1.81  11.11  0.13
    ## 12 3.2  1.51   9.77  0.07
    ## 13 3.4  1.21   8.65  0.03
    ## 14 3.6  1.03   7.72  0.02
    ## 15 3.8  0.86   6.93  0.01
    ## 16 4.0  0.68   6.25  0.00
    ## 17 4.2  0.53   5.67  0.00
    ## 18 4.4  0.48   5.17  0.00
    ## 19 4.6  0.39   4.73  0.00
    ## 20 4.8  0.34   4.34  0.00
    ## 21 5.0  0.27   4.00  0.00

```r
plot(n~c, ans)
lines(y~c, ans)
lines(z~c, ans, col="blue")
```

![plot of chunk unnamed-chunk-9](/assets/how-many-sd/unnamed-chunk-9-1.png)

```r
plot(n~c, ans, log="y")
lines(y~c, ans)
lines(z~c, ans, col="blue")
```

![plot of chunk unnamed-chunk-10](/assets/how-many-sd/unnamed-chunk-10-1.png)

```r
data.frame(`Standard Deviations`=ans$c, `Empiric`=ans$n,
           `Normal`=ans$z, `Chebyshev`=ans$y) %>%
    gather("Model", "Probability", - Standard.Deviations) %>%
    filter(Probability >= 1e-3) %>% 
    ggplot(aes(x=Standard.Deviations, y=Probability, color=Model)) + 
    scale_y_log10() + geom_point() + geom_line()
```

![plot of chunk unnamed-chunk-11](/assets/how-many-sd/unnamed-chunk-11-1.png)

# Binomials

```r
N <- 100
dbinom(1:N, N, prob = c(0.5,0.5)) %>% barplot(names.arg=1:N)
```

![plot of chunk unnamed-chunk-12](/assets/how-many-sd/unnamed-chunk-12-1.png)
