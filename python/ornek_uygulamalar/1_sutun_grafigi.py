#!/usr/bin/env python
__author__     = "Tunahan Bilgiç"
__copyright__  = "kodlamaogreniyorum.com, Copyright 2020"

import tkinter as Tk
from random import randint

elemanlar = {
  "X" : {
    "değer" : 1500,
    "renk" : ""
  },
  "Y" : {
    "değer" : 335,
    "renk" : ""
  },
  "Python" : {
    "değer" : 750,
    "renk" : ""
  },
  "Kodlama" : {
    "değer" : 1000,
    "renk" : ""
  },
  "Öğreniyorum" : {
    "değer" : 1993,
    "renk" : ""
  }
}

for i, j in elemanlar.items():
    renk = "#" + str(randint(0, 9)) + str(randint(0, 9)) + str(randint(0, 9)) + str(randint(0, 9)) + str(randint(0, 9)) + str(randint(0, 9))
    elemanlar[i]['renk'] = renk

arayuz = Tk.Tk()

#Kullanıcı Arayüzü Ayarları
ekran_olcek = 0.6 #Boyut için
ekran_gen = int(arayuz.winfo_screenwidth() * ekran_olcek)
ekran_yuk = int(arayuz.winfo_screenheight() * ekran_olcek)
ekran_boyutu = str(ekran_gen)+'x'+str(ekran_yuk)
arayuz.geometry(ekran_boyutu)
arayuz.title("Sütun Grafiği")
arayuz.resizable(False, False)
canvas = Tk.Canvas(arayuz, width=ekran_gen, height=ekran_yuk, background="white smoke")
canvas.pack(expand=0)
ayarlar = [True, True, True]  # Sırasıyla: Çizgi, Değerler, İsimler (Butonlar için)

degerler = [t["değer"] for t in elemanlar.values()] #Sütun boyu için
kul_alan_x = int(ekran_gen * 0.9)       #Arayüzün 0.9'u
grafik_alan_y = int(ekran_yuk * 0.9)    #Arayüzün 0.9'u
grafik_alan_x = int(kul_alan_x * 0.75)  #Yatay eksenin 0.75'i grafiğin
buton_x = ((kul_alan_x - grafik_alan_x) / 2) + grafik_alan_x
buton_pay_y = (grafik_alan_y * 0.5) / 3
bar_kalinlik = pay_x = int((grafik_alan_x / (len(elemanlar) + 1)) / 2)
pay_y = int(grafik_alan_y * 0.1)
bar_boy = (1 / max(degerler) * (grafik_alan_y - (2 * pay_y)))

def bar_chart(elemanlar, ayarlar):

    x = pay_x
    y = pay_y
    canvas.create_line(x, grafik_alan_y, grafik_alan_x, grafik_alan_y, fill="black")  # X ekseni
    canvas.create_line(x, y, x, grafik_alan_y, fill="black")                          # Y ekseni
    canvas.create_text(x, y - (pay_y / 2), text="Değerler")
    canvas.create_text(grafik_alan_x + pay_x, grafik_alan_y, text="Elemanlar")

    for i, j in elemanlar.items():

        if ayarlar[2] is True:
            canvas.create_text((pay_x / 2), grafik_alan_y - (elemanlar[i]['değer'] * bar_boy), text=elemanlar[i]['değer'])

        x = x + pay_x
        canvas.create_rectangle(x, grafik_alan_y - (elemanlar[i]['değer'] * bar_boy), x + bar_kalinlik, grafik_alan_y, fill=elemanlar[i]['renk'])

        if ayarlar[1] is True:
            canvas.create_line(x, grafik_alan_y - (elemanlar[i]['değer'] * bar_boy), pay_x, grafik_alan_y - (elemanlar[i]['değer'] * bar_boy), dash=(1, 5), fill="gray15")

        x = x + bar_kalinlik

        if ayarlar[0] is True:
            canvas.create_text(x - (bar_kalinlik / 2), grafik_alan_y + (pay_y / 2), text=i)

    def isimler_on():
        if ayarlar[0] is False:
            ayarlar[0] = True
        else:
            ayarlar[0] = False
        canvas.delete("all")
        bar_chart(elemanlar, ayarlar)

    def cizgi_on():
        if ayarlar[1] is False:
            ayarlar[1] = True
        else:
            ayarlar[1] = False
        canvas.delete("all")
        bar_chart(elemanlar, ayarlar)

    def degerler_on():
        if ayarlar[2] is False:
            ayarlar[2] = True
        else:
            ayarlar[2] = False
        canvas.delete("all")
        bar_chart(elemanlar, ayarlar)

    Tk.Button(arayuz, font="times 12 bold", text="İSİMLERİ GÖSTER", command=isimler_on, background="green",
                            anchor="nw").place(x=buton_x, y=(grafik_alan_y / 2) - buton_pay_y)
    Tk.Button(arayuz, font="times 12 bold", text="ÇİZGİLERİ GÖSTER", command=cizgi_on, background="red",
                             anchor="nw").place(x=buton_x, y=grafik_alan_y / 2)
    Tk.Button(arayuz, font="times 12 bold", text="DEĞERLERİ GÖSTER", command=degerler_on, background="blue",
              anchor="nw").place(x=buton_x, y=(grafik_alan_y / 2) + buton_pay_y)

bar_chart(elemanlar, ayarlar)
arayuz.mainloop()