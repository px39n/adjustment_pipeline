
- 正如波粒二象性，
- 世界是按**随机规律生成的**[[#Variable]] ，这个规律我们称之为==Theoretical==，代表对variable的真计算约束。
- 而我们**只能通过统计信息还原**, 这个统计信息称之为==Empirical==，代表的variable的统计计算约束。
So统计学：==Empirical== -->==（能否?）估计==-->==Theoretical==



#  Variable

```ad-example
collapse: close
title: Variable and Observation Terms
color: 200, 200, 200

**Basic** 

|                            |     |                       |      |                    |     |
| -------------------------- | --- | --------------------- | ---- | ------------------ | --- |
| [[Statistical population]] |  has   | [[Random Variable X]] | ∈    | [[Sample Space w]] |     |
| \|                         |     | \|                    |      |                    |     |
| >=                         |     | realization           |      |                    |     |
| \|                         |     | \|                    |      |                    |     |
| [[Sample n]]               |  has   | [[L,l]]               | ∈| [[Sample Space w]]                 |     |
|                            |     |                       |      |                    |     |


|            | [[δ,Δ]] | +                    | [[ε,ε]]        | =[[η,η]] | [[V,v]] |            |
| ---------- | ------- | -------------------- | -------------- | -------- | ------- | ---------- |
| [[L~, l~]] |         |                      |                |          |         |            |
| [[L~, l~]] |         | [[eμ,μ]]             | <-[[eμ,μ#Est]] | unbias   | <---    |            |
| [[L~, l~]] | --->    | [[eμ,μ]]             | --->           | [[L,l]]  |         |            |
| [[L~, l~]] | --->    | [[eμ,μ]]             | --->           | [[L,l]]  | --->    | [[el-,l-]] |
|            |         | [[eμ,μ#Connect]]  \| |                | \|       |         |            |
|   [[Normal Distribution]]         |   <---      | <---                 | [[Σσ, Ss]]     |          |         |            |
|            |         |                      | \|             | [[ρ]]    |         |            |
|            |         |                      | [[Σσ, Ss#VCM]] | <---     |         |            |
|            |         |                      |                |          |         |            |

```
  

```ad-example
collapse: close
title:  Error Type
color: 200, 200, 200



| Type        | Define           | Elimination             | Example                  |
| ----------- | ---------------- | ----------------------- | ------------------------ |
| [[Blunder]] | Gross   obvious  | check                   | misreading, misidentify  |
| [[δ,Δ]]     | same sense       | calibration,math compen | instrument,envi          |
| [[ε,ε]]     | small,elementary | adjustment              | limited instru and human |

 

| Type          | Define | Math |
| ------------- | ------ | ---- |
| [[Precision]] | Gross  | SD   |
| [[Accuracy]]  | SD     |      |
| [[Discrete]]  |        |      |
| [[Continous]] |        |      |


```
  
 

 
 








# Statistic Value


| Statistic Value | Theoretical            | Empirical            | 举例           | n-->无数 估计                           |
| --------------- | ---------------------- | -------------------- | -------------- | --------------------------------------- |
| 均值            | [[eμ,μ]]               | [[el-,l-]]           | 打靶的中心点   | 无偏估计                                |
| 方差            | [[Σσ, Ss#Theoretical]] | [[Σσ, Ss#Empirical]] | 打靶的偏移程度 | +1自由度 无偏估计,因为均值算是一个datum |
| 标准差          | [[Σσ, Ss#Theorical]]   | [[Σσ, Ss#Empirical]] | 打靶的偏移程度 | sqrt收敛程度会改变，因此不是无偏估计。  |


# Distribution

##  什么是分布？ 

出现结果的==缩放后==的直方图分布！！！
[[PDF f(X)]]代表频数缩放到频率层面的直方图分布， 更多密度函数的形式See [[#Function]]

![[PDF f(X)#Abstract]]   
![[PDF f(X)#Example]]

## 什么是置信区间？
![[Confidence Interval#Abstract]]

![[Confidence Interval#Example]]

## 什么是Statistic Test

![[Statistical Test#Abstract]]

 
## Function

|          | Event, [[L,l]]    | [[FF]]                | n-->∞ | [[PMF P(x)]]          | Δ->dx | [[PDF f(X)]]            | integral | [[CDF F(x)]]            |
| -------- | ----------------- | --------------------- | ----- | --------------------- | ----- | ----------------------- | -------- | ----------------------- |
| 简介     | 变量              | 直方图--频数X变量     |       | 直方图--频率X变量     |       | 频率密度X变量           |          |      频率密度的和X变量                    |
| Equation |                   | [[FF#Eqa]]            |       | [[PMF P(x)#Eqa]]      |       | [[PDF f(X)#Eqa]]        |          |                         |
| Left     | Variable, [[L,l]] | Frequency             |       | probability           |       | probability Density     |          | probability             |
| Right    |                   | l/x/z(Event,discrete) |       | l/x/z(Event,discrete) |       | l/x/z(Event,countinous) |          | l/x/z(Event,countinous) |


