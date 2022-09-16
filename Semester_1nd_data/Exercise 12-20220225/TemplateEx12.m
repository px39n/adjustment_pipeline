clc;
clear all;
close all;
format long g;
%--------------------------------------------------------------------------
% Task 2
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
% Observations and initial values for the unknowns
%--------------------------------------------------------------------------
%Load files
dir = load('directions.txt'); %[gon]
coord = load('Points.txt'); %[m] %Error-free
for i=1:size(coord,1)
 eval(['y' num2str(coord(i,1)) '=' num2str(coord(i,2)) ';']);
 eval(['x' num2str(coord(i,1)) '=' num2str(coord(i,3)) ';']);
end
%Vector of observations
r342 = (dir(3,3)-dir(2,3))*pi/200; %[gon]->[rad]
r354 = (dir(4,3)-dir(3,3))*pi/200;
r365 = (dir(5,3)-dir(4,3))*pi/200;
r316 = (dir(1,3)-dir(5,3))*pi/200;
L = [r342 r354 r365 r316]'; %[gon]->[rad]
%Number of observations
no_n = length(L);
%Initial values for the unknowns
x3 = 242.900;
y3 = 493.700;
%Vector of initial values for the unknowns
X_0 = [x3 y3]';
%Number of unknowns
no_u = length(X_0);
%Redundancy
r = no_n-no_u; 
%--------------------------------------------------------------------------
% Stochastic model
1
%--------------------------------------------------------------------------
s_dir = 0.001*pi/200; %[gon]->[rad]
F = [0 -1 1 0 0;
 0 0 -1 1 0;
 0 0 0 -1 1;
 1 0 0 0 -1];
%VC Matrix of the observations
S_LL = F * diag([s_dir^2*ones(size(dir,1),1)]) * F'; 
%Theoretical standard deviation
sigma_0 = 1; %a priori
%Cofactor matrix of the observations
Q_LL = 1/sigma_0^2*S_LL;
%Weight matrix
P = inv(Q_LL);
%--------------------------------------------------------------------------
% Adjustment
%--------------------------------------------------------------------------
%break-off conditions
epsilon = 10^-5;
delta = 10^-12;
max_x_hat = 10^Inf;
%Number of iterations
iteration = 0;
while max_x_hat>epsilon || Check2>delta 
 
 %Observations as functions of the approximations for the unknowns
 L_0(1) = angle(y3, x3, y2, x2, y4, x4);
 L_0(2) = angle(y3, x3, y4, x4, y5, x5);
 L_0(3) = angle(y3, x3, y5, x5, y6, x6);
 L_0(4) = angle(y3, x3, y6, x6, y1, x1);
 
 %Vector of reduced observations
 l = L-L_0';
 
 %Design matrix with the elements from the Jacobian matrix J
 A(1,1) = dr_dx_from(y3, x3, y2, x2, y4, x4);
 A(1,2) = dr_dy_from(y3, x3, y2, x2, y4, x4);
 
 A(2,1) = dr_dx_from(y3, x3, y4, x4, y5, x5);
 A(2,2) = dr_dy_from(y3, x3, y4, x4, y5, x5);
 
 A(3,1) = dr_dx_from(y3, x3, y5, x5, y6, x6);
 A(3,2) = dr_dy_from(y3, x3, y5, x5, y6, x6);
 
 A(4,1) = dr_dx_from(y3, x3, y6, x6, y1, x1);
 A(4,2) = dr_dy_from(y3, x3, y6, x6, y1, x1);

 %Normal matrix
 N = A'*P*A;
 
 %Vector of right hand side of normal equations
 n = A'*P*l;
 
 %Inversion of normal matrix / Cofactor matrix of the unknowns
 Q_xx = inv(N);
 
 %Solution of the normal equations
 x_hat = Q_xx*n;
 
 %Update
 X_0 = X_0+x_hat;
 
 x3 = X_0(1);
 y3 = X_0(2);
 
 %Check 1
 max_x_hat = max(abs(x_hat));
 
 %Vector of residuals
 v = A*x_hat-l;
 %Vector of adjusted observations
 L_hat = L+v;
 
 %Function
 vTPv = v'*P*v;
 
 %Functional relationships without the observations
 phi_X_hat = [angle(y3, x3, y2, x2, y4, x4);
 angle(y3, x3, y4, x4, y5, x5);
 angle(y3, x3, y5, x5, y6, x6);
 angle(y3, x3, y6, x6, y1, x1)];
 %Check 2
 Check2 = max(abs(L_hat-phi_X_hat));
 
 %Update number of iterations
 iteration = iteration+1;
 
end
if Check2<=delta
 disp('Everything is fine!')
else
 disp('Something is wrong.')
end


x3

y3

%Convert to [gon]
L_hat_gon = L_hat*200/pi

v_gon = v*200/pi

%Empirical reference standard deviation
s_0 = sqrt(vTPv/r);
%VC matrix of adjusted unknowns
S_XX_hat = s_0^2*Q_xx;
%Standard deviation of the adjusted unknowns
s_X = sqrt(diag(S_XX_hat)) %[m]


%Cofactor matrix of adjusted observations
Q_LL_hat = A*Q_xx*A';
%VC matrix of adjusted observations
S_LL_hat = s_0^2*Q_LL_hat;
%Standard deviation of the adjusted observations
s_L_hat = sqrt(diag(S_LL_hat)); 
s_L_hat_gon = s_L_hat*200/pi %[rad]->[gon]


%Cofactor matrix of the residuals
Q_vv = Q_LL-Q_LL_hat;
%VC matrix of residuals
S_vv = s_0^2*Q_vv;
%Standard deviation of the residuals
s_v = sqrt(diag(S_vv)); 
s_v_gon = s_v*200/pi %[rad]->[gon]

function angle=angle(yi,xi,yl,xl,yk,xk)
 angle=atan2((yk-yi),(xk-xi))-atan2((yl-yi),(xl-xi));
 
% if direction<0
% direction=direction+2*pi;
% end
 
end
function result=dr_dx_from(yi,xi,yl,xl,yk,xk)
 s_ik=dis(yi,xi,yk,xk);
 s_il=dis(yi,xi,yl,xl);
 result = (yk-yi)/s_ik^2 - (yl-yi)/s_il^2;
end
function result=dr_dy_from(yi,xi,yl,xl,yk,xk)
 s_ik=dis(yi,xi,yk,xk);
 s_il=dis(yi,xi,yl,xl);
 result = -(xk-xi)/s_ik^2 + (xl-xi)/s_il^2;
end