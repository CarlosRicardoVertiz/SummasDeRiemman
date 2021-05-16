%Materia: Calculo Integral
%Nombre Del Alumno: Carlos Ricardo Vertiz
%correo electronico: carlosricardovertiz@gmail.com
%grupo: 3202

% SUMAS DE RIEMMAN
% limpiar variables
clear   
% f(x)=(-x)+1,  [-2,3]
clc 
%variables que sirven para saber los limites en donde se sacara el area
a=-2;
b=1;
%fun= -x+1;
inter=200;
%paso de la funcion
f = inline ("-x+1");
%Calculo de ?i o h
h= (b-a)/inter;
% m+1 puntos, m intervalos
x= a:h:b;
int=0;
%para cada intervalo
for i=1:inter;
  %extremos x(i), x(i+1)
  xm=(x(i)+x(i+1))/2;
  int=int+f(xm)*h ;
end 

a2=1;
b2=3;
%fun= -x+1;
inter2=200;
%paso de la funcion
f2 = inline ("-x+1");
%Calculo de ?i o h
h2= (b2-a2)/inter2;
% m+1 puntos, m intervalos
x2= a2:h2:b2;
int2=0;
%para cada intervalo
for i2=1:inter2;
  %extremos x(i), x(i+1)
  xm2=(x2(i2)+x2(i2+1))/2;
  int2=int2+f2(xm2)*h2 ;
end 
y=abs(int2);

fprintf("el area es:  ");
fprintf("%d", int+y);
%**NOTA: Si usted se da cuenta, la funcion si se grafica, te daras cuenta que la funcion
%en algun momento se vuelve negativa, por lo tanto se debe sacar el area en dos partes:
%el punto en donde se parte, es 1, entonces tendras que buscar el area de -2, 1 y 1, 3,
%sumas y a la segunda area le sacas valor absiluto, ya que no hay areas negativas

%Querido amigo, este script funciona para calcular el area por y encima de la curva
%si mi explicacion es la correcta, no debe aver problema en que puedas interpretar
%el script, espero y te sea de ayuda, fue gracias a la ayuda de nuestro profesor+
%quien nos dio la oportunidad de guiarnos con su script. saludos!
