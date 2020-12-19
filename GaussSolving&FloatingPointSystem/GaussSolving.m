%Sistema de punto flotante

fl_s = fls(2,3,-1,1);
A = [2,4,6;1,3,3;2,5,7];
b = [3,4,2];
vec_xg = gauss(A,b);
vec_xgj = gaussJordan(A,b);
disp("Vector Solución X-Gauss");
disp(vec_xg);
disp("------------------------------");
disp("Vector Solución X-GaussJordan");
disp(vec_xgj);
disp("------------------------------");
disp("Sistema de Punto Flotante");
disp(["Max Nums: ","UFL: ","OFL: "]+fl_s);
disp("Representación en la recta en la ventana emergente");
function fl_s = fls(B,t,L,U)
    all_nums = 2*(B-1)*B^(t-1)*(U-L+1)+1;
    UFL = B^L;
    OFL = B^(U+1)*(1-B^-t);
    fl_s = [all_nums UFL OFL];
    count_pots = 0;
    pots_vec = zeros(1,10);
    notlast = 0;
    for i = 0:100 
        pot = B^i;
        if pot <= OFL
            count_pots = count_pots + 1;
            pots_vec(i+1) = pot;
        else
            if pot/B < OFL
                count_pots = count_pots+1;
                pots_vec(i+1) = pot;
                notlast = 1;
                break;
            end
        end
    end
    disp(count_pots);
    side = (all_nums-1)/2;
    nums_per_pot = side/count_pots;
    points = [UFL];
    UFL_tmp = UFL;
    for i = 1:count_pots
        range_tmp = pots_vec(i)-UFL_tmp;
        segment = range_tmp/nums_per_pot;
        for j = 1:nums_per_pot
            new_p = UFL_tmp+segment;
            points = [points;new_p];
            UFL_tmp = new_p;
        end
    end
    neg_points = -1.*points;
    all_p = [wrev(points);0; neg_points];
    if notlast == 1
        all_p = all_p(2:end-1);
    end
    y_points = zeros(length(all_p));
    plot(all_p,y_points,'.r');
end

%Gauss por Matrices de Eliminación
function vec_xg = gauss(A,b)
    pivot = 1;
    Ai = A;
    bi = b';
    for i = 1:length(Ai)-1
        Mi = eye(length(Ai));
        for j = pivot+1:length(Ai)
            Mi(j,pivot)=(Ai(j,pivot)/Ai(pivot,pivot))*-1;
        end
        pivot = pivot+1;
        Ai = Mi*Ai;
        bi = Mi*bi;
    end
    vec_xg = zeros(length(Ai),1);
    sub = 1;
    i = length(bi);
    while i > 0
        vec_xg(i) = bi(i)/Ai(i,i);
        for j = 1:length(Ai)-sub
            bi(j) = bi(j) - (Ai(j,i)*vec_xg(i));
            Ai(j,i) = 0;
        end
        sub = sub+1;
        i = i-1;
    end
end

%Gauss-Jordan por Matrices de Eliminación
function vec_xgj = gaussJordan(A,b)
    pivot = 1;
    Ai = A;
    bi = b';
    for i = 1:length(Ai)
        Mi = eye(length(Ai));
        for j = 1:length(Ai)
            if j ~= pivot
            Mi(j,pivot)=(Ai(j,pivot)/Ai(pivot,pivot))*-1;
            end
        end
        pivot = pivot+1;
        Ai = Mi*Ai;
        bi = Mi*bi;
    end
    vec_xgj = zeros(length(Ai),1);
    for i = 1:length(Ai)
        vec_xgj(i) = bi(i)/Ai(i,i);
    end
end
