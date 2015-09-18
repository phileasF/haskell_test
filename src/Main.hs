-- A complete discussion of this template can be found at
-- https://www.fpcomplete.com/school/randoms

module Main where

import Text.Jasmine as J
import Data.ByteString.Lazy.Char8 as D
import Prelude as P

biggestInt, smallestInt :: Int
biggestInt  = maxBound
smallestInt = minBound

-- Fakultät berechnen
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Fibonacci
fib 0 = 1
fib 1 = 1
fib n = fib (n - 1) + fib (n -2)

-- Primzahlen (funktioniert noch nicht)
filterPrime (p:xs) =
    p : filterPrime [x | x <- xs, x `mod` p /= 0]

-- Länge eines Strings berechnen
strLength :: String -> Int
strLength []     = 0
strLength (_:xs) = 1 + strLength xs

-- Buchstabe abhängig von String-Länge
frob :: String -> Char
frob []  = 'a'   -- len is NOT in scope here
frob str
  | len > 5   = 'x'
  | len < 3   = 'y'
  | otherwise = 'z'
  where
    len = strLength str

-- Liste summieren, aber bei mehr als 20 aufhören
-- https://www.seas.upenn.edu/~cis194/lectures/02-lists.html
sumTo20 :: [Int] -> Int
sumTo20 nums = go 0 nums   -- the acc. starts at 0
  where go :: Int -> [Int] -> Int
        go acc [] = acc   -- empty list: return the accumulated sum
        go acc (x:xs)
         | acc >= 20 = acc
         | otherwise = go (acc + x) xs

isThree :: Int -> Bool
isThree 3 = True
isThree _ = False

numbers = [1..10]

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
    print $ strLength "Hallo Welt"
    print $ frob "Test"
    print $ frob "Te"
    print $ frob "Hallo Welt"
    print $ sumTo20 [4,9,10,2,8]
    print $ P.filter (even) numbers
    print $ P.filter (isThree) numbers
    print $ P.foldr (+) 0 numbers
--    print $ foldl' (+) 0 numbers
    