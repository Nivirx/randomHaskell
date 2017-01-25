module Main where

import qualified Geometry.Sphere as Sphere
import qualified Geometry.Cube as Cube
import qualified Geometry.Cuboid as Cuboid

main :: IO ()
main = do
  putStr "Volumes ->\n"
  putStr $ "\t3x3x3 Cube: " ++ (show (Cube.volume 3.0)) ++ "\n"
