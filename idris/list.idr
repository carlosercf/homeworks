module list

import nat
import bool
import eq
import Serialize
import ifThenElse

infixr 7 ::, ++

data list a = nil | (::) a (list a)

length: list a -> Nat
length nil = 0
length (n::l') = S (length l')

(++): list a -> list a -> list a
(++) nil l2 = l2
(++) (n::m) l2 = n::(m++l2)

||| map a function over the elements of a list
map: (a -> b) -> list a -> list b
map f nil = nil
map f (h::t) = (f h) :: (map f t)

--ite: bool -> a -> a -> a
--ite true tb fb = tb
--ite false tb fb = fb

filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h::t) = ite (f h) (h::(filter f t)) (filter f t)

foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)



member: (eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ite (eql v h)
                      true
                      (member v t)

subset_elements: (eq a) => list a -> list a -> bool
subset_elements nil l2 = true
subset_elements (h::t) l2 = and (member h l2) (subset_elements t l2)


same: (eq a) => list a -> list a -> bool
same l1 l2 = and (subset_elements l1 l2) (subset_elements l2 l1)

instance (eq a) => eq (list a) where
  eql nil nil = true
  eql (h::t) nil = false
  eql nil (h::t) = false
  eql (h1::t1) (h2::t2) = and (eql h1 h2) (eql t1 t2)

toStringList: (Serialize a) => list a -> String
toStringList nil = ""
toStringList (h::nil) = (toString h)
toStringList (h::t) = (toString h) ++  ", " ++ (toStringList t)

instance (Serialize a) => Serialize (list a) where -- as long as a is serializable do the rest
  toString nil = "[]"
  toString l = "[" ++ (toStringList l) ++ "]"
