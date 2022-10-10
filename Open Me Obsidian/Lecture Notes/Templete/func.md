```matlab
function [y_i,x_i,y_all,x_all]=definedatum(xystr,number)
```

## Template 

```matlab
[y_i,x_i,y_all,x_all]=definedatum("y:x",[9 6]);
[y_i,x_i,y_all,x_all]=definedatum("yy:xxx","ALL");
```

## Description 
根据指定的datum点，来计算出点在X_中的索引array。


## Parameters 

| Parameters | Description                            |
| ---------- | -------------------------------------- |
| xystr      | y和x的字符串名称，用于转换为syms       |
| number     | 一个list，用于拼接为syms 点名，如y9,x9 |
|            |                                        |

## Return 

| Parameters | Description                          |
| ---------- | ------------------------------------ |
| y_i        | index of y coordinate of datum in X_ |
| x_i        | index of x coordinate of datum in X_ |
| y_all      | index of all y coordinate in X_      |
| x_all      | index of all x coordinate in X_      |
 
