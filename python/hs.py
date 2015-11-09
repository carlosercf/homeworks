def hs(n):
    if(n > 0 and n != 1):
        i = 0
        #x = list()
        print(n)
        while(n!= 1):
            if(n % 2):
                #x.append(n)
                n = 3*n+1
                print(n)

            else:
                #x.append(n)
                n = n//2
                print(n)
            i = i + 1
            n = n
    #    x.append(n)
    else:
        print(None)
        #x = None
    #return x, len(x)
    return i+1
n = int(input("Please insert an positive round integer: "))
print((hs(n)))
