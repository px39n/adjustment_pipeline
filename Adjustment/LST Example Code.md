
# Pipeline

## 1. Define all Sign and data, find index of direction

``````ad-example
collapse: close
title:  write a [[Elist]]
color: 200, 200, 200
![[EList#Template]]
![[Ext#Template]]
``````

 ``````ad-example
collapse: close
title:   Just copy [[AnalyzeEList]]  
color: 200, 200, 200
``` 
AnalyzeEList(Elist);
```
``````
## 2. Formula QXX

[[ppm]]

``````ad-example
collapse: close
title: (Optional) Do the Variance Component Estimation [[findVar]]
color: 200, 200, 200
==Default: do nothing==
```VCE_CONFIG=false;```
![[findVar#Template]]

``````
 
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
## 3. Formula Function
``````ad-example
collapse: close
title:  (Option) Define the Dash
color: 200, 200, 200
==Default: do nothing==
```
dash=0;
L_dash_=L_+dash;
F_=F_+dash;
F_m=F_m+dash;
```
 
``````

``````ad-example
collapse: close
title:  Define the F_ by using [[Get_Funclist]]
color: 200, 200, 200
 
==From Formula==
```
F_=[
[a*x+b*y+c*z-d];  % 3d plane
[a*x+b*y-c];  % 2d line
[a*x+b];
xyRotation(y,x); % for 2d constraint
];
```
==From Function==

 | Customized       |                                          |     |
 | ---------------- | ---------------------------------------- | --- |
 | Distance 1~2     | ```d=Get_Dis(x1,y1,x2,y2); ```           |     |
 | Angle 1-i-2      | ```an=Get_Angles(xi,yi,x1,y1,x2,y2); ``` |     |
 | Direction i to 1 | ```DIR=Get_Direction(xi,yi,x1,y1); ```   |     |
 
==From File==
![[Get_Funclist#Template]]
``````




## 4. Formula Constraint

```ad-example
collapse: close
title:  (Optional) For Partial Trace B, [[definedatum]] ,[[FB_]], [[add_constraint]]
color: 200, 200, 200
![[definedatum#Template]]
![[FB_#Template]]
![[add_constraint#Template]]
```

```ad-example
collapse: close
title:  (Optional) For Full Trace G , Full rank, g-inverse , [[FB_]], [[add_constraint]]
color: 200, 200, 200
![[FB_#Template]]
![[add_constraint#Template]]
```

```ad-example
collapse: close
title:  (Optional) For pseudo inverse,  [[add_constraint]]
color: 200, 200, 200
 
![[add_constraint#Template]]
```


 