function [ y ] = f( x )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
  if (x >= -1) && (x <= 1)
    y = x * x - x;
  else
     y = 2 * x + 3;
  end
end

