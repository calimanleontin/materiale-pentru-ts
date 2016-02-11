function [] = myNormala(miu, sigma)
    for i = 1:1000
        y(1, i) = genNormala();
        y(1, i) = sigma * y(1, i) + miu;
    end
    [N,c] = hist(y, 20);
    N = N / (sum(N) * (c(2) - c(1)));
    sum(N) * (c(2) - c(1))
    bar(c, N, 1);
    
end

function [y] = genNormala()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
   
   y = genExp(1);
   u = rand(1, 1);
   while u > checkFunc(y)
       y = genExp(1);
       u = rand(1, 1);
   end
   
   u1 = rand(1, 1);
   if u1 > 1/2
      y = y * (-1);
   end
end

function [y] = genExp( lambda )
    x = rand(1, 1);
    y = inverse(lambda, x);
     %hist(y, 10)
    
end

function[z] = checkFunc(y) 
   z = exp(-y*y/2+y-1/2);
end

function[y] = inverse(lambda, u) 
    y = -1 / lambda * log(u);
end
