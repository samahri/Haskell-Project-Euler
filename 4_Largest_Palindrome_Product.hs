import Data.List (sort)

palindromes :: [Int]
palindromes = sort $ [x * y | x <- [100..999], y <- [100..999], isPalindrome $ show $ x * y]

isPalindrome :: String -> Bool
isPalindrome s = s == (reverse s)

solution4 = last $ palindromes

-- can you solve it in one line using list comprehension?
