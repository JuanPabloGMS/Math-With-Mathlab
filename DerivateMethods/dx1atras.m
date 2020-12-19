function dx1 = dx1atras(f,h,x)
    dx1 = (f(x)-f(x-h))/h;
end