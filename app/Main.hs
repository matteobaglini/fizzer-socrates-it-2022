module Main where

import           Core

main :: IO ()
main = do
  putStrLn socrates
  putStrLn $ fizzerList [1..100]
