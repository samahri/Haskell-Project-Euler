primeFactors :: Int -> [Int]
primeFactors n = buildPrimeFactors 2 n [] 

buildPrimeFactors :: Int -> Int -> [Int] -> [Int]
buildPrimeFactors n maxn xs = if maxn == n then xs else if isFactorOf n maxn xs then buildPrimeFactors (n+1) maxn (n:xs) else buildPrimeFactors (n+1) maxn xs

isFactorOf :: Int -> Int -> [Int] -> Bool
isFactorOf n maxn [] = maxn `mod` n == 0
isFactorOf n maxn xs = maxn `mod` n == 0 && (not $ any (\x -> n `mod` x == 0) xs)

solution3 n = head $ primeFactors n

-- build a list of prime numbers using filter with null, tail, and an infinite list
-- primefactors