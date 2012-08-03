data Fruit = Apple | Orange

apple = "apple"

orange = "orange"

whichFruit :: String -> Fruit
whichFruit f = case f of
                 orange -> Orange
                 apple  -> Apple

betterFruit :: String -> Fruit
betterFruit f = case f of
                  orange -> Orange
                  apple  -> Apple
