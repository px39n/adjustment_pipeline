```
Elist=["Free_=|Ext('Trila_fix.txt','y:x','PTYX')|"
    "Free_data=[Ext('Trila_fix.txt','y:x','PTYX')]"
    "L_=|Ext('Trila_dis.txt','D','DIS')|"
    "L_data=[Ext('Trila_dis.txt','D','DIS')]"
    "X_=|y100|x100|"
    "X_data=[6861.3;3727.8;]"
    "LB_=|cons|"
    "LB_data=[6861.3+3727.8;]"   
    ];
AnalyzeEList(Elist)

% Stochastic
s_dis = ppm(D_data,1,2);  
S_L=s_dis*u2u("1m");

% Function
F_ = [Get_Funlist(D,["x","y"],"DIS")]; 

% Condition
FB_=[sum(X_)
    ];
list_info=definedatum("x:y","ALL");  % decide if B are pratial
cons_info=add_constraint("B",FB_);
%cons_info=add_constraint("G",FB_);
%cons_info=add_constraint("fullrank",FB_); 


```



![[LST Example Code#2 Formula QXX]]
![[LST Example Code#4 Formula Constraint]]