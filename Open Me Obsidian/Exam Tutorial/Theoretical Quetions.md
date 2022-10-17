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

```ad-example
collapse: close
title: Whats the difference between GH and GM
color: 200, 200, 200
When there is an implicit relation between measurements, residuals and the unknown parameters. 


This leads us to the Gauss-Helmert model [[Overview of LST]]
```

```ad-example
collapse: close
title: Advantages and Disadvantages of L1‐Estimation from reweighted L2‐ Estimation
color: 200, 200, 200

L1

The great advantage of LMS estimation is that it is free from the influences of geometry and so-called leverage observations have no influence on the parameter estimation.
In (Niemeier 2008, p. 368) it is stated in the context of coordinate transformations that with this method up to $50 \%$ of erroneous data (in control points or observations) can be tolerated.
Numerical result can converge to a wrong solution ; it can not be used as the last result because it does not have statistical interpretation.

L2

Application of $L_2$-norm-estimation still yields a result that satisfies
$$
\boldsymbol{v}^{\mathrm{T}} \mathbf{P} \mathbf{v}=\min
$$
But: Statistical interpretation of the results is no longer possible.
Further: Adjustment yields unrealistic values for the unknowns.
Consequences: Identification of erroneous observations from investigation of the residuals often impossible.
$\Rightarrow$ We have to perform a preprocessing.

Only yields reasonable results if observation errors ~ N().   |


```

# Deficency

 
```ad-example
collapse: close
title: Compromise between free and fixed control Difference with fixed error and freenetwork (5.p12)
color: 200, 200, 200
Fixed Point will 100%. Free will 0%.
将unknown引入作为观测值。
$\rightarrow$ Small value $\sigma_{0 A}^2 \rightarrow$ small variances $\rightarrow$ large weights $\rightarrow$ large impact
$\rightarrow$ Large value $\sigma_{0 A}^2 \rightarrow$ large variances $\rightarrow$ small weights $\rightarrow$ small impact
Small / large $\sigma_{0 A}^2$ with respect to the variance factor $\sigma_0^2$ of the observations
With the choice of $\sigma_{0 A}^2$ we can find a trade-off between the influence of the control points and the inner geometry of a geodetic network.
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
 
 

While the results for the unknowns are very similar, the standard deviations differ more significantly. 
overestimated or underestimate always
so instead of only one value ߪ we use different variance factors are introduced for each group of observations.

[[Overview of Quality Assessment#VCE Estimation]]
```


