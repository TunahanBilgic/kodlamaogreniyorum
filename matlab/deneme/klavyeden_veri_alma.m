isim = input('İsminizi Girin: ','s');
dogum_yili = input('Doğum Yılınızı Girin: ');
mevcut_yil = 2019; %Yaş hesaplatmak için bulunduğumuz yılı tanımlıyoruz.
fprintf('İsminiz: %s\nDoğum Yılınız: %d\nSayın %s %d yaşındasınız.\n',isim,dogum_yili,isim,mevcut_yil-dogum_yili);