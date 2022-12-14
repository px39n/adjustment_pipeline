
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

``````ad-example
collapse: close
title: Fitting a Triangulation (Not network just geometry) 
color: 200, 200, 200
```
 Elist=["Free_=||"
    "Free_data=[]"
    "L_=|a b c A B C|"
    "L_data=[5;6;7;u2u('60gon 50gon 60gon')]"
    "X_=|Tom_liang|"  %Im nothing but a luck charm for your here dont change it!
    "X_data=[1.0]"
    ];
    
AnalyzeEList(Elist);

S_L=u2u("1cm 1cm 1cm 1gon 1gon 1gon");  

F_=[A+B+C-pi
    b*sin(A)-a*sin(B)
    a*sin(C)-c*sin(A)];
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
title: Circle_Total_LST with Polar Variance Propagation and Constraint!
color: 200, 200, 200
```

Elist=["||=[]"
    "|d [4 1]|t [4 1]|=[u2u('7.831m 10.4403m 4.4142m 7.0711m 363.5958gon 20.5547gon 250gon 109.0334gon')]"
    "|x [4 1]|y [4 1]|=[d.*cos(t);d.*sin(t)]"
    ];
S_LL=diag(u2u("1mm 1mm 1mm 1mm 1mgon 1mgon 1mgon 1mgon")).^2;  
[Temp_data,S_L] = XXX_VarPro(Elist,S_LL); %gon
clear S_LL

Elist=["Free_=||"
    "Free_data=[]"
    "L_=|x [3 1]|y [3 1]|"
    "L_data=[Temp_data(1:3);Temp_data(5:7)]"
    "X_=|rx ry radius|"
    "X_data=[3; 2; 6]"
	"LB_=|cons [1 1]|"
	"LB_data=[0]"
    ];
AnalyzeEList(Elist)
S_L=[S_L(1:3);S_L(5:7)]
F_ =[(y-ry).^2+(x-rx).^2-radius^2]; 
FB_=[(Temp_data(8)-ry).^2+(Temp_data(4)-rx).^2-radius^2]; 
cons_info=add_constraint("fullrank",FB_);


```
``````


``````ad-example
collapse: close
title: From File
color: 200, 200, 200
```
Elist=["Free_=|Ext('Fitxy.txt','x','1st')|"
    "Free_data=[Ext('Fitxy.txt','x','1st')]"
    "L_=|Ext('Fitxy.txt','y','2st')|"
    "L_data=[Ext('Fitxy.txt','y','2st')]"
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
    "L_=|Ext('Fitxy.txt','y','2st')|Ext('Fitxy.txt','x','1st')|"
    "L_data=[Ext('Fitxy.txt','y','2st');Ext('Fitxy.txt','x','1st')]"
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



````````ad-example
collapse: close
title: Fit the 2D transformation
color: 200, 200, 200

``````ad-example
collapse: close
title: From File
color: 200, 200, 200
```
addpath Function\
addpath Semester_2nd_data\

Elist=["Free_=|Ext('trans_start.txt','x:y','PTYX')|"
    "Free_data=[Ext('trans_start.txt','x:y','PTYX')]"
    "L_=|Ext('trans_end.txt','X:Y','PTYX')|"
    "L_data=[Ext('trans_end.txt','X:Y','PTYX')]"
    "X_=|m|a|xx|yy|"
    "X_data=[1.0000155;0;10.17;-6.0904]"];
AnalyzeEList(Elist);
% Stochastic
[Var_ind,Var_name]=findVar();
%S_L=expand_V(ones(size(L_)),Var_ind,u2u("1cm 1cm")); 
S_L=p2SL([10.0000 14.2857 0.8929 1.4286 7.1429 10.0000 2.2222 3.2259 7.6923 11.1111]');
% Function

F_=[m*cos(a).*x-m*sin(a)*y+xx;
    m*sin(a).*x+m*cos(a)*y+yy;
];

```
``````
``````ad-example
collapse: close
title: From File Total
color: 200, 200, 200
```
Elist=["Free_=||"
    "Free_data=[]"
    "L_=|Ext('trans_end.txt','X:Y','PTYX')|Ext('trans_start.txt','x:y','PTYX')|"
    "L_data=[Ext('trans_end.txt','X:Y','PTYX');Ext('trans_start.txt','x:y','PTYX')]"
    "X_=|m|a|xx|yy|"
    "X_data=[1;0;19;-11]"
    ];
AnalyzeEList(Elist);
% Stochastic

[Var_ind,Var_name]=findVar();
S_L=expand_V(ones(size(L_)),Var_ind,u2u("1cm 1cm 1cm 1cm")); 
% Function

F_=[X-(m*cos(a).*x-m*sin(a)*y+xx);
    Y-(m*sin(a).*x+m*cos(a)*y+yy);
];
F_=[a*sin(2*pi*b*x+c)];
```
``````
````````

``````ad-example
collapse: close
title: Fit the 3D Plane Total_LST with Constraint
color: 200, 200, 200
```
addpath Semester_2nd_data\

Elist=["Free_=||"
    "Free_data=[ ]"
    "L_=|x y z [4 1]|"
    "L_data=[-10; -1; 1;10;-15;-0.5;1.5;15;-20;-2;1;20]"
    "X_=|a b c d|"
    "X_data=[0.5774;0.5774;0.5774;0]"
	"LB_=|cons|"
	"LB_data=[1]"
    ];

AnalyzeEList(Elist)

VCE_CONFIG=false;
[Var_ind,Var_name]=findVar()
S_L=ones(12,1)*u2u("1m");  

F_ =[a*x+b*y+c*z-d]; 

FB_=[a^2+b^2+c^2];
cons_info=add_constraint("fullrank",FB_);
```
``````

``````ad-example
collapse: close
title: Two Line cross a point as constraint
color: 200, 200, 200
```
 
Elist=["Free_=|x4 y4|"
    "Free_data=[4;8 ]"
    "L_=|xa ya xb yb [3 1]|"
    "L_data=[1 ;2 ;3; 6;9;13; 4;8;9;7;5;2 ]"
    "X_=|a1 b1 a2 b2|"
    "X_data=[2;2;3;4]"
	"LB_=|cons|"
	"LB_data=[0]"
    ];

AnalyzeEList(Elist)

VCE_CONFIG=false;
[Var_ind,Var_name]=findVar()
S_L=expand_V(ones(size(L_)),Var_ind,u2u("1cm 1cm 1cm 1cm")); 

F_ =[ya-xa*a1-b1;
	yb-xb*a2-b2]; 

FB_=[y4-x4*a1-b1;
	y4-x4*a2-b2];
cons_info=add_constraint("fullrank",FB_);
```
``````


## API
![[2. Customized LST Pipeline#2 Formula QXX]]
