x = 5; %Belirledi�imiz Say�
y = input('1-10 Aras� Say� Tahmin Edin: ');
if x > y
    fprintf('Daha b�y�k tahminde bulunun.\n');
elseif x < y
    fprintf('Daha k���k tahminde bulunun.\n');
else
    fprintf('Do�ru tahmin ettiniz.\n');
end