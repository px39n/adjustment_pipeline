%--------------------------------------------------------------------------
%   
%   Function to calculate the direction from point ''i'' to ''k''
% 
%   Author         : Sven Weisbrich
%   Version        : April 13, 2012
%   Last changes   : April 13, 2012
%
%--------------------------------------------------------------------------

function direction=direction(yi, xi, yk, xk, w)
  direction=atan2((yk-yi),(xk-xi));
  
%  if direction<0
%      direction=direction+2*pi;
%  end
  direction=direction-w;
  
end