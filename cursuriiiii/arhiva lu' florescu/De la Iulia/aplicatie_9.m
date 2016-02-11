function [ ] = aplicatie_9( x )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    [m, n] = size(x);
    s = repmat(std(x), m, 1);
    mat = repmat(mean(x), m, 1);
    [row, column] = find(x - mat - (3 .* s)) ; 
    unique(column)
end

