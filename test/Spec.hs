
module Main where

import           Core
import           Test.Hspec

main :: IO ()
main = hspec $ do
 describe "fizzbuzz" $ do
  it "is socrates" $ do
    socrates `shouldBe` "SoCraTes is awesome!!"
  it "prints number" $ do
    fizzer 1 `shouldBe` "1"
