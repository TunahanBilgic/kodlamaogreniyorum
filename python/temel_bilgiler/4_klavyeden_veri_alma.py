isim = input('Adınızı girin: ')
yaş = input('Yaşınızı girin: ') #str halde
boş = ""                        #False değeri verecek.
print(type(isim), type(yaş))
print(list(isim), set(isim), tuple(isim), bool(isim), bool(boş))
print(int(yaş), int(yaş, 7), float(yaş), hex(int(yaş)), complex(yaş))