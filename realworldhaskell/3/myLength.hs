myLength :: [a] -> Int
myLength (_:xs) = 1 + myLength xs
myLength []     = 0
