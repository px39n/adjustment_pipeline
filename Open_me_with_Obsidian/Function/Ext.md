```matlab
function   [Result_hat,Result]=Ext(Str,Sign,flag)
```

## Template 


| Import                 | Format               | Output      | code                                                |     |
| ---------------------- | -------------------- | ----------- | --------------------------------------------------- | --- |
| 1st                    | Y_coor               | y1,y2 etc,. | ```[xx_data,~]=Ext('new.txt','y','1st')```          |     |
| 1st                    | X coor, Y_coor       | y1,y2 etc,. | ```[xx_data,~]=Ext('new.txt','y','1st')```          |     |
| Y and X                | No, Y_coor, X_coor   | y11,x11     | ```[xx_data,~]=Ext('new.txt','y:x','PTYX')```       |     |
| Y and X as Observation | No, Y_coor, X_coor   | yl11,xl11   | ```[xx_data,~]Ext('6fix1.txt','yl:xl:YX','PTYX')``` |     |
| Height                 | No,   Height         | H1          | ```[xx_data,~]=Ext('fix.txt','H:h','H') ```         |     |
| Y                      | No,   Y_coor         | Y1          | ```[xx_data,~]=Ext('new.txt','y','PTY') ```         |     |
| X                      | No,   Y_coor, X_coor | X1          | ```[xx_data,~]=Ext('fixed.txt','x','PTX') ```       |     |
| Distance               | No_1, No_2, Dis      | DIS1_12     | ```[yy_data,~]=Ext('dis.txt','DIS','DIS') ```       |     |
| Direction              | No_C, No_1, Dir      | DIR1_12     | ```u2u('1gon')*Ext('dir.txt','DIR','DIR') ```       |     |
| Angle                  | No_1,No_C,No_2       | DIR1_12_3   | ```u2u('1gon')*Ext('an.txt','AN','AN') ```          |     |
| W                      | No_C, No_1, Dir      | w(center_N) | ```[xx_data,~]=Ext('6dir1.txt','w','W'); ```        |     |

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
 

 