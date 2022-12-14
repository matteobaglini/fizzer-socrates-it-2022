
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
  it "prints fizz" $ do
    fizzer 3 `shouldBe` "Fizz"
  it "prints buzz" $ do
    fizzer 5 `shouldBe` "Buzz"
  it "prints fizzbuzz" $ do
    fizzer (3*5) `shouldBe` "FizzBuzz"
  it "prints a list" $ do
    fizzerList [1,3,5,15] `shouldBe` "1, Fizz, Buzz, FizzBuzz"
  it "prints bang" $ do
    fizzer 7 `shouldBe` "Bang"
  it "prints fizzbuzzbang" $ do
    fizzer (3*5*7) `shouldBe` "FizzBuzzBang"
  it "prints fizz (when contains)" $ do
    fizzer 13 `shouldBe` "Fizz"
