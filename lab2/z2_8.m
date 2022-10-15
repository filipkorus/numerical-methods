clear all; close all;

e=1/2;
n=0;

while((1+e) > 1)    % czy "widac" dodanie "e"
    e=e/2; n=n+1;   % jesli tak, to zmniejsz "e" 2 razy
end

nbits = n, % szukana liczba bitow mantysy (dla double to 52)

e=1/2;
n=0;

while(single(1+e) > 1)    % czy "widac" dodanie "e"
    e=e/2; n=n+1;   % jesli tak, to zmniejsz "e" 2 razy
end

nbits = n, % szukana liczba bitow mantysy (dla single to 23)
