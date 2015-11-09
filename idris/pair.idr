module pair

import eq

data pair a b = mkPair a b

fst: pair a b -> a
fst (mkPair f s) = f

snd:pair a b -> b
snd (mkPair f s) = s

instance (eq a, eq b) => eq (pair a b) where
  eql (mkPair a1 a2) (mkPair b1 b2)= and (eql a1 b1) (eql a2 b2)
