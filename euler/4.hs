-- palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
--
-- Find the largest palindrome made from the product of two 3-digit numbers.
import Data.List (maximum)

middle xs = case length xs of
              0 -> []
              1 -> xs
              _ -> tail (init xs)

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs
  | null xs        = True -- middle element of even-length sequences: "abba", []
  | null (tail xs) = True -- middle element of odd-length sequences: "racecar", ['e']
  | otherwise      = if head xs == last xs
                     then isPalindrome $ middle xs
                     else False

palindromesIn xs = [x | x <- xs, isPalindrome $ show x]

largestPalindromeIn xs = maximum $ palindromesIn xs

products :: [Int] -> [Int]
products []     = []
products (x:xs) = x * x : [x * i | i <- xs] ++ products xs

main = putStrLn $ show $ largestPalindromeIn (products [100..999])
