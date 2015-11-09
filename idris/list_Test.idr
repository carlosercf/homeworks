module list_Test

import list
import nat
import bool

lO: list Nat
lO = nil

l1: list Nat
l1 = 0 :: nil

l2: list Nat
l2 = (22 :: (43 :: nil))

l3: list Nat
l3 = (1 :: (34 :: (57 :: nil)))

le0: Nat
le0 = length lO

le1: Nat
le1 = length l1

le2: Nat
le2 = length l2

le3: Nat
le3 = length l3

app0: list Nat
app0 = lO ++ l1

app1: list Nat
app1 = lO ++ l2

app2: list Nat
app2 = lO ++ l3

app3: list Nat
app3 = l1 ++ l2

app4: list Nat
app4 = l1 ++ l3

app5: list Nat
app5 = l2 ++ l3

mapTest: list bool
mapTest = map evenb nil

mapTest1: list bool
mapTest1 = map evenb (O::(S O)::(S(S O))::(S(S(S(S O))))::nil)

filterTest0: list nat
filterTest0 = filter evenb nil

filterTest: list nat
filterTest = filter evenb (O::(S O)::(S(S O))::(S(S(S(S O))))::nil)
