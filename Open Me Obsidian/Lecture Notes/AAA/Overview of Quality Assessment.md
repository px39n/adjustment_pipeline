
# Reliability Measure


|  [[#Discussion]]        |     | Formula            | Explain                                                                   | Calculation |           |
| -------- | --- | ------------------ | ------------------------------------------------------------------------- | ----------- | --------- |
|          |     |[[#Qxx]] | Reliability Measures                                                      |             |           |
| Internal |     | [[##r]]            | Magnitude: Observation error, shown as residual.                          | [[##r]]     | 0 -- 1    |
| ^^       |     | [[#EV]]            | Magnitude: (Same as [[##r]] ) but 100%                                    | [[#EV]]     | 0 -- 100% |
| ^^       |     | [[#NV]]            | Magnitude: Blunder -- by T test for residual                              | [[#NV]]     | 0,2,4     |
| External |     | [[#EP]]            | Impact of a potential blunder on a point corresponding to the measurement | [[#EP]]     |           |
| ^^       |     | [[#GF]]            | Gross Error                                                               | [[#GF]]     |           |
| ^^       |     | [[#GRZW]]          | Lower Boundary Value for gross error                                      | [[#GRZW]]   |           |
| ^^       |     | [[#EP]]            | Magnitude: Impact of blunder 𝐺𝐹 on measurement                            | [[#EP]]     |           |
| ^^       |     | [[#EGK]]           | Impact of gross GRZW on measurement                                       | [[#EGK]]    |           |

| Quality assessment  |            |                  |
| ------------------- | ---------- | ---------------- |
| Helmert point error | $\sigma_P$ | Threshold for EP |
| c                   |            | Threshold for NV |



# Precision Measure
## Qxx
Precision expresses how precise our unknowns (e.g. coordinates) have been determined
## Propagation error
$\mathbf{Q}_{\hat{x} \hat{x}}$ for unknowns

In form of Coordinate if x is {x, y}
$\mathbf{Q}_{\hat{x} \hat{x}, i}=\left[\begin{array}{ll}q_{x_i x_i} & q_{x_i y_i} \\ q_{y_i x_i} & q_{y_i y_i}\end{array}\right]=\left[\begin{array}{ll}q_{x x} & q_{x y} \\ q_{y x} & q_{y y}\end{array}\right]$
$s_{x_i}=s_0 \sqrt{q_{x_i x_i}}$ and $s_{y_i}=s_0 \sqrt{q_{y_i y_i}}$
$s_{P_i}^H=\sqrt{s_{x_i}^2+s_{y_i}^2}$

##  Helmert Ellipse
![\|200](https://i.imgur.com/YBQ5NVm.png)
$\begin{aligned} A_F^2 &=\frac{1}{2} s_0^2\left(q_{x x}+q_{y y}+\omega\right) \\ B_F^2 &=\frac{1}{2} s_0^2\left(q_{x x}+q_{y y}-\omega\right) \\ \theta_F &=\frac{1}{2} \arctan \left(\frac{2 q_{x y}}{q_{x x}-q_{y y}}\right) \\ \omega^2 &=\left(q_{x x}-q_{y y}\right)^2+4 q_{x y}^2 \end{aligned}$


## Confidence Ellipse
![\|200](https://i.imgur.com/SPpESd4.png)
$A_K^2=2 \cdot F_{2, f_2, 1-\alpha} \cdot A_F^2$
$B_K^2=2 \cdot F_{2, f_2, 1-\alpha} \cdot B_F^2$
$\theta_K=\theta_F$
 
# Assessment
## r
The smaller r , the larger a gross error has to be in order to detect it
$\mathbf{r_i}=\mathbf{Q}_{v v} \mathbf{P}$
$\sum_{i=1}^n r_i=\operatorname{trace}\left(\mathbf{Q}_{v v} \mathbf{P}\right)=r$
## EV
$E V_i[\%]=100 \cdot r_i=100 \cdot\left(\mathbf{Q}_{v v} \mathbf{P}\right)_{i i}$

![](https://i.imgur.com/oqZHxx6.png)
## Global Test
$s_0=\sqrt{\frac{\mathbf{v}^{\mathrm{T}} \mathbf{P} \mathbf{v}}{r}}$
$H_0: E\left\{s_0^2\right\}=\sigma_0^2$
$H_A: E\left\{s_0^2\right\} \neq \sigma_0^2$
[[Cai Distribution]] (a=5%)



## NV
$\mathrm{NV}_i=\frac{\left|v_i\right|}{\sigma_{v_i}} \quad$   
with $\quad \sigma_{v_i}=\sigma_0 \cdot \sqrt{q_{v_{p_i}}}$ or $\sigma_{v_i}=\sigma_{l_i} \cdot \sqrt{r_i}$ 

| Theoretical         | Empirical             |     |
| ------------------- | --------------------- | --- |
| NV ~ N(0,1)         | NV ~ N($\delta_0$,1)  |     |
| 误差为正态分布 NV<2 | 误差超过正态分布 NV>2 |     |
|                     |                       |     |

## GF
$G F_i=\frac{-v_i}{r_i}$

## EP

| Left | Right   | Equation                              |
| ---- | ------- | ------------------------------------- |
| EP   | ri ,GFi | $E P_i=G F_i \cdot\left(1-r_i\right)$ |
|      |         |                                       |




## GRZW
This lower boundary value
$G R Z W^i=\nabla_0 l_i=\frac{\sigma_{l_i} \delta_0}{\sqrt{r_i}}=\frac{\sigma_0 \delta_0}{\sqrt{r_i p_i}}$
mportant: Errors < GRZW are regards as random

## EGK
Impact of the boundary value for blunders (𝐺𝑅𝑍𝑊 ) on the coordinates of the corresponding point.
$E G K_i=\left(1-r_i\right) G R Z W_i$

## Discussion 
![](https://i.imgur.com/SJeuomk.png)

# VCE Estimation

Given:  
$v,\boldsymbol{\Sigma}_{l l}, \sigma_0$ and thus $\mathbf{P}$

|                                   | Equation                                                                                                                                                                                                                  |
| --------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Initilize S0                      | $s_{0_{\text {a }}}=\sqrt{\frac{\mathbf{v}_{\mathrm{a}}^{\mathrm{T}} \mathbf{P}_{\mathrm{a}} \mathbf{v}_{\mathrm{a}}}{r_{\mathrm{a}}}}$                                                                                   |
| 1. Iteration Check                | \|s_o_all-1\|>10^-4                                                                                                                                                                                                       |
| 2. Update The SLL                 | $\boldsymbol{\Sigma}_{l l}=\alpha_{0_{1,1}}^2 \mathbf{Q}_1+\alpha_{0_{2,1}}^2 \mathbf{Q}_2+\cdots+\alpha_{0_{k, 1}}^2 \mathbf{Q}_k$                                                                                       |
| 2.2 Update SLL Others             |  Q, and P                                                                                                                                                                                                                         |
| 3. Adjustment                     | Trace(QvvP)                                                                                                                                                                                                               |
| 4. Update Q\*P for each Component | $\mathbf{Q}_{v v} \mathbf{P}=\left[\begin{array}{c:c}\left(\mathbf{Q}_{v v} \mathbf{P}\right)_{\text {dist }} & * \\ \hdashline * & \left(\mathbf{Q}_{v v} \overline{\mathbf{P}}\right)_{\text {dir }}\end{array}\right]$ |
| 5. Update S0 for each Component   | $s_{0_{i, 1}}^2=\frac{\mathbf{v}_i^{\mathrm{T}} \mathbf{P}_{i, 0} \mathbf{V}_i}{r_i}$                                                                                                                                     |
| 6. Update a for each Component    | $\alpha_{0_{i, 1}}^2=\alpha_{0_{i, 0}}^2 \cdot s_{0_{i, 1}}^2$                                                                                                                                                            |

 
 