% Definimos un hecho.
humano(juan).

% Definimos una regla: si alguien es humano, entonces es mortal.

mortal(X) :- humano(X). 
