function H=get_H(v)
    r = 2*(v*v')/(v'*v);
    H = eye(length(r));
    H = H - r;
end
