-- A complete discussion of this template can be found at
-- https://www.fpcomplete.com/school/randoms

module Main where

import Text.Jasmine as J
import Data.ByteString.Lazy.Char8 as D
import Prelude as P

biggestInt, smallestInt :: Int
biggestInt  = maxBound
smallestInt = minBound

factorial 0 = 1
factorial n = n * factorial (n - 1)

fib 0 = 1
fib 1 = 1
fib n = fib (n - 1) + fib (n -2)

filterPrime (p:xs) =
    p : filterPrime [x | x <- xs, x `mod` p /= 0]


main = do
    P.putStrLn "Test:"
    print biggestInt
    print smallestInt

{-    putStrLn "What is 2 + 2?"
    x <- readLn
    if x == 4
        then putStrLn "You're right!"
        else putStrLn "You're wrong!"
-}
    let x = 7
    P.putStr "7! = "
    print (factorial 7)

    print $ unpack $ minify "function test() { alert('Hello, world!'); var test = '10' }"
    print $ P.map factorial [1..10]
    print $ P.map fib [0..17]
--    print $ filterPrime [2..100]