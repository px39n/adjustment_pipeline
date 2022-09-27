## Template
``````ad-example
collapse: close
title: Level 
color: 200, 200, 200
```
Elist=["Free_=|Ext('level_fix.txt','H','H')|"
    "Free_data=[Ext('level_fix.txt','H','H')]"
    "L_=|Ext('level_dis.txt','DIS','DIS')|"
    "L_data=[Ext('level_dis.txt','DIS','DIS')]"
    "X_=|H1 H2 H3|"
    "X_data=[100;100;100]"];
AnalyzeEList(Elist);

% Stochastic
[Var_ind,Var_name]=findVar();
S_L=expand_V(ones(size(L_)),Var_ind,u2u("1m"));  

% Function
dash=Get_Funlist(DIS,['H'],'dash');
F_=[Get_Funlist(DIS,['H'],'H')] ;
 
```

``````

``````ad-example
collapse: close
title: Level with Constraint B
color: 200, 200, 200
```
Elist=["Free_=| |"
    "Free_data=[ ]"
    "L_=|Ext('level_h.txt','H','LEVEL')|"
    "L_data=[Ext('level_h.txt','H','LEVEL')]"
    "X_=|Ext('level_new.txt','h','H')|"
    "X_data=[Ext('level_new.txt','h','H')]"
    "LB_=|cons|"
    "LB_data=[0]"   
    
    ];
AnalyzeEList(Elist);

% Stochastic
[Var_ind,Var_name]=findVar();
S_L=expand_V(ones(size(L_)),Var_ind,u2u("1m"));  

% Function
%dash=Get_Funlist(DIS,['H'],'dash');  %if we get fix point, pls use this
F_=[Get_Funlist(H,{'h'},'H')] ;
 
FB_=[sum(X_)
    ];

list_info=definedatum("h",[1 2],"norm");  % When G,B are used. "ALL" or [1,2]
cons_info=add_constraint("B",FB_);
 
```
``````

``````ad-example
collapse: close
title: Level with Constraint G
color: 200, 200, 200
```
Elist=["Free_=| |"
    "Free_data=[ ]"
    "L_=|Ext('level_h.txt','H','LEVEL')|"
    "L_data=[Ext('level_h.txt','H','LEVEL')]"
    "X_=|Ext('level_new.txt','h','H')|"
    "X_data=[Ext('level_new.txt','h','H')]"
    "LB_=|cons|"
    "LB_data=[0]"   
    
    ];
AnalyzeEList(Elist);

% Stochastic
[Var_ind,Var_name]=findVar();
S_L=expand_V(ones(size(L_)),Var_ind,u2u("1m"));  

% Function
%dash=Get_Funlist(DIS,['H'],'dash');  %if we get fix point, pls use this
F_=[Get_Funlist(H,{'h'},'H')] ;
 
FB_=[sum(X_)
    ];

list_info=definedatum("h","ALL","norm");  % When G,B are used. "ALL" or [1,2]
cons_info=add_constraint("G",FB_);

```
``````

``````ad-example
collapse: close
title: Level with Constraint full rank
color: 200, 200, 200
```
Elist=["Free_=| |"
    "Free_data=[ ]"
    "L_=|Ext('level_h.txt','H','LEVEL')|"
    "L_data=[Ext('level_h.txt','H','LEVEL')]"
    "X_=|Ext('level_new.txt','h','H')|"
    "X_data=[Ext('level_new.txt','h','H')]"
    "LB_=|cons|"
    "LB_data=[0]"   
    
    ];
AnalyzeEList(Elist);

% Stochastic
[Var_ind,Var_name]=findVar();
S_L=expand_V(ones(size(L_)),Var_ind,u2u("1m"));  

% Function
%dash=Get_Funlist(DIS,['H'],'dash');  %if we get fix point, pls use this
F_=[Get_Funlist(H,{'h'},'H')] ;
 
FB_=[sum(X_)
    ];
    
%cons_info=add_constraint("fullrank",FB_); 

 
```
``````



## API

![[2. Customized LST Pipeline#2 Formula QXX]]