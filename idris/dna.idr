module dna

import list
import bool
import nat
import pair

data base = A | T | C | G

complement_base: base -> base
complement_base A = T
complement_base C = G
complement_base G = C
complement_base T = A

complement_strand: list base -> list base
complement_strand (h::t) = list.map complement_base (h::t)

strand1: list (pair base base) -> list base
strand1 nil = nil
strand1 ((mkPair b1 b2)::t) = b1 :: strand1(t)

strand2: list (pair base base) -> list base
strand2 nil = nil
strand2 ((mkPair b1 b2)::t) = b2 :: strand2(t)

complete: list base  -> list (pair base base)
complete nil = nil
complete (h::t) = ((mkPair h (complement_base(h))) :: complete(list.map complement_base (t)))

equal: base -> base -> Nat
equal A A = 1
equal T T = 1
equal C C = 1
equal G G = 1
equal _ _ = 0

countBase: list base -> base -> Nat
countBase l1 b1 = list.foldr plus 0 (list.map (equal b1) l1)
