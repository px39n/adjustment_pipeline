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
Convert, or inverse the normalization of X_

## Parameters 

| Parameters  | Description                                       |
| ----------- | ------------------------------------------------- |
| X_hat       | order: The syms array to be converted             |
| flag        | "inverse" or "order"                              |
| varargin{1} | "order": [y_i;x_i;z_i]  "inverse": allindex_center{1} |
| varargin{2} | "inverse": allindex_center2}                      |

## Return 

| Parameters   | Description                            |
| ------------ | -------------------------------------- |
| X_hat_new    | "order": normalizad  "inverse": normal |
| list_info_out{1} | [y_all;x_all];                         |
| list_info_out{2} | saved center coordinate x_c_set like [1,3,4];       |
 