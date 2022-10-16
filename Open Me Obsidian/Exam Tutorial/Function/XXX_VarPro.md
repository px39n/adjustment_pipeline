### Polar Coordinate

 ``````ad-example
collapse: close
title: Very quick code for Polar Coordinate Transformation 
color: 200, 200, 200
```
Elist=["||=[]"             %Never Change this!!!!! Convert all unit pls!
    "|d [4 1]|t [4 1]|=[u2u('7.831m 10.4403m 4.4142m 7.0711m 363.5958gon 20.5547gon 250gon 109.0334gon')]"
    "|x [4 1]|y [4 1]|=[d.*cos(t);d.*sin(t)]"
    ];

S_LL=diag(u2u("1mm 1mm 1mm 1mm 1mgon 1mgon 1mgon 1mgon")).^2;    
% It is a matrix version. You can input matrix here!

[Temp_data,S_L] = XXX_VarPro(Elist,S_LL);  
%S_L is the computed standard deviation, it is a column vector.  It is always in meter or gon precision
%Temp_data is a converted value, like computed x and y (in order)

clear S_LL  % Use this always 
```
``````
 
 
 
 ### Equation
```
Elist=["||=[]"
    "|a|b|c|=[3;4;5]"
    "|s|a|b|c|=[(a+b+c)/2;a;b;c]"
    "|A|=[sqrt(s*(s-a)*(s-b)*(s-c))]"
    ];
s_dis=u2u("cm")*ones(3,1);
S_LL = diag([s_dis;].^2);
[Temp_data,S_L] = XXX_VarPro(Elist,S_LL);  


clear S_LL  % Use this always 
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
[Temp_data,S_L] = XXX_VarPro(Elist,S_LL);  

clear S_LL  % Use this always 
```


### From File  
```
Elist=["|Ext('13fix.txt','y:x:L_','PTYX')|=[Ext('13fix.txt','y:x','PTYX')]"
    "|s1 s2|=[sum(x); sum(y)]"
    ];
[Var_ind,Var_name]=findVar();
S_L=expand_V(ones(size(L_)),Var_ind,u2u("1m 10cm")); 
S_LL = diag([ones].^2);
[Temp_data,S_L] = XXX_VarPro(Elist,S_LL);  

clear S_LL  % Use this always 
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