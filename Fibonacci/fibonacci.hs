# using lazy eval , build infinite seq and take the number 
# you want 


let fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
take 10 fibs
