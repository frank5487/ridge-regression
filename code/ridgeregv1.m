function [w,nw1,b,xi,nxi] = ridgeregv1(X,y,K)
%  Ridge regression with centered data
%  b is not penalized
%  X is an m x n matrix, y a m x 1 colum vector
%  weight vector w, intercept b
%  Solution in terms of the primal variables
%
m = size(y, 1);
n = size(X, 2);
ymean = sum(y) / m;
oneByM = ones(m, 1);
yhat = y - ymean * oneByM;
Xmean = zeros(m, n);
for j = 1:n
    Xj = (sum(X(:,j)) / m) * oneByM;
    Xmean(:,j) = Xj;
end
Xhat = X - Xmean;
w = Xhat'*(Xhat*Xhat'+K*eye(m))^(-1)*yhat;
xs = zeros(1, n);
for j = 1:n
    xj = (sum(X(:,j))/m);
    xs(1,j) = xj;
end
b = ymean - (xs)*w;
xi = yhat - Xhat*w;
nw1 = sqrt(w'*w);
nxi = sqrt(xi'*xi);
end
