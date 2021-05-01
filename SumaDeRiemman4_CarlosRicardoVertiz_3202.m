%Titulo : Sumas de Riemman
% Descripci�n: Script para encontrar el area de la curva de la funcion: 
%"x = 4x+5; x=2 x=5
% Autor: Carlos Ricardo Vertiz carlosricardovertiz@gmail.com
% Fecha: 30/04/2021

clc
  clear
 syms x;
 
 f = (4x) +5;
  a = 2
  b = 5
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
   