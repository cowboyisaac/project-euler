module P004 where

main = print ans

ans = maximum [x | y<- reverse [100..999], z<- reverse [y..999], let x=y*z, let s=show x, s==reverse s]
