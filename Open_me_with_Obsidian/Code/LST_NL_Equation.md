
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
Elist=["Free_=||"
    "Free_data=[]"
    "L_=|y [4 1]|x [4 1]|"
    "L_data=[0.1;1.1;1.8;2.4;1;2;3;4;]"
    "X_=|a|b|c|"
    "X_data=[3;0.3;0.1]"];
AnalyzeEList(Elist);

S_L=[2,1,4,2,2,1,4,2]'*u2u("1cm");  

F_=[y-a*sin(2*pi*b*x+c)];
```
``````
``````ad-example
collapse: close
title: Exp
color: 200, 200, 200
```
addpath Semester_1nd_data\
Elist=["Free_=|Ext('9new2.txt','x','1st')|"
    "Free_data=[Ext('9new2.txt','x','1st')]"
    "L_=|Ext('9new2.txt','y','2st')|"
    "L_data=[Ext('9new2.txt','y','2st')]"
    "X_=|a|b|c|"
    "X_data=[2;log(2);0]"];
AnalyzeEList(Elist);
% Stochastic
S_L=ones(length(L_),1)*u2u("1m");   
% Function

F_=[a*exp(b*x)+c];
 
```
``````
``````ad-example
collapse: close
title: Exp_Total_LST
color: 200, 200, 200
```
addpath Semester_1nd_data\
Elist=["Free_=||"
    "Free_data=[]"
    "L_=|Ext('9new2.txt','y','2st')|Ext('9new2.txt','x','1st')|"
    "L_data=[Ext('9new2.txt','y','2st');Ext('9new2.txt','x','1st')]"
    "X_=|a|b|c|"
    "X_data=[2;log(2);0]"];
AnalyzeEList(Elist);
% Stochastic
S_L=ones(length(L_),1)*u2u("1m");     
% Function

F_=[y-(a*exp(b*x)+c)];
 
```
``````

``````ad-example
collapse: close
title: AX^2+BX
color: 200, 200, 200
```
Elist=["Free_=|x [5 1]|"
    "Free_data=[1:5]"
    "L_=|y [5 1]|"
    "L_data=[1.112;0.88;0.768;0.83;1.175]"
    "X_=|a|b|c|"
    "X_data=[3;0.3;0]"];
AnalyzeEList(Elist);

S_L=[1 1 1 1 1]'*u2u("2cm");  

F_=[a*x.^2+b.*x+c];

```
``````
``````ad-example
collapse: close
title: AX^2+BX TOTAL
color: 200, 200, 200
```
Elist=["Free_=||"
    "Free_data=[]"
    "L_=|y [5 1]|x [5 1]|"
    "L_data=[1.112;0.88;0.768;0.83;1.175;1;2;3;4;5]"
    "X_=|a|b|c|"
    "X_data=[3;0.3;0]"];
AnalyzeEList(Elist);

S_L=[1 1 1 1 1 1 1 1 1 1]'*u2u("2cm");  

F_=[y-(a*x.^2+b.*x+c)];
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
title: Circle_Total_LST
color: 200, 200, 200
```
 Elist=["Free_=||"
    "Free_data=[]"
    "L_=|x [4 1]|y [4 1]|"
    "L_data=[70.019;89.982;104.652;109.999;140.00;134.647;120.008;99.982]"
    "X_=|rx ry radius|"
    "X_data=[3;0.3;1]"];
AnalyzeEList(Elist)
 
[Var_ind,Var_name]=findVar()
S_L=expand_V(ones(size(L_)),Var_ind, u2u("1m 1m"));  

F_ =[(y-ry).^2+(x-rx).^2-radius^2]; 

```
``````

``````ad-example
collapse: close
title: Plane_Total_LST
color: 200, 200, 200
```
 Elist=["Free_=||"
    "Free_data=[]"
    "L_=|x [4 1]|y [4 1]|"
    "L_data=[70.019;89.982;104.652;109.999;140.00;134.647;120.008;99.982]"
    "X_=|rx ry radius|"
    "X_data=[3;0.3;1]"];
AnalyzeEList(Elist)
 
[Var_ind,Var_name]=findVar()
S_L=expand_V(ones(size(L_)),Var_ind, u2u("1m 1m"));  

F_ =[(y-ry).^2+(x-rx).^2-radius^2]; 

```
``````


``````ad-example
collapse: close
title: From File
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
title: From File Total
color: 200, 200, 200
```
Elist=["Free_=||"
    "Free_data=[]"
    "L_=|Ext('Fitxy_Sin.txt','y','2st')|Ext('Fitxy_Sin.txt','x','1st')|"
    "L_data=[Ext('Fitxy_Sin.txt','y','2st');Ext('Fitxy_Sin.txt','x','1st')]"
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
````````
## API
![[2. Customized LST Pipeline#2 Formula QXX]]
