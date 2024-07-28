# kodlamaogreniyorum.com,2021
print("Basit Hesap Makinesi..\n")
print("Toplama: '+' veya 'topla'\n"
      "Çıkarma: '-' veya 'çıkar'\n"
      "Çarpma: '*' veya 'çarp'\n"
      "Bölme: '/' veya 'böl'\n"
      "Çıkış: '=' veya 'çıkış'\n")
sayı = int(input('İşlem Yapılacak Sayı: '))
while True:
    işlem = input('Yapılacak İşlem: ')
    if işlem == '+' or işlem.lower() == 'topla':
        yeni_sayı = float(input('İşlem Yapılacak Sayı: '))
        sayı += yeni_sayı
    elif işlem == '-' or işlem.lower() == 'çıkar':
        yeni_sayı = float(input('İşlem Yapılacak Sayı: '))
        sayı -= yeni_sayı
    elif işlem == '*' or işlem.lower() == 'çarp':
        yeni_sayı = float(input('İşlem Yapılacak Sayı: '))
        sayı *= yeni_sayı
    elif işlem == '/' or işlem.lower() == 'böl':
        yeni_sayı = float(input('İşlem Yapılacak Sayı: '))
        sayı /= yeni_sayı
    elif işlem == '=' or işlem.lower() == 'çıkış':
        print('= %g\n' % sayı)
        break
    else:
        print('Hatalı giriş yaptınız.\n')
    print('= %g\n' % sayı)
