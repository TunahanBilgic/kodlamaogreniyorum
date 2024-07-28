def secerek_sirala(Vektor):
    for i in range(len(Vektor)-1):
        enk = Vektor[i]
        enk_indis = i
        for j in range(i+1, len(Vektor)):
            if Vektor[j] < enk:
                enk = Vektor[j]
                enk_indis = j

        depo = Vektor[i]
        Vektor[i] = Vektor[enk_indis]
        Vektor[enk_indis] = depo
        #print(Vektor) Bu komutu aktif ederek sıralama adımlarını görebilirsiniz.
    print(Vektor)

a = [3, 4, 1, 1000, -1, 25, 35, 111]
secerek_sirala(a)