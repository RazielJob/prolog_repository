# Relacion de paternidad

padre(jose,adrian).
padre(adrian,rebeca).
padre(adrian,julio).
padre(adrian,adriana).
padre(adrian,rebeca).
padre(roberto,raziel).
padre(roberto,alondra).
padre(gerardo,imperia).
padre(gerardo,fatima).
padre(demetrio,maria).
padre(alfonso,arturo).
padre(arturo,roberto).
padre(arturo,arturojr).
padre(arturo,ernesto).
padre(arturo,rosa).
padre(modesto,socorro).
padre(carlos,mayte).
padre(carlos,gabriela).
padre(ernesto,ernestojr).
padre(ernesto,cristina).


# Relacion de maternidad

madre(ofelia,adrian).
madre(rosa,maria).
madre(maria,rebeca).
madre(maria,julio).
madre(maria,adriana).
madre(adriana,alondra).
madre(adriana,raziel).
madre(rebeca,imperia).
madre(rebeca,fatima).
madre(ernestina,arturo).
madre(micaela,socorro).
madre(socorro,roberto).
madre(socorro,rosa).
madre(socorro,ernesto).
madre(socorro,arturojr).
madre(rosa,mayte).
madre(rosa,gabriela).
madre(laura,ernestojr).
madre(laura,cristina).

#Reglas de relacion de parentesco
#Bisabuelos

bisabuelo(X,Y) :- abuelo(X,Z), (padre(Z,Y); madre(Z,Y)).
bisabuela(X,Y) :- abuela(X,Z), (padre(Z,Y); madre(Z,Y)).
#Abuelos
abuelo(X,Y) :- padre(X,Z), (padre(Z, Y); madre(Z,Y)).
abuela(X,Y) :- madre(X, Z), (padre(Z, Y); madre(Z,Y)).
#Tios
tio(X,Y):-padre(Z,Y),padre(X,W),W\=Z.
#Hermanos
hermano(X,Y) :- padre(Z,X), padre(Z,Y), X\= Y.
hermana(X,Y) :- madre(Z,X), madre(Z,Y), X\= Y.

tio(X,Y) :- (hermano(X,Z); hermana(X,Z)), (padre(Z,Y); madre(Z,Y)).
