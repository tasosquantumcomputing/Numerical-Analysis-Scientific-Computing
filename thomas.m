function x = thomas(a,b,c,d)
tic
n = length(b);
if length(a) ~= n-1||length(c) ~= n-1||length(d) ~= n 
    error('Ο πίνακας δεν είναι τριδιαγώνιος')
end
cp = zeros(n-1,1);
dp = zeros(n,1);
if b(1) == 0
    error('Η Thomas χρειάζεται οδήγηση')
end
cp(1) = c(1)/b(1);
dp(1) = d(1)/b(1);

for i=2:n-1
    paran = b(i) - a(i-1)*cp(i-1);
    if paran == 0
        error('Η Thomas χρειάζεται οδήγηση')
    end
    cp(i) = c(i)/paran;
end

for i = 2:n 
    paran = b(i) - a(i-1)*cp(i-1);
    dp(i) = (d(i) - a(i-1)*dp(i-1))/paran;
end

x = zeros(n,1);

x(n) = dp(n);

for i = n-1:-1:1
    x(i) = dp(i)- cp(i)*x(i+1);
end
stoptime = toc
end
    
    
