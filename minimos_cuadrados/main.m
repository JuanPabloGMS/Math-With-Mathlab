mc = minimos_cuadrados([1.0,0.5,0.0,0.5,2.0], [-1.0,-0.5,0.0,0.5,1.0], 2);
plot(A,b,'.b');
points = -3:0.5:5;
pn = 0;
for i = 1:g+1
    pn = pn+mc(i)*points.^(i-1); 
end
hold on;
plot(points, pn, 'r');
hold off;
disp(mc);