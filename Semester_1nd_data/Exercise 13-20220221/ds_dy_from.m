%--------------------------------------------------------------------------
%   
%   Function to calculate the partial derivative for the distances from
%   point ''i''
%   Author         : Sven Weisbrich
%   Version        : April 13, 2012
%   Last changes   : April 13, 2012
%
%--------------------------------------------------------------------------

function result=ds_dy_from(yi,xi,yk,xk)
s=dis(yi,xi,yk,xk);
result=-(yk-yi)/s;
end