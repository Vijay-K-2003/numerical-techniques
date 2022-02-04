% Solution Q16
function evensum = addeven(x)
    evensum = 0;
    arr = 1:x;
    for i = 1 : x
        if mod(i,2) == 0
            evensum = evensum + arr(i);
        end
    end
end