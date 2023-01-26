%{
A continuación se muestra un 
ejemplo de un archivo M tipo guion, en el cual para ejecutar el programa 
principal es necesario llamar a otras funciones, en este caso las funciones 
internas que deben existir como un archivo M de 
tipo función son: funcion y dfuncion.
%}
clc
clear all 
disp('Metodo de')
xn = input('Introduzca el valor de xo: ');
%varibale que abre otro archivo de funcion es el nombre del archivo . m el
%cual abre. funcion, dfuncion.
fxn=funcion(xn);
error=0.000001;
fprintf('tolerancia= %e\n', error)
cont= 0;
fprintf('n= &3.0f xn= %e f(xn)= %e\n', cont,xn,fxn)
while abs(fxn)>error
    cont = cont +1;
    xo = xn;
    fxo= funcion(xo);
    dfxo = dfuncion(xo);
    xn = xo -fxo/dfxo;
    fxn=funcion(xn);
    fprintf('n=%3.0f xn= %e f(xn)= %e\n', cont, xn,fxn)
end

xn
fxn=funcion(xn)

