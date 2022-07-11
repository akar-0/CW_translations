module KataSpec (spec) where

import Test.Hspec
import Test.QuickCheck
import Kata (NAME)
import System.Random

refSol :: 
                          
spec :: Spec
spec = do
  it "Fixed tests" $ do
    NAME 11 6 1 `shouldBe` 33

  it "Random tests" $ do
      doRandomTests 100
      
doRandomTests n =
      forAll (choose(0, n)) $ \ w -> do
      forAll (choose(0, n)) $ \ h -> do
      forAll (f w h n) $ \ r -> do
          NAME h w r `shouldBe`  refSol h w r
          
          
-- credit: donaldsebleung
f :: Integer -> Integer -> Integer -> Gen Integer
f w h n = do
  x <- (choose (0, 10) :: Gen Integer)
  if x > 0
  then do
    y <- choose (1, max h w)
    return (1 + y)
  else choose (1, n)



-- https://www.codewars.com/kumite/5b611d5f9756809e7b00001b?sel=5b611f9d146a281bd800001a
modifyMaxSuccess (const nTest) $ 
