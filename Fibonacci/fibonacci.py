from functools import lru_cache
import sys
sys.setrecursionlimit(20000000)

def fib(n):
    """Calculates the nth Fibonacci number"""
    return fibiter(1,0,0,1,n)
       

@lru_cache(maxsize = 100000000)
def fibiter(a, b, p, q, count):
    if count == 0:
        return b
    if count % 2 == 0:
        q2 = q*q
        return fibiter(a, b, ((p*p)+(q2)),((2*q*p)+(q2)), count / 2)
    else:
        aq = a * q
        return fibiter( ((b * q) + (aq) + ( a * p)), ((b * p)+ (aq)) ,p, q, (count - 1) )
