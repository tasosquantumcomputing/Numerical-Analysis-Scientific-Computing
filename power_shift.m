function [lamda,x,it] = power_shift(A,q,x0,maxiter,epsilon)
n = size(A,1);
I = eye(n);
lamda = 0;
x = x0;
x = x/norm(x);
for it = 1:maxiter
    y = (A-q*I)\x;
    x = y/norm(y);
    lamda = (x'*A*x)/(x'*x);
    res = norm(A*x-lamda*x);
    if res<epsilon
        return;
    end
end
end
