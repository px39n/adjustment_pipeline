### Simple Euqation
```matlab
Elist=["Free_=||"
    "Free_data=[]"
    "L_=|L [3 1]|"
    "L_data=[3;1.5;0.2]"
    "X_=|x|y|"
    "X_data=[1.5;1.5]"
    "LB_=|cons|"
    "LB_data=[0]"
    ];
AnalyzeEList(Elist);
% Stochastic
s_dis=[4;2;1]*0.01;       
S_LL = diag([s_dis;].^2);
% Function
dash=0;
L_dash_=L_+dash;
F_=[x+y
    2*x-y
    x-y]+dash;
FB_=[0.9*x-y];


```


### Triangulation
```matlab
Elist=["Free_=|Ext('12fix.txt','y:x','PTYX')|"
    "Free_data=[Ext('12fix.txt','y:x','PTYX');]"
    "L_=|Ext('12dir.txt','DIR','DIR')|"
    "L_data=[u2u(Ext('12dir.txt','DIR','DIR'),'gon')]"
    "X_=|y3|x3|w3|"
    "X_data=[493.7;242.9;4.21]"
    "LB_=|cons|"
    "LB_data=[25]"
    ];
AnalyzeEList(Elist);
[L_i,X_i]=findDIR();

s_dir=u2u(ones(5,1),'mgon');  
S_LL = diag([s_dir;].^2);

dash=[0];
L_dash_=L_+dash;
F_ = [Get_Funlist(DIR,["x","y","w"],"DIR")]+dash; 
F_m=[Get_Funlist(DIR,["x","y","w"],"MDIR")]+dash; 
FB_=[Get_Dis(x3,y3,x7,y7)];


```