## Abstract
比较Empirical 和 Theoretical 估计是否合理

| Empirical                                       | Theoretical                                          | 概率       | 如果Within     | 如果之外  |
| ----------------------------------------------- | ---------------------------------------------------- | ---------- | -------------- | --------- |
| 变量                                            | Theoretical估计出的Empirical [[Confidence Interval]] | ![[#Prob]] | Fail to Reject | Reject H0 |
| statistics Value:[[#Projected]]  to Theoretical | 原始[[Confidence Interval]]                          | ^^         | ^^             | ^^        |

## Projected

| Statistic Value               | 标准分布模型 f(T)                                              | L-->T (Statistic Test Value / 映射到标准分布的X投影)               |
| ----------------------------- | -------------------------------------------------------------- | ------------------------------------------------------------------ |
| 单一随机值**x**               | f<sub></sub>(T)概率呈[[Normal Distribution]] with x-           | $$T_{t}=\frac{abs(\bar{x}-\mu)}{\sigma_{0}}$$                      |
| 正态随机的平均数**x**         | f<sub>n</sub>(T)概率呈[[t Distribution]] with s, x-, f         | $$T_{t}=\frac{abs(\mu-\bar{x})}{s_{0}}$$                           |
| 正态随机的方差s01             | f<sub>n</sub>(T)概率呈[[Cai Distribution]] with  s, x-, f      | $$T_{\chi^{2}}=\frac{f \cdot s_{01}^{2}}{\sigma^{2}}$$             |
| 正态随机的方差s02             | f<sub>m</sub>(T)概率呈[[Cai Distribution]] with s, x-, f       | $$T_{\chi^{2}}=\frac{f \cdot s_{02}^{2}}{\sigma^{2}}$$             |
| 两个正态随机的方差之比s01/s02 | f<sub>m, n</sub>(T)概率呈[[F Distribution]] with s1,s2, f1, f2 | $$F_{f_1, f_2}=\frac{\sigma_2^2}{\sigma_1^2} \frac{s_1^2}{s_2^2}$$ |
|                               |                                                                |                                                                    |





## Prob
One side: 
a=5 s=95 in lecture  0.95 in matlab
a=10 s=90 in my code
Two side:
a=5 s=95 in lecture  0.975 in matlab
a=5 s=95 in my code
