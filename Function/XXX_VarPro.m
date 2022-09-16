
function [X_hatr,S_Xr] = XXX_VarPro(Elist,S_LL )
%XXX_VARPRO Summary of this function goes here
%   Detailed explanation goes here
Var_={};
F_={};

for iii=1:length(Elist)
    temp=strsplit(Elist(iii),"=");  
    Left_str=split(temp(1),"|");
    Left_str=Left_str(2:end-1); % Get Left equation str
    V_line={};
    if Left_str~=""
        for jjj=1:length(Left_str)
            somesyms=char(Left_str{jjj});
            if length(somesyms)>=3 && sum(somesyms(1:3)=="Ext")
                eval(['[~,tempsys]=' somesyms ';'])
                V_line=[V_line;tempsys];
            else
                eval("syms "+somesyms+";")
                newpara=split(somesyms,"[");
                newpara=replace(newpara{1}," ",";");
                V_line=[V_line;eval(['[' newpara ']'])]; % Get jth Var
            end
        end
    end
    Var_{iii}=V_line;
    F_{iii}=eval(temp{2});
    %eval("Para"+iii+'=Left;');
    %eval("Func"+iii+'='+temp(2)+';');
    
    
end
X_i=arrayfun(@char,Var_{end},'UniformOutput',false);
X_i=find(contains(X_i,["w","W","DIR","dir","Dir","AN","an"]));


% ---------------------------------
% Set Relationship model, Function model
% ---------------------------------
% 4. Relationship model
% s12 t12 a12--F1--> x12 y12 t12 --F2--> v
disp("=========================")
disp("0. Observation Vector")
disp("=========================")
Measurement=Var_{2}==F_{2}
disp("=========================")
disp("3. Stochastic Model") 
disp("=========================")
diag(Var_{2}.^2)
disp("=========================")
disp("1. Function Model") 
disp("=========================")
for i=3:length(F_) 
    eval(['F' num2str(i-2) '=Var_{i}==F_{i}'])
end
% ---------------------------------
% Get Design Matrix
% ---------------------------------
disp("=========================")
disp("2. Design Matrix") 
disp("=========================")
% 5. Design Matrix
A_=1;
for i=3:length(F_) 
    eval(['A' num2str(i-2) '=jacobian(F_{i},Var_{i-1})'])
    eval(['A_=' 'A' num2str(i-2) '*A_;'])
end
A_
if isnumeric(eval(A_))
    disp ("It is linear")
else
    disp ("It is non-linear")
end
 


% 7. Give value to X
Ndeal(Var_{1},F_{1})
Ndeal(Var_{2},F_{2})
for i=3:length(F_) 
    Ndeal(Var_{i},eval(F_{i}));
end

A_evl=eval(A_);
X_hat=eval(Var_{end});
S_X=sqrt(diag(A_evl*S_LL*A_evl'));
S_Xr=sqrt(A_evl*S_LL*A_evl');

if exist("X_i",'var')
    X_hatr=mod(X_hat,2*pi);
    X_hat(X_i)=mod(X_hat(X_i)*200/pi,360);
    S_X(X_i)=S_X(X_i)*200/pi;
end    


disp("=========================")
disp("5. Get Result and S_xx") 
disp("=========================")

Unknown=arrayfun(@(x) sprintf("%s",x),Var_{end});
Result=table(Unknown,X_hat,S_X)


end

