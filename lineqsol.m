function sol = lineqsol(A, b)
    m = size(A, 1);
    n = size(A, 2);
    if m == n
        if cond(A) > 1e14
            sol = pinv(A) * b;
        else
            sol = A \ b;
        end
    else
        if m < n
            sol = A' * pinv(A*A') * b;
        else
            sol = pinv(A' * A) * A' * b;
        end
    end
end