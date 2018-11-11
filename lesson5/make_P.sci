n=201821026;
grand("setsd",n)
n = 1000;
avg = 5;
ind = grand(avg*n, 1, 'uin', 1,n);
jnd = grand(avg*n, 1, 'uin', 1,n);
P = sparse([ind,jnd], ones(avg*n, 1));


for j = 1:n
    non0 = nnz(P(:, j));
    ij = spget(P(:,j));
    if non0 > 0
        P(ij(:,1), j) = 1 / non0;
    else
        P(:, j) = 1 / n;
    end
end


clear ind jnd avg j n non0;
