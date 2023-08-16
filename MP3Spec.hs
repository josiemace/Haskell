{-# LANGUAGE ImplicitParams #-}

module MP3Spec (spec) where

import Test.Hspec
import Test.HUnit
import Test.HUnit.Approx
import Test.QuickCheck
import Control.Exception
import MP3a
import MP3b

spec :: Spec
spec = do
  describe "Binary tree" $ do
    describe "treeRepeat" $ do 
      it "returns the correct root node" $ do
        let (Node x _ _) = treeRepeat 10 in x `shouldBe` 10
        
  describe "Poker stats" $ do
    describe "deck" $ do      
      it "is the correct length" $ do
        length deck `shouldBe` 52
