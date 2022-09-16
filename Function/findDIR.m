function [L_i,X_i] = findDIR()
%FINDDIR Summary of this function goes here
%   Detailed explanation goes here
X_ = evalin("base","X_");
L_ = evalin("base","L_");

X_=arrayfun(@char,X_,'UniformOutput',false);
L_ =arrayfun(@char,L_,'UniformOutput',false);

X_i=find(contains(X_,["w","W","DIR","dir","Dir","AN","an"]));
L_i=find(contains(L_,["DIR","dir","Dir","AN","an"]));

end

