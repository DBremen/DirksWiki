# Birthday paradox {#birthday-paradox}

What is the chance in a room with 23 people that two people share a birthday?

# of pairs that can be build = 23*22/2 = 253

23!/(21! * 2!)

chance for two people having the same birthday = 1/365

chance for two people not having the same birthday = 1- 1/365 = 364/365

in 364 out of 365 scenarios there won’t be a match.

Chance of 253 unique pairs = (364/365)^253

| Number of pairs | 253 = (23 * 22)/2 |
| --- | --- |
| Chance of a unique pair | 99.7260% = 364/365 |
| Chance of 253 unique pairs | 49.95% = (99.7260%)^253 |
| Chance of some match | 50.05% = 1 - 49.95% |

Can also be calculated as = 1- Permut(365,23)/(365 ^ 23)

**Problem 6.** There are n people present in a room. Prove that among them there are two people who have the same number of people they know in the room.

**Solution.** Each person may have between 0 and n − 1 acquaintances (inclusive). We imagine labelling each person with the number of acquaintances that person has. We have n people, and n possible values for the labels. We would like to show that some two people have the same label value. If there were more people than label values, we would be ﬁnished. But since there is the same number of label values as people, we appear to be stuck. However, observe that the only way that no two people have the same label value is that everyone has a diﬀerent label. Thus one person knows nobody, one person knows 1 person, and so on, and ﬁnally one person knows n − 1 people. But this last person then knows everyone else, and in particular this means that there cannot be a person who knows nobody. This contradiction shows that there must indeed be two people who have the same number of acquaintances in the room.

**7\. If you pick five cards from a standard deck of 52 cards, then at least two will be of the same suit.**

Each of the five cards can belong to one of four suits. By the pigeonhole principle, two or more must belong to the same suit.

There is another version of the pigeonhole principle that comes in handy. This version is “the maximum value is at least the average value, for any non-empty finite bag of real numbers” (thanks Professor Dijkstra)

Do not let the math jargon intimidate you. The idea is intuitive. For typical data sets, the average is the “middle” value, so clearly the maximum should be at least as big. While this version sounds different, it is mathematically the same as the one stated with pigeons and pigeonholes.

Consider again the problem of stuffing pigeons into pigeonholes and consider the average. If we have more than n pigeons and n pigeonholes, then the average value of (pigeons / pigeonholes) is greater than one. This means the maximum value should also be larger than one. In other words, there has to be some value of more than one pigeons per pigeonhole. Indeed, the two versions are about the same idea.