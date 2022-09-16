%--------------------------------------------------------------------------
%   
%   ADJUSTMENT THEORY I 
% 
%   Author         : Sven Weisbrich
%   Version        : November 17, 2011
%   Last changes   : November 17, 2011
%
%--------------------------------------------------------------------------


function [x y] = cumFrequency(l)

%Number of measurements
n = length(l);

%Number of bins
m = round(sqrt(n));

%Min / Max values - interval
a = min (l);
b = max (l);

%Width of a bin
Delta_x = (b - a)/m;

%Creating the x-axis
x = a + Delta_x/2:Delta_x:b - Delta_x/2;

%Initialisation of y
y = zeros (size(x));

for i = 1:m
    
    %Left and right edges for each bin
    left = x(i) - Delta_x/2;
    right = x(i) + Delta_x/2;
    
    if i>1
        y(i) = y(i)+y(i-1); %%%% the cumFrequency
        
    end
    %Counting the values belonging to each bin
    for j = 1:n
        if l(j)>= left && l(j)<= right
            y(i) = y(i) +1;
        end
    end
    
end

y = y/n; %%%% the relFrequency
y = 100*y/max(y);


