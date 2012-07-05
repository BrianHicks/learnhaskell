-- define types
type CustomerID = Int
type ReviewBody = String

data BookInfo = Book Int String [String]
                deriving (Show)

data BookReview = BookReview BookInfo CustomerID String

type BookRecord = (BookInfo, BookReview)

-- billing information
type CardHolder = String
type CardNumber = String
type Address = [String]

data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerID
                   deriving (Show)

-- application of the defined types
myInfo = Book 9780135072455 "Algebra of Programming"
         ["Richard Bird", "Oege de Moor"]
