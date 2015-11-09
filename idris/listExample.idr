module listExample

import Soccer
import list
import bool

l0: list Soccer
l0 = (maradona :: nil)

l1: list Soccer
l1 = (pele :: l0)

l2: list Soccer
l2 = (ronaldinho :: l1)

l3: list Soccer
l3 = (Neymar :: l2)

||| All those who starts with "lstr" lists the names of the players
lstr0: list String
lstr0 = (mname :: nil)

lstr1: list String
lstr1 = (pname :: lstr0)

lstr2: list String
lstr2 = (rname :: lstr1)

lstr3: list String
lstr3 = (Nname :: lstr2)

||| All those who starts with "lage" lists the ages of the players
lage0: list Nat
lage0 = (mage :: nil)

lage1: list Nat
lage1 = (page :: lage0)

lage2: list Nat
lage2 = (rage :: lage1)

lage3: list Nat
lage3 = (Nage :: lage2)

||| All those who starts with "lstill" lists if the player is still playing for each player
lstill0: list bool
lstill0 = (mstill :: nil)

lstill1: list bool
lstill1 = (pstill :: lstill0)

lstill2: list bool
lstill2 = (rstill :: lstill1)

lstill3: list bool
lstill3 = (Nstill :: lstill2)
||| All those who starts with "list" does the same thing that all the lines above that are ended in "3" in one line basically.
||| listname = lstr3 ; listages = lage3 ; liststill = lstill3; listall = l3.
listall: list Soccer
listall = Neymar :: ronaldinho :: pele :: maradona :: nil

listname: list String
listname = Nname :: rname :: pname :: mname :: nil

listages: list Nat
listages = Nage :: rage :: page :: mage :: nil

liststill: list bool
liststill = Nstill :: rstill :: pstill :: mstill :: nil

le0: Nat
le0 = length l0

le1: Nat
le1 = length l1

le2: Nat
le2 = length l2

le3: Nat
le3 = length l3

app0: list Soccer
app0 = l0 ++ nil

app1: list Soccer
app1 = l0 ++ l1

app2: list Soccer
app2 = l1 ++ l2

app3: list Soccer
app3 = l1 ++ l3

app4: list Soccer
app4 = l2 ++ l3
