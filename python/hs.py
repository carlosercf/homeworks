def hs(n):
    if(n > 0 and n != 1):
        i = 0
        print(n)
        while(n!= 1):
            if(n % 2):
                n = 3*n+1
                print(n)

            else:
                n = n//2
                print(n)
            i = i + 1
            n = n
        return i+1
    elif(n == 0):
        x = None
    else:
        return n,1
#n = int(input("Please insert an positive round integer: "))
#print((hs(n)))
