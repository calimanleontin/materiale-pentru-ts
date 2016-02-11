function [ ] = pb2( )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    mat = pb1(-2, 2, 1, 1000);
    hist(mat, 20);
    x = [-2: 0.1: 2, 1];
    y = x + 0.1;
    p = (y - x) / 4    
end

function [ A ] = pb1(a, b, m, n )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    A = a + (b - a) * rand(m, n);
end
