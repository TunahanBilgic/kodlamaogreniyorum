%kodlamaogreniyorum.com, 2020
sayi = randi(9); % rastgele say� olu�turma
tahmin = 10;
while sayi ~= tahmin
    tahmin = input('1-9 Aras� Say� Tahmin Edin: ');
    if sayi ~= tahmin
        fprintf('Yanl�� tahmin ettiniz.\n');
    else
        fprintf('Do�ru tahmin ettiniz.\n');
    end
end