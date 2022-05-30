function [wps,nw3,bps,xi,nxi] = reglq(X,y)
%  Regression minimizing w and b
%  X is an m x n matrix, y a m x 1 colum vector
%  weight vector w, intercept b
%  Computes the least squares solution using the pseudo inverse
%
m = size(y, 1);
n = size(X, 2);
XX = [X, ones(m, 1)];
tmp = pinv(XX)*y;
wps = tmp(1:n, 1);
bps = tmp(n+1, 1);
nw3 = sqrt(wps'*wps);
xi = y - X*wps - bps*ones(m, 1);
nxi = sqrt(xi'*xi);
end

