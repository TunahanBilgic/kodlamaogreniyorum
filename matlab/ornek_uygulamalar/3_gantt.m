%kodlamaogreniyorum.com, 2020
clear all
rek_lam = 'kodlamaogreniyorum.com/matlab';
%Veri aktarma işlemleri
excel=uigetfile('*xls*');
assignin('base','excel',excel);
[veri,metin,hepsi] = xlsread(excel);
[satir,sutun] = size(metin);
proje_asama=[]; %proje aşamaları için
sure_tipi=[];
for i=1:satir %proje aşamalarını kaydetme
    if strlength(metin{i,1}) > 0
        proje_asama=[proje_asama; string(metin{i,1})];
    end
end
for i =1:sutun
    if strlength(metin{1,i}) > 0
        sure_tipi = [sure_tipi string(metin{1,i})];
    end
end
%Grafiğin özellikleri
ekran_boyutu=get(0, 'ScreenSize');
ekran_boyutu = ekran_boyutu * 0.8;
fig=figure('Name','Proje Gantt Grafiği',...
    'Innerposition',[0 0 ekran_boyutu(3) ekran_boyutu(4)],...
       'NumberTitle','off','Resize','off','MenuBar','none','ToolBar','figure');
%Gantt Çizimi
bar = 20;    %bar kalınlık
x_p = 0;      %başlangıç konumları
x_g = 0;
y_p = ekran_boyutu(4) - bar;
y_g = y_p - bar * 2;
rectangle('Position',[x_p y_p veri(1,1) bar],'Facecolor','g')
hold on
rectangle('Position',[x_g y_g veri(1,2) bar],'Facecolor','r')
y_lab{1} = proje_asama(1);
text(x_p+veri(1,1)/2,y_p+bar/2,sprintf('%s',sure_tipi(1)),'HorizontalAlignment','center','FontSize',8)
text(x_g+veri(1,2)/2,y_g+bar/2,sprintf('%s',sure_tipi(2)),'HorizontalAlignment','center','FontSize',8)
text(max(sum(veri))/2, y_p,sprintf('%s',rek_lam),'HorizontalAlignment','center','FontSize',12,'FontWeight','bold')
for i=2:length(veri)
    y_p = y_g - bar*2;
    y_g = y_p - bar * 2;
    x_p = x_p + veri(i-1,1);
    x_g = x_g + veri(i-1,2);
    %planlanan değerler
    rectangle('Position',[x_p y_p veri(i,1) bar],'Facecolor','g')
    %gerçekleşen değerler
    rectangle('Position',[x_g y_g veri(i,2) bar],'Facecolor','r')
    y_lab{i} = proje_asama(i);
    plot([x_g x_g],[y_g+bar y_g+bar*4],'--','Color','b')
    text(x_p+veri(i,1)/2,y_p+bar/2,sprintf('%s',sure_tipi(1)),'HorizontalAlignment','center','FontSize',8)
    text(x_g+veri(i,2)/2,y_g+bar/2,sprintf('%s',sure_tipi(2)),'HorizontalAlignment','center','FontSize',8)
end
set(gca,'XTick',[0:max(sum(veri))],'YTick',[y_g+bar+bar/2:bar*4:ekran_boyutu(4) - bar]);
xlabel('Haftalar','FontSize',14,'FontWeight','bold','Color','r')
set(gca,'YTickLabel',flip(y_lab),'Fontsize',12);
ylabel('Aşamalar','FontSize',14,'FontWeight','bold','Color','r')
set(gca, 'YGrid', 'off', 'XGrid', 'on')
planlanan = line(NaN,NaN,'LineWidth',4,'Color','g');
gerceklesen = line(NaN,NaN,'LineWidth',4,'Color','r');
legend([planlanan gerceklesen],sure_tipi(1),sure_tipi(2))
title([num2str(max(sum(veri))),' Haftalık Proje Süreci'],'Color','b','FontAngle','italic')