module Main where
import Data.List

baseEquation :: (Double,Double,Double) -> Double
baseEquation (x, g, i) = (x + base)**(x + base)
  where base = g * (1/10)**i

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f = g
  where g x y = f y x

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub
