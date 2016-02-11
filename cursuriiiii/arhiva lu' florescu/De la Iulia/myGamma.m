function[] = myGamma(alpha, lambda, miu, n) 
    for i = 1:n
        y(1, i) = alpha + genGamma(miu) / lambda;
        %y(1, i)= gamrnd(miu, 1);
    end
    [N, c] = hist(y, 20);
    
    [k1, k] = size(c);
    verificHi(alpha, lambda, k, c, N, miu, n);
    
    N = N / (sum(N) * (c(2) - c(1)));
    bar(c, N, 1);
    hold on;
    % gammaDensity(alpha, lambda, y, miu);
    % verificMomente(alpha, lambda, y, miu, n);
    
end

function[] = verificMomente(alpha, lambda, x, miu, n)
   realE = miu / lambda;
   realV = miu / lambda / lambda;
   y = x - alpha;
   E = sum(y) / n;
   z = y .* y;
   V = (sum(z) / n) - (E * E);
   realE
   E
   realV
   V
end

function[] = verificHi(alpha, lambda, k, c, N, miu, n)
  
   len = c(2) - c(1);
   c = c + (len / 2);
   
   p(1) = gamcdf(c(1) - alpha, miu, 1 / lambda);
    for i = 2 : (k - 1)
        p(i) = gamcdf(c(i) - alpha, miu, 1 / lambda) - gamcdf(c(i - 1) - alpha, miu, 1 / lambda);
    end
    p(k) = 1 - gamcdf(c(k - 1) - alpha, miu, 1 / lambda);
    
    chiH = 0;
    for i = 1:k
       chiH = chiH + ((N(i) - n * p(i)) ^ 2) / n / p(i);
    end
    k
    chiH
    
end

function [ y ] = genGamma(  miu )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    y = genExp(1 / miu);
    u = rand(1, 1);
    while u > raport(y, miu)
        u = rand(1, 1);
        y = genExp(1 / miu);
    end
end

function [z] = raport(y, miu)
    z = 1 / (miu ^ (miu - 1)) * y ^ (miu - 1) * exp(-y + y / miu - 1 + miu);
end

function[] = gammaDensity( alpha,lambda, x, miu ) 
   v = min(x) : 0.1 : max(x);
   z = (lambda ^ miu) / gamma(miu)  * ( (v - alpha) .^ (miu - 1) .* exp(-lambda * (v - alpha)));
   plot(v, z);
end

function [y] = genExp( lambda )
  k = 0;
  zz = 0;
  n = 0;
  while mod(k, 2) == 0
    k = 1;
    z0 = rand(1, 1);
    z1 = rand(1, 1);
    zz = z0;
    while z0 >= z1
        z0 = z1;
        z1 = rand(1, 1);
        k = k + 1;
    end
    n = n + 1;
    %k = k + 1;
  end
  n = n - 1;
  y = (n + zz) / lambda;
end