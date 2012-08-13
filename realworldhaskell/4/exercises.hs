import Data.Maybe

main = putStrLn "Compiled Successfully"

-- 1
safeHead :: [a] -> Maybe a
safeHead (x:_) = Just x
safeHead []    = Nothing

safeTail :: [a] -> Maybe [a]
safeTail (_:xs) = Just xs
safeTail []     = Nothing

safeLast :: [a] -> Maybe a
safeLast (x:xs) = if null xs
                  then Just x
                  else safeLast xs
safeLast []     = Nothing

safeInit :: [a] -> Maybe [a]
safeInit (x:xs) = Just (init (x:xs))
safeInit []     = Nothing
