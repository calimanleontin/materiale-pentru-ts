function [] = Lab3Aplicatie()
%UNTITLED14 Summary of this function goes here
%   Detailed explanation goes here
  for i = 1:1000
     y(1, i) = randF(); 
     v(1, i) = exp(exprnd(1));
     if(v(1, i) > 30)
        v(1, i) = 0;
     end
  end
  figure(1)
  [N,C] = hist(y, 15);
  N = N / (sum(N) * (C(2) - C(1)));
  bar(C, N, 1, 'w');
  
  hold on;
  x = min(y):0.1:max(y);
  [aux,n] = size(x);
  for i = 1:n
    z(1, i) = FToPlot(x(1, i));
  end
  plot(x, z);
  
  figure(2)
  [N,C] = hist(v, 15);
  N = N / (sum(N) * (C(2) - C(1)));
  bar(C, N, 1, 'w');
  hold on;
  
  x = min(y):0.1:max(y);
  [aux,n] = size(x);
  for i = 1:n
    z(1, i) = FToPlot(x(1, i));
  end
  plot(x, z);
  
end

function [y] = randF()
    u = rand(1,1);
    y = FInv(u);
end

function [y] = FInv(x)
     if (abs(x - 1) < 0.05)
         y = 0;
     else
         y = 1/(1 - x);
     end;
end

function [y] = FToPlot(x)
    if x > 1
        y = 1.0 / x / x;
    else
        y = 0;
    end
end