#### empirical standard deviation s
### Define
 
 #### Theorical (sigma)
$\sigma_{l}^{2}=E\left(\varepsilon^{2}\right)=E\left\{\left(L-\mu_{l}\right)^{2}\right\}=E\left(L^{2}\right)-\mu_{l}^{2}$


#### Empirical(s)
 
- Single Observation if known [[eμ,μ]]
$s_{l}^{2}=\frac{\varepsilon_{1}^{2}+\varepsilon_{2}^{2}+\ldots+\varepsilon_{n}^{2}}{n}=\frac{1}{n} \sum_{j=1}^{n} \varepsilon_{j}^{2}=\frac{1}{n} \varepsilon^{\mathrm{T}} \cdot \boldsymbol{\varepsilon}$
[[ε,ε]]

- Single Observation if not known [[eμ,μ]]
$s_{l}^{2}=\frac{v_{1}^{2}+v_{2}^{2}+\ldots+v_{n}^{2}}{\underbrace{(n-1)}_{f}}=\frac{1}{(n-1)} \sum_{i=1}^{n} v_{i}^{2}=\frac{1}{n-1} \mathbf{v}^{\mathrm{T}} \cdot \mathbf{v}$
[[V,v]]
（自由度n-1, 因为 mean 只和n-1不相关)

- More Observations;
$E\left(s_{l}^{2}\right)=\sigma_{l}^{2}$

- [[Σσ, Ss]] Format
$\boldsymbol{\Sigma}_{L L_{n \times n}}=\left[\begin{array}{cccc}\sigma_{l_{1}}^{2} & & & \\ & \sigma_{l_{2}}^{2} & & 0 \\ & & \ddots & \\ 0 & & & \sigma_{l_{n}}^{2}\end{array}\right]$
- Propagation VCM format


#### Propagation
[[Propagation#VCM Sigma D]]

Empirical [[SD]] of Single Observation:
$s_{l}=+\sqrt{s_{l}^{2}}$