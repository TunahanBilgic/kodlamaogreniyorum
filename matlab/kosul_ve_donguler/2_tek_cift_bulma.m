bas=input('Baþlangýç Deðeri: ');
bit=input('Bitiþ Deðeri: ');
tek_sayilar=[];    %tek sayýlar için boþ dizi
cift_sayilar=[];   %çift sayýlar için boþ dizi
for i=bas:bit
    if mod(i,2)==0 %eðer 2'ye bölümden kalan yoksa çifttir.
        cift_sayilar=[cift_sayilar i]; %diziye mevcut sayýyý ekleme
    else           
        tek_sayilar=[tek_sayilar i];
    end
end
tek_sayilar
cift_sayilar