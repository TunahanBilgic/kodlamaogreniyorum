#kodlamaogreniyorum.com, 2020
import statistics

def aritmetik(self):
    art = 0
    for i in self:
        art += i
    art /= len(self)
    print('Aritmetik Ortalaması:', art)

def geometrik(self):
    geo = self[0]
    for i in range(1, len(self)):
        geo *= self[i]
    geo **= (1 / len(self))
    print('Geometrik Ortalaması:', geo)

def harmonik(self):
    har = 1 / self[0]
    for i in range(1, len(self)):
        har += (1 / self[i])
    har = len(self) / har
    print('Harmonik Ortalaması:', har)

dizi = []
[dizi.append(i) for i in range(1, 10)]
aritmetik(dizi)
geometrik(dizi)
harmonik(dizi)

#Modül çıktıları ile karşılaştırma
print("\nModül Çıktıları:\nAritmetik:", statistics.mean(dizi))
print("\nGeometrik:", statistics.geometric_mean(dizi))
print("\nHarmonik:", statistics.harmonic_mean(dizi))



