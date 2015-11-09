module nat

import bool
import eq
import Serialize

data nat = O | S nat

isZero: nat -> bool
isZero O = true
isZero _ = false

succ: nat -> nat
succ n = S n

pred: nat -> nat
pred O = O
pred (S n) = n

evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

add: nat -> nat -> nat
add O m = m
add (S n) m = S(add n m)

mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add (mult n m) m

fact: nat -> nat
fact O = S O
fact (S n) = mult (S n) (fact n)

sub: nat -> nat -> nat
sub O m = O
sub n O = n
sub (S n) (S m) = sub n m

le: nat -> nat -> bool
le O m = true
le (S n) O = false
le (S n) (S m) = le n m

exp: nat -> nat -> nat
exp x O = (S O)
exp x n = mult  x (exp x (pred n))

eq_nat: nat -> nat -> bool
eq_nat O O = true
eq_nat O m = false
eq_nat m O = false
eq_nat (S n) (S m) = eq_nat n m

gt: nat -> nat -> bool
gt n m = not(le n m)

ge: nat -> nat -> bool
ge n O = true
ge O (S n) = false
ge(S n) (S m) =  ge n m

lt: nat -> nat -> bool
lt n m = not(ge n m)

fibo: nat -> nat
fibo O = O
fibo (S O) = (S O)
fibo (S (S n)) = add (fibo (S n)) (fibo n)

instance eq nat where
  eql n1 n2 = eq_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "s" ++ (toString n)
