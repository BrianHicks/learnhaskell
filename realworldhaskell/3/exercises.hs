-- exercise 3
average :: [Int] -> Maybe Float
average [] = Nothing
average xs = Just (total / count)
       where total = fromIntegral (sum xs)
             count = fromIntegral (length xs)

-- exercise 4
reversed :: [a] -> [a]
reversed (x:xs) = reversed xs ++ [x]
reversed []   = []

palindrome :: [a] -> [a]
palindrome xs = xs ++ reversed xs

-- exercise 5
isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = (reversed xs) == xs

-- exercise 6
-- cheated on this one a bit by looking at the comments - I had forgotten
-- about compare
{-sortByLength :: [[a]] -> [[a]]-}
{-sortByLength list = sortBy compLength list-}
              {-where compLength a b = compare (length a) (length b)-}

-- exercise 7
join :: a -> [[a]] -> [a]
join s (x:xs)
    | count > 0  = x ++ [s] ++ join s xs
    | count == 0 = x
    | otherwise  = x ++ head xs
      where count = length xs

-- exercise 8
-- copied from Tree.hs
data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)

simpleTree = Node "parent" (Node "left child" Empty Empty)
                           (Node "right child" Empty Empty)

treeHeight :: Tree a -> Int
treeHeight Empty = 0
treeHeight (Node a left right) = 1 + max (treeHeight left) (treeHeight right)

-- exercise 9
data Direction = CCW | CW | Straight deriving (Show)

-- exercise 10
data Point = Point
             { pointX :: Int
             , pointY :: Int
             } deriving (Show)

-- y1 - y2 over x1 - x2
slope :: Point -> Point -> Float
slope p1 p2 = fromIntegral (pointY p1 - pointY p2) / fromIntegral (pointX p1 - pointX p2)

turnDirection :: Point -> Point -> Point -> Direction
turnDirection p1 p2 p3
             | a == b = Straight
             | a > b  = CCW
             | a < b  = CW
         where a = slope p1 p2
               b = slope p2 p3

-- exercise 11
points = [ Point 1 1
         , Point 1 2
         , Point 2 2 -- right
         , Point 2 3 -- left
         , Point 2 4] -- straight

directions :: [Point] -> [Direction]
directions (p1:p2:p3:ps) = turnDirection p1 p2 p3 : directions (p2:p3:ps)
directions (p1:p2:[]) = []
