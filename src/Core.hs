module Core(
  socrates
  , fizzer
) where

socrates :: String
socrates = "SoCraTes is awesome!!"

-- suggested by @arialdomartini
n // i = n `mod` i == 0

fizzer :: Int -> String
fizzer n
  | n // 15 = "FizzBuzz"
  | n // 3 = "Fizz"
  | n // 5 = "Buzz"
  | otherwise = show n
  where
    fizz = "Fizz" `whenDivBy` 3
    buzz = "Buzz" `whenDivBy` 5
    number = show n
    whenDivBy word divisor = if n // divisor then Just word else Nothing
