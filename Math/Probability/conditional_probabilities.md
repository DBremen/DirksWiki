# Conditional probabilities {#conditional-probabilities}

Bayes Theorem

*   Always remember multiplication in the context of probability, equals to **AND**.

Suppose we have some evidence that leads to a **hypothesis**. Five minutes pass and we then acquire new evidence that needs to be accounted for in our previous hypothesis. How do we update our hypothesis?

Let H denote our hypothesis and E denote our evidence. Bayes’ Theorem is defined by

It’s saying what is the probability that my hypothesis is true given the evidence we have. In order to answer these questions, we need three things:

*   the probability the hypothesis is true ℙ(H) also called prior if not known or random we can assume .5
*   the probability of the evidence given that the hypothesis is true ℙ(E|H) also called the likelihood
*   and the probability of the evidence ℙ(E)also called the normalizing constant
*   The result is called posterior

D is in this case for data same as E in the other formula

P(E) = P(H) * p(E|H)

P(breast cancer|test positive) = p(breast cancer) * p(test positive|breast cancer)/p(test positive)

= .01 * .9 / (.01 * .9 + .99 * .09)

P(cancer|test positive) = 8/(8+95)

[http://www.greenteapress.com/thinkbayes/thinkbayes.pdf](http://www.greenteapress.com/thinkbayes/thinkbayes.pdf)

https://mybinder.org/repo/rlabbe/ThinkBayes

### Cookie problem {#cookie-problem}

There are two bowls of cookies:

Bowl 1: 30 vanilla and 10 chocolate cookies

Bowl 2: 20 vanilla and 20 chocolate cookies

Now suppose you choose one of the bowls at random and, without looking, select a cookie at random. The cookie is vanilla.

p( bowl 1 | vanilla).

p( bowl 1 | vanilla) = p(bowl 1) * p(vanilla | bowl 1) / p(vanilla)

*   p(bowl 1) = random .5
*   p(vanilla | bowl 1) = 30 : 10 = 30/40 or ¾
*   p(vanilla) = 50 : 30 = 50/80 = 5/8

p( bowl 1 | vanilla) = .5 * ¾ / 5/8 = 3/5

**p(E) can also be calculated as follows:**

p(vanilla) = p(bowl 1) * p(vanilla | bowl 1) + p(bowl 2) * p(vanilla | bowl 2)

= .5 * ¾ + .5 * ½ = 5/8

### M&amp;M Problem {#m-m-problem}

*   Mix 1994: 30% Brown, 20% Yellow, 20% Red, 10% Green, 10% Orange, 10% Tan.
*   Mix 1996: 24% Blue , 20% Green, 16% Orange, 14% Yellow, 13% Red, 13% Brown.

Suppose a friend of mine has two bags of M&amp;M’s, and he tells me that one is from 1994 and one from 1996\. He won’t tell me which is which, but he gives me one M&amp;M from each bag. One is yellow and one is green. What is the probability that the yellow one came from the 1994 bag?

Now we construct a table with a row for each hypothesis and a column for each term in Bayes’s theorem:

| Hypothesis | Prior | Likelihood | Normalization constant (sum of column) | Posterior |
| --- | --- | --- | --- | --- |
| A |  |  |  |  |
| B |  |  |  |  |

Hypothesis:

*   Yellow = 1994 and Green = 1996
*   Green = 1994 and Yellow = 1996
*   Mix 1994: 30% Brown, 20% Yellow, 20% Red, 10% Green, 10% Orange, 10% Tan.
*   Mix 1996: 24% Blue , 20% Green, 16% Orange, 14% Yellow, 13% Red, 13% Brown.

| Hypothesis | Prior | Likelihood | p(bag x) * p(yellow | bag x) | Posterior |
| --- | --- | --- | --- | --- |
| Yellow = 1994 | .5 | 1994: yellow = .2 | .5 *400 = 200 | 200/(200 + 70) |
| Green = 1994 | .5 | 1994: green = .1 | .5 * 140 = 70 | 70/270 |

### Monty hall problem {#monty-hall-problem}

Monty shows you three closed doors and tells you that there is a prize behind each door: one prize is a car, the other two are less valuable prizes like peanut butter and fake finger nails. The prizes are arranged at random.

The object of the game is to guess which door has the car. If you guess right, you get to keep the car.

You pick a door, which we will call Door A. We’ll call the other doors B and C.

Before opening the door you chose, Monty increases the suspense by opening either Door B or C, whichever does not have the car. (If the car is actually behind Door A, Monty can safely open B or C, so he chooses one at random.) . We’ll assume he opens Door B.

Then Monty offers you the option to stick with your original choice or switch to the one remaining unopened door.

The question is, should you stick or switch or does it make no difference?

**Better switch**

p(E) = Door B opened (and there is no car behind B)

p(car is behind Door A or C | Monty opened Door B)

| Car is behind door x | Prior | Likelihood | Prior * Likelihood | Prior / (sum previous column) |
| --- | --- | --- | --- | --- |
| A | 1/3 | 1/2 | 1/6 | 1/6 / .5 = 1/3 |
| B | 1/3 | 0 | 0 | 0 |
| C | 1/3 | 1 | 2/6 | 2/6 / .5 = 2/3 |

*   Likelihood: If the car is actually behind A, Monty could safely open Doors B or C. So the probability that he chooses B is 1/2\. And since the car is actually behind A, the probability that the car is not behind B is 1\.

Choose 1 = 1/3 chance of winning

Remaining chance = 2/3

Of that 2/3 chance one door will be eliminated therefore it’s better to switch