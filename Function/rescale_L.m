function rescale_L(xystr)
%DEFINEDATUM Summary of this function goes here
%   Detailed explanation goes here
xystr=strsplit(xystr,":");
L_ = evalin("base","L_");
L_=arrayfun(@char,L_,'UniformOutput',false); 
list_all=[];

for i = 1:length(xystr)
    y_str=xystr{i};
    list_all=[list_all;find(contains(L_,y_str))'];
end

list_info{1}=list_all;
list_info{2}=list_all;

 
L_data=evalin('base',"L_data");
[L_data,rescale_L]=normalizeX_(L_data,"order",list_info); % decide if normalize
assignin("base","L_data",L_data);
assignin("base","rescale_L1",rescale_L);
disp("L_data=L_data-centroid")
end 

