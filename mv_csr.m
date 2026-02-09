function c = mv_csr(values_A,cols_A,rows_ptr_A,b)
n_rows = length(rows_ptr_A) - 1;
c = zeros(n_rows,1);
for i = 1:n_rows
    row_start = rows_ptr_A(i);
    row_end = rows_ptr_A(i+1) - 1;
    for k = row_start:row_end
        j =cols_A(k);
        c(i) = c(i) + values_A(k)*b(j);
    end
end
end
