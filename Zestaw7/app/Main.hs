{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}


module Main (main) where

import Web.Scotty
import Data.Aeson
import GHC.Generics
import System.Random (randomRIO)


randomValue :: IO Int
randomValue randomRIO (0,maxBount,Int)



main :: IO ()
main = scotty 3000 $
  post "/setHead" $ do

