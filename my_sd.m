function [x] = my_sd(values_A,cols_A,rows_ptr_A,b,x0,tol, max_iter)
iter = 1; r = b - mv_csr(values_A,cols_A,rows_ptr_A,x0);
delta = r'*r ;
conv = delta;
delta0 = delta
x = x0;
while (delta>tol*delta0)&&(iter<max_iter)
    q = mv_csr(values_A,cols_A,rows_ptr_A,r)
    alpha = delta/(q'*r);
    x = x +alpha*r
    if mod(iter,10) == 0
        r = b - mv_csr(values_A,cols_A,rows_ptr_A,x);
    else
        r = r - alpha*q;
    end
    delta = r'*r
    iter = iter +1;
end
end

