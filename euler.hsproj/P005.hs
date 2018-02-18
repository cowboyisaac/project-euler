module P005 where
 
ans = foldr lcm 1 [1..20]
-- or use foldr1 if no base case or the first element of the list is the base case
--ans = foldr1 lcm [1//20]