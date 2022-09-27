```matlab
% For basic Euqation
Elist=["||=[]"
    "|a|b|c|=[3;4;5]"
    "|s|a|b|c|=[(a+b+c)/2;a;b;c]"
    "|A|=[sqrt(s*(s-a)*(s-b)*(s-c))]"
    ];
s_dis=u2u(ones(3,1),"cm");
S_LL = diag([s_dis;].^2);

%T2 For matrix euqtion
Elist=["||=[]"
    "|s [2 1]|t [2 1]|=[8;6;u2u([0;100],'gon')]"
    "|x [2 1]|y [2 1]|=[s.*cos(t),s.*sin(t)]"
    "|D|=[Get_Dis(x1,y1,x2,y2)]"
    ];
s_dis=u2u(ones(2,1),"mm");
s_dir=u2u(0.1*ones(2,1),"gon");
S_LL = diag([s_dis;s_dir].^2);
 
 
[L_data,S_X] = XXX_VarPro(Elist,S_LL);
 
```