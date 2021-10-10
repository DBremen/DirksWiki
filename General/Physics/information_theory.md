# Information theory {#information-theory}

Shannon: information content is biggest for inprobable outcomes. The basic intuition behind information theory is that learning that an unlikely event has occurred is more informative than learning that a likely event has occurred.

Let’s say there is a 75% chance that Nazis will surrender and a 25% chance that they won’t.

How much information does the event ‘surrender’ have?

**log (1/0.75) = log(1.333) = 0.41** (log base 2 omitted going forward)

How much information does the event ‘not surrender’ have?

**log (1/0.25) = log(4) = 2**

Thus, **the information in EVERY possible news** is 0.25 * log(4) + 0.75 * log(1.333)= 0.81

| **Info** |   |   |   |   |
| --- | --- | --- | --- | --- |
| Don&#039;t surrender | 0.42 |   | =LOG(1/0.75,2) |   |
| Don&#039;t surrender | 0.42 |   | =LOG(1/0.75,2) |   |
| Don&#039;t surrender | 0.42 |   | =LOG(1/0.75,2) |   |
| Surrender | 2.00 |   | =LOG(1/0.25,2) |   |
|   | **3.25** | ** ** | =SUM(B2:B5) |   |
|   | **3.25** | **0.81** | =C7*4 | =0.25*B5+0.75*B2 |

Suppose a variable can take on 3 different values a,b,c with the following probabilites

| Value | Probability | Bit representation | # Bits | Entropy |
| --- | --- | --- | --- | --- |
| a | 50% 2/4 | 0 | 1 | .5 |
| b | 25% 1/4 | 10 | 2 | .5 |
| C | 25% 1/4 | 11 | 2 | .5 |
|  |  |  |  | **1.5** |

This is Huffman Coding. When the first bit is a 0, the receiver knows to stop reading that “word” right there; when the first bit is a 1, the readers knows to also read the next bit to complete the “word”.

With the above representation, what is the number of bits needed to represent this variable?! Well, we need just 1 bit half the time (when the value taken on is &#039;a&#039;), and 2 bits each the other 2 times

When p(x==c)=1/4 (i.e., p(c)), the numerator 1 and denominator 4 say that the value &#039;c&#039; is taken on once in 4 times, which means there might be up to 3 other values that the variable can take on at other times (i.e., when it does not take on the value c). In which case, there are 4 values altogether and we will need the following number of bits to represent them all: log<sub>2</sub> (1/p) bits = 2 bits

For ‘a’, we can interpret p(a) = 2/4 as the value ‘a’ being taken on twice in four times. Or, we can now say that of the 4 values the variable can take on, two are ‘a’s, one is ‘b’, and one is ‘c’. Now, to represent the two &#039;a&#039;s among the four values, we don&#039;t need two different storage representations, as the two ‘a’s are the same. So, from the overall number of bits required to represent the two ‘a’s of the variable, we can deduct log 2 (2) bits, since presumably those log 2 (2) bits were meant to differentiate the two &#039;a&#039;s which are actually identical. Thus, to represent ‘a’, we will need:

log<sub>2</sub>(4) – log<sub>2</sub>(2) = 1 bit