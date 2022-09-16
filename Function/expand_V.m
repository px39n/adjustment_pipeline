function expanded=expand_V(Var,Var_ind,value_collapse)
%EXPAND_V Summary of this function goes here
%   Detailed explanation goes here
expanded=Var;
if length(Var_ind)~=length(value_collapse)
    error("The length value_collapse and Var_ind is not right")
end
for i=1:length(Var_ind)
    expanded(Var_ind{i},1)=value_collapse(i);
end

end