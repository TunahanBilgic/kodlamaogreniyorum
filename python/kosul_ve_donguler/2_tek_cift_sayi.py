# kodlamaogreniyorum.com

bas = int(input('Başlangıç Değeri: '))
bit = int(input('Bitiş Değeri: '))
tek_sayilar = []                # Tek sayılar için liste
cift_sayilar = []               # Çift sayılar için liste
for i in range(bas, bit):
    if i % 2:                   # eğer 2'ye bölümden kalan varsa tektir.
        tek_sayilar.append(i)   # Sayıyı listeye ekleme
    else:                       # eğer 2'ye bölümden kalan yoksa çifttir.
        cift_sayilar.append(i)
print('Tek sayılar: '+str(tek_sayilar))
print('Çift Sayılar: '+str(cift_sayilar))