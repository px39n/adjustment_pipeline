%--------------------------------------------------------------------------
%   
%   SELECTED SECTIONS OF ADJUSTMENT CALCULATION
%      Free Network Adjustment Calculation
%        - Combined Horizontal Network -
% 
%   Author         : Anastasia Pasioti
%   Version        : May 30, 2017
%   Last changes   : Mar. 28, 2019
%
%--------------------------------------------------------------------------

clc;
clear all;
close all;
format long g;
%--------------------Task 3------------------------------------------------

%Data
% X_hat = 
% Q_xx = 

I = eye(12,12);

%Initial values 
y1 = 5314698.13;
x1 = 4965804.18;
y6 = 5317651.428;
x6 = 4968940.373;
y9 = 5324162.853;
x9 = 4970922.160;
y15 = 5320448.85;
x15 = 4962997.53;

%Vector of initial values
X_0 = [y1 x1 y6 x6 y9 x9 y15 x15 0 0 0 0]';

%% 1)

p = 4;

%Scaling
    a = sqrt(x1^2+x6^2+x9^2+x15^2+y1^2+y6^2+y9^2+y15^2);
    
%Matrix G
%     G = 

%Matrix B
%     B = 


%S transformation
S = I-G'*(inv(B*G'))*B;

x_hat_tran = S*x_hat;

Q_xx_tran = S*Q_xx*S';








