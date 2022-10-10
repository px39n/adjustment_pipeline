## Lr
$S_{0}=\sqrt{\frac{\mathbf{v}^{\mathrm{T}} \mathbf{P v}}{n-u}}$

$\begin{aligned} \boldsymbol{\Sigma}_{\hat{X} \hat{X}} &=s_{0}^{2} \mathbf{Q}_{\hat{X} \hat{X}} \text { with } \mathbf{Q}_{\hat{X} \hat{X}}=\mathbf{N}^{-1} \\ \mathbf{Q}_{\hat{L} \hat{L}} &=\mathbf{A} \mathbf{Q}_{\hat{X} \hat{X}} \mathbf{A}^{\mathrm{T}} \\ \boldsymbol{\Sigma}_{\hat{L} \hat{L}} &=s_{0}^{2} \mathbf{Q}_{\hat{L} \hat{L}} \\ \mathbf{Q}_{v v} &=\mathbf{Q}_{L L}-\mathbf{Q}_{\hat{L} \hat{L}} \\ \boldsymbol{\Sigma}_{v v} &=s_{0}^{2} \mathbf{Q}_{v v} \end{aligned}$

 
## GM
$s_{0}=\sqrt{\frac{\mathbf{v}^{\mathrm{T}} \mathbf{P} \mathbf{V}}{n-u+n_{b}}}$
$\begin{aligned} \boldsymbol{\Sigma}_{\hat{X} \hat{X}} &=s_{0}^{2} \mathbf{Q}_{\hat{X} \hat{X}} \text { with } \mathbf{Q}_{\hat{X} \hat{X}}=\mathbf{N}^{-1} \\ \mathbf{Q}_{\hat{L} \hat{L}} &=\mathbf{A} \mathbf{Q}_{\hat{X} \hat{X}} \mathbf{A}^{\mathrm{T}} \\ \boldsymbol{\Sigma}_{\hat{L} \hat{L}} &=s_{0}^{2} \mathbf{Q}_{\hat{L} \hat{L}} \\ \mathbf{Q}_{v v} &=\mathbf{Q}_{L L}-\mathbf{Q}_{\hat{L} \hat{L}} \\ \boldsymbol{\Sigma}_{v v} &=s_{0}^{2} \mathbf{Q}_{v v} \end{aligned}$

## S

$\mathbf{x}_i=\mathbf{S}_i \mathbf{x}_k$
$\mathbf{Q}_i=\mathbf{S}_i \mathbf{Q}_k \mathbf{S}_i^{\mathrm{T}}$
$\mathbf{Q}_{v v}=\mathbf{Q}_{l l}-\mathbf{A} \mathbf{Q}_{\hat{x} \hat{x}} \mathbf{A}^{\mathrm{T} \mid}$
$\mathbf{V}=-\mathbf{Q}_{v v} \mathbf{P l}$
$\mathbf{Q}_{v v} \mathbf{P}=\mathbf{R}$
$\Delta \mathbf{v}=-\mathbf{R} \Delta \mathbf{l}$

R is redundancy of measurement
1 is detected, 0 is no detected.


 

## GH
$s_0^2=\frac{\mathbf{v}^{\mathrm{T}} \mathbf{P v}}{f}$
$\mathbf{Q}_{v v}=\mathbf{Q}_{1 1} \mathbf{B}^{\mathrm{T}} \mathbf{Q}_{ll} \mathbf{B} \mathbf{Q}_{l l}$
Q_LL_hat = Q_LL-Q_vv;
S_LL_hat = s_0^2\*Q_LL_hat;
S_vv = s_0^2*Q_vv; 

## GH-con
$\mathbf{Q}_{v v}=\mathbf{Q}_{l l} \mathbf{B}^{\mathrm{T}}\left(\mathbf{B} \mathbf{Q}_{l l} \mathbf{B}^{\mathrm{T}}\right)^{-1} \mathbf{B} \mathbf{Q}_{l l}$
Q_LL_hat = Q_LL-Q_vv;
S_LL_hat = s_0^2\*Q_LL_hat;
S_vv = s_0^2*Q_vv; 
