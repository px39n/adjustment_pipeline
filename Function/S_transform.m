function [X_hat_tran_1,Q_xx_tran_1] = S_transform(datum1,datum2,X_hat,Q_xx)
% Help process S Transform
% Input： 
%   G_1: Original trace min
%   B_1: New Datum
%   X_hat: Original X_hat
%   Q_hat: Original Q_hat
% Output:
%   X_hat_tran_1: Transformed X
%   Q_xx_tran_1: Transformed Q

% Example:
% [X_hat_tran_1,Q_xx_tran_1] = S_transform(G_1,B_1,X_hat,Q_xx)
%
%

datum1=datum1';
datum2=datum2';
I = eye(length(datum1),length(datum1));
%S-transformation
S_1 = I -datum1*(inv(datum2'*datum1))*datum2';
%
X_hat_tran_1 = S_1*X_hat;
Q_xx_tran_1 =S_1*Q_xx*S_1' ;

end

