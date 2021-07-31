function [outputArg1] = cost(x,y,t)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

prec = (t' * x' - y') .^ 2;
outputArg1 = sum(prec) * (1 / (2*size(x,1)));
end

