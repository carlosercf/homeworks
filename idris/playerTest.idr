module playerTest

import Soccer
import relation
import pair
import bool
import list

ave_rel: (list tuple) -> (tuple -> bool) -> (tuple -> Nat) -> pair Nat Nat
ave_rel rel sel proj = mkPair (sum_rel rel sel proj) (count_rel rel sel)

aveage: pair Nat Nat
aveage = ave_rel all StillPlaying age
