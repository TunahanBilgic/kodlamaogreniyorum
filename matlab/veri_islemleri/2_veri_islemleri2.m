%kodlamaogreniyorum.com, 2020
clear all
urun_cesidi = randi([4,8]); %ürünler
urun_isimleri = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'];
urun_stok=[]; %Stoklar
urun_fiyat=[]; %Fiyatlar
for i=1:urun_cesidi %rastgele urun bilgileri
    urun_stok(i) = randi([10,90]);
    urun_fiyat(i) = randi([1, 20]);
end
getiri = urun_stok .* urun_fiyat;
    
excel = 'veriler.xlsx'; %excel dosyası
%Excel dosyasını oluşturma 2. yöntem:
%fopen('veriler.xlsx','w'); ->fclose unutulmamalı

%İlk satıra başlıkları yazdıralım.
xlswrite(excel,cellstr('Ürünler'),'Ürünler','A1');
xlswrite(excel,cellstr('Stoklar'),'Ürünler','B1');
xlswrite(excel,cellstr('Birim Fiyat'),'Ürünler','C1');
xlswrite(excel,cellstr('Toplam Getiri'),'Ürünler','D1');

 %Döngü ile hücrelere yazdırma:
for i=1:urun_cesidi
    hucreA=sprintf( 'A%s',num2str(i+1));
    xlswrite(excel,cellstr(sprintf('Ürün_%s',urun_isimleri(i))),'Ürünler',hucreA);  %
    hucreB=sprintf( 'B%s',num2str(i+1));
    xlswrite(excel,cellstr(sprintf('%d',urun_stok(i))),'Ürünler',hucreB);
    hucreC=sprintf( 'C%s',num2str(i+1));
    xlswrite(excel,cellstr(sprintf('%d',urun_fiyat(i))),'Ürünler',hucreC);
end

%Döngüsüz tek komut ile vektörü hücrelere yazdırma:
xlswrite(excel,num2cell(getiri)','Ürünler','D2');                               %num2cell()'
xlswrite(excel,cellstr('Stok >50 Ürün Sayısı:'),'Ürünler','F1');
formul = sprintf('=EĞERSAY(B2:B%d;">50")',urun_cesidi+1);   %formül örnek 1
xlswrite(excel,cellstr(formul),'Ürünler','F2');
formul2 = sprintf('=TOPLA(B2:B%d)',urun_cesidi+1);               %formül örnek 2
xlswrite(excel,cellstr('Toplam Stok:'),'Ürünler','F3');
xlswrite(excel,cellstr(formul2),'Ürünler','F4');