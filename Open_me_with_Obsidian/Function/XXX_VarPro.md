 ### Equation
```
Elist=["||=[]"
    "|a|b|c|=[3;4;5]"
    "|s|a|b|c|=[(a+b+c)/2;a;b;c]"
    "|A|=[sqrt(s*(s-a)*(s-b)*(s-c))]"
    ];
s_dis=u2u("cm")*ones(3,1);
S_LL = diag([s_dis;].^2);
[Temp_data,S_L] = XXX_VarPro(Elist,S_LL); %gon
```

### Matrix
```
Elist=["||=[]"
    "|s [2 1]|t [2 1]|=[8;6;u2u([0;100],'gon')]"
    "|x [2 1]|y [2 1]|=[s.*cos(t),s.*sin(t)]"
    "|D|=[Get_Dis(x1,y1,x2,y2)]"
    ];
s_dis=u2u("1mm")*ones(2,1);
s_dir=u2u("0.1gon")*ones(2,1);
S_LL = diag([s_dis;s_dir].^2);
[Temp_data,S_L] = XXX_VarPro(Elist,S_LL); %gon
```


### From File  
```
Elist=["|Ext('13fix.txt','y:x:L_','PTYX')|=[Ext('13fix.txt','y:x','PTYX')]"
    "|s1 s2|=[sum(x); sum(y)]"
    ];
[Var_ind,Var_name]=findVar();
S_L=expand_V(ones(size(L_)),Var_ind,u2u("1m 10cm")); 
S_LL = diag([ones].^2);
[Temp_data,S_L] = XXX_VarPro(Elist,S_LL); %gon
```


# API

``````ad-example
collapse: close
title: Input the S_L  by using [[findVar]], [[expand_V]], [[u2u]]
color: 200, 200, 200
==Simple Way==
```
S_L=ones(8,1)*u2u("2cm");
```
==Efficient and Robust Way==
![[findVar#Template]]
![[expand_V#Template]]
Check reference for [[u2u#Template]]  

``````


 | Customized       |                                          |     |
 | ---------------- | ---------------------------------------- | --- |
 | Distance 1~2     | ```d=Get_Dis(x1,y1,x2,y2); ```           |     |
 | Angle 1-i-2      | ```an=Get_Angles(xi,yi,x1,y1,x2,y2); ``` |     |
 | Direction i to 1 | ```DIR=Get_Direction(xi,yi,x1,y1); ```   |     |
 |                  |                                          |     |

 [[Ext]]   