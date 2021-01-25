# Entropy {#entropy}

Entropy measures the uncertainty associated with a probability distribution over outcomes. It therefore also measures surprise. Entropy differs from variance, which measures the dispersion of a set or distribution of numerical values. Uncertainty correlates with dispersion, but the two differ. Distributions with high uncertainty have nontrivial probabilities over many outcomes. Those outcomes need not have numerical values. Distributions with high dispersion take on extreme numerical values.

*   Capture the evenness of a distribution across types. (kinda variation for categorical values)
*   Also called Simpson’s index
*   Does not take the differences between the types into account (e.g. differences between apples and peers vs. elephants and apples)
*   E.g. colors of tables
*   There is 1/3 red 1/3 white and 1/3 white tables
*   Square each result (i.e. 1/3<sup>2</sup>*3) = 1/3
*   Take the inverse of the number = 3/1
*   The entropy is higher the more types there are
*   The entropy is lower if the proportions of the type are unequal (more of one type as compared to the others)