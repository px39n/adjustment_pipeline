%--------------------------------------------------------------------------
%   
%           ADJUSTMENT THEORY II
%    Network adjustment with stochastic datum     
% 
%   Author         : Anastasia Pasioti
%   Version        : June 7, 2017
%   Last changes   : June 8, 2022
%
%--------------------------------------------------------------------------

clc;
clear all;
close all;
format long g;

%Load all files
dir =load('Directions.txt');
dist = load('Distances.txt');
fixedpoint = load('ControlPoints.txt');
newpoint = load('NewPoints.txt');


%Coordinates of the control points
y6 = fixedpoint(1,2);
x6 = fixedpoint(1,3);
y9 = fixedpoint(2,2);
x9 = fixedpoint(2,3);
%Initial values for the new points
y1 = newpoint(1,2);
x1 = newpoint(1,3);
y15 = newpoint(2,2);
x15 = newpoint(2,3);
%Initial values for the orientation unknowns  thry are zero because they
%are for linear part
w1 = 0;
w6 = 0;
w9 = 0;
w15 = 0;

%--------------------------------------------------------------------------
%   Observations and initial values for unknowns
%--------------------------------------------------------------------------
%Vector of Observations
 L = [dist(:,3); dir(:,3)*pi/200; y6; x6; y9; x9];

%Initial values for unknowns
 X_0 = [y1 x1 y6 x6 y9 x9 y15 x15 w1 w6 w9 w15]';

%Number of observations
no_n = length(L);

%Number of unknowns
no_u = length(X_0);

%Redundancy
 r =no_n-no_u;

xy = [y6 x6 y9 x9];
%--------------------------------------------------------------------------
%  Stochastic model
%--------------------------------------------------------------------------
%VC Matrix of the observations
s_dist = 0.1;                % in m 
s_dir = 0.001*pi/200;          %Convert to [rad]
s_xy = 0.01;                  % in m 


S_LL = diag([s_dist^2*ones(length(dist),1);  s_dir^2*ones(length(dir),1); s_xy^2*ones(length(xy),1)]); 

%Theoretical standard deviation
sigma_0 = 1;

%Cofactor matrix of the observations
Q_LL = 1/sigma_0^2*S_LL;

%Weight matrix
P = inv(Q_LL);

%--------------------------------------------------------------------------
%  Adjustment
%--------------------------------------------------------------------------
%break-off condition
epsilon =10^-8;  % for computation error
delta = 10^-9;  % for linerisation error
max_x_hat =10^Inf; % for starting itteration

%Number of iterations
iteration = 0;

%Initialization A
A = zeros(no_n,no_u);

%Iteration
while max_x_hat>epsilon || Check2>delta

   %Vector of distances
    L_0(1)=dis(y6,x6,y1,x1);
    L_0(2)=dis(y9,x9,y1,x1);
    L_0(3)=dis(y9,x9,y6,x6);
    L_0(4)=dis(y15,x15,y1,x1);
    L_0(5)=dis(y15,x15,y9,x9);
    
    %Vector of directions
    L_0(6)=direction(y1,x1,y6,x6,w1);
    L_0(7)=direction(y1,x1,y15,x15,w1);
    L_0(8)=direction(y6,x6,y1,x1,w6);
    L_0(9)=direction(y6,x6,y9,x9,w6);
    L_0(10)=direction(y9,x9,y15,x15,w9);
    L_0(11)=direction(y9,x9,y1,x1,w9);
    L_0(12)=direction(y9,x9,y6,x6,w9);
    L_0(13)=direction(y15,x15,y1,x1,w15);
    L_0(14)=direction(y15,x15,y9,x9,w15);
    
    %Observed unknowns in the same order that we intrduce in vector of
    %observations
    L_0(15) = y6;
    L_0(16) = x6;
    L_0(17) = y9;
    L_0(18) = x9;
    
    %Vector of reduced observations
    l = L-L_0';

    %Design matrix
    A(1,1)=ds_dy_to(y6,x6,y1,x1);
    A(1,2)=ds_dx_to(y6,x6,y1,x1);
    A(1,3)=ds_dy_from(y6,x6,y1,x1);
    A(1,4)=ds_dx_from(y6,x6,y1,x1);
    
    A(2,1)=ds_dy_to(y9,x9,y1,x1);
    A(2,2)=ds_dx_to(y9,x9,y1,x1);
    A(2,5)=ds_dy_from(y9,x9,y1,x1);
    A(2,6)=ds_dx_from(y9,x9,y1,x1);
    
    A(3,3)=ds_dy_to(y9,x9,y6,x6);
    A(3,4)=ds_dx_to(y9,x9,y6,x6);
    A(3,5)=ds_dy_from(y9,x9,y6,x6);
    A(3,6)=ds_dx_from(y9,x9,y6,x6);
    
    A(4,1)=ds_dy_to(y15,x15,y1,x1);
    A(4,2)=ds_dx_to(y15,x15,y1,x1);
    A(4,7)=ds_dy_from(y15,x15,y1,x1);
    A(4,8)=ds_dx_from(y15,x15,y1,x1);

    A(5,5)=ds_dy_to(y15,x15,y9,x9);
    A(5,6)=ds_dx_to(y15,x15,y9,x9);
    A(5,7)=ds_dy_from(y15,x15,y9,x9);
    A(5,8)=ds_dx_from(y15,x15,y9,x9);
    
    A(6,1)=dr_dy_from(y1,x1,y6,x6);
    A(6,2)=dr_dx_from(y1,x1,y6,x6);
    A(6,3)=dr_dy_to(y1,x1,y6,x6);
    A(6,4)=dr_dx_to(y1,x1,y6,x6);
    A(6,9)=-1;
    
    A(7,1)=dr_dy_from(y1,x1,y15,x15);
    A(7,2)=dr_dx_from(y1,x1,y15,x15);
    A(7,7)=dr_dy_to(y1,x1,y15,x15);
    A(7,8)=dr_dx_to(y1,x1,y15,x15);
    A(7,9)=-1;
    
    A(8,1)=dr_dy_to(y6,x6,y1,x1);
    A(8,2)=dr_dx_to(y6,x6,y1,x1);
    A(8,3)=dr_dy_from(y6,x6,y1,x1);
    A(8,4)=dr_dx_from(y6,x6,y1,x1);
    A(8,10)=-1;
    
    A(9,3)=dr_dy_from(y6,x6,y9,x9);
    A(9,4)=dr_dx_from(y6,x6,y9,x9);
    A(9,5)=dr_dy_to(y6,x6,y9,x9);
    A(9,6)=dr_dx_to(y6,x6,y9,x9);
    A(9,10)=-1;
    
    A(10,5)=dr_dy_from(y9,x9,y15,x15);
    A(10,6)=dr_dx_from(y9,x9,y15,x15);
    A(10,7)=dr_dy_to(y9,x9,y15,x15);
    A(10,8)=dr_dx_to(y9,x9,y15,x15);
    A(10,11)=-1;
    
    A(11,1)=dr_dy_to(y9,x9,y1,x1);
    A(11,2)=dr_dx_to(y9,x9,y1,x1);
    A(11,5)=dr_dy_from(y9,x9,y1,x1);
    A(11,6)=dr_dx_from(y9,x9,y1,x1);
    A(11,11)=-1;
    
    A(12,3)=dr_dy_to(y9,x9,y6,x6);
    A(12,4)=dr_dx_to(y9,x9,y6,x6);
    A(12,5)=dr_dy_from(y9,x9,y6,x6);
    A(12,6)=dr_dx_from(y9,x9,y6,x6);
    A(12,11)=-1;
    
    A(13,1)=dr_dy_to(y15,x15,y1,x1);
    A(13,2)=dr_dx_to(y15,x15,y1,x1);
    A(13,7)=dr_dy_from(y15,x15,y1,x1);
    A(13,8)=dr_dx_from(y15,x15,y1,x1);
    A(13,12)=-1;
    
    A(14,5)=dr_dy_to(y15,x15,y9,x9);
    A(14,6)=dr_dx_to(y15,x15,y9,x9);
    A(14,7)=dr_dy_from(y15,x15,y9,x9);
    A(14,8)=dr_dx_from(y15,x15,y9,x9);
    A(14,12)=-1;
    
    A(15,3) = 1;
    A(16,4) = 1;
    A(17,5) = 1;
    A(18,6) = 1;
    
    %Normal matrix
    N = A'*P*A;

    %Vector of right hand side of normal equations
    n = A'*P*l;

    %Inversion of normal matrix / Cofactor matrix of the unknowns
    Q_xx = inv(N);
    
    %Solution of normal equations
    x_hat = Q_xx*n;
    
    %Adjusted unknowns
    X_hat = X_0+x_hat;
    
    %Update
    X_0 = X_hat;
    
    y1=X_0(1);
    x1=X_0(2);
    y6=X_0(3);
    x6=X_0(4);
    y9=X_0(5);
    x9=X_0(6);
    y15=X_0(7);
    x15=X_0(8);
    w1=X_0(9);
    w6=X_0(10);
    w9=X_0(11);
    w15=X_0(12);
    
    %Check 1
   max_x_hat =max(abs(x_hat));
	
	%Vector of residuals
    v = A*x_hat-l;
    v_gon = v(6:14,1)*200/pi;            %Convert to [gon]

    %Objective function
    vTPv = v'*P*v; 
    
    %Vector of adjusted observations
    L_hat = L+v;
    L_hat_gon = L_hat(6:14)*200/pi;       %Convert to [gon]

    % Distances
    Phi_X_hat(1)= dis(y6,x6,y1,x1);
    Phi_X_hat(2)= dis(y9,x9,y1,x1);
    Phi_X_hat(3)= dis(y9,x9,y6,x6);
    Phi_X_hat(4)= dis(y15,x15,y1,x1);
    Phi_X_hat(5)= dis(y15,x15,y9,x9);
    % Directions
    Phi_X_hat(6)= direction(y1,x1,y6,x6,w1);
    Phi_X_hat(7)= direction(y1,x1,y15,x15,w1);
    Phi_X_hat(8)= direction(y6,x6,y1,x1,w6);
    Phi_X_hat(9)= direction(y6,x6,y9,x9,w6);
    Phi_X_hat(10)= direction(y9,x9,y15,x15,w9);
    Phi_X_hat(11)= direction(y9,x9,y1,x1,w9);
    Phi_X_hat(12)= direction(y9,x9,y6,x6,w9);
    Phi_X_hat(13)= direction(y15,x15,y1,x1,w15);
    Phi_X_hat(14)= direction(y15,x15,y9,x9,w15);
    % Control points
    Phi_X_hat(15)= y6;
    Phi_X_hat(16)= x6;
    Phi_X_hat(17)= y9;
    Phi_X_hat(18)= x9;
    
    %Check 2
    Check2 =max(abs(L_hat- Phi_X_hat')); 
	
    %Update number of iterations
    iteration = iteration+1;

end

% Final Check
if Check2<=delta
    disp('Everything is fine!')
else
    disp('Something is wrong.')
end

%Convert to [gon] and check the quadrants
gon = X_0(9:12,1)*200/pi;
gon(1) = gon(1)+400;
gon(2) = gon(2)+400;
gon(4) = gon(4)+400;

%Empirical reference standard deviation
s_0 = sqrt(vTPv/r);

%VC matrix of adjusted unknowns
S_XX_hat = s_0^2*Q_xx;

%Standard deviation of the adjusted unknowns
s_X = sqrt(diag(S_XX_hat));
s_X_gon = s_X(9:12,1)*200/pi;           %Convert to [gon]

%Cofactor matrix of adjusted observations
Q_LL_hat = A*Q_xx*A';

%VC matrix of adjusted observations
S_LL_hat = s_0^2*Q_LL_hat;

%Standard deviation of the adjusted observations
s_L_hat = sqrt(diag(S_LL_hat));
s_L_hat_gon = s_L_hat(6:14)*200/pi;      %Convert to [gon]

%Cofactor matrix of the residuals
Q_vv = Q_LL-Q_LL_hat;

%VC matrix of residuals
S_vv = s_0^2*Q_vv;

%Standard deviation of the residuals
s_v = sqrt(diag(S_vv));
s_v_gon = s_v(6:14,1)*200/pi;           %Convert to [gon]
 

%--------------------------------------------------------------------------
% Evaluation by 3sigma-rule
%--------------------------------------------------------------------------

mat=sqrt(diag(S_LL));
for j=1:size(mat)
    if v(j)>(3*mat(j))
        fprintf('%s %u %8.4f\n', 'v(',j,') exceed 3sigma : ', s_L_hat(j));
    elseif v(j)>(-3*mat(j))
        fprintf('%s %u %8.4f\n', 'v(',j,') exceed 3sigma : ', s_L_hat(j));
    else
        disp('3sigma rule is not exceeded.')
    end
end









