bas=input('Ba�lang�� De�eri: ');
bit=input('Biti� De�eri: ');
tek_sayilar=[];    %tek say�lar i�in bo� dizi
cift_sayilar=[];   %�ift say�lar i�in bo� dizi
for i=bas:bit
    if mod(i,2)==0 %e�er 2'ye b�l�mden kalan yoksa �ifttir.
        cift_sayilar=[cift_sayilar i]; %diziye mevcut say�y� ekleme
    else           
        tek_sayilar=[tek_sayilar i];
    end
end
tek_sayilar
cift_sayilar