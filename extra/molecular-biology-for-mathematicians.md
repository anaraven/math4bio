---
title: Molecular Biology for Mathematicians
date: 2015-04-15 15:30
category: Talks
---

This are the main points of my seminar at the Math Department today.

# Molecular Biology 101

*What are we talking about?*

## Warning: Cultural Shock

In Biology every rule has an exception. A biological "law" is verified ~80% of time. Theory is in constant change. *And yet it moves*.

## Three kinds of Biology (according to the conferences subjects)

+ Classic Biology deals with organisms that we can see
  + Ecology
  + Predator - Prey
  + Epidemiology

+ Cell Biology focus on single cells and their pieces
  + Microscopy
  + Image processing
  + Immunology

+ Molecular Biology

## Molecular Biology

Focus on the pieces that form these pieces.
Things that can not be observed on the microscope

+ Metabolites
  + small molecules
  + ~100 atoms
+ Proteins
  + large molecules with some structure
  + ~10.000 to 100.000 atoms
+ Nucleic acids (DNA, RNA)

## There are two types of cells

The *tree of life* has two main branches

+ Prokaryotes (e.g. bacteria)
  + Single cell
  + Single chromosome
  + Single compartment
+ Eukaryotes (e.g. humans)
  + Single- or multi-cellular
  + Several chromosomes
  + Several compartments such as the *Nucleus*

## Prokaryotes are easy to describe|are the "ideal" organism

+ The membrane creates an environment with limited interaction with the environment.
+ In a first approach we can assume that there is no interaction
+ The "soup" inside the cell contains molecules in different concentrations
+ The *state* of the cell is a vector of length *m+p+n*
  + *m* metabolites, *p* proteins, *n* nucleic acids  
[c~1~, ..., c~m~, ..., c~m+p~, ..., c~m+p+n~]

## How does cell state evolve?|That is the Big Question

This is the whole picture  
![](/MathDept-2014-04-15/full-picture.png)

## The Molecular Biology Dogma

In some cases we focus only on the relation between DNA and proteins

![](/MathDept-2014-04-15/dogma.png)

+ Some events can trigger production of *RNA* and *proteins*.
+ It is usually assumed that *protein* concentration is proportional to *RNA* concentration.

## What is a protein?

We can abstract the chemical nature of these molecules and look them as sequences of symbols

+ Each protein is a chain of *amino-acids* (LEGO pieces)
+ There are 20 types of amino-acids
+ Each protein corresponds to a word in an alphabet of 20 symbols
+ Length between 20 and 1000
+ In the cell the protein will fold and adopt a specific shape

## DNA is a "program" for making proteins

+ Each chromosome is a double-chain of *nucleotides*
+ There are 4 types of nucleotides: A, C, G, T
+ The length is between 10^5^ and 10^8^
+ There is an A on one strand iff there is a T in the other. Same with C and G.
+ Some sub-words of DNA encode the "recipe" to make proteins
  + these sub-words are called *genes*

## Transcription and Translation

+ When the cell needs to produce a protein, the "recipe" is copied from DNA to a *messenger RNA*.
  + This is done by a specific protein
+ There is a mapping 1-to-1 between DNA and RNA.
+ There is a mapping of 3-tuples of DNA to amino-acids  
4^3^ → 20
+ This mapping is called *genetic code*.
+ There are proteins that read the RNA and build the encoded protein

## The Objects are

+ The **genome** is the set of all **chromosomes** in a cell
+ A **chromosome** is a single **DNA** molecule
+ **DNA** contains many sub-words called **genes**

When the cell needs a protein

+ a **gene** is copied to a **RNA** molecule
+ the **RNA** molecule is translated to a **protein**

Each *object* involves a mathematical problem

## Sequencing genomes|Math in Genomics

Current technology allows us to read DNA in runs of ~100-600 letters. Imagine a book of 1000 pages:

+ several copies of the book are cut randomly in one million pieces
+ different pieces may overlap. No "disjoint" condition
+ half of the pieces are lost
+ the remaining half is splashed with ink in the middle

The problem is to reconstruct the original book

## Genome Assembly|a graph traversal problem

The classical approach is to see each "piece" as a vertex of a graph. There is an edge when the two "pieces" overlap.

Lander & Waterman (1988) proved that the expected number of connected components is

$$E(C) = N e^{-\frac{NL}{G}}$$

where *N* is the number of "pieces", *L* the average length of the "pieces", and *G* is the length of the chromosome.

## Theory versus practice

But experimental results did not match the theory. There was a wrong hypothesis.

It was assumed that *sequence overlap* corresponded to *physical overlap*.

But some genes have multiples copies in the genome. A kind of backup.

The question is: **How to traverse the graph and reconstruct the original sequence?**

## This is an area of active research|because technology changes fast

![](/images/sequencing.png)

## Finding genes in the DNA|second question

Once the complete genome has been assembled we need to find the "words" in the text. There are no "spaces".

The usual approach is to see genes as a realization of a Markov Chain, the *intergenic* region as another chain, and the transition between both controlled by a *hidden Markov chain*.

This is the *Hidden Markov Model*. In practice the problem is how to find the good parameters. Good in Prokaryotes, not so good in Eukaryotes.

## What do each gene do?|third question

If we have found all "words", what is their meaning?

It is observed that most genes are *homolog* to genes on other species. This homology is determined by an edit distance. We can "transform" a gene into another by

+ substitution: ACGT → ACTT
+ insertion: ACGT → ACTGT
+ deletion: ACGT → ACT

 Each edition has a cost. The *distance* is the minimal cost (Method of Smith & Waterman).

## Significance of sequence homology

What is a "reasonable distance"?

To evaluate significance we need a "null hypothesis".

Karlin & Altschul described a model for the expected number of sequences within a given distance using substitution and arbitrary scores.

The general problem including insertions and deletion has not been formally solved, although there are some "rule of thumb" approaches.

## Measuring gene expression

Now we are in condition to evaluate (partially) the state of the cell by measuring the concentration of RNA.

The **expression** of a gene is the concentration of the RNA transcribed from the gene.

There are several techniques to do that. Some are based on the chemistry of nucleic acids:

+ DNA is stable in double strand config
+ RNA exists in single strand config
+ If DNA is on single strand then RNA can **hybridize**

## Microarrays

+ RNA hybridized to DNA can be observed by fluorescence
+ Fluorescence is increasing (non-linearly) with concentration
+ There are many sources of noise
+ Careful statistical analysis is required
+ Moreover, the experiments should be planned considering the analysis step
  + Technical replicas
  + Biological replicas

## Analysis of gene expression

Gene expression experiments result in a matrix.

Each row is a gene, each column an experiment.

The problem is to find structures in this matrix.

Classical case: clustering of genes by linear correlation

But correlation may be non-linear: entropy based mutual information

$$\int_{Y}\int_{X} p(x,y) \log \frac{p(x,y)}{p(x)p(y)} dx\,dy$$

## Gene expression regulation {.flexbox .vcenter}

Analysis of gene expression shows that not all genes are expressed all times.
Some genes are **regulators**. They enable or disable the expression of other genes.

![](/images/576px-Lac_operon-2010-21-01.png)

~~~{.note}
"Lac operon-2010-21-01" by Lac_operon.png: G3pro derivative work: Tereseik (talk) - Lac_operon.png. Licensed under CC BY 2.0 via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Lac_operon-2010-21-01.png#/media/File:Lac_operon-2010-21-01.png
~~~

## Identifying Regulations {#bslogo .flexbox .vcenter}

+ Regulator genes share some patterns. They encode for a protein that can bind to DNA
+ The **binding site** of regulators is harder to determine
  + They are short regions (length near 20 letters)
  + Some letters are critical, others are not important

![](/images/BS-logo.jpg)

## Modeling Regulation

Determining true binding sites is hard. Current methods produce too many false positives.

Im my research I built a *putative* regulatory network for the well studied bacteria *E.coli*.
We expected ~4K regulations. We got 25K regulations.

I integrated this model with microarray data to find the "most probable" regulatory network using a parsimony criterium.

## Predicting the behavior of the cell

Once we get a map of the regulatory interactions, we can use it how the cell will evolve. Considering only the vector of RNA concentrations, we have the status
$$C_t = (c_1,\ldots,c_n)_{t}$$
Then the regulatory network defines $F$ such that
$$C_{t+1} = F(C_{t})$$
Finding $F$ is an open problem.

## Proteins and Metabolites

Broadly speaking, there are three kinds of proteins

+ Structural pieces:
  + keratine (hair), tubuline (tubes)
+ Information handlers:
  + cell replication (mitosis),
  + transcription, translation
+ Enzymes:
  + catalyzers that trigger chemical reactions
  + transform one metabolite into another

## Modeling Metabolism {.fl-r .no-gap}
<!-- ![](/marseille-pptx/ppt/media/image35.jpeg) -->
We predict which genes code enzymes

Each enzyme catalyzes a reaction, with a known stoichiometry

Every reaction gives an equation

All equations plus boundary conditions give model to predict metabolite concentration

We can predict how the cell adapts to environmental changes

See: **Flux Balance Analysis**

## Summary

+ Molecular biology inspire many mathematical problems
+ Some come from the experimental procedures
 	+ So they will evolve with technology
+ Some come from the very basic nature of Nature
+ Without proper mathematical models it is hard to understand the meaning of experimental results
+ Math come to Molecular Biology to stay
