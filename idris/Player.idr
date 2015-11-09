||| Class Player representing a tennis player.
||| It has the name of the player, the current ATP ranking (0 if retired);
||| number of ATP single titles and if the player is retired.
module Player

import bool
import list

record Player where
  constructor mkPlayer
  name : String
  ranking: Nat
  titles : Nat
  retired: bool

p1: Player
p1 = mkPlayer "Roger Federer" 2 87 true

p2: Player
p2 = mkPlayer "Novak Djokovic" 1 87 true

p3: Player
p3 = mkPlayer "Thomaz Bellucci" 31 4 true

p4: Player
p4 = mkPlayer "Rafael Nadal" 8 67 true

p5: Player
p5 = mkPlayer "Tomas Berdych" 5 11 true

p6: Player
p6 = mkPlayer "Juan Martin Del Potro" 572 18 true

p7: Player
p7 = mkPlayer "Pete Sampras" 0 64 false

p8: Player
p8 = mkPlayer "Andre Agassi" 0 60 false

p9: Player
p9 = mkPlayer "Andy Roddick" 0 32 false

all: list Player
all = p1::p2::p3::p4::p5::p6::p7::p8::p9::nil

getTitles': list Player -> list Nat
getTitles' nil = nil
getTitles' (h :: t) = (titles h) :: (getTitles' (t))
