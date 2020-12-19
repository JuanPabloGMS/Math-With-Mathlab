function tsup = triang_sup(t,y,g)
tsup = zeros(g,1);
    sub = 1;
    i = g;
    while i > 0
        tsup(i) = y(i)/t(i,i);
        for j = 1:length(t)-sub
            y(j) = y(j) - (t(j,i)*tsup(i));
            t(j,i) = 0;
        end
        sub = sub+1;
        i = i-1;
    end
end