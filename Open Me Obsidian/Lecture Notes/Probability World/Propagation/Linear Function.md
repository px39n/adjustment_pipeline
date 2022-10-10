#### Define

with

$\mathbf{f}_{u \times 1}=\mathbf{F}_{u \times n} \cdot \mathbf{l}_{n \times 1}$

#Code 

F= Design Matrix


#### Propagation

$\mathbf{\eta}_{f_{u \times 1}}=\mathbf{F}_{u \times n} \cdot \mathbf{\eta}_{l_{n \times 1}}$

$\boldsymbol{\varepsilon}_{f_{u \times 1}}=\mathbf{F}_{u \times n} \cdot \boldsymbol{\varepsilon}_{l_{n \times 1}}$

$\Delta_{f_{u \times 1}}=\mathbf{F}_{u \times 1} \cdot \Delta_{l_{n \times 1}}$

$\boldsymbol{\Sigma}_{f f_{u \times u}}=\mathbf{F}_{u \times n} \cdot \boldsymbol{\Sigma}_{L L_{n \times n}} \cdot \mathbf{F}_{n \times u}^{\mathrm{T}}$