function [ ] = UniformDistribution( )
%UNTITLED12 Summary of this function goes here
%   Detailed explanation goes here
  a = -2; b = 2;
  x = my_rand(a, b, 1, 1000);
  [N,C] = hist(x, 15);
  N = N / (sum(N) * (C(2) - C(1)));
  bar(C, N, 1, 'b');
  hold on;
  v = min(x):0.01:max(x);
  plot(v, unifpdf(v,a, b)); 
  sum(N)
end

function[y] = my_rand(a, b, m, n)
   y = a + (b - a) * rand(m, n);
end