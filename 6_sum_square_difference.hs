sumOfSquares n = foldl (\acc x -> acc + x^2) 0 [1..n]
squareOfSums n = (sum [1..n]) ^ 2

solution6 n = (squareOfSums n) - (sumOfSquares n)

-- solve the problem using sum and map instead of foldl