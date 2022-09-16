function [Rotataion] = xyRotation(y,x)
%XYROTATION Summary of this function goes here
yO=string(y);
xO=string(x);

for i=1:length(yO)
    yo(i)=evalin("base",yO(i)+"o");
end
for i=1:length(xO)
    xo(i)=evalin("base",xO(i)+"o");
end
Rotataion=sum(yo'.*x-xo'.*y);

end


