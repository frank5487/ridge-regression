function [w,b,xi,nxi,alpha] = ridgeregb1(X,y,K)
%  Ridge regression 
%  b is not penalized
%  Uses the KKT equations
%  X is an m x n matrix, y a m x 1 colum vector
%  weight vector w, intercept b
%  Solution in terms of the dual variables
%  This version does not display the solution
%
m = size(y, 1);
n = size(X, 2);
X1 = X*X' + K*eye(m);
obm = ones(m, 1);
A = [X1, obm; obm', 0];
T = A \ [y; 0];
alpha = T(1:m, 1);
mu = T(m+1, 1);
w = X'*alpha;
b = mu;
xi = K * alpha;
nxi = sqrt(xi'*xi);
end
