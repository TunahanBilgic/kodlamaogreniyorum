function sirali_vektor = kabarcik_sirala(vektor)
    for i=1:length(vektor)-1
        for j=length(vektor):-1:i+1
            if vektor(j)<vektor(j-1)
                depo = vektor(j-1);
                vektor(j-1) = vektor(j);
                vektor(j) = depo;
                %disp(vektor); Algoritmanýn adýmlarýný görmek için.
            end
        end
    end
    sirali_vektor = vektor;
end