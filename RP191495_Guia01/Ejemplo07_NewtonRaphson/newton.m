%Newton Raphson 
%{
Empleando el método de Newton, determine el valor de ‘x’ de tal manera que se
cumpla la siguiente relación:Log9(17?3x)– x2 = –31.9169784, con precisión de
10-12
%}
clc
clear all
disp('Metodo de Newton Raphson')
xo=input('introduzca el valor incial xo: ');
syms x
f= input('introduzca la funcion f: ');
error= input('introduzca el valor de precision: ');
fxo=subs(f,xo);
dfxo=subs(diff(f,x),xo);
xn=xo-fxo/dfxo;
cont=1;
tol=abs(xn-xo);
disp(' n            xo           xn            error')
fprintf('%2.0f %9.15f %9.15f %e\n', double(cont), double(xo), ...
double(xn), double(tol))
while tol>error
    cont =cont+1;
    xo=xn;
    fxo=subs(f,xo);
    dfxo=subs(diff(f,x),xo);
    xn=xo-fxo/dfxo;
    tol = abs(xn-xo);
    fprintf('%2.0f    %9.15f   %9.15f %e\n', double(cont), double(xo), ...
     double(xn), double(tol))
end
fprintf('El valor aproximado de x =   %9.15f\n', double(xn))

