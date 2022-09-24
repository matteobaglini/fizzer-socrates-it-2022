
module Main where

import           Core
import           Test.Hspec

main :: IO ()
main = hspec $ do
 describe "fizzbuzz" $ do
  it "is socrates" $ do
    socrates `shouldBe` "SoCraTes is awesome!!"
