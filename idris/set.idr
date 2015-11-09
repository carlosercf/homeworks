module set

import list
import bool
import eq
import Serialize
import ifThenElse

||| mkSet is meant to be private
data set a = mkSet (list a)

||| a starting for building any set
new_set: set a
new_set = mkSet nil

set_insert: (eq a) => a -> set a -> set a
set_insert v (mkSet l) = ite (member v l)
                             (mkSet l)
                             (mkSet (v::l))

eql_set: (eq a) => set a -> set a -> bool
eql_set (mkSet a1) (mkSet a2) = same a1 a2

instance (eq a) => eq (set a) where
  eql b1 b2 = eql_set b1 b2

instance (Serialize a) => Serialize (set a) where
  toString (mkSet l) = "{" ++ (toStringList l) ++ "}"
