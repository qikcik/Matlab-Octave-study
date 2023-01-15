H = zeros(10,10,10);

for c = 1:size(H)
    for r = 1:size(H)
        for a = 1:3:r
            H(r,c,a) = c+r;
        end   
    end   
end

disp(H)