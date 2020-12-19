function s = cuadSimp(f,a,b)
    s = ((b-a)/6)*(f(a)+4*(f((a+b)/2)) + f(b));
end