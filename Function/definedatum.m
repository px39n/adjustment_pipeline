function list_info=definedatum(xystr,number,varargin)
%DEFINEDATUM Summary of this function goes here
%   Detailed explanation goes here
xystr=strsplit(xystr,":");
X_ = evalin("base","X_");
X_=arrayfun(@char,X_,'UniformOutput',false); 
list_all=[];

for i = 1:length(xystr)
    y_str=xystr{i};
    list_all=[list_all;find(contains(X_,y_str))'];
    if isequal(number,"ALL")
        list_i(i,:)=list_all(i,:);
    else
        for j = 1:length(number)
            y_strl(j)=y_str+string(number(j));
            if sum(matches(X_,y_strl(j)))==0;
                disp(X_)
                disp(y_strl(j))
                error("check the datum number is incorrect")
            end
            list_i(i,j)=find(matches(X_, y_strl(j)));
    end
end

list_info{1}=list_i;
list_info{2}=list_all;

end
if ~isempty(varargin)
    X_data=evalin('base',"X_data");
    [X_data,list_info]=normalizeX_(X_data,"order",list_info); % decide if normalize
     assignin("base","X_data",X_data);
else
end 
