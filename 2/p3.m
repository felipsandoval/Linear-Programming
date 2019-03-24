%% - Gestión y Optimización.
%  - Problema 3 - Flujo de coste minimo.
% Felipe Enmanuel Sandoval Sibada.
% Apartado C) planteado como problema de programación lineal.

clc;
clear;

f = [5,3,3,4,14,10,3,8,6,15]; %Funcion Objetivo a minimizar

A = [1  1   1   0   0  0  0   0   0   0
     0 -1   0   0   1  1  0   0   0   0
     0  0   0   0   0  0  0   0   1   1
     0  0   1   0   0  1  0   0   1   0];
 
b = [20;20;30;25];

%Restricciones 
%    X12 X13 X14 X26 X32 X34 X42 X46 X54 X56
Aeq = [-1  0   0   1  -1  0 -1   0   0   0
       0  0  -1   0   0 -1  1   1  -1   0
       0  0   0  -1   0  0  0  -1   0  -1];
   
beq = [-25;0;-35]; 

lb = zeros(10,1);

intcon = [1:10]

[x,fval] = intlinprog(f,intcon,A,b,Aeq,beq,lb,[])  
