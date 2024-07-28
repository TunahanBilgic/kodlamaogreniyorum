%kodlamaogreniyorum.com, 2020
function [arit, geo, harm] = ortalama(x)
    %Aritmetik Ortalama:
    arit = 0;
    for i = 1:length(x) 
        arit = arit + x(i);
    end
    arit = arit / length(x);

    %Geometrik Ortalama:
    geo = x(1);
    for i = 2:length(x)
        geo = geo * x(i);
    end
    geo = geo^(1 / length(x));

    %Harmonik Ortalama:
    harm = 1 / x(1);
    for i = 2:length(x)
        harm = harm + (1 / x(i));
    end
    harm = length(x) / harm;

    fprintf(['Aritmetik Ortalamasý: %f\n',...
             'Geometrik Ortalamasý: %f\n',...
             'Harmonik Ortalamasý: %f\n'],arit,geo,harm);
end