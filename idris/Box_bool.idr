module Box

data Box t = mkBox t -- box vira type constructor

unbox: Box t-> t
unbox (mkBox b) = b


