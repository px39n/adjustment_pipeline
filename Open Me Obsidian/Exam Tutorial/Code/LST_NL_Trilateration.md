 
## Template
``````ad-example
collapse: close
title: Trilateration
color: 200, 200, 200
```
Elist=["Free_=|Ext('trila_fix.txt','y:x','PTYX')|"
    "Free_data=[Ext('trila_fix.txt','y:x','PTYX')]"
    "L_=|Ext('trila_dis.txt','D','DIS')|"
    "L_data=[Ext('trila_dis.txt','D','DIS')]"
    "X_=|y100|x100|"
    "X_data=[6861.3;3727.8]"];
AnalyzeEList(Elist)

s_dis = ppm(D_data,1,2);  
S_L=s_dis*u2u("1m");

F_ = [Get_Funlist(D,["x","y"],"DIS")]; 

```

``````

``````ad-example
collapse: close
title:   with Constraint B
color: 200, 200, 200
```
Elist=["Free_=|Ext('trila_fix.txt','y:x','PTYX')|"
    "Free_data=[Ext('trila_fix.txt','y:x','PTYX')]"
    "L_=|Ext('trila_dis.txt','DIS','DIS')|"
    "L_data=[Ext('trila_dis.txt','DIS','DIS')]"
    "X_=|Ext('trila_fix.txt','y:x','PTYX')|"
    "X_data=[Ext('trila_fix.txt','y:x','PTYX')];
    "LB_=|cons|"
    "LB_data=[0]"];
    
AnalyzeEList(Elist)

[Var_ind,Var_name]=findVar();
S_L=expand_V(ones(size(L_)),Var_ind,u2u("1cm"));  

F_ = [Get_Funlist(DIS,["x","y"],"DIS")]; 

FB_=[sum(y);sum(x);xyRotation(y,x)];
list_info=definedatum("y:x",[1 3],"norm");  % When G,B are used. "ALL" or [1,2]
cons_info=add_constraint("B",FB_);
```
``````

``````ad-example
collapse: close
title:   with Constraint G
color: 200, 200, 200
```
Elist=["Free_=|Ext('trila_fix.txt','y:x','PTYX')|"
    "Free_data=[Ext('trila_fix.txt','y:x','PTYX')]"
    "L_=|Ext('trila_dis.txt','DIS','DIS')|"
    "L_data=[Ext('trila_dis.txt','DIS','DIS')]"
    "X_=|Ext('trila_fix.txt','y:x','PTYX')|"
    "X_data=[Ext('trila_fix.txt','y:x','PTYX')];
    "LB_=|cons|"
    "LB_data=[0]" 
    ];
    
AnalyzeEList(Elist)

[Var_ind,Var_name]=findVar();
S_L=expand_V(ones(size(L_)),Var_ind,u2u("1cm"));  

F_ = [Get_Funlist(DIS,["x","y"],"DIS")]; 

FB_=[sum(y);sum(x);xyRotation(y,x)];
list_info=definedatum("h","ALL","norm");  % When G,B are used. "ALL" or [1,2]
cons_info=add_constraint("G",FB_);

```
``````

``````ad-example
collapse: close
title:   with Constraint full rank
color: 200, 200, 200
```
Elist=["Free_=|Ext('trila_fix.txt','y:x','PTYX')|"
    "Free_data=[Ext('trila_fix.txt','y:x','PTYX')]"
    "L_=|Ext('trila_dis.txt','DIS','DIS')|"
    "L_data=[Ext('trila_dis.txt','DIS','DIS')]"
    "X_=|Ext('trila_fix.txt','y:x','PTYX')|"
    "X_data=[Ext('trila_fix.txt','y:x','PTYX')];
    "LB_=|cons|"
    "LB_data=[0]" 
    ];
    
AnalyzeEList(Elist)

[Var_ind,Var_name]=findVar();
S_L=expand_V(ones(size(L_)),Var_ind,u2u("1cm"));  

F_ = [Get_Funlist(DIS,["x","y"],"DIS")]; 

FB_=[sum(y);sum(x);xyRotation(y,x)];
cons_info=add_constraint("fullrank",FB_); 

 
```
``````




![[2. Customized LST Pipeline#2 Formula QXX]]
 