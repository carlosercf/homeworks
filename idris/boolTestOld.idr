module boolTest2

import bool

b1: bool -- criou uma variavel no caso, nao precisa criar uma "data"
b1 = true -- so a variavel ja basta.

b2: bool
b2 = true

b3: bool
b3 = false

b4: bool
b4 = not true

b5: bool
b5 = not b1

b6: bool
b6 = not(not b5)
