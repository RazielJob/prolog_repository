%Base de conocimientos sobre perosnas y sus mascotas
%Hechos: Persona tiene una mascota
tiene_mascota(juan,perro).
tiene_mascota(maria,gato).
tiene_mascota(carlos,pez).
tiene_mascota(luisa,tortuga).
%Hechos: Tipo animal
es_mamifero(perro).
es_mamifero(gato).
es_reptil(tortuga).
es_pez(pez).
%Reglas
es_dueno(X,Y):- tiene_mascota(X,Y).
mascota_mamifera(X):-tiene_mascota(X,Y), es_mamifero(Y).
