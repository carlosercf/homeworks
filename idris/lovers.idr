module lover

import pair

data lover = mary | maurice -- data type lover com as variaveis mary | maurice

loves: lover -> lover -- fala q essa funcao sera de lover pra lover
loves _ = maurice -- fala que maurice e mary = maurice 

p1: pair lover lover  -- mistura 2 variaveis de valor lover 
p1 = mkPair mary maurice -- faz um par de mary com maurice

p2: pair lover lover -- mistura 2 variaveis de valor lover
p2 = mkPair maurice maurice -- faz um par do maurice com o maurice
