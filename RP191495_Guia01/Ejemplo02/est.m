function [media,destip]=est(x)
%Ejemplo 02 ReyesPineda RP191495
%Algoritmo para calculo de la media y la desviacion tipica de los elementos
%de un conjunto de datos.
n = length(x);
media = sum(x)/n;
destip = sqrt(sum((x-media).^2/n));
bar(x)