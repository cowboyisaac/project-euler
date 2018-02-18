module P002 where

main    = print ans
-- 10 ^ 6 is small so just use brute force.
-- fibos is an indefinite List but takeWhile and the lazy nature of Haskell makes it computable.
ans   = sum (filter even (takeWhile (<= 4  * 10^6) fibos))
  where fibos = 1 : 1 : zipWith (+) fibos (tail fibos)