module gunrow

import list
import nat
import bool

data country = Argentina | Australia | Austria | Honduras | USA | Zero

||| A record of this type represents a country and the death
||| rate per 10,000,000 by gun for homicides, suicides,
||| unintentional, other

data gunrow = mkGunrow country Nat Nat Nat Nat

argen: gunrow
argen = mkGunrow Argentina 190 279 64 362

austra: gunrow
austra = mkGunrow Australia 11 62 5 8

austri: gunrow
austri = mkGunrow Austria 18 268 1 8

hondu: gunrow
hondu = mkGunrow Honduras 648 0 0 0

usa: gunrow
usa = mkGunrow USA 355 670 16 9
zero: gunrow
zero = mkGunrow Zero 0 0 0 0

countryName: gunrow -> country
countryName (mkGunrow c h s u o) = c

homicidePer10M: gunrow -> Nat
homicidePer10M (mkGunrow c h s u o) = h

suicidePer10M: gunrow -> Nat
suicidePer10M (mkGunrow c h s u o) = s

unintentionalPer10M: gunrow -> Nat
unintentionalPer10M (mkGunrow c h s u o) = u

otherPer10M: gunrow -> Nat
otherPer10M (mkGunrow c h s u o) = o

listgun: list gunrow
listgun = argen :: (austra :: (austri :: (hondu :: (usa :: nil))))

showh: gunrow -> Nat
showh (mkGunrow  c h s u o) = h

gth: Nat -> Nat -> bool
gth Z (S a) = false
gth (S n) Z = true
gth (S n) (S m) = gth n m
