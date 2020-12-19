function vi = get_v(pivot, col)
    r = zeros(length(col),1);
    col=clean_col(col,pivot);
    if col(pivot) < 0 
        r(pivot) = norm(col);
    elseif col(pivot) > 0
        r(pivot) = -norm(col);
    end
    vi = col-r;
end