fib :: Int -> Int
fib 0 = 1
fib 1 = 2
fib n = fib (n - 1) + fib (n - 2)

fibArray :: [Int]
fibArray = takeWhile (< 4000000) [fib n | n <- [0..]]

solution2 :: Int
solution2 = sum $ filter (\n -> n `mod` 2 == 0) fibArray

-- try solving it using a list comprehension in one line
-- build the fibonnaci array using zipWith
-- solve it without having the fib array take any arguments