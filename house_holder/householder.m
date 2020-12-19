function x = householder(y,t,g)
    aux_t = t;
    aux_y = y;
    for i = 1:g+1
        v = get_v(i,aux_t(:,i));
        H = get_H(v);
        aux_t = H*aux_t;
        aux_y = H*aux_y;
    end
    x = triang_sup(aux_t,aux_y,g+1);
end