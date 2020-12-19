A = [1,1,1,1,1;-1,-0.5,0,0.5,1.0;1.0,0.25,0.0,0.25,1.0];
b = [1,0.5,0,0.5,2.0];
g = 2;
hold on;
plot(A,b,'.g','MarkerSize',12);
hold off;
x = householder(b',A',g);
points = -1:0.25:1;
grid on;
pn = 0;
for i = 1:g+1
    pn = pn+x(i)*points.^(i-1); 
end
hold on;
plot(points, pn,'r');
plot(points, pn,'.b','MarkerSize',12);
hold off;