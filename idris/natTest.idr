module natTest

import nat
import bool


||| a test, expecting O
h1: nat
h1 = add O O

||| a test, expecting S (S O)
h2: nat
h2 = add O (S (S O))

||| a test, expecting (S O)
h3: nat
h3 = add (S O) O

||| a test, expecting (S (S (S (S (S O)))))
h4: nat
h4 = add (S (S O)) (S (S (S O)))

||| expects O
m1: nat
m1 = mult O (S O)

||| expects O
m2: nat
m2 = mult (S O) O

||| expects (S (S O))
m3: nat
m3 = mult (S (S O)) (S O)

||| expects S (S (S (S (S (S (S (S O)))))))
m4: nat
m4 = mult (S (S (S (S O)))) (S (S O))

||| expects (S O)
f1: nat
f1 = fact O

||| expects (S O)
f2: nat
f2 = fact (S O)

||| expects (S (S O))
f3: nat
f3 = fact (S (S O))

||| expects S (S (S (S (S (S O)))))
f4: nat
f4 = fact (S (S (S O)))

||| tests for the subp function
||| expects O
s1: nat
s1 = sub O (S (S O))

||| expects S O
s2: nat
s2 = sub (S O) O

||| expects (S (S O))
s3: nat
s3 = sub (S (S (S (S O)))) (S (S O))

||| expects O
s4: nat
s4 = sub (S O) (S O)

||| tests for the exp function
||| expects S O
ex1: nat
ex1 = exp (S (S O)) O

||| expects S O
ex2: nat
ex2 = exp (S O) (S O)

||| expects (S (S (S (S O))))
ex3: nat
ex3 = exp (S (S O)) (S (S O))

||| expects O
ex4: nat
ex4 = exp O (S (S O))

||| tests for the eqp function
||| expects false
eq1: bool
eq1 = eq O (S O)

||| expects false
eq2: bool
eq2 = eq (S O) O

||| expects true
eq3: bool
eq3 = eq O O

||| expects true
eq4: bool
eq4 = eq (S (S O)) (S (S O))

||| expects false
eq5: bool
eq5 = eq (S (S O)) (S O)

||| tests for the lep function
||| expects true
le1: bool
le1 = le O (S O)

||| expects true
le2: bool
le2 = le O O

||| expects true
le3: bool
le3 = le (S O) (S O)

||| expects false
le4: bool
le4 = le (S (S O)) (S O)

||| tests for the gtp function
||| expects false
gt1: bool
gt1 = gt O (S O)

||| expects false
gt2: bool
gt2 = gt O O

||| expects true
gt3: bool
gt3 = gt (S O) O

||| tests for the gep function
||| expects true
ge1: bool
ge1 = ge O O

||| expects true
ge2: bool
ge2 = ge (S O) O

||| expects true
ge3: bool
ge3 = ge (S (S O)) (S O)

||| expects false
ge4: bool
ge4 = ge O (S (S O))

||| expects true
ge5: bool
ge5 = ge (S (S (S O))) (S (S O))

||| tests for the ltp function
||| expects true
lt1: bool
lt1 = lt O (S O)

||| expects false
lt2: bool
lt2 = lt O O

||| expects false
lt3: bool
lt3 = lt (S (S O)) (S O)

||| tests for the fibo function

||| expects O
fi1: nat
fi1 = fibo (O)

||| expects S O
fi2: nat
fi2 = fibo (S O)

||| expects S O
fi3: nat
fi3 = fibo (S (S O))

||| expects S (S O)
fi4: nat
fi4 = fibo (S (S (S O)))

||| expects S (S (S O))
fi5: nat
fi5 = fibo (S (S (S (S O))))

||| expects S (S (S (S (S O))))
fi6: nat
fi6 = fibo (S (S (S (S (S O)))))
