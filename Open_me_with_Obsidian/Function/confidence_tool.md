## Template
% s = 1 - α;  prob= s + α

| Confidence Function          |                                                                                                        |     |     |
| ---------------------------- | ------------------------------------------------------------------------------------------------------ | --- | --- |
| Get Confidence Interval norm | ```[a,b]=confidence_tool.get_interval_norm(prob,e_mean, t_sigma)```                                    |     |     |
| Get Confidence Interval t    | ```[a,b]=confidence_tool.get_interval_t(prob,  e_mean, e_sigma, dof)```                                |     |     |
| Get Confidence Interval chi  | ```[a,b]=confidence_tool.get_interval_chi(prob, e_sigma, dof)```                                       |     |     |
| Get Confidence Interval f    | ```[a,b]=confidence_tool.get_interval_f(prob, e_sigma1, e_sigma2, dof1, dof2)```                       |     |     |
| Get Statistic Test norm      | ```stats=confidence_tool.statistic_test_norm(prob, t_mean,  e_mean, t_sigma)```                        |     |     |
| Get Statistic Test t         | ```stats=confidence_tool.statistic_test_t(prob, t_mean,  e_mean, e_sigma, dof)```                      |     |     |
| Get Statistic Test chi       | ```stats=confidence_tool.statistic_test_chi(prob, t_sigma, e_sigma, dof)```                            |     |     |
| Get Statistic Test f         | ```stats=confidence_tool.statistic_test_f(prob, t_sigma1, t_sigma2,  e_sigma1, e_sigma2, dof1,dof2)``` |     |     |
| Get meana_std_f              | ```[mean1,s1,f1]=conf.mean_s_dof(x1);```                                                               |     |     |
| α to Probs                   | ```a2prob(5);```                                                                                       |     |     |
 