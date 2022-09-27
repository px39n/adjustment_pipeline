## BS
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


## Cons
``````ad-example
collapse: close
title: Level 
color: 200, 200, 200
```
Elist=["Free_=||"
    "Free_data=[]"
    "L_=|Ext('4dis1.txt','DIS','DIS')|"
    "L_data=[Ext('4dis1.txt','DIS','DIS')]"
    "X_=|H [4 1]|"
    "X_data=[0;0;0;0]"
    "LB_=|cons |"
    "LB_data=[0]"   
    
    ];
AnalyzeEList(Elist);

% Stochastic
[Var_ind,Var_name]=findVar();
S_L=expand_V(ones(size(L_)),Var_ind,u2u("1m"));  

% Function
F_=[Get_Funlist(DIS,['H'],'H')];
FB_=[sum(X_)];

list_info=definedatum("H",[1,2],"norm");  % decide if B are pratial
cons_info=add_constraint("B",FB_);
%cons_info=add_constraint("G",FB_);
%cons_info=add_constraint("fullrank",FB_); 
 
```
``````








![[LST Example Code#2 Formula QXX]]