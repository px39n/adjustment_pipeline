```matlab
function list_info=definedatum(xystr,number,norm)
```

## Template  

``` 
list_info=definedatum("y:x",[9 6],"norm");
list_info=definedatum("yy:xxx:dd","ALL");
list_info=definedatum("yy:xxx:dd","ALL","norm");
list_info=definedatum("h","ALL");
```

## Description 
根据指定的datum点，来计算出点在X_中的索引array，仅有datum点被用来产生B或G, 仅有datum被用来正则化。

如果点是[[All]], 代表全部str点

## Parameters 

| Parameters | Description                                          |
| ---------- | ---------------------------------------------------- |
| xystr      | y和x的字符串名称，用于转换为syms, like x:y, x:y:z, h |
| number     | 一个list，用于拼接为syms 点名，如y9,x9               |
| norm       | 是否根据daatum正则                                   |

## Return 

| Parameters   | Description                                  |
| ------------ | -------------------------------------------- |
| list_info{1} | index of i [x;y;n] coordinate of datum in X_ |
| list_info{2} | index of all [x;y;n] coordinate in X_        |

 