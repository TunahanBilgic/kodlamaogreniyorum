# kodlamaogreniyorum.com, 2021

def onlutabanaçevir(sayı, taban):
    alt = str.maketrans("0123456789", "₀₁₂₃₄₅₆₇₈₉")
    sayı = abs(int(sayı))
    taban = abs(int(taban))
    sayı = str(sayı)
    if (all(int(i) < taban for i in sayı)) and 1 < taban < 10:
        çevrilmiş_sayı = 0
        üs = 0
        for i in reversed(sayı):
            çevrilmiş_sayı += int(i) * taban ** üs
            üs += 1
        print("(%s)%s = %d\n" % (sayı, str(taban).translate(alt), çevrilmiş_sayı))
    else:
        print('Girdiğiniz sayı ile taban uyumsuz!\n')

# onlutabanaçevir(1302, 4)
# onlutabanaçevir(21, 3)


def tabandeğiştir(sayı, taban):
    alt = str.maketrans("0123456789", "₀₁₂₃₄₅₆₇₈₉")
    taban = int(taban)
    if 1 < taban < 10:
        sayı = abs(int(sayı))
        sayı2 = sayı
        çevrilmiş_sayı = []
        while sayı >= taban:
            kalan = sayı % taban
            sayı = int(sayı / taban)
            çevrilmiş_sayı.insert(0, str(kalan))
            if sayı < taban:
                çevrilmiş_sayı.insert(0, str(sayı))
        çevrilmiş_sayı = "".join(çevrilmiş_sayı)
        print("%d = (%s)%s\n" % (sayı2, çevrilmiş_sayı, str(taban).translate(alt)))
    else:
        print('Tabanı kontrol edin!\n')

# tabandeğiştir(137, 6)
# tabandeğiştir(37, 4)
# tabandeğiştir(100, 6)