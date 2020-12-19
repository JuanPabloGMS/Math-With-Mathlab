function A = get_A(g,t)
    A = zeros(length(t),g+1);
    for i = 1:g+1
        for j = 1:length(t)
            A(j,i) = t(j)^(i-1);
        end
    end
end