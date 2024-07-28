%kodlamaogreniyorum.com, 2020
clear all
clc
fprintf('Basit Hesap Makinesi...\n');
fprintf(['Toplama: "+" veya "topla"\n'...
            'Çıkarma: "-" veya "çıkar"\n'...
            'Çarpma: "*" veya "çarp"\n'...
            'Bölme: "/" veya "böl"\n'...
            'Çıkış: "=" veya "çıkış"\n']);
sayi = input('İşlem yapılacak sayıyı girin: ');
islem = '';
while islem ~= "="
    islem = input('Yapılacak işlemi girin: ','s');
    switch islem
        case {"+", "topla"}
            yeni_sayi = input('İşlem yapılacak sayıyı girin: ');
            sayi = sayi + yeni_sayi;
        case {"-", "çıkar"}
            yeni_sayi = input('İşlem yapılacak sayıyı girin: ');
            sayi = sayi - yeni_sayi;
        case {"*", "çarp"}
            yeni_sayi = input('İşlem yapılacak sayıyı girin: ');
            sayi = sayi * yeni_sayi;
        case {"/", "böl"}
            yeni_sayi = input('İşlem yapılacak sayıyı girin: ');
            sayi = sayi / yeni_sayi;
        case {"=", "çıkış"}
            fprintf('= %g\n',sayi);
            break
        otherwise
            fprintf('Hatali işlem girişi yaptınız.\n');
    end
    fprintf('= %g\n',sayi);
end