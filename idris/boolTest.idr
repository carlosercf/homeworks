module boolTest

import bool

||| tests for the andp function
||| expects true
an1: bool
an1 = and true true

||| expects false
an2: bool
an2 = and true false

||| expects false
an3: bool
an3 = and false true

||| expects false
an4: bool
an4 = and false false

||| tests for the nandp function
||| expects false
nn1: bool
nn1 = nand true true

||| expects true
nn2: bool
nn2 = nand true false

||| expects true
nn3: bool
nn3 = nand false true

||| expects true
nn4: bool
nn4 = nand false false

||| tests for the orp function
||| expects true
or1: bool
or1 = or true false

||| expects true
or2: bool
or2 = or false true

||| expects true
or3: bool
or3 = or true true

||| expects false
or4: bool
or4 = or false false

|||tests for the xorp function
||| expects true
xo1: bool
xo1 = xor true false

||| expects true
xo2: bool
xo2 = xor false true

||| expects false
xo3: bool
xo3 = xor false false

||| expects false
xo4: bool
xo4 = xor true true
