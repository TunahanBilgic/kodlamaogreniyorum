#kodlamaogreniyorum.com, 2020
import random as rd
sayı = rd.randint(1, 9)
while True:
    tahmin = int(input('1-9 Arası Sayı Tahmin Edin: '))
    if tahmin == sayı:
        print("Doğru tahmin ettiniz.\n")
        break
    else:
        print("Yanlış tahmin ettiniz.\n")

