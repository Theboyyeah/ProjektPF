{-# LANGUAGE OverloadedStrings #-}

import Web.Scotty
import Data.Text.Lazy (Text)
import Control.Monad (liftM)
import Data.Monoid (Sum(..))

main :: IO ()
main = scotty 3000 $ do

    -- Endpoint POST /calcAdd
    post "/calcAdd" $ do
        a <- param "a" :: ActionM Int
        b <- param "b" :: ActionM Int
        
        -- fmap działa tutaj jako map funktora
        let result = fmap (+ b) (Just a)  -- dodajemy b do a w funktorze Maybe
        json result  -- zwraca Just wynik w JSON

    -- Endpoint POST /calcSub
    post "/calcSub" $ do
        a <- param "a" :: ActionM Int
        b <- param "b" :: ActionM Int
        let result = fmap (\x -> x - b) (Just a)
        json result
