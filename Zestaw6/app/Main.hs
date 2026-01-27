{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

module Main (main) where

import Web.Scotty
import Data.Aeson
import GHC.Generics
--import Data.Text.Lazy (Text)
    

setHead :: a -> [a] -> [a]
setHead x xs = x : xs

data Input = Input{
    newHead :: Int , list :: [Int]

} deriving (Show, Generic)

instance FromJSON Input

data Output = Output {
    newList :: [Int]

} deriving (Show, Generic)


instance ToJSON Output

main :: IO ()
main = scotty 3000 $
  post "/setHead" $ do
    input <- jsonData :: ActionM Input

    let resultList = setHead (newHead input) (list input)

    json (Output resultList)

--sprawdzenie
--curl -X POST http://localhost:3000/setHead \
 -- -H "Content-Type: application/json" \
 --d '{"newHead": 42, "list": [1,2,3]}'
--
--
--
--
