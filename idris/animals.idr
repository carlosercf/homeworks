module animals

data animals x = mkAnimals x

one: animals x -> x
one (mkAnimals x) = x
