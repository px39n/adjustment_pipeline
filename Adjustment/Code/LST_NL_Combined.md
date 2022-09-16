## Bas
``````ad-example
collapse: close
title: Combined 
color: 200, 200, 200
```
Elist=["Free_=|Ext('Comb_fix.txt','y:x','PTYX')|"
    "Free_data=[Ext('Comb_fix.txt','y:x','PTYX');]"
    "L_=|Ext('Comb_dir.txt','DIR','DIR')|Ext('Comb_dis.txt','DIS','DIS')|"
    "L_data=[u2u('1gon')*Ext('Comb_dir.txt','DIR','DIR');Ext('Comb_dis.txt','DIS','DIS')]"
    "X_=|Ext('Comb_new.txt','y:x','PTYX')|Ext('Comb_dir.txt','w','W')|"
    "X_data=[Ext('Comb_new.txt','y:x','PTYX');Ext('Comb_dir.txt','w','W')]"];
AnalyzeEList(Elist)

[Var_ind,Var_name]=findVar();
S_L=expand_V(ones(size(L_)),Var_ind,u2u("1mgon 1mm"));  

F_ = [Get_Funlist(DIR,{"x","y","w"},"DIR");
    Get_Funlist(DIS,{"x","y"},"DIS");
    ]; 
```
``````
## Cons
``````ad-example
collapse: close
title: Cons 
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
![[LST Example Code#4 Formula Constraint]]