function ekok = ekok_bul(x)
    for i = 1:prod(x) %Dizinin �arp�m�
        if mod(i, x) == 0  
            ekok = i;
            fprintf('Ekok: %d\n',ekok);
            break
        end
    end   
end