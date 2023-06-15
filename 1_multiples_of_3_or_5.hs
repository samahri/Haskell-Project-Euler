isMultipleOfThreeOrFive :: Int -> Bool
isMultipleOfThreeOrFive x = (x `mod` 3) == 0 || (x `mod` 5) == 0

solution :: Int -> Int
solution n = foldl (\acc x -> if isMultipleOfThreeOrFive x then acc + x else acc) 0 [1..(n - 1)]

-- Using list comprehension makes it more readible
-- try solving it using union function from Data.List
