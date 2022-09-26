module Core(
  socrates
  , fizzer
) where
import           Data.Maybe (fromMaybe)

socrates :: String
socrates = "SoCraTes is awesome!!"

-- suggested by @arialdomartini
n // i = n `mod` i == 0

fizzer :: Int -> String
fizzer n = fromMaybe number $ fizz <> buzz
  where
    fizz = "Fizz" `whenDivBy` 3
    buzz = "Buzz" `whenDivBy` 5
    number = show n
    whenDivBy word divisor = if n // divisor then Just word else Nothing
