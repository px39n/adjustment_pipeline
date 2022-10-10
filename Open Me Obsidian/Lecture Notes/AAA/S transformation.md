Similarity Translation

## Transformation between Datum

**Given:** $\left(\mathbf{x}_{k}, \mathbf{Q}_{k}\right)$ G datum(Old) B(new)
**Wanted:** $\left(\mathbf{x}_{i}, \mathbf{Q}_{i}\right)$
$\mathbf{x}_{i}=\mathbf{S}_{i} \mathbf{x}_{k}$
$\mathbf{Q}_{i}=\mathbf{S}_{i} \mathbf{Q}_{k} \mathbf{S}_{i}^{\mathrm{T}}$
Where 
$\mathbf{S}_{i}=\mathbf{I}-\mathbf{G}\left(\mathbf{B}_{i}^{\mathrm{T}} \mathbf{G}\right)^{-1} \mathbf{B}_{i}^{\mathrm{T}}$