[[Design Matrix#Non Linear]]

## Eq 
$\frac{\partial 0}{\partial a}=0$
 
## Lr
$\mathbf{N} \hat{\mathbf{X}}=\mathbf{n}$

## GM
$\mathbf{l}=\mathbf{L}-\boldsymbol{\phi}\left(\mathbf{X}^0\right)$
$\mathbf{N} \hat{\mathbf{x}}=\mathbf{n}$
$\mathbf{N}=\mathbf{A}^{\mathrm{T}} \mathbf{P} \mathbf{A}$
$\mathbf{n}=\mathbf{A}^{\mathrm{T}} \mathbf{P} \mathbf{~} \mathbf{l}$
$\hat{\mathbf{x}}=\mathbf{N}^{-1} \mathbf{n}$
 
## full
$\mathbf{l}=\mathbf{L}-\boldsymbol{\phi}\left(\mathbf{X}^0\right)$
$\boldsymbol{w}=\boldsymbol{\phi}_B\left(\mathbf{X}^0\right)-\mathbf{c}$
$\left[\begin{array}{c:c}\mathbf{A}^{\mathrm{T}} \mathbf{P} \mathbf{A} & \mathbf{B}^{\mathrm{T}} \\ \hdashline \mathbf{B} & \mathbf{0}\end{array}\right] \cdot\left[\begin{array}{c}\hat{\mathbf{x}} \\ \hdashline \mathbf{k}\end{array}\right]=\left[\begin{array}{c}\mathbf{A}^{\mathrm{T}} \mathbf{P} \mathbf{l} \\ \hdashline-\mathbf{W}\end{array}\right]$
$\left[\begin{array}{c}\hat{\mathbf{x}} \\ \hdashline \mathbf{K}\end{array}\right]=\left[\begin{array}{c:c}\mathbf{A}^{\mathrm{T}} \mathbf{P A} & \mathbf{B}^{\mathrm{T}} \\ \hdashline \mathbf{B} & \mathbf{0}\end{array}\right]^{-1}\left[\begin{array}{c}\mathbf{A}^{\mathrm{T}} \mathbf{P} \\ \hdashline-\mathbf{W}\end{array}\right]$




## Def
$\mathbf{l}=\mathbf{L}-\boldsymbol{\phi}\left(\mathbf{X}^0\right)$
$\left[\begin{array}{c:c}\mathbf{A}^{\mathrm{T}} \mathbf{P} \mathbf{A} & \mathbf{B}^{\mathrm{T}} \\ \hdashline \mathbf{B} & \mathbf{0}\end{array}\right] \cdot\left[\begin{array}{c}\hat{\mathbf{x}} \\ \hdashline \mathbf{k}\end{array}\right]=\left[\begin{array}{c}\mathbf{A}^{\mathrm{T}} \mathbf{P} \mathbf{l} \\ \hdashline \mathbf{0}\end{array}\right]$
$\left[\begin{array}{c}\hat{\mathbf{x}} \\ \hdashline \mathbf{K}\end{array}\right]=\left[\begin{array}{c:c}\mathbf{A}^{\mathrm{T}} \mathbf{P A} & \mathbf{B}^{\mathrm{T}} \\ \hdashline \mathbf{B} & \mathbf{0}\end{array}\right]^{-1}\left[\begin{array}{c}\mathbf{A}^{\mathrm{T}} \mathbf{P} \\ \hdashline \mathbf{0}\end{array}\right]$

 
 
## S
$\mathbf{S}_i \mathbf{x}_k=\mathbf{x}_i$

## S_solve

$\mathbf{S}_i=\mathbf{I}-\mathbf{G}\left(\mathbf{B}_i{ }^{\mathrm{T}} \mathbf{G}\right)^{-1} \mathbf{B}_i^{\mathrm{T}}$

G before, Bi new datum

## GH
B=J2  C=constraint
$\mathbf{w}_1=-\mathbf{B} \mathbf{v}^0+\boldsymbol{\Psi}\left(\mathbf{v}^0, \mathbf{x}^0\right)-\mathbf{c}_{\mathbf{1}}$
 
$\left[\begin{array}{cc}\mathbf{B Q}_{l l} \mathbf{B}^{\mathrm{T}} & \mathbf{A} \\ \mathbf{A}^{\mathrm{T}} & \mathbf{0}\end{array}\right]\left[\begin{array}{c}\mathbf{k} \\ \hat{\mathbf{x}} \end{array}\right]+\left[\begin{array}{c}\mathbf{w} \\ \mathbf{0}\end{array}\right]=\mathbf{0}$

$\begin{aligned} {\left[\begin{array}{c}\mathbf{k} \\  \hat{\mathbf{x}} \end{array}\right] } &=\left[\begin{array}{cc}\mathbf{B Q}_{l l} \mathbf{B}^{\mathrm{T}} & \mathbf{A} \\ \mathbf{A}^{\mathrm{T}} & \mathbf{0}\end{array}\right]^{-1}\left[\begin{array}{r}-\mathbf{w} \\ \mathbf{0}\end{array}\right] \\ &=\left[\begin{array}{ll}\mathbf{Q}_{11} & \mathbf{Q}_{12} \\ \mathbf{Q}_{21} & \mathbf{Q}_{22}\end{array}\right]\left[\begin{array}{r}-\mathbf{w} \\ \mathbf{0}\end{array}\right] \end{aligned}$

## GH-Con
B=J2  C=constraint
$\mathbf{w}_1=-\mathbf{B} \mathbf{v}^0+\boldsymbol{\Psi}\left(\mathbf{v}^0, \mathbf{x}^0\right)-\mathbf{c}_{\mathbf{1}}$
$\mathbf{w}_2=\boldsymbol{\gamma}\left(\mathbf{x}^0\right)-\mathbf{c}_2$

$\left[\begin{array}{cc}-\mathbf{A}^{\mathrm{T}}\left(\mathbf{B Q}_{l l} \mathbf{B}^{\mathrm{T}}\right)^{-1} \mathbf{A} & \mathbf{C}^{\mathrm{T}} \\ \mathbf{C} & \mathbf{0}\end{array}\right]\left[\begin{array}{c}\hat{\mathbf{x}} \\ \mathbf{k}_2\end{array}\right]=\left[\begin{array}{c}\mathbf{A}^{\mathrm{T}}\left(\mathbf{B}_{u l} \mathbf{B}^{\mathrm{T}}\right)^{-1} \mathbf{w}_1 \\ -\mathbf{w}_2\end{array}\right]$

$\left[\begin{array}{c} \hat{\mathbf{x}} \\ k\end{array}\right]=\left[\begin{array}{cc}-\mathbf{A}^{\mathrm{T}}\left(\mathbf{B} \mathbf{Q}_{l l} \mathbf{B}^{\mathrm{T}}\right)^{-1} \mathbf{A} & \mathbf{C}^{\mathrm{T}} \\ \mathbf{C} & \mathbf{0}\end{array}\right]^{-1}\left[\begin{array}{c}\mathbf{A}^{\mathrm{T}}\left(\mathbf{B}_{l l} \mathbf{B}^{\mathrm{T}}\right)^{-1} \mathbf{w}_1 \\ -\mathbf{w}_2\end{array}\right]$