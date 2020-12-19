function tinf = triang_inf(L,ATb)
tinf = zeros(length(L),1);
    sub = 0;
    i = 1;
    while i <= length(ATb)
        tinf(i) = ATb(i)/L(i,i);
        for j = 1:length(L)-sub
            ATb(j) = ATb(j) - (L(j,i)*tinf(i));
            L(j,i) = 0;
        end
        sub = sub+1;
        i = i+1;
    end
end