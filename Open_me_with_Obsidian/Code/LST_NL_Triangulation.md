#### DIR

``` 
Elist=["Free_=|Ext('Trigle_fix.txt','y:x','PTYX')|"
    "Free_data=[Ext('Trigle_fix.txt','y:x','PTYX');]"
    "L_=|Ext('Trigle_dir.txt','DIR','DIR')|"
    "L_data=[u2u('1gon')*Ext('Trigle_dir.txt','DIR','DIR')]"
    "X_=|y3|x3|w3|"
    "X_data=[493.7;242.9;4.21]"];
AnalyzeEList(Elist);

[Var_ind,Var_name]=findVar();
S_L=expand_V(ones(size(L_)),Var_ind,u2u("1mgon"));  


F_ = [Get_Funlist(DIR,{"x","y","w"},"DIR")]; 

```


![[2. Customized LST Pipeline#2 Formula QXX]]
![[2. Customized LST Pipeline#4 Formula Constraint]]



#### AN 
``` 
Elist=["||=[]"
    "|Ext('Trigle_dir.txt','DIR','DIR')|=[u2u('1gon')*Ext('Trigle_dir.txt','DIR','DIR')]"
    "|Ext('Trigle_AN.txt','AN','AN')|=[Get_Funlist(AN,{'DIR'},'DIR2AN')]"
    ];
s_dir=ones(5,1)*u2u('1mgon');  
S_LL = diag([s_dir;].^2);
[L_temp,S_temp] = XXX_VarPro(Elist,S_LL);
S_LL = S_temp.^2;

Elist=["Free_=|Ext('Trigle_fix.txt','y:x','PTYX')|"
    "Free_data=[Ext('Trigle_fix.txt','y:x','PTYX');]"
    "L_=|Ext('Trigle_AN.txt','AN','AN')|"
    "L_data=[L_temp]"
    "X_=|y3|x3|"
    "X_data=[493.7;242.9]"];
AnalyzeEList(Elist);
F_ = [Get_Funlist(AN,{"x","y"},"AN")]; 


```



![[2. Customized LST Pipeline#2 Formula QXX]]
![[2. Customized LST Pipeline#4 Formula Constraint]]