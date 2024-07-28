x = 5; %Belirlediðimiz Sayý
y = input('1-10 Arasý Sayý Tahmin Edin: ');
if x > y
    fprintf('Daha büyük tahminde bulunun.\n');
elseif x < y
    fprintf('Daha küçük tahminde bulunun.\n');
else
    fprintf('Doðru tahmin ettiniz.\n');
end