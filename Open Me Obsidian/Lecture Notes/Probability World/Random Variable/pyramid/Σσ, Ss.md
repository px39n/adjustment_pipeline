Variance‐Covariance Matrix

### Define 
#### Theorical 
$\Sigma_{l l}$
$\sigma_{l}^{2}=E\left(\varepsilon^{2}\right)=\lim _{n \rightarrow \infty}\left\{\frac{1}{n} \sum_{j=1}^{n} \varepsilon_{j}^{2}\right\}=\lim _{n \rightarrow \infty}\left\{\frac{1}{n} \cdot \varepsilon^{\mathrm{T}} \cdot \varepsilon\right\}$
#### Empirical 
$\mathrm{S}_{l l}$

**known** same
unknow
$s_{l}^{2}=\frac{v_{1}^{2}+v_{2}^{2}+\ldots+v_{n}^{2}}{\frac{(n-1)}{f}}=\frac{1}{(n-1)} \sum_{i=1}^{n} v_{i}^{2}=\frac{1}{n-1} v^{\mathrm{T}} \cdot \mathbf{V}$



#### Est
σ^2=E(S^2)
$E\left(s_{l}\right) \neq \sigma_{l}$


#### VCM
$$
V_{c m}=E\left(\varepsilon_{i} \cdot \varepsilon_{j}\right)=\left[\begin{array}{ll}
\sigma_{1}^{2} & \sigma_{1 j} \\
\sigma_{i 1} & \sigma_{i j}
\end{array}\right]
$$
$\mathbf{S}_{L L_{2 \times 2}}=\frac{1}{n} \cdot \boldsymbol{\varepsilon}_{L_{2 \times n}}^{\mathrm{T}} \cdot \boldsymbol{\varepsilon}_{L_{n \times 2}}=\frac{1}{n} \cdot\left[\begin{array}{cc}\sum_{j=1}^{n} \varepsilon_{1 j}^{2} & \sum_{j=1}^{n} \varepsilon_{1 j} \cdot \varepsilon_{2 j} \\ \sum_{j=1}^{n} \varepsilon_{2 j} \cdot \varepsilon_{1 j} & \sum_{j=1}^{n} \varepsilon_{2 j}^{2}\end{array}\right]$
$\mathbf{S}_{L L_{2 \times 2}}=\frac{1}{(n-1)} \cdot \mathbf{v}_{2 \times n}^{\mathrm{T}} \cdot \mathbf{v}_{n \times 2}=\left[\begin{array}{ll}s_{1}^{2} & s_{12} \\ s_{21} & s_{2}^{2}\end{array}\right]$

#### Question
define, how to unbias estimate
How to estimate SD, unbias? theory and empirical