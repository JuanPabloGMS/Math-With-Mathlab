function dx2 = dx2second(f,h,x)
    dx2 = (f(x+h) - 2*f(x) + f(x-h))/(h^2);
end