%RP191495 Slevan Fortress HightTech  Solutions.
%Este guión o programa lee valores de resistencia y voltaje
%y calcula las corrientes de malla correspondientes para
%un circuito eléctrico específico
clc
R=input('Introduzca los valores de resistencia en ohms, [R1...R5]=');
V=input('Introduzca los valores de voltaje en volts, [V1 V2]=');
fprintf('\n');
%Inicializar matriz A y vector B
A=[R(1)+R(2),-R(2),0;
    -R(2),R(2)+R(3)+R(4),-R(4);
    0,-R(4),R(4)+R(5)];
B=[V(1);0;-V(2)];
if rank(A) == 3
    fprintf('Corriente de malla \n')
    i=A\B;
    g = sprintf('%d', i);
    fprintf('Answer: %s\n', g);
else
    fprint('No existe un solucion única')
end