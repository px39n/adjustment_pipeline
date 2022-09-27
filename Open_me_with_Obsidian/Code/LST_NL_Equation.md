
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
   
S_L=[0.005 0.005]'*u2u("1cm");  

F_=[V^(1/3)
    V*p];
```
``````



````````ad-example
collapse: close
title: Fit theRegression like problem (x-->y)
color: 200, 200, 200
``````ad-example
collapse: close
title: Sin
color: 200, 200, 200
```
Elist=["Free_=|x [4 1]|"
    "Free_data=[1;2;3;4;]"
    "L_=|y [4 1]|"
    "L_data=[0.1;1.1;1.8;2.4]"
    "X_=|a|b|c|"
    "X_data=[3;0.3;0.1]"];
AnalyzeEList(Elist);

S_L=[2,1,4,2]'*u2u("1cm");  

F_=[a*sin(2*pi*b*x+c)];
```
``````
``````ad-example
collapse: close
title: Sin_Total_LST
color: 200, 200, 200
```
Elist=["Free_=|x [4 1]|"
    "Free_data=[1;2;3;4;]"
    "L_=|y [4 1]|"
    "L_data=[0.1;1.1;1.8;2.4]"
    "X_=|a|b|c|"
    "X_data=[3;0.3;0.1]"];
AnalyzeEList(Elist);

S_L=[2,1,4,2]'*u2u("1cm");  

F_=[y-a*sin(2*pi*b*x+c)];
```
``````
``````ad-example
collapse: close
title: Exp
color: 200, 200, 200
```
Elist=["Free_=|x [4 1]|"
    "Free_data=[1;2;3;4;]"
    "L_=|y [4 1]|"
    "L_data=[0.1;1.1;1.8;2.4]"
    "X_=|a|b|c|"
    "X_data=[3;0.3;0.1]"];
AnalyzeEList(Elist);

S_L=[2,1,4,2]'*u2u("1cm");  

F_=[a*exp(b*x)+c];
```
``````
``````ad-example
collapse: close
title: Exp_Total_LST
color: 200, 200, 200
```
Elist=["Free_=|x [4 1]|"
    "Free_data=[1;2;3;4;]"
    "L_=|y [4 1]|"
    "L_data=[0.1;1.1;1.8;2.4]"
    "X_=|a|b|c|"
    "X_data=[3;0.3;0.1]"];
AnalyzeEList(Elist);

S_L=[2,1,4,2]'*u2u("1cm");  

F_=[y-a*exp(b*x)+c];
```
``````
``````ad-example
collapse: close
title: Linear 
color: 200, 200, 200
```
Elist=["Free_=|x [4 1]|"
    "Free_data=[1;2;3;4;]"
    "L_=|y [4 1]|"
    "L_data=[0.1;1.1;1.8;2.4]"
    "X_=|a b|"
    "X_data=[1;0]"];
AnalyzeEList(Elist)

S_L=[2,1,4,2,2,1,4,2]'*u2u("1cm");  

F_ =[a*x+b]; 

```
``````


``````ad-example
collapse: close
title: Linear_Total_LST
color: 200, 200, 200
```
Elist=["Free_=||"
    "Free_data=[ ]"
    "L_=|x [4 1]|y [4 1]|"
    "L_data=[1;2;3;4;0.1;1.1;1.8;2.4]"
    "X_=|a b|"
    "X_data=[1;0]"];
AnalyzeEList(Elist)

S_L=[2,1,4,2,2,1,4,2]'*u2u("1cm");  

F_ =[y-a*x-b]; 

```
``````

``````ad-example
collapse: close
title: From File
color: 200, 200, 200
```
addpath Semester_2nd_data\
  
Elist=["Free_=|Ext('8series2_1.txt','xa','1st')|Ext('8series2_2.txt','xb','1st')|"
    "Free_data=[Ext('8series2_1.txt','xa','1st');Ext('8series2_2.txt','xb','1st')]"
    "L_=|Ext('8series2_1.txt','ya','2st')|Ext('8series2_2.txt','yb','2st')|"
    "L_data=[Ext('8series2_1.txt','ya','2st');Ext('8series2_2.txt','yb','2st')]"
    "X_=|a|b|"
    "X_data=[3;0.3]"];
AnalyzeEList(Elist);
% Stochastic

VCE_CONFIG=true;
[Var_ind,Var_name]=findVar();
S_L=expand_V(ones(size(L_)),Var_ind,u2u("1m 1m")); 

% Function
F_=[a*xa+b;
    a*xb+b];
```
``````
````````
## API
![[2. Customized LST Pipeline#2 Formula QXX]]
 