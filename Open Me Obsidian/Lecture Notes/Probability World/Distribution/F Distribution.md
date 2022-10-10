Fisher‐Distribution
 
 
## Define
abstract: sigma 1/ Sigma 2



## Event
 
$F_{f_{1}, f_{2}}=\frac{\chi_{f_{1}}^{2}}{f_{1}}: \frac{\chi_{f_{2}}^{2}}{f_{2}}=\frac{f_{2}}{f_{1}} \cdot \frac{\chi_{f_{1}}^{2}}{\chi_{f_{2}}^{2}}$
 
```ad-example
collapse: close
title: Where
color: 200, 200, 200

$\left.\begin{array}{l}\chi_{f_{1}}^{2}=\sum_{i=1}^{f_{1}} x_{i}^{2} \\ \chi_{f_{2}}^{2}=\sum_{j=1}^{f_{2}} y_{j}^{2}\end{array}\right\} \underbrace{x_{i}, y_{j} \sim N(0,1)}_{\text {standard normal distributed }} \underbrace{E\left(x_{i}, y_{j}\right)=0}_{\text {stochastic independent }}$

f: degree of freedom  
 
```
 

## PDF Equation
 

![](https://i.imgur.com/aUkvpEq.png)

```ad-example
collapse: close
title: Equation
color: 200, 200, 200

$f(t)=\frac{\Gamma\left(\frac{f+1}{2}\right)}{\sqrt{\pi \cdot f} \Gamma\left(\frac{f}{2}\right)} \cdot\left(1+\frac{t^{2}}{f}\right)^{-\frac{f+1}{2}} \quad$ for $-\infty \leq t \leq+\infty$

```
 
```ad-example
collapse: close
title: Parameter
color: 200, 200, 200


f: degree of freedom  

```
  
 ## Table

 ![](https://i.imgur.com/ZemGU9p.png)

```ad-example
collapse: close
title: Where
color: 200, 200, 200

- Row+Col: x的值
- Value: Probability from 0 to x
```
 