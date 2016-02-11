function [] = normal( x )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    n1 = normpdf(x, -2, 2);
    n2 = normpdf(x, 0, 1);
    n3 = normpdf(x, 2, 0.5);
    plot(x, n1);
    hold on;
    plot(x, n2);
    hold on;
    plot(x, n3);
    

end

