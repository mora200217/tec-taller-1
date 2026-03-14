%% Parámetros de entrada-estado 
close all; clear; clc; 
a = 1; 

x1_0 = 0; 
x2_0 = 0; 


%% References 
syms t

% Derivadas simbólicas 
y = sin(2 * t + 3) + 4 * cos(t); 
yd = diff(y,1); 
ydd = diff(y, 2); 

% Evaluaciones
t= 0:0.01:10; 
ref = double(subs([y; yd; ydd])');


references = [t', ref]; 