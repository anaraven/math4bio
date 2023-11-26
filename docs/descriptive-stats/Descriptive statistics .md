---
date: Fri Sep 11 14:09:59 2015
---

## Set of objects and their characteristics

Statistics is a way to describe  *objects*, things that can be identified and grouped in sets. Each object has naturally several attibutes, such as a *name*, *color*, *size*, *temperature*, *gender*, or anything else that can be relevant and can be known without ambiguity.

We will use some basic mathematic notation. The set of objects we will describe is called $I$, and any of the objects of this set will be identified by $i.$ Notice that the set is written in big caps and the object in small caps.

The objects can be persons, organisms, minerals, samples, etc. Anything well defined. For the examples we imagine that the set $I$ is a set of people. We will assume that the set $I$ has $N$ elements. In mathematical speak we say that *the cardinality of $I$ is $N$* and we can write $\text{card}(I)=N$.

Lets keep in mind that a set can be written as a list of elements where the order is not important and repeated elements only count as one. For example
$$\{1,2,3\} = \{3,2,1\} = \{1,3,1,1,2,3,2,2,2\}$$
As usual, sets are delimited by curly braces {}.

Each person has several attributes. Let's say *age*, *height*, *weigth*, *eyes color*, *city of residence* and *money in the bank*. In mathematical notation we represent them with the vectors $a$, $h$, $w$, $e$, $c$ and $m$. A vector is a list with a fixed number of values. Here each vector has size $N$

+ kinds of variables: factors (categorical), ordered factors, numeric discrete, continuous
+ Counting objects. Barplots, pie plots
+ barplots for continuos variables are not so useful
+ Empirical cummulative distribution. 
+ Histograms (depending on binning).
+ Shape of the distribution (If the categories are ordered): 
+ Unimodality, skew
+ Describing them
+ Localization, mode, min, max, median, mean
+ Dispersion, range, variance, standard error, average dispersion, coefficient of variation
+ Mean versus median: robustness.

## bivariate

+ x,y graphics
+ discrete v/s discrete (?)
+ continuous v/s discrete
+ continuous v/s continuous
+ tendency 
+ PCA visualization

> Required calculus: Definition of function, slope of each point is also a function and can be known explicitly (derivative), extreme values have slope equal to zero.

## Clustering (unsupervised)

A.k.a Pattern recognition.

grouping together things that are similar.

Why? See "Funes". understanding, simplification, 
decision, assign a new element to a cluster
Errors in decisions have a cost
Overfitting

+ Example and motivation: K means. Works nice in 2 dimensional (same weight) data. Voronoi tessellation.
+ K-medians
+ Self Organized Maps, a.k.a Kohonen networks

+ What is being similar? distance between objects. 
    + Euclidean, manhattan, maximum, Minkowski, correlation, Tanimoto, Jaccard
+ Distance between a point and a cluster: single, average and complete linkage.
+ Distance between clusters
+ Hierarchical clustering

+ Why so many clusters?
    + there is no "correct" clustering, only "useful" clustering

Supervised clustering
-----------------------------

A.k.a. Machine Learning

SVM
CART

Dependent variables
----------------------------

e.g. values depending on time

Linear regression
semi-log
log-log
