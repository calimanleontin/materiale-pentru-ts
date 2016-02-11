function [] = Repartition() 
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here
   
   %BINOMIAL
   figure(1);
   x = 0:1:50
   plot(x, binopdf(x, 50, 0.2));
   
   %POISSON
   figure(2)
   x = 0:1:5;
   plot(x, poisspdf(x, 1), 'k*');
   
   %NORMAL DISTRIBUTION
   figure(3);
   x = -5:0.01:5;
   plot(x, normpdf(x, -2, 2));
   hold  on;
   
   plot(x, normpdf(x, 0, 1));
   hold on;
   
   plot(x, normpdf(x, 2, 0.5));
   hold off;
   
   p1 = normcdf(2, 0, 1) - normcdf(-2, 0, 1);
   %normspec([-2, 2], 0, 1)
   
   p1 = normcdf(3, 0, 1) - normcdf(-3, 0, 1);
   %normspec([-3, 3], 0, 1)
   
   p1 = normcdf(4, 0, 1) - normcdf(-4, 0, 1);
   %normspec([-4, 4], 0, 1)
   
   %EXPONENTIAL
   figure(4);
   x = 0:0.1:10;
   plot(x, exppdf(x, 3));
   hold on;
   
   plot(x, exppdf(x, 1));
   hold on;
   
   plot(x, exppdf(x, 4));
   hold off;
   
   %UNIFORM
   
   figure(5)
   x = 1:10
   plot(x, unidpdf(x, 10));
   
end

