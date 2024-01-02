https://learning.edx.org/course/course-v1:HarvardX+PH559x+2T2021

Directed Acyclic Graphs (DAGs)

We draw a causal graph using our expert knowledge, our causal knowledge,
and at the same time, we are building a statistical model without
knowing it. And this dual nature is based on the fact that the causal
effects imply associations. And lack of causal effects imply
independencies.

Associations = biases

![](C:\Users\User\OneDrive\Scripts\DirksWiki\docs\Process_System_Models\media_Causal_Diagrams/media/image1.png)

Based on data we could validate this if the proportion of individuals
with cancer is different among smokers and nonsmokers

![](C:\Users\User\OneDrive\Scripts\DirksWiki\docs\Process_System_Models\media_Causal_Diagrams/media/image2.png)

B in this case is a mediator (something through which A causes Y). Those
are usually not included in causal graphs. The above would mean that
lung cancer can only be caused by cell damage and no other way directly
through smoking (knowing whether a person with cell damage is also
smoking will not add value to predicting whether they have a lung
cancer)

Aspirin is associated with stroke, conditionally on platelet
aggregation:

![](C:\Users\User\OneDrive\Scripts\DirksWiki\docs\Process_System_Models\media_Causal_Diagrams/media/image3.png)

Based on knowledge

-   L has an effect on A

-   A has an effect on Y,

-   L has a direct effect on Y that is not mediated through A.

The absence of an arrow on a DAG means that we believe there is no
relationship between D and E for each individual person in the
population. Therefore, it is a stronger assumption to not have an arrow
on a DAG, than to have one. As such, if we cannot rule out a direct
effect of D on E, we should draw an arrow.

![](C:\Users\User\OneDrive\Scripts\DirksWiki\docs\Process_System_Models\media_Causal_Diagrams/media/image4.png)

## Χausal DAG 

If two variables on the graph share a cause:

-   Τhat cause is also represented on the graph.

-   This is known as the Causal Markov Condition.

### Example Effect of Aspirin on strokes

10 K people are randomly assigned to receive Aspirin 10 K are not.

We don\'t need to include all causes of stroke since they are not
causing to take the testers Aspirin

![](C:\Users\User\OneDrive\Scripts\DirksWiki\docs\Process_System_Models\media_Causal_Diagrams/media/image5.png)

If we chose treatments based on patient\'s medical records and whether
they took Aspirin we will need to include the additional variable L
since it is a common cause of Aspirin and is also causing Y directly

![](C:\Users\User\OneDrive\Scripts\DirksWiki\docs\Process_System_Models\media_Causal_Diagrams/media/image6.png)

# Common causes

When we\'re using data to estimate the causal effect of A on Y, any
association between A and Y that is not due to the effect of A and Y is
considered a systematic bias. In particular, when there is a component
of the association between A and Y that is due to a common cause of A
and Y like L in our causal graph, we say that that is confounding.

![](C:\Users\User\OneDrive\Scripts\DirksWiki\docs\Process_System_Models\media_Causal_Diagrams/media/image7.png)

With data, we can answer the question of whether A and Y are associated
conditional on L. For example, we can restrict the analysis to the
subset of individuals who are never smokers.

**Remember, we use a square box around a variable to indicate that
we\'re conditioning on it**.

We just check whether the proportion of individuals with lung cancer is
different among those with and without yellow fingers. If the
proportions are different, we will say that there is an association
between A and Y conditional on L where L is equal to never smoking.
Another way to say this is that we will check whether A contains
information not already included in L to predict Y. If we know that a
never smoker has a 1% chance of developing cancer,  then learning that
she has yellow fingers does not change that number. She still has a 1%
chance of developing cancer.

Graph theory gives us a rule that says that the flow of association
between A and Y is interrupted when we condition on their common cause,
L. The box around L blocks the association between A and Y. So there is
no arrow from A to Y, we say that there is no association between A and
Y conditional on L.

![](C:\Users\User\OneDrive\Scripts\DirksWiki\docs\Process_System_Models\media_Causal_Diagrams/media/image8.png)

# Common effects
