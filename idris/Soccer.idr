module Soccer

import bool

||| A record type that is equivalent to:
||| (data Soccer =  mkSoccer name age StillPlaying)
||| but giving names to the fields and using those names as the constructors.

record Soccer where
        constructor mkSoccer
        name: String
        age: Nat
        StillPlaying: bool


maradona: Soccer
maradona = mkSoccer "Maradona" 54 false

pele: Soccer
pele = mkSoccer "Pele" 74 false

ronaldinho: Soccer
ronaldinho = mkSoccer "Ronaldinho Gaucho" 35 true

Neymar: Soccer
Neymar = mkSoccer "Neymar" 23 true

mname: String
mname = name maradona

mage: Nat
mage = age maradona

mstill: bool
mstill = StillPlaying maradona

pname: String
pname = name pele

page: Nat
page = age pele

pstill: bool
pstill = StillPlaying pele

rname: String
rname = name ronaldinho

rage: Nat
rage = age ronaldinho

rstill: bool
rstill = StillPlaying ronaldinho

Nname: String
Nname = name Neymar

Nage: Nat
Nage = age Neymar

Nstill: bool
Nstill = StillPlaying Neymar
