function [Vars_ind, NamelistOut] = findVar(varargin)

%FINDDIR Summary of this function goes here
%   Detailed explanation goes here

L_=evalin("base","L_");
L_=arrayfun(@char,L_,'UniformOutput',false);
if isempty(varargin)
    NameList="";
    for i=1:length(L_) 
        L_i=L_{i};
        NameList(i)=L_i(isletter(L_i));
    end
    NameList=unique(NameList,'stable');
    for i =1:length(NameList)

        Vars_ind{i}=find(contains(L_,NameList{i}));
        if isempty(Vars_ind{i})
            error("Do not exist "+NameList{i})
        end
    end
        NamelistOut=NameList;
        
elseif isnumeric(varargin{1})  

    for i =1:length(varargin)
        L_i=varargin{i};
        NamelistOut(i)=string(i);
        Vars_ind{i}=L_i';
    end
    
else
    for i=1:length(varargin) 
        NameList(i)=varargin{i};
    end

    for i =1:length(NameList)

        Vars_ind{i}=find(contains(L_,NameList{i}));
        if isempty(Vars_ind{i})
            error("Do not exist "+NameList{i})
        end
    end
        NamelistOut=NameList;
        
end
    NamelistOut=NamelistOut';
    
end