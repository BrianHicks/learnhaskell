square :: [Double] -> [Double]
square (x:xs) = x*x : square xs
square []     = []
