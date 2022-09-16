function [] = plotxy(X,Y,Y2)
%PLOTXY Summary of this function goes here
%   Detailed explanation goes here
figure
plot(X,Y,"*")
grid on
hold on
plot(X,Y2)
xlabel("x")
ylabel("y(x)")
title("function")
legend("X-Y","adjusted")
hold off

end

