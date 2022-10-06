function cons_info = add_constraint(flag,varargin)
%ADD_CONSTRAINT Summary of this function goes here
%   B_=cons_info[1]
% F_=cons_info[2]
% info=cons_info[3]
% display=cons_info[4]

%        for i = 1:length(varargin{2})
  %         cons_info{1}(:,varargin{2}(i))=temp(:,varargin{2}(i));
   %     end

    cons_info{3}=flag;
    
    if flag=="B"
        X_=evalin("base",'X_');
        X_O=evalin("base","X_O");
        list_info=evalin("base",'list_info');
        list_info=reshape(list_info{1}',[],1)';
        BBB=jacobian(varargin{1},X_);
        BBB_new=BBB-BBB;
        BBB_new(:,list_info)=BBB(:,list_info);
        cons_info{1}=BBB_new;
        Ndeal(X_,X_)
        Ndeal(X_O,X_O)
        Ndeal(X_(setdiff(1:length(X_),list_info)),zeros(length(X_(setdiff(1:length(X_),list_info))),1))
        cons_info{2}=eval(varargin{1});
        cons_info{4}="Trace formula, B is formed by geography";
        
        
    elseif flag=="G"
        B_evl=jacobian(varargin{1},evalin("caller","X_"));
        for i =1:length(B_evl(:,1)) 
            B_evl(i,:)=B_evl(i,:)/norm(B_evl(i,:));
        end
        cons_info{1}=B_evl;
        cons_info{2}=varargin{1};
        cons_info{4}="Full Trace formula, B is formed by geography";

    elseif flag=="g_inv"
        cons_info{1}=jacobian(varargin{1},evalin("caller","X_"));
        cons_info{4}="generalized inverse,  B =  Anything";
        
        %evalin("base",'[y_i,x_i,y_all,x_all]=definedatum("y:x","ALL");');

        
    elseif flag=="pseudo"
         
         cons_info{4}="Pseudo_inverse, B =  eigenvec has eigenvalue is 0";
        % evalin("base",'[y_i,x_i,y_all,x_all]=definedatum("y:x","ALL");');
 
    elseif flag=="fullrank"
        cons_info{1}=jacobian(varargin{1},evalin("caller","X_"));
        cons_info{2}=varargin{1};
        cons_info{4}="Full rank condition, B is formed by geography";
        
    else
        error("flag is not right")

    end

end
 
