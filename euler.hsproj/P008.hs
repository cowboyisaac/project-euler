module P008 where

import Data.List
import Data.Char
import Data.String

-- Haskell Wiki Answer
--euler_8 = do
--   str <- readFile "1000digit.txt"
--   print . maximum . map product
--         . foldr (zipWith (:)) (repeat [])
--         . take 13 . tails . map (fromIntegral . digitToInt)
--         . concat . lines $ str

ans = do
    str <- readFile "1000digit.txt"
    let ints = map (fromIntegral . digitToInt)  (concat $ lines str)
    -- heursitscs, filter by 0
    let candidates = filter (all (>0)) $ map (take 13) (tails ints)
    print $ maximum (map product candidates)