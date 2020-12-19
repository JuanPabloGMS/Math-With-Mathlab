function cclean = clean_col(c,p)
    i = p-1;
    cclean = c;
    while i > 0
        cclean(i) = 0;
        i = i-1;
    end
end