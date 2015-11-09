module set_adt_test

-- imports needed for specification
import bool
import option
import pair
import list
import nat
import eq
import Serialize
import set_adt_hw
-- imports needed for list-based implementation
import list
import ifThenElse

w: set nat
w = mkSet (O::nil)

x: set nat
x = mkSet ((S O)::O::nil)

y: set nat
y = mkSet ((S O)::(S(S O))::O::nil)

z: set nat
z = mkSet ((S(S(S O)))::(S(S(S(S O))))::nil)


--Test case 1 for the set_insert(Return the set, s union {v}) function
-- mkSet (S O :: O :: nil)  expected as the result
ins1: set nat
ins1 = set_insert (S O) w

--Test case 2 for the set_insert(Return the set, s union {v}) function
-- mkSet (S O :: S (S O) :: O :: nil) expected as the result
ins2: set nat
ins2 = set_insert (S O) y

--Test case 3 for the set_insert(Return the set, s union {v}) function
-- mkSet (S (S O) ::S (S (S O)) :: S (S (S (S O))) :: nil)  expected as the result
ins3: set nat
ins3 = set_insert (S(S O)) z

--Test case 1 for the set_remove(Return the set, s - {v}) function
-- mkSet ((S O)::nil) expected as the result
rem1: set nat
rem1 = set_remove O x

--Test case 2 for the set_remove(Return the set, s - {v}) function
-- mkSet ((S(S O))::O::nil) expected as the result
rem2: set nat
rem2 = set_remove (S O) y

--Test case 3 for the set_remove(Return the set, s - {v}) function
-- mkSet ((S(S(S O)))::(S(S(S(S O))))::nil expected as the result
rem3: set nat
rem3 = set_remove (S(S O)) z


--Test case 1 for the set_cardinality(Return the number of elements in s) function
-- 1 expected as the result
card1: Nat
card1 = set_cardinality w

--Test case 2 for the set_cardinality(Return the number of elements in s) function
-- 2 expected as the result
card2: Nat
card2 = set_cardinality x

--Test case 3 for the set_cardinality(Return the number of elements in s) function
-- 3 expected as the result
card3: Nat
card3 = set_cardinality y

--Test case 4 for the set_cardinality(Return the number of elements in s) function
-- 2 expected as the result
card4: Nat
card4 = set_cardinality z

--Test case 1 for the set_member(If v is in s return true, otherwise false) function
-- true expected as the result
mem1: bool
mem1 = set_member O w

--Test case 2 for the set_member(If v is in s return true, otherwise false) function
-- false expected as the result
mem2: bool
mem2 = set_member (S O) z

--Test case 3 for the set_member(If v is in s return true, otherwise false) function
-- true expected as the result
mem3: bool
mem3 = set_member (S O) x

--Test case 4 for the set_member(If v is in s return true, otherwise false) function
-- false expected as the result
mem4: bool
mem4 = set_member (S(S(S O))) y

--Test case 1 for the set_member(If v is in s return true, otherwise false) function
-- mkSet (S O :: O :: nil) false expected as the result
un1: set nat
un1 = set_union w x

--Test case 2 for the set_member(If v is in s return true, otherwise false) function
-- mkSet (S O :: S (S O) :: O :: nil) expected as the result
un2: set nat
un2 = set_union x y

--Test case 3 for the set_member(If v is in s return true, otherwise false) function
-- mkSet (O :: S (S (S O)) :: S (S (S (S O))) :: nil) expected as the result
un3: set nat
un3 = set_union w z

--Test case 1 for the set_intersection(Return the intersection of s1 and s2) function
-- mkSet (O :: nil)  expected as the result
sin1: set nat
sin1 = set_intersection w x

--Test case 2 for the set_intersection(Return the intersection of s1 and s2) function
-- mkSet nil  expected as the result
sin2: set nat
sin2 = set_intersection w z

--Test case 3 for the set_intersection(Return the intersection of s1 and s2) function
-- mkSet (S O :: O :: nil)  expected as the result
sin3: set nat
sin3 = set_intersection x y


--Test case 1 for the set_difference(Return the set difference, s1 minus s2) function
-- mkSet nil  expected as the result
diff1: set nat
diff1 = set_difference w x

--Test case 2 for the set_difference(Return the set difference, s1 minus s2) function
-- mkSet (S (S O) :: nil) expected as the result
diff2: set nat
diff2 = set_difference y x

--Test case 3 for the set_difference(Return the set difference, s1 minus s2) function
--mkSet (S (S (S O)) :: S (S (S (S O))) :: nil) expected as the result
diff3: set nat
diff3 = set_difference z y


--Test case 1 for the set_forall(Return true if p is true for every v in s, otherwise false) function
-- true expected as the result
fa1: bool
fa1 = set_forall evenb w

--Test case 2 for the set_forall(Return true if p is true for every v in s, otherwise false) function
-- false expected as the result
fa2: bool
fa2 = set_forall evenb x

--Test case 3 for the set_forall(Return true if p is true for every v in s, otherwise false) function
--false expected as the result
fa3: bool
fa3 = set_forall evenb z

--Test case 4 for the set_forall(Return true if p is true for every v in s, otherwise false) function
--true expected as the result
fa4: bool
fa4 = set_forall evenb (mkSet (O::(S(S O))::(S(S(S(S O))))::nil))

--Test case 1 for the set_exists(Return true if p is true for some v in s, otherwise else false) function
-- true expected as the result
ex1: bool
ex1 = set_exists evenb w

--Test case 2 for the set_exists(Return true if p is true for some v in s, otherwise else false) function
-- true expected as the result
ex2: bool
ex2 = set_exists evenb x

--Test case 3 for the set_exists(Return true if p is true for some v in s, otherwise else false) function
-- true expected as the result
ex3: bool
ex3 = set_exists evenb z

--Test case 4 for the set_exists(Return true if p is true for some v in s, otherwise else false) function
-- false expected as the result
ex4: bool
ex4 = set_exists evenb (mkSet ((S O)::(S(S(S O)))::nil))

--Test case 1 for the set_witness(If (set_exists p s), return (some v) such that (p v) is true, else return none)
-- function
-- some (S O) expected as the result
wit1: option nat
wit1 = set_witness evenb x

--Test case 2 for the set_witness(If (set_exists p s), return (some v) such that (p v) is true, else return none)
--function
-- some (S O) expected as the result
wit2: option nat
wit2 = set_witness evenb y

--Test case 3 for the set_witness(If (set_exists p s), return (some v) such that (p v) is true, else return none)
--function
-- some (S (S (S O))) expected as the result
wit3: option nat
wit3 = set_witness evenb z


--Test case 1 for the set_product(Return the cartesian product of s1 and s2) function
-- mkSet (mkPair O (S O) :: mkPair O O :: nil)  expected as the result
pro1: set (pair nat nat)
pro1 = set_product w x

--Test case 2 for the set_product(Return the cartesian product of s1 and s2) function
-- mkSet (mkPair (S O) (S O) ::
--       mkPair (S O) (S (S O)) ::
--       mkPair (S O) O ::
--       mkPair O (S O) ::
--       mkPair O (S (S O)) :: mkPair O O :: nil)   nil  expected as the result
pro2: set (pair nat nat)
pro2 = set_product x y

--Test case 3 for the set_product(Return the cartesian product of s1 and s2) function
-- mkSet (mkPair (S O) (S (S (S O))) ::
--       mkPair (S O) (S (S (S (S O)))) ::
--       mkPair (S (S O)) (S (S (S O))) ::
--       mkPair (S (S O)) (S (S (S (S O)))) ::
--       mkPair O (S (S (S O))) ::
--       mkPair O (S (S (S (S O)))) :: nil) expected as the result
pro3: set (pair nat nat)
pro3 = set_product y z
