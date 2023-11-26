---
title: "Significance of Pearson's Correlation"  
author: "Andres Aravena"  
date: "October 21, 2015"  
output:  
  rmarkdown::tufte_handout:  
    fig_width: 4  
    fig_height: 4  
---

All human cells in our body have the same DNA sequence in their chromosomes. Nevertheless we observe that they develop to acquire different shapes and roles. The same basic *program* encoded in the genome results in different phenotypes when some genes are expressed in abundance while others are repressed. This process, called *transcriptional regulation*, can be observed through the coordinated expression,  or co-expression, of genes.

```{r setglobal, cache = FALSE, include = TRUE, echo=FALSE}
# general parameters.
library(knitr)
# current folder where data is stored
opts_knit$set(root.dir=normalizePath("~/Src/RLombarde/Input/Raw/m3d.mssm.edu/E_coli_v4_Build_6"))
```
In order to understand the co-expression of genes in a cell, for example in *E. coli*, we need to compare the behavior of genes through several experimental conditions and find which ones are similar. The process of finding these groups is called *clustering*.

We can use Pearson's correlation to define a dissimilarity index. This is indeed one of the most used indices, defined as
$$d(i,j) = 1-cor(e_i, e_j)$$
where $e_i$ and $e_j$ are the expression profiles of genes $i$ and $j$, respectively; and $cor()$ is the correlation function. Therefore, in order to understand this dissimilarity index, we need to understand Pearson's correlation.

Let's start by loading the expression values with the command
```{r load, cache=TRUE}
e <- read.delim("E_coli_v4_Build_6_chips907probes4297.tab", head=T, row.names=1)
```
The resulting *data frame* has `r nrow(e)` rows, one for each gene, and `r ncol(e)` columns, one for each experimental condition. In this format the genes are observations and the experiments are the variables.
The analysis is more easy if we *transpose* the data frame into a *matrix* where the genes are the variables and the experiments are observations. We can then determine the distribution of the correlations.

```{r transpose, cache=TRUE}
e <- t(e)
correl <- cor(e)
```
The matrix is symetrical, so we only need to consider its upper triangle.

```{r histogram, cache=TRUE}
correl <- as.vector(correl[upper.tri(correl)])
hist(correl)
summary(correl)
```

We observe that correlations have a bell-shaped symmetric distribution centered near zero.

The natural question is **When the correlation statistically different from zero?**

## A bad approach

We may assume that correlations follow a normal distribution, so we can use a standard *confidence interval* approach.
The standard deviation is
```{r stdev, cache=TRUE}
sd(correl)
```
so we could assume that three times that value over the mean ($\mu+3\sigma$)
would give us a 99% confidence interval for the null hypothesis.
That value is `r mean(correl)+3*sd(correl)`.

But we would be wrong for at least two reasons:

+ We do not know if the distribution is really a *Normal* or *Gaussian* one
+ It is a mix of all the correlations, significant or not

Let's try another approach, without such kind of hypothesis

## Empirical evaluation of *p*-values
Let's first consider any two genes, for example 1 and 2. We can see both profiles here
```{r bothprofiles}
plot(e[,1], type="l", ylab="Expression level")
lines(e[,2], col="blue")
```

The mean values are clearly different, but maybe the *behavior* is similar. Let's see a scatter-plot of one versus the other.
```{r scatter}
plot(e[,1], e[,2])
```

It *seems* random. The Pearson's correlation is calculated as
```{r corr}
real.value <- cor(e[,1], e[,2])
real.value
```
Can we get this correlation value just by chance? In other words, what is the probability of getting the value `r real.value` if there is no real correlation?

We need to describe how would be the behavior of the correlation index when there is no real correlation.
In classical statistics this is called *null hypothesis*.
Without making any further assumption of the distribution of the expression values, we can *simulate* the null hypothesis by *shuffling* one of the expression profiles and calculating the correlation of the resulting fake profile

```{r shufflesample, cache=TRUE}
cor(e[,1], sample(e[,2]))
cor(e[,1], sample(e[,2]))
cor(e[,1], sample(e[,2]))
```
Naturally, each time we get a different value. If we shuffle many times, we can see the behavior of the null hypothesis
Let's simulate 100 times using the function `replicate`.
```{r replicate, cache=TRUE}
N <- 100
simulated.values <- replicate(100, cor(e[,1], sample(e[,2])))
hist(simulated.values)
```

Now we see that the simulated data is never greater than `r max(simulated.values)`, 
while the real correlation is `r real.value`. That is good.
It seems that our value can hardly be result of pure random.
We can evaluate the probability (under the null hypothesis) of producing the real value by counting how many of the *random* values are greater than the real one.

If a big percentage of *random* values are greater than the real one, then the real value may as well be produced by random. On the contrary, if only a few or none of the random values are over the real one, then we cand reject the null hypothesis and discard the idea that the real correlation is a product of a random process. At least we know that this is very unlikely.

Let's count how many random values are over the real one. We can cont them by comparing the real value to all the simulated ones and determining its *rank*. The smallest value has rank 1, the biggest one is ranked 101. Thus, the ranking of the real value is the number of random values
We concatenate the real and simulated values and determine their rankings

```{r rank}
rank( c(real.value, simulated.values) )
```

The first value is the ranking of the real value. 
Dividing by 101 (100 simulated + 1 real) we get the relative position, which is an approximation of
$$\Pr(x<X|H_0) = \int_{-\infty}^X p(x) dx$$
that is, the probability of obtaining a correlation value less than the real one under the null hypothesis.

## Replicating
Let's repeat the same procedure for many different pairs of genes. First we define a function to calculate the correlation of gene `i` and gene `j` and estimate its empirical *p*-value by simulating `N` random correlations. The function is

```{r functions, cache=TRUE}
pv.empiric <- function(i, j, N) {
    real <- cor(e[,i],e[,j])
    simul <- replicate(N, {cor(e[,i],sample(e[,j]))})
    p.val <- 1 - rank(c(real, simul))[1]/(N+1)
    return c(real, p.val)
}
```

The function `pv.empiric()` returns a vector with two values: the real correlation and its estimated *p*-value. We can test it on some sample genes
```{r test-func}
pv.empiric(1, 2, 100)
pv.empiric(3, 4, 100)
pv.empiric(50, 90, 100)
```

To get the full picture we need to apply this function to several randomly chosen pairs of genes. The function `pv.any()`, defined below, choses two different genes every time, calls `pv.empiric()` and returns the real correlation, the *p*-value and the indices of the randomly chosen genes.

```{r}
pv.any <- function(N) {
    idx <- sample.int(ncol(e), size=2)
    c(pv.empiric(idx[1],idx[2], N), idx)
}
```

We can test this function easily
```{r test2}
pv.any(100)
pv.any(100)
pv.any(100)
```

Ok. We can now perform a big scale experiment. We will choose five hundred pairs of genes. For each one we will calculate the *p*-value very carefully, using 1000 random values. That is necesary to see probabilities close to 10^-3^



Repeating 100 times
```{r fullsimulation, cache=TRUE}
ans <- replicate(100, {pv.any(999)})
plot(ans[3,],ans[4,], pch=16, cex=0.4)
plot(ans[3,],log10(ans[4,]), pch=16, cex=0.4)
plot(ans[1,],ans[2,], pch=16)
```

