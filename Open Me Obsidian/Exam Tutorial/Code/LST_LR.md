```matlab
% 123
Elist=["Free_=|x [4 1]|"
    "Free_data=[1;2;3;4;]"
    "L_=|y [4 1]|"
    "L_data=[0.1;1.1;1.8;2.4]"
    "X_=|a|b|"
    "X_data=[]"];
AnalyzeEList(Elist);
s_dis=u2u([2;1;4;2],'cm');       
S_LL = diag([s_dis;].^2);
% Function
dash=0;
L_dash_=L_+dash;
F_=[a*x+b]+dash;
 
```