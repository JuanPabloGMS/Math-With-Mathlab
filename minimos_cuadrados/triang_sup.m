function tsup = triang_sup(LT,y)
tsup = zeros(length(LT),1);
    sub = 1;
    i = length(y);
    while i > 0
        tsup(i) = y(i)/LT(i,i);
        for j = 1:length(LT)-sub
            y(j) = y(j) - (LT(j,i)*tsup(i));
            LT(j,i) = 0;
        end
        sub = sub+1;
        i = i-1;
    end
end