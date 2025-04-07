%Hechos nacionalidades de 5 personas
es_espanol(manolo).
es_mexicano(juan).
es_estadounidense(john).
es_ingles(piter).
es_colombiano(anselmo).

%Reglas es europeo?, es americano?, es terrícola?, son del mismo continente? :
es_europeo(A) :- es_espanol(A); es_ingles(A).
es_americano(X) :- es_mexicano(X); es_estadounidense(X); es_colombiano(X).
es_terricola(X) :-es_europeo(X); es_americano(X).
mismo_continente(X,Y) :- (es_europeo(X), es_europeo(Y)); (es_americano(X), es_americano(Y)).
