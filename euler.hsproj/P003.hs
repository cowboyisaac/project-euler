module P003 where

main = print ans

-- def of primes. use null . tail to compose new funciton. easier to understand and to code than
-- null (tail xs)
primes = 2 : filter (null . tail . primeFactors) [3,5..]

-- primes factors of n and primes && factors of n.
-- just recursively go through the list of primes to compute the factors of n
primeFactors n = factor n primes
  where factor n (p:ps)
          | p*p > n        = [n]
          | n `mod` p == 0 = p : factor (n `div` p) (p:ps)
          | otherwise      =     factor n ps

ans = last (primeFactors 600851475143)
