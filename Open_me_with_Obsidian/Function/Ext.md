```matlab
function   [Result_hat,Result]=Ext(Str,Sign,flag)
```

## Template 


| Problem       |     | Usage                                | Input File      | Output data | code                                                 |
| ------------- | --- | ------------------------------------ | --------------- | ----------- | ---------------------------------------------------- |
| Level Problem |     | 1.Define Height Difference           | No1, No2, colA  | H1_2        | ```Ext('level_h.txt','H','Level') ```                |
| ^^            |     | 2.Define New Height                  | No1, Height     | H1          | ```Ext('level_new.txt','h','H') ```                  |
| ^^            |     | 3.Define Fixed Height                | No1, Height     | H1          | ```Ext('level_fix.txt','h','H') ```                  |
| Trilateration |     | 1.Define Distance                    | No1, No2, colA  | DIS1_2      | ```Ext('trila_dis.txt','DIS','DIS') ```              |
| ^^            |     | 2.Define new Y and X data            | No1, colA, colB | y1(A),x1(B) | ```Ext('trila_new.txt','y:x','PTYX')```              |
| ^^            |     | 3.Define Fixed Y and X data          | No1, colA, colB | y1(A),x1(B) | ```Ext('trila_fix.txt','y:x','PTYX')```              |
| Triangulation |     | Define the Direction                 | No1, No2, colA  | DIR1_2      | ```u2u('1gon')*Ext('trigle_dir.txt','DIR','DIR') ``` |
| ^^            |     | 2.Define new Y and X data            | No1, colA, colB | y1(A),x1(B) | ```Ext('trigle_new.txt','y:x','PTYX')```             |
| ^^            |     | 3.Define Fixed Y and X data          | No1, colA, colB | y1(A),x1(B) | ```Ext('trigle_fix.txt','y:x','PTYX')```             |
| ^^            |     | 4.Define the new W for Direction     | No1, No2, colA  | w1          | ```u2u('1gon')*Ext('trigle_dir.txt','w','W'); ```    |
| Combination   |     | 1.Define the Direction               | No1, No2, colA  | DIR1_2      | ```u2u('1gon')*Ext('comb_dir.txt','DIR','DIR') ```   |
| ^^            |     | 2.Define Distance                    | No1, No2, colA  | DIS1_2      | ```Ext('comb_dis.txt','DIS','DIS') ```               |
| ^^            |     | 3.Define new Y and X data            | No1, colA, colB | y1(A),x1(B) | ```Ext('comb_new.txt','y:x','PTYX')```               |
| ^^            |     | 4.Define Fixed Y and X data          | No1, colA, colB | y1(A),x1(B) | ```Ext('comb_fix.txt','y:x','PTYX')```               |
| ^^            |     | 5.Define the new W for Direction     | No1, No2, colA  | w1          | ```u2u('1gon')*Ext('comb_dir.txt','w','W'); ```      |
| Angular       |     | Define the Angular                   | No_1,No_2,No_3  | AN1_2_3     | ```u2u('1gon')*Ext('an.txt','AN','AN') ```           |
| Others        |     | Define the ordinal series （1st col) | colA, colB      | y1-n(A)     | ```Ext('new.txt','y','1st')```                       |
| ^^            |     | Define the ordinal series （2nd col) | colA, colB      | y1-n(B)     | ```Ext('new.txt','y','2nd')```                       |
| ^^            |     | Define only Y                        | No1, colA, colB | y1(A)       | ```Ext('new.txt','y','PTY') ```                      |
| ^^            |     | Define only X                        | No1, colA, colB | x1(A)       | ```Ext('fixed.txt','x','PTX') ```                    |
| ^^            |     | Option (observe as fixed)            | No1, colA, colB | y1(A),x1(B) | ```Ext('comb_fix.txt','yl:xl:YX','PTYX')```          |

## Description 
命名，提取文件中的数据。

## Parameters 

| Parameters | Description      |
| ---------- | ---------------- |
| Str        | File address     |
| Sign       | 变量命名，看情况 |
| flag       | mode             |

## Return 

| Parameters | Description |
| ---------- | ----------- |
| Result_hat | data        |
| Result     | syms        |
 

 