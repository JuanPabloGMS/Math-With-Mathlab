function mc = minimos_cuadrados(y,t,g)
    b = y';
    A = get_A(g,t);
    ATA = A'*A;
    ATb = A'*b;
    Ln = chol(ATA,'lower');
    L = Ln;
    %Triangular inf
    y = triang_inf(L,ATb);
    %Triangular sup
    LT = Ln';
    x = triang_sup(LT,y);
   % y = L\ATb;
   % x = L'\y;
    mc = x;
end