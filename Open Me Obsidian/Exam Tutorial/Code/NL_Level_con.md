## def constraint
```
Elist=["Free_=| |"
    "Free_data=[ ]"
    "L_=|Ext('level_dis.txt','DIS','DIS')|"
    "L_data=[Ext('level_dis.txt','DIS','DIS')]"
    "X_=|H1 H2 H3 H100 H200|"
    "X_data=[100;100;100;100;100]"
    "LB_=|cons |"
    "LB_data=[0]"   
    
    ];
AnalyzeEList(Elist);

% Stochastic
[Var_ind,Var_name]=findVar();
S_L=expand_V(ones(size(L_)),Var_ind,u2u("1m"));  

% Function
dash=Get_Funlist(DIS,['H'],'dash');
F_=[Get_Funlist(DIS,['H'],'H')] ;
 
FB_=[sum(X_)
    ];

%list_info=definedatum("H","ALL","norm");  % decide if B are pratial
%cons_info=add_constraint("B",FB_);
%cons_info=add_constraint("G",FB_);
cons_info=add_constraint("fullrank",FB_); 
```




![[2. Customized LST Pipeline#2 Formula QXX]]
![[2. Customized LST Pipeline#4 Formula Constraint]]