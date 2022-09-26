module Core(
  socrates
  , fizzer
) where

socrates :: String
socrates = "SoCraTes is awesome!!"

fizzer :: Int -> String
fizzer n = if n `mod` 3 == 0 then "Fizz" else show n
