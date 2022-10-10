```matlab
[X_hat_new,list_info_out] = normalizeX_(X_hat,flag,list_info)
```

## Template 

```matlab
[X_data,list_info_out]=normalizeX_(X_data,"order",[y_i,x_i]);
[X_data,list_info_out]=normalizeX_(X_data,"order",[h_i]);

[X_hat,useless]=normalizeX_(X_hat,"inverse",list_info_out);
[X_0,useless]=normalizeX_(X_0,"inverse",list_info_out);
```

## Description 
Convert, or inverse the normalization(sum=0) of X_

## Parameters 

| Parameters   | Description                           |
| ------------ | ------------------------------------- |
| X_hat        | order: The syms array to be converted |
| flag         | "inverse" or "order"                  |
| list_info{1} | [y1 y3;x1 x3];                        |
| list_info{2} | [y_all;x_all];                        |
| list_info{3} | inverse only: x_c_set                 |

## Return 

| Parameters       | Description                                   |
| ---------------- | --------------------------------------------- |
| X_hat_new        | "order": normalizad  "inverse": normal        |
| list_info_out{1} | [y1 y3;x1 x3];                                |
| list_info_out{2} | [y_all;x_all];                                |
| list_info_out{3} | saved center coordinate x_c_set like [1,3,4]; |


|                       | Lecture                   | Ex9.Task1 | Ex10.Task1 |
| --------------------- | ------------------------- | --------- | ---------- |
| GH without Constraint |                           |           |            |
| GH with Constraint    | v_hat   = Q_ll  * B  '*k; |           |            |