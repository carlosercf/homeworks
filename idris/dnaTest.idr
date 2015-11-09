module dnaTest

import dna
import list
import pair

comp0: base
comp0 = complement_base A

comp1: base
comp1 = complement_base C

comp2: base
comp2 = complement_base G

comp3: base
comp3 = complement_base T

dna0: list base
dna0 = nil

dna1: list base
dna1 = A::dna0

dna2: list base
dna2 = T::dna1

dna3: list base
dna3 = C::dna2

dna4: list base
dna4 = G::dna3

at: pair base base
at = mkPair A T

cg: pair base base
cg = mkPair C G

gc: pair base base
gc = mkPair G C

ta: pair base base
ta = mkPair T A

l: list (pair base base)
l = (at::cg::gc::ta::nil)

cstrand0: list base
cstrand0 = complement_strand dna0

cstrand1: list base
cstrand1 = complement_strand dna1

cstrand2: list base
cstrand2 = complement_strand dna2

cstrand3: list base
cstrand3 = complement_strand dna3

str0: list base
str0 = strand1 l

str1: list base
str1 = strand1 (cg::ta::at::gc::nil)

str2: list base
str2 = strand2 l

str3: list base
str3 = strand2 (ta::gc::at::cg::nil)

comp12: list (pair base base)
comp12 = complete dna4

comp22: list (pair base base)
comp22= complete dna3

count0: Nat
count0 = countBase dna4 A

count1: Nat
count1 = countBase dna3 G

count2: Nat
count2 = countBase dna2 C
