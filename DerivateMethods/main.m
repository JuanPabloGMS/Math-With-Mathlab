%f1,f2: testing functions
%d1: analytic first derivate
%d2: analytic second derivate
f1 = @(x)cos(3*x+x^2);
f2 = @(x)sin(3*x+x^2);
d11 = @(x)-(2*x+3)*sin(x^2+3*x);
d21 = @(x)-2*sin(x^2+3*x)-((2*x+3)^2)*cos(x^2+3*x);
d12 = @(x)(2*x+3)*cos(x^2+3*x);
d22 = @(x)-2*cos(x^2+3*x)-((2*x+3)^2)*sin(x^2+3*x);
calcDerivate(f1,f2,d11,d21,d12,d22);
ddx1 = 0.1721;
ddx2 = f2(5)-f2(-5);
calcInteg(d11,d21,-5,5,ddx1,ddx2);
