module Core(
  socrates
  , fizzer
) where

socrates :: String
socrates = "SoCraTes is awesome!!"

-- suggested by @arialdomartini
n // i = n `mod` i == 0

fizzer :: Int -> String
fizzer n = if n // 3 then "Fizz" else show n
