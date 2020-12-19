function dx2 = dx2centro(f,h,x)
    dx2 = (f(x+h)-f(x-h))/(2*h);
end