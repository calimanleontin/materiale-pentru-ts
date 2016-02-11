function [] = aplicatie_3( m, n )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    b = 1:n;
    a = repmat(b, m, 1)
    c = 0:(m - 1);
    d = n * repmat(c', 1, n) + a

end

