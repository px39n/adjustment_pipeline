``````ad-example
collapse: close
title: From file, OR List  (Any case good)
color: 200, 200, 200
```
x=load("1series_2.txt");
y=load("1series_3.txt");
% s = 1 - α;  prob= s + α
conf=confidence_tool();

[sig1,sig2,e1,e2]=deal(0.0015,0.0015,34,34);
[mean1,s1,f1]=conf.mean_s_dof(x);
[mean2,s2,f2]=conf.mean_s_dof(y);
 
[a,b]=conf.get_interval_t(u2u("5a"),mean1,s1,f1);
[a,b]=conf.get_interval_norm(u2u("5a"),mean1,sig1);
[a,b]=conf.get_interval_chi(u2u("5a"),s1,f1);
[a,b]=conf.get_interval_f(u2u("5a"),s1,s2,f1,f2);

stats=conf.statistic_test_t(u2u("5a"),e1,mean1,s1,f1);
stats=conf.statistic_test_norm(u2u("5a"),e1,mean1,sig1);
stats=conf.statistic_test_chi(u2u("5a"),sig1, s1,f1);
stats=conf.statistic_test_f(u2u("5a"),sig1,sig2,s1,s2,f1,f2);
```
``````

``````ad-example
collapse: close
title: T
color: 200, 200, 200
```
% One-side:  0.95  1-0.05
% Two-side:  u2u("95s")  u2u("5a")
conf=confidence_tool();

[sig1,e1]=deal(1,0);
[mean1,s1,f1]=deal(u2u("3.5mm"),u2u("1.7mm"),9);

[a,b]=conf.get_interval_t(u2u("5a"),mean1,s1,f1);
stats=conf.statistic_test_t(u2u("5a"),e1,mean1,s1,f1);
```
``````


``````ad-example
collapse: close
title: CHI
color: 200, 200, 200
```
% One-side:  0.95  1-0.05
% Two-side:  u2u("95s")  u2u("5a")
conf=confidence_tool();


[sig1,e1]=deal(u2u("2mm"),0);
[mean1,s1,f1]=deal(u2u("3.5mm"),u2u("2.2mm"),9);

[a,b]=conf.get_interval_chi(u2u("5a"),s1,f1);
stats=conf.statistic_test_chi(u2u("5a"),sig1, s1,f1);

```
``````



``````ad-example
collapse: close
title: F
color: 200, 200, 200
```

% One-side:  0.95  1-0.05
% Two-side:  u2u("95s")  u2u("5a")
conf=confidence_tool();

[sig1,sig2,e1,e2]=deal(0.0015,0.0015,34,34);
[mean1,s1,f1]=deal(u2u("3.5mm"),u2u("3.5mm"),9);
[mean2,s2,f2]=deal(u2u("3.5mm"),u2u("3.5mm"),9);

[a,b]=conf.get_interval_f(u2u("5a"),s1,s2,f1,f2);
stats=conf.statistic_test_f(u2u("5a"),sig1,sig2,s1,s2,f1,f2);

```
``````




``````ad-example
collapse: close
title: Norm
color: 200, 200, 200
```
% s = 1 - α;  prob= s + α
conf=confidence_tool();

[sig1,e1]=deal(0.0015,34);
[mean1,s1,f1]=deal(0.0015,0.0015,1);

[a,b]=conf.get_interval_norm(u2u("5a"),mean1,sig1);
stats=conf.statistic_test_norm(u2u("5a"),e1,mean1,sig1);

```
``````


``````ad-example
collapse: close
title: Get s and mean, dof for a list.
color: 200, 200, 200
```
% s = 1 - α;  prob= s + α
[mean1,s1,f1]=conf.mean_s_dof(x);
[mean2,s2,f2]=conf.mean_s_dof(y);

```
``````


## API
![[confidence_tool#Template]]

![[Statistical Test#Prob]]