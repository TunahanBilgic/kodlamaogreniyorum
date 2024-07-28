function sirali_vektor = secerek_sirala(Vektor)
 for i=1:length(Vektor)-1
    enk = Vektor(i);
    enk_indis = i;
    for j=i+1:length(Vektor)
        if Vektor(j) < enk
            enk = Vektor(j);
            enk_indis = j;
        end         
    end 
    depo = Vektor(i);
    Vektor(i) = Vektor(enk_indis);
    Vektor(enk_indis) = depo;    
 end
 sirali_vektor = Vektor;
end