import math
def isprime(n):
    if(n==0 or n==1):
        return 0
    
    for i in range(2,int(math.sqrt(n))+1):
        if(n%i==0):
            return 0
    return 1

count=1
i=0

while(count<10002):
    if(isprime(i)):
        count+=1
    i+=1

print i-1