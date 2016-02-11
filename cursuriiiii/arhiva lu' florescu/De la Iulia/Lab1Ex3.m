function [ ] = Lab1Ex3( x )
    i = 1;
    s = 0;
    while(x(1, i) <= 8)
        s = s + x(1, i);
        i = i + 1;
    end
    s

end

