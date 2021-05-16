%Materia: Calculo Integral
%Nombre Del Alumno: Carlos Ricardo Vertiz
%correo electronico: carlosricardovertiz@gmail.com
%grupo: 3202

% SUMAS DE RIEMMAN

% limpiar variables
clear   
% f(x)=(4x)+5,  [x=2,x=5]

%variables que sirven para saber los limites en donde se sacara el area
lim_a=2;
lim_b=5;

num_inter=200;

%paso de la funcion
f = inline ("4*x+5");
%Calculo de h (o incremento de x)
h= (lim_b-lim_a)/num_inter;
% m+1 puntos, m intervalos
x= lim_a:h:lim_b;
int=0;
%para cada intervalo
for i=1:num_inter;
  %extremos x(i), x(i+1)
  xm=(x(i)+x(i+1))/2;
  int=int+f(xm)*h;
end 
fprintf ("el area es: ")
fprintf("%d", int);

%Querido amigo, este script funciona para calcular el area por y encima de la curva
%si mi explicacion es la correcta, no debe aver problema en que puedas interpretar
%el script, espero y te sea de ayuda, fue gracias a la ayuda de nuestro profesor+
%quien nos dio la oportunidad de guiarnos con su script. saludos!
