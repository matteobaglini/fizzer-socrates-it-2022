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

-- Semigroup (<>)
-- https://hackage.haskell.org/package/base-4.17.0.0/docs/Prelude.html#t:Semigroup

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

-- fromMaybe
-- https://hackage.haskell.org/package/base-4.17.0.0/docs/Data-Maybe.html#v:fromMaybe

-- fold
-- https://hackage.haskell.org/package/base-4.17.0.0/docs/Data-Foldable.html#v:fold

-- Alternative (<|>)
-- https://hackage.haskell.org/package/base-4.17.0.0/docs/Control-Applicative.html#t:Alternative

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

-- intercalate
-- https://hackage.haskell.org/package/base-4.17.0.0/docs/Data-List.html#v:intercalate

-- map
-- https://hackage.haskell.org/package/base-4.17.0.0/docs/Prelude.html#v:map

fizzerList :: [Int] -> String
fizzerList = intercalate ", " . map fizzer
