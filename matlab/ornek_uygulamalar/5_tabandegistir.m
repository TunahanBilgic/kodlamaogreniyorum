%kodlamaogreniyorum.com,2021
function tabandegistir(sayi, taban)
if (taban>1) && (taban<10)
    taban = fix(taban); %hataya ondalıksız taban
    sayi=abs(fix(sayi)); %pozitif,ondalıksız sayılar
    sayi2 = sayi; %fprintf için saklama
    cevrilmis_sayi = [];
    while sayi >= taban
        kalan = mod(sayi,taban);
        sayi = fix(sayi/taban);
        cevrilmis_sayi = [num2str(kalan) num2str(cevrilmis_sayi)];
        if sayi < taban
            cevrilmis_sayi = [num2str(sayi) num2str(cevrilmis_sayi)];
        end
    end
    fprintf('%d = (%s)_%d\n',sayi2,cevrilmis_sayi,taban);
else
    fprintf('Tabanı kontrol edin!\n');
end
end