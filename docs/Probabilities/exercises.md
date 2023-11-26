---
title: "Exercises"
date: "2021-04-20 09:46:04"
lang: en
featured: false
mathjax: true
---

+ A “coin” is a device that has two possible outcomes: “success” (1) with probability 𝑝 and “failure” (0) with probability 𝑞.
    + what is the expected value for a “coins”
    + what is the variance for a “coins”
    + what is the official name for this probability distribution?

+ Now you have 𝑁 “coins” like before, and we count the number of successes.
    + What is the expected value for the number of successes
    + what is the variance for the number of successes
    + what is the official name for this probability distribution?

+ Insurance: a company wants to offer  insurance to protect against the economic damage of COVID-19. If a person takes the insurance, they pay 𝑥. If they get COVID in the next year (an event that has probability 𝑝), then they got paid a fixed amount 𝑦. How much should be the insurance price 𝑥 so the insurance fund does not get broke?

    Make all the necessary hypotheses and explain them.

----

1. Insurance: a company wants to offer  insurance to protect against the economic damage of COVID-19. If a person takes the insurance, they pay 𝑥. If they get COVID in the next year (an event that has probability 𝑝), then they got paid a fixed amount 𝑦. After one year, the company will have a net result 𝑅 corresponding to income minus expenses. Since expenses depend on how many people get sick, 𝑅 is a random variable.

    + What is the expected value of the net result 𝑅?
    + What are the variance and standard deviation of the net result 𝑅?
    + What is the interval that contains the real net result 𝑅 with 99% probability?

2. In class 6 we calculated the population mean and variance for the people in Turkey, using data from <https://www.indexmundi.com/turkey/age_structure.html>. We proved that we can get reasonable answers even with this limited data and some hypotheses.

    + Redo the Excel sheet that we built in class 6. 

    + We chose to represent each age group by the average age. This may introduce distortions. How can we choose another number to represent the age of each group? How would our result change?

        You do not need to calculate anything, just explain how would you handle this issue in a different way.

    <!-- error propagation in variances -->

3. If you do not have access to the age distribution, but you know only the standard deviation from the previous question

    + How many people you need to interview to estimate the average age of the Turkish population with a margin of error of 5 years?
    + … of 1 year?
    + … of 1 month?
    + What is the probability that the real value is inside the intervals you have found?

4. You have developed a vaccine against COVID-19. You have tested its safety, there are no secondary effects. Now you want to prove that the vaccine works. In other words you want to prove that the probability 𝑝 of getting sick of COVID-19 without the vaccine is higher than the probability 𝑣 of getting sick after getting the vaccine.

    To test this hypothesis, you will take 𝑛 people without the vaccine (the _control_ group) and other 𝑛 people vaccinated (the _treatment_ group). After some period of time, you count how many people got sick in each group. Let's say that 𝑥 people got sick in the control group and 𝑦 people got sick in the treatment group. You can use these numbers to build two confidence intervals, one for 𝑝 and another for 𝑣. The vaccine is proved to work if the upper limit of the confidence interval for 𝑣 is less than the lower limit of the confidence interval for 𝑝.

    + Please write the formulas for both confidence intervals.
    + How many people do you need to have in each group to test if the vaccine works? Make all the necessary hypotheses and discuss why they make sense. You can use Excel or any other tool to make a clear argument.
    + What are the weaknesses of this protocol? What would you change?
    <!-- placebo, severity of disease -->
---

I think that the main problem is not using names carefully. For example, you say

Probability of getting 𝑝 sick without vaccine > Probability of getting sick 𝑣 after getting vaccine

It will be more clear if you say

+ 𝑝: Probability of one person getting sick without vaccine
+ 𝑣: Probability of one person getting sick after getting vaccine
+ hypothesis: 𝑝 > 𝑣

Then you say "𝑛₁ people, 𝑥 got sick with probability 𝑝", but the probability that 𝑥 got sick is 𝑛₁!/(𝑛₁-𝑥)𝑥! 𝑝ˣ (1-𝑝)ⁿ¹⁻ˣ

In other words, 𝑥 follows a _binomial_ distribution. Therefore
ℙ(𝑥 got sick) depends only on 𝑛₁ and 𝑝. It does not depend on 𝑥, since that is the random variable.

So, you are right in your idea of building confidence intervals, but you are wrong in your formulas for 𝔼(𝑥) and 𝕍(𝑥).

Then you must think forward and backward. First, assuming that you know 𝑝 and 𝑛₁, you get an interval for 𝑥. Same idea for 𝑣, 𝑛₂ and 𝑦. You want that the intervals do not touch. Then you go backwards and try to find 𝑛₁ and 𝑛₂. You will need to make some hypotheses about 𝑝 and 𝑣, or you may decide that 𝑛₁ and 𝑛₂ should be the same number 𝑛, to make the problem easier to solve.

You can make any hypothesis that you want, as long as you explain it. You can also use the fact that 𝑥 and 𝑦 follow binomial distributions to define narrower intervals. Just explain it.

------

1.  You throw two dice. 
    + What is the probability that the sum of both dice is 7?
    + What is the probability that the sum of both dice is 3?

2. A deck of cards has 26 red cards and 26 black ones. You are asked to split the deck into two groups. Each group can have between 1 and 51 cards. Obviously if the first group has 𝑛 cards, the second group has 52-𝑛 cards. You are free to choose which cards to put on each group, and then each group is shuffled separately. Now you choose randomly one of the groups (let's say, by tossing a coin) and take the topmost card. You win if the card color is red. 

    + What is your best strategy to distribute the cards?
    + What is your probability of success?

<!-- This problem involves 100 red balls, 100 blue balls, and 2 urns. First you distribute all the balls between the 2 urns, placing at least 1 ball in each urn. Next, you select an urn at random, and then draw a ball at random from the urn. You win if you draw a red ball. What is your best strategy for distributing the balls, and what is your winning percentage?  -->
<!-- from youtube -->

+ Are men younger than women in Turkey? How many people you need to interview to prove this?

+ A book sold in Amazon.com.tr has 4 stars after 5 (or 88) reviews. To understand this result we can model the number of stars as a binomial random variable, with the probability 𝑝 being the "real" score of the book.
    + If that is a representative sample, what can we say about the average number of stars when there are 100 reviewers?
    + What if there are an infinite number of reviewers?

![](../../../images/2021/msr/stars-in-amazon-com.png)

+ If the probability of seeing a car on the highway in 30 minutes is 0.95, what is the probability of seeing a car on the highway in 10 minutes? (assume a constant default probability)
<!-- from youtube -->

+ Super-Lotto is a lottery where you choose 6 of 54 numbers. Every week the organizers choose randomly 6 numbers from 54. If you selected the same 6 numbers, you win.
    + What is your probability of winning?
    + What is the probability that another person wins at the same time if there are 10 million players?
    + What is the probability that any person wins if there are 10 million players?


+ sample size to guarantee that the vaccine effect is positive
+ sample size to guarantee some precision
    + binomial
    + measurement with unknown distribution
    + measurement with exponential distribution

+ To test a new fertilizer, three plants were planted in a new environment. After one month, one died and the others survived.
    + What is the best estimation for the survival probability?
    + What is the 95% interval for the survival probability?

+ expected win in a Roulette

```r
length(list)
sapply(list, length)
```


+ [Birthday paradox](https://www.youtube.com/watch?v=ofTb57aZHZs)
+ [A visual guide to Bayesian thinking](https://www.youtube.com/watch?v=BrK7X_XlGB8)
+ [Why Bayes rule is nicer with odds](https://www.youtube.com/watch?v=lG4VkPoG3ko)
+ [Bayes theorem](https://www.youtube.com/watch?v=HZGCoVF3YvM)

+ [Statistics for Biologists](https://www.nature.com/collections/qghhqm) Nature Journal

+ [Cargo Cults: Why Imitating Success Makes it Impossible to Reproduce](https://medium.com/@christhebrain/cargo-cults-why-imitating-success-makes-it-impossible-to-reproduce-5426eb7c35a1)

+ [Cargo Cults](https://www.anthroencyclopedia.com/entry/cargo-cults)
+ Scientific American [50 Years Ago: Cargo Cults of Melanesia](https://www.scientificamerican.com/article/1959-cargo-cults-melanesia/)