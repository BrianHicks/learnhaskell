import Critics
import Data.Set

euclidianDistance c1 c2 = 1 / (1 + sqrt (sum squares))
                    where squares = [0]

main = putStrLn (show (euclidianDistance 1 2))
