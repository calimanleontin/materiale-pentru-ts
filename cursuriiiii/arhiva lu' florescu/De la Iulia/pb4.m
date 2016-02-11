function [  ] = pb4(n)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    [x, z] = pb3(1, n);
    zx = x;
    
    y = inverse(x')
    c1 = hist(y, 30);
 
    bar(c1);
    b = exp(x);
    %hold on;
    %plot(x,b, 'red');
    
    %figure;
    %c2 = hist(z, 30);
 
    %bar(c2)
    %hold on;
    %zy = exp(zx);
    %plot(zx, zy, 'red');
    %inverse(0.8)
end

function[y] = inverse(x) 

    t = 1 + zeros(size(x)) - x;
    
    if x == 1
        y = 0;
    else 
        y = double(1) ./ double(t);
        
    end
end
