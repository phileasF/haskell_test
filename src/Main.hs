-- A complete discussion of this template can be found at
-- https://www.fpcomplete.com/school/randoms

module Main where

biggestInt, smallestInt :: Int
biggestInt  = maxBound
smallestInt = minBound

main = do
    putStrLn "Test:"
    print biggestInt
    print smallestInt

    putStrLn "What is 2 + 2?"
    x <- readLn
    if x == 4
        then putStrLn "You're right!"
        else putStrLn "You're wrong!"