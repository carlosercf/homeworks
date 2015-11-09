module Box

import eq
import Serialize

data Box t = mkBox t -- box vira type constructor

unbox: Box t-> t
unbox (mkBox b) = b

instance (eq a) => eq (Box a) where
  eql (mkBox b1) (mkBox b2) = eql b1 b2

instance (Serialize a) => Serialize (Box a) where
  toString (mkBox b) = "(" ++ (toString b) ++ ",)"
