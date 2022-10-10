```matlab
function expanded=expand_V(Var,Var_ind,value_collapse)
```

## Template 

``` 
S_L=expand_V(ones(size(L_)),Var_ind,u2u("1mgon 10cm"));  
S_L=expand_V(ones(11,1),{1:3,4:7,8:11}, [1,2,3]);  
```

## Description 
根据指定的datum点，来计算出点在X_中的索引array。


## Parameters 

| Parameters     | Description        |
| -------------- | ------------------ |
| Var_ind        | {[1;2;4], [3;7;9]} |
| value_collapse | [1,2,4]            |
|                |                    |

## Return 

| Parameters | Description           |
| ---------- | --------------------- |
| expanded   | expanded  value array |
|            |                       |


