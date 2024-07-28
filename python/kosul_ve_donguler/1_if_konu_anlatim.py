#!/usr/bin/env python
__author__     = "Tunahan Bilgiç"
__copyright__  = "kodlamaogreniyorum.com, Copyright 2020"

x = 5  # Belirlediğimiz Sayı
y = int(input("1-10 Arası Sayı Tahmin Edin: "))
if x > y:
    print("Daha büyük tahminde bulunun.\n")
elif x < y:
    print("Daha küçük tahminde bulunun.\n")
else:
    print("Doğru tahmin ettiniz.\n")