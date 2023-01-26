%Este guion grafica el movimiento de un proyectil con una velocidad
%inicial Vo y un ángulo incial 0o
%Además, calcula la altura máxima y el alcance máximo del proyectil.
clc
vo = input('Introduzca la velocidad incial en mts/seg vo = ');
teta= input('Introduzca el ángulo incial en grados, teta0 = ');
teta0 = teta*pi/180;
tf=2*vo*sin(teta0)/9.81;
%Es para darle formato a la grafica, en valor de inicio: escala de divison:
% valor final, sirve para generar valores para el parametro t.
%NOTA OTRA FORMA DER HACERLO t = linspace(0, tf)
t=0:tf/1000:tf;
x=vo*cos(teta0)*t;
y=vo*sin(teta0)*t-0.5*9.81*t.^2;
hmax= max(y);
rmax=max(x);
fprintf('\n')
%Que es lo que ese caracter de %numero
fprintf('Altura máxima= %6.2f \n', hmax);
fprintf('Alcance máximo= %6.2f \n', rmax);
%Comandos para poder graficar funciones parametricas.
plot(x,y,'r: ') %Caracteristicas de comando plot. rojo: 
axis([0 rmax+1 0 hmax+1])
xlabel('Posicion en x del proyectil')
ylabel('Posicion en y del proyectil')
title('Movimiento dle proyectil')
text(0.5*rmax-1,hmax+0.2,'hmax')
text(rmax+.2,0,'rmax')
grid on

