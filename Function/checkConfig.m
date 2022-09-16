function  checkConfig( )
%CHECKCONFIG Summary of this function goes here
%   Detailed explanation goes here

try

L_=evalin("base","L_");
L_data=evalin("base","L_data");
X_=evalin("base","X_");
X_data=evalin("base","X_data");
L_str=string(L_);
catch
    error("Please input all config  L_ L_data X_ X_data ")
end

try
S_L=evalin("base","S_L");
catch
    S_LL=evalin("base","S_LL");
    S_L=diag(S_LL);
end

CHECK={S_L,L_,L_data,X_,X_data};
CHECK_str={"S_L","L_","L_data","X_","X_data"};
for i=1:length(CHECK)
ck=CHECK{i};    
    if ~iscolumn(ck) && ~isempty(ck)
            
            error(CHECK_str{i}+" is not a column")
    end
end
if sum(size(L_)~=size(L_data))~=0 || sum(size(L_data)~=size(S_L))~=0
    error("Check size of L_ L_data, S_L should same")
end
 
L_i=evalin("base","L_i");
X_i=evalin("base","X_i");

try
    VCE_CONFIG=evalin("base","VCE_CONFIG");
catch
    evalin("base","VCE_CONFIG=false;")
    VCE_CONFIG=evalin("base","VCE_CONFIG");
end

if VCE_CONFIG ==true && evalin("base","~exist('Var_name')")
    error("VCE is open, please use [Var_ind,Var_name]=findVar(); to specify the VCE")
elseif VCE_CONFIG ==true
    Var_name=evalin("base","Var_name");
    disp("VCE is open, The current component is: ");  
    table(Var_name');    
end
 

disp("==================================================")   
disp("The angle in L_. ")   
if isempty(L_i)
    disp("No angle Detected")   
else
    table(string(L_str(L_i))')    
    disp("... will be generate F_m")  
    disp("... converted to gon ")  
end
disp("==================================================")   
disp("The angle in X_. ")
if isempty(L_i)
    disp("No angle Detected")   
else
    table(string(L_str(X_i))')   
    disp("... will be converted to gon ")   
end
disp("==================================================")   
end

