%kodlamaogreniyorum.com,2021
function onlutabanacevir(sayi, taban)
taban = abs(fix(taban)); %hataya karşı pozitif, tam sayı taban
sayi=abs(fix(sayi)); %pozitif,ondalıksız sayılar
sayi=num2str(sayi); %str çevirme   
if ~any(str2num(sayi(:))>=taban) && (taban>1) && (taban<10) %taban kontrol
    cevrilmis_sayi=0;
    us = 0;
    for i=flip(sayi)
        cevrilmis_sayi=cevrilmis_sayi+str2num(i)*(taban^us);
        us = us + 1;
    end
    fprintf('(%s)_%d = %d\n',sayi,taban,cevrilmis_sayi);
else
    fprintf('Girdiğiniz sayı ile taban uyumsuz!\n');
end
end