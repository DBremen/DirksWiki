## Diversity {#diversity}

Diversity measures

*   Variation average squared distance from the mean
*   Entropy
    *   Capture the evenness of a distribution across types. (kinda variation for categorical values)
    *   Also called Simpson’s index
    *   Does not take the differences between the types into account (e.g. differences between apples and peers vs. elephants and apples)
    *   E.g. colors of tables
    *   There is 1/3 red 1/3 white and 1/3 white tables
    *   Square each result (i.e. 1/3<sup>2</sup>*3) = 1/3
    *   Take the inverse of the number = 3/1
    *   The entropy is higher the more types there are
    *   The entropy is lower if the proportions of the type are unequal (more of one type as compared to the others)
*   Distance
    *   Take into account differences between types (see entropy which doesn’t do this)
    *   Assume a pre-existing distance function between pairs of types.
        *   Some way to measure how equal the types are
    *   The more distance there is between the types the more diverse is the whole set of entities.
*   Attribute
    *   Take into account differences between types (see entropy which doesn’t do this)
    *   Identify the attributes of each type in a set and count up the total number of unique attributes