divisibleBy :: Int -> Int -> Bool
divisibleBy x n = x `mod` n == 0

divisibleByThree :: Int -> Bool
divisibleByThree x = x `divisibleBy` 3

divisibleByFive :: Int -> Bool
divisibleByFive x = x `divisibleBy` 5

threeOrFive :: Int -> Bool
threeOrFive x = divisibleByFive x || divisibleByThree x

main = print (sum (filter threeOrFive [1..999]))
