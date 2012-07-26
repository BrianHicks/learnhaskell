type Rating = Float
type Name = String

data Review = Review
    { reviewName   :: Name
    , reviewRating :: Rating
    } deriving (Show)

data Critic = Critic
    { criticName    :: Name
    , criticReviews :: [Review]
    } deriving (Show)

critics = [ Critic "Lisa Rose" [ Review "Lady in the Water"  2.5
                               , Review "Snakes on a Plane"  3.5
                               , Review "Just My Luck"       3.0
                               , Review "Superman Returns"   3.5
                               , Review "You, Me and Dupree" 2.5
                               , Review "The Night Listener" 3.0]
          , Critic "Gene Semour" [ Review "Lady in the Water"  3.0
                                 , Review "Snakes on a Plane"  3.5
                                 , Review "Just My Luck"       1.5
                                 , Review "Superman Returns"   5.0
                                 , Review "The Night Listener" 3.0
                                 , Review "You, Me and Dupree" 3.5]
          , Critic "Michael Phillips" [ Review "Lady in the Water"  2.5
                                      , Review "Snakes on a Plane"  3.0
                                      , Review "Superman Returns"   3.5
                                      , Review "The Night Listener" 4.0]
          , Critic "Claudia Puig" [ Review "Snakes on a Plane"  3.5
                                  , Review "Just My Luck"       3.0
                                  , Review "The Night Listener" 4.5
                                  , Review "Superman Returns"   4.0
                                  , Review "You, Me and Dupree" 2.5]
          , Critic "Mick LaSalle" [ Review "Lady in the Water"  3.0
                                  , Review "Snakes on a Plane"  4.0
                                  , Review "Just My Luck"       2.0
                                  , Review "Superman Returns"   3.0
                                  , Review "The Night Listener" 3.0
                                  , Review "You, Me and Dupree" 2.0]
          , Critic "Jack Matthews" [ Review "Lady in the Water"  3.0
                                   , Review "Snakes on a Plane"  4.0
                                   , Review "Superman Returns"   5.0
                                   , Review "You, Me and Dupree" 3.5]
          , Critic "Toby" [ Review "Snakes on a Plane"  4.5
                          , Review "You, Me and Dupree" 1.0
                          , Review "Superman Returns"   4.0]]

ratingByName (r:rs) name = if reviewName r == name
                           then Just (reviewRating r)
                           else ratingByName rs name
ratingByName []     _    = Nothing

ratingByCritic (c:cs) cname rname = if criticName c == cname
                                    then ratingByName (criticReviews c) rname
                                    else ratingByCritic cs cname rname
ratingByCritic []     _     _     = Nothing

criticalRating cname rname = ratingByCritic critics cname rname

main = putStrLn (criticName (head critics))
