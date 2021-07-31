function [outputArg1] = descent(t,x,y,a)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

m = size(x,1);
thetas = zeros(size(x,2),1);
prec = t' * x' - y';
for j=1:size(x,2)
    thetas(j) = t(j) - a * (1/m) * (prec * x(:,j));
end
outputArg1 = thetas;
end

