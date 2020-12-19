function null = calcInteg(f1,f2,a,b,ddx1,ddx2)
    ddx_rect = cuadrect(f1,a,b);
    ddx_trap = cuadtrap(f1,a,b);
    ddx_simp = cuadSimp(f1,a,b);
    e_rect1 = ddx1 - ddx_rect;
    e_trap1 = ddx1 - ddx_trap;
    e_simp1 = ddx1 - ddx_simp;
    disp("Integral errors r,t,s = "+e_rect1+","+e_trap1+","+e_simp1);
    %=============================
    ddx_rect = cuadrect(f2,a,b);
    ddx_trap = cuadtrap(f2,a,b);
    ddx_simp = cuadSimp(f2,a,b);
    e_rect2 = abs(ddx2 - ddx_rect);
    e_trap2 = abs(ddx2 - ddx_trap);
    e_simp2 = abs(ddx2 - ddx_simp);
    disp("Integral errors r,t,s = "+e_rect2+","+e_trap2+","+e_simp2);
end