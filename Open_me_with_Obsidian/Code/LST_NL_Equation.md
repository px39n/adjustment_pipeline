
``````ad-example
collapse: close
title: Simple 
color: 200, 200, 200
```
 Elist=["Free_=|p|"
    "Free_data=[8.93]"
    "L_=|a|m|"
    "L_data=[1.16;15.15]"
    "X_=|V|"
    "X_data=[15/9]"];
AnalyzeEList(Elist);
s_dis=0.005;       
S_LL = diag([s_dis;0.05].^2);
F_=[V^(1/3)
    V*p];
```
``````


````````ad-example
collapse: close
title: Fit the x, y data with functions
color: 200, 200, 200
``````ad-example
collapse: close
title: Sin
color: 200, 200, 200
```
Elist=["Free_=|Ext('Fitxy_Sin.txt','x','1st')|"
    "Free_data=[Ext('Fitxy_Sin.txt','x','1st')]"
    "L_=|Ext('Fitxy_Sin.txt','y','2st')|"
    "L_data=[Ext('Fitxy_Sin.txt','y','2st')]"
    "X_=|a|b|c|"
    "X_data=[3;0.3;0.1]"];
AnalyzeEList(Elist);
% Stochastic
[Var_ind,Var_name]=findVar();
S_L=expand_V(ones(size(L_)),Var_ind,u2u("0.15m")); 
% Function
F_=[a*sin(2*pi*b*x+c)];
```
``````

``````ad-example
collapse: close
title: Exp
color: 200, 200, 200
```
Elist=["Free_=|Ext('Fitxy_Exp.txt','x','1st')|"
    "Free_data=[Ext('Fitxy_Exp.txt','x','1st')]"
    "L_=|Ext('Fitxy_Exp.txt','y','2st')|"
    "L_data=[Ext('Fitxy_Exp.txt','y','2st')]"
    "X_=|a|b|c|"
    "X_data=[3;0.3;0.1]"];
AnalyzeEList(Elist);
% Stochastic
[Var_ind,Var_name]=findVar();
S_L=expand_V(ones(size(L_)),Var_ind,u2u("0.15m")); 
% Function
F_=[a*exp(b*x)+c];
```
``````
````````
## API
![[LST Example Code#2 Formula QXX]]
 