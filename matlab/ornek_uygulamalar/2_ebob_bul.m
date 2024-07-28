function ebob = ebob_bul(x)
    for i = max(x):-1:1
        if mod(x, i) == 0  
            ebob = i;
            fprintf('Ebob: %d\n',ebob);
            break
        end   
    end   
end 