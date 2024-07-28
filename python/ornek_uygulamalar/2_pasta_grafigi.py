#!/usr/bin/env python
__author__     = "Tunahan Bilgiç"
__copyright__  = "kodlamaogreniyorum.com, Copyright 2020"

import tkinter as tk
from random import randint
from functools import partial

elemanlar = {
  "A" : {
    "değer" : 15,
    "renk" : "",
    "buton": "",
    "durum" : True
  },
  "B" : {
    "değer" : 10,
    "renk" : "",
    "buton": "",
    "durum" : True
  },
  "C" : {
    "değer" : 20,
    "renk" : "",
    "buton": "",
    "durum" : True
  },
  "D" : {
    "değer" : 45,
    "renk" : "",
    "buton": "",
    "durum" : True
  }
}

for i, j in elemanlar.items():
    renk = "#" + str(randint(0, 9)) + str(randint(0, 9)) + str(randint(0, 9)) + str(randint(0, 9)) + str(randint(0, 9)) + str(randint(0, 9))
    elemanlar[i]['renk'] = renk

degerler = [t["değer"] for t in elemanlar.values()]

# kullanıcı arayüzü ayarları
arayuz = tk.Tk()

ekran_olcek = 0.6  # boyut için
ekran_gen = int(arayuz.winfo_screenwidth() * ekran_olcek)
ekran_yuk = int(arayuz.winfo_screenheight() * ekran_olcek)
ekran_boyutu = str(ekran_gen)+'x'+str(ekran_yuk)
arayuz.geometry(ekran_boyutu)
arayuz.title("Pasta Grafiği")
arayuz.resizable(False, False)
canvas = tk.Canvas(arayuz, width=ekran_gen, height=ekran_yuk, background="white smoke")
canvas.pack(expand=0)

def pasta_dilimi(elemanlar, degerler):

    grafik = int(ekran_yuk / 6)
    buton_x = ((ekran_gen - ekran_yuk) / 2) + ekran_yuk
    buton_y = ekran_yuk / (2 * (len(elemanlar) + 1))
    bas = 0

    for i, j in elemanlar.items():

        aciklik = (j["değer"] / sum(degerler)) * 360
        if j['durum'] is True:

            canvas.create_arc(grafik, grafik, grafik * 5, grafik * 5, start=bas, extent=aciklik, fill=j["renk"], width=2)
        bas += aciklik

        def buton_bas(ind):

            if elemanlar[ind]["durum"] is True:
                elemanlar[ind]["durum"] = False
            else:
                elemanlar[ind]["durum"] = True
            canvas.delete("all")
            pasta_dilimi(elemanlar, degerler)

        tk.Button(arayuz, text=i+"= "+str(j["değer"]), font="times 20 bold", command=partial(buton_bas, i), background=j["renk"]).place(x=buton_x, y=buton_y)
        buton_y += ekran_yuk / len(elemanlar)

pasta_dilimi(elemanlar, degerler)
arayuz.mainloop()