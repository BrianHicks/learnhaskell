-- lastButOne implementation
lastButOne xs = head (drop (length xs - 2) xs)
