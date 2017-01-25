module Geometry.Cuboid (
    volume
  , area
  ) where

volume :: Float -> Float -> Float -> Float
volume l w h = h * (rectangleArea l w)

area :: Float -> Float -> Float -> Float
area l w h = 2 * sides + 2 * faces + 2 * caps
  where sides = rectangleArea l h
        faces = rectangleArea h w
        caps  = rectangleArea l w

rectangleArea :: Float -> Float -> Float
rectangleArea a b = a * b
