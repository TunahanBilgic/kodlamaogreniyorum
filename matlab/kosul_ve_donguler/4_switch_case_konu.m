%kodlamaogreniyorum.com, 2020
clear all
clc
ay = inputdlg('Ay numarası: ','Giriş');
switch ay{1}
    case '2'
        msgbox('Girdiğiniz ay 28 günden oluşur.');
    case {'1','3','5','7','8','10','12'}
        msgbox('Girdiğiniz ay 31 günden oluşur.');
    case {'4','6','9','11'}
        msgbox('Girdiğiniz ay 30 günden oluşur.');
    otherwise
        warndlg('Hatalı giriş yaptınız.','HATA');
end