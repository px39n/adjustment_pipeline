%--------------------------------------------------------------------------
%   
%   SELECTED SECTIONS OF ADJUSTMENT CALCULATION
%        Gauss-Helmert model - Part II  

%--------------------------------------------------------------------------

clc;
clear all;
close all;

%--------------------------------------------------------------------------
%   Observations and initial values for the unknowns
%--------------------------------------------------------------------------
%Load file
 plane = load("Task2.txt");

%Observations
 X = plane(:,1);    %[m]
 Y = plane(:,2);    %[m]
 x = plane(:,3);    %[m]
 y = plane(:,4);    %[m]

 % the singularity problem that occurs inside the while loop because of the input coordinates at the beginning of the code. 
 %These coordinates are very big-large numbers and the computation process leads to a normal matrix which contains very small numbers along with very large numbers. 
 %This is the reason of singular matrix.This problem can be solved as following. 
 %Compute the centroid coordinates of each target and start group of coordinates and reduce them to their centroid. 
%The centroid coordinates is actually their mean values. The need to be deduced later.

 %Centroid of coordinates
 cent_X = mean(X);
 cent_Y = mean(Y);
 cent_x = mean(x);
 cent_y = mean(y);
 cent_X = 0;
 cent_Y = 0;
 cent_x = 0;
 cent_y = 0;

 %Reduce to the centroid
 X_re = X - cent_X;
 Y_re = Y - cent_Y;
 x_re = x - cent_x;
 y_re = y - cent_y;
 
%Vector of observations
 l = [X_re; Y_re; x_re; y_re];

%Number of observations/ points
 no_n = length(l)/2;

%Initial values for the unknowns
%For m
dist1 = sqrt((x(1,1)-X(1,1))^2+(y(1,1)-Y(1,1))^2);
dist2 = sqrt((x(2,1)-X(2,1))^2+(y(2,1)-Y(2,1))^2);
m = 1;

%For alpha
 %rotation
 alpha_XY = atan2((Y_re(3)-Y_re(4)),(X_re(3)-X_re(4)));
 alpha_xy = atan2((y_re(3)-y_re(4)),(x_re(3)-x_re(4)));
 
 alpha = 0;

 % 
Xo = cent_X-cent_x;
Yo = cent_Y-cent_y;

% Substitutions
a = m*cos(alpha);
o = m*sin(alpha);

%Vector of initial values for the unknowns
X_0 = [a o Xo Yo]';

%Number of unknowns
no_u = length(X_0);

%Redundancy
 r = no_n-no_u; % we have no constraint equation 
 
 
 P_XY = [10.000 0.8929 7.1429 2.2222 7.6923 14.2857 1.4286 10.0000 3.2259 11.1111]'; %IN THE ORDER: X1X2X3X4X5Y1Y2Y3Y4Y5
 P_xy = [5.8824 0.9009 7.6923 4.1667 8.3333 12.5000 1.7241 16.6667 6.6667 16.6667]'; %IN THE ORDER: X1X2X3X4X5Y1Y2Y3Y4Y5
 P = diag([P_XY; P_xy]);
 
%Theoretical reference standard deviation
 sigma_0 = 1;     %a priori

%Cofactor matrix of the observations
 Q_ll = inv(P);
 
%VC Matrix of the observations
 S_ll = sigma_0^2/1*Q_ll;

%--------------------------------------------------------------------------
%  Adjustment
%--------------------------------------------------------------------------
%break-off conditions
 epsilon = 10^-6;
 delta = 10^-6;
max_psi = 10^Inf;

%Initialization
psi = zeros(no_n,1);
A = zeros(no_n,no_u);
B = zeros(no_n,2*no_n);

%Initial values for the residuals
 v = zeros(2*no_n,1);

%Number of iterations
iteration = 0;

%Constants
 c = zeros(no_n,1);
 %c2 = 1;

while max_psi>epsilon || Check2>delta                
    
    %Psi function
    psi = [(X_re+v(1:end/4))-a*(x_re+v(end/2+1:end-5))+o*(y_re+v(end-5+1:end))-Xo;
        (Y_re+v(end/4+1:end/2))-o*(x_re+v(end/2+1:end-5))-a*(y_re+v(end-5+1:end))-Yo]; 
    %psi = nx*(x+v(1:end/3))+ny*(y+v(end/3+1:end/1.5))+nz*(z+v(end/1.5+1:end))-d;

    %Gamma function
      %gamma = nx^2+ny^2+nz^2;
      alpha = atan(o/a)*200/pi;
    m = a/cos(alpha);
     %Matrices with the elements from the Jacobian matrices J1, J2 
      A = [sin(alpha)*(v(end-5+1:end)+y_re)-cos(alpha)*(x_re+v(end/2+1:end-5)) m*cos(alpha)*(y_re+v(end-5+1:end))+m*sin(alpha)*(x_re+v(end/2+1:end-5)) -1*ones(no_n/2,1) zeros(no_n/2,1)
           -cos(alpha)*(y_re+v(end-5+1:end))-sin(alpha)*(x_re+v(end/2+1:end-5)) -m*cos(alpha)*(x_re+v(end/2+1:end-5))+m*sin(alpha)*(y_re+v(end-5+1:end)) zeros(no_n/2,1) -1*ones(no_n/2,1)];
      
 

        % Simpler way
        B = [eye(no_n/2) zeros(no_n/2) (-a*eye(no_n/2)) (o*eye(no_n/2))
               zeros(no_n/2) eye(no_n/2) (-o*eye(no_n/2)) (-a*eye(no_n/2)) ]; % IN THE ORDER: X1X2X3X4X5Y1Y2Y3Y4Y5
       
    %Vectors of misclosures
     w = -B*v+psi-c;
     %w2 = gamma-c2;
    
    %Normal matrix
     N_ext = [B*Q_ll*B' A;A' zeros(4,4)];
     
    %Vector of right hand side of normal equations
     n_ext = [-w; 0; 0; 0; 0];
    
    %Inversion of normal matrix / Cofactor matrix of the unknowns
     Q_xx_ext = inv(N_ext);
    
    %Solution of the normal equations
     x_hat = Q_xx_ext*n_ext;
    
    %Langrange multipliers
%      k1 = inv(B*Q_ll*B')*(-A*x_hat(1:end-1)-w1); 
%      k2 = x_hat(end);
     k = inv(B*Q_ll*B')*(-w);
     %XXo = x_hat(2*no_n+1:end);
     k = x_hat(1:no_n);
    %Vector of residuals
     v_new = Q_ll*B'*k;
       
    %Update
     X_0 = X_0+x_hat(end-no_u+1:end);
    
    a = X_0(1);
    o = X_0(2);
    Xo = X_0(3);
    Yo = X_0(4);

    %Update residuals
     v = v_new; % or don't do this use v always
    
    %Check 1
    max_psi = max(abs(psi));
    
    %vTPv function
     vTPv = v'*P*v;
 
    %Vector of adjusted observations
     l_hat = l+v;

    %Check 2
     Check2 = max(abs([((l_hat(1:end/4))-a*(l_hat(end/2+1:end-5))+o*(l_hat(end-5+1:end))-Xo);((l_hat(end/4+1:end/2))-o*(l_hat(end/2+1:end-5))-a*(l_hat(end-5+1:end))-Yo)]));
    %Check2 = max(abs(psi));
    
    %Update number of iterations
    iteration = iteration+1;
    
     
end

if Check2<=delta
    disp('Everything is fine!')
else
    disp('Something is wrong.')
end

%Empirical reference standard deviation
s_0 = sqrt(vTPv/r);    %a posteriori 

%VC matrix of adjusted unknowns
%S_XX_hat = -s_0^2*Q_xx_ext(1:no_u,1:no_u); %  this for only when we have a constraint

S_XX_hat = -s_0^2*Q_xx_ext(end-no_u+1:end, end-no_u+1:end); %(11:14), taking the last four i.e, unknowns like Ex 9

%Standard deviation of the adjusted unknowns
s_X = sqrt(diag(S_XX_hat));

%Cofactor matrix of the residuals
Q_vv = Q_ll*B'*inv(B*Q_ll*B')*B*Q_ll;

%VC matrix of residuals
S_vv = s_0^2*Q_vv;

%Standard deviation of the residuals
s_v = sqrt(diag(S_vv));

%Cofactor matrix of adjusted observations
Q_ll_hat = Q_ll-Q_vv;

%VC matrix of adjusted observations
S_ll_hat = s_0^2*Q_ll_hat;

%Standard deviation of the adjusted observations
s_l_hat = sqrt(diag(S_ll_hat));

%The adjusted unknowns
alpha = atan(o/a)*200/pi;
m =sqrt(a^2+o^2);

%compute standard deviation of m and alpha by using error propagation

F1=[0.5*(a^2+o^2)^(-1/2)*2*a, 0.5*(a^2+o^2)^(-1/2)*2*o;
    200/pi*(1/(1+(o/a)^2))*(-o/a^2), 200/pi*(1/(1+(o/a)^2))*(1/a)];
%WRONG! S_XX_F1 = F1*diag([s_X(1:2,1)])*F1';    %note: s_X(1:2,1)=[S_X of a, S_X of ohh]
S_XX_F1 = F1*S_XX_hat(1:2,1:2)*F1';  
S_X_F1 = sqrt(S_XX_F1);  %note: S_X_F1=[S_X of m, S_X of a]
true_S_X = [s_X; diag(S_X_F1)];

l_hat=l_hat+[ones(5,1)*cent_X;ones(5,1)*cent_Y;ones(5,1)*cent_x;ones(5,1)*cent_y]
%Results for the unknowns
alpha
m
l_hat_X=l_hat(1:5);
l_hat_Y=l_hat(6:10);
l_hat_x=l_hat(11:15);
l_hat_y=l_hat(16:20);
vX=v(1:5);
vY=v(6:10);
vx=v(11:15);
vy=v(16:20);

Xo =(l_hat_X(1) + vX(1)) - a*(l_hat_x(1)+vx(1)) + o*(l_hat_y(1)+vy(1));

Yo =  (l_hat_Y(1) + vY (1)) - o*(l_hat_x(1)+vx(1)) - a*(l_hat_y(1)+vy(1));


 % Standard deviation 
true_S_X
 
%Residuals
disp("The residuals are"), %disp(v);
disp("The standard deviations of residuals are "),% disp(s_v);
disp("The adjusted observations are"), %disp(l_hat);
disp("The standard deviations of adjusted observations are "),% disp(s_l_hat);








