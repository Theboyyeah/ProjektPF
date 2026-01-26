{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
-- Jesli chodzi o to zodanie to jak rozumiem chodziło ,i np funckja ta moe zwracać randomową
-- liczbe z podanego zakresu
-- w zdaniach było powiedzina e mamy wysyłać jaki i odbierać w formacie JSON ale tutaj mona chyba poradzic sobie bez tego

module Main (main) where

import Web.Scotty
import Data.Aeson
import GHC.Generics
import System.Random (randomRIO)


randomValue :: IO Int
randomValue  = randomRIO (0,maxBount :: Int)

data Output = Output{

    raondomNumber :: Int 

} deriving (Show, Generic)

instance ToJSON Output



main :: IO ()
main = scotty 3000 $
  post "/setHead" $ do
    n <- liftIO randomValue
     json $ Output n

