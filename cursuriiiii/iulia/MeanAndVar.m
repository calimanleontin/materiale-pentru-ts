function [media, dispersia] = MeanAndVar(X)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

   [m,n] = size(X);
   for i = 1:m 
       mean = 0;
       for j = 1:n
         mean = mean + X(i, j);
       end
       mean = mean / n;
       var = 0;
       for j = 1 : n
          var = var + (X(i, j) - mean) * (X(i, j) - mean);
       end
       media(i,:) = mean;
       dispersia(i,:) = var;
   end
end

