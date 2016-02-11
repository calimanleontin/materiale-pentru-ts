function [ ] = Exponential_Inversa(n, lambda)
%UNTITLED13 Summary of this function goes here
%   Detailed explanation goes here
  for i = 1:n
    y(1, i) = randExp(lambda);
  end
  [N,C] = hist(y, 15);
  N = N / (sum(N)*(C(2)-C(1)));
  bar(C, N, 1, 'w');
  hold on;
  
  x = min(y):0.1:max(y);
  plot(x, exppdf(x, 1/lambda));
end

function[y] = randExp(lambda)
    u = rand(1, 1);
    y = ExpFInv(u, lambda);
end

function[y] = ExpFInv(x, lambda)
  y = (-1 / lambda) * log(x);
end
