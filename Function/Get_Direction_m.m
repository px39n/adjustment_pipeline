
function direction=Get_Direction_m(xi, yi, xk, yk, w)
%  Base station 1st, second station 2nd. Azium of 1st.
  %direction=mod(atan2((yk-yi),(xk-xi)),2*pi);
  direction=atan2((yk-yi),(xk-xi)) ;
%  if direction<0
%      direction=direction+2*pi;
%  end
 
 %direction=mod(direction,2*pi)-w;
  direction=mod(direction-w,2*pi);
end