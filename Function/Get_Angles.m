  

function Angles=Get_Angles(xi,yi,x1,y1,x2,y2)
%  Calculate para2--->para1--->para3
  Angles=atan2((y2-yi),(x2-xi))-atan2((y1-yi),(x1-xi));
  
%  if direction<0
%      direction=direction+2*pi;
%  end
  Angles=Angles;
  
end