module sports

data sport = basketball | futball | soccer | volleyball | futVolley --cria um data type sport que tem todas estas variaveis
data type = hand | foot -- cria um data type type que tem essas 2 variaveis

handSport: sport -> type -- fala que a funcao sera de sport pra type
handSport basketball = hand -- diz que a 1 variavel basket = segunda hand 
handSport futball = hand -- diz q a 1 e igual a 2 
handSport volleyball = hand
 
footSport: sport -> type
footSport soccer = foot
footSport futVolley = foot 
