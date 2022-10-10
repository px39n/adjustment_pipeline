Probability Density Function

### Abstract
parameter, [[L,l]] --> 连续 [[Probability P]]

### Detailed
 
==probability vs l/x/z(Event,discrete)==

| Distribution            | Define                         | Event                         | Example                         | PDF Equation                      |
| ----------------------- | ------------------------------ | ----------------------------- | ------------------------------- | --------------------------------- |
| [[Normal Distribution]] | [[Normal Distribution#Define]] | [[Normal Distribution#Event]] | [[Normal Distribution#Example]] | [[Normal Distribution#Equation]]  |
| [[Cai Distribution]]    | [[Cai Distribution#Define]]    | [[Cai Distribution#Event]]    | [[Cai Distribution#Example]]    | [[Cai Distribution#PDF Equation]] |
| [[t Distribution]]      | [[t Distribution#Define]]      | [[t Distribution#Event]]      | [[t Distribution#Example]]      | [[t Distribution#PDF Equation]]   |
| [[F Distribution]]      | [[F Distribution#Define]]      | [[F Distribution#Event]]      | [[F Distribution#Example]]      | [[F Distribution#PDF Equation]]   |
|                         |                                |                               |                                 |                                   |



###  Eqa
$\lim _{\Delta x \rightarrow d x}\left\{\frac{p\left(x_{i}, \Delta x\right)}{\Delta x}\right\}=f(x)$
$f(x)=\frac{1}{\sigma \sqrt{2 \pi}} e^{-\frac{(x-\mu)^{2}}{2 \sigma^{2}}}$


### Figure
![|300](https://i.imgur.com/togVOsf.png)

- 面积=1
$\sum p\left(x_{i}, d x\right)=\int_{-\infty}^{+\infty} f(x) d x=1$

- 反导是[[CDF F(x)]]

$X \sim N\left(\mu, \sigma^{2}\right)$
$\lim _{\Delta x \rightarrow d x}\left\{\frac{p\left(x_{i}, \Delta x\right)}{\Delta x}\right\}=f(x)$

Integral=[[CDF F(x)]]
$F_{X}(x)=\int_{-\infty}^{x} f_{X}(t) d t$

 
### Example


| Statistic Value                                         | 模型名称 f(T)                                | 模型函数及参数            | 输出P    |
| ------------------------------------------------------- | -------------------------------------------- | ------------------------- | -------- |
| 单一随机值==**x**==                                     | f<sub></sub>(T)概率呈[[Normal Distribution]] | N(μ,σ)                    | 概率密度 |
| 正态随机的平均数==**x**==                               | f<sub>n</sub>(T)概率呈[[t Distribution]]     | $t(\bar{x},s)$            | 概率密度 |
| 正态随机的方差==s<sub>01</sub>^2==                      | f<sub>n</sub>(T)概率呈[[Cai Distribution]]   | $\chi_{f}(s)$             | 概率密度 |
| 正态随机的方差==s<sub>02</sub>^2==                      | f<sub>m</sub>(T)概率呈[[Cai Distribution]]   | $\chi_{f}(s)$             | 概率密度 |
| 两个正态随机的方差之比==s<sub>01</sub>/s<sub>02</sub>== | f<sub>m, n</sub>(T)概率呈[[F Distribution]]  | $F_{f_{1}, f_{2}}(s1,s2)$ | 概率密度 |
