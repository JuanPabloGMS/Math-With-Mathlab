function e = calcError(dxa,dxv)
    error_vec = zeros(10,1);
    for i = 1:10
        error_vec(i) = abs(dxv(i)-dxa(i));
    end
    e = mean(error_vec);
end