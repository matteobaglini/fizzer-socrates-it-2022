module Core(
  socrates
  , fizzer
) where
import           Data.Maybe (fromMaybe)

socrates :: String
socrates = "SoCraTes is awesome!!"

-- suggested by @arialdomartini
n // i = n `mod` i == 0

-- Semigroup implementation for String (alias for [Char])
-- https://hackage.haskell.org/package/base-4.17.0.0/docs/src/GHC.Base.html#line-301
-- instance Semigroup [a] where
--         (<>) = (++)

-- Semigroup implementation for Maybe a
-- https://hackage.haskell.org/package/base-4.17.0.0/docs/src/GHC.Base.html#line-428
-- instance Semigroup a => Semigroup (Maybe a) where
--     Nothing <> b       = b
--     a       <> Nothing = a
--     Just a  <> Just b  = Just (a <> b)

fizzer :: Int -> String
fizzer n = fromMaybe number $ fizz <> buzz
  where
    fizz = "Fizz" `whenDivBy` 3
    buzz = "Buzz" `whenDivBy` 5
    number = show n
    whenDivBy word divisor = if n // divisor then Just word else Nothing

fizzerList :: [Int] -> String
fizzerList = undefined
