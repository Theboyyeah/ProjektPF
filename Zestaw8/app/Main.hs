{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

module Main (main) where

import Web.Scotty
import Data.Aeson
import GHC.Generics


konkantenacja :: ([a],[a],[a]) -> [a]
konkantenacja (x, y, z) = mconcat[x,y,z]



data Input = Input{
    list1:: [Int], list2 :: [Int],list3 :: [Int]

} deriving (Show, Generic)

instance FromJSON Input

data Output = Output {
    newList :: [Int]

} deriving (Show, Generic)


instance ToJSON Output




main :: IO ()
main = scotty 3000 $
  post "/Konkantenacja" $ do
    input <- jsonData :: ActionM Input
    let result = konkantenacja (list1 input, list2 input, list3 input)
    json $ Output result





