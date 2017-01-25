module Main where

fizzBuzz :: Int -> (Int,Bool, Bool)
fizzBuzz n
  | n >= 0 = (n, (n mod3) == 0, (n mod5) == 0)
  | otherwise = (0,False,False)
  where `mod3 n = (mod n 3)
        `mod5 n = (mod n 5)
        
makeFizzString :: (Int,Bool,Bool) -> String
makeFizzString (n, fizz, buzz)
  | (fizz && buzz)  = "Fizzbuzz "
  | fizz = "Fizz "
  | buzz = "Buzz "
  | otherwise = (show n ++ " ")

main :: IO ()
main = do
  mapM_ putStr (map makeFizzString fizzmap)
  where fizzmap = map fizzBuzz [1..100]
  
