#### Define
with element

as known
$E\left(\varepsilon_{1} \cdot \varepsilon_{2}\right)=\lim _{n \rightarrow \infty}\left\{\frac{1}{n} \cdot \sum_{j=1}^{n} \varepsilon_{1 j} \cdot \varepsilon_{2 j}\right\}=\sigma_{12}$
$\sigma_{12}=\sigma_{21}$

as unknown
$s_{12}=\frac{1}{(n-1)} \cdot \sum_{j=1}^{n} v_{1 j} \cdot v_{2 j}$


with vector 

$\mathbf{S}_{l l}=\frac{\boldsymbol{\varepsilon}^{\mathrm{T}} \boldsymbol{\varepsilon}}{n}=\frac{1}{n} \cdot\left[\sum_{j=1}^{n} \varepsilon_{1 j}^{2} \sum_{j=1}^{n} \varepsilon_{1 j} \cdot \varepsilon_{2 j}\right]$

as unknown

$\mathbf{S}_{l l}=\frac{\mathbf{v}^{\mathrm{T}} \mathbf{v}}{n-1}=\frac{1}{n-1} \cdot\left[\begin{array}{cc}\sum_{j=1}^{n} v_{1 j}^{2} & \sum_{j=1}^{n} v_{1 j} \cdot v_{2 j} \\ \sum_{j=1}^{n} v_{1 j} \cdot v_{2 j} & \sum_{j=1}^{n} v_{2 j}^{2}\end{array}\right]$


#### Example
[[Example]]

#### Code

General Tool/lib/Probability/Distribution.Covariance
 





