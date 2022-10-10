```matlab
function [Vars_ind, NamelistOut] = findVar(varargin)
```

## Template 

``` 
[Var_ind,Var_name]=findVar();
[Var_ind,Var_name]=findVar("XA","XB");
[Var_ind,Var_name]=findVar(1:2,3:5);
```

## Description 
automatic find the index of direction variable in L_  
1. Firstly check variable exist.
2. Check the index in L_
 
## Parameters 

| three mode      | Description          |
| --------------- | -------------------- |
| automatic check | findVar()            |
| index           | findVar(1:2,3:5)   |
| check by STR    | findVar("DIR","DIS") |

## Return 

| Parameters  | Description                          |
| ----------- | ------------------------------------ |
| Vars_ind{1} | index of number {[5; 6; 7; 8;], [1; 2; 3;]} |
| Vars_ind{2} | index of name  ["DIR"; "DIS"]  |
| ...         |                                      |
 