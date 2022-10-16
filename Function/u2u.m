function out = u2u(num_unit_str)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

%if length(size(list))>1
%    error("The input must be 1d")

str_i=strsplit(num_unit_str," "); 
if length(str_i)>1 
    try
        for i=1:length(str_i)
            out(i,1)=u2u(str_i{i});
        end
    catch
        error("Check "+str_i{i}+" of "+num_unit_str)
    end
    
    return
end

num_unit_str=convertStringsToChars(num_unit_str);
unit=num_unit_str(isletter(num_unit_str));
number=num_unit_str(~isletter(num_unit_str));
try
    number=eval(number);
catch
    error(number+" is not a correct number")
end


if unit=="m"
out=number;
elseif unit=="mm"
out=number./1000;    
elseif unit=="cm"
out=number./100;       
elseif unit=="km"   
out=number.*1000;     
elseif unit=="mgon"   
out = number.*pi./200./1000;   
elseif unit=="gon"
out= number.*pi./200;    
elseif unit=="deg"
out= number.*pi./180;    
elseif unit=="a"  
out= 1-number.*0.01/2 ;
elseif unit=="s"
out= 0.01*number+(1-0.01*number)/2;
elseif unit=="tomm"
out=number.*1000;  
elseif unit=="tocm"
out=number.*100;       
elseif unit=="tokm"   
out=number./1000;     
elseif unit=="togon"
out= number./pi.*200;
elseif unit=="tomgon"
out = number./pi.*200.*1000;
elseif unit=="todeg"
out= number./pi.*180; 
else
    error("The flag "+unit+" is not right ")
end

end

