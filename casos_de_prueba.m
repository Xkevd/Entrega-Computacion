%casos_de_prueba.m
vect_ref = [3 8 3 2 6 7 3 7 8 3 7 3 4 6 8 7 5 5 6 8];


% CASO 1: mat_casos 5x3 : mat_salida_ref tiene la salida correcta
%mat_casos = [3 8 2; 4 1 2; 4 1 4; 3 3 4; 8 7 9];
%mat_salida_ref = [ 3 8 3; 8 3 2; 7 3 4; 7 3 4; 8 7 5 ];

% CASO 2: mat_casos 4x4 : mat_salida_ref tiene la salida correcta
% mat_casos =[
%    5   3   3   3;
%    4   3   5   5;
%    3   1   4   3;
%    2   4   4   5;
% ]
% mat_salida_ref =[
%    8   3   7   3;
%    8   7   5   5;
%    3   7   8   3;
%    2   6   7   3;
% ]

% CASO 3: mat_casos 12x4 : mat_salida_ref tiene errores en filas 3, 7, 8 y 11
 mat_casos =[
    5   3   3   3;
    4   3   5   5;
    3   1   4   3;
    2   4   4   5;
    5   3   3   3;
    4   3   5   5;
    3   1   4   3;
    2   4   4   5;
    5   3   3   3;
    4   3   5   5;
    3   1   4   3;
    2   4   4   5;
 ]
 mat_salida_ref =[
    8   3   7   3;
    8   7   5   5;
    0   0   0   0;
    2   6   7   3;
    8   3   7   3;
    8   7   5   5;
    8   8   8   8;
    9   9   9   9;
    8   3   7   3;
    8   7   5   5;
    1   1   1   1;
    2   6   7   3;      
 ]

% CASO 4: mat_casos 5x20 : mat_salida_ref tiene la salida correcta
% mat_casos =[
%    2   2   2   4   6   2   1   4   5   7   3   4   2   8   7   4   6   2   8   5;
%    9   9   1   5   6   1   7   3   3   6   7   9   6   2   5   2   5   9   3   7;
%    5   1   7   6   7   4   2   2   8   6   6   3   5   4   1   1   3   3   1   1;
%    4   8   6   7   3   3   6   3   7   9   2   6   5   6   5   5   5   1   6   2;
%    6   1   3   8   3   5   8   8   2   7   4   3   7   1   9   7   8   3   7   4;
% ]
% mat_salida_ref =[
%    3   8   3   2   6   7   3   7   8   3   7   3   4   6   8   7   5   5   6   8;
%    3   8   3   2   6   7   3   7   8   3   7   3   4   6   8   7   5   5   6   8;
%    3   8   3   2   6   7   3   7   8   3   7   3   4   6   8   7   5   5   6   8;
%    3   8   3   2   6   7   3   7   8   3   7   3   4   6   8   7   5   5   6   8;
%    3   8   3   2   6   7   3   7   8   3   7   3   4   6   8   7   5   5   6   8;
% ]

% CASO 5: mat_casos 5x21 (más columnas que el largo de v1) 
% mat_casos =[
%    8   3   6   9   3   1   6   2   5   3   1   5   4   5   3   9   7   9   6   7   7   4;
%    8   9   8   2   9   8   6   1   5   8   2   3   4   8   8   1   2   3   8   7   9   5;
%    8   9   2   4   9   9   5   5   2   7   2   1   6   8   2   2   3   7   2   8   5   7;
%    6   6   1   8   9   2   5   4   5   7   8   9   1   9   1   7   1   6   4   3   7   9;
%    8   4   3   9   6   9   7   8   4   1   3   9   6   5   2   1   4   5   4   5   8   4;
% ]
% mat_salida_ref =[]