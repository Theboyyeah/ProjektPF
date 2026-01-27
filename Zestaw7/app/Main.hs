{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

module Main (main) where

import Web.Scotty
import Data.Aeson (ToJSON)
import GHC.Generics 
import System.Random (randomRIO)

randomValue :: IO Int
randomValue  = randomRIO (0,maxBound :: Int)

data Output = Output{

    randomNumber :: Int 

} deriving (Show, Generic)

instance ToJSON Output



main :: IO ()
main = scotty 3000 $
  post "/RandomNumber" $ do
    n <- liftIO randomValue
    json $ Output n

-- Jesli chodzi o to zodanie to jak rozumiem chodziło ,i np funckja ta moe zwracać randomową
-- liczbe z podanego zakresu
-- w zdaniach było powiedzina e mamy wysyłać jaki i odbierać w formacie JSON ale tutaj mona chyba poradzic sobie bez tego
