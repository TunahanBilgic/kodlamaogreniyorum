%kodlamaogreniyorum.com, 2020
sayi = randi(9); % rastgele sayı oluşturma
tahmin = 10;
while sayi ~= tahmin
    tahmin = input('1-9 Arası Sayı Tahmin Edin: ');
    if sayi ~= tahmin
        fprintf('Yanlış tahmin ettiniz.\n');
    else
        fprintf('Doğru tahmin ettiniz.\n');
    end
end