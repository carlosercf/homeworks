x = 5
y = 6
#conditions
if (True):
    x = 0
    z = 10
else:
    x = 1
    z = 11

if (x > 0 or y == 6):
    x = 0
    z = 10
else:
    x = 1
    z = 11

times = 10
while (times > 0):
    print(times,"Hello")
    times = (times-1)

def fun(a, b, c, x):
    result = a * (x * x) + b * x + c
    return result

fun(2,4,5,6)
print(int(fun(2,4,5,6)))
