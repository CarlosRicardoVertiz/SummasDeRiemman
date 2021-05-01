%Titulo : Sumas de Riemman
% Descripción: Script para encontrar el area de la curva de la funcion: 
%"x = x^2-1 [1,4]
% Autor: Carlos Ricardo Vertiz carlosricardovertiz@gmail.com
% Fecha: 30/04/2021

clc
  clear
 syms x;
 
 f = x^2-1;
  a = 1
  b = 4
  n = 3-0;
  dx = (b-a)/n;
  resultado = zeros(1,n);
  i =1;
  fs=subs(f,x,(a+i*dx));
  fr = fs * dx;
  resultado = fr;
  for i=1:n
    fs=subs(f,x,(a+1+dx));
    fr=fs*dx;
    resultado(i+1)=resultado(i)+fr
   endfor 
   fprintf('total es:',double(resultado));
   