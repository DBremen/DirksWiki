## Degree {#degree}

Measure of connectedness of a network. For one node it is the number of nodes it is connected to. For a network it is the average degree of all nodes. But can also be measured as:

2 x # Edges (because each edge connects to nodes) / Nodes

A network has 50 nodes and 100 edges. What is the Average Degree of the network? 2 * 100 / 50 = 4

Node = Dots

Edges = Connections

| Node | # friends |
| --- | --- |
| A | 2 |
| B | 3 |
| C | 2 |
| D | 1 |
| **Average** | 2 |

| Node | Friends | # Friend’s friends | Average of friend’s friends |
| --- | --- | --- | --- |
| A | B | 3 | 2.5 |
| B | A | 2 | 1.66 |
| C | A | 2 | 2.5 |
| D | B | 3 | 3 |
| Average |  |  | 2.4 |

Numbers of triangles (see below) over of all possible triangles

Number of possible triangles = number edges choose 3.

E.g. 4 choose 3 = 4 =FACT(4)/(FACT(3)*FACT(4-3))

Small worlds network model [http://www.netlogoweb.org/launch#http://www.netlogoweb.org/assets/modelslib/Sample%20Models/Networks/Small%20Worlds.nlogo](http://www.netlogoweb.org/launch)

Preferential attachment model [http://www.netlogoweb.org/launch#http://www.netlogoweb.org/assets/modelslib/Sample%20Models/Networks/Preferential%20Attachment.nlogo](http://www.netlogoweb.org/launch)