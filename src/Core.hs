module Core(
  socrates
  , fizzer
  , fizzerList
) where
import           Control.Applicative
import           Data.Foldable
import           Data.List
import           Data.Maybe

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
fizzer n = fromMaybe number $ fold rules
  where
    fizz = "Fizz" `whenDivBy` 3 <|> "Fizz" `whenContains` 3
    buzz = "Buzz" `whenDivBy` 5
    bang = "Bang" `whenDivBy` 7
    rules = [fizz, buzz, bang]
    number = show n
    whenDivBy word divisor = if n // divisor then Just word else Nothing
    whenContains word value = if show value `isInfixOf` show n then Just word else Nothing

fizzerList :: [Int] -> String
fizzerList = intercalate ", " . map fizzer
