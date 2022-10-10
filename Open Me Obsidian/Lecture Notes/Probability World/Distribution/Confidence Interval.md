 
## Abstract

[[PDF f(X)]](可以被参数代表) n -->f   的无偏估计(Empirical --> theoretical ):
即给定概率下 估计theoretical 的取值范围
 
 
## Example


| Statistic Value | 标准分布模型 f(T)                                              | L-->T (Statistic Test Value / 映射到标准分布的X投影)               |  theoretical估计: n -->f   (又叫置信区间：给定概率下 theoretical 的取值范围)                                                                                                                                                                      |
| --------------- | -------------------------------------------------------------- | ------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 单一随机值**x**            | f<sub></sub>(T)概率呈[[Normal Distribution]] with x-           | $$T_{t}=\frac{abs(\bar{x}-\mu)}{\sigma_{0}}$$                      | $\bar{x}-t \sigma \leq \mu \leq \bar{x}+t \sigma$                                                                                                                                      |
| 正态随机的平均数**x**           | f<sub>n</sub>(T)概率呈[[t Distribution]] with s, x-, f         | $$T_{t}=\frac{abs(\mu-\bar{x})}{s_{0}}$$                           | $P\left(\bar{x}-t_{f, \frac{\alpha}{2}} \cdot s \leq \mu \leq \bar{x}+t_{f, \frac{\alpha}{2}} \cdot s\right)$                                                                          |
| 正态随机的方差s01            | f<sub>n</sub>(T)概率呈[[Cai Distribution]] with  s, x-, f      | $$T_{\chi^{2}}=\frac{f \cdot s_{01}^{2}}{\sigma^{2}}$$             | $s \cdot \sqrt{\frac{f}{\chi_{f, \frac{\alpha}{2}}^{2}}} \leq \sigma \leq s \cdot \sqrt{\frac{f}{\chi_{f, 1-\frac{\alpha}{2}}^{2}}}$                                                   |
| 正态随机的方差s02           | f<sub>m</sub>(T)概率呈[[Cai Distribution]] with s, x-, f       | $$T_{\chi^{2}}=\frac{f \cdot s_{02}^{2}}{\sigma^{2}}$$             | $s \cdot \sqrt{\frac{f}{\chi_{f, \frac{\alpha}{2}}^{2}}} \leq \sigma \leq s \cdot \sqrt{\frac{f}{\chi_{f, 1-\frac{\alpha}{2}}^{2}}}$                                                   |
| 两个正态随机的方差之比s01/s02     | f<sub>m, n</sub>(T)概率呈[[F Distribution]] with s1,s2, f1, f2 | $$F_{f_1, f_2}=\frac{\sigma_2^2}{\sigma_1^2} \frac{s_1^2}{s_2^2}$$ | $\frac{s_{1}}{s_{2}} \sqrt{\frac{1}{F_{f_{1}, f_{2}, 1-\frac{\alpha}{2}}}} \leq q(\sigma_{1}/\sigma_{2}) \leq \frac{s_{1}}{s_{2}} \sqrt{\frac{1}{F_{f_{1}, f_{2}, \frac{\alpha}{2}}}}$ |
|                 |                                                                |                                                                    |                                                                                                                                                                                        |




## Other

假设我们在打靶，存在一个我们水平的Central Tendency值为7环，给定概率射中 95%(则α=5%)，可以画出来则[[Confidence Interval]]在6-9环

置信函数 :  （概率，实际参数）---> 置信区间 是由以下两步骤完成的:
1. 置信表格  : （概率）---> 理想参数下的标准置信区间
2. 置信转换(T==>L) :   (标准置信区间/t， 实际参数 ) --->  实际置信区间    
