%--------------------------------------------------------------------------
%   
%   Function to calculate the partial derivative for the distances to
%   point ''k''
%   Author         : Sven Weisbrich
%   Version        : April 13, 2012
%   Last changes   : April 13, 2012
%
%--------------------------------------------------------------------------

function result=ds_dx_to(yi,xi,yk,xk)
s=dis(yi,xi,yk,xk);
result=(xk-xi)/s;
end