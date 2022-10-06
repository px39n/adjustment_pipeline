function [X_hat_new,list_info_out] = normalizeX_(X_hat,flag,list_info)
%NORMALIZEX_ Summary of this function goes here
%   Detailed explanation goes here

X_hat_new=X_hat;
list_info_out={};
if flag=="inverse"
    spl_inverse=list_info{2};
    x_c_set=list_info{3};
    for i=1:length(x_c_set)
        X_hat_new(spl_inverse(i,:))=X_hat(spl_inverse(i,:))+x_c_set(i);
    end 
else
    list_i=list_info{1};
    list_all =list_info{2};
    for i=1:length(list_i(:,1))
        x_c_set(i)=mean(X_hat(list_i(i,:))); 
        y_all=list_all(i,:);
        X_hat_new(y_all)=X_hat(y_all)-x_c_set(i);
    end
    list_info_out{1}= list_info{1};
    list_info_out{2}= list_info{2};
    list_info_out{3}= x_c_set;
     
end

