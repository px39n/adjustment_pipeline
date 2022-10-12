# Confidence
1. How to Comment Result of Confidence?


# Matrix

```ad-example
collapse: close
title: Explain their meaning eigenvalues are zero 
color: 200, 200, 200
Extension with eigenvectors corresponding to zero-eigenvalues provides the smallest (minimal) trace. The same result is obtained when computing pseudo-inverse directly from normal matrix.
The trace of the pseudo-inverse is the same as in case of extensions with eigenvectors (it's again minimal). Pseudo-inverse matrix is exactly the same as $\mathrm{N}+$ (g-inverse with eigenvectors). So these are the same
```
```ad-example
collapse: close
title: Compare the cofactor Qxx Which adjustment leads to 𝐐11 coinciding with 𝐍+ and why?
color: 200, 200, 200
Matrices computed in both cases of Total Trace Minimization coincide best with the pseudo-inverse,
as they are all the same. This results from the fact that all points are used for datum definition in case
of those three matrices.
```


```ad-example
collapse: close
title: Discuss datum
color: 200, 200, 200

For partial trace, if 1 point, it will be fixed pt with 0 variance.
For others, they will get low s.

```

```ad-example
collapse: close
title: Lagrange Multipliers Meaning
color: 200, 200, 200
Lagrange Multipliers (LM) show the impact of the constraints into the adjustment
- The smaller their values, the smaller the impact their respective constraint too. 
- G and full trace should have a same impact
- Partial will get a alrger

```


# Network

```ad-example
collapse: close
title: How to choose threshold and c
color: 200, 200, 200
2 order of magnitude
.
```
```ad-example
collapse: close
title: Can we shift the freenetwork
color: 200, 200, 200
We can shift this network (arbitrary in direction of ܪ , without affecting the observations
```
# Deficency
Difference with fixed error and freenetwork (5.p12)



```ad-example
collapse: close
title: Compromise between free and fixed control
color: 200, 200, 200
Fixed Point will 100%. Free will 0%.
将unknown引入作为观测值。
![](https://i.imgur.com/JvyNc3R.png)
```
#  Quality

```ad-example
collapse: close
title: Evaluation Statistical test
color: 200, 200, 200
- Two-sided problem, so upper and lower limits need to be calculated.
- If not accept, means there are blunders, so calculate reliability
```

```ad-example
collapse: close
title: Evaluation the network reliability
color: 200, 200, 200

- in order to detect blunders in our observations, large redundancy numbers (ri) are essential.

[[Overview of Quality Assessment]]
```

```ad-example
collapse: close
title: Why VCE works interpret potential disparities.
color: 200, 200, 200
 
The unknowns for the two subtasks differ due to a difference in the stochastic models,
including the iterative approach. Meanwhile, the standard deviations per group of subtask 4
overestimated the unknowns a and b, while subtask 5 didn’t.

While the results for the unknowns are very similar, the standard deviations differ more
significantly. After improvement of the stochastic model using Variance Component Estimation,
estimated unknowns are slightly lower than before. This indicates that the line parameters are very
overestimated at first.

```


