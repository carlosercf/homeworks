module relationTest

import relation
import pair
import bool
import list
import people
import Person

aveAge: pair Nat Nat
aveAge = mkPair (query2 people gender age plus 0) (query2 people gender countOne plus 0)

ave_rel: (list tuple) -> (tuple -> bool) -> (tuple -> Nat) -> pair Nat Nat
ave_rel rel sel proj = mkPair (sum_rel rel sel proj) (count_rel rel sel)

aveAge': pair Nat Nat
aveAge' = ave_rel people gender age

aveHeight: pair Nat Nat
aveHeight = ave_rel people gender height
