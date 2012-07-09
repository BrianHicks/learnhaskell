data List a = Cons a (List a)
            | Nil
              deriving (Show)

fromList (x:xs) = Cons x (fromList xs)
fromList []     = Nil

-- exercise
toList (Cons a as) = a : toList as
toList Nil         = []
