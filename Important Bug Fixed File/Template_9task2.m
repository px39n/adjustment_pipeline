 
 %--------------------------------------------------------------------------
%   
%           ADJUSTMENT THEORY II
%        Gauss-Helmert model - Part I  
% 
%   Author         : Anastasia Pasioti
%   Version        : June 27, 2017
%   Last changes   : June 29, 2022
%
%--------------------------------------------------------------------------

clc;
clear all;
close all;

%--------------------------------------------------------------------------
%   Observations and initial values for the unknowns
%--------------------------------------------------------------------------
%Observations
 data=load("data9.txt");
 
 x=data(:,2);
 y=data(:,3);
 
 
%Vector of observations
l = [x; y];         % DDDDDDDDDDDDDDDIIIIIIIIIIIIIIIFFFFFFFFFFFFFFFFFFFFFFFFF

%Initial values for the unknowns
rad=70;
xm=40;
ym=40;
X_0=[rad xm ym]';



%Number of observations/points
no_n = length(l)/2;   % number of condition is here mor correct   % DDDDDDDDDDDDDDDIIIIIIIIIIIIIIIFFFFFFFFFFFFFFFFFFFFFFFFF

%Number of unknowns
no_u = length(X_0);

%Redundancy
r = no_n-no_u;

%--------------------------------------------------------------------------
%  Stochastic model
%--------------------------------------------------------------------------
%VC Matrix of the observations
S_ll=eye(length(l));
%Theoretical reference standard deviation
sigma_0 = 1;     %a priori

%Cofactor matrix of the observations
Q_ll = 1/sigma_0^2*S_ll;

%Weight matrix
P = inv(Q_ll);

%--------------------------------------------------------------------------
%  Adjustment
%--------------------------------------------------------------------------
%break-off conditions
epsilon = 10^-8;
delta =  10^-12;
max_psi = 10^Inf;

%Number of iterations
iteration = 0;

%Initialization A and B   % to help matlab with memory
A = zeros(no_n,no_u);
B = zeros(no_n,no_n*2);           % DDDDDDDDDDDDDDDIIIIIIIIIIIIIIIFFFFFFFFFFFFFFFFFFFFFFFFF

%Initial values for the residuals
vx = zeros(no_n,1);  % as many as measurments because every measurments gets residuals
vy = zeros(no_n,1);  % DDDDDDDDDDDDDDDIIIIIIIIIIIIIIIFFFFFFFFFFFFFFFFFFFFFFFFF

while max_psi>epsilon || Check2>delta
    
    %Psi function
    psi =rad^2-(x+vx-xm).^2-(y+vy-ym).^2;
    
   %Matrices with the elements from the Jacobian matrices J1, J2
    A=[2*rad*ones(no_n,1) 2*(x+vx-xm) 2*(y+vy-ym)];
    B=[-2*(x+vx-xm).*eye(no_n) -2*(y+vy-ym).*eye(no_n)];
    %Vector of misclosures
    c=0;   % DDDDDDDDDDDDDDDIIIIIIIIIIIIIIIFFFFFFFFFFFFFFFFFFFFFFFFF
    w = -B*[vx;vy]+psi-c;   % its always like this B * residuals _ constant here we have sperated vx and vy   % DDDDDDDDDDDDDDDIIIIIIIIIIIIIIIFFFFFFFFFFFFFFFFFFFFFFFFF
    
    %Normal matrix
     N_ext = [B*Q_ll*B'  A; A'  zeros(3,3)];            % DDDDDDDDDDDDDDDIIIIIIIIIIIIIIIFFFFFFFFFFFFFFFFFFFFFFFFF

    %Vector of right hand side of normal equations              
     n_ext = [-w ; 0 ; 0;0];                               % DDDDDDDDDDDDDDDIIIIIIIIIIIIIIIFFFFFFFFFFFFFFFFFFFFFFFFF
    
    %Inversion of normal matrix / Cofactor matrix of the unknowns
     Q_xx_ext = inv(N_ext);
    
    %Solution of the normal equations
     x_hat = Q_xx_ext*n_ext;
    
    %Vector of residuals
     %v_new = Q_ll*B'*x_hat(1:no_n);     % DDDDDDDDDDDDDDDIIIIIIIIIIIIIIIFFFFFFFFFFFFFFFFFFFFFFFFF
     v_new = Q_ll*B'*inv(B*Q_ll*B')*(-w);
    %Update

    v=v_new;
    vx=v(1:end/2);            % DDDDDDDDDDDDDDDIIIIIIIIIIIIIIIFFFFFFFFFFFFFFFFFFFFFFFFF
    vy=v(end/2+1:end);         % DDDDDDDDDDDDDDDIIIIIIIIIIIIIIIFFFFFFFFFFFFFFFFFFFFFFFFF
    X_0=X_0+x_hat(end-no_u+1:end);   % DDDDDDDDDDDDDDDIIIIIIIIIIIIIIIFFFFFFFFFFFFFFFFFFFFFFFFF

    
rad=X_0(1);
xm=X_0(2);
ym=X_0(3);
    
    %Check 1
    max_psi = max(abs(psi));                     % DDDDDDDDDDDDDDDIIIIIIIIIIIIIIIFFFFFFFFFFFFFFFFFFFFFFFFF
	                 
	%vTPv function  % is not objective function nay more ??
	vTPv = v_new'*P*v_new;

	%Vector of adjusted observations
	L_hat = l+v_new;   
	
	%Check 2
	Check2 = max(abs(rad^2-(L_hat(1:12,1)-xm).^2-(L_hat(13:24,1)-ym).^2));        % DDDDDDDDDDDDDDDIIIIIIIIIIIIIIIFFFFFFFFFFFFFFFFFFFFFFFFF       
	
	%Update number of iterations
    iteration = iteration+1;
    
end

% Final Check
if Check2<=delta
    disp('Everything is fine!')
else
    disp('Something is wrong.')
end


%Empirical reference standard deviation
s_0 = sqrt(vTPv/r);    %a posteriori 

%VC matrix of adjusted unknowns
 C_xx = -s_0^2*Q_xx_ext(end-no_u+1:end,end-no_u+1:end);

%Standard deviation of the adjusted unknowns
s_X = sqrt(diag(C_xx));

%Cofactor matrix of the residuals
 Q_vv = Q_ll*B'*Q_xx_ext(1:no_n,1:no_n)*B*Q_ll;
 Q_vv2 = Q_ll*B'*inv(B*Q_ll*B')*B*Q_ll;
%VC matrix of residuals
C_vv = s_0^2*Q_vv;

%Standard deviation of the residuals
s_v = sqrt(diag(C_vv));

%Cofactor matrix of adjusted observations
Q_ll_hat = Q_ll-Q_vv;

%VC matrix of adjusted observations
S_ll_hat = s_0^2*Q_ll_hat;

%Standard deviation of the adjusted observations
s_l_hat = sqrt(diag(S_ll_hat));

%Results for the unknowns

    
rad=X_0(1)
xm=X_0(2)
ym=X_0(3)






