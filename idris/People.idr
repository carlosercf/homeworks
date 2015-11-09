module People

import Person
import list
import bool

-- a few Persons

tom: Person
tom = MkPerson "Tom" 19 56 false

mary: Person
mary = MkPerson "Mary" 20 59 true

ge: Person
ge = MkPerson "Ge" 21 64 true

daryl: Person
daryl = MkPerson "Daryl" 19 71 false

-- a list of Persons

people: list Person
people = tom::
         mary::
         ge::
         daryl::
         nil
