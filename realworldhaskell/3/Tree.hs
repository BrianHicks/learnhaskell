data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)

simpleTree = Node "parent" (Node "left child" Empty Empty)
                           (Node "right child" Empty Empty)

-- exercise
data MaybeTree a = MaybeNode a (Maybe (MaybeTree a)) (Maybe (MaybeTree a))
                   deriving Show
