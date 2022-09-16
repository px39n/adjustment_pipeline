``````ad-example
collapse: close
title: From file 
color: 200, 200, 200
```
x=load("1series_2.txt");
y=load("1series_3.txt");
% s = 1 - α;  prob= s + α
conf=confidence_tool();

[sig1,sig2,e1,e2]=deal(0.0015,0.0015,34,34);
[mean1,s1,f1]=conf.mean_s_dof(x);
[mean2,s2,f2]=conf.mean_s_dof(y);

[a,b]=conf.get_interval_t(a2prob(5),mean1,s1,f1);
[a,b]=conf.get_interval_norm(a2prob(5),mean1,sig1);
[a,b]=conf.get_interval_chi(a2prob(5),s1,f1);
[a,b]=conf.get_interval_f(a2prob(1),s1,s2,f1,f2);

stats=conf.statistic_test_t(a2prob(5),e1,mean1,s1,f1);
stats=conf.statistic_test_norm(a2prob(5),e1,mean1,sig1);
stats=conf.statistic_test_chi(a2prob(5),sig1, s1,f1);
stats=conf.statistic_test_f(a2prob(1),sig1,sig2,s1,s2,f1,f2);
```
``````

``````ad-example
collapse: close
title: T
color: 200, 200, 200
```
% s = 1 - α;  prob= s + α
conf=confidence_tool();

[sig1,e1]=deal(1,0);
[mean1,s1,f1]=deal(u2u("3.5mm"),u2u("1.7mm"),9);

[a,b]=conf.get_interval_t(a2prob(5),mean1,s1,f1);
stats=conf.statistic_test_t(a2prob(5),e1,mean1,s1,f1);
```
``````


``````ad-example
collapse: close
title: CHI
color: 200, 200, 200
```
% s = 1 - α;  prob= s + α
conf=confidence_tool();

[sig1,e1]=deal(u2u("2mm"),0);
[mean1,s1,f1]=deal(u2u("3.5mm"),u2u("2.2mm"),9);

[a,b]=conf.get_interval_chi(a2prob(5),s1,f1);
stats=conf.statistic_test_chi(a2prob(5),sig1, s1,f1);
```
``````



``````ad-example
collapse: close
title: F
color: 200, 200, 200
```
% s = 1 - α;  prob= s + α
conf=confidence_tool();

[sig1,sig2,e1,e2]=deal(0.0015,0.0015,34,34);
[mean1,s1,f1]=deal(0.0015,61,9);
[mean2,s2,f2]=deal(0.0015,54,9);

[a,b]=conf.get_interval_f(a2prob(1),s1,s2,f1,f2);
stats=conf.statistic_test_f(a2prob(1),sig1,sig2,s1,s2,f1,f2);
```
``````




``````ad-example
collapse: close
title: From handwriting
color: 200, 200, 200
```
% s = 1 - α;  prob= s + α
conf=confidence_tool();

[sig1,sig2,e1,e2]=deal(0.0015,0.0015,34,34);
[mean1,s1,f1]=deal(0.0015,0.0015,1);
[mean2,s2,f2]=deal(0.0015,0.0015,1);

[a,b]=conf.get_interval_t(a2prob(5),mean1,s1,f1);
[a,b]=conf.get_interval_norm(a2prob(5),mean1,sig1);
[a,b]=conf.get_interval_chi(a2prob(5),s1,f1);
[a,b]=conf.get_interval_f(a2prob(1),s1,s2,f1,f2);

stats=conf.statistic_test_t(a2prob(5),e1,mean1,s1,f1);
stats=conf.statistic_test_norm(a2prob(5),e1,mean1,sig1);
stats=conf.statistic_test_chi(a2prob(5),sig1, s1,f1);
stats=conf.statistic_test_f(a2prob(1),sig1,sig2,s1,s2,f1,f2);
```
``````




## API
![[confidence_tool#Template]]