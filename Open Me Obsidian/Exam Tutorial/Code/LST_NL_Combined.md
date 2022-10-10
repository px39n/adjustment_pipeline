## Template
 
``````ad-example
collapse: close
title: Combined
color: 200, 200, 200
```
Elist=["Free_=|Ext('comb_fix.txt','y:x','PTYX')|"
    "Free_data=[Ext('comb_fix.txt','y:x','PTYX');]"
    "L_=|Ext('comb_dir.txt','DIR','DIR')|Ext('comb_dis.txt','DIS','DIS')|"
    "L_data=[u2u('1gon')*Ext('comb_dir.txt','DIR','DIR');Ext('comb_dis.txt','DIS','DIS')]"
    "X_=|Ext('comb_new.txt','y:x','PTYX')|Ext('comb_dir.txt','w','W')|"
    "X_data=[Ext('comb_new.txt','y:x','PTYX');Ext('comb_dir.txt','w','W')]"];
AnalyzeEList(Elist)

[Var_ind,Var_name]=findVar();
S_L=expand_V(ones(size(L_)),Var_ind,u2u("1mgon 1mm"));  

F_ = [Get_Funlist(DIR,{"x","y","w"},"DIR");
    Get_Funlist(DIS,{"x","y"},"DIS");
    ]; 

```
``````

``````ad-example
collapse: close
title: Combined with XY as observation
color: 200, 200, 200
```
Elist=["Free_=|Ext('comb_fix.txt','y:x','PTYX')|"
    "Free_data=[Ext('comb_fix.txt','y:x','PTYX');Ext('comb_new.txt','yl:xl','PTYX')]"
    "L_=|Ext('comb_dir.txt','DIR','DIR')|Ext('comb_dis.txt','DIS','DIS')|"
    "L_data=[u2u('1gon')*Ext('comb_dir.txt','DIR','DIR');Ext('comb_dis.txt','DIS','DIS')]"
    "X_=|Ext('comb_new.txt','y:x','PTYX')|Ext('comb_dir.txt','w','W')|"
    "X_data=[Ext('comb_new.txt','y:x','PTYX');Ext('comb_dir.txt','w','W')]"];
AnalyzeEList(Elist)

[Var_ind,Var_name]=findVar();
S_L=expand_V(ones(size(L_)),Var_ind,u2u("1mgon 1mm"));  

F_ = [Get_Funlist(DIR,{"x","y","w"},"DIR");
    Get_Funlist(DIS,{"x","y"},"DIS");
    y;x;
    ]; 

```
``````


``````ad-example
collapse: close
title:   with Constraint B
color: 200, 200, 200
```
Elist=["Free_=|Ext('comb_fix.txt','y:x','PTYX')|"
    "Free_data=[Ext('comb_fix.txt','y:x','PTYX');]"
    "L_=|Ext('comb_dir.txt','DIR','DIR')|Ext('comb_dis.txt','DIS','DIS')|"
    "L_data=[u2u('1gon')*Ext('comb_dir.txt','DIR','DIR');Ext('comb_dis.txt','DIS','DIS')]"
    "X_=|Ext('comb_new.txt','y:x','PTYX')|Ext('comb_dir.txt','w','W')|"
    "X_data=[Ext('comb_new.txt','y:x','PTYX');Ext('comb_dir.txt','w','W')]" 
    "LB_=|cons [3 1]|" 
    "LB_data=[zeros(3,1)]"];
 
AnalyzeEList(Elist)

[Var_ind,Var_name]=findVar();
S_L=expand_V(ones(size(L_)),Var_ind,u2u("1mgon 1mm"));  

F_ = [Get_Funlist(DIR,{"x","y","w"},"DIR");
    Get_Funlist(DIS,{"x","y"},"DIS");
    ]; 

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
Elist=["Free_=|Ext('comb_fix.txt','y:x','PTYX')|"
    "Free_data=[Ext('comb_fix.txt','y:x','PTYX');]"
    "L_=|Ext('comb_dir.txt','DIR','DIR')|Ext('comb_dis.txt','DIS','DIS')|"
    "L_data=[u2u('1gon')*Ext('comb_dir.txt','DIR','DIR');Ext('comb_dis.txt','DIS','DIS')]"
    "X_=|Ext('comb_new.txt','y:x','PTYX')|Ext('comb_dir.txt','w','W')|"
    "X_data=[Ext('comb_new.txt','y:x','PTYX');Ext('comb_dir.txt','w','W')]"
	"LB_=|cons [3 1]|" 
    "LB_data=[zeros(3,1)]"];
AnalyzeEList(Elist)

[Var_ind,Var_name]=findVar();
S_L=expand_V(ones(size(L_)),Var_ind,u2u("1mgon 1mm"));  

F_ = [Get_Funlist(DIR,{"x","y","w"},"DIR");
    Get_Funlist(DIS,{"x","y"},"DIS");
    ]; 

FB_=[sum(y);sum(x);xyRotation(y,x)];
list_info=definedatum("y:x","ALL","norm");  % When G,B are used. "ALL" or [1,2]
cons_info=add_constraint("G",FB_);

```
``````

``````ad-example
collapse: close
title:   with Constraint full rank
color: 200, 200, 200
```
Elist=["Free_=|Ext('comb_fix.txt','y:x','PTYX')|"
    "Free_data=[Ext('comb_fix.txt','y:x','PTYX');]"
    "L_=|Ext('comb_dir.txt','DIR','DIR')|Ext('comb_dis.txt','DIS','DIS')|"
    "L_data=[u2u('1gon')*Ext('comb_dir.txt','DIR','DIR');Ext('comb_dis.txt','DIS','DIS')]"
    "X_=|Ext('comb_new.txt','y:x','PTYX')|Ext('comb_dir.txt','w','W')|"
    "X_data=[Ext('comb_new.txt','y:x','PTYX');Ext('comb_dir.txt','w','W')]"
	"LB_=|cons [3 1]|" 
    "LB_data=[zeros(3,1)]"];
AnalyzeEList(Elist)

[Var_ind,Var_name]=findVar();
S_L=expand_V(ones(size(L_)),Var_ind,u2u("1mgon 1mm"));  

F_ = [Get_Funlist(DIR,{"x","y","w"},"DIR");
    Get_Funlist(DIS,{"x","y"},"DIS");
    ]; 

FB_=[sum(y);sum(x);xyRotation(y,x)];
cons_info=add_constraint("fullrank",FB_); 
 
```
``````





![[2. Customized LST Pipeline#2 Formula QXX]]
![[2. Customized LST Pipeline#4 Formula Constraint]]