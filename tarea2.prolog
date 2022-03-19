%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Miguel Eduardo Jaime Velázquez
%   
%   Tarea #2. Ejercicios Prolog Construya predicados Prolog, etiquetados como se indica con color azul en cada problema y que resuelvan las tareas solicitadas. Respete las restricciones marcadas entre corchetes y coteje contra los ejemplos proporcionados en cada problema.
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Ejercicio 1%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Verificar si una lista contiene algún elemento numérico

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Ejercicio 2%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Intercalar ceros después de cada elemento original.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Ejercicio 3%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Rotar los elementos de una lista de algún número de posiciones hacia la derecha.
rota(List, N, RotatedList) :- length(Back, N), 
    append(Front, Back, List),
	append(Back, Front, RotatedList).
% Ejemplo
% No pude hacerlo sin append :(
% ?- rota([a,b,c,d],3,R).
% R = [b,c,d,a].
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Ejercicio 4%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Invertir una lista (sin usar append ni reverse)
reversa_simple([],[]):-!.
reversa_simple(A,X):- reversa_simple(A,[],X).

reversa_simple([],X,X):-!.
reversa_simple([H|T],Acum,X):-reversa_simple(T,[H|Acum],X).
% Ejemplo
% ?- reversa_simple([a,b,c,d],R).
% R = [d,c,b,a].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Ejercicio 5%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Insertar un término arbitrario en alguna posición específica de una lista
inserta_en(L,[X|Y],[L|_]).
inserta_en(L,P,[X|Y],[X|M]):- P>1, P1 is P-1, inserta_en(L,P1,Y,M).
inserta_en(L,1,[X|Y],M):- append([L],[X|Y],M).
% Ejemplo 
% ?- inserta_en(x,2,[a,b,c,d],R).
% R = [a,x,b,c,d].


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Ejercicio 6%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Calcular el promedio de los primeros n elementos de la lista.
average( Xs, Avg  ) :- summarize(Xs,0,0,Sum,Cnt), Avg is Sum/Cnt.
summarize( []     , S  , C  , S , C  ) .
summarize( [X|Xs] , S1 , C1 , S , C  ) :-
  S2 is S1+X,
    C2 is C1+1,
	  summarize(Xs,S2,C2,S,C).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Ejercicio 7%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Calcular cada término en la serie de Fibonacci
fibonacci(0,0).
fibonacci(1,1).
fibonacci(X,Y) :- X1 is X-1, X2 is X1-1,
fibonacci(X1,A), fibonacci(X2,B), Y is A + B.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Ejercicio 8%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Eliminar elementos duplicados de una lista
simplifica([H,H|T],X):-!, simplifica([H|T],X).
simplifica([H|T],[H|X]):-simplifica(T,X).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Ejercicio 9%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Eliminar de una lista los elementos que no se encuentren duplicados


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Ejercicio 10%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Identificar el mayor valor de entre aquellos contenidos en una lista.
maximo(L, Max) :-
   select(Max, L, Rest), \+ (member(E, Rest), E > Max).
