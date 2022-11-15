% A - macierz do odwrócenia
% funkcja odwraca nam macierz biorąc jej wymiary obliczając minory itd.

function [AdoMinus1] = fun(A)

% macierz dopełnien algebraicznych
AD = zeros(size(A));

for i = 1 : size(AD)
    for j = 1: size(AD)
        minor = A;
        minor(i,:)=[]; minor(:,j)=[];
        AD(i,j) = ((-1)^(i+j))*det(minor);
    end
end

% wynik
AdoMinus1 = (1/det(A))*(AD.');
