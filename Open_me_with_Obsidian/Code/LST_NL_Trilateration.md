```matlab

Elist=["Free_=|Ext('Trila_fix.txt','y:x','PTYX')|"
    "Free_data=[Ext('Trila_fix.txt','y:x','PTYX')]"
    "L_=|Ext('Trila_dis.txt','D','DIS')|"
    "L_data=[Ext('Trila_dis.txt','D','DIS')]"
    "X_=|y100|x100|"
    "X_data=[6861.3;3727.8]"];
AnalyzeEList(Elist)

s_dis = ppm(D_data,1,2);  
S_L=s_dis*u2u("1m");

F_ = [Get_Funlist(D,["x","y"],"DIS")]; 


```



![[LST Example Code#2 Formula QXX]]
 