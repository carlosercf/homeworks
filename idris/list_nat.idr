module list_nat

import nat
import pair

data list_nat = nil | cons nat list_nat

lO: list_nat
lO = nil

l1: list_nat
l1 = cons O lO

l2: list_nat
l2 = (cons (S O) (cons (S (S O)) nil))

l3: list_nat
l3 = (cons (S O) (cons (S (S O)) (cons (S(S(S O))) nil)))

length: list_nat -> nat
length nil = O
length (cons n l') = S (length l')

append: pair list_nat list_nat -> list_nat
append (mkPair lO a )= a
append (mkPair n l') = (append (mkPair n l'))
