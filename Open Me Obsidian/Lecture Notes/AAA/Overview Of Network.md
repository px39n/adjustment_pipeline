LeveL


## Basic Introduction
Variance is proportional to the length and instrument setup. where the P is inversely proportional. We could use pi=1/ei since the weight is relative.



| Network     | [[Level]]             | [[Trilateration]]             | [[Triangulation]]             |
| ----------- | --------------------- | ----------------------------- | ----------------------------- |
| Concept     | [[Level#Concpet]]     | [[Trilateration#Concept]]     | [[Triangulation#Concept]]     |
| Graph       | [[Level#Graph]]       | [[Trilateration#Graph]]       | [[Triangulation#Graph]]       |
| Calculation | [[Level#Calculation]] | [[Trilateration#Calculation]] | [[Triangulation#Calculation]] |
| Fredom     | height                | x.sum, y.sum, No rotation     | x.sum, y.sum, No rotation     |


![](https://i.imgur.com/H7XHhSb.png)


 
## Planning of a network

1. Define Problem task
2. Design network
3. Assessment
4. Optimization
5. Target Function and Restrictions for Network Optimization



##

| Strategy           |  Situation                                          | Target                                            | Consideration                                |
| ------------------ | ------------------------------------------ | ------------------------------------------------- | -------------------------------------------- |
| Data Snooping      | if max. 3‐5% of observations are erroneous | L2-norm                                           | Depends on distribution of redundancy unmber |
| Lp‐norm‐estimators | 50 % of erroneous observations for L1                         | $\sum_{i=1}^n\left\|v_i\right\|^p=\min$           |                                              |
| M-Estimator        | 5‐10 % of erroneous observations                         | $\sum_{i=1}^n \varphi\left(v_i\right)=\min$       |                                              |
| LMS-estimator      | 50 % of erroneous observations                        | $\operatorname{median}\left(v_i{ }^2\right)=\min$ |                                              |
|                    |                                            |                                                   |                                              |



## Constraint
$Translation1=\sum_{i=1}^p \hat{x}_i=0$
$Translation2=\sum_{i=1}^p \hat{y}_i=0$
$Rotation=\sum_{i=1}^p\left(y_i^{\prime} \hat{x}_i-x_i^{\prime} \hat{y}_i\right)=0$
a^2+b^2+c^2=1