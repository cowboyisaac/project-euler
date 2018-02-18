module P001 where

-- p001 = sum [x | x <- [1..999], mod x 3 == 0 | mod x 5 == 0]

import Data.List (union)
main     = print euler

euler    = sum (filter multiples [1..999])
  where multiples n = mod n 3 == 0 || mod n 5 == 0
-- or one may prefer using lambda.
euler2   = sum (filter (\x -> mod x 3 == 0 || mod x 5 == 0) [1..999])
--using union.
euler3   = sum (union [3,6..999] [5,10..995])