-- lastButOne implementation
lastButOne xs = if length xs == 2
                then head xs
                else lastButOne (tail xs)

lastButOne' xs = head (drop (length xs - 2) xs)
