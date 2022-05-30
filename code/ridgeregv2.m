function [w,nw2,b,xi,nxi] = ridgeregv2(X,y,K)
%  Ridge regression minimizing w and b
%  b is penalized
%  X is an m x n matrix, y a m x 1 colum vector
%  weight vector w, intercept b
%  Solution in terms of the primal variables
%  And also in terms of the dual variable alpha
%
m = size(y, 1);
n = size(X, 2);
XX = [X ones(m, 1)];
alpha = (XX*XX'+K*eye(m))^(-1)*y;
tmp = XX'*alpha;
w = tmp(1:n, 1);
b = tmp(n+1, 1);
xi = K*alpha;
b = ones(1, m)*alpha;
nw2 = sqrt(w'*w);
nxi = sqrt(xi'*xi);
end

