%kodlamaogreniyorum.com, 2020
[kurlar, metin, hepsi] = xlsread('kur.xlsx');
kurlar(~any(~isnan(kurlar), 2),:) = [];
dolar_alis =kurlar(:,1);     %1.sütun $ alış
dolar_satis =kurlar(:,2);   %2.sütun $ satış
euro_alis=kurlar(:,3);       %3.sütun € alış
euro_satis=kurlar(:,4);     %4.sütun € satış
ekran_boyutu=get(0, 'ScreenSize');
ekran_boyutu = ekran_boyutu * 0.6;
fig=figure('Name','Döviz Kuru Grafiği',...
    'Innerposition',[0 0 ekran_boyutu(3) ekran_boyutu(4)],...
       'NumberTitle','off','Resize','off','MenuBar','none','ToolBar','figure');
plot(dolar_alis,'g')
hold on
plot(dolar_satis,'r')
plot(euro_alis,'b')
plot(euro_satis,'y')
eksen_poz = get(gca,'position');
eksen_poz(1) = eksen_poz(1) *0.5;
eksen_poz(3) = eksen_poz(3) * 1.15;
set(gca,'XTick',[1:length(dolar_alis)],'position',eksen_poz);
ylabel('Türk Lirası');
grid on %Izgara açmak için
x_max = length(dolar_alis); %X ekseni boy
y_min = min(min([dolar_alis dolar_satis euro_alis euro_satis])) - 0.1;
y_max = max(max([dolar_alis dolar_satis euro_alis euro_satis])) + 0.1;
axis ([1 x_max y_min y_max])