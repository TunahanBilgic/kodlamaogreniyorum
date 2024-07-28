def kabarcik_sirala(vektor):
    for i in range(len(vektor)-1):
        for j in reversed(range(i+1, len(vektor))):
            if vektor[j] < vektor[j-1]:
                depo = vektor[j-1]
                vektor[j-1] = vektor[j]
                vektor[j] = depo
                #print(vektor) Algoritmanın adımlarını görmek için.
    print(vektor)

vekt = [3, 5, 1, 10, -3, 8]
kabarcik_sirala(vekt)