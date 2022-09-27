```matlab
function cons_info = add_constraint(flag,varargin)
```

### Template
```
list_info=definedatum("y:x","all","norm"); %for normalization for G
```

| Name                         | Calculate B=          | [[FB_]] , [[add_constraint]] Code                  | Requirement         |
| ---------------------------- | --------------------- | -------------------------------------------------- | ------------------- |
| 1.1 Partial Trace formula(B) | Jacobian + Partial    | ```cons_info=add_constraint("B",FB_);  ```         | cons must be 0 [[definedatum]] needed     |
| 2. Full Trace formula(G)     | Jacobian + Normalized | ```cons_info=add_constraint("G",FB_); ```          | cons must be 0  [[definedatum]] needed for normalization    |
| 3. g-inverse                 | any B                 | ```cons_info=add_constraint("g_inv",B_matrix); ``` | cons must be 0      |
| 4. pseudo-transform          | special version B     | ```cons_info=add_constraint("pseudo");```          | cons must be 0      |
| 5. fullrank in 1st semester  | Only Jacobian         | ```cons_info=add_constraint("fullrank",_FB);```    | cons any, full rank |
|                              |                       |                                                    |                     |


### Description 
根据LST condition种类，计算B matrix



### Parameters 

| Parameters  | Description                                  |
| ----------- | -------------------------------------------- |
| flag        | Could be "B"   "G"   "g_inv"  "pseudo"    "fullrank" |
| varargin{1} | "B"/"G"  : FB\_ List                         |
| varargin{2} | "B": The partial datum number for [[definedatum]] |

### Return  

| Parameters   | Description                |
| ------------ | -------------------------- |
| cons_info{1} | B_ matrix                  |
| cons_info{2} | FB_ Formula                |
| cons_info{3} | info, the flag             |
| cons_info{4} | display string information |

 