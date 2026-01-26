import Web.Scotty


import Data.Aeson
import GHC.Generics

module Main (main) where
    

setHead :: a -> [a] -> [a]
setHead x xs = x : xs
data Input = Input{
    head :: Int , list :: [Int]

}deriving (Show, Generic)


data Output = Output {
    newList :: [Int]

}deriving (Show, Generic)

instance FromJSON Input
instance ToJSON Output

setHead :: a -> [a] -> [a]
setHead x xs = x : xs
data Input = Input{
    head :: Int , list :: [Int]

}deriving (Show, Generic)


instance FromJSON Input


data Output = Output {
    newList :: [Int]

}deriving (Show, Generic)

instance ToJSON Output

main :: IO ()
main = scotty 3000 $
  get "/:word" $ do
    input <- jsonData :: ActionM Input

    let resultList = setHead (head input) (list input)

    json (Output resultList)
